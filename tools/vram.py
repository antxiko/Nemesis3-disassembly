#!/usr/bin/env python3
"""La VRAM de caracteres de Nemesis 3, cargada como la carga el cartucho, con
codigo nuestro.

El VDP esta en SCREEN 2 (R0 = 0x02, R1 = 0xE2): dibujos de caracteres en
0x2000 (tres tercios de 0x800), colores en 0x0000, nombres en 0x3800 (R2 =
0x0E), dibujos de sprite en 0x1800 (R6 = 3) y atributos en 0x3B00 (R5 = 0x76).

  p00:4B3C  rachas a la VRAM (0 acaba; < 0x80 repite el byte siguiente;
            0x80 trae otro destino; > 0x80 copia n & 0x7F bytes)
  p00:4CB1  lista de graficos: fichas de 6 [marcas][dibujos][caracter]
            [colores]; bits 0, 1 y 2 de las marcas: los tercios de abajo, del
            medio y de arriba; con el bit 3 los datos van en otro banco: el 15
            en 0x8000 con el bit 4, los 16-17-18 sin el
  p00:4D1B  copias con vuelta: fichas de 4 [origen][destino][marcas][cuantos];
            bit 7 de las marcas: de arriba abajo (dibujos y colores), si no de
            lado a lado (solo los dibujos); el tercio de origen, bit 2 el de
            arriba, bit 1 el del medio, si no el de abajo; los de destino,
            bits 5, 4 y 3 (arriba, medio, abajo)
  p00:4F82  los graficos de una fase: la lista p16:5FFE[fase] (con 16-17-18),
            la de la nave p14:6000 (con 14-15) y las copias p16:6014[fase]
  p00:51EE  los cambios a mitad de fase: p16:602A[fase], fichas de 7 bytes
            [scroll][lista][copias][caracter del fondo]; se cargan cuando el
            scroll llega justo a ese valor (p00:5210)
  p02:835A  los caracteres que cambian solos (con el 7 en 0xA000): la lista
            p07:B1F5[fase] son palabras [animacion][scroll]...; vale la
            animacion de antes del primer scroll mayor que el de ahora. Una
            animacion es [espera][pasos][tabla de pasos]; cada paso, fichas de
            10 bytes [caracter][marcas][8 bytes] hasta un 0: bits 0-2 de las
            marcas, los tercios de abajo, medio y arriba; bit 3, a los colores

Uso como modulo: tramos(fase) -> [(desde el scroll, vram de 16 KB)];
                 con_paso(vram, fase, scroll, paso) -> la vram con ese paso
                 de los caracteres que cambian solos.
Uso: vram.py coteja <fase> <volcado.pkl>   los dibujos y colores contra un
                                           volcado (vram, regs, ram) del juego
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import bloques as B   # noqa: E402

DIBUJOS = 0x2000
COLORES = 0x0000
NOMBRES = 0x3800
SPRITES = 0x1800

R16 = (16, 17, 18)        # bancos_16_17_18
R14 = (14, 15, 3)         # bancos_14_15: 14 en 0x6000 y 15 en 0x8000


def rachas(vram, v, origen, destino):
    """p00:4B3C."""
    a, d = origen, destino
    while True:
        n = v(a)
        a += 1
        if n == 0:
            return a
        if n == 0x80:
            d = v.w(a)
            a += 2
        elif n < 0x80:
            x = v(a)
            a += 1
            for _ in range(n):
                vram[d & 0x3FFF] = x
                d += 1
        else:
            for _ in range(n & 0x7F):
                vram[d & 0x3FFF] = v(a)
                a += 1
                d += 1


def lista_graficos(vram, reparto, ix):
    """p00:4CB1: la lista se lee con el reparto de quien llama, y los datos
    de cada ficha con el suyo."""
    v = B.Ventana(reparto)
    while v(ix) != 0:
        m = v(ix)
        r = list(reparto)
        if m & 0x08:
            if m & 0x10:
                r[1] = 15
            else:
                r = list(R16)
        vd = B.Ventana(r)
        for bit, base in ((0, 0x1000), (1, 0x0800), (2, 0x0000)):
            if m >> bit & 1:
                hl = v(ix + 3) * 8 + base
                rachas(vram, vd, v.w(ix + 1), DIBUJOS + hl)
                rachas(vram, vd, v.w(ix + 4), COLORES + hl)
        ix += 6


def copias(vram, v, ix):
    """p00:4D1B."""
    while v(ix) != 0:
        o, d, m, n = v(ix), v(ix + 1), v(ix + 2), v(ix + 3)
        nb = n * 8
        t = 0x0000 if m & 4 else (0x0800 if m & 2 else 0x1000)      # p00:4E0B
        dib = bytearray(vram[DIBUJOS + t + o * 8 + i] for i in range(nb))
        col = bytearray(vram[COLORES + t + o * 8 + i] for i in range(nb))
        if m & 0x80:                                   # p00:4D59
            for k in range(n):
                dib[8 * k:8 * k + 8] = dib[8 * k:8 * k + 8][::-1]
                col[8 * k:8 * k + 8] = col[8 * k:8 * k + 8][::-1]
        else:                                          # p00:4D8E
            dib = bytearray(int("{:08b}".format(x)[::-1], 2) for x in dib)
        for bit, base in ((3, 0x1000), (4, 0x0800), (5, 0x0000)):   # p00:4DA5
            if m >> bit & 1:
                for i in range(nb):
                    vram[(DIBUJOS + base + d * 8 + i) & 0x3FFF] = dib[i]
                    vram[(COLORES + base + d * 8 + i) & 0x3FFF] = col[i]
        ix += 4


def de_la_fase(fase, vram=None):
    """p00:4F82: los caracteres de la fase sobre `vram` (o una vacia)."""
    if vram is None:
        vram = bytearray(0x4000)
    v16 = B.Ventana(R16)
    lista_graficos(vram, R16, v16.w(0x5FFE + 2 * fase))
    lista_graficos(vram, R14, 0x6000)
    copias(vram, v16, v16.w(0x6014 + 2 * fase))
    return vram


def cambios(fase):
    """[(scroll, lista, copias, fondo)] de p16:602A[fase] (p00:51F7)."""
    v = B.Ventana(R16)
    a = v.w(0x602A + 2 * fase)
    out = []
    while True:
        s = v.w(a)
        if s == 0xFFFF or len(out) > 32:
            return out
        out.append((s, v.w(a + 2), v.w(a + 4), v(a + 6)))
        a += 7


def tramos(fase, vram=None):
    """[(desde el scroll, vram)]: la VRAM de la fase y la de tras cada cambio."""
    vr = de_la_fase(fase, vram)
    out = [(0, bytes(vr))]
    for s, lista, cop, _ in cambios(fase):
        lista_graficos(vr, R16, lista)
        copias(vr, B.Ventana(R16), cop)
        out.append((s, bytes(vr)))
    return out


R7 = (1, 2, 7)


def animacion(fase, scroll):
    """La animacion de p02:835A con ese scroll: (pasos, [lista de cada paso])
    o None."""
    v = B.Ventana(R7)
    a = v.w(0xB1F5 + 2 * fase)
    while v.w(a + 2) <= scroll:
        a += 4
    t = v.w(a)
    if v(t) == 0:
        return None
    n = v(t + 1)
    pasos = []
    for k in range(n):
        q = v.w(t + 2 + 2 * k)
        fichas = []
        while v(q) != 0:
            fichas.append((v(q), v(q + 1), bytes(v(q + 2 + i) for i in range(8))))
            q += 10
        pasos.append(fichas)
    return pasos


def inicios_animacion(fase):
    """Los scrolls en los que cambia la animacion de p02:835A."""
    v = B.Ventana(R7)
    a = v.w(0xB1F5 + 2 * fase)
    out = [0]
    while v.w(a + 2) != 0xFFFF and len(out) < 32:
        out.append(v.w(a + 2))
        a += 4
    return out


def pon_paso(vram, fichas):
    """p02:83B9."""
    for c, m, datos in fichas:
        base = COLORES if m & 0x08 else DIBUJOS
        for bit, t in ((0, 0x1000), (1, 0x0800), (2, 0x0000)):
            if m >> bit & 1:
                vram[base + t + c * 8:base + t + c * 8 + 8] = datos


def con_paso(vram, fase, scroll, paso=0):
    """La VRAM como queda en ese paso: una vuelta entera de pasos que acaba en
    el (hay animaciones que cambian los dibujos en unos pasos y los colores en
    otros)."""
    vr = bytearray(vram)
    an = animacion(fase, scroll)
    if an:
        n = len(an)
        for k in range(paso + 1, paso + 1 + n):
            pon_paso(vr, an[k % n])
    return vr


def coteja(fase, ruta):
    import pickle
    vj, regs, ram = pickle.load(open(ruta, "rb"))
    s = ram[0xE363] | ram[0xE364] << 8
    vr = None
    for desde, v in tramos(fase):
        if desde <= s:
            vr = v
    malos = {}
    for zona, base in (("dibujos", DIBUJOS), ("colores", COLORES)):
        for t in range(3):
            n = sum(1 for i in range(0x800) if vr[base + t * 0x800 + i] != vj[base + t * 0x800 + i])
            malos[(zona, t)] = n
    # los caracteres que usa la pantalla
    usados = {(f // 8, vj[NOMBRES + 32 * f + c]) for f in range(22) for c in range(32)}
    distintos = sorted((t, c) for t, c in usados
                       if any(vr[b + t * 0x800 + c * 8 + i] != vj[b + t * 0x800 + c * 8 + i]
                              for b in (DIBUJOS, COLORES) for i in range(8)))
    print("fase %d, scroll 0x%X: bytes distintos por tercio %s" % (fase, s, malos))
    print("  caracteres de la pantalla distintos: %d de %d %s" % (len(distintos), len(usados), distintos[:20]))
    return not distintos


if __name__ == "__main__":
    if len(sys.argv) > 3 and sys.argv[1] == "coteja":
        sys.exit(0 if coteja(int(sys.argv[2]), sys.argv[3]) else 1)
    print(__doc__)

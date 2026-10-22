#!/usr/bin/env python3
"""Los dibujos de sprite de cada fase de Nemesis 3 (0x1800, 64 de 16 x 16),
cargados como los carga el cartucho al empezar la fase (p00:4F82), con los
bancos 14-15:

  p00:5007  rachas de p14:7055 a 0x1800 y las de la nave sin escudo (p14:7082,
            0x1840; p00:5019)
  p00:505D  p14:7447 a 0x19E0;  p00:5080  p14:74A4 a 0x1920;
  p00:508F  p14:74D8 a 0x1980
  p00:509E  las listas p14:6ED4 y p14:6EDB, y la de la fase p14:6EED[fase]
            (p00:50B0): [n][rachas] hasta un 0, a 0x1800 + 8 x n (p00:50C2)
  p00:50DC  las copias p14:6EE2 y las de la fase p14:6FAA[fase] (p00:50E9):
            [tipo][cuantos][origen][destino] (numeros de dibujo de 8 bytes)
            hasta un tipo 0 (p00:4E5A); el tipo 1 pone cada sprite cabeza
            abajo (p00:4EC4) y los demas en espejo de lado (p00:4B61: cada
            byte al reves y una columna por la otra)
p00:506C (p14:7537 a 0x1920, con 0xE5E0) no va al empezar la fase.

Uso: sprites.py png <fase> <salida.png> [--escala N]
     sprites.py coteja <fase> <vram.bin>   contra un volcado de openMSX
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import bloques as B      # noqa: E402
import vram as V         # noqa: E402
from tms import PALETA   # noqa: E402

R14 = (14, 15, 3)


def lista(vr, v, a):
    """p00:50C2."""
    while v(a) != 0:
        n = v(a)
        V.rachas(vr, v, v.w(a + 1), V.SPRITES + 8 * n)
        a += 3


def espejo(x):
    return int("{:08b}".format(x)[::-1], 2)


def copias(vr, v, ix):
    """p00:4E5A."""
    while 1 <= v(ix):
        tipo, n, o, d = v(ix), v(ix + 1), v(ix + 2), v(ix + 3)
        for k in range(n):
            a = V.SPRITES + 8 * o + 32 * k
            src = bytes(vr[a:a + 32])
            if tipo == 1:                       # p00:4EC4: cabeza abajo
                dst = src[0:16][::-1] + src[16:32][::-1]
            else:                               # p00:4B61: espejo de lado
                r = bytes(espejo(x) for x in src)
                dst = r[16:32] + r[0:16]
            b = V.SPRITES + 8 * d + 32 * k
            vr[b:b + 32] = dst
        ix += 4


def de_la_fase(fase):
    vr = bytearray(0x4000)
    v = B.Ventana(R14)
    V.rachas(vr, v, 0x7055, 0x1800)
    V.rachas(vr, v, 0x7082, 0x1840)
    V.rachas(vr, v, 0x7447, 0x19E0)
    V.rachas(vr, v, 0x74A4, 0x1920)
    V.rachas(vr, v, 0x74D8, 0x1980)
    lista(vr, v, 0x6ED4)
    lista(vr, v, 0x6EDB)
    copias(vr, v, 0x6EE2)
    lista(vr, v, v.w(0x6EED + 2 * fase))
    copias(vr, v, v.w(0x6FAA + 2 * fase))
    return vr


def png(fase, salida, escala=3):
    from PIL import Image
    vr = de_la_fase(fase)
    img = Image.new("RGB", (8 * 20 * escala, 8 * 20 * escala), PALETA[1])
    px = img.load()
    for s in range(64):
        x0, y0 = 2 + 20 * (s % 8), 2 + 20 * (s // 8)
        for dx in range(16):
            for dy in range(16):
                b = vr[V.SPRITES + 32 * s + 16 * (dx // 8) + dy]
                if b >> (7 - dx % 8) & 1:
                    for i in range(escala):
                        for j in range(escala):
                            px[(x0 + dx) * escala + i, (y0 + dy) * escala + j] = PALETA[15]
    img.save(salida)


def coteja(fase, ruta):
    real = open(ruta, "rb").read()
    vr = de_la_fase(fase)
    malos = [s for s in range(64)
             if vr[V.SPRITES + 32 * s:V.SPRITES + 32 * s + 32] != real[V.SPRITES + 32 * s:V.SPRITES + 32 * s + 32]]
    print("fase %d: %d sprites de 64 distintos %s" % (fase, len(malos), malos))
    return malos


def main(argv):
    if len(argv) > 3 and argv[1] == "png":
        esc = int(argv[argv.index("--escala") + 1]) if "--escala" in argv else 3
        png(int(argv[2]), argv[3], esc)
    elif len(argv) > 3 and argv[1] == "coteja":
        return 1 if coteja(int(argv[2]), argv[3]) else 0
    else:
        print(__doc__)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))

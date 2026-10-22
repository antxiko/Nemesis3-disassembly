#!/usr/bin/env python3
"""Coteja un volcado de openMSX (tools/omsx_vram.tcl) con lo que dibujamos
desde la ROM: la tabla de nombres contra el mapa de tools/dibuja.py (la
columna c de la pantalla es la del scroll - 31 + c) y los caracteres que se
ven (dibujo y color en el tercio de cada fila) contra tools/vram.py.

Los caracteres que cambian solos (p02:835A) valen con cualquiera de sus
pasos, tambien los de una animacion ya acabada (se quedan como estaban); las estrellas (0x1E y 0x1F, que se mueven y se pintan en los huecos)
no cuentan. Lo que el codigo pinta encima del mapa (enemigos hechos de
caracteres) sale aparte, como "encima".

Uso: coteja_vram.py <dir> <etiqueta> [...]   p. ej. coteja_vram.py work/om_f2 50
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import dibuja as D   # noqa: E402
import vram as V     # noqa: E402

ESTRELLAS = {0x1E, 0x1F}


def lee(d, et):
    vr = open(os.path.join(d, "vram-%s.bin" % et), "rb").read()
    ram = open(os.path.join(d, "ram-%s.bin" % et), "rb").read()
    return vr, ram


def coteja(vj, ram):
    fase = ram[0xE361]
    s = ram[0xE363] | ram[0xE364] << 8
    cols = dict(D.columnas(fase))
    vr = [v for desde, v in V.tramos(fase) if desde <= s][-1]
    # la animacion de ahora y las de antes: al acabar una, sus caracteres se
    # quedan en el ultimo paso que pintaron
    versiones = [vr]
    for desde in sorted({d for d in V.inicios_animacion(fase) if d <= s} | {s}):
        an = V.animacion(fase, desde) or []
        versiones += [V.con_paso(vr, fase, desde, k) for k in range(len(an))]
    igual = encima = 0
    caracteres = set()
    for c in range(32):
        col = cols.get(s - 31 + c, [0] * D.FILAS)
        for f in range(D.FILAS):
            a = vj[V.NOMBRES + 32 * f + c]
            if a in ESTRELLAS and col[f] in (0, a):
                continue
            if a == col[f]:
                igual += 1
                caracteres.add((f // 8, a))
            else:
                encima += 1

    def igual_a(t, c, x):
        return all(x[b + t * 0x800 + c * 8 + i] == vj[b + t * 0x800 + c * 8 + i]
                   for b in (V.DIBUJOS, V.COLORES) for i in range(8))
    malos = sorted((t, c) for t, c in caracteres
                   if not any(igual_a(t, c, x) for x in versiones))
    return fase, s, igual, encima, len(caracteres), malos


def main(argv):
    if len(argv) < 3:
        print(__doc__)
        return 1
    mal = 0
    for et in argv[2:]:
        fase, s, igual, encima, n, malos = coteja(*lee(argv[1], et))
        print("%s: fase %d, scroll 0x%03X: %d casillas como el mapa, %d encima; "
              "%d caracteres, %d con otro dibujo %s" % (et, fase, s, igual, encima, n,
                                                       len(malos), malos[:12]))
        mal += len(malos)
    return 1 if mal else 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))

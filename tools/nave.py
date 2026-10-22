#!/usr/bin/env python3
"""La nave de Nemesis 3 dibujada desde la ROM: sus posturas con y sin escudo.

  p00:5007  los dibujos de sprite de la partida: rachas de p14:7055 a 0x1800
            (con 14-15) y, segun la nave (p00:5019, 0xE600), las de 0x1840:
            p14:7082 sin escudo; con el escudo de delante p14:70CB (2 o mas
            golpes) o p14:7166 (uno); con el grande p14:71D1 o p14:72A6
  p04:8091  el juego de dos sprites de cada estado: tres posturas de 8 bytes
            (dy, dx, dibujo, color de cada sprite), quieta, arriba y abajo
            (p04:8064, bits 0 y 1 de 0xE309); los escudos cambian de juego
            cada 4 cuadros (bit 2 de 0xE303)

Uso: nave.py png <salida.png> [--escala N]
     nave.py coteja <vram.bin>    los dibujos de 0x1800-0x18FF contra un
                                  volcado de openMSX con la nave sin escudo
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import bloques as B      # noqa: E402
import vram as V         # noqa: E402
from tms import PALETA   # noqa: E402

R14 = (14, 15, 3)
# (rotulo, rachas de 0x1840, juegos de p04 de los dos fotogramas)
ESTADOS = [
    ("sin escudo", 0x7082, (0x80E0,)),
    ("escudo de delante", 0x70CB, (0x80F8, 0x8110)),
    ("escudo de delante, un golpe", 0x7166, (0x8128, 0x8140)),
    ("escudo grande", 0x71D1, (0x8158, 0x8170)),
    ("escudo grande, un golpe", 0x72A6, (0x8188, 0x81A0)),
]
POSTURAS = ("quieta", "arriba", "abajo")


def dibujos(rachas_1840):
    vr = bytearray(0x4000)
    v = B.Ventana(R14)
    V.rachas(vr, v, 0x7055, 0x1800)
    V.rachas(vr, v, rachas_1840, 0x1840)
    return vr


def pinta_sprite(px, vr, n, color, x0, y0, escala):
    n &= 0xFC
    for dx in range(16):
        for dy in range(16):
            b = vr[V.SPRITES + 8 * n + 16 * (dx // 8) + dy]
            if b >> (7 - dx % 8) & 1:
                for i in range(escala):
                    for j in range(escala):
                        px[(x0 + dx) * escala + i, (y0 + dy) * escala + j] = PALETA[color]


def png(salida, escala=3):
    from PIL import Image
    v4 = B.ventana_de(4)
    filas = []
    for _, r, juegos in ESTADOS:
        vr = dibujos(r)
        filas.append([(vr, j + 8 * p) for p in range(3) for j in juegos])
    ancho = max(len(f) for f in filas) * 28
    img = Image.new("RGB", (ancho * escala, len(filas) * 22 * escala), PALETA[1])
    px = img.load()
    for fy, f in enumerate(filas):
        for fx, (vr, t) in enumerate(f):
            x0, y0 = 4 + 28 * fx, 3 + 22 * fy
            for s in range(2):
                dy, dx, n, c = (v4(t + 4 * s + i) for i in range(4))
                dy = dy - 256 if dy > 127 else dy
                dx = dx - 256 if dx > 127 else dx
                pinta_sprite(px, vr, n, c, x0 + dx, y0 + dy, escala)
    img.save(salida)
    return img.size


def coteja(ruta):
    real = open(ruta, "rb").read()
    vr = dibujos(0x7082)
    malos = [n for n in range(0, 0x20, 4)
             if vr[V.SPRITES + 8 * n:V.SPRITES + 8 * n + 32] != real[V.SPRITES + 8 * n:V.SPRITES + 8 * n + 32]]
    print("dibujos de sprite 0x00-0x1F: %d distintos %s" % (len(malos), [hex(n) for n in malos]))
    return not malos


def main(argv):
    if len(argv) > 2 and argv[1] == "png":
        esc = int(argv[argv.index("--escala") + 1]) if "--escala" in argv else 3
        print(png(argv[2], esc))
    elif len(argv) > 2 and argv[1] == "coteja":
        return 0 if coteja(argv[2]) else 1
    else:
        print(__doc__)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))

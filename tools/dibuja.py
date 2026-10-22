#!/usr/bin/env python3
"""Dibuja desde la ROM el recorrido de las fases de Nemesis 3.

Cada columna nueva la mete p00:5345 en el bufer de 0xC400 (64 por fila; las
32 de la izquierda son la tabla de nombres) con los bancos 23-24-25:
  - el mapa de la fase es p24:946F[fase], seis bytes por columna de bloques;
  - solo hay mapa con el scroll entre 0xE421 y 0xE423 (p19:A90F, 6 bytes por
    fase); fuera, la columna va vacia (p00:5404). Las fases 1 y 4 no tienen
    mapa (0xFFFF): lo que se ve son enemigos hechos de caracteres;
  - la columna de bloques es (scroll - 0xE421) / 4 y la de dentro del bloque
    scroll & 3 (p00:5365, p00:53D7);
  - cada byte es un bloque de 4 x 4 caracteres: los 0-3 son los comunes de
    p23:6021 (16 bytes, cuatro filas de cuatro) y los demas, menos 4, los de
    la fase desde p23:5FFE[fase]: los p23:6015[fase] primeros de 16 bytes y
    los siguientes de 8 (dos filas; las otras dos a cero, p00:53B4);
  - seis bloques por columna, el ultimo con solo dos filas: 22 filas.
Los caracteres son los de tools/vram.py, con los cambios de p00:51EE desde la
columna que entra con ese scroll y los que cambian solos (p02:835A) en su
paso 0; el tercio de cada fila es el de la pantalla.

Uso: dibuja.py mapa <fase> <salida.png>
     dibuja.py mapas <directorio>      recorrido_fN.png de las fases con mapa
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import bloques as B      # noqa: E402
import vram as V         # noqa: E402
from tms import PALETA   # noqa: E402

FILAS = 22


def limites(fase):
    """(principio, final) del mapa: p19:A90F + 6 x fase."""
    v = B.ventana_de(19)
    a = 0xA90F + 6 * fase
    return v.w(a), v.w(a + 2)


def columnas(fase):
    """[(scroll, [22 caracteres])] de la fase, como las mete p00:5345."""
    p, f = limites(fase)
    if p == 0xFFFF:
        return []
    v = B.Ventana((23, 24, 25))
    mapa = v.w(0x946F + 2 * fase)
    base = v.w(0x5FFE + 2 * fase)
    n16 = v(0x6015 + fase)
    out = []
    for s in range(p, f):
        k = mapa + ((s - p) >> 2) * 6
        dentro = s & 3
        col = []
        for b in range(6):
            n = v(k + b)
            filas = 4
            if n < 4:
                blq = [v(0x6021 + 16 * n + i) for i in range(16)]
            else:
                c = n - 4
                if c < n16:
                    blq = [v(base + 16 * c + i) for i in range(16)]
                else:
                    a = base + 16 * n16 + 8 * (c - n16)
                    blq = [v(a + i) for i in range(8)] + [0] * 8
            if b == 5:
                filas = 2
            col += [blq[4 * y + dentro] for y in range(filas)]
        out.append((s, col))
    return out


def pinta(fase):
    from PIL import Image
    cols = columnas(fase)
    if not cols:
        return None
    tr = V.tramos(fase)
    img = Image.new("RGB", (8 * len(cols), 8 * FILAS), PALETA[0])
    px = img.load()
    ini = V.inicios_animacion(fase)
    hechas = {}
    for x, (s, col) in enumerate(cols):
        k = sum(1 for d, _ in tr if d <= s)
        # la animacion de ese scroll, o la ultima que hubo (sus caracteres se
        # quedan como estaban), en su paso 0
        a = max([d for d in ini if d <= s and V.animacion(fase, d)] or [0])
        if (k, a) not in hechas:
            hechas[(k, a)] = V.con_paso(tr[k - 1][1], fase, a, 0)
        vr = hechas[(k, a)]
        for fila, c in enumerate(col):
            t = (fila // 8) * 0x800 + c * 8
            for y in range(8):
                d = vr[V.DIBUJOS + t + y]
                cl = vr[V.COLORES + t + y]
                for i in range(8):
                    z = cl >> 4 if d & (0x80 >> i) else cl & 0x0F
                    if z:
                        px[8 * x + i, 8 * fila + y] = PALETA[z]
    return img


def main(argv):
    if len(argv) > 3 and argv[1] == "mapa":
        pinta(int(argv[2])).save(argv[3])
    elif len(argv) > 2 and argv[1] == "mapas":
        os.makedirs(argv[2], exist_ok=True)
        for f in range(1, 12):
            im = pinta(f)
            if im is not None:
                im.save(os.path.join(argv[2], "recorrido_f%d.png" % f))
                print("fase %d: %d columnas" % (f, im.size[0] // 8))
    else:
        print(__doc__)


if __name__ == "__main__":
    main(sys.argv)

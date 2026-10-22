#!/usr/bin/env python3
"""La pantalla del TMS9918 (MSX1) a partir de su VRAM y sus 8 registros:
SCREEN 2 (modo grafico 2) y SCREEN 1 (grafico 1), con los sprites encima
como los pinta el chip: tabla de atributos de R5 (y = 0xD0 acaba), dibujos
de R6, 8x8 o 16x16 con el bit 1 de R1 y ampliados con el bit 0, el bit 7
del color (EC) los corre 32 puntos a la izquierda, cuatro por linea como
mucho (el quinto no se ve) y el color 0 transparente.

Maquinaria: no lleva nada de ningun juego.
"""

PALETA = [
    (0, 0, 0), (0, 0, 0), (33, 200, 66), (94, 220, 120),
    (84, 85, 237), (125, 118, 252), (212, 82, 77), (66, 235, 245),
    (252, 85, 84), (255, 121, 120), (212, 193, 84), (230, 206, 128),
    (33, 176, 59), (201, 91, 186), (204, 204, 204), (255, 255, 255),
]


def pinta(vram, r, escala=1, sprites=True):
    """Imagen PIL de 256x192 (por escala)."""
    from PIL import Image
    img = Image.new("RGB", (256, 192), PALETA[r[7] & 0x0F])
    if not r[1] & 0x40:                       # pantalla apagada (BL)
        return img.resize((256 * escala, 192 * escala), Image.NEAREST) if escala != 1 else img
    px = img.load()
    m2 = bool(r[0] & 0x02)
    nombres = (r[2] & 0x0F) << 10
    for fila in range(24):
        for col in range(32):
            c8 = vram[nombres + 32 * fila + col]
            for y in range(8):
                if m2:
                    n = (fila // 8) * 256 + c8
                    dib = vram[((r[4] & 0x04) << 11) | ((n * 8 + y) & (((r[4] & 0x03) << 11) | 0x7FF))]
                    c = vram[((r[3] & 0x80) << 6) | ((n * 8 + y) & (((r[3] & 0x7F) << 6) | 0x3F))]
                else:
                    dib = vram[((r[4] & 0x07) << 11) + c8 * 8 + y]
                    c = vram[(r[3] << 6) + c8 // 8]
                for x in range(8):
                    k = c >> 4 if dib & (0x80 >> x) else c & 0x0F
                    if k:
                        px[col * 8 + x, fila * 8 + y] = PALETA[k]
    if sprites:
        pinta_sprites(vram, r, px)
    if escala != 1:
        img = img.resize((256 * escala, 192 * escala), Image.NEAREST)
    return img


def lista_sprites(vram, r):
    """(n, y, x, dibujo, color) de los sprites que el chip mira."""
    atr = (r[5] & 0x7F) << 7
    grande = r[1] & 0x02
    out = []
    for k in range(32):
        y, x, n, c = vram[atr + 4 * k:atr + 4 * k + 4]
        if y == 0xD0:
            break
        y = y + 1 if y < 0xE0 else y - 255
        out.append((k, y, x - (32 if c & 0x80 else 0), n & (0xFC if grande else 0xFF), c & 0x0F))
    return out


def pinta_sprites(vram, r, px):
    sdib = (r[6] & 0x07) << 11
    grande, amplia = r[1] & 0x02, r[1] & 0x01
    lado = (16 if grande else 8) * (2 if amplia else 1)
    por_linea = [0] * 192
    puntos = {}
    for _k, y0, x0, n, c in lista_sprites(vram, r):
        for yy in range(lado):
            ly = y0 + yy
            if not 0 <= ly < 192:
                continue
            if por_linea[ly] >= 4:
                continue
            por_linea[ly] += 1
            if not c:
                continue
            dy = yy // (2 if amplia else 1)
            for xx in range(lado):
                lx = x0 + xx
                if not 0 <= lx < 256 or (lx, ly) in puntos:
                    continue
                dx = xx // (2 if amplia else 1)
                byte = vram[sdib + 8 * n + 16 * (dx // 8) + dy]
                if byte >> (7 - dx % 8) & 1:
                    puntos[(lx, ly)] = c
    for (lx, ly), c in puntos.items():
        px[lx, ly] = PALETA[c]

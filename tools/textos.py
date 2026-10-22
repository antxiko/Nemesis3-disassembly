#!/usr/bin/env python3
"""Los textos del cartucho, decodificados: los bloques de texto que declaran
los lectores (tools/lectores.py: p00:4B04, 4B1B, 4B0C, 4B1F y 4B32), con su
direccion de pantalla.

La letra: 0x00 espacio, 0x01-0x0A las cifras, 0x0B (c), 0x0E ?, 0x11 guion,
0x12-0x2B de la A a la Z, 0x2C y 0x2D comillas, 0x2E punto y 0x2F coma (la
fuente que carga p00:54C3, cotejada con la VRAM de openMSX).

Uso: textos.py            lista todos
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)

LETRA = {0: " ", 0x0B: "(C)", 0x0E: "?", 0x0F: "!", 0x11: "-", 0x2C: '"', 0x2D: '"',
         0x2E: ".", 0x2F: ","}
for _i in range(10):
    LETRA[1 + _i] = str(_i)
for _i in range(26):
    LETRA[0x12 + _i] = chr(65 + _i)
# Las letras de los mensajes de grabar y cargar: p00:5563 pone en los
# caracteres 0x40-0x4C las letras de p20:6068 de la lista p00:559B.
for _i, _c in enumerate("SAVECOMPLTFID"):
    LETRA[0x40 + _i] = _c


def letras(bs):
    return "".join(LETRA.get(x, "[%02X]" % x) for x in bs)


def lee(v, a, con_direccion=True):
    """[(direccion de VRAM o None, texto)] de un texto en a."""
    out = []
    d = None
    if con_direccion:
        d = v.w(a)
        a += 2
    bs = []
    while True:
        x = v(a)
        a += 1
        if x in (0xFE, 0xFF):
            out.append((d, letras(bs)))
            bs = []
            if x == 0xFF:
                return out, a
            d = v.w(a)
            a += 2
        else:
            bs.append(x)


def todos():
    sys.modules.setdefault("bloques", __import__("bloques"))
    import bloques as B
    import lectores
    lectores.todo()
    vistos = set()
    out = []
    for b in B.BLOQUES:
        nom = b["nombre"]
        if not (nom.startswith("texto") or nom.startswith("letras")) or (b["p"], b["ini"]) in vistos:
            continue
        vistos.add((b["p"], b["ini"]))
        v = B.ventana_de(b["p"])
        lineas, _ = lee(v, b["ini"], not nom.startswith("letras"))
        out.append((b["p"], b["ini"], lineas))
    return out


if __name__ == "__main__":
    for p, a, lineas in todos():
        for d, t in lineas:
            print("p%02d:%04X  %s  %s" % (p, a, "VRAM %04X" % d if d is not None else "         ", t))

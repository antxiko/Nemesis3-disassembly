#!/usr/bin/env python3
"""Semillas medidas: el codigo que la campana (tools/cobertura.py) ha visto
ejecutarse y el trazado de cartucho entero no alcanza. De cada tramo, la
primera instruccion, con la instruccion desde la que se llego (lo apunta
tools/ejecuta.py) y el reparto de bancos de ese momento. Reescribe la seccion
delimitada de src/semillas.txt.

Uso: semillas_campana.py [--escribe]
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import bancos       # noqa: E402
import cobertura    # noqa: E402
from paginas import ORG, nombre   # noqa: E402

RAIZ = os.path.dirname(AQUI)
CAB = "# --- SEMILLAS MEDIDAS JUGANDO (las reescribe tools/semillas_campana.py) ---"
FIN = "# --- fin de las semillas medidas ---"
COMO = {0xE9: "jp (hl)", 0xC9: "ret", 0xC3: "jp", 0xCD: "call", 0x18: "jr"}


def calcula():
    rom = open(os.path.join(RAIZ, "nemesis3.rom"), "rb").read()
    t = bancos.traza_completa(rom, os.path.join(RAIZ, "src"))[0]
    d = cobertura.carga()
    llega = d.get("llega", {})
    ej = {(b, pc) for b, pc in d["ejecutado"] if b is not None and b >= 0}
    out = []
    for b, pc in sorted(ej):
        if not ORG[b] <= pc < ORG[b] + 0x2000 or t.marcado[b][pc - ORG[b]]:
            continue
        if any(pb_ == b and pc_ == pc for pb_, pc_, _ in t.partidas):
            continue                    # partida entre dos bancos: va como datos
        info = llega.get("%d:%04X" % (b, pc))
        if not info or not info[0]:
            continue
        (pb, ppc), s = info
        if (pb, ppc) in ej and pb is not None and pb >= 0 and not t.marcado[pb][ppc - ORG[pb]] \
                and ORG[pb] <= ppc < ORG[pb] + 0x2000:
            continue                    # sigue de otra instruccion que tampoco esta: no es el principio
        op = rom[pb * 0x2000 + ppc - ORG[pb]] if pb is not None and pb >= 0 else None
        como = COMO.get(op, "salto")
        out.append((b, pc, s, "se ejecuta jugando (tools/cobertura.py): se llega desde %s:%04X (%s)" % (
            nombre(pb) if pb is not None and pb >= 0 else "bios", ppc, como)))
    return out


def main(argv):
    out = calcula()
    lineas = [CAB] + ["%s 0x%04X %d %d %d  # %s" % (nombre(b), pc, s[0], s[1], s[2], q)
                      for b, pc, s, q in out] + [FIN]
    print("%d semillas" % len(out))
    if "--escribe" in argv:
        ruta = os.path.join(RAIZ, "src", "semillas.txt")
        filas = open(ruta, encoding="utf-8").read().split("\n") if os.path.exists(ruta) else []
        if CAB in filas:
            i, f = filas.index(CAB), filas.index(FIN)
            viejas = filas[i + 1:f]
            nuevas = [l for l in lineas[1:-1] if l.split("#")[0].split()[:2] not in
                      [v.split("#")[0].split()[:2] for v in viejas]]
            filas[i:f + 1] = [CAB] + sorted(viejas + nuevas) + [FIN]
        else:
            while filas and filas[-1] == "":
                filas.pop()
            filas += lineas + [""]
        open(ruta, "w", encoding="utf-8", newline="\n").write("\n".join(filas))
    else:
        for l in lineas[1:20]:
            print(l)


if __name__ == "__main__":
    main(sys.argv)

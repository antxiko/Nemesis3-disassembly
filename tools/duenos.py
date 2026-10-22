#!/usr/bin/env python3
"""A que clase de ficha apunta IX en cada instruccion: el reparto que usa
tools/anota.py para nombrar los campos `(ix+n)` donde IX no se carga a la
vista.

Los manejadores de cada tipo de enemigo, de pieza o de jefe estan mezclados
en los mismos bancos, asi que no valen tramos fijos. Se parte de las SEMILLAS
de cada clase (el cuerpo del bucle que pone IX y las tablas de sus tipos;
tools/anotaciones.py, SEMILLAS_FICHAS) y se sigue el flujo: saltos, llamadas,
y las tablas del despachador p00:4093 (las de src/pNN.notes). Una instruccion
a la que se llega desde dos clases distintas no es de ninguna. Donde se
carga IX (`ld ix`, `pop ix`) se deja de seguir: lo que venga despues ya no
es esa ficha. El banco 0 es comun y no se sigue.

La salida es {clase: {banco: ((desde, hasta), ...)}}: tramos seguidos del
listado que son solo de esa clase.

Uso: duenos.py            resumen por clase y banco
     duenos.py campos C   cuantas veces sale cada (ix+n) en la clase C
"""
import glob
import os
import re
import struct
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)

from paginas import ORG                 # noqa: E402

DESPACHADOR = 0x4093


def _listado(b):
    hallados = glob.glob(os.path.join(RAIZ, "src", "*_p%02d.asm" % b))
    filas = []
    for ln in open(hallados[0], encoding="utf-8"):
        m = re.match(r"\t([a-z][^\t;]*?)\s*;([0-9a-f]{4})", ln)
        if m and not ln.startswith(("\tdefb", "\tdefw")):
            filas.append((int(m.group(2), 16), m.group(1).strip()))
    return filas


def _tablas():
    """(banco, call) -> destinos, de las tablas del despachador de las notas."""
    fuera = {}
    for ruta in glob.glob(os.path.join(RAIZ, "src", "p[0-9][0-9].notes")):
        for ln in open(ruta, encoding="utf-8"):
            m = re.match(r"D 0x\w+ 0x\w+ tabla_\w+\s+\d+ destinos del despachador "
                         r"p00:4093 \(call en p(\d\d):([0-9A-F]{4})[^)]*\): ([0-9A-F, ]+);", ln)
            if m:
                fuera[(int(m.group(1)), int(m.group(2), 16))] = [
                    int(x, 16) for x in m.group(3).split(",") if x.strip()]
    return fuera


def _num(t):
    t = t.strip()
    if t.startswith("L_"):
        return int(t[2:], 16)
    if t.endswith("h"):
        return int(t[:-1], 16)
    return None


def _banco_de(b, t, trio):
    if 0x4000 <= t < 0x6000:
        return 0
    if ORG.get(b) is not None and ORG[b] <= t < ORG[b] + 0x2000:
        return b
    return trio(b).get(t & 0xE000)


def reparto(semillas, trio, bancos, reg="ix"):
    filas = {b: _listado(b) for b in bancos}
    pos = {b: {a: k for k, (a, _) in enumerate(f)} for b, f in filas.items()}
    tablas = _tablas()
    duenos = {}                                   # (b, a) -> set(clases)
    for clase, puntos in semillas.items():
        pila = [p for p in puntos if p[0] in filas]
        vistos = set()
        while pila:
            b, a = pila.pop()
            if (b, a) in vistos or a not in pos.get(b, {}):
                continue
            vistos.add((b, a))
            duenos.setdefault((b, a), set()).add(clase)
            k = pos[b][a]
            t = filas[b][k][1]
            sig = filas[b][k + 1][0] if k + 1 < len(filas[b]) else None
            if t.startswith(("ld %s," % reg, "pop %s" % reg)):
                continue
            m = re.match(r"(call|jp|jr|djnz)\s+(?:(nz|z|nc|c|po|pe|p|m),)?(\S+)$", t)
            if m:
                op, cond, d = m.groups()
                dest = _num(d)
                if d.startswith("$"):
                    dest = a + int(d[1:].replace("+", "") or 0) if "+" in d or "-" in d else None
                    if d.startswith("$-"):
                        dest = a - int(d[2:])
                    elif d.startswith("$+"):
                        dest = a + int(d[2:])
                if op == "call" and dest == DESPACHADOR:
                    for x in tablas.get((b, a), ()):
                        bx = _banco_de(b, x, trio)
                        if bx:
                            pila.append((bx, x))
                    continue
                if dest is not None:
                    bx = _banco_de(b, dest, trio)
                    if bx:
                        pila.append((bx, dest))
                if (op in ("call", "djnz") or cond) and sig is not None:
                    pila.append((b, sig))
                continue
            if t == "ret" or t == "reti" or t.startswith("jp (") or t == "halt":
                continue
            if sig is not None:
                pila.append((b, sig))
    # tramos: filas seguidas con un solo dueno
    fuera = {}
    for b, f in filas.items():
        actual, ini = None, None
        for a, _ in f + [(None, None)]:
            d = duenos.get((b, a)) if a is not None else None
            c = next(iter(d)) if d and len(d) == 1 else None
            if c != actual:
                if actual is not None:
                    fuera.setdefault(actual, {}).setdefault(b, []).append((ini, a if a is not None else ORG[b] + 0x2000))
                actual, ini = c, a
    return {c: {b: tuple(v) for b, v in d.items()} for c, d in fuera.items()}, duenos


def tabla_rom(banco, desde, n):
    """n palabras de la ROM en banco:desde."""
    rom = open(glob.glob(os.path.join(RAIZ, "*.rom"))[0], "rb").read()
    o = banco * 0x2000 + desde - ORG[banco]
    return [struct.unpack_from("<H", rom, o + 2 * i)[0] for i in range(n)]


def puente(banco, a):
    """Los puentes de p01 a otro banco: `ld hl,nn` y saltos `jr` hasta un
    `call` a p00:415B (bancos 4-5) o p00:41EF/41EC (el 19); devuelve
    (banco, nn) o None."""
    rom = open(glob.glob(os.path.join(RAIZ, "*.rom"))[0], "rb").read()
    o = banco * 0x2000 - ORG[banco]
    if rom[o + a] != 0x21:
        return None
    nn = rom[o + a + 1] | (rom[o + a + 2] << 8)
    a += 3
    for _ in range(8):
        op = rom[o + a]
        if op == 0x18:
            d = rom[o + a + 1]
            a = a + 2 + (d - 256 if d > 127 else d)
        elif op == 0xCD:
            dest = rom[o + a + 1] | (rom[o + a + 2] << 8)
            if dest == 0x415B:
                return (4 if nn < 0xA000 else 5, nn)
            if dest in (0x41EF, 0x41EC):
                return (19, nn)
            return None
        else:
            return None
    return None


def destinos(banco, ds, trio):
    """Las direcciones de una tabla de tipos, con su banco; los puentes de
    p01 a otro banco, por su destino."""
    fuera = []
    for d in ds:
        b = _banco_de(banco, d, trio)
        if not b:
            continue
        p = puente(b, d) if b == 1 else None
        fuera.append(p or (b, d))
    return fuera


def main(argv):
    import anotaciones as A
    tramos, duenos = reparto(A.semillas_fichas(), A.trio, A.BANCOS)
    if len(argv) > 2 and argv[1] == "campos":
        from collections import Counter
        cuenta = Counter()
        for (b, a), cs in duenos.items():
            if cs == {argv[2]}:
                for aa, t in _listado(b):
                    if aa == a:
                        m = re.search(r"\(ix\+0?([0-9a-f]+)h\)", t)
                        if m:
                            cuenta[(int(m.group(1), 16), t.split()[0])] += 1
        for (n, op), v in sorted(cuenta.items()):
            print("IX+%02X %-5s %d" % (n, op, v))
        return
    for c, d in sorted(tramos.items()):
        for b, v in sorted(d.items()):
            n = sum(1 for (bb, a), cs in duenos.items() if bb == b and cs == {c})
            print("%-8s p%02d  %4d instrucciones en %3d tramos" % (c, b, n, len(v)))
    amb = sum(1 for cs in duenos.values() if len(cs) > 1)
    print("de varias clases (sin dueno): %d" % amb)


if __name__ == "__main__":
    main(sys.argv)

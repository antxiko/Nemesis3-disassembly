#!/usr/bin/env python3
"""Campana de ejecucion: el cartucho jugado por guion (tools/partida.py) en
todas sus partes, apuntando que instrucciones corren y que bytes de la ROM lee
el codigo y quien los lee (tools/ejecuta.py).

Lo ejecutado es codigo DE VERDAD (lo ha corrido el Z80 con el banco que habia
puesto) y sirve de semilla al trazado; lo leido, con la instruccion que lo
lee, es la prueba de que un bloque de datos lo usa el programa.

Escenarios (cada uno una partida nueva):
  titulo     el logo, el titulo, la historia y la demostracion (sin tocar nada)
  fN         la fase N (1..11) con la nave invencible y disparando, CUADROS
             cuadros; apunta cada cambio de estado y de fase, y una foto cada
             300 cuadros en work/rec/
  gameover   la fase 1 sin tocar nada hasta que vuelve al logo

Uso: cobertura.py corre <escenario> ...     (cada uno en work/cob/<escenario>.json)
     cobertura.py todos
     cobertura.py resumen
"""
import json
import os
import sys
import time

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from partida import Juego, ESTADO, PASO, FASE   # noqa: E402

RAIZ = os.path.dirname(AQUI)
FOTOS = os.path.join(RAIZ, "work", "rec")
CUADROS = 15000
FASES = range(1, 12)


def escenarios():
    return ["titulo"] + ["f%d" % f for f in FASES] + ["gameover"]


def corre(nombre):
    if nombre == "titulo":
        j = Juego()
        j.cuadros(6000)
        return j, []
    if nombre == "gameover":
        j = Juego().hasta_partida()
        n = 0
        while j.mem[ESTADO] != 0 and n < 20000:
            j.cuadros(1)
            n += 1
        return j, []
    f = int(nombre[1:])
    j = Juego().hasta_partida(f, inmortal=True, dispara=True)
    ini = j.cuadro
    eventos = []
    previo = [None]
    os.makedirs(FOTOS, exist_ok=True)

    def mira(j):
        k = j.cuadro - ini
        st = (j.mem[ESTADO], j.mem[PASO] if j.mem[ESTADO] != 5 else 0, j.mem[FASE])
        if st != previo[0]:
            eventos.append((k,) + st)
            previo[0] = st
        if k % 300 == 0:
            j.foto().save(os.path.join(FOTOS, "%s_%05d.png" % (nombre, k)))
    j.juega(CUADROS, mira)
    return j, eventos


DIR = os.path.join(RAIZ, "work", "cob")


def carga():
    """Lo de todos los escenarios hechos (work/cob/*.json), junto."""
    d = {"hechos": [], "ejecutado": set(), "lector": {}, "eventos": {}}
    if not os.path.isdir(DIR):
        return d
    for fn in sorted(os.listdir(DIR)):
        if not fn.endswith(".json"):
            continue
        with open(os.path.join(DIR, fn)) as f:
            e = json.load(f)
        d["hechos"].append(fn[:-5])
        d["ejecutado"] |= set(tuple(x) for x in e["ejecutado"])
        for k, v in e["lector"].items():
            d["lector"].setdefault(k, v)
        d["eventos"][fn[:-5]] = e["eventos"]
        for k, v in e.get("llega", {}).items():
            d.setdefault("llega", {}).setdefault(k, v)
    return d


def guarda(nombre, j, eventos):
    os.makedirs(DIR, exist_ok=True)
    e = {"ejecutado": sorted((b, pc) for b, pc in j.ejecutado if b is not None),
         "lector": {"%d:%04X" % (b, a): "%d:%04X" % (bl if bl is not None else -1, pc & 0xFFFF)
                    for (b, a), (bl, pc) in j.lector.items()},
         "eventos": eventos,
         "llega": {"%d:%04X" % k: [list(v[0]) if v[0] else None, list(v[1])]
                   for k, v in j.llega.items() if k[0] is not None}}
    tmp = os.path.join(DIR, nombre + ".tmp")
    with open(tmp, "w") as f:
        json.dump(e, f)
    os.replace(tmp, os.path.join(DIR, nombre + ".json"))


def main(argv):
    if len(argv) < 2:
        sys.exit(__doc__)
    if argv[1] == "resumen":
        d = carga()
        print("escenarios: %d; instrucciones distintas: %d; bytes leidos: %d" % (
            len(d["hechos"]), len(d["ejecutado"]), len(d["lector"])))
        for k, ev in sorted(d.get("eventos", {}).items()):
            print(k, ev[:40])
        return
    nombres = escenarios() if argv[1] == "todos" else argv[2:]
    for nombre in nombres:
        t0 = time.time()
        j, eventos = corre(nombre)
        guarda(nombre, j, eventos)
        print("%s: %d s, %d instrucciones, %d bytes leidos" % (
            nombre, time.time() - t0, len(j.ejecutado), len(j.lector)), flush=True)

if __name__ == "__main__":
    main(sys.argv)

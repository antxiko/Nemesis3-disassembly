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
  bN         la fase N igual pero subiendo y bajando (Juego.barre = 90) y
             comprando armas: asi caen los jefes y se pasa a la fase siguiente;
             BCUADROS cuadros
  gameover   la fase 1 sin tocar nada hasta que vuelve al logo
  secretaN   (N de 1 a 0x0C, en hexadecimal) una entrada secreta del tipo N
             puesta delante de la nave en la fase 2 (0xE7E0: tipo, y + 6, x, y + 6;
             como la pone p02:80E5) y lo que abre, SCUADROS cuadros
  consola0 / consola3   la fase 9 acabada sin ninguna marca o con las tres
             (0xE393-0xE395 = 1): la consola y la fase a la que manda
  final0B    la fase 11 con la entrada 0x0B cogida (0xE396 = 1, p27:8786)
  japones    el titulo y la historia con la BIOS japonesa (0x002B = 0)

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
BCUADROS = 40000
SCUADROS = 4000
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
    if nombre == "japones":
        j = Juego()
        j.mem[0x002B] = 0x00
        j.cuadros(6000)
        return j, []
    if nombre.startswith("secreta"):
        return secreta(int(nombre[7:], 16))
    if nombre in ("consola0", "consola3", "final0B"):
        return marcas(nombre)
    if nombre == "remolino":
        return remolino()
    if nombre == "fase4":
        return fase4()
    f = int(nombre[1:])
    j = Juego().hasta_partida(f, inmortal=True, dispara=True)
    if nombre.startswith("b"):
        j.barre = 90            # sube y baja disparando: asi caen los jefes
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
    j.juega(BCUADROS if nombre.startswith("b") else CUADROS, mira)
    return j, eventos


DIR = os.path.join(RAIZ, "work", "cob")


def remolino():
    """La fase 4 no se puede poner a mano: se llega desde la 3. Alli, pasado
    el scroll 0x180, la nave que toca el centro de un remolino (la pieza 0x0C
    de 0xED00, p02:85BB) arranca la secuencia 1 (0xE31F). Se juega la 3 y,
    pasado ese scroll, la nave se lleva cada cuadro al centro del remolino
    (x + 0x1C - 4, y + 0x1C - 2); despues, BCUADROS cuadros de lo que venga."""
    j = Juego().hasta_partida(3, inmortal=True, dispara=True)
    j.barre = 90
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
        scroll = j.mem[0xE363] | (j.mem[0xE364] << 8)
        if j.mem[FASE] == 3 and scroll >= 0x180 and not j.mem[0xE31F]:
            for n in range(8):
                a = 0xED00 + 0x20 * n
                if j.mem[a] == 0x0C and not j.mem[a + 0x1D] and j.mem[a + 6] < 0xE0:
                    j.mem[0xE604] = (j.mem[a + 4] + 0x1C - 4) & 0xFF
                    j.mem[0xE606] = (j.mem[a + 6] + 0x1C - 2) & 0xFF
                    break
        if k % 300 == 0:
            j.foto().save(os.path.join(FOTOS, "remolino_%05d.png" % k))
    j.juega(BCUADROS, mira)
    return j, eventos


def fase4():
    """A la fase 4 se llega acabando la 3 SIN tocar un remolino: tocarlo
    (p02:85BB, la secuencia 1) devuelve la nave al principio de la 3. Se
    juega la 3 con p02:85BB saltado (como la muerte con `inmortal`) y,
    despues, lo que venga, BCUADROS cuadros."""
    j = Juego().hasta_partida(3, inmortal=True, dispara=True)
    j.sin.add((2, 0x85BB))
    j.barre = 90
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
            print("fase4", k, st, flush=True)
        if k % 300 == 0:
            j.foto().save(os.path.join(FOTOS, "fase4_%05d.png" % k))
    j.juega(BCUADROS, mira)
    return j, eventos


def _eventos(nombre, ini, eventos, previo):
    def mira(j):
        k = j.cuadro - ini
        st = (j.mem[ESTADO], j.mem[PASO] if j.mem[ESTADO] != 5 else 0, j.mem[FASE])
        if st != previo[0]:
            eventos.append((k,) + st)
            previo[0] = st
            print(nombre, k, st, flush=True)
        if k % 300 == 0:
            j.foto().save(os.path.join(FOTOS, "%s_%05d.png" % (nombre, k)))
    return mira


def secreta(tipo):
    """Una entrada secreta del tipo `tipo` delante de la nave, en la fase 2
    (las de los tipos 8-0x0C no salen alli: se ponen igual en 0xE7E0, que es
    lo que mira la nave al chocar, p02:8132)."""
    j = Juego().hasta_partida(2, inmortal=True, dispara=True)
    j.juega(300)
    y, x = j.mem[0xE604], j.mem[0xE606]
    # la nave la coge con su y + 6 a +-4 de la de la entrada (p02:813B)
    j.mem[0xE7E0:0xE7E4] = bytes((tipo, (y + 6) & 0xFF, (x + 0x18) & 0xFF, (y + 6) & 0xFF))
    ini = j.cuadro
    eventos, previo = [], [None]
    os.makedirs(FOTOS, exist_ok=True)
    j.juega(SCUADROS, _eventos("secreta%X" % tipo, ini, eventos, previo))
    return j, eventos


def marcas(nombre):
    """La fase 9 (o la 11) con las marcas de las entradas secretas puestas a
    mano, jugada hasta lo que venga."""
    fase = 11 if nombre == "final0B" else 9
    j = Juego().hasta_partida(fase, inmortal=True, dispara=True)
    j.barre = 90
    if nombre == "consola3":
        j.mem[0xE393:0xE396] = bytes((1, 1, 1))
    if nombre == "final0B":
        j.mem[0xE396] = 1
    ini = j.cuadro
    eventos, previo = [], [None]
    os.makedirs(FOTOS, exist_ok=True)
    j.juega(BCUADROS, _eventos(nombre, ini, eventos, previo))
    return j, eventos


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

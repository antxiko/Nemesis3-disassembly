#!/usr/bin/env python3
"""La regla banco -> direccion del MegaROM, compartida por todas las herramientas.

Nemesis 3 - The Eve of Destruction (Konami, RC-764, 1988) es un cartucho de
256 KB con el mapper Konami CON SCC: 32 bancos de 8 KB que se eligen
escribiendo el numero de banco en 0x5000 (para 0x4000-0x5FFF), 0x7000
(0x6000-0x7FFF), 0x9000 (0x8000-0x9FFF) y 0xB000 (0xA000-0xBFFF). Escribir
0x3F en 0x9000 no pone un banco: enciende el SCC en 0x9800-0x9FFF.

Lo que dice la ROM (tools/reconocimiento.py lo vuelve a medir cada vez):
  - 0x5000 solo lo escribe INIT (p00:40CC), con un 0: el banco 0 se queda
    fijo en 0x4000.
  - Las rutinas p00:4238 (tres ranuras), 424F (0x6000 y 0x8000), 425F
    (0x8000 y 0xA000), 426F, 4278 y 4281 (una) reciben el banco en A y
    encadenan `inc a`; las de p00:4145-41F6 las llaman con un `ld a,N` fijo,
    y de ahi sale la ranura de cada banco.
  - La interrupcion pone 10-11-12 (p00:404A, sonido) y el banco 10 cambia
    la ranura de 0xA000 a 25, 13 o 9 (p10:62EC-62FE) para leer partituras.

Uso como programa:
    paginas.py org <n>               imprime el org del banco n
    paginas.py lista                 imprime "n org" para los 32
    paginas.py corta <rom> <dir>     escribe <dir>/pNN.bin con cada banco
"""
import os
import sys

TAM_PAGINA = 0x2000
N_PAGINAS = 32

# banco -> direccion de ejecucion. Medido, no supuesto: ver reconocimiento.py.
_R6, _R8, _RA = 0x6000, 0x8000, 0xA000
ORG = {0: 0x4000,
       1: _R6, 2: _R8, 3: _RA,          # p00:4145 trio 1-2-3; p00:4150 el 3
       4: _R8, 5: _RA,                  # p00:4158 4-5 (425F); p00:4163 el 5
       6: _R8, 7: _RA,                  # p00:416B 6-7 (425F); p00:4173 el 7
       8: _RA,                          # p00:417B
       9: _RA,                          # p10:62FA ld a,9 / ld (0xB000),a
       10: _R6, 11: _R8, 12: _RA,       # p00:404A interrupcion: 10-11-12
       13: _RA,                         # p10:62F3
       14: _R6, 15: _R8,                # p00:418E 14-15 (424F); p00:4199 el 15
       16: _R6, 17: _R8, 18: _RA,       # p00:4183 trio
       19: _RA,                         # p00:41EC
       20: _R6, 21: _R8, 22: _RA,       # p00:41A1 trio; p00:41AC el 22
       23: _R6, 24: _R8, 25: _RA,       # p00:41B4 trio; p10:62EC el 25
       26: _R6, 27: _R8, 28: _RA,       # p00:41BC trio; 41C7 el 26; 41CF el 28
       29: _RA,                         # p00:41E4
       30: _R8, 31: _RA}                # p00:41DC 30-31 (425F)

# Registro del mapper -> ranura que gobierna (Konami con SCC).
REGISTROS = {0x5000: 0x4000, 0x7000: 0x6000, 0x9000: 0x8000, 0xB000: 0xA000}

# Los registros del OTRO mapper Konami: tienen que estar a cero.
AJENOS = (0x6000, 0x8000, 0xA000)

# Escrituras a un registro ajeno que van a otro slot: p01:6CC8 y p01:6D07
# hacen ENASLT (0x0024) con H = 0x80 y la ranura de otro cartucho, escriben
# en SU 0x8000 (un 4 y luego un 2) y lo llaman en 0x8000 (p01:6CEB, 6D28).
# (banco, pc).
OTRO_SLOT = {(1, 0x6CD0), (1, 0x6CF2), (1, 0x6D0F), (1, 0x6D2F)}

# Valores escritos en un registro que no son un banco: (registro, valor).
NO_BANCO = {(0x9000, 0x3F): "enciende el SCC en 0x9800"}

# Escrituras al mapper que ponen un banco fuera de su ranura, medidas en
# reconocimiento.py: (banco, pc de la escritura) -> ranura.
EXCEPCIONES = {}

NUNCA_MAPEADOS = ()


def org(p):
    """Direccion en la que se ejecuta el banco p."""
    return ORG[p]


def nombre(p):
    """Nombre del modulo del banco p: p00..p31."""
    return "p%02d" % p


def main(argv):
    if len(argv) < 2:
        sys.exit(__doc__)
    if argv[1] == "org":
        print("%#06x" % org(int(argv[2], 10)))
    elif argv[1] == "lista":
        for p in range(N_PAGINAS):
            print("%d %#06x" % (p, org(p)))
    elif argv[1] == "corta":
        rom, dst = argv[2], argv[3]
        d = open(rom, "rb").read()
        if len(d) != TAM_PAGINA * N_PAGINAS:
            sys.exit("la ROM mide %d bytes y no %d" % (len(d), TAM_PAGINA * N_PAGINAS))
        os.makedirs(dst, exist_ok=True)
        for p in range(N_PAGINAS):
            with open(os.path.join(dst, nombre(p) + ".bin"), "wb") as f:
                f.write(d[p * TAM_PAGINA:(p + 1) * TAM_PAGINA])
        print("%d bancos de %d bytes en %s/" % (N_PAGINAS, TAM_PAGINA, dst))
    else:
        sys.exit(__doc__)


if __name__ == "__main__":
    main(sys.argv)

#!/usr/bin/env python3
"""Los bytes que lee el motor de sonido al tocar cada sonido (del 1 al 0x53,
tabla p10:7504), con la instruccion que los lee: se ejecuta el motor
(tools/motor_musica.py) apuntando las lecturas de la ROM (sin los bytes de la
propia instruccion) con el banco que habia puesto, y se guarda en
work/cob/sonidos.json con el formato de tools/cobertura.py.

Uso: lee_sonidos.py [cuadros por sonido]
"""
import json
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
import motor_musica as M     # noqa: E402
import musica                # noqa: E402

N_SONIDOS = 0x54


def main(argv):
    cuadros = int(argv[1]) if len(argv) > 1 else 3600
    rom = open(os.path.join(M.RAIZ, musica.CFG["rom"]), "rb").read()
    lector = {}
    por_sonido = {}
    for n in range(1, N_SONIDOS):
        z = M.arranca(musica.CFG, rom, n)
        leido = {}
        lee = z._leer
        pc_actual = [0]
        una = z._una

        def _una():
            pc_actual[0] = z.pc
            una()

        def _leer(a, z=z, leido=leido, lee=lee):
            a &= 0xFFFF
            if 0x4000 <= a < 0xC000 and not pc_actual[0] <= a < pc_actual[0] + 4:
                b = z.bancos[a & 0xE000] % 32
                pc = pc_actual[0]
                bl = z.bancos[pc & 0xE000] % 32 if 0x4000 <= pc < 0xC000 else -1
                leido.setdefault((b, a), (bl, pc))
            return lee(a)
        z._una = _una
        z._leer = _leer
        for _ in range(cuadros):
            M.cuadro(z)
        for (b, a), (bl, pc) in leido.items():
            lector.setdefault("%d:%04X" % (b, a), "%d:%04X" % (bl, pc))
        por_sonido["%02X" % n] = sorted("%d:%04X" % k for k in leido)
        print("sonido 0x%02X: %d bytes leidos" % (n, len(leido)), flush=True)
    os.makedirs(os.path.join(M.RAIZ, "work", "cob"), exist_ok=True)
    json.dump({"ejecutado": [], "lector": lector, "eventos": [], "por_sonido": por_sonido},
              open(os.path.join(M.RAIZ, "work", "cob", "sonidos.json"), "w"))


if __name__ == "__main__":
    main(sys.argv)

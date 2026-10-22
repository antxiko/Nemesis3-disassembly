#!/usr/bin/env python3
"""La musica de Nemesis 3 (PSG y SCC), ejecutando su motor de sonido
(tools/motor_musica.py, el de Salamander y Nemesis 2).

El arranque (p00:409D) deja la RAM del juego (0xE000-0xEFFF) a cero y llama
a p10:6000 (p00:4BFA, con los bancos 10-11-12). `pide_sonido` (p00:589A)
pone los mismos bancos y llama a p10:6003 con el numero en A; cada cuadro la
interrupcion (p00:404A) los pone y llama a p10:6006, que lleva los ocho
canales (0xE000 + 0x40 x k) y su estado comun en 0xE280-0xE2C2. Las
partituras se leen con el banco 25, 13 o 9 en 0xA000 (p10:62EC-62FE).

Uso:  musica.py registros 0x23 [cuadros] | mp3 0x23 f.mp3 | todas docs/audio
      musica.py barrido 0x01 0x53
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import motor_musica  # noqa: E402
from motor_musica import P  # noqa: E402

PIEZAS = []

CFG = dict(rom="nemesis3.rom", org=0x4000, mapper="konami_scc",
           bancos0=((0x4000, 0), (0x6000, 10), (0x8000, 11), (0xA000, 12)),
           bancos_frame=((0x6000, 10), (0x8000, 11), (0xA000, 12)),
           ram0=[], init=[(0x6000, {})], frame=0x6006, pide=0x589A,
           banco_frame=10, banco_pide=0, ram=(0xE000, 0xE2C3), hz=60,
           psg0={7: 0xB8}, romtype="KonamiSCC", max_s=240, piezas=PIEZAS,
           pagina=None, maquina="C-BIOS_MSX1",
           excluye=(0xE2BD,))

if __name__ == "__main__":
    sys.exit(motor_musica.main(CFG, sys.argv[1:]))

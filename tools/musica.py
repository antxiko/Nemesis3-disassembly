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

# Medido con openMSX (tools/omsx_vram.tcl, VRAM_SONIDOS: cada peticion a
# p00:589A con el estado, la fase y el jefe) y con las rutinas que las piden.
# La 0x01 calla, la 0x02 y las 0x0F-0x37 son efectos; 0x83 y 0x84 son ordenes.
# Fuera tambien los sonidos de escena del final: 0x4D (2 s, antes de
# EMERGENCY!!), 0x52 (la alarma, sin vuelta) y 0x53 (la onda de p10:62D5).
PIEZAS = [
    P(0x4A, "La historia, primera parte", "The story, part one", "p30:804D"),
    P(0x3E, "La historia, segunda parte", "The story, part two", "p30:80BF"),
    P(0x43, "Antes de elegir la nave", "Before choosing the ship", "p00:592B"),
    P(0x48, "La elección de la nave", "Choosing the ship", "p00:43FD"),
    P(0x04, "Al empezar las fases 3 y 5-9", "Start of stages 3 and 5-9", "p00:5792, lista de cada fase"),
    P(0x06, "Fase 1", "Stage 1", "p00:5792"),
    P(0x07, "Fase 2", "Stage 2", "p00:5792"),
    P(0x08, "Fase 3", "Stage 3", "p00:5792"),
    P(0x0A, "Fase 4 y su cuarto jefe", "Stage 4 and its fourth boss", "p01:6210 y p05:A430"),
    P(0x09, "Fase 4: los jefes 1 y 3", "Stage 4: bosses 1 and 3", "p05:A11F y p05:A30B"),
    P(0x0B, "Fase 4: el jefe 0x0B", "Stage 4: boss 0x0B", "p05:AA57"),
    P(0x0C, "Fase 5", "Stage 5", "p00:5792"),
    P(0x44, "Fase 6", "Stage 6", "p00:5792"),
    P(0x45, "Fase 7", "Stage 7", "p00:5792"),
    P(0x46, "Fase 8", "Stage 8", "p00:5792"),
    P(0x0D, "Fase 9", "Stage 9", "p00:5792"),
    P(0x47, "Fase 10", "Stage 10", "p00:5792"),
    P(0x0E, "Fase 11", "Stage 11", "p00:5792"),
    P(0x05, "Los jefes", "The bosses", "p00:5792, al final de cada lista"),
    P(0x4C, "Cae un jefe", "A boss falls", "p05:A0A6"),
    P(0x50, "La nave se va al acabar la fase", "The ship flies off at the end of a stage", "p04:800A"),
    P(0x3F, "La consola y el arma secreta", "The console and the secret weapon", "p27:817B y p26:7EFE"),
    P(0x4F, "El plano del arma secreta", "The secret weapon blueprint", "p26:6E5E"),
    P(0x42, "El final: el rescate de James Burton", "The ending: rescuing James Burton", "p27:843A"),
    P(0x40, "El final: el mensaje de Venom", "The ending: Venom's message", "p27:873C"),
    P(0x41, "El final: después del mensaje", "The ending: after the message", "p27:8972"),
]

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

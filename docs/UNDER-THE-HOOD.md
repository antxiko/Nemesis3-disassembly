# Under the hood

## Rebuilding the ROM

```
make            # listing, reassembly, check and tests
make verify     # the 32 reassembled banks give the whole ROM, byte for byte
```

You need the cartridge image (`nemesis3.rom`, sha1
`7393f677e0fae5fc83071c6b74756117b7d75e2d`), which is not distributed.

## In numbers

| | |
|---|---|
| explained | 100% of the 262,144 bytes |
| code | 62,318 bytes, 29,083 instructions |
| data | 199,826 bytes |
| routines | 4,162 |
| commented | 41.3% of the instructions, no routine below 10% |

Of the data, 1,356 bytes in 72 small pieces have not been seen being read: no
traced instruction points at them and no game of the campaign reads them.
They are declared one by one in the notes, with what is known about them.

## The cartridge

Nemesis 3 - The Eve of Destruction (Konami, 1988, RC-764): a **256 KB**
MegaROM, 32 banks of 8 KB with Konami's SCC mapper (registers at 0x5000,
0x7000, 0x9000 and 0xB000; bank 0x3F at 0x8000 shows the SCC registers at
0x9800).

- Bank 0 is always at 0x4000-0x5FFF; the others are set three at a time at
  0x6000, 0x8000 and 0xA000 (`p00:4238`), and the game keeps a copy of what is
  set at `0xF0F1-0xF0F3`. When a routine needs other banks, it saves the
  layout on a stack (`p00:41F7`) and restores it afterwards (`p00:4213`).
- It starts at `p00:409D`; the interrupt (`H.KEYI`, `p00:402E`) runs the
  sound (banks 10-11-12, `p10:6006`) and the rest of each frame.
- The game runs by states (`0xE300`, `p00:429F`): 0 the logo, 1 the title, 2
  the story, 3 the choice, 4 the stage starts, 5 playing, 6 death, 7 game
  over, 8 between stages, 9 a secret entrance and 0x0A the ending.

## The RAM

| | |
|---|---|
| `0xC400` | the screen buffer: 64 columns by 22 rows |
| `0xE000-0xE2C2` | the sound engine: 8 channels of 0x40 bytes and its state |
| `0xE300` / `0xE301` | the state and its step |
| `0xE361` | the stage (1 to 11) |
| `0xE363` | the scroll position |
| `0xE36F` | the secret weapon level (0 to 7) |
| `0xE380` / `0xE37F` / `0xE37E` | the chosen ship, shield and options |
| `0xE430-0xE43B` | the bar: the marked slot and the level of each one |
| `0xE440` | the current boss |
| `0xE600` | the ship: state, y (`0xE604`), x (`0xE606`) |
| `0xE800` | the enemies: 12 records of 0x40 bytes |
| `0xEB00` | the bullets: 10 of 0x10 |
| `0xEC00` | the boss: 4 records of 0x20 |
| `0xED00` | the pieces: 8 of 0x20 |
| `0xEF00` | the sprite attribute table, which goes to VRAM |

The y comes before the x in every record (`IX+4` and `IX+6`), as in the
TMS9918's attribute table.

## The VRAM

SCREEN 2: patterns at 0x2000, colours at 0x0000 (three thirds of 0x800),
names at 0x3800, sprite patterns at 0x1800 and attributes at 0x3B00.

## How it was done

- **The trace** follows the code from its entry points, bank by bank, with the
  bank layout of each jump (`tools/bancos.py`, `tools/z80trace.py`).
- **The game campaign** (`tools/cobertura.py`) plays the whole cartridge on a
  Z80 (`tools/partida.py`) and records which instructions run and which bytes
  each one reads: what runs seeds the trace and what is read explains the data.
- **The readers** (`tools/lectores.py`) walk each format from the ROM's
  tables: texts, runs, graphics lists, maps, sprites, scores.
- **The checks against openMSX** (`tools/omsx_vram.tcl`, `tools/omsx_psg.tcl`):
  the maps and characters, the ship, the sprites of each stage and every tune.

## Code shared with other Konami cartridges

This disassembly has been compared, instruction by instruction, with
every other Konami one in the series. A block counts when the same
instructions, at least six of them from a label to its `ret` or its
unconditional jump, are in both cartridges; the addresses are left
aside, because they change from one cartridge to the next. Of the
other 57, **50** have at least one block in common with this one;
these are the ones that share the most:

| Cartridge | Blocks | Instructions | For example (here = there) |
|---|---:|---:|---|
| [Nemesis 2](https://antxiko.github.io/Nemesis2-disassembly/) | 189 | 2,373 | `rle_con_direccion` (p00:4B36) = `descomprime_otra_direccion` |
| [Parodius](https://antxiko.github.io/Parodius-disassembly/) | 151 | 2,090 | `rle_con_direccion` (p00:4B36) = `rachas_con_destino` |
| [Salamander - Operation X](https://antxiko.github.io/Salamander-disassembly/) | 145 | 1,932 | `rle_con_direccion` (p00:4B36) = `rachas_con_destino` |
| [Gekitotsu Pennant Race 2](https://antxiko.github.io/PennantRace2-disassembly/) | 101 | 1,586 | `cartucho_en_8000` (p00:4109) = `cartucho_en_pagina_2` |
| [King's Valley II](https://antxiko.github.io/KingsValley2-disassembly/) | 75 | 1,153 | `cartucho_en_8000` (p00:4109) |
| [The Pro Yakyuu Gekitotsu Pennant Race](https://antxiko.github.io/PennantRace-disassembly/) | 61 | 973 | `cartucho_en_8000` (p00:4109) = `cartucho_en_pagina_2` |
| [F-1 Spirit — The Way to Formula 1](https://antxiko.github.io/F1Spirit-disassembly/) | 50 | 763 | `rle_con_direccion` (p00:4B36) = `RLE_SIGUE_PUNTERO` |
| [Contra](https://antxiko.github.io/Contra-disassembly/) | 46 | 805 | `lee_byte` (p00:4A6E) = `lee_tabla` |
| [Shalom: Knightmare III](https://antxiko.github.io/Shalom-disassembly/) | 41 | 521 | `cartucho_en_8000` (p00:4109) |
| [Nemesis / Gradius](https://antxiko.github.io/Nemesis-disassembly/) | 39 | 469 | `rle_con_direccion` (p00:4B36) = `descomprime_con_destino` |

The whole matrix, the 58 cartridges against each other, is on
[The routines](https://antxiko.github.io/MSX-disassembly-database/THE-ROUTINES.html) in the series database, along
with the method and the program that measures it.

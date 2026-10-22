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

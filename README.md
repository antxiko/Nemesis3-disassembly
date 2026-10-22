# Nemesis 3 - The Eve of Destruction - commented disassembly

*(También [en castellano](README.es.md).)*

The commented disassembly of **Nemesis 3 - The Eve of Destruction** (Gofer no Yabou Episode II; Konami, 1988, RC-764) for the MSX: a 256 KB MegaROM with Konami's SCC mapper, thirty-two 8 KB banks.

- **100 %** of the binary explained: 62,318 bytes of code and 199,826 of named data, not a single unassigned byte.
- **41.3 %** of the listing commented, 4,162 routines, none below 10 % comments.
- The listing reassembles into the original ROM **byte for byte**.
- The stage routes, the ship and the sprites of every stage are **drawn from the bytes of the ROM** and checked against openMSX's VRAM; the weapons, the bosses, the story and the ending are the VRAM of games in openMSX, frame by frame; the 26 tunes come from running its own sound engine.

The website: <https://antxiko.github.io/Nemesis3-disassembly/>
(in Spanish: <https://antxiko.github.io/Nemesis3-disassembly/es/>).

## Reproducing it

The cartridge image is not distributed. Put yours in the root as `nemesis3.rom` (sha256 `fb4f66bc...`) and run `make`. The details, in [UNDER THE HOOD](docs/UNDER-THE-HOOD.md).

## Legal

The game belongs to Konami and its rights holders. The licence in `LICENSE` only covers the tools, the comments, the analysis and the documentation here. See [LEGAL-NOTICE.md](LEGAL-NOTICE.md).

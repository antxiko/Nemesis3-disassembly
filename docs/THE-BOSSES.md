# The bosses

Each stage with a boss brings it out when the scroll reaches the end
(`p01:6128`, with the table `p01:6111`, one entry per stage); the number goes
in `0xE440` and its code is picked by the table at `p04:9D9E`. The pictures
come from games in openMSX with an invincible ship: the VRAM frame a few
seconds after the boss appears, drawn as the TMS9918 draws it. The names are
not in the ROM; here they go by stage and number.

| Stage | Boss | |
|---|---|---|
| 1 | 0x06 | ![Stage 1](imagenes/jefe_f1.png) |
| 2 | 0x07 | ![Stage 2](imagenes/jefe_f2.png) |
| 3 | - | the stage ends without a boss |
| 4 | 0x0B, 0x01, 0x03 and 0x04 | below |
| 5 | 0x08 | ![Stage 5](imagenes/jefe_f5.png) |
| 6 | 0x09 | ![Stage 6](imagenes/jefe_f6.png) |
| 7 | 0x0E | ![Stage 7](imagenes/jefe_f7.png) |
| 8 | 0x0C | ![Stage 8](imagenes/jefe_f8.png) |
| 9 | 0x0D | ![Stage 9](imagenes/jefe_f9.png) |
| 10 | 0x0F | ![Stage 10](imagenes/jefe_f10.png) |
| 11 | 0x10 | ![Stage 11](imagenes/jefe_f11.png) |

## Stage 4

It has no map: it is a row of four bosses, one after another (`p01:6243`),
each with its music (0x0B, 0x09 and 0x0A; see [The music](THE-MUSIC.html)).

![Boss 0x0B](imagenes/jefe_f4_0B.png)
![Boss 0x01](imagenes/jefe_f4_01.png)
![Boss 0x03](imagenes/jefe_f4_03.png)
![Boss 0x04](imagenes/jefe_f4_04.png)

*With autofire, 0x0B does not fall, so for the other three the stage 4 boss
counter (`0xE37C`, which `p00:45BB` clears at the end of stage 3) was set by
hand on entering the stage.*

The boss's lives are at `0xEC12`; its picture, made of character parts in the
buffer (`0xEC00-0xEC7F`, four records of 0x20 bytes).

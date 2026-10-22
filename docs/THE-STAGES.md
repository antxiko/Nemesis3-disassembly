# The stages

**Eleven stages**, but not always in a row: after stage 9 an on-board computer
checks whether three secret entrances have been taken and, if one is missing,
sends you back to stage 5, 7 or 8. Stages 10 and 11 are only seen with all three.

The routes are **drawn from the bytes of the ROM** (`tools/dibuja.py`) and
checked against openMSX: in 9 stages and at 7 moments of each, every cell of
the screen is the one in the map and the characters are the same.

## The order

| After | Goes to | Where |
|---|---|---|
| 1, 2, 5, 6, 7, 8, 10 | the next one | `p00:45B3` |
| 3 and 4 | a scene on the on-board computer and the next one | `p00:45CA`, `p27:814D` |
| 9 | the on-board computer | `p00:45E3`, `p26:7EC5` |
| 11 | the ending | `p00:4599` |

On the on-board computer three marks light up, one per secret entrance: they
are three maps, red, blue and green (`0xE393-0xE395`, `p26:7E2A`). With all
three, the next stage is 10 (`p26:7F7A`). If one is missing (`p26:7FC8`):

- without the mark of stage 5, back to stage 5;
- without the one of stage 7, to stage 7;
- without the one of stage 8, to stage 8.

From then on, every stage you finish leads to the on-board computer again
(`0xE398`), until you have all three.

## The secret entrances

They are cells hidden in the scenery: if the ship flies through one, the game
stops the stage and shows another screen (state 9, `p26:6CA4`). Each stage has
its list (`p19:A3C8`): the scroll position, the type and the height. Each one
has **four possible places**, and a game uses one of them: when the ship is
chosen, the game stores the frame counter AND 3 (`p26:6819`, `0xE381`).

| Stage | Type | What it gives |
|---|---|---|
| 2, 3, 5, 6, 7 | 1 to 5 | a secret weapon (`p26:6E29`) |
| 5, 7, 8 | 8, 9 and 0x0A | the three marks of the on-board computer (`p26:7D46`) |
| 9 | 0x0C | from then on the entrances are visible (`p02:8192`) |
| 10 | 0x0B | the ending with one more step (`p27:8786`) |

## How the route is built

The scroll is horizontal and moves one character at a time. Each new column
is put by `p00:5345` into the buffer at `0xC400`, 64 characters wide; the 32
on the left are the screen.

- The map of each stage is at `p24:946F`: six bytes per column, one per block
  of 4 x 4 characters; the last block only sets two rows (22 rows in all).
- Blocks 0-3 are shared (`p23:6021`); the rest belong to the stage
  (`p23:5FFE`): some of 16 bytes and, after them, others of 8 (two rows).
- There is map only between two scroll positions of each stage (`p19:A90F`);
  outside them, empty space. **Stages 1 and 4 have no map**: the sun of stage
  1 is made of enemies drawn with characters, and stage 4 is a row of bosses.
- In stages 2, 3, 5, 8, 9 and 10 the characters change halfway (`p00:51EE`),
  and in 3, 6, 7, 8, 9 and 10 some of them move on their own: the water of
  stage 3, for example (`p02:835A`).

### Stage 1

![Stage 1](imagenes/fase_1.png)

*No map: the red sun is characters drawn by the code.*

### Stage 2

![The route of stage 2](imagenes/recorrido_f2.png)

*352 columns.*

### Stage 3

![The route of stage 3](imagenes/recorrido_f3.png)

*224 columns. If the ship flies into one of the whirlpools, it goes back to the
start of the stage (`p02:85BB`).*

### Stage 4

No map: four bosses in a row (`p01:6243`). They are in [The bosses](THE-BOSSES.html).

### Stages 5 to 11

![The route of stage 5](imagenes/recorrido_f5.png)
![The route of stage 6](imagenes/recorrido_f6.png)
![The route of stage 7](imagenes/recorrido_f7.png)
![The route of stage 8](imagenes/recorrido_f8.png)
![The route of stage 9](imagenes/recorrido_f9.png)
![The route of stage 10](imagenes/recorrido_f10.png)
![The route of stage 11](imagenes/recorrido_f11.png)

*352, 288, 320, 416, 480, 544 and 128 columns.*

## The music of each stage

`p00:5759` reads the table at `p00:5792`: pairs of tune and scroll position.
When the position is reached, the music fades out and the next one starts.

| Stage | At the start | During | At the end |
|---|---|---|---|
| 1 | - | 0x06 | 0x05 |
| 2 | - | 0x07 | 0x05 |
| 3 | 0x04 | 0x08 | 0x05 |
| 4 | 0x0A | - | 0x09, 0x0A, 0x0B |
| 5 | 0x04 | 0x0C | 0x05 |
| 6 | 0x04 | 0x44 | 0x05 |
| 7 | 0x04 | 0x45 | 0x05 |
| 8 | 0x04 | 0x46 | 0x05 |
| 9 | 0x04 | 0x0D | 0x05 |
| 10 | - | 0x47 | 0x05 |
| 11 | - | 0x0E | - |

You can hear them in [The music](THE-MUSIC.html).

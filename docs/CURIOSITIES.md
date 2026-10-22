# Curiosities

## The pause passwords

With the game paused you can type a word and RETURN (`p19:B3C4`). There are
four, and only one works per game (`0xE39A`):

| Password | What it does |
|---|---|
| FIND | the secret entrances become visible (`0xE39C`) |
| EXPAND | the shield takes twice as many hits (`0xE39E`, `p04:94A2`) |
| GOOD | each purchase raises the difficulty by half as much (`0xE39D` = 2) |
| HARD | each purchase raises it twice as much (`0xE39D` = 1) |

The HINT screen (`p03:BDEF`) gives them with letters hidden: "?X?A?D", "?OO?",
"?A?D" and "?I?D". HARD also clears `0xE39B`, a byte nobody reads: in the
whole ROM that write is the only access.

## Stages 10 and 11 have to be earned

After stage 9, the on-board computer checks three marks: the secret entrances
of stages 5, 7 and 8. Without all three, the game sends you back to stage 5, 7
or 8, and the on-board computer comes back after every stage until you have
them (`p26:7FC8`, `0xE398`). See [The stages](THE-STAGES.html).

## Four places for each secret entrance

Each secret entrance has four possible positions in its stage (`p19:A3C8`),
and a game uses one: the one given by the frame counter when the ship is
chosen (`p26:6819`, `0xE381`). Two games in a row can have them in different
places.

## The missile of ship 3

On the bar, ship 3 buys 2WAY MISSILE; the table at `p04:9391` gives it missile
0x10, the same as ship 0 (MISSILE), and in openMSX it fires the same. The other
two missile levels (HOWK and GUIDED) can only be bought with the secret weapon
at 6 and 7 (`p04:94D0`).

## HOWK

The bar names say HOWK MISSILE, PHOTON HOWK, NAPALM HOWK and 2WAY HOWK
(`p14:646C`), with an O: the same O as in PHOTON.

## FIGTHER

In the story, the G6809 line says 『VIXEN』 FIGTHER DEVELOPED; two screens
later, FIGHTER, spelt right. Both are pictures, not letters.

## The date that jumps

During the time travel of the ending, the on-board computer's date changes on
its own: G6644.07 at the rescue, and then G6584, G6951, G7184, G6626... See
[The texts](THE-TEXTS.html).

## With Game Master 2

With *Game Master 2* in the other slot, the game can be saved and loaded from
the pause (S and L, files GOFE1 and GOFE2; `p01:6CC9`), with the messages SAVE
COMPLETED, LOAD FAILED...

## With the Japanese BIOS

The title is built differently if the computer is Japanese (`0x002B`): another
picture (`p22:A8D8`) and sprites (`p30:8575`).

## EXTEND PLAY

After the ending, F5 continues the game in a harder loop (`p00:46E5`).

## The demo

In the demo of stages 1 to 3 the ship is invincible: two `nop` at `p01:693D`
skip the collision.

## Graphics nobody loads

At `p20:6CFC` there is a complete graphics set: a character list with its
patterns and colours compressed at `p21:9846-9BFC` and its list of copies,
just like the boss sets. No pair of bytes in the ROM holds its address and no
game loads it.

## Routines nobody calls

33 pieces of code between routines are not called by any instruction nor run
while playing: requesting sounds 0x03 and 0x3B, reading from VRAM, removing
the enemies that touch the scenery (`p01:7B76`), setting up the on-board
computer from bank 0 (`p00:4806`, which jumps to `p26:730A`)... They are
commented as such in the listing.

## Odd things in the code

- `p00:42CD` calls EXTROM (`0x015F`, with IX = 0x0141), an MSX2 BIOS routine,
  although the game is for MSX1.
- `p02:9D7A` reads BIOS address 0x0004 where `IX+4` would be expected: the
  enemy always goes up.
- `p27:869D` stores HL where it looks like it should store A.

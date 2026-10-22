# The music

**26 tunes**, taken **by running the cartridge's own sound engine**
(`tools/musica.py` on top of `tools/motor_musica.py`): the code of `p10` runs
on a Z80, its writes to the PSG and the SCC are logged frame by frame and
synthesised. There are no recordings.

The engine is in banks 10, 11 and 12: `p10:6000` resets it, `p10:6003`
starts a sound (the game requests it with `p00:589A`) and `p10:6006` runs on
every interrupt. It has eight channels (`0xE000 + 0x40 x k`): three on the PSG
and five on the SCC. The scores are read with bank 12, 13, 9 or 25 at
`0xA000`, depending on the sound number (`p10:62A9`).

What plays and where is **measured**: in openMSX games every request to
`p00:589A` was logged with the game state, the stage and the boss. And every
tune is **checked against openMSX**: the game, playing that tune at each
request, writes exactly the same to the PSG and the SCC, frame by frame, as
the engine run here (`tools/coteja_psg.py`).

0x01 is silence; 0x02 and 0x0F-0x37 are sound effects, which are not here.

### 0x4A The story, first part

*Where: `p30:804D`.*

<audio controls preload="none" src="audio/musica_4A.mp3"></audio>

### 0x3E The story, second part

*Where: `p30:80BF`.*

<audio controls preload="none" src="audio/musica_3E.mp3"></audio>

### 0x43 Before choosing the ship

*Where: `p00:592B`.*

<audio controls preload="none" src="audio/musica_43.mp3"></audio>

### 0x48 Choosing the ship

*Where: `p00:43FD`.*

<audio controls preload="none" src="audio/musica_48.mp3"></audio>

### 0x04 At the start of stages 3 and 5-9

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_04.mp3"></audio>

### 0x06 Stage 1

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_06.mp3"></audio>

### 0x07 Stage 2

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_07.mp3"></audio>

### 0x08 Stage 3

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_08.mp3"></audio>

### 0x0A Stage 4 and its fourth boss

*Where: `p01:6210`, `p05:A430`.*

<audio controls preload="none" src="audio/musica_0A.mp3"></audio>

### 0x09 Stage 4: bosses 0x01 and 0x03

*Where: `p05:A11F`, `p05:A30B`.*

<audio controls preload="none" src="audio/musica_09.mp3"></audio>

### 0x0B Stage 4: boss 0x0B

*Where: `p05:AA57`.*

<audio controls preload="none" src="audio/musica_0B.mp3"></audio>

### 0x0C Stage 5

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_0C.mp3"></audio>

### 0x44 Stage 6

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_44.mp3"></audio>

### 0x45 Stage 7

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_45.mp3"></audio>

### 0x46 Stage 8

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_46.mp3"></audio>

### 0x0D Stage 9

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_0D.mp3"></audio>

### 0x47 Stage 10

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_47.mp3"></audio>

### 0x0E Stage 11

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_0E.mp3"></audio>

### 0x05 The bosses

*Where: `p00:5792`.*

<audio controls preload="none" src="audio/musica_05.mp3"></audio>

### 0x4C A boss falls

*Where: `p05:A0A6`.*

<audio controls preload="none" src="audio/musica_4C.mp3"></audio>

### 0x50 The ship leaves at the end of the stage

*Where: `p04:800A`.*

<audio controls preload="none" src="audio/musica_50.mp3"></audio>

### 0x3F The on-board computer and the secret weapon

*Where: `p27:817B`, `p26:7EFE`.*

<audio controls preload="none" src="audio/musica_3F.mp3"></audio>

### 0x4F The secret weapon blueprint

*Where: `p26:6E5E`.*

<audio controls preload="none" src="audio/musica_4F.mp3"></audio>

### 0x42 The ending: the rescue of James Burton

*Where: `p27:843A`.*

<audio controls preload="none" src="audio/musica_42.mp3"></audio>

### 0x40 The ending: Venom's message

*Where: `p27:873C`.*

<audio controls preload="none" src="audio/musica_40.mp3"></audio>

### 0x41 The ending: after the message

*Where: `p27:8972`.*

<audio controls preload="none" src="audio/musica_41.mp3"></audio>

## The scene sounds

The ending also plays three scene sounds that are not here: 0x4D (before
EMERGENCY!!), 0x52 (the alarm) and 0x53, which is not a score: every frame it
changes the waveform of SCC channel 1 with a list at `p10:632B`.

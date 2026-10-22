# The sequences

The animations are **the VRAM of every frame of a game in openMSX**, drawn as
the TMS9918 draws it (`tools/anima.py`). The still ones, the same frame at
double size.

## The opening

![The Konami logo and the title](imagenes/presentacion.gif)

*From the Konami logo to the title, 8 seconds.*

![The title](imagenes/titulo.png)

If nobody touches anything, after 10 seconds the story starts, and after it a
demo of stages 1 to 3 (`p19:B568`), with an invincible ship.

## The story

![The story](imagenes/historia.gif)

*The whole story, 3 minutes and 18 seconds, one frame out of every six.*

First the three wars of the earlier instalments, against Bacterion, Venom and
Salamander, with small scenes. Then the chronology of planet Nemesis, the
VIXEN ship and its four classes, the GAUDIE computer and the pilot, David
Burton. The text is in [The texts](THE-TEXTS.html); the music, in two pieces
(0x4A and 0x3E).

## The choice

![The choice](imagenes/eleccion.gif)

*The ship, the weapon bar that goes with each one, the shield and the options.
See [The ship](THE-SHIP.html).*

## Between stages and the secret entrances

The screens of the VIXEN's on-board computer (state 8 between stages and state
9 at the secret entrances, `p26:6CA4`). For the entrance ones, the entrance
was placed in front of the ship at `0xE7E0`, which is what the ship looks at
when it collides (`p02:812D`).

![After stage 3](imagenes/tras_fase3.gif)

*After stage 3: THE MOVEMENT OF THE BACTERIONS IS ODD (`p27:814D`).*

![A secret weapon](imagenes/arma_secreta.gif)

*A secret weapon entrance (type 1): the ship's blueprint is drawn and the laser
that opens comes out, here METEOR LASER (`p26:6E29`).*

![The red map](imagenes/mapa_rojo.gif)

*The type 8 entrance: HERE'S A RED MAP. The three marks of the on-board
computer are three maps, red, blue and green, and all three are needed
(`p26:7D46`).*

![The ESP device](imagenes/esp.gif)

*The type 0x0C entrance, in stage 9: I'VE FOUND SOME KIND OF A EXTRA-SENSORY
DEVICE. From then on the secret entrances are visible.*

![The on-board computer after stage 9](imagenes/ordenador.gif)

*After stage 9: HERE'S THE ASSEMBLED MAP. If one is missing: WE STILL NEED ONE
MAP. I'LL GO BACK AND GET IT, and the game goes back to that map's stage
(`p26:7FC8`).*

## The ending

![The ending, first part](imagenes/final_1.gif)

*The rescue of James Burton and the way back, 94 seconds.*

![The ending, second part](imagenes/final_2.gif)

*EMERGENCY!!, Venom's message and the chronology, 2 minutes and 19 seconds.*

![James Burton](imagenes/final_james.png)
![Venom](imagenes/final_venom.png)

After the chronology comes EXTEND PLAY / F5: with F5 the game goes on in
another loop.

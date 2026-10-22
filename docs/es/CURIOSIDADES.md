# Curiosidades

## Las claves de la pausa

Con el juego en pausa se puede teclear una palabra y RETURN (`p19:B3C4`). Hay
cuatro, y solo vale una por partida (`0xE39A`):

| Clave | Qué hace |
|---|---|
| FIND | las entradas secretas se ven (`0xE39C`) |
| EXPAND | el escudo aguanta el doble de golpes (`0xE39E`, `p04:94A2`) |
| GOOD | cada compra sube la dificultad la mitad (`0xE39D` = 2) |
| HARD | cada compra la sube el doble (`0xE39D` = 1) |

La pantalla HINT (`p03:BDEF`) las da con letras tapadas: "?X?A?D", "?OO?",
"?A?D" y "?I?D". HARD pone además a cero `0xE39B`, un byte que no lee nadie:
en toda la ROM solo está esa escritura.

## La 10 y la 11 hay que ganárselas

Tras la fase 9, el ordenador de a bordo mira tres marcas: las entradas secretas de las fases
5, 7 y 8. Sin las tres, el juego manda de vuelta a la 5, la 7 o la 8, y el
ordenador de a bordo vuelve a salir al acabar cada fase hasta tenerlas (`p26:7FC8`,
`0xE398`). Ver [Las fases](LAS-FASES.html).

## Cuatro sitios para cada entrada secreta

Cada entrada secreta tiene cuatro posiciones posibles en su fase
(`p19:A3C8`), y la partida usa una: la que diga la cuenta de cuadros al elegir
la nave (`p26:6819`, `0xE381`). Dos partidas seguidas pueden tenerlas en
sitios distintos.

## El misil de la nave 3

En el marcador, la nave 3 compra 2WAY MISSILE; la tabla de `p04:9391` le da el
misil 0x10, el mismo que a la nave 0 (MISSILE), y en openMSX dispara igual. Los
otros dos niveles del misil (HOWK y GUIDED) solo se pueden comprar con el
arma secreta en 6 y 7 (`p04:94D0`).

## HOWK

Los nombres del marcador dicen HOWK MISSILE, PHOTON HOWK, NAPALM HOWK y 2WAY
HOWK (`p14:646C`), con una O: la misma O que la de PHOTON.

## FIGTHER

En la historia, la línea de G6809 dice 『VIXEN』 FIGTHER DEVELOPED; dos
pantallas después, FIGHTER, bien escrito. Las dos son dibujos, no letras.

## La fecha que salta

Durante el viaje en el tiempo del final, la fecha del ordenador de a bordo cambia sola:
G6644.07 en el rescate, y luego G6584, G6951, G7184, G6626... Ver
[Los textos](LOS-TEXTOS.html).


## Con Game Master 2

Con *Game Master 2* en la otra ranura, en la pausa se puede grabar y cargar la
partida (S y L, ficheros GOFE1 y GOFE2; `p01:6CC9`), con los mensajes SAVE
COMPLETED, LOAD FAILED...

## Con la BIOS japonesa

El título se monta distinto si el ordenador es japonés (`0x002B`): otro dibujo
(`p22:A8D8`) y sprites (`p30:8575`).

## EXTEND PLAY

Tras el final, F5 sigue la partida en una vuelta más difícil (`p00:46E5`).

## La demostración

En la demostración de las fases 1 a 3 la nave es invencible: dos `nop` en
`p01:693D` se saltan el choque.

## Gráficos que no carga nadie

En `p20:6CFC` hay un juego de gráficos completo: una lista de caracteres con
sus dibujos y colores comprimidos en `p21:9846-9BFC` y su lista de copias,
igual que los juegos de los jefes. Ningún par de bytes de la ROM vale su
dirección y ninguna partida lo carga.

## Rutinas que no llama nadie

33 trozos de código entre rutinas no los llama ninguna instrucción ni se
ejecutan jugando: pedir los sonidos 0x03 y 0x3B, leer de la VRAM, quitar los
enemigos que tocan el decorado (`p01:7B76`), poner el ordenador de a bordo desde el banco 0
(`p00:4806`, que va a `p26:730A`)... Están comentados como tales en el listado.

## Cosas raras del código

- `p00:42CD` llama a EXTROM (`0x015F`, con IX = 0x0141), una rutina de la BIOS
  de MSX2, aunque el juego es de MSX1.
- `p02:9D7A` lee la dirección 0x0004 de la BIOS donde tocaría `IX+4`: el
  enemigo siempre sube.
- `p27:869D` guarda HL donde parece que tocaba guardar A.

## Dos comparaciones que no pueden cumplirse

Las dos tienen la misma forma y salen de leer el código: una condición que se
comprueba cuando ya no puede dar otro resultado.

**El tope del jefe 4.** Para frenar al jefe en pantalla, el código pone un tope
según el jefe: 0xE0 con el 3, 0xE8 con el 0x0F y con el 4, y después otro, 0xF8,
«con el 4» (`p04:9F91`). Pero el jefe 4 ya ha salido con 0xE8 en `p04:9F8F`, y el
`cp 4` de `p04:9F93` repite una pregunta que ya no puede dar igual: el 0xF8 no
se usa nunca. El jefe 4 queda con 0xE8.

**La mitad de abajo, que no se mira.** Un enemigo de `p03:B5DB` espera a cruzar
una fila de 32 y quiere avisar con el acarreo solo en la mitad de abajo
(Y a partir de 0x80). Pero compara con 0x80 después del `and 0x1F`, y ahí A es
siempre 0: el acarreo sale siempre a 1, el `ret c` siempre vuelve y las cuatro
instrucciones siguientes (`p03:B5E6-B5E9`) no se ejecutan nunca. *Las dos
pruebas son lógicas: dentro de ese bloque, el valor es el que es. Lo que se
quería en la mitad de abajo es una suposición a partir del comentario.*

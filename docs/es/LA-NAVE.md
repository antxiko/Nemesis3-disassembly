# La nave

Antes de cada partida se eligen **la nave, el escudo y las opciones**
(`p26:680C`). Hay cuatro naves y cada una cambia lo que da la barra de armas.

![La elección](../imagenes/eleccion.gif)

*La elección entera, de una partida en openMSX.*

![Las cuatro naves](../imagenes/eleccion.png)

## Las posturas

![La nave y sus escudos](../imagenes/nave.png)

*Dibujada desde la ROM (`tools/nave.py`): quieta, subiendo y bajando, sin
escudo, con el de delante y con el grande, con 2 o más golpes y con uno. Cada
escudo tiene dos fotogramas que cambian cada 4 cuadros.*

La nave son dos sprites: uno blanco y otro azul encima (`p04:8091`). Los
dibujos se cargan con las rachas de `p14:7055` y cambian con el escudo
(`p00:5019`).

## La barra

Cada cápsula mueve la marca una casilla (`p01:6A01`); el botón 2 compra lo marcado
(`p04:92D8`). Cada nave tiene su tabla de compras (`p04:931E`), y cuánto se
puede subir cada casilla lo dice el **arma secreta** (`p04:94D0`).

| Casilla | Nave 0 | Nave 1 | Nave 2 | Nave 3 |
|---|---|---|---|---|
| 1. SPEED UP | 7 niveles | igual | igual | igual |
| 2. MISSILE | MISSILE | PHOTON MISSILE | NAPALM MISSILE | 2WAY MISSILE |
| 3. TRAIL BEAM | TAIL BEAM y BEAM | igual | igual | igual |
| 4. DOUBLE | UP DOUBLE, DOWN DOUBLE | igual | igual | igual |
| 5. ? | UP LASER, DOWN LASER | igual | igual | igual |
| 6. LASER | LASER, METEOR, SCREW | LASER, TWINKLE, SCREW | RIPPLE, FIRE BLASTER, EXTEND BLASTER | RIPPLE, FIRE BLASTER, VECTOR |
| 7. MULTIPLE | dos opciones | igual | igual | igual |
| 8. escudo | SHIELD o FORCE FIELD, según la elección | | | |

Los nombres son los del marcador: 36 dibujos de letras (`p14:646C`), elegidos
por nave y por nivel (`p04:95F9`).

Sin arma secreta, la casilla 5 no se puede comprar y la 6 solo da su primer
láser. Cada entrada secreta de arma sube un nivel, hasta 7 (`p26:6EAD`):

| Nivel | Lo que se abre |
|---|---|
| 1 | el segundo láser de la casilla 6 |
| 2 | el tercero |
| 3 | UP LASER (casilla 5) |
| 4 | DOWN LASER |
| 5 | DOWN DOUBLE |
| 6 | el segundo misil (HOWK) |
| 7 | GUIDED MISSILE |

Comprar BEAM o DOUBLE deja a cero el láser, y comprar el láser quita el BEAM y
el DOUBLE (`p04:93BD`, `p04:9461`).

## Las armas disparando

Cada una es una partida en openMSX: la nave elegida, la casilla marcada y el
botón 2, como lo haría el jugador; para las del arma secreta, el nivel puesto
a mano. Comprobado en cada partida que el arma que queda en la RAM
(`0xE630-0xE632`) es la de la tabla.

### El disparo y los misiles

![El disparo](../imagenes/arma_normal.gif)
![MISSILE](../imagenes/arma_misil_n0.gif)
![PHOTON MISSILE](../imagenes/arma_misil_n1.gif)
![NAPALM MISSILE](../imagenes/arma_misil_n2.gif)
![El misil de la nave 3](../imagenes/arma_misil_n3.gif)

La nave 3 lleva en el marcador 2WAY MISSILE, pero la tabla de `p04:9391` le da
el mismo misil que a la 0 (el 0x10), y en openMSX dispara igual.

Con el arma secreta en 6 se compra un segundo misil (HOWK) y en 7 el tercero,
GUIDED MISSILE, igual para las cuatro naves:

![HOWK MISSILE](../imagenes/arma_misil_n0_2.gif)
![PHOTON HOWK](../imagenes/arma_misil_n1_2.gif)
![NAPALM HOWK](../imagenes/arma_misil_n2_2.gif)
![GUIDED MISSILE](../imagenes/arma_misil_n0_3.gif)

### TRAIL BEAM y DOUBLE

![TAIL BEAM](../imagenes/arma_haz_1.gif)
![BEAM](../imagenes/arma_haz_2.gif)
![UP DOUBLE](../imagenes/arma_doble_1.gif)
![DOWN DOUBLE](../imagenes/arma_doble_2.gif)

### La casilla 5

![UP LASER](../imagenes/arma_casilla5_1.gif)
![DOWN LASER](../imagenes/arma_casilla5_2.gif)

### Los láseres

![LASER](../imagenes/arma_laser_n0_1.gif)
![METEOR LASER](../imagenes/arma_laser_n0_2.gif)
![SCREW LASER](../imagenes/arma_laser_n0_3.gif)
![TWINKLE LASER](../imagenes/arma_laser_n1_2.gif)
![RIPPLE LASER](../imagenes/arma_laser_n2_1.gif)
![FIRE BLASTER](../imagenes/arma_laser_n2_2.gif)
![EXTEND BLASTER](../imagenes/arma_laser_n2_3.gif)
![VECTOR LASER](../imagenes/arma_laser_n3_3.gif)

### Las opciones y los escudos

![SHADOW](../imagenes/arma_opciones_0.gif)
![FIXED](../imagenes/arma_opciones_1.gif)
![ROLLING](../imagenes/arma_opciones_2.gif)
![SHIELD](../imagenes/arma_escudo_0.gif)
![FORCE FIELD](../imagenes/arma_escudo_1.gif)

El SHIELD aguanta 10 golpes y el FORCE FIELD 5 (`p04:949A`); con la clave
EXPAND, el doble (`p04:94A2`).

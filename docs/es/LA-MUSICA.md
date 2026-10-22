# La música

**26 piezas**, sacadas **ejecutando el motor de sonido del propio cartucho**
(`tools/musica.py` sobre `tools/motor_musica.py`): el código de `p10` corre en
un Z80, se apuntan sus escrituras al PSG y al SCC cuadro a cuadro y se
sintetizan. No hay grabaciones.

El motor está en los bancos 10, 11 y 12: `p10:6000` lo pone a cero, `p10:6003`
arranca un sonido (el juego lo pide con `p00:589A`) y `p10:6006` va en cada
interrupción. Lleva ocho canales (`0xE000 + 0x40 x k`): tres del PSG y cinco
del SCC. Las partituras se leen con el banco 12, 13, 9 o 25 en `0xA000`, según
el número del sonido (`p10:62A9`).

Qué suena y dónde está **medido**: en partidas de openMSX se apuntó cada
petición a `p00:589A` con el estado del juego, la fase y el jefe. Y cada pieza
está **cotejada con openMSX**: el juego, haciendo sonar esa pieza en cada
petición, escribe en el PSG y el SCC exactamente lo mismo, cuadro a cuadro,
que el motor ejecutado aquí (`tools/coteja_psg.py`).

La 0x01 calla; la 0x02 y las 0x0F-0x37 son efectos, que no van aquí.

### 0x4A La historia, primera parte

*Dónde: `p30:804D`.*

<audio controls preload="none" src="../audio/musica_4A.mp3"></audio>

### 0x3E La historia, segunda parte

*Dónde: `p30:80BF`.*

<audio controls preload="none" src="../audio/musica_3E.mp3"></audio>

### 0x43 Antes de elegir la nave

*Dónde: `p00:592B`.*

<audio controls preload="none" src="../audio/musica_43.mp3"></audio>

### 0x48 La elección de la nave

*Dónde: `p00:43FD`.*

<audio controls preload="none" src="../audio/musica_48.mp3"></audio>

### 0x04 Al empezar las fases 3 y 5-9

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_04.mp3"></audio>

### 0x06 Fase 1

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_06.mp3"></audio>

### 0x07 Fase 2

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_07.mp3"></audio>

### 0x08 Fase 3

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_08.mp3"></audio>

### 0x0A Fase 4 y su cuarto jefe

*Dónde: `p01:6210`, `p05:A430`.*

<audio controls preload="none" src="../audio/musica_0A.mp3"></audio>

### 0x09 Fase 4: los jefes 0x01 y 0x03

*Dónde: `p05:A11F`, `p05:A30B`.*

<audio controls preload="none" src="../audio/musica_09.mp3"></audio>

### 0x0B Fase 4: el jefe 0x0B

*Dónde: `p05:AA57`.*

<audio controls preload="none" src="../audio/musica_0B.mp3"></audio>

### 0x0C Fase 5

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_0C.mp3"></audio>

### 0x44 Fase 6

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_44.mp3"></audio>

### 0x45 Fase 7

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_45.mp3"></audio>

### 0x46 Fase 8

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_46.mp3"></audio>

### 0x0D Fase 9

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_0D.mp3"></audio>

### 0x47 Fase 10

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_47.mp3"></audio>

### 0x0E Fase 11

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_0E.mp3"></audio>

### 0x05 Los jefes

*Dónde: `p00:5792`.*

<audio controls preload="none" src="../audio/musica_05.mp3"></audio>

### 0x4C Cae un jefe

*Dónde: `p05:A0A6`.*

<audio controls preload="none" src="../audio/musica_4C.mp3"></audio>

### 0x50 La nave se va al acabar la fase

*Dónde: `p04:800A`.*

<audio controls preload="none" src="../audio/musica_50.mp3"></audio>

### 0x3F El ordenador de a bordo y el arma secreta

*Dónde: `p27:817B`, `p26:7EFE`.*

<audio controls preload="none" src="../audio/musica_3F.mp3"></audio>

### 0x4F El plano del arma secreta

*Dónde: `p26:6E5E`.*

<audio controls preload="none" src="../audio/musica_4F.mp3"></audio>

### 0x42 El final: el rescate de James Burton

*Dónde: `p27:843A`.*

<audio controls preload="none" src="../audio/musica_42.mp3"></audio>

### 0x40 El final: el mensaje de Venom

*Dónde: `p27:873C`.*

<audio controls preload="none" src="../audio/musica_40.mp3"></audio>

### 0x41 El final: después del mensaje

*Dónde: `p27:8972`.*

<audio controls preload="none" src="../audio/musica_41.mp3"></audio>

## Los sonidos de escena

En el final suenan también tres sonidos de escena que no van aquí: 0x4D (antes de EMERGENCY!!),
0x52 (la alarma) y 0x53, que no es una partitura: cada cuadro cambia la forma
de onda del canal 1 del SCC con una lista de `p10:632B`.

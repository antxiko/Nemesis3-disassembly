# Los jefes

Cada fase con jefe lo saca al llegar al final del scroll (`p01:6128`, con la
tabla `p01:6111`, una entrada por fase); el número va en `0xE440` y su código lo elige la tabla de
`p04:9D9E`. Las fotos son de partidas en openMSX con la nave inmortal: el
cuadro de la VRAM unos segundos después de aparecer el jefe, pintado como lo
pinta el TMS9918. Los nombres no están en la ROM; aquí van por fase y número.

| Fase | Jefe | |
|---|---|---|
| 1 | 0x06 | ![Fase 1](../imagenes/jefe_f1.png) |
| 2 | 0x07 | ![Fase 2](../imagenes/jefe_f2.png) |
| 3 | - | la fase acaba sin jefe |
| 4 | 0x0B, 0x01, 0x03 y 0x04 | abajo |
| 5 | 0x08 | ![Fase 5](../imagenes/jefe_f5.png) |
| 6 | 0x09 | ![Fase 6](../imagenes/jefe_f6.png) |
| 7 | 0x0E | ![Fase 7](../imagenes/jefe_f7.png) |
| 8 | 0x0C | ![Fase 8](../imagenes/jefe_f8.png) |
| 9 | 0x0D | ![Fase 9](../imagenes/jefe_f9.png) |
| 10 | 0x0F | ![Fase 10](../imagenes/jefe_f10.png) |
| 11 | 0x10 | ![Fase 11](../imagenes/jefe_f11.png) |

## La fase 4

No tiene mapa: es una fila de cuatro jefes, uno detrás de otro (`p01:6243`),
cada uno con su música (0x0B, 0x09 y 0x0A; ver [La música](LA-MUSICA.html)).

![El jefe 0x0B](../imagenes/jefe_f4_0B.png)
![El jefe 0x01](../imagenes/jefe_f4_01.png)
![El jefe 0x03](../imagenes/jefe_f4_03.png)
![El jefe 0x04](../imagenes/jefe_f4_04.png)

*Con el disparo automático el 0x0B no cae, así que para los otros tres se puso
a mano, al entrar en la fase, el contador de jefes de la fase 4 (`0xE37C`, que
`p00:45BB` pone a cero al acabar la 3).*

Las vidas del jefe van en `0xEC12`; su dibujo, por partes de caracteres en el
búfer (`0xEC00-0xEC7F`, cuatro fichas de 0x20 bytes).

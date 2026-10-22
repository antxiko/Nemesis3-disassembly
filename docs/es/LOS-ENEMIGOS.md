# Los enemigos

Los enemigos son fichas de 0x40 bytes en `0xE800` (doce a la vez). Su tipo
elige la rutina (tabla `p01:775C`, 74 tipos) y la ficha de su clase (`p19:A489`, 7 bytes por
tipo): si va en sprites o en caracteres y cuántos sprites usa. Con más de
doce sprites de enemigos en pantalla, el siguiente no sale (`p01:76A9`).

Abajo, los 64 dibujos de sprite de 16 x 16 que carga cada fase, **desde la
ROM** (`tools/sprites.py`, como `p00:4F82`: rachas, listas `p14:6EED` y copias
en espejo o cabeza abajo `p14:6FAA`), cotejados con la VRAM de openMSX. El
color es el que más lleva cada dibujo en la tabla de atributos jugando esa
fase; en gris oscuro, los que no salieron en la partida. Los de los jefes se
cargan aparte, al aparecer (`p00:50FE`).

![Fase 1](../imagenes/enemigos_f1.png)
![Fase 2](../imagenes/enemigos_f2.png)
![Fase 3](../imagenes/enemigos_f3.png)
![Fase 5](../imagenes/enemigos_f5.png)
![Fase 6](../imagenes/enemigos_f6.png)
![Fase 7](../imagenes/enemigos_f7.png)
![Fase 8](../imagenes/enemigos_f8.png)
![Fase 9](../imagenes/enemigos_f9.png)
![Fase 10](../imagenes/enemigos_f10.png)
![Fase 11](../imagenes/enemigos_f11.png)

Los primeros son comunes: la nave, sus disparos y los misiles, y las
explosiones. El dibujo 22 lo cambia el juego cada 8 cuadros (`p02:8331`).

Hay enemigos que no son sprites sino caracteres pintados en el decorado: el
sol de la fase 1 o unos de la fase 2 (`p01:79C3`).

# Por dentro

## Rehacer la ROM

```
make            # listado, reensamblado, comprobacion y tests
make verify     # los 32 bancos reensamblados dan la ROM entera, byte a byte
```

Hace falta la imagen del cartucho (`nemesis3.rom`, sha1
`7393f677e0fae5fc83071c6b74756117b7d75e2d`), que no se distribuye.

## En cifras

| | |
|---|---|
| explicado | 100 % de los 262.144 bytes |
| código | 62.318 bytes, 29.083 instrucciones |
| datos | 199.826 bytes |
| rutinas | 4.162 |
| comentado | 41,3 % de las instrucciones, ninguna rutina por debajo del 10 % |

De los datos, 1.356 bytes en 72 trozos pequeños no se han visto leer: ninguna
instrucción trazada los apunta y ninguna partida de la campaña los lee. Están
declarados uno a uno en las notas con lo que se sabe de ellos.

## El cartucho

Nemesis 3 - The Eve of Destruction (Konami, 1988, RC-764): una MegaROM de
**256 KB**, 32 bancos de 8 KB con el mapper Konami del SCC (registros en 0x5000,
0x7000, 0x9000 y 0xB000; el banco 0x3F en 0x8000 deja ver los registros del
SCC en 0x9800).

- El banco 0 está siempre en 0x4000-0x5FFF; los demás se ponen de tres en tres
  en 0x6000, 0x8000 y 0xA000 (`p00:4238`), y el juego guarda una copia de lo
  puesto en `0xF0F1-0xF0F3`. Cuando una rutina necesita otros bancos, guarda el
  reparto en una pila (`p00:41F7`) y lo devuelve después (`p00:4213`).
- Arranca en `p00:409D`; la interrupción (`H.KEYI`, `p00:402E`) lleva el
  sonido (bancos 10-11-12, `p10:6006`) y el resto de cada cuadro.
- El juego va por estados (`0xE300`, `p00:429F`): 0 el logo, 1 el título, 2 la
  historia, 3 la elección, 4 empieza la fase, 5 se juega, 6 la muerte, 7 fin de
  la partida, 8 entre fases, 9 una entrada secreta y 0x0A el final.

## La RAM

| | |
|---|---|
| `0xC400` | el búfer de la pantalla: 64 columnas por 22 filas |
| `0xE000-0xE2C2` | el motor de sonido: 8 canales de 0x40 bytes y su estado |
| `0xE300` / `0xE301` | el estado y su paso |
| `0xE361` | la fase (1 a 11) |
| `0xE363` | la posición del scroll |
| `0xE36F` | el nivel del arma secreta (0 a 7) |
| `0xE380` / `0xE37F` / `0xE37E` | la nave, el escudo y las opciones elegidas |
| `0xE430-0xE43B` | la barra: la casilla marcada y el nivel de cada una |
| `0xE440` | el jefe en curso |
| `0xE600` | la nave: estado, y (`0xE604`), x (`0xE606`) |
| `0xE800` | los enemigos: 12 fichas de 0x40 bytes |
| `0xEB00` | las balas: 10 de 0x10 |
| `0xEC00` | el jefe: 4 fichas de 0x20 |
| `0xED00` | las piezas: 8 de 0x20 |
| `0xEF00` | la tabla de atributos de sprite, que va a la VRAM |

La y va antes que la x en todas las fichas (`IX+4` y `IX+6`), como en la tabla
de atributos del TMS9918.

## La VRAM

SCREEN 2: dibujos en 0x2000, colores en 0x0000 (tres tercios de 0x800), nombres
en 0x3800, dibujos de sprite en 0x1800 y atributos en 0x3B00.

## Cómo se ha hecho

- **El trazado** sigue el código desde sus entradas, banco a banco, con el
  reparto de bancos de cada salto (`tools/bancos.py`, `tools/z80trace.py`).
- **La campaña de partidas** (`tools/cobertura.py`) juega el cartucho entero
  en un Z80 (`tools/partida.py`) y apunta qué instrucciones corren y qué bytes
  lee cada una: lo que se ejecuta es semilla del trazado y lo que se lee
  explica los datos.
- **Los lectores** (`tools/lectores.py`) recorren cada formato desde las
  tablas de la ROM: textos, rachas, listas de gráficos, mapas, sprites,
  partituras.
- **Los cotejos con openMSX** (`tools/omsx_vram.tcl`, `tools/omsx_psg.tcl`):
  los mapas y caracteres, la nave, los sprites de cada fase y cada música.

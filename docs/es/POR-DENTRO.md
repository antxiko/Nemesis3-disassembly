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

## Código compartido con otros cartuchos de Konami

Este desensamblado se ha comparado, instrucción por instrucción, con
todos los demás de Konami de la serie. Cuenta un bloque cuando las
mismas instrucciones, al menos seis desde una etiqueta hasta su `ret`
o su salto sin condición, están en los dos cartuchos; las direcciones
no se miran, porque cambian de un cartucho a otro. De los otros 57,
**50** tienen al menos un bloque en común con este; estos son los
que más comparten:

| Cartucho | Bloques | Instrucciones | Por ejemplo (aquí = allí) |
|---|---:|---:|---|
| [Nemesis 2](https://antxiko.github.io/Nemesis2-disassembly/es/) | 189 | 2.373 | `rle_con_direccion` (p00:4B36) = `descomprime_otra_direccion` |
| [Parodius](https://antxiko.github.io/Parodius-disassembly/es/) | 151 | 2.090 | `rle_con_direccion` (p00:4B36) = `rachas_con_destino` |
| [Salamander - Operation X](https://antxiko.github.io/Salamander-disassembly/es/) | 145 | 1.932 | `rle_con_direccion` (p00:4B36) = `rachas_con_destino` |
| [Gekitotsu Pennant Race 2](https://antxiko.github.io/PennantRace2-disassembly/es/) | 101 | 1.586 | `cartucho_en_8000` (p00:4109) = `cartucho_en_pagina_2` |
| [King's Valley II](https://antxiko.github.io/KingsValley2-disassembly/es/) | 75 | 1.153 | `cartucho_en_8000` (p00:4109) |
| [The Pro Yakyuu Gekitotsu Pennant Race](https://antxiko.github.io/PennantRace-disassembly/es/) | 61 | 973 | `cartucho_en_8000` (p00:4109) = `cartucho_en_pagina_2` |
| [F-1 Spirit — The Way to Formula 1](https://antxiko.github.io/F1Spirit-disassembly/es/) | 50 | 763 | `rle_con_direccion` (p00:4B36) = `RLE_SIGUE_PUNTERO` |
| [Contra](https://antxiko.github.io/Contra-disassembly/es/) | 46 | 805 | `lee_byte` (p00:4A6E) = `lee_tabla` |
| [Shalom: Knightmare III](https://antxiko.github.io/Shalom-disassembly/es/) | 41 | 521 | `cartucho_en_8000` (p00:4109) |
| [Nemesis / Gradius](https://antxiko.github.io/Nemesis-disassembly/es/) | 39 | 469 | `rle_con_direccion` (p00:4B36) = `descomprime_con_destino` |

La matriz entera, los 58 cartuchos entre sí, está en
[Las rutinas](https://antxiko.github.io/MSX-disassembly-database/es/LAS-RUTINAS.html) de la base de datos de la
serie, con el método y el programa que la mide.

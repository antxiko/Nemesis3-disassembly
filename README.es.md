# Nemesis 3 - The Eve of Destruction - desensamblado comentado

*(Also [in English](README.md).)*

El desensamblado comentado de **Nemesis 3 - The Eve of Destruction** (Gofer no Yabou Episode II; Konami, 1988, RC-764) para MSX: una MegaROM de 256 KB con el mapper de Konami con SCC, treinta y dos bancos de 8 KB.

- **100 %** del binario explicado: 62.318 bytes de código y 199.826 de datos con nombre, ni un byte sin asignar.
- **41,3 %** del listado comentado, 4.162 rutinas, ninguna por debajo del 10 % de comentarios.
- El listado se reensambla en la ROM original **byte a byte**.
- Los recorridos de las fases, la nave y los sprites de cada fase están **dibujados desde los bytes de la ROM** y cotejados con la VRAM de openMSX; las armas, los jefes, la historia y el final son la VRAM de partidas en openMSX, cuadro a cuadro; las 26 músicas salen de ejecutar su propio motor de sonido.

La web: <https://antxiko.github.io/Nemesis3-disassembly/es/>
(en inglés: <https://antxiko.github.io/Nemesis3-disassembly/>).

## Reproducirlo

La imagen del cartucho no se distribuye. Pon la tuya en la raíz como `nemesis3.rom` (sha256 `fb4f66bc...`) y ejecuta `make`. El detalle, en [POR DENTRO](docs/es/POR-DENTRO.md).

## Legal

El juego es de Konami y de sus titulares. La licencia de `LICENSE` cubre solo las herramientas, los comentarios, el análisis y la documentación de aquí. Mira [AVISO-LEGAL.md](AVISO-LEGAL.md).

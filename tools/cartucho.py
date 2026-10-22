#!/usr/bin/env python3
"""Lo que el trazador de cartucho entero (tools/bancos.py) necesita saber de
ESTE cartucho: donde esta el despachador, como cambia de banco y por donde
arranca. bancos.py es maquinaria y no lleva direcciones de ningun juego; las
lee de aqui.

Nemesis 3 - The Eve of Destruction (Konami, RC-764, 1988), MSX, mapper Konami
con SCC. Todo medido sobre los bytes (tools/reconocimiento.py repasa cada
escritura al mapper).
"""

# El despachador de Konami, con la tabla de destinos pegada detras del
# `call`: p00:4093 `pop hl / add a,a / call 4089 / ld a,(hl) / inc hl /
# ld h,(hl) / ld l,a / jp (hl)` (el indice llega en A; p00:4089 es
# `add a,l / ld l,a / ret nc / inc h / ret`).
DESPACHADOR = 0x4093
DESPACHADORES = (0x4093,)

# Registro del mapper -> casilla del reparto (0x6000, 0x8000, 0xA000).
RANURA_REG = {0x7000: 0, 0x9000: 1, 0xB000: 2}

# Las copias en RAM de los registros: 0xF0F1-0xF0F3 (INIT p00:40C8 las
# llena con `ld (hl),a` junto a cada registro; la interrupcion p00:405F las
# lee para devolver lo que habia).
SOMBRA = {0xF0F1: 0, 0xF0F2: 1, 0xF0F3: 2}
SOMBRA_RANURA = {0: 0, 1: 1, 2: 2}
PONE_ZONA = ()
DEVUELVE_ZONA = ()

# Las rutinas de banco reciben el numero en A (p00:4238 y compania);
# bancos.py las resume siguiendo el A de quien llama. Aqui solo irian las de
# banco FIJO que no se pudieran resumir.
PONE_BANCOS = {}

# La pila de repartos: p00:41F7 apunta las tres ranuras (0xF0F1-3) en la
# pila de 0xF0D0 y p00:4213 las saca y las vuelve a poner. Las rutinas de
# p00:4145-41F6 que empiezan por `call 41F7` guardan antes de cambiar, y los
# puentes de p00:47B3-488C acaban en `jp 4213`.
PILA_BANCOS = (0x41F7, 0x4213)

# Las rutinas de banco que vuelven con A intacto.
NO_TOCAN_A = ()

# Las rutinas de banco no tocan HL ni DE (solo A, que guardan con push af, y
# el mapper): las de p00:4145-41F6 (y su segunda entrada, tres bytes detras
# del `call 41F7`), la pila (p00:41F7, 4213: push hl / pop hl) y las que
# reciben el banco en A. Los puentes de p01 cargan HL, ponen un banco y hacen
# `call` a un `jp (hl)` (p01:7535-753E).
NO_TOCAN_HL = (0x4145, 0x4148, 0x4150, 0x4158, 0x415B, 0x4163, 0x416B, 0x4173,
               0x417B, 0x4183, 0x4186, 0x418E, 0x4191, 0x4199, 0x41A1, 0x41A4,
               0x41AC, 0x41B4, 0x41BC, 0x41BF, 0x41C7, 0x41CF, 0x41DC, 0x41E4,
               0x41EC, 0x41EF, 0x41F7, 0x4213, 0x4238, 0x424F, 0x425F, 0x426F,
               0x4278, 0x4281)

# Para tools/reconocimiento.py: las rutinas que escriben un registro del
# mapper con el banco que les llega en A, y el primer registro que escriben
# (las de dos y tres encadenan `inc a` hacia las ranuras siguientes).
RUTINAS_BANCO = {
    0x4238: 0x7000,     # p00:4238  di / 0x7000 / inc a / 0x9000 / inc a / 0xB000, con su copia
    0x424F: 0x7000,     # p00:424F  di / 0x7000 / inc a / 0x9000
    0x425F: 0x9000,     # p00:425F  di / 0x9000 / inc a / 0xB000
    0x426F: 0x7000,     # p00:426F  di / 0x7000
    0x4278: 0x9000,     # p00:4278  di / 0x9000
    0x4281: 0xB000,     # p00:4281  di / 0xB000
}
# La segunda y tercera ranura de las rutinas que encadenan.
RUTINAS_BANCO_MAS = {0x4238: (0x9000, 0xB000), 0x424F: (0x9000,),
                     0x425F: (0xB000,)}

# Llamadas que van a OTRO cartucho (paginas.OTRO_SLOT): `call 0x8000` con la
# ranura del otro puesta en 0x8000-0xBFFF por ENASLT. El trazador no las
# sigue. (banco, pc del call).
LLAMADAS_AJENAS = {(1, 0x6CEB), (1, 0x6D28)}

# Los bancos que llevan codigo y el reparto con el que corre (para
# tools/huerfanas.py). Se rellena con lo que mida el trazado.
CODIGO = {0: (1, 2, 3)}


def semillas_iniciales(rom):
    """Los dos unicos puntos de entrada que el hardware garantiza.

    - INIT de la cabecera "AB" (0x409D): lo llama la BIOS al arrancar, con el
      mapper en su estado de encendido (bancos 1, 2 y 3 en 0x6000, 0x8000 y
      0xA000; INIT los vuelve a poner en p00:40C8-40E1).
    - 0x402E: lo que INIT instala en el gancho H.KEYI, con `ld a,0xC3 /
      ld (0xFD9A),a / ld hl,0x402E / ld (0xFD9B),hl` (p00:40EF-40F7).
    """
    init = rom[2] | (rom[3] << 8)
    return [(init, (1, 2, 3), "cabecera AB: INIT"),
            (0x402E, (1, 2, 3),
             "gancho de interrupcion H.KEYI: INIT escribe 0xC3 en 0xFD9A y esta"
             " direccion en 0xFD9B (p00:40EF-p00:40F7)")]

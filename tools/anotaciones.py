#!/usr/bin/env python3
"""Lo que tools/anota.py sabe de Nemesis 3: rutinas con nombre, RAM y los
campos de las fichas. Solo datos; la maquinaria esta en anota.py.

CADA ENTRADA SALE DE LEER SU RUTINA en el listado (la direccion es la fuente).
Lo que no se sabe no esta en la tabla.
"""

# Los bancos con codigo (los demas son datos de punta a punta).
BANCOS = (0, 1, 2, 3, 4, 5, 10, 19, 26, 27, 28, 30)

# Los registros del mapper Konami con SCC (tools/paginas.py).
REGISTROS_MAPPER = {0x5000: "0x4000", 0x7000: "0x6000", 0x9000: "0x8000", 0xB000: "0xA000"}


# Que banco se ve en cada ventana al empezar una rutina del banco b: el juego
# corre con 1-2-3 (p00:4148 lo devuelve tras cada llamada a otro banco), el
# sonido con 10-11-12 (p00:404A) y los demas con el reparto con el que los
# pone su rutina de p00:4145-41F6.
def trio(b):
    if b == 0:
        return {}
    if b == 10:
        return {0x6000: 10, 0x8000: 11, 0xA000: 12}
    if b in (4, 5):
        return {0x6000: 1, 0x8000: 4, 0xA000: 5}
    if b == 19:
        return {0x6000: 1, 0x8000: 2, 0xA000: 19}
    if b in (26, 27, 28):
        return {0x6000: 26, 0x8000: 27, 0xA000: 28}
    if b == 30:
        return {0x6000: 1, 0x8000: 30, 0xA000: 31}
    return {0x6000: 1, 0x8000: 2, 0xA000: 3}


# Las rutinas del banco 0 que cambian lo que se ve (p00:4145-41F6).
CAMBIOS_DE_BANCO = {
    0x4145: {0x6000: 1, 0x8000: 2, 0xA000: 3}, 0x4148: {0x6000: 1, 0x8000: 2, 0xA000: 3},
    0x4150: {0xA000: 3},
    0x4158: {0x8000: 4, 0xA000: 5}, 0x415B: {0x8000: 4, 0xA000: 5},
    0x4163: {0xA000: 5},
    0x416B: {0x8000: 6, 0xA000: 7}, 0x4173: {0xA000: 7}, 0x417B: {0xA000: 8},
    0x4183: {0x6000: 16, 0x8000: 17, 0xA000: 18}, 0x4186: {0x6000: 16, 0x8000: 17, 0xA000: 18},
    0x418E: {0x6000: 14, 0x8000: 15}, 0x4191: {0x6000: 14, 0x8000: 15}, 0x4199: {0x8000: 15},
    0x41A1: {0x6000: 20, 0x8000: 21, 0xA000: 22}, 0x41A4: {0x6000: 20, 0x8000: 21, 0xA000: 22},
    0x41AC: {0xA000: 22},
    0x41B4: {0x6000: 23, 0x8000: 24, 0xA000: 25},
    0x41BC: {0x6000: 26, 0x8000: 27, 0xA000: 28}, 0x41BF: {0x6000: 26, 0x8000: 27, 0xA000: 28},
    0x41C7: {0x6000: 26}, 0x41CF: {0x6000: 26, 0xA000: 28},
    0x41DC: {0x8000: 30, 0xA000: 31}, 0x41E4: {0xA000: 29},
    0x41EC: {0xA000: 19}, 0x41EF: {0xA000: 19},
}

_PONE = {}
for _a, _r in CAMBIOS_DE_BANCO.items():
    _q = "-".join(str(_r[k]) for k in sorted(_r))
    _PONE[_a] = ("bancos_%s" % _q.replace("-", "_"),
                 "%s %s%s" % ("pone" if len(_r) == 1 else "pone", "el %s" % _q if len(_r) == 1 else "los bancos %s" % _q,
                              "" if _a in (0x4148, 0x415B, 0x4186, 0x4191, 0x41A4, 0x41BF, 0x41EF)
                              and False else ""))
RUTINAS = {}
for _a, (_n, _t) in _PONE.items():
    _g = _a in (0x4145, 0x4158, 0x4183, 0x418E, 0x41A1, 0x41BC, 0x41EC)
    RUTINAS[(0, _a)] = (("guarda_y_" if _g else "") + _n,
                        ("guarda el reparto en la pila y " if _g else "") + _t + " (y sus copias en 0xF0F1-3)")

RUTINAS.update({
    (0, 0x402E): ("interrupcion", "la interrupcion: el sonido (10-11-12) y el cuadro del juego"),
    (0, 0x4089): ("suma_a_hl", "HL = HL + A"),
    (0, 0x408E): ("suma_a_de", "DE = DE + A"),
    (0, 0x4093): ("despacha", "salta a la palabra A de la tabla que va detras del call"),
    (0, 0x409D): ("init", "el arranque del cartucho (INIT)"),
    (0, 0x4109): ("cartucho_en_8000", "pone el cartucho tambien en 0x8000-0xBFFF (ENASLT)"),
    (0, 0x4129): ("ranura_del_cartucho", "la ranura del cartucho, en 0xF0F8"),
    (0, 0x41F7): ("guarda_reparto", "guarda las tres copias del mapper en la pila de 0xF0D0"),
    (0, 0x4213): ("devuelve_reparto", "saca de la pila el ultimo reparto y lo vuelve a poner"),
    (0, 0x4238): ("pon_tres_bancos", "pone A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000"),
    (0, 0x424F): ("pon_6000_8000", "pone A y A+1 en 0x6000 y 0x8000"),
    (0, 0x425F): ("pon_8000_a000", "pone A y A+1 en 0x8000 y 0xA000"),
    (0, 0x426F): ("pon_6000", "pone A en 0x6000"),
    (0, 0x4278): ("pon_8000", "pone A en 0x8000"),
    (0, 0x4281): ("pon_a000", "pone A en 0xA000"),
    (0, 0x428A): ("cuadro_del_juego", "el cuadro del juego: lo del estado de 0xE300"),
    (0, 0x429A): ("por_estado", "salta a lo del estado 0xE300 con el paso 0xE301 en B"),
    (0, 0x4A5A): ("lee_palabra", "HL = la palabra A de la tabla HL"),
    (0, 0x4A46): ("sitio_en_bufer", "la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)"),
    (0, 0x4A65): ("lee_palabra_de", "DE = la palabra A de la tabla DE"),
    (0, 0x4A6E): ("lee_byte", "A = el byte A de la tabla HL"),
    (0, 0x4A75): ("niega_de", "DE = -DE"),
    (0, 0x4A7D): ("niega_hl", "HL = -HL"),
    (0, 0x4818): ("secuencia_empieza", "empieza la secuencia de dibujos A (p26:6114, con los bancos 26-27-28)"),
    (0, 0x4821): ("secuencia_cuadro", "la secuencia de dibujos, un cuadro (p26:6135)"),
    (0, 0x482A): ("explosion_grande", "una explosion grande (p03:A66A con 1-2-3)"),
    (0, 0x4833): ("crea_pieza", "crea una pieza (p01:7C18 con 1-2-3)"),
    (0, 0x483C): ("direccion_hacia", "la direccion de DE hacia 0xEF80 (p01:640B con 1-2-3)"),
    (0, 0x4845): ("velocidad_hacia", "la velocidad por esa direccion (p01:639F con 1-2-3)"),
    (0, 0x48F9): ("suma_puntos", "suma DE (BCD) a los puntos"),
    (0, 0x4D17): ("copia_con_vuelta_ce00", "copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)"),
    (0, 0x5007): ("dibujos_de_sprite", "los dibujos de sprite de p14:7055 (RLE) en 0x1800"),
    (0, 0x5636): ("bios_japonesa", "Z si la BIOS es japonesa (0x002B & 0x0F = 0)"),
    (0, 0x563C): ("multiplica", "HL = H x E"),
    (0, 0x5648): ("sprites_fuera", "los atributos de sprite de 0xEF00 a 0xE0: fuera de la pantalla"),
    (0, 0x5669): ("bufer_c400_a_cero", "el bufer de 0xC400 a cero (0x580 bytes)"),
    (0, 0x5692): ("segun_dificultad", "DE segun la dificultad (0xE39D: igual, el doble o la mitad)"),
    (0, 0x5709): ("paleta", "la paleta A de p16:6B74"),
    (0, 0x5718): ("paleta_de_la_fase", "la paleta de p16:67AE"),
    (0, 0x5724): ("cuenta_e333_a_cero", "la cuenta de 0xE333 a cero"),
    (0, 0x572B): ("cuenta_e333_llega", "la cuenta de 0xE333 contra DE: C mientras no llega"),
    (0, 0x5730): ("cuenta_e339_a_cero", "la cuenta de 0xE339 a cero"),
    (0, 0x5737): ("cuenta_e339_llega", "la cuenta de 0xE339 contra DE: C mientras no llega"),
    (0, 0x5959): ("bufer_ca00_a_cero", "el bufer de 0xCA00 a cero (0x300 bytes)"),
    (0, 0x5967): ("bufer_a_vram_sin_marcador", "el bufer de 0xCA00 a la tabla de nombres, sin las dos filas del marcador"),
    (0, 0x5985): ("bufer_a_vram", "el bufer de 0xCA00 a la tabla de nombres, la pantalla entera"),
    (0, 0x59A1): ("copia_rectangulo", "copia B filas de C bytes de HL a DE (filas de 0x20)"),
    (0, 0x59C7): ("borra_rectangulo", "borra B filas de C bytes desde DE (filas de 0x20)"),
    (0, 0x5DB8): ("sprites_a_vram", "los sprites a la VRAM (0x3B00), rotando los que se pintan"),
    (0, 0x5DE9): ("sprites_a_vram_tal_cual", "los 32 sprites a la VRAM (0x3B00) tal cual"),
    (0, 0x5DFB): ("bufer_c400_a_vram", "el bufer de 0xC400 a la tabla de nombres (22 filas)"),
    (0, 0x5ED4): ("aparicion_empieza", "empieza la aparicion poco a poco de las listas de HL"),
    (0, 0x5EEC): ("aparicion_cuadro", "la aparicion poco a poco, un cuadro"),
    (0, 0x4AA9): ("pantalla_en_blanco", "borra la tabla de nombres (0x3800)"),
    (0, 0x4AB6): ("vram_para_escribir", "la VRAM de HL para escribir y en C' el puerto del VDP"),
    (0, 0x4ACC): ("copia_a_vram", "LDIRVM con origen DE y destino HL"),
    (0, 0x4AD0): ("copia_a_tres_tercios", "copia lo mismo a los tres tercios de la VRAM"),
    (0, 0x4AE3): ("llena_tres_tercios", "llena lo mismo en los tres tercios de la VRAM"),
    (0, 0x4B04): ("escribe_texto", "escribe en la VRAM el texto de DE (direccion y letras)"),
    (0, 0x4B1B): ("borra_texto", "borra en la VRAM el texto de DE"),
    (0, 0x4B0C): ("escribe_letras", "escribe en la VRAM de HL las letras de DE"),
    (0, 0x4B1F): ("texto_a_ram", "copia a la RAM el texto de HL"),
    (0, 0x4B32): ("borra_texto_ram", "borra en la RAM el texto de HL"),
    (0, 0x4B36): ("rle_con_direccion", "descomprime a la VRAM el RLE de DE, que lleva su direccion delante"),
    (0, 0x4B3C): ("rle_a_vram", "descomprime a la VRAM de HL el RLE de DE"),
    (0, 0x4BFA): ("arranca_sonido_y_vdp", "arranca el sonido (p10:6000), borra la VRAM y pone el VDP"),
    (0, 0x4C27): ("pon_vdp", "los 8 registros del VDP de la tabla 0x4C38"),
    (0, 0x4C40): ("color_del_borde", "B al registro 7 del VDP"),
    (0, 0x4C45): ("lee_mandos", "lee mando y teclado: lo pulsado y lo recien pulsado"),
    (0, 0x4C5D): ("mando_y_cursores", "el mando 1, M/N, espacio y cursores en un byte"),
    (0, 0x4CB1): ("carga_graficos", "carga la lista de graficos de IX (RLE a los tercios)"),
    (0, 0x4D1B): ("copia_con_vuelta", "copia caracteres de la VRAM dandoles la vuelta (lista IX)"),
    (0, 0x54C3): ("carga_fuente", "carga la fuente en los tres tercios (bancos 20-22)"),
    (0, 0x55A9): ("rle_a_ram_con_destino", "descomprime a la RAM el RLE de HL, con su destino delante"),
    (0, 0x55AD): ("rle_a_ram", "descomprime a la RAM de DE el RLE de HL"),
    (0, 0x55C9): ("rle2_con_destino", "descomprime a la RAM el segundo formato de HL, con su destino delante"),
    (0, 0x55CD): ("rle2_a_ram", "descomprime a la RAM de DE el segundo formato de HL"),
    (0, 0x589A): ("pide_sonido", "pide al motor (p10:6003) el sonido A"),
    (26, 0x601E): ("pantalla_limpia", "los sprites fuera, el bufer de 0xCA00 a cero y los colores"),
    (26, 0x60C0): ("borra_cuadro_ca48", "borra en el bufer 0x0B x 0x10 desde 0xCA48"),
    (26, 0x60CA): ("borra_cuadro_cc22", "borra en el bufer 5 x 0x1C desde 0xCC22"),
    (26, 0x60DF): ("consola", "la consola (p26:730A) con su animacion cada 8 cuadros"),
    (26, 0x60F9): ("contador_de_hl", "las 6 cifras del contador de la consola, de HL"),
    (26, 0x6114): ("secuencia", "empieza la secuencia de dibujos A"),
    (26, 0x612A): ("secuencia_de_hl", "empieza la secuencia de dibujos de HL"),
    (26, 0x6135): ("secuencia_sigue", "la secuencia de dibujos, un cuadro (NZ mientras siga)"),
    (26, 0x6CB9): ("estado9_paso_siguiente", "el paso siguiente del estado 9 (0xE7E4)"),
    (26, 0x6CC1): ("estado9_subpaso_siguiente", "el subpaso siguiente del estado 9 (0xE7E5)"),
    (26, 0x67F9): ("eleccion_paso_siguiente", "el paso siguiente de la eleccion (0xE31B)"),
    (26, 0x6801): ("eleccion_subpaso_siguiente", "el subpaso siguiente de la eleccion (0xE31C)"),
    (26, 0x6806): ("eleccion_subpaso_anterior", "el subpaso anterior de la eleccion"),
    (26, 0x7320): ("consola_cuadro", "la consola, un cuadro"),
    (26, 0x78A2): ("borrado_empieza", "empieza a borrar fila a fila la lista HL"),
    (26, 0x78AC): ("borrado_cuadro", "el borrado fila a fila, cada 4 cuadros"),
    (26, 0x7913): ("borrado_sprites_empieza", "empieza a borrar fila a fila los sprites de HL"),
    (26, 0x791D): ("borrado_sprites_cuadro", "el borrado de sprites, cada 4 cuadros"),
    (26, 0x796B): ("llenado_con_pausas", "empieza a llenar fila a fila con pausas la lista HL con el byte C"),
    (26, 0x7978): ("llenado_empieza", "empieza a llenar fila a fila la lista HL con el byte C"),
    (26, 0x79CF): ("llenado_con_pausas_cuadro", "el llenado con pausas, un cuadro"),
    (26, 0x7A3D): ("llenado_cuadro", "el llenado fila a fila, cada 4 cuadros"),
    (26, 0x7AAD): ("llenado2_empieza", "otro llenado fila a fila (0xE569) de la lista HL con C"),
    (26, 0x7ABB): ("llenado3_empieza", "otro llenado fila a fila (0xE56E) de la lista HL con C"),
    (26, 0x7AC9): ("llenado2_cuadro", "el llenado de 0xE569, cada 4 cuadros"),
    (26, 0x7ADB): ("llenado3_cuadro", "el llenado de 0xE56E, cada 4 cuadros"),
    (26, 0x7B52): ("vuelve_empieza", "guarda y borra los trozos de IX para que vuelvan fila a fila"),
    (26, 0x7C0A): ("vuelve_cuadro", "lo guardado vuelve fila a fila, cada 4 cuadros"),
    (26, 0x7C85): ("sprites_aparecen", "empieza la aparicion fila a fila de los sprites de HL"),
    (26, 0x7CCC): ("sprites_aparecen_cuadro", "la aparicion de sprites, cada 4 cuadros"),
    (26, 0x7DED): ("estado9_vuelta", "los sprites fuera, la pantalla de la fase y al paso siguiente"),
    (26, 0x7FE8): ("estado8_subpaso_siguiente", "el subpaso siguiente del estado 8 (0xE327)"),
    (27, 0x8410): ("final_paso_siguiente", "el paso siguiente del final (0xE329)"),
    (27, 0x8418): ("final_subpaso_siguiente", "el subpaso siguiente del final (0xE32A)"),
    (27, 0x83CF): ("consola_paso_siguiente", "el paso siguiente de la consola entre fases (0xE322)"),
    (27, 0x83D7): ("consola_subpaso_siguiente", "el subpaso siguiente de la consola (0xE323)"),
    (27, 0x8CBF): ("contador_loco", "el contador cambia al azar cada 4 cuadros"),
    (30, 0x801D): ("historia_paso_siguiente", "el paso siguiente de la historia (0xE32F)"),
    (30, 0x8025): ("historia_subpaso_siguiente", "el subpaso siguiente de la historia (0xE330)"),
    (30, 0x83EB): ("historia_colores", "los colores de la secuencia, cada 7 cuadros"),
    (30, 0x8419): ("historia_colores_empiezan", "los colores de la secuencia desde el principio"),
    (30, 0x84C1): ("estrellas_salen", "las estrellas salen (p28:BC08)"),
    (30, 0x84F3): ("aparece_con_pausas", "la lista HL aparece fila a fila con pausas"),
    (30, 0x84FD): ("aparece_con_pausas_cuadro", "lo mismo, un cuadro (NZ mientras siga)"),
    (30, 0x850B): ("borra_fila_a_fila", "la lista HL se borra fila a fila"),
    (30, 0x8515): ("borra_fila_a_fila_cuadro", "lo mismo, un cuadro (NZ mientras siga)"),
    (4, 0x843D): ("mata_la_nave", "la nave estalla: 0xFF en 0xE600"),
    (10, 0x6000): ("sonido_arranca", "el motor de sonido: lo pone a cero"),
    (10, 0x6003): ("sonido_pide", "el motor de sonido: arranca el sonido A"),
    (10, 0x6006): ("sonido_cuadro", "el motor de sonido: un cuadro de los ocho canales"),
})

# Los atajos de p00:57EA-5953: `ld a,N` y a pide_sonido (p00:589A).
_ATAJOS = [(22506, 1), (22510, 2), (22518, 9), (22522, 10), (22526, 11), (22530, 62), (22534, 74), (22538, 72), (22542, 63), (22546, 64), (22550, 65), (22554, 73), (22558, 131), (22567, 66), (22571, 15), (22575, 16), (22579, 17), (22583, 18), (22587, 19), (22591, 20), (22595, 21), (22599, 22), (22603, 23), (22607, 24), (22611, 25), (22615, 26), (22619, 27), (22623, 28), (22627, 131), (22636, 29), (22640, 30), (22644, 31), (22648, 32), (22652, 33), (22656, 34), (22660, 38), (22664, 76), (22668, 39), (22672, 40), (22676, 41), (22733, 43), (22737, 44), (22741, 45), (22745, 46), (22749, 47), (22753, 48), (22757, 49), (22761, 50), (22765, 51), (22769, 52), (22773, 53), (22777, 54), (22781, 77), (22785, 78), (22789, 55), (22793, 56), (22798, 57), (22802, 58), (22810, 82), (22814, 131), (22823, 60), (22827, 131), (22836, 79), (22840, 131), (22849, 83), (22853, 129), (22857, 130), (22861, 131), (22865, 132)]
# Las que empiezan con la orden 0x83 (`ld a,0x83 / call 589A / ld a,N`) piden
# despues el sonido N: se nombran por el.
_ROM = open(__import__("os").path.join(__import__("os").path.dirname(__file__), "..",
                                       "nemesis3.rom"), "rb").read()
_usados = set()
for _a, _n in _ATAJOS:
    _o = _a - 0x4000
    if _n >= 0x81 and _ROM[_o + 2] == 0xCD and _ROM[_o + 5] == 0x3E:
        _m = _ROM[_o + 6]
        _nom, _txt = ("orden_%02X_y_sonido_%02X" % (_n, _m),
                      "manda la orden 0x%02X al motor y pide el sonido 0x%02X" % (_n, _m))
    elif _n >= 0x81:
        _nom, _txt = "orden_sonido_%02X" % _n, "manda la orden 0x%02X al motor de sonido" % _n
    else:
        _nom, _txt = "sonido_%02X" % _n, "pide el sonido 0x%02X" % _n
    while _nom in _usados:
        _nom += "_b"
    _usados.add(_nom)
    RUTINAS.setdefault((0, _a), (_nom, _txt))

RAM = {
    0xE31B: ("el paso de la eleccion de nave", "p26:648F"),
    0xE31C: ("el subpaso de la eleccion de nave", "p26:6801"),
    0xE31E: ("el tipo de la entrada secreta cogida (al estado 9)", "p02:8154"),
    0xE327: ("el subpaso del estado 8 (entre fases)", "p26:7FE8"),
    0xE36F: ("el nivel del arma secreta (0 a 7)", "p26:6EB4"),
    0xE37D: ("la fase siguiente (0: la de despues)", "p00:5603, p26:7F84"),
    0xE37E: ("las opciones elegidas (0 SHADOW, 1 FIXED, 2 ROLLING)", "p26:676C"),
    0xE37F: ("el escudo elegido (0 SHIELD, 1 FORCE FIELD)", "p26:669D"),
    0xE380: ("la nave elegida (0 a 3)", "p26:65B6"),
    0xE393: ("1 si se cogio la entrada secreta 8", "p02:8157"),
    0xE394: ("1 si se cogio la entrada secreta 9", "p02:8157"),
    0xE395: ("1 si se cogio la entrada secreta 0x0A", "p02:8157"),
    0xE396: ("1 si se cogio la entrada secreta 0x0B (el final con un paso mas)", "p02:8157, p27:8786"),
    0xE560: ("el borrado fila a fila en marcha", "p26:78A2"),
    0xE564: ("el llenado fila a fila en marcha", "p26:7978"),
    0xE580: ("los graficos que vuelven fila a fila, en marcha", "p26:7B52"),
    0xE5C2: ("el dibujo de la secuencia en pantalla", "p26:62A6"),
    0xE7E0: ("la entrada secreta: su tipo (0: ninguna), su y, su x y B", "p02:80E5"),
    0xE7E4: ("el paso del estado 9 (la entrada secreta)", "p26:6CB9"),
    0xE7E5: ("el subpaso del estado 9", "p26:6CC1"),
    0xE000: ("los 8 canales de sonido (0x40 bytes cada uno)", "p10:63A9"),
    0xE280: ("el estado del sonido (pausa, fundido...)", "p10:619A"),
    0xE282: ("la cabecera del sonido que se arranca (18 bytes)", "p10:6086"),
    0xE2BE: ("que banco de partituras va en 0xA000 (0: 12, 1: 13, 2: 9, otro: 25)", "p10:62DE"),
    0xE2BD: ("una cuenta de cuadros del sonido", "p10:6365"),
    0xE300: ("el estado del juego (0 logo, 1 titulo, 2 historia, 3 nave, 4 empieza la fase, 5 se juega, 6 muerte, 7 fin)", "p00:429A"),
    0xE301: ("el paso dentro del estado", "p00:429A"),
    0xE303: ("la cuenta de cuadros del juego", "p00:428A"),
    0xE304: ("el temporizador del estado", "p00:4311"),
    0xE305: ("1 mientras corre el cuadro del juego", "p00:4071"),
    0xE306: ("1 mientras corre el sonido", "p00:4040"),
    0xE308: ("lo recien pulsado (mando y cursores)", "p00:4C5B"),
    0xE309: ("lo pulsado (mando y cursores)", "p00:4C53"),
    0xE310: ("lo recien pulsado (teclas de funcion)", "p00:4C4E"),
    0xE311: ("lo pulsado (teclas de funcion)", "p00:4C4E"),
    0xE31A: ("1 mientras la nave esta en la fase", "p00:449B, p04:8439"),
    0xE333: ("una cuenta de cuadros (16 bits)", "p00:4031"),
    0xE339: ("otra cuenta de cuadros (16 bits)", "p00:4038"),
    0xE360: ("las vidas (BCD)", "p00:445F"),
    0xE361: ("la fase (1 a 11)", "p00:5608"),
    0xE363: ("la posicion del scroll (16 bits)", "p00:5345"),
    0xE600: ("el estado de la nave (1 normal, 2 y 3 con escudo, 0xFF estalla)", "p04:843D, p01:6817"),
    0xE302: ("el modo (bit 5: dos jugadores; bit 6: se juega de verdad; bit 7: el segundo jugador)", "p00:43C1, p00:5B38, p00:4993"),
    0xE30D: ("1: fase superada (al estado 8)", "p01:6140, p00:44A4"),
    0xE31F: ("la secuencia en marcha (p01:6274)", "p00:59EC"),
    0xE320: ("el paso de la secuencia de 0xE31F", "p01:6330"),
    0xE325: ("1 en la pausa", "p00:5B4A"),
    0xE328: ("1: el final del juego (al estado 10)", "p01:61EF"),
    0xE33B: ("la fase de la proxima demostracion (1 a 3)", "p00:5D43"),
    0xE33D: ("lo que se pulsa en la demostracion", "p00:5DA8"),
    0xE340: ("los cuadros que quedan de la pulsacion de la demostracion", "p00:5D73"),
    0xE342: ("la pulsacion de la demostracion (16 bits)", "p00:5D87"),
    0xE354: ("el record (BCD)", "p00:4964"),
    0xE356: ("los puntos del jugador 1 (BCD)", "p00:48FE"),
    0xE35B: ("los puntos del jugador 2 (BCD)", "p00:4903"),
    0xE362: ("la velocidad del scroll (se rota: avanza con el bit 0)", "p00:52BD"),
    0xE365: ("el paso del final de la fase", "p01:615E"),
    0xE366: ("las vueltas (fases acabadas)", "p00:5612"),
    0xE367: ("los puntos de la proxima vida de mas (BCD)", "p00:492F"),
    0xE36C: ("1 si se continua (F5)", "p00:457A"),
    0xE37C: ("el jefe de la fase 4 (0 a 3)", "p01:6250"),
    0xE388: ("la dificultad (16 bits, tope 0x0F00)", "p00:5692"),
    0xE389: ("la dificultad de la fase (0 a 0x0F)", "p00:5CE4"),
    0xE3B0: ("la ficha del otro jugador (0x50 bytes)", "p00:44E9"),
    0xE402: ("un temporizador", "p00:4450"),
    0xE403: ("el marcador cambiado (pausa, mensajes)", "p00:5B72, p01:6C6E"),
    0xE405: ("el caracter del fondo de la fase", "p00:5CF1"),
    0xE406: ("el azar", "p00:565A"),
    0xE420: ("1 si este cuadro hay scroll", "p00:52CC"),
    0xE425: ("el final del scroll de la fase (16 bits)", "p00:52AD"),
    0xE427: ("1 al llegar al final del scroll", "p00:527E"),
    0xE428: ("la x de lo que aparece (la columna nueva)", "p01:7110"),
    0xE429: ("la columna del bufer de 0xC400 que se pinta", "p00:5246"),
    0xE42B: ("la columna del mapa que se lee", "p00:5371"),
    0xE430: ("la marca de armas (1 a 8)", "p01:6A01"),
    0xE440: ("el jefe en curso (0: ninguno)", "p01:614C"),
    0xE442: ("1 al vencer al jefe", "p01:6134"),
    0xE445: ("el jefe vencido (1, o 2 en la fase 4)", "p01:6BC8"),
    0xE460: ("el tipo de lo que aparece", "p01:7678"),
    0xE461: ("C de lo que aparece", "p01:7684"),
    0xE462: ("cuantos enemigos hay", "p01:76BF, p01:75D1"),
    0xE463: ("el ultimo tipo que ha aparecido", "p01:76C7"),
    0xE465: ("cuantos sprites usan los enemigos (tope 12)", "p01:76A9"),
    0xE468: ("la aparicion siguiente de la lista de la fase", "p01:711E"),
    0xE46A: ("B de lo que aparece", "p01:767C"),
    0xE472: ("la velocidad en y hacia la nave (16 bits; IX+7 de quien la usa)", "p01:63E6, p01:786E"),
    0xE474: ("la velocidad en x hacia la nave (16 bits; IX+9 de quien la usa)", "p01:63F9, p01:7875"),
    0xE476: ("la direccion hacia la nave (0 a 0x3F)", "p01:644A"),
    0xE478: ("la y y la x de lo que aparece (IX+4 e IX+6 de su ficha)", "p01:7674"),
    0xE47B: ("la entrada siguiente de la lista de p19:A000", "p01:718E"),
    0xE4B0: ("la pieza siguiente de la lista de la fase", "p01:7C7D"),
    0xE4B1: ("cuantas piezas de 0xED00 estan en uso", "p01:7A5F"),
    0xE4B2: ("las explosiones grandes (4 de 8 bytes)", "p01:6799"),
    0xE500: ("la oleada: 0 ninguna, 1 empieza, 2 sale", "p01:6FF4"),
    0xE502: ("los enemigos de la oleada que faltan", "p01:7029"),
    0xE503: ("el tipo de la oleada", "p01:704D"),
    0xE505: ("la y de la oleada", "p01:7062"),
    0xE506: ("el numero de oleada", "p01:7056"),
    0xE507: ("las oleadas con premio (4 de 3 bytes)", "p01:6E0F"),
    0xE518: ("la aparicion poco a poco en marcha (1 o 2)", "p00:5EDC, p01:6005"),
    0xE519: ("el paso de la aparicion poco a poco", "p00:5EEC"),
    0xE51B: ("la mascara de la aparicion poco a poco", "p00:5F23"),
    0xE51C: ("la lista de graficos de la aparicion", "p00:5ED4"),
    0xE5C3: ("el color de los dibujos sueltos", "p00:4F4C"),
    0xE5C7: ("el siguiente caracter libre de cada tercio", "p00:4F22"),
    0xE601: ("los golpes que le quedan al escudo", "p01:68DF"),
    0xE604: ("la y de la nave (el primer byte de su sprite, p01:797C)", "p01:63FF"),
    0xE606: ("la x de la nave", "p01:6405"),
    0xE660: ("la estela de la nave (16 veces y y x)", "p00:5CB4"),
    0xE680: ("los disparos de la nave (9 de 0x20)", "p01:64C6"),
    0xE800: ("los enemigos (12 de 0x40)", "p01:744A"),
    0xEB00: ("las balas (10 de 0x10)", "p01:67CA"),
    0xEC00: ("las partes del jefe (4 de 0x20)", "p01:7D6F"),
    0xED00: ("las piezas (8 de 0x20)", "p01:7C23"),
    0xEF00: ("los atributos de sprite (32 x 4)", "p00:5648"),
    0xF0F7: ("la ranura del Game Master 2 (0xFF: no hay)", "p01:6D76"),
    0xC400: ("el bufer de la pantalla (22 filas de 0x40 bytes)", "p00:5DFB"),
    0xCA00: ("un bufer de trabajo", "p00:518E"),
    0xF0D0: ("el puntero de la pila de repartos", "p00:41FA"),
    0xF0F0: ("la copia del banco de 0x4000 (0)", "p00:40CF"),
    0xF0F1: ("la copia del banco de 0x6000", "p00:423C"),
    0xF0F2: ("la copia del banco de 0x8000", "p00:4243"),
    0xF0F3: ("la copia del banco de 0xA000", "p00:424A"),
    0xF0F8: ("la ranura del cartucho", "p00:4141"),
}

RAM16 = {}

# Los campos del canal de sonido (IX = 0xE000 + 0x40 x k, 8 canales): el
# interprete de p10:6428, las ordenes 0xD0-0xFF (tablas de p10:6E37 y 6B52),
# las envolventes (p10:6756, 691E), el deslizamiento (p10:685E) y la onda
# que cambia del SCC (p10:6A1A, 738F).
CAMPOS_CANAL = {
    0x00: "el sonido del canal (0: callado; p10:612B)",
    0x01: "la prioridad del sonido del canal (p10:6125)",
    0x02: "por donde va la partitura (bajo)",
    0x03: "por donde va la partitura (alto)",
    0x04: "la cuenta de la nota",
    0x05: "la cuenta del bucle de la orden 0xFB",
    0x06: "la cuenta del bucle de la orden 0xFC",
    0x07: "la vuelta de la orden 0xF9 (bajo)",
    0x08: "la vuelta de la orden 0xF9 (alto)",
    0x09: "el modo del canal (orden 0xFE)",
    0x0A: "el periodo (bajo)",
    0x0B: "el periodo (alto)",
    0x0C: "el volumen de ahora",
    0x0D: "las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)",
    0x0E: "las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)",
    0x0F: "las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)",
    0x10: "el divisor de la nota (bajo)",
    0x11: "el divisor de la nota (alto)",
    0x12: "el volumen de la nota",
    0x13: "la duracion fija (ordenes 0xE0-0xE3)",
    0x14: "la unidad de duracion (orden 0xE9)",
    0x15: "el volumen (orden 0xEA)",
    0x16: "la octava (ordenes 0xD0-0xD5)",
    0x17: "por donde va el guion de bateria (bajo)",
    0x18: "por donde va el guion de bateria (alto)",
    0x19: "la cuenta del golpe de bateria",
    0x1A: "la espera del vibrato (orden 0xF2)",
    0x1B: "el paso del vibrato (orden 0xF1)",
    0x1C: "cuanto mueve el vibrato (orden 0xF1)",
    0x1D: "hacia donde va el vibrato",
    0x1E: "la cuenta del vibrato",
    0x1F: "la cuenta de la envolvente",
    0x20: "la segunda cuenta de la envolvente",
    0x21: "los cuadros del ataque (orden 0xEB)",
    0x22: "cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)",
    0x23: "cuanto baja la envolvente (ordenes 0xEB y 0xDD)",
    0x24: "cuando empieza la caida final (ordenes 0xEB y 0xDD)",
    0x25: "el volumen de arranque (orden 0xED)",
    0x26: "lo que se suma al periodo (orden 0xEE)",
    0x27: "la forma de onda del SCC (orden 0xF8, bajo)",
    0x28: "la forma de onda del SCC (orden 0xF8, alto)",
    0x29: "la octava, para elegir el guion de bateria",
    0x2A: "IX+0E guardado (orden 0xFE)",
    0x2B: "IX+0F guardado (orden 0xFE)",
    0x2C: "la cuenta de la nota (alto)",
    0x2F: "lo que se resta al volumen (orden 0xF7)",
    0x30: "las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)",
    0x31: "por donde va la onda que cambia (0-0x1F)",
    0x32: "la velocidad de la onda que cambia (orden 0xF8)",
    0x33: "la cuenta de la onda que cambia",
    0x34: "el volumen minimo (orden 0xDB)",
    0x35: "cuanto baja el volumen de arranque (orden 0xED)",
    0x36: "lo que queda por debajo del volumen de la nota (orden 0xEA)",
    0x37: "el volumen con decimales de la segunda envolvente",
    0x38: "la diferencia de IX+23 e IX+24 (orden 0xDD)",
    0x39: "el paso del deslizamiento (ordenes 0xD6 y 0xD7)",
    0x3A: "la cuenta del deslizamiento",
    0x3B: "los cuadros del deslizamiento",
    0x3C: "las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)",
}
CARGAS_CANAL = tuple(0xE000 + 0x40 * k for k in range(8))
# Las fichas de los enemigos (0xE800, 12 de 0x40), sus campos comunes: los
# que pone la aparicion (p01:76CA-7748) y los que leen las rutinas de todos
# (p01:7461-75FD: el movimiento, el scroll, quitarlo; p01:7972 los sprites).
CAMPOS_ENEMIGO = {
    0x00: "el tipo del enemigo (0: libre)",  # p01:76CA
    0x01: "el paso del enemigo",
    0x02: "la cuenta del enemigo",
    0x03: "la y del enemigo (decimales)",  # p01:758F
    0x04: "la y del enemigo",  # p01:797C
    0x05: "la x del enemigo (decimales)",  # p01:758F
    0x06: "la x del enemigo",  # p01:7981
    0x0B: "los sprites del enemigo (bits 0-5; bit 6 de caracteres, bit 7 con sprites)",  # p01:7972
    0x0D: "las vidas del enemigo",  # p01:76EF
    0x0E: "el alto del enemigo para los choques",  # p01:64F1
    0x0F: "el ancho del enemigo para los choques",  # p01:6507
    0x10: "las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll)",  # p01:7562
    0x30: "el dibujo del primer sprite del enemigo",  # p01:7986
    0x31: "el color del primer sprite del enemigo",  # p01:798B
}
# Las fichas de las piezas (0xED00, 8 de 0x20): lo que pone p01:7C18 al
# crearlas y lo que leen las rutinas de todas (p01:7A7A, p02:8221-8245).
CAMPOS_PIEZA = {
    0x00: "el tipo de la pieza (0: libre)",  # p01:7C3A
    0x01: "el paso de la pieza",
    0x02: "la cuenta de la pieza",  # p01:7C3F
    0x04: "la y de la pieza",  # p01:7C51
    0x06: "la x de la pieza",  # p01:7C55
    0x07: "el dibujo de la pieza",  # p02:8221
    0x08: "las vidas de la pieza",  # p01:66E5
    0x09: "las filas de la pieza",  # p02:8239
    0x0A: "las columnas de la pieza",  # p02:823D
    0x0B: "el B de la pieza",  # p01:7C5A
    0x0D: "como se toca la pieza (bit 7: no se toca)",
    0x12: "las marcas de la pieza",  # p01:7A88
}
CARGAS_PIEZA = tuple(0xED00 + 0x20 * k for k in range(8))
# Las partes del jefe (0xEC00, 4 de 0x20): p04:9DC6 (al empezar), p04:9E67
# (la caja), p04:9F11 (el movimiento), p05:A24A (el dibujo en el bufer).
CAMPOS_JEFE = {
    0x03: "la y del jefe (bajo)",  # p04:9E67
    0x04: "la y del jefe (alto)",
    0x05: "la x del jefe (bajo)",  # p04:9E7D
    0x06: "la x del jefe (alto)",
    0x07: "el primer dibujo del jefe",
    0x08: "el segundo dibujo del jefe",  # p04:9E96
    0x09: "el tercer dibujo del jefe",
    0x12: "las vidas del jefe",  # p04:9DC6
    0x13: "las filas del jefe en el bufer",  # p05:A24A
    0x14: "las columnas del jefe en el bufer",  # p05:A24A
    0x15: "hacia donde va el jefe (1 arriba, 2 abajo, 3 izquierda, 4 derecha)",  # p04:9F21
}
CARGAS_JEFE = (0xEC00, 0xEC20, 0xEC40, 0xEC60)
CARGAS_ENEMIGO = tuple(0xE800 + 0x40 * k for k in range(12))


def semillas_fichas():
    """Donde IX es cada clase de ficha: los cuerpos de los bucles y las
    tablas de sus tipos (tools/duenos.py sigue el flujo desde aqui)."""
    from duenos import destinos, tabla_rom
    return {
        "enemigo": [(1, 0x7461)]
        # p01:7747-775B: lo de empezar cada tipo, la palabra del tipo desde 0x775A
        + destinos(1, tabla_rom(1, 0x775C, 74), trio)
        + destinos(1, [int(x, 16) for x in (
            "96A0 AD3A 754E BAE3 8B9A A295 9BD9 7549 7544 9334 BAC1 9E93 90E5 A0E5 8B2C 755D "
            "BAEC A207 9215 99DF 7553 7558 A609 9766 A9E5 A831 7511 AB6B AD3A AFD6 B0CA BDE1 "
            "9FC6 B72E BA20 BAC1 8EFE 753F B516 95E5 9D8B 752A A649 7510 B315 8919 B29A B37D "
            "9F16 7510 B6FF 9A81 9AEE A1D2 AC49 7516 86B9 7532 86B9 7525 8FEF 7510 7510 B285 "
            "B48A 7510 7520 8FF3 BAC1 B1E7 A9F3 B847 751B 90E5").split()], trio),
        "pieza": [(1, 0x7A7A), (1, 0x7C96)]
        # las tablas de p01:7AD4 (cada cuadro) y p01:7C9A (al empezar), por sus puentes
        + destinos(1, [int(x, 16) for x in (
            "7B64 7B5F 7B42 7B48 7B50 7B69 7B55 7B5A 7B43 "
            "7D2E 7D29 7D12 7D1A 7D33 7D1F 7D24 7D0D 7D08").split()], trio),
        "jefe": [(4, 0x9D9B)],
    }


_TRAMOS = None


def tramos_fichas():
    global _TRAMOS
    if _TRAMOS is None:
        from duenos import reparto
        _TRAMOS = reparto(semillas_fichas(), trio, BANCOS)[0]
        # los disparos de la nave van en IY: los bucles de p04:86C1 (se mueven)
        # y p04:968A (contra el decorado)
        _TRAMOS.update(reparto({"disparo": [(4, 0x86E7), (4, 0x86D7), (4, 0x969D)]},
                               trio, BANCOS, "iy")[0])
    return _TRAMOS


# Los disparos de la nave (0xE680, 9 de 0x20): el movimiento (p04:919A, 91B1),
# los choques (p01:64E5: IY+3 contra la y del enemigo, IY+5 contra la x), el
# sprite (p04:8E08) y quien lo lanza (p04:8CEA).
CAMPOS_DISPARO = {
    0x00: "el tipo del disparo (0: libre)",  # p04:86D7, 969D
    0x02: "la y del disparo (decimales)",  # p04:91B1
    0x03: "la y del disparo",  # p01:64E8
    0x04: "la x del disparo (decimales)",  # p04:919A
    0x05: "la x del disparo",  # p01:64FF
    0x06: "el dibujo del disparo",  # p04:8E0F
    0x07: "el color del disparo",  # p04:88FD
    0x08: "quien lanza el disparo (bajo)",  # p04:8CEA
    0x09: "quien lanza el disparo (alto)",
    0x0C: "el ancho del disparo para los choques",  # p01:650E
    0x0D: "el alto del disparo para los choques",  # p01:64F8
    0x10: "el largo del disparo",  # p04:8D55
    0x11: "la vida del disparo",  # p04:8B6E
    0x12: "la velocidad en y del disparo (bajo)",  # p04:91B1
    0x13: "la velocidad en y del disparo (alto)",
    0x14: "la velocidad en x del disparo (bajo)",  # p04:919A
    0x15: "la velocidad en x del disparo (alto)",
}
CARGAS_DISPARO = tuple(0xE680 + 0x20 * k for k in range(9))
# Las estrellas del final (0xC880, 24 de 0x10): p28:BCD1 las crea, p28:BD75 y
# BD89 las mueven, p28:BE07 las pasa a los sprites.
CAMPOS_ESTRELLA = {
    0x00: "el numero de la estrella (0: libre)",  # p28:BCD5
    0x01: "la y de la estrella (decimales)",  # p28:BD75
    0x02: "la y de la estrella",  # p28:BE07
    0x03: "la x de la estrella (decimales)",  # p28:BD89
    0x04: "la x de la estrella",  # p28:BE0C
    0x05: "la velocidad en y de la estrella (bajo)",
    0x06: "la velocidad en y de la estrella (alto)",
    0x07: "la velocidad en x de la estrella (bajo)",
    0x08: "la velocidad en x de la estrella (alto)",
    0x09: "el dibujo de la estrella",  # p28:BD9C
    0x0A: "el color de la estrella",  # p28:BD00
    0x0B: "lo que hay en el bufer bajo la estrella",  # p28:BDCA
}


# p10:6400-73A8: IX es un canal salvo donde se carga otra cosa (0xE284 en
# p10:608E, las marcas 0xE2A0 en p10:709F y 71F6)
FICHAS = ((CARGAS_CANAL, {10: ((0x6400, 0x73A9),)}, CAMPOS_CANAL),
          (CARGAS_ENEMIGO, tramos_fichas().get("enemigo", {}), CAMPOS_ENEMIGO),
          (CARGAS_PIEZA, tramos_fichas().get("pieza", {}), CAMPOS_PIEZA),
          (CARGAS_JEFE, tramos_fichas().get("jefe", {}), CAMPOS_JEFE),
          (CARGAS_DISPARO, tramos_fichas().get("disparo", {}), CAMPOS_DISPARO, "iy"),
          (CARGAS_DISPARO, {}, CAMPOS_DISPARO),
          ((0xC880,), {28: ((0xBBE9, 0xBE3B),)}, CAMPOS_ESTRELLA))

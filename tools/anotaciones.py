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
    0xE472: ("la velocidad en x hacia la nave (16 bits)", "p01:63E6"),
    0xE474: ("la velocidad en y hacia la nave (16 bits)", "p01:63F9"),
    0xE476: ("la direccion hacia la nave (0 a 0x3F)", "p01:644A"),
    0xE478: ("la x y la y de lo que aparece", "p01:7674"),
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
    0xE604: ("la x de la nave", "p01:63FF"),
    0xE606: ("la y de la nave", "p01:6405"),
    0xE660: ("la estela de la nave (16 x y y)", "p00:5CB4"),
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

FICHAS = ()

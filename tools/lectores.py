#!/usr/bin/env python3
"""Los lectores de datos de Nemesis 3 y sus formatos, para tools/bloques.py.

Cada recorredor hace con los bytes lo mismo que la rutina del cartucho que
lo lee, y devuelve donde acaba. Las rutinas, con su direccion en NUESTRO
listado (todas en el banco 0, fijo en 0x4000).
"""
import bloques as B


# ------------------------------------------------------------------ textos
#
# p00:4B04 (y p00:4B1B, que escribe ceros: borra) lee en DE la direccion de
# VRAM y luego las letras: 0xFF acaba, 0xFE trae otra direccion detras. La
# letra va con `and c` (C = 0xFF escribe, C = 0 borra). p00:4B0C entra ya
# con HL puesto y DE en la primera letra. p00:4B1F/4B32 son lo mismo hacia
# la RAM, con el puntero en HL.

def texto(v, a, con_direccion=True):
    if con_direccion:
        a += 2
    while True:
        x = v(a)
        a += 1
        if x == 0xFF:
            return a
        if x == 0xFE:
            a += 2


def texto_sin_direccion(v, a):
    return texto(v, a, False)


# ------------------------------------------------------------------ RLE
#
# p00:4B3C vuelca a la VRAM (desde HL, ya puesta) lo que lee en DE: 0 acaba;
# n de 1 a 0x7F repite n veces el byte de detras; 0x80 trae detras una
# direccion de VRAM nueva (p00:4B36); 0x81-0xFF copian tal cual los n & 0x7F
# bytes de detras. p00:4B36 entra con DE en esa direccion.

def rle(v, a, con_direccion=False):
    if con_direccion:
        a += 2
    while True:
        x = v(a)
        a += 1
        if x == 0:
            return a
        if x < 0x80:
            a += 1
        elif x == 0x80:
            a += 2
        else:
            a += x & 0x7F


def rle_con_direccion(v, a):
    return rle(v, a, True)


# ------------------------------------------------------------------ todo

def todo():
    B.por_lector(0x4B04, "DE", texto, "texto",
                 "texto a la VRAM: direccion, letras ('A' = 0x12), 0xFE y otra direccion, 0xFF "
                 "acaba (p00:4B04)", F=16)
    B.por_lector(0x4B1B, "DE", texto, "texto",
                 "texto a la VRAM que p00:4B1B escribe a cero (borra): direccion, letras, 0xFE y "
                 "otra direccion, 0xFF acaba", F=16)
    B.por_lector(0x4B0C, "DE", texto_sin_direccion, "letras",
                 "letras a la VRAM desde la direccion que ya trae HL, 0xFF acaba (p00:4B0C)", F=16)
    v = B.Ventana((1, 2, 3))
    B.declara(v, 0x6C7E, 0x6C86, "mensajes_grabar",
              "cuatro punteros a los mensajes de grabar y cargar en el otro cartucho (p01:6C5F: "
              "0x6C7E + 2 x C): SAVE COMPLETED, SAVE FAILED, LOAD COMPLETED, LOAD FAILED",
              "p01:6C62", F="w4")
    for k in range(4):
        a = v.w(0x6C7E + 2 * k)
        B.declara(v, a, texto_sin_direccion(v, a), "letras_%04X" % a,
                  "un mensaje de grabar o cargar (p01:6C6B a p00:4B0C): letras de la 0x40 a la 0x4C "
                  "(p00:5563), 0xFF acaba", "p01:6C6B", F=16)
    B.declara(v, 0x6D54, 0x6D65, "fichero_gofe1",
              "la cabecera del fichero GOFE1 del Game Master 2 (p01:6D3C copia 17 bytes a 0xEF80): el "
              "nombre y la RAM que se graba (0xE080, 0x0F00 bytes)", "p01:6D45", F=17)
    B.declara(v, 0x6D65, 0x6D76, "fichero_gofe2",
              "la cabecera del fichero GOFE2 (p01:6D48): el nombre y el bufer de la pantalla "
              "(0xC400, 0x0C00 bytes)", "p01:6D51", F=17)
    B.por_lector(0x4B1F, "HL", texto, "texto_ram",
                 "texto a la RAM: direccion, letras, 0xFE y otra direccion, 0xFF acaba (p00:4B1F)",
                 F=16)
    B.por_lector(0x4B32, "HL", texto, "texto_ram",
                 "texto a la RAM que p00:4B32 escribe a cero: direccion, letras, 0xFF acaba", F=16)
    B.por_lector(0x4B3C, "DE", rle, "rle",
                 "graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80 repite el byte de "
                 "detras, 0x80 y una direccion nueva, 0x81-0xFF copian n & 0x7F bytes", F=16)
    B.por_lector(0x4B36, "DE", rle_con_direccion, "rle",
                 "graficos comprimidos a la VRAM con su direccion delante (p00:4B36): direccion y "
                 "el RLE de p00:4B3C", F=16)
    todo_graficos()
    mapa()
    apariciones()
    todo_sprites()
    paletas()
    demostracion()
    tipos_de_enemigo()
    nombres_de_armas()
    dibujos_de_secuencia()
    ondas()
    tablas_de_la_nave()
    animaciones()
    listas_de_caracteres()
    dibujos_de_caracteres()
    trozos_del_arma_secreta()
    rectangulos()
    sonido()


# ------------------------------------------------------------ listas de graficos
#
# p00:4CB1 recorre en IX una lista de entradas de 6 bytes hasta un 0: el
# primero dice en que tercios de la pantalla van (bits 0-2: abajo, medio,
# arriba) y si hay que poner otro banco (bit 3; con el bit 4 el 15 en
# 0x8000, sin el 16-17-18); luego el RLE de los dibujos, el primer caracter
# y el RLE de los colores. p00:4D1B recorre otra de 4 bytes hasta un 0
# (caracter de origen, de destino, tercios y vuelta, cuantos): copia
# caracteres de la VRAM dandoles la vuelta, no lee nada mas de la ROM.

def lista(paso):
    def recorre(v, a):
        while v(a):
            a += paso
        return a + 1
    return recorre


def ventana_entrada(v, banderas):
    if not banderas & 0x08:
        return v
    if banderas & 0x10:
        return B.Ventana((v.s[0], 15, v.s[2]))
    return B.Ventana((16, 17, 18))


def graficos(v, a, sitio):
    """La lista de p00:4CB1 en a y los RLE de cada entrada."""
    fin = lista(6)(v, a)
    B.declara(v, a, fin, "graficos_%04X" % a,
              "lista de graficos (p00:4CB1): entradas de 6 bytes (tercios y banco, RLE de los "
              "dibujos, primer caracter, RLE de los colores) y un 0", [sitio], F=6)
    k = a
    while v(k):
        w = ventana_entrada(v, v(k))
        for off, que in ((1, "dibujos"), (4, "colores")):
            p = v.w(k + off)
            B.declara(w, p, rle(w, p), "rle_%04X" % p,
                      "los %s de una entrada de la lista de graficos de %d:%04X, en RLE "
                      "(p00:4B3C)" % (que, v.banco(a), a), ["p00:4CFF" if que == "dibujos" else "p00:4D11"],
                      F=16)
        k += 6


def todo_graficos():
    for a, v, sitio in B.punteros(0x4CB1, "IX"):
        graficos(v, a, sitio)
    for a, v, sitio in B.punteros(0x4D1B, "IX") + B.punteros(0x4D17, "IX"):
        B.declara(v, a, lista(4)(v, a), "copias_%04X" % a,
                  "lista de copias de caracteres con la vuelta dada (p00:4D1B): de 4 en 4 "
                  "(origen, destino, tercios y vuelta, cuantos) y un 0", [sitio], F=4)
    # las tablas por fase del banco 16 (16-17-18 puestos por p00:4186): la
    # lista de graficos (p00:4FDB, HL = 0x5FFE + 2 x fase), la de copias
    # (p00:4FF5, 0x6014 + 2 x fase) y la de p00:51EE (0x602A + 2 x fase)
    v = B.Ventana((16, 17, 18))
    for base, n, que, sitio in ((0x6000, 11, "graficos", "p00:4FE1"),
                                (0x6016, 11, "copias", "p00:4FFB"),
                                (0x602C, 11, "51EE", "p00:51F4")):
        B.declara(v, base, base + 2 * n, "por_fase_%04X" % base,
                  "una palabra por fase (las 11; la fase 1 es la primera): %s" % que, [sitio],
                  F="w8")
        for k in range(n):
            p = v.w(base + 2 * k)
            if que == "graficos":
                graficos(v, p, sitio)
            elif que == "copias":
                B.declara(v, p, lista(4)(v, p), "copias_%04X" % p,
                          "lista de copias de caracteres con la vuelta dada de la fase %d (p00:4D1B)"
                          % (k + 1), [sitio], F=4)
            else:
                cambios(v, p, k + 1)


def cambios(v, a, fase):
    """p00:51EE: los cambios de graficos de la fase a mitad de camino, de 7 en 7
    (posicion del scroll, lista de graficos, lista de copias, un byte que va a
    0xE405) hasta una posicion 0xFFFF; cuando el scroll llega justo a una, se
    cargan sus dos listas (p00:5210)."""
    k = a
    while v.w(k) != 0xFFFF:
        graficos(v, v.w(k + 2), "p00:521F")
        q = v.w(k + 4)
        B.declara(v, q, lista(4)(v, q), "copias_%04X" % q,
                  "lista de copias de caracteres con la vuelta dada (p00:4D1B), de un cambio de "
                  "graficos a mitad de la fase %d" % fase, ["p00:522B"], F=4)
        k += 7
    B.declara(v, a, k + 2, "cambios_%04X" % a,
              "los cambios de graficos a mitad de la fase %d (p00:51EE): de 7 en 7, la posicion del "
              "scroll, la lista de graficos, la de copias y el byte de 0xE405; acaba en 0xFFFF" % fase,
              ["p00:51F7"], F=7)


# ------------------------------------------------------------ tablas con indice
#
# Un `ld hl,TABLA` y, como mucho cinco instrucciones despues, lo que le suma
# el indice: p00:4A5A (palabra A), p00:4089 (byte A), p00:4A6E, o sumarle DE
# o BC. La tabla es del banco que hay puesto en esa ranura cuando corre la
# instruccion (el reparto lo da el trazador de cartucho entero; si hay mas de
# uno distinto, no se declara) y va de su base hasta lo siguiente que hay:
# otra tabla de estas, un bloque de otro lector, codigo, lo que apunta otra
# instruccion o un byte que lee otra al jugar. Su tamano no sale de
# recorrerla: el indice lo da quien llama.

INDEXA = ("call L_4A5A", "call 04a5ah", "call L_4089", "call 04089h", "call L_4A6E",
          "call 04a6eh", "add hl,de", "add hl,bc")


def leido_en_campana():
    import json
    import os
    d = {}
    for carpeta in (os.path.join(B.RAIZ, "work", "cob"), os.path.join(B.RAIZ, "work", "cob_v1")):
        if not os.path.isdir(carpeta):
            continue
        for fn in sorted(os.listdir(carpeta)):
            if fn.endswith(".json"):
                for k, v in json.load(open(os.path.join(carpeta, fn)))["lector"].items():
                    b, a = k.split(":")
                    bl, pc = v.split(":")
                    d.setdefault((int(b), int(a, 16)), (int(bl), int(pc, 16)))
    return d


def indexadas():
    import os
    import re
    from paginas import ORG, N_PAGINAS
    import quien_lee
    t = B.trazador()
    bases = {}
    for p in range(N_PAGINAS):
        ruta = os.path.join(B.RAIZ, "src", "%s_p%02d.asm" % (B.PREFIJO, p))
        if not os.path.exists(ruta) or not any(B.codigo_trazado(p)):
            continue
        ins = []
        for ln in open(ruta, encoding="utf-8"):
            m = re.match(r"^\t([^;]*?)\s*;([0-9a-f]{4})\b", ln)
            if m:
                ins.append((int(m.group(2), 16), m.group(1).strip()))
        for k, (a, x) in enumerate(ins):
            m = re.match(r"ld hl,(?:0([0-9a-f]{4})h|L_([0-9A-F]{4})|l([0-9a-f]{4})h)$", x)
            if not m or not any(y in INDEXA for _, y in ins[k + 1:k + 6]):
                continue
            hl = int(m.group(1) or m.group(2) or m.group(3), 16)
            if not 0x4000 <= hl < 0xC000:
                continue
            confs = t.config_de.get((p, a), set())
            bs = {B.Ventana(s).banco(hl) for s in confs}
            if len(bs) != 1:
                continue
            b = bs.pop()
            s = sorted(confs)[0]
            bases.setdefault((b, hl), (s, []))[1].append("p%02d:%04X" % (p, a))
    ap = set(quien_lee.apuntadores(t))
    leido = leido_en_campana()
    for (b, hl), (s, quien) in sorted(bases.items()):
        cod = B.codigo_trazado(b)
        if cod[hl - ORG[b]] or any(x["p"] == b and x["ini"] <= hl < x["fin"] for x in B.BLOQUES):
            continue
        fin = ORG[b] + 0x2000
        for (b2, h2) in bases:
            if b2 == b and hl < h2 < fin:
                fin = h2
        for x in B.BLOQUES:
            if x["p"] == b and hl < x["ini"] < fin:
                fin = x["ini"]
        base_pc = leido.get((b, hl))
        for i in range(hl - ORG[b], fin - ORG[b]):
            x = leido.get((b, ORG[b] + i))
            otro = x is not None and x != base_pc and x[1] not in (0x408A, 0x4A60, 0x4A62)
            if cod[i] or (i > hl - ORG[b] and ((b, ORG[b] + i) in ap or otro)):
                fin = ORG[b] + i
                break
        B.declara(B.Ventana(s), hl, fin, "tabla_%04X" % hl,
                  "tabla que se lee desde HL = 0x%04X con un indice (p00:4A5A, p00:4089, add hl,de...); "
                  "va de su base hasta lo siguiente que hay (otra tabla, otro bloque, codigo, un puntero "
                  "de otra instruccion o un byte que lee otra al jugar): el tamano no sale de "
                  "recorrerla, el indice lo da quien llama" % hl, quien, F=16)


def despues():
    rle_medidos()
    indexadas()
    medidos()


# ------------------------------------------------------------------ el mapa
#
# p00:5345 (bancos 23-24-25, puestos por p00:533C) pinta el decorado de la
# fase columna a columna: el mapa de la fase (palabra de p24:946F + 2 x fase)
# va en columnas de 6 bytes (6 bloques de arriba abajo, el scroll / 4 da la
# columna) y cada byte es un bloque de 4 x 4 caracteres: del 0 al 3, los
# comunes de p23:6021 (16 bytes cada uno); del 4 en adelante, los de la fase
# (palabra de p23:5FFE + 2 x fase): los N primeros de 16 bytes (N en p23:6015
# + fase; 0xFB = todos) y los demas de 8, que p00:53B4 completa con ceros.
# Los once mapas van seguidos de p24:9487 a p25:A687, y las tablas de bloques
# de p23:6061 a p24:9471.

def mapa():
    v = B.Ventana((23, 24, 25))
    B.declara(v, 0x946F, 0x9487, "mapas_por_fase",
              "un puntero por fase al mapa del decorado (p00:535B: 0x946F + 2 x fase; la palabra "
              "0 no la pide nadie: la fase va de 1 a 11; las fases 1 y 2, y la 4 y la 5, comparten "
              "mapa)", "p00:5361", F="w8")
    mapas = sorted({v.w(0x946F + 2 * f) for f in range(1, 12)}) + [0xA687]
    for a, b in zip(mapas, mapas[1:]):
        fs = [f for f in range(1, 12) if v.w(0x946F + 2 * f) == a]
        B.declara(v, a, b, "mapa_%04X" % a,
                  "el mapa del decorado de la fase %s: %d columnas de 6 bloques (p00:5388 lee una "
                  "columna cada 4 pasos de scroll); va hasta el mapa siguiente" % (
                      " y ".join(map(str, fs)), (b - a) // 6), "p00:5388", F=6)
    B.declara(v, 0x6000, 0x6016, "bloques_por_fase",
              "un puntero por fase a su tabla de bloques de 4 x 4 (p00:537E: 0x5FFE + 2 x fase)",
              "p00:5381", F="w8")
    B.declara(v, 0x6016, 0x6021, "bloques_grandes",
              "uno por fase: cuantos bloques de la fase son de 16 bytes (los demas son de 8; 0xFB: "
              "todos) (p00:539E: 0x6015 + fase)", "p00:53A5", F=11)
    B.declara(v, 0x6021, 0x6061, "bloques_comunes",
              "los cuatro bloques comunes (0-3) de 4 x 4 caracteres, de 16 bytes (p00:5394)",
              "p00:53E6", F=16)
    tablas = sorted({v.w(0x5FFE + 2 * f) for f in range(1, 12)}) + [0x9471]
    for a, b in zip(tablas, tablas[1:]):
        fs = [f for f in range(1, 12) if v.w(0x5FFE + 2 * f) == a]
        n16 = min(v(0x6015 + f) for f in fs)
        n16 = min(n16, (b - a) // 16)
        n8 = (b - a - 16 * n16) // 8
        B.declara(v, a, min(b, 0x946F), "bloques_%04X" % a,
                  "los bloques de 4 x 4 caracteres de la fase %s: %d de 16 bytes y %d de 8 (p00:53B4 "
                  "completa estos con ceros); van hasta la tabla siguiente%s" % (
                      " y ".join(map(str, fs)), n16, n8,
                      " (sus 2 ultimos bytes, p24:946F-9470, van con la tabla de mapas: son su palabra 0, sin uso)"
                      if b == 0x9471 else ""), "p00:53E6", F=16)


# ------------------------------------------------- RLE medidos jugando
#
# Muchos RLE llegan con el puntero sacado de una tabla o de una ficha de
# objeto: el trazador no los ve. La campana (tools/cobertura.py) apunta que
# instruccion lee cada byte: un RLE empieza donde se lee un byte de control
# (p00:4B3F hacia la VRAM, p00:55AD hacia la RAM) y el de delante no es de
# otro RLE (o es su 0 final); desde ahi se recorre con el formato hasta su
# fin, y el bloque es exacto.

def rle2(v, a):
    """p00:55CD: 0 acaba; el byte de control lleva en los bits 7-6 que hacer
    con los n (bits 5-0): 00 repite n veces el byte de detras, 01 escribe n
    seguidos subiendo de uno en uno desde el de detras, 10 bajando, 11 copia
    los n de detras."""
    while True:
        x = v(a)
        a += 1
        if x == 0:
            return a
        a += (x & 0x3F) if x >= 0xC0 else 1


RLES = (
    ("vram", {0x4B3F}, {0x4B3F, 0x4B4D, 0x4B57, 0x4B37, 0x4B39}, "p00:4B3C",
     "graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80 repite el byte de detras, "
     "0x80 y una direccion nueva, 0x81-0xFF copian n & 0x7F bytes"),
    ("ram", {0x55AD}, {0x55AD, 0x55BD, 0x55C1, 0x55A9, 0x55AB}, "p00:55AD",
     "datos comprimidos a la RAM (p00:55AD, el mismo formato que p00:4B3C): 0 acaba, n < 0x80 "
     "repite, 0x80 y un destino nuevo, 0x81-0xFF copian n & 0x7F bytes"),
    ("ram2", {0x55CD}, {0x55CD, 0x55E5, 0x55E9, 0x55F1, 0x55FA, 0x55C9, 0x55CB}, "p00:55CD",
     "datos comprimidos a la RAM (p00:55CD): 0 acaba; bits 7-6 del byte de control, con n en los "
     "bits 5-0: 00 repite n veces el byte de detras, 01 n seguidos subiendo desde el de detras, "
     "10 bajando, 11 copia los n de detras"),
)


def rle_medidos():
    leido = leido_en_campana()
    from paginas import ORG
    for nom, control, todos, lector, texto in RLES:
        de = {k for k, (bl, pc) in leido.items() if bl == 0 and pc in todos}
        ctl = {k for k, (bl, pc) in leido.items() if bl == 0 and pc in control}
        for (b, a) in sorted(ctl):
            prev = (b, a - 1)
            if a > ORG[b] and prev in de and not (prev in ctl and ROM_byte(b, a - 1) == 0):
                continue
            v = ventana_seguida(b)
            fin = (rle2 if nom == "ram2" else rle)(v, a)
            B.declara(v, a, fin, "rle_%s_%04X" % (nom, a),
                      texto + "; empieza donde la campana de tools/cobertura.py lee su primer byte "
                      "de control y se recorre hasta su 0", [lector], F=16)


def ROM_byte(b, a):
    from paginas import ORG
    return B.ROM[b * 0x2000 + a - ORG[b]]


def ventana_seguida(b):
    """El banco b en su ranura y, en las de detras, los bancos que le siguen
    si alli es donde van (los RLE que no caben en un banco siguen en el de al
    lado: 14 -> 15, 16 -> 17 -> 18, 20 -> 21 -> 22, 6 -> 7, 30 -> 31, medido)."""
    from paginas import ORG
    s = [1, 2, 3]
    k = (ORG[b] - 0x6000) >> 13
    if ORG[b] == 0x4000:
        return B.ventana_de(b)
    s[k] = b
    for j in range(k + 1, 3):
        n = b + (j - k)
        if n < 32 and ORG[n] == 0x6000 + 0x2000 * j:
            s[j] = n
    for j in range(k - 1, -1, -1):
        n = b - (k - j)
        if n >= 0 and ORG[n] == 0x6000 + 0x2000 * j:
            s[j] = n
    return B.Ventana(tuple(s))


# ------------------------------------------------- lo que aparece por fase
#
# p01:6DCD (bancos 6 y 7 en 0x8000 y 0xA000, p00:416B): por fase, una lista
# (palabra de p06:8000 + 2 x (fase - 1)) de entradas de 3 bytes: la posicion
# del scroll y lo que sale; acaba en una posicion 0xFFFF (p01:6DE4 la compara
# con el scroll de 0xE363 y su tercer byte se lee igual: es el primero de la
# lista siguiente). p01:711B la recorre con el indice de 0xE468.

def apariciones():
    v = B.Ventana((1, 6, 7))
    B.declara(v, 0x8000, 0x8016, "apariciones_por_fase",
              "un puntero por fase a su lista de apariciones (p01:6DCD: 0x8000 + 2 x (fase - 1))",
              "p01:6DD2", F="w8")
    for a in sorted({v.w(0x8000 + 2 * f) for f in range(11)}):
        k = a
        while v.w(k) != 0xFFFF:
            k += 3
        fs = [f + 1 for f in range(11) if v.w(0x8000 + 2 * f) == a]
        B.declara(v, a, k + 2, "apariciones_%04X" % a,
                  "lo que aparece en la fase %s: de 3 en 3, la posicion del scroll y lo que sale "
                  "(p01:6DDC); acaba en la posicion 0xFFFF (su tercer byte, que tambien se lee, es el "
                  "primero de lo que va detras)" % " y ".join(map(str, fs)), "p01:6DDC", F=3)


# ------------------------------------------------- lo leido jugando
#
# Lo que no recorre ningun lector de arriba pero se lee jugando: rachas de
# bytes seguidos que lee la misma instruccion (medido con tools/cobertura.py
# y tools/lee_sonidos.py), juntando dos rachas de la misma rutina si entre
# ellas hay como mucho 40 bytes que no lee nadie ni apunta ninguna otra
# instruccion (entradas de la misma tabla que las partidas no han pedido).

def medidos():
    import quien_lee
    from paginas import ORG, N_PAGINAS
    lector = leido_en_campana()
    ap = set(quien_lee.apuntadores(B.trazador()))

    def misma(x, y):
        return x == y or (x[0] == y[0] and abs(x[1] - y[1]) <= 0x30)

    for p in range(N_PAGINAS):
        cod = B.codigo_trazado(p)
        tapado = bytearray(cod)
        for x in B.BLOQUES:
            if x["p"] == p:
                for i in range(x["ini"] - ORG[p], x["fin"] - ORG[p]):
                    tapado[i] = 1
        for i, f in B.a_mano(p):
            for k in range(i - ORG[p], f - ORG[p]):
                tapado[k] = 1
        rachas = []
        i = 0
        while i < 0x2000:
            pc = lector.get((p, ORG[p] + i))
            if tapado[i] or pc is None:
                i += 1
                continue
            j = i
            while j < 0x2000 and not tapado[j] and lector.get((p, ORG[p] + j)) == pc:
                j += 1
            rachas.append([i, j, [pc], 0])
            i = j
        juntas = []
        for r in rachas:
            if juntas:
                u = juntas[-1]
                hueco = range(u[1], r[0])
                if (len(hueco) <= 40
                        and all(not tapado[k] and lector.get((p, ORG[p] + k)) is None for k in hueco)
                        and not any((p, ORG[p] + k) in ap for k in range(u[1], r[0] + 1))
                        and any(misma(x, y) for x in u[2] for y in r[2])):
                    u[1] = r[1]
                    u[3] += len(hueco)
                    for x in r[2]:
                        if x not in u[2]:
                            u[2].append(x)
                    continue
            juntas.append(list(r))
        v = ventana_seguida(p)
        for i, j, pcs, sin in juntas:
            txt = ("%d bytes que lee%s %s al jugar (medido ejecutando el cartucho, "
                   "tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que se lee seguido" % (
                       j - i, "n" if len(pcs) > 1 else "",
                       ", ".join("p%02d:%04X" % x for x in pcs[:6])))
            if sin:
                txt += (", con %d sin leer entre lecturas de la misma rutina: entradas de la misma "
                        "tabla que las partidas no han pedido" % sin)
            B.declara(v, ORG[p] + i, ORG[p] + j, "leido_%04X" % (ORG[p] + i), txt + ")",
                      ["p%02d:%04X" % x for x in pcs], F=16)


# ------------------------------------------------------------------ el sonido
#
# p10:602F arranca el sonido A (del 1 al 0x53; 0x81-0x85 son ordenes): la
# tabla de p10:7504 + 2 x A da su cabecera, de la que p10:6089 copia siempre
# 18 bytes a 0xE282 (las cabeceras se solapan: una sola ocupa 2 + 2 x canales):
# [canales][prioridad] y una palabra por canal, la partitura. Las partituras
# estan en el 10 y el 11 y en el banco que p10:62EC pone en 0xA000 (12, 13, 9
# o 25, segun 0xE2BE). Lo que lee el motor de cada sonido lo mide
# tools/lee_sonidos.py ejecutandolo (work/cob/sonidos.json).

def sonido():
    import json
    import os
    from paginas import ORG
    v = B.Ventana((10, 11, 12))
    B.declara(v, 0x7504, 0x75AC, "sonidos",
              "un puntero por sonido a su cabecera (p10:6079: 0x7504 + 2 x numero, del 1 al 0x53; "
              "la palabra 0 no la pide nadie)", "p10:6082", F="w8")
    cab = [v.w(0x7504 + 2 * n) for n in range(1, 0x54)]
    fin = max(c + 18 for c in cab if 0x75AC <= c < 0x8000)
    B.declara(v, 0x75AC, fin, "cabeceras",
              "las cabeceras de los sonidos: p10:6089 copia 18 bytes de cada una ([canales]"
              "[prioridad] y una palabra por canal, la partitura); se solapan porque cada una solo "
              "usa 2 + 2 x canales", "p10:608C", F=18)
    # las ordenes de la partitura: 0xE0-0xFE las reparte p10:6B3D con la tabla
    # de 0x6B52 (31 palabras: la 0xFF acaba el canal antes, p10:644D, y en
    # 0x6B90 empieza la rutina de la 0xE0) y 0xD0-0xDF p10:6E27 con la de 0x6E37
    B.declara(v, 0x6B52, 0x6B90, "ordenes_E0_FE",
              "las rutinas de las ordenes 0xE0-0xFE de la partitura: p10:6B4D toma la "
              "palabra (orden & 0x1F) x 2 y salta alli (la 0xFF no llega: p10:644D)",
              "p10:6B4D", F="w8")
    B.declara(v, 0x6E37, 0x6E57, "ordenes_D0_DF",
              "las rutinas de las ordenes 0xD0-0xDF de la partitura: p10:6E32 toma la "
              "palabra (orden & 0x0F) x 2 y salta alli", "p10:6E32", F="w8")
    ruta = os.path.join(B.RAIZ, "work", "cob", "sonidos.json")
    if not os.path.exists(ruta):
        return
    medido = json.load(open(ruta))
    por = medido["por_sonido"]
    quien = medido["lector"]
    de = {}
    for n, xs in por.items():
        for k in xs:
            b, a = k.split(":")
            de.setdefault((int(b), int(a, 16)), set()).add(int(n, 16))
    tapado = set()
    for x in B.BLOQUES:
        for a in range(x["ini"], x["fin"]):
            tapado.add((x["p"], a))
    for b in sorted({b for b, _ in de}):
        if b == 0:
            continue
        cod = B.codigo_trazado(b)
        xs = sorted(a for bb, a in de if bb == b and not cod[a - ORG[b]] and (b, a) not in tapado)
        tramos = []
        for a in xs:
            if tramos and a <= tramos[-1][1] + 1:
                tramos[-1][1] = a
            else:
                tramos.append([a, a])
        w = ventana_seguida(b)
        for i, f in tramos:
            ns = sorted(set().union(*[de.get((b, a), set()) for a in range(i, f + 1)]))
            lee = sorted({quien.get("%d:%04X" % (b, a)) for a in range(i, f + 1)} - {None})
            lee = ["p%02d:%s" % (int(x.split(":")[0]), x.split(":")[1]) for x in lee
                   if not x.startswith("-")] or ["p10:644C"]
            B.declara(w, i, f + 1, "partitura_%04X" % i,
                      "partitura que lee el motor de sonido (%s) al tocar %s %s "
                      "(medido ejecutando el motor, tools/lee_sonidos.py; el tamano es lo que se lee "
                      "seguido)" % (", ".join(lee[:4]) + (" y otras" if len(lee) > 4 else ""),
                                    "los sonidos" if len(ns) > 1 else "el sonido",
                                    ", ".join("0x%02X" % n for n in ns[:8]) + (" y otros" if len(ns) > 8 else "")),
                      lee, F=16)


# ------------------------------------------------- sprites y juegos de listas
#
# p00:50C2 recorre en HL una lista de dibujos de sprite de 3 en 3 hasta un 0:
# el primer dibujo (x 8 + 0x1800) y el RLE que va ahi. p00:4E5A recorre en
# IX otra de 4 en 4 hasta un 0: sprites copiados con espejo dentro de la
# VRAM (no lee mas de la ROM). p00:511B (y 5124) toma de HL cuatro palabras:
# lista de graficos, de copias, de dibujos de sprite y de espejos.

def fuera(v, a, que):
    if not 0x4000 <= a < 0xC000 or v.banco(a) is None:
        B.AVISOS.append("%s: puntero 0x%04X fuera del cartucho" % (que, a))
        return True
    return False


def sprites(v, a, sitio, que="una lista"):
    if fuera(v, a, "sprites de " + que):
        return
    k = a
    while v(k):
        p = v.w(k + 1)
        B.declara(v, p, rle(v, p), "rle_%04X" % p,
                  "dibujos de sprite en RLE (p00:4B3C) de %s de p00:50C2 (%d:%04X)" % (que, v.banco(a), a),
                  ["p00:50D5"], F=16)
        k += 3
    B.declara(v, a, k + 1, "sprites_%04X" % a,
              "lista de dibujos de sprite (p00:50C2): de 3 en 3, el primer dibujo y el RLE que va "
              "ahi; acaba en 0", [sitio], F=3)


def espejos(v, a, sitio):
    if fuera(v, a, "espejos de " + sitio):
        return
    B.declara(v, a, lista(4)(v, a), "espejos_%04X" % a,
              "lista de sprites copiados con espejo dentro de la VRAM (p00:4E5A): de 4 en 4 (como, "
              "cuantos, origen, destino); acaba en 0", [sitio], F=4)


def juego(v, a, sitio, que):
    """Las cuatro palabras de p00:5124."""
    B.declara(v, a, a + 8, "juego_%04X" % a,
              "%s: cuatro punteros (p00:5124): lista de graficos, de copias con vuelta, de dibujos "
              "de sprite y de espejos" % que, [sitio], F="w4")
    if not fuera(v, v.w(a), "graficos de " + que):
        graficos(v, v.w(a), "p00:512C")
    q = v.w(a + 2)
    if not fuera(v, q, "copias de " + que):
        B.declara(v, q, lista(4)(v, q), "copias_%04X" % q,
              "lista de copias de caracteres con la vuelta dada (p00:4D1B) de %s" % que, ["p00:5138"], F=4)
    sprites(v, v.w(a + 4), "p00:5142", que)
    espejos(v, v.w(a + 6), "p00:514C")


def todo_sprites():
    v14 = B.Ventana((14, 15, 3))
    for a, sitio in ((0x6ED4, "p00:50A4"), (0x6EDB, "p00:50AA")):
        sprites(v14, a, sitio)
    B.declara(v14, 0x6EEF, 0x6F05, "sprites_por_fase",
              "un puntero por fase a su lista de dibujos de sprite (p00:50B3: 0x6EED + 2 x fase)",
              "p00:50B9", F="w8")
    for f in range(1, 12):
        sprites(v14, v14.w(0x6EED + 2 * f), "p00:50BC", "la fase %d" % f)
    espejos(v14, 0x6EE2, "p00:50E3")
    B.declara(v14, 0x6FAC, 0x6FC2, "espejos_por_fase",
              "un puntero por fase a su lista de sprites con espejo (p00:50EC: 0x6FAA + 2 x fase)",
              "p00:50F2", F="w8")
    for f in range(1, 12):
        espejos(v14, v14.w(0x6FAA + 2 * f), "p00:50F8")
    v20 = B.Ventana((20, 21, 22))
    for a, que, sitio in ((0x6BBC, "un juego de p00:515F", "p00:5162"),
                          (0x6B7B, "un juego de p00:516F (bit 0 de IX+1C a 0)", "p00:5181"),
                          (0x6B83, "un juego de p00:516F (bit 0 de IX+1C a 1)", "p00:5181")):
        juego(v20, a, sitio, que)
    # p00:511B: 0x6B1F + 2 x 0xE440; la palabra 0 vale 2 (0xE440 no es 0 al
    # llegar aqui) y la tabla acaba donde empieza el primer juego (0x6B43)
    B.declara(v20, 0x6B1F, 0x6B43, "juegos_por_e440",
              "un puntero por valor de 0xE440 (del 1 al 0x11; la palabra 0 vale 0x0002 y no se pide) "
              "a un juego de cuatro listas (p00:511B: 0x6B1F + 2 x 0xE440); p00:50FE no entra con "
              "0x0D; acaba donde empieza el primer juego", "p00:5121", F="w8")
    for k in sorted({v20.w(0x6B1F + 2 * k) for k in range(1, 18)}):
        ks = [x for x in range(1, 18) if v20.w(0x6B1F + 2 * x) == k]
        juego(v20, k, "p00:5124", "el juego de 0xE440 = %s" % ", ".join(map(str, ks)))
    # la paleta de cada fase en MSX2 (p00:519C: p16:67DD + 2 x fase); p00:4B94
    # copia 0x40 bytes a 0xECC0 y los lee de 3 en 3 hasta un 0xFF
    v16 = B.Ventana((16, 17, 18))
    B.declara(v16, 0x67DF, 0x67F5, "paletas_por_fase",
              "un puntero por fase a su paleta de MSX2 (p00:51A2: 0x67DD + 2 x fase)", "p00:51A5", F="w8")
    for p in sorted({v16.w(0x67DD + 2 * f) for f in range(1, 12)}):
        k = p
        while v16(k) != 0xFF:
            k += 3
        B.declara(v16, p, k + 1, "paleta_%04X" % p,
                  "una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de 3 en 3, el color, rojo y "
                  "azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a 0xECC0 aunque sea mas "
                  "corta", ["p00:4BA0"], F=3)


# ------------------------------------------------- las paletas de MSX2
#
# p00:4B94 (solo con 0x002D distinto de 0) copia 0x40 bytes de HL a 0xECC0 y
# los lee de 3 en 3 (color, rojo y azul, verde) hasta un 0xFF. Las tablas de
# punteros acaban donde empieza la primera paleta a la que apuntan.

def paleta(v, a, sitio, que):
    k = a
    while v(k) != 0xFF:
        k += 3
    B.declara(v, a, k + 1, "paleta_%04X" % a,
              "paleta de MSX2 (%s; p00:4B94): de 3 en 3, el color, rojo y azul, y verde; acaba en "
              "0xFF. p00:4B9D copia 0x40 bytes a 0xECC0 aunque sea mas corta" % que, [sitio], F=3)


def tabla_de_paletas(v, base, desde, que, sitio):
    ps = {}
    k = desde
    tope = 0xC000
    while base + 2 * k < tope:
        p = v.w(base + 2 * k)
        if not 0x4000 <= p < 0xC000:
            break
        ps.setdefault(p, []).append(k)
        if p > base:
            tope = min(tope, p)
        k += 1
    B.declara(v, base + 2 * desde, base + 2 * k, "paletas_%04X" % base,
              "%s (%s); acaba donde empieza la primera paleta a la que apunta" % (que, sitio),
              [sitio], F="w8")
    return ps


def paletas():
    v = B.Ventana((16, 17, 18))
    paleta(v, 0x67AE, "p00:571E", "la de p00:5718")
    for p, ks in tabla_de_paletas(v, 0x69CC, 1, "un puntero por valor de 0xE440 a la paleta del "
                                  "jefe (p00:5701: 0x69CC + 2 x 0xE440)", "p00:570F").items():
        paleta(v, p, "p00:5712", "jefe %s" % ", ".join(map(str, ks)))
    for p, ks in tabla_de_paletas(v, 0x6B74, 0, "un puntero por valor de A a una paleta "
                                  "(p00:5709: 0x6B74 + 2 x A)", "p00:570F").items():
        paleta(v, p, "p00:5712", "la %s de p00:5709" % ", ".join(map(str, ks)))
    B.declara(v, 0x6CDC, 0x6CF2, "paletas_que_cambian",
              "un puntero por fase a su lista de paletas que cambian cada 4 cuadros (p00:56E4: "
              "0x6CDA + 2 x fase; las fases sin ninguna apuntan a 0x6D5D, que no se lee)", "p00:56EB",
              F="w8")
    B.declara(v, 0x6D5D, 0x6D68, "cuantas_paletas",
              "una por fase: cuantas paletas tiene su lista (p00:56C7: 0x6D5C + fase; 0 = ninguna)",
              "p00:56CD", F=11)
    for f in range(1, 12):
        n = v(0x6D5C + f)
        if not n:
            continue
        lst = v.w(0x6CDA + 2 * f)
        B.declara(v, lst, lst + 2 * n, "paletas_fase_%d" % f,
                  "las %d paletas que se alternan en la fase %d (p00:56F2)" % (n, f), "p00:56F7", F="w8")
        for k in range(n):
            paleta(v, v.w(lst + 2 * k), "p00:56FB", "la %d de la fase %d" % (k, f))


# ------------------------------------------------- los nombres del marcador
#
# p00:4F52 (con 14-15) copia a la VRAM de 0x3278 los 0x48 bytes (nueve
# caracteres) del nombre A de la tabla p14:646C (p00:4F64: lee_palabra y 0x48
# outi). El numero lo elige p04:95CC (nave, casilla y nivel, tabla p04:95F9) y
# p04:95E7 (el escudo): 36 nombres, del 0 (EMPTY) al 0x23.

NOMBRES_ARMAS = ("EMPTY", "SPEED UP #1", "SPEED UP #2", "SPEED UP #3", "SPEED UP #4",
                 "SPEED UP #5", "SPEED UP #6", "SPEED UP #7", "MULTIPLE #1", "MULTIPLE #2",
                 "SHIELD", "FORCE FIELD", "MISSILE", "HOWK MISSILE", "PHOTON MISSILE",
                 "PHOTON HOWK", "NAPALM MISSILE", "NAPALM HOWK", "2WAY MISSILE", "2WAY HOWK",
                 "GUIDED MISSILE", "BEAM", "TAIL BEAM", "UP DOUBLE", "DOWN DOUBLE", "UP LASER",
                 "DOWN LASER", "LASER", "METEOR LASER", "SCREW LASER", "TWINKLE LASER",
                 "FIRE BLASTER", "EXTEND BLASTER", "VECTOR LASER", "RIPPLE LASER",
                 "GALACTIC LASER")


def nombres_de_armas():
    v = B.Ventana((14, 15, 3))
    n = len(NOMBRES_ARMAS)
    B.declara(v, 0x646C, 0x646C + 2 * n, "nombres_del_marcador",
              "un puntero por nombre del marcador (36: p00:4F6E, 0x646C + 2 x A), al dibujo de sus "
              "nueve caracteres", "p00:4F71", F="w8")
    for k, nombre in enumerate(NOMBRES_ARMAS):
        a = v.w(0x646C + 2 * k)
        B.declara(v, a, a + 0x48, "nombre_%02X" % k,
                  "el nombre %d del marcador, %s: nueve caracteres de 8 bytes que p00:4F76 copia a "
                  "la VRAM de 0x3278" % (k, nombre), "p00:4F76", F=8)


# ------------------------------------------------- los dibujos de las secuencias
#
# p26:62A6 pone el dibujo A (0xE5C2) de las pantallas de la historia, la
# consola y el final: su palabra en la tabla p27:8F02 (p00:4A65), y
# p26:6349 lo desempaqueta a 0xCE00 trozo a trozo: dos bytes, uno con
# cuantos caracteres (bits 0-4), el tercio (bits 5-6) y si es el ultimo (bit
# 7), y los caracteres: antes del dibujo 0x40, de 8 en 8 detras de una mascara
# (p26:637A); desde el 0x40, de 6 bits, tres bytes por cada cuatro
# (p26:6390). Recorridos asi, cada dibujo acaba justo donde empieza el
# siguiente, del 0x9014 al 0xA078.

def _dibujo(v, n, a):
    while True:
        a += 2
        x = v(a)
        a += 1
        k = x & 0x1F
        while k > 0:
            if n < 0x40:
                a += 1 + min(8, k)
                k -= min(8, k)
            else:
                t = min(3, k)
                a += t
                k -= t
                if k > 0:
                    k -= 1
        if x & 0x80:
            return a


def dibujos_de_secuencia():
    v = B.Ventana((26, 27, 28))
    n = 0x89
    B.declara(v, 0x8F02, 0x8F02 + 2 * n, "dibujos_de_secuencia",
              "un puntero por dibujo de las secuencias (0x89: p26:62AF, 0x8F02 + 2 x A); los que "
              "no se usan apuntan al 0", "p00:4A6A", F="w8")
    vistos = {}
    for k in range(n):
        vistos.setdefault(v.w(0x8F02 + 2 * k), []).append(k)
    for a, ks in sorted(vistos.items()):
        fin = _dibujo(v, ks[0], a)
        B.declara(v, a, fin, "dibujo_%02X" % ks[0],
                  "el dibujo de secuencia %s (p26:6349): trozos de dos bytes, cuantos caracteres, el "
                  "tercio y el final, y sus caracteres %s" % (
                      ", ".join("0x%02X" % k for k in ks[:6]) + (" y otros" if len(ks) > 6 else ""),
                      "de 8 en 8 con una mascara" if ks[0] < 0x40 else "de 6 bits"),
                  ["p26:634C", "p26:6350", "p26:637C" if ks[0] < 0x40 else "p26:6392"], F=16)
    # cada caracter de un dibujo es un numero (el byte y el bit de la mascara,
    # o 6 bits) que p26:6470 pasa a p00:4F02: los 8 bytes de p20:6018 + 8 x
    # ese numero. El mayor que piden los 137 dibujos es el 0x155, y la tabla
    # acaba justo donde empieza el bloque siguiente (0x6AC8)
    v20 = B.Ventana((20, 21, 22))
    B.declara(v20, 0x6018, 0x6018 + 8 * 0x156, "caracteres_de_secuencia",
              "los caracteres de los dibujos de las secuencias: 8 bytes cada uno, del 0 al 0x155 (el "
              "mayor que piden los dibujos de p27:8F02); p00:4F0B lee el de DE y p00:4F3D lo copia "
              "a la VRAM", "p00:4F3D", F=8)


# ------------------------------------------------- las ondas del SCC
#
# La orden 0xF8 de la partitura elige la forma de onda de un canal del SCC: la
# palabra A de la tabla p10:7904 (p10:6D5F; A x 2 en 8 bits, asi que solo
# cuentan las 128 primeras). p10:737B copia sus 32 muestras al SCC; con el
# bit 7, la onda que cambia, p10:7396 las toma salteadas (de IX+31 en IX+31).
# La tabla acaba donde empieza la primera onda a la que apunta (0x7A1C).

def ondas():
    v = B.Ventana((10, 11, 12))
    ps = [v.w(0x7904 + 2 * k) for k in range(0x8C)]
    tope = min(ps)
    n = (tope - 0x7904) // 2
    B.declara(v, 0x7904, tope, "ondas_del_scc",
              "un puntero por forma de onda del SCC (p10:6D5F, 0x7904 + 2 x A; solo se leen las 128 "
              "primeras); acaba donde empieza la primera onda a la que apunta", "p10:6D68", F="w8")
    for p in sorted(set(ps[:n])):
        B.declara(v, p, p + 0x20, "onda_%04X" % p,
                  "una forma de onda del SCC: 32 muestras que p10:737B copia al canal (o, en la onda "
                  "que cambia, p10:7396 de IX+31 en IX+31)", ["p10:737B"], F=16)


# ------------------------------------------------- tablas de la nave (p04)

def tablas_de_la_nave():
    v = B.Ventana((1, 4, 5))
    B.declara(v, 0x83F3, 0x83F3 + 4 * 16, "movimiento",
              "el paso de la nave por cada direccion de la palanca (los 4 bits de 0xE309): dy y dx "
              "de 16 bits, 4 bytes por direccion (p04:81EB)", ["p04:81F9", "p04:81FD"], F=4)
    B.declara(v, 0x931E, 0x935E, "compras_por_nave",
              "lo que compra cada casilla, una lista de 8 rutinas por nave (p04:9302: la palabra "
              "0xE380 de 0x9316 y la casilla - 1, por p00:4094)", "p00:4098", F="w8")
    # 0x94D0 + 8 x nivel + casilla, con la casilla de 1 a 8: 0x94D0 es el
    # ret de la rutina de antes
    B.declara(v, 0x94D1, 0x94D1 + 8 * 8, "topes_por_arma_secreta",
              "cuanto se puede subir cada casilla con cada nivel del arma secreta: 8 bytes por "
              "nivel (0xE36F de 0 a 7), uno por casilla de 1 a 8 (p04:94BD: 0x94D0 + 8 x nivel + "
              "casilla)", "p04:94CF", F=8)


# ------------------------------------------------- los caracteres que cambian solos
#
# p02:835A (con el 7 en 0xA000): la lista de la fase p07:B1F5 + 2 x fase son
# palabras [animacion][scroll] hasta un scroll 0xFFFF; una animacion es
# [espera][pasos][una palabra por paso]; cada paso, fichas de 10 bytes
# [caracter][marcas][8 bytes] hasta un 0 (p02:83B9).

def animaciones():
    v = B.Ventana((1, 2, 7))
    B.declara(v, 0xB1F7, 0xB1F7 + 2 * 11, "animaciones_por_fase",
              "un puntero por fase a su lista de animaciones de caracteres (p02:836D: 0xB1F5 + 2 x "
              "fase)", "p02:8370", F="w8")
    listas, anims = set(), set()
    for f in range(1, 12):
        listas.add(v.w(0xB1F5 + 2 * f))
    for a in sorted(listas):
        k = a
        while v.w(k + 2) != 0xFFFF:
            anims.add(v.w(k))
            k += 4
        anims.add(v.w(k))
        B.declara(v, a, k + 4, "animaciones_%04X" % a,
                  "una lista de animaciones de caracteres por tramos de scroll: [animacion][scroll] "
                  "hasta un scroll 0xFFFF (p02:8373)", ["p02:8375"], F="w8")
    for a in sorted(anims):
        n = v(a + 1)
        if v(a) == 0:
            B.declara(v, a, a + 1, "animacion_%04X" % a,
                      "una animacion vacia: la espera 0 (p02:838B, nada)", "p02:838B", F=1)
            continue
        B.declara(v, a, a + 2 + 2 * n, "animacion_%04X" % a,
                  "una animacion de caracteres: la espera, cuantos pasos (%d) y una palabra por paso "
                  "(p02:838B)" % n, ["p02:838B", "p02:839F", "p00:4A60"], F=16)
        for k in range(n):
            q = v.w(a + 2 + 2 * k)
            r = q
            while v(r) != 0:
                r += 10
            B.declara(v, q, r + 1, "paso_%04X" % q,
                      "un paso de animacion: fichas de 10 bytes (caracter, tercios y si son colores, "
                      "8 bytes) hasta un 0 (p02:83AA)", ["p02:83AA", "p02:83B9"], F=10)


# ------------------------------------------------- listas de caracteres al bufer
#
# p01:6EDA (con 6 y 7 en 0x8000 y 0xA000): la lista A de la tabla DE, y
# p01:6EE8 la escribe en el bufer: 0 acaba, por debajo de 0x41 salta tantos,
# desde 0x41 es un caracter. Cada tabla acaba donde empieza la primera lista.

def _listas_de(v, base, sitio):
    ps = []
    k = base
    while True:
        p = v.w(k)
        if not base < p < 0xC000 or (ps and k >= min(ps)):
            break
        ps.append(p)
        k += 2
    B.declara(v, base, base + 2 * len(ps), "listas_%04X" % base,
              "un puntero por lista de caracteres para el bufer (%s: la lista A, p01:6EDA); acaba "
              "donde empieza la primera" % sitio, "p00:4A60", F="w8")
    for p in sorted(set(ps)):
        k = p
        while v(k) != 0:
            k += 1
        B.declara(v, p, k + 1, "caracteres_%04X" % p,
                  "una lista de caracteres para el bufer (p01:6EE8): 0 acaba, por debajo de 0x41 "
                  "salta tantos, desde 0x41 un caracter", "p01:6EEA", F=16)


def listas_de_caracteres():
    v = B.Ventana((1, 6, 7))
    for base, sitio in ((0xB070, "p03:BD39"), (0xB183, "p01:7D65"), (0xA91C, "p03:A37D"),
                        (0xAD3F, "p03:BB61"), (0xAA64, "p03:A47F"), (0xAACF, "p03:A493"),
                        (0xAB32, "p03:A49E"), (0xABDD, "p03:A4A9"), (0xAC71, "p03:A4B7"),
                        (0xACD4, "p03:A4C5"), (0xAF5E, "p03:BD34")):
        _listas_de(v, base, sitio)


# ------------------------------------------------- dibujos de caracteres por tabla
#
# Las piezas (p02:8221, p02:82BB) y los enemigos hechos de caracteres
# (p01:79F9) se pintan en el bufer con un rectangulo de caracteres cuyo
# tamano da su ficha (IX+9 x IX+0A, IX+13 x IX+14): el dibujo N empieza en la
# palabra N de su tabla de p08. Sin el tamano de cada uno, cada dibujo va de
# su puntero al siguiente.

def _dibujos(v, base, n, fin_zona, que, lectores_tabla, lector):
    ps = sorted({v.w(base + 2 * k) for k in range(n)})
    B.declara(v, base, base + 2 * n, "tabla_%04X" % base,
              "un puntero por dibujo de %s (%d)" % (que, n), lectores_tabla, F="w8")
    for i, p in enumerate(ps):
        fin = ps[i + 1] if i + 1 < len(ps) else fin_zona
        if fin > p:
            B.declara(v, p, fin, "dibujo_%04X" % p,
                      "un dibujo de %s: caracteres en filas, hasta el dibujo siguiente (el tamano lo "
                      "da la ficha)" % que, lector, F=16)


def dibujos_de_caracteres():
    v = B.Ventana((1, 2, 8))
    _dibujos(v, 0xB834, 256, 0xB834, "las piezas (p02:8221: 0xB834 + 2 x IX+7)",
             ["p02:8232", "p02:82C2"], "p02:8242")
    _dibujos(v, 0xBD4C, 0x90, 0xBD0C, "los enemigos de caracteres (p01:79F9: 0xBD4C + 2 x "
             "IX+32)", ["p00:4A6A"], "p01:7A2A")


# ------------------------------------------------- los trozos del arma secreta
#
# p26:71DF: los sprites de un nivel del arma secreta en el plano de la nave:
# la palabra 0xE380 de p26:720C y, en esa tabla, la del nivel (de 1 a 7); la
# lista es cuantos sprites y, por cada uno, la y, la x y el dibujo.

def trozos_del_arma_secreta():
    v = B.Ventana((26, 27, 28))
    B.declara(v, 0x720C, 0x7214, "trozos_por_nave",
              "un puntero por nave a su tabla de trozos del arma secreta (p26:71E2: 0x720C + 2 x "
              "0xE380)", "p00:4A60", F="w8")
    for n in range(4):
        t = v.w(0x720C + 2 * n)
        B.declara(v, t, t + 16, "trozos_nave_%d" % n,
                  "los trozos del arma secreta de la nave %d: un puntero por nivel, del 0 (que no se "
                  "pide) al 7 (p26:71EB)" % n, "p00:4A60", F="w8")
        for lvl in range(1, 8):
            p = v.w(t + 2 * lvl)
            B.declara(v, p, p + 1 + 3 * v(p), "trozo_%04X" % p,
                      "el trozo %d del arma secreta de la nave %d: cuantos sprites y, por cada uno, "
                      "la y, la x y el dibujo (p26:71EE)" % (lvl, n), ["p26:71EE", "p26:71F4"], F=16)


# ------------------------------------------------- rectangulos de p26:6064
#
# p26:6067: con IX en la cabecera, el destino (2 bytes), las filas, los bytes
# por fila y el tipo, y detras los datos: tipo 0 tal cual (filas x bytes), 1
# RLE de p00:55AD, 2 o mas el de p00:55CD (p26:6080). p26:6064 toma la
# palabra A de una tabla.

def _rect(v, a, nom, que, sitio):
    filas, ancho, tipo = v(a + 2), v(a + 3), v(a + 4)
    if tipo == 0:
        fin = a + 5 + filas * ancho
    elif tipo == 1:
        fin = rle(v, a + 5)
    else:
        fin = rle2(v, a + 5)
    B.declara(v, a, fin, nom,
              "%s: el destino, %d filas de %d bytes y el tipo %d (%s), y los datos (p26:6067)" % (
                  que, filas, ancho, tipo,
                  ("tal cual", "RLE de p00:55AD", "el formato de p00:55CD")[min(tipo, 2)]),
              [sitio, "p26:6080"], F=16)


def _tabla_de_rects(v, base, que, sitio):
    ps = []
    k = base
    while True:
        p = v.w(k)
        if not 0x4000 <= p < 0xC000 or (ps and k >= min(ps)) or len(ps) > 64:
            break
        ps.append(p)
        k += 2
    B.declara(v, base, base + 2 * len(ps), "rectangulos_%04X" % base,
              "un puntero por %s (p26:6064: la palabra A); acaba donde empieza el primero" % que,
              "p00:4A60", F="w8")
    for p in sorted(set(ps)):
        _rect(v, p, "rect_%04X" % p, que, "p26:606D")


def rectangulos():
    _tabla_de_rects(B.Ventana((26, 27, 28)), 0x7073, "plano de nave (p26:7069: 0x7073 + 2 x 0xE380)",
                    "p26:706C")
    _tabla_de_rects(B.Ventana((26, 27, 29)), 0xB467, "cuadro de la animacion de p27:84A7",
                    "p27:84AA")
    _tabla_de_rects(B.Ventana((26, 27, 29)), 0xB2E7, "cuadro de la animacion de p27:858A",
                    "p27:858A")
    _rect(B.Ventana((26, 27, 22)), 0xB8F6, "rect_B8F6", "el dibujo que parpadea de p27:8CEB",
          "p27:8CF6")


# ------------------------------------------------- la demostracion
#
# p00:5D73 (el 19 en 0xA000): por fase (1, 2 o 3, de 0xE33B), la grabacion
# de p19:B568 + 2 x fase, de 2 en 2: cuantos cuadros y que se pulsa (lo de
# 0xE308/0xE309, con el disparo puesto). Un 0xFF en los cuadros acaba (el
# byte de detras tambien se lee: es el primero de la grabacion siguiente).

def demostracion():
    v = B.Ventana((1, 2, 19))
    B.declara(v, 0xB56A, 0xB570, "demos",
              "un puntero por fase de la demostracion (la 1, la 2 y la 3; p00:5D96: 0xB568 + 2 x fase)",
              "p00:5D99", F="w8")
    for f in (1, 2, 3):
        a = v.w(0xB568 + 2 * f)
        k = a
        while v(k) != 0xFF:
            k += 2
        B.declara(v, a, k + 1, "demo_%d" % f,
                  "la grabacion de la demostracion de la fase %d (p00:5D73): %d pares de cuantos cuadros y "
                  "que se pulsa; acaba en 0xFF" % (f, (k - a) // 2), "p00:5DA1", F=2)


# ------------------------------------------------- los tipos de enemigo
#
# p01:768B: la ficha de cada tipo (1-74, los del despachador de p01:7479)
# en p19:A489 + 7 x tipo: sprites (bits 0-5; bit 6 en caracteres), vidas,
# ancho, alto, dibujo, color y caracter (a IX+0B, 0D, 0E, 0F, 30, 31, 32).

def tipos_de_enemigo():
    v = B.Ventana((1, 2, 19))
    B.declara(v, 0xA490, 0xA490 + 7 * 74, "tipos_de_enemigo",
              "la ficha de cada tipo de enemigo, del 1 al 74 (p01:768B: 0xA489 + 7 x tipo): sprites "
              "(bits 0-5; con el bit 6 va en caracteres), vidas, ancho, alto, dibujo, color y caracter",
              "p01:76A1", F=7)

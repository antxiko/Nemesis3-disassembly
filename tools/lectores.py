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

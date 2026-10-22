#!/usr/bin/env python3
"""EL CONTENIDO de la web de este cartucho: lo unico que es de este juego.

jekyll.py y make_web.py son la maquinaria y no llevan dentro el nombre de
ningun juego: lo leen de aqui.

Todas las cifras de aqui estan medidas sobre este cartucho, con las
herramientas de tools/: CODIGO y DATOS los imprime tools/presupuesto.py
(make sanity) y RUTINAS, INSTRUCCIONES y COMENTARIOS los da
tools/densidad_total.py.
"""

NOMBRE = "Nemesis 3 - The Eve of Destruction"
CATALOGO = "RC-764"
ANIO = 1988
REPOSITORIO = "https://github.com/antxiko/Nemesis3-disassembly"

CODIGO = 62318
DATOS = 199826
RUTINAS = 4162
INSTRUCCIONES = 29083
COMENTARIOS = 12003


def densidad(idioma):
    """El porcentaje comentado, con la coma o el punto de cada idioma."""
    d = "%.1f" % (100.0 * COMENTARIOS / INSTRUCCIONES)
    return d.replace(".", ",") if idioma == "es" else d


PIE_LEGAL = {
    "es": "<em>Nemesis 3 - The Eve of Destruction</em> (ゴーファーの野望 エピソードII, "
          "<em>Gofer no Yabou Episode II</em>) lo public&oacute; Konami para MSX en 1988; "
          "su n&uacute;mero de cat&aacute;logo es RC-764 y son 256 KB. Todos los derechos "
          "sobre el juego siguen siendo de sus titulares. Este trabajo es de "
          "preservaci&oacute;n, estudio y documentaci&oacute;n, y la imagen del cartucho "
          "no se distribuye.",
    "en": "<em>Nemesis 3 - The Eve of Destruction</em> (<em>Gofer no Yabou Episode "
          "II</em>) was published by Konami for the MSX in 1988; its catalogue number "
          "is RC-764 and it is 256 KB. All rights in the game remain with their holders. "
          "This is preservation, study and documentation work, and the cartridge image "
          "is not distributed.",
}

PORTADA = {
    "es": dict(
        titulo="Nemesis 3 - desensamblado comentado",
        claim="Las once fases y c&oacute;mo se ganan la 10 y la 11, las entradas "
              "secretas, las cuatro naves con todas sus armas disparando, los enemigos, "
              "los jefes, la historia y el final animados, las claves de la pausa y las "
              "26 m&uacute;sicas sacadas de su propio motor.",
        ficha=["Konami - <b>(c) Konami 1988</b>",
               "Cartucho <b>RC-764</b>, MegaROM de 256 KB (Konami con SCC)",
               "<b>MSX</b>", "Volcado <b>7393f677...</b>"],
        aviso="<b>Aqu&iacute; no hay ninguna captura.</b> Los recorridos de las fases, "
              "la nave y los sprites de cada fase se <b>dibujan desde los bytes de la "
              "ROM</b> y est&aacute;n cotejados con la VRAM de openMSX; las animaciones, "
              "las armas y los jefes son la VRAM de cada cuadro de una partida en "
              "openMSX, pintada como la pinta el TMS9918.",
    ),
    "en": dict(
        titulo="Nemesis 3 - commented disassembly",
        claim="All eleven stages and how to earn the 10th and 11th, the secret "
              "entrances, the four ships with every weapon firing, the enemies, the "
              "bosses, the story and the ending animated, the pause passwords and the "
              "26 tunes taken from its own engine.",
        ficha=["Konami - <b>(c) Konami 1988</b>",
               "Cartridge <b>RC-764</b>, 256 KB MegaROM (Konami with SCC)",
               "<b>MSX</b>", "Dump <b>7393f677...</b>"],
        aviso="<b>There are no screenshots here.</b> The stage routes, the ship and "
              "the sprites of every stage are <b>drawn from the bytes of the ROM</b> "
              "and checked against openMSX's VRAM; the animations, the weapons and the "
              "bosses are the VRAM of every frame of a game in openMSX, drawn as the "
              "TMS9918 draws it.",
    ),
}

# Los tres bloques: el juego | curiosidades | por dentro.
# (en, es, titulo en, titulo es, que hay en, que hay es)
PAGINAS = [
    [("THE-STAGES.html", "LAS-FASES.html", "The stages", "Las fases",
      "the eleven stages, their order, the secret entrances and every route whole",
      "las once fases, su orden, las entradas secretas y cada recorrido entero"),
     ("THE-SHIP.html", "LA-NAVE.html", "The ship", "La nave",
      "the four ships, the weapon bar and every weapon firing",
      "las cuatro naves, la barra de armas y cada arma disparando"),
     ("THE-ENEMIES.html", "LOS-ENEMIGOS.html", "The enemies", "Los enemigos",
      "the sprites of every stage, with their colour",
      "los sprites de cada fase, con su color"),
     ("THE-BOSSES.html", "LOS-JEFES.html", "The bosses", "Los jefes",
      "the boss of every stage and the four of stage 4",
      "el jefe de cada fase y los cuatro de la fase 4"),
     ("THE-SEQUENCES.html", "LAS-SECUENCIAS.html", "The sequences", "Las secuencias",
      "the opening, the story, the on-board computer and the ending, animated",
      "la presentaci&oacute;n, la historia, el ordenador de a bordo y el final, animados"),
     ("THE-MUSIC.html", "LA-MUSICA.html", "The music", "La m&uacute;sica",
      "the 26 tunes, from its own sound engine",
      "las 26 m&uacute;sicas, de su propio motor de sonido"),
     ("THE-TEXTS.html", "LOS-TEXTOS.html", "The texts", "Los textos",
      "every text of the cartridge, the story and the ending",
      "todos los textos del cartucho, la historia y el final")],
    [("CURIOSITIES.html", "CURIOSIDADES.html", "Curiosities", "Curiosidades",
      "the pause passwords, the missile of ship 3, FIGTHER, graphics nobody loads",
      "las claves de la pausa, el misil de la nave 3, FIGTHER, gr&aacute;ficos que no carga nadie")],
    [("UNDER-THE-HOOD.html", "POR-DENTRO.html", "Under the hood", "Por dentro",
      "rebuilding the ROM, the mapper, the states, the RAM and the VRAM",
      "rehacer la ROM, el mapper, los estados, la RAM y la VRAM")],
]

# Repositorio nuevo: no hay paginas viejas que redirigir.
VIEJAS = {}

LOGOTIPO = "titulo.png"

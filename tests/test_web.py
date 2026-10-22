"""La web: las cifras de la portada son las del listado, no se nombra otro
juego de la serie y no falta ninguna imagen ni ninguna musica."""
import os
import re
import subprocess
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DOCS = os.path.join(RAIZ, "docs")
sys.path.insert(0, os.path.join(RAIZ, "tools"))
import contenido_web as C     # noqa: E402

# Los otros juegos de la serie. Salamander sale en la historia del juego como
# el enemigo de una de las tres guerras (VERSUS SALAMANDER): solo vale en las
# paginas de la historia (HISTORIA) y con esa guerra escrita en el texto.
# El Game Master 2 es el cartucho con el que se graba la partida, y no es de
# la serie.
OTROS_JUEGOS = ("Parodius", "Salamander", "Valley", "Usas", "Galious", "Nemesis 2",
                "Contra", "Metal Gear", "Goemon", "Shalom", "Knightmare", "Rastan",
                "Synthesizer", "Pennant", "Dunk Shot", "Vampire Killer", "Hinotori",
                "Q*bert", "King Kong", "Circus", "Magical Tree", "Comic Bakery",
                "TwinBee", "F1 Spirit", "Gradius", "Fighter", "Ranger", "Jaguar")
HISTORIA = ("LOS-TEXTOS.md", "LAS-SECUENCIAS.md", "THE-TEXTS.md", "THE-SEQUENCES.md")


def paginas():
    out = []
    for carpeta in (DOCS, os.path.join(DOCS, "es")):
        if os.path.isdir(carpeta):
            out += [os.path.join(carpeta, f) for f in sorted(os.listdir(carpeta))
                    if f.endswith(".md")]
    return out


class TestWeb(unittest.TestCase):
    def test_la_suma_de_bytes_da_el_cartucho(self):
        self.assertEqual(C.CODIGO + C.DATOS, 262144)

    def test_las_cifras_de_la_portada_son_las_del_listado(self):
        r = subprocess.run([sys.executable, os.path.join(RAIZ, "tools", "densidad_total.py")],
                           capture_output=True, text=True, cwd=RAIZ)
        m = re.search(r"TOTAL (\d+) instrucciones, (\d+) comentarios, .*flojas (\d+) de (\d+)",
                      r.stdout)
        self.assertIsNotNone(m, r.stdout[-300:])
        self.assertEqual((int(m.group(1)), int(m.group(2)), int(m.group(4))),
                         (C.INSTRUCCIONES, C.COMENTARIOS, C.RUTINAS))
        self.assertEqual(int(m.group(3)), 0)

    def test_no_se_nombra_otro_juego_de_la_serie(self):
        for p in paginas():
            txt = open(p, encoding="utf-8").read()
            for j in OTROS_JUEGOS:
                if (j == "Salamander" and os.path.basename(p) in HISTORIA
                        and ("VERSUS SALAMANDER" in txt or "Bacterion, Venom" in txt)):
                    continue
                if j == "Fighter" and "FIGHTER" in txt:
                    # VIXEN FIGHTER, la nave del juego, en mayusculas
                    txt_sin = txt.replace("FIGHTER", "")
                    self.assertNotIn(j, txt_sin, "%s nombra %s" % (p, j))
                    continue
                self.assertNotIn(j, txt, "%s nombra %s" % (p, j))

    def test_no_falta_ninguna_imagen(self):
        for p in paginas():
            base = os.path.dirname(p)
            for ruta in re.findall(r"\]\(([^)]+\.(?:png|gif))\)", open(p, encoding="utf-8").read()):
                self.assertTrue(os.path.exists(os.path.join(base, ruta)), "%s: %s" % (p, ruta))

    def test_cada_imagen_sale_en_alguna_pagina_de_cada_idioma(self):
        usadas = {"en": set(), "es": set()}
        for p in paginas():
            idioma = "es" if os.path.basename(os.path.dirname(p)) == "es" else "en"
            usadas[idioma] |= {os.path.basename(r) for r in
                               re.findall(r"\]\(([^)]+\.(?:png|gif))\)",
                                          open(p, encoding="utf-8").read())}
        todas = set(os.listdir(os.path.join(DOCS, "imagenes")))
        self.assertEqual(todas - usadas["en"], set())
        self.assertEqual(todas - usadas["es"], set())

    def test_las_musicas_estan(self):
        for p in paginas():
            base = os.path.dirname(p)
            for ruta in re.findall(r'src="([^"?]+\.mp3)', open(p, encoding="utf-8").read()):
                self.assertTrue(os.path.exists(os.path.join(base, ruta)), "%s: %s" % (p, ruta))

    def test_nunca_consola(self):
        # el MSX es un ordenador; las pantallas del juego son el ordenador de a bordo
        for p in paginas():
            self.assertNotRegex(open(p, encoding="utf-8").read(), r"(?i)consol", p)


if __name__ == "__main__":
    unittest.main()

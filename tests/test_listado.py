#!/usr/bin/env python3
"""Lo que se afirma del listado: que el Makefile y tools/paginas.py dicen lo
mismo de cada banco.
"""
import os
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
TOOLS = os.path.join(RAIZ, "tools")


class Listado(unittest.TestCase):

    def test_el_makefile_y_paginas_py_dicen_lo_mismo(self):
        sys.path.insert(0, TOOLS)
        from paginas import ORG
        mk = open(os.path.join(RAIZ, "Makefile"), encoding="utf-8").read()
        for p, o in ORG.items():
            self.assertIn("ORG_%02d = %#06x" % (p, o), mk)
        self.assertEqual(len(ORG), 32)


if __name__ == "__main__":
    unittest.main()

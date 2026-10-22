#!/usr/bin/env python3
"""Lo que se ha MEDIDO del cartucho, clavado para que no se deshaga solo.

Estas comprobaciones necesitan la ROM, y si no esta **fallan**: no se saltan.
Un test que se salta no comprueba nada y en verde daria la impresion
contraria. Quien clone esto sin poner su copia del cartucho vera fallar este
fichero con un mensaje que dice exactamente que falta.

Cada una corresponde a una afirmacion de la web o de las notas, y todas leen
el binario: ninguna compara una constante contra si misma.
"""
import hashlib
import os
import subprocess
import sys
import unittest

RAIZ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
TOOLS = os.path.join(RAIZ, "tools")
sys.path.insert(0, TOOLS)

from paginas import ORG, OTRO_SLOT   # noqa: E402

ROM = os.path.join(RAIZ, "nemesis3.rom")
SHA = "fb4f66bcc3eabaf7eea6b91d1e2f5a15aa2f80a31a056af41d948b32646877a9"

FALTA = ("falta nemesis3.rom en la raiz del repo. Son los 262.144 bytes de "
         "Nemesis 3 - The Eve of Destruction (Konami, RC-764, 1988, MSX) y no "
         "se distribuyen aqui: pon tu copia. El sha256 tiene que ser %s" % SHA)


def leer_rom():
    if not os.path.exists(ROM):
        raise AssertionError(FALTA)
    with open(ROM, "rb") as f:
        return f.read()


def b(rom, banco, a, n=1):
    """n bytes del banco en la direccion a (con su org)."""
    o = banco * 0x2000 + (a - ORG[banco])
    return rom[o:o + n]


class Cartucho(unittest.TestCase):

    @classmethod
    def setUpClass(cls):
        cls.rom = leer_rom()

    def test_es_la_misma_rom(self):
        self.assertEqual(len(self.rom), 262144)
        self.assertEqual(hashlib.sha256(self.rom).hexdigest(), SHA)

    def test_cabecera_ab(self):
        """0x4000 'AB', INIT 0x409D y los otros tres vectores a cero."""
        self.assertEqual(self.rom[0:2], b"AB")
        self.assertEqual(self.rom[2] | (self.rom[3] << 8), 0x409D)
        self.assertEqual(self.rom[4:10], b"\x00" * 6)

    def test_segunda_cabecera_del_game_master(self):
        """0x4010: 'CD', 0x07 y 0x64, o sea RC-764."""
        self.assertEqual(self.rom[0x10:0x14], bytes([0x43, 0x44, 0x07, 0x64]))

    def test_mapper_konami_con_scc(self):
        """Escrituras a 0x7000, 0x9000 y 0xB000; a 0x6000 y 0xA000 ninguna, y
        a 0x8000 solo las de OTRO cartucho (p01:6CD0-6D2F, tras ENASLT)."""
        for reg in (0x7000, 0x9000, 0xB000):
            self.assertIn(bytes([0x32, reg & 0xFF, reg >> 8]), self.rom)
        for reg in (0x6000, 0xA000):
            self.assertNotIn(bytes([0x32, reg & 0xFF, reg >> 8]), self.rom)
        sitios = set()
        i = self.rom.find(b"\x32\x00\x80")
        while i >= 0:
            p = i // 0x2000
            sitios.add((p, ORG[p] + i % 0x2000))
            i = self.rom.find(b"\x32\x00\x80", i + 1)
        self.assertEqual(sitios, OTRO_SLOT)

    def test_otro_cartucho_por_enaslt(self):
        """p01:6CC9: `ld h,0x80 / call ENASLT (0x0024)` antes de escribir en
        su 0x8000, y p01:6CEB `call 0x8000`."""
        self.assertEqual(b(self.rom, 1, 0x6CC9, 5), bytes([0x26, 0x80, 0xCD, 0x24, 0x00]))
        self.assertEqual(b(self.rom, 1, 0x6CEB, 3), bytes([0xCD, 0x00, 0x80]))
        self.assertEqual(b(self.rom, 1, 0x6D28, 3), bytes([0xCD, 0x00, 0x80]))

    def test_regla_banco_org(self):
        """tools/reconocimiento.py: toda escritura con banco conocido lo pone en
        la ranura que dice tools/paginas.py (exit 0)."""
        r = subprocess.run([sys.executable, os.path.join(TOOLS, "reconocimiento.py"), ROM],
                           capture_output=True, text=True, cwd=TOOLS)
        self.assertEqual(r.returncode, 0, r.stdout)
        self.assertIn("OK: la regla banco -> org", r.stdout)

    def test_reparto_de_tres_con_su_copia(self):
        """p00:4238: el banco de A en 0x7000, A+1 en 0x9000 y A+2 en 0xB000,
        cada uno apuntado en 0xF0F1-0xF0F3."""
        self.assertEqual(b(self.rom, 0, 0x4238, 23), bytes.fromhex(
            "f332007032f1f03c32009032f2f03c3200b032f3f0fbc9"))

    def test_pila_de_repartos(self):
        """p00:41F7 apunta 0xF0F1-3 en la pila de 0xF0D0; p00:4213 los saca al
        reves y los vuelve a escribir en el mapper."""
        self.assertEqual(b(self.rom, 0, 0x41F7, 28), bytes.fromhex(
            "f3e5f52ad0f03af1f077233af2f077233af3f0772322d0f0f1e1fbc9"))
        self.assertEqual(b(self.rom, 0, 0x4213, 37), bytes.fromhex(
            "f3e5f52ad0f02b7e32f3f03200b02b7e32f2f03200902b7e32f1f0"
            "32007022d0f0f1e1fbc9"))
        # INIT pone el puntero de la pila: ld hl,0xF0D2 / ld (0xF0D0),hl
        self.assertEqual(b(self.rom, 0, 0x40E2, 6), bytes.fromhex("21d2f022d0f0"))

    def test_despachador_con_la_tabla_detras_del_call(self):
        """p00:4093: pop hl / add a,a / call 4089 / ld a,(hl) / inc hl /
        ld h,(hl) / ld l,a / jp (hl)."""
        self.assertEqual(b(self.rom, 0, 0x4093, 10), bytes.fromhex("e187cd89407e23666fe9"))

    def test_gancho_de_interrupcion(self):
        """INIT engancha 0x402E en H.KEYI (0xFD9A)."""
        self.assertEqual(b(self.rom, 0, 0x40EF, 11), bytes.fromhex("3ec3329afd212e40229bfd"))

    def test_la_interrupcion_pone_el_sonido(self):
        """p00:404A: 10-11-12 en 0x7000/0x9000/0xB000, call 0x6006 (banco 10)
        y devuelve lo de 0xF0F1-3."""
        self.assertEqual(b(self.rom, 0, 0x404A, 16), bytes.fromhex(
            "3e0a3200703c3200903c3200b0cd0660"))
        self.assertEqual(ORG[10], 0x6000)


if __name__ == "__main__":
    unittest.main()

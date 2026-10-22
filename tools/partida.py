#!/usr/bin/env python3
"""Nemesis 3 jugado por guion sobre tools/ejecuta.py: el cartucho entero,
cuadro a cuadro, con lo justo para llegar a cada parte del juego.

Lo medido que usa (ver las notas de p00, p01 y p04):
  - 0xE300 es el estado del juego y 0xE301 el paso dentro del estado
    (despachador p00:429F, tabla p00:42A2): 0 logo, 1 titulo, 2 historia,
    3 eleccion de nave, 4 empieza la fase, 5 se juega, 6 muerte, 7 fin de
    partida.
  - El teclado lo lee p00:4C5D con SNSMAT: el espacio (fila 8, bit 0) es el
    disparo, y la pulsacion cuenta al cambiar (p00:4C53 guarda la anterior).
  - 0xE361 es la fase (1..11: las tablas por fase de los bancos 16-18 van con
    `ld a,(0xE361)` / p00:4A5A, p00:4FDB y p00:4FF5); se pone al entrar en el
    estado 4, antes de que se cargue.
  - p04:843D es la rutina que hace morir a la nave (pone 0xFF en 0xE600); la
    llama la colision de p01:695C. Con `inmortal` se vuelve de ella sin hacer
    nada: la nave atraviesa todo y la fase sigue adelante.

Uso como modulo:
    j = Juego(rom); j.hasta_partida(fase=3, inmortal=True); j.juega(600)
"""
import os
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, AQUI)
from ejecuta import Partida   # noqa: E402

RAIZ = os.path.dirname(AQUI)
ROM = os.path.join(RAIZ, "nemesis3.rom")

ESTADO, PASO, FASE, VIDAS = 0xE300, 0xE301, 0xE361, 0xE360
MUERE = (4, 0x843D)                 # (banco en 0x8000, rutina)
ESPACIO = (8, 0xFE)                 # SNSMAT fila 8, bit 0


def rom():
    with open(ROM, "rb") as f:
        return f.read()


class Juego(Partida):
    def __init__(self, datos=None):
        super().__init__(datos or rom(), msx2=False)
        self.inmortal = False
        self.dispara = False
        self.barre = 0
        self.arranca_cartucho(0x409D)

    def paso(self):
        if (self.inmortal and self.pc == MUERE[1]
                and self.bancos[0x8000] == MUERE[0]):
            self.pc = self._pop()          # `ret` en la entrada: no muere
            return
        super().paso()

    def tecla(self, fila_mascara, pulsada):
        fila, mascara = fila_mascara
        self.teclas[fila] = mascara if pulsada else 0xFF

    def pulsa(self, fila_mascara=ESPACIO, dura=6, luego=44):
        self.tecla(fila_mascara, True)
        self.cuadros(dura)
        self.tecla(fila_mascara, False)
        self.cuadros(luego)

    def juega(self, n, cada=None):
        """n cuadros; con `dispara`, el espacio pulsado un cuadro de cada
        cuatro (la pulsacion cuenta al cambiar); con `barre`, ademas, la nave
        sube y baja (cursores, fila 8: 0x20 arriba, 0x40 abajo) en ciclos de
        `barre` cuadros, y cada 90 cuadros pulsa M (fila 4, 0x04: el boton 2,
        que compra el arma marcada)."""
        for _ in range(n):
            fila8 = 0xFF
            if self.dispara and self.cuadro % 4 < 2:
                fila8 &= 0xFE
            if self.barre:
                fase = self.cuadro % (2 * self.barre)
                fila8 &= 0xDF if fase < self.barre else 0xBF
                self.teclas[4] = 0xFB if self.cuadro % 90 < 3 else 0xFF
            self.teclas[8] = fila8
            self.cuadros(1)
            if cada:
                cada(self)

    def hasta_partida(self, fase=None, inmortal=False, dispara=False):
        """Del encendido a la fase en marcha: espera el titulo (cuadro 650),
        espacio para saltar la historia y otro para empezar, espacio en la
        eleccion de nave hasta que acaba, y la fase en 0xE361 al entrar en
        el estado 4."""
        self.cuadros(650)
        self.pulsa()
        self.pulsa()
        while self.mem[ESTADO] == 3:
            if self.cuadro % 120 == 0 and self.mem[PASO] < 8:
                self.pulsa()
            else:
                self.cuadros(1)
        while self.mem[ESTADO] != 4:
            self.cuadros(1)
        if fase is not None:
            self.mem[FASE] = fase
        self.inmortal = inmortal
        self.dispara = dispara
        while self.mem[ESTADO] != 5:
            self.cuadros(1)
        return self

    def foto(self, escala=1, sprites=True):
        import tms
        return tms.pinta(self.vdp.vram, self.vdp.regs, escala, sprites)

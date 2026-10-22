#!/usr/bin/env python3
"""Las armas de Nemesis 3 en accion: un openMSX por arma (tools/lanza_vram.ps1
con tools/omsx_vram.tcl) que empieza la fase 1 con la nave, el escudo y las
opciones pedidas, compra las casillas de la barra y graba los cuadros; luego
tools/anima.py pinta el GIF (sin el marcador).

Comprar es lo que hace el juego con el boton 2 (p04:92D8): la casilla marcada
(0xE430) se compra con la rutina de la nave (tabla p04:931E, p04:9302). Aqui se
pone la marca a mano (lo que harian las capsulas) y se pulsa la M. Los topes de
cada casilla dependen del arma secreta (0xE36F, tabla p04:94D0): con 0 la
casilla 5 no se puede comprar y la 6 (el laser) tiene un nivel; para las demas
se pone 0xE36F = 5 al empezar (lo que daria haber cogido las entradas secretas).

Uso: armas.py lista
     armas.py graba [nombre ...]     (fuera del sandbox: lanza openMSX)
     armas.py gif <dir_salida> [nombre ...]
"""
import os
import subprocess
import sys

AQUI = os.path.dirname(os.path.abspath(__file__))
RAIZ = os.path.dirname(AQUI)
sys.path.insert(0, AQUI)

EMPIEZA = 26.0          # primera compra (la partida empieza hacia los 22,5 s)
PASO = 0.6              # entre compras
DURA = 4.5              # lo que se graba tras la ultima
SECRETA = 25.0          # cuando se pone 0xE36F

# nombre: (nave, escudo, opciones, arma secreta, casillas que se compran)
ARMAS = {
    "normal":       (0, 0, 0, 0, []),
    "misil_n0":     (0, 0, 0, 0, [2]),
    "misil_n1":     (1, 0, 0, 0, [2]),
    "misil_n2":     (2, 0, 0, 0, [2]),
    "misil_n3":     (3, 0, 0, 0, [2]),
    "haz_1":        (0, 0, 0, 0, [3]),
    "haz_2":        (0, 0, 0, 0, [3, 3]),
    "doble_1":      (0, 0, 0, 0, [4]),
    "doble_2":      (0, 0, 0, 5, [4, 4]),
    "casilla5_1":   (0, 0, 0, 5, [3, 5]),
    "casilla5_2":   (0, 0, 0, 5, [3, 5, 5]),
    "laser_n0_1":   (0, 0, 0, 0, [6]),
    "laser_n0_2":   (0, 0, 0, 5, [6, 6]),
    "laser_n0_3":   (0, 0, 0, 5, [6, 6, 6]),
    "laser_n1_2":   (1, 0, 0, 5, [6, 6]),
    "laser_n2_1":   (2, 0, 0, 0, [6]),
    "laser_n2_2":   (2, 0, 0, 5, [6, 6]),
    "laser_n2_3":   (2, 0, 0, 5, [6, 6, 6]),
    "laser_n3_3":   (3, 0, 0, 5, [6, 6, 6]),
    "opciones_0":   (0, 0, 0, 0, [7, 7]),
    "opciones_1":   (0, 0, 1, 0, [7, 7]),
    "opciones_2":   (0, 0, 2, 0, [7, 7]),
    "escudo_0":     (0, 0, 0, 0, [8]),
    "escudo_1":     (0, 1, 0, 0, [8]),
}


def tiempos(nombre):
    compras = ARMAS[nombre][4]
    fin = EMPIEZA + PASO * max(len(compras) - 1, 0) + DURA
    return EMPIEZA - 0.3, fin


def graba(nombre):
    nave, escudo, opciones, secreta, compras = ARMAS[nombre]
    teclas = ["11:8:0x01", "12:8:0x01"] + ["%d:8:0x01" % s for s in range(14, 22, 2)]
    pokes = []
    if secreta:
        pokes.append("%g:0xE36F:%d" % (SECRETA, secreta))
    for k, c in enumerate(compras):
        t = EMPIEZA + PASO * k
        pokes.append("%g:0xE430:%d" % (t - 0.05, c))
        teclas.append("%g:4:0x04" % t)
    desde, hasta = tiempos(nombre)
    d = "om_arma_" + nombre
    orden = ["powershell", "-ExecutionPolicy", "Bypass", "-File", os.path.join(AQUI, "lanza_vram.ps1"),
             "-dir", d, "-tiempos", "%g" % hasta, "-teclas", " ".join(teclas),
             "-pokes", " ".join(pokes), "-fase", "1", "-inmortal", "1",
             "-juega", "%g 0" % (EMPIEZA - 2), "-elige", "%d %d %d" % (nave, escudo, opciones),
             "-cuadros", "%g %g" % (desde, hasta)]
    subprocess.run(orden, cwd=RAIZ, check=True)
    ram = open(os.path.join(RAIZ, "work", d, "ram-%g.bin" % hasta), "rb").read()
    print("%s: nave %d, arma secreta %d, casillas 0xE434-0xE43B %s, armas 0xE630-2 %s" % (
        nombre, ram[0xE380], ram[0xE36F], ram[0xE434:0xE43C].hex(), ram[0xE630:0xE633].hex()))


def gif(nombre, salida):
    import anima as A
    desde, hasta = tiempos(nombre)
    d = os.path.join(RAIZ, "work", "om_arma_" + nombre)
    imgs, ms = [], []
    for k, (t, vr, r) in enumerate(A.cuadros(d)):
        if t < desde + 0.3 or k % 2:
            continue
        imgs.append(A.pinta_vdp(vr, r, 2).crop((0, 0, 512, 352)).convert("P", palette=0, colors=16))
        ms.append(round(2000 / 60))
    imgs[0].save(salida, save_all=True, append_images=imgs[1:], duration=ms, loop=0, optimize=True)
    return len(imgs)


def main(argv):
    if len(argv) > 1 and argv[1] == "lista":
        for n, a in ARMAS.items():
            print(n, a)
    elif len(argv) > 1 and argv[1] == "graba":
        for n in argv[2:] or list(ARMAS):
            graba(n)
    elif len(argv) > 2 and argv[1] == "gif":
        os.makedirs(argv[2], exist_ok=True)
        for n in argv[3:] or list(ARMAS):
            print(n, gif(n, os.path.join(argv[2], "arma_%s.gif" % n)))
    else:
        print(__doc__)
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))

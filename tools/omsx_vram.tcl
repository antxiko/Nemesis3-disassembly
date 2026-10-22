# omsx_vram.tcl - Vuelca la VRAM (16 KB), los registros del VDP, la RAM y una
# captura de Nemesis 3 en un MSX1, para cotejar lo que dibujamos desde la ROM
# (tools/dibuja.py, tools/vram.py) y lo que da tools/partida.py.
#
#   "C:/Program Files/openMSX/openmsx.exe" -machine C-BIOS_MSX1 \
#       -carta nemesis3.rom -romtype KonamiSCC -script tools/omsx_vram.tcl
#
# Variables:
#   VRAM_SALIDA   carpeta (work/omsx)
#   VRAM_TIEMPOS  "30 45 60": segundos emulados de cada volcado; sale despues
#                 del ultimo
#   VRAM_TECLAS   "t:fila:mascara[:segundos] ..." (fila 8: 0x01 espacio, 0x20
#                 arriba, 0x40 abajo; fila 4: 0x04 la M)
#   VRAM_POKES    "t:direccion:valor ..."
#   VRAM_FASE     n: al entrar por primera vez en el estado 4 se pone n en la
#                 fase (0xE361)
#   VRAM_ELIGE    "nave escudo opciones": cada vez que la eleccion guarda la
#                 nave (0xE380), el escudo (0xE37F) o las opciones (0xE37E),
#                 se pone encima el valor pedido
#   VRAM_INMORTAL 1: p04:843D (la muerte de la nave) vuelve sin hacer nada
#                 (el banco de 0x8000 se mira en su copia, 0xF0F2)
#   VRAM_DEBIL    "direccion valor": pasados los volcados de VRAM_JEFE, ese
#                 byte se escribe cada 0.5 s mientras siga el jefe (p. ej.
#                 "0xEC12 1": las vidas del jefe, para que caiga y salga otro)
#   VRAM_SECRETA  "t tipo": a ese segundo, una entrada secreta del tipo dado
#                 delante de la nave (0xE7E0: tipo, y + 6, x + 0x18, y + 6; la
#                 nave la coge a +-4 de su y + 6, p02:813B), como tools/cobertura.py
#   VRAM_SIN      "banco:pc ...": esas rutinas vuelven nada mas entrar (el banco
#                 de su ventana se mira en su copia 0xF0F1-3), como Juego.sin
#   VRAM_JUEGA    "desde barre": desde ese segundo, el espacio pulsado un cuadro
#                 de cada cuatro y, con barre > 0, la nave sube y baja en
#                 ciclos de barre cuadros y cada 90 cuadros pulsa la M (compra
#                 el arma marcada), como tools/partida.py
#   VRAM_JEFE     "s1 s2 ...": al aparecer un jefe (0xE440 pasa de 0 a otro
#                 valor que no sea 0xFF, el del logo), un
#                 volcado a esos segundos, con la etiqueta jefe<N>_<s>
#   VRAM_BP       "pc:direccion:valor ...": cada vez que se ejecuta pc se
#                 escribe ese byte
#   VRAM_WP       "direccion ...": el PC de cada escritura, en wp.txt
#   VRAM_ESCRITURAS 1: cada escritura a la VRAM por la BIOS (WRTVRM, FILVRM,
#                 LDIRVM) o por las rachas de p00:4B3C, en escrituras.txt
#   VRAM_SONIDOS  1: cada sonido pedido (p00:589A, pide_sonido, con A) en
#                 sonidos.txt, con el segundo, el estado, la fase y el jefe
#   VRAM_CUADROS  "desde hasta": la VRAM y los registros de cada cuadro en
#                 cuadros.bin (16 KB + 8 + 8 de texto con el segundo)
proc opcion {nombre porDefecto} {
    global env
    if {[info exists env($nombre)]} { return $env($nombre) }
    return $porDefecto
}
set ::SALIDA [opcion VRAM_SALIDA {work/omsx}]
set ::TIEMPOS [opcion VRAM_TIEMPOS {30 45 60}]
file mkdir $::SALIDA
set throttle off

proc vuelca {etiqueta} {
    set f [open [file join $::SALIDA "vram-$etiqueta.bin"] wb]
    fconfigure $f -translation binary
    puts -nonewline $f [debug read_block VRAM 0 16384]
    close $f
    set g [open [file join $::SALIDA "vdp-$etiqueta.txt"] w]
    for {set i 0} {$i < 8} {incr i} {
        puts $g [format "R%d = 0x%02X" $i [debug read "VDP regs" $i]]
    }
    foreach {nombre d} {estado 0xE300 paso 0xE301 fase 0xE361 scroll_l 0xE363 scroll_h 0xE364 jefe 0xE440} {
        puts $g [format "%s = 0x%02X" $nombre [debug read memory $d]]
    }
    close $g
    set h [open [file join $::SALIDA "ram-$etiqueta.bin"] wb]
    fconfigure $h -translation binary
    puts -nonewline $h [debug read_block memory 0 65536]
    close $h
    screenshot [file join $::SALIDA "ver-$etiqueta.png"]
}
foreach k [opcion VRAM_TECLAS {}] {
    lassign [split $k :] t f m d
    if {$d eq ""} { set d 0.15 }
    after time $t "keymatrixdown $f $m; after time $d {keymatrixup $f $m}"
}
foreach k [opcion VRAM_POKES {}] {
    lassign [split $k :] t d v
    after time $t "poke $d $v"
}
set ::FASE [opcion VRAM_FASE {}]
if {$::FASE ne ""} {
    # al entrar por primera vez en el estado 4 (0xE300 = 4), como
    # tools/partida.py; la fase siguiente ya la pone el juego
    set ::FASE_WP [debug set_watchpoint write_mem 0xE300 {$::wp_last_value == 4} {
        after time 0.0005 {poke 0xE361 $::FASE}
        debug remove_watchpoint $::FASE_WP
    }]
}
set ::ELIGE [opcion VRAM_ELIGE {}]
if {$::ELIGE ne ""} {
    foreach d {0xE380 0xE37F 0xE37E} x $::ELIGE {
        debug set_watchpoint write_mem $d {} "after time 0.0005 {poke $d $x}"
    }
}
proc vuelve {} {
    reg PC [peek16 [reg SP]]
    reg SP [expr {[reg SP] + 2}]
}
if {[opcion VRAM_INMORTAL {}] ne ""} {
    debug set_bp 0x843D {[peek 0xF0F2] == 4} vuelve
}
foreach k [opcion VRAM_SIN {}] {
    lassign [split $k :] b pc
    set copia [expr {0xF0F1 + (($pc - 0x6000) >> 13)}]
    debug set_bp $pc "\[peek $copia\] == $b" vuelve
}
proc pon_secreta {tipo} {
    set y [expr {([peek 0xE604] + 6) & 0xFF}]
    set x [expr {([peek 0xE606] + 0x18) & 0xFF}]
    poke 0xE7E0 $tipo; poke 0xE7E1 $y; poke 0xE7E2 $x; poke 0xE7E3 $y
}
set ::SECRETA [opcion VRAM_SECRETA {}]
if {$::SECRETA ne ""} { after time [lindex $::SECRETA 0] "pon_secreta [lindex $::SECRETA 1]" }
set ::JUEGA [opcion VRAM_JUEGA {}]
set ::CUADRO 0
proc juega {} {
    lassign $::JUEGA desde barre
    incr ::CUADRO
    if {$::CUADRO % 4 < 2} { keymatrixdown 8 0x01 } else { keymatrixup 8 0x01 }
    if {$barre > 0} {
        if {$::CUADRO % (2 * $barre) < $barre} {
            keymatrixup 8 0x40; keymatrixdown 8 0x20
        } else {
            keymatrixup 8 0x20; keymatrixdown 8 0x40
        }
        if {$::CUADRO % 90 < 3} { keymatrixdown 4 0x04 } else { keymatrixup 4 0x04 }
    }
    after frame juega
}
if {$::JUEGA ne ""} { after time [lindex $::JUEGA 0] juega }
set ::JEFE [opcion VRAM_JEFE {}]
set ::JEFE_ANT 0
set ::JEFE_T 0
set ::DEBIL [opcion VRAM_DEBIL {}]
proc mira_jefe {} {
    set j [peek 0xE440]
    if {$j != 0 && $j != 0xFF && $::JEFE_ANT == 0} {
        foreach d $::JEFE { after time $d "vuelca [format jefe%02X_%s $j $d]" }
        set ::JEFE_T [machine_info time]
    }
    if {$::DEBIL ne "" && $j != 0 && $j != 0xFF
            && [machine_info time] > $::JEFE_T + [lindex $::JEFE end] + 1} {
        poke [lindex $::DEBIL 0] [lindex $::DEBIL 1]
    }
    set ::JEFE_ANT $j
    after time 0.1 mira_jefe
}
if {$::JEFE ne ""} { after time 1 mira_jefe }
foreach k [opcion VRAM_BP {}] {
    lassign [split $k :] pc d v
    debug set_bp $pc {} "poke $d $v"
}
set ::WPLOG [open [file join $::SALIDA "wp.txt"] w]
foreach d [opcion VRAM_WP {}] {
    debug set_watchpoint write_mem $d {} "puts \$::WPLOG \[format {%s pc=%04X v=%02X t=%s} $d \[reg PC\] \$::wp_last_value \[machine_info time\]\]; flush \$::WPLOG"
}
proc apunta_escritura {} {
    set pc [reg PC]
    set l [format {%04X HL=%04X DE=%04X BC=%04X A=%02X F0F1=%02X%02X%02X t=%.4f} $pc [reg HL] [reg DE] [reg BC] [reg A] [peek 0xF0F1] [peek 0xF0F2] [peek 0xF0F3] [machine_info time]]
    if {$pc == 0x005C && [reg DE] >= 0xC000} {
        binary scan [debug read_block memory [reg DE] [reg BC]] H* hex
        append l " DATOS=$hex"
    }
    puts $::ESLOG $l
}
if {[opcion VRAM_ESCRITURAS {}] ne ""} {
    set ::ESLOG [open [file join $::SALIDA "escrituras.txt"] w]
    foreach pc {0x004D 0x0056 0x005C 0x4B3C} { debug set_bp $pc {} apunta_escritura }
}
proc apunta_sonido {} {
    puts $::SNLOG [format {%02X t=%.3f estado=%02X paso=%02X fase=%02X jefe=%02X} [reg A] [machine_info time] [peek 0xE300] [peek 0xE301] [peek 0xE361] [peek 0xE440]]
    flush $::SNLOG
}
if {[opcion VRAM_SONIDOS {}] ne ""} {
    set ::SNLOG [open [file join $::SALIDA "sonidos.txt"] w]
    debug set_bp 0x589A {} apunta_sonido
}
set ::CUADROS [opcion VRAM_CUADROS {}]
proc cuadro {} {
    lassign $::CUADROS desde hasta
    set t [machine_info time]
    if {$t > $hasta} { return }
    puts -nonewline $::CUF [debug read_block VRAM 0 16384]
    for {set i 0} {$i < 8} {incr i} { puts -nonewline $::CUF [binary format c [debug read "VDP regs" $i]] }
    puts -nonewline $::CUF [format %8.3f $t]
    after frame cuadro
}
if {$::CUADROS ne ""} {
    set ::CUF [open [file join $::SALIDA "cuadros.bin"] wb]
    fconfigure $::CUF -translation binary
    after time [lindex $::CUADROS 0] cuadro
}
foreach t $::TIEMPOS { after time $t "vuelca $t" }
after time [expr {[lindex $::TIEMPOS end] + 1}] exit

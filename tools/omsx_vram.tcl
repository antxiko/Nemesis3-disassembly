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
#   VRAM_FASE     n: cuando el juego escribe la fase (0xE361, al entrar en el
#                 estado 4) se pone n encima
#   VRAM_INMORTAL 1: p04:843D (la muerte de la nave) vuelve sin hacer nada
#                 (el banco de 0x8000 se mira en su copia, 0xF0F2)
#   VRAM_BP       "pc:direccion:valor ...": cada vez que se ejecuta pc se
#                 escribe ese byte
#   VRAM_WP       "direccion ...": el PC de cada escritura, en wp.txt
#   VRAM_ESCRITURAS 1: cada escritura a la VRAM por la BIOS (WRTVRM, FILVRM,
#                 LDIRVM) o por las rachas de p00:4B3C, en escrituras.txt
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
    debug set_watchpoint write_mem 0xE361 {} {after time 0.0005 {poke 0xE361 $::FASE}}
}
proc vuelve {} {
    reg PC [peek16 [reg SP]]
    reg SP [expr {[reg SP] + 2}]
}
if {[opcion VRAM_INMORTAL {}] ne ""} {
    debug set_bp 0x843D {[peek 0xF0F2] == 4} vuelve
}
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

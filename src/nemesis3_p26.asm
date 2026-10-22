; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 26 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
l701ah:	equ 0x0701a

; ======================================================================
; CODIGO 0x6000..0x600f  (15 bytes)
; ======================================================================


L_6000:
	jp L_6488		;6000   ; las entradas del banco: la eleccion de nave (p00:440D)
L_6003:
	jp L_6CA4		;6003   ; el arma secreta, estado 9 (p00:463A)
L_6006:
	jp 0814dh		;6006   ; p27:814D, estado 8 paso 1 (p00:45F0)
L_6009:
	jp L_7EC5		;6009   ; estado 8 paso 2 (p00:460C)
L_600C:
	jp 083eah		;600c   ; p27:83EA, el final, estado 10 (p00:46B6)

; ----------------------------------------------------------------------
; DATOS no_visto_600F: 3 bytes a 0x00 entre dos bloques: no se ha visto leer:
;   ninguna instruccion trazada lo apunta con su banco puesto y ninguna
;   partida de la campana lo lee (tools/cobertura.py, tools/lee_sonidos.py);
;   en la ROM hay 39 pares de bytes que valen 0x600F
;   0x600f..0x6012  (3 bytes)
DATA_no_visto_600F:
	defb 000h,000h,000h	; 600f

; ======================================================================
; CODIGO 0x6012..0x6102  (240 bytes)
; ======================================================================


L_6012:
	jp L_730A		;6012
L_6015:
	jp ordenador_cuadro		;6015   ; la entrada de p00:480F, que no llama nadie: el ordenador de a bordo, un cuadro
L_6018:
	jp secuencia		;6018   ; empieza una secuencia de dibujos (desde p30, p00:4818)
L_601B:
	jp secuencia_sigue		;601b   ; la secuencia de dibujos, cada cuadro (desde p30, p00:4821)
pantalla_limpia:		; los sprites fuera, el bufer de 0xCA00 a cero y los colores
	call 05648h		;601e   ; los sprites fuera, el bufer de 0xCA00 a cero y los colores (p26:603E)
	call 05959h		;6021   ; el bufer de 0xCA00 a cero
	call L_603E		;6024   ; y los colores
	ret			;6027
L_6028:
	ld hl,03800h		;6028   ; la tabla de nombres a cero (0x3800, 0x2C0 bytes)
	ld bc,002c0h		;602b
	xor a			;602e
	call 00056h		;602f   ; BIOS FILVRM - Fills VRAM with value
	ret			;6032
L_6033:
	ld hl,01800h		;6033   ; los dibujos de sprite a cero (0x1800, 0x800 bytes)
	ld bc,00800h		;6036
	xor a			;6039
	call 00056h		;603a   ; BIOS FILVRM - Fills VRAM with value
	ret			;603d
L_603E:
	xor a			;603e   ; los colores a cero en los tres tercios (salvo el caracter 0) y 0x3300-0x37FF
	ld hl,02008h		;603f   ; el tercio de arriba sin su caracter 0 (0x2008, 0x7F8 bytes)...
	ld bc,007f8h		;6042
	call 00056h		;6045   ; BIOS FILVRM - Fills VRAM with value
	ld hl,02808h		;6048   ; ...el de enmedio...
	ld bc,007f8h		;604b
	call 00056h		;604e   ; BIOS FILVRM - Fills VRAM with value
	ld hl,03008h		;6051   ; ...el de abajo hasta 0x31B8...
	ld bc,001b0h		;6054
	call 00056h		;6057   ; BIOS FILVRM - Fills VRAM with value
	ld hl,03300h		;605a   ; ...y 0x3300-0x37FF
	ld bc,00500h		;605d
	call 00056h		;6060   ; BIOS FILVRM - Fills VRAM with value
	ret			;6063
L_6064:
	call 04a5ah		;6064   ; un rectangulo de la tabla HL (palabra A) a 0xCD00 y al bufer: DE el destino, B filas, C bytes (p00:59A1)
L_6067:
	push hl			;6067   ; la tabla en IX
	pop ix		;6068
	call L_6080		;606a   ; los datos a 0xCD00 (p26:6080)
	ld e,(ix+000h)		;606d   ; DE el destino, B las filas y C los bytes
	ld d,(ix+001h)		;6070   ; D, B y C
	ld b,(ix+002h)		;6073
	ld c,(ix+003h)		;6076
	ld hl,0cd00h		;6079   ; de 0xCD00 al bufer (p00:59A1)
	call 059a1h		;607c   ; con filas de 0x20
	ret			;607f
L_6080:
	ld a,(ix+004h)		;6080   ; segun IX+4: 0 tal cual (B x C bytes), 1 RLE (p00:55AD), 2 el segundo formato (p00:55CD), desde IX+5
	dec a			;6083   ; IX+4: 1 RLE, 2 o mas el segundo formato, 0 tal cual
	jr z,L_60A2		;6084
	jp p,L_60B1		;6086
	ld h,(ix+002h)		;6089   ; tal cual: B x C bytes (p00:563C)...
	ld e,(ix+003h)		;608c   ; B x C...
	call 0563ch		;608f   ; multiplica: HL = H x E
	ld c,l			;6092   ; ...bytes (BC)
	ld b,h			;6093
	push ix		;6094   ; ...desde IX+5
	pop hl			;6096
	ld a,005h		;6097
	call 04089h		;6099   ; suma_a_hl: HL = HL + A
	ld de,0cd00h		;609c   ; a 0xCD00
	ldir		;609f
	ret			;60a1
L_60A2:
	push ix		;60a2   ; RLE desde IX+5
	pop hl			;60a4
	ld a,005h		;60a5
	call 04089h		;60a7   ; suma_a_hl: HL = HL + A
	ld de,0cd00h		;60aa
	call 055adh		;60ad   ; rle_a_ram: descomprime a la RAM de DE el RLE de HL
	ret			;60b0
L_60B1:
	push ix		;60b1   ; el segundo formato desde IX+5
	pop hl			;60b3
	ld a,005h		;60b4
	call 04089h		;60b6   ; suma_a_hl: HL = HL + A
	ld de,0cd00h		;60b9
	call 055cdh		;60bc   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	ret			;60bf
borra_cuadro_ca48:		; borra en el bufer 0x0B x 0x10 desde 0xCA48
	ld de,0ca48h		;60c0   ; borra en el bufer un rectangulo de 0x0B x 0x10 desde 0xCA48
	ld bc,00b10h		;60c3   ; 0x0B filas de 0x10
	call 059c7h		;60c6   ; borra_rectangulo: borra B filas de C bytes desde DE (filas de 0x20)
	ret			;60c9
borra_cuadro_cc22:		; borra en el bufer 5 x 0x1C desde 0xCC22
	ld de,0cc22h		;60ca   ; borra 5 x 0x1C desde 0xCC22
	ld bc,0051ch		;60cd   ; 5 filas de 0x1C
	call 059c7h		;60d0   ; borra_rectangulo: borra B filas de C bytes desde DE (filas de 0x20)
	ret			;60d3
L_60D4:
	ld hl,03ac0h		;60d4   ; la fila de 0x3AC0 a cero
	ld bc,00040h		;60d7   ; 0x40 bytes a 0
	xor a			;60da
	call 00056h		;60db   ; BIOS FILVRM - Fills VRAM with value
	ret			;60de
ordenador:		; el ordenador de a bordo (p26:730A) con su animacion cada 8 cuadros
	call L_60EB		;60df   ; 0xE540-0xE55F a cero, 0xE540 = 8 y p26:730A
	ld a,008h		;60e2   ; cada 8 cuadros la animacion (0xE540)...
	ld (0e540h),a		;60e4
	call L_730A		;60e7   ; ...y el ordenador de a bordo
	ret			;60ea
L_60EB:
	ld hl,0e540h		;60eb   ; 0x20 bytes a 0
	ld de,0e541h		;60ee
	ld bc,0001fh		;60f1
	ld (hl),000h		;60f4
	ldir		;60f6
	ret			;60f8
contador_de_hl:		; las 6 cifras del contador del ordenador de a bordo, de HL
	ld de,0e54fh		;60f9   ; 6 bytes de HL a 0xE54F
	ld bc,00006h		;60fc   ; 6 bytes: las cifras del contador
	ldir		;60ff
	ret			;6101

; ----------------------------------------------------------------------
; DATOS leido_6102: 18 bytes que lee p26:60FF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:60FF (18 bytes)
;   0x6102..0x6114  (18 bytes)
DATA_leido_6102:
	defb 006h,008h,000h,009h,001h,000h,006h,006h,004h,004h,000h,007h,006h,007h,005h,009h	; 6102  ................
	defb 000h,007h	; 6112

; ======================================================================
; CODIGO 0x6114..0x611c  (8 bytes)
; ======================================================================


secuencia:		; empieza la secuencia de dibujos A
	ld hl,0611ch		;6114   ; empieza la secuencia A (tabla de 0x611C): su lista en 0xE5CE, 0xE5CA = 0xFF01
	call 04a5ah		;6117   ; la lista de la secuencia
	jr $+16		;611a

; ----------------------------------------------------------------------
; DATOS tabla_611C: tabla que se lee desde HL = 0x611C con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:6114 (14 bytes)
;   0x611c..0x612a  (14 bytes)
DATA_tabla_611C:
	defb 06fh,062h,084h,062h,08dh,062h,092h,062h,097h,062h,09ch,062h,0a1h,062h	; 611c  ob.b.b.b.b.b.b

; ======================================================================
; CODIGO 0x612a..0x6193  (105 bytes)
; ======================================================================


secuencia_de_hl:		; empieza la secuencia de dibujos de HL
	ld (0e5ceh),hl		;612a   ; en 0xE5CE
	ld hl,0ff01h		;612d   ; 0xE5CA = 1 (en marcha) y 0xE5CB = 0xFF (antes de la primera)
	ld (0e5cah),hl		;6130
	jr L_6146		;6133
secuencia_sigue:		; la secuencia de dibujos, un cuadro (NZ mientras siga)
	xor a			;6135   ; cada cuadro: cuando la cuenta 0xE333 llega a la espera (0xE5CC), el dibujo siguiente
	ld (0e5e8h),a		;6136   ; 0xE5E8 = 0: este cuadro no cambia
	ld de,(0e5cch)		;6139   ; la espera del dibujo en curso
	ld hl,(0e333h)		;613d   ; lee una cuenta de cuadros (16 bits)
	rst 20h			;6140   ; la cuenta aun no llega: nada (NZ)
	jr c,L_6176		;6141   ; aun no: nada
	call L_617F		;6143   ; el texto anterior fuera (p26:617F)
L_6146:
	ld hl,0e5cbh		;6146   ; la entrada siguiente de la lista (4 bytes): 0xFF acaba
	inc (hl)			;6149
	ld a,(hl)			;614a   ; x 4: la entrada en la lista
	ld l,a			;614b
	add a,a			;614c   ; x 4
	add a,a			;614d
	ld hl,(0e5ceh)		;614e
	call 04089h		;6151   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;6154   ; 0xFF: acabada
	inc a			;6155   ; 0xFF: acabada
	jr z,L_617A		;6156
	call 05636h		;6158   ; el dibujo japones o el ingles segun la BIOS (p00:5636), y la espera (16 bits)
	ld a,(hl)			;615b   ; el japones...
	inc hl			;615c
	jr z,L_6160		;615d
	ld a,(hl)			;615f   ; ...o el ingles
L_6160:
	inc hl			;6160
	ld e,(hl)			;6161   ; la espera (16 bits)
	inc hl			;6162   ; la espera
	ld d,(hl)			;6163
	ld (0e5cch),de		;6164
	ld hl,00000h		;6168   ; la cuenta a cero y se pone el dibujo (p26:62A6); 0xE5E8 = 1
	ld (0e333h),hl		;616b   ; guarda una cuenta de cuadros (16 bits)
	call L_62A6		;616e   ; el dibujo nuevo
	ld a,001h		;6171   ; 0xE5E8 = 1: este cuadro cambia
	ld (0e5e8h),a		;6173
L_6176:
	ld a,001h		;6176   ; NZ: en marcha
	or a			;6178
	ret			;6179
L_617A:
	xor a			;617a   ; acabada: 0xE5CA = 0
	ld (0e5cah),a		;617b
	ret			;617e
L_617F:
	ld a,(0e5c2h)		;617f   ; salvo los dibujos 0x23-0x24 y 0x63-0x64, se borra el texto anterior de 0xCD00
	sub 023h		;6182   ; los 0x23-0x24...
	cp 002h		;6184
	ret c			;6186
	sub 040h		;6187   ; ...y los 0x63-0x64 lo dejan
	cp 002h		;6189
	ret c			;618b
	ld hl,0cd00h		;618c   ; el texto de 0xCD00 fuera
	call 04b32h		;618f   ; borra_texto_ram: borra en la RAM el texto de HL
	ret			;6192

; ----------------------------------------------------------------------
; DATOS leido_6193: 4 bytes que leen p26:6154, p26:615F, p26:6161, p26:6163 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p26:6154, p26:615F, p26:6161, p26:6163 (4 bytes)
;   0x6193..0x6197  (4 bytes)
DATA_leido_6193:
	defb 000h,040h,02ch,001h	; 6193

; ----------------------------------------------------------------------
; DATOS no_visto_6197: no se ha visto leer: ninguna instruccion trazada lo
;   apunta con su banco puesto y ninguna partida de la campana lo lee
;   (tools/cobertura.py, tools/lee_sonidos.py); ningun par de bytes de la ROM
;   vale 0x6197
;   0x6197..0x61b4  (29 bytes)
DATA_no_visto_6197:
	defb 001h,041h,02ch,001h,002h,042h,02ch,001h,003h,043h,02ch,001h,004h,044h,02ch,001h	; 6197  .A,..B,..C,..D,.
	defb 005h,045h,02ch,001h,006h,046h,02ch,001h,007h,047h,02ch,001h,0ffh	; 61a7  .E,..F,..G,..

; ----------------------------------------------------------------------
; DATOS leido_61B4: 181 bytes que leen p26:6154, p26:615F, p26:6161, p26:6163
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido, con 17 sin leer
;   entre lecturas de la misma rutina: entradas de la misma tabla que las
;   partidas no han pedido); lo leen p26:6154, p26:615F, p26:6161, p26:6163
;   (181 bytes)
;   0x61b4..0x6269  (181 bytes)
DATA_leido_61B4:
	defb 008h,048h,02ch,001h,009h,049h,02ch,001h,00ah,04ah,02ch,001h,00bh,04bh,02ch,001h	; 61b4  .H,..I,..J,..K,.
	defb 00ch,04ch,02ch,001h,0ffh,00dh,04dh,02ch,001h,0ffh,00eh,04eh,02ch,001h,0ffh,00fh	; 61c4  .L,...M,...N,...
	defb 04fh,02ch,001h,0ffh,010h,050h,02ch,001h,011h,051h,02ch,001h,012h,052h,02ch,001h	; 61d4  O,...P,..Q,..R,.
	defb 0ffh,013h,053h,02ch,001h,0ffh,014h,054h,02ch,001h,015h,055h,02ch,001h,0ffh,016h	; 61e4  ..S,...T,..U,...
	defb 056h,02ch,001h,0ffh,017h,057h,02ch,001h,0ffh,018h,058h,02ch,001h,019h,059h,02ch	; 61f4  V,...W,...X,..Y,
	defb 001h,01ah,05ah,02ch,001h,0ffh,01bh,05bh,02ch,001h,01ch,05ch,02ch,001h,0ffh,01dh	; 6204  ..Z,...[,..\,...
	defb 05dh,02ch,001h,01eh,05eh,02ch,001h,0ffh,01fh,05fh,02ch,001h,020h,060h,02ch,001h	; 6214  ],..^,..._,. `,.
	defb 0ffh,021h,061h,02ch,001h,022h,062h,02ch,001h,0ffh,023h,063h,02ch,001h,0ffh,024h	; 6224  .!a,."b,..#c,..$
	defb 064h,02ch,001h,0ffh,025h,065h,02ch,001h,026h,066h,02ch,001h,0ffh,027h,067h,02ch	; 6234  d,..%e,.&f,..'g,
	defb 001h,0ffh,028h,068h,02ch,001h,029h,069h,02ch,001h,0ffh,02ah,06ah,02ch,001h,02bh	; 6244  ..(h,.)i,..*j,.+
	defb 06bh,02ch,001h,0ffh,02ch,06ch,02ch,001h,02dh,06dh,02ch,001h,02eh,06eh,02ch,001h	; 6254  k,..,l,.-m,..n,.
	defb 0ffh,02fh,06fh,02ch,001h	; 6264

; ----------------------------------------------------------------------
; DATOS no_visto_6269: un byte suelto (0xFF) entre dos bloques: no se ha visto
;   leer: ninguna instruccion trazada lo apunta con su banco puesto y ninguna
;   partida de la campana lo lee (tools/cobertura.py, tools/lee_sonidos.py);
;   en la ROM hay 3 pares de bytes que valen 0x6269
;   0x6269..0x626a  (1 bytes)
DATA_no_visto_6269:
	defb 0ffh	; 6269

; ----------------------------------------------------------------------
; DATOS leido_626A: 34 bytes que leen p26:6154, p26:615F, p26:6161, p26:6163
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p26:6154, p26:615F, p26:6161, p26:6163 (34 bytes)
;   0x626a..0x628c  (34 bytes)
DATA_leido_626A:
	defb 035h,075h,02ch,001h,0ffh,080h,080h,0f0h,000h,081h,087h,0f0h,000h,082h,082h,0f0h	; 626a  5u,.............
	defb 000h,083h,083h,0f0h,000h,084h,084h,0f0h,000h,0ffh,085h,085h,0f0h,000h,086h,088h	; 627a  ................
	defb 0f0h,000h	; 628a

; ----------------------------------------------------------------------
; DATOS no_visto_628C: no se ha visto leer: ninguna instruccion trazada lo
;   apunta con su banco puesto y ninguna partida de la campana lo lee
;   (tools/cobertura.py, tools/lee_sonidos.py); en la ROM hay 2 pares de bytes
;   que valen 0x628C
;   0x628c..0x62a6  (26 bytes)
DATA_no_visto_628C:
	defb 0ffh,030h,070h,0f0h,000h,0ffh,031h,071h,0f0h,000h,0ffh,032h,072h,0f0h,000h,0ffh	; 628c  .0p...1q...2r...
	defb 033h,073h,0f0h,000h,0ffh,034h,074h,0f0h,000h,0ffh	; 629c  3s...4t...

; ======================================================================
; CODIGO 0x62a6..0x6497  (497 bytes)
; ======================================================================


L_62A6:
	ld (0e5c2h),a		;62a6   ; el dibujo A (0xE5C2): su color (p26:62D3), sus datos (tabla p27:8F02) a 0xCE00 y su texto a la RAM
	call L_62D3		;62a9   ; su color
	ld a,(0e5c2h)		;62ac   ; lee el dibujo de la secuencia en pantalla
	ld de,08f02h		;62af   ; su entrada en la tabla de p27:8F02
	call 04a65h		;62b2   ; la palabra del dibujo
	ex de,hl			;62b5
	call L_631F		;62b6   ; desempaquetado y a la VRAM
	ld hl,0cd00h		;62b9   ; su texto a la RAM
	call 04b1fh		;62bc   ; texto_a_ram: copia a la RAM el texto de HL
	ld a,(0e5c2h)		;62bf   ; los dibujos 0x2F-0x34 y 0x6F-0x74 van ademas al bufer de 0xC400 (p26:63F7)
	sub 02fh		;62c2   ; los 0x2F-0x34...
	cp 006h		;62c4
	jr c,L_62CF		;62c6
	sub 040h		;62c8   ; ...y los 0x6F-0x74
	cp 006h		;62ca
	jr c,L_62CF		;62cc
	ret			;62ce
L_62CF:
	call L_63F7		;62cf   ; tambien al bufer
	ret			;62d2
L_62D3:
	ld bc,00000h		;62d3   ; el color y la marca 0xE5E7 de cada dibujo: 0 casi todos, 0x190 algunos, 0xF0 los demas
	ld a,(0e5c2h)		;62d6   ; lee el dibujo de la secuencia en pantalla
	cp 02fh		;62d9   ; los dibujos 0x2F, 0x6F, 0x30-0x34, 0x70-0x74 y 0x80-0x88: 0
	jr z,L_6307		;62db   ; el 0x2F y el 0x6F...
	cp 06fh		;62dd
	jr z,L_6307		;62df
	sub 030h		;62e1   ; ...los 0x30-0x34 y 0x70-0x74...
	cp 005h		;62e3
	jr c,L_6307		;62e5
	sub 040h		;62e7
	cp 005h		;62e9
	jr c,L_6307		;62eb
	sub 010h		;62ed   ; ...y los 0x80-0x88: 0
	cp 009h		;62ef
	jr c,L_6307		;62f1
	ld bc,00190h		;62f3   ; los 0x25-0x26 y 0x65-0x66: 0x190...
	ld a,(0e5c2h)		;62f6   ; lee el dibujo de la secuencia en pantalla
	sub 025h		;62f9   ; los 0x25-0x26...
	cp 002h		;62fb
	jr c,L_6307		;62fd
	sub 040h		;62ff   ; ...y 0x65-0x66: 0x190
	cp 002h		;6301
	jr c,L_6307		;6303
	ld c,0f0h		;6305   ; ...los demas: 0xF0
L_6307:
	ld a,(0e5c2h)		;6307   ; con los dibujos 0x32 y 0x72, 0xE5E7 = 1 (sus caracteres desde el 0x80)
	cp 032h		;630a   ; el 0x32 y el 0x72, con 0xE5E7 = 1
	jr z,L_631B		;630c
	cp 072h		;630e
	jr z,L_631B		;6310
L_6312:
	ld a,b			;6312   ; 0xE5E7 y el color (0xE5C3)
	ld (0e5e7h),a		;6313   ; 0xE5E7
	ld a,c			;6316   ; y el color
	ld (0e5c3h),a		;6317   ; guarda el color de los dibujos sueltos
	ret			;631a
L_631B:
	ld b,001h		;631b
	jr L_6312		;631d
L_631F:
	call L_632C		;631f   ; desempaquetado (p26:6349)...
	call L_6349		;6322   ; ...los caracteres libres (p26:63C7)...
	call L_63C7		;6325   ; ...la lista del bufer (p26:63F7)...
	call L_6456		;6328   ; ...y a la VRAM (p26:6456)
	ret			;632b
L_632C:
	ld a,(0e5e7h)		;632c   ; el siguiente caracter libre de cada tercio: 1, o 0x80 con 0xE5E7
	or a			;632f   ; 0x80 con 0xE5E7
	ld a,001h		;6330   ; 1, o 0x80 con 0xE5E7
	jr z,L_6336		;6332
	ld a,080h		;6334
L_6336:
	ld (0e5c4h),a		;6336   ; en los seis contadores de 0xE5C4
	ld (0e5c5h),a		;6339   ; los seis
	ld (0e5c6h),a		;633c
	ld (0e5c7h),a		;633f   ; guarda el siguiente caracter libre de cada tercio
	ld (0e5c8h),a		;6342
	ld (0e5c9h),a		;6345
	ret			;6348
L_6349:
	ld de,0ce00h		;6349   ; los datos del dibujo de HL a 0xCE00: por cada trozo, sus dos bytes, cuantos caracteres (bits 0-4), el tercio (bits 5-6) y el bit 7
L_634C:
	ldi		;634c   ; los dos primeros bytes del trozo, tal cual
	ldi		;634e
	ld a,(hl)			;6350   ; cuantos caracteres (bits 0-4), tambien en B'
	and 01fh		;6351   ; cuantos
	ld (de),a			;6353
	exx			;6354
	ld b,a			;6355
	exx			;6356
	inc de			;6357
	ld a,(hl)			;6358   ; el tercio (bits 5-6)
	rlca			;6359   ; el tercio
	rlca			;635a
	rlca			;635b
	and 003h		;635c
	ld (de),a			;635e
	inc de			;635f
	bit 7,(hl)		;6360   ; el bit 7: el ultimo byte del trozo, 0xFE o 0xFF (0xFF acaba la lista)
	ld a,0feh		;6362   ; 0xFE, o 0xFF el ultimo
	jr z,L_6367		;6364
	inc a			;6366
L_6367:
	push af			;6367
	inc hl			;6368   ; sus caracteres (p26:6373)
	call L_6373		;6369   ; los caracteres del trozo: de 8 en 8 con una mascara (los dibujos bajos) o de 6 bits de 3 en 3
	pop af			;636c
	ld (de),a			;636d   ; la marca del final
	inc de			;636e
	inc a			;636f   ; 0xFF: acabada
	jr nz,L_634C		;6370
	ret			;6372
L_6373:
	ld a,(0e5c2h)		;6373   ; los caracteres del trozo: de 8 en 8 con una mascara (los dibujos bajos) o de 6 bits de 3 en 3
	cp 040h		;6376   ; los dibujos desde el 0x40, de otra forma
	jr nc,L_6390		;6378
	ld b,008h		;637a   ; los dibujos bajos (antes del 0x40): una mascara C de 8 bits...
	ld c,(hl)			;637c   ; la mascara
	inc hl			;637d
L_637E:
	ld a,(hl)			;637e   ; ...por cada caracter su byte y un bit de la mascara
	inc hl			;637f
	ld (de),a			;6380   ; el byte
	inc de			;6381
	xor a			;6382   ; y un bit de la mascara
	rl c		;6383
	rla			;6385
	ld (de),a			;6386
	inc de			;6387
	exx			;6388   ; uno menos (B'); al acabar, fuera
	dec b			;6389   ; uno menos; acabados, fuera
	exx			;638a
	ret z			;638b
	djnz L_637E		;638c
	jr L_6373		;638e   ; otra mascara
L_6390:
	ld b,003h		;6390   ; los demas: de 3 en 3, 6 bits de cada byte...
L_6392:
	ld a,(hl)			;6392
	and 03fh		;6393   ; los 6 bits bajos
	ld (de),a			;6395
	inc hl			;6396
	inc de			;6397
	xor a			;6398   ; ...y un 0
	ld (de),a			;6399   ; y un 0
	inc de			;639a
	exx			;639b
	dec b			;639c   ; uno menos; acabados, fuera
	exx			;639d
	ret z			;639e
	djnz L_6392		;639f
	push hl			;63a1   ; el cuarto: los 2 bits altos de los tres anteriores juntos
	dec hl			;63a2
	ld c,(hl)			;63a3
	rlc c		;63a4
	rlc c		;63a6
	dec hl			;63a8
	ld a,(hl)			;63a9   ; sus 2 bits altos...
	rla			;63aa
	rl c		;63ab
	rla			;63ad
	rl c		;63ae
	dec hl			;63b0
	ld a,(hl)			;63b1   ; ...y los del anterior...
	rla			;63b2
	rl c		;63b3
	rla			;63b5
	rl c		;63b6
	ld a,c			;63b8   ; ...hacen el cuarto, y un 0
	and 03fh		;63b9
	ld (de),a			;63bb
	inc de			;63bc
	xor a			;63bd
	ld (de),a			;63be
	inc de			;63bf
	pop hl			;63c0
	exx			;63c1   ; uno menos; al acabar, fuera
	dec b			;63c2   ; uno menos; acabados, fuera
	exx			;63c3
	ret z			;63c4
	jr L_6390		;63c5
L_63C7:
	ld hl,0ce00h		;63c7   ; a cada trozo, los caracteres libres de su tercio (0xE5C4 + tercio), seguidos
	ld de,0cd00h		;63ca   ; la lista nueva en 0xCD00
L_63CD:
	ldi		;63cd   ; los dos primeros bytes tal cual
	ldi		;63cf
	ld b,(hl)			;63d1   ; cuantos (B)
	push bc			;63d2   ; cuantos
	inc hl			;63d3
	ld a,(hl)			;63d4   ; el tercio: su siguiente caracter libre (0xE5C4 + tercio)
	inc hl			;63d5
	exx			;63d6
	ld hl,0e5c4h		;63d7   ; el contador de su tercio
	add a,l			;63da
	ld l,a			;63db
	exx			;63dc
	ld a,b			;63dd   ; se salta la lista de entrada (2 bytes por caracter)
	add a,a			;63de   ; se salta la lista vieja (2 x cuantos)
	ld c,a			;63df
	ld b,000h		;63e0
	add hl,bc			;63e2
	exx			;63e3   ; el primero libre
	ld a,(hl)			;63e4   ; el primero libre
	exx			;63e5
	pop bc			;63e6
L_63E7:
	ld (de),a			;63e7   ; B caracteres seguidos
	inc de			;63e8
	inc a			;63e9   ; seguidos
	djnz L_63E7		;63ea
	exx			;63ec   ; y el siguiente libre de ese tercio
	ld (hl),a			;63ed   ; el contador avanza
	exx			;63ee
	ld a,(hl)			;63ef   ; el byte de cierre: 0xFF acaba
	inc hl			;63f0   ; el cierre
	ld (de),a			;63f1
	inc de			;63f2
	inc a			;63f3   ; 0xFF: acabada
	jr nz,L_63CD		;63f4
	ret			;63f6
L_63F7:
	ld b,080h		;63f7   ; los trozos como lista para el bufer de 0xC400: tercio, caracter y cuantos
	ld a,(0e5c2h)		;63f9   ; lee el dibujo de la secuencia en pantalla
	cp 032h		;63fc   ; el 0x32 y el 0x72 desde 0x80, los demas desde 1
	jr z,L_6406		;63fe
	cp 072h		;6400
	jr z,L_6406		;6402
	ld b,001h		;6404
L_6406:
	ld a,b			;6406   ; 0xEF80-0xEF82: el primer caracter de cada tercio (0x80 en los dibujos 0x32 y 0x72, 1 en los demas)
	ld (0ef80h),a		;6407
	ld (0ef81h),a		;640a
	ld (0ef82h),a		;640d
	ld ix,0ce00h		;6410   ; la lista desempaquetada
	ld de,0c400h		;6414   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
L_6417:
	ld a,(ix+003h)		;6417   ; por cada trozo: los tercios en mascara (4, 2 o 1)
	ld c,004h		;641a   ; el tercio en mascara: 4 el de arriba...
	or a			;641c
	jr z,L_6426		;641d
	ld c,002h		;641f   ; ...2 el de enmedio, 1 el de abajo
	dec a			;6421
	jr z,L_6426		;6422
	ld c,001h		;6424
L_6426:
	ld a,c			;6426
	ld (de),a			;6427
	inc de			;6428
	exx			;6429   ; el caracter del tercio...
	ld a,(ix+003h)		;642a   ; el caracter siguiente de ese tercio
	ld hl,0ef80h		;642d
	add a,l			;6430
	ld l,a			;6431
	ld a,(hl)			;6432
	exx			;6433
	ld (de),a			;6434
	inc de			;6435
	ld b,a			;6436   ; ...cuantos, y el tercio avanza
	ld a,(ix+002h)		;6437   ; cuantos
	ld (de),a			;643a
	inc de			;643b
	add a,b			;643c   ; y el tercio avanza
	exx			;643d
	ld (hl),a			;643e
	exx			;643f
	ld l,(ix+002h)		;6440   ; el trozo siguiente: 2 x (cuantos + 2) + 1 bytes
	inc l			;6443   ; el trozo siguiente
	inc l			;6444
	ld h,000h		;6445
	add hl,hl			;6447
	inc hl			;6448
	ex de,hl			;6449
	add ix,de		;644a
	ex de,hl			;644c
	ld a,(ix-001h)		;644d   ; hasta el 0xFF
	inc a			;6450   ; hasta el 0xFF
	jr nz,L_6417		;6451
	xor a			;6453   ; y un 0 al final
	ld (de),a			;6454
	ret			;6455
L_6456:
	ld ix,0ce00h		;6456   ; cada trozo a la VRAM: sus dibujos de 8 bytes (p00:4F02)
L_645A:
	call L_6470		;645a   ; cada trozo a la VRAM (p26:6470)
	ld l,(ix+002h)		;645d   ; el siguiente
	inc l			;6460   ; el trozo siguiente
	inc l			;6461
	ld h,000h		;6462
	add hl,hl			;6464
	inc hl			;6465
	ex de,hl			;6466
	add ix,de		;6467
	ld a,(ix-001h)		;6469
	inc a			;646c   ; hasta el 0xFF
	jr nz,L_645A		;646d
	ret			;646f
L_6470:
	push ix		;6470   ; desde su cuarto byte: B palabras, cada una un dibujo de p20:6018 (p00:4F02)
	pop hl			;6472
	inc hl			;6473
	inc hl			;6474
	inc hl			;6475
	inc hl			;6476
	ld b,(ix+002h)		;6477   ; cuantos
L_647A:
	push bc			;647a   ; cada dibujo
	ld e,(hl)			;647b   ; el dibujo
	inc hl			;647c
	ld d,(hl)			;647d
	inc hl			;647e
	push hl			;647f
	call 04f02h		;6480   ; a un caracter libre del tercio
	pop hl			;6483
	pop bc			;6484
	djnz L_647A		;6485
	ret			;6487
L_6488:
	call L_648F		;6488   ; la eleccion de nave, cada cuadro: por su paso (p26:648F) y los sprites (p26:683C)
	call L_683C		;648b   ; y el bufer a la VRAM
	ret			;648e
L_648F:
	ld bc,(0e31bh)		;648f   ; por el paso 0xE31B (C) y el subpaso 0xE31C (B)
	ld a,c			;6493   ; por el paso
	call 04093h		;6494   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6497: 5 destinos del despachador p00:4093 (call en p26:6494, el
;   indice en A): 64A1, 6541, 662E, 6700, 67C5; lo leen p26:6494 (10 bytes)
;   0x6497..0x64a1  (10 bytes)
DATA_tabla_6497:
	defw 064a1h,06541h,0662eh,06700h,067c5h	; 6497

; ======================================================================
; CODIGO 0x64a1..0x64a5  (4 bytes)
; ======================================================================


L_64A1:
	ld a,b			;64a1   ; paso 0, la entrada: por el subpaso
	call 04093h		;64a2   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_64A5: 5 destinos del despachador p00:4093 (call en p26:64A2, el
;   indice en A): 64AF, 64F7, 6515, 6521, 652F; lo leen p26:64A2 (10 bytes)
;   0x64a5..0x64af  (10 bytes)
DATA_tabla_64A5:
	defw 064afh,064f7h,06515h,06521h,0652fh	; 64a5

; ======================================================================
; CODIGO 0x64af..0x64e3  (52 bytes)
; ======================================================================


L_64AF:
	call 04aa9h		;64af   ; subpaso 0: la pantalla en blanco y la paleta 1 (p00:5709); 0xE534 = 1 cuadro...
	ld a,001h		;64b2   ; la paleta 1
	call 05709h		;64b4   ; paleta: la paleta A de p16:6B74
	call L_6827		;64b7   ; la VRAM a cero
	call L_6858		;64ba   ; el bufer a cero
	call eleccion_subpaso_siguiente		;64bd   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ld a,001h		;64c0   ; un cuadro de espera
	ld (0e534h),a		;64c2
	ld a,(0e302h)		;64c5   ; ...o, con dos jugadores, 0x78 y el texto SELECT PLAYER 1 (un 2 con el segundo)
	and 020h		;64c8   ; con dos jugadores...
	ret z			;64ca
	ld a,078h		;64cb   ; ...0x78 cuadros...
	ld (0e534h),a		;64cd
	call 054c3h		;64d0   ; carga_fuente: carga la fuente en los tres tercios (bancos 20-22)
	ld hl,064e3h		;64d3   ; ...y SELECT PLAYER 1
	call 04b1fh		;64d6   ; texto_a_ram: copia a la RAM el texto de HL
	ld a,(0e324h)		;64d9   ; con el segundo...
	or a			;64dc
	ret z			;64dd
	ld a,003h		;64de   ; ...el 1 pasa a 2
	dec de			;64e0
	ld (de),a			;64e1
	ret			;64e2

; ----------------------------------------------------------------------
; DATOS texto_ram_64E3: texto a la RAM: direccion, letras, 0xFE y otra
;   direccion, 0xFF acaba (p00:4B1F); lo leen p26:64D6 (20 bytes)
;   0x64e3..0x64f7  (20 bytes)
DATA_texto_ram_64E3:
	defb 0cdh,0c4h,024h,016h,01dh,016h,014h,025h,0feh,00ch,0c5h,021h,01dh,012h,02ah,016h	; 64e3  ..$....%...!..*.
	defb 023h,000h,002h,0ffh	; 64f3

; ======================================================================
; CODIGO 0x64f7..0x6545  (78 bytes)
; ======================================================================


L_64F7:
	ld hl,0e534h		;64f7   ; subpaso 1: al acabar la espera, el marco y las cuatro naves
	dec (hl)			;64fa   ; la espera
	ret nz			;64fb
	call L_6858		;64fc   ; la pantalla: el bufer a cero, la eleccion a cero (p26:680B)...
	call L_680B		;64ff   ; la eleccion a cero
	call L_68C9		;6502   ; ...los cinco marcos, las naves, los colores, los de p22 y la fila de armas
	call L_6A45		;6505   ; las cuatro naves
	call L_6BF9		;6508   ; los colores de los marcos
	call L_6C79		;650b   ; los de p22
	call L_6B4E		;650e   ; la lista de 0x6B57 aparece
	call eleccion_subpaso_siguiente		;6511   ; y al subpaso siguiente
	ret			;6514
L_6515:
	call llenado_cuadro		;6515   ; subpaso 2: p26:7A3D hasta que 0xE564 vuelva a 0
	ld a,(0e564h)		;6518   ; lee el llenado fila a fila en marcha
	or a			;651b   ; hasta que acabe
	ret nz			;651c
	call eleccion_subpaso_siguiente		;651d   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;6520
L_6521:
	call L_6B61		;6521   ; subpaso 3: el dibujo de la nave 0 (p26:695A)
	call L_6B6E		;6524   ; la fila de armas
	xor a			;6527
	call L_695A		;6528   ; de la nave 0
	call eleccion_subpaso_siguiente		;652b   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;652e
L_652F:
	call llenado2_cuadro		;652f   ; subpaso 4: hasta que 0xE564 vuelva a 0; luego al paso 1 (p26:67F9)
	call llenado_cuadro		;6532   ; los llenados
	call vuelve_cuadro		;6535   ; y lo que vuelve
	ld a,(0e564h)		;6538   ; lee el llenado fila a fila en marcha
	or a			;653b   ; hasta que acabe
	ret nz			;653c
	call eleccion_paso_siguiente		;653d   ; al paso 1
	ret			;6540
L_6541:
	ld a,b			;6541   ; paso 1, la nave: por el subpaso
	call 04093h		;6542   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6545: 3 destinos del despachador p00:4093 (call en p26:6542, el
;   indice en A): 654B, 6592, 65A7; lo leen p26:6542 (6 bytes)
;   0x6545..0x654b  (6 bytes)
DATA_tabla_6545:
	defw 0654bh,06592h,065a7h	; 6545  -> L_654B L_6592 L_65A7

; ======================================================================
; CODIGO 0x654b..0x65f0  (165 bytes)
; ======================================================================


L_654B:
	call L_65B6		;654b   ; subpaso 0: los cursores cambian la nave (p26:65B6); con un boton (bits 4-5) se elige
	jp nz,eleccion_subpaso_siguiente		;654e   ; los cursores: la nave cambia
	ld a,(0e308h)		;6551   ; lee lo recien pulsado (mando y cursores)
	and 030h		;6554   ; un boton: se elige
	ret z			;6556
	call L_6564		;6557   ; el bufer de lo de abajo segun la nave
	call L_6B14		;655a   ; se borran las otras
	call eleccion_subpaso_siguiente		;655d   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	call eleccion_subpaso_siguiente		;6560   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;6563
L_6564:
	ld a,(0e380h)		;6564   ; 0xE530 = 0x200 con las naves 0 y 1 (0 con la 2 y la 3); 0xE532, ocho veces
	cp 002h		;6567   ; las naves de arriba (0 y 1): lo demas ocho filas mas abajo en el bufer (0x200)...
	ld hl,00000h		;6569
	jr nc,L_6571		;656c
	ld hl,00200h		;656e
L_6571:
	ld (0e530h),hl		;6571   ; ...0xE530, y x 8 en 0xE532
	add hl,hl			;6574
	add hl,hl			;6575
	add hl,hl			;6576
	ld (0e532h),hl		;6577
	ret			;657a
L_657B:
	ld a,(0e380h)		;657b   ; al reves: 0x200 con la 2 y la 3
	cp 002h		;657e   ; al reves: las de abajo, 0x200
	ld hl,00000h		;6580
	jr c,L_6588		;6583
	ld hl,00200h		;6585
L_6588:
	ld (0e530h),hl		;6588   ; con las naves de abajo, 0x200
	add hl,hl			;658b
	add hl,hl			;658c
	add hl,hl			;658d
	ld (0e532h),hl		;658e
	ret			;6591
L_6592:
	call llenado2_cuadro		;6592   ; subpaso 1: hasta que 0xE569 vuelva a 0
	call llenado3_cuadro		;6595   ; los llenados...
	call vuelve_cuadro		;6598   ; vuelve_cuadro: lo guardado vuelve fila a fila, cada 4 cuadros
	call llenado_cuadro		;659b   ; llenado_cuadro: el llenado fila a fila, cada 4 cuadros
	ld a,(0e569h)		;659e   ; ...hasta acabar
	or a			;65a1
	ret nz			;65a2
	call eleccion_subpaso_anterior		;65a3   ; al subpaso anterior
	ret			;65a6
L_65A7:
	call borrado_cuadro		;65a7   ; subpaso 2: hasta que 0xE560 vuelva a 0; p26:6A9A y al paso 2
	ld a,(0e560h)		;65aa   ; lee el borrado fila a fila en marcha
	or a			;65ad   ; hasta acabar
	ret nz			;65ae
	call L_6A9A		;65af   ; las otras naves fuera
	call eleccion_paso_siguiente		;65b2   ; al paso 2
	ret			;65b5
L_65B6:
	ld hl,0e380h		;65b6   ; los cursores (p26:6600) cambian la nave (0xE380): el marco de la vieja se apaga (color de 0x6ABC), el de la nueva a 0xF0 y su dibujo (p26:695A); NZ si cambia
	ld b,(hl)			;65b9   ; la nave de antes
	call L_6600		;65ba   ; los cursores
	ld a,(hl)			;65bd   ; la misma: nada
	cp b			;65be
	ret z			;65bf
	push bc			;65c0
	ld d,a			;65c1
	ld hl,06abch		;65c2   ; el color del marco de la vieja (tabla de 0x6ABC)
	call 04a6eh		;65c5   ; lee_byte: A = el byte A de la tabla HL
	ld c,a			;65c8
	ld a,d			;65c9   ; la lista del marco viejo (0x65F0 + 4 x nave)...
	add a,a			;65ca
	add a,a			;65cb
	ld hl,065f0h		;65cc
	call 04089h		;65cf   ; suma_a_hl: HL = HL + A
	call llenado2_empieza		;65d2   ; ...se llena con su color
	pop af			;65d5
	add a,a			;65d6   ; la del nuevo...
	add a,a			;65d7
	ld hl,065f0h		;65d8
	call 04089h		;65db   ; suma_a_hl: HL = HL + A
	ld c,0f0h		;65de   ; ...con 0xF0
	call llenado3_empieza		;65e0   ; llenado3_empieza: otro llenado fila a fila (0xE56E) de la lista HL con C
	call L_6B6E		;65e3   ; la fila de armas...
	ld a,(0e380h)		;65e6   ; lee la nave elegida (0 a 3)
	call L_695A		;65e9   ; ...de la nave nueva
	ld a,001h		;65ec   ; NZ: ha cambiado
	or a			;65ee
	ret			;65ef

; ----------------------------------------------------------------------
; DATOS tabla_65F0: tabla que se lee desde HL = 0x65F0 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:65CC, p26:65D8 (16 bytes)
;   0x65f0..0x6600  (16 bytes)
DATA_tabla_65F0:
	defb 004h,011h,032h,000h,004h,091h,02ah,000h,001h,011h,02ch,000h,001h,091h,032h,000h	; 65f0  ..2...*...,...2.

; ======================================================================
; CODIGO 0x6600..0x6632  (50 bytes)
; ======================================================================


L_6600:
	ld a,(0e308h)		;6600   ; arriba (bit 0) y abajo (bit 1) cambian de fila (2 menos o mas), izquierda (bit 2) y derecha (bit 3) de columna (1 menos o mas)
	rra			;6603   ; arriba (bit 0)...
	jr c,L_6610		;6604
	rra			;6606   ; ...abajo (bit 1)...
	jr c,L_6618		;6607
	rra			;6609   ; ...izquierda (bit 2)...
	jr c,L_6620		;660a
	rra			;660c   ; ...derecha (bit 3)
	jr c,L_6627		;660d
	ret			;660f
L_6610:
	ld a,(hl)			;6610   ; arriba: de la fila de abajo a la de arriba
	cp 002h		;6611
	ret c			;6613
	sub 002h		;6614
	ld (hl),a			;6616
	ret			;6617
L_6618:
	ld a,(hl)			;6618   ; abajo: de la de arriba a la de abajo
	cp 002h		;6619
	ret nc			;661b
	add a,002h		;661c
	ld (hl),a			;661e
	ret			;661f
L_6620:
	ld a,(hl)			;6620   ; izquierda: de la columna de la derecha a la de la izquierda
	bit 0,a		;6621
	ret z			;6623
	dec a			;6624
	ld (hl),a			;6625
	ret			;6626
L_6627:
	ld a,(hl)			;6627   ; derecha: al reves
	bit 0,a		;6628
	ret nz			;662a
	inc a			;662b
	ld (hl),a			;662c
	ret			;662d
L_662E:
	ld a,b			;662e   ; paso 2, el escudo: por el subpaso
	call 04093h		;662f   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6632: 5 destinos del despachador p00:4093 (call en p26:662F, el
;   indice en A): 663C, 664C, 665B, 6671, 6680; lo leen p26:662F (10 bytes)
;   0x6632..0x663c  (10 bytes)
DATA_tabla_6632:
	defw 0663ch,0664ch,0665bh,06671h,06680h	; 6632

; ======================================================================
; CODIGO 0x663c..0x66dd  (161 bytes)
; ======================================================================


L_663C:
	call L_6C29		;663c   ; subpaso 0: el marco y los dos escudos
	call L_689F		;663f   ; los marcos de los escudos...
	call L_69F0		;6642   ; ...los dos escudos...
	call L_6BA4		;6645   ; ...y los marcos de la nave
	call eleccion_subpaso_siguiente		;6648   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;664b
L_664C:
	call llenado_cuadro		;664c   ; subpaso 1: hasta que 0xE580 vuelva a 0
	call vuelve_cuadro		;664f   ; lo que vuelve...
	ld a,(0e580h)		;6652   ; lee los graficos que vuelven fila a fila, en marcha
	or a			;6655   ; ...hasta acabar
	ret nz			;6656
	call eleccion_subpaso_siguiente		;6657   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;665a
L_665B:
	call L_669D		;665b   ; subpaso 2: los cursores cambian el escudo (p26:669D); con un boton se elige
	jp nz,eleccion_subpaso_siguiente		;665e   ; los cursores: cambia
	ld a,(0e308h)		;6661   ; lee lo recien pulsado (mando y cursores)
	and 030h		;6664   ; un boton: se elige
	ret z			;6666
	call L_6ACB		;6667   ; se borra lo que no se eligio
	call eleccion_subpaso_siguiente		;666a   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	call eleccion_subpaso_siguiente		;666d   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;6670
L_6671:
	call borrado_cuadro		;6671   ; subpaso 3: hasta que 0xE560 vuelva a 0
	call llenado2_cuadro		;6674   ; el llenado...
	ld a,(0e560h)		;6677   ; lee el borrado fila a fila en marcha
	or a			;667a   ; ...hasta acabar
	ret nz			;667b
	call eleccion_subpaso_anterior		;667c   ; eleccion_subpaso_anterior: el subpaso anterior de la eleccion
	ret			;667f
L_6680:
	call borrado_cuadro		;6680   ; subpaso 4: el escudo elegido (p26:6A89), la nave (p26:6AAB) y al paso 3
	ld a,(0e560h)		;6683   ; lee el borrado fila a fila en marcha
	or a			;6686   ; hasta que acabe el borrado
	ret nz			;6687
	ld a,(0e37fh)		;6688   ; lee el escudo elegido (0 SHIELD, 1 FORCE FIELD)
	xor 001h		;668b   ; el escudo que no se eligio fuera...
	call L_6A89		;668d   ; borra el escudo A con su marco (dos mas de alto y de ancho)
	ld a,(0e380h)		;6690   ; lee la nave elegida (0 a 3)
	call L_6AAB		;6693   ; ...y la nave
	call L_657B		;6696   ; lo de abajo del bufer, al reves
	call eleccion_paso_siguiente		;6699   ; al paso 3
	ret			;669c
L_669D:
	ld hl,0e37fh		;669d   ; cualquier cursor cambia el escudo (0xE37F: 0 SHIELD, 1 FORCE FIELD): el marco viejo se apaga y el nuevo a 0xF0; NZ si cambia
	ld c,(hl)			;66a0   ; el escudo de antes
	call L_66F5		;66a1   ; los cursores
	ld a,(hl)			;66a4   ; el mismo: nada
	cp c			;66a5
	ret z			;66a6
	ld a,c			;66a7   ; el marco viejo (0x66DD + 4 x escudo, 0x0C mas con las naves de abajo)...
	add a,a			;66a8
	add a,a			;66a9
	ld hl,066ddh		;66aa
	call 04089h		;66ad   ; suma_a_hl: HL = HL + A
	ld a,(0e380h)		;66b0   ; lee la nave elegida (0 a 3)
	cp 002h		;66b3
	jr nc,L_66BB		;66b5
	ld bc,0000ch		;66b7
	add hl,bc			;66ba
L_66BB:
	call borrado_empieza		;66bb   ; ...se borra
	ld a,(0e37fh)		;66be   ; lee el escudo elegido (0 SHIELD, 1 FORCE FIELD)
	add a,a			;66c1   ; el nuevo...
	add a,a			;66c2
	ld hl,066ddh		;66c3
	call 04089h		;66c6   ; suma_a_hl: HL = HL + A
	ld a,(0e380h)		;66c9   ; lee la nave elegida (0 a 3)
	cp 002h		;66cc
	jr nc,L_66D4		;66ce
	ld bc,0000ch		;66d0
	add hl,bc			;66d3
L_66D4:
	ld c,0f0h		;66d4   ; ...con 0xF0
	call llenado2_empieza		;66d6   ; llenado2_empieza: otro llenado fila a fila (0xE569) de la lista HL con C
	ld a,001h		;66d9   ; NZ: ha cambiado
	or a			;66db
	ret			;66dc

; ----------------------------------------------------------------------
; DATOS tabla_66DD: tabla que se lee desde HL = 0x66DD con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:66AA, p26:66C3, p26:6779, p26:6792 (24 bytes)
;   0x66dd..0x66f5  (24 bytes)
DATA_tabla_66DD:
	defb 004h,001h,006h,000h,004h,007h,006h,000h,004h,00dh,006h,000h,001h,001h,006h,000h	; 66dd  ................
	defb 001h,007h,006h,000h,001h,00dh,006h,000h	; 66ed  ........

; ======================================================================
; CODIGO 0x66f5..0x6704  (15 bytes)
; ======================================================================


L_66F5:
	ld a,(0e308h)		;66f5   ; cualquier cursor (bits 0-3): 0xE37F cambia entre 0 y 1
	and 00fh		;66f8   ; sin cursores, nada
	ret z			;66fa
	ld a,(hl)			;66fb   ; cambia entre 0 y 1
	xor 001h		;66fc
	ld (hl),a			;66fe
	ret			;66ff
L_6700:
	ld a,b			;6700   ; paso 3, las opciones: por el subpaso
	call 04093h		;6701   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6704: 4 destinos del despachador p00:4093 (call en p26:6701, el
;   indice en A): 670C, 671C, 672B, 675A; lo leen p26:6701 (8 bytes)
;   0x6704..0x670c  (8 bytes)
DATA_tabla_6704:
	defw 0670ch,0671ch,0672bh,0675ah	; 6704  -> L_670C L_671C L_672B L_675A

; ======================================================================
; CODIGO 0x670c..0x67c9  (189 bytes)
; ======================================================================


L_670C:
	call L_6866		;670c   ; subpaso 0: el marco, las tres opciones (p26:699D) y lo demas
	call L_699D		;670f   ; las tres opciones...
	call L_6C18		;6712   ; ...los marcos del otro lado...
	call L_6B93		;6715   ; ...y los de la nave
	call eleccion_subpaso_siguiente		;6718   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;671b
L_671C:
	call llenado_cuadro		;671c   ; subpaso 1: hasta que 0xE580 vuelva a 0
	call vuelve_cuadro		;671f   ; lo que vuelve, hasta acabar
	ld a,(0e580h)		;6722   ; lee los graficos que vuelven fila a fila, en marcha
	or a			;6725
	ret nz			;6726
	call eleccion_subpaso_siguiente		;6727   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;672a
L_672B:
	call L_6743		;672b   ; subpaso 2: las opciones se mueven (p26:6743) y los cursores cambian (p26:676C); con un boton, al paso 4 con 0x3C cuadros
	call L_676C		;672e   ; los cursores cambian las opciones
	jp nz,eleccion_subpaso_siguiente		;6731   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ld a,(0e308h)		;6734   ; lee lo recien pulsado (mando y cursores)
	and 030h		;6737   ; un boton: se eligen...
	ret z			;6739
	call eleccion_paso_siguiente		;673a   ; ...al paso 4...
	ld a,03ch		;673d   ; ...con 0x3C cuadros
	ld (0e534h),a		;673f
	ret			;6742
L_6743:
	ld a,(0e303h)		;6743   ; cada 8 cuadros el dibujo siguiente de las opciones (0xE535, de 0 a 3)
	and 007h		;6746   ; cada 8 cuadros
	ret nz			;6748
	ld hl,0e535h		;6749   ; el dibujo siguiente (0 a 3)...
	ld a,(hl)			;674c
	inc a			;674d
	cp 004h		;674e
	jr c,L_6753		;6750
	xor a			;6752
L_6753:
	ld (hl),a			;6753
	add a,002h		;6754   ; ...de la opcion 2 (ROLLING): da vueltas
	call L_69AA		;6756   ; la opcion A: el RLE de p28:A1C3 a 0xE800 y su rectangulo de 6 x 8 en el bufer
	ret			;6759
L_675A:
	call L_6743		;675a   ; subpaso 3: lo mismo hasta que 0xE560 vuelva a 0
	call borrado_cuadro		;675d   ; el borrado y el llenado
	call llenado2_cuadro		;6760   ; llenado2_cuadro: el llenado de 0xE569, cada 4 cuadros
	ld a,(0e560h)		;6763   ; lee el borrado fila a fila en marcha
	or a			;6766   ; hasta acabar
	ret nz			;6767
	call eleccion_subpaso_anterior		;6768   ; eleccion_subpaso_anterior: el subpaso anterior de la eleccion
	ret			;676b
L_676C:
	ld hl,0e37eh		;676c   ; izquierda y derecha cambian las opciones (0xE37E: 0 SHADOW, 1 FIXED, 2 ROLLING): el marco viejo se apaga y el nuevo a 0xF0; NZ si cambia
	ld c,(hl)			;676f   ; las de antes
	call L_67AC		;6770   ; los cursores
	ld a,(hl)			;6773   ; las mismas: nada
	cp c			;6774
	ret z			;6775
	ld a,c			;6776   ; el marco viejo (0x66DD + 4 x opcion, 0x0C mas con las naves de arriba)...
	add a,a			;6777
	add a,a			;6778
	ld hl,066ddh		;6779
	call 04089h		;677c   ; suma_a_hl: HL = HL + A
	ld a,(0e380h)		;677f   ; lee la nave elegida (0 a 3)
	cp 002h		;6782
	jr c,L_678A		;6784
	ld bc,0000ch		;6786
	add hl,bc			;6789
L_678A:
	call borrado_empieza		;678a   ; ...se borra
	ld a,(0e37eh)		;678d   ; lee las opciones elegidas (0 SHADOW, 1 FIXED, 2 ROLLING)
	add a,a			;6790   ; el nuevo...
	add a,a			;6791
	ld hl,066ddh		;6792
	call 04089h		;6795   ; suma_a_hl: HL = HL + A
	ld a,(0e380h)		;6798   ; lee la nave elegida (0 a 3)
	cp 002h		;679b
	jr c,L_67A3		;679d
	ld bc,0000ch		;679f
	add hl,bc			;67a2
L_67A3:
	ld c,0f0h		;67a3   ; ...con 0xF0
	call llenado2_empieza		;67a5   ; llenado2_empieza: otro llenado fila a fila (0xE569) de la lista HL con C
	ld a,001h		;67a8   ; NZ: ha cambiado
	or a			;67aa
	ret			;67ab
L_67AC:
	ld a,(0e308h)		;67ac   ; izquierda (bit 2) una menos, derecha (bit 3) una mas, de 0 a 2
	rra			;67af   ; izquierda (bit 2)...
	rra			;67b0
	rra			;67b1
	jr c,L_67B8		;67b2
	rra			;67b4   ; ...derecha (bit 3)
	jr c,L_67BE		;67b5
	ret			;67b7
L_67B8:
	ld a,(hl)			;67b8   ; una menos, hasta 0
	or a			;67b9
	ret z			;67ba
	dec a			;67bb
	ld (hl),a			;67bc
	ret			;67bd
L_67BE:
	ld a,(hl)			;67be   ; una mas, hasta 2
	cp 002h		;67bf
	ret nc			;67c1
	inc a			;67c2
	ld (hl),a			;67c3
	ret			;67c4
L_67C5:
	ld a,b			;67c5   ; paso 4, la espera: por el subpaso
	call 04093h		;67c6   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_67C9: 3 destinos del despachador p00:4093 (call en p26:67C6, el
;   indice en A): 67CF, 67DB, 67E7; lo leen p26:67C6 (6 bytes)
;   0x67c9..0x67cf  (6 bytes)
DATA_tabla_67C9:
	defw 067cfh,067dbh,067e7h	; 67c9  -> L_67CF L_67DB L_67E7

; ======================================================================
; CODIGO 0x67cf..0x69d8  (521 bytes)
; ======================================================================


L_67CF:
	ld hl,0e534h		;67cf   ; subpaso 0: al acabar los cuadros de 0xE534, p26:6AC0
	dec (hl)			;67d2   ; la espera
	ret nz			;67d3
	call L_6AC0		;67d4   ; lo que no se eligio fuera
	call eleccion_subpaso_siguiente		;67d7   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;67da
L_67DB:
	call borrado_cuadro		;67db   ; subpaso 1: hasta que 0xE560 vuelva a 0
	ld a,(0e560h)		;67de   ; lee el borrado fila a fila en marcha
	or a			;67e1   ; hasta acabar
	ret nz			;67e2
	call eleccion_subpaso_siguiente		;67e3   ; eleccion_subpaso_siguiente: el subpaso siguiente de la eleccion (0xE31C)
	ret			;67e6
L_67E7:
	call 04aa9h		;67e7   ; subpaso 2: la pantalla en blanco, 0xE399 = 1, la vuelta al azar (0xE381) y 0xE31B = 0xFF: acabada
	call L_6827		;67ea   ; la VRAM y el bufer a cero
	call L_6858		;67ed   ; el bufer de 0xC400 a cero (0x300 bytes)
	call L_6819		;67f0   ; 0xE399 y la vuelta al azar
	ld a,0ffh		;67f3   ; acabada (0xE31B = 0xFF)
	ld (0e31bh),a		;67f5   ; guarda el paso de la eleccion de nave
	ret			;67f8
eleccion_paso_siguiente:		; el paso siguiente de la eleccion (0xE31B)
	ld hl,0e31bh		;67f9   ; el paso siguiente (0xE31B), con el subpaso a 0
	inc (hl)			;67fc   ; el paso + 1...
	inc hl			;67fd
	ld (hl),000h		;67fe   ; ...y el subpaso a 0
	ret			;6800
eleccion_subpaso_siguiente:		; el subpaso siguiente de la eleccion (0xE31C)
	ld hl,0e31ch		;6801   ; el subpaso siguiente (0xE31C)
	inc (hl)			;6804
	ret			;6805
eleccion_subpaso_anterior:		; el subpaso anterior de la eleccion
	ld hl,0e31ch		;6806   ; el subpaso anterior
	dec (hl)			;6809
	ret			;680a
L_680B:
	xor a			;680b   ; empieza: la nave, el escudo, las opciones y su dibujo a 0
	ld (0e380h),a		;680c   ; guarda la nave elegida (0 a 3)
	ld (0e37fh),a		;680f   ; guarda el escudo elegido (0 SHIELD, 1 FORCE FIELD)
	ld (0e37eh),a		;6812   ; guarda las opciones elegidas (0 SHADOW, 1 FIXED, 2 ROLLING)
	ld (0e535h),a		;6815   ; y el dibujo de las opciones
	ret			;6818
L_6819:
	ld a,001h		;6819   ; 0xE399 = 1 y 0xE381 = la cuenta de cuadros & 3
	ld (0e399h),a		;681b   ; 0xE399 = 1
	ld a,(0e333h)		;681e   ; lee una cuenta de cuadros (16 bits)
	and 003h		;6821   ; la cuenta & 3...
	ld (0e381h),a		;6823   ; ...en 0xE381
	ret			;6826
L_6827:
	ld hl,02000h		;6827   ; los colores y los dibujos a cero (0x2000 y 0x0000, 0x1800 bytes cada uno)
	call L_6834		;682a   ; los dibujos
	ld hl,00000h		;682d
	call L_6834		;6830   ; 0x1800 bytes a 0
	ret			;6833
L_6834:
	ld bc,01800h		;6834   ; 0x1800 bytes a 0
	xor a			;6837
	call 00056h		;6838   ; BIOS FILVRM - Fills VRAM with value
	ret			;683b
L_683C:
	ld hl,03800h		;683c   ; el bufer de 0xC400 a la tabla de nombres, la pantalla entera (0x300 bytes)
	call 04ab6h		;683f   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;6842
	ld hl,0c400h		;6843   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld b,000h		;6846   ; tres veces 0x100 bytes
L_6848:
	outi		;6848
	jp nz,L_6848		;684a
L_684D:
	outi		;684d
	jp nz,L_684D		;684f
L_6852:
	outi		;6852
	jp nz,L_6852		;6854
	ret			;6857
L_6858:
	ld hl,0c400h		;6858   ; el bufer de 0xC400 a cero (0x300 bytes)
	ld de,0c401h		;685b   ; 0x300 bytes a 0
	ld bc,002ffh		;685e
	ld (hl),000h		;6861
	ldir		;6863
	ret			;6865
L_6866:
	ld hl,00008h		;6866   ; los tres marcos de arriba (p26:6912): 8 de ancho y 6 de alto, desde el caracter 1, 7 y 0x0D
	ld (0ef80h),hl		;6869   ; 8 de ancho...
	ld a,006h		;686c   ; ...y 6 de alto
	ld (0ef82h),a		;686e
	ld a,001h		;6871
	ld (0ef83h),a		;6873
	ld de,0c401h		;6876   ; el primero en 0xC401 (+ 0xE530), desde el caracter 1
	ld hl,(0e530h)		;6879   ; + el desplazamiento (0xE530)
	add hl,de			;687c
	call L_6912		;687d   ; la esquina de arriba (C) y la siguiente (C + 2)
	ld a,007h		;6880   ; el segundo en 0xC40B, desde el 7
	ld (0ef83h),a		;6882   ; el segundo, desde el 7
	ld de,0c40bh		;6885
	ld hl,(0e530h)		;6888
	add hl,de			;688b
	call L_6912		;688c   ; la esquina de arriba (C) y la siguiente (C + 2)
	ld a,00dh		;688f   ; el tercero en 0xC415, desde el 0x0D
	ld (0ef83h),a		;6891   ; el tercero, desde el 0x0D
	ld de,0c415h		;6894
	ld hl,(0e530h)		;6897
	add hl,de			;689a
	call L_6912		;689b   ; la esquina de arriba (C) y la siguiente (C + 2)
	ret			;689e
L_689F:
	ld hl,00006h		;689f   ; los dos marcos de las opciones: 6 x 3
	ld (0ef80h),hl		;68a2   ; 6 de ancho...
	ld a,003h		;68a5   ; ...y 3 de alto
	ld (0ef82h),a		;68a7
	ld a,001h		;68aa
	ld (0ef83h),a		;68ac
	ld de,0c424h		;68af   ; el primero en 0xC424, el segundo en 0xC434
	ld hl,(0e530h)		;68b2
	add hl,de			;68b5
	call L_6912		;68b6   ; la esquina de arriba (C) y la siguiente (C + 2)
	ld a,007h		;68b9   ; el segundo, desde el 7
	ld (0ef83h),a		;68bb
	ld de,0c434h		;68be
	ld hl,(0e530h)		;68c1
	add hl,de			;68c4
	call L_6912		;68c5   ; la esquina de arriba (C) y la siguiente (C + 2)
	ret			;68c8
L_68C9:
	ld hl,0000eh		;68c9   ; los cinco marcos de la eleccion de nave: 0x0E x 6 en las esquinas y 0x1E x 6 en medio
	ld (0ef80h),hl		;68cc   ; 0x0E de ancho...
	ld a,006h		;68cf   ; ...y 6 de alto
	ld (0ef82h),a		;68d1
	ld a,001h		;68d4
	ld (0ef83h),a		;68d6
	ld hl,0c400h		;68d9   ; la esquina de arriba a la izquierda...
	call L_6912		;68dc   ; arriba a la izquierda
	ld a,081h		;68df   ; ...la de la derecha (0x81: el marco al reves)...
	ld (0ef83h),a		;68e1
	ld hl,0c410h		;68e4   ; arriba a la derecha
	call L_6912		;68e7   ; la esquina de arriba (C) y la siguiente (C + 2)
	ld a,001h		;68ea   ; ...las dos de abajo...
	ld (0ef83h),a		;68ec
	ld hl,0c600h		;68ef   ; abajo a la izquierda (0xC600)
	call L_6912		;68f2   ; la esquina de arriba (C) y la siguiente (C + 2)
	ld a,081h		;68f5
	ld (0ef83h),a		;68f7
	ld hl,0c610h		;68fa   ; abajo a la derecha
	call L_6912		;68fd   ; la esquina de arriba (C) y la siguiente (C + 2)
	ld a,001h		;6900   ; ...y la de enmedio, 0x1E de ancho
	ld (0ef83h),a		;6902
	ld hl,0001eh		;6905   ; el de enmedio, 0x1E de ancho
	ld (0ef80h),hl		;6908
	ld hl,0c500h		;690b
	call L_6912		;690e   ; la esquina de arriba (C) y la siguiente (C + 2)
	ret			;6911
L_6912:
	ld a,(0ef83h)		;6912   ; la esquina de arriba (C) y la siguiente (C + 2)
	ld (hl),a			;6915   ; la esquina...
	inc hl			;6916
	add a,002h		;6917   ; ...y el borde (C + 2)...
	ld (hl),a			;6919
	ld e,l			;691a   ; la fila de arriba: el ancho de 0xEF80
	ld d,h			;691b
	inc de			;691c
	ld bc,(0ef80h)		;691d   ; ...a lo ancho
	ldir		;6921
	dec a			;6923   ; la otra esquina (C + 1)
	ld (hl),a			;6924   ; la otra esquina (C + 1)
	ld a,(0ef82h)		;6925   ; el alto + 1...
	inc a			;6928
	ld b,a			;6929   ; el lado: 0xEF82 + 1 filas del caracter C + 3
	ld a,(0ef83h)		;692a   ; ...del lado (C + 3)
	add a,003h		;692d
	ld de,00020h		;692f
L_6932:
	add hl,de			;6932   ; una fila mas abajo (0x20)
	ld (hl),a			;6933   ; hacia abajo
	djnz L_6932		;6934
	add a,002h		;6936   ; la esquina de abajo (C + 5) y la fila de abajo hacia atras
	ld (hl),a			;6938   ; la esquina de abajo (C + 5)
	dec hl			;6939
	sub 003h		;693a   ; el borde de abajo (C + 2)...
	ld (hl),a			;693c
	ld e,l			;693d
	ld d,h			;693e
	dec de			;693f
	ld bc,(0ef80h)		;6940
	lddr		;6944   ; ...hacia atras
	add a,002h		;6946   ; la ultima esquina (C + 4)
	ld (hl),a			;6948
	ld a,(0ef82h)		;6949   ; y el otro lado hacia arriba
	ld b,a			;694c
	ld de,0ffe0h		;694d   ; y el otro lado hacia arriba
	ld a,(0ef83h)		;6950
	add a,003h		;6953
L_6955:
	add hl,de			;6955   ; una fila mas arriba
	ld (hl),a			;6956
	djnz L_6955		;6957
	ret			;6959
L_695A:
	push af			;695a   ; el dibujo de la nave A en la fila de armas: el RLE de p28:A101 a 0xE800 y siete cuadros de 6 x 4 (p00:59A1)
	ld hl,0a101h		;695b   ; el RLE de p28:A101 en 0xE800
	ld de,0e800h		;695e   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;6961   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	pop af			;6964   ; la nave
	ld b,a			;6965   ; la fila de la nave A: 7 bytes
	add a,a			;6966   ; x 7: sus siete cuadros
	add a,a			;6967
	add a,a			;6968
	sub b			;6969
	ld hl,0e800h		;696a   ; apunta a los enemigos (12 de 0x40)
	call 04089h		;696d   ; suma_a_hl: HL = HL + A
	ld (0ef84h),hl		;6970   ; en 0xEF84
	ld de,0c522h		;6973   ; en 0xC522, siete cuadros
	ld b,007h		;6976   ; siete
L_6978:
	push bc			;6978
	push de			;6979
	ld hl,(0ef84h)		;697a   ; el numero del cuadro...
	ld a,(hl)			;697d   ; el numero del cuadro
	inc hl			;697e
	ld (0ef84h),hl		;697f
	add a,a			;6982   ; ...x 0x18: su sitio en 0xE81C
	add a,a			;6983   ; x 0x18 (6 x 4)
	add a,a			;6984
	ld b,a			;6985
	add a,a			;6986
	add a,b			;6987
	ld hl,0e81ch		;6988
	call 04089h		;698b   ; suma_a_hl: HL = HL + A
	ld bc,00604h		;698e   ; 6 filas de 4 (p00:59A1)
	call 059a1h		;6991   ; al bufer
	pop de			;6994
	inc de			;6995   ; el siguiente, 4 mas alla
	inc de			;6996   ; el siguiente, 4 columnas mas alla
	inc de			;6997
	inc de			;6998
	pop bc			;6999
	djnz L_6978		;699a
	ret			;699c
L_699D:
	ld bc,00300h		;699d   ; las tres opciones (p26:69AA con 0, 1 y 2)
L_69A0:
	push bc			;69a0
	ld a,c			;69a1   ; la opcion C
	call L_69AA		;69a2   ; la opcion A: el RLE de p28:A1C3 a 0xE800 y su rectangulo de 6 x 8 en el bufer
	pop bc			;69a5
	inc c			;69a6   ; la siguiente
	djnz L_69A0		;69a7
	ret			;69a9
L_69AA:
	push af			;69aa   ; la opcion A: el RLE de p28:A1C3 a 0xE800 y su rectangulo de 6 x 8 en el bufer
	ld hl,0a1c3h		;69ab   ; el RLE de p28:A1C3
	ld de,0e800h		;69ae   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;69b1   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	pop af			;69b4
	call L_69BC		;69b5   ; origen y destino
	call 059a1h		;69b8   ; al bufer
	ret			;69bb
L_69BC:
	add a,a			;69bc   ; origen y destino de la opcion A en la tabla de 0x69D8 (4 bytes cada una), B = 6 filas, C = 8
	add a,a			;69bd   ; x 4 en la tabla de 0x69D8
	ld c,a			;69be
	ld b,000h		;69bf
	ld hl,069d8h		;69c1   ; la palabra de destino de la tabla...
	add hl,bc			;69c4
	ld e,(hl)			;69c5   ; el destino...
	inc hl			;69c6
	ld d,(hl)			;69c7
	push hl			;69c8
	ld hl,(0e530h)		;69c9   ; ...mas 0xE530
	add hl,de			;69cc   ; ...+ 0xE530
	ex de,hl			;69cd
	pop hl			;69ce
	inc hl			;69cf   ; y la de origen
	ld a,(hl)			;69d0   ; el origen
	inc hl			;69d1
	ld h,(hl)			;69d2
	ld l,a			;69d3
	ld bc,00608h		;69d4   ; 6 filas de 8
	ret			;69d7

; ----------------------------------------------------------------------
; DATOS tabla_69D8: tabla que se lee desde HL = 0x69D8 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:69C1 (1 bytes)
;   0x69d8..0x69d9  (1 bytes)
DATA_tabla_69D8:
	defb 022h	; 69d8

; ----------------------------------------------------------------------
; DATOS leido_69D9: 23 bytes que leen p26:69C7, p26:69D0, p26:69D2, p26:69C5
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p26:69C7, p26:69D0, p26:69D2, p26:69C5 (23 bytes)
;   0x69d9..0x69f0  (23 bytes)
DATA_leido_69D9:
	defb 0c4h,000h,0e8h,02ch,0c4h,030h,0e8h,036h,0c4h,060h,0e8h,036h,0c4h,090h,0e8h,036h	; 69d9  ...,.0.6.`.6...6
	defb 0c4h,0c0h,0e8h,036h,0c4h,0f0h,0e8h	; 69e9

; ======================================================================
; CODIGO 0x69f0..0x6a21  (49 bytes)
; ======================================================================


L_69F0:
	xor a			;69f0   ; los dos escudos (p26:6A00 con 0 y 1)
	call L_6A00		;69f1   ; SHIELD
	call 059a1h		;69f4   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ld a,001h		;69f7   ; FORCE FIELD
	call L_6A00		;69f9   ; el escudo A: 0 SHIELD (0xC445, de 0x6A21) o 1 FORCE FIELD (0xC455, de 0x6A33), 3 x 6
	call 059a1h		;69fc   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;69ff
L_6A00:
	or a			;6a00   ; el escudo A: 0 SHIELD (0xC445, de 0x6A21) o 1 FORCE FIELD (0xC455, de 0x6A33), 3 x 6
	jr nz,L_6A12		;6a01   ; el 1: FORCE FIELD
	ld de,0c445h		;6a03   ; el 0 en 0xC445 + 0xE530...
	ld hl,(0e530h)		;6a06
	add hl,de			;6a09
	ex de,hl			;6a0a
	ld hl,06a21h		;6a0b   ; ...de 0x6A21, 3 filas de 6
	ld bc,00306h		;6a0e
	ret			;6a11
L_6A12:
	ld de,0c455h		;6a12   ; el 1 en 0xC455 + 0xE530...
	ld hl,(0e530h)		;6a15
	add hl,de			;6a18
	ex de,hl			;6a19
	ld hl,06a33h		;6a1a   ; ...de 0x6A33, 3 filas de 6
	ld bc,00306h		;6a1d
	ret			;6a20

; ----------------------------------------------------------------------
; DATOS tabla_6A21: tabla que se lee desde HL = 0x6A21 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:6A0B (18 bytes)
;   0x6a21..0x6a33  (18 bytes)
DATA_tabla_6A21:
	defb 000h,040h,041h,042h,043h,000h,000h,044h,045h,046h,043h,000h,000h,013h,014h,015h	; 6a21  .@ABC..DEFC.....
	defb 016h,000h	; 6a31

; ----------------------------------------------------------------------
; DATOS leido_6A33: 18 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (18 bytes)
;   0x6a33..0x6a45  (18 bytes)
DATA_leido_6A33:
	defb 000h,047h,048h,049h,04ah,000h,04bh,04ch,04dh,04eh,04fh,000h,017h,018h,019h,01ah	; 6a33  .GHIJ.KLMNO.....
	defb 01bh,01ch	; 6a43

; ======================================================================
; CODIGO 0x6a45..0x6a79  (52 bytes)
; ======================================================================


L_6A45:
	ld bc,00400h		;6a45   ; las cuatro naves (p26:6A52 con 0 a 3)
L_6A48:
	push bc			;6a48
	ld a,c			;6a49   ; la nave C
	call L_6A52		;6a4a   ; la nave A: el RLE de p28:A23E a 0xE800 y su rectangulo de 6 x 0x0E en el bufer (tabla de 0x6A79)
	pop bc			;6a4d
	inc c			;6a4e   ; la siguiente
	djnz L_6A48		;6a4f
	ret			;6a51
L_6A52:
	push af			;6a52   ; la nave A: el RLE de p28:A23E a 0xE800 y su rectangulo de 6 x 0x0E en el bufer (tabla de 0x6A79)
	ld hl,0a23eh		;6a53   ; el RLE de p28:A23E
	ld de,0e800h		;6a56   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;6a59   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	pop af			;6a5c
	call L_6A64		;6a5d   ; origen y destino
	call 059a1h		;6a60   ; al bufer
	ret			;6a63
L_6A64:
	add a,a			;6a64   ; origen y destino de la nave A en la tabla de 0x6A79 (4 bytes cada una), B = 6, C = 0x0E
	add a,a			;6a65   ; x 4 en la tabla de 0x6A79
	ld c,a			;6a66
	ld b,000h		;6a67
	ld hl,06a79h		;6a69   ; la entrada A de la tabla de 0x6A79: destino...
	add hl,bc			;6a6c
	ld e,(hl)			;6a6d
	inc hl			;6a6e
	ld d,(hl)			;6a6f
	inc hl			;6a70
	ld a,(hl)			;6a71   ; ...y origen
	inc hl			;6a72
	ld h,(hl)			;6a73
	ld l,a			;6a74
	ld bc,0060eh		;6a75   ; 6 filas de 0x0E
	ret			;6a78

; ----------------------------------------------------------------------
; DATOS tabla_6A79: tabla que se lee desde HL = 0x6A79 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:6A69 (1 bytes)
;   0x6a79..0x6a7a  (1 bytes)
DATA_tabla_6A79:
	defb 021h	; 6a79

; ----------------------------------------------------------------------
; DATOS leido_6A7A: 15 bytes que leen p26:6A6F, p26:6A71, p26:6A73, p26:6A6D
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p26:6A6F, p26:6A71, p26:6A73, p26:6A6D (15 bytes)
;   0x6a7a..0x6a89  (15 bytes)
DATA_leido_6A7A:
	defb 0c4h,000h,0e8h,031h,0c4h,054h,0e8h,021h,0c6h,0a8h,0e8h,031h,0c6h,0fch,0e8h	; 6a7a  ...1.T.!...1...

; ======================================================================
; CODIGO 0x6a89..0x6abc  (51 bytes)
; ======================================================================


L_6A89:
	call L_6A00		;6a89   ; borra el escudo A con su marco (dos mas de alto y de ancho)
	inc b			;6a8c   ; dos mas de alto y de ancho...
	inc b			;6a8d   ; dos mas de alto y de ancho
	inc c			;6a8e
	inc c			;6a8f
	ex de,hl			;6a90   ; ...desde una fila y una columna antes (0xFFDF)
	ld de,0ffdfh		;6a91   ; una fila y una columna antes
	add hl,de			;6a94
	ex de,hl			;6a95
	call 059c7h		;6a96   ; se borra (p00:59C7)
	ret			;6a99
L_6A9A:
	ld bc,00400h		;6a9a   ; borra las tres naves que no se han elegido...
L_6A9D:
	push bc			;6a9d
	ld a,(0e380h)		;6a9e   ; lee la nave elegida (0 a 3)
	cp c			;6aa1   ; salvo la elegida
	ld a,c			;6aa2
	call nz,L_6AAB		;6aa3
	pop bc			;6aa6
	inc c			;6aa7
	djnz L_6A9D		;6aa8
	ret			;6aaa
L_6AAB:
	call L_6A64		;6aab   ; ...la nave A con su marco
	inc b			;6aae   ; dos mas de alto y de ancho, desde una fila y una columna antes, y se borra
	inc b			;6aaf
	inc c			;6ab0
	inc c			;6ab1
	ex de,hl			;6ab2
	ld de,0ffdfh		;6ab3
	add hl,de			;6ab6
	ex de,hl			;6ab7
	call 059c7h		;6ab8   ; se borra (p00:59C7)
	ret			;6abb

; ----------------------------------------------------------------------
; DATOS tabla_6ABC: tabla que se lee desde HL = 0x6ABC con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:65C2 (4 bytes)
;   0x6abc..0x6ac0  (4 bytes)
DATA_tabla_6ABC:
	defb 090h,030h,0a0h,050h	; 6abc

; ======================================================================
; CODIGO 0x6ac0..0x6ac7  (7 bytes)
; ======================================================================


L_6AC0:
	ld hl,06ac7h		;6ac0   ; el borrado fila a fila de la lista de 0x6AC7 (p26:78A2)
	call borrado_empieza		;6ac3   ; borrado_empieza: empieza a borrar fila a fila la lista HL
	ret			;6ac6

; ----------------------------------------------------------------------
; DATOS leido_6AC7: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x6ac7..0x6ac8  (1 bytes)
DATA_leido_6AC7:
	defb 007h	; 6ac7

; ----------------------------------------------------------------------
; DATOS leido_6AC8: 2 bytes que leen p26:78F6, p26:7905 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:78F6, p26:7905 (2 bytes)
;   0x6ac8..0x6aca  (2 bytes)
DATA_leido_6AC8:
	defb 001h,0ffh	; 6ac8

; ----------------------------------------------------------------------
; DATOS leido_6ACA: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x6aca..0x6acb  (1 bytes)
DATA_leido_6ACA:
	defb 000h	; 6aca

; ======================================================================
; CODIGO 0x6acb..0x6b57  (140 bytes)
; ======================================================================


L_6ACB:
	ld a,(0e380h)		;6acb   ; la lista para borrar lo que no se eligio: segun la nave (0xE380) y el escudo (0xE37F)
	cp 002h		;6ace   ; la lista en 0xEF80: con las naves de arriba, el tercio de abajo (4); si no, el de arriba (1)...
	ld a,004h		;6ad0
	jr c,L_6AD6		;6ad2
	ld a,001h		;6ad4
L_6AD6:
	ld (0ef80h),a		;6ad6
	ld hl,0ff01h		;6ad9   ; ...desde el caracter 1, 0xFF caracteres...
	ld (0ef81h),hl		;6adc
	ld a,(0e380h)		;6adf   ; lee la nave elegida (0 a 3)
	cp 002h		;6ae2   ; ...y otros dos trozos en el otro tercio
	ld a,001h		;6ae4
	jr c,L_6AEA		;6ae6
	ld a,004h		;6ae8
L_6AEA:
	ld (0ef83h),a		;6aea
	ld (0ef86h),a		;6aed
	ld a,(0e37fh)		;6af0   ; lee el escudo elegido (0 SHIELD, 1 FORCE FIELD)
	or a			;6af3   ; segun el escudo elegido, los que no se eligieron: con FORCE FIELD 0x13 desde el 4 y 0x40 desde el 7...
	ld hl,00413h		;6af4
	ld de,00740h		;6af7
	jr nz,L_6B02		;6afa
	ld hl,00617h		;6afc   ; ...con SHIELD 0x17 desde el 6 y 0x47 desde el 9
	ld de,00947h		;6aff
L_6B02:
	ld (0ef84h),hl		;6b02
	ld (0ef87h),de		;6b05
	xor a			;6b09   ; cerrada con un 0
	ld (0ef89h),a		;6b0a
	ld hl,0ef80h		;6b0d   ; se borra fila a fila
	call borrado_empieza		;6b10   ; borrado_empieza: empieza a borrar fila a fila la lista HL
	ret			;6b13
L_6B14:
	ld a,(0e380h)		;6b14   ; la lista para borrar las otras naves, segun la elegida
	cp 002h		;6b17   ; el tercio de la nave elegida...
	ld a,001h		;6b19
	jr c,L_6B1F		;6b1b
	ld a,004h		;6b1d
L_6B1F:
	ld (0ef80h),a		;6b1f
	ld hl,0ff01h		;6b22   ; ...entero
	ld (0ef81h),hl		;6b25
	ld a,(0e380h)		;6b28   ; lee la nave elegida (0 a 3)
	cp 002h		;6b2b   ; y en el otro, la columna de la elegida (0x81 o 1), 0x7F caracteres
	ld l,001h		;6b2d
	jr nc,L_6B33		;6b2f
	ld l,004h		;6b31
L_6B33:
	bit 0,a		;6b33   ; la columna (bit 0 de la nave): el marco al reves (0x81) o al derecho (1)
	ld h,081h		;6b35
	jr z,L_6B3B		;6b37
	ld h,001h		;6b39
L_6B3B:
	ld (0ef83h),hl		;6b3b   ; 0xEF83-0xEF86: los tercios de las otras y 0x7F
	ld a,07fh		;6b3e
	ld (0ef85h),a		;6b40
	xor a			;6b43   ; cerrada
	ld (0ef86h),a		;6b44
	ld hl,0ef80h		;6b47   ; se borra fila a fila
	call borrado_empieza		;6b4a   ; borrado_empieza: empieza a borrar fila a fila la lista HL
	ret			;6b4d
L_6B4E:
	ld hl,06b57h		;6b4e   ; la lista de 0x6B57 aparece fila a fila con 0xF0 (p26:7978)
	ld c,0f0h		;6b51   ; con 0xF0
	call llenado_empieza		;6b53   ; llenado_empieza: empieza a llenar fila a fila la lista HL con el byte C
	ret			;6b56

; ----------------------------------------------------------------------
; DATOS leido_6B57: 1 bytes que lee p26:7988 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7988 (1 bytes)
;   0x6b57..0x6b58  (1 bytes)
DATA_leido_6B57:
	defb 005h	; 6b57

; ----------------------------------------------------------------------
; DATOS leido_6B58: 9 bytes que leen p26:79C1, p26:79B7, p26:7988 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:79C1, p26:79B7, p26:7988
;   (9 bytes)
;   0x6b58..0x6b61  (9 bytes)
DATA_leido_6B58:
	defb 001h,042h,005h,081h,042h,002h,001h,006h,000h	; 6b58  .B..B....

; ======================================================================
; CODIGO 0x6b61..0x6b6a  (9 bytes)
; ======================================================================


L_6B61:
	ld c,090h		;6b61   ; los trozos de 0x6B6A, fila a fila con 0x90 (p26:7AAD)
	ld hl,06b6ah		;6b63   ; la lista de 0x6B6A
	call llenado2_empieza		;6b66   ; llenado2_empieza: otro llenado fila a fila (0xE569) de la lista HL con C
	ret			;6b69

; ----------------------------------------------------------------------
; DATOS leido_6B6A: 1 bytes que lee p26:7AF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7AF6 (1 bytes)
;   0x6b6a..0x6b6b  (1 bytes)
DATA_leido_6B6A:
	defb 004h	; 6b6a

; ----------------------------------------------------------------------
; DATOS leido_6B6B: 2 bytes que leen p26:7B33, p26:7B42 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:7B33, p26:7B42 (2 bytes)
;   0x6b6b..0x6b6d  (2 bytes)
DATA_leido_6B6B:
	defb 011h,032h	; 6b6b

; ----------------------------------------------------------------------
; DATOS leido_6B6D: 1 bytes que lee p26:7AF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7AF6 (1 bytes)
;   0x6b6d..0x6b6e  (1 bytes)
DATA_leido_6B6D:
	defb 000h	; 6b6d

; ======================================================================
; CODIGO 0x6b6e..0x6b83  (21 bytes)
; ======================================================================


L_6B6E:
	ld de,0a298h		;6b6e   ; la fila de armas: el RLE de p28:A298 a la VRAM, lo de 0x6B83 con 0xF0 y lo de 0x6B87 (p26:7B52)
	call 04b36h		;6b71   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld hl,06b83h		;6b74   ; lo de 0x6B83 con 0xF0...
	ld c,0f0h		;6b77
	call llenado_empieza		;6b79   ; llenado_empieza: empieza a llenar fila a fila la lista HL con el byte C
	ld hl,06b87h		;6b7c   ; ...y lo de 0x6B87 guardado y devuelto fila a fila
	call vuelve_empieza		;6b7f   ; vuelve_empieza: guarda y borra los trozos de IX para que vuelvan fila a fila
	ret			;6b82

; ----------------------------------------------------------------------
; DATOS leido_6B83: 1 bytes que lee p26:7988 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7988 (1 bytes)
;   0x6b83..0x6b84  (1 bytes)
DATA_leido_6B83:
	defb 002h	; 6b83

; ----------------------------------------------------------------------
; DATOS leido_6B84: 3 bytes que leen p26:79C1, p26:79B7, p26:7988 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:79C1, p26:79B7, p26:7988
;   (3 bytes)
;   0x6b84..0x6b87  (3 bytes)
DATA_leido_6B84:
	defb 020h,036h,000h	; 6b84

; ----------------------------------------------------------------------
; DATOS leido_6B87: 3 bytes que leen p26:7B7A, p26:7B80, p26:7B86 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:7B7A, p26:7B80, p26:7B86
;   (3 bytes)
;   0x6b87..0x6b8a  (3 bytes)
DATA_leido_6B87:
	defb 002h,060h,032h	; 6b87

; ----------------------------------------------------------------------
; DATOS leido_6B8A: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x6b8a..0x6b8b  (1 bytes)
DATA_leido_6B8A:
	defb 002h	; 6b8a

; ----------------------------------------------------------------------
; DATOS leido_6B8B: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x6b8b..0x6b90  (5 bytes)
DATA_leido_6B8B:
	defb 030h,0a4h,060h,05ch,0a5h	; 6b8b

; ----------------------------------------------------------------------
; DATOS leido_6B90: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x6b90..0x6b91  (1 bytes)
DATA_leido_6B90:
	defb 000h	; 6b90

; ----------------------------------------------------------------------
; DATOS leido_6B91: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x6b91..0x6b92  (1 bytes)
DATA_leido_6B91:
	defb 000h	; 6b91

; ----------------------------------------------------------------------
; DATOS leido_6B92: 1 bytes que lee p26:7B69 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7B69 (1 bytes)
;   0x6b92..0x6b93  (1 bytes)
DATA_leido_6B92:
	defb 000h	; 6b92

; ======================================================================
; CODIGO 0x6b93..0x6bc7  (52 bytes)
; ======================================================================


L_6B93:
	ld a,(0e380h)		;6b93   ; lo mismo con la nave del otro lado (0xE380 XOR 3) y vuelta
	push af			;6b96
	xor 003h		;6b97   ; la de enfrente
	ld (0e380h),a		;6b99   ; guarda la nave elegida (0 a 3)
	call L_6BA4		;6b9c   ; sus marcos
	pop af			;6b9f   ; y vuelta
	ld (0e380h),a		;6ba0   ; guarda la nave elegida (0 a 3)
	ret			;6ba3
L_6BA4:
	ld hl,06bc7h		;6ba4   ; los marcos de la nave: los de arriba (0x6BC7) o los de abajo (0x6BCE), y su lista (0x6BD5 o 0x6BE7)
	ld a,(0e380h)		;6ba7   ; lee la nave elegida (0 a 3)
	cp 002h		;6baa   ; las de abajo: 0x6BCE
	jr c,L_6BB1		;6bac
	ld hl,06bceh		;6bae
L_6BB1:
	ld c,0f0h		;6bb1
	call llenado_empieza		;6bb3   ; con 0xF0
	ld hl,06bd5h		;6bb6   ; la lista de lo que vuelve: 0x6BD5 (arriba) o 0x6BE7 (abajo)
	ld a,(0e380h)		;6bb9   ; lee la nave elegida (0 a 3)
	cp 002h		;6bbc
	jr c,L_6BC3		;6bbe
	ld hl,06be7h		;6bc0
L_6BC3:
	call vuelve_empieza		;6bc3   ; vuelve_empieza: guarda y borra los trozos de IX para que vuelvan fila a fila
	ret			;6bc6

; ----------------------------------------------------------------------
; DATOS leido_6BC7: 1 bytes que lee p26:7988 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7988 (1 bytes)
;   0x6bc7..0x6bc8  (1 bytes)
DATA_leido_6BC7:
	defb 001h	; 6bc7

; ----------------------------------------------------------------------
; DATOS leido_6BC8: 13 bytes que leen p26:79C1, p26:79B7, p26:7988 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:79C1, p26:79B7, p26:7988
;   (13 bytes)
;   0x6bc8..0x6bd5  (13 bytes)
DATA_leido_6BC8:
	defb 001h,006h,001h,013h,01ah,000h,004h,001h,006h,004h,013h,01ah,000h	; 6bc8  .............

; ----------------------------------------------------------------------
; DATOS leido_6BD5: 3 bytes que leen p26:7B7A, p26:7B80, p26:7B86 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:7B7A, p26:7B80, p26:7B86
;   (3 bytes)
;   0x6bd5..0x6bd8  (3 bytes)
DATA_leido_6BD5:
	defb 001h,040h,030h	; 6bd5

; ----------------------------------------------------------------------
; DATOS leido_6BD8: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x6bd8..0x6bd9  (1 bytes)
DATA_leido_6BD8:
	defb 001h	; 6bd8

; ----------------------------------------------------------------------
; DATOS leido_6BD9: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x6bd9..0x6bde  (5 bytes)
DATA_leido_6BD9:
	defb 006h,0a6h,013h,0fbh,0a7h	; 6bd9

; ----------------------------------------------------------------------
; DATOS leido_6BDE: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x6bde..0x6bdf  (1 bytes)
DATA_leido_6BDE:
	defb 001h	; 6bde

; ----------------------------------------------------------------------
; DATOS leido_6BDF: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x6bdf..0x6be4  (5 bytes)
DATA_leido_6BDF:
	defb 0c2h,0a6h,040h,000h,0a8h	; 6bdf

; ----------------------------------------------------------------------
; DATOS leido_6BE4: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x6be4..0x6be5  (1 bytes)
DATA_leido_6BE4:
	defb 000h	; 6be4

; ----------------------------------------------------------------------
; DATOS leido_6BE5: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x6be5..0x6be6  (1 bytes)
DATA_leido_6BE5:
	defb 000h	; 6be5

; ----------------------------------------------------------------------
; DATOS leido_6BE6: 1 bytes que lee p26:7B69 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7B69 (1 bytes)
;   0x6be6..0x6be7  (1 bytes)
DATA_leido_6BE6:
	defb 000h	; 6be6

; ----------------------------------------------------------------------
; DATOS leido_6BE7: 3 bytes que leen p26:7B7A, p26:7B80, p26:7B86 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:7B7A, p26:7B80, p26:7B86
;   (3 bytes)
;   0x6be7..0x6bea  (3 bytes)
DATA_leido_6BE7:
	defb 004h,040h,030h	; 6be7

; ----------------------------------------------------------------------
; DATOS leido_6BEA: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x6bea..0x6beb  (1 bytes)
DATA_leido_6BEA:
	defb 004h	; 6bea

; ----------------------------------------------------------------------
; DATOS leido_6BEB: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x6beb..0x6bf0  (5 bytes)
DATA_leido_6BEB:
	defb 006h,0a6h,013h,0fbh,0a7h	; 6beb

; ----------------------------------------------------------------------
; DATOS leido_6BF0: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x6bf0..0x6bf1  (1 bytes)
DATA_leido_6BF0:
	defb 004h	; 6bf0

; ----------------------------------------------------------------------
; DATOS leido_6BF1: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x6bf1..0x6bf6  (5 bytes)
DATA_leido_6BF1:
	defb 0c2h,0a6h,040h,000h,0a8h	; 6bf1

; ----------------------------------------------------------------------
; DATOS leido_6BF6: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x6bf6..0x6bf7  (1 bytes)
DATA_leido_6BF6:
	defb 000h	; 6bf6

; ----------------------------------------------------------------------
; DATOS leido_6BF7: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x6bf7..0x6bf8  (1 bytes)
DATA_leido_6BF7:
	defb 000h	; 6bf7

; ----------------------------------------------------------------------
; DATOS leido_6BF8: 1 bytes que lee p26:7B69 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7B69 (1 bytes)
;   0x6bf8..0x6bf9  (1 bytes)
DATA_leido_6BF8:
	defb 000h	; 6bf8

; ======================================================================
; CODIGO 0x6bf9..0x6c5a  (97 bytes)
; ======================================================================


L_6BF9:
	ld hl,02008h		;6bf9   ; el de 0x2008...
	call L_6C53		;6bfc   ; el tercio de arriba...
	ld hl,02408h		;6bff   ; ...0x2408...
	call L_6C53		;6c02   ; el RLE de colores de 0x6C5A en la VRAM de HL
	ld hl,03008h		;6c05   ; ...el de abajo, 0x3008...
	call L_6C53		;6c08   ; el RLE de colores de 0x6C5A en la VRAM de HL
	ld hl,03408h		;6c0b   ; ...0x3408...
	call L_6C53		;6c0e   ; el RLE de colores de 0x6C5A en la VRAM de HL
	ld hl,02808h		;6c11   ; ...y el de 0x2808
	call L_6C53		;6c14   ; el RLE de colores de 0x6C5A en la VRAM de HL
	ret			;6c17
L_6C18:
	ld a,(0e380h)		;6c18   ; lo mismo con la nave del otro lado (0xE380 XOR 3) y vuelta
	push af			;6c1b
	xor 003h		;6c1c   ; la de enfrente
	ld (0e380h),a		;6c1e   ; guarda la nave elegida (0 a 3)
	call L_6C29		;6c21   ; sus colores
	pop af			;6c24
	ld (0e380h),a		;6c25   ; guarda la nave elegida (0 a 3)
	ret			;6c28
L_6C29:
	ld a,(0e380h)		;6c29   ; los colores de los tres marcos de arriba (0x3008...) o de abajo (0x2008...), segun la nave
	cp 002h		;6c2c   ; las de abajo: los tres de 0x2008, 0x2038 y 0x2068
	ld hl,02008h		;6c2e
	ld de,02038h		;6c31
	ld bc,02068h		;6c34
	jr nc,L_6C42		;6c37
	ld hl,03008h		;6c39   ; las de arriba: 0x3008, 0x3038 y 0x3068
	ld de,03038h		;6c3c
	ld bc,03068h		;6c3f
L_6C42:
	push bc			;6c42   ; los tres marcos: el de B C...
	push de			;6c43
	call L_6C53		;6c44   ; el primero
	pop de			;6c47
	ex de,hl			;6c48   ; el segundo
	call L_6C53		;6c49   ; ...el de D E...
	pop bc			;6c4c
	ld h,b			;6c4d   ; ...y el de H L
	ld l,c			;6c4e
	call L_6C53		;6c4f   ; el tercero
	ret			;6c52
L_6C53:
	ld de,06c5ah		;6c53   ; el RLE de colores de 0x6C5A en la VRAM de HL
	call 04b3ch		;6c56   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ret			;6c59

; ----------------------------------------------------------------------
; DATOS rle_6C5A: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; se solapan 2 bloques: (rle_vram_6C5A 6C5A-6C79); lo leen
;   p26:6C56, p00:4B3C (31 bytes)
;   0x6c5a..0x6c79  (31 bytes)
DATA_rle_6C5A:
	defb 003h,000h,002h,01fh,003h,018h,003h,000h,002h,0f8h,003h,018h,003h,000h,002h,0ffh	; 6c5a  ................
	defb 003h,000h,00bh,018h,002h,01fh,003h,000h,003h,018h,002h,0f8h,003h,000h,000h	; 6c6a  ...............

; ======================================================================
; CODIGO 0x6c79..0x6cd6  (93 bytes)
; ======================================================================


L_6C79:
	call 041ach		;6c79   ; con el 22, los colores de p22:B446, B586, B699 y B7A6 en 0x2088, 0x2488, 0x3088 y 0x3488
	ld hl,02088h		;6c7c   ; 0x2088 de p22:B446
	ld de,0b446h		;6c7f
	call 04b3ch		;6c82   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld hl,02488h		;6c85   ; 0x2488 de p22:B586
	ld de,0b586h		;6c88
	call 04b3ch		;6c8b   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld hl,03088h		;6c8e   ; 0x3088 de p22:B699
	ld de,0b699h		;6c91
	call 04b3ch		;6c94   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld hl,03488h		;6c97   ; 0x3488 de p22:B7A6
	ld de,0b7a6h		;6c9a
	call 04b3ch		;6c9d   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	call 041bfh		;6ca0   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;6ca3
L_6CA4:
	ld a,(0e31eh)		;6ca4   ; el estado 9 (una entrada secreta, 0xE31E su tipo): 1-7 el arma secreta (p26:6E29), 8-0x0A el ordenador de a bordo (p26:7D46), 0x0B p27:80B7, los demas p27:804A
	or a			;6ca7
	ret z			;6ca8
	cp 008h		;6ca9
	jp c,L_6E29		;6cab
	cp 00bh		;6cae
	jp c,L_7D46		;6cb0
	jp z,080b7h		;6cb3
	jp 0804ah		;6cb6
estado9_paso_siguiente:		; el paso siguiente del estado 9 (0xE7E4)
	ld hl,0e7e4h		;6cb9   ; el paso siguiente (0xE7E4), con el subpaso a 0
	inc (hl)			;6cbc
	inc hl			;6cbd
	ld (hl),000h		;6cbe
	ret			;6cc0
estado9_subpaso_siguiente:		; el subpaso siguiente del estado 9 (0xE7E5)
	ld hl,0e7e5h		;6cc1   ; el subpaso siguiente (0xE7E5)
	inc (hl)			;6cc4
	ret			;6cc5
L_6CC6:
	xor a			;6cc6   ; acabado: 0xE31E = 0
	ld (0e31eh),a		;6cc7   ; guarda el tipo de la entrada secreta cogida (al estado 9)
	ret			;6cca
L_6CCB:
	push bc			;6ccb   ; paso 0: los sprites a la VRAM, p00:5AC6 y por el subpaso
	call 05de9h		;6ccc   ; los sprites a la VRAM
	call 047ceh		;6ccf   ; p00:5AC6 con los bancos 1-2-3
	pop af			;6cd2   ; y por el subpaso
	call 04093h		;6cd3   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6CD6: 3 destinos del despachador p00:4093 (call en p26:6CD3, el
;   indice en A): 6CDC, 6CE3, 6D05; lo leen p26:6CD3 (6 bytes)
;   0x6cd6..0x6cdc  (6 bytes)
DATA_tabla_6CD6:
	defw 06cdch,06ce3h,06d05h	; 6cd6  -> L_6CDC L_6CE3 L_6D05

; ======================================================================
; CODIGO 0x6cdc..0x6cf8  (28 bytes)
; ======================================================================


L_6CDC:
	call 0578bh		;6cdc   ; subpaso 0: la orden 0x84 (p00:578B)
	call estado9_subpaso_siguiente		;6cdf   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6ce2
L_6CE3:
	ld hl,0e402h		;6ce3   ; subpaso 1: al acabar la espera (0xE402), se borra la pantalla (0x6CF8) y los sprites (0x6D02) fila a fila
	dec (hl)			;6ce6   ; la espera
	ret nz			;6ce7
	ld hl,06cf8h		;6ce8   ; la pantalla se borra fila a fila (0x6CF8)...
	call borrado_empieza		;6ceb   ; borrado_empieza: empieza a borrar fila a fila la lista HL
	ld hl,06d02h		;6cee   ; ...y los sprites (0x6D02)
	call borrado_sprites_empieza		;6cf1   ; borrado_sprites_empieza: empieza a borrar fila a fila los sprites de HL
	call estado9_subpaso_siguiente		;6cf4   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6cf7

; ----------------------------------------------------------------------
; DATOS leido_6CF8: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x6cf8..0x6cf9  (1 bytes)
DATA_leido_6CF8:
	defb 006h	; 6cf8

; ----------------------------------------------------------------------
; DATOS leido_6CF9: 2 bytes que leen p26:78F6, p26:7905 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:78F6, p26:7905 (2 bytes)
;   0x6cf9..0x6cfb  (2 bytes)
DATA_leido_6CF9:
	defb 001h,0ffh	; 6cf9

; ----------------------------------------------------------------------
; DATOS leido_6CFB: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x6cfb..0x6cfc  (1 bytes)
DATA_leido_6CFB:
	defb 001h	; 6cfb

; ----------------------------------------------------------------------
; DATOS leido_6CFC: 2 bytes que leen p26:78F6, p26:7905 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:78F6, p26:7905 (2 bytes)
;   0x6cfc..0x6cfe  (2 bytes)
DATA_leido_6CFC:
	defb 001h,036h	; 6cfc

; ----------------------------------------------------------------------
; DATOS leido_6CFE: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x6cfe..0x6cff  (1 bytes)
DATA_leido_6CFE:
	defb 001h	; 6cfe

; ----------------------------------------------------------------------
; DATOS leido_6CFF: 2 bytes que leen p26:78F6, p26:7905 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:78F6, p26:7905 (2 bytes)
;   0x6cff..0x6d01  (2 bytes)
DATA_leido_6CFF:
	defb 059h,0a7h	; 6cff

; ----------------------------------------------------------------------
; DATOS leido_6D01: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x6d01..0x6d02  (1 bytes)
DATA_leido_6D01:
	defb 000h	; 6d01

; ----------------------------------------------------------------------
; DATOS leido_6D02: 1 bytes que lee p26:7929 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7929 (1 bytes)
;   0x6d02..0x6d03  (1 bytes)
DATA_leido_6D02:
	defb 024h	; 6d02

; ----------------------------------------------------------------------
; DATOS leido_6D03: 1 bytes que lee p26:795A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:795A (1 bytes)
;   0x6d03..0x6d04  (1 bytes)
DATA_leido_6D03:
	defb 037h	; 6d03

; ----------------------------------------------------------------------
; DATOS leido_6D04: 1 bytes que lee p26:7929 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7929 (1 bytes)
;   0x6d04..0x6d05  (1 bytes)
DATA_leido_6D04:
	defb 0ffh	; 6d04

; ======================================================================
; CODIGO 0x6d05..0x6d1c  (23 bytes)
; ======================================================================


L_6D05:
	call borrado_cuadro		;6d05   ; subpaso 2: hasta acabar, y al paso siguiente
	call borrado_sprites_cuadro		;6d08   ; los dos borrados
	ld a,(0e560h)		;6d0b   ; lee el borrado fila a fila en marcha
	or a			;6d0e
	ret nz			;6d0f
	call estado9_paso_siguiente		;6d10   ; acabados: al paso siguiente
	ret			;6d13
L_6D14:
	push bc			;6d14   ; paso 1: la nave va al centro, por el subpaso
	call 05de9h		;6d15   ; sprites_a_vram_tal_cual: los 32 sprites a la VRAM (0x3B00) tal cual
	pop af			;6d18
	call 04093h		;6d19   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6D1C: 4 destinos del despachador p00:4093 (call en p26:6D19, el
;   indice en A): 6D24, 6D50, 6D6D, 6D7A; lo leen p26:6D19 (8 bytes)
;   0x6d1c..0x6d24  (8 bytes)
DATA_tabla_6D1C:
	defw 06d24h,06d50h,06d6dh,06d7ah	; 6d1c  -> L_6D24 L_6D50 L_6D6D L_6D7A

; ======================================================================
; CODIGO 0x6d24..0x6d77  (83 bytes)
; ======================================================================


L_6D24:
	call 05938h		;6d24   ; subpaso 0: la orden 0x83 y el sonido 0x50; guarda donde estaba la nave (0xE7E8, 0xE7EA) y su velocidad hacia 0x80, 0x40 (p01:638B)
	ld hl,(0e604h)		;6d27   ; lee la y de la nave (el primer byte de su sprite, p01:797C) y el byte siguiente (16 bits)
	ld (0e7e8h),hl		;6d2a   ; donde estaba la nave: la y...
	ld hl,(0e606h)		;6d2d   ; lee la x de la nave y el byte siguiente (16 bits)
	ld (0e7eah),hl		;6d30   ; ...y la x
	ld de,08040h		;6d33   ; hacia la y 0x80, x 0x40, con el paso 0x40 (p01:638B)
	ld a,040h		;6d36
	call 047fdh		;6d38
	call 04a7dh		;6d3b   ; la velocidad en y al reves...
	ld (0e7ech),hl		;6d3e   ; ...en 0xE7EC
	call 04a75h		;6d41   ; y la de x, en 0xE7EE
	ld (0e7eeh),de		;6d44
	xor a			;6d48   ; la cuenta de pasos a cero
	ld (0e7e7h),a		;6d49
	call estado9_subpaso_siguiente		;6d4c   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6d4f
L_6D50:
	call L_6D89		;6d50   ; subpaso 1: se mueve (p26:6DA0) hasta el centro (p26:6D89) y se pinta (p26:6D5A)
	call c,estado9_subpaso_siguiente		;6d53   ; al llegar, el subpaso siguiente
	call L_6D5A		;6d56   ; y se pinta
	ret			;6d59
L_6D5A:
	ld a,(0e7edh)		;6d5a   ; el dibujo de la nave segun hacia donde va (p00:47D7)
	bit 7,a		;6d5d   ; hacia arriba (0xE7ED negativo) la postura 1, si no la 2
	ld a,001h		;6d5f
	jr nz,L_6D65		;6d61
	ld a,002h		;6d63
L_6D65:
	ld bc,0ef80h		;6d65   ; en 0xEF80, y la nave (p00:47D7)
	ld (bc),a			;6d68
	call 047d7h		;6d69
	ret			;6d6c
L_6D6D:
	ld hl,06d77h		;6d6d   ; subpaso 2: los sprites se borran fila a fila (0x6D77)
	call borrado_sprites_empieza		;6d70   ; los sprites de 0x6D77 se borran fila a fila
	call estado9_subpaso_siguiente		;6d73   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6d76

; ----------------------------------------------------------------------
; DATOS leido_6D77: 1 bytes que lee p26:7929 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7929 (1 bytes)
;   0x6d77..0x6d78  (1 bytes)
DATA_leido_6D77:
	defb 000h	; 6d77

; ----------------------------------------------------------------------
; DATOS leido_6D78: 1 bytes que lee p26:795A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:795A (1 bytes)
;   0x6d78..0x6d79  (1 bytes)
DATA_leido_6D78:
	defb 00fh	; 6d78

; ----------------------------------------------------------------------
; DATOS leido_6D79: 1 bytes que lee p26:7929 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7929 (1 bytes)
;   0x6d79..0x6d7a  (1 bytes)
DATA_leido_6D79:
	defb 0ffh	; 6d79

; ======================================================================
; CODIGO 0x6d7a..0x6dc2  (72 bytes)
; ======================================================================


L_6D7A:
	call borrado_sprites_cuadro		;6d7a   ; subpaso 3: al acabar, la pantalla limpia (p26:601E) y al paso siguiente
	ld a,(0e573h)		;6d7d   ; hasta acabar
	or a			;6d80
	ret nz			;6d81
	call pantalla_limpia		;6d82   ; la pantalla limpia y al paso siguiente
	call estado9_paso_siguiente		;6d85   ; estado9_paso_siguiente: el paso siguiente del estado 9 (0xE7E4)
	ret			;6d88
L_6D89:
	ld hl,0e7e7h		;6d89   ; una cuenta mas (0xE7E7) y un paso; C si la nave llega al centro (y de 0x30 a 0x50, x de 0x70 a 0x90)
	inc (hl)			;6d8c   ; un paso mas
	call L_6DA0		;6d8d   ; la nave: y + 0xE7EC, x + 0xE7EE (16 bits)
	ld a,(0e604h)		;6d90   ; lee la y de la nave (el primer byte de su sprite, p01:797C)
	sub 030h		;6d93   ; la y entre 0x30 y 0x50?
	cp 021h		;6d95
	ret nc			;6d97
	ld a,(0e606h)		;6d98   ; lee la x de la nave
	sub 070h		;6d9b   ; y la x entre 0x70 y 0x90? (C)
	cp 021h		;6d9d
	ret			;6d9f
L_6DA0:
	ld hl,(0e603h)		;6da0   ; la nave: y + 0xE7EC, x + 0xE7EE (16 bits)
	ld de,(0e7ech)		;6da3   ; la y + 0xE7EC
	add hl,de			;6da7
	ld (0e603h),hl		;6da8
	ld hl,(0e605h)		;6dab   ; la x + 0xE7EE
	ld de,(0e7eeh)		;6dae
	add hl,de			;6db2
	ld (0e605h),hl		;6db3
	ret			;6db6
L_6DB7:
	push bc			;6db7   ; paso 3: la vuelta, por el subpaso
	call 05de9h		;6db8   ; los sprites y la pantalla a la VRAM
	call 05967h		;6dbb   ; bufer_a_vram_sin_marcador: el bufer de 0xCA00 a la tabla de nombres, sin las dos filas del marcador
	pop af			;6dbe   ; y por el subpaso
	call 04093h		;6dbf   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6DC2: 4 destinos del despachador p00:4093 (call en p26:6DBF, el
;   indice en A): 6DCA, 6DE1, 6E05, 6E26; lo leen p26:6DBF (8 bytes)
;   0x6dc2..0x6dca  (8 bytes)
DATA_tabla_6DC2:
	defw 06dcah,06de1h,06e05h,06e26h	; 6dc2  -> L_6DCA L_6DE1 L_6E05 L_6E26

; ======================================================================
; CODIGO 0x6dca..0x6e31  (103 bytes)
; ======================================================================


L_6DCA:
	ld a,(0e31eh)		;6dca   ; subpaso 0: la espera, 0x78 cuadros (con la orden 0x84) desdel ordenador de a bordo, 1 desde el arma
	cp 008h		;6dcd   ; desdel ordenador de a bordo (tipo 8 o mas)...
	jr c,L_6DD8		;6dcf
	call 05951h		;6dd1   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	ld a,078h		;6dd4   ; ...0x78 cuadros
	jr L_6DDA		;6dd6
L_6DD8:
	ld a,001h		;6dd8   ; desde el arma, 1
L_6DDA:
	ld (0e40ch),a		;6dda   ; en 0xE40C
	call estado9_subpaso_siguiente		;6ddd   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6de0
L_6DE1:
	ld hl,0e40ch		;6de1   ; subpaso 1: al acabar, la orden 0x83 y el sonido 0x50, los dibujos de sprite (p00:5007) y la velocidad al reves
	dec (hl)			;6de4
	ret nz			;6de5
	call 05938h		;6de6   ; orden_83_y_sonido_50: manda la orden 0x83 al motor y pide el sonido 0x50
	call L_6033		;6de9   ; los dibujos de sprite a cero (0x1800, 0x800 bytes)
	call 05007h		;6dec   ; dibujos_de_sprite: los dibujos de sprite de p14:7055 (RLE) en 0x1800
	ld hl,(0e7ech)		;6def
	call 04a7dh		;6df2   ; niega_hl: HL = -HL
	ld (0e7ech),hl		;6df5
	ld hl,(0e7eeh)		;6df8
	call 04a7dh		;6dfb   ; niega_hl: HL = -HL
	ld (0e7eeh),hl		;6dfe
	call estado9_subpaso_siguiente		;6e01   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6e04
L_6E05:
	call L_6DA0		;6e05   ; subpaso 2: la nave vuelve tantos pasos como fue (0xE7E7) a su sitio; luego la pantalla de la fase
	call L_6D5A		;6e08   ; el dibujo de la nave segun hacia donde va (p00:47D7)
	ld hl,0e7e7h		;6e0b
	dec (hl)			;6e0e
	ret nz			;6e0f
	ld hl,(0e7e8h)		;6e10
	ld (0e604h),hl		;6e13   ; guarda la y de la nave (el primer byte de su sprite, p01:797C) y el byte siguiente (16 bits)
	ld hl,(0e7eah)		;6e16
	ld (0e606h),hl		;6e19   ; guarda la x de la nave y el byte siguiente (16 bits)
	call 05959h		;6e1c   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	call L_6028		;6e1f   ; la tabla de nombres a cero (0x3800, 0x2C0 bytes)
	call estado9_subpaso_siguiente		;6e22   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6e25
L_6E26:
	jp L_6CC6		;6e26   ; subpaso 3: acabado
L_6E29:
	ld bc,(0e7e4h)		;6e29   ; el arma secreta (0xE31E de 1 a 7): por el paso (0xE7E4)
	ld a,c			;6e2d   ; por el paso
	call 04093h		;6e2e   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6E31: 4 destinos del despachador p00:4093 (call en p26:6E2E, el
;   indice en A): 6CCB, 6D14, 6E39, 6DB7; lo leen p26:6E2E (8 bytes)
;   0x6e31..0x6e39  (8 bytes)
DATA_tabla_6E31:
	defw 06ccbh,06d14h,06e39h,06db7h	; 6e31  -> L_6CCB L_6D14 L_6E39 L_6DB7

; ======================================================================
; CODIGO 0x6e39..0x6e44  (11 bytes)
; ======================================================================


L_6E39:
	push bc			;6e39   ; paso 2: la pantalla del arma, por el subpaso
	call 05de9h		;6e3a   ; los sprites y la pantalla a la VRAM
	call 05967h		;6e3d   ; bufer_a_vram_sin_marcador: el bufer de 0xCA00 a la tabla de nombres, sin las dos filas del marcador
	pop af			;6e40   ; y por el subpaso
	call 04093h		;6e41   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6E44: 13 destinos del despachador p00:4093 (call en p26:6E41, el
;   indice en A): 6E5E, 6E71, 6E8D, 6E9C, 6EAD, 6EC8, 6EF4, 6F25, 6F25, 6F2B,
;   6F56, 6F5F, 6F72; lo leen p26:6E41 (26 bytes)
;   0x6e44..0x6e5e  (26 bytes)
DATA_tabla_6E44:
	defw 06e5eh,06e71h,06e8dh,06e9ch,06eadh,06ec8h,06ef4h,06f25h	; 6e44
	defw 06f25h,06f2bh,06f56h,06f5fh,06f72h	; 6e54

; ======================================================================
; CODIGO 0x6e5e..0x6f3d  (223 bytes)
; ======================================================================


L_6E5E:
	call 05718h		;6e5e   ; subpaso 0: la paleta, el sonido 0x4F y el plano de la nave (p26:6FB0, 6F87, 7069)
	call 05934h		;6e61   ; sonido_4F: pide el sonido 0x4F
	call L_6FB0		;6e64   ; los colores del plano...
	call L_6F87		;6e67   ; ...su lista fila a fila...
	call L_7069		;6e6a   ; ...y el dibujo de la nave
	call estado9_subpaso_siguiente		;6e6d   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6e70
L_6E71:
	call llenado_cuadro		;6e71   ; subpaso 1: al acabar de aparecer, los trozos del arma ya puestos (p26:71B7; los 7 con p26:71B1)
	ld a,(0e564h)		;6e74   ; lee el llenado fila a fila en marcha
	or a			;6e77   ; hasta acabar de aparecer
	ret nz			;6e78
	ld a,(0e36fh)		;6e79   ; lee el nivel del arma secreta (0 a 7)
	cp 007h		;6e7c   ; nivel 7: todos los trozos
	push af			;6e7e
	call c,L_71B7		;6e7f   ; los de los trozos hasta el nivel 0xE36F (sin el 0); 0xE7F1 = cuantos sprites
	pop af			;6e82
	call nc,L_71B1		;6e83   ; los sprites de los siete trozos
	call L_6F94		;6e86   ; y los sprites de 0x6F9B aparecen
	call estado9_subpaso_siguiente		;6e89   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6e8c
L_6E8D:
	call sprites_aparecen_cuadro		;6e8d   ; subpaso 2: hasta acabar (p26:7CCC)
	ld a,(0e577h)		;6e90   ; hasta acabar
	or a			;6e93
	ret nz			;6e94
	call L_6FA2		;6e95   ; los de 0x6FA9
	call estado9_subpaso_siguiente		;6e98   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6e9b
L_6E9C:
	call sprites_aparecen_cuadro		;6e9c   ; subpaso 3: hasta acabar; 0x3C cuadros
	ld a,(0e577h)		;6e9f   ; hasta acabar
	or a			;6ea2
	ret nz			;6ea3
	ld a,03ch		;6ea4   ; 0x3C cuadros
	ld (0e7e6h),a		;6ea6
	call estado9_subpaso_siguiente		;6ea9   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6eac
L_6EAD:
	ld hl,0e7e6h		;6ead   ; subpaso 4: al acabar la espera, el arma sube un nivel (0xE36F, hasta 7); con la 7 ya, al subpaso 9
	dec (hl)			;6eb0   ; la espera
	ret nz			;6eb1
	ld (hl),0b4h		;6eb2   ; 0xB4 cuadros mas
	ld hl,0e36fh		;6eb4   ; apunta a el nivel del arma secreta (0 a 7)
	ld a,(hl)			;6eb7   ; el nivel 7 ya: FULL POWERUP ALREADY (subpaso 9)
	cp 007h		;6eb8
	jr nc,L_6EC2		;6eba
	inc a			;6ebc   ; si no, un nivel mas
	ld (hl),a			;6ebd
	call estado9_subpaso_siguiente		;6ebe   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6ec1
L_6EC2:
	ld a,009h		;6ec2
	ld (0e7e5h),a		;6ec4   ; guarda el subpaso del estado 9
	ret			;6ec7
L_6EC8:
	ld hl,0e7e6h		;6ec8   ; subpaso 5: parpadea (p26:7199 con 9 y 0, cada 8 cuadros); al acabar, el nombre del arma nueva y 0x78 cuadros
	dec (hl)			;6ecb   ; la espera; al acabar, p26:6EDA
	jr z,L_6EDA		;6ecc
	bit 3,(hl)		;6ece   ; cada 8 cuadros: el color 9 o 0 (parpadea)
	ld a,009h		;6ed0
	jr z,L_6ED6		;6ed2
	ld a,000h		;6ed4
L_6ED6:
	call L_7199		;6ed6   ; los sprites del trozo del nivel 0xE36F con el color A (0xE7F0), desde el sprite 0xE7F1
	ret			;6ed9
L_6EDA:
	ld a,009h		;6eda   ; al acabar: el color normal (9)...
	call L_7199		;6edc   ; el color normal
	call L_6FC9		;6edf   ; ...el nombre del arma, sus nueve caracteres, la fila del nombre y la casilla
	call L_6FDF		;6ee2   ; los nueve caracteres
	call L_6FFA		;6ee5   ; la fila del nombre
	call L_7007		;6ee8   ; la casilla
	ld a,078h		;6eeb   ; 0x78 cuadros y al subpaso siguiente
	ld (0e7e6h),a		;6eed
	call estado9_subpaso_siguiente		;6ef0   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6ef3
L_6EF4:
	call L_7022		;6ef4   ; subpaso 6: p26:7022; al acabar, el arma en su casilla (p26:6F06) y el marcador (p00:47E8)
	ld hl,0e7e6h		;6ef7   ; la espera
	dec (hl)			;6efa
	ret nz			;6efb
	call L_6F06		;6efc   ; al acabar, el arma en su casilla
	call 047e8h		;6eff   ; y el marcador (p00:47E8)
	call estado9_subpaso_siguiente		;6f02   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6f05
L_6F06:
	ld a,(0e36fh)		;6f06   ; la casilla del arma de 0xE36F (tabla de 0x701A): si esta vacia (0xFF), se llena (p00:47F4)
	ld hl,0701ah		;6f09   ; la casilla del nivel (tabla de 0x701A)
	call 04a6eh		;6f0c   ; lee_byte: A = el byte A de la tabla HL
	ld (0ef80h),a		;6f0f
	call 047f4h		;6f12   ; p04:94BD con 4-5 (p00:47F4)
	ld hl,0e433h		;6f15   ; la casilla en 0xE433: vacia (0xFF)...
	ld a,(0ef80h)		;6f18
	call 04089h		;6f1b   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;6f1e
	cp 0ffh		;6f1f
	ret nz			;6f21
	dec c			;6f22   ; ...se llena con C - 1
	ld (hl),c			;6f23
	ret			;6f24
L_6F25:
	ld a,00bh		;6f25   ; subpasos 7 y 8: al 0x0B
	ld (0e7e5h),a		;6f27   ; guarda el subpaso del estado 9
	ret			;6f2a
L_6F2B:
	call 0551fh		;6f2b   ; subpaso 9: el texto FULL POWERUP ALREADY (con la fuente) y 0x78 cuadros
	ld hl,06f3dh		;6f2e   ; el texto FULL POWERUP ALREADY de 0x6F3D
	call 04b1fh		;6f31   ; texto_a_ram: copia a la RAM el texto de HL
	ld a,078h		;6f34   ; 0x78 cuadros
	ld (0e7e6h),a		;6f36
	call estado9_subpaso_siguiente		;6f39   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6f3c

; ----------------------------------------------------------------------
; DATOS texto_ram_6F3D: texto a la RAM: direccion, letras, 0xFE y otra
;   direccion, 0xFF acaba (p00:4B1F); lo leen p26:6F31 (25 bytes)
;   0x6f3d..0x6f56  (25 bytes)
DATA_texto_ram_6F3D:
	defb 02ah,0cch,017h,026h,01dh,01dh,000h,021h,020h,028h,016h,023h,026h,021h,0feh,06dh	; 6f3d  *..&...! (.#&!.m
	defb 0cch,012h,01dh,023h,016h,012h,015h,02ah,0ffh	; 6f4d  ...#...*.

; ======================================================================
; CODIGO 0x6f56..0x6f6f  (25 bytes)
; ======================================================================


L_6F56:
	ld hl,0e7e6h		;6f56   ; subpaso 0x0A: la espera
	dec (hl)			;6f59
	ret nz			;6f5a
	call estado9_subpaso_siguiente		;6f5b   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6f5e
L_6F5F:
	ld hl,06cf8h		;6f5f   ; subpaso 0x0B: la pantalla (0x6CF8) y los sprites (0x6F6F) se borran fila a fila
	call borrado_empieza		;6f62   ; la pantalla fila a fila...
	ld hl,06f6fh		;6f65   ; ...y los sprites de 0x6F6F
	call borrado_sprites_empieza		;6f68   ; borrado_sprites_empieza: empieza a borrar fila a fila los sprites de HL
	call estado9_subpaso_siguiente		;6f6b   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;6f6e

; ----------------------------------------------------------------------
; DATOS leido_6F6F: 1 bytes que lee p26:7929 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7929 (1 bytes)
;   0x6f6f..0x6f70  (1 bytes)
DATA_leido_6F6F:
	defb 000h	; 6f6f

; ----------------------------------------------------------------------
; DATOS leido_6F70: 1 bytes que lee p26:795A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:795A (1 bytes)
;   0x6f70..0x6f71  (1 bytes)
DATA_leido_6F70:
	defb 02eh	; 6f70

; ----------------------------------------------------------------------
; DATOS leido_6F71: 1 bytes que lee p26:7929 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7929 (1 bytes)
;   0x6f71..0x6f72  (1 bytes)
DATA_leido_6F71:
	defb 0ffh	; 6f71

; ======================================================================
; CODIGO 0x6f72..0x6f90  (30 bytes)
; ======================================================================


L_6F72:
	call borrado_cuadro		;6f72   ; subpaso 0x0C: al acabar, los sprites fuera y al paso siguiente
	call borrado_sprites_cuadro		;6f75   ; hasta acabar
	ld a,(0e560h)		;6f78   ; lee el borrado fila a fila en marcha
	or a			;6f7b
	ret nz			;6f7c
	call 05648h		;6f7d   ; los sprites fuera
	call 05de9h		;6f80   ; sprites_a_vram_tal_cual: los 32 sprites a la VRAM (0x3B00) tal cual
	call estado9_paso_siguiente		;6f83   ; y al paso siguiente
	ret			;6f86
L_6F87:
	ld c,0f0h		;6f87   ; la lista de 0x6F90 aparece fila a fila con 0xF0
L_6F89:
	ld hl,06f90h		;6f89
	call llenado_empieza		;6f8c   ; llenado_empieza: empieza a llenar fila a fila la lista HL con el byte C
	ret			;6f8f

; ----------------------------------------------------------------------
; DATOS leido_6F90: 1 bytes que lee p26:7988 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7988 (1 bytes)
;   0x6f90..0x6f91  (1 bytes)
DATA_leido_6F90:
	defb 006h	; 6f90

; ----------------------------------------------------------------------
; DATOS leido_6F91: 3 bytes que leen p26:79C1, p26:79B7, p26:7988 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:79C1, p26:79B7, p26:7988
;   (3 bytes)
;   0x6f91..0x6f94  (3 bytes)
DATA_leido_6F91:
	defb 020h,055h,000h	; 6f91

; ======================================================================
; CODIGO 0x6f94..0x6f9b  (7 bytes)
; ======================================================================


L_6F94:
	ld hl,06f9bh		;6f94   ; los sprites de 0x6F9B aparecen fila a fila (p26:7C85)
	call sprites_aparecen		;6f97   ; sprites_aparecen: empieza la aparicion fila a fila de los sprites de HL
	ret			;6f9a

; ----------------------------------------------------------------------
; DATOS leido_6F9B: 7 bytes que leen p26:7C93, p26:7C96, p26:7C99, p26:7CA0,
;   p26:7CBB, p26:7CBE al jugar (medido ejecutando el cartucho,
;   tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido); lo leen p26:7C93, p26:7C96, p26:7C99, p26:7CA0, p26:7CBB,
;   p26:7CBE (7 bytes)
;   0x6f9b..0x6fa2  (7 bytes)
DATA_leido_6F9B:
	defb 000h,0cdh,000h,060h,0ffh,0b7h,0ffh	; 6f9b

; ======================================================================
; CODIGO 0x6fa2..0x6fa9  (7 bytes)
; ======================================================================


L_6FA2:
	ld hl,06fa9h		;6fa2   ; los de 0x6FA9
	call sprites_aparecen		;6fa5   ; sprites_aparecen: empieza la aparicion fila a fila de los sprites de HL
	ret			;6fa8

; ----------------------------------------------------------------------
; DATOS tabla_6FA9: tabla que se lee desde HL = 0x6FA9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:6FA2 (1 bytes)
;   0x6fa9..0x6faa  (1 bytes)
DATA_tabla_6FA9:
	defb 000h	; 6fa9

; ----------------------------------------------------------------------
; DATOS leido_6FAA: 6 bytes que leen p26:7C96, p26:7C99, p26:7CA0, p26:7CBB,
;   p26:7CBE al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p26:7C96, p26:7C99, p26:7CA0, p26:7CBB, p26:7CBE (6 bytes)
;   0x6faa..0x6fb0  (6 bytes)
DATA_leido_6FAA:
	defb 0cdh,060h,058h,0d5h,0b9h,0ffh	; 6faa

; ======================================================================
; CODIGO 0x6fb0..0x701b  (107 bytes)
; ======================================================================


L_6FB0:
	ld a,(0e380h)		;6fb0   ; los colores del plano de la nave 0xE380 (tabla p28:B0FD) en 0x2100 y 0x2900
	ld hl,0b0fdh		;6fb3   ; la tabla de p28:B0FD por la nave
	call 04a5ah		;6fb6   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;6fb9
	push de			;6fba
	ld hl,02100h		;6fbb   ; al tercio de enmedio (0x2100)...
	call 04b3ch		;6fbe   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	pop de			;6fc1
	ld hl,02900h		;6fc2   ; ...y al de abajo (0x2900)
	call 04b3ch		;6fc5   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ret			;6fc8
L_6FC9:
	ld hl,07045h		;6fc9   ; el nombre del arma: el byte del nivel 0xE36F en la tabla de la nave (0x7045), en 0x3008 (p00:4F55)
	ld a,(0e380h)		;6fcc   ; lee la nave elegida (0 a 3)
	call 04a5ah		;6fcf   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(0e36fh)		;6fd2   ; lee el nivel del arma secreta (0 a 7)
	call 04a6eh		;6fd5   ; el byte del nivel
	ld hl,03008h		;6fd8   ; en 0x3008
	call 04f55h		;6fdb
	ret			;6fde
L_6FDF:
	ld hl,01008h		;6fdf   ; nueve caracteres de 0x1008: una fila a 0 y siete a 0xA0
	ld b,009h		;6fe2   ; nueve caracteres
L_6FE4:
	push bc			;6fe4
	xor a			;6fe5   ; su primera fila a 0...
	call 0004dh		;6fe6   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;6fe9
	ld bc,00007h		;6fea   ; ...y las siete de abajo a 0xA0
	ld a,0a0h		;6fed
	call 00056h		;6fef   ; BIOS FILVRM - Fills VRAM with value
	ld bc,00007h		;6ff2
	add hl,bc			;6ff5
	pop bc			;6ff6
	djnz L_6FE4		;6ff7
	ret			;6ff9
L_6FFA:
	ld hl,0cc2bh		;6ffa   ; los caracteres 1 a 0x0B en el bufer, desde 0xCC2B
	ld a,001h		;6ffd   ; los caracteres 1 a 0x0B
	ld b,00bh		;6fff
L_7001:
	ld (hl),a			;7001
	inc a			;7002
	inc hl			;7003
	djnz L_7001		;7004
	ret			;7006
L_7007:
	ld a,(0e36fh)		;7007   ; la casilla del nivel 0xE36F (tabla de 0x701A) en la fila de 0x3AC0: su direccion en 0xE7F2
	ld hl,l701ah		;700a   ; la casilla del nivel...
	call 04a6eh		;700d   ; lee_byte: A = el byte A de la tabla HL
	add a,a			;7010   ; ...x 2 en la fila de 0x3AC0
	ld hl,03ac0h		;7011
	call 04089h		;7014   ; suma_a_hl: HL = HL + A
	ld (0e7f2h),hl		;7017
L_701A:
	ret			;701a

; ----------------------------------------------------------------------
; DATOS leido_701B: 1 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (1 bytes)
;   0x701b..0x701c  (1 bytes)
DATA_leido_701B:
	defb 006h	; 701b

; ----------------------------------------------------------------------
; DATOS no_visto_701C: no se ha visto leer: ninguna instruccion trazada lo
;   apunta con su banco puesto y ninguna partida de la campana lo lee
;   (tools/cobertura.py, tools/lee_sonidos.py); en la ROM hay 3 pares de bytes
;   que valen 0x701C
;   0x701c..0x7022  (6 bytes)
DATA_no_visto_701C:
	defb 006h,005h,005h,004h,002h,002h	; 701c

; ======================================================================
; CODIGO 0x7022..0x7045  (35 bytes)
; ======================================================================


L_7022:
	ld hl,(0e7f2h)		;7022   ; la casilla parpadea: los caracteres 0x3A y 0x3B o nada, cada 4 cuadros
	call 04ab6h		;7025   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	ld a,(0e303h)		;7028   ; lee la cuenta de cuadros del juego
	bit 2,a		;702b   ; cada 4 cuadros, una cosa u otra
	jr nz,L_703B		;702d
	ld a,03ah		;702f   ; los caracteres 0x3A y 0x3B
	exx			;7031
	out (c),a		;7032
	exx			;7034
	inc a			;7035
	exx			;7036
	out (c),a		;7037
	exx			;7039
	ret			;703a
L_703B:
	xor a			;703b   ; o nada (0 y 0)
	exx			;703c
	out (c),a		;703d
	exx			;703f
	exx			;7040
	out (c),a		;7041
	exx			;7043
	ret			;7044

; ----------------------------------------------------------------------
; DATOS tabla_7045: tabla que se lee desde HL = 0x7045 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:6FC9 (8 bytes)
;   0x7045..0x704d  (8 bytes)
DATA_tabla_7045:
	defb 04ch,070h,053h,070h,05ah,070h,061h,070h	; 7045  LpSpZpap

; ----------------------------------------------------------------------
; DATOS leido_704D: 1 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (1 bytes)
;   0x704d..0x704e  (1 bytes)
DATA_leido_704D:
	defb 01ch	; 704d

; ----------------------------------------------------------------------
; DATOS no_visto_704E: no se ha visto leer: ninguna instruccion trazada lo
;   apunta con su banco puesto y ninguna partida de la campana lo lee
;   (tools/cobertura.py, tools/lee_sonidos.py); ningun par de bytes de la ROM
;   vale 0x704E
;   0x704e..0x7069  (27 bytes)
DATA_no_visto_704E:
	defb 01dh,019h,01ah,018h,00dh,014h,01eh,01dh,019h,01ah,018h,00fh,014h,01fh,020h,019h	; 704e  .............. .
	defb 01ah,018h,011h,014h,01fh,021h,019h,01ah,018h,013h,014h	; 705e  .....!.....

; ======================================================================
; CODIGO 0x7069..0x7073  (10 bytes)
; ======================================================================


L_7069:
	ld a,(0e380h)		;7069   ; el dibujo de la nave 0xE380 (tabla de 0x7073, p26:6064)
	ld hl,07073h		;706c   ; la tabla de 0x7073
	call L_6064		;706f   ; un rectangulo de la tabla HL (palabra A) a 0xCD00 y al bufer: DE el destino, B filas, C bytes (p00:59A1)
	ret			;7072

; ----------------------------------------------------------------------
; DATOS rectangulos_7073: un puntero por plano de nave (p26:7069: 0x7073 + 2 x
;   0xE380) (p26:6064: la palabra A); acaba donde empieza el primero; lo leen
;   p00:4A60 (8 bytes)
;   0x7073..0x707b  (8 bytes)
DATA_rectangulos_7073:
	defw 0707bh,070bbh,0710ch,0714eh	; 7073  -> DATA_rect_707B DATA_rect_70BB DATA_rect_710C DATA_rect_714E

; ----------------------------------------------------------------------
; DATOS rect_707B: plano de nave (p26:7069: 0x7073 + 2 x 0xE380): el destino,
;   8 filas de 19 bytes y el tipo 2 (el formato de p00:55CD), y los datos
;   (p26:6067); se solapan 2 bloques: (rle_ram2_7080 7080-70BB); lo leen
;   p26:606D, p26:6080, p00:55CD (64 bytes)
;   0x707b..0x70bb  (64 bytes)
DATA_rect_707B:
	defb 067h,0cah,008h,013h,002h,0c1h,000h,042h,020h,011h,000h,044h,022h,00fh,000h,0c3h	; 707b  g......B ..D"...
	defb 026h,023h,000h,043h,027h,00dh,000h,0c2h,026h,023h,002h,02ah,044h,02bh,00ah,000h	; 708b  &#.C'...&#.*D+..
	defb 050h,02fh,003h,000h,045h,03fh,0c1h,021h,04ch,044h,0c2h,000h,02fh,044h,050h,0c1h	; 709b  P/..E?.!LD../DP.
	defb 000h,047h,054h,043h,05ah,0c1h,05ah,042h,05dh,0c1h,03fh,047h,05fh,00bh,000h,000h	; 70ab  .GTCZ.ZB].?G_...

; ----------------------------------------------------------------------
; DATOS rect_70BB: plano de nave (p26:7069: 0x7073 + 2 x 0xE380): el destino,
;   10 filas de 19 bytes y el tipo 2 (el formato de p00:55CD), y los datos
;   (p26:6067); lo leen p26:606D, p26:6080 (81 bytes)
;   0x70bb..0x710c  (81 bytes)
DATA_rect_70BB:
	defb 067h,0cah,00ah,013h,002h,002h,000h,046h,020h,00ch,000h,047h,026h,00bh,000h,04fh	; 70bb  g......F ..G&..O
	defb 02dh,004h,000h,042h,03ch,0c2h,000h,03eh,002h,040h,043h,041h,0c1h,000h,042h,044h	; 70cb  -..B<..>.@CA..BD
	defb 002h,045h,045h,046h,002h,000h,043h,04bh,0c5h,040h,000h,041h,04eh,047h,043h,04fh	; 70db  .EEF..CK.@.ANGCO
	defb 046h,051h,004h,000h,043h,057h,0c1h,036h,044h,05ah,00bh,000h,0c3h,05eh,000h,05fh	; 70eb  FQ..CW.6DZ...^._
	defb 010h,000h,0c3h,060h,045h,061h,010h,000h,042h,062h,010h,000h,043h,064h,00dh,000h	; 70fb  ...`Ea..Bb..Cd..
	defb 000h	; 710b

; ----------------------------------------------------------------------
; DATOS rect_710C: plano de nave (p26:7069: 0x7073 + 2 x 0xE380): el destino,
;   9 filas de 19 bytes y el tipo 2 (el formato de p00:55CD), y los datos
;   (p26:6067); lo leen p26:606D, p26:6080 (66 bytes)
;   0x710c..0x714e  (66 bytes)
DATA_rect_710C:
	defb 067h,0cah,009h,013h,002h,0c1h,000h,043h,020h,010h,000h,043h,023h,010h,000h,044h	; 710c  g......C ..C#..D
	defb 026h,00fh,000h,0c1h,026h,042h,02ah,0c1h,025h,002h,000h,042h,02ch,00ah,000h,04dh	; 711c  &...&B*.%..B,..M
	defb 02eh,006h,000h,042h,03bh,0c2h,026h,000h,045h,03dh,042h,041h,0c2h,000h,05fh,04eh	; 712c  ...B..&.E=BA.._N
	defb 043h,0c1h,021h,047h,051h,002h,057h,046h,058h,00eh,000h,0c1h,05eh,003h,041h,00fh	; 713c  C.!GQ.WFX...^.A.
	defb 000h,000h	; 714c

; ----------------------------------------------------------------------
; DATOS rect_714E: plano de nave (p26:7069: 0x7073 + 2 x 0xE380): el destino,
;   10 filas de 20 bytes y el tipo 2 (el formato de p00:55CD), y los datos
;   (p26:6067); lo leen p26:606D, p26:6080 (75 bytes)
;   0x714e..0x7199  (75 bytes)
DATA_rect_714E:
	defb 066h,0cah,00ah,014h,002h,002h,000h,042h,020h,010h,000h,046h,022h,0c1h,021h,00dh	; 714e  f......B ..F".!.
	defb 000h,044h,028h,0c1h,026h,043h,02ch,0c2h,027h,02fh,00ch,000h,046h,030h,0c1h,000h	; 715e  .D(.&C,.'/..F0..
	defb 043h,036h,00ch,000h,04ah,039h,046h,042h,004h,000h,050h,048h,002h,000h,046h,058h	; 716e  C6..J9FB..PH..FX
	defb 0c1h,000h,045h,05eh,002h,062h,042h,063h,002h,000h,04ah,065h,00ah,000h,044h,06fh	; 717e  ..E^.bBc..Je..Do
	defb 0c3h,069h,06dh,073h,00fh,000h,082h,074h,010h,000h,000h	; 718e  .ims...t...

; ======================================================================
; CODIGO 0x7199..0x720c  (115 bytes)
; ======================================================================


L_7199:
	ld (0e7f0h),a		;7199   ; los sprites del trozo del nivel 0xE36F con el color A (0xE7F0), desde el sprite 0xE7F1
	ld a,(0e7f1h)		;719c   ; desde el sprite 0xE7F1 (4 bytes cada uno)
	add a,a			;719f
	add a,a			;71a0
	ld de,0ef00h		;71a1   ; apunta a los atributos de sprite (32 x 4)
	call 0408eh		;71a4   ; suma_a_de: DE = DE + A
	ld a,(0e36fh)		;71a7   ; lee el nivel del arma secreta (0 a 7)
	ld (0ef80h),a		;71aa   ; el nivel de 0xE36F
	call L_71DF		;71ad   ; los sprites del nivel 0xEF80 de la nave (tabla de 0x720C): cuantos, y por cada uno y, x y dibujo; el color 0xE7F0 (1 con el dibujo 0x6C)
	ret			;71b0
L_71B1:
	ld a,007h		;71b1   ; los sprites de los siete trozos
	call L_71CA		;71b3   ; los sprites de los niveles A a 1, con el color 0x0B, desde 0xEF00
	ret			;71b6
L_71B7:
	xor a			;71b7   ; los de los trozos hasta el nivel 0xE36F (sin el 0); 0xE7F1 = cuantos sprites
	ld (0e7f1h),a		;71b8   ; ninguno aun
	ld a,(0e36fh)		;71bb   ; lee el nivel del arma secreta (0 a 7)
	or a			;71be   ; sin nivel, nada
	ret z			;71bf
	ld c,000h		;71c0   ; C cuenta los sprites
	call L_71CA		;71c2   ; los sprites de los niveles A a 1, con el color 0x0B, desde 0xEF00
	ld a,c			;71c5   ; cuantos, en 0xE7F1
	ld (0e7f1h),a		;71c6
	ret			;71c9
L_71CA:
	ld (0ef80h),a		;71ca   ; los sprites de los niveles A a 1, con el color 0x0B, desde 0xEF00
	ld a,00bh		;71cd   ; el color 0x0B
	ld (0e7f0h),a		;71cf
	ld de,0ef00h		;71d2   ; apunta a los atributos de sprite (32 x 4)
L_71D5:
	call L_71DF		;71d5   ; el nivel 0xEF80...
	ld hl,0ef80h		;71d8   ; ...y el de antes, hasta el 1
	dec (hl)			;71db
	jr nz,L_71D5		;71dc
	ret			;71de
L_71DF:
	ld a,(0e380h)		;71df   ; los sprites del nivel 0xEF80 de la nave (tabla de 0x720C): cuantos, y por cada uno y, x y dibujo; el color 0xE7F0 (1 con el dibujo 0x6C)
	ld hl,0720ch		;71e2   ; la tabla de la nave...
	call 04a5ah		;71e5   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(0ef80h)		;71e8   ; ...y la del nivel
	call 04a5ah		;71eb   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(hl)			;71ee   ; cuantos sprites (B), y C los cuenta
	inc hl			;71ef
	ld b,a			;71f0
	add a,c			;71f1
	ld c,a			;71f2
L_71F3:
	push bc			;71f3   ; cada sprite: la y, la x y el dibujo...
	ldi		;71f4   ; la y, la x y el dibujo
	ldi		;71f6
	ldi		;71f8
	dec hl			;71fa   ; ...y el color: 1 con el dibujo 0x6C, si no el de 0xE7F0
	ld a,(hl)			;71fb
	inc hl			;71fc
	cp 06ch		;71fd
	ld a,001h		;71ff
	jr z,L_7206		;7201
	ld a,(0e7f0h)		;7203
L_7206:
	ld (de),a			;7206   ; el color
	inc de			;7207
	pop bc			;7208
	djnz L_71F3		;7209
	ret			;720b

; ----------------------------------------------------------------------
; DATOS trozos_por_nave: un puntero por nave a su tabla de trozos del arma
;   secreta (p26:71E2: 0x720C + 2 x 0xE380); lo leen p00:4A60 (8 bytes)
;   0x720c..0x7214  (8 bytes)
DATA_trozos_por_nave:
	defw 07214h,0724dh,0728bh,072cch	; 720c  -> DATA_trozos_nave_0 DATA_trozos_nave_1 DATA_trozos_nave_2 DATA_trozos_nave_3

; ----------------------------------------------------------------------
; DATOS trozos_nave_0: los trozos del arma secreta de la nave 0: un puntero
;   por nivel, del 0 (que no se pide) al 7 (p26:71EB); lo leen p00:4A60 (16
;   bytes)
;   0x7214..0x7224  (16 bytes)
DATA_trozos_nave_0:
	defw 07224h,07225h,0722ch,07233h,07237h,0723bh,0723fh,07246h	; 7214

; ----------------------------------------------------------------------
; DATOS no_visto_7224: un byte suelto (0x00) entre dos bloques: no se ha visto
;   leer: ninguna instruccion trazada lo apunta con su banco puesto y ninguna
;   partida de la campana lo lee (tools/cobertura.py, tools/lee_sonidos.py);
;   en la ROM hay 6 pares de bytes que valen 0x7224
;   0x7224..0x7225  (1 bytes)
DATA_no_visto_7224:
	defb 000h	; 7224

; ----------------------------------------------------------------------
; DATOS trozo_7225: el trozo 1 del arma secreta de la nave 0: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x7225..0x722c  (7 bytes)
DATA_trozo_7225:
	defb 002h,055h,042h,01ch,055h,052h,020h	; 7225

; ----------------------------------------------------------------------
; DATOS trozo_722C: el trozo 2 del arma secreta de la nave 0: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x722c..0x7233  (7 bytes)
DATA_trozo_722C:
	defb 002h,017h,03dh,000h,017h,04dh,004h	; 722c

; ----------------------------------------------------------------------
; DATOS trozo_7233: el trozo 3 del arma secreta de la nave 0: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x7233..0x7237  (4 bytes)
DATA_trozo_7233:
	defb 001h,02ah,081h,008h	; 7233

; ----------------------------------------------------------------------
; DATOS trozo_7237: el trozo 4 del arma secreta de la nave 0: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x7237..0x723b  (4 bytes)
DATA_trozo_7237:
	defb 001h,043h,0a0h,010h	; 7237

; ----------------------------------------------------------------------
; DATOS trozo_723B: el trozo 5 del arma secreta de la nave 0: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x723b..0x723f  (4 bytes)
DATA_trozo_723B:
	defb 001h,044h,08eh,00ch	; 723b

; ----------------------------------------------------------------------
; DATOS trozo_723F: el trozo 6 del arma secreta de la nave 0: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x723f..0x7246  (7 bytes)
DATA_trozo_723F:
	defb 002h,044h,0b0h,014h,044h,0c0h,018h	; 723f

; ----------------------------------------------------------------------
; DATOS trozo_7246: el trozo 7 del arma secreta de la nave 0: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x7246..0x724d  (7 bytes)
DATA_trozo_7246:
	defb 002h,05ah,039h,024h,05ah,049h,028h	; 7246

; ----------------------------------------------------------------------
; DATOS trozos_nave_1: los trozos del arma secreta de la nave 1: un puntero
;   por nivel, del 0 (que no se pide) al 7 (p26:71EB); lo leen p00:4A60 (16
;   bytes)
;   0x724d..0x725d  (16 bytes)
DATA_trozos_nave_1:
	defw 07224h,0725dh,0726ah,0726eh,07272h,07276h,0727dh,07284h	; 724d

; ----------------------------------------------------------------------
; DATOS trozo_725D: el trozo 1 del arma secreta de la nave 1: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (13 bytes)
;   0x725d..0x726a  (13 bytes)
DATA_trozo_725D:
	defb 004h,05fh,050h,04ch,05fh,060h,050h,05fh,070h,054h,05fh,080h,058h	; 725d  ._PL_`P_pT_.X

; ----------------------------------------------------------------------
; DATOS trozo_726A: el trozo 2 del arma secreta de la nave 1: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x726a..0x726e  (4 bytes)
DATA_trozo_726A:
	defb 001h,01eh,073h,034h	; 726a

; ----------------------------------------------------------------------
; DATOS trozo_726E: el trozo 3 del arma secreta de la nave 1: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x726e..0x7272  (4 bytes)
DATA_trozo_726E:
	defb 001h,01dh,082h,008h	; 726e

; ----------------------------------------------------------------------
; DATOS trozo_7272: el trozo 4 del arma secreta de la nave 1: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x7272..0x7276  (4 bytes)
DATA_trozo_7272:
	defb 001h,044h,080h,038h	; 7272

; ----------------------------------------------------------------------
; DATOS trozo_7276: el trozo 5 del arma secreta de la nave 1: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x7276..0x727d  (7 bytes)
DATA_trozo_7276:
	defb 002h,03bh,095h,03ch,04bh,095h,040h	; 7276

; ----------------------------------------------------------------------
; DATOS trozo_727D: el trozo 6 del arma secreta de la nave 1: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x727d..0x7284  (7 bytes)
DATA_trozo_727D:
	defb 002h,034h,09eh,044h,034h,0aeh,048h	; 727d

; ----------------------------------------------------------------------
; DATOS trozo_7284: el trozo 7 del arma secreta de la nave 1: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x7284..0x728b  (7 bytes)
DATA_trozo_7284:
	defb 002h,024h,034h,02ch,034h,034h,030h	; 7284

; ----------------------------------------------------------------------
; DATOS trozos_nave_2: los trozos del arma secreta de la nave 2: un puntero
;   por nivel, del 0 (que no se pide) al 7 (p26:71EB); lo leen p00:4A60 (16
;   bytes)
;   0x728b..0x729b  (16 bytes)
DATA_trozos_nave_2:
	defw 07224h,0729bh,0729fh,072a6h,072adh,072b1h,072b5h,072c2h	; 728b

; ----------------------------------------------------------------------
; DATOS trozo_729B: el trozo 1 del arma secreta de la nave 2: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x729b..0x729f  (4 bytes)
DATA_trozo_729B:
	defb 001h,050h,05fh,078h	; 729b

; ----------------------------------------------------------------------
; DATOS trozo_729F: el trozo 2 del arma secreta de la nave 2: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x729f..0x72a6  (7 bytes)
DATA_trozo_729F:
	defb 002h,050h,06fh,07ch,050h,07fh,080h	; 729f

; ----------------------------------------------------------------------
; DATOS trozo_72A6: el trozo 3 del arma secreta de la nave 2: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x72a6..0x72ad  (7 bytes)
DATA_trozo_72A6:
	defb 002h,02dh,063h,008h,02dh,063h,06ch	; 72a6

; ----------------------------------------------------------------------
; DATOS trozo_72AD: el trozo 4 del arma secreta de la nave 2: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x72ad..0x72b1  (4 bytes)
DATA_trozo_72AD:
	defb 001h,057h,048h,084h	; 72ad

; ----------------------------------------------------------------------
; DATOS trozo_72B1: el trozo 5 del arma secreta de la nave 2: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x72b1..0x72b5  (4 bytes)
DATA_trozo_72B1:
	defb 001h,01fh,036h,068h	; 72b1

; ----------------------------------------------------------------------
; DATOS trozo_72B5: el trozo 6 del arma secreta de la nave 2: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (13 bytes)
;   0x72b5..0x72c2  (13 bytes)
DATA_trozo_72B5:
	defb 004h,03fh,0afh,070h,03fh,0bfh,074h,03fh,0afh,06ch,03fh,0bfh,06ch	; 72b5  .?.p?.t?.l?.l

; ----------------------------------------------------------------------
; DATOS trozo_72C2: el trozo 7 del arma secreta de la nave 2: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (10 bytes)
;   0x72c2..0x72cc  (10 bytes)
DATA_trozo_72C2:
	defb 003h,00fh,026h,05ch,00fh,036h,060h,00fh,046h,064h	; 72c2  ..&\.6`.Fd

; ----------------------------------------------------------------------
; DATOS trozos_nave_3: los trozos del arma secreta de la nave 3: un puntero
;   por nivel, del 0 (que no se pide) al 7 (p26:71EB); lo leen p00:4A60 (16
;   bytes)
;   0x72cc..0x72dc  (16 bytes)
DATA_trozos_nave_3:
	defw 07224h,072dch,072e3h,072eah,072eeh,072f2h,072f6h,07303h	; 72cc

; ----------------------------------------------------------------------
; DATOS trozo_72DC: el trozo 1 del arma secreta de la nave 3: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x72dc..0x72e3  (7 bytes)
DATA_trozo_72DC:
	defb 002h,04ah,07ch,0a0h,04ah,08ch,0a4h	; 72dc

; ----------------------------------------------------------------------
; DATOS trozo_72E3: el trozo 2 del arma secreta de la nave 3: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x72e3..0x72ea  (7 bytes)
DATA_trozo_72E3:
	defb 002h,039h,0c0h,09ch,039h,0c0h,06ch	; 72e3

; ----------------------------------------------------------------------
; DATOS trozo_72EA: el trozo 3 del arma secreta de la nave 3: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x72ea..0x72ee  (4 bytes)
DATA_trozo_72EA:
	defb 001h,017h,048h,090h	; 72ea

; ----------------------------------------------------------------------
; DATOS trozo_72EE: el trozo 4 del arma secreta de la nave 3: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x72ee..0x72f2  (4 bytes)
DATA_trozo_72EE:
	defb 001h,05ch,048h,0ach	; 72ee

; ----------------------------------------------------------------------
; DATOS trozo_72F2: el trozo 5 del arma secreta de la nave 3: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (4 bytes)
;   0x72f2..0x72f6  (4 bytes)
DATA_trozo_72F2:
	defb 001h,04ch,072h,0a8h	; 72f2

; ----------------------------------------------------------------------
; DATOS trozo_72F6: el trozo 6 del arma secreta de la nave 3: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (13 bytes)
;   0x72f6..0x7303  (13 bytes)
DATA_trozo_72F6:
	defb 004h,01bh,030h,088h,01bh,040h,08ch,05ch,030h,0b0h,05ch,040h,0b4h	; 72f6  ..0..@.\0.\@.

; ----------------------------------------------------------------------
; DATOS trozo_7303: el trozo 7 del arma secreta de la nave 3: cuantos sprites
;   y, por cada uno, la y, la x y el dibujo (p26:71EE); lo leen p26:71EE,
;   p26:71F4 (7 bytes)
;   0x7303..0x730a  (7 bytes)
DATA_trozo_7303:
	defb 002h,037h,036h,094h,037h,046h,098h	; 7303

; ======================================================================
; CODIGO 0x730a..0x73e0  (214 bytes)
; ======================================================================


L_730A:
	ld a,002h		;730a   ; el ordenador de a bordo: la paleta 2, sus graficos (p26:73AF), el bufer a cero (p00:518E), su dibujo (p26:7344) y todo una vez (p26:743B)
	call 05709h		;730c   ; la paleta 2 (p00:5709)
	xor a			;730f   ; el contador quieto (0xE54C = 0)
	ld (0e54ch),a		;7310
	call L_73AF		;7313   ; los graficos
	call 0518eh		;7316   ; el bufer a cero
	call L_7344		;7319   ; el dibujo
	call L_743B		;731c   ; y todo una vez
	ret			;731f
ordenador_cuadro:		; el ordenador de a bordo, un cuadro
	call L_783F		;7320   ; el ordenador de a bordo, cada cuadro: el contador (p26:783F), sus cifras (p26:7542) y, cada 0xE540 cuadros, la animacion
	call L_7542		;7323   ; las cifras
	call L_732A		;7326   ; y la animacion
	ret			;7329
L_732A:
	call L_7451		;732a   ; la animacion: los cuatro aparatos (p26:746C, 7487, 74A2, 74BD) y los sprites (p26:745E, 74D8, 7528)
	ret c			;732d   ; aun no
	call L_746C		;732e   ; el aparato 1: su cuadro siguiente (0xE542, 4), 8 x 4 de la tabla de 0x7573 en 0xCA42
	call L_7487		;7331   ; el aparato 2: 0xE543, 6 x 3 de 0x75FB en 0xCB42
	call L_74A2		;7334   ; el aparato 3: 0xE544, 2 x 0x0A de 0x764B en 0xCBC6
	call L_74BD		;7337   ; el aparato 4: 0xE54A, 4 x 4 de 0x76B7 en 0xCAFA
	call L_745E		;733a   ; los sprites a cero y los de los indicadores
	call L_74D8		;733d   ; cuatro grupos de sprites: 0xE546 (3 cuadros, 0x7713), 0xE547 (5, 0x7734), 0xE548 (8, 0x775B) y 0xE549 (8, 0x778F)
	call L_7528		;7340   ; seis sprites del cuadro siguiente (0xE54B, 4) de la tabla de 0x77D7, en 0xEF1C
	ret			;7343
L_7344:
	ld hl,0a8c8h		;7344   ; el dibujo del ordenador de a bordo: el RLE de p28:A8C8 (0x0D filas de 0x14 en 0xCA26) y el de p28:A935 (7 de 0x1E en 0xCC01)...
	ld de,0cd00h		;7347   ; a 0xCD00...
	call 055adh		;734a   ; rle_a_ram: descomprime a la RAM de DE el RLE de HL
	ld hl,0cd00h		;734d   ; ...y al bufer: 0x0D filas de 0x14 en 0xCA26
	ld de,0ca26h		;7350
	ld bc,00d14h		;7353
	call 059a1h		;7356   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ld hl,0a935h		;7359   ; el de p28:A935...
	ld de,0cd00h		;735c
	call 055adh		;735f   ; rle_a_ram: descomprime a la RAM de DE el RLE de HL
	ld hl,0cd00h		;7362   ; ...7 filas de 0x1E en 0xCC01
	ld de,0cc01h		;7365
	ld bc,0071eh		;7368
	call 059a1h		;736b   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ld a,03dh		;736e   ; caracteres sueltos: 0x3D, 0x4A, 0x48, 0x55, 0x47, 0x54, 0x49 y 0x56
	ld (0cbd0h),a		;7370
	ld a,04ah		;7373
	ld (0cbf0h),a		;7375
	ld a,048h		;7378
	ld (0cbd1h),a		;737a
	ld a,055h		;737d
	ld (0cbf1h),a		;737f
	ld a,047h		;7382
	ld (0cbd6h),a		;7384
	ld a,054h		;7387
	ld (0cbf6h),a		;7389
	ld a,049h		;738c
	ld (0cbd9h),a		;738e
	ld a,056h		;7391
	ld (0cbf9h),a		;7393
	ld hl,076ffh		;7396   ; un rectangulo de 5 x 4 de 0x76FF en 0xCA5A
	ld de,0ca5ah		;7399
	ld bc,00504h		;739c
	call 059a1h		;739f   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ld hl,077c3h		;73a2   ; y otro de 0x77C3 en 0xCB7A
	ld de,0cb7ah		;73a5
	ld bc,00504h		;73a8
	call 059a1h		;73ab   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;73ae
L_73AF:
	ld ix,073e0h		;73af   ; los graficos del ordenador de a bordo: las listas de 0x73E0 y 0x73F9, los dibujos de sprite de p28:AF44 y p28:B0C2, los espejos de 0x7406 (p00:4E5A) y p28:B0F5 en 0x1E00
	call 04cb1h		;73b3   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,073f9h		;73b6   ; las copias de 0x73F9
	call 04d1bh		;73ba   ; copia_con_vuelta: copia caracteres de la VRAM dandoles la vuelta (lista IX)
	ld hl,01800h		;73bd   ; los dibujos de sprite de p28:AF44 en 0x1800...
	ld de,0af44h		;73c0
	call 04b3ch		;73c3   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld hl,01b40h		;73c6   ; ...y los de p28:B0C2 en 0x1B40
	ld de,0b0c2h		;73c9
	call 04b3ch		;73cc   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld ix,07406h		;73cf   ; los espejos de 0x7406
	call 04e5ah		;73d3   ; sprites copiados con espejo: la lista de IX de 4 en 4, hasta un 0 (p00:4E5A)
	ld hl,01e00h		;73d6   ; y los de p28:B0F5 en 0x1E00
	ld de,0b0f5h		;73d9
	call 04b3ch		;73dc   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ret			;73df

; ----------------------------------------------------------------------
; DATOS graficos_73E0: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p26:73B3 (25 bytes)
;   0x73e0..0x73f9  (25 bytes)
DATA_graficos_73E0:
	defb 007h,06ah,0a9h,001h,0b6h,0a9h	; 73e0
	defb 004h,0d1h,0a9h,010h,0ceh,0aah	; 73e6
	defb 002h,025h,0abh,010h,0b9h,0adh	; 73ec
	defb 001h,0d4h,0aeh,010h,00bh,0afh	; 73f2
	defb 000h	; 73f8

; ----------------------------------------------------------------------
; DATOS copias_73F9: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B): de 4 en 4 (origen, destino, tercios y vuelta, cuantos) y un 0;
;   lo leen p26:73BA (13 bytes)
;   0x73f9..0x7406  (13 bytes)
DATA_copias_73F9:
	defb 039h,03eh,024h,005h	; 73f9
	defb 072h,078h,012h,006h	; 73fd
	defb 014h,019h,009h,005h	; 7401
	defb 000h	; 7405

; ----------------------------------------------------------------------
; DATOS leido_7406: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x7406..0x7407  (1 bytes)
DATA_leido_7406:
	defb 002h	; 7406

; ----------------------------------------------------------------------
; DATOS leido_7407: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7407..0x740a  (3 bytes)
DATA_leido_7407:
	defb 004h,048h,058h	; 7407

; ----------------------------------------------------------------------
; DATOS leido_740A: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x740a..0x740f  (5 bytes)
DATA_leido_740A:
	defb 001h,001h,06ch,078h,002h	; 740a

; ----------------------------------------------------------------------
; DATOS leido_740F: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x740f..0x7412  (3 bytes)
DATA_leido_740F:
	defb 001h,068h,07ch	; 740f

; ----------------------------------------------------------------------
; DATOS leido_7412: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x7412..0x7417  (5 bytes)
DATA_leido_7412:
	defb 001h,001h,07ch,080h,002h	; 7412

; ----------------------------------------------------------------------
; DATOS leido_7417: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7417..0x741a  (3 bytes)
DATA_leido_7417:
	defb 001h,070h,084h	; 7417

; ----------------------------------------------------------------------
; DATOS leido_741A: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x741a..0x741f  (5 bytes)
DATA_leido_741A:
	defb 001h,001h,068h,088h,002h	; 741a

; ----------------------------------------------------------------------
; DATOS leido_741F: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x741f..0x7422  (3 bytes)
DATA_leido_741F:
	defb 001h,078h,08ch	; 741f

; ----------------------------------------------------------------------
; DATOS leido_7422: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x7422..0x7427  (5 bytes)
DATA_leido_7422:
	defb 001h,001h,074h,090h,002h	; 7422

; ----------------------------------------------------------------------
; DATOS leido_7427: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7427..0x742a  (3 bytes)
DATA_leido_7427:
	defb 001h,06ch,094h	; 7427

; ----------------------------------------------------------------------
; DATOS leido_742A: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x742a..0x742f  (5 bytes)
DATA_leido_742A:
	defb 001h,001h,070h,098h,002h	; 742a

; ----------------------------------------------------------------------
; DATOS leido_742F: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x742f..0x7432  (3 bytes)
DATA_leido_742F:
	defb 001h,098h,09ch	; 742f

; ----------------------------------------------------------------------
; DATOS leido_7432: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x7432..0x7433  (1 bytes)
DATA_leido_7432:
	defb 002h	; 7432

; ----------------------------------------------------------------------
; DATOS leido_7433: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7433..0x7436  (3 bytes)
DATA_leido_7433:
	defb 001h,074h,0a0h	; 7433

; ----------------------------------------------------------------------
; DATOS leido_7436: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x7436..0x743b  (5 bytes)
DATA_leido_7436:
	defb 001h,001h,0a0h,0a4h,000h	; 7436

; ======================================================================
; CODIGO 0x743b..0x7573  (312 bytes)
; ======================================================================


L_743B:
	call L_746C		;743b   ; todo una vez: los aparatos, las cifras y los sprites
	call L_7487		;743e   ; los cuatro aparatos...
	call L_74A2		;7441   ; el aparato 3: 0xE544, 2 x 0x0A de 0x764B en 0xCBC6
	call L_74BD		;7444   ; el aparato 4: 0xE54A, 4 x 4 de 0x76B7 en 0xCAFA
	call L_7542		;7447   ; ...las cifras...
	call L_74D8		;744a   ; ...y los sprites
	call L_7528		;744d   ; seis sprites del cuadro siguiente (0xE54B, 4) de la tabla de 0x77D7, en 0xEF1C
	ret			;7450
L_7451:
	ld hl,0e540h		;7451   ; la cuenta 0xE541, de 0 a 0xE540 - 1: C mientras no da la vuelta
	ld b,(hl)			;7454   ; la vuelta (0xE540)...
	inc hl			;7455
	ld a,(hl)			;7456   ; ...la cuenta + 1 (0xE541)...
	inc a			;7457
	cp b			;7458
	jr c,L_745C		;7459
	xor a			;745b   ; ...a cero al llegar
L_745C:
	ld (hl),a			;745c
	ret			;745d
L_745E:
	ld hl,0ef00h		;745e   ; los sprites de 0xEF00 a cero (0x34 bytes)
	ld de,0ef01h		;7461   ; 0x34 bytes a 0
	ld bc,00033h		;7464
	ld (hl),000h		;7467
	ldir		;7469
	ret			;746b
L_746C:
	ld hl,0e542h		;746c   ; el aparato 1: su cuadro siguiente (0xE542, 4), 8 x 4 de la tabla de 0x7573 en 0xCA42
	ld a,(hl)			;746f   ; el cuadro siguiente, de 0 a 3
	inc a			;7470
	cp 004h		;7471
	jr c,L_7476		;7473
	xor a			;7475
L_7476:
	ld (hl),a			;7476
	ld hl,07573h		;7477   ; su dibujo en la tabla de 0x7573...
	call 04a5ah		;747a   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,0ca42h		;747d   ; ...8 filas de 4 en 0xCA42
	ld bc,00804h		;7480
	call 059a1h		;7483   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;7486
L_7487:
	ld hl,0e543h		;7487   ; el aparato 2: 0xE543, 6 x 3 de 0x75FB en 0xCB42
	ld a,(hl)			;748a   ; el cuadro siguiente, de 0 a 3
	inc a			;748b
	cp 004h		;748c
	jr c,L_7491		;748e
	xor a			;7490
L_7491:
	ld (hl),a			;7491
	ld hl,075fbh		;7492   ; de la tabla de 0x75FB, 6 filas de 3 en 0xCB42
	call 04a5ah		;7495   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,0cb42h		;7498
	ld bc,00603h		;749b   ; 6 filas de 3 en 0xCB42
	call 059a1h		;749e   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;74a1
L_74A2:
	ld hl,0e544h		;74a2   ; el aparato 3: 0xE544, 2 x 0x0A de 0x764B en 0xCBC6
	ld a,(hl)			;74a5   ; el cuadro siguiente, de 0 a 3
	inc a			;74a6
	cp 004h		;74a7
	jr c,L_74AC		;74a9
	xor a			;74ab
L_74AC:
	ld (hl),a			;74ac
	ld hl,0764bh		;74ad   ; de la tabla de 0x764B, 2 filas de 0x0A en 0xCBC6
	call 04a5ah		;74b0   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,0cbc6h		;74b3
	ld bc,0020ah		;74b6
	call 059a1h		;74b9   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;74bc
L_74BD:
	ld hl,0e54ah		;74bd   ; el aparato 4: 0xE54A, 4 x 4 de 0x76B7 en 0xCAFA
	ld a,(hl)			;74c0   ; el cuadro siguiente, de 0 a 3
	inc a			;74c1
	cp 004h		;74c2
	jr c,L_74C7		;74c4
	xor a			;74c6
L_74C7:
	ld (hl),a			;74c7
	ld hl,076b7h		;74c8   ; de la tabla de 0x76B7, 4 filas de 4 en 0xCAFA
	call 04a5ah		;74cb   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,0cafah		;74ce
	ld bc,00404h		;74d1
	call 059a1h		;74d4   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;74d7
L_74D8:
	ld de,0ef00h		;74d8   ; cuatro grupos de sprites: 0xE546 (3 cuadros, 0x7713), 0xE547 (5, 0x7734), 0xE548 (8, 0x775B) y 0xE549 (8, 0x778F)
	ld bc,0e546h		;74db   ; el primero: 0xE546, 3 cuadros de 0x7713
	ld hl,07713h		;74de
	exx			;74e1
	ld c,003h		;74e2   ; 3 cuadros
	exx			;74e4
	call L_7510		;74e5   ; el cuadro siguiente (de C) de la tabla HL: cuantos sprites y sus 4 bytes, a DE
	ld bc,0e547h		;74e8   ; el segundo: 0xE547, 5 de 0x7734
	ld hl,07734h		;74eb
	exx			;74ee
	ld c,005h		;74ef   ; 5 cuadros
	exx			;74f1
	call L_7510		;74f2   ; el cuadro siguiente (de C) de la tabla HL: cuantos sprites y sus 4 bytes, a DE
	ld bc,0e548h		;74f5   ; el tercero: 0xE548, 8 de 0x775B
	ld hl,0775bh		;74f8
	exx			;74fb
	ld c,008h		;74fc   ; 8 cuadros
	exx			;74fe
	call L_7510		;74ff   ; el cuadro siguiente (de C) de la tabla HL: cuantos sprites y sus 4 bytes, a DE
	ld bc,0e549h		;7502   ; el cuarto: 0xE549, 8 de 0x778F
	ld hl,0778fh		;7505
	exx			;7508
	ld c,008h		;7509   ; 8 cuadros
	exx			;750b
	call L_7510		;750c   ; el cuadro siguiente (de C) de la tabla HL: cuantos sprites y sus 4 bytes, a DE
	ret			;750f
L_7510:
	ld a,(bc)			;7510   ; el cuadro siguiente (de C) de la tabla HL: cuantos sprites y sus 4 bytes, a DE
	inc a			;7511   ; el cuadro siguiente; al llegar a C, el 0
	exx			;7512
	cp c			;7513
	exx			;7514
	jr c,L_7518		;7515
	xor a			;7517
L_7518:
	ld (bc),a			;7518   ; el cuadro A de la tabla HL: cuantos sprites (0: ninguno)...
	call 04a5ah		;7519   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(hl)			;751c   ; sin sprites, nada
	or a			;751d
	ret z			;751e
	add a,a			;751f   ; ...x 4 bytes a DE
	add a,a			;7520   ; x 4 bytes
	ld c,a			;7521
	ld b,000h		;7522
	inc hl			;7524
	ldir		;7525   ; a los sprites
	ret			;7527
L_7528:
	ld hl,0e54bh		;7528   ; seis sprites del cuadro siguiente (0xE54B, 4) de la tabla de 0x77D7, en 0xEF1C
	ld a,(hl)			;752b   ; el cuadro siguiente, de 0 a 3
	inc a			;752c
	cp 004h		;752d
	jr c,L_7532		;752f
	xor a			;7531
L_7532:
	ld (hl),a			;7532
	ld hl,077d7h		;7533   ; seis sprites (0x18 bytes) de la tabla de 0x77D7 en 0xEF1C
	call 04a5ah		;7536   ; lee_palabra: HL = la palabra A de la tabla HL
	ld bc,00018h		;7539
	ld de,0ef1ch		;753c
	ldir		;753f
	ret			;7541
L_7542:
	ld bc,0e54fh		;7542   ; las cifras del contador: 4 de 0xE54F en 0xCBD2 y 2 de 0xE553 en 0xCBD7
	ld de,0cbd2h		;7545   ; en 0xCBD2, 4 cifras
	ld l,004h		;7548
	call L_7559		;754a   ; L cifras: cada una dos caracteres, arriba y abajo (tabla de 0x76A3)
	ld bc,0e553h		;754d   ; las 2 de 0xE553 en 0xCBD7
	ld de,0cbd7h		;7550
	ld l,002h		;7553
	call L_7559		;7555   ; L cifras: cada una dos caracteres, arriba y abajo (tabla de 0x76A3)
	ret			;7558
L_7559:
	push hl			;7559   ; L cifras: cada una dos caracteres, arriba y abajo (tabla de 0x76A3)
	ld a,(bc)			;755a   ; la cifra...
	inc bc			;755b
	ld hl,076a3h		;755c   ; ...sus dos caracteres en la tabla de 0x76A3
	call 04a5ah		;755f   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,l			;7562   ; el de arriba...
	push de			;7563
	ld (de),a			;7564
	ld a,020h		;7565   ; ...y el de abajo, una fila mas abajo (0x20)
	call 0408eh		;7567   ; suma_a_de: DE = DE + A
	ld a,h			;756a
	ld (de),a			;756b
	pop de			;756c
	inc de			;756d   ; la cifra siguiente
	pop hl			;756e
	dec l			;756f
	jr nz,L_7559		;7570
	ret			;7572

; ----------------------------------------------------------------------
; DATOS tabla_7573: tabla que se lee desde HL = 0x7573 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:7477 (8 bytes)
;   0x7573..0x757b  (8 bytes)
DATA_tabla_7573:
	defb 07bh,075h,09bh,075h,0bbh,075h,0dbh,075h	; 7573  {u.u.u.u

; ----------------------------------------------------------------------
; DATOS leido_757B: 128 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (128 bytes)
;   0x757b..0x75fb  (128 bytes)
DATA_leido_757B:
	defb 010h,011h,000h,000h,012h,013h,014h,015h,016h,017h,001h,002h,018h,019h,001h,002h	; 757b  ................
	defb 012h,013h,001h,002h,016h,017h,01ah,01bh,010h,011h,000h,000h,012h,013h,000h,000h	; 758b  ................
	defb 018h,011h,000h,01ch,012h,013h,000h,002h,016h,017h,01dh,002h,010h,019h,001h,002h	; 759b  ................
	defb 012h,013h,01eh,002h,016h,017h,000h,002h,010h,011h,000h,002h,012h,013h,000h,000h	; 75ab  ................
	defb 010h,011h,000h,000h,012h,013h,014h,015h,016h,017h,001h,002h,018h,019h,001h,002h	; 75bb  ................
	defb 012h,013h,001h,002h,016h,017h,01ah,01bh,010h,011h,000h,000h,012h,013h,000h,000h	; 75cb  ................
	defb 010h,011h,01fh,000h,012h,013h,001h,000h,016h,017h,001h,020h,010h,019h,001h,002h	; 75db  ........... ....
	defb 012h,013h,001h,021h,016h,017h,001h,000h,014h,011h,001h,000h,012h,013h,000h,000h	; 75eb  ...!............

; ----------------------------------------------------------------------
; DATOS tabla_75FB: tabla que se lee desde HL = 0x75FB con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:7492 (8 bytes)
;   0x75fb..0x7603  (8 bytes)
DATA_tabla_75FB:
	defb 003h,076h,015h,076h,027h,076h,039h,076h	; 75fb  .v.v'v9v

; ----------------------------------------------------------------------
; DATOS leido_7603: 72 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (72 bytes)
;   0x7603..0x764b  (72 bytes)
DATA_leido_7603:
	defb 015h,016h,017h,018h,019h,01ah,018h,000h,000h,018h,01bh,000h,018h,01ch,000h,01dh	; 7603  ................
	defb 01eh,01fh,015h,016h,020h,018h,019h,01bh,018h,021h,000h,018h,021h,000h,018h,019h	; 7613  .... ....!..!...
	defb 01ch,01dh,01eh,01fh,015h,016h,017h,018h,019h,000h,018h,019h,021h,018h,019h,000h	; 7623  ............!...
	defb 018h,019h,024h,01dh,01eh,01fh,015h,016h,022h,018h,023h,000h,018h,019h,000h,018h	; 7633  ..$.....".#.....
	defb 019h,021h,018h,024h,000h,01dh,01eh,01fh	; 7643  .!.$....

; ----------------------------------------------------------------------
; DATOS tabla_764B: tabla que se lee desde HL = 0x764B con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:74AD (8 bytes)
;   0x764b..0x7653  (8 bytes)
DATA_tabla_764B:
	defb 053h,076h,067h,076h,07bh,076h,08fh,076h	; 764b  Svgv{v.v

; ----------------------------------------------------------------------
; DATOS leido_7653: 80 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (80 bytes)
;   0x7653..0x76a3  (80 bytes)
DATA_leido_7653:
	defb 025h,026h,027h,028h,028h,028h,029h,02ah,02ah,000h,02bh,003h,02dh,02eh,02fh,030h	; 7653  %&'((()**.+.-./0
	defb 031h,032h,003h,033h,025h,026h,026h,026h,026h,027h,028h,034h,02ah,000h,02bh,035h	; 7663  12.3%&&&&'(4*.+5
	defb 036h,02eh,02fh,030h,031h,037h,02ch,033h,025h,026h,026h,026h,026h,026h,026h,026h	; 7673  6./017,3%&&&&&&&
	defb 038h,000h,02bh,003h,02dh,02eh,02fh,030h,031h,032h,003h,033h,025h,026h,026h,026h	; 7683  8.+.-./012.3%&&&
	defb 026h,027h,028h,034h,02ah,000h,02bh,003h,039h,03ah,02fh,030h,03bh,03ch,003h,033h	; 7693  &'(4*.+.9:/0.<.3

; ----------------------------------------------------------------------
; DATOS tabla_76A3: tabla que se lee desde HL = 0x76A3 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:755C (20 bytes)
;   0x76a3..0x76b7  (20 bytes)
DATA_tabla_76A3:
	defb 046h,053h,03eh,04bh,03fh,04ch,040h,04dh,041h,04eh,042h,04dh,043h,04fh,044h,050h	; 76a3  FS>K?L@MANBMCODP
	defb 045h,051h,045h,052h	; 76b3

; ----------------------------------------------------------------------
; DATOS tabla_76B7: tabla que se lee desde HL = 0x76B7 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:74C8 (8 bytes)
;   0x76b7..0x76bf  (8 bytes)
DATA_tabla_76B7:
	defb 0bfh,076h,0cfh,076h,0dfh,076h,0efh,076h	; 76b7  .v.v.v.v

; ----------------------------------------------------------------------
; DATOS leido_76BF: 84 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (84 bytes)
;   0x76bf..0x7713  (84 bytes)
DATA_leido_76BF:
	defb 024h,003h,025h,026h,000h,000h,057h,058h,059h,05ah,000h,000h,05bh,05bh,05bh,05ch	; 76bf  $.%&..WXYZ..[[[\
	defb 024h,003h,027h,028h,000h,000h,057h,058h,05dh,05eh,000h,000h,05bh,05bh,05bh,05ch	; 76cf  $.'(..WX]^..[[[\
	defb 024h,003h,029h,02ah,000h,000h,057h,058h,05fh,060h,061h,000h,05bh,05bh,05bh,05ch	; 76df  $.)*..WX_`a.[[[\
	defb 024h,003h,02bh,02ch,000h,000h,057h,058h,062h,063h,061h,000h,05bh,05bh,05bh,05ch	; 76ef  $.+,..WXbca.[[[\
	defb 02dh,004h,02eh,02fh,005h,006h,030h,031h,007h,008h,009h,00ah,032h,033h,034h,035h	; 76ff  -../..01....2345
	defb 022h,023h,000h,000h	; 770f

; ----------------------------------------------------------------------
; DATOS leido_7713: 6 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (6 bytes)
;   0x7713..0x7719  (6 bytes)
DATA_leido_7713:
	defb 019h,077h,022h,077h,02bh,077h	; 7713

; ----------------------------------------------------------------------
; DATOS leido_7719: 27 bytes que leen p26:751C, p26:7525 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:751C, p26:7525 (27 bytes)
;   0x7719..0x7734  (27 bytes)
DATA_leido_7719:
	defb 002h,00fh,0d0h,014h,007h,01fh,0d0h,018h,007h,002h,00fh,0d0h,01ch,007h,01fh,0d0h	; 7719  ................
	defb 020h,007h,002h,00fh,0d0h,024h,007h,01fh,0d0h,028h,007h	; 7729   ....$...(.

; ----------------------------------------------------------------------
; DATOS leido_7734: 10 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (10 bytes)
;   0x7734..0x773e  (10 bytes)
DATA_leido_7734:
	defb 03eh,077h,043h,077h,048h,077h,051h,077h,056h,077h	; 7734  >wCwHwQwVw

; ----------------------------------------------------------------------
; DATOS leido_773E: 29 bytes que leen p26:751C, p26:7525 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:751C, p26:7525 (29 bytes)
;   0x773e..0x775b  (29 bytes)
DATA_leido_773E:
	defb 001h,00fh,0d0h,000h,009h,001h,00fh,0d0h,004h,009h,002h,00fh,0d0h,008h,009h,01fh	; 773e  ................
	defb 0d0h,00ch,009h,001h,00fh,0d0h,004h,009h,001h,00fh,0d0h,010h,009h	; 774e  .............

; ----------------------------------------------------------------------
; DATOS leido_775B: 16 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (16 bytes)
;   0x775b..0x776b  (16 bytes)
DATA_leido_775B:
	defb 06bh,077h,070h,077h,075h,077h,076h,077h,07bh,077h,080h,077h,085h,077h,08ah,077h	; 775b  kwpwuwvw{w.w.w.w

; ----------------------------------------------------------------------
; DATOS leido_776B: 36 bytes que leen p26:751C, p26:7525 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:751C, p26:7525 (36 bytes)
;   0x776b..0x778f  (36 bytes)
DATA_leido_776B:
	defb 001h,00fh,0e0h,02ch,008h,001h,00fh,0e0h,030h,008h,000h,001h,00fh,0e0h,034h,008h	; 776b  ...,....0.....4.
	defb 001h,00fh,0e0h,038h,008h,001h,00fh,0e0h,03ch,008h,001h,00fh,0e0h,040h,008h,001h	; 777b  ...8....<....@..
	defb 00fh,0e0h,044h,008h	; 778b

; ----------------------------------------------------------------------
; DATOS leido_778F: 16 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (16 bytes)
;   0x778f..0x779f  (16 bytes)
DATA_leido_778F:
	defb 09fh,077h,0a8h,077h,0b1h,077h,0bah,077h,0bah,077h,0b1h,077h,0a8h,077h,09fh,077h	; 778f  .w.w.w.w.w.w.w.w

; ----------------------------------------------------------------------
; DATOS leido_779F: 36 bytes que leen p26:751C, p26:7525 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:751C, p26:7525 (36 bytes)
;   0x779f..0x77c3  (36 bytes)
DATA_leido_779F:
	defb 002h,01fh,0d0h,048h,005h,01fh,0e0h,058h,005h,002h,01fh,0d0h,04ch,005h,01fh,0e0h	; 779f  ...H...X....L...
	defb 05ch,005h,002h,01fh,0d0h,050h,005h,01fh,0e0h,060h,005h,002h,01fh,0d0h,054h,005h	; 77af  \....P...`....T.
	defb 01fh,0e0h,064h,005h	; 77bf

; ----------------------------------------------------------------------
; DATOS leido_77C3: 20 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (20 bytes)
;   0x77c3..0x77d7  (20 bytes)
DATA_leido_77C3:
	defb 000h,000h,064h,065h,066h,004h,067h,068h,005h,006h,069h,06ah,007h,008h,009h,00ah	; 77c3  ..def.gh..ij....
	defb 06bh,06ch,06dh,06eh	; 77d3

; ----------------------------------------------------------------------
; DATOS tabla_77D7: tabla que se lee desde HL = 0x77D7 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:7533 (8 bytes)
;   0x77d7..0x77df  (8 bytes)
DATA_tabla_77D7:
	defb 0dfh,077h,0f7h,077h,00fh,078h,027h,078h	; 77d7  .w.w.x'x

; ----------------------------------------------------------------------
; DATOS leido_77DF: 96 bytes que lee p26:753F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:753F (96 bytes)
;   0x77df..0x783f  (96 bytes)
DATA_leido_77DF:
	defb 05fh,0d0h,06ch,009h,05fh,0e0h,094h,009h,05fh,0e0h,0a0h,008h,06fh,0d0h,068h,00bh	; 77df  _.l._..._...o.h.
	defb 06fh,0e0h,07ch,00bh,06fh,0e0h,0a4h,008h,05fh,0d0h,088h,00bh,05fh,0e0h,094h,009h	; 77ef  o.|.o..._..._...
	defb 06fh,0d0h,068h,00bh,06fh,0d0h,098h,008h,06fh,0e0h,08ch,009h,06fh,0e0h,09ch,008h	; 77ff  o.h.o...o...o...
	defb 05fh,0d0h,088h,00bh,05fh,0d0h,074h,008h,06fh,0d0h,090h,008h,06fh,0e0h,08ch,009h	; 780f  _..._.t.o...o...
	defb 0e0h,000h,000h,000h,0e0h,000h,000h,000h,05fh,0d0h,06ch,009h,05fh,0d0h,070h,008h	; 781f  ........_.l._.p.
	defb 05fh,0e0h,080h,00bh,05fh,0e0h,084h,008h,06fh,0d0h,078h,009h,06fh,0e0h,07ch,00bh	; 782f  _..._...o.x.o.|.

; ======================================================================
; CODIGO 0x783f..0x7d4e  (1295 bytes)
; ======================================================================


L_783F:
	ld bc,(0e54dh)		;783f   ; el modo (0xE54C): 0 nada, 1 sumar, 2 restar
	ld a,(0e54ch)		;7843   ; 0: nada
	or a			;7846
	ret z			;7847
	dec a			;7848
	jr nz,L_7876		;7849   ; 2: restar (p26:7876)
	ld hl,0e552h		;784b   ; suma C a la cuarta cifra
	ld a,(hl)			;784e   ; la cuarta cifra + C
	add a,c			;784f
	ld (hl),a			;7850
	sub 00ah		;7851   ; pasa de 9: acarreo a la tercera
	jr c,L_7857		;7853
	ld (hl),a			;7855
	inc b			;7856
L_7857:
	dec hl			;7857   ; con acarreo: B mas a la tercera...
	ld a,(hl)			;7858   ; la tercera + B
	add a,b			;7859
	ld (hl),a			;785a
	sub 00ah		;785b   ; pasa de 9: acarreo a la segunda...
	ret c			;785d
	ld (hl),a			;785e
	dec hl			;785f   ; ...y uno mas a la segunda y a la primera
	inc (hl)			;7860   ; ...y a la primera
	ld a,(hl)			;7861
	sub 00ah		;7862
	ret c			;7864
	ld (hl),a			;7865
	dec hl			;7866
	inc (hl)			;7867
	ld a,(hl)			;7868
	sub 00ah		;7869
	ret c			;786b
	ld a,009h		;786c   ; pasado de 9999: todo a 9
	ld (hl),a			;786e
	inc hl			;786f
	ld (hl),a			;7870
	inc hl			;7871
	ld (hl),a			;7872
	inc hl			;7873
	ld (hl),a			;7874
	ret			;7875
L_7876:
	ld hl,0e552h		;7876   ; ...con 2 resta, sin bajar de 0
	ld a,(hl)			;7879
	sub c			;787a
	ld (hl),a			;787b
	jr nc,L_7882		;787c
	add a,00ah		;787e
	ld (hl),a			;7880
	inc b			;7881
L_7882:
	dec hl			;7882   ; con acarreo hacia abajo...
	ld a,(hl)			;7883   ; la tercera - B...
	sub b			;7884
	ld (hl),a			;7885
	ret nc			;7886
	add a,00ah		;7887   ; ...con prestamo de la segunda...
	ld (hl),a			;7889
	dec hl			;788a
	ld a,(hl)			;788b
	sub 001h		;788c
	ld (hl),a			;788e
	ret nc			;788f
	add a,00ah		;7890   ; ...y de la primera
	ld (hl),a			;7892
	dec hl			;7893
	ld a,(hl)			;7894
	sub 001h		;7895
	ld (hl),a			;7897
	ret nc			;7898
	xor a			;7899   ; bajo de 0: todo a 0
	ld (hl),a			;789a   ; todo a 0
	inc hl			;789b
	ld (hl),a			;789c
	inc hl			;789d
	ld (hl),a			;789e
	inc hl			;789f
	ld (hl),a			;78a0
	ret			;78a1
borrado_empieza:		; empieza a borrar fila a fila la lista HL
	ld (0e562h),hl		;78a2   ; empieza un borrado fila a fila: la lista HL en 0xE562 y 0xE560 = 1 (la fila 0 en 0xE561)
	ld hl,00001h		;78a5   ; en marcha, desde la fila 0
	ld (0e560h),hl		;78a8   ; guarda el borrado fila a fila en marcha y el byte siguiente (16 bits)
	ret			;78ab
borrado_cuadro:		; el borrado fila a fila, cada 4 cuadros
	ld a,(0e303h)		;78ac   ; cada 4 cuadros, la fila 0xE561 de los dibujos de cada trozo de la lista a 0; a las 8, acaba (0xE560 = 0)
	and 003h		;78af   ; cada 4 cuadros
	ret nz			;78b1
	ld hl,(0e562h)		;78b2   ; la lista
	push hl			;78b5
	pop ix		;78b6
L_78B8:
	ld a,(ix+000h)		;78b8   ; cada trozo hasta el 0
	or a			;78bb
	jr z,L_78C9		;78bc
	call L_78D7		;78be   ; los tercios de sus bits 2, 1 y 0
	ld bc,00003h		;78c1   ; 3 bytes cada uno
	add ix,bc		;78c4
	jp L_78B8		;78c6
L_78C9:
	ld hl,0e561h		;78c9   ; la fila siguiente
	ld a,(hl)			;78cc
	inc a			;78cd
	ld (hl),a			;78ce
	cp 008h		;78cf
	ret nz			;78d1
	xor a			;78d2   ; a las 8, acabado
	ld (0e560h),a		;78d3   ; guarda el borrado fila a fila en marcha
	ret			;78d6
L_78D7:
	ld de,00000h		;78d7   ; los tercios de sus bits 2, 1 y 0
	bit 2,(ix+000h)		;78da   ; el tercio de arriba (bit 2)...
	call nz,L_78F6		;78de
	ld de,00800h		;78e1   ; ...el de enmedio (bit 1)...
	bit 1,(ix+000h)		;78e4
	call nz,L_78F6		;78e8
	ld de,01000h		;78eb   ; ...y el de abajo (bit 0)
	bit 0,(ix+000h)		;78ee
	call nz,L_78F6		;78f2
	ret			;78f5
L_78F6:
	ld l,(ix+001h)		;78f6   ; ...desde el caracter IX+1, IX+2 caracteres seguidos
	ld h,000h		;78f9   ; el caracter x 8 + el tercio...
	add hl,hl			;78fb
	add hl,hl			;78fc
	add hl,hl			;78fd
	add hl,de			;78fe
	ld a,(0e561h)		;78ff   ; ...+ la fila
	call 04089h		;7902   ; suma_a_hl: HL = HL + A
	ld b,(ix+002h)		;7905   ; IX+2 caracteres, de 8 en 8, a 0
	ld de,00008h		;7908
	xor a			;790b
L_790C:
	call 0004dh		;790c   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;790f
	djnz L_790C		;7910
	ret			;7912
borrado_sprites_empieza:		; empieza a borrar fila a fila los sprites de HL
	ld (0e575h),hl		;7913   ; lo mismo con los dibujos de sprite: la lista HL en 0xE575 y 0xE573 = 1
	ld hl,00001h		;7916   ; en marcha, desde la fila 0
	ld (0e573h),hl		;7919
	ret			;791c
borrado_sprites_cuadro:		; el borrado de sprites, cada 4 cuadros
	ld a,(0e303h)		;791d   ; cada 4 cuadros, la fila 0xE574 de cada sprite de la lista (dibujo, cuantos x 4) a 0; 0xFF acaba
	and 003h		;7920   ; cada 4 cuadros
	ret nz			;7922
	ld hl,(0e575h)		;7923   ; la lista de sprites
	push hl			;7926
	pop ix		;7927
L_7929:
	ld a,(ix+000h)		;7929   ; cada uno hasta el 0xFF, 2 bytes
	inc a			;792c
	jr z,L_793A		;792d
	call L_7948		;792f
	ld bc,00002h		;7932
	add ix,bc		;7935
	jp L_7929		;7937
L_793A:
	ld hl,0e574h		;793a   ; una fila mas; a las 8, acaba
	ld a,(hl)			;793d   ; la fila siguiente; a las 8, acabado
	inc a			;793e
	ld (hl),a			;793f
	cp 008h		;7940
	ret nz			;7942
	xor a			;7943
	ld (0e573h),a		;7944
	ret			;7947
L_7948:
	ld l,(ix+000h)		;7948   ; el dibujo de sprite x 8 + 0x1800 + la fila 0xE574...
	ld h,000h		;794b   ; el dibujo x 8 + 0x1800 + la fila
	add hl,hl			;794d
	add hl,hl			;794e
	add hl,hl			;794f
	ld de,01800h		;7950
	add hl,de			;7953
	ld a,(0e574h)		;7954
	call 04089h		;7957   ; suma_a_hl: HL = HL + A
	ld a,(ix+001h)		;795a   ; ...y cuantos x 4 dibujos, de 8 en 8 bytes, a 0
	add a,a			;795d   ; cuantos x 4 dibujos de 8 bytes...
	add a,a			;795e
	ld b,a			;795f
	ld de,00008h		;7960
	xor a			;7963   ; ...a 0
L_7964:
	call 0004dh		;7964   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;7967
	djnz L_7964		;7968
	ret			;796a
llenado_con_pausas:		; empieza a llenar fila a fila con pausas la lista HL con el byte C
	ld (0e57dh),a		;796b   ; lo mismo que p26:7978, con 0xE57D = A y 0xE57B = 0x100
	call llenado_empieza		;796e   ; y con 0x100 en 0xE57B
	ld hl,00100h		;7971
	ld (0e57bh),hl		;7974
	ret			;7977
llenado_empieza:		; empieza a llenar fila a fila la lista HL con el byte C
	ld a,c			;7978   ; empieza un llenado fila a fila: los trozos de HL a cero (p26:7998) y 0xE564 = 1, con el byte C (0xE568)
	ld (0e568h),a		;7979   ; el byte, la lista...
	ld (0e566h),hl		;797c
	push hl			;797f
	pop ix		;7980
	ld hl,00001h		;7982   ; ...en marcha
	ld (0e564h),hl		;7985   ; guarda el llenado fila a fila en marcha y el byte siguiente (16 bits)
L_7988:
	ld a,(ix+000h)		;7988   ; cada trozo hasta el 0
	or a			;798b
	ret z			;798c
	call L_7998		;798d   ; sus caracteres a 0
	ld bc,00003h		;7990
	add ix,bc		;7993
	jp L_7988		;7995
L_7998:
	ld de,00000h		;7998   ; por cada trozo: los tercios de sus bits 2, 1 y 0
	bit 2,(ix+000h)		;799b   ; el tercio de arriba (bit 2)...
	call nz,L_79B7		;799f
	ld de,00800h		;79a2   ; ...el de enmedio (bit 1)...
	bit 1,(ix+000h)		;79a5
	call nz,L_79B7		;79a9
	ld de,01000h		;79ac   ; ...y el de abajo (bit 0)
	bit 0,(ix+000h)		;79af
	call nz,L_79B7		;79b3
	ret			;79b6
L_79B7:
	ld l,(ix+002h)		;79b7   ; cuantos x 8 bytes...
	ld h,000h		;79ba   ; cuantos x 8 bytes...
	add hl,hl			;79bc
	add hl,hl			;79bd
	add hl,hl			;79be
	ld c,l			;79bf
	ld b,h			;79c0
	ld l,(ix+001h)		;79c1   ; ...desde el caracter x 8 del tercio...
	ld h,000h		;79c4   ; ...desde el caracter x 8 del tercio
	add hl,hl			;79c6
	add hl,hl			;79c7
	add hl,hl			;79c8
	add hl,de			;79c9
	xor a			;79ca   ; ...a cero
	call 00056h		;79cb   ; BIOS FILVRM - Fills VRAM with value
	ret			;79ce
llenado_con_pausas_cuadro:		; el llenado con pausas, un cuadro
	ld a,(0e57bh)		;79cf   ; el llenado con pausas: con 0xE57B a 0, espera 0x3C cuadros por trozo...
	or a			;79d2   ; con pausa: cada 0x3C cuadros...
	jr nz,L_79DF		;79d3
	ld hl,0e57ch		;79d5
	dec (hl)			;79d8
	ret nz			;79d9
	ld (hl),03ch		;79da   ; ...uno mas en 0xE57B
	dec hl			;79dc
	inc (hl)			;79dd
	ret			;79de
L_79DF:
	ld a,(0e303h)		;79df   ; ...si no, cada 4 cuadros una fila del trozo en curso; al acabar sus 8, el siguiente (0xE57D cuenta, y algunos paran)
	and 003h		;79e2   ; si no, cada 4 cuadros
	ret nz			;79e4
	ld ix,(0e566h)		;79e5   ; el trozo en curso (0xE566)
	call L_7A6F		;79e9   ; una fila del trozo
	ld hl,0e565h		;79ec   ; una fila mas (0xE565); a las 8...
	ld a,(hl)			;79ef   ; la fila siguiente; a las 8, el trozo siguiente
	inc a			;79f0
	ld (hl),a			;79f1
	cp 008h		;79f2
	ret nz			;79f4
	ld (hl),000h		;79f5   ; ...el trozo siguiente; con un 0, acabado
	ld bc,00003h		;79f7
	add ix,bc		;79fa
	ld a,(ix+000h)		;79fc   ; 0: acabado
	or a			;79ff
	jr z,L_7A6A		;7a00
	ld (0e566h),ix		;7a02   ; apunta al nuevo y 0xE57D + 1
	ld hl,0e57dh		;7a06   ; 0xE57D cuenta los trozos
	inc (hl)			;7a09
	ld a,(hl)			;7a0a
	dec a			;7a0b   ; el primero, y los 0x0B-0x0E, sin pausa...
	ret z			;7a0c
	sub 007h		;7a0d   ; sin pausa: los 0x0B-0x0E...
	cp 004h		;7a0f
	ret c			;7a11
	ld a,(hl)			;7a12   ; ...ni el 0x0E, 0x11, 0x13, 0x21, 0x2A, 0x33 y 0x32-0x37
	cp 00eh		;7a13   ; ...el 0x0E, el 0x11 y el 0x13...
	ret z			;7a15
	cp 011h		;7a16
	ret z			;7a18
	cp 013h		;7a19
	ret z			;7a1b
	cp 016h		;7a1c   ; con el 0x16 y el 0x38, la pausa de 0x3C cuadros (0xE57C = 0)
	jr z,L_7A34		;7a1e
	cp 021h		;7a20   ; ...el 0x21, el 0x2A y el 0x33...
	ret z			;7a22
	cp 02ah		;7a23
	ret z			;7a25
	cp 033h		;7a26
	ret z			;7a28
	cp 038h		;7a29
	jr z,L_7A34		;7a2b
	sub 02ch		;7a2d   ; ...y los 0x2C-0x31
	cp 006h		;7a2f
	ret c			;7a31
	jr L_7A38		;7a32
L_7A34:
	xor a			;7a34   ; con la pausa larga (0xE57C = 0)
	ld (0e57ch),a		;7a35
L_7A38:
	xor a			;7a38   ; los demas, la pausa normal (0xE57B = 0)
	ld (0e57bh),a		;7a39   ; con la pausa (0xE57B = 0)
	ret			;7a3c
llenado_cuadro:		; el llenado fila a fila, cada 4 cuadros
	ld b,001h		;7a3d   ; cada 4 cuadros (cada 2 con 0xE32B), la fila 0xE565 de todos los trozos con el byte 0xE568; a las 8, acaba
	ld a,(0e32bh)		;7a3f   ; cada 2 cuadros con 0xE32B...
	or a			;7a42
	jr nz,L_7A47		;7a43
	ld b,003h		;7a45   ; ...si no, cada 4
L_7A47:
	ld a,(0e303h)		;7a47   ; lee la cuenta de cuadros del juego
	and b			;7a4a
	ret nz			;7a4b
	ld ix,(0e566h)		;7a4c   ; la lista
L_7A50:
	ld a,(ix+000h)		;7a50   ; cada trozo hasta el 0
	or a			;7a53
	jr z,L_7A61		;7a54
	call L_7A6F		;7a56   ; los tercios de sus bits 2, 1 y 0
	ld bc,00003h		;7a59
	add ix,bc		;7a5c
	jp L_7A50		;7a5e
L_7A61:
	ld hl,0e565h		;7a61   ; la fila siguiente; a las 8, acabado
	ld a,(hl)			;7a64
	inc a			;7a65
	ld (hl),a			;7a66
	cp 008h		;7a67
	ret nz			;7a69
L_7A6A:
	xor a			;7a6a
	ld (0e564h),a		;7a6b   ; guarda el llenado fila a fila en marcha
	ret			;7a6e
L_7A6F:
	ld de,00000h		;7a6f   ; los tercios de sus bits 2, 1 y 0
	bit 2,(ix+000h)		;7a72   ; el tercio de arriba (bit 2)...
	call nz,L_7A8E		;7a76
	ld de,00800h		;7a79   ; ...el de enmedio (bit 1)...
	bit 1,(ix+000h)		;7a7c
	call nz,L_7A8E		;7a80
	ld de,01000h		;7a83   ; ...y el de abajo (bit 0)
	bit 0,(ix+000h)		;7a86
	call nz,L_7A8E		;7a8a
	ret			;7a8d
L_7A8E:
	ld l,(ix+001h)		;7a8e   ; el caracter x 8 del tercio + la fila 0xE565...
	ld h,000h		;7a91   ; el caracter x 8 del tercio...
	add hl,hl			;7a93
	add hl,hl			;7a94
	add hl,hl			;7a95
	add hl,de			;7a96
	ld a,(0e565h)		;7a97   ; ...+ la fila
	call 04089h		;7a9a   ; suma_a_hl: HL = HL + A
	ld b,(ix+002h)		;7a9d   ; ...IX+2 caracteres con el byte 0xE568
	ld de,00008h		;7aa0
	ld a,(0e568h)		;7aa3   ; con el byte de 0xE568
L_7AA6:
	call 0004dh		;7aa6   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;7aa9
	djnz L_7AA6		;7aaa
	ret			;7aac
llenado2_empieza:		; otro llenado fila a fila (0xE569) de la lista HL con C
	ld a,c			;7aad   ; otro llenado (lista 0xE56B, byte 0xE56D, en marcha 0xE569)
	ld (0e56dh),a		;7aae   ; el byte y la lista...
	ld (0e56bh),hl		;7ab1
	ld hl,00001h		;7ab4   ; ...en marcha
	ld (0e569h),hl		;7ab7
	ret			;7aba
llenado3_empieza:		; otro llenado fila a fila (0xE56E) de la lista HL con C
	ld a,c			;7abb   ; y otro mas (lista 0xE570, byte 0xE572, en marcha 0xE56E)
	ld (0e572h),a		;7abc   ; el byte y la lista...
	ld (0e570h),hl		;7abf
	ld hl,00001h		;7ac2   ; ...en marcha
	ld (0e56eh),hl		;7ac5
	ret			;7ac8
llenado2_cuadro:		; el llenado de 0xE569, cada 4 cuadros
	exx			;7ac9   ; el llenado de 0xE569, cada 4 cuadros (p26:7AED)
	ld hl,0e56ah		;7aca   ; sus variables: la fila, en marcha y el byte
	ld de,0e569h		;7acd
	ld bc,0e56dh		;7ad0
	exx			;7ad3
	ld hl,(0e56bh)		;7ad4   ; y su lista
	call L_7AED		;7ad7   ; cada 4 cuadros, una fila mas de todos los trozos de HL; a las 8, acaba
	ret			;7ada
llenado3_cuadro:		; el llenado de 0xE56E, cada 4 cuadros
	exx			;7adb   ; el de 0xE56E
	ld hl,0e56fh		;7adc   ; sus variables: la fila, en marcha y el byte
	ld de,0e56eh		;7adf
	ld bc,0e572h		;7ae2
	exx			;7ae5
	ld hl,(0e570h)		;7ae6   ; y su lista
	call L_7AED		;7ae9   ; cada 4 cuadros, una fila mas de todos los trozos de HL; a las 8, acaba
	ret			;7aec
L_7AED:
	ld a,(0e303h)		;7aed   ; cada 4 cuadros, una fila mas de todos los trozos de HL; a las 8, acaba
	and 003h		;7af0   ; cada 4 cuadros
	ret nz			;7af2
	push hl			;7af3
	pop ix		;7af4
L_7AF6:
	ld a,(ix+000h)		;7af6   ; cada trozo hasta el 0
	or a			;7af9
	jr z,L_7B07		;7afa
	call L_7B14		;7afc   ; los tercios de sus bits 2, 1 y 0
	ld bc,00003h		;7aff
	add ix,bc		;7b02
	jp L_7AF6		;7b04
L_7B07:
	exx			;7b07   ; a la fila siguiente; a las 8, acaba
	ld a,(hl)			;7b08   ; la fila siguiente; a las 8, acabado
	inc a			;7b09
	ld (hl),a			;7b0a
	exx			;7b0b
	cp 008h		;7b0c
	ret nz			;7b0e
	exx			;7b0f
	xor a			;7b10
	ld (de),a			;7b11
	exx			;7b12
	ret			;7b13
L_7B14:
	ld de,00000h		;7b14   ; los tercios de sus bits 2, 1 y 0
	bit 2,(ix+000h)		;7b17   ; el tercio de arriba (bit 2)...
	call nz,L_7B33		;7b1b
	ld de,00800h		;7b1e   ; ...el de enmedio (bit 1)...
	bit 1,(ix+000h)		;7b21
	call nz,L_7B33		;7b25
	ld de,01000h		;7b28   ; ...y el de abajo (bit 0)
	bit 0,(ix+000h)		;7b2b
	call nz,L_7B33		;7b2f
	ret			;7b32
L_7B33:
	ld l,(ix+001h)		;7b33   ; el caracter x 8 del tercio + la fila...
	ld h,000h		;7b36   ; el caracter x 8 del tercio...
	add hl,hl			;7b38
	add hl,hl			;7b39
	add hl,hl			;7b3a
	add hl,de			;7b3b
	exx			;7b3c   ; ...+ la fila...
	ld a,(hl)			;7b3d
	exx			;7b3e
	call 04089h		;7b3f   ; suma_a_hl: HL = HL + A
	ld b,(ix+002h)		;7b42   ; ...IX+2 caracteres, de 8 en 8, con el byte de la lista
	ld de,00008h		;7b45
	exx			;7b48   ; ...con el byte del llenado
	ld a,(bc)			;7b49
	exx			;7b4a
L_7B4B:
	call 0004dh		;7b4b   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;7b4e
	djnz L_7B4B		;7b4f
	ret			;7b51
vuelve_empieza:		; guarda y borra los trozos de IX para que vuelvan fila a fila
	push hl			;7b52   ; los trozos de IX: sus graficos (p00:4CB1 y 4D1B) se guardan en 0xC700 y se borran de la VRAM; 0xE580 = 1
	pop ix		;7b53
	ld hl,0c700h		;7b55   ; lo guardado va a 0xC700
	ld (0e582h),hl		;7b58
	ld hl,0e584h		;7b5b   ; y la lista de trozos a 0xE584 (IY)
	push hl			;7b5e
	pop iy		;7b5f
L_7B61:
	call L_7B7A		;7b61   ; cada trozo, 5 bytes en IY
	ld bc,00005h		;7b64   ; el siguiente, hasta el 0
	add iy,bc		;7b67
	ld a,(ix+000h)		;7b69
	or a			;7b6c
	jr nz,L_7B61		;7b6d
	ld (iy+000h),000h		;7b6f   ; la lista cerrada con un 0
	ld hl,00001h		;7b73   ; y en marcha
	ld (0e580h),hl		;7b76   ; guarda los graficos que vuelven fila a fila, en marcha y el byte siguiente (16 bits)
	ret			;7b79
L_7B7A:
	ld a,(ix+000h)		;7b7a   ; un trozo: 5 bytes en IY (tercios, caracter, cuantos y donde se guardo)
	ld (iy+000h),a		;7b7d   ; sus tercios, su caracter y cuantos...
	ld a,(ix+001h)		;7b80
	ld (iy+001h),a		;7b83
	ld a,(ix+002h)		;7b86
	ld (iy+002h),a		;7b89
	ld hl,(0e582h)		;7b8c   ; donde se guarda (0xE582)
	ld (iy+003h),l		;7b8f   ; ...y donde se guarda
	ld (iy+004h),h		;7b92
	ld bc,00003h		;7b95   ; sus graficos: la lista (p00:4CB1) y las copias (p00:4D1B) que van detras
	add ix,bc		;7b98
	call 04cb1h		;7b9a   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	inc ix		;7b9d
	call 04d1bh		;7b9f   ; copia_con_vuelta: copia caracteres de la VRAM dandoles la vuelta (lista IX)
	inc ix		;7ba2
	ld l,(iy+002h)		;7ba4   ; cuantos x 8 bytes (0xEF80)...
	ld h,000h		;7ba7   ; cuantos x 8 (BC)
	add hl,hl			;7ba9
	add hl,hl			;7baa
	add hl,hl			;7bab
	ld (0ef80h),hl		;7bac
	ld b,h			;7baf
	ld c,l			;7bb0
	ld l,(iy+001h)		;7bb1   ; ...desde el caracter x 8 (0xEF82)
	ld h,000h		;7bb4   ; el caracter x 8
	add hl,hl			;7bb6
	add hl,hl			;7bb7
	add hl,hl			;7bb8
	ld (0ef82h),hl		;7bb9
	ld a,(iy+000h)		;7bbc   ; en el tercio de abajo (bit 0, 0x1000), el de enmedio (bit 1, 0x800) o el de arriba
	ld de,01000h		;7bbf
	rra			;7bc2
	jr c,L_7BCE		;7bc3
	ld de,00800h		;7bc5
	rra			;7bc8
	jr c,L_7BCE		;7bc9
	ld de,00000h		;7bcb
L_7BCE:
	add hl,de			;7bce
	ld de,(0e582h)		;7bcf   ; se guardan en 0xE582 y avanza
	push de			;7bd3   ; el sitio siguiente de 0xC700
	ex de,hl			;7bd4
	add hl,bc			;7bd5
	ld (0e582h),hl		;7bd6
	ex de,hl			;7bd9
	pop de			;7bda
	call 00059h		;7bdb   ; BIOS LDIRMV - Block transfers to memory from VRAM | de la VRAM a la RAM (LDIRMV)
	ld de,00000h		;7bde   ; y se borran en cada tercio (p26:7BFD)
	bit 2,(iy+000h)		;7be1   ; a 0 en sus tercios
	call nz,L_7BFD		;7be5   ; los bytes del trozo en la VRAM a 0
	ld de,00800h		;7be8
	bit 1,(iy+000h)		;7beb
	call nz,L_7BFD		;7bef   ; los bytes del trozo en la VRAM a 0
	ld de,01000h		;7bf2
	bit 0,(iy+000h)		;7bf5
	call nz,L_7BFD		;7bf9   ; los bytes del trozo en la VRAM a 0
	ret			;7bfc
L_7BFD:
	ld hl,(0ef82h)		;7bfd   ; los bytes del trozo en la VRAM a 0
	add hl,de			;7c00   ; desde el caracter...
	ld bc,(0ef80h)		;7c01   ; ...cuantos x 8 bytes a 0
	xor a			;7c05
	call 00056h		;7c06   ; BIOS FILVRM - Fills VRAM with value
	ret			;7c09
vuelve_cuadro:		; lo guardado vuelve fila a fila, cada 4 cuadros
	ld a,(0e303h)		;7c0a   ; cada 4 cuadros vuelve una fila de cada trozo guardado; a las 8, acaba (0xE580 = 0)
	and 003h		;7c0d   ; cada 4 cuadros
	ret nz			;7c0f
	ld hl,0e584h		;7c10   ; la lista de 0xE584
	push hl			;7c13
	pop ix		;7c14
L_7C16:
	ld a,(ix+000h)		;7c16   ; cada trozo hasta el 0
	or a			;7c19
	jr z,L_7C27		;7c1a
	call L_7C35		;7c1c   ; los tercios de sus bits 2, 1 y 0
	ld bc,00005h		;7c1f
	add ix,bc		;7c22
	jp L_7C16		;7c24
L_7C27:
	ld hl,0e581h		;7c27   ; la fila siguiente; a las 8, acabado
	ld a,(hl)			;7c2a
	inc a			;7c2b
	ld (hl),a			;7c2c
	cp 008h		;7c2d
	ret nz			;7c2f
	xor a			;7c30
	ld (0e580h),a		;7c31   ; guarda los graficos que vuelven fila a fila, en marcha
	ret			;7c34
L_7C35:
	ld de,00000h		;7c35   ; los tercios de sus bits 2, 1 y 0
	bit 2,(ix+000h)		;7c38   ; el tercio de arriba (bit 2)...
	call nz,L_7C54		;7c3c
	ld de,00800h		;7c3f   ; ...el de enmedio...
	bit 1,(ix+000h)		;7c42
	call nz,L_7C54		;7c46
	ld de,01000h		;7c49   ; ...y el de abajo
	bit 0,(ix+000h)		;7c4c
	call nz,L_7C54		;7c50
	ret			;7c53
L_7C54:
	ld l,(ix+001h)		;7c54   ; ...la fila 0xE581 de cada caracter, de lo guardado (IX+3/4) a la VRAM
	ld h,000h		;7c57   ; el caracter x 8 del tercio + la fila...
	add hl,hl			;7c59
	add hl,hl			;7c5a
	add hl,hl			;7c5b
	add hl,de			;7c5c
	ld a,(0e581h)		;7c5d
	call 04089h		;7c60   ; suma_a_hl: HL = HL + A
	exx			;7c63
	ld l,(ix+003h)		;7c64   ; ...y lo guardado + la fila
	ld h,(ix+004h)		;7c67
	ld a,(0e581h)		;7c6a
	call 04089h		;7c6d   ; suma_a_hl: HL = HL + A
	ld de,00008h		;7c70
	exx			;7c73
	ld b,(ix+002h)		;7c74   ; IX+2 caracteres, de 8 en 8
	ld de,00008h		;7c77
L_7C7A:
	exx			;7c7a
	ld a,(hl)			;7c7b
	add hl,de			;7c7c
	exx			;7c7d
	call 0004dh		;7c7e   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;7c81
	djnz L_7C7A		;7c82
	ret			;7c84
sprites_aparecen:		; empieza la aparicion fila a fila de los sprites de HL
	inc hl			;7c85   ; los sprites que aparecen fila a fila: la lista HL + 2 (0xE579), con su destino delante; 0xE577 = 1
	inc hl			;7c86
	ld (0e579h),hl		;7c87   ; la lista en 0xE579...
	push hl			;7c8a
	pop ix		;7c8b
	ld hl,00001h		;7c8d   ; ...en marcha
	ld (0e577h),hl		;7c90
	ld e,(ix-002h)		;7c93   ; el destino en la RAM esta delante de la lista
	ld d,(ix-001h)		;7c96
L_7C99:
	ld a,(ix+000h)		;7c99   ; por cada uno (4 bytes): sus dibujos de sprite a cero y su RLE a la RAM; 0xFF acaba
	cp 0ffh		;7c9c   ; 0xFF: acabada
	ret z			;7c9e
	push de			;7c9f
	ld l,(ix+001h)		;7ca0   ; cuantos x 8...
	ld h,000h		;7ca3
	add hl,hl			;7ca5
	add hl,hl			;7ca6
	add hl,hl			;7ca7
	ld c,l			;7ca8
	ld b,h			;7ca9
	ld l,(ix+000h)		;7caa   ; ...desde el dibujo x 8 + 0x1800, a 0
	ld h,000h		;7cad
	add hl,hl			;7caf
	add hl,hl			;7cb0
	add hl,hl			;7cb1
	ld de,01800h		;7cb2
	add hl,de			;7cb5
	xor a			;7cb6
	call 00056h		;7cb7   ; BIOS FILVRM - Fills VRAM with value
	pop de			;7cba
	ld l,(ix+002h)		;7cbb   ; el RLE de este, a la RAM
	ld h,(ix+003h)		;7cbe
	call 055adh		;7cc1   ; rle_a_ram: descomprime a la RAM de DE el RLE de HL
	ld bc,00004h		;7cc4   ; el siguiente (4 bytes)
	add ix,bc		;7cc7
	jp L_7C99		;7cc9
sprites_aparecen_cuadro:		; la aparicion de sprites, cada 4 cuadros
	ld a,(0e303h)		;7ccc   ; cada 4 cuadros
	and 003h		;7ccf   ; cada 4 cuadros
	ret nz			;7cd1
	ld hl,(0e579h)		;7cd2   ; la lista (0xE579): el destino de la RAM esta delante
	push hl			;7cd5
	pop ix		;7cd6
	exx			;7cd8
	ld l,(ix-002h)		;7cd9   ; desde el destino de la RAM
	ld h,(ix-001h)		;7cdc
	ld (0ef80h),hl		;7cdf
	ld de,00008h		;7ce2
	exx			;7ce5
L_7CE6:
	ld a,(ix+000h)		;7ce6   ; por cada sprite (0xFF acaba)...
	cp 0ffh		;7ce9   ; 0xFF: fin de la lista
	jr z,L_7D0A		;7ceb
	call L_7D18		;7ced   ; un sprite: la fila 0xE578 de cada uno de sus IX+1 dibujos
	exx			;7cf0   ; ...su destino avanza cuantos x 8 bytes
	ld l,(ix+001h)		;7cf1   ; lo guardado avanza cuantos x 8
	ld h,000h		;7cf4
	add hl,hl			;7cf6
	add hl,hl			;7cf7
	add hl,hl			;7cf8
	ld de,(0ef80h)		;7cf9
	add hl,de			;7cfd
	ld (0ef80h),hl		;7cfe
	exx			;7d01
	ld bc,00004h		;7d02
	add ix,bc		;7d05
	jp L_7CE6		;7d07
L_7D0A:
	ld hl,0e578h		;7d0a   ; una fila mas; a las 8, acabado
	ld a,(hl)			;7d0d   ; la fila siguiente; a las 8, acabado
	inc a			;7d0e
	ld (hl),a			;7d0f
	cp 008h		;7d10
	ret nz			;7d12
	xor a			;7d13
	ld (0e577h),a		;7d14
	ret			;7d17
L_7D18:
	exx			;7d18   ; un sprite: la fila 0xE578 de cada uno de sus IX+1 dibujos
	ld hl,(0ef80h)		;7d19   ; lo guardado + la fila
	ld a,(0e578h)		;7d1c
	call 04089h		;7d1f   ; suma_a_hl: HL = HL + A
	exx			;7d22
	ld l,(ix+000h)		;7d23   ; el dibujo x 8 + 0x1800 + la fila
	ld h,000h		;7d26
	add hl,hl			;7d28
	add hl,hl			;7d29
	add hl,hl			;7d2a
	ld bc,01800h		;7d2b
	add hl,bc			;7d2e
	ld a,(0e578h)		;7d2f
	call 04089h		;7d32   ; suma_a_hl: HL = HL + A
	ld b,(ix+001h)		;7d35   ; IX+1 dibujos, de 8 en 8
	ld de,00008h		;7d38
L_7D3B:
	exx			;7d3b
	ld a,(hl)			;7d3c
	add hl,de			;7d3d
	exx			;7d3e
	call 0004dh		;7d3f   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;7d42
	djnz L_7D3B		;7d43
	ret			;7d45
L_7D46:
	ld bc,(0e7e4h)		;7d46   ; el ordenador de a bordo (0xE31E de 8 a 0x0A): por el paso (0xE7E4)
	ld a,c			;7d4a   ; por el paso
	call 04093h		;7d4b   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_7D4E: 4 destinos del despachador p00:4093 (call en p26:7D4B, el
;   indice en A): 6CCB, 6D14, 7D56, 6DB7; lo leen p26:7D4B (8 bytes)
;   0x7d4e..0x7d56  (8 bytes)
DATA_tabla_7D4E:
	defw 06ccbh,06d14h,07d56h,06db7h	; 7d4e  -> L_6CCB L_6D14 L_7D56 L_6DB7

; ======================================================================
; CODIGO 0x7d56..0x7d6e  (24 bytes)
; ======================================================================


L_7D56:
	push bc			;7d56   ; paso 2: los sprites a la VRAM, la pantalla, el ordenador de a bordo cada cuadro (p26:7320) y, desde el subpaso 2, p26:7E6B
	call 05de9h		;7d57   ; los sprites y la pantalla a la VRAM
	call 05985h		;7d5a   ; bufer_a_vram: el bufer de 0xCA00 a la tabla de nombres, la pantalla entera
	pop af			;7d5d
	or a			;7d5e   ; desde el subpaso 1, el ordenador de a bordo cada cuadro
	push af			;7d5f
	call nz,ordenador_cuadro		;7d60
	pop af			;7d63
	push af			;7d64
	cp 002h		;7d65   ; desde el 2, los colores de las marcas
	call nc,L_7E6B		;7d67   ; cada 8 cuadros otro de cuatro colores (tabla de 0x7EB9) en los caracteres 0xEC, 0xED y 0xEE (0x0760-0x0777 y 0x0F60-0x0F77)
	pop af			;7d6a   ; y por el subpaso
	call 04093h		;7d6b   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_7D6E: 7 destinos del despachador p00:4093 (call en p26:7D6B, el
;   indice en A): 7D7C, 7D94, 7DB7, 7DCE, 7DD8, 7DE0, 7DE8; lo leen p26:7D6B
;   (14 bytes)
;   0x7d6e..0x7d7c  (14 bytes)
DATA_tabla_7D6E:
	defw 07d7ch,07d94h,07db7h,07dceh,07dd8h,07de0h,07de8h	; 7d6e

; ======================================================================
; CODIGO 0x7d7c..0x7db1  (53 bytes)
; ======================================================================


L_7D7C:
	call 0580eh		;7d7c   ; subpaso 0: el sonido 0x3F, la paleta, el ordenador de a bordo (p26:60DF) con el contador de 0x6108, y 0x78 cuadros
	call estado9_subpaso_siguiente		;7d7f   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	call 05718h		;7d82   ; la paleta
	call ordenador		;7d85   ; el ordenador de a bordo
	ld hl,06108h		;7d88   ; con el contador de 0x6108
	call contador_de_hl		;7d8b   ; contador_de_hl: las 6 cifras del contador del ordenador de a bordo, de HL
	ld a,078h		;7d8e   ; 0x78 cuadros
	ld (0e5c0h),a		;7d90
	ret			;7d93
L_7D94:
	ld hl,0e5c0h		;7d94   ; subpaso 1: al acabar, los graficos de p29 (p26:7DFD), las marcas (p26:7E2A) y la secuencia de dibujos del tipo (0x7DB1)
	dec (hl)			;7d97   ; la espera
	ret nz			;7d98
	call L_7DFD		;7d99   ; los graficos de p29
	call L_7E2A		;7d9c   ; las marcas
	ld a,(0e31eh)		;7d9f   ; lee el tipo de la entrada secreta cogida (al estado 9)
	sub 008h		;7da2   ; la secuencia del tipo (8, 9 o 0x0A) en la tabla de 0x7DB1
	ld hl,07db1h		;7da4
	call 04a5ah		;7da7   ; lee_palabra: HL = la palabra A de la tabla HL
	call secuencia_de_hl		;7daa   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call estado9_subpaso_siguiente		;7dad   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;7db0

; ----------------------------------------------------------------------
; DATOS tabla_7DB1: tabla que se lee desde HL = 0x7DB1 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:7DA4 (6 bytes)
;   0x7db1..0x7db7  (6 bytes)
DATA_tabla_7DB1:
	defb 0c9h,061h,0ceh,061h,0d3h,061h	; 7db1

; ======================================================================
; CODIGO 0x7db7..0x7e23  (108 bytes)
; ======================================================================


L_7DB7:
	call secuencia_sigue		;7db7   ; subpaso 2: hasta acabar la secuencia; con una sola marca de las tres (0xE393-0xE395), al subpaso 3; si no, al 5
	ret nz			;7dba   ; hasta acabarla
	ld hl,0e393h		;7dbb   ; apunta a 1 si se cogio la entrada secreta 8
	ld a,(hl)			;7dbe   ; cuantas marcas (0xE393 + 0xE394 + 0xE395)
	inc hl			;7dbf
	add a,(hl)			;7dc0
	inc hl			;7dc1
	add a,(hl)			;7dc2
	dec a			;7dc3   ; una: al subpaso 3; si no, al 5
	ld a,003h		;7dc4
	jr z,L_7DCA		;7dc6
	ld a,005h		;7dc8
L_7DCA:
	ld (0e7e5h),a		;7dca   ; guarda el subpaso del estado 9
	ret			;7dcd
L_7DCE:
	ld hl,061d8h		;7dce   ; subpaso 3: la secuencia de 0x61D8
	call secuencia_de_hl		;7dd1   ; la secuencia de 0x61D8
	call estado9_subpaso_siguiente		;7dd4   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;7dd7
L_7DD8:
	call secuencia_sigue		;7dd8   ; subpaso 4: hasta acabarla
	ret nz			;7ddb   ; hasta acabarla
	call estado9_subpaso_siguiente		;7ddc   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;7ddf
L_7DE0:
	xor a			;7de0   ; subpaso 5: sin espera
	ld (0e5c0h),a		;7de1   ; sin espera
	call estado9_subpaso_siguiente		;7de4   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;7de7
L_7DE8:
	ld hl,0e5c0h		;7de8   ; subpaso 6: los sprites fuera, la fila de 0x3AC0 a cero, la pantalla de la fase y al paso siguiente
	dec (hl)			;7deb   ; la espera
	ret nz			;7dec
estado9_vuelta:		; los sprites fuera, la pantalla de la fase y al paso siguiente
	call 05648h		;7ded   ; los sprites fuera
	call 05de9h		;7df0   ; los sprites a la VRAM
	call L_60D4		;7df3   ; la fila de 0x3AC0 a cero
	call 05959h		;7df6   ; el bufer a cero
	call estado9_paso_siguiente		;7df9   ; y al paso siguiente
	ret			;7dfc
L_7DFD:
	call 041e4h		;7dfd   ; con el 29, los RLE de p29:A000, A0FC, A105 y A1AA a la VRAM y la lista de graficos de 0x7E23
	ld de,0a000h		;7e00   ; el RLE de p29:A000...
	call 04b36h		;7e03   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld de,0a0fch		;7e06   ; ...el de A0FC...
	call 04b36h		;7e09   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld de,0a105h		;7e0c   ; ...el de A105...
	call 04b36h		;7e0f   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld de,0a1aah		;7e12   ; ...y el de A1AA
	call 04b36h		;7e15   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld ix,07e23h		;7e18   ; la lista de graficos de 0x7E23
	call 04cb1h		;7e1c   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	call 041bfh		;7e1f   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;7e22

; ----------------------------------------------------------------------
; DATOS graficos_7E23: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p26:7E1C (7 bytes)
;   0x7e23..0x7e2a  (7 bytes)
DATA_graficos_7E23:
	defb 006h,0b1h,0a1h,0ech,0d3h,0a1h	; 7e23
	defb 000h	; 7e29

; ======================================================================
; CODIGO 0x7e2a..0x7eb9  (143 bytes)
; ======================================================================


L_7E2A:
	ld a,(0e393h)		;7e2a   ; las tres marcas: 0xE393 (0xEC en 0xCAC9), 0xE394 (0xED en 0xCACE) y 0xE395 (0xEE en 0xCAD3)
	or a			;7e2d   ; la 8: en 0xCAC9
	call nz,L_7E40		;7e2e   ; el caracter 0xEC
	ld a,(0e394h)		;7e31   ; lee 1 si se cogio la entrada secreta 9
	or a			;7e34   ; la 9: en 0xCACE
	call nz,L_7E49		;7e35   ; el caracter 0xED
	ld a,(0e395h)		;7e38   ; lee 1 si se cogio la entrada secreta 0x0A
	or a			;7e3b   ; la 0x0A: en 0xCAD3
	call nz,L_7E52		;7e3c   ; el caracter 0xEE
	ret			;7e3f
L_7E40:
	ld hl,0cac9h		;7e40   ; el caracter 0xEC
	ld a,0ech		;7e43
	call L_7E5B		;7e45   ; un cuadro de 4 x 4 del caracter A en el bufer de HL
	ret			;7e48
L_7E49:
	ld hl,0caceh		;7e49   ; el caracter 0xED
	ld a,0edh		;7e4c
	call L_7E5B		;7e4e   ; un cuadro de 4 x 4 del caracter A en el bufer de HL
	ret			;7e51
L_7E52:
	ld hl,0cad3h		;7e52   ; el caracter 0xEE
	ld a,0eeh		;7e55
	call L_7E5B		;7e57   ; un cuadro de 4 x 4 del caracter A en el bufer de HL
	ret			;7e5a
L_7E5B:
	ld b,004h		;7e5b   ; un cuadro de 4 x 4 del caracter A en el bufer de HL
	ld de,0001dh		;7e5d   ; cuatro filas
L_7E60:
	ld (hl),a			;7e60   ; cuatro bytes del caracter A...
	inc hl			;7e61
	ld (hl),a			;7e62
	inc hl			;7e63
	ld (hl),a			;7e64
	inc hl			;7e65
	ld (hl),a			;7e66
	add hl,de			;7e67   ; ...y la fila siguiente (0x20), cuatro veces
	djnz L_7E60		;7e68
	ret			;7e6a
L_7E6B:
	ld a,(0e303h)		;7e6b   ; cada 8 cuadros otro de cuatro colores (tabla de 0x7EB9) en los caracteres 0xEC, 0xED y 0xEE (0x0760-0x0777 y 0x0F60-0x0F77)
	rra			;7e6e   ; el cuadro / 8, de 0 a 3
	rra			;7e6f
	rra			;7e70
	and 003h		;7e71
	ld b,a			;7e73
	add a,a			;7e74
	add a,b			;7e75
	ld hl,07eb9h		;7e76   ; su entrada de 3 colores en la tabla de 0x7EB9
	call 04089h		;7e79   ; suma_a_hl: HL = HL + A
	ex de,hl			;7e7c
	ld a,(de)			;7e7d   ; el primero: el 0xEC en los dos tercios (0x0760 y 0x0F60)
	ld hl,00760h		;7e7e
	ld bc,00008h		;7e81
	call 00056h		;7e84   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00f60h		;7e87
	ld bc,00008h		;7e8a
	call 00056h		;7e8d   ; BIOS FILVRM - Fills VRAM with value
	inc de			;7e90   ; el segundo: el 0xED (0x0768 y 0x0F68)
	ld a,(de)			;7e91
	ld hl,00768h		;7e92
	ld bc,00008h		;7e95
	call 00056h		;7e98   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00f68h		;7e9b
	ld bc,00008h		;7e9e
	call 00056h		;7ea1   ; BIOS FILVRM - Fills VRAM with value
	inc de			;7ea4   ; el tercero: el 0xEE (0x0770 y 0x0F70)
	ld a,(de)			;7ea5
	ld hl,00770h		;7ea6
	ld bc,00008h		;7ea9
	call 00056h		;7eac   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00f70h		;7eaf
	ld bc,00008h		;7eb2
	call 00056h		;7eb5   ; BIOS FILVRM - Fills VRAM with value
	ret			;7eb8

; ----------------------------------------------------------------------
; DATOS tabla_7EB9: tabla que se lee desde HL = 0x7EB9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p26:7E76 (1 bytes)
;   0x7eb9..0x7eba  (1 bytes)
DATA_tabla_7EB9:
	defb 060h	; 7eb9

; ----------------------------------------------------------------------
; DATOS leido_7EBA: 11 bytes que leen p26:7E91, p26:7EA5, p26:7E7D al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:7E91, p26:7EA5, p26:7E7D
;   (11 bytes)
;   0x7eba..0x7ec5  (11 bytes)
DATA_leido_7EBA:
	defb 040h,0c0h,080h,070h,020h,090h,050h,030h,080h,070h,020h	; 7eba  @..p .P0.p

; ======================================================================
; CODIGO 0x7ec5..0x7edb  (22 bytes)
; ======================================================================


L_7EC5:
	ld a,(0e327h)		;7ec5   ; el estado 8, paso 2 (el ordenador de a bordo entre fases): desde el subpaso 3, el ordenador de a bordo cada cuadro; por el subpaso (0xE327)
	cp 003h		;7ec8   ; desde el subpaso 3...
	jr c,L_7ED7		;7eca
	push af			;7ecc
	call 05de9h		;7ecd   ; ...los sprites y la pantalla a la VRAM y el ordenador de a bordo
	call 05985h		;7ed0   ; bufer_a_vram: el bufer de 0xCA00 a la tabla de nombres, la pantalla entera
	call ordenador_cuadro		;7ed3
	pop af			;7ed6
L_7ED7:
	dec a			;7ed7   ; y por el subpaso (desde 1)
	call 04093h		;7ed8   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_7EDB: 11 destinos del despachador p00:4093 (call en p26:7ED8, el
;   indice en A): 7EF1, 7EFE, 7F17, 7F39, 7F63, 7F6E, 7F7A, 7F93, 7FA3, 7FB8,
;   7FC8; lo leen p26:7ED8 (22 bytes)
;   0x7edb..0x7ef1  (22 bytes)
DATA_tabla_7EDB:
	defw 07ef1h,07efeh,07f17h,07f39h,07f63h,07f6eh,07f7ah,07f93h	; 7edb
	defw 07fa3h,07fb8h,07fc8h	; 7eeb  -> L_7FA3 L_7FB8 L_7FC8

; ======================================================================
; CODIGO 0x7ef1..0x8000  (271 bytes)
; ======================================================================


L_7EF1:
	call 0594dh		;7ef1   ; subpaso 1: la orden 0x83, el sonido 1, la pantalla limpia y al siguiente
	call 057eah		;7ef4   ; sonido_01: pide el sonido 0x01
	call pantalla_limpia		;7ef7   ; la pantalla limpia
	call estado8_subpaso_siguiente		;7efa   ; estado8_subpaso_siguiente: el subpaso siguiente del estado 8 (0xE327)
	ret			;7efd
L_7EFE:
	call 0580eh		;7efe   ; subpaso 2: el sonido 0x3F, la pantalla en blanco, el ordenador de a bordo con el contador de 0x6108 y los graficos de p29
	call 04aa9h		;7f01   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call L_6033		;7f04   ; los dibujos de sprite a cero
	call ordenador		;7f07   ; el ordenador de a bordo
	ld hl,06108h		;7f0a   ; con el contador de 0x6108
	call contador_de_hl		;7f0d   ; contador_de_hl: las 6 cifras del contador del ordenador de a bordo, de HL
	call L_7DFD		;7f10   ; y los graficos de p29
	call estado8_subpaso_siguiente		;7f13   ; estado8_subpaso_siguiente: el subpaso siguiente del estado 8 (0xE327)
	ret			;7f16
L_7F17:
	ld hl,0e393h		;7f17   ; subpaso 3: con menos de tres marcas, la secuencia de 0x61F3 y al subpaso 8; con las tres, la de 0x61E5
	ld a,(hl)			;7f1a   ; cuantas marcas
	inc hl			;7f1b
	add a,(hl)			;7f1c
	inc hl			;7f1d
	add a,(hl)			;7f1e
	cp 003h		;7f1f   ; con las tres marcas, p26:7F2F
	jr nc,L_7F2F		;7f21
	ld a,008h		;7f23   ; menos de tres: al subpaso 8 con la secuencia de 0x61F3
	call L_7FED		;7f25   ; el subpaso A
	ld hl,061f3h		;7f28
	call secuencia_de_hl		;7f2b   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	ret			;7f2e
L_7F2F:
	ld hl,061e5h		;7f2f   ; las tres: la secuencia de 0x61E5
	call secuencia_de_hl		;7f32   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call estado8_subpaso_siguiente		;7f35   ; estado8_subpaso_siguiente: el subpaso siguiente del estado 8 (0xE327)
	ret			;7f38
L_7F39:
	call secuencia_sigue		;7f39   ; subpaso 4: al acabar, el dibujo de p28:A078 (7 x 0x0E en 0xCA89), sprites (p26:7FF1) y la secuencia de 0x61EA
	ret nz			;7f3c   ; al acabar la secuencia
	call L_7F4D		;7f3d   ; el dibujo de p28:A078
	call L_7FF1		;7f40   ; doce bytes de sprites
	ld hl,061eah		;7f43   ; y la secuencia de 0x61EA
	call secuencia_de_hl		;7f46   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call estado8_subpaso_siguiente		;7f49   ; estado8_subpaso_siguiente: el subpaso siguiente del estado 8 (0xE327)
	ret			;7f4c
L_7F4D:
	ld hl,0a078h		;7f4d   ; el dibujo de p28:A078 (segundo formato) en 0xCA89, 7 filas de 0x0E
	ld de,0cd00h		;7f50   ; a 0xCD00...
	call 055cdh		;7f53   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	ld hl,0cd00h		;7f56   ; ...y al bufer
	ld de,0ca89h		;7f59
	ld bc,0070eh		;7f5c
	call 059a1h		;7f5f   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;7f62
L_7F63:
	call L_7FFD		;7f63   ; subpaso 5: p26:7FFD hasta acabar la secuencia
	call secuencia_sigue		;7f66   ; hasta acabar la secuencia
	ret nz			;7f69
	call estado8_subpaso_siguiente		;7f6a   ; estado8_subpaso_siguiente: el subpaso siguiente del estado 8 (0xE327)
	ret			;7f6d
L_7F6E:
	call 05951h		;7f6e   ; subpaso 6: la orden 0x84 y 0x96 cuadros
	ld a,096h		;7f71   ; 0x96 cuadros
	ld (0e5c0h),a		;7f73
	call estado8_subpaso_siguiente		;7f76   ; estado8_subpaso_siguiente: el subpaso siguiente del estado 8 (0xE327)
	ret			;7f79
L_7F7A:
	ld hl,0e5c0h		;7f7a   ; subpaso 7: al acabar, la orden 0x83, la fase siguiente la 0x0A (0xE37D), y a cero 0xE398 y 0xE327
	dec (hl)			;7f7d   ; la espera
	ret nz			;7f7e
	call 0594dh		;7f7f   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	ld a,00ah		;7f82   ; la fase 0x0A
	ld (0e37dh),a		;7f84   ; guarda la fase siguiente (0: la de despues)
	xor a			;7f87
	ld (0e398h),a		;7f88   ; 0xE398 = 0
L_7F8B:
	xor a			;7f8b   ; 0xE327 = 0 y la pantalla en blanco
	ld (0e327h),a		;7f8c   ; guarda el subpaso del estado 8 (entre fases)
	call 04aa9h		;7f8f   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	ret			;7f92
L_7F93:
	call secuencia_sigue		;7f93   ; subpaso 8: al acabar la secuencia, 0xF0 cuadros y los graficos de p29
	ret nz			;7f96   ; al acabar la secuencia
	ld a,0f0h		;7f97   ; 0xF0 cuadros
	ld (0e5c0h),a		;7f99
	call estado8_subpaso_siguiente		;7f9c   ; estado8_subpaso_siguiente: el subpaso siguiente del estado 8 (0xE327)
	call L_7DFD		;7f9f   ; con el 29, los RLE de p29:A000, A0FC, A105 y A1AA a la VRAM y la lista de graficos de 0x7E23
	ret			;7fa2
L_7FA3:
	call 0801eh		;7fa3   ; subpaso 9: p27:801E; al acabar, el bufer de 0xCA48 a cero y la secuencia de 0x61F8
	ld hl,0e5c0h		;7fa6   ; la espera (p27:801E cada cuadro)
	dec (hl)			;7fa9
	ret nz			;7faa
	call borra_cuadro_ca48		;7fab   ; al acabar, el bufer de 0xCA48 a cero
	ld hl,061f8h		;7fae   ; y la secuencia de 0x61F8
	call secuencia_de_hl		;7fb1   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call estado8_subpaso_siguiente		;7fb4   ; estado8_subpaso_siguiente: el subpaso siguiente del estado 8 (0xE327)
	ret			;7fb7
L_7FB8:
	call secuencia_sigue		;7fb8   ; subpaso 0x0A: al acabarla, la orden 0x84 y 0xB4 cuadros
	ret nz			;7fbb   ; al acabarla
	call 05951h		;7fbc   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	ld a,0b4h		;7fbf   ; 0xB4 cuadros
	ld (0e5c0h),a		;7fc1
	call estado8_subpaso_siguiente		;7fc4   ; estado8_subpaso_siguiente: el subpaso siguiente del estado 8 (0xE327)
	ret			;7fc7
L_7FC8:
	ld hl,0e5c0h		;7fc8   ; subpaso 0x0B: al acabar, la orden 0x83 y la fase siguiente: la 5 sin 0xE393, la 7 sin 0xE394, si no la 8
	dec (hl)			;7fcb   ; la espera
	ret nz			;7fcc
	call 0594dh		;7fcd   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	ld c,005h		;7fd0   ; sin la 8, la fase 5...
	ld a,(0e393h)		;7fd2   ; lee 1 si se cogio la entrada secreta 8
	or a			;7fd5
	jr z,L_7FE2		;7fd6
	ld c,007h		;7fd8   ; ...sin la 9, la 7...
	ld a,(0e394h)		;7fda   ; lee 1 si se cogio la entrada secreta 9
	or a			;7fdd
	jr z,L_7FE2		;7fde
	ld c,008h		;7fe0   ; ...con las dos, la 8
L_7FE2:
	ld a,c			;7fe2   ; en 0xE37D
	ld (0e37dh),a		;7fe3   ; guarda la fase siguiente (0: la de despues)
	jr L_7F8B		;7fe6
estado8_subpaso_siguiente:		; el subpaso siguiente del estado 8 (0xE327)
	ld hl,0e327h		;7fe8   ; el subpaso siguiente (0xE327)
	inc (hl)			;7feb
	ret			;7fec
L_7FED:
	ld (0e327h),a		;7fed   ; el subpaso A
	ret			;7ff0
L_7FF1:
	ld hl,08012h		;7ff1   ; doce bytes de p27:8012 a los sprites 0xEF34
	ld de,0ef34h		;7ff4   ; en 0xEF34
	ld bc,0000ch		;7ff7
	ldir		;7ffa
	ret			;7ffc
L_7FFD:
	ld a,(0e303h)		;7ffd   ; lee la cuenta de cuadros del juego

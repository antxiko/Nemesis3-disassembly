; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 27 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ======================================================================
; CODIGO 0x8000..0x8012  (18 bytes)
; ======================================================================


L_8000:
	bit 2,a		;8000   ; el color de tres sprites (0xEF37, 0xEF3B, 0xEF3F): 0 o 8 segun el bit 2 de A (parpadean)
	ld a,000h		;8002   ; bit 2 a 0: color 0 (no se ven)
	jr z,L_8008		;8004
	ld a,008h		;8006   ; a 1: color 8
L_8008:
	ld (0ef37h),a		;8008   ; a los tres
	ld (0ef3bh),a		;800b
	ld (0ef3fh),a		;800e
	ret			;8011

; ----------------------------------------------------------------------
; DATOS leido_8012: 12 bytes que lee p26:7FFA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7FFA (12 bytes)
;   0x8012..0x801e  (12 bytes)
DATA_leido_8012:
	defb 03fh,050h,0c0h,008h,03eh,08dh,0c0h,008h,036h,0b1h,0c0h,008h	; 8012  ?P..>...6...

; ======================================================================
; CODIGO 0x801e..0x8052  (52 bytes)
; ======================================================================


L_801E:
	ld a,(0e303h)		;801e   ; el cuadro animado del ordenador de a bordo: cada 4 cuadros los caracteres 0xEC-0xEF corridos uno...
	rra			;8021   ; cada 4 cuadros...
	rra			;8022
	and 003h		;8023
	add a,0ech		;8025   ; ...el primero de 0xEC a 0xEF
	ld hl,0ca48h		;8027   ; ...0x0B filas de 0x10 en 0xCA48, cada fila uno mas
	ld bc,00b10h		;802a   ; 0x0B filas de 0x10
	ld de,00010h		;802d
L_8030:
	push bc			;8030
L_8031:
	ld (hl),a			;8031   ; cada caracter, el siguiente (de 0xEC a 0xEF)
	inc hl			;8032
	inc a			;8033   ; el siguiente; despues de 0xEF, 0xEC
	cp 0f0h		;8034
	jr c,L_803A		;8036
	ld a,0ech		;8038
L_803A:
	dec c			;803a   ; la fila
	jr nz,L_8031		;803b
	add hl,de			;803d   ; la fila siguiente
	add a,001h		;803e   ; la siguiente empieza uno mas alla
	cp 0f0h		;8040
	jr c,L_8046		;8042
	ld a,0ech		;8044
L_8046:
	pop bc			;8046
	djnz L_8030		;8047
	ret			;8049
L_804A:
	ld bc,(0e7e4h)		;804a   ; el ordenador de a bordo de las entradas secretas desde la 0x0C: por el paso (0xE7E4); 0, 1 y 3 como las demas
	ld a,c			;804e   ; por el paso
	call 04093h		;804f   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8052: 4 destinos del despachador p00:4093 (call en p27:804F, el
;   indice en A): 6CCB, 6D14, 805A, 6DB7; lo leen p27:804F (8 bytes)
;   0x8052..0x805a  (8 bytes)
DATA_tabla_8052:
	defw 06ccbh,06d14h,0805ah,06db7h	; 8052  -> 0x6ccb 0x6d14 L_805A 0x6db7

; ======================================================================
; CODIGO 0x805a..0x806b  (17 bytes)
; ======================================================================


L_805A:
	push bc			;805a   ; paso 2: los sprites y la pantalla a la VRAM, el ordenador de a bordo cada cuadro y por el subpaso
	call 05de9h		;805b   ; los sprites y la pantalla a la VRAM
	call 05985h		;805e   ; bufer_a_vram: el bufer de 0xCA00 a la tabla de nombres, la pantalla entera
	pop af			;8061
	or a			;8062   ; desde el subpaso 1, el ordenador de a bordo
	push af			;8063
	call nz,07320h		;8064   ; ordenador_cuadro: el ordenador de a bordo, un cuadro
	pop af			;8067   ; y por el subpaso
	call 04093h		;8068   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_806B: 4 destinos del despachador p00:4093 (call en p27:8068, el
;   indice en A): 7D7C, 8073, 80A2, 80AE; lo leen p27:8068 (8 bytes)
;   0x806b..0x8073  (8 bytes)
DATA_tabla_806B:
	defw 07d7ch,08073h,080a2h,080aeh	; 806b  -> 0x7d7c L_8073 L_80A2 L_80AE

; ======================================================================
; CODIGO 0x8073..0x80bf  (76 bytes)
; ======================================================================


L_8073:
	ld hl,0e5c0h		;8073   ; subpaso 1: al acabar la espera, los graficos de p29:BFB8 y BFC5, un rectangulo de 5 x 8 (p29:BFCE en 0xCAAC) y la secuencia de 0x626A
	dec (hl)			;8076   ; la espera
	ret nz			;8077
	call 041e4h		;8078   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0bfb8h		;807b   ; la lista de graficos de p29:BFB8...
	call 04cb1h		;807f   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0bfc5h		;8082   ; ...las copias de p29:BFC5...
	call 04d17h		;8086   ; copia_con_vuelta_ce00: copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)
	ld hl,0bfceh		;8089   ; ...y el dibujo de p29:BFCE, 5 filas de 8 en 0xCAAC
	ld de,0caach		;808c
	ld bc,00508h		;808f
	call 059a1h		;8092   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	call 041bfh		;8095   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ld hl,0626ah		;8098   ; la secuencia de 0x626A
	call 0612ah		;809b   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call 06cc1h		;809e   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;80a1
L_80A2:
	call 06135h		;80a2   ; subpaso 2: hasta acabar la secuencia
	ret nz			;80a5   ; hasta acabarla
	xor a			;80a6   ; sin espera
	ld (0e5c0h),a		;80a7
	call 06cc1h		;80aa   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
	ret			;80ad
L_80AE:
	ld hl,0e5c0h		;80ae   ; subpaso 3: la espera y la vuelta (p26:7DED)
	dec (hl)			;80b1   ; la espera
	ret nz			;80b2
	call 07dedh		;80b3   ; la vuelta
	ret			;80b6
L_80B7:
	ld bc,(0e7e4h)		;80b7   ; el ordenador de a bordo de la entrada secreta 0x0B: por el paso; 0, 1 y 3 como las demas
	ld a,c			;80bb   ; por el paso
	call 04093h		;80bc   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_80BF: 4 destinos del despachador p00:4093 (call en p27:80BC, el
;   indice en A): 6CCB, 6D14, 80C7, 6DB7; lo leen p27:80BC (8 bytes)
;   0x80bf..0x80c7  (8 bytes)
DATA_tabla_80BF:
	defw 06ccbh,06d14h,080c7h,06db7h	; 80bf  -> 0x6ccb 0x6d14 L_80C7 0x6db7

; ======================================================================
; CODIGO 0x80c7..0x80d8  (17 bytes)
; ======================================================================


L_80C7:
	push bc			;80c7   ; paso 2: lo mismo, por el subpaso
	call 05de9h		;80c8   ; los sprites y la pantalla a la VRAM
	call 05985h		;80cb   ; bufer_a_vram: el bufer de 0xCA00 a la tabla de nombres, la pantalla entera
	pop af			;80ce
	or a			;80cf   ; desde el subpaso 1, el ordenador de a bordo
	push af			;80d0
	call nz,07320h		;80d1   ; ordenador_cuadro: el ordenador de a bordo, un cuadro
	pop af			;80d4   ; y por el subpaso
	call 04093h		;80d5   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_80D8: 4 destinos del despachador p00:4093 (call en p27:80D5, el
;   indice en A): 7D7C, 80E0, 80F1, 80FC; lo leen p27:80D5 (8 bytes)
;   0x80d8..0x80e0  (8 bytes)
DATA_tabla_80D8:
	defw 07d7ch,080e0h,080f1h,080fch	; 80d8  -> 0x7d7c L_80E0 L_80F1 L_80FC

; ======================================================================
; CODIGO 0x80e0..0x812f  (79 bytes)
; ======================================================================


L_80E0:
	ld hl,0e5c0h		;80e0   ; subpaso 1: al acabar la espera, sus graficos (p27:8104) y la secuencia de 0x61FD
	dec (hl)			;80e3   ; la espera
	ret nz			;80e4
	call L_8104		;80e5   ; los graficos
	ld hl,061fdh		;80e8   ; la secuencia de 0x61FD
	call 0612ah		;80eb   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	jp 06cc1h		;80ee   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
L_80F1:
	call 06135h		;80f1   ; subpaso 2: hasta acabar la secuencia
	ret nz			;80f4   ; hasta acabarla
	xor a			;80f5
	ld (0e5c0h),a		;80f6
	jp 06cc1h		;80f9   ; estado9_subpaso_siguiente: el subpaso siguiente del estado 9 (0xE7E5)
L_80FC:
	ld hl,0e5c0h		;80fc   ; subpaso 3: la espera y la vuelta
	dec (hl)			;80ff   ; la espera
	ret nz			;8100
	jp 07dedh		;8101   ; la vuelta
L_8104:
	call 041e4h		;8104   ; con el 29, los RLE de p29:B730, B7B8, B7FC y B84D, las copias de 0x812F y el dibujo de p29:B87E
	call L_8110		;8107   ; los RLE...
	call L_8138		;810a   ; ...y el dibujo
	jp 041bfh		;810d   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
L_8110:
	ld de,0b730h		;8110   ; p29:B730...
	call 04b36h		;8113   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld de,0b7b8h		;8116   ; ...B7B8...
	call 04b36h		;8119   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld de,0b7fch		;811c   ; ...B7FC...
	call 04b36h		;811f   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld de,0b84dh		;8122   ; ...y B84D
	call 04b36h		;8125   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld ix,0812fh		;8128   ; las copias de 0x812F
	jp 04d17h		;812c   ; copia_con_vuelta_ce00: copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)

; ----------------------------------------------------------------------
; DATOS copias_812F: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B): de 4 en 4 (origen, destino, tercios y vuelta, cuantos) y un 0;
;   lo leen p27:812C (9 bytes)
;   0x812f..0x8138  (9 bytes)
DATA_copias_812F:
	defb 050h,070h,024h,013h	; 812f
	defb 080h,090h,012h,00bh	; 8133
	defb 000h	; 8137

; ======================================================================
; CODIGO 0x8138..0x816e  (54 bytes)
; ======================================================================


L_8138:
	ld hl,0b87eh		;8138   ; el dibujo de p29:B87E (segundo formato) en 0xCA6A, 9 filas de 0x0C
	ld de,0cd00h		;813b   ; a 0xCD00...
	call 055cdh		;813e   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	ld hl,0cd00h		;8141   ; ...y al bufer
	ld de,0ca6ah		;8144
	ld bc,0090ch		;8147
	jp 059a1h		;814a   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
L_814D:
	ld a,(0e321h)		;814d   ; el estado 8, paso 1 (el ordenador de a bordo entre fases): tras la fase 3 (0xE321 = 1) el radar, tras la 4 p27:836A
	dec a			;8150   ; tras la fase 3?
	jr z,L_8156		;8151
	jp L_836A		;8153   ; si no, tras la 4
L_8156:
	call 05de9h		;8156   ; los sprites y la pantalla a la VRAM; en los subpasos 1-3 el ordenador de a bordo cada cuadro; por el subpaso (0xE322)
	call 05985h		;8159   ; la pantalla a la VRAM
	ld bc,(0e322h)		;815c   ; el paso (C) y el subpaso (B)
	push bc			;8160
	ld a,c			;8161   ; en los pasos 1-3, el ordenador de a bordo
	sub 001h		;8162
	cp 003h		;8164
	call c,07320h		;8166   ; ordenador_cuadro: el ordenador de a bordo, un cuadro
	pop bc			;8169
	ld a,c			;816a   ; por el paso
	call 04093h		;816b   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_816E: 5 destinos del despachador p00:4093 (call en p27:816B, el
;   indice en A): 8178, 8197, 81A9, 81C3, 81D9; lo leen p27:816B (10 bytes)
;   0x816e..0x8178  (10 bytes)
DATA_tabla_816E:
	defw 08178h,08197h,081a9h,081c3h,081d9h	; 816e

; ======================================================================
; CODIGO 0x8178..0x8208  (144 bytes)
; ======================================================================


L_8178:
	call 0594dh		;8178   ; paso 0: la orden 0x83, el sonido 0x3F, el ordenador de a bordo con el contador de 0x6102
	call 0580eh		;817b   ; sonido_3F: pide el sonido 0x3F
	call L_8188		;817e   ; el siguiente, la espera y el ordenador de a bordo
	ld hl,06102h		;8181   ; con el contador de 0x6102
	call 060f9h		;8184   ; contador_de_hl: las 6 cifras del contador del ordenador de a bordo, de HL
	ret			;8187
L_8188:
	call ordenador_paso_siguiente		;8188   ; al subpaso siguiente, 0xE5C0-0xE5DF a cero, 0xB4 cuadros y el ordenador de a bordo
	call L_83DC		;818b   ; 0xE5C0-0xE5DF a cero
	ld a,0b4h		;818e   ; 0xB4 cuadros
	ld (0e5c0h),a		;8190
	call 060dfh		;8193   ; el ordenador de a bordo
	ret			;8196
L_8197:
	ld hl,0e5c0h		;8197   ; paso 1: al acabar la espera, el radar (p27:81F4) y la secuencia de 0x6193
	dec (hl)			;819a   ; la espera
	ret nz			;819b
	call L_81F4		;819c   ; el radar
	ld hl,06193h		;819f   ; y la secuencia de 0x6193
	call 0612ah		;81a2   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call ordenador_paso_siguiente		;81a5
	ret			;81a8
L_81A9:
	call L_81CC		;81a9   ; paso 2: con un boton se salta; si no, el radar se mueve (p27:820F) hasta acabar la secuencia...
	ret nz			;81ac   ; un boton: se salta
	call L_820F		;81ad   ; el radar se mueve
	call 06135h		;81b0   ; hasta acabar la secuencia
	ret nz			;81b3
	call 060c0h		;81b4   ; ...el cuadro de 0xCA48 a cero, el contador baja (p27:838C) y 0x3C cuadros
	call L_838C		;81b7   ; el contador baja
	ld a,03ch		;81ba   ; 0x3C cuadros
	ld (0e5c0h),a		;81bc
	call ordenador_paso_siguiente		;81bf
	ret			;81c2
L_81C3:
	ld hl,0e5c0h		;81c3   ; paso 3: la espera
	dec (hl)			;81c6   ; la espera
	ret nz			;81c7
	call ordenador_paso_siguiente		;81c8
	ret			;81cb
L_81CC:
	ld a,(0e308h)		;81cc   ; un boton (bits 4-5): al paso 4 (0xE322 = 4)
	and 030h		;81cf   ; los botones
	ret z			;81d1
	ld hl,00004h		;81d2   ; al paso 4
	ld (0e322h),hl		;81d5
	ret			;81d8
L_81D9:
	dec b			;81d9   ; paso 4: la orden 0x84 (p00:578B) y 0x78 cuadros...
	jr z,L_81E7		;81da   ; subpaso 1: p27:81E7
	call 0578bh		;81dc   ; subpaso 0: la orden 0x84...
	ld a,078h		;81df   ; ...0x78 cuadros
	ld (0e402h),a		;81e1   ; guarda un temporizador
	jp ordenador_subpaso_siguiente		;81e4
L_81E7:
	ld hl,0e402h		;81e7   ; ...al acabar, la pantalla en blanco y 0xE321 = 0
	dec (hl)			;81ea   ; la espera
	ret nz			;81eb
	call 04aa9h		;81ec   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	xor a			;81ef   ; acabado (0xE321 = 0)
	ld (0e321h),a		;81f0
	ret			;81f3
L_81F4:
	ld ix,08208h		;81f4   ; el radar: sus graficos (0x8208) y sus dos marcas en 0xE5D2 (0x30, 0x60) y 0xE5D4 (0x30, 0xA0)
	call 04cb1h		;81f8   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld hl,06030h		;81fb   ; la primera marca: x 0x60, y 0x30
	ld (0e5d2h),hl		;81fe
	ld hl,0a030h		;8201   ; la segunda: x 0xA0, y 0x30
	ld (0e5d4h),hl		;8204
	ret			;8207

; ----------------------------------------------------------------------
; DATOS graficos_8208: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:81F8 (7 bytes)
;   0x8208..0x820f  (7 bytes)
DATA_graficos_8208:
	defb 006h,0b4h,0a0h,080h,0f6h,0a0h	; 8208
	defb 000h	; 820e

; ======================================================================
; CODIGO 0x820f..0x8378  (361 bytes)
; ======================================================================


L_820F:
	call 060c0h		;820f   ; el radar: el cuadro a cero y cada marca se mueve y se pinta
	ld ix,0e5d2h		;8212   ; la primera...
	call L_821D		;8216
	ld ix,0e5d4h		;8219   ; ...y la segunda: se mueve y se pinta
L_821D:
	call L_8224		;821d   ; cada 4 cuadros, al azar (registro R): IX+1 + 8 o - 8, IX+0 - 8 o + 8
	call L_827D		;8220   ; una marca: sus dos lineas y sus esquinas
	ret			;8223
L_8224:
	ld a,(0e303h)		;8224   ; cada 4 cuadros, al azar (registro R): IX+1 + 8 o - 8, IX+0 - 8 o + 8
	and 003h		;8227   ; cada 4 cuadros
	ret nz			;8229
	ld a,r		;822a   ; al azar: abajo o arriba (IX+1)...
	rra			;822c
	push af			;822d
	call c,L_8241		;822e   ; IX+1 + 8, hasta 0xB0
	pop af			;8231
	call nc,L_8250		;8232   ; IX+1 - 8, hasta 0x48
	ld a,r		;8235   ; ...y a un lado u otro (IX+0)
	rra			;8237
	push af			;8238
	call c,L_825F		;8239   ; IX+0 - 8, hasta 0x20
	pop af			;823c
	call nc,L_826E		;823d   ; IX+0 + 8, hasta 0x58
	ret			;8240
L_8241:
	ld a,(ix+001h)		;8241   ; IX+1 + 8, hasta 0xB0
	add a,008h		;8244   ; mas 8, hasta 0xB0
	cp 0b0h		;8246
	jr c,L_824C		;8248
	ld a,0b0h		;824a
L_824C:
	ld (ix+001h),a		;824c
	ret			;824f
L_8250:
	ld a,(ix+001h)		;8250   ; IX+1 - 8, hasta 0x48
	sub 008h		;8253   ; menos 8, hasta 0x48
	cp 048h		;8255
	jr nc,L_825B		;8257
	ld a,048h		;8259
L_825B:
	ld (ix+001h),a		;825b
	ret			;825e
L_825F:
	ld a,(ix+000h)		;825f   ; IX+0 - 8, hasta 0x20
	sub 008h		;8262   ; menos 8, hasta 0x20
	cp 020h		;8264
	jr nc,L_826A		;8266
	ld a,020h		;8268
L_826A:
	ld (ix+000h),a		;826a
	ret			;826d
L_826E:
	ld a,(ix+000h)		;826e   ; IX+0 + 8, hasta 0x58
	add a,008h		;8271   ; mas 8, hasta 0x58
	cp 058h		;8273
	jr c,L_8279		;8275
	ld a,058h		;8277
L_8279:
	ld (ix+000h),a		;8279
	ret			;827c
L_827D:
	call L_8287		;827d   ; una marca: sus dos lineas y sus esquinas
	call L_8312		;8280   ; sus diagonales
	call L_82CA		;8283   ; una diagonal hacia arriba desde el cruce: 0x85-0x88, cada 0x18 y 8
	ret			;8286
L_8287:
	ld l,(ix+000h)		;8287   ; la linea de IX+0 (caracteres 0x81, 0x10 de largo desde la columna 0x40)...
	ld h,040h		;828a   ; desde la columna 0x40
	call L_8356		;828c   ; la direccion del bufer de 0xCA00 de HL (L fila, H columna, en puntos)
	ld e,l			;828f
	ld d,h			;8290
	inc de			;8291
	ld (hl),081h		;8292   ; 0x10 caracteres 0x81
	ld bc,0000fh		;8294
	ldir		;8297
	ld l,010h		;8299   ; ...la de IX+1 (0x82, 0x0B filas desde la fila 0x10)...
	ld h,(ix+001h)		;829b   ; la columna de IX+1, desde la fila 0x10
	call L_8356		;829e   ; la direccion del bufer de 0xCA00 de HL (L fila, H columna, en puntos)
	ld de,00020h		;82a1
	ld b,00bh		;82a4
L_82A6:
	ld (hl),082h		;82a6   ; 0x0B caracteres 0x82, uno por fila
	add hl,de			;82a8
	djnz L_82A6		;82a9
	ld l,(ix+000h)		;82ab   ; ...el cruce (0x80) y debajo 0x83 y 0x84
	ld h,(ix+001h)		;82ae   ; el cruce
	call L_8356		;82b1   ; la direccion del bufer de 0xCA00 de HL (L fila, H columna, en puntos)
	ld (hl),080h		;82b4   ; 0x80...
	ld bc,00020h		;82b6
	add hl,bc			;82b9   ; ...y debajo 0x83 y 0x84, sin pasar de 0xCBA0
	ld de,0cba0h		;82ba
	rst 20h			;82bd
	ret nc			;82be
	ld (hl),083h		;82bf
	add hl,bc			;82c1
	ld de,0cba0h		;82c2
	rst 20h			;82c5
	ret nc			;82c6
	ld (hl),084h		;82c7
	ret			;82c9
L_82CA:
	ld a,(ix+000h)		;82ca   ; una diagonal hacia arriba desde el cruce: 0x85-0x88, cada 0x18 y 8
	add a,010h		;82cd   ; desde el cruce + 0x10 en y y - 8 en x...
	ld l,a			;82cf
	ld a,(ix+001h)		;82d0
	sub 008h		;82d3
	ld h,a			;82d5
	ld (0ef80h),hl		;82d6
L_82D9:
	call L_82ED		;82d9   ; ...un trozo
	ret c			;82dc
	ld hl,(0ef80h)		;82dd   ; el siguiente: 0x18 mas abajo y 8 a la izquierda
	ld a,l			;82e0
	add a,018h		;82e1
	ld l,a			;82e3
	ld a,h			;82e4
	sub 008h		;82e5
	ld h,a			;82e7
	ld (0ef80h),hl		;82e8
	jr L_82D9		;82eb
L_82ED:
	ld a,h			;82ed   ; dentro del cuadro? se pinta (0x85-0x88 hacia abajo); C al salirse
	cp 040h		;82ee   ; a la izquierda de 0x40, nada
	ret c			;82f0
	call L_8356		;82f1   ; la direccion del bufer de 0xCA00 de HL (L fila, H columna, en puntos)
	ld de,0cb98h		;82f4   ; cuatro filas (0x85-0x88) sin pasar de 0xCB98
	ld bc,00020h		;82f7
	rst 20h			;82fa
	ccf			;82fb
	ret c			;82fc
	ld (hl),085h		;82fd
	add hl,bc			;82ff
	rst 20h			;8300
	ccf			;8301
	ret c			;8302
	ld (hl),086h		;8303
	add hl,bc			;8305
	rst 20h			;8306
	ccf			;8307
	ret c			;8308
	ld (hl),087h		;8309
	add hl,bc			;830b
	rst 20h			;830c
	ccf			;830d
	ret c			;830e
	ld (hl),088h		;830f
	ret			;8311
L_8312:
	ld a,(ix+000h)		;8312   ; otra diagonal hacia abajo: 0x89-0x8C
	add a,010h		;8315   ; desde el cruce + 0x10 en y y + 8 en x...
	ld l,a			;8317
	ld a,(ix+001h)		;8318
	add a,008h		;831b
	ld h,a			;831d
	ld (0ef80h),hl		;831e
L_8321:
	call L_8335		;8321   ; ...un trozo
	ret nc			;8324
	ld hl,(0ef80h)		;8325   ; el siguiente: 0x18 mas abajo y 8 a la derecha
	ld a,l			;8328
	add a,018h		;8329
	ld l,a			;832b
	ld a,h			;832c
	add a,008h		;832d
	ld h,a			;832f
	ld (0ef80h),hl		;8330
	jr L_8321		;8333
L_8335:
	ld a,h			;8335   ; dentro del cuadro? se pinta; NC al salirse
	cp 0c0h		;8336   ; desde la x 0xC0, nada
	ret nc			;8338
	call L_8356		;8339   ; la direccion del bufer de 0xCA00 de HL (L fila, H columna, en puntos)
	ld de,0cb98h		;833c   ; cuatro filas (0x89-0x8C) sin pasar de 0xCB98
	ld bc,00020h		;833f
	rst 20h			;8342
	ret nc			;8343
	ld (hl),089h		;8344
	add hl,bc			;8346
	rst 20h			;8347
	ret nc			;8348
	ld (hl),08ah		;8349
	add hl,bc			;834b
	rst 20h			;834c
	ret nc			;834d
	ld (hl),08bh		;834e
	add hl,bc			;8350
	rst 20h			;8351
	ret nc			;8352
	ld (hl),08ch		;8353
	ret			;8355
L_8356:
	ld a,l			;8356   ; la direccion del bufer de 0xCA00 de HL (L fila, H columna, en puntos)
	rra			;8357   ; la fila (L / 8) x 0x20...
	rra			;8358
	rra			;8359
	rra			;835a
	rr h		;835b
	rra			;835d
	rr h		;835e   ; ...+ la columna (H / 8)...
	rra			;8360
	rr h		;8361
	ld l,h			;8363
	and 003h		;8364   ; ...+ 0xCA00
	add a,0cah		;8366
	ld h,a			;8368
	ret			;8369
L_836A:
	call 05de9h		;836a   ; tras la fase 4: los sprites y la pantalla a la VRAM; por el subpaso (0xE322)
	call 05985h		;836d   ; la pantalla a la VRAM
	ld bc,(0e322h)		;8370   ; por el paso
	ld a,c			;8374
	call 04093h		;8375   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8378: 4 destinos del despachador p00:4093 (call en p27:8375, el
;   indice en A): 8380, 8398, 83B3, 81D9; lo leen p27:8375 (8 bytes)
;   0x8378..0x8380  (8 bytes)
DATA_tabla_8378:
	defw 08380h,08398h,083b3h,081d9h	; 8378  -> L_8380 L_8398 L_83B3 L_81D9

; ======================================================================
; CODIGO 0x8380..0x8406  (134 bytes)
; ======================================================================


L_8380:
	call 0580eh		;8380   ; paso 0: el sonido 0x3F, el ordenador de a bordo con el contador de 0x610E y a bajar
	call L_8188		;8383   ; el siguiente, la espera y el ordenador de a bordo
	ld hl,0610eh		;8386   ; con el contador de 0x610E
	call 060f9h		;8389   ; contador_de_hl: las 6 cifras del contador del ordenador de a bordo, de HL
L_838C:
	ld a,002h		;838c   ; el contador baja (0xE54C = 2) de uno en uno (0xE54D = 1)
	ld (0e54ch),a		;838e   ; 0xE54C = 2: baja
	ld hl,00001h		;8391   ; de uno en uno
	ld (0e54dh),hl		;8394
	ret			;8397
L_8398:
	call 07320h		;8398   ; paso 1: el ordenador de a bordo hasta que el contador llegue (p27:8C9B); luego quieto, el de 0x6108 y la secuencia de 0x61B4
	call L_8C9B		;839b   ; hasta 6644
	ret nz			;839e
	xor a			;839f   ; quieto
	ld (0e54ch),a		;83a0
	ld hl,06108h		;83a3   ; con el de 0x6108
	call 060f9h		;83a6   ; contador_de_hl: las 6 cifras del contador del ordenador de a bordo, de HL
	ld hl,061b4h		;83a9   ; la secuencia de 0x61B4
	call 0612ah		;83ac   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call ordenador_paso_siguiente		;83af
	ret			;83b2
L_83B3:
	call L_83C2		;83b3   ; paso 2: con un boton se salta; si no, el ordenador de a bordo hasta acabar la secuencia
	ret nz			;83b6   ; un boton: se salta
	call 07320h		;83b7   ; el ordenador de a bordo
	call 06135h		;83ba   ; hasta acabar la secuencia
	ret nz			;83bd
	call ordenador_paso_siguiente		;83be
	ret			;83c1
L_83C2:
	ld a,(0e308h)		;83c2   ; un boton: al paso 3
	and 030h		;83c5   ; los botones
	ret z			;83c7
	ld hl,00003h		;83c8   ; al paso 3
	ld (0e322h),hl		;83cb
	ret			;83ce
ordenador_paso_siguiente:		; el paso siguiente del ordenador de a bordo entre fases (0xE322)
	ld hl,0e322h		;83cf   ; el paso siguiente (0xE322), con el subpaso a 0
	inc (hl)			;83d2   ; el paso + 1, el subpaso a 0
	inc hl			;83d3
	ld (hl),000h		;83d4
	ret			;83d6
ordenador_subpaso_siguiente:		; el subpaso siguiente del ordenador de a bordo (0xE323)
	ld hl,0e323h		;83d7   ; el subpaso siguiente (0xE323)
	inc (hl)			;83da
	ret			;83db
L_83DC:
	ld hl,0e5c0h		;83dc   ; 0xE5C0-0xE5DF a cero
	ld de,0e5c1h		;83df   ; 0x20 bytes
	ld bc,0001fh		;83e2
	ld (hl),000h		;83e5
	ldir		;83e7
	ret			;83e9
L_83EA:
	call 05de9h		;83ea   ; el final (estado 10): los sprites a la VRAM, la pantalla salvo en el paso 4 desde el subpaso 7; por el paso (0xE329)
	ld bc,(0e329h)		;83ed   ; en el paso 4 desde el subpaso 7, la pantalla no
	ld a,c			;83f1
	cp 004h		;83f2
	jr nz,L_83FB		;83f4
	ld a,b			;83f6
	cp 007h		;83f7
	jr nc,L_83FE		;83f9
L_83FB:
	call 05985h		;83fb   ; bufer_a_vram: el bufer de 0xCA00 a la tabla de nombres, la pantalla entera
L_83FE:
	ld bc,(0e329h)		;83fe   ; por el paso
	ld a,c			;8402
	call 04093h		;8403   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8406: 5 destinos del despachador p00:4093 (call en p27:8403, el
;   indice en A): 841D, 8529, 8611, 8797, 891D; lo leen p27:8403 (10 bytes)
;   0x8406..0x8410  (10 bytes)
DATA_tabla_8406:
	defw 0841dh,08529h,08611h,08797h,0891dh	; 8406

; ======================================================================
; CODIGO 0x8410..0x8427  (23 bytes)
; ======================================================================


final_paso_siguiente:		; el paso siguiente del final (0xE329)
	ld hl,0e329h		;8410   ; el paso siguiente (0xE329), con el subpaso a 0
	inc (hl)			;8413   ; el paso + 1, el subpaso a 0
	inc hl			;8414
	ld (hl),000h		;8415
	ret			;8417
final_subpaso_siguiente:		; el subpaso siguiente del final (0xE32A)
	ld hl,0e32ah		;8418   ; el subpaso siguiente (0xE32A)
	inc (hl)			;841b
	ret			;841c
L_841D:
	push bc			;841d   ; paso 0: desde el subpaso 1 el ordenador de a bordo cada cuadro; por el subpaso
	ld a,b			;841e   ; desde el subpaso 1, el ordenador de a bordo
	or a			;841f
	call nz,07320h		;8420   ; ordenador_cuadro: el ordenador de a bordo, un cuadro
	pop af			;8423
	call 04093h		;8424   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8427: 8 destinos del despachador p00:4093 (call en p27:8424, el
;   indice en A): 8437, 8458, 8484, 8497, 84BE, 84EA, 8505, 8521; lo leen
;   p27:8424 (16 bytes)
;   0x8427..0x8437  (16 bytes)
DATA_tabla_8427:
	defw 08437h,08458h,08484h,08497h,084beh,084eah,08505h,08521h	; 8427

; ======================================================================
; CODIGO 0x8437..0x852d  (246 bytes)
; ======================================================================


L_8437:
	call 0594dh		;8437   ; subpaso 0: la orden 0x83, el sonido 0x42, la paleta, la pantalla en blanco, el ordenador de a bordo y 0x78 cuadros
	call 05827h		;843a   ; sonido_42: pide el sonido 0x42
	call 05718h		;843d   ; la paleta
	call 04aa9h		;8440   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call 06033h		;8443   ; los dibujos de sprite a cero
	call 060dfh		;8446   ; el ordenador de a bordo
	ld hl,06108h		;8449   ; con el contador de 0x6108
	call 060f9h		;844c   ; contador_de_hl: las 6 cifras del contador del ordenador de a bordo, de HL
	ld a,078h		;844f   ; 0x78 cuadros
	ld (0e40ch),a		;8451
	call final_subpaso_siguiente		;8454   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8457
L_8458:
	ld hl,0e40ch		;8458   ; subpaso 1: al acabar, la paleta 4, los graficos de p29:A1D6 y A225, p27:84A7 con 0 y la secuencia de 0x620A
	dec (hl)			;845b   ; la espera
	ret nz			;845c
	ld a,004h		;845d   ; la paleta 4
	call 05709h		;845f   ; paleta: la paleta A de p16:6B74
	call 041e4h		;8462   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0a1d6h		;8465   ; la lista de p29:A1D6...
	call 04cb1h		;8469   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0a225h		;846c   ; ...y sus copias (p29:A225)
	call 04d17h		;8470   ; copia_con_vuelta_ce00: copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)
	call 041bfh		;8473   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	xor a			;8476   ; el cuadro 0
	call L_84A7		;8477   ; el cuadro A de la tabla de p29:B467 en el bufer (p26:6064)
	ld hl,0620ah		;847a   ; la secuencia de 0x620A
	call 0612ah		;847d   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call final_subpaso_siguiente		;8480   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8483
L_8484:
	call 06135h		;8484   ; subpaso 2: al acabar la secuencia, la animacion de 5 cuadros (0xE5D0 = 0, 0xE5D1 = 5)
	ret nz			;8487   ; al acabar la secuencia
	ld hl,00500h		;8488   ; desde el cuadro 0, 5 cuadros
	ld (0e5d0h),hl		;848b
	ld a,001h		;848e   ; la espera, 1
	ld (0e40ch),a		;8490
	call final_subpaso_siguiente		;8493   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8496
L_8497:
	ld hl,0e40ch		;8497   ; subpaso 3: cada 0x78 cuadros el cuadro siguiente; al acabar, la secuencia de 0x6213
	dec (hl)			;849a   ; la espera
	ret nz			;849b
	ld (hl),078h		;849c   ; 0x78 cuadros mas
	ld hl,0e5d1h		;849e   ; uno menos; acabados, p27:84B4
	dec (hl)			;84a1
	jr z,L_84B4		;84a2
	dec hl			;84a4   ; el cuadro siguiente
	ld a,(hl)			;84a5
	inc (hl)			;84a6
L_84A7:
	call 041e4h		;84a7   ; el cuadro A de la tabla de p29:B467 en el bufer (p26:6064)
	ld hl,0b467h		;84aa   ; en la tabla de p29:B467
	call 06064h		;84ad   ; un rectangulo de la tabla HL (palabra A) a 0xCD00 y al bufer: DE el destino, B filas, C bytes (p00:59A1) (p26:6064)
	call 041bfh		;84b0   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;84b3
L_84B4:
	ld hl,06213h		;84b4   ; la secuencia de 0x6213
	call 0612ah		;84b7   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call final_subpaso_siguiente		;84ba   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;84bd
L_84BE:
	call 06135h		;84be   ; subpaso 4: al acabar la secuencia, la paleta 5, los graficos de p29:A808 y A81B, y 7 cuadros desde el 4
	ret nz			;84c1   ; al acabarla
	ld a,005h		;84c2   ; la paleta 5
	call 05709h		;84c4   ; paleta: la paleta A de p16:6B74
	call 041e4h		;84c7   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0a808h		;84ca   ; la lista de p29:A808...
	call 04cb1h		;84ce   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0a81bh		;84d1   ; ...y sus copias
	call 04d17h		;84d5   ; copia_con_vuelta_ce00: copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)
	call 041bfh		;84d8   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ld hl,00704h		;84db   ; desde el cuadro 4, 7 cuadros
	ld (0e5d0h),hl		;84de
	ld a,001h		;84e1
	ld (0e40ch),a		;84e3
	call final_subpaso_siguiente		;84e6   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;84e9
L_84EA:
	ld hl,0e40ch		;84ea   ; subpaso 5: cada 0x14 cuadros el siguiente; al acabar, 0xB4 cuadros
	dec (hl)			;84ed   ; la espera
	ret nz			;84ee
	ld (hl),014h		;84ef   ; 0x14 cuadros mas
	ld hl,0e5d1h		;84f1   ; uno menos; acabados, 0xB4 cuadros
	dec (hl)			;84f4
	jr z,L_84FC		;84f5
	dec hl			;84f7   ; el cuadro siguiente
	ld a,(hl)			;84f8
	inc (hl)			;84f9
	jr L_84A7		;84fa
L_84FC:
	ld a,0b4h		;84fc
	ld (0e40ch),a		;84fe
	call final_subpaso_siguiente		;8501   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8504
L_8505:
	ld hl,0e40ch		;8505   ; subpaso 6: parpadea entre los cuadros 0x0A y 0x0B (cada 8); al acabar, la secuencia de 0x621C
	dec (hl)			;8508   ; la espera; al acabar, la secuencia
	jr z,L_8517		;8509
	bit 3,(hl)		;850b   ; cada 8 cuadros el 0x0A o el 0x0B
	ld a,00ah		;850d
	jr z,L_8513		;850f
	ld a,00bh		;8511
L_8513:
	call L_84A7		;8513   ; el cuadro A de la tabla de p29:B467 en el bufer (p26:6064)
	ret			;8516
L_8517:
	ld hl,0621ch		;8517   ; la secuencia de 0x621C
	call 0612ah		;851a   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call final_subpaso_siguiente		;851d   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8520
L_8521:
	call 06135h		;8521   ; subpaso 7: al acabar la secuencia, al paso 1
	ret nz			;8524   ; al acabarla
	call final_paso_siguiente		;8525   ; al paso 1
	ret			;8528
L_8529:
	ld a,b			;8529   ; paso 1, el planeta: por el subpaso
	call 04093h		;852a   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_852D: 8 destinos del despachador p00:4093 (call en p27:852A, el
;   indice en A): 853D, 8554, 8577, 85A1, 85B6, 85C1, 85D8, 85EF; lo leen
;   p27:852A (16 bytes)
;   0x852d..0x853d  (16 bytes)
DATA_tabla_852D:
	defw 0853dh,08554h,08577h,085a1h,085b6h,085c1h,085d8h,085efh	; 852d

; ======================================================================
; CODIGO 0x853d..0x8621  (228 bytes)
; ======================================================================


L_853D:
	call 04aa9h		;853d   ; subpaso 0: la pantalla en blanco, el bufer a cero, los sprites fuera, las estrellas (p28:BE34, BBE9)
	call 05959h		;8540   ; el bufer a cero
	call 05648h		;8543   ; los sprites fuera
	call 0be34h		;8546   ; las estrellas (p28)
	call 0bbe9h		;8549
	xor a			;854c   ; sin espera
	ld (0e40ch),a		;854d
	call final_subpaso_siguiente		;8550   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8553
L_8554:
	call 0bc08h		;8554   ; subpaso 1: las estrellas se mueven (p28:BC08) y, al acabar la espera, p27:8563
	ld hl,0e40ch		;8557   ; la espera
	dec (hl)			;855a
	ret nz			;855b
	call L_8563		;855c   ; el planeta
	call final_subpaso_siguiente		;855f   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8562
L_8563:
	ld a,007h		;8563   ; la paleta 7, el planeta (p27:8A7F) y su animacion de 5 cuadros
	call 05709h		;8565   ; la paleta 7
	call L_8A7F		;8568   ; los graficos del planeta
	ld hl,00500h		;856b   ; desde el cuadro 0, 5 cuadros
	ld (0e5d0h),hl		;856e
	ld a,001h		;8571
	ld (0e40ch),a		;8573
	ret			;8576
L_8577:
	call 0bc08h		;8577   ; subpaso 2: cada 0x5A cuadros el cuadro siguiente del planeta (tabla de p29:B2E7); al acabar, p27:8A94 y 8AAE
	ld hl,0e40ch		;857a   ; la espera
	dec (hl)			;857d
	ret nz			;857e
	ld (hl),05ah		;857f   ; 0x5A cuadros mas
	ld hl,0e5d1h		;8581   ; uno menos; acabados, p27:8597
	dec (hl)			;8584
	jr z,L_8597		;8585
	dec hl			;8587   ; el cuadro siguiente
	ld a,(hl)			;8588
	inc (hl)			;8589
L_858A:
	ld hl,0b2e7h		;858a   ; en la tabla de p29:B2E7
	call 041e4h		;858d   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	call 06064h		;8590   ; un rectangulo de la tabla HL (palabra A) a 0xCD00 y al bufer: DE el destino, B filas, C bytes (p00:59A1) (p26:6064)
	call 041bfh		;8593   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8596
L_8597:
	call L_8A94		;8597   ; los sprites de la nave y la primera que cruza
	call L_8AAE		;859a
	call final_subpaso_siguiente		;859d   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;85a0
L_85A1:
	call L_8ADF		;85a1   ; subpaso 3: p27:8ADF hasta que 0xE5D6 vuelva a 0; luego la secuencia de 0x6225 (VIXEN ENTERED TIME-WARP)
	ld a,(0e5d6h)		;85a4   ; hasta que acabe
	or a			;85a7
	ret nz			;85a8
	call L_8A6C		;85a9   ; los sprites de abajo fuera
	ld hl,06225h		;85ac   ; la secuencia de 0x6225
	call 0612ah		;85af   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call final_subpaso_siguiente		;85b2   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;85b5
L_85B6:
	call 06135h		;85b6   ; subpaso 4: al acabar la secuencia, p27:8AA4
	ret nz			;85b9   ; al acabarla
	call L_8AA4		;85ba   ; la segunda nave
	call final_subpaso_siguiente		;85bd   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;85c0
L_85C1:
	call L_8ADF		;85c1   ; subpaso 5: lo mismo hasta 0xE5D6 = 0; las estrellas otra vez y 0x3C cuadros
	ld a,(0e5d6h)		;85c4   ; hasta que acabe
	or a			;85c7
	ret nz			;85c8
	call 0be34h		;85c9   ; las estrellas otra vez
	call 0bbe9h		;85cc
	ld a,03ch		;85cf   ; 0x3C cuadros
	ld (0e40ch),a		;85d1
	call final_subpaso_siguiente		;85d4   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;85d7
L_85D8:
	call 0bc12h		;85d8   ; subpaso 6: las estrellas (p28:BC12); al acabar, 3 cuadros desde el 5
	ld hl,0e40ch		;85db   ; la espera
	dec (hl)			;85de
	ret nz			;85df
	ld hl,00503h		;85e0   ; desde el cuadro 3, 5 cuadros
	ld (0e5d0h),hl		;85e3
	ld a,001h		;85e6
	ld (0e40ch),a		;85e8
	call final_subpaso_siguiente		;85eb   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;85ee
L_85EF:
	call 0bc12h		;85ef   ; subpaso 7: cada 0x5A cuadros el cuadro anterior; al acabar, al paso 2
	ld hl,0e40ch		;85f2   ; la espera
	dec (hl)			;85f5
	ret nz			;85f6
	ld (hl),05ah		;85f7   ; 0x5A cuadros mas
	call 05959h		;85f9   ; el bufer a cero
	ld hl,0e5d1h		;85fc   ; uno menos; acabados, al paso 2
	dec (hl)			;85ff
	jr z,L_8609		;8600
	dec hl			;8602   ; el cuadro anterior (hacia atras)
	ld a,(hl)			;8603
	dec (hl)			;8604
	call L_858A		;8605   ; en la tabla de p29:B2E7
	ret			;8608
L_8609:
	xor a			;8609
	ld (0e40ch),a		;860a
	call final_paso_siguiente		;860d   ; final_paso_siguiente: el paso siguiente del final (0xE329)
	ret			;8610
L_8611:
	push bc			;8611   ; paso 2: desde el subpaso 4 el ordenador de a bordo y p27:8CBF cada cuadro; por el subpaso
	ld a,b			;8612   ; desde el subpaso 4...
	cp 004h		;8613
	jr c,L_861D		;8615
	call 07320h		;8617   ; ...el ordenador de a bordo y el contador loco
	call contador_loco		;861a   ; contador_loco: el contador cambia al azar cada 4 cuadros
L_861D:
	pop af			;861d   ; y por el subpaso
	call 04093h		;861e   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8621: 18 destinos del despachador p00:4093 (call en p27:861E, el
;   indice en A): 8645, 8656, 8670, 868C, 86A6, 86B8, 86CA, 86D9, 86E8, 86FD,
;   8717, 8731, 8743, 8759, 8768, 8772, 877D, 8781; lo leen p27:861E (36
;   bytes)
;   0x8621..0x8645  (36 bytes)
DATA_tabla_8621:
	defw 08645h,08656h,08670h,0868ch,086a6h,086b8h,086cah,086d9h	; 8621
	defw 086e8h,086fdh,08717h,08731h,08743h,08759h,08768h,08772h	; 8631
	defw 0877dh,08781h	; 8641  -> L_877D L_8781

; ======================================================================
; CODIGO 0x8645..0x87a9  (356 bytes)
; ======================================================================


L_8645:
	call 0bc12h		;8645   ; subpaso 0: las estrellas; al acabar, 0x78 cuadros
	ld hl,0e40ch		;8648   ; la espera
	dec (hl)			;864b
	ret nz			;864c
	ld a,078h		;864d   ; 0x78 cuadros
	ld (0e40ch),a		;864f
	call final_subpaso_siguiente		;8652   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8655
L_8656:
	call 0bc12h		;8656   ; subpaso 1: al acabar, los sprites fuera, el bufer a cero, el sonido 0x4D y 0x96 cuadros
	ld hl,0e40ch		;8659   ; la espera
	dec (hl)			;865c
	ret nz			;865d
	call 05648h		;865e   ; los sprites fuera
	call 05959h		;8661   ; el bufer a cero
	ld a,096h		;8664   ; 0x96 cuadros
	ld (0e40ch),a		;8666
	call 058fdh		;8669   ; sonido_4D: pide el sonido 0x4D
	call final_subpaso_siguiente		;866c   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;866f
L_8670:
	ld a,(0e40ch)		;8670   ; subpaso 2: el borde cambia de color cada cuadro (la cuenta); al acabar, negro y el sonido 0x52
	and 00fh		;8673   ; el color del borde: la cuenta & 0x0F
	or 0e0h		;8675
	ld b,a			;8677
	call 04c40h		;8678   ; color_del_borde: B al registro 7 del VDP
	ld hl,0e40ch		;867b   ; la espera
	dec (hl)			;867e
	ret nz			;867f
	ld b,0e0h		;8680   ; negro otra vez
	call 04c40h		;8682   ; color_del_borde: B al registro 7 del VDP
	call 0591ah		;8685   ; sonido_52: pide el sonido 0x52
	call final_subpaso_siguiente		;8688   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;868b
L_868C:
	call 060dfh		;868c   ; subpaso 3: el ordenador de a bordo (cada 3 cuadros) con el contador de 0x6108, p27:8CDD y 0x3C cuadros
	ld a,003h		;868f   ; el ordenador de a bordo, cada 3 cuadros
	ld (0e540h),a		;8691
	ld hl,06108h		;8694   ; con el contador de 0x6108
	call 060f9h		;8697   ; contador_de_hl: las 6 cifras del contador del ordenador de a bordo, de HL
	call L_8CDD		;869a   ; los graficos de p29:AACE
	ld a,03ch		;869d   ; carga A = 0x3C pero guarda HL: la espera es lo que deje HL (L en 0xE40C)
	ld (0e40ch),hl		;869f
	call final_subpaso_siguiente		;86a2   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;86a5
L_86A6:
	call L_8CEB		;86a6   ; subpaso 4: al acabar, la secuencia de 0x622E
	ld hl,0e40ch		;86a9   ; la espera
	dec (hl)			;86ac
	ret nz			;86ad
	ld hl,0622eh		;86ae   ; la secuencia de 0x622E
	call 0612ah		;86b1   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call final_subpaso_siguiente		;86b4   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;86b7
L_86B8:
	call L_8CEB		;86b8   ; subpaso 5: al acabarla, el bufer de 0xCC22 a cero
	call 06135h		;86bb   ; hasta acabarla
	ret nz			;86be
	call 060cah		;86bf   ; el cuadro de 0xCC22 a cero
	xor a			;86c2   ; sin espera
	ld (0e40ch),a		;86c3
	call final_subpaso_siguiente		;86c6   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;86c9
L_86CA:
	call L_8CEB		;86ca   ; subpaso 6: al acabar, el de 0xCA48
	ld hl,0e40ch		;86cd   ; la espera
	dec (hl)			;86d0
	ret nz			;86d1
	call 060c0h		;86d2   ; el cuadro de 0xCA48 a cero
	call final_subpaso_siguiente		;86d5   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;86d8
L_86D9:
	call L_8D00		;86d9   ; subpaso 7: p27:8D00 y 8D3E, 0xB4 cuadros
	call L_8D3E		;86dc   ; la nave elegida
	ld a,0b4h		;86df   ; 0xB4 cuadros
	ld (0e40ch),a		;86e1
	call final_subpaso_siguiente		;86e4   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;86e7
L_86E8:
	call L_8D7D		;86e8   ; subpaso 8: al acabar, la secuencia de 0x6233 y la orden 0x84
	ld hl,0e40ch		;86eb   ; la espera
	dec (hl)			;86ee
	ret nz			;86ef
	ld hl,06233h		;86f0   ; la secuencia de 0x6233
	call 0612ah		;86f3   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call 05951h		;86f6   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	call final_subpaso_siguiente		;86f9   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;86fc
L_86FD:
	call L_8D7D		;86fd   ; subpaso 9: al acabarla, p27:8D84, los dos cuadros a cero, la orden 0x83 y el sonido 1
	call 06135h		;8700   ; hasta acabarla
	ret nz			;8703
	call L_8D84		;8704   ; los sprites fuera
	call 060c0h		;8707   ; los dos cuadros a cero
	call 060cah		;870a   ; borra_cuadro_cc22: borra en el bufer 5 x 0x1C desde 0xCC22
	call final_subpaso_siguiente		;870d   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	call 0594dh		;8710   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 057eah		;8713   ; sonido_01: pide el sonido 0x01
	ret			;8716
L_8717:
	ld a,006h		;8717   ; subpaso 0x0A: la paleta 6, p27:8DD9, 8E21 y 8DF5, el sonido 0x53 y 0x80 cuadros
	call 05709h		;8719   ; la paleta 6
	call L_8DD9		;871c   ; los graficos de p29:B8BB
	call L_8E21		;871f   ; el dibujo de p29:BC13
	call L_8DF5		;8722   ; y el de 0x8E19
	call 05941h		;8725   ; sonido_53: pide el sonido 0x53
	ld a,080h		;8728   ; 0x80 cuadros
	ld (0e40ch),a		;872a
	call final_subpaso_siguiente		;872d   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8730
L_8731:
	ld hl,0e40ch		;8731   ; subpaso 0x0B: al acabar, la secuencia de 0x6238 y el sonido 0x40
	dec (hl)			;8734   ; la espera
	ret nz			;8735
	ld hl,06238h		;8736   ; la secuencia de 0x6238
	call 0612ah		;8739   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call 05812h		;873c   ; sonido_40: pide el sonido 0x40
	call final_subpaso_siguiente		;873f   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8742
L_8743:
	call L_8DFA		;8743   ; subpaso 0x0C: p27:8DFA hasta acabarla; luego p27:8E04, el cuadro de 0xCC22 a cero y 0x78 cuadros
	call 06135h		;8746   ; hasta acabarla, parpadeando
	ret nz			;8749
	call L_8E04		;874a   ; al acabar, el de 0x8E11
	call 060cah		;874d   ; borra_cuadro_cc22: borra en el bufer 5 x 0x1C desde 0xCC22
	ld a,078h		;8750   ; 0x78 cuadros
	ld (0e40ch),a		;8752
	call final_subpaso_siguiente		;8755   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8758
L_8759:
	ld hl,0e40ch		;8759   ; subpaso 0x0D: al acabar, el de 0xCA48 a cero y los sprites fuera
	dec (hl)			;875c   ; la espera
	ret nz			;875d
	call 060c0h		;875e   ; el cuadro de 0xCA48 a cero
	call 05648h		;8761   ; los sprites fuera
	call final_subpaso_siguiente		;8764   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8767
L_8768:
	ld hl,06241h		;8768   ; subpaso 0x0E: la secuencia de 0x6241
	call 0612ah		;876b   ; la secuencia
	call final_subpaso_siguiente		;876e   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8771
L_8772:
	call 06135h		;8772   ; subpaso 0x0F: al acabarla, el cuadro de 0xCC22 a cero
	ret nz			;8775   ; hasta acabarla
	call 060cah		;8776   ; el cuadro de 0xCC22 a cero
	call final_subpaso_siguiente		;8779   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;877c
L_877D:
	call final_subpaso_siguiente		;877d   ; subpaso 0x10: nada
	ret			;8780
L_8781:
	ld a,002h		;8781   ; subpaso 0x11: la paleta 2; con 0xE396 al paso 3, sin ella dos pasos (al 4)
	call 05709h		;8783   ; la paleta 2
	ld a,(0e396h)		;8786   ; lee 1 si se cogio la entrada secreta 0x0B (el final con un paso mas)
	or a			;8789   ; la entrada secreta 0x0B (0xE396)?
	jr nz,L_8793		;878a
	call final_paso_siguiente		;878c   ; sin ella, se salta el paso 3
	call final_paso_siguiente		;878f   ; final_paso_siguiente: el paso siguiente del final (0xE329)
	ret			;8792
L_8793:
	call final_paso_siguiente		;8793   ; final_paso_siguiente: el paso siguiente del final (0xE329)
	ret			;8796
L_8797:
	push bc			;8797   ; paso 3: hasta el subpaso 5 p27:8CBF y hasta el 7 el ordenador de a bordo; por el subpaso
	push bc			;8798   ; hasta el subpaso 5, el contador loco
	ld a,b			;8799
	cp 006h		;879a
	call c,contador_loco		;879c   ; contador_loco: el contador cambia al azar cada 4 cuadros
	pop af			;879f
	cp 008h		;87a0   ; hasta el 7, el ordenador de a bordo
	call c,07320h		;87a2   ; ordenador_cuadro: el ordenador de a bordo, un cuadro
	pop af			;87a5   ; y por el subpaso
	call 04093h		;87a6   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_87A9: 19 destinos del despachador p00:4093 (call en p27:87A6, el
;   indice en A): 87CF, 87D9, 87E8, 880B, 882B, 883D, 884B, 8852, 8869, 853D,
;   8554, 8577, 8875, 8889, 88C8, 88D4, 88EC, 8908, 8918; lo leen p27:87A6 (38
;   bytes)
;   0x87a9..0x87cf  (38 bytes)
DATA_tabla_87A9:
	defw 087cfh,087d9h,087e8h,0880bh,0882bh,0883dh,0884bh,08852h	; 87a9
	defw 08869h,0853dh,08554h,08577h,08875h,08889h,088c8h,088d4h	; 87b9
	defw 088ech,08908h,08918h	; 87c9  -> L_88EC L_8908 L_8918

; ======================================================================
; CODIGO 0x87cf..0x88c4  (245 bytes)
; ======================================================================


L_87CF:
	ld hl,06246h		;87cf   ; subpaso 0: la secuencia de 0x6246
	call 0612ah		;87d2   ; la secuencia de 0x6246
	call final_subpaso_siguiente		;87d5   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;87d8
L_87D9:
	call 06135h		;87d9   ; subpaso 1: al acabarla, la orden 0x84
	ret nz			;87dc   ; al acabarla
	call 05951h		;87dd   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	xor a			;87e0   ; sin espera
	ld (0e40ch),a		;87e1
	call final_subpaso_siguiente		;87e4   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;87e7
L_87E8:
	ld hl,0e40ch		;87e8   ; subpaso 2: la orden 0x83, el sonido 0x49, p00:5730, p27:8E4C y 8E63
	dec (hl)			;87eb   ; la espera
	ret nz			;87ec
	call 0594dh		;87ed   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 0581ah		;87f0   ; sonido_49: pide el sonido 0x49
	call 05730h		;87f3   ; la cuenta de 0xE339 a cero
	call L_8E4C		;87f6   ; los graficos de p29:BD4D...
	call L_8E63		;87f9   ; ...y el dibujo de 0x8E70
	ld hl,00000h		;87fc   ; el cuadro 0 y 8 cuadros por paso del ordenador de a bordo
	ld (0e5d0h),hl		;87ff   ; el cuadro 0
	ld a,008h		;8802   ; el ordenador de a bordo cada 8 cuadros
	ld (0e540h),a		;8804
	call final_subpaso_siguiente		;8807   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;880a
L_880B:
	ld hl,0e40ch		;880b   ; subpaso 3: cada 0x1E cuadros p27:8E8E y el cuadro siguiente; al cuarto, 0x3C cuadros
	dec (hl)			;880e   ; la espera
	ret nz			;880f
	call L_8E8E		;8810   ; los sprites del cuadro...
	ld hl,0e5d0h		;8813   ; ...y el siguiente
	inc (hl)			;8816
	ld a,(hl)			;8817
	cp 004h		;8818   ; hasta el 4: 0x1E cuadros cada uno
	jr nc,L_8822		;881a
	ld a,01eh		;881c
	ld (0e40ch),a		;881e
	ret			;8821
L_8822:
	ld a,03ch		;8822   ; acabados: 0x3C cuadros
	ld (0e40ch),a		;8824
	call final_subpaso_siguiente		;8827   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;882a
L_882B:
	call L_8E83		;882b   ; subpaso 4: p27:8E83; al acabar la espera, la secuencia de 0x624F
	ld hl,0e40ch		;882e   ; la espera
	dec (hl)			;8831
	ret nz			;8832
	ld hl,0624fh		;8833   ; la secuencia de 0x624F
	call 0612ah		;8836   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call final_subpaso_siguiente		;8839   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;883c
L_883D:
	call L_8E83		;883d   ; subpaso 5: hasta acabarla; luego p27:8E7C
	call 06135h		;8840   ; hasta acabarla
	ret nz			;8843
	call L_8E7C		;8844   ; los sprites fuera y el cuadro a cero
	call final_subpaso_siguiente		;8847   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;884a
L_884B:
	call L_8C62		;884b   ; subpaso 6: p27:8C62
	call final_subpaso_siguiente		;884e   ; el contador hacia 6809
	ret			;8851
L_8852:
	call L_8CA3		;8852   ; subpaso 7: hasta que el contador llegue (p27:8CA3); luego quieto, el de 0x6102 y 0x78 cuadros
	ret nz			;8855   ; hasta llegar
	ld hl,06102h		;8856   ; con el de 0x6102
	call 060f9h		;8859   ; contador_de_hl: las 6 cifras del contador del ordenador de a bordo, de HL
	xor a			;885c   ; quieto
	ld (0e54ch),a		;885d
	ld a,078h		;8860   ; 0x78 cuadros
	ld (0e40ch),a		;8862
	call final_subpaso_siguiente		;8865   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8868
L_8869:
	ld hl,0e40ch		;8869   ; subpaso 8: al acabar, el bufer a cero
	dec (hl)			;886c   ; la espera
	ret nz			;886d
	call 05959h		;886e   ; el bufer a cero
	call final_subpaso_siguiente		;8871   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8874
L_8875:
	call L_8ADF		;8875   ; subpaso 9: p27:8ADF hasta que 0xE5D6 vuelva a 0; los sprites de abajo fuera (p27:8A6C) y 0x78 cuadros
	ld a,(0e5d6h)		;8878   ; hasta que acabe la nave
	or a			;887b
	ret nz			;887c
	call L_8A6C		;887d   ; los sprites de abajo fuera
	call final_subpaso_siguiente		;8880   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ld a,078h		;8883   ; 0x78 cuadros
	ld (0e40ch),a		;8885
	ret			;8888
L_8889:
	ld hl,0e40ch		;8889   ; subpaso 0x0A: al acabar, los graficos de p29:ABBF y ABD9, 0x1300-0x145F a cero, un rectangulo de 5 x 0x0F (p29:B41C en 0xCC29) y lo de 0x88C4 aparece con 0xF0
	dec (hl)			;888c   ; la espera
	ret nz			;888d
	call 041e4h		;888e   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0abbfh		;8891   ; la lista de p29:ABBF...
	call 04cb1h		;8895   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0abd9h		;8898   ; ...y sus copias
	call 04d17h		;889c   ; copia_con_vuelta_ce00: copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)
	ld hl,01300h		;889f   ; 0x1300-0x145F a cero
	ld bc,00160h		;88a2
	xor a			;88a5
	call 00056h		;88a6   ; BIOS FILVRM - Fills VRAM with value
	ld hl,0b41ch		;88a9   ; el dibujo de p29:B41C, 5 filas de 0x0F en 0xCC29
	ld de,0cc29h		;88ac
	ld bc,0050fh		;88af
	call 059a1h		;88b2   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	call 041bfh		;88b5   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ld hl,088c4h		;88b8   ; lo de 0x88C4 aparece con 0xF0
	ld c,0f0h		;88bb
	call 07978h		;88bd   ; llenado_empieza: empieza a llenar fila a fila la lista HL con el byte C
	call final_subpaso_siguiente		;88c0   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;88c3

; ----------------------------------------------------------------------
; DATOS leido_88C4: 1 bytes que lee p26:7988 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7988 (1 bytes)
;   0x88c4..0x88c5  (1 bytes)
DATA_leido_88C4:
	defb 001h	; 88c4

; ----------------------------------------------------------------------
; DATOS leido_88C5: 3 bytes que leen p26:79C1, p26:79B7, p26:7988 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:79C1, p26:79B7, p26:7988
;   (3 bytes)
;   0x88c5..0x88c8  (3 bytes)
DATA_leido_88C5:
	defb 060h,02ch,000h	; 88c5

; ======================================================================
; CODIGO 0x88c8..0x88e8  (32 bytes)
; ======================================================================


L_88C8:
	call 07a3dh		;88c8   ; subpaso 0x0B: hasta que acabe de aparecer
	ld a,(0e564h)		;88cb   ; lee el llenado fila a fila en marcha
	or a			;88ce   ; hasta que aparezca
	ret nz			;88cf
	call final_subpaso_siguiente		;88d0   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;88d3
L_88D4:
	ld de,01284h		;88d4   ; subpaso 0x0C: a los 0x1284 cuadros de 0xE339, la orden 0x84 y se borra lo de 0x88E8
	call 05737h		;88d7   ; hasta los 0x1284 cuadros
	ret c			;88da
	call 05951h		;88db   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	ld hl,088e8h		;88de   ; se borra lo de 0x88E8
	call 078a2h		;88e1   ; borrado_empieza: empieza a borrar fila a fila la lista HL
	call final_subpaso_siguiente		;88e4   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;88e7

; ----------------------------------------------------------------------
; DATOS leido_88E8: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x88e8..0x88e9  (1 bytes)
DATA_leido_88E8:
	defb 007h	; 88e8

; ----------------------------------------------------------------------
; DATOS leido_88E9: 2 bytes que leen p26:78F6, p26:7905 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:78F6, p26:7905 (2 bytes)
;   0x88e9..0x88eb  (2 bytes)
DATA_leido_88E9:
	defb 001h,0ffh	; 88e9

; ----------------------------------------------------------------------
; DATOS leido_88EB: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x88eb..0x88ec  (1 bytes)
DATA_leido_88EB:
	defb 000h	; 88eb

; ======================================================================
; CODIGO 0x88ec..0x8921  (53 bytes)
; ======================================================================


L_88EC:
	call 078ach		;88ec   ; subpaso 0x0D: al acabar, la pantalla en blanco, el bufer a cero y los sprites fuera
	ld a,(0e560h)		;88ef   ; lee el borrado fila a fila en marcha
	or a			;88f2   ; hasta que se borre
	ret nz			;88f3
	call 04aa9h		;88f4   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call 05959h		;88f7   ; el bufer a cero
	call 05985h		;88fa   ; la pantalla a la VRAM
	call 05648h		;88fd   ; los sprites fuera
	xor a			;8900   ; sin espera
	ld (0e40ch),a		;8901
	call final_subpaso_siguiente		;8904   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8907
L_8908:
	ld hl,0e40ch		;8908   ; subpaso 0x0E: la orden 0x83 y el sonido 1
	dec (hl)			;890b   ; la espera
	ret nz			;890c
	call 0594dh		;890d   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 057eah		;8910   ; sonido_01: pide el sonido 0x01
	xor a			;8913
	call final_subpaso_siguiente		;8914   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8917
L_8918:
	xor a			;8918   ; subpaso 0x0F: 0xE328 = 0, el final acabado
	ld (0e328h),a		;8919   ; guarda 1: el final del juego (al estado 10)
	ret			;891c
L_891D:
	ld a,b			;891d   ; paso 4: por el subpaso
	call 04093h		;891e   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8921: 15 destinos del despachador p00:4093 (call en p27:891E, el
;   indice en A): 893F, 894F, 896A, 897C, 8997, 89A3, 89B8, 89CC, 89DD, 89ED,
;   8A17, 8A2C, 8A38, 8A4A, 8A5F; lo leen p27:891E (30 bytes)
;   0x8921..0x893f  (30 bytes)
DATA_tabla_8921:
	defw 0893fh,0894fh,0896ah,0897ch,08997h,089a3h,089b8h,089cch	; 8921
	defw 089ddh,089edh,08a17h,08a2ch,08a38h,08a4ah,08a5fh	; 8931

; ======================================================================
; CODIGO 0x893f..0x89b4  (117 bytes)
; ======================================================================


L_893F:
	call contador_loco		;893f   ; subpaso 0: p27:8CBF, el ordenador de a bordo y la secuencia de 0x6258
	call 07320h		;8942   ; el ordenador de a bordo
	ld hl,06258h		;8945   ; la secuencia de 0x6258
	call 0612ah		;8948   ; secuencia_de_hl: empieza la secuencia de dibujos de HL
	call final_subpaso_siguiente		;894b   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;894e
L_894F:
	call contador_loco		;894f   ; subpaso 1: hasta acabarla; luego el bufer a cero, los sprites fuera y la orden 0x84
	call 07320h		;8952   ; el ordenador de a bordo
	call 06135h		;8955   ; hasta acabarla
	ret nz			;8958
	call 05959h		;8959   ; el bufer a cero
	call 05648h		;895c   ; los sprites fuera
	call 05951h		;895f   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	xor a			;8962   ; sin espera
	ld (0e40ch),a		;8963
	call final_subpaso_siguiente		;8966   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8969
L_896A:
	ld hl,0e40ch		;896a   ; subpaso 2: la orden 0x83, el sonido 0x41 y la cuenta de 0xE339 a cero
	dec (hl)			;896d   ; la espera
	ret nz			;896e
	call 0594dh		;896f   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 05816h		;8972   ; sonido_41: pide el sonido 0x41
	call 05730h		;8975   ; la cuenta de 0xE339 a cero
	call final_subpaso_siguiente		;8978   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;897b
L_897C:
	ld hl,06265h		;897c   ; subpaso 3: la secuencia de 0x6265 y la pantalla aparece con pausas (p26:796B, desde 0x12 en japones o 0x32)
	call 0612ah		;897f   ; la secuencia de 0x6265
	ld hl,0c400h		;8982   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld c,0f0h		;8985   ; la pantalla (0xC400) aparece con 0xF0...
	call 05636h		;8987   ; ...con pausas desde el trozo 0x12 en japones o 0x32 en ingles
	ld a,012h		;898a
	jr z,L_8990		;898c
	ld a,032h		;898e
L_8990:
	call 0796bh		;8990   ; llenado_con_pausas: empieza a llenar fila a fila con pausas la lista HL con el byte C
	call final_subpaso_siguiente		;8993   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8996
L_8997:
	call 079cfh		;8997   ; subpaso 4: hasta que acabe (p26:79CF)
	ld a,(0e564h)		;899a   ; lee el llenado fila a fila en marcha
	or a			;899d   ; hasta que acabe
	ret nz			;899e
	call final_subpaso_siguiente		;899f   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;89a2
L_89A3:
	ld de,00800h		;89a3   ; subpaso 5: a los 0x800 cuadros de 0xE339, se borra lo de 0x89B4
	call 05737h		;89a6   ; hasta los 0x800 cuadros
	ret c			;89a9
	ld hl,089b4h		;89aa   ; se borra lo de 0x89B4
	call 078a2h		;89ad   ; borrado_empieza: empieza a borrar fila a fila la lista HL
	call final_subpaso_siguiente		;89b0   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;89b3

; ----------------------------------------------------------------------
; DATOS leido_89B4: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x89b4..0x89b5  (1 bytes)
DATA_leido_89B4:
	defb 007h	; 89b4

; ----------------------------------------------------------------------
; DATOS leido_89B5: 2 bytes que leen p26:78F6, p26:7905 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:78F6, p26:7905 (2 bytes)
;   0x89b5..0x89b7  (2 bytes)
DATA_leido_89B5:
	defb 001h,0ffh	; 89b5

; ----------------------------------------------------------------------
; DATOS leido_89B7: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x89b7..0x89b8  (1 bytes)
DATA_leido_89B7:
	defb 000h	; 89b7

; ======================================================================
; CODIGO 0x89b8..0x8b50  (408 bytes)
; ======================================================================


L_89B8:
	call 078ach		;89b8   ; subpaso 6: al acabar, la pantalla en blanco
	ret nz			;89bb   ; hasta que se borre
	call 04aa9h		;89bc   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call 05648h		;89bf   ; los sprites fuera
	call 05959h		;89c2   ; el bufer a cero
	call 05985h		;89c5   ; la pantalla
	call final_subpaso_siguiente		;89c8   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;89cb
L_89CC:
	ld de,00870h		;89cc   ; subpaso 7: a los 0x870, la cuenta a cero y la orden 0x84
	call 05737h		;89cf   ; hasta los 0x870 cuadros
	ret c			;89d2
	call 05730h		;89d3   ; la cuenta a cero
	call 05951h		;89d6   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	call final_subpaso_siguiente		;89d9   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;89dc
L_89DD:
	ld de,00172h		;89dd   ; subpaso 8: a los 0x172, la orden 0x83 y el sonido 1
	call 05737h		;89e0   ; hasta los 0x172
	ret c			;89e3
	call 0594dh		;89e4   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 057eah		;89e7   ; sonido_01: pide el sonido 0x01
	jp final_subpaso_siguiente		;89ea   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
L_89ED:
	ld a,006h		;89ed   ; subpaso 9: la paleta 6, p27:8E21 y 8DF5, la pantalla, el RLE de p29:BBF3 en 0x1E80 y la aparicion de p29:B8B7 (p00:5ED4)
	call 05709h		;89ef   ; la paleta 6
	call L_8E21		;89f2   ; los dibujos de p29:BC13 y 0x8E19
	call L_8DF5		;89f5   ; el dibujo de 0x8E19 (2 x 4) en 0xCB6E
	call 05985h		;89f8   ; la pantalla
	call 05959h		;89fb   ; el bufer a cero
	call 041e4h		;89fe   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld de,0bbf3h		;8a01   ; el RLE de p29:BBF3 en 0x1E80
	ld hl,01e80h		;8a04
	call 04b3ch		;8a07   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld hl,0b8b7h		;8a0a   ; la aparicion poco a poco de p29:B8B7
	call 05ed4h		;8a0d   ; aparicion_empieza: empieza la aparicion poco a poco de las listas de HL
	call 041bfh		;8a10   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	call final_subpaso_siguiente		;8a13   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8a16
L_8A17:
	call 041e4h		;8a17   ; subpaso 0x0A: la aparicion poco a poco hasta acabar (p00:5EEC); el sonido 1
	call 05eech		;8a1a   ; la aparicion, cada cuadro
	call 041bfh		;8a1d   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ld a,(0e518h)		;8a20   ; lee la aparicion poco a poco en marcha (1 o 2)
	or a			;8a23   ; hasta acabarla
	ret nz			;8a24
	call 057eah		;8a25   ; sonido_01: pide el sonido 0x01
	call final_subpaso_siguiente		;8a28   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8a2b
L_8A2C:
	call 05941h		;8a2c   ; subpaso 0x0B: el sonido 0x53 y 0x80 cuadros
	ld a,080h		;8a2f   ; 0x80 cuadros
	ld (0e40ch),a		;8a31
	call final_subpaso_siguiente		;8a34   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8a37
L_8A38:
	ld hl,0e40ch		;8a38   ; subpaso 0x0C: al acabar, el sonido 1 y la aparicion de 0x5ECD (p00:47B3)
	dec (hl)			;8a3b   ; la espera
	ret nz			;8a3c
	call 057eah		;8a3d   ; sonido_01: pide el sonido 0x01
	ld hl,05ecdh		;8a40   ; la aparicion de p00:5ECD con 1-2-3
	call 047b3h		;8a43   ; los puentes: guardan el reparto, ponen el de la rutina, la llaman y lo devuelven (p00:47B3)
	call final_subpaso_siguiente		;8a46   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8a49
L_8A4A:
	call 047bch		;8a4a   ; subpaso 0x0D: hasta acabarla; los sprites fuera y 0xB4 cuadros (16 bits)
	ld a,(0e518h)		;8a4d   ; lee la aparicion poco a poco en marcha (1 o 2)
	or a			;8a50   ; hasta acabarla
	ret nz			;8a51
	call 05648h		;8a52   ; los sprites fuera
	ld hl,000b4h		;8a55   ; 0xB4 cuadros (16 bits)
	ld (0e40ch),hl		;8a58
	call final_subpaso_siguiente		;8a5b   ; final_subpaso_siguiente: el subpaso siguiente del final (0xE32A)
	ret			;8a5e
L_8A5F:
	ld hl,(0e40ch)		;8a5f   ; subpaso 0x0E: al acabar, el final acabado (p27:8918)
	dec hl			;8a62   ; la espera de 16 bits
	ld (0e40ch),hl		;8a63
	ld a,l			;8a66
	or h			;8a67
	ret nz			;8a68
	jp L_8918		;8a69   ; al acabar, el final acabado
L_8A6C:
	ld hl,0ef00h		;8a6c   ; los sprites de la mitad de abajo (y desde 0x7F) fuera (0xE0)
	ld de,00004h		;8a6f   ; 32 sprites
	ld b,020h		;8a72
L_8A74:
	ld a,(hl)			;8a74   ; desde la y 0x7F, fuera
	cp 07fh		;8a75
	jr c,L_8A7B		;8a77
	ld (hl),0e0h		;8a79
L_8A7B:
	add hl,de			;8a7b
	djnz L_8A74		;8a7c
	ret			;8a7e
L_8A7F:
	call 041e4h		;8a7f   ; los graficos del planeta: las listas de p29:AB9A y ABCC
	ld ix,0ab9ah		;8a82   ; la lista de p29:AB9A...
	call 04cb1h		;8a86   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0abcch		;8a89   ; ...y sus copias
	call 04d17h		;8a8d   ; copia_con_vuelta_ce00: copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)
	call 041bfh		;8a90   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8a93
L_8A94:
	call 041e4h		;8a94   ; los dibujos de sprite de p29:BC4A en 0x1800
	ld de,0bc4ah		;8a97   ; p29:BC4A...
	ld hl,01800h		;8a9a   ; ...en 0x1800
	call 04b3ch		;8a9d   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	call 041bfh		;8aa0   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8aa3
L_8AA4:
	ld hl,04200h		;8aa4   ; una nave que cruza: la segunda (y 0x4200, x 0x4E00)...
	ld de,04e00h		;8aa7   ; la nave 2
	ld a,002h		;8aaa
	jr L_8AB6		;8aac
L_8AAE:
	ld hl,0bf00h		;8aae   ; ...o la primera (y 0xBF00, x 0x1900)
	ld de,01900h		;8ab1   ; la nave 1
	ld a,001h		;8ab4
L_8AB6:
	ld (0e5d6h),a		;8ab6   ; 0xE5D6 la nave (1 o 2), su tramo 0 y su sitio (16 bits)
	xor a			;8ab9   ; el tramo 0
	ld (0e5d8h),a		;8aba
	ld (0e5dch),hl		;8abd   ; su y y su x
	ld (0e5deh),de		;8ac0
	call L_8AD1		;8ac4   ; los sprites fuera, el tramo (p27:8BF1), sus dibujos (p27:8B90) y su sitio (p27:8B1C)
	call L_8BF1		;8ac7   ; el tramo, sus dibujos y su sitio
	call L_8B90		;8aca   ; los dibujos y colores de sus sprites: el tramo de la tabla (0x8BB1 o 0x8BD1)
	call L_8B1C		;8acd   ; sus sprites: el tramo de la tabla (0x8B70 la nave 1, 0x8B50 la 2), cuantos, y cada uno su y y su x sobre la de la nave
	ret			;8ad0
L_8AD1:
	ld hl,0ef00h		;8ad1   ; los tres primeros sprites fuera (0xE0)
	ld de,0ef01h		;8ad4   ; 12 bytes
	ld bc,0000bh		;8ad7
	ld (hl),0e0h		;8ada
	ldir		;8adc
	ret			;8ade
L_8ADF:
	call L_8B05		;8adf   ; cada cuadro se mueve (p27:8B05) y se pinta; al acabar el tramo, el siguiente; a los 7, acaba (0xE5D6 = 0)
	call L_8B1C		;8ae2   ; se pinta
	ld hl,0e5d7h		;8ae5   ; los cuadros del tramo
	dec (hl)			;8ae8
	ret nz			;8ae9
	call L_8AD1		;8aea   ; acabados: los sprites fuera...
	ld hl,0e5d8h		;8aed   ; ...y el tramo siguiente
	inc (hl)			;8af0
	ld a,(hl)			;8af1
	cp 007h		;8af2   ; a los 7, acabado
	jr nc,L_8B00		;8af4
	call L_8BF1		;8af6   ; el nuevo tramo
	call L_8B90		;8af9   ; los dibujos y colores de sus sprites: el tramo de la tabla (0x8BB1 o 0x8BD1)
	call L_8B1C		;8afc   ; sus sprites: el tramo de la tabla (0x8B70 la nave 1, 0x8B50 la 2), cuantos, y cada uno su y y su x sobre la de la nave
	ret			;8aff
L_8B00:
	xor a			;8b00   ; acabado (0xE5D6 = 0)
	ld (0e5d6h),a		;8b01
	ret			;8b04
L_8B05:
	ld hl,(0e5dch)		;8b05   ; la y + 0xE5E2 y la x + 0xE5E4 (16 bits)
	ld de,(0e5e2h)		;8b08   ; la y + su velocidad
	add hl,de			;8b0c
	ld (0e5dch),hl		;8b0d
	ld hl,(0e5deh)		;8b10   ; la x + la suya
	ld de,(0e5e4h)		;8b13
	add hl,de			;8b17
	ld (0e5deh),hl		;8b18
	ret			;8b1b
L_8B1C:
	ld a,(0e5ddh)		;8b1c   ; sus sprites: el tramo de la tabla (0x8B70 la nave 1, 0x8B50 la 2), cuantos, y cada uno su y y su x sobre la de la nave
	ld b,a			;8b1f   ; la y (B) y la x (C) de la nave
	ld a,(0e5dfh)		;8b20
	ld c,a			;8b23
	ld hl,08b70h		;8b24   ; la tabla de la nave 1 (0x8B70)...
	ld a,(0e5d6h)		;8b27
	dec a			;8b2a
	jr z,L_8B30		;8b2b
	ld hl,08b50h		;8b2d   ; ...o la de la 2 (0x8B50)
L_8B30:
	ld a,(0e5d8h)		;8b30   ; el tramo
	call 04a5ah		;8b33   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(hl)			;8b36   ; cuantos sprites
	exx			;8b37
	ld b,a			;8b38
	exx			;8b39
	ld de,0ef00h		;8b3a   ; apunta a los atributos de sprite (32 x 4)
	inc hl			;8b3d
L_8B3E:
	ld a,(hl)			;8b3e   ; cada uno: su y sobre la de la nave...
	add a,b			;8b3f
	ld (de),a			;8b40
	inc hl			;8b41
	inc de			;8b42
	ld a,(hl)			;8b43   ; ...y su x
	add a,c			;8b44
	ld (de),a			;8b45
	inc hl			;8b46
	inc de			;8b47
	inc de			;8b48
	inc de			;8b49
	exx			;8b4a   ; el siguiente
	dec b			;8b4b
	exx			;8b4c
	jr nz,L_8B3E		;8b4d
	ret			;8b4f

; ----------------------------------------------------------------------
; DATOS tabla_8B50: tabla que se lee desde HL = 0x8B50 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8B2D (14 bytes)
;   0x8b50..0x8b5e  (14 bytes)
DATA_tabla_8B50:
	defb 05eh,08bh,05eh,08bh,061h,08bh,061h,08bh,064h,08bh,064h,08bh,069h,08bh	; 8b50  ^.^.a.a.d.d.i.

; ----------------------------------------------------------------------
; DATOS leido_8B5E: 18 bytes que leen p27:8B36, p27:8B3E, p27:8B43 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p27:8B36, p27:8B3E, p27:8B43
;   (18 bytes)
;   0x8b5e..0x8b70  (18 bytes)
DATA_leido_8B5E:
	defb 001h,0ffh,0feh,001h,0feh,0fdh,002h,0fbh,0fah,0fbh,0fah,003h,0f5h,0f2h,0f5h,0f4h	; 8b5e  ................
	defb 0f7h,0fch	; 8b6e

; ----------------------------------------------------------------------
; DATOS leido_8B70: 14 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (14 bytes)
;   0x8b70..0x8b7e  (14 bytes)
DATA_leido_8B70:
	defb 07eh,08bh,07eh,08bh,085h,08bh,085h,08bh,08ah,08bh,08ah,08bh,08dh,08bh	; 8b70  ~.~...........

; ----------------------------------------------------------------------
; DATOS leido_8B7E: 18 bytes que leen p27:8B36, p27:8B3E, p27:8B43 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p27:8B36, p27:8B3E, p27:8B43
;   (18 bytes)
;   0x8b7e..0x8b90  (18 bytes)
DATA_leido_8B7E:
	defb 003h,0fbh,0efh,0fbh,0f8h,0fbh,0ffh,002h,0f5h,0f7h,0f5h,0f7h,001h,0f4h,0f5h,001h	; 8b7e  ................
	defb 0f2h,0f3h	; 8b8e

; ======================================================================
; CODIGO 0x8b90..0x8bb1  (33 bytes)
; ======================================================================


L_8B90:
	ld hl,08bb1h		;8b90   ; los dibujos y colores de sus sprites: el tramo de la tabla (0x8BB1 o 0x8BD1)
	ld a,(0e5d6h)		;8b93   ; la nave 2: 0x8BD1
	dec a			;8b96
	jr z,L_8B9C		;8b97
	ld hl,08bd1h		;8b99
L_8B9C:
	ld a,(0e5d8h)		;8b9c   ; el tramo
	call 04a5ah		;8b9f   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(hl)			;8ba2   ; cuantos
	inc hl			;8ba3
	ld de,0ef02h		;8ba4   ; desde el dibujo del primer sprite
L_8BA7:
	ldi		;8ba7   ; el dibujo y el color de cada uno
	ldi		;8ba9
	inc de			;8bab
	inc de			;8bac
	dec a			;8bad
	jr nz,L_8BA7		;8bae
	ret			;8bb0

; ----------------------------------------------------------------------
; DATOS leido_8BB1: 14 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (14 bytes)
;   0x8bb1..0x8bbf  (14 bytes)
DATA_leido_8BB1:
	defb 0bfh,08bh,0bfh,08bh,0c6h,08bh,0c6h,08bh,0cbh,08bh,0cbh,08bh,0ceh,08bh	; 8bb1  ..............

; ----------------------------------------------------------------------
; DATOS leido_8BBF: 18 bytes que leen p27:8BA2, p27:8BA7, p27:8BA9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p27:8BA2, p27:8BA7, p27:8BA9
;   (18 bytes)
;   0x8bbf..0x8bd1  (18 bytes)
DATA_leido_8BBF:
	defb 003h,000h,00fh,008h,005h,004h,00fh,002h,00ch,00fh,010h,005h,001h,014h,00fh,001h	; 8bbf  ................
	defb 018h,007h	; 8bcf

; ----------------------------------------------------------------------
; DATOS tabla_8BD1: tabla que se lee desde HL = 0x8BD1 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8B99 (14 bytes)
;   0x8bd1..0x8bdf  (14 bytes)
DATA_tabla_8BD1:
	defb 0dfh,08bh,0dfh,08bh,0e2h,08bh,0e2h,08bh,0e5h,08bh,0e5h,08bh,0eah,08bh	; 8bd1  ..............

; ----------------------------------------------------------------------
; DATOS leido_8BDF: 18 bytes que leen p27:8BA2, p27:8BA7, p27:8BA9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p27:8BA2, p27:8BA7, p27:8BA9
;   (18 bytes)
;   0x8bdf..0x8bf1  (18 bytes)
DATA_leido_8BDF:
	defb 001h,01ch,007h,001h,020h,00fh,002h,024h,00fh,028h,005h,003h,02ch,00fh,034h,005h	; 8bdf  .... ..$.(..,.4.
	defb 030h,00fh	; 8bef

; ======================================================================
; CODIGO 0x8bf1..0x8c1c  (43 bytes)
; ======================================================================


L_8BF1:
	ld hl,08c1ch		;8bf1   ; el tramo 0xE5D8 de la tabla (0x8C1C o 0x8C3F), 5 bytes: los cuadros (0xE5D7) y las velocidades en y y en x
	ld a,(0e5d6h)		;8bf4   ; la nave 2: 0x8C3F
	dec a			;8bf7
	jr z,L_8BFD		;8bf8
	ld hl,08c3fh		;8bfa
L_8BFD:
	ld a,(0e5d8h)		;8bfd   ; el tramo x 5
	ld b,a			;8c00
	add a,a			;8c01
	add a,a			;8c02
	add a,b			;8c03
	call 04089h		;8c04   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;8c07   ; sus cuadros
	ld (0e5d7h),a		;8c08
	inc hl			;8c0b
	ld e,(hl)			;8c0c   ; la velocidad en y
	inc hl			;8c0d
	ld d,(hl)			;8c0e
	ld (0e5e2h),de		;8c0f
	inc hl			;8c13
	ld e,(hl)			;8c14   ; la velocidad en x
	inc hl			;8c15
	ld d,(hl)			;8c16
	ld (0e5e4h),de		;8c17
	ret			;8c1b

; ----------------------------------------------------------------------
; DATOS leido_8C1C: 35 bytes que leen p27:8C07, p27:8C0C, p27:8C0E, p27:8C14,
;   p27:8C16 al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p27:8C07, p27:8C0C, p27:8C0E, p27:8C14, p27:8C16 (35 bytes)
;   0x8c1c..0x8c3f  (35 bytes)
DATA_leido_8C1C:
	defb 02dh,03fh,0ffh,0c7h,001h,01eh,05eh,0ffh,0e6h,000h,01eh,078h,0ffh,0b3h,000h,01eh	; 8c1c  -?....^....x....
	defb 06fh,0ffh,091h,000h,01eh,067h,0ffh,04ch,000h,01eh,092h,0ffh,011h,000h,01eh,0bch	; 8c2c  o....g.L........
	defb 0ffh,0deh,0ffh	; 8c3c

; ----------------------------------------------------------------------
; DATOS leido_8C3F: 35 bytes que leen p27:8C07, p27:8C0C, p27:8C0E, p27:8C14,
;   p27:8C16 al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p27:8C07, p27:8C0C, p27:8C0E, p27:8C14, p27:8C16 (35 bytes)
;   0x8c3f..0x8c62  (35 bytes)
DATA_leido_8C3F:
	defb 01eh,044h,000h,0deh,0ffh,01eh,044h,000h,0efh,0ffh,01eh,03bh,000h,000h,000h,01eh	; 8c3f  .D....D.........
	defb 044h,000h,008h,000h,01eh,0a2h,000h,077h,000h,01eh,0bbh,000h,011h,001h,04bh,0cch	; 8c4f  D......w......K.
	defb 000h,099h,001h	; 8c5f

; ======================================================================
; CODIGO 0x8c62..0x8d36  (212 bytes)
; ======================================================================


L_8C62:
	ld a,(0e54fh)		;8c62   ; el contador (cifras 0xE54F-0xE552) contra 6809: por debajo sube (0xE54C = 1), por encima baja (2)
	ld h,a			;8c65   ; las dos primeras cifras (6 y 8)
	ld a,(0e550h)		;8c66
	ld l,a			;8c69
	ld de,00608h		;8c6a
	rst 20h			;8c6d
	jr z,L_8C74		;8c6e   ; iguales: las otras dos
	jr c,L_8C8B		;8c70   ; menos: sube
	jr L_8C8F		;8c72   ; mas: baja
L_8C74:
	ld a,(0e551h)		;8c74   ; las dos ultimas contra 0 y 9
	ld h,a			;8c77   ; la tercera y la cuarta (0 y 9)
	ld a,(0e552h)		;8c78
	ld l,a			;8c7b
	ld de,00009h		;8c7c
	rst 20h			;8c7f
	jr z,L_8C86		;8c80
	jr c,L_8C8B		;8c82
	jr nc,L_8C8F		;8c84
L_8C86:
	dec de			;8c86   ; igual: 0xE54F = 8 y 0xE550 = 0, y sube
	ld (0e54fh),de		;8c87   ; 8 y 0 en las dos primeras
L_8C8B:
	ld a,001h		;8c8b   ; ...sube...
	jr L_8C91		;8c8d
L_8C8F:
	ld a,002h		;8c8f   ; ...o baja
L_8C91:
	ld (0e54ch),a		;8c91   ; el modo
	ld hl,00001h		;8c94   ; de uno en uno
	ld (0e54dh),hl		;8c97   ; de uno en uno
	ret			;8c9a
L_8C9B:
	ld de,00606h		;8c9b   ; Z si el contador vale 6644 (el del final, G6644)
	ld bc,00404h		;8c9e   ; 6644
	jr L_8CA9		;8ca1
L_8CA3:
	ld de,00608h		;8ca3   ; Z si vale 6809 (G6809)
	ld bc,00009h		;8ca6   ; 6809
L_8CA9:
	ld a,(0e54fh)		;8ca9   ; las dos primeras contra D y E
	ld h,a			;8cac
	ld a,(0e550h)		;8cad
	ld l,a			;8cb0
	rst 20h			;8cb1
	ret nz			;8cb2
	ld a,(0e551h)		;8cb3   ; y las otras dos contra B y C
	ld h,a			;8cb6
	ld a,(0e552h)		;8cb7
	ld l,a			;8cba
	ld d,b			;8cbb
	ld e,c			;8cbc
	rst 20h			;8cbd
	ret			;8cbe
contador_loco:		; el contador cambia al azar cada 4 cuadros
	ld a,(0e303h)		;8cbf   ; cada 4 cuadros el contador cambia de modo (1-2) y de paso al azar: se vuelve loco
	and 003h		;8cc2   ; cada 4 cuadros
	ret nz			;8cc4
	ld hl,0e54ch		;8cc5   ; el modo: 1, 2, 1, 2...
	ld a,(hl)			;8cc8
	inc a			;8cc9
	cp 003h		;8cca
	jr c,L_8CD0		;8ccc
	ld a,001h		;8cce
L_8CD0:
	ld (hl),a			;8cd0
	ld a,r		;8cd1   ; y el paso al azar
	and 003h		;8cd3
	ld l,a			;8cd5
	and 001h		;8cd6
	ld h,a			;8cd8
	ld (0e54dh),hl		;8cd9
	ret			;8cdc
L_8CDD:
	call 041e4h		;8cdd   ; con el 29, la lista de graficos de p29:AACE
	ld ix,0aaceh		;8ce0   ; la lista de p29:AACE
	call 04cb1h		;8ce4   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	call 041bfh		;8ce7   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8cea
L_8CEB:
	ld a,(0e303h)		;8ceb   ; cada 8 cuadros, el cuadro de 0xCA48 a cero o el dibujo de p22:B8F6 (parpadea)
	bit 3,a		;8cee   ; cada 8 cuadros...
	jp z,060c0h		;8cf0   ; ...a cero...
	call 041ach		;8cf3   ; bancos_22: pone el 22 (y sus copias en 0xF0F1-3)
	ld hl,0b8f6h		;8cf6   ; ...o el dibujo de p22:B8F6
	call 06067h		;8cf9   ; la tabla en IX (p26:6067)
	call 041bfh		;8cfc   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8cff
L_8D00:
	call 041f7h		;8d00   ; con el 22, los colores de la nave elegida (tabla de 0x8D36) en 0x2488 y 0x2C88, y sus dibujos a 0xF0
	call 041ach		;8d03   ; bancos_22: pone el 22 (y sus copias en 0xF0F1-3)
	ld a,(0e380h)		;8d06   ; lee la nave elegida (0 a 3)
	ld hl,08d36h		;8d09   ; la tabla de colores de la nave
	call 04a5ah		;8d0c   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;8d0f
	push de			;8d10
	ld hl,02488h		;8d11   ; al tercio de enmedio...
	call 04b3ch		;8d14   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	pop de			;8d17
	ld hl,02c88h		;8d18   ; ...y al de abajo
	call 04b3ch		;8d1b   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld a,0f0h		;8d1e   ; sus dibujos a 0xF0 (0x378 bytes en cada tercio)
	ld hl,00488h		;8d20
	ld bc,00378h		;8d23
	call 00056h		;8d26   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00c88h		;8d29
	ld bc,00378h		;8d2c
	call 00056h		;8d2f   ; BIOS FILVRM - Fills VRAM with value
	call 04213h		;8d32   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
	ret			;8d35

; ----------------------------------------------------------------------
; DATOS tabla_8D36: tabla que se lee desde HL = 0x8D36 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8D09 (8 bytes)
;   0x8d36..0x8d3e  (8 bytes)
DATA_tabla_8D36:
	defb 046h,0b4h,086h,0b5h,099h,0b6h,0a6h,0b7h	; 8d36  F.......

; ======================================================================
; CODIGO 0x8d3e..0x8d5d  (31 bytes)
; ======================================================================


L_8D3E:
	ld hl,0a23eh		;8d3e   ; la nave elegida (p28:A23E en 0xE800, tabla de 0x8D5D) en 0xCAA9, 6 filas de 0x0E, con sus caracteres desde 0x80
	ld de,0e800h		;8d41   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;8d44   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	call L_8D65		;8d47   ; a los caracteres 0x81-0x100
	ld a,(0e380h)		;8d4a   ; lee la nave elegida (0 a 3)
	ld hl,08d5dh		;8d4d   ; la tabla de la nave
	call 04a5ah		;8d50   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,0caa9h		;8d53   ; 6 filas de 0x0E en 0xCAA9
	ld bc,0060eh		;8d56
	call 059a1h		;8d59   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;8d5c

; ----------------------------------------------------------------------
; DATOS tabla_8D5D: tabla que se lee desde HL = 0x8D5D con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8D4D (8 bytes)
;   0x8d5d..0x8d65  (8 bytes)
DATA_tabla_8D5D:
	defb 000h,0e8h,054h,0e8h,0a8h,0e8h,0fch,0e8h	; 8d5d  ..T.....

; ======================================================================
; CODIGO 0x8d65..0x8da9  (68 bytes)
; ======================================================================


L_8D65:
	ld hl,0e800h		;8d65   ; 0x150 bytes: los caracteres de 1 a 0x80 pasan a 0x81-0x100
	ld bc,00150h		;8d68   ; 0x150 bytes
L_8D6B:
	ld a,(hl)			;8d6b   ; los de 1 a 0x80, + 0x80
	or a			;8d6c
	jr z,L_8D76		;8d6d
	cp 081h		;8d6f
	jr nc,L_8D76		;8d71
	add a,080h		;8d73
	ld (hl),a			;8d75
L_8D76:
	inc hl			;8d76   ; el siguiente
	dec bc			;8d77   ; 0x150 veces
	ld a,b			;8d78
	or c			;8d79
	jr nz,L_8D6B		;8d7a
	ret			;8d7c
L_8D7D:
	ld a,(0e303h)		;8d7d   ; cada 4 cuadros sus sprites (12 bytes de la tabla de 0x8DA9 por nave) o nada (parpadean)
	bit 2,a		;8d80   ; cada 4 cuadros...
	jr nz,L_8D92		;8d82
L_8D84:
	ld hl,0ef40h		;8d84   ; los tres sprites de 0xEF40 fuera
	ld de,0ef41h		;8d87   ; ...fuera...
	ld bc,0000bh		;8d8a
	ld (hl),0e0h		;8d8d
	ldir		;8d8f
	ret			;8d91
L_8D92:
	ld a,(0e380h)		;8d92   ; lee la nave elegida (0 a 3)
	add a,a			;8d95   ; ...o los de la nave: x 12...
	add a,a			;8d96
	ld b,a			;8d97
	add a,a			;8d98
	add a,b			;8d99
	ld hl,08da9h		;8d9a
	call 04089h		;8d9d   ; suma_a_hl: HL = HL + A
	ld de,0ef40h		;8da0   ; ...en 0xEF40
	ld bc,0000ch		;8da3
	ldir		;8da6
	ret			;8da8

; ----------------------------------------------------------------------
; DATOS tabla_8DA9: tabla que se lee desde HL = 0x8DA9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8D9A (48 bytes)
;   0x8da9..0x8dd9  (48 bytes)
DATA_tabla_8DA9:
	defb 034h,060h,0c0h,008h,03fh,050h,0c0h,008h,046h,07fh,0c0h,008h,02eh,060h,0c0h,008h	; 8da9  4`..?P..F....`..
	defb 037h,07fh,0c0h,008h,046h,068h,0c0h,008h,03eh,058h,0c0h,008h,046h,080h,0c0h,008h	; 8db9  7...Fh..>X..F...
	defb 04eh,050h,0c0h,008h,02eh,058h,0c0h,008h,03fh,090h,0c0h,008h,047h,060h,0c0h,008h	; 8dc9  NP...X..?...G`..

; ======================================================================
; CODIGO 0x8dd9..0x8e11  (56 bytes)
; ======================================================================


L_8DD9:
	call 041e4h		;8dd9   ; con el 29, la lista de graficos de p29:B8BB, sus copias y el RLE de p29:BBF3 en 0x1E80
	ld ix,0b8bbh		;8ddc   ; la lista de p29:B8BB...
	call 04cb1h		;8de0   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	inc ix		;8de3   ; ...y sus copias
	call 04d17h		;8de5   ; copia_con_vuelta_ce00: copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)
	ld de,0bbf3h		;8de8   ; y el RLE de p29:BBF3 en 0x1E80
	ld hl,01e80h		;8deb
	call 04b3ch		;8dee   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	call 041bfh		;8df1   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8df4
L_8DF5:
	ld hl,08e19h		;8df5   ; el dibujo de 0x8E19 (2 x 4) en 0xCB6E
	jr L_8E07		;8df8
L_8DFA:
	ld a,(0e303h)		;8dfa   ; cada 8 cuadros el de 0x8E19 o el de 0x8E11 (parpadea)
	bit 3,a		;8dfd   ; cada 8 cuadros uno u otro
	ld hl,08e19h		;8dff
	jr z,L_8E07		;8e02
L_8E04:
	ld hl,08e11h		;8e04
L_8E07:
	ld de,0cb6eh		;8e07
	ld bc,00204h		;8e0a
	call 059a1h		;8e0d   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;8e10

; ----------------------------------------------------------------------
; DATOS leido_8E11: 16 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (16 bytes)
;   0x8e11..0x8e21  (16 bytes)
DATA_leido_8E11:
	defb 099h,090h,091h,0b5h,0abh,092h,093h,0c7h,09ah,094h,095h,0b6h,0abh,096h,097h,0c7h	; 8e11  ................

; ======================================================================
; CODIGO 0x8e21..0x8e48  (39 bytes)
; ======================================================================


L_8E21:
	call 041e4h		;8e21   ; el dibujo de p29:BC13 (8 filas de 0x10) en 0xCAA8 y un sprite de 0x8E48
	ld hl,0bc13h		;8e24
	ld de,0e800h		;8e27   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;8e2a   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	ld bc,00810h		;8e2d
	ld hl,0e800h		;8e30   ; apunta a los enemigos (12 de 0x40)
	ld de,0caa8h		;8e33
	call 059a1h		;8e36   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	call 041bfh		;8e39   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ld hl,08e48h		;8e3c
	ld de,0ef40h		;8e3f
	ld bc,00004h		;8e42
	ldir		;8e45
	ret			;8e47

; ----------------------------------------------------------------------
; DATOS leido_8E48: 4 bytes que lee p27:8E45 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p27:8E45 (4 bytes)
;   0x8e48..0x8e4c  (4 bytes)
DATA_leido_8E48:
	defb 02fh,078h,0d0h,008h	; 8e48

; ======================================================================
; CODIGO 0x8e4c..0x8e70  (36 bytes)
; ======================================================================


L_8E4C:
	call 041e4h		;8e4c   ; con el 29, la lista de p29:BD4D y el RLE de p29:BDCA en 0x1DE0
	ld ix,0bd4dh		;8e4f
	call 04cb1h		;8e53   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld de,0bdcah		;8e56
	ld hl,01de0h		;8e59
	call 04b3ch		;8e5c   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	call 041bfh		;8e5f   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8e62
L_8E63:
	ld hl,08e70h		;8e63   ; el dibujo de 0x8E70 (3 x 4) en 0xCACE
	ld de,0caceh		;8e66
	ld bc,00304h		;8e69
	call 059a1h		;8e6c   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;8e6f

; ----------------------------------------------------------------------
; DATOS leido_8E70: 12 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (12 bytes)
;   0x8e70..0x8e7c  (12 bytes)
DATA_leido_8E70:
	defb 063h,000h,000h,000h,064h,065h,066h,067h,08bh,08ch,08dh,08eh	; 8e70  c...defg....

; ======================================================================
; CODIGO 0x8e7c..0x8eb2  (54 bytes)
; ======================================================================


L_8E7C:
	call L_8EA4		;8e7c   ; los sprites de 0xEF40 fuera y el cuadro de 0xCA48 a cero
	call 060c0h		;8e7f   ; borra_cuadro_ca48: borra en el bufer 0x0B x 0x10 desde 0xCA48
	ret			;8e82
L_8E83:
	ld a,(0e303h)		;8e83   ; cada 2 cuadros el dibujo 2 o 3
	rra			;8e86
	and 001h		;8e87
	add a,002h		;8e89
	ld (0e5d0h),a		;8e8b
L_8E8E:
	call L_8EA4		;8e8e   ; los sprites del dibujo 0xE5D0 (tabla de 0x8EB2: cuantos bytes y ellos) en 0xEF40
	ld a,(0e5d0h)		;8e91
	ld hl,08eb2h		;8e94
	call 04a5ah		;8e97   ; lee_palabra: HL = la palabra A de la tabla HL
	ld c,(hl)			;8e9a
	ld b,000h		;8e9b
	inc hl			;8e9d
	ld de,0ef40h		;8e9e
	ldir		;8ea1
	ret			;8ea3
L_8EA4:
	ld hl,0ef40h		;8ea4   ; 0x18 bytes de sprites fuera (0xE0)
	ld de,0ef41h		;8ea7
	ld bc,00017h		;8eaa
	ld (hl),0e0h		;8ead
	ldir		;8eaf
	ret			;8eb1

; ----------------------------------------------------------------------
; DATOS tabla_8EB2: tabla que se lee desde HL = 0x8EB2 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8E94 (8 bytes)
;   0x8eb2..0x8eba  (8 bytes)
DATA_tabla_8EB2:
	defb 0bah,08eh,0bfh,08eh,0d0h,08eh,0e9h,08eh	; 8eb2  ........

; ----------------------------------------------------------------------
; DATOS leido_8EBA: 72 bytes que leen p27:8E9A, p27:8EA1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p27:8E9A, p27:8EA1 (72 bytes)
;   0x8eba..0x8f02  (72 bytes)
DATA_leido_8EBA:
	defb 004h,037h,07bh,0bch,003h,010h,02fh,070h,0c0h,003h,02fh,080h,0c4h,003h,03fh,070h	; 8eba  .7{.../p../...?p
	defb 0c8h,003h,03fh,080h,0cch,003h,018h,02fh,06dh,0d0h,003h,02fh,07dh,0d4h,003h,02fh	; 8eca  ..?..../m../}../
	defb 08dh,0d8h,003h,03fh,06dh,0dch,003h,03fh,07dh,0e0h,003h,03fh,08dh,0e4h,003h,018h	; 8eda  ...?m..?}..?....
	defb 02fh,06bh,0e8h,00ch,02fh,07bh,0ech,00ch,02fh,08bh,0f0h,00ch,03fh,06bh,0f4h,00ch	; 8eea  /k../{../...?k..
	defb 03fh,07bh,0f8h,00ch,03fh,08bh,0fch,00ch	; 8efa  ?{..?...

; ----------------------------------------------------------------------
; DATOS dibujos_de_secuencia: un puntero por dibujo de las secuencias (0x89:
;   p26:62AF, 0x8F02 + 2 x A); los que no se usan apuntan al 0; lo leen
;   p00:4A6A (274 bytes)
;   0x8f02..0x9014  (274 bytes)
DATA_dibujos_de_secuencia:
	defw 09014h,09029h,09040h,09055h,09060h,0907dh,090b2h,090cbh	; 8f02
	defw 0910ah,09130h,0914ah,09172h,09192h,091cdh,091e0h,091f3h	; 8f12
	defw 09206h,0921ah,09245h,09262h,09285h,092a3h,092b7h,092c9h	; 8f22
	defw 092e7h,092fbh,09319h,0933dh,0934fh,09360h,0937ch,0938dh	; 8f32
	defw 0939dh,093b2h,093c7h,093f1h,09408h,0941bh,09442h,0946fh	; 8f42
	defw 09482h,094a2h,094b5h,094c1h,094d1h,094fbh,09524h,09533h	; 8f52
	defw 0957dh,09653h,09695h,096bfh,0972ch,09324h,09014h,09014h	; 8f62
	defw 09014h,09014h,09014h,09014h,09014h,09014h,09014h,09014h	; 8f72
	defw 09773h,09796h,097bch,097d8h,097e8h,09806h,0982dh,09844h	; 8f82
	defw 09871h,09890h,098a2h,098c4h,098e1h,09905h,09916h,09928h	; 8f92
	defw 0993ah,09960h,09997h,099beh,099f4h,09a1dh,09a3bh,09a52h	; 8fa2
	defw 09a7ch,09aa1h,09abfh,09afeh,09b16h,09b2eh,09b51h,09b6ch	; 8fb2
	defw 09b84h,09b99h,09bb4h,09bd8h,09c01h,09c23h,09c44h,09c71h	; 8fc2
	defw 09c83h,09cabh,09cbfh,09ccbh,09ce0h,09d0dh,09d38h,09d43h	; 8fd2
	defw 09e8eh,09f4bh,09f8eh,09fc4h,0a019h,09ad4h,09014h,09014h	; 8fe2
	defw 09014h,09014h,09014h,09014h,09014h,09014h,09014h,09014h	; 8ff2
	defw 09da7h,09dbah,09de1h,09df0h,09dfch,09e0ch,09e37h,09e4fh	; 9002
	defw 09e76h	; 9012  -> DATA_dibujo_88

; ----------------------------------------------------------------------
; DATOS dibujo_00: el dibujo de secuencia 0x00, 0x36, 0x37, 0x38, 0x39, 0x3A y
;   otros (p26:6349): trozos de dos bytes, cuantos caracteres, el tercio y el
;   final, y sus caracteres de 8 en 8 con una mascara; lo leen p26:634C,
;   p26:6350, p26:637C (21 bytes)
;   0x9014..0x9029  (21 bytes)
DATA_dibujo_00:
	defb 068h,0cch,0d0h,000h,02ch,08ah,06dh,076h,07fh,067h,083h,0b4h,068h,047h,006h,04ah	; 9014  h...,.mv.g..hG.J
	defb 058h,01ch,061h,03ch,02dh	; 9024

; ----------------------------------------------------------------------
; DATOS dibujo_01: el dibujo de secuencia 0x01 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (23 bytes)
;   0x9029..0x9040  (23 bytes)
DATA_dibujo_01:
	defb 068h,0cch,0d1h,064h,02ch,001h,050h,0b3h,0a4h,049h,050h,0cah,014h,0f9h,043h,0c9h	; 9029  h..d,.P..IP...C.
	defb 047h,042h,045h,04bh,03ch,000h,02dh	; 9039

; ----------------------------------------------------------------------
; DATOS dibujo_02: el dibujo de secuencia 0x02 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (21 bytes)
;   0x9040..0x9055  (21 bytes)
DATA_dibujo_02:
	defb 068h,0cch,0d0h,000h,02ch,0dah,0aah,045h,048h,0d3h,0a4h,09ah,0a8h,006h,056h,03fh	; 9040  h...,..EH.....V?
	defb 042h,045h,04bh,03ch,02dh	; 9050

; ----------------------------------------------------------------------
; DATOS dibujo_03: el dibujo de secuencia 0x03 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (11 bytes)
;   0x9055..0x9060  (11 bytes)
DATA_dibujo_03:
	defb 06dh,0cch,0c7h,000h,02ch,0bfh,0e3h,048h,025h,025h,025h	; 9055  m...,..H%%%

; ----------------------------------------------------------------------
; DATOS dibujo_04: el dibujo de secuencia 0x04 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (29 bytes)
;   0x9060..0x907d  (29 bytes)
DATA_dibujo_04:
	defb 065h,0cch,0d7h,010h,002h,007h,006h,009h,0e4h,028h,085h,07eh,008h,088h,093h,069h	; 9060  e........(.~...i
	defb 071h,028h,007h,007h,005h,000h,005h,030h,001h,002h,061h,03ch,02dh	; 9070  q(.....0..a<-

; ----------------------------------------------------------------------
; DATOS dibujo_05: el dibujo de secuencia 0x05 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (53 bytes)
;   0x907d..0x90b2  (53 bytes)
DATA_dibujo_05:
	defb 047h,0cch,051h,000h,02ch,08ah,06dh,076h,07fh,067h,083h,047h,0c8h,051h,052h,048h	; 907d  G.Q.,.mv.g.G.QRH
	defb 028h,053h,0d3h,004h,0c1h,000h,047h,084h,0cch,0d8h,000h,086h,091h,068h,07dh,071h	; 908d  (S....G......h}q
	defb 025h,08ah,02fh,000h,077h,083h,047h,040h,047h,07eh,02fh,087h,000h,002h,009h,0dfh	; 909d  %./.w.G@G~/.....
	defb 096h,0c2h,061h,03ch,02dh	; 90ad

; ----------------------------------------------------------------------
; DATOS dibujo_06: el dibujo de secuencia 0x06 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (25 bytes)
;   0x90b2..0x90cb  (25 bytes)
DATA_dibujo_06:
	defb 066h,0cch,0d3h,041h,02ch,04dh,047h,04bh,04bh,061h,048h,029h,025h,0c5h,058h,016h	; 90b2  f..A,MGKKaH)%.X.
	defb 064h,042h,03fh,04bh,045h,000h,04bh,03ch,02dh	; 90c2  dB?KE.K<-

; ----------------------------------------------------------------------
; DATOS dibujo_07: el dibujo de secuencia 0x07 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (63 bytes)
;   0x90cb..0x910a  (63 bytes)
DATA_dibujo_07:
	defb 044h,0cch,058h,000h,02ch,082h,02fh,090h,0ffh,045h,0abh,0afh,005h,043h,047h,0e6h	; 90cb  D.X.,./..E...CG.
	defb 0c4h,058h,044h,052h,049h,040h,04dh,03fh,053h,04bh,03dh,057h,058h,028h,083h,0cch	; 90db  .XDRI@M?SK=WX(..
	defb 0dah,0a0h,04eh,064h,04ah,047h,08bh,07eh,094h,06dh,000h,07bh,02fh,080h,056h,0d2h	; 90eb  ..NdJG.~.m.{/.V.
	defb 064h,042h,073h,002h,068h,07dh,082h,02fh,090h,056h,03fh,04bh,000h,03ch,02dh	; 90fb  dBs.h}./.V?K.<-

; ----------------------------------------------------------------------
; DATOS dibujo_08: el dibujo de secuencia 0x08 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (38 bytes)
;   0x910a..0x9130  (38 bytes)
DATA_dibujo_08:
	defb 04bh,0cch,04ah,000h,02ch,073h,068h,07dh,082h,02fh,090h,0deh,080h,026h,028h,088h	; 910a  K.J.,sh}./...&(.
	defb 0cch,0d1h,002h,085h,07eh,088h,093h,069h,071h,028h,007h,000h,007h,005h,005h,030h	; 911a  ....~..iq(.....0
	defb 001h,008h,061h,03ch,000h,02dh	; 912a

; ----------------------------------------------------------------------
; DATOS dibujo_09: el dibujo de secuencia 0x09 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (26 bytes)
;   0x9130..0x914a  (26 bytes)
DATA_dibujo_09:
	defb 067h,0cch,0d4h,000h,02ch,08ah,06dh,076h,07fh,067h,083h,04fh,026h,051h,007h,049h	; 9130  g...,.mv.g.O&Q.I
	defb 0b7h,04dh,048h,04bh,053h,040h,04bh,03fh,03fh,02dh	; 9140  .MHKS@K??-

; ----------------------------------------------------------------------
; DATOS dibujo_0A: el dibujo de secuencia 0x0A (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (40 bytes)
;   0x914a..0x9172  (40 bytes)
DATA_dibujo_0A:
	defb 048h,0cch,050h,048h,02ch,04dh,047h,007h,049h,0b7h,047h,0a4h,000h,045h,08ah,06dh	; 914a  H.PH,MG.I.G..E.m
	defb 076h,07fh,067h,083h,048h,089h,0cch,0ceh,010h,006h,041h,047h,02bh,0e5h,056h,09eh	; 915a  v.g.H.....AG+.V.
	defb 0edh,0a0h,03fh,042h,045h,04bh,03ch,02dh	; 916a  ..?BEK<-

; ----------------------------------------------------------------------
; DATOS dibujo_0B: el dibujo de secuencia 0x0B (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (32 bytes)
;   0x9172..0x9192  (32 bytes)
DATA_dibujo_0B:
	defb 063h,0cch,0d9h,000h,02ch,086h,091h,068h,07dh,071h,048h,062h,0dch,04dh,049h,045h	; 9172  c...,..h}qHb.MIE
	defb 020h,017h,04eh,053h,042h,080h,045h,052h,043h,0d0h,055h,053h,04bh,03ch,000h,02dh	; 9182   .NSB.ERC.USK<.-

; ----------------------------------------------------------------------
; DATOS dibujo_0C: el dibujo de secuencia 0x0C (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (59 bytes)
;   0x9192..0x91cd  (59 bytes)
DATA_dibujo_0C:
	defb 042h,0cch,05ch,000h,02ch,08ah,06dh,076h,07fh,067h,083h,047h,000h,071h,08eh,02fh	; 9192  B.\.,.mv.g.G.q./
	defb 071h,090h,07eh,083h,077h,024h,045h,0dbh,01bh,058h,09bh,04eh,053h,042h,080h,045h	; 91a2  q.~.w$E..X.NSB.E
	defb 04bh,03ch,029h,087h,0cch,0d2h,001h,049h,043h,041h,049h,043h,041h,0bbh,027h,038h	; 91b2  K<)....ICAICA.'8
	defb 03ch,052h,03fh,049h,044h,051h,04bh,03dh,000h,057h,02dh	; 91c2  <R?IDQK=.W-

; ----------------------------------------------------------------------
; DATOS dibujo_0D: el dibujo de secuencia 0x0D (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (19 bytes)
;   0x91cd..0x91e0  (19 bytes)
DATA_dibujo_0D:
	defb 069h,0cch,0ceh,041h,02ch,02dh,047h,07ch,094h,090h,056h,00ch,050h,0bah,03fh,04bh	; 91cd  i..A,-G|..V.P.?K
	defb 03fh,03fh,02dh	; 91dd

; ----------------------------------------------------------------------
; DATOS dibujo_0E: el dibujo de secuencia 0x0E (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (19 bytes)
;   0x91e0..0x91f3  (19 bytes)
DATA_dibujo_0E:
	defb 069h,0cch,0ceh,041h,02ch,02eh,047h,07ch,094h,090h,056h,00ch,050h,0bah,03fh,04bh	; 91e0  i..A,.G|..V.P.?K
	defb 03fh,03fh,02dh	; 91f0

; ----------------------------------------------------------------------
; DATOS dibujo_0F: el dibujo de secuencia 0x0F (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (19 bytes)
;   0x91f3..0x9206  (19 bytes)
DATA_dibujo_0F:
	defb 069h,0cch,0ceh,041h,02ch,02fh,047h,07ch,094h,090h,056h,00ch,050h,0bah,03fh,04bh	; 91f3  i..A,/G|..V.P.?K
	defb 03fh,03fh,02dh	; 9203

; ----------------------------------------------------------------------
; DATOS dibujo_10: el dibujo de secuencia 0x10 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (20 bytes)
;   0x9206..0x921a  (20 bytes)
DATA_dibujo_10:
	defb 069h,0cch,0cfh,003h,02ch,07ch,094h,090h,048h,004h,030h,031h,090h,044h,052h,04fh	; 9206  i...,|..H.01.DRO
	defb 046h,061h,03ch,02dh	; 9216

; ----------------------------------------------------------------------
; DATOS dibujo_11: el dibujo de secuencia 0x11 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (43 bytes)
;   0x921a..0x9245  (43 bytes)
DATA_dibujo_11:
	defb 046h,0cch,054h,000h,02ch,004h,041h,047h,07ch,094h,090h,048h,09ah,03eh,047h,004h	; 921a  F.T.,.AG|..H.>G.
	defb 032h,033h,047h,02dh,025h,0a0h,02eh,025h,02fh,045h,08ah,0cch,0cch,0a2h,048h,047h	; 922a  23G-%..%/E....HG
	defb 048h,047h,0f0h,09dh,03fh,042h,080h,045h,04bh,03ch,02dh	; 923a  HG..?B.EK<-

; ----------------------------------------------------------------------
; DATOS dibujo_12: el dibujo de secuencia 0x12 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (29 bytes)
;   0x9245..0x9262  (29 bytes)
DATA_dibujo_12:
	defb 064h,0cch,0d7h,000h,02ch,0e2h,042h,058h,03eh,054h,055h,044h,080h,045h,043h,0a5h	; 9245  d...,.BX>TUD.EC.
	defb 0e2h,044h,07ch,094h,090h,000h,045h,044h,051h,04bh,03dh,057h,02dh	; 9255  .D|...EDQK=W-

; ----------------------------------------------------------------------
; DATOS dibujo_13: el dibujo de secuencia 0x13 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (35 bytes)
;   0x9262..0x9285  (35 bytes)
DATA_dibujo_13:
	defb 047h,0cch,051h,000h,02ch,004h,041h,047h,07ch,094h,090h,058h,00ah,0e2h,042h,03eh	; 9262  G.Q.,.AG|..X..B>
	defb 054h,045h,04bh,03fh,03fh,000h,029h,08ch,0cch,0c8h,0b8h,036h,0e1h,034h,035h,03fh	; 9272  TEK??.)....6.45?
	defb 04bh,03ch,02dh	; 9282

; ----------------------------------------------------------------------
; DATOS dibujo_14: el dibujo de secuencia 0x14 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (30 bytes)
;   0x9285..0x92a3  (30 bytes)
DATA_dibujo_14:
	defb 064h,0cch,0d8h,041h,02ch,038h,058h,0e5h,0b5h,028h,0ffh,03ah,06bh,058h,03bh,03dh	; 9285  d..A,8X..(.:kX.=
	defb 028h,039h,058h,03ch,03dh,068h,056h,035h,03fh,042h,045h,04bh,03ch,02dh	; 9295  (9X<=hV5?BEK<-

; ----------------------------------------------------------------------
; DATOS dibujo_15: el dibujo de secuencia 0x15 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (20 bytes)
;   0x92a3..0x92b7  (20 bytes)
DATA_dibujo_15:
	defb 068h,0cch,0cfh,002h,02ch,086h,091h,068h,07dh,071h,054h,0d9h,030h,045h,0beh,049h	; 92a3  h...,..h}qT.0E.I
	defb 045h,04bh,03ch,02dh	; 92b3

; ----------------------------------------------------------------------
; DATOS dibujo_16: el dibujo de secuencia 0x16 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (18 bytes)
;   0x92b7..0x92c9  (18 bytes)
DATA_dibujo_16:
	defb 069h,0cch,0cdh,005h,02ch,07ch,094h,090h,056h,036h,0e1h,034h,0c0h,035h,03fh,04bh	; 92b7  i...,|..V6.4.5?K
	defb 03ch,02dh	; 92c7

; ----------------------------------------------------------------------
; DATOS dibujo_17: el dibujo de secuencia 0x17 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (30 bytes)
;   0x92c9..0x92e7  (30 bytes)
DATA_dibujo_17:
	defb 064h,0cch,0d8h,000h,02ch,07ch,094h,090h,058h,03fh,051h,04bh,000h,03dh,057h,029h	; 92c9  d...,|..X?QK.=W)
	defb 07ch,094h,090h,056h,0eeh,080h,03fh,045h,04dh,062h,051h,04bh,03ch,02dh	; 92d9  |..V..?EMbQK<-

; ----------------------------------------------------------------------
; DATOS dibujo_18: el dibujo de secuencia 0x18 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (20 bytes)
;   0x92e7..0x92fb  (20 bytes)
DATA_dibujo_18:
	defb 068h,0cch,0cfh,000h,02ch,070h,02fh,080h,089h,0e9h,0feh,056h,0a8h,00ch,0bah,03fh	; 92e7  h...,p/....V...?
	defb 04bh,03fh,03fh,02dh	; 92f7

; ----------------------------------------------------------------------
; DATOS dibujo_19: el dibujo de secuencia 0x19 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (30 bytes)
;   0x92fb..0x9319  (30 bytes)
DATA_dibujo_19:
	defb 064h,0cch,0d8h,000h,02ch,073h,068h,07dh,082h,02fh,090h,0ffh,028h,045h,0d2h,021h	; 92fb  d...,sh}./..(E.!
	defb 061h,04ah,052h,070h,02fh,008h,080h,089h,047h,04fh,046h,061h,03ch,02dh	; 930b  aJRp/...GOFa<-

; ----------------------------------------------------------------------
; DATOS dibujo_1A: el dibujo de secuencia 0x1A (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (11 bytes)
;   0x9319..0x9324  (11 bytes)
DATA_dibujo_1A:
	defb 06ch,0cch,0c7h,030h,02ch,0cbh,00bh,03fh,04bh,03ch,02dh	; 9319  l..0,..?K<-

; ----------------------------------------------------------------------
; DATOS dibujo_35: el dibujo de secuencia 0x35 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (25 bytes)
;   0x9324..0x933d  (25 bytes)
DATA_dibujo_35:
	defb 067h,0cch,0d3h,040h,02ch,055h,06dh,071h,077h,07eh,025h,072h,00ah,083h,06fh,02fh	; 9324  g..@,Umqw~%r..o/
	defb 056h,00ch,0bah,03fh,04bh,080h,03fh,03fh,02dh	; 9334  V..?K.??-

; ----------------------------------------------------------------------
; DATOS dibujo_1B: el dibujo de secuencia 0x1B (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (18 bytes)
;   0x933d..0x934f  (18 bytes)
DATA_dibujo_1B:
	defb 06ah,0cch,0cdh,002h,02ch,06bh,090h,072h,080h,056h,00ch,0bah,0a0h,03fh,04bh,03fh	; 933d  j...,k.r.V...?K?
	defb 03fh,02dh	; 934d

; ----------------------------------------------------------------------
; DATOS dibujo_1C: el dibujo de secuencia 0x1C (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (17 bytes)
;   0x934f..0x9360  (17 bytes)
DATA_dibujo_1C:
	defb 06ah,0cch,0cch,001h,02ch,06bh,090h,072h,080h,056h,0cbh,00bh,080h,03fh,04bh,03ch	; 934f  j...,k.r.V...?K<
	defb 02dh	; 935f

; ----------------------------------------------------------------------
; DATOS dibujo_1D: el dibujo de secuencia 0x1D (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (28 bytes)
;   0x9360..0x937c  (28 bytes)
DATA_dibujo_1D:
	defb 065h,0cch,0d6h,000h,02ch,0a9h,0d8h,0cch,0f6h,061h,03ch,058h,000h,028h,086h,091h	; 9360  e...,....a<X.(..
	defb 068h,07dh,071h,025h,08ah,000h,02fh,077h,083h,061h,03ch,02dh	; 9370  h}q%../w.a<-

; ----------------------------------------------------------------------
; DATOS dibujo_1E: el dibujo de secuencia 0x1E (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (17 bytes)
;   0x937c..0x938d  (17 bytes)
DATA_dibujo_1E:
	defb 06ah,0cch,0cch,003h,02ch,03eh,0d7h,084h,071h,056h,000h,008h,080h,03fh,04bh,03ch	; 937c  j...,>..qV...?K<
	defb 02dh	; 938c

; ----------------------------------------------------------------------
; DATOS dibujo_1F: el dibujo de secuencia 0x1F (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (16 bytes)
;   0x938d..0x939d  (16 bytes)
DATA_dibujo_1F:
	defb 06ah,0cch,0cbh,002h,02ch,0a5h,0e2h,045h,03eh,0d7h,03fh,04bh,080h,03fh,03fh,02dh	; 938d  j...,..E>.?K.??-

; ----------------------------------------------------------------------
; DATOS dibujo_20: el dibujo de secuencia 0x20 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (21 bytes)
;   0x939d..0x93b2  (21 bytes)
DATA_dibujo_20:
	defb 068h,0cch,0d0h,040h,02ch,02bh,0e5h,085h,07eh,088h,093h,069h,018h,071h,045h,0beh	; 939d  h..@,+..~..i.qE.
	defb 049h,045h,04bh,03ch,02dh	; 93ad

; ----------------------------------------------------------------------
; DATOS dibujo_21: el dibujo de secuencia 0x21 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (21 bytes)
;   0x93b2..0x93c7  (21 bytes)
DATA_dibujo_21:
	defb 068h,0cch,0d0h,000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,010h,077h,083h,028h	; 93b2  h.....h}q%./.w.(
	defb 04fh,05ch,0b1h,0a8h,029h	; 93c2

; ----------------------------------------------------------------------
; DATOS dibujo_22: el dibujo de secuencia 0x22 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (42 bytes)
;   0x93c7..0x93f1  (42 bytes)
DATA_dibujo_22:
	defb 047h,0cch,052h,000h,020h,013h,022h,00fh,018h,048h,028h,04dh,000h,043h,047h,0d3h	; 93c7  G.R. ."..H(M.CG.
	defb 0f5h,045h,04dh,062h,052h,000h,03fh,04ch,08ah,0cch,0cdh,001h,073h,068h,07dh,082h	; 93d7  .EMbR.?L....sh}.
	defb 02fh,090h,056h,048h,080h,04dh,044h,064h,03fh,029h	; 93e7  /.VH.MDd?)

; ----------------------------------------------------------------------
; DATOS dibujo_23: el dibujo de secuencia 0x23 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (23 bytes)
;   0x93f1..0x9408  (23 bytes)
DATA_dibujo_23:
	defb 068h,0cch,0d1h,01ah,02ch,0dah,0f3h,013h,01dh,0aeh,049h,050h,00ah,0bbh,0b8h,056h	; 93f1  h...,.....IP...V
	defb 0ceh,04ch,04bh,03fh,03fh,000h,02dh	; 9401

; ----------------------------------------------------------------------
; DATOS dibujo_24: el dibujo de secuencia 0x24 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (19 bytes)
;   0x9408..0x941b  (19 bytes)
DATA_dibujo_24:
	defb 069h,0cch,0ceh,048h,02ch,001h,0cfh,0a6h,02ah,045h,0cfh,0bch,020h,056h,06ch,040h	; 9408  i..H,...*E.. Vl@
	defb 094h,074h,02dh	; 9418

; ----------------------------------------------------------------------
; DATOS dibujo_25: el dibujo de secuencia 0x25 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (39 bytes)
;   0x941b..0x9442  (39 bytes)
DATA_dibujo_25:
	defb 047h,0cch,053h,044h,02ch,04dh,047h,04bh,04bh,005h,05ah,050h,002h,053h,052h,043h	; 941b  G.SD,MGKK.ZP.SRC
	defb 0d0h,064h,042h,045h,052h,040h,047h,049h,029h,08ch,0cch,0c9h,0a0h,005h,058h,03fh	; 942b  .dBER@GI).....X?
	defb 048h,03dh,057h,05fh,027h,000h,02dh	; 943b

; ----------------------------------------------------------------------
; DATOS dibujo_26: el dibujo de secuencia 0x26 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (45 bytes)
;   0x9442..0x946f  (45 bytes)
DATA_dibujo_26:
	defb 048h,0cch,050h,000h,02ch,086h,091h,068h,07dh,071h,096h,0c2h,018h,045h,048h,0d1h	; 9442  H.P.,..h}q...EH.
	defb 00dh,03fh,03fh,058h,028h,087h,0cch,0d2h,0c6h,04ah,04eh,04bh,048h,0d7h,049h,03fh	; 9452  .??X(....JNKH.I?
	defb 042h,040h,0b1h,04eh,057h,029h,0d8h,046h,065h,027h,000h,027h,02dh	; 9462  B@.NW).Fe'.'-

; ----------------------------------------------------------------------
; DATOS dibujo_27: el dibujo de secuencia 0x27 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (19 bytes)
;   0x946f..0x9482  (19 bytes)
DATA_dibujo_27:
	defb 069h,0cch,0ceh,001h,02ch,08dh,091h,079h,07dh,058h,0d7h,04ah,050h,042h,045h,04bh	; 946f  i...,..y}X.JPBEK
	defb 03fh,03fh,02dh	; 947f

; ----------------------------------------------------------------------
; DATOS dibujo_28: el dibujo de secuencia 0x28 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (32 bytes)
;   0x9482..0x94a2  (32 bytes)
DATA_dibujo_28:
	defb 064h,0cch,0d9h,001h,02ch,08ah,06dh,076h,07fh,067h,083h,049h,040h,050h,046h,063h	; 9482  d...,.mv.g.I@PFc
	defb 064h,03fh,070h,02fh,080h,004h,089h,0e9h,0feh,056h,0d2h,045h,04bh,03ch,000h,02dh	; 9492  d?p/.....V.EK<.-

; ----------------------------------------------------------------------
; DATOS dibujo_29: el dibujo de secuencia 0x29 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (19 bytes)
;   0x94a2..0x94b5  (19 bytes)
DATA_dibujo_29:
	defb 069h,0cch,0ceh,000h,02ch,070h,02fh,080h,089h,028h,071h,068h,000h,094h,074h,000h	; 94a2  i...,p/..(qh..t.
	defb 06ah,083h,02dh	; 94b2

; ----------------------------------------------------------------------
; DATOS dibujo_2A: el dibujo de secuencia 0x2A (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (12 bytes)
;   0x94b5..0x94c1  (12 bytes)
DATA_dibujo_2A:
	defb 06ch,0cch,0c8h,000h,02ch,070h,02fh,080h,089h,0e1h,0bdh,02dh	; 94b5  l...,p/....-

; ----------------------------------------------------------------------
; DATOS dibujo_2B: el dibujo de secuencia 0x2B (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (16 bytes)
;   0x94c1..0x94d1  (16 bytes)
DATA_dibujo_2B:
	defb 06bh,0cch,0cbh,005h,02ch,0b9h,0b3h,099h,056h,024h,0f4h,03fh,000h,04bh,03ch,02dh	; 94c1  k...,...V$.?.K<-

; ----------------------------------------------------------------------
; DATOS dibujo_2C: el dibujo de secuencia 0x2C (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (42 bytes)
;   0x94d1..0x94fb  (42 bytes)
DATA_dibujo_2C:
	defb 04bh,0cch,049h,000h,02ch,020h,013h,022h,00fh,018h,0aeh,045h,000h,048h,085h,0cch	; 94d1  K.I., ."...E.H..
	defb 0d6h,000h,082h,02fh,090h,0ffh,047h,070h,02fh,080h,006h,089h,0e9h,0feh,058h,0e9h	; 94e1  .../..Gp/.....X.
	defb 010h,04eh,053h,040h,042h,045h,04bh,03dh,057h,02dh	; 94f1  .NS@BEK=W-

; ----------------------------------------------------------------------
; DATOS dibujo_2D: el dibujo de secuencia 0x2D (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (41 bytes)
;   0x94fb..0x9524  (41 bytes)
DATA_dibujo_2D:
	defb 046h,0cch,054h,040h,02ch,045h,041h,047h,0d3h,0f5h,045h,043h,094h,041h,0d9h,03ch	; 94fb  F.T@,EAG..EC.A.<
	defb 049h,055h,049h,051h,04bh,000h,03dh,057h,058h,028h,08bh,0cch,0cah,002h,082h,02fh	; 950b  IUIQK.=WX(...../
	defb 090h,056h,0a7h,0cdh,03fh,04bh,000h,03ch,02dh	; 951b  .V..?K.<-

; ----------------------------------------------------------------------
; DATOS dibujo_2E: el dibujo de secuencia 0x2E (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (15 bytes)
;   0x9524..0x9533  (15 bytes)
DATA_dibujo_2E:
	defb 06bh,0cch,0cah,000h,02ch,082h,02fh,090h,000h,067h,069h,077h,000h,027h,02dh	; 9524  k...,./..giw.'-

; ----------------------------------------------------------------------
; DATOS dibujo_2F: el dibujo de secuencia 0x2F (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (74 bytes)
;   0x9533..0x957d  (74 bytes)
DATA_dibujo_2F:
	defb 02fh,0cah,002h,000h,038h,039h,04fh,0cah,002h,000h,03ah,03bh,0a2h,0cah,014h,004h	; 9533  /...89O...:.....
	defb 011h,007h,009h,001h,00ah,009h,000h,000h,000h,000h,088h,068h,08dh,093h,094h,089h	; 9543  ...........h....
	defb 025h,000h,08ah,02fh,077h,083h,0ebh,0cah,013h,000h,020h,013h,022h,00fh,018h,0aeh	; 9553  %../w..... ."...
	defb 061h,08ah,000h,06dh,076h,07fh,067h,083h,0b8h,0f2h,045h,040h,0d9h,00ch,029h,033h	; 9563  a..mv.g...E@..)3
	defb 0cbh,0a7h,000h,0b1h,0a8h,03dh,05dh,025h,025h,025h	; 9573  .....=]%%%

; ----------------------------------------------------------------------
; DATOS dibujo_30: el dibujo de secuencia 0x30 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (214 bytes)
;   0x957d..0x9653  (214 bytes)
DATA_dibujo_30:
	defb 00fh,0cah,002h,000h,038h,039h,02fh,0cah,002h,000h,03ah,03bh,062h,0cah,015h,004h	; 957d  ....89/...:.b...
	defb 011h,007h,007h,005h,002h,009h,000h,000h,000h,000h,086h,091h,068h,07dh,071h,025h	; 958d  ............h}q%
	defb 08ah,000h,02fh,077h,083h,0f1h,0d7h,0a2h,0cah,011h,004h,011h,007h,007h,006h,009h	; 959d  ../w............
	defb 009h,000h,000h,000h,000h,0f0h,08ah,06dh,076h,07fh,067h,083h,000h,0e0h,0e2h,0cah	; 95ad  .......mv.g.....
	defb 00fh,004h,011h,007h,007h,007h,007h,009h,000h,000h,000h,000h,0f0h,08dh,091h,079h	; 95bd  ...............y
	defb 07dh,0e0h,02bh,0cbh,034h,000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,000h,077h	; 95cd  }.+.4...h}q%./.w
	defb 083h,028h,07eh,02fh,087h,002h,009h,000h,0dfh,045h,0eah,098h,062h,0cbh,030h,004h	; 95dd  .(~/.....E..b.0.
	defb 011h,007h,008h,001h,00ah,009h,000h,000h,002h,000h,0f0h,06fh,07eh,07ch,083h,042h	; 95ed  ...........o~|.B
	defb 0e0h,0a2h,0cbh,03ch,004h,011h,007h,008h,002h,009h,009h,000h,000h,000h,000h,086h	; 95fd  ...<............
	defb 091h,068h,07dh,071h,025h,08ah,001h,02fh,077h,083h,0d8h,0afh,02ah,0b0h,009h,000h	; 960d  .h}q%../w...*...
	defb 008h,008h,0c1h,02bh,0f0h,0cbh,021h,000h,025h,010h,0cch,041h,000h,025h,030h,0cch	; 961d  ...+..!.%..A.%0.
	defb 041h,000h,025h,050h,0cch,041h,000h,025h,082h,0cch,0d8h,004h,011h,007h,009h,001h	; 962d  A.%P.A.%........
	defb 00ah,009h,000h,000h,004h,000h,095h,0b3h,0a4h,0e0h,004h,0aeh,02ch,000h,020h,013h	; 963d  ............,. .
	defb 022h,00fh,018h,02dh,0a5h,0e1h	; 964d

; ----------------------------------------------------------------------
; DATOS dibujo_31: el dibujo de secuencia 0x31 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (66 bytes)
;   0x9653..0x9695  (66 bytes)
DATA_dibujo_31:
	defb 00ch,0cch,047h,000h,02ch,020h,013h,022h,00fh,018h,02dh,044h,0cch,058h,000h,085h	; 9653  ..G., ."..-D.X..
	defb 07eh,088h,093h,069h,071h,0a1h,0a2h,006h,0adh,0d6h,0fch,058h,0a3h,00ch,03fh,03fh	; 9663  ~..iq......X..??
	defb 004h,028h,095h,0b3h,0a4h,0e0h,004h,0aeh,029h,087h,0cch,0d3h,020h,0e9h,0fdh,043h	; 9673  .(......)... ..C
	defb 02fh,075h,058h,09ch,044h,000h,052h,005h,041h,047h,073h,068h,090h,058h,080h,044h	; 9683  /uX.D.R.AGsh.X.D
	defb 052h,029h	; 9693

; ----------------------------------------------------------------------
; DATOS dibujo_32: el dibujo de secuencia 0x32 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (42 bytes)
;   0x9695..0x96bf  (42 bytes)
DATA_dibujo_32:
	defb 04dh,0cch,046h,000h,02ch,084h,069h,088h,093h,02dh,084h,0cch,0d9h,002h,020h,013h	; 9695  M.F.,.i..-.... .
	defb 022h,00fh,018h,045h,003h,0c0h,090h,04eh,053h,042h,045h,052h,028h,0d4h,09fh,040h	; 96a5  "..E...NSBER(..@
	defb 0fah,00ah,06eh,083h,08fh,092h,02fh,073h,000h,029h	; 96b5  ..n.../s.)

; ----------------------------------------------------------------------
; DATOS dibujo_33: el dibujo de secuencia 0x33 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (109 bytes)
;   0x96bf..0x972c  (109 bytes)
DATA_dibujo_33:
	defb 0cah,0cbh,02dh,000h,02ch,088h,068h,08dh,093h,094h,089h,025h,000h,08ah,02fh,077h	; 96bf  ..-.,.h....%../w
	defb 083h,02dh,004h,0cch,058h,000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,000h,077h	; 96cf  .-..X...h}q%./.w
	defb 083h,02ah,07eh,02fh,087h,002h,009h,000h,0dfh,02bh,047h,0fbh,0b5h,0d5h,0e8h,029h	; 96df  .*~/.....+G....)
	defb 047h,0cch,052h,042h,097h,002h,045h,04fh,052h,0ach,023h,044h,010h,07fh,02fh,06dh	; 96ef  G.RB..EOR.#D../m
	defb 043h,082h,02fh,056h,04dh,000h,040h,028h,089h,0cch,04fh,033h,03eh,047h,00ah,023h	; 96ff  C./VM.@(..O3>G.#
	defb 056h,0efh,04bh,00fh,048h,0a0h,04eh,053h,042h,045h,052h,029h,0cah,0cch,0cch,002h	; 970f  V.K.H.NSBER)....
	defb 020h,013h,022h,00fh,018h,047h,043h,068h,000h,081h,094h,077h,029h	; 971f   ."..GCh...w)

; ----------------------------------------------------------------------
; DATOS dibujo_34: el dibujo de secuencia 0x34 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 8 en
;   8 con una mascara; lo leen p26:634C, p26:6350, p26:637C (71 bytes)
;   0x972c..0x9773  (71 bytes)
DATA_dibujo_34:
	defb 00fh,0cah,002h,000h,038h,039h,02fh,0cah,002h,000h,03ah,03bh,083h,0cah,018h,004h	; 972c  ....89/...:.....
	defb 011h,007h,009h,001h,00ah,009h,002h,001h,000h,0b7h,000h,000h,000h,088h,068h,08dh	; 973c  ..............h.
	defb 093h,000h,094h,089h,025h,08ah,02fh,077h,083h,028h,0cfh,0cah,00eh,000h,02ch,020h	; 974c  ....%./w.(....,
	defb 013h,022h,00fh,018h,02dh,061h,000h,08ah,06dh,076h,07fh,067h,083h,013h,0cbh,0a6h	; 975c  ."..-a..mv.g....
	defb 008h,0b8h,0f2h,04ah,0d9h,00ch,029h	; 976c

; ----------------------------------------------------------------------
; DATOS dibujo_40: el dibujo de secuencia 0x40 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (35 bytes)
;   0x9773..0x9796  (35 bytes)
DATA_dibujo_40:
	defb 048h,0cch,050h,0ech,0deh,012h,000h,017h,099h,00fh,097h,04fh,01eh,000h,059h,085h	; 9773  H.P........O..Y.
	defb 0cch,0d6h,01eh,012h,00fh,08ch,0cbh,04dh,04fh,09ch,053h,0d8h,01dh,040h,09dh,0c0h	; 9783  .......MO.S..@..
	defb 019h,00eh,037h	; 9793

; ----------------------------------------------------------------------
; DATOS dibujo_41: el dibujo de secuencia 0x41 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (38 bytes)
;   0x9796..0x97bc  (38 bytes)
DATA_dibujo_41:
	defb 046h,0cch,055h,0ech,0deh,012h,0e3h,0f2h,01ch,040h,0ceh,053h,0cbh,0dah,01ah,00bh	; 9796  F.U......@.S....
	defb 09ch,053h,011h,086h,0cch,0d5h,0d0h,05ch,059h,0c0h,01eh,052h,0ddh,000h,05eh,017h	; 97a6  .S.....\Y..R..^.
	defb 04fh,080h,0d9h,058h,08fh,02dh	; 97b6

; ----------------------------------------------------------------------
; DATOS dibujo_42: el dibujo de secuencia 0x42 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (28 bytes)
;   0x97bc..0x97d8  (28 bytes)
DATA_dibujo_42:
	defb 047h,0cch,051h,0ech,0deh,012h,0e3h,0f2h,01ch,080h,0cfh,058h,00fh,09ch,053h,011h	; 97bc  G.Q........X..S.
	defb 08ah,0cch,0cch,0cbh,000h,05eh,057h,00fh,080h,0cbh,05ch,0dah	; 97cc  .....^W...\.

; ----------------------------------------------------------------------
; DATOS dibujo_43: el dibujo de secuencia 0x43 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (16 bytes)
;   0x97d8..0x97e8  (16 bytes)
DATA_dibujo_43:
	defb 068h,0cch,0d1h,0ech,0deh,012h,0e3h,0f2h,01ch,0c0h,011h,059h,058h,051h,0a5h,025h	; 97d8  h..........YXQ.%

; ----------------------------------------------------------------------
; DATOS dibujo_44: el dibujo de secuencia 0x44 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (30 bytes)
;   0x97e8..0x9806  (30 bytes)
DATA_dibujo_44:
	defb 049h,0cch,04fh,0d8h,0cfh,017h,01dh,013h,01dh,047h,047h,005h,030h,001h,002h,089h	; 97e8  I.O......GG.0...
	defb 0cch,0cfh,002h,007h,006h,023h,0cfh,04bh,05dh,000h,04bh,019h,027h,02dh	; 97f8  .....#.K].K.'-

; ----------------------------------------------------------------------
; DATOS dibujo_45: el dibujo de secuencia 0x45 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (39 bytes)
;   0x9806..0x982d  (39 bytes)
DATA_dibujo_45:
	defb 045h,0cch,056h,0ech,0deh,012h,0e3h,0f2h,01ch,0c0h,011h,059h,098h,0d1h,040h,0d9h	; 9806  E.V........Y..@.
	defb 000h,055h,016h,016h,085h,0cch,0d5h,0d4h,0cbh,017h,0ddh,080h,016h,01eh,00fh,01ch	; 9816  .U..............
	defb 056h,0cbh,05ch,080h,074h,0f5h,037h	; 9826

; ----------------------------------------------------------------------
; DATOS dibujo_46: el dibujo de secuencia 0x46 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (23 bytes)
;   0x982d..0x9844  (23 bytes)
DATA_dibujo_46:
	defb 063h,0cch,0dah,06ch,0d2h,053h,0deh,019h,09ch,0c0h,0e1h,059h,016h,0ceh,000h,08fh	; 982d  c..l.S.....Y....
	defb 000h,04dh,0cbh,0d8h,011h,00eh,037h	; 983d

; ----------------------------------------------------------------------
; DATOS dibujo_47: el dibujo de secuencia 0x47 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (45 bytes)
;   0x9844..0x9871  (45 bytes)
DATA_dibujo_47:
	defb 043h,0cch,05ah,0ech,092h,00fh,04eh,080h,050h,09ch,000h,05eh,08fh,040h,04ch,00bh	; 9844  C.Z...N.P..^.@L.
	defb 00dh,015h,0d2h,0d9h,016h,025h,025h,084h,0cch,0d9h,021h,0cfh,072h,00fh,080h,04fh	; 9854  .....%%...!.r..O
	defb 0deh,00fh,05ch,098h,0d1h,040h,0d3h,0d7h,08fh,0a1h,08bh,05ch,037h	; 9864  ..\..@.....\7

; ----------------------------------------------------------------------
; DATOS dibujo_48: el dibujo de secuencia 0x48 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (31 bytes)
;   0x9871..0x9890  (31 bytes)
DATA_dibujo_48:
	defb 049h,0cch,04dh,02ch,012h,08bh,00fh,0c0h,04bh,0dch,0d3h,020h,00eh,086h,0cch,0d3h	; 9871  I.M,....K.. ....
	defb 013h,098h,040h,04fh,0d7h,04fh,0d3h,05dh,000h,007h,005h,0c5h,001h,008h,037h	; 9881  ..@O.O.]......7

; ----------------------------------------------------------------------
; DATOS dibujo_49: el dibujo de secuencia 0x49 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (18 bytes)
;   0x9890..0x98a2  (18 bytes)
DATA_dibujo_49:
	defb 066h,0cch,0d3h,0ech,047h,040h,099h,018h,05eh,05dh,080h,05eh,0d9h,080h,016h,01eh	; 9890  f...G@..^].^....
	defb 00fh,037h	; 98a0

; ----------------------------------------------------------------------
; DATOS dibujo_4A: el dibujo de secuencia 0x4A (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (34 bytes)
;   0x98a2..0x98c4  (34 bytes)
DATA_dibujo_4A:
	defb 045h,0cch,057h,06ch,0cch,00bh,0deh,00fh,05ch,099h,018h,040h,00bh,0ddh,040h,0cfh	; 98a2  E.Wl....\..@..@.
	defb 0efh,04ch,013h,016h,01eh,08ah,0cch,0cdh,0d0h,0d3h,020h,0c0h,09ah,016h,058h,0cfh	; 98b2  .L........ ...X.
	defb 05eh,037h	; 98c2

; ----------------------------------------------------------------------
; DATOS dibujo_4B: el dibujo de secuencia 0x4B (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (29 bytes)
;   0x98c4..0x98e1  (29 bytes)
DATA_dibujo_4B:
	defb 048h,0cch,04fh,0ech,054h,04bh,08fh,01dh,040h,00bh,0ddh,000h,00fh,00fh,018h,089h	; 98c4  H.O.TK..@.......
	defb 0cch,0ceh,092h,0cfh,016h,0c0h,01ah,05ch,0ddh,0d9h,018h,01ch,037h	; 98d4  .......\....7

; ----------------------------------------------------------------------
; DATOS dibujo_4C: el dibujo de secuencia 0x4C (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (36 bytes)
;   0x98e1..0x9905  (36 bytes)
DATA_dibujo_4C:
	defb 046h,0cch,054h,0ech,0deh,012h,0dch,04fh,040h,01fh,01dh,01eh,04ch,0cfh,000h,056h	; 98e1  F.T....O@...L..V
	defb 0dfh,04fh,087h,0cch,0d3h,09eh,019h,040h,053h,01dh,080h,0d2h,0cfh,01ch,0cbh,0cch	; 98f1  .O.....@S.......
	defb 059h,01eh,01dh,037h	; 9901

; ----------------------------------------------------------------------
; DATOS dibujo_4D: el dibujo de secuencia 0x4D (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (17 bytes)
;   0x9905..0x9916  (17 bytes)
DATA_dibujo_4D:
	defb 067h,0cch,0d2h,02ch,0d2h,04fh,00fh,032h,01dh,0cbh,0c0h,01ch,0ceh,080h,017h,01ah	; 9905  g..,.O.2........
	defb 037h	; 9915

; ----------------------------------------------------------------------
; DATOS dibujo_4E: el dibujo de secuencia 0x4E (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (18 bytes)
;   0x9916..0x9928  (18 bytes)
DATA_dibujo_4E:
	defb 067h,0cch,0d3h,02ch,0d2h,04fh,00fh,032h,01dh,08bh,040h,04ch,0dfh,04fh,040h,00bh	; 9916  g..,.O.2..@L.O@.
	defb 01ah,037h	; 9926

; ----------------------------------------------------------------------
; DATOS dibujo_4F: el dibujo de secuencia 0x4F (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (18 bytes)
;   0x9928..0x993a  (18 bytes)
DATA_dibujo_4F:
	defb 066h,0cch,0d4h,02ch,0d2h,04fh,00fh,032h,01dh,00bh,0c0h,051h,00fh,00fh,018h,0d7h	; 9928  f..,.O.2...Q....
	defb 04bh,0dah	; 9938

; ----------------------------------------------------------------------
; DATOS dibujo_50: el dibujo de secuencia 0x50 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (38 bytes)
;   0x993a..0x9960  (38 bytes)
DATA_dibujo_50:
	defb 047h,0cch,051h,0ech,0deh,012h,05ch,0cfh,040h,00fh,00fh,017h,01eh,0d9h,000h,00fh	; 993a  G.Q...\.@.......
	defb 084h,0cch,0d9h,0c4h,000h,04eh,010h,0d0h,04fh,00fh,018h,01eh,095h,0d3h,018h,01dh	; 994a  .....N..O.......
	defb 000h,059h,080h,097h,04bh,037h	; 995a

; ----------------------------------------------------------------------
; DATOS dibujo_51: el dibujo de secuencia 0x51 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (55 bytes)
;   0x9960..0x9997  (55 bytes)
DATA_dibujo_51:
	defb 027h,0cch,052h,06ch,0cfh,00bh,0d2h,000h,09eh,0dah,04fh,040h,08bh,01eh,04dh,00fh	; 9960  '.Rl......O@..M.
	defb 01dh,065h,0cch,057h,00bh,0c0h,05ah,013h,0d7h,04bh,0e3h,000h,056h,011h,012h,01eh	; 9970  .e.W..Z..K..V...
	defb 04dh,099h,056h,01fh,01ch,033h,0a7h,0cch,0d2h,05ch,00fh,0ceh,0cch,0d6h,01fh,000h	; 9980  M.V..3...\......
	defb 019h,01ch,0d1h,0dch,00fh,018h,037h	; 9990

; ----------------------------------------------------------------------
; DATOS dibujo_52: el dibujo de secuencia 0x52 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (39 bytes)
;   0x9997..0x99be  (39 bytes)
DATA_dibujo_52:
	defb 045h,0cch,056h,02ch,021h,00fh,098h,0cfh,00fh,080h,04bh,056h,040h,0c4h,000h,0d9h	; 9997  E.V,!.....KV@...
	defb 0d6h,059h,01ch,01dh,086h,0cch,0d5h,010h,019h,01ch,01eh,012h,00fh,08dh,099h,057h	; 99a7  .Y.............W
	defb 0d6h,0cfh,01eh,080h,097h,04bh,037h	; 99b7

; ----------------------------------------------------------------------
; DATOS dibujo_53: el dibujo de secuencia 0x53 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (54 bytes)
;   0x99be..0x99f4  (54 bytes)
DATA_dibujo_53:
	defb 024h,0cch,058h,02ch,0d2h,04fh,00fh,0c0h,04bh,08fh,000h,05eh,08fh,000h,05eh,01ch	; 99be  $.X,.O..K..^..^.
	defb 00fh,00fh,057h,0cbh,05ah,067h,0cch,052h,0deh,0d9h,011h,01eh,0d2h,04fh,040h,057h	; 99ce  ..W.Zg.R.....O@W
	defb 04bh,013h,018h,011h,01fh,01ah,0a7h,0cch,0d1h,01eh,012h,00fh,08dh,099h,057h,0d6h	; 99de  K.............W.
	defb 0cfh,01eh,080h,097h,04bh,037h	; 99ee

; ----------------------------------------------------------------------
; DATOS dibujo_54: el dibujo de secuencia 0x54 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (41 bytes)
;   0x99f4..0x9a1d  (41 bytes)
DATA_dibujo_54:
	defb 044h,0cch,058h,0ech,0deh,012h,000h,0deh,052h,0cfh,04fh,040h,00bh,01ah,01dh,0deh	; 99f4  D.X.....R.O@....
	defb 0d9h,011h,01eh,0d2h,04fh,085h,0cch,0d6h,0d1h,0d3h,020h,080h,04bh,056h,0c0h,0deh	; 9a04  ....O..... .KV..
	defb 012h,0c0h,08ch,00fh,05ch,013h,058h,01dh,037h	; 9a14  ....\.X.7

; ----------------------------------------------------------------------
; DATOS dibujo_55: el dibujo de secuencia 0x55 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (30 bytes)
;   0x9a1d..0x9a3b  (30 bytes)
DATA_dibujo_55:
	defb 04ah,0cch,04bh,0ach,053h,072h,056h,080h,051h,000h,01eh,019h,086h,0cch,0d4h,01eh	; 9a1d  J.K.SrV.Q.......
	defb 012h,00fh,05ch,0cfh,01dh,05fh,08fh,040h,0d0h,080h,014h,0d7h,04fh,0ddh	; 9a2d  ..\.._.@....O.

; ----------------------------------------------------------------------
; DATOS dibujo_56: el dibujo de secuencia 0x56 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (23 bytes)
;   0x9a3b..0x9a52  (23 bytes)
DATA_dibujo_56:
	defb 063h,0cch,0dah,02ch,0d2h,04fh,00fh,032h,01dh,01eh,012h,00fh,0cbh,0ddh,01dh,0d7h	; 9a3b  c..,.O.2........
	defb 0cch,016h,0ceh,080h,017h,01ah,037h	; 9a4b

; ----------------------------------------------------------------------
; DATOS dibujo_57: el dibujo de secuencia 0x57 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (42 bytes)
;   0x9a52..0x9a7c  (42 bytes)
DATA_dibujo_57:
	defb 044h,0cch,057h,02ch,021h,00fh,09dh,05eh,053h,0d6h,0c0h,018h,04fh,08eh,040h,0d8h	; 9a52  D.W,!..^S...O.@.
	defb 04fh,040h,00bh,01ah,030h,084h,0cch,0d8h,093h,072h,056h,000h,011h,019h,04ch,04bh	; 9a62  O@..0....rV...LK
	defb 04dh,080h,0cbh,018h,080h,0d1h,04fh,0c0h,053h,0deh	; 9a72  M.....O.S.

; ----------------------------------------------------------------------
; DATOS dibujo_58: el dibujo de secuencia 0x58 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (37 bytes)
;   0x9a7c..0x9aa1  (37 bytes)
DATA_dibujo_58:
	defb 046h,0cch,055h,02ch,013h,0b2h,04fh,080h,050h,01fh,018h,00eh,0ddh,0d9h,017h,000h	; 9a7c  F.U,..O.P.......
	defb 095h,053h,00eh,087h,0cch,0d3h,0d9h,090h,000h,0c0h,01dh,052h,00fh,016h,00eh,0ceh	; 9a8c  .S.........R....
	defb 00fh,060h,00dh,00fh,037h	; 9a9c

; ----------------------------------------------------------------------
; DATOS dibujo_59: el dibujo de secuencia 0x59 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (30 bytes)
;   0x9aa1..0x9abf  (30 bytes)
DATA_dibujo_59:
	defb 048h,0cch,04fh,0ech,09eh,012h,01eh,032h,01dh,08bh,080h,05dh,00bh,00dh,00fh,088h	; 9aa1  H.O....2...]....
	defb 0cch,0cfh,090h,013h,051h,01eh,00fh,01ch,0ddh,0d2h,013h,016h,00eh,037h	; 9ab1  ....Q........7

; ----------------------------------------------------------------------
; DATOS dibujo_5A: el dibujo de secuencia 0x5A (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (21 bytes)
;   0x9abf..0x9ad4  (21 bytes)
DATA_dibujo_5A:
	defb 065h,0cch,0d7h,0ach,021h,0cfh,096h,0d6h,040h,00bh,015h,00fh,053h,01eh,080h,013h	; 9abf  e...!...@...S...
	defb 01eh,012h,01fh,01dh,037h	; 9acf

; ----------------------------------------------------------------------
; DATOS dibujo_75: el dibujo de secuencia 0x75 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (42 bytes)
;   0x9ad4..0x9afe  (42 bytes)
DATA_dibujo_75:
	defb 044h,0cch,058h,02ch,013h,0b2h,04fh,080h,050h,01fh,018h,00eh,0ddh,0d9h,017h,000h	; 9ad4  D.X,..O.P.......
	defb 095h,053h,00eh,000h,059h,085h,0cch,0d7h,08bh,000h,08fh,0deh,0dch,08bh,05dh,0cfh	; 9ae4  .S..Y.........].
	defb 058h,019h,01ch,023h,0ceh,00fh,060h,00dh,00fh,037h	; 9af4  X..#..`..7

; ----------------------------------------------------------------------
; DATOS dibujo_5B: el dibujo de secuencia 0x5B (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (24 bytes)
;   0x9afe..0x9b16  (24 bytes)
DATA_dibujo_5B:
	defb 063h,0cch,0dbh,0ech,0deh,012h,05ch,0cfh,072h,040h,04bh,040h,013h,018h,00eh,059h	; 9afe  c.....\.r@K@...Y
	defb 0d0h,000h,0cbh,0dah,05dh,016h,00fh,037h	; 9b0e  ....]..7

; ----------------------------------------------------------------------
; DATOS dibujo_5C: el dibujo de secuencia 0x5C (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (24 bytes)
;   0x9b16..0x9b2e  (24 bytes)
DATA_dibujo_5C:
	defb 063h,0cch,0dbh,0ach,053h,072h,016h,0c0h,04ch,013h,018h,011h,093h,0d8h,040h,052h	; 9b16  c...Sr..L.....@R
	defb 0cfh,000h,0cbh,0dah,05dh,016h,00fh,037h	; 9b26  ....]..7

; ----------------------------------------------------------------------
; DATOS dibujo_5D: el dibujo de secuencia 0x5D (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (35 bytes)
;   0x9b2e..0x9b51  (35 bytes)
DATA_dibujo_5D:
	defb 049h,0cch,04eh,0ach,013h,0deh,0ddh,080h,014h,057h,04fh,09dh,025h,025h,084h,0cch	; 9b2e  I.N......WO.%%..
	defb 0d8h,092h,04fh,040h,059h,0d9h,055h,040h,056h,053h,0cfh,0c0h,012h,0b2h,0ddh,000h	; 9b3e  ..O@Y.U@VS......
	defb 0cfh,04bh,0ceh	; 9b4e

; ----------------------------------------------------------------------
; DATOS dibujo_5E: el dibujo de secuencia 0x5E (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (27 bytes)
;   0x9b51..0x9b6c  (27 bytes)
DATA_dibujo_5E:
	defb 04ah,0cch,04ch,0ach,053h,072h,0d6h,0c0h,05ah,01eh,080h,053h,088h,0cch,0d0h,01eh	; 9b51  J.L.Sr..Z..S....
	defb 012h,00fh,0dch,00fh,060h,020h,00bh,016h,0d1h,04bh,0ddh	; 9b61  ....` ...K.

; ----------------------------------------------------------------------
; DATOS dibujo_5F: el dibujo de secuencia 0x5F (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (24 bytes)
;   0x9b6c..0x9b84  (24 bytes)
DATA_dibujo_5F:
	defb 063h,0cch,0dbh,0ach,012h,0cfh,05dh,080h,04dh,0d7h,0dah,016h,0deh,00fh,096h,040h	; 9b6c  c.....].M......@
	defb 0dch,00fh,019h,0e0h,04fh,00fh,00eh,037h	; 9b7c  ....O..7

; ----------------------------------------------------------------------
; DATOS dibujo_60: el dibujo de secuencia 0x60 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (21 bytes)
;   0x9b84..0x9b99  (21 bytes)
DATA_dibujo_60:
	defb 064h,0cch,0d8h,0ach,0d6h,04fh,0b2h,01dh,040h,00fh,00bh,00eh,010h,019h,01ch,0d8h	; 9b84  d....O..@.......
	defb 0cfh,017h,0ddh,053h,0ddh	; 9b94

; ----------------------------------------------------------------------
; DATOS dibujo_61: el dibujo de secuencia 0x61 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (27 bytes)
;   0x9b99..0x9bb4  (27 bytes)
DATA_dibujo_61:
	defb 04ah,0cch,04ch,0d4h,0cbh,017h,0ddh,0c0h,04ch,01ch,09eh,059h,088h,0cch,0d0h,0ddh	; 9b99  J.L.....L..Y....
	defb 0cbh,010h,016h,0e3h,040h,00fh,0deh,05fh,018h,00fh,0ceh	; 9ba9  ....@.._...

; ----------------------------------------------------------------------
; DATOS dibujo_62: el dibujo de secuencia 0x62 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (36 bytes)
;   0x9bb4..0x9bd8  (36 bytes)
DATA_dibujo_62:
	defb 045h,0cch,057h,0e0h,0d3h,022h,018h,080h,04fh,0deh,0cfh,01ch,0ceh,000h,05eh,057h	; 9bb4  E.W.."..O.....^W
	defb 00fh,0afh,00bh,01ch,01ah,089h,0cch,0cfh,01eh,0d9h,040h,00fh,0deh,05fh,058h,080h	; 9bc4  ..........@.._X.
	defb 052h,017h,00fh,030h	; 9bd4

; ----------------------------------------------------------------------
; DATOS dibujo_63: el dibujo de secuencia 0x63 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (41 bytes)
;   0x9bd8..0x9c01  (41 bytes)
DATA_dibujo_63:
	defb 044h,0cch,058h,0ach,021h,0cfh,0dch,0cfh,040h,018h,0ceh,04fh,080h,0cbh,05eh,00bh	; 9bd8  D.X.!...@..O..^.
	defb 00dh,015h,0d0h,05ch,059h,085h,0cch,0d6h,0cbh,0d8h,040h,0d8h,0d3h,00eh,018h,01eh	; 9be8  ...\Y.....@.....
	defb 053h,013h,00fh,00eh,00dh,01ch,04bh,01eh,037h	; 9bf8  S.....K.7

; ----------------------------------------------------------------------
; DATOS dibujo_64: el dibujo de secuencia 0x64 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (34 bytes)
;   0x9c01..0x9c23  (34 bytes)
DATA_dibujo_64:
	defb 047h,0cch,052h,0ech,0deh,012h,05ch,0cfh,072h,0c0h,04bh,040h,0cfh,09dh,01dh,011h	; 9c01  G.R...\.r.K@....
	defb 00fh,087h,0cch,0d2h,0cdh,019h,057h,098h,0d1h,040h,0d2h,0dch,059h,051h,052h,0a5h	; 9c11  ......W..@..YQR.
	defb 025h,02dh	; 9c21

; ----------------------------------------------------------------------
; DATOS dibujo_65: el dibujo de secuencia 0x65 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (33 bytes)
;   0x9c23..0x9c44  (33 bytes)
DATA_dibujo_65:
	defb 044h,0cch,058h,0ech,01eh,052h,0d8h,015h,080h,059h,0dfh,000h,04bh,018h,040h,0cfh	; 9c23  D.X..R...Y..K.@.
	defb 09eh,000h,0a1h,04bh,0a3h,08ah,0cch,0cch,012h,00bh,071h,059h,0d9h,056h,067h,0e7h	; 9c33  ...K......qY.Vg.
	defb 0a7h	; 9c43

; ----------------------------------------------------------------------
; DATOS dibujo_66: el dibujo de secuencia 0x66 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (45 bytes)
;   0x9c44..0x9c71  (45 bytes)
DATA_dibujo_66:
	defb 043h,0cch,059h,02ch,021h,00fh,017h,00bh,023h,018h,019h,01eh,0d2h,0cbh,020h,080h	; 9c44  C.Y,!...#..... .
	defb 0d1h,059h,000h,0d6h,04bh,01dh,083h,0cch,0dah,00ch,01fh,01eh,023h,019h,01fh,0a1h	; 9c54  .Y..K.......#...
	defb 019h,0d8h,05eh,0c0h,04fh,0cdh,0cbh,01ah,0f0h,0ceh,013h,027h,02dh	; 9c64  ..^.O......'-

; ----------------------------------------------------------------------
; DATOS dibujo_67: el dibujo de secuencia 0x67 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (18 bytes)
;   0x9c71..0x9c83  (18 bytes)
DATA_dibujo_67:
	defb 066h,0cch,0d4h,02ch,0a0h,04fh,0d9h,017h,040h,05dh,080h,058h,0deh,0c0h,00eh,04bh	; 9c71  f..,.O..@].X...K
	defb 0ceh,0a7h	; 9c81

; ----------------------------------------------------------------------
; DATOS dibujo_68: el dibujo de secuencia 0x68 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (40 bytes)
;   0x9c83..0x9cab  (40 bytes)
DATA_dibujo_68:
	defb 045h,0cch,056h,0ech,0dfh,01dh,0c0h,0deh,012h,0c0h,01dh,052h,00fh,016h,00eh,0ceh	; 9c83  E.V........R....
	defb 00fh,060h,00dh,00fh,085h,0cch,0d6h,061h,00fh,040h,019h,01eh,040h,01ch,019h,017h	; 9c93  .`.....a.@..@...
	defb 08ch,0cbh,04dh,04fh,09ch,053h,018h,037h	; 9ca3  ..MO.S.7

; ----------------------------------------------------------------------
; DATOS dibujo_69: el dibujo de secuencia 0x69 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (20 bytes)
;   0x9cab..0x9cbf  (20 bytes)
DATA_dibujo_69:
	defb 065h,0cch,0d6h,0ech,01dh,061h,01eh,00dh,012h,099h,0d8h,040h,052h,0cfh,040h,092h	; 9cab  e....a.....@R.@.
	defb 053h,04fh,00eh,037h	; 9cbb

; ----------------------------------------------------------------------
; DATOS dibujo_6A: el dibujo de secuencia 0x6A (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (12 bytes)
;   0x9cbf..0x9ccb  (12 bytes)
DATA_dibujo_6A:
	defb 06bh,0cch,0cbh,0ech,01dh,052h,00fh,016h,00eh,019h,018h,037h	; 9cbf  k....R.....7

; ----------------------------------------------------------------------
; DATOS dibujo_6B: el dibujo de secuencia 0x6B (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (21 bytes)
;   0x9ccb..0x9ce0  (21 bytes)
DATA_dibujo_6B:
	defb 064h,0cch,0d7h,0ach,0d6h,04fh,072h,01dh,040h,04fh,09eh,040h,05fh,09eh,040h,0d0h	; 9ccb  d....Or.@O.@_.@.
	defb 0c0h,012h,01ch,00fh,037h	; 9cdb

; ----------------------------------------------------------------------
; DATOS dibujo_6C: el dibujo de secuencia 0x6C (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (45 bytes)
;   0x9ce0..0x9d0d  (45 bytes)
DATA_dibujo_6C:
	defb 042h,0cch,05bh,0ech,0deh,012h,080h,020h,093h,04fh,0d8h,000h,09ch,0cbh,050h,000h	; 9ce0  B.[.... .O....P.
	defb 08dh,04bh,018h,019h,01eh,01fh,01dh,00fh,084h,0cch,0d8h,01eh,012h,00fh,0ddh,0d2h	; 9cf0  .K..............
	defb 013h,0d6h,00eh,040h,0d8h,080h,021h,0dch,05ah,040h,0d9h,04eh,0cfh	; 9d00  ...@..!.Z@.N.

; ----------------------------------------------------------------------
; DATOS dibujo_6D: el dibujo de secuencia 0x6D (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (43 bytes)
;   0x9d0d..0x9d38  (43 bytes)
DATA_dibujo_6D:
	defb 044h,0cch,057h,02ch,08dh,04bh,00dh,00fh,016h,0a1h,08bh,05ch,040h,09eh,052h,01fh	; 9d0d  D.W,.K.....\@.R.
	defb 011h,012h,021h,012h,019h,083h,0cch,0d9h,055h,018h,099h,09dh,000h,061h,00fh,01ch	; 9d1d  ..!.....U....a..
	defb 00fh,0a1h,04fh,072h,0d6h,040h,04fh,0cfh,0dch,011h,037h	; 9d2d  ..Or.@O...7

; ----------------------------------------------------------------------
; DATOS dibujo_6E: el dibujo de secuencia 0x6E (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (11 bytes)
;   0x9d38..0x9d43  (11 bytes)
DATA_dibujo_6E:
	defb 06bh,0cch,0cah,02ch,0e1h,04bh,01ah,000h,059h,010h,037h	; 9d38  k..,.K..Y.7

; ----------------------------------------------------------------------
; DATOS dibujo_6F: el dibujo de secuencia 0x6F (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (100 bytes)
;   0x9d43..0x9da7  (100 bytes)
DATA_dibujo_6F:
	defb 00fh,0cah,002h,038h,039h,02fh,0cah,002h,03ah,03bh,063h,0cah,012h,023h,0cfh,04bh	; 9d43  ...89/..:.c..#.K
	defb 000h,000h,000h,000h,000h,000h,0c0h,0cfh,020h,018h,01eh,0a2h,0cah,01ch,051h,007h	; 9d53  ........ .....Q.
	defb 009h,08ah,0c0h,000h,08bh,0e0h,013h,000h,0cch,05fh,01eh,019h,018h,05dh,0cfh,05eh	; 9d63  ........._...].^
	defb 080h,0d9h,05fh,0e9h,0cah,013h,013h,018h,080h,013h,0a2h,04fh,040h,010h,053h,012h	; 9d73  .._........O@.S.
	defb 0deh,04fh,000h,01eh,019h,029h,0cbh,030h,0dch,0cfh,01ah,0d6h,080h,00ch,00dh,0deh	; 9d83  .O...).0........
	defb 04fh,013h,019h,0d8h,06dh,0cbh,0b1h,018h,019h,01eh,023h,00fh,01eh,0dch,0cfh,05eh	; 9d93  O...m.....#....^
	defb 09ch,0d8h,00fh,030h	; 9da3

; ----------------------------------------------------------------------
; DATOS dibujo_80: el dibujo de secuencia 0x80 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (19 bytes)
;   0x9da7..0x9dba  (19 bytes)
DATA_dibujo_80:
	defb 066h,0cbh,0b5h,04bh,080h,056h,098h,051h,040h,019h,018h,011h,0deh,0d3h,017h,040h	; 9da7  f..K.V.Q@......@
	defb 08bh,051h,030h	; 9db7

; ----------------------------------------------------------------------
; DATOS dibujo_81: el dibujo de secuencia 0x81 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (39 bytes)
;   0x9dba..0x9de1  (39 bytes)
DATA_dibujo_81:
	defb 043h,0cbh,03bh,01ah,096h,04bh,04fh,01eh,040h,0dch,00bh,04eh,05fh,01dh,080h,0cbh	; 9dba  C....KO.@..N_...
	defb 01dh,040h,098h,060h,059h,020h,00fh,00eh,088h,0cbh,0b0h,013h,058h,000h,0c0h,09dh	; 9dca  .@.`Y ......X...
	defb 01ah,04dh,00fh,080h,0cbh,01ch,0ddh	; 9dda

; ----------------------------------------------------------------------
; DATOS dibujo_82: el dibujo de secuencia 0x82 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (15 bytes)
;   0x9de1..0x9df0  (15 bytes)
DATA_dibujo_82:
	defb 068h,0cbh,0b0h,060h,0cfh,05ch,01fh,0ddh,000h,0cbh,0cdh,01eh,01ch,093h,059h	; 9de1  h..`.\........Y

; ----------------------------------------------------------------------
; DATOS dibujo_83: el dibujo de secuencia 0x83 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (12 bytes)
;   0x9df0..0x9dfc  (12 bytes)
DATA_dibujo_83:
	defb 06ah,0cbh,0ach,060h,0cfh,05ch,01fh,01dh,080h,0cfh,058h,059h	; 9df0  j..`.\....XY

; ----------------------------------------------------------------------
; DATOS dibujo_84: el dibujo de secuencia 0x84 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (16 bytes)
;   0x9dfc..0x9e0c  (16 bytes)
DATA_dibujo_84:
	defb 068h,0cbh,0b1h,060h,0cfh,05ch,05fh,0ddh,040h,0cbh,056h,04bh,0cbh,0d8h,00eh,01ch	; 9dfc  h..`.\_.@.VK....

; ----------------------------------------------------------------------
; DATOS dibujo_85: el dibujo de secuencia 0x85 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (43 bytes)
;   0x9e0c..0x9e37  (43 bytes)
DATA_dibujo_85:
	defb 047h,0cbh,032h,0deh,0d3h,017h,040h,0d2h,04bh,040h,0dah,04bh,05dh,04fh,08eh,025h	; 9e0c  G.2...@.K@.K]O.%
	defb 025h,081h,0cbh,0beh,003h,001h,001h,023h,0cfh,04bh,0ddh,080h,016h,01eh,00fh,01ch	; 9e1c  %......#.K......
	defb 01eh,0d9h,000h,08fh,000h,08fh,04bh,04dh,09eh,025h,025h	; 9e2c  ......KM.%%

; ----------------------------------------------------------------------
; DATOS dibujo_86: el dibujo de secuencia 0x86 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (24 bytes)
;   0x9e37..0x9e4f  (24 bytes)
DATA_dibujo_86:
	defb 062h,0cbh,0bch,0d3h,01eh,040h,05dh,080h,058h,061h,080h,007h,041h,00ah,040h,0dch	; 9e37  b....@].Xa..A.@.
	defb 00bh,04eh,0dfh,01dh,080h,00fh,00bh,0dch	; 9e47  .N......

; ----------------------------------------------------------------------
; DATOS dibujo_87: el dibujo de secuencia 0x87 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (39 bytes)
;   0x9e4f..0x9e76  (39 bytes)
DATA_dibujo_87:
	defb 043h,0cbh,03bh,01ah,096h,04bh,00fh,09eh,040h,04fh,0d7h,04fh,053h,01dh,080h,0cbh	; 9e4f  C....K..@O.OS...
	defb 01dh,040h,098h,060h,059h,020h,00fh,00eh,088h,0cbh,0b0h,013h,058h,000h,0c0h,09dh	; 9e5f  .@.`Y ......X...
	defb 01ah,04dh,00fh,080h,0cbh,01ch,0ddh	; 9e6f

; ----------------------------------------------------------------------
; DATOS dibujo_88: el dibujo de secuencia 0x88 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (24 bytes)
;   0x9e76..0x9e8e  (24 bytes)
DATA_dibujo_88:
	defb 062h,0cbh,0bch,0d3h,01eh,040h,05dh,080h,058h,061h,080h,007h,001h,08ah,040h,04fh	; 9e76  b....@].Xa....@O
	defb 0d7h,04fh,0d3h,01dh,080h,00fh,00bh,0dch	; 9e86  .O......

; ----------------------------------------------------------------------
; DATOS dibujo_70: el dibujo de secuencia 0x70 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (189 bytes)
;   0x9e8e..0x9f4b  (189 bytes)
DATA_dibujo_70:
	defb 00fh,0cah,002h,038h,039h,02fh,0cah,002h,03ah,03bh,063h,0cah,012h,023h,0cfh,04bh	; 9e8e  ...89/..:.c..#.K
	defb 000h,000h,000h,000h,000h,000h,0c0h,0cfh,020h,018h,01eh,0a2h,0cah,01ch,051h,047h	; 9e9e  ........ .....QG
	defb 007h,002h,0c0h,000h,093h,01ch,05eh,000h,019h,010h,0d4h,0cbh,017h,0ddh,0c0h,04ch	; 9eae  ......^........L
	defb 01ch,09eh,059h,0e2h,0cah,019h,091h,047h,007h,049h,000h,080h,04bh,01ch,080h,013h	; 9ebe  ..Y....G.I..K...
	defb 01eh,012h,08ch,0cbh,04dh,04fh,09ch,053h,018h,022h,0cbh,035h,0d1h,047h,007h,047h	; 9ece  ....MO.S.".5.G.G
	defb 000h,080h,04bh,01ch,080h,013h,01eh,012h,060h,08fh,058h,017h,069h,0cbh,036h,0d4h	; 9ede  ..K.....`.X.i.6.
	defb 0cbh,017h,0ddh,0c0h,00ch,0cdh,0d9h,017h,0ddh,080h,016h,01ch,05dh,0c0h,035h,036h	; 9eee  ............].56
	defb 0a2h,0cbh,03ah,051h,007h,008h,04ah,000h,080h,04bh,01ch,080h,013h,01eh,012h,0ddh	; 9efe  ..:Q..J..K......
	defb 08bh,016h,097h,0cbh,018h,00fh,01ch,0e2h,0cbh,03ch,091h,007h,008h,089h,0c0h,000h	; 9f0e  .........<......
	defb 08fh,00bh,05eh,000h,019h,010h,0d4h,0cbh,017h,0ddh,0c0h,04ch,01ch,09eh,059h,062h	; 9f1e  ..^........L..Yb
	defb 0cch,056h,051h,007h,009h,00ah,0c0h,080h,0e0h,0d3h,022h,018h,02dh,040h,093h,011h	; 9f2e  .VQ.......".-@..
	defb 05eh,00fh,01ch,0ach,0cch,0c9h,0ceh,0cfh,020h,0d6h,0d9h,01ah,00eh	; 9f3e  ^....... ....

; ----------------------------------------------------------------------
; DATOS dibujo_71: el dibujo de secuencia 0x71 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (67 bytes)
;   0x9f4b..0x9f8e  (67 bytes)
DATA_dibujo_71:
	defb 00ch,0cch,047h,0ach,020h,093h,00fh,018h,02dh,046h,0cch,054h,090h,013h,051h,01eh	; 9f4b  ..G. ...-F.T..Q.
	defb 00fh,01ch,0ceh,0cfh,020h,0d6h,0d9h,01ah,0ceh,000h,08ch,084h,0cch,059h,0d8h,0cfh	; 9f5b  .... ........Y..
	defb 017h,09dh,013h,0ddh,0c0h,01dh,04dh,06fh,0deh,00fh,052h,000h,04bh,0cfh,018h,08dh	; 9f6b  ......Mo..R.K...
	defb 030h,0c6h,0cch,0d4h,01eh,0d2h,04fh,00fh,0c0h,04bh,00fh,000h,005h,04dh,0d6h,04bh	; 9f7b  0.....O..K...M.K
	defb 01dh,00fh,0ddh	; 9f8b

; ----------------------------------------------------------------------
; DATOS dibujo_72: el dibujo de secuencia 0x72 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits; lo leen p26:634C, p26:6350, p26:6392 (54 bytes)
;   0x9f8e..0x9fc4  (54 bytes)
DATA_dibujo_72:
	defb 02ch,0cch,048h,0ech,0d1h,04bh,04eh,0d3h,08fh,065h,0cch,057h,0cbh,01ch,05eh,0d0h	; 9f8e  ,.H..KN..e.W..^.
	defb 013h,04dh,0cbh,016h,040h,098h,05eh,04fh,0d6h,0d3h,011h,018h,00dh,00fh,0a2h,0cch	; 9f9e  .M..@.^O........
	defb 0dch,08dh,099h,057h,01fh,0deh,04fh,040h,0d3h,058h,09eh,04bh,056h,04fh,08eh,040h	; 9fae  ...W..O@.X.KVO.@
	defb 0d8h,000h,060h,022h,00fh,0d8h	; 9fbe

; ----------------------------------------------------------------------
; DATOS dibujo_73: el dibujo de secuencia 0x73 (p26:6349): trozos de dos
;   bytes, cuantos caracteres, el tercio y el final, y sus caracteres de 6
;   bits (sigue en el banco 28, en 0xA000); lo leen p26:634C, p26:6350,
;   p26:6392 (60 bytes)
;   0x9fc4..0xa000  (60 bytes)
DATA_dibujo_73:
	defb 009h,0cch,04eh,02ch,00eh,08bh,013h,0ceh,000h,05fh,09ch,05eh,018h,02dh,043h,0cch	; 9fc4  ..N,....._.^.-C.
	defb 05bh,0ceh,0d3h,01ch,08dh,0deh,000h,0cfh,0ddh,00dh,018h,08eh,04bh,01eh,000h,059h	; 9fd4  [...........K..Y
	defb 0c0h,054h,04bh,00fh,01dh,030h,082h,0cch,05ch,0e0h,0d3h,022h,0d8h,000h,050h,0d1h	; 9fe4  .TK..0..\.."..P.
	defb 0d2h,01eh,0dch,000h,05ah,016h,019h,0deh,012h,00bh,01dh,092h	; 9ff4  ....Z.......

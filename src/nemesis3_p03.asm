; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 03 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
lac2bh:	equ 0x0ac2b

; ----------------------------------------------------------------------
; DATOS partida_A000: los 2 ultimos bytes de la instruccion de p02:9FFF (DD 77
;   04), que empieza en el banco 2; lo leen p02:9FFF (2 bytes)
;   0xa000..0xa002  (2 bytes)
DATA_partida_A000:
	defb 077h,004h	; a000

; ======================================================================
; CODIGO 0xa002..0xa0a5  (163 bytes)
; ======================================================================


L_A002:
	inc (ix+001h)		;a002
	ld (ix+010h),00bh		;a005
	ld (ix+002h),010h		;a009
	ret			;a00d
L_A00E:
	ld (ix+001h),002h		;a00e
	ld de,0fe00h		;a012
	jp 078b3h		;a015
L_A018:
	dec (ix+002h)		;a018
	ret nz			;a01b
	ld (ix+010h),007h		;a01c
	dec (ix+001h)		;a020
	jr $-118		;a023
L_A025:
	call L_A046		;a025
	ld hl,0a0b9h		;a028
	call 04a6eh		;a02b
	ld (ix+030h),a		;a02e
	ret			;a031
L_A032:
	call 078bah		;a032
	inc c			;a035
	ld a,d			;a036
	rla			;a037
	jr nc,L_A03E		;a038
	call 04a75h		;a03a
	inc c			;a03d
L_A03E:
	ld hl,00300h		;a03e
	rst 20h			;a041
	ret c			;a042
	ld c,003h		;a043
	ret			;a045
L_A046:
	ld c,000h		;a046
	bit 2,(ix+010h)		;a048
	call nz,L_A032		;a04c
	ld a,c			;a04f
	bit 0,(ix+01fh)		;a050
	ret z			;a054
	add a,004h		;a055
	ret			;a057
L_A058:
	ld a,(ix+02fh)		;a058
	or a			;a05b
	ret nz			;a05c
	ld a,(ix+030h)		;a05d
	cp 0b4h		;a060
	jr z,L_A067		;a062
	cp 0c4h		;a064
	ret nz			;a066
L_A067:
	ld d,(ix+006h)		;a067
	ld e,(ix+004h)		;a06a
	ld b,004h		;a06d
L_A06F:
	push de			;a06f
	push bc			;a070
	call L_A07F		;a071
	call 08580h		;a074
	pop bc			;a077
	pop de			;a078
	djnz L_A06F		;a079
	inc (ix+02fh)		;a07b
	ret			;a07e
L_A07F:
	ld a,(0e389h)		;a07f
	sub 00ah		;a082
	ld hl,0a0a5h		;a084
	jr nc,L_A08C		;a087
	ld hl,0a0afh		;a089
L_A08C:
	push af			;a08c
	ld a,b			;a08d
	call 04a5ah		;a08e   ; lee_palabra: HL = la palabra A de la tabla HL
	ld (0e474h),hl		;a091
	pop af			;a094
	ld hl,0a0a3h		;a095
	jr nc,L_A09D		;a098
	ld hl,0a0adh		;a09a
L_A09D:
	ld a,b			;a09d
	call 04a5ah		;a09e   ; lee_palabra: HL = la palabra A de la tabla HL
	ld (0e472h),hl		;a0a1
	ret			;a0a4

; ----------------------------------------------------------------------
; DATOS tabla_A0A5: tabla que se lee desde HL = 0xA0A5 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A084 (8 bytes)
;   0xa0a5..0xa0ad  (8 bytes)
DATA_tabla_A0A5:
	defb 000h,0feh,000h,002h,000h,002h,000h,0feh	; a0a5  ........

; ----------------------------------------------------------------------
; DATOS tabla_A0AD: tabla que se lee desde HL = 0xA0AD con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A09A (2 bytes)
;   0xa0ad..0xa0af  (2 bytes)
DATA_tabla_A0AD:
	defb 000h,0feh	; a0ad

; ----------------------------------------------------------------------
; DATOS tabla_A0AF: tabla que se lee desde HL = 0xA0AF con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A089 (10 bytes)
;   0xa0af..0xa0b9  (10 bytes)
DATA_tabla_A0AF:
	defb 000h,0ffh,000h,001h,000h,001h,000h,0ffh,000h,0ffh	; a0af  ..........

; ----------------------------------------------------------------------
; DATOS tabla_A0B9: tabla que se lee desde HL = 0xA0B9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A028 (8 bytes)
;   0xa0b9..0xa0c1  (8 bytes)
DATA_tabla_A0B9:
	defb 0b0h,0bch,0b8h,0b4h,0c0h,0c8h,0cch,0c4h	; a0b9  ........

; ======================================================================
; CODIGO 0xa0c1..0xa0eb  (42 bytes)
; ======================================================================


L_A0C1:
	ld (ix+014h),004h		;a0c1
	ld (ix+013h),001h		;a0c5
L_A0C9:
	ld (ix+010h),008h		;a0c9
	res 7,(ix+00bh)		;a0cd
	ld a,(0e389h)		;a0d1
	sub 030h		;a0d4
	neg		;a0d6
	ld (ix+002h),a		;a0d8
	bit 0,(ix+01fh)		;a0db
	ret z			;a0df
	ld (ix+032h),023h		;a0e0
	ret			;a0e4
L_A0E5:
	ld a,(ix+001h)		;a0e5
	call 04093h		;a0e8   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_A0EB: 5 destinos del despachador p00:4093 (call en p03:A0E8, el
;   indice en A): A0F5, A109, A12B, A155, A18E; lo leen p03:A0E8 (10 bytes)
;   0xa0eb..0xa0f5  (10 bytes)
DATA_tabla_A0EB:
	defw 0a0f5h,0a109h,0a12bh,0a155h,0a18eh	; a0eb

; ======================================================================
; CODIGO 0xa0f5..0xa2cb  (470 bytes)
; ======================================================================


L_A0F5:
	dec (ix+002h)		;a0f5
	ret nz			;a0f8
	ld (ix+002h),004h		;a0f9
	set 7,(ix+00bh)		;a0fd
	ld (ix+010h),00bh		;a101
	inc (ix+001h)		;a105
	ret			;a108
L_A109:
	dec (ix+002h)		;a109
	ret nz			;a10c
	inc (ix+013h)		;a10d
	ld (ix+00eh),010h		;a110
	inc (ix+001h)		;a114
	bit 0,(ix+01fh)		;a117
	jr nz,L_A126		;a11b
	ld a,(ix+004h)		;a11d
	sub 008h		;a120
	ld (ix+004h),a		;a122
	ret			;a125
L_A126:
	ld (ix+032h),04ah		;a126
	ret			;a12a
L_A12B:
	ld a,(0e303h)		;a12b   ; lee la cuenta de cuadros del juego
	and 003h		;a12e
	ret nz			;a130
	call L_A199		;a131
	cp (ix+032h)		;a134
	jr z,L_A143		;a137
L_A139:
	jr c,L_A13F		;a139
	inc (ix+032h)		;a13b
	ret			;a13e
L_A13F:
	dec (ix+032h)		;a13f
	ret			;a142
L_A143:
	ld e,(ix+004h)		;a143
	ld d,(ix+006h)		;a146
	ld c,000h		;a149
	ld a,036h		;a14b
	call 07647h		;a14d
	ret nc			;a150
	inc (ix+001h)		;a151
	ret			;a154
L_A155:
	ld a,(0e303h)		;a155   ; lee la cuenta de cuadros del juego
	and 003h		;a158
	ret nz			;a15a
	bit 0,(ix+01fh)		;a15b
	ld a,04ah		;a15f
	jr nz,L_A165		;a161
	ld a,04fh		;a163
L_A165:
	sub (ix+032h)		;a165
	jr z,L_A16C		;a168
	jr L_A139		;a16a
L_A16C:
	ld (ix+002h),004h		;a16c
	dec (ix+013h)		;a170
	ld (ix+00eh),008h		;a173
	inc (ix+001h)		;a177
	bit 0,(ix+01fh)		;a17a
	jr nz,L_A189		;a17e
	ld a,(ix+004h)		;a180
	add a,008h		;a183
	ld (ix+004h),a		;a185
	ret			;a188
L_A189:
	ld (ix+032h),023h		;a189
	ret			;a18d
L_A18E:
	dec (ix+002h)		;a18e
	ret nz			;a191
	ld (ix+001h),000h		;a192
	jp L_A0C9		;a196
L_A199:
	ld e,(ix+004h)		;a199
	ld d,(ix+006h)		;a19c
	call 063ffh		;a19f
	ld a,(0e477h)		;a1a2
	cp 080h		;a1a5
	jr c,L_A1AB		;a1a7
	neg		;a1a9
L_A1AB:
	ld b,004h		;a1ab
L_A1AD:
	sub 01ah		;a1ad
	jr c,L_A1B3		;a1af
	djnz L_A1AD		;a1b1
L_A1B3:
	bit 0,(ix+01fh)		;a1b3
	ld a,048h		;a1b7
	jr nz,L_A1BD		;a1b9
	ld a,04dh		;a1bb
L_A1BD:
	add a,b			;a1bd
	ret			;a1be
L_A1BF:
	ld (ix+010h),015h		;a1bf
	ld a,(0e389h)		;a1c3
	sub 020h		;a1c6
	neg		;a1c8
	ld (ix+002h),a		;a1ca
	ld a,060h		;a1cd
	jp 07865h		;a1cf
L_A1D2:
	dec (ix+002h)		;a1d2
	ret nz			;a1d5
	call 075d1h		;a1d6
	ld a,(ix+006h)		;a1d9
	and 0f8h		;a1dc
	ld d,a			;a1de
	ld a,(ix+004h)		;a1df
	and 0f8h		;a1e2
	ld e,a			;a1e4
	ld c,000h		;a1e5
	ld a,012h		;a1e7
	call 07647h		;a1e9
	ret			;a1ec
L_A1ED:
	ld (ix+002h),020h		;a1ed
	ld (ix+010h),019h		;a1f1
	ld a,001h		;a1f5
L_A1F7:
	ld (ix+013h),a		;a1f7
	ld (ix+014h),a		;a1fa
	add a,a			;a1fd
	add a,a			;a1fe
	add a,a			;a1ff
	ld (ix+00eh),a		;a200
	ld (ix+00fh),a		;a203
	ret			;a206
L_A207:
	dec (ix+002h)		;a207
	ld a,(ix+002h)		;a20a
	cp 01ch		;a20d
	jr z,L_A24B		;a20f
	cp 018h		;a211
	jr z,L_A222		;a213
	cp 008h		;a215
	jr z,L_A24B		;a217
	cp 004h		;a219
	jr z,L_A234		;a21b
	or a			;a21d
	ret nz			;a21e
	jp 075d1h		;a21f
L_A222:
	call L_A246		;a222
	ld b,0f8h		;a225
	call L_A259		;a227
	jp nc,075d1h		;a22a
	call L_A261		;a22d
	jp nc,075d1h		;a230
	ret			;a233
L_A234:
	call L_A250		;a234
	ld b,008h		;a237
	call L_A259		;a239
	jp c,075d1h		;a23c
	call L_A261		;a23f
	jp c,075d1h		;a242
	ret			;a245
L_A246:
	ld bc,02203h		;a246
	jr L_A253		;a249
L_A24B:
	ld bc,02102h		;a24b
	jr L_A253		;a24e
L_A250:
	ld bc,02001h		;a250
L_A253:
	ld (ix+032h),b		;a253
	ld a,c			;a256
	jr L_A1F7		;a257
L_A259:
	ld a,(ix+006h)		;a259
	add a,b			;a25c
	ld (ix+006h),a		;a25d
	ret			;a260
L_A261:
	ld a,(ix+004h)		;a261
	add a,b			;a264
	ld (ix+004h),a		;a265
	ret			;a268
L_A269:
	call 07844h		;a269
L_A26C:
	ld (ix+037h),00ah		;a26c
	xor a			;a270
	ld (ix+01ch),a		;a271
	call L_A2A5		;a274
L_A277:
	call L_A2DD		;a277
L_A27A:
	ld hl,(0e363h)		;a27a   ; lee la posicion del scroll (16 bits)
	ld de,000a0h		;a27d
	rst 20h			;a280
	ld de,0fd00h		;a281
	jr c,L_A289		;a284
	ld de,0fc00h		;a286
L_A289:
	call 078b3h		;a289
L_A28C:
	ld de,00400h		;a28c
	ld hl,0ff80h		;a28f
	jp 099d1h		;a292
L_A295:
	call 092efh		;a295
	call 07f1ch		;a298
	call 07f42h		;a29b
	call z,07eeah		;a29e
	dec (ix+01dh)		;a2a1
	ret nz			;a2a4
L_A2A5:
	ld a,(ix+01ch)		;a2a5
	cp 006h		;a2a8
	jr c,L_A2B0		;a2aa
	xor a			;a2ac
	ld (ix+01ch),a		;a2ad
L_A2B0:
	ld b,a			;a2b0
	inc (ix+01ch)		;a2b1
	ld hl,0a2cbh		;a2b4
	call 04a6eh		;a2b7
	ld (ix+01dh),a		;a2ba
	ld a,b			;a2bd
	ld hl,0a2d1h		;a2be
	call 04a5ah		;a2c1   ; lee_palabra: HL = la palabra A de la tabla HL
	ld (ix+030h),l		;a2c4
	ld (ix+036h),h		;a2c7
	ret			;a2ca

; ----------------------------------------------------------------------
; DATOS tabla_A2CB: tabla que se lee desde HL = 0xA2CB con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A2B4 (6 bytes)
;   0xa2cb..0xa2d1  (6 bytes)
DATA_tabla_A2CB:
	defb 002h,002h,002h,002h,002h,002h	; a2cb

; ----------------------------------------------------------------------
; DATOS tabla_A2D1: tabla que se lee desde HL = 0xA2D1 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A2BE (12 bytes)
;   0xa2d1..0xa2dd  (12 bytes)
DATA_tabla_A2D1:
	defb 0c4h,0cch,0d4h,0dch,0d8h,0e0h,0c8h,0d0h,0d8h,0e0h,0d4h,0dch	; a2d1  ............

; ======================================================================
; CODIGO 0xa2dd..0xa2f5  (24 bytes)
; ======================================================================


L_A2DD:
	ld a,(ix+01ch)		;a2dd
	ld hl,0a2f3h		;a2e0
	call 04a5ah		;a2e3   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(ix+006h)		;a2e6
	add a,h			;a2e9
	ld (ix+035h),a		;a2ea
	ld a,(ix+004h)		;a2ed
	add a,l			;a2f0
	ld (ix+034h),a		;a2f1
	ret			;a2f4

; ----------------------------------------------------------------------
; DATOS leido_A2F5: 12 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (12 bytes)
;   0xa2f5..0xa301  (12 bytes)
DATA_leido_A2F5:
	defb 0fbh,006h,0fdh,008h,006h,0fbh,004h,0fbh,006h,0fbh,0fdh,008h	; a2f5  ............

; ======================================================================
; CODIGO 0xa301..0xa338  (55 bytes)
; ======================================================================


L_A301:
	ld (ix+00dh),080h		;a301
	ld (ix+012h),0a1h		;a305
	xor a			;a309
	ld (ix+015h),a		;a30a
	ld (ix+017h),a		;a30d
	inc a			;a310
	ld (ix+01ah),a		;a311
	ld (ix+007h),04bh		;a314
	call L_A352		;a318
	ld a,(ix+00bh)		;a31b
	ld hl,0a338h		;a31e
	call 04a5ah		;a321   ; lee_palabra: HL = la palabra A de la tabla HL
	ld (ix+009h),l		;a324
	ld (ix+00ah),h		;a327
	ld a,(0e4b0h)		;a32a
	dec a			;a32d
	ld hl,0a33eh		;a32e
	call 04a6eh		;a331
	ld (ix+016h),a		;a334
	ret			;a337

; ----------------------------------------------------------------------
; DATOS tabla_A338: tabla que se lee desde HL = 0xA338 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A31E (6 bytes)
;   0xa338..0xa33e  (6 bytes)
DATA_tabla_A338:
	defb 00eh,00eh,003h,00dh,003h,00dh	; a338

; ----------------------------------------------------------------------
; DATOS tabla_A33E: tabla que se lee desde HL = 0xA33E con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A32E (9 bytes)
;   0xa33e..0xa347  (9 bytes)
DATA_tabla_A33E:
	defb 000h,000h,000h,000h,002h,001h,001h,002h,001h	; a33e  .........

; ----------------------------------------------------------------------
; DATOS leido_A347: 8 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (8 bytes)
;   0xa347..0xa34f  (8 bytes)
DATA_leido_A347:
	defb 001h,001h,002h,001h,001h,002h,001h,001h	; a347  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa34f..0xa352  (3 bytes)
DATA_A34F:
	defb 000h,000h,000h	; a34f

; ======================================================================
; CODIGO 0xa352..0xa365  (19 bytes)
; ======================================================================


L_A352:
	ld a,(ix+00bh)		;a352
	ld de,0a365h		;a355
	call 04a65h		;a358
	call L_A390		;a35b
	call L_A469		;a35e
	call L_A530		;a361
	ret			;a364

; ----------------------------------------------------------------------
; DATOS leido_A365: 6 bytes que leen p00:4A6A, p00:4A6C al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A6A, p00:4A6C (6 bytes)
;   0xa365..0xa36b  (6 bytes)
DATA_leido_A365:
	defb 0efh,0a3h,004h,0a4h,004h,0a4h	; a365

; ======================================================================
; CODIGO 0xa36b..0xa371  (6 bytes)
; ======================================================================


L_A36B:
	ld a,(ix+00bh)		;a36b
	call 04093h		;a36e   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_A371: 3 destinos del despachador p00:4093 (call en p03:A36E, el
;   indice en A): A377, A4B1, A4BF; lo leen p03:A36E (6 bytes)
;   0xa371..0xa377  (6 bytes)
DATA_tabla_A371:
	defw 0a377h,0a4b1h,0a4bfh	; a371  -> L_A377 L_A4B1 L_A4BF

; ======================================================================
; CODIGO 0xa377..0xa3ef  (120 bytes)
; ======================================================================


L_A377:
	call L_A4CD		;a377
	ld a,(ix+01fh)		;a37a
	ld de,0a91ch		;a37d
	call 06edah		;a380
	call L_A47C		;a383
	call L_A490		;a386
	call L_A49B		;a389
	call L_A4A6		;a38c
	ret			;a38f
L_A390:
	dec (ix+01ah)		;a390
	ret nz			;a393
L_A394:
	ld l,(ix+017h)		;a394
	inc (ix+017h)		;a397
	ld h,000h		;a39a
	add hl,de			;a39c
	ld a,(hl)			;a39d
	cp 0ffh		;a39e
	jr nz,L_A3AB		;a3a0
	inc (ix+015h)		;a3a2
	ld (ix+017h),000h		;a3a5
	jr L_A394		;a3a9
L_A3AB:
	ld c,a			;a3ab
	rrca			;a3ac
	rrca			;a3ad
	rrca			;a3ae
	rrca			;a3af
	and 00fh		;a3b0
	ld (ix+01ah),a		;a3b2
	ld a,c			;a3b5
	and 00fh		;a3b6
	ld b,a			;a3b8
	add a,a			;a3b9
	add a,a			;a3ba
	add a,b			;a3bb
	ld e,a			;a3bc
	ld d,000h		;a3bd
	ld hl,0a419h		;a3bf
	add hl,de			;a3c2
	push hl			;a3c3
	push ix		;a3c4
	pop hl			;a3c6
	ld e,01bh		;a3c7
	add hl,de			;a3c9
	ex de,hl			;a3ca
	pop hl			;a3cb
	ld bc,00005h		;a3cc
	ldir		;a3cf
	ld a,(ix+015h)		;a3d1
	rra			;a3d4
	ret nc			;a3d5
	ld a,(ix+01bh)		;a3d6
	ld b,(ix+01ch)		;a3d9
	ld (ix+01ch),a		;a3dc
	ld (ix+01bh),b		;a3df
	ld a,(ix+01dh)		;a3e2
	ld b,(ix+01eh)		;a3e5
	ld (ix+01eh),a		;a3e8
	ld (ix+01dh),b		;a3eb
	ret			;a3ee

; ----------------------------------------------------------------------
; DATOS leido_A3EF: 42 bytes que lee p03:A39D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p03:A39D (42 bytes)
;   0xa3ef..0xa419  (42 bytes)
DATA_leido_A3EF:
	defb 020h,021h,020h,021h,020h,021h,022h,023h,022h,02ah,02bh,02ah,02bh,02ch,02dh,02eh	; a3ef   ! ! !"#"*+*+,-.
	defb 02fh,02ch,02dh,02eh,02fh,020h,021h,020h,021h,020h,021h,022h,023h,024h,025h,024h	; a3ff  /,-./ ! ! !"#$%$
	defb 025h,026h,027h,028h,029h,026h,027h,028h,029h,0ffh	; a40f  %&'()&'().

; ----------------------------------------------------------------------
; DATOS tabla_A419: tabla que se lee desde HL = 0xA419 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A3BF (80 bytes)
;   0xa419..0xa469  (80 bytes)
DATA_tabla_A419:
	defb 000h,000h,000h,000h,000h,001h,001h,001h,001h,001h,002h,002h,002h,002h,002h,003h	; a419  ................
	defb 003h,003h,003h,003h,004h,002h,002h,002h,002h,005h,003h,003h,003h,003h,006h,002h	; a429  ................
	defb 002h,002h,002h,007h,003h,003h,003h,003h,008h,002h,002h,002h,002h,009h,003h,003h	; a439  ................
	defb 003h,003h,003h,003h,004h,003h,003h,002h,002h,005h,002h,002h,003h,003h,006h,003h	; a449  ................
	defb 003h,002h,002h,007h,002h,002h,003h,003h,008h,003h,003h,002h,002h,009h,002h,002h	; a459  ................

; ======================================================================
; CODIGO 0xa469..0xa4dd  (116 bytes)
; ======================================================================


L_A469:
	ld a,(ix+00bh)		;a469
	or a			;a46c
	ret z			;a46d
	dec a			;a46e
	ld a,050h		;a46f
	jr z,L_A475		;a471
	ld a,054h		;a473
L_A475:
	add a,(ix+01fh)		;a475
	ld (ix+007h),a		;a478
	ret			;a47b
L_A47C:
	ld a,(ix+01bh)		;a47c
	ld de,0aa64h		;a47f
	ld bc,0ff44h		;a482
L_A485:
	ld l,(ix+018h)		;a485
	ld h,(ix+019h)		;a488
	add hl,bc			;a48b
	call 06edah		;a48c
	ret			;a48f
L_A490:
	ld a,(ix+01ch)		;a490
	ld de,0aacfh		;a493
	ld bc,00343h		;a496
	jr L_A485		;a499
L_A49B:
	ld a,(ix+01dh)		;a49b
	ld de,0ab32h		;a49e
	ld bc,0010dh		;a4a1
	jr L_A485		;a4a4
L_A4A6:
	ld a,(ix+01eh)		;a4a6
	ld de,0abddh		;a4a9
	ld bc,000fbh		;a4ac
	jr L_A485		;a4af
L_A4B1:
	call L_A4CD		;a4b1
	ld a,(ix+01bh)		;a4b4
	ld de,0ac71h		;a4b7
	ld bc,00083h		;a4ba
	jr L_A485		;a4bd
L_A4BF:
	call L_A4CD		;a4bf
	ld a,(ix+01bh)		;a4c2
	ld de,0acd4h		;a4c5
	ld bc,0ff43h		;a4c8
	jr L_A485		;a4cb
L_A4CD:
	call 08281h		;a4cd
	ld (ix+018h),l		;a4d0
	ld (ix+019h),h		;a4d3
	ret			;a4d6
L_A4D7:
	ld a,(ix+00bh)		;a4d7
	call 04093h		;a4da   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_A4DD: 3 destinos del despachador p00:4093 (call en p03:A4DA, el
;   indice en A): A4E3, A508, A512; lo leen p03:A4DA (6 bytes)
;   0xa4dd..0xa4e3  (6 bytes)
DATA_tabla_A4DD:
	defw 0a4e3h,0a508h,0a512h	; a4dd  -> L_A4E3 L_A508 L_A512

; ======================================================================
; CODIGO 0xa4e3..0xa578  (149 bytes)
; ======================================================================


L_A4E3:
	ld bc,00703h		;a4e3
	ld de,0ff44h		;a4e6
	call L_A518		;a4e9
	ld bc,00703h		;a4ec
	ld de,00383h		;a4ef
	call L_A518		;a4f2
	ld bc,00508h		;a4f5
	ld de,0010eh		;a4f8
	call L_A518		;a4fb
	ld bc,00507h		;a4fe
	ld de,000fbh		;a501
	call L_A518		;a504
	ret			;a507
L_A508:
	ld bc,00703h		;a508
	ld de,000c3h		;a50b
	call L_A518		;a50e
	ret			;a511
L_A512:
	ld bc,00703h		;a512
	ld de,0ff43h		;a515
L_A518:
	ld l,(ix+018h)		;a518
	ld h,(ix+019h)		;a51b
	add hl,de			;a51e
	ld de,00040h		;a51f
	xor a			;a522
L_A523:
	push bc			;a523
	push hl			;a524
L_A525:
	ld (hl),a			;a525
	inc hl			;a526
	djnz L_A525		;a527
	pop hl			;a529
	add hl,de			;a52a
	pop bc			;a52b
	dec c			;a52c
	jr nz,L_A523		;a52d
	ret			;a52f
L_A530:
	ld a,(ix+01ah)		;a530
	dec a			;a533
	ret nz			;a534
	call L_A5A9		;a535
	ld a,0ffh		;a538
	cp b			;a53a
	ret z			;a53b
	call L_A584		;a53c
	ret nz			;a53f
	call 058e1h		;a540   ; sonido_30: pide el sonido 0x30
	ld a,b			;a543
	ld hl,0a578h		;a544
	call 04a5ah		;a547   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(ix+006h)		;a54a
	add a,h			;a54d
	ld d,a			;a54e
	ld a,(ix+004h)		;a54f
	add a,l			;a552
	ld e,a			;a553
	ld a,(ix+016h)		;a554
	or a			;a557
	ret z			;a558
	dec a			;a559
	jr z,L_A566		;a55a
	set 6,b		;a55c
	call L_A56C		;a55e
	set 7,b		;a561
	call L_A56C		;a563
L_A566:
	res 6,b		;a566
	call L_A597		;a568
	ret c			;a56b
L_A56C:
	push de			;a56c
	push bc			;a56d
	ld c,001h		;a56e
	ld a,017h		;a570
	call 07647h		;a572
	pop bc			;a575
	pop de			;a576
	ret			;a577

; ----------------------------------------------------------------------
; DATOS tabla_A578: tabla que se lee desde HL = 0xA578 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A544 (12 bytes)
;   0xa578..0xa584  (12 bytes)
DATA_tabla_A578:
	defb 000h,048h,068h,028h,048h,070h,038h,000h,010h,028h,0f8h,028h	; a578  .Hh(Hp8..(.(

; ======================================================================
; CODIGO 0xa584..0xa591  (13 bytes)
; ======================================================================


L_A584:
	ld a,b			;a584
	ld hl,0a591h		;a585
	call 04a6eh		;a588
	add a,(ix+018h)		;a58b
	bit 5,a		;a58e
	ret			;a590

; ----------------------------------------------------------------------
; DATOS tabla_A591: tabla que se lee desde HL = 0xA591 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A585 (6 bytes)
;   0xa591..0xa597  (6 bytes)
DATA_tabla_A591:
	defb 009h,005h,00eh,000h,003h,003h	; a591

; ======================================================================
; CODIGO 0xa597..0xa5f9  (98 bytes)
; ======================================================================


L_A597:
	ld a,(0e606h)		;a597
	sub d			;a59a
	add a,014h		;a59b
	sub 028h		;a59d
	ret c			;a59f
	ld a,(0e604h)		;a5a0
	sub e			;a5a3
	add a,014h		;a5a4
	sub 028h		;a5a6
	ret			;a5a8
L_A5A9:
	ld a,(ix+00bh)		;a5a9
	ld c,a			;a5ac
	or a			;a5ad
	jr z,L_A5C3		;a5ae
	ld b,0ffh		;a5b0
	ld a,(ix+015h)		;a5b2
	rra			;a5b5
	ret c			;a5b6
	ld a,(ix+017h)		;a5b7
	sub 00ah		;a5ba
	ret nz			;a5bc
	ld b,004h		;a5bd
	dec c			;a5bf
	ret z			;a5c0
	inc b			;a5c1
	ret			;a5c2
L_A5C3:
	ld b,002h		;a5c3
	ld a,(ix+017h)		;a5c5
	sub 00ah		;a5c8
	jr z,L_A5D3		;a5ca
	sub 015h		;a5cc
	ld b,0ffh		;a5ce
	ret nz			;a5d0
	ld b,000h		;a5d1
L_A5D3:
	ld a,(ix+015h)		;a5d3
	rra			;a5d6
	ret nc			;a5d7
	inc b			;a5d8
	ret			;a5d9
L_A5DA:
	call 07844h		;a5da
L_A5DD:
	ld a,(ix+01fh)		;a5dd
	bit 6,a		;a5e0
	jr z,L_A5F3		;a5e2
	rlca			;a5e4
	and 007h		;a5e5
	ld hl,0a5f9h		;a5e7
	call 04a5ah		;a5ea   ; lee_palabra: HL = la palabra A de la tabla HL
L_A5ED:
	ld a,060h		;a5ed
	call 07888h		;a5ef
L_A5F2:
	ret			;a5f2
L_A5F3:
	ld a,060h		;a5f3
	call 07865h		;a5f5
L_A5F8:
	ret			;a5f8

; ----------------------------------------------------------------------
; DATOS tabla_A5F9: tabla que se lee desde HL = 0xA5F9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A5E7 (16 bytes)
;   0xa5f9..0xa609  (16 bytes)
DATA_tabla_A5F9:
	defb 000h,000h,0f0h,000h,000h,0a0h,0f0h,0a0h,0f0h,000h,0f0h,0a0h,000h,000h,000h,0a0h	; a5f9  ................

; ======================================================================
; CODIGO 0xa609..0xa615  (12 bytes)
; ======================================================================


L_A609:
	call 092efh		;a609
	ld bc,00302h		;a60c
	ld hl,0a615h		;a60f
	jp 07f7ch		;a612

; ----------------------------------------------------------------------
; DATOS leido_A615: 2 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (2 bytes)
;   0xa615..0xa617  (2 bytes)
DATA_leido_A615:
	defb 0bch,0c0h	; a615

; ======================================================================
; CODIGO 0xa617..0xa65b  (68 bytes)
; ======================================================================


L_A617:
	call L_A62E		;a617
L_A61A:
	ld e,(ix+02fh)		;a61a
	ld d,000h		;a61d
	ld hl,0a65bh		;a61f
	add hl,de			;a622
	ld a,(hl)			;a623
	ld (ix+030h),a		;a624
	ld a,e			;a627
	ld hl,0a65eh		;a628
	jp 06e40h		;a62b
L_A62E:
	ld a,(0e604h)		;a62e
	ld b,(ix+004h)		;a631
	ld c,000h		;a634
	sub 008h		;a636
	jr nc,L_A63B		;a638
	xor a			;a63a
L_A63B:
	cp b			;a63b
	jr nc,L_A645		;a63c
	inc c			;a63e
	add a,010h		;a63f
	cp b			;a641
	jr nc,L_A645		;a642
	inc c			;a644
L_A645:
	ld (ix+02fh),c		;a645
	ret			;a648
L_A649:
	ld a,(0e606h)		;a649
	sub (ix+006h)		;a64c
	ret nc			;a64f
	ld d,(ix+02fh)		;a650
	call L_A62E		;a653
	ld a,c			;a656
	sub d			;a657
	ret z			;a658
	jr L_A61A		;a659

; ----------------------------------------------------------------------
; DATOS tabla_A65B: tabla que se lee desde HL = 0xA65B con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A61F (3 bytes)
;   0xa65b..0xa65e  (3 bytes)
DATA_tabla_A65B:
	defb 0e8h,0e4h,0e0h	; a65b

; ----------------------------------------------------------------------
; DATOS leido_A65E: 8 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (8 bytes)
;   0xa65e..0xa666  (8 bytes)
DATA_leido_A65E:
	defb 000h,0feh,000h,002h,000h,0fch,000h,000h	; a65e  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa666..0xa66a  (4 bytes)
DATA_A666:
	defb 000h,0feh,000h,0feh	; a666

; ======================================================================
; CODIGO 0xa66a..0xa70b  (161 bytes)
; ======================================================================


L_A66A:
	ld hl,0e4b2h		;a66a
	ld b,004h		;a66d
L_A66F:
	ld a,(hl)			;a66f
	and a			;a670
	jr z,L_A67B		;a671
	ld a,008h		;a673
	add a,l			;a675
	ld l,a			;a676
	djnz L_A66F		;a677
	xor a			;a679
	ret			;a67a
L_A67B:
	ld a,(ix+003h)		;a67b
	cp 0c0h		;a67e
	jr c,L_A684		;a680
	ld e,000h		;a682
L_A684:
	ld a,(ix+006h)		;a684
	inc a			;a687
	jr nz,L_A68E		;a688
	ld d,000h		;a68a
	jr L_A697		;a68c
L_A68E:
	ld a,(ix+005h)		;a68e
	cp 0a0h		;a691
	jr c,L_A697		;a693
	ld d,0a0h		;a695
L_A697:
	call 067aah		;a697
	inc (hl)			;a69a
	call 05159h		;a69b
	ret			;a69e
L_A69F:
	ld ix,0e4b2h		;a69f
	ld de,00008h		;a6a3
	ld b,004h		;a6a6
L_A6A8:
	ld a,(ix+000h)		;a6a8
	and a			;a6ab
	call nz,L_A6B4		;a6ac
	add ix,de		;a6af
	djnz L_A6A8		;a6b1
	ret			;a6b3
L_A6B4:
	dec (ix+001h)		;a6b4
	ret nz			;a6b7
	ld (ix+001h),004h		;a6b8
	dec (ix+006h)		;a6bc
	ret p			;a6bf
	ld (ix+000h),000h		;a6c0
	ret			;a6c4
L_A6C5:
	ld ix,0e4b2h		;a6c5
	ld b,004h		;a6c9
L_A6CB:
	push bc			;a6cb
	call L_A6D8		;a6cc
	ld bc,00008h		;a6cf
	add ix,bc		;a6d2
	pop bc			;a6d4
	djnz L_A6CB		;a6d5
	ret			;a6d7
L_A6D8:
	ld a,(ix+000h)		;a6d8
	and a			;a6db
	ret z			;a6dc
	call L_A6F8		;a6dd
	ld bc,00c0ch		;a6e0
	ld a,034h		;a6e3
	ld e,(ix+004h)		;a6e5
	ld d,(ix+005h)		;a6e8
L_A6EB:
	push bc			;a6eb
	ld b,000h		;a6ec
	ldir		;a6ee
	ld c,a			;a6f0
	ex de,hl			;a6f1
	add hl,bc			;a6f2
	ex de,hl			;a6f3
	pop bc			;a6f4
	djnz L_A6EB		;a6f5
	ret			;a6f7
L_A6F8:
	ld a,(ix+006h)		;a6f8
	ld hl,0a70bh		;a6fb
	call 04a5ah		;a6fe   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,0ca00h		;a701
	call 055adh		;a704   ; rle_a_ram: descomprime a la RAM de DE el RLE de HL
	ld hl,0ca00h		;a707
	ret			;a70a

; ----------------------------------------------------------------------
; DATOS tabla_A70B: tabla que se lee desde HL = 0xA70B con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A6FB (10 bytes)
;   0xa70b..0xa715  (10 bytes)
DATA_tabla_A70B:
	defb 01dh,0a8h,0ffh,0a7h,015h,0a7h,06ch,0a7h,015h,0a7h	; a70b  ......l...

; ----------------------------------------------------------------------
; DATOS rle_ram_A715: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (87 bytes)
;   0xa715..0xa76c  (87 bytes)
DATA_rle_ram_A715:
	defb 01bh,000h,086h,0cah,0cbh,0cch,0f5h,0f4h,0f3h,005h,000h,088h,0cdh,0ceh,0cfh,0d0h	; a715  ................
	defb 0f2h,0f1h,0f0h,0efh,004h,000h,088h,0d1h,0d2h,0bah,0bbh,0bch,0bdh,0eeh,0edh,004h	; a725  ................
	defb 000h,088h,0d3h,0d4h,0beh,0bfh,0c0h,0c1h,0ech,0ebh,004h,000h,088h,0d5h,0d6h,0c2h	; a735  ................
	defb 0c3h,0c4h,0c5h,0eah,0e9h,004h,000h,088h,0d7h,0d8h,0c6h,0c7h,0c8h,0c9h,0e8h,0e7h	; a745  ................
	defb 004h,000h,088h,0d9h,0dah,0dbh,0dch,0e6h,0e5h,0e4h,0e3h,005h,000h,086h,0ddh,0deh	; a755  ................
	defb 0dfh,0e2h,0e1h,0e0h,01bh,000h,000h	; a765

; ----------------------------------------------------------------------
; DATOS rle_ram_A76C: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (147 bytes)
;   0xa76c..0xa7ff  (147 bytes)
DATA_rle_ram_A76C:
	defb 0ffh,000h,05eh,05fh,060h,061h,061h,0b9h,0b8h,0b8h,0b7h,0b6h,0b5h,000h,062h,063h	; a76c  ..^_`aa.......bc
	defb 064h,064h,065h,0b4h,0b3h,0b3h,0b2h,0b1h,0b0h,066h,068h,06dh,07fh,07ch,077h,0afh	; a77c  dde......fhm.|w.
	defb 0aeh,0adh,0b4h,0ach,000h,067h,068h,07fh,075h,07dh,07dh,0abh,0aah,0a9h,0a8h,0a7h	; a78c  .....gh.u}}.....
	defb 0a6h,069h,06ah,06bh,076h,05dh,05dh,0a5h,0a4h,0a3h,0a4h,0a2h,0a1h,06ch,06dh,07fh	; a79c  .ijkv]]......lm.
	defb 07ch,06eh,06fh,0a0h,0afh,0a3h,0aah,09fh,09eh,070h,071h,07ch,075h,081h,072h,09dh	; a7ac  |no......pq|u.r.
	defb 09ch,0aah,0adh,09bh,09ah,073h,074h,076h,075h,076h,077h,05dh,05dh,0a4h,099h,098h	; a7bc  .....stvuvw]]...
	defb 097h,078h,079h,07ah,07bh,07ch,07dh,0abh,0abh,0a3h,0adh,096h,095h,000h,07eh,086h	; a7cc  .xyz{|}.......~.
	defb 07fh,080h,081h,0a5h,0aah,0adh,09bh,096h,094h,082h,083h,084h,085h,085h,086h,093h	; a7dc  ................
	defb 002h,092h,08fh,091h,090h,000h,087h,088h,089h,08ah,08ah,08bh,08fh,08fh,08eh,08dh	; a7ec  ................
	defb 08ch,000h,000h	; a7fc

; ----------------------------------------------------------------------
; DATOS rle_ram_A7FF: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (30 bytes)
;   0xa7ff..0xa81d  (30 bytes)
DATA_rle_ram_A7FF:
	defb 035h,000h,083h,0f6h,0f7h,0f8h,008h,000h,084h,0efh,0f9h,0feh,0fah,008h,000h,084h	; a7ff  5...............
	defb 0fbh,0edh,0fah,0fbh,008h,000h,084h,0fch,0dah,0f4h,0e3h,034h,000h,000h	; a80f  ...........4..

; ----------------------------------------------------------------------
; DATOS rle_ram_A81D: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (5 bytes)
;   0xa81d..0xa822  (5 bytes)
DATA_rle_ram_A81D:
	defb 07fh,000h,011h,000h,000h	; a81d

; ======================================================================
; CODIGO 0xa822..0xa837  (21 bytes)
; ======================================================================


L_A822:
	ld (ix+010h),018h		;a822
	ld a,r		;a826
	and 03fh		;a828
	ld (ix+002h),a		;a82a
	call 078c8h		;a82d
L_A830:
	ret			;a830
L_A831:
	ld a,(ix+001h)		;a831
	call 04093h		;a834   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_A837: 2 destinos del despachador p00:4093 (call en p03:A834, el
;   indice en A): A83B, A894; lo leen p03:A834 (4 bytes)
;   0xa837..0xa83b  (4 bytes)
DATA_tabla_A837:
	defw 0a83bh,0a894h	; a837  -> L_A83B L_A894

; ======================================================================
; CODIGO 0xa83b..0xa8db  (160 bytes)
; ======================================================================


L_A83B:
	ld a,(ix+006h)		;a83b
	cp 0e8h		;a83e
	ret nc			;a840
	dec (ix+002h)		;a841
	ret nz			;a844
	ld a,(ix+004h)		;a845
	cp 060h		;a848
	jr nc,L_A84E		;a84a
	sub 008h		;a84c
L_A84E:
	ld l,a			;a84e
	ld h,(ix+006h)		;a84f
	call 04a46h		;a852
	ld a,(ix+004h)		;a855
	cp 060h		;a858
	ld b,000h		;a85a
	ld a,063h		;a85c
	jr c,L_A863		;a85e
	inc b			;a860
	ld a,064h		;a861
L_A863:
	ld (ix+01fh),b		;a863
	ld (hl),a			;a866
	inc hl			;a867
	ld (hl),a			;a868
	ld a,r		;a869
	and 003h		;a86b
	ld hl,0a8dfh		;a86d
	call 04089h		;a870   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;a873
	call 07865h		;a874
	ld hl,(0e472h)		;a877
	call L_A8B3		;a87a
	push hl			;a87d
	ld hl,(0e474h)		;a87e
	call L_A8B3		;a881
	pop de			;a884
	call 07f0ah		;a885
	ld (ix+010h),007h		;a888
	set 7,(ix+00bh)		;a88c
	inc (ix+001h)		;a890
	ret			;a893
L_A894:
	call L_A8CB		;a894
	call 07f1ch		;a897
	call 07f2fh		;a89a
L_A89D:
	call 07fb7h		;a89d
	ret nc			;a8a0
L_A8A1:
	call 075d1h		;a8a1
	ld d,(ix+006h)		;a8a4
	ld e,(ix+004h)		;a8a7
	ld bc,00000h		;a8aa
	ld a,03dh		;a8ad
	call 07647h		;a8af
	ret			;a8b2
L_A8B3:
	ld a,h			;a8b3
	rla			;a8b4
	push af			;a8b5
	call c,L_A8C3		;a8b6
	add hl,hl			;a8b9
	add hl,hl			;a8ba
	add hl,hl			;a8bb
	add hl,hl			;a8bc
	ld a,h			;a8bd
	ld l,a			;a8be
	ld h,000h		;a8bf
	pop af			;a8c1
	ret nc			;a8c2
L_A8C3:
	ld a,h			;a8c3
	cpl			;a8c4
	ld h,a			;a8c5
	ld a,l			;a8c6
	cpl			;a8c7
	ld l,a			;a8c8
	inc hl			;a8c9
	ret			;a8ca
L_A8CB:
	ld a,(ix+01fh)		;a8cb
	add a,a			;a8ce
	ld hl,0a8dbh		;a8cf
	call 04089h		;a8d2   ; suma_a_hl: HL = HL + A
	ld bc,00702h		;a8d5
	jp 07f7ch		;a8d8

; ----------------------------------------------------------------------
; DATOS tabla_A8DB: tabla que se lee desde HL = 0xA8DB con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A8CF (4 bytes)
;   0xa8db..0xa8df  (4 bytes)
DATA_tabla_A8DB:
	defb 0a8h,0ach,0b0h,0b4h	; a8db

; ----------------------------------------------------------------------
; DATOS tabla_A8DF: tabla que se lee desde HL = 0xA8DF con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A86D (4 bytes)
;   0xa8df..0xa8e3  (4 bytes)
DATA_tabla_A8DF:
	defb 080h,070h,060h,090h	; a8df

; ======================================================================
; CODIGO 0xa8e3..0xa93b  (88 bytes)
; ======================================================================


L_A8E3:
	ld a,(ix+00bh)		;a8e3
	srl a		;a8e6
	ld b,a			;a8e8
	ld hl,0a93bh		;a8e9
	add a,a			;a8ec
	add a,b			;a8ed
	call 04089h		;a8ee   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;a8f1
	inc hl			;a8f2
	ld b,a			;a8f3
	ld a,(ix+004h)		;a8f4
	cp 060h		;a8f7
	ld a,000h		;a8f9
	jr c,L_A8FF		;a8fb
	ld a,01ch		;a8fd
L_A8FF:
	add a,b			;a8ff
	ld (ix+007h),a		;a900
	ld (ix+014h),a		;a903
	ld (ix+017h),a		;a906
	ld a,(hl)			;a909
	inc hl			;a90a
	ld (ix+015h),a		;a90b
	ld a,(hl)			;a90e
	ld (ix+01ah),a		;a90f
	ld (ix+00ah),001h		;a912
	ld (ix+009h),001h		;a916
	ld (ix+016h),000h		;a91a
	ld (ix+018h),006h		;a91e
	ld (ix+019h),000h		;a922
	ld (ix+01ch),000h		;a926
	ld (ix+002h),004h		;a92a
	ld (ix+012h),089h		;a92e
	ld (ix+00dh),080h		;a932
	ld a,(ix+00bh)		;a936
	or a			;a939
	ret			;a93a

; ----------------------------------------------------------------------
; DATOS tabla_A93B: tabla que se lee desde HL = 0xA93B con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:A8E9 (1 bytes)
;   0xa93b..0xa93c  (1 bytes)
DATA_tabla_A93B:
	defb 0b4h	; a93b

; ----------------------------------------------------------------------
; DATOS leido_A93C: 5 bytes que leen p03:A909, p03:A90E, p03:A8F1 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p03:A909, p03:A90E, p03:A8F1
;   (5 bytes)
;   0xa93c..0xa941  (5 bytes)
DATA_leido_A93C:
	defb 001h,01ch,0c5h,0ffh,018h	; a93c

; ======================================================================
; CODIGO 0xa941..0xa94a  (9 bytes)
; ======================================================================


L_A941:
	call L_A985		;a941
	ld a,(ix+001h)		;a944
	call 04093h		;a947   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_A94A: 3 destinos del despachador p00:4093 (call en p03:A947, el
;   indice en A): A950, A963, A96D; lo leen p03:A947 (6 bytes)
;   0xa94a..0xa950  (6 bytes)
DATA_tabla_A94A:
	defw 0a950h,0a963h,0a96dh	; a94a  -> L_A950 L_A963 L_A96D

; ======================================================================
; CODIGO 0xa950..0xaa97  (327 bytes)
; ======================================================================


L_A950:
	ld a,(0e420h)		;a950
	or a			;a953
	ret z			;a954
	inc (ix+00ah)		;a955
	ld a,(ix+00ah)		;a958
	cp (ix+01ah)		;a95b
	ret c			;a95e
	inc (ix+001h)		;a95f
	ret			;a962
L_A963:
	ld a,(ix+006h)		;a963
	cp 008h		;a966
	ret nc			;a968
	inc (ix+001h)		;a969
	ret			;a96c
L_A96D:
	ld a,(0e420h)		;a96d
	or a			;a970
	ret z			;a971
	ld a,(ix+006h)		;a972
	add a,008h		;a975
	ld (ix+006h),a		;a977
	inc (ix+01ch)		;a97a
	dec (ix+00ah)		;a97d
	ret nz			;a980
	call 08294h		;a981
	ret			;a984
L_A985:
	dec (ix+002h)		;a985
	jr z,L_A98F		;a988
	ld a,(0e420h)		;a98a
	or a			;a98d
	ret z			;a98e
L_A98F:
	ld (ix+002h),004h		;a98f
	ld a,(ix+007h)		;a993
	add a,(ix+015h)		;a996
	ld (ix+007h),a		;a999
	dec (ix+018h)		;a99c
	ret nz			;a99f
	ld (ix+018h),006h		;a9a0
	ld a,(ix+014h)		;a9a4
	ld (ix+007h),a		;a9a7
	ret			;a9aa
L_A9AB:
	ld a,(ix+01fh)		;a9ab
	add a,a			;a9ae
	add a,a			;a9af
	add a,a			;a9b0
	add a,a			;a9b1
	add a,a			;a9b2
	ld (ix+01fh),a		;a9b3
	call 09081h		;a9b6
L_A9B9:
	ld a,(ix+000h)		;a9b9
	cp 019h		;a9bc
	ld de,00000h		;a9be
	jr nz,L_A9CF		;a9c1
	bit 7,(ix+01fh)		;a9c3
	ld de,00020h		;a9c7
	jr nz,L_A9CF		;a9ca
	ld de,0fe40h		;a9cc
L_A9CF:
	ld hl,00000h		;a9cf
	call 078d7h		;a9d2
L_A9D5:
	ld h,d			;a9d5
	ld l,e			;a9d6
	call 07f0ah		;a9d7
L_A9DA:
	ld a,(ix+010h)		;a9da
	or 004h		;a9dd
	and 0f7h		;a9df
	ld (ix+010h),a		;a9e1
	ret			;a9e4
L_A9E5:
	call 090e5h		;a9e5
	ld a,(ix+001h)		;a9e8
	or a			;a9eb
	ret nz			;a9ec
	ld a,(ix+006h)		;a9ed
	cp 0efh		;a9f0
	ret nc			;a9f2
L_A9F3:
	ld a,(ix+01fh)		;a9f3
	rla			;a9f6
	ld b,0f8h		;a9f7
	jr c,L_A9FD		;a9f9
	ld b,008h		;a9fb
L_A9FD:
	rla			;a9fd
	rla			;a9fe
	ld c,0f0h		;a9ff
	jr c,L_AA05		;aa01
	ld c,010h		;aa03
L_AA05:
	ld a,(ix+004h)		;aa05
	add a,c			;aa08
	ld l,a			;aa09
	ld a,(ix+006h)		;aa0a
	add a,b			;aa0d
	ld h,a			;aa0e
	call 07fbdh		;aa0f
	ret c			;aa12
	ld de,00000h		;aa13
	bit 5,(ix+01fh)		;aa16
	ld hl,0fe00h		;aa1a
	jr nz,L_AA22		;aa1d
	ld hl,00200h		;aa1f
L_AA22:
	call 078d7h		;aa22
	set 3,(ix+010h)		;aa25
	inc (ix+001h)		;aa29
	ret			;aa2c
L_AA2D:
	ld (ix+00dh),080h		;aa2d
	ld (ix+012h),080h		;aa31
	ld (ix+002h),018h		;aa35
	ret			;aa39
L_AA3A:
	bit 6,(ix+012h)		;aa3a
	ret nz			;aa3e
	ld a,(ix+006h)		;aa3f
	cp 0e0h		;aa42
	ret nc			;aa44
	dec (ix+002h)		;aa45
	ret nz			;aa48
	ld (ix+002h),028h		;aa49
	ld e,(ix+004h)		;aa4d
	ld a,(ix+006h)		;aa50
	sub 010h		;aa53
	ld d,a			;aa55
	jr c,L_AA5F		;aa56
	ld b,000h		;aa58
	push de			;aa5a
	call L_AA69		;aa5b
	pop de			;aa5e
L_AA5F:
	ld a,030h		;aa5f
	add a,d			;aa61
	ld d,a			;aa62
	ld b,004h		;aa63
	call L_AA69		;aa65
	ret			;aa68
L_AA69:
	ld c,000h		;aa69
	ld a,e			;aa6b
	cp 060h		;aa6c
	jr nc,L_AA72		;aa6e
	set 0,b		;aa70
L_AA72:
	ld a,019h		;aa72
	call 07647h		;aa74
	ret			;aa77
L_AA78:
	ld (ix+009h),004h		;aa78
	ld (ix+00ah),004h		;aa7c
	ld (ix+002h),004h		;aa80
	ld (ix+012h),082h		;aa84
	ld (ix+00dh),080h		;aa88
	ld (ix+014h),001h		;aa8c
	ret			;aa90
L_AA91:
	ld a,(ix+001h)		;aa91
	call 04093h		;aa94   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_AA97: 2 destinos del despachador p00:4093 (call en p03:AA94, el
;   indice en A): AA9B, AAB3; lo leen p03:AA94 (4 bytes)
;   0xaa97..0xaa9b  (4 bytes)
DATA_tabla_AA97:
	defw 0aa9bh,0aab3h	; aa97  -> L_AA9B L_AAB3

; ======================================================================
; CODIGO 0xaa9b..0xab2a  (143 bytes)
; ======================================================================


L_AA9B:
	dec (ix+002h)		;aa9b
	ret nz			;aa9e
	set 0,(ix+012h)		;aa9f
	res 1,(ix+012h)		;aaa3
	ld (ix+007h),0a6h		;aaa7
	ld (ix+002h),004h		;aaab
	inc (ix+001h)		;aaaf
	ret			;aab2
L_AAB3:
	dec (ix+002h)		;aab3
	ret nz			;aab6
	ld a,(ix+014h)		;aab7
	add a,(ix+007h)		;aaba
	ld (ix+007h),a		;aabd
	ld (ix+002h),004h		;aac0
	ld a,(ix+007h)		;aac4
	cp 0adh		;aac7
	jr nc,L_AAD9		;aac9
	cp 0a7h		;aacb
	ret nc			;aacd
	res 0,(ix+012h)		;aace
	set 1,(ix+012h)		;aad2
	dec (ix+001h)		;aad6
L_AAD9:
	ld a,(ix+014h)		;aad9
	inc a			;aadc
	ld a,001h		;aadd
	jr z,L_AAE3		;aadf
	ld a,0ffh		;aae1
L_AAE3:
	ld (ix+014h),a		;aae3
	ret			;aae6
L_AAE7:
	ld a,083h		;aae7
	ld bc,0ffcfh		;aae9
	jr L_AB0A		;aaec
L_AAEE:
	bit 0,(ix+00bh)		;aaee
	ld a,080h		;aaf2
	ld bc,001cch		;aaf4
	jr z,L_AB0A		;aaf7
	ld (ix+015h),008h		;aaf9
	ld (ix+009h),004h		;aafd
	ld (ix+00ah),004h		;ab01
	ld bc,00141h		;ab05
	jr L_AB16		;ab08
L_AB0A:
	ld (ix+015h),004h		;ab0a
	ld (ix+009h),002h		;ab0e
	ld (ix+00ah),004h		;ab12
L_AB16:
	ld (ix+014h),b		;ab16
	ld (ix+007h),c		;ab19
	ld (ix+012h),a		;ab1c
	ld (ix+00dh),080h		;ab1f
	ret			;ab23
L_AB24:
	ld a,(ix+001h)		;ab24
	call 04093h		;ab27   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_AB2A: 2 destinos del despachador p00:4093 (call en p03:AB27, el
;   indice en A): AB2E, AB40; lo leen p03:AB27 (4 bytes)
;   0xab2a..0xab2e  (4 bytes)
DATA_tabla_AB2A:
	defw 0ab2eh,0ab40h	; ab2a  -> L_AB2E L_AB40

; ======================================================================
; CODIGO 0xab2e..0xab59  (43 bytes)
; ======================================================================


L_AB2E:
	ld a,(ix+006h)		;ab2e
	cp 071h		;ab31
	ret nc			;ab33
	ld (ix+002h),008h		;ab34
	set 0,(ix+012h)		;ab38
	inc (ix+001h)		;ab3c
	ret			;ab3f
L_AB40:
	dec (ix+002h)		;ab40
	ret nz			;ab43
	ld (ix+002h),008h		;ab44
	ld a,(ix+007h)		;ab48
	add a,(ix+014h)		;ab4b
	ld (ix+007h),a		;ab4e
	dec (ix+015h)		;ab51
	ret nz			;ab54
	call 08294h		;ab55
	ret			;ab58

; ----------------------------------------------------------------------
; DATOS sin identificar  0xab59..0xab6b  (18 bytes)
DATA_AB59:
	defb 0ddh,036h,031h,004h,0ddh,036h,002h,018h,0ddh,036h,010h,000h,03eh,001h,032h,088h	; ab59  .61..6...6..>.2.
	defb 0e4h,0c9h	; ab69

; ======================================================================
; CODIGO 0xab6b..0xabca  (95 bytes)
; ======================================================================


L_AB6B:
	ld a,(ix+001h)		;ab6b
	or a			;ab6e
	ret nz			;ab6f
	dec (ix+002h)		;ab70
	ld a,(ix+002h)		;ab73
	or a			;ab76
	jr z,L_AB8D		;ab77
	ld de,007e8h		;ab79
	sub 008h		;ab7c
	jr z,L_AB86		;ab7e
	sub 008h		;ab80
	ret nz			;ab82
	ld de,005e4h		;ab83
L_AB86:
	ld (ix+030h),e		;ab86
	ld (ix+031h),d		;ab89
	ret			;ab8c
L_AB8D:
	xor a			;ab8d
	ld (0e488h),a		;ab8e
	ld (ix+010h),007h		;ab91
	inc (ix+001h)		;ab95
	ld a,(0e389h)		;ab98
	add a,a			;ab9b
	add a,a			;ab9c
	add a,030h		;ab9d
	call 07865h		;ab9f
	ld de,00fech		;aba2
	jr L_AB86		;aba5
L_ABA7:
	ld (ix+008h),020h		;aba7
	ld (ix+009h),008h		;abab
	ld (ix+00ah),014h		;abaf
	ld (ix+007h),029h		;abb3
	ld (ix+00dh),009h		;abb7
	ld (ix+00ch),008h		;abbb
	ld (ix+002h),00ch		;abbf
	ret			;abc3
L_ABC4:
	ld a,(ix+001h)		;abc4
	call 04093h		;abc7   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_ABCA: 2 destinos del despachador p00:4093 (call en p03:ABC7, el
;   indice en A): ABCE, ABDD; lo leen p03:ABC7 (4 bytes)
;   0xabca..0xabce  (4 bytes)
DATA_tabla_ABCA:
	defw 0abceh,0abddh	; abca  -> L_ABCE L_ABDD

; ======================================================================
; CODIGO 0xabce..0xac30  (98 bytes)
; ======================================================================


L_ABCE:
	dec (ix+002h)		;abce
	ret nz			;abd1
	inc (ix+007h)		;abd2
	ld (ix+002h),00ch		;abd5
	inc (ix+001h)		;abd9
	ret			;abdc
L_ABDD:
	call L_ABEF		;abdd
	dec (ix+002h)		;abe0
	ret nz			;abe3
	dec (ix+007h)		;abe4
	ld (ix+002h),00ch		;abe7
	dec (ix+001h)		;abeb
	ret			;abee
L_ABEF:
	dec (ix+00ch)		;abef
	ret nz			;abf2
	ld (ix+00ch),008h		;abf3
	ld bc,00500h		;abf7
	ld a,(ix+004h)		;abfa
	add a,010h		;abfd
	ld e,a			;abff
	ld d,(ix+006h)		;ac00
	ld a,037h		;ac03
L_AC05:
	push bc			;ac05
	push de			;ac06
	push af			;ac07
	call 07647h		;ac08
	pop af			;ac0b
	pop de			;ac0c
	pop bc			;ac0d
	djnz L_AC05		;ac0e
	ret			;ac10
L_AC11:
	ld a,(ix+01fh)		;ac11
	ld b,a			;ac14
	add a,a			;ac15
	add a,a			;ac16
	add a,b			;ac17
	ld hl,lac2bh		;ac18
	call 04089h		;ac1b   ; suma_a_hl: HL = HL + A
L_AC1E:
	ld a,(hl)			;ac1e
	inc hl			;ac1f
	ld (ix+030h),a		;ac20
	ld e,(hl)			;ac23
	inc hl			;ac24
	ld d,(hl)			;ac25
	inc hl			;ac26
	ld a,(hl)			;ac27
	inc hl			;ac28
	ld h,(hl)			;ac29
	ld l,a			;ac2a
L_AC2B:
	ex de,hl			;ac2b
	call 078d7h		;ac2c
L_AC2F:
	ret			;ac2f

; ----------------------------------------------------------------------
; DATOS leido_AC30: 25 bytes que leen p03:AC1E, p03:AC23, p03:AC25, p03:AC27,
;   p03:AC29 al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p03:AC1E, p03:AC23, p03:AC25, p03:AC27, p03:AC29 (25 bytes)
;   0xac30..0xac49  (25 bytes)
DATA_leido_AC30:
	defb 064h,000h,0feh,000h,0fch,098h,000h,0ffh,000h,0fch,090h,000h,000h,000h,0fch,094h	; ac30  d...............
	defb 000h,001h,000h,0fch,070h,000h,002h,000h,0fch	; ac40  ....p....

; ======================================================================
; CODIGO 0xac49..0xac59  (16 bytes)
; ======================================================================


L_AC49:
	call L_AC53		;ac49
	call 088e5h		;ac4c
	ret nc			;ac4f
	jp 075d1h		;ac50
L_AC53:
	ld hl,0ac59h		;ac53
	jp L_BACE		;ac56

; ----------------------------------------------------------------------
; DATOS leido_AC59: 4 bytes que lee p03:BADA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p03:BADA (4 bytes)
;   0xac59..0xac5d  (4 bytes)
DATA_leido_AC59:
	defb 006h,00fh,009h,00fh	; ac59

; ======================================================================
; CODIGO 0xac5d..0xacb8  (91 bytes)
; ======================================================================


L_AC5D:
	call 05884h		;ac5d   ; sonido_26: pide el sonido 0x26
	ld (ix+007h),02bh		;ac60
	jp 08221h		;ac64
L_AC67:
	ld a,(ix+00bh)		;ac67
	rra			;ac6a
	ld a,008h		;ac6b
	jr c,L_AC70		;ac6d
	inc a			;ac6f
L_AC70:
	ld (ix+007h),a		;ac70
	ld (ix+002h),030h		;ac73
	jp L_AEE9		;ac77
L_AC7A:
	dec (ix+002h)		;ac7a
	ret nz			;ac7d
	call L_AC9E		;ac7e
	ld a,(ix+00bh)		;ac81
	rra			;ac84
	ld de,02018h		;ac85
	jr nc,L_AC8D		;ac88
	ld de,02008h		;ac8a
L_AC8D:
	ld a,(ix+006h)		;ac8d
	add a,d			;ac90
	ld d,a			;ac91
	ld a,(ix+004h)		;ac92
	add a,e			;ac95
	ld e,a			;ac96
	ld c,000h		;ac97
	ld a,01dh		;ac99
	jp 07647h		;ac9b
L_AC9E:
	ld a,(ix+00ch)		;ac9e
	inc (ix+00ch)		;aca1
	and 003h		;aca4
	push af			;aca6
	call z,L_ACBC		;aca7
	ld b,(ix+01fh)		;acaa
	pop af			;acad
	ld hl,0acb8h		;acae
	call 04a6eh		;acb1
	ld (ix+002h),a		;acb4
	ret			;acb7

; ----------------------------------------------------------------------
; DATOS tabla_ACB8: tabla que se lee desde HL = 0xACB8 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:ACAE (4 bytes)
;   0xacb8..0xacbc  (4 bytes)
DATA_tabla_ACB8:
	defb 008h,008h,008h,016h	; acb8

; ======================================================================
; CODIGO 0xacbc..0xad10  (84 bytes)
; ======================================================================


L_ACBC:
	ld e,(ix+004h)		;acbc
	ld d,(ix+006h)		;acbf
	call 063ffh		;acc2
	call L_ACD6		;acc5
	bit 0,(ix+00bh)		;acc8
	jr z,L_ACD2		;accc
	ld a,003h		;acce
	add a,b			;acd0
	ld b,a			;acd1
L_ACD2:
	ld (ix+01fh),b		;acd2
	ret			;acd5
L_ACD6:
	ld a,(0e477h)		;acd6
	bit 7,a		;acd9
	jr z,L_ACDF		;acdb
	neg		;acdd
L_ACDF:
	ld b,000h		;acdf
	sub 032h		;ace1
	ret c			;ace3
	inc b			;ace4
	sub 01ch		;ace5
	ret c			;ace7
	inc b			;ace8
	ret			;ace9
L_ACEA:
	ld (ix+02fh),020h		;acea
	ld b,(ix+01fh)		;acee
	ld a,b			;acf1
	ld hl,0ad1ch		;acf2
	call 04a6eh		;acf5
L_ACF8:
	ld (ix+030h),a		;acf8
	ld a,b			;acfb
	ld hl,0ad22h		;acfc
	call 06e40h		;acff
L_AD02:
	ld a,b			;ad02
	ld hl,0ad10h		;ad03
	call 04a5ah		;ad06   ; lee_palabra: HL = la palabra A de la tabla HL
L_AD09:
	ld (ix+00eh),l		;ad09
	ld (ix+00fh),h		;ad0c
	ret			;ad0f

; ----------------------------------------------------------------------
; DATOS tabla_AD10: tabla que se lee desde HL = 0xAD10 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:AD03 (12 bytes)
;   0xad10..0xad1c  (12 bytes)
DATA_tabla_AD10:
	defb 00eh,00bh,010h,005h,00eh,00bh,00eh,00bh,010h,005h,00eh,00bh	; ad10  ............

; ----------------------------------------------------------------------
; DATOS tabla_AD1C: tabla que se lee desde HL = 0xAD1C con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:ACF2 (6 bytes)
;   0xad1c..0xad22  (6 bytes)
DATA_tabla_AD1C:
	defb 06ch,068h,064h,078h,074h,070h	; ad1c

; ----------------------------------------------------------------------
; DATOS tabla_AD22: tabla que se lee desde HL = 0xAD22 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:ACFC (1 bytes)
;   0xad22..0xad23  (1 bytes)
DATA_tabla_AD22:
	defb 03bh	; ad22

; ----------------------------------------------------------------------
; DATOS leido_AD23: 23 bytes que leen p01:6E48, p01:6E4A, p01:6E4C, p01:6E46
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido, con 8 sin leer
;   entre lecturas de la misma rutina: entradas de la misma tabla que las
;   partidas no han pedido); lo leen p01:6E48, p01:6E4A, p01:6E4C, p01:6E46
;   (23 bytes)
;   0xad23..0xad3a  (23 bytes)
DATA_leido_AD23:
	defb 000h,06ch,0feh,000h,0ffh,000h,0feh,0c5h,0fdh,06ch,0feh,03bh,000h,094h,001h,000h	; ad23  .l.......l......
	defb 0ffh,000h,002h,0c5h,0fdh,094h,001h	; ad33

; ======================================================================
; CODIGO 0xad3a..0xad5a  (32 bytes)
; ======================================================================


L_AD3A:
	ld a,(ix+002h)		;ad3a
	inc a			;ad3d
	cp 003h		;ad3e
	jr c,L_AD43		;ad40
	xor a			;ad42
L_AD43:
	ld (ix+002h),a		;ad43
	ld hl,0ad5ah		;ad46
	call 04a6eh		;ad49
	ld (ix+031h),a		;ad4c
	ld a,(ix+02fh)		;ad4f
	or a			;ad52
	jp z,L_A89D		;ad53
	dec (ix+02fh)		;ad56
	ret			;ad59

; ----------------------------------------------------------------------
; DATOS tabla_AD5A: tabla que se lee desde HL = 0xAD5A con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:AD46 (3 bytes)
;   0xad5a..0xad5d  (3 bytes)
DATA_tabla_AD5A:
	defb 006h,009h,00fh	; ad5a

; ======================================================================
; CODIGO 0xad5d..0xad92  (53 bytes)
; ======================================================================


L_AD5D:
	ld (ix+02fh),018h		;ad5d
	ld hl,0e49eh		;ad61
	ld a,(hl)			;ad64
	add a,003h		;ad65
	ld (hl),a			;ad67
	and 00fh		;ad68
	ld b,002h		;ad6a
L_AD6C:
	sub 005h		;ad6c
	jr c,L_AD72		;ad6e
	djnz L_AD6C		;ad70
L_AD72:
	ld (ix+01fh),b		;ad72
	ld a,b			;ad75
	ld hl,0ad92h		;ad76
	call 04a6eh		;ad79
L_AD7C:
	ld (ix+030h),a		;ad7c
	ld a,b			;ad7f
	ld hl,0ad95h		;ad80
	call 06e40h		;ad83
L_AD86:
	ld a,b			;ad86
	or a			;ad87
	ret z			;ad88
	ld (ix+00eh),007h		;ad89
	ld (ix+00fh),00fh		;ad8d
	ret			;ad91

; ----------------------------------------------------------------------
; DATOS tabla_AD92: tabla que se lee desde HL = 0xAD92 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:AD76 (3 bytes)
;   0xad92..0xad95  (3 bytes)
DATA_tabla_AD92:
	defb 090h,094h,098h	; ad92

; ----------------------------------------------------------------------
; DATOS leido_AD95: 12 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (12 bytes)
;   0xad95..0xada1  (12 bytes)
DATA_leido_AD95:
	defb 000h,0f9h,000h,000h,000h,0fah,040h,001h,000h,0fah,0c0h,0feh	; ad95  ......@.....

; ======================================================================
; CODIGO 0xada1..0xadff  (94 bytes)
; ======================================================================


L_ADA1:
	ld (ix+007h),00ch		;ada1
	ld (ix+01eh),0b2h		;ada5
	ld (ix+008h),008h		;ada9
	ld (ix+00dh),080h		;adad
	ld a,003h		;adb1
	ld (ix+009h),a		;adb3
	ld (ix+00ah),a		;adb6
	ld (ix+01ch),004h		;adb9
	ld (ix+012h),083h		;adbd
	call L_AE98		;adc1
	ret			;adc4
L_ADC5:
	call L_ADDA		;adc5
	call L_ADE5		;adc8
	ld a,(0e420h)		;adcb
	or a			;adce
	ret nz			;adcf
	bit 0,(ix+00bh)		;add0
	jr z,$+72		;add4
	call L_AE01		;add6
	ret			;add9
L_ADDA:
	ld a,(ix+006h)		;adda
	cp 0e8h		;addd
	ret nc			;addf
	res 7,(ix+00dh)		;ade0
	ret			;ade4
L_ADE5:
	ld a,(ix+007h)		;ade5
	xor 001h		;ade8
	ld (ix+007h),a		;adea
	ld a,(ix+01dh)		;aded
	inc (ix+01dh)		;adf0
	and 003h		;adf3
	ret nz			;adf5
	ld a,(ix+01eh)		;adf6
	xor 001h		;adf9
	ld (ix+01eh),a		;adfb
	ret			;adfe

; ----------------------------------------------------------------------
; DATOS sin identificar  0xadff..0xae01  (2 bytes)
DATA_ADFF:
	defb 00dh,00eh	; adff

; ======================================================================
; CODIGO 0xae01..0xae83  (130 bytes)
; ======================================================================


L_AE01:
	dec (ix+01ch)		;ae01
	ret nz			;ae04
	ld (ix+01ch),004h		;ae05
	call L_AE23		;ae09
	bit 0,(ix+01fh)		;ae0c
	ld a,0f8h		;ae10
	jr z,L_AE16		;ae12
	ld a,008h		;ae14
L_AE16:
	add a,(ix+004h)		;ae16
	ld (ix+004h),a		;ae19
L_AE1C:
	call L_AE34		;ae1c
	call L_AE57		;ae1f
	ret			;ae22
L_AE23:
	ld b,001h		;ae23
	ld a,(ix+004h)		;ae25
	sub 030h		;ae28
	jr c,L_AE30		;ae2a
	sub 040h		;ae2c
	ret c			;ae2e
	dec b			;ae2f
L_AE30:
	ld (ix+01fh),b		;ae30
	ret			;ae33
L_AE34:
	ld a,(ix+004h)		;ae34
	sub 010h		;ae37
	ld l,a			;ae39
	ld h,(ix+006h)		;ae3a
	call 08287h		;ae3d
	ld de,0ae83h		;ae40
	ex de,hl			;ae43
	ld bc,007ffh		;ae44
L_AE47:
	ldi		;ae47
	ldi		;ae49
	ldi		;ae4b
	ld a,03dh		;ae4d
	add a,e			;ae4f
	ld e,a			;ae50
	jr nc,L_AE54		;ae51
	inc d			;ae53
L_AE54:
	djnz L_AE47		;ae54
	ret			;ae56
L_AE57:
	ld h,(ix+006h)		;ae57
	ld l,010h		;ae5a
	call 08287h		;ae5c
	inc hl			;ae5f
	ld a,(ix+004h)		;ae60
	sub 018h		;ae63
	rra			;ae65
	rra			;ae66
	rra			;ae67
	and 01fh		;ae68
	ld b,a			;ae6a
	ld c,(ix+01eh)		;ae6b
	push bc			;ae6e
	call L_AE7B		;ae6f
	ld bc,00140h		;ae72
	add hl,bc			;ae75
	pop bc			;ae76
	ld a,00dh		;ae77
	sub b			;ae79
	ld b,a			;ae7a
L_AE7B:
	ld de,00040h		;ae7b
L_AE7E:
	ld (hl),c			;ae7e
	add hl,de			;ae7f
	djnz L_AE7E		;ae80
	ret			;ae82

; ----------------------------------------------------------------------
; DATOS leido_AE83: 21 bytes que leen p03:AE47, p03:AE49, p03:AE4B al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p03:AE47, p03:AE49, p03:AE4B
;   (21 bytes)
;   0xae83..0xae98  (21 bytes)
DATA_leido_AE83:
	defb 000h,000h,000h,0b6h,0b5h,0bah,000h,000h,000h,000h,000h,000h,000h,000h,000h,0b9h	; ae83  ................
	defb 0b8h,0bbh,000h,000h,000h	; ae93

; ======================================================================
; CODIGO 0xae98..0xaeaf  (23 bytes)
; ======================================================================


L_AE98:
	ld a,(0e381h)		;ae98
	ld hl,0aeafh		;ae9b
	call 04a5ah		;ae9e   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,(0e363h)		;aea1   ; lee la posicion del scroll (16 bits)
	rst 20h			;aea5
	ld a,001h		;aea6
	jr z,L_AEAB		;aea8
	xor a			;aeaa
L_AEAB:
	ld (ix+01bh),a		;aeab
	ret			;aeae

; ----------------------------------------------------------------------
; DATOS tabla_AEAF: tabla que se lee desde HL = 0xAEAF con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:AE9B (8 bytes)
;   0xaeaf..0xaeb7  (8 bytes)
DATA_tabla_AEAF:
	defb 018h,001h,020h,001h,004h,001h,010h,001h	; aeaf  .. .....

; ======================================================================
; CODIGO 0xaeb7..0xafb6  (255 bytes)
; ======================================================================


L_AEB7:
	ld a,(ix+01bh)		;aeb7
	rra			;aeba
	ret nc			;aebb
	ld a,(ix+006h)		;aebc
	add a,008h		;aebf
	ld d,a			;aec1
	ld a,(ix+004h)		;aec2
	add a,008h		;aec5
	ld e,a			;aec7
	ld a,006h		;aec8
	jp 080d6h		;aeca
L_AECD:
	ld a,(ix+00bh)		;aecd
	rra			;aed0
	ld de,01301h		;aed1
	ld a,001h		;aed4
	jr nc,L_AEDC		;aed6
	ld de,01419h		;aed8
	inc a			;aedb
L_AEDC:
	ld (ix+007h),d		;aedc
	ld (ix+002h),e		;aedf
	ld (ix+00eh),a		;aee2
	ld (ix+008h),008h		;aee5
L_AEE9:
	ld (ix+00ah),008h		;aee9
L_AEED:
	ld (ix+009h),004h		;aeed
	xor a			;aef1
	ld (ix+00ch),a		;aef2
	ld (ix+015h),a		;aef5
	ld (ix+016h),a		;aef8
	inc a			;aefb
	ld (ix+012h),a		;aefc
	ld (ix+00dh),080h		;aeff
	ret			;af03
L_AF04:
	call L_AF1D		;af04
	ld (ix+00dh),c		;af07
	ret nc			;af0a
	dec (ix+002h)		;af0b
	ret nz			;af0e
	ld (ix+002h),030h		;af0f
	ld b,006h		;af13
L_AF15:
	push bc			;af15
	call L_AF58		;af16
	pop bc			;af19
	djnz L_AF15		;af1a
	ret			;af1c
L_AF1D:
	ld c,080h		;af1d
	ld a,(ix+006h)		;af1f
	sub 010h		;af22
	ccf			;af24
	ret nc			;af25
	sub 0b0h		;af26
	ret nc			;af28
	ld a,(ix+00bh)		;af29
	rra			;af2c
	ld c,029h		;af2d
	ret c			;af2f
	dec c			;af30
	scf			;af31
	ret			;af32
L_AF33:
	ld b,000h		;af33
	ld a,(ix+015h)		;af35
	rra			;af38
	jr nc,L_AF3D		;af39
	set 6,b		;af3b
L_AF3D:
	ld a,(ix+00bh)		;af3d
	rra			;af40
	jr nc,L_AF45		;af41
	set 7,b		;af43
L_AF45:
	ld a,(ix+006h)		;af45
	cp 0a0h		;af48
	jr nc,L_AF4E		;af4a
	set 5,b		;af4c
L_AF4E:
	ld a,(ix+016h)		;af4e
	and 007h		;af51
	or b			;af53
	ld (ix+014h),a		;af54
	ret			;af57
L_AF58:
	call L_AF33		;af58
	ld a,(ix+00bh)		;af5b
	or a			;af5e
	ld de,018f8h		;af5f
	jr z,L_AF67		;af62
	ld de,01818h		;af64
L_AF67:
	ld a,(ix+004h)		;af67
	add a,e			;af6a
	ld e,a			;af6b
	ld a,(ix+006h)		;af6c
	add a,d			;af6f
	ld d,a			;af70
	ld b,(ix+014h)		;af71
	ld c,000h		;af74
	ld a,01eh		;af76
	call 07647h		;af78
	ret nc			;af7b
	inc (ix+015h)		;af7c
	inc (ix+016h)		;af7f
	ret			;af82
L_AF83:
	ld a,008h		;af83
	ld hl,0afb6h		;af85
	ld de,00030h		;af88
L_AF8B:
	ld (ix+002h),a		;af8b
	call 07ef3h		;af8e
L_AF91:
	ld a,(ix+01fh)		;af91
	ld b,a			;af94
	and 007h		;af95
	call 06e40h		;af97
L_AF9A:
	bit 6,b		;af9a
	call nz,078edh		;af9c
	ld a,b			;af9f
	rla			;afa0
	push af			;afa1
	call nc,078ddh		;afa2
L_AFA5:
	pop af			;afa5
	call c,07eeah		;afa6
	bit 5,b		;afa9
	ret nz			;afab
	call 078bah		;afac
L_AFAF:
	sra d		;afaf
	rr e		;afb1
	jp 078ach		;afb3

; ----------------------------------------------------------------------
; DATOS leido_AFB6: 32 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (32 bytes)
;   0xafb6..0xafd6  (32 bytes)
DATA_leido_AFB6:
	defb 080h,000h,080h,004h,000h,004h,000h,001h,080h,001h,080h,003h,000h,003h,000h,002h	; afb6  ................
	defb 080h,002h,080h,002h,000h,002h,000h,003h,080h,003h,080h,001h,000h,001h,000h,004h	; afc6  ................

; ======================================================================
; CODIGO 0xafd6..0xb071  (155 bytes)
; ======================================================================


L_AFD6:
	call 07f1ch		;afd6
	ld a,(ix+002h)		;afd9
	or a			;afdc
	jp z,L_A89D		;afdd
	dec (ix+002h)		;afe0
	ret			;afe3
L_AFE4:
	ld a,(ix+00bh)		;afe4
	rra			;afe7
	ld de,00002h		;afe8
	jr nc,L_AFF0		;afeb
	ld de,00082h		;afed
L_AFF0:
	ld l,(ix+004h)		;aff0
	ld h,(ix+006h)		;aff3
	call 04a46h		;aff6
	add hl,de			;aff9
	xor a			;affa
	call L_B002		;affb
	ld de,0003ch		;affe
	add hl,de			;b001
L_B002:
	ld b,004h		;b002
L_B004:
	ld (hl),a			;b004
	inc l			;b005
	djnz L_B004		;b006
	ret			;b008
L_B009:
	xor a			;b009
	ld (ix+01fh),a		;b00a
	inc a			;b00d
	ld (ix+002h),a		;b00e
	ld a,(ix+00bh)		;b011
	rra			;b014
	ld a,011h		;b015
	jr nc,L_B01A		;b017
	inc a			;b019
L_B01A:
	ld (ix+007h),a		;b01a
	ld (ix+00ah),006h		;b01d
	call L_AEED		;b021
	ld (ix+012h),003h		;b024
	ld (ix+008h),020h		;b028
	ret			;b02c
L_B02D:
	call L_B075		;b02d
	ld (ix+00dh),c		;b030
	ret nc			;b033
	dec (ix+002h)		;b034
	ret nz			;b037
	call L_B084		;b038
	call L_AF33		;b03b
	ld a,(ix+00bh)		;b03e
	rra			;b041
	ld e,0f8h		;b042
	jr nc,L_B048		;b044
	ld e,018h		;b046
L_B048:
	ld a,(ix+01fh)		;b048
	inc (ix+01fh)		;b04b
	and 003h		;b04e
	ld hl,0b071h		;b050
	call 04a6eh		;b053
	add a,(ix+006h)		;b056
	ld d,a			;b059
	ld a,(ix+004h)		;b05a
	add a,e			;b05d
	ld e,a			;b05e
	ld b,(ix+014h)		;b05f
	ld c,000h		;b062
	ld a,01fh		;b064
	call 07647h		;b066
	ret nc			;b069
	inc (ix+015h)		;b06a
	inc (ix+016h)		;b06d
	ret			;b070

; ----------------------------------------------------------------------
; DATOS tabla_B071: tabla que se lee desde HL = 0xB071 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:B050 (4 bytes)
;   0xb071..0xb075  (4 bytes)
DATA_tabla_B071:
	defb 008h,020h,010h,018h	; b071

; ======================================================================
; CODIGO 0xb075..0xb096  (33 bytes)
; ======================================================================


L_B075:
	ld c,080h		;b075
	ld a,(ix+006h)		;b077
	sub 030h		;b07a
	ccf			;b07c
	ret nc			;b07d
	sub 0a0h		;b07e
	ret nc			;b080
	ld c,000h		;b081
	ret			;b083
L_B084:
	ld a,(ix+00ch)		;b084
	inc (ix+00ch)		;b087
	and 007h		;b08a
	ld hl,0b096h		;b08c
	call 04a6eh		;b08f
	ld (ix+002h),a		;b092
	ret			;b095

; ----------------------------------------------------------------------
; DATOS tabla_B096: tabla que se lee desde HL = 0xB096 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:B08C (8 bytes)
;   0xb096..0xb09e  (8 bytes)
DATA_tabla_B096:
	defb 002h,004h,002h,008h,002h,005h,007h,003h	; b096  ........

; ======================================================================
; CODIGO 0xb09e..0xb0aa  (12 bytes)
; ======================================================================


L_B09E:
	ld a,014h		;b09e
	ld hl,0b0aah		;b0a0
	ld de,00060h		;b0a3
	call L_AF8B		;b0a6
L_B0A9:
	ret			;b0a9

; ----------------------------------------------------------------------
; DATOS leido_B0AA: 32 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (32 bytes)
;   0xb0aa..0xb0ca  (32 bytes)
DATA_leido_B0AA:
	defb 080h,001h,0c0h,002h,0a0h,002h,040h,001h,040h,002h,080h,002h,0c0h,002h,080h,001h	; b0aa  ......@.@.......
	defb 000h,002h,000h,002h,0e0h,002h,000h,001h,0c0h,001h,040h,002h,000h,003h,0c0h,001h	; b0ba  ..........@.....

; ======================================================================
; CODIGO 0xb0ca..0xb14a  (128 bytes)
; ======================================================================


L_B0CA:
	call 07f1ch		;b0ca
	ld a,(ix+002h)		;b0cd
	or a			;b0d0
	jr z,L_B0D7		;b0d1
	dec (ix+002h)		;b0d3
	ret nz			;b0d6
L_B0D7:
	call L_B0E4		;b0d7
	ret nc			;b0da
	ld a,0ffh		;b0db
	ld (de),a			;b0dd
	call 058edh		;b0de   ; sonido_33: pide el sonido 0x33
	jp 075d1h		;b0e1
L_B0E4:
	ld b,0ffh		;b0e4
L_B0E6:
	ld a,(ix+006h)		;b0e6
	ld h,a			;b0e9
	sub 008h		;b0ea
	cp 0f1h		;b0ec
	ret nc			;b0ee
	ld a,(ix+004h)		;b0ef
	ld l,a			;b0f2
	sub 008h		;b0f3
	cp 0a0h		;b0f5
	ret nc			;b0f7
	ld a,h			;b0f8
	add a,004h		;b0f9
	ld h,a			;b0fb
	ld a,l			;b0fc
	sub 004h		;b0fd
	ld l,a			;b0ff
	call 04a46h		;b100
	ld d,h			;b103
	ld e,l			;b104
	ld a,040h		;b105
	call 0408eh		;b107   ; suma_a_de: DE = DE + A
	ld a,(de)			;b10a
	cp b			;b10b
	ret z			;b10c
	ld a,(0e405h)		;b10d
	dec a			;b110
	ld bc,0003fh		;b111
	call L_B11A		;b114
	ret c			;b117
	inc hl			;b118
	inc hl			;b119
L_B11A:
	cp (hl)			;b11a
	ret c			;b11b
	add hl,bc			;b11c
	cp (hl)			;b11d
	ret			;b11e
L_B11F:
	xor a			;b11f
	ld (ix+01dh),a		;b120
	ld bc,01e08h		;b123
L_B126:
	ld (ix+002h),004h		;b126
	ld (ix+01fh),020h		;b12a
L_B12E:
	ld (ix+007h),b		;b12e
	ld (ix+009h),c		;b131
	ld (ix+00ah),c		;b134
	ld (ix+00dh),080h		;b137
	ld (ix+012h),081h		;b13b
	ret			;b13f
L_B140:
	ld hl,0b14ah		;b140
L_B143:
	ld bc,00404h		;b143
	call 09c26h		;b146
	ret			;b149

; ----------------------------------------------------------------------
; DATOS leido_B14A: 4 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (4 bytes)
;   0xb14a..0xb14e  (4 bytes)
DATA_leido_B14A:
	defb 01eh,01fh,020h,021h	; b14a

; ======================================================================
; CODIGO 0xb14e..0xb16a  (28 bytes)
; ======================================================================


L_B14E:
	ld hl,0e4a1h		;b14e
	ld a,(hl)			;b151
	inc (hl)			;b152
	ld hl,0b16ah		;b153
	call 04089h		;b156   ; suma_a_hl: HL = HL + A
	ld a,(0e381h)		;b159
	cp (hl)			;b15c
	ld a,001h		;b15d
	jr z,L_B162		;b15f
	xor a			;b161
L_B162:
	ld (ix+01dh),a		;b162
	ld bc,02208h		;b165
	jr $-66		;b168

; ----------------------------------------------------------------------
; DATOS tabla_B16A: tabla que se lee desde HL = 0xB16A con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:B153 (11 bytes)
;   0xb16a..0xb175  (11 bytes)
DATA_tabla_B16A:
	defb 000h,0ffh,0ffh,0ffh,001h,0ffh,002h,003h,0ffh,0ffh,0ffh	; b16a  ...........

; ======================================================================
; CODIGO 0xb175..0xb182  (13 bytes)
; ======================================================================


L_B175:
	ld a,(ix+01dh)		;b175
	rra			;b178
	ret c			;b179
	ld hl,0b182h		;b17a
	call L_B143		;b17d
	jr $+6		;b180

; ----------------------------------------------------------------------
; DATOS leido_B182: 4 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (4 bytes)
;   0xb182..0xb186  (4 bytes)
DATA_leido_B182:
	defb 022h,023h,024h,025h	; b182

; ======================================================================
; CODIGO 0xb186..0xb30c  (390 bytes)
; ======================================================================


L_B186:
	bit 6,(ix+012h)		;b186
	ret nz			;b18a
	dec (ix+01fh)		;b18b
	ret nz			;b18e
	ld (ix+01fh),010h		;b18f
	call L_B19C		;b193
	ret c			;b196
	ld (ix+01fh),001h		;b197
	ret			;b19b
L_B19C:
	ld a,(ix+000h)		;b19c
	sub 00ch		;b19f
	ld b,001h		;b1a1
	ld l,040h		;b1a3
	jr z,L_B1AA		;b1a5
	ld b,000h		;b1a7
	ld l,b			;b1a9
L_B1AA:
	ld a,(ix+01eh)		;b1aa
	add a,070h		;b1ad
	ld (ix+01eh),a		;b1af
	ld h,a			;b1b2
	ld a,(ix+006h)		;b1b3
	add a,020h		;b1b6
	ret c			;b1b8
	ld d,a			;b1b9
	ld a,(ix+004h)		;b1ba
	add a,020h		;b1bd
	ld e,a			;b1bf
	ld c,000h		;b1c0
	ld a,046h		;b1c2
	push ix		;b1c4
	push de			;b1c6
	push hl			;b1c7
	call 0765bh		;b1c8
	pop hl			;b1cb
	pop de			;b1cc
	jr nc,L_B1DB		;b1cd
	ld (ix+02ch),l		;b1cf
	ld (ix+02dh),h		;b1d2
	ld (ix+02eh),e		;b1d5
	ld (ix+02fh),d		;b1d8
L_B1DB:
	pop ix		;b1db
	ret			;b1dd
L_B1DE:
	ld (ix+010h),010h		;b1de
	res 7,(ix+00bh)		;b1e2
	ret			;b1e6
L_B1E7:
	set 7,(ix+00bh)		;b1e7
	call L_B201		;b1eb
	jp c,075d1h		;b1ee
	ld b,(ix+02dh)		;b1f1
	ld c,(ix+02ch)		;b1f4
	call L_B24B		;b1f7
	call L_B21E		;b1fa
	ret nc			;b1fd
	jp 075d1h		;b1fe
L_B201:
	ld a,(ix+02dh)		;b201
	add a,004h		;b204
	ld (ix+02dh),a		;b206
	ld a,(ix+02ch)		;b209
	bit 0,(ix+01fh)		;b20c
	jr nz,L_B218		;b210
	inc a			;b212
	ld (ix+02ch),a		;b213
	or a			;b216
	ret			;b217
L_B218:
	sub 002h		;b218
	ld (ix+02ch),a		;b21a
	ret			;b21d
L_B21E:
	call L_B241		;b21e
	ld a,(0ef81h)		;b221
	ld b,a			;b224
	ld a,e			;b225
	bit 0,b		;b226
	jr z,L_B22C		;b228
	neg		;b22a
L_B22C:
	add a,l			;b22c
	ld (ix+004h),a		;b22d
	ld a,h			;b230
	bit 1,b		;b231
	jr nz,L_B23B		;b233
	add a,d			;b235
	ld d,a			;b236
	ld (ix+006h),a		;b237
	ret			;b23a
L_B23B:
	sub d			;b23b
	ld d,a			;b23c
	ld (ix+006h),a		;b23d
	ret			;b240
L_B241:
	ld l,(ix+02eh)		;b241
	dec (ix+02fh)		;b244
	ld h,(ix+02fh)		;b247
	ret			;b24a
L_B24B:
	ld a,c			;b24b
	ld (0ef80h),a		;b24c
	ld a,b			;b24f
	ld d,000h		;b250
	bit 7,a		;b252
	jr z,L_B258		;b254
	cpl			;b256
	inc d			;b257
L_B258:
	bit 6,a		;b258
	jr z,L_B261		;b25a
	sub 080h		;b25c
	cpl			;b25e
	inc d			;b25f
	inc d			;b260
L_B261:
	ld c,a			;b261
	sub 03fh		;b262
	neg		;b264
	ld b,a			;b266
	ld a,d			;b267
	ld (0ef81h),a		;b268
	ld a,b			;b26b
	call L_B277		;b26c
	push hl			;b26f
	ld a,c			;b270
	call L_B277		;b271
	pop de			;b274
	ld e,h			;b275
	ret			;b276
L_B277:
	ld hl,06479h		;b277
	call 04089h		;b27a   ; suma_a_hl: HL = HL + A
	ld h,(hl)			;b27d
	ld a,(0ef80h)		;b27e
	ld e,a			;b281
	jp 0563ch		;b282
L_B285:
	ld b,01ah		;b285
	call L_B0E6		;b287
	ret nc			;b28a
	ld a,0fdh		;b28b
	ld (de),a			;b28d
	jp 075d1h		;b28e
L_B291:
	ld (ix+002h),020h		;b291
	ld (ix+010h),008h		;b295
	ret			;b299
L_B29A:
	bit 7,(ix+01fh)		;b29a
	jr nz,L_B2C8		;b29e
	ld a,(ix+001h)		;b2a0
	dec a			;b2a3
	jr z,L_B2B6		;b2a4
	dec (ix+002h)		;b2a6
	ret nz			;b2a9
	ld (ix+002h),018h		;b2aa
	ld (ix+00bh),081h		;b2ae
	inc (ix+001h)		;b2b2
	ret			;b2b5
L_B2B6:
	ld a,(0e303h)		;b2b6   ; lee la cuenta de cuadros del juego
	and 002h		;b2b9
	ld a,08ch		;b2bb
	jr z,L_B2C1		;b2bd
	ld a,090h		;b2bf
L_B2C1:
	ld (ix+030h),a		;b2c1
	dec (ix+002h)		;b2c4
	ret nz			;b2c7
L_B2C8:
	call 075d1h		;b2c8
	ld b,(ix+01fh)		;b2cb
	bit 6,b		;b2ce
	ld c,001h		;b2d0
	jr nz,L_B2D5		;b2d2
	dec c			;b2d4
L_B2D5:
	ld d,(ix+006h)		;b2d5
	ld e,(ix+004h)		;b2d8
	ld a,02dh		;b2db
	call 0763ch		;b2dd
	ret			;b2e0
L_B2E1:
	set 6,(ix+00bh)		;b2e1
	ld (ix+002h),010h		;b2e5
	ld (ix+010h),00bh		;b2e9
	ld (ix+013h),001h		;b2ed
	ld (ix+014h),002h		;b2f1
	call 09094h		;b2f5
	ld e,(ix+026h)		;b2f8
	ld d,000h		;b2fb
	ld hl,0b30ch		;b2fd
	add hl,de			;b300
	ld a,(hl)			;b301
	ld (ix+032h),a		;b302
	bit 7,(ix+01fh)		;b305
	jr nz,$+7		;b309
	ret			;b30b

; ----------------------------------------------------------------------
; DATOS tabla_B30C: tabla que se lee desde HL = 0xB30C con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:B2FD (4 bytes)
;   0xb30c..0xb310  (4 bytes)
DATA_tabla_B30C:
	defb 031h,034h,03ch,03dh	; b30c

; ======================================================================
; CODIGO 0xb310..0xb4e9  (473 bytes)
; ======================================================================


L_B310:
	ld (ix+002h),001h		;b310
	ret			;b314
L_B315:
	ld a,(ix+001h)		;b315
	dec a			;b318
	jp z,090e5h		;b319
	dec (ix+002h)		;b31c
	ret nz			;b31f
	inc (ix+013h)		;b320
	ld (ix+00eh),010h		;b323
	inc (ix+001h)		;b327
	bit 1,(ix+026h)		;b32a
	jr nz,L_B339		;b32e
	ld a,(ix+004h)		;b330
	sub 008h		;b333
	ld (ix+004h),a		;b335
	ret			;b338
L_B339:
	ld a,(ix+032h)		;b339
	sub 03ch		;b33c
	ld a,037h		;b33e
	jr z,L_B344		;b340
	ld a,03ah		;b342
L_B344:
	ld (ix+032h),a		;b344
	ret			;b347
L_B348:
	ld e,(ix+004h)		;b348
	ld d,(ix+006h)		;b34b
	call 063ffh		;b34e
	ld a,(0e477h)		;b351
	cp 080h		;b354
	jr c,L_B35A		;b356
	neg		;b358
L_B35A:
	ld b,002h		;b35a
L_B35C:
	sub 02ah		;b35c
	ret c			;b35e
	djnz L_B35C		;b35f
	ret			;b361
L_B362:
	ld a,(ix+004h)		;b362
	cp 050h		;b365
	ld a,0e0h		;b367
	jr nc,L_B36D		;b369
	ld a,0e8h		;b36b
L_B36D:
	ld (ix+030h),a		;b36d
	ld (ix+015h),010h		;b370
	ld de,0fd80h		;b374
	call 078b3h		;b377
L_B37A:
	jp 078cdh		;b37a
L_B37D:
	call L_B3B2		;b37d
	call L_B3D0		;b380
	call c,L_B3C1		;b383
	call L_B3A6		;b386
	dec (ix+015h)		;b389
	ret nz			;b38c
	ld a,(0e407h)		;b38d
	or a			;b390
	jr z,L_B398		;b391
	ld (ix+015h),001h		;b393
	ret			;b397
L_B398:
	ld e,(ix+004h)		;b398
	ld d,(ix+006h)		;b39b
	call 0855eh		;b39e
	ld (ix+015h),040h		;b3a1
	ret			;b3a5
L_B3A6:
	ld a,(ix+006h)		;b3a6
	cp 0f0h		;b3a9
	ret c			;b3ab
	ld de,0fd80h		;b3ac
	jp 078b3h		;b3af
L_B3B2:
	ld a,(0e303h)		;b3b2   ; lee la cuenta de cuadros del juego
	and 007h		;b3b5
	ret nz			;b3b7
	ld a,(ix+030h)		;b3b8
	xor 004h		;b3bb
	ld (ix+030h),a		;b3bd
	ret			;b3c0
L_B3C1:
	ld de,00180h		;b3c1
	bit 7,(ix+00ah)		;b3c4
	jr nz,L_B3CD		;b3c8
	ld de,0fd80h		;b3ca
L_B3CD:
	jp 078b3h		;b3cd
L_B3D0:
	ld a,(ix+006h)		;b3d0
	bit 7,(ix+00ah)		;b3d3
	jr nz,L_B3DB		;b3d7
	add a,010h		;b3d9
L_B3DB:
	ld h,a			;b3db
	ld l,(ix+004h)		;b3dc
	call 04a46h		;b3df
	ld a,(0e405h)		;b3e2
	cp (hl)			;b3e5
	ret c			;b3e6
	ld de,00040h		;b3e7
	add hl,de			;b3ea
	cp (hl)			;b3eb
	ret			;b3ec
L_B3ED:
	ld a,008h		;b3ed
	ld (ix+008h),a		;b3ef
	ld (ix+01fh),a		;b3f2
	ld de,0e802h		;b3f5
L_B3F8:
	ld (ix+007h),d		;b3f8
	ld (ix+009h),e		;b3fb
	ld (ix+00ah),e		;b3fe
	ret			;b401
L_B402:
	call L_B43D		;b402
	call L_B44C		;b405
	ld a,(ix+001h)		;b408
	dec a			;b40b
	jr z,L_B41F		;b40c
	ret p			;b40e
	ld a,(ix+008h)		;b40f
	cp 005h		;b412
	ret nc			;b414
	ld de,0ea03h		;b415
L_B418:
	call L_B3F8		;b418
	inc (ix+001h)		;b41b
	ret			;b41e
L_B41F:
	ld a,(ix+008h)		;b41f
	cp 003h		;b422
	ret nc			;b424
	ld a,(ix+004h)		;b425
	sub 008h		;b428
	ld (ix+004h),a		;b42a
	ld a,(ix+006h)		;b42d
	sub 008h		;b430
	jp c,07aa4h		;b432
	ld (ix+006h),a		;b435
	ld de,0ec04h		;b438
	jr L_B418		;b43b
L_B43D:
	ld a,(0e303h)		;b43d   ; lee la cuenta de cuadros del juego
	and 003h		;b440
	ret nz			;b442
	ld a,(ix+007h)		;b443
	xor 001h		;b446
	ld (ix+007h),a		;b448
	ret			;b44b
L_B44C:
	ld a,(ix+01fh)		;b44c
	cp (ix+008h)		;b44f
	ret z			;b452
	ret c			;b453
	sub 003h		;b454
	ld (ix+01fh),a		;b456
	ld e,(ix+004h)		;b459
	ld d,(ix+006h)		;b45c
	ld bc,00000h		;b45f
	ld a,041h		;b462
	jp 07647h		;b464
L_B467:
	ld a,(ix+01fh)		;b467
	or a			;b46a
	jr z,L_B474		;b46b
	ld (ix+030h),0dch		;b46d
	inc (ix+001h)		;b471
L_B474:
	ld (ix+002h),010h		;b474
	ld hl,0e49ch		;b478
	ld a,(hl)			;b47b
	inc (hl)			;b47c
	and 007h		;b47d
	ld hl,0b4e9h		;b47f
	call 04a5ah		;b482   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,040h		;b485
	jp 07888h		;b487
L_B48A:
	ld a,(ix+001h)		;b48a
	dec a			;b48d
	jr nz,L_B4A4		;b48e
	dec (ix+002h)		;b490
	ret nz			;b493
	ld (ix+002h),010h		;b494
	ld a,(ix+030h)		;b498
	sub 008h		;b49b
	ld (ix+030h),a		;b49d
	dec (ix+001h)		;b4a0
	ret			;b4a3
L_B4A4:
	call L_B4DA		;b4a4
	ld a,(ix+01fh)		;b4a7
	cp 005h		;b4aa
	ret nc			;b4ac
	dec (ix+002h)		;b4ad
	ret nz			;b4b0
	ld (ix+002h),001h		;b4b1
	ld a,(ix+006h)		;b4b5
	add a,004h		;b4b8
	ld d,a			;b4ba
	ld a,(ix+004h)		;b4bb
	sub 004h		;b4be
	ld e,a			;b4c0
	ld a,(ix+01fh)		;b4c1
	inc a			;b4c4
	ld b,a			;b4c5
	ld c,000h		;b4c6
	ld a,041h		;b4c8
	call 07647h		;b4ca
	ret nc			;b4cd
	inc (ix+01fh)		;b4ce
	inc (ix+001h)		;b4d1
	ld (ix+030h),0d8h		;b4d4
	jr L_B474		;b4d8
L_B4DA:
	ld a,(0e303h)		;b4da   ; lee la cuenta de cuadros del juego
	and 003h		;b4dd
	ret nz			;b4df
	ld a,(ix+030h)		;b4e0
	xor 004h		;b4e3
	ld (ix+030h),a		;b4e5
	ret			;b4e8

; ----------------------------------------------------------------------
; DATOS tabla_B4E9: tabla que se lee desde HL = 0xB4E9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:B47F (13 bytes)
;   0xb4e9..0xb4f6  (13 bytes)
DATA_tabla_B4E9:
	defb 018h,018h,080h,098h,0e8h,018h,018h,058h,0e8h,058h,080h,018h,018h	; b4e9  .......X.X...

; ----------------------------------------------------------------------
; DATOS leido_B4F6: 3 bytes que leen p00:4A62, p00:4A60 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A62, p00:4A60 (3 bytes)
;   0xb4f6..0xb4f9  (3 bytes)
DATA_leido_B4F6:
	defb 098h,0e8h,098h	; b4f6

; ======================================================================
; CODIGO 0xb4f9..0xb545  (76 bytes)
; ======================================================================


L_B4F9:
	xor a			;b4f9
	ld (ix+015h),a		;b4fa
	ld a,(ix+01fh)		;b4fd
	rra			;b500
	ld a,001h		;b501
	jr nc,L_B506		;b503
	inc a			;b505
L_B506:
	ld (ix+02fh),a		;b506
L_B509:
	xor a			;b509
	ld (ix+001h),a		;b50a
	ld (ix+010h),01dh		;b50d
	ld (ix+031h),00fh		;b511
	ret			;b515
L_B516:
	call L_B5EA		;b516
	ld a,(ix+001h)		;b519
	dec a			;b51c
	jr z,$+42		;b51d
	ret p			;b51f
	call L_B5DB		;b520
	ret nc			;b523
	call L_B533		;b524
	ld (ix+010h),019h		;b527
	inc (ix+001h)		;b52b
	ld (ix+030h),0bch		;b52e
	ret			;b532
L_B533:
	ld a,(ix+015h)		;b533
	inc (ix+015h)		;b536
	and 001h		;b539
	ld hl,0b545h		;b53b
	call 04a6eh		;b53e
	ld (ix+002h),a		;b541
	ret			;b544

; ----------------------------------------------------------------------
; DATOS tabla_B545: tabla que se lee desde HL = 0xB545 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:B53B (2 bytes)
;   0xb545..0xb547  (2 bytes)
DATA_tabla_B545:
	defb 008h,004h	; b545

; ======================================================================
; CODIGO 0xb547..0xb5cb  (132 bytes)
; ======================================================================


L_B547:
	call L_B559		;b547
	dec (ix+002h)		;b54a
	ret nz			;b54d
	call L_B568		;b54e
	call L_B576		;b551
	call L_B5B3		;b554
	jr $-78		;b557
L_B559:
	ld a,(0e303h)		;b559   ; lee la cuenta de cuadros del juego
	and 001h		;b55c
	ld a,00fh		;b55e
	jr z,L_B564		;b560
	ld a,00ah		;b562
L_B564:
	ld (ix+031h),a		;b564
	ret			;b567
L_B568:
	ld a,(ix+01fh)		;b568
	rra			;b56b
	jr c,L_B572		;b56c
	inc (ix+02fh)		;b56e
	ret			;b571
L_B572:
	dec (ix+02fh)		;b572
	ret			;b575
L_B576:
	call L_B5A1		;b576
	ld de,001f8h		;b579
	rst 20h			;b57c
	jr nc,L_B597		;b57d
	ld de,001c4h		;b57f
	rst 20h			;b582
	ret nc			;b583
	ld a,(ix+02fh)		;b584
	ld b,a			;b587
	or a			;b588
	ret z			;b589
	sub 003h		;b58a
	ret z			;b58c
L_B58D:
	ld a,b			;b58d
	xor 001h		;b58e
	ld (ix+02fh),a		;b590
	inc (ix+01fh)		;b593
	ret			;b596
L_B597:
	ld a,(ix+02fh)		;b597
	ld b,a			;b59a
	dec a			;b59b
	ret z			;b59c
	dec a			;b59d
	ret z			;b59e
	jr L_B58D		;b59f
L_B5A1:
	ld a,(ix+006h)		;b5a1
	rra			;b5a4
	rra			;b5a5
	rra			;b5a6
	and 01fh		;b5a7
	sub 020h		;b5a9
	ld e,a			;b5ab
	ld d,0ffh		;b5ac
	ld hl,(0e363h)		;b5ae   ; lee la posicion del scroll (16 bits)
	add hl,de			;b5b1
	ret			;b5b2
L_B5B3:
	ld a,(ix+02fh)		;b5b3
	and 003h		;b5b6
	ld b,a			;b5b8
	ld hl,0b5cbh		;b5b9
	call 06e40h		;b5bc
	ld a,b			;b5bf
	rra			;b5c0
	ld a,0b4h		;b5c1
	jr c,L_B5C7		;b5c3
	ld a,0b8h		;b5c5
L_B5C7:
	ld (ix+030h),a		;b5c7
	ret			;b5ca

; ----------------------------------------------------------------------
; DATOS leido_B5CB: 16 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (16 bytes)
;   0xb5cb..0xb5db  (16 bytes)
DATA_leido_B5CB:
	defb 000h,004h,000h,004h,000h,0fch,000h,004h,000h,0fch,000h,0fch,000h,004h,000h,0fch	; b5cb  ................

; ======================================================================
; CODIGO 0xb5db..0xb6eb  (272 bytes)
; ======================================================================


L_B5DB:
	ld a,(ix+004h)		;b5db
	sub 010h		;b5de
	and 01fh		;b5e0
	ret nz			;b5e2
	cp 080h		;b5e3
	ret c			;b5e5
	scf			;b5e6
	ret z			;b5e7
	or a			;b5e8
	ret			;b5e9
L_B5EA:
	ld a,(ix+006h)		;b5ea
	cp 008h		;b5ed
	ret nc			;b5ef
	ld (ix+010h),009h		;b5f0
	ld (ix+001h),002h		;b5f4
	ret			;b5f8
L_B5F9:
	ld (ix+009h),002h		;b5f9
	ld (ix+00ah),004h		;b5fd
	ld (ix+012h),083h		;b601
	ld (ix+00dh),080h		;b605
	ld (ix+007h),01ch		;b609
	ld (ix+015h),008h		;b60d
	ld a,(ix+00bh)		;b611
	or a			;b614
	ld a,001h		;b615
	jr z,L_B61B		;b617
	neg		;b619
L_B61B:
	ld (ix+014h),a		;b61b
L_B61E:
	ld (ix+002h),00eh		;b61e
	ret			;b622
L_B623:
	call L_B65D		;b623
	call L_B64F		;b626
	dec (ix+015h)		;b629
	ret nz			;b62c
	ld (ix+015h),008h		;b62d
	ld a,(ix+014h)		;b631
	dec a			;b634
	ld a,008h		;b635
	jr nz,L_B63B		;b637
	neg		;b639
L_B63B:
	add a,(ix+004h)		;b63b
	ld (ix+004h),a		;b63e
	dec (ix+002h)		;b641
	ret nz			;b644
	ld a,(ix+014h)		;b645
	neg		;b648
	ld (ix+014h),a		;b64a
	jr L_B61E		;b64d
L_B64F:
	ld a,(0e303h)		;b64f   ; lee la cuenta de cuadros del juego
	and 001h		;b652
	ld a,01ch		;b654
	jr z,L_B659		;b656
	inc a			;b658
L_B659:
	ld (ix+007h),a		;b659
	ret			;b65c
L_B65D:
	bit 6,(ix+012h)		;b65d
	ret nz			;b661
	ld iy,0e680h		;b662
	ld b,009h		;b666
L_B668:
	push bc			;b668
	ld a,(iy+000h)		;b669
	cp 005h		;b66c
	call z,L_B67A		;b66e
	ld bc,00020h		;b671
	add iy,bc		;b674
	pop bc			;b676
	djnz L_B668		;b677
	ret			;b679
L_B67A:
	ld a,(iy+006h)		;b67a
	sub 005h		;b67d
	ld (ix+016h),a		;b67f
	ld a,(ix+004h)		;b682
	and 0f8h		;b685
	ld b,a			;b687
	cp 038h		;b688
	ret c			;b68a
	cp 068h		;b68b
	ret nc			;b68d
	call L_B69D		;b68e
	jr z,L_B6A4		;b691
	ld a,b			;b693
	add a,008h		;b694
	ld b,a			;b696
	call L_B69D		;b697
	jr z,L_B6A4		;b69a
	ret			;b69c
L_B69D:
	ld a,(iy+003h)		;b69d
	and 0f8h		;b6a0
	cp b			;b6a2
	ret			;b6a3
L_B6A4:
	ld a,(iy+00ah)		;b6a4
	add a,a			;b6a7
	add a,a			;b6a8
	add a,a			;b6a9
	add a,(iy+005h)		;b6aa
	ld b,a			;b6ad
	ld a,(ix+006h)		;b6ae
	sub 008h		;b6b1
	ld c,a			;b6b3
	ld a,b			;b6b4
	cp c			;b6b5
	ret c			;b6b6
	push af			;b6b7
	ld a,010h		;b6b8
	add a,(ix+006h)		;b6ba
	ld b,a			;b6bd
	call L_B6C6		;b6be
	pop af			;b6c1
	cp b			;b6c2
	ret nc			;b6c3
	jr L_B6CF		;b6c4
L_B6C6:
	ld a,(ix+006h)		;b6c6
	cp 0f8h		;b6c9
	ret c			;b6cb
	ld b,0ffh		;b6cc
	ret			;b6ce
L_B6CF:
	push iy		;b6cf
	push ix		;b6d1
	ld a,(ix+006h)		;b6d3
	sub 008h		;b6d6
	ld d,a			;b6d8
	ld e,(iy+003h)		;b6d9
	ld a,033h		;b6dc
	ld c,000h		;b6de
	ld b,(ix+016h)		;b6e0
	call 0765bh		;b6e3
	pop ix		;b6e6
	pop iy		;b6e8
	ret			;b6ea

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb6eb..0xb6ff  (20 bytes)
DATA_B6EB:
	defb 0cdh,098h,058h,0ddh,07eh,01fh,0cbh,03fh,0c6h,07bh,0ddh,077h,032h,0ddh,036h,02bh	; b6eb  ..X.~..?.{.w2.6+
	defb 010h,0c3h,021h,0b8h	; b6fb

; ======================================================================
; CODIGO 0xb6ff..0xb728  (41 bytes)
; ======================================================================


L_B6FF:
	jp L_B8F1		;b6ff
L_B702:
	ld (ix+010h),00bh		;b702
	ld a,(ix+01fh)		;b706
	ld hl,0b728h		;b709
	call 04a6eh		;b70c
L_B70F:
	ld (ix+032h),a		;b70f
	ld a,002h		;b712
	ld (ix+013h),a		;b714
	ld (ix+014h),a		;b717
L_B71A:
	ld (ix+002h),020h		;b71a
	ld (ix+02eh),002h		;b71e
	ld a,r		;b722
	ld (ix+02fh),a		;b724
	ret			;b727

; ----------------------------------------------------------------------
; DATOS tabla_B728: tabla que se lee desde HL = 0xB728 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:B709 (6 bytes)
;   0xb728..0xb72e  (6 bytes)
DATA_tabla_B728:
	defb 042h,043h,045h,045h,044h,044h	; b728

; ======================================================================
; CODIGO 0xb72e..0xb790  (98 bytes)
; ======================================================================


L_B72E:
	ld a,(ix+001h)		;b72e
	dec a			;b731
	jr z,L_B743		;b732
	call L_B798		;b734
	call L_B7CA		;b737
	ret nc			;b73a
	ld (ix+002h),020h		;b73b
	inc (ix+001h)		;b73f
	ret			;b742
L_B743:
	dec (ix+002h)		;b743
	ret nz			;b746
	dec (ix+001h)		;b747
	jr $-48		;b74a
L_B74C:
	ld a,(ix+01fh)		;b74c
	sub 002h		;b74f
	jr nc,L_B772		;b751
	ld a,(ix+006h)		;b753
	cp 0f0h		;b756
	jr nc,L_B77D		;b758
	ld h,a			;b75a
	dec h			;b75b
	ld l,(ix+004h)		;b75c
	call 04a46h		;b75f
	ld a,(0e405h)		;b762
	ld c,a			;b765
	ld a,(hl)			;b766
	cp c			;b767
	jr nc,L_B78B		;b768
	inc hl			;b76a
	inc hl			;b76b
	inc hl			;b76c
	ld a,(hl)			;b76d
	cp c			;b76e
	jr nc,L_B77D		;b76f
	ret			;b771
L_B772:
	ld hl,0b790h		;b772
	call 04a6eh		;b775
	cp (ix+004h)		;b778
	jr nz,L_B782		;b77b
L_B77D:
	ld (ix+02fh),000h		;b77d
	ret			;b781
L_B782:
	ld de,00004h		;b782
	add hl,de			;b785
	ld a,(hl)			;b786
	cp (ix+004h)		;b787
	ret nz			;b78a
L_B78B:
	ld (ix+02fh),001h		;b78b
	ret			;b78f

; ----------------------------------------------------------------------
; DATOS tabla_B790: tabla que se lee desde HL = 0xB790 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:B772 (4 bytes)
;   0xb790..0xb794  (4 bytes)
DATA_tabla_B790:
	defb 028h,090h,028h,090h	; b790

; ----------------------------------------------------------------------
; DATOS leido_B794: 2 bytes que lee p03:B786 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p03:B786 (2 bytes)
;   0xb794..0xb796  (2 bytes)
DATA_leido_B794:
	defb 010h,068h	; b794

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb796..0xb798  (2 bytes)
DATA_B796:
	defb 010h,068h	; b796

; ======================================================================
; CODIGO 0xb798..0xb7f1  (89 bytes)
; ======================================================================


L_B798:
	ld a,(ix+006h)		;b798
	sub 018h		;b79b
	ret c			;b79d
	dec (ix+02eh)		;b79e
	ret nz			;b7a1
	ld (ix+02eh),002h		;b7a2
	call L_B74C		;b7a6
	bit 0,(ix+02fh)		;b7a9
	ld b,008h		;b7ad
	jr nz,L_B7B3		;b7af
	ld b,0f8h		;b7b1
L_B7B3:
	ld a,(ix+01fh)		;b7b3
	sub 002h		;b7b6
	jr c,L_B7C2		;b7b8
	ld a,(ix+004h)		;b7ba
	add a,b			;b7bd
	ld (ix+004h),a		;b7be
	ret			;b7c1
L_B7C2:
	ld a,(ix+006h)		;b7c2
	add a,b			;b7c5
	ld (ix+006h),a		;b7c6
	ret			;b7c9
L_B7CA:
	ld a,(ix+006h)		;b7ca
	sub 030h		;b7cd
	ccf			;b7cf
	ret nc			;b7d0
	or a			;b7d1
	dec (ix+002h)		;b7d2
	ret nz			;b7d5
	ld a,(ix+01fh)		;b7d6
	ld b,a			;b7d9
	ld hl,0b7f1h		;b7da
	call 04a5ah		;b7dd   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(ix+006h)		;b7e0
	add a,h			;b7e3
	ld d,a			;b7e4
	ld a,(ix+004h)		;b7e5
	add a,l			;b7e8
	ld e,a			;b7e9
	ld c,000h		;b7ea
	ld a,048h		;b7ec
	jp 07647h		;b7ee

; ----------------------------------------------------------------------
; DATOS tabla_B7F1: tabla que se lee desde HL = 0xB7F1 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:B7DA (12 bytes)
;   0xb7f1..0xb7fd  (12 bytes)
DATA_tabla_B7F1:
	defb 0f8h,008h,010h,008h,008h,010h,008h,010h,008h,0f8h,008h,0f8h	; b7f1  ............

; ======================================================================
; CODIGO 0xb7fd..0xb84d  (80 bytes)
; ======================================================================


L_B7FD:
	ld a,(ix+01fh)		;b7fd
	sub 002h		;b800
	ld a,046h		;b802
	jr c,L_B807		;b804
	inc a			;b806
L_B807:
	ld (ix+032h),a		;b807
	call L_B821		;b80a
L_B80D:
	call 058d5h		;b80d   ; sonido_2D: pide el sonido 0x2D
L_B810:
	ld a,(ix+01fh)		;b810
	sub 002h		;b813
	jr c,L_B81C		;b815
	ld (ix+00eh),004h		;b817
	ret			;b81b
L_B81C:
	ld (ix+00fh),004h		;b81c
	ret			;b820
L_B821:
	ld (ix+02ch),004h		;b821
	ld (ix+010h),009h		;b825
	xor a			;b829
	ld (ix+02dh),a		;b82a
	inc a			;b82d
	call L_B83D		;b82e
L_B831:
	ld a,001h		;b831
L_B833:
	ld (ix+013h),a		;b833
	add a,a			;b836
	add a,a			;b837
	add a,a			;b838
	ld (ix+00eh),a		;b839
	ret			;b83c
L_B83D:
	ld (ix+014h),a		;b83d
	add a,a			;b840
	add a,a			;b841
	add a,a			;b842
	ld (ix+00fh),a		;b843
	ret			;b846
L_B847:
	ld a,(ix+01fh)		;b847
	call 04093h		;b84a   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_B84D: 6 destinos del despachador p00:4093 (call en p03:B84A, el
;   indice en A): B859, B899, B8C3, B8C3, B8F1, B8F1; lo leen p03:B84A (12
;   bytes)
;   0xb84d..0xb859  (12 bytes)
DATA_tabla_B84D:
	defw 0b859h,0b899h,0b8c3h,0b8c3h,0b8f1h,0b8f1h	; b84d

; ======================================================================
; CODIGO 0xb859..0xba1a  (449 bytes)
; ======================================================================


L_B859:
	ld a,(ix+001h)		;b859
	dec a			;b85c
	jr z,L_B879		;b85d
	jp p,L_B88A		;b85f
	ld a,(ix+004h)		;b862
	sub 010h		;b865
	ld (ix+004h),a		;b867
L_B86A:
	ld a,(ix+013h)		;b86a
	add a,002h		;b86d
	call L_B833		;b86f
	cp 040h		;b872
	ret c			;b874
L_B875:
	inc (ix+001h)		;b875
	ret			;b878
L_B879:
	ld a,(ix+004h)		;b879
	sub 010h		;b87c
	ld (ix+004h),a		;b87e
	cp 010h		;b881
	ret nc			;b883
	ld (ix+004h),010h		;b884
	jr L_B875		;b888
L_B88A:
	ld a,(ix+013h)		;b88a
	sub 002h		;b88d
	jp c,075d1h		;b88f
	jp z,075d1h		;b892
	call L_B833		;b895
	ret			;b898
L_B899:
	ld a,(ix+001h)		;b899
	or a			;b89c
	jr z,L_B86A		;b89d
	ld a,(ix+004h)		;b89f
	add a,010h		;b8a2
	ld (ix+004h),a		;b8a4
	ld b,(ix+00eh)		;b8a7
	add a,b			;b8aa
	sub 0a0h		;b8ab
	ret c			;b8ad
	ld c,a			;b8ae
	ld a,b			;b8af
	sub c			;b8b0
	jp c,075d1h		;b8b1
	jp z,075d1h		;b8b4
	ld (ix+00eh),a		;b8b7
	rra			;b8ba
	rra			;b8bb
	rra			;b8bc
	and 01fh		;b8bd
	ld (ix+013h),a		;b8bf
	ret			;b8c2
L_B8C3:
	ld a,(ix+001h)		;b8c3
	dec a			;b8c6
	jr z,L_B8E0		;b8c7
	ld a,(ix+02dh)		;b8c9
	rra			;b8cc
	jr c,L_B875		;b8cd
	ld a,(ix+014h)		;b8cf
	add a,002h		;b8d2
	call L_B83D		;b8d4
	cp 040h		;b8d7
	call nc,L_B875		;b8d9
	call L_B983		;b8dc
	ret			;b8df
L_B8E0:
	ld a,(ix+006h)		;b8e0
	add a,010h		;b8e3
	ld (ix+006h),a		;b8e5
	cp 0f0h		;b8e8
	jp nc,075d1h		;b8ea
	call L_B983		;b8ed
	ret			;b8f0
L_B8F1:
	call L_B902		;b8f1
	ld a,(0e420h)		;b8f4
	or a			;b8f7
	ret z			;b8f8
	ld a,(ix+006h)		;b8f9
	add a,008h		;b8fc
	ld (ix+006h),a		;b8fe
	ret			;b901
L_B902:
	ld a,(ix+001h)		;b902
	dec a			;b905
	jp z,L_B97F		;b906
	ld a,(ix+014h)		;b909
	add a,002h		;b90c
	call L_B83D		;b90e
	call L_B91C		;b911
	dec (ix+02ch)		;b914
	ret nz			;b917
	inc (ix+001h)		;b918
	ret			;b91b
L_B91C:
	ld a,(ix+006h)		;b91c
	sub 010h		;b91f
	ld (ix+006h),a		;b921
	jr z,L_B979		;b924
	jr nc,L_B93D		;b926
	neg		;b928
	ld b,a			;b92a
	ld a,(ix+00fh)		;b92b
	sub b			;b92e
	jp c,075d1h		;b92f
	jp z,075d1h		;b932
	rra			;b935
	rra			;b936
	rra			;b937
	and 01fh		;b938
	ld (ix+014h),a		;b93a
L_B93D:
	ld l,(ix+004h)		;b93d
	ld h,(ix+006h)		;b940
	ld a,(ix+014h)		;b943
	dec a			;b946
	add a,a			;b947
	add a,a			;b948
	add a,a			;b949
	add a,h			;b94a
	ld h,a			;b94b
	ld (0ef80h),a		;b94c
	call 04a46h		;b94f
	ld a,(0e405h)		;b952
	dec a			;b955
	ld b,(ix+014h)		;b956
	ld c,000h		;b959
L_B95B:
	cp (hl)			;b95b
	jr c,L_B966		;b95c
	dec hl			;b95e
	bit 5,l		;b95f
	jr nz,L_B966		;b961
	inc c			;b963
	djnz L_B95B		;b964
L_B966:
	ld a,c			;b966
	or a			;b967
	jp z,075d1h		;b968
	call L_B83D		;b96b
	ld c,a			;b96e
	ld a,(0ef80h)		;b96f
	add a,008h		;b972
	sub c			;b974
	ld (ix+006h),a		;b975
	ret			;b978
L_B979:
	ld (ix+006h),004h		;b979
	jr L_B93D		;b97d
L_B97F:
	call L_B91C		;b97f
	ret			;b982
L_B983:
	ld h,(ix+006h)		;b983
	ld l,(ix+004h)		;b986
	call 04a46h		;b989
	ld a,(0e405h)		;b98c
	dec a			;b98f
	ld b,(ix+014h)		;b990
	ld c,000h		;b993
L_B995:
	cp (hl)			;b995
	jr c,L_B9A2		;b996
	inc hl			;b998
	bit 5,l		;b999
	jr nz,L_B9A2		;b99b
	inc c			;b99d
	djnz L_B995		;b99e
	jr L_B9A6		;b9a0
L_B9A2:
	ld (ix+02dh),001h		;b9a2
L_B9A6:
	ld a,c			;b9a6
	or a			;b9a7
	jp z,075d1h		;b9a8
	call L_B83D		;b9ab
	ret			;b9ae
L_B9AF:
	ld (ix+009h),001h		;b9af
	ld (ix+00ah),001h		;b9b3
	ld (ix+012h),000h		;b9b7
	ld (ix+00dh),080h		;b9bb
	ld (ix+014h),00fh		;b9bf
	ret			;b9c3
L_B9C4:
	call L_B9E7		;b9c4
	ret nz			;b9c7
	call L_B9EB		;b9c8
	ld a,(0e420h)		;b9cb
	or a			;b9ce
	ret nz			;b9cf
	ld a,(ix+006h)		;b9d0
	cp 020h		;b9d3
	ret c			;b9d5
	sub 004h		;b9d6
	ld d,a			;b9d8
	ld e,(ix+004h)		;b9d9
	ld c,000h		;b9dc
	ld b,(ix+00bh)		;b9de
	ld a,023h		;b9e1
	call 07647h		;b9e3
	ret			;b9e6
L_B9E7:
	dec (ix+014h)		;b9e7
	ret			;b9ea
L_B9EB:
	ld (ix+014h),00fh		;b9eb
	ret			;b9ef
L_B9F0:
	ld (ix+010h),00fh		;b9f0
	ld (ix+001h),000h		;b9f4
	ld (ix+002h),002h		;b9f8
	call 078d2h		;b9fc
L_B9FF:
	ld hl,0ba1ah		;b9ff
	ld a,(ix+01fh)		;ba02
	or a			;ba05
	jr z,L_BA0B		;ba06
	ld hl,0ba1dh		;ba08
L_BA0B:
	ld a,(hl)			;ba0b
	inc hl			;ba0c
	ld b,(hl)			;ba0d
	inc hl			;ba0e
	ld c,(hl)			;ba0f
	ld (ix+004h),a		;ba10
	ld (ix+008h),b		;ba13
	ld (ix+025h),c		;ba16
	ret			;ba19

; ----------------------------------------------------------------------
; DATOS leido_BA1A: 3 bytes que leen p03:BA0B, p03:BA0D, p03:BA0F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p03:BA0B, p03:BA0D, p03:BA0F
;   (3 bytes)
;   0xba1a..0xba1d  (3 bytes)
DATA_leido_BA1A:
	defb 000h,001h,0a8h	; ba1a

; ----------------------------------------------------------------------
; DATOS leido_BA1D: 3 bytes que leen p03:BA0B, p03:BA0D, p03:BA0F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p03:BA0B, p03:BA0D, p03:BA0F
;   (3 bytes)
;   0xba1d..0xba20  (3 bytes)
DATA_leido_BA1D:
	defb 0a0h,0ffh,0ach	; ba1d

; ======================================================================
; CODIGO 0xba20..0xba29  (9 bytes)
; ======================================================================


L_BA20:
	call L_BAB7		;ba20
	ld a,(ix+001h)		;ba23
	call 04093h		;ba26   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_BA29: 6 destinos del despachador p00:4093 (call en p03:BA26, el
;   indice en A): BA39, BA5F, BA69, BA82, BA9F, BAB0; lo leen p03:BA26 (12
;   bytes)
;   0xba29..0xba35  (12 bytes)
DATA_tabla_BA29:
	defw 0ba39h,0ba5fh,0ba69h,0ba82h,0ba9fh,0bab0h	; ba29

; ======================================================================
; CODIGO 0xba35..0xbabd  (136 bytes)
; ======================================================================


L_BA35:
	dec (ix+002h)		;ba35
	ret			;ba38
L_BA39:
	ld a,0a0h		;ba39
	ld (ix+030h),a		;ba3b
	ld h,(ix+006h)		;ba3e
	ld a,(ix+004h)		;ba41
	add a,008h		;ba44
	ld l,a			;ba46
	push hl			;ba47
	call 07fbdh		;ba48
	pop hl			;ba4b
	ret c			;ba4c
	ld a,008h		;ba4d
	add a,h			;ba4f
	ld h,a			;ba50
	call 07fbdh		;ba51
	ret c			;ba54
	call 078cdh		;ba55
L_BA58:
	ld (ix+002h),a		;ba58
L_BA5B:
	inc (ix+001h)		;ba5b
	ret			;ba5e
L_BA5F:
	ld a,(ix+025h)		;ba5f
	ld (ix+030h),a		;ba62
	ld a,002h		;ba65
	jr L_BA58		;ba67
L_BA69:
	call L_BA35		;ba69
	ret nz			;ba6c
	res 3,(ix+010h)		;ba6d
	ld (ix+030h),0a4h		;ba71
	ld a,(0e389h)		;ba75
	add a,a			;ba78
	add a,a			;ba79
	add a,060h		;ba7a
	call 07865h		;ba7c
	jp L_BA5B		;ba7f
L_BA82:
	ld de,00808h		;ba82
	ld a,(ix+006h)		;ba85
	add a,d			;ba88
	ld h,a			;ba89
	ld a,(ix+004h)		;ba8a
	add a,e			;ba8d
	ld l,a			;ba8e
	call 07fbdh		;ba8f
	ret nc			;ba92
	call 078c8h		;ba93
	set 3,(ix+010h)		;ba96
	ld a,004h		;ba9a
	jp L_BA58		;ba9c
L_BA9F:
	call L_BA35		;ba9f
	ret nz			;baa2
	set 4,(ix+010h)		;baa3
	ld (ix+030h),0b0h		;baa7
	ld a,004h		;baab
	jp L_BA58		;baad
L_BAB0:
	call L_BA35		;bab0
	ret nz			;bab3
	jp 075d1h		;bab4
L_BAB7:
	ld hl,0babdh		;bab7
	jp L_BACE		;baba

; ----------------------------------------------------------------------
; DATOS leido_BABD: 4 bytes que lee p03:BADA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p03:BADA (4 bytes)
;   0xbabd..0xbac1  (4 bytes)
DATA_leido_BABD:
	defb 00ch,002h,002h,00ch	; babd

; ======================================================================
; CODIGO 0xbac1..0xbadf  (30 bytes)
; ======================================================================


L_BAC1:
	call L_BACB		;bac1
	call 07fb7h		;bac4
	ret nc			;bac7
	jp 075d1h		;bac8
L_BACB:
	ld hl,0badfh		;bacb
L_BACE:
	inc (ix+024h)		;bace
	ld a,(ix+024h)		;bad1
	and 003h		;bad4
	ld e,a			;bad6
	ld d,000h		;bad7
	add hl,de			;bad9
	ld a,(hl)			;bada
	ld (ix+031h),a		;badb
	ret			;bade

; ----------------------------------------------------------------------
; DATOS leido_BADF: 4 bytes que lee p03:BADA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p03:BADA (4 bytes)
;   0xbadf..0xbae3  (4 bytes)
DATA_leido_BADF:
	defb 004h,005h,00eh,00fh	; badf

; ======================================================================
; CODIGO 0xbae3..0xbae8  (5 bytes)
; ======================================================================


L_BAE3:
	ld hl,0bae8h		;bae3
	jr $-24		;bae6

; ----------------------------------------------------------------------
; DATOS leido_BAE8: 4 bytes que lee p03:BADA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p03:BADA (4 bytes)
;   0xbae8..0xbaec  (4 bytes)
DATA_leido_BAE8:
	defb 008h,009h,008h,009h	; bae8

; ======================================================================
; CODIGO 0xbaec..0xbaf1  (5 bytes)
; ======================================================================


L_BAEC:
	ld hl,0baf1h		;baec
	jr $-33		;baef

; ----------------------------------------------------------------------
; DATOS leido_BAF1: 4 bytes que lee p03:BADA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p03:BADA (4 bytes)
;   0xbaf1..0xbaf5  (4 bytes)
DATA_leido_BAF1:
	defb 005h,007h,005h,007h	; baf1

; ======================================================================
; CODIGO 0xbaf5..0xbbec  (247 bytes)
; ======================================================================


L_BAF5:
	ld (ix+012h),08fh		;baf5
	ld (ix+014h),001h		;baf9
	ld (ix+016h),000h		;bafd
	ld a,(ix+004h)		;bb01
	ld (ix+015h),a		;bb04
	ld (ix+008h),008h		;bb07
	ld (ix+007h),000h		;bb0b
	ld (ix+00dh),080h		;bb0f
	ld (ix+00ah),00ah		;bb13
	call L_BB4E		;bb17
	ld (ix+002h),008h		;bb1a
	ret			;bb1e
L_BB1F:
	call L_BC39		;bb1f
	call L_BB2E		;bb22
	call L_BB4E		;bb25
	call L_BB7E		;bb28
	jp L_BBAC		;bb2b
L_BB2E:
	dec (ix+002h)		;bb2e
	ret nz			;bb31
	ld (ix+002h),008h		;bb32
	ld a,(ix+001h)		;bb36
	add a,(ix+014h)		;bb39
	ld (ix+001h),a		;bb3c
	jr z,L_BB48		;bb3f
	cp 00ah		;bb41
	ret c			;bb43
	ld a,0ffh		;bb44
	jr L_BB4A		;bb46
L_BB48:
	ld a,001h		;bb48
L_BB4A:
	ld (ix+014h),a		;bb4a
	ret			;bb4d
L_BB4E:
	ld a,(ix+001h)		;bb4e
	ld hl,0bbech		;bb51
	call 04a6eh		;bb54
	ld (ix+009h),a		;bb57
	ret			;bb5a
L_BB5B:
	call L_BB6E		;bb5b
	call 08281h		;bb5e
	ld de,0ad3fh		;bb61
	call L_BC4C		;bb64
	ld a,(ix+001h)		;bb67
	call 06edah		;bb6a
	ret			;bb6d
L_BB6E:
	ld a,(ix+001h)		;bb6e
	ld hl,0bbf7h		;bb71
	call 04a6eh		;bb74
	add a,(ix+015h)		;bb77
	ld (ix+004h),a		;bb7a
	ret			;bb7d
L_BB7E:
	ld hl,0bc23h		;bb7e
	ld a,(ix+00bh)		;bb81
	or a			;bb84
	jr z,L_BB8A		;bb85
	ld hl,0bc2eh		;bb87
L_BB8A:
	ld a,(ix+001h)		;bb8a
	call 04a6eh		;bb8d
	ld (ix+00dh),a		;bb90
	ld a,(ix+00bh)		;bb93
	or a			;bb96
	call nz,L_BC55		;bb97
	ld b,(ix+001h)		;bb9a
	ld a,(ix+00bh)		;bb9d
	or a			;bba0
	ld a,005h		;bba1
	jr z,L_BBA7		;bba3
	ld a,010h		;bba5
L_BBA7:
	add a,b			;bba7
	ld (ix+00eh),a		;bba8
	ret			;bbab
L_BBAC:
	ld a,(ix+00bh)		;bbac
	or a			;bbaf
	jr z,L_BBBA		;bbb0
	ld a,(ix+006h)		;bbb2
	cp 0a0h		;bbb5
	ret nc			;bbb7
	jr L_BBC0		;bbb8
L_BBBA:
	ld a,(ix+006h)		;bbba
	sub 0f0h		;bbbd
	ret nc			;bbbf
L_BBC0:
	ld a,r		;bbc0
	and 00fh		;bbc2
	ret nz			;bbc4
	ld hl,0bc02h		;bbc5
	ld a,(ix+00bh)		;bbc8
	or a			;bbcb
	jr z,L_BBD1		;bbcc
	ld hl,0bc0dh		;bbce
L_BBD1:
	ld a,(ix+001h)		;bbd1
	call 04a6eh		;bbd4
	add a,(ix+006h)		;bbd7
	ld d,a			;bbda
	ld a,(ix+001h)		;bbdb
	ld hl,0bc18h		;bbde
	call 04a6eh		;bbe1
	add a,(ix+004h)		;bbe4
	ld e,a			;bbe7
	call 0855eh		;bbe8
	ret			;bbeb

; ----------------------------------------------------------------------
; DATOS tabla_BBEC: tabla que se lee desde HL = 0xBBEC con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:BB51 (11 bytes)
;   0xbbec..0xbbf7  (11 bytes)
DATA_tabla_BBEC:
	defb 008h,007h,005h,003h,003h,001h,003h,003h,005h,007h,008h	; bbec  ...........

; ----------------------------------------------------------------------
; DATOS tabla_BBF7: tabla que se lee desde HL = 0xBBF7 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:BB71 (11 bytes)
;   0xbbf7..0xbc02  (11 bytes)
DATA_tabla_BBF7:
	defb 000h,008h,018h,028h,028h,038h,038h,038h,038h,038h,038h	; bbf7  ...((888888

; ----------------------------------------------------------------------
; DATOS leido_BC02: 11 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (11 bytes)
;   0xbc02..0xbc0d  (11 bytes)
DATA_leido_BC02:
	defb 00ch,004h,004h,0fch,0fch,0fch,0fch,0fch,004h,004h,00ch	; bc02  ...........

; ----------------------------------------------------------------------
; DATOS tabla_BC0D: tabla que se lee desde HL = 0xBC0D con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:BBCE (11 bytes)
;   0xbc0d..0xbc18  (11 bytes)
DATA_tabla_BC0D:
	defb 040h,048h,048h,050h,050h,050h,050h,050h,048h,048h,040h	; bc0d  @HHPPPPPHH@

; ----------------------------------------------------------------------
; DATOS tabla_BC18: tabla que se lee desde HL = 0xBC18 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:BBDE (11 bytes)
;   0xbc18..0xbc23  (11 bytes)
DATA_tabla_BC18:
	defb 000h,004h,004h,004h,008h,000h,004h,008h,01ch,02ch,034h	; bc18  .........,4

; ----------------------------------------------------------------------
; DATOS leido_BC23: 11 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (11 bytes)
;   0xbc23..0xbc2e  (11 bytes)
DATA_leido_BC23:
	defb 00ah,00bh,00bh,00ch,00dh,00eh,00ch,00dh,00fh,010h,011h	; bc23  ...........

; ----------------------------------------------------------------------
; DATOS tabla_BC2E: tabla que se lee desde HL = 0xBC2E con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:BB87 (11 bytes)
;   0xbc2e..0xbc39  (11 bytes)
DATA_tabla_BC2E:
	defb 012h,013h,013h,014h,015h,016h,014h,015h,017h,018h,019h	; bc2e  ...........

; ======================================================================
; CODIGO 0xbc39..0xbd5d  (292 bytes)
; ======================================================================


L_BC39:
	ld a,(0e420h)		;bc39
	or a			;bc3c
	ret z			;bc3d
	ld a,(ix+006h)		;bc3e
	sub 008h		;bc41
	ld (ix+006h),a		;bc43
	ret nc			;bc46
	set 6,(ix+012h)		;bc47
	ret			;bc4b
L_BC4C:
	bit 0,(ix+00bh)		;bc4c
	ret z			;bc50
	ld de,0ae50h		;bc51
	ret			;bc54
L_BC55:
	ld a,(ix+016h)		;bc55
	or a			;bc58
	jr nz,L_BC65		;bc59
	set 7,(ix+00dh)		;bc5b
	ld a,(ix+006h)		;bc5f
	cp 0a0h		;bc62
	ret nc			;bc64
L_BC65:
	ld (ix+016h),001h		;bc65
	res 7,(ix+00dh)		;bc69
	ret			;bc6d
L_BC6E:
	ld (ix+009h),004h		;bc6e
	ld (ix+00ah),004h		;bc72
	ld (ix+012h),081h		;bc76
	ld (ix+00dh),080h		;bc7a
	ld (ix+007h),017h		;bc7e
	ld hl,0e381h		;bc82
	bit 1,(hl)		;bc85
	ret z			;bc87
	ld (ix+004h),060h		;bc88
L_BC8C:
	ret			;bc8c
L_BC8D:
	ld (ix+009h),002h		;bc8d
	ld (ix+00ah),002h		;bc91
	ld (ix+012h),083h		;bc95
	ld (ix+00dh),000h		;bc99
	ld (ix+008h),008h		;bc9d
	ld (ix+007h),00ah		;bca1
	ld (ix+00eh),000h		;bca5
	ret			;bca9
L_BCAA:
	ret			;bcaa
L_BCAB:
	ret			;bcab
L_BCAC:
	ld (ix+012h),08fh		;bcac
	ld (ix+00dh),080h		;bcb0
	ld (ix+002h),010h		;bcb4
	ld (ix+008h),008h		;bcb8
	ld a,(ix+004h)		;bcbc
	ld (ix+01fh),a		;bcbf
	ld a,004h		;bcc2
	ld (ix+007h),a		;bcc4
	call L_BD66		;bcc7
	ret			;bcca
L_BCCB:
	call L_BC39		;bccb
	call L_BCD8		;bcce
	call L_BD66		;bcd1
	call L_BD88		;bcd4
	ret			;bcd7
L_BCD8:
	dec (ix+002h)		;bcd8
	ret nz			;bcdb
	ld (ix+002h),010h		;bcdc
	call L_BD14		;bce0
	bit 0,(ix+00bh)		;bce3
	jr z,L_BCED		;bce7
	ld a,004h		;bce9
	sub b			;bceb
	ld b,a			;bcec
L_BCED:
	ld a,(0e606h)		;bced
	ld c,a			;bcf0
	bit 6,(ix+012h)		;bcf1
	jr nz,L_BD01		;bcf5
	ld a,(ix+006h)		;bcf7
	add a,040h		;bcfa
	jr c,L_BD05		;bcfc
	sub c			;bcfe
	jr nc,L_BD05		;bcff
L_BD01:
	ld a,008h		;bd01
	sub b			;bd03
	ld b,a			;bd04
L_BD05:
	ld a,(ix+007h)		;bd05
	sub b			;bd08
	ret z			;bd09
	jr nc,L_BD10		;bd0a
	inc (ix+007h)		;bd0c
	ret			;bd0f
L_BD10:
	dec (ix+007h)		;bd10
	ret			;bd13
L_BD14:
	ld b,004h		;bd14
	ld a,(0e604h)		;bd16
	sub 048h		;bd19
	ret c			;bd1b
	dec b			;bd1c
	sub 010h		;bd1d
	ret c			;bd1f
	dec b			;bd20
	sub 010h		;bd21
	ret c			;bd23
	dec b			;bd24
	sub 010h		;bd25
	ret c			;bd27
	dec b			;bd28
	ret			;bd29
L_BD2A:
	call L_BD43		;bd2a
	call 08281h		;bd2d
	bit 0,(ix+00bh)		;bd30
	ld de,0af5eh		;bd34
	jr z,L_BD3C		;bd37
	ld de,0b070h		;bd39
L_BD3C:
	ld a,(ix+007h)		;bd3c
	call 06edah		;bd3f
	ret			;bd42
L_BD43:
	ld b,000h		;bd43
	bit 0,(ix+00bh)		;bd45
	jr nz,L_BD55		;bd49
	ld e,(ix+007h)		;bd4b
	ld d,000h		;bd4e
	ld hl,0bd5dh		;bd50
	add hl,de			;bd53
	ld b,(hl)			;bd54
L_BD55:
	ld a,(ix+01fh)		;bd55
	add a,b			;bd58
	ld (ix+004h),a		;bd59
	ret			;bd5c

; ----------------------------------------------------------------------
; DATOS tabla_BD5D: tabla que se lee desde HL = 0xBD5D con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:BD50 (3 bytes)
;   0xbd5d..0xbd60  (3 bytes)
DATA_tabla_BD5D:
	defb 040h,030h,020h	; bd5d

; ----------------------------------------------------------------------
; DATOS leido_BD60: 3 bytes que lee p03:BD54 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p03:BD54 (3 bytes)
;   0xbd60..0xbd63  (3 bytes)
DATA_leido_BD60:
	defb 010h,000h,010h	; bd60

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbd63..0xbd66  (3 bytes)
DATA_BD63:
	defb 020h,030h,040h	; bd63

; ======================================================================
; CODIGO 0xbd66..0xbd76  (16 bytes)
; ======================================================================


L_BD66:
	ld a,(ix+007h)		;bd66
	ld hl,0bd76h		;bd69
	call 04a5ah		;bd6c   ; lee_palabra: HL = la palabra A de la tabla HL
	ld (ix+009h),l		;bd6f
	ld (ix+00ah),h		;bd72
	ret			;bd75

; ----------------------------------------------------------------------
; DATOS tabla_BD76: tabla que se lee desde HL = 0xBD76 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:BD69 (18 bytes)
;   0xbd76..0xbd88  (18 bytes)
DATA_tabla_BD76:
	defb 008h,009h,00ah,009h,00ch,009h,00eh,009h,010h,009h,00eh,00bh,00ch,00dh,00ah,00fh	; bd76  ................
	defb 008h,011h	; bd86

; ======================================================================
; CODIGO 0xbd88..0xbdae  (38 bytes)
; ======================================================================


L_BD88:
	bit 6,(ix+012h)		;bd88
	jr nz,L_BD94		;bd8c
	ld a,(ix+006h)		;bd8e
	sub 0b0h		;bd91
	ret nc			;bd93
L_BD94:
	ld a,025h		;bd94
	bit 0,(ix+00bh)		;bd96
	jr nz,L_BDA5		;bd9a
	ld a,(ix+007h)		;bd9c
	ld hl,0bdaeh		;bd9f
	call 04a6eh		;bda2
L_BDA5:
	ld (ix+00dh),a		;bda5
	sub 005h		;bda8
	ld (ix+00eh),a		;bdaa
	ret			;bdad

; ----------------------------------------------------------------------
; DATOS tabla_BDAE: tabla que se lee desde HL = 0xBDAE con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p03:BD9F (3 bytes)
;   0xbdae..0xbdb1  (3 bytes)
DATA_tabla_BDAE:
	defb 020h,021h,022h	; bdae

; ----------------------------------------------------------------------
; DATOS leido_BDB1: 3 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (3 bytes)
;   0xbdb1..0xbdb4  (3 bytes)
DATA_leido_BDB1:
	defb 023h,024h,023h	; bdb1

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbdb4..0xbdb7  (3 bytes)
DATA_BDB4:
	defb 022h,021h,020h	; bdb4

; ======================================================================
; CODIGO 0xbdb7..0xbdd4  (29 bytes)
; ======================================================================


L_BDB7:
	bit 1,(ix+00bh)		;bdb7
	ret z			;bdbb
	ld hl,(0e363h)		;bdbc   ; lee la posicion del scroll (16 bits)
	ld de,0fea7h		;bdbf
	add hl,de			;bdc2
	ld a,l			;bdc3
	add a,a			;bdc4
	add a,a			;bdc5
	add a,a			;bdc6
	neg		;bdc7
	ld d,a			;bdc9
	ld e,090h		;bdca
	ld c,000h		;bdcc
	ld a,020h		;bdce
	call 07626h		;bdd0
	ret			;bdd3

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbdd4..0xbde1  (13 bytes)
DATA_BDD4:
	defb 0ddh,036h,010h,009h,0ddh,036h,013h,002h,0ddh,036h,014h,002h,0c9h	; bdd4  .6...6...6...

; ======================================================================
; CODIGO 0xbde1..0xbdef  (14 bytes)
; ======================================================================


L_BDE1:
	ret			;bde1
L_BDE2:
	call 04aa9h		;bde2   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call 054c3h		;bde5   ; carga_fuente: carga la fuente en los tres tercios (bancos 20-22)
	ld de,0bdefh		;bde8
	call 04b04h		;bdeb   ; escribe_texto: escribe en la VRAM el texto de DE (direccion y letras)
	ret			;bdee

; ----------------------------------------------------------------------
; DATOS texto_BDEF: texto a la VRAM: direccion, letras ('A' = 0x12), 0xFE y
;   otra direccion, 0xFF acaba (p00:4B04); lo leen p03:BDEB (45 bytes)
;   0xbdef..0xbe1c  (45 bytes)
DATA_texto_BDEF:
	defb 06eh,038h,019h,01ah,01fh,025h,0feh,00ch,039h,02ch,00eh,029h,00eh,012h,00eh,015h	; bdef  n8...%..9,.)....
	defb 02dh,0feh,04dh,039h,02ch,00eh,020h,020h,00eh,02dh,0feh,08dh,039h,02ch,00eh,012h	; bdff  -.M9,.  .-..9,..
	defb 00eh,015h,02dh,0feh,0cdh,039h,02ch,00eh,01ah,00eh,015h,02dh,0ffh	; be0f  ..-..9,....-.

; ----------------------------------------------------------------------
; DATOS leido_BE1C: 97 bytes que leen p01:6649, p01:6655, p01:6665, p01:6670
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido, con 42 sin leer
;   entre lecturas de la misma rutina: entradas de la misma tabla que las
;   partidas no han pedido); lo leen p01:6649, p01:6655, p01:6665, p01:6670
;   (97 bytes)
;   0xbe1c..0xbe7d  (97 bytes)
DATA_leido_BE1C:
	defb 014h,00ch,00ch,00ch,014h,02ch,00ch,00ch,008h,00ch,00ch,00ch,008h,02ch,00ch,00ch	; be1c  .....,.......,..
	defb 000h,00ch,00ch,00ch,000h,02ch,00ch,00ch,008h,00ch,00ch,00ch,008h,024h,00ch,00ch	; be2c  .....,.......$..
	defb 010h,000h,010h,010h,000h,010h,008h,008h,005h,008h,008h,008h,003h,000h,008h,008h	; be3c  ................
	defb 00dh,000h,008h,008h,000h,000h,008h,008h,01bh,008h,008h,008h,02bh,008h,008h,008h	; be4c  ............+...
	defb 038h,010h,008h,008h,000h,038h,008h,008h,005h,040h,008h,008h,003h,048h,008h,008h	; be5c  8....8...@...H..
	defb 00dh,048h,008h,008h,000h,048h,008h,008h,01bh,040h,008h,008h,02bh,040h,008h,008h	; be6c  .H...H...@..+@..
	defb 038h	; be7c

; ----------------------------------------------------------------------
; DATOS resto_BE7D: lo apuntan con el banco puesto p01:7D08 (0xBE94); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:7D08 (39 bytes)
;   0xbe7d..0xbea4  (39 bytes)
DATA_resto_BE7D:
	defb 038h,008h,008h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; be7d  8...............
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,030h,040h,008h,008h,040h	; be8d  ...........0@..@
	defb 040h,008h,008h,050h,040h,008h,008h	; be9d

; ----------------------------------------------------------------------
; DATOS leido_BEA4: 25 bytes que leen p01:6649, p01:6655 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 15 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p01:6649, p01:6655 (25 bytes)
;   0xbea4..0xbebd  (25 bytes)
DATA_leido_BEA4:
	defb 060h,040h,008h,008h,070h,040h,008h,008h,008h,040h,008h,008h,020h,008h,008h,010h	; bea4  `@..p@...@.. ...
	defb 000h,008h,008h,010h,000h,018h,008h,010h,018h	; beb4  .........

; ----------------------------------------------------------------------
; DATOS resto_BEBD: lo apuntan con el banco puesto p01:7805 (0xBEBE); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:7805 (11 bytes)
;   0xbebd..0xbec8  (11 bytes)
DATA_resto_BEBD:
	defb 018h,008h,010h,018h,000h,008h,008h,000h,008h,008h,020h	; bebd  ..........

; ----------------------------------------------------------------------
; DATOS tabla_BEC8: tabla que se lee desde HL = 0xBEC8 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:6704 (66 bytes)
;   0xbec8..0xbf0a  (66 bytes)
DATA_tabla_BEC8:
	defb 000h,000h,0f0h,010h,010h,010h,000h,008h,010h,0f0h,000h,020h,000h,018h,000h,010h	; bec8  ........... ....
	defb 000h,008h,008h,000h,000h,000h,008h,000h,010h,008h,020h,010h,028h,018h,030h,020h	; bed8  .......... .(.0
	defb 000h,038h,000h,040h,000h,040h,000h,048h,008h,048h,000h,048h,000h,048h,008h,048h	; bee8  .8.@.@.H.H.H.H.H
	defb 018h,040h,028h,040h,030h,038h,020h,030h,030h,030h,040h,030h,050h,030h,060h,030h	; bef8  .@(@08 000@0P0`0
	defb 000h,030h	; bf08

; ----------------------------------------------------------------------
; DATOS relleno_ff: 246 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (246 bytes)
;   0xbf0a..0xc000  (246 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf0a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf1a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf2a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf3a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf4a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf5a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf6a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf7a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9a  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfaa  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfba  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfca  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfda  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfea  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bffa

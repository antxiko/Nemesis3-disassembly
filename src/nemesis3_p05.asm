; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 05 (se ejecuta en 0xa000)
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
la6beh:	equ 0x0a6be
lbc07h:	equ 0x0bc07
lbeb8h:	equ 0x0beb8

; ----------------------------------------------------------------------
; DATOS partida_A000: los 2 ultimos bytes de la instruccion de p04:9FFF (11 30
;   00), que empieza en el banco 4; lo leen p04:9FFF (2 bytes)
;   0xa000..0xa002  (2 bytes)
DATA_partida_A000:
	defb 030h,000h	; a000

; ======================================================================
; CODIGO 0xa002..0xa0f6  (244 bytes)
; ======================================================================


L_A002:
	rst 20h			;a002
	jr z,$-94		;a003
L_A005:
	ld (ix+003h),l		;a005
	ld (ix+004h),h		;a008
	or a			;a00b
	ret			;a00c
L_A00D:
	ld a,(0e7e0h)		;a00d
	or a			;a010
	jr z,L_A02B		;a011
	ld hl,00100h		;a013
	ld (0e443h),hl		;a016
	ld a,(ix+000h)		;a019
	cp 00bh		;a01c
	jr nz,L_A028		;a01e
	xor a			;a020
	ld (0ec20h),a		;a021
	dec a			;a024
	ld (0ec09h),a		;a025
L_A028:
	jp 09dc1h		;a028
L_A02B:
	call 09dc1h		;a02b
	jp 09dc1h		;a02e
L_A031:
	call L_A0E6		;a031
	ret nz			;a034
	xor a			;a035
	ld (0e7e0h),a		;a036
	ld hl,00001h		;a039
	ld (0e443h),hl		;a03c
	jp 09dc1h		;a03f
L_A042:
	call L_A0E6		;a042
	ret nz			;a045
	ld a,001h		;a046
	ld (0e44fh),a		;a048
	ld c,000h		;a04b
	push ix		;a04d
	call 04869h		;a04f
	pop ix		;a052
	xor a			;a054
	ld (ix+020h),a		;a055
	ld (ix+040h),a		;a058
	dec a			;a05b
	ld (ix+007h),a		;a05c
	ld (ix+008h),a		;a05f
	ld (ix+009h),a		;a062
	xor a			;a065
	ld (0e462h),a		;a066
	ld (0e465h),a		;a069
	ld hl,0e800h		;a06c
	ld de,0e801h		;a06f
	ld (hl),a			;a072
	ld bc,002ffh		;a073
	ldir		;a076
	ld hl,0ed00h		;a078
	ld de,0ed01h		;a07b
	ld (hl),a			;a07e
	ld bc,000ffh		;a07f
	ldir		;a082
	jp 09dc1h		;a084
L_A087:
	push ix		;a087
	ld a,008h		;a089
	add a,(ix+003h)		;a08b
	ld e,a			;a08e
	ld d,(ix+005h)		;a08f
	call 0482ah		;a092
	pop ix		;a095
	xor a			;a097
	ld (0e7e0h),a		;a098
	ld a,0ffh		;a09b
	ld (0e405h),a		;a09d
	call L_A0A6		;a0a0
	jp 09dc1h		;a0a3
L_A0A6:
	ld a,(0e600h)		;a0a6
	inc a			;a0a9
	ret z			;a0aa
	jp 05888h		;a0ab
L_A0AE:
	ld a,(0e4b2h)		;a0ae
	or a			;a0b1
	ret nz			;a0b2
	ld hl,0002ch		;a0b3
	ld a,(0e361h)		;a0b6
	cp 004h		;a0b9
	jr nz,L_A0C7		;a0bb
	ld a,(0e37ch)		;a0bd
	cp 003h		;a0c0
	jr z,L_A0C7		;a0c2
	ld hl,00008h		;a0c4
L_A0C7:
	ld (0e443h),hl		;a0c7
	jp 09dc1h		;a0ca
L_A0CD:
	call L_A0E6		;a0cd
	ret nz			;a0d0
L_A0D1:
	call 05669h		;a0d1
L_A0D4:
	xor a			;a0d4
	ld (0e440h),a		;a0d5
	ld (0ec00h),a		;a0d8
	ld (0e44fh),a		;a0db
	inc a			;a0de
	ld (0e442h),a		;a0df
	ld (0e454h),a		;a0e2
	ret			;a0e5
L_A0E6:
	ld hl,(0e443h)		;a0e6
	dec hl			;a0e9
	ld (0e443h),hl		;a0ea
	ld a,l			;a0ed
	or h			;a0ee
	ret			;a0ef
L_A0F0:
	ld a,(0e441h)		;a0f0
	call 04093h		;a0f3

; ----------------------------------------------------------------------
; DATOS tabla_A0F6: 9 destinos del despachador p00:4093 (call en p05:A0F3, el
;   indice en A): A108, A137, A14F, A00D, A031, A042, A087, A0AE, A0CD; lo
;   leen p05:A0F3 (18 bytes)
;   0xa0f6..0xa108  (18 bytes)
DATA_tabla_A0F6:
	defw 0a108h,0a137h,0a14fh,0a00dh,0a031h,0a042h,0a087h,0a0aeh	; a0f6
	defw 0a0cdh	; a106  -> L_A0CD

; ======================================================================
; CODIGO 0xa108..0xa12d  (37 bytes)
; ======================================================================


L_A108:
	call 09e0bh		;a108
	ret nz			;a10b
	ld hl,0a12dh		;a10c
	ld a,01bh		;a10f
	call 09dc6h		;a111
	call L_A158		;a114
	ld (ix+013h),038h		;a117
	ld (ix+014h),008h		;a11b
	call 057eeh		;a11f
	call 0594dh		;a122
	call 057f6h		;a125
L_A128:
	ld hl,0e441h		;a128
	inc (hl)			;a12b
	ret			;a12c

; ----------------------------------------------------------------------
; DATOS resto_A12D: lo apuntan con el banco puesto p05:A10C (0xA12D); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p05:A10C (10 bytes)
;   0xa12d..0xa137  (10 bytes)
DATA_resto_A12D:
	defb 003h,000h,008h,020h,000h,0f8h,000h,012h,009h,0ffh	; a12d  ... ......

; ======================================================================
; CODIGO 0xa137..0xa1fc  (197 bytes)
; ======================================================================


L_A137:
	ld c,078h		;a137
	call 09e40h		;a139
	jr c,L_A141		;a13c
	jp L_A158		;a13e
L_A141:
	xor a			;a141
	ld (0e454h),a		;a142
	ld (ix+002h),001h		;a145
	ld (ix+018h),001h		;a149
	jr $-37		;a14d
L_A14F:
	call L_A166		;a14f
	call L_A158		;a152
	jp 09e32h		;a155
L_A158:
	ld a,038h		;a158
	ld bc,01818h		;a15a
	call 09e67h		;a15d
	ld bc,00409h		;a160
	jp 09e96h		;a163
L_A166:
	call L_A17F		;a166
L_A169:
	ld a,(0e445h)		;a169
	or a			;a16c
	ret nz			;a16d
	ld a,(ix+001h)		;a16e
	dec a			;a171
	jr z,L_A1AB		;a172
	dec (ix+002h)		;a174
	ret nz			;a177
	call L_A1DB		;a178
	inc (ix+001h)		;a17b
	ret			;a17e
L_A17F:
	ld a,(0e445h)		;a17f
	or a			;a182
	ret nz			;a183
	dec (ix+018h)		;a184
	ret nz			;a187
	ld (ix+018h),028h		;a188
	ld hl,(0ec03h)		;a18c
	ld de,00030h		;a18f
	add hl,de			;a192
	ld a,h			;a193
	and a			;a194
	ret nz			;a195
	ld a,l			;a196
	cp 0b0h		;a197
	ret nc			;a199
	ld e,a			;a19a
	ld a,(ix+005h)		;a19b
	sub 008h		;a19e
	ld d,a			;a1a0
	ld c,000h		;a1a1
	ld a,038h		;a1a3
	call 0764fh		;a1a5
	jp 058d9h		;a1a8
L_A1AB:
	call 09f11h		;a1ab
	jr c,L_A1B7		;a1ae
	call L_A1C3		;a1b0
	jp c,09f9ch		;a1b3
	ret			;a1b6
L_A1B7:
	ld (ix+002h),010h		;a1b7
	dec (ix+001h)		;a1bb
	ld (ix+016h),000h		;a1be
	ret			;a1c2
L_A1C3:
	ld hl,(0ec03h)		;a1c3
	bit 0,(ix+015h)		;a1c6
	jr nz,L_A1D4		;a1ca
	ld a,h			;a1cc
	and a			;a1cd
	ret m			;a1ce
	ld a,l			;a1cf
	cp 060h		;a1d0
	ccf			;a1d2
	ret			;a1d3
L_A1D4:
	ld a,h			;a1d4
	and a			;a1d5
	ret z			;a1d6
	ld a,l			;a1d7
	cp 0d8h		;a1d8
	ret			;a1da
L_A1DB:
	ld a,(ix+004h)		;a1db
	and a			;a1de
	jr z,L_A1EA		;a1df
	ld a,002h		;a1e1
	jp m,09edfh		;a1e3
	dec a			;a1e6
	jp 09edfh		;a1e7
L_A1EA:
	ld a,(ix+003h)		;a1ea
	add a,020h		;a1ed
	ld hl,0e604h		;a1ef
	cp (hl)			;a1f2
	ld a,002h		;a1f3
	jp c,09edfh		;a1f5
	dec a			;a1f8
	jp 09edfh		;a1f9

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa1fc..0xa24a  (78 bytes)
DATA_A1FC:
	defb 0afh,0ddh,036h,013h,004h,0ddh,036h,014h,001h,0ddh,036h,010h,010h,0ddh,036h,032h	; a1fc  ..6...6...6...62
	defb 018h,0c9h,03ah,045h,0e4h,0a7h,0c2h,0d1h,075h,02ah,003h,0ech,011h,030h,000h,019h	; a20c  ..:E....u*...0..
	defb 0ddh,075h,004h,0ddh,07eh,001h,03dh,028h,01eh,0ddh,07eh,00fh,0c6h,008h,0ddh,077h	; a21c  .u..~.=(..~....w
	defb 00fh,0ddh,034h,014h,0ddh,07eh,006h,0d6h,008h,0e6h,0f8h,0ddh,077h,006h,0c0h,0ddh	; a22c  ..4..~......w...
	defb 036h,002h,010h,0ddh,034h,001h,0c9h,0ddh,035h,002h,0c0h,0c3h,0d1h,075h	; a23c  6...4...5....u

; ======================================================================
; CODIGO 0xa24a..0xa29e  (84 bytes)
; ======================================================================


L_A24A:
	ld l,(ix+004h)		;a24a
	ld h,(ix+006h)		;a24d
	call 04a46h		;a250
	ex de,hl			;a253
	ld hl,0a29eh		;a254
	ld a,(ix+014h)		;a257
	sub 00fh		;a25a
	neg		;a25c
	call 04089h		;a25e
	exx			;a261
	ld b,(ix+013h)		;a262
L_A265:
	exx			;a265
	push hl			;a266
	push de			;a267
	ld c,(ix+014h)		;a268
	ld b,000h		;a26b
	ldir		;a26d
	pop de			;a26f
	ld a,040h		;a270
	call 0408eh		;a272
	pop hl			;a275
	ld a,00fh		;a276
	call 04089h		;a278
	exx			;a27b
	djnz L_A265		;a27c
	ret			;a27e
L_A27F:
	ld l,(ix+004h)		;a27f
	ld h,(ix+006h)		;a282
	call 04a46h		;a285
	ld c,(ix+013h)		;a288
L_A28B:
	push hl			;a28b
	ld b,(ix+014h)		;a28c
L_A28F:
	ld (hl),000h		;a28f
	inc hl			;a291
	djnz L_A28F		;a292
	pop hl			;a294
	ld a,040h		;a295
	call 04089h		;a297
	dec c			;a29a
	jr nz,L_A28B		;a29b
	ret			;a29d

; ----------------------------------------------------------------------
; DATOS tabla_A29E: tabla que se lee desde HL = 0xA29E con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:A254 (60 bytes)
;   0xa29e..0xa2da  (60 bytes)
DATA_tabla_A29E:
	defb 083h,083h,083h,083h,083h,083h,083h,083h,083h,083h,083h,07fh,080h,081h,082h,08eh	; a29e  ................
	defb 08eh,08eh,08eh,08eh,08eh,08eh,08eh,08eh,08eh,08eh,07bh,07ch,07dh,07eh,084h,084h	; a2ae  ..........{|}~..
	defb 084h,084h,084h,084h,084h,084h,084h,084h,084h,085h,086h,087h,088h,08dh,08dh,08dh	; a2be  ................
	defb 08dh,08dh,08dh,08dh,08dh,08dh,08dh,08dh,089h,08ah,08bh,08ch	; a2ce  ............

; ======================================================================
; CODIGO 0xa2da..0xa2e0  (6 bytes)
; ======================================================================


L_A2DA:
	ld a,(0e441h)		;a2da
	call 04093h		;a2dd

; ----------------------------------------------------------------------
; DATOS tabla_A2E0: 10 destinos del despachador p00:4093 (call en p05:A2DD, el
;   indice en A): A2F4, A321, A332, A341, A00D, A031, A042, A087, A0AE, A0CD;
;   lo leen p05:A2DD (20 bytes)
;   0xa2e0..0xa2f4  (20 bytes)
DATA_tabla_A2E0:
	defw 0a2f4h,0a321h,0a332h,0a341h,0a00dh,0a031h,0a042h,0a087h	; a2e0
	defw 0a0aeh,0a0cdh	; a2f0  -> L_A0AE L_A0CD

; ======================================================================
; CODIGO 0xa2f4..0xa317  (35 bytes)
; ======================================================================


L_A2F4:
	call 09e0bh		;a2f4
	ret nz			;a2f7
	ld a,01ah		;a2f8
	ld hl,0a317h		;a2fa
	call 09dc6h		;a2fd
	call L_A34A		;a300
	ld (ix+013h),038h		;a303
	ld (ix+014h),008h		;a307
	call 057eeh		;a30b
	call 0594dh		;a30e
	call 057f6h		;a311
	jp 09dc1h		;a314

; ----------------------------------------------------------------------
; DATOS resto_A317: lo apuntan con el banco puesto p05:A2FA (0xA317); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p05:A2FA (10 bytes)
;   0xa317..0xa321  (10 bytes)
DATA_resto_A317:
	defb 003h,000h,008h,020h,000h,0f8h,000h,013h,000h,0ffh	; a317  ... ......

; ======================================================================
; CODIGO 0xa321..0xa3e6  (197 bytes)
; ======================================================================


L_A321:
	ld c,088h		;a321
	call 09e40h		;a323
	jr c,L_A32B		;a326
	jp L_A34A		;a328
L_A32B:
	xor a			;a32b
	ld (0e454h),a		;a32c
	jp 09dc1h		;a32f
L_A332:
	ld hl,00001h		;a332
	ld (0ec18h),hl		;a335
	ld (ix+002h),l		;a338
	ld (ix+01ch),l		;a33b
	jp 09dc1h		;a33e
L_A341:
	call L_A358		;a341
	call L_A34A		;a344
	jp 09e32h		;a347
L_A34A:
	ld a,038h		;a34a
	ld bc,01820h		;a34c
	call 09e67h		;a34f
	ld bc,00300h		;a352
	jp 09e96h		;a355
L_A358:
	ld a,(0e445h)		;a358
	or a			;a35b
	ret nz			;a35c
	ld a,(ix+001h)		;a35d
	dec a			;a360
	jr z,L_A36E		;a361
	dec (ix+002h)		;a363
	jr nz,L_A37A		;a366
	inc (ix+001h)		;a368
	jp 09ea6h		;a36b
L_A36E:
	call 09f11h		;a36e
	jr nc,L_A37A		;a371
	ld hl,01000h		;a373
	ld (0ec01h),hl		;a376
	ret			;a379
L_A37A:
	ld a,(ix+019h)		;a37a
	or a			;a37d
	jr nz,L_A394		;a37e
	dec (ix+018h)		;a380
	ret nz			;a383
	ld hl,00618h		;a384
	ld a,(0e36ah)		;a387
	rra			;a38a
	jr nc,L_A390		;a38b
	ld hl,00c0ch		;a38d
L_A390:
	ld (0ec18h),hl		;a390
	ret			;a393
L_A394:
	dec (ix+018h)		;a394
	ret nz			;a397
	ld a,(0e361h)		;a398
	cp 002h		;a39b
	ld b,018h		;a39d
	jr z,L_A3A3		;a39f
	ld b,00ch		;a3a1
L_A3A3:
	ld (ix+018h),b		;a3a3
	dec (ix+019h)		;a3a6
	jr nz,L_A3AF		;a3a9
	ld (ix+018h),03ch		;a3ab
L_A3AF:
	ld b,004h		;a3af
L_A3B1:
	push bc			;a3b1
	ld a,b			;a3b2
	ld hl,0a3e4h		;a3b3
	call 04a5ah		;a3b6
	ld a,(0ec03h)		;a3b9
	add a,l			;a3bc
	cp 0b0h		;a3bd
	jr nc,L_A3E0		;a3bf
	ld e,a			;a3c1
	ld a,(0ec05h)		;a3c2
	add a,h			;a3c5
	ld d,a			;a3c6
	ld c,b			;a3c7
	ld b,00ch		;a3c8
	ld a,(0e361h)		;a3ca
	cp 002h		;a3cd
	jr z,L_A3D3		;a3cf
	ld b,006h		;a3d1
L_A3D3:
	ld a,(0e36ah)		;a3d3
	rra			;a3d6
	ld a,039h		;a3d7
	jr nc,L_A3DD		;a3d9
	ld a,03bh		;a3db
L_A3DD:
	call 0764fh		;a3dd
L_A3E0:
	pop bc			;a3e0
	djnz L_A3B1		;a3e1
	jp 058d5h		;a3e3

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa3e6..0xa3ee  (8 bytes)
DATA_A3E6:
	defb 010h,018h,02eh,018h,050h,018h,06eh,018h	; a3e6  ....P.n.

; ======================================================================
; CODIGO 0xa3ee..0xa3f4  (6 bytes)
; ======================================================================


L_A3EE:
	ld a,(0e441h)		;a3ee
	call 04093h		;a3f1

; ----------------------------------------------------------------------
; DATOS tabla_A3F4: 9 destinos del despachador p00:4093 (call en p05:A3F1, el
;   indice en A): A406, A446, A45F, A00D, A031, A042, A087, A0AE, A0CD; lo
;   leen p05:A3F1 (18 bytes)
;   0xa3f4..0xa406  (18 bytes)
DATA_tabla_A3F4:
	defw 0a406h,0a446h,0a45fh,0a00dh,0a031h,0a042h,0a087h,0a0aeh	; a3f4
	defw 0a0cdh	; a404  -> L_A0CD

; ======================================================================
; CODIGO 0xa406..0xa43c  (54 bytes)
; ======================================================================


L_A406:
	call 09e0bh		;a406
	ret nz			;a409
	ld hl,0a43ch		;a40a
	ld a,029h		;a40d
	call 09dc6h		;a40f
	call L_A46B		;a412
	ld a,00ah		;a415
	ld (0e452h),a		;a417
	xor a			;a41a
	ld (0ec16h),a		;a41b
	ld (ix+013h),018h		;a41e
	ld (ix+014h),000h		;a422
	ld a,r		;a426
	ld (ix+021h),a		;a428
	ld a,001h		;a42b
	ld (0e454h),a		;a42d
	call 057eeh		;a430
	call 0594dh		;a433
	call 057fah		;a436
	jp 09dc1h		;a439

; ----------------------------------------------------------------------
; DATOS resto_A43C: lo apuntan con el banco puesto p05:A40A (0xA43C); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p05:A40A (10 bytes)
;   0xa43c..0xa446  (10 bytes)
DATA_resto_A43C:
	defb 004h,000h,004h,050h,000h,0f8h,000h,016h,04fh,01fh	; a43c  ...P....O.

; ======================================================================
; CODIGO 0xa446..0xa4ad  (103 bytes)
; ======================================================================


L_A446:
	ld c,0a0h		;a446
	call 09e40h		;a448
	call c,L_A451		;a44b
	jp L_A46B		;a44e
L_A451:
	xor a			;a451
	ld (0e454h),a		;a452
	inc a			;a455
	ld (ix+002h),a		;a456
	ld (ix+018h),a		;a459
	jp 09dc1h		;a45c
L_A45F:
	call L_A169		;a45f
	call L_A479		;a462
	call L_A46B		;a465
	jp 09e32h		;a468
L_A46B:
	ld a,018h		;a46b
	ld bc,00820h		;a46d
	call 09e67h		;a470
	ld bc,0064fh		;a473
	jp 09e96h		;a476
L_A479:
	dec (ix+021h)		;a479
	ret nz			;a47c
	ld a,(0e389h)		;a47d
	add a,a			;a480
	neg		;a481
	add a,028h		;a483
	ld (ix+021h),a		;a485
	ld a,(ix+005h)		;a488
	sub 010h		;a48b
	ld d,a			;a48d
	ld a,(ix+003h)		;a48e
	add a,008h		;a491
	ld e,a			;a493
	ld bc,00000h		;a494
	ld a,03ch		;a497
	push de			;a499
	call 0764fh		;a49a
	pop de			;a49d
	ld a,e			;a49e
	add a,020h		;a49f
	ld e,a			;a4a1
	ld bc,00100h		;a4a2
	ld a,03ch		;a4a5
	call 0764fh		;a4a7
	jp 058d1h		;a4aa

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa4ad..0xa4f8  (75 bytes)
DATA_A4AD:
	defb 0cdh,0cfh,0a4h,0cdh,07dh,04ah,011h,000h,000h,0ebh,0cdh,0d7h,078h,0ddh,036h,013h	; a4ad  ....}J......x.6.
	defb 002h,0ddh,036h,014h,004h,0ddh,036h,010h,004h,0ddh,07eh,01fh,0c6h,00bh,0ddh,077h	; a4bd  ..6...6...~....w
	defb 032h,0c9h,03ah,089h,0e3h,06fh,026h,000h,029h,029h,029h,029h,029h,011h,000h,007h	; a4cd  2.:..o&.)))))...
	defb 019h,011h,000h,009h,0e7h,0d8h,021h,0ffh,006h,0c9h,0cdh,0c1h,078h,0ddh,06eh,005h	; a4dd  ......!.....x.n.
	defb 0ddh,066h,006h,019h,07ch,0feh,0f0h,0d8h,0c3h,0d1h,075h	; a4ed  .f..|.....u

; ======================================================================
; CODIGO 0xa4f8..0xa505  (13 bytes)
; ======================================================================


L_A4F8:
	call L_A68B		;a4f8
	ld ix,0ec00h		;a4fb
	ld a,(0e441h)		;a4ff
	call 04093h		;a502

; ----------------------------------------------------------------------
; DATOS tabla_A505: 14 destinos del despachador p00:4093 (call en p05:A502, el
;   indice en A): A521, A559, A568, A599, A5BC, A599, A5D1, A5D1, A5D1, A5F1,
;   A042, A087, A0AE, A0CD; lo leen p05:A502 (28 bytes)
;   0xa505..0xa521  (28 bytes)
DATA_tabla_A505:
	defw 0a521h,0a559h,0a568h,0a599h,0a5bch,0a599h,0a5d1h,0a5d1h	; a505
	defw 0a5d1h,0a5f1h,0a042h,0a087h,0a0aeh,0a0cdh	; a515

; ======================================================================
; CODIGO 0xa521..0xa533  (18 bytes)
; ======================================================================


L_A521:
	call 09e0bh		;a521
	ret nz			;a524
	ld a,010h		;a525
	ld hl,0a533h		;a527
	call 09dc6h		;a52a
	call L_A53D		;a52d
	jp 09dc1h		;a530

; ----------------------------------------------------------------------
; DATOS leido_A533: 10 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (10 bytes)
;   0xa533..0xa53d  (10 bytes)
DATA_leido_A533:
	defb 006h,000h,008h,050h,000h,0f8h,000h,018h,0ffh,017h	; a533  ...P......

; ======================================================================
; CODIGO 0xa53d..0xa591  (84 bytes)
; ======================================================================


L_A53D:
	ld (ix+013h),008h		;a53d
	ld (ix+014h),000h		;a541
	ld (ix+01ch),0ffh		;a545
	ld (ix+01dh),000h		;a549
	ld (ix+01eh),004h		;a54d
	ld (ix+01fh),004h		;a551
	call L_A63D		;a555
	ret			;a558
L_A559:
	ld c,048h		;a559
	call 09e40h		;a55b
	call z,09dc1h		;a55e
	call L_A602		;a561
	call L_A63D		;a564
	ret			;a567
L_A568:
	ld a,(ix+01dh)		;a568
	and 003h		;a56b
	inc (ix+01dh)		;a56d
	ld hl,0a591h		;a570
	call 04a5ah		;a573
	ld (ix+003h),l		;a576
	ld (ix+005h),h		;a579
	call L_A602		;a57c
	call L_A63D		;a57f
	xor a			;a582
	ld (0e454h),a		;a583
	ld (ix+002h),018h		;a586
	ld (ix+01fh),002h		;a58a
	jp 09dc1h		;a58e

; ----------------------------------------------------------------------
; DATOS tabla_A591: tabla que se lee desde HL = 0xA591 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:A570 (8 bytes)
;   0xa591..0xa599  (8 bytes)
DATA_tabla_A591:
	defb 010h,068h,058h,088h,028h,098h,068h,050h	; a591  .hX.(.hP

; ======================================================================
; CODIGO 0xa599..0xa6c2  (297 bytes)
; ======================================================================


L_A599:
	call L_A602		;a599
	dec (ix+002h)		;a59c
	ret nz			;a59f
	ld (ix+002h),010h		;a5a0
	ld (ix+01fh),004h		;a5a4
	call 09dc1h		;a5a8
	ld a,(0e441h)		;a5ab
	sub 006h		;a5ae
	ret nz			;a5b0
	ld a,(0ec05h)		;a5b1
	add a,020h		;a5b4
	ld (0ec05h),a		;a5b6
	jp L_A63D		;a5b9
L_A5BC:
	call L_A602		;a5bc
	dec (ix+002h)		;a5bf
	ret nz			;a5c2
	ld (ix+002h),018h		;a5c3
	ld (ix+01fh),002h		;a5c7
	call L_A658		;a5cb
	jp 09dc1h		;a5ce
L_A5D1:
	call L_A602		;a5d1
	dec (ix+002h)		;a5d4
	ld a,(ix+002h)		;a5d7
	jr z,L_A5EA		;a5da
	sub 004h		;a5dc
	push af			;a5de
	call z,L_A675		;a5df
	pop af			;a5e2
	ccf			;a5e3
	ret c			;a5e4
	ld (ix+008h),01ah		;a5e5
	ret			;a5e9
L_A5EA:
	ld (ix+002h),00ch		;a5ea
	jp 09dc1h		;a5ee
L_A5F1:
	ld (ix+01fh),004h		;a5f1
	call L_A602		;a5f5
	dec (ix+002h)		;a5f8
	ret nz			;a5fb
	ld a,002h		;a5fc
	ld (0e441h),a		;a5fe
	ret			;a601
L_A602:
	call L_A629		;a602
	ld (ix+008h),c		;a605
	dec (ix+01eh)		;a608
	ret nz			;a60b
	ld a,(0ec1fh)		;a60c
	ld (0ec1eh),a		;a60f
	ld a,(0ec07h)		;a612
	sub 018h		;a615
	ld de,01817h		;a617
	jr nz,L_A622		;a61a
	ld de,019ffh		;a61c
	call 05909h		;a61f
L_A622:
	ld (ix+007h),d		;a622
	ld (ix+009h),e		;a625
	ret			;a628
L_A629:
	ld a,(0ec12h)		;a629
	sub 004h		;a62c
	ld c,0ffh		;a62e
	jr nc,L_A634		;a630
	ld c,01bh		;a632
L_A634:
	ld a,(0e303h)		;a634
	and 001h		;a637
	ret z			;a639
	ld c,0ffh		;a63a
	ret			;a63c
L_A63D:
	ld hl,(0ec03h)		;a63d
	ld (0ec0ah),hl		;a640
	ld de,0ffc8h		;a643
	add hl,de			;a646
	ld (0ec0eh),hl		;a647
	ld hl,(0ec05h)		;a64a
	ld (0ec0ch),hl		;a64d
	ld de,00018h		;a650
	add hl,de			;a653
	ld (0ec10h),hl		;a654
	ret			;a657
L_A658:
	ld a,(ix+005h)		;a658
	add a,020h		;a65b
	ld d,a			;a65d
	ld a,(ix+003h)		;a65e
	add a,030h		;a661
	ld e,a			;a663
	ld a,011h		;a664
	ld bc,00700h		;a666
L_A669:
	push bc			;a669
	push de			;a66a
	push af			;a66b
	call 07647h		;a66c
	pop af			;a66f
	pop de			;a670
	pop bc			;a671
	djnz L_A669		;a672
	ret			;a674
L_A675:
	call 05894h		;a675
	ld a,(ix+005h)		;a678
	sub 00ch		;a67b
	ld d,a			;a67d
	ld a,(ix+003h)		;a67e
	add a,008h		;a681
	ld e,a			;a683
	ld a,004h		;a684
	ld bc,00300h		;a686
	jr L_A669		;a689
L_A68B:
	ld c,00ah		;a68b
L_A68D:
	ld hl,0e441h		;a68d
	ld a,(hl)			;a690
	sub c			;a691
	ret nc			;a692
	ld a,(0e445h)		;a693
	or a			;a696
	ret z			;a697
	ld (hl),c			;a698
	ld hl,00030h		;a699
	ld (0e443h),hl		;a69c
	ret			;a69f
L_A6A0:
	ld (ix+010h),005h		;a6a0
	ld b,0a8h		;a6a4
	call L_A706		;a6a6
	ld a,(ix+01fh)		;a6a9
	ld hl,la6beh		;a6ac
	call 06e40h		;a6af
L_A6B2:
	ld a,(ix+01fh)		;a6b2
	ld hl,0a6dch		;a6b5
	call 04a5ah		;a6b8
L_A6BB:
	ld (ix+00eh),l		;a6bb
L_A6BE:
	ld (ix+00fh),h		;a6be
	ret			;a6c1

; ----------------------------------------------------------------------
; DATOS leido_A6C2: 26 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (26 bytes)
;   0xa6c2..0xa6dc  (26 bytes)
DATA_leido_A6C2:
	defb 000h,0fah,080h,0fbh,000h,0fah,000h,0fdh,000h,0fah,080h,0feh,000h,0fah,000h,000h	; a6c2  ................
	defb 000h,0fah,080h,001h,000h,0fah,000h,003h,000h,0fah	; a6d2  ..........

; ----------------------------------------------------------------------
; DATOS tabla_A6DC: tabla que se lee desde HL = 0xA6DC con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:A6B5 (1 bytes)
;   0xa6dc..0xa6dd  (1 bytes)
DATA_tabla_A6DC:
	defb 080h	; a6dc

; ----------------------------------------------------------------------
; DATOS leido_A6DD: 1 bytes que lee p01:6E4C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6E4C (1 bytes)
;   0xa6dd..0xa6de  (1 bytes)
DATA_leido_A6DD:
	defb 004h	; a6dd

; ----------------------------------------------------------------------
; DATOS leido_A6DE: 14 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (14 bytes)
;   0xa6de..0xa6ec  (14 bytes)
DATA_leido_A6DE:
	defb 010h,007h,00dh,00dh,007h,010h,005h,010h,007h,010h,00dh,00dh,010h,007h	; a6de  ..............

; ======================================================================
; CODIGO 0xa6ec..0xa6fa  (14 bytes)
; ======================================================================


L_A6EC:
	ld b,09ch		;a6ec
	call L_A706		;a6ee
	ld a,(ix+01fh)		;a6f1
	ld hl,0a6f6h		;a6f4
	jp 06e40h		;a6f7

; ----------------------------------------------------------------------
; DATOS leido_A6FA: 12 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (12 bytes)
;   0xa6fa..0xa706  (12 bytes)
DATA_leido_A6FA:
	defb 0d8h,0fdh,080h,0feh,000h,0fdh,000h,000h,0d8h,0fdh,080h,001h	; a6fa  ............

; ======================================================================
; CODIGO 0xa706..0xa71f  (25 bytes)
; ======================================================================


L_A706:
	ld a,(ix+01fh)		;a706
	add a,a			;a709
	add a,a			;a70a
	add a,b			;a70b
	ld (ix+030h),a		;a70c
	ret			;a70f
L_A710:
	ld c,006h		;a710
	call L_A68D		;a712
	ld ix,0ec00h		;a715
	ld a,(0e441h)		;a719
	call 04093h		;a71c

; ----------------------------------------------------------------------
; DATOS tabla_A71F: 9 destinos del despachador p00:4093 (call en p05:A71C, el
;   indice en A): A731, A766, A778, A78E, A7AB, A7CA, A7E2, A0AE, A0CD; lo
;   leen p05:A71C (18 bytes)
;   0xa71f..0xa731  (18 bytes)
DATA_tabla_A71F:
	defw 0a731h,0a766h,0a778h,0a78eh,0a7abh,0a7cah,0a7e2h,0a0aeh	; a71f
	defw 0a0cdh	; a72f  -> L_A0CD

; ======================================================================
; CODIGO 0xa731..0xa75c  (43 bytes)
; ======================================================================


L_A731:
	call 09e0bh		;a731
	ret nz			;a734
	ld a,010h		;a735
	ld hl,0a75ch		;a737
	call 09dc6h		;a73a
	ld (ix+013h),014h		;a73d
	xor a			;a741
	ld (ix+014h),a		;a742
	ld (ix+017h),a		;a745
	ld (ix+01ch),a		;a748
	ld (ix+01eh),a		;a74b
	ld (ix+01bh),003h		;a74e
	ld (ix+01dh),003h		;a752
	call L_A84A		;a756
	jp 09dc1h		;a759

; ----------------------------------------------------------------------
; DATOS leido_A75C: 10 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (10 bytes)
;   0xa75c..0xa766  (10 bytes)
DATA_leido_A75C:
	defb 007h,000h,040h,048h,000h,030h,001h,024h,02bh,037h	; a75c  ..@H.0.$+7

; ======================================================================
; CODIGO 0xa766..0xa902  (412 bytes)
; ======================================================================


L_A766:
	ld c,0d8h		;a766
	call 09e40h		;a768
	jp nc,L_A84A		;a76b
	call L_A90F		;a76e
	ld (ix+002h),020h		;a771
	jp 09dc1h		;a775
L_A778:
	call L_A922		;a778
	call L_A84A		;a77b
	ld a,(0ec02h)		;a77e
	or a			;a781
	ret nz			;a782
	ld (ix+01ah),000h		;a783
	ld (ix+002h),028h		;a787
	jp 09dc1h		;a78b
L_A78E:
	call L_A922		;a78e
	call L_A847		;a791
	call L_A839		;a794
	ld a,(0ec02h)		;a797
	or a			;a79a
	ret nz			;a79b
	ld (ix+01fh),006h		;a79c
	ld (ix+01ah),00ah		;a7a0
	ld (ix+002h),080h		;a7a4
	jp 09dc1h		;a7a8
L_A7AB:
	call L_A922		;a7ab
	call L_A847		;a7ae
	call L_A839		;a7b1
	call L_A980		;a7b4
	ld a,(0ec02h)		;a7b7
	or a			;a7ba
	ret nz			;a7bb
	call L_A90F		;a7bc
	ld (ix+01ah),005h		;a7bf
	ld (ix+002h),028h		;a7c3
	jp 09dc1h		;a7c7
L_A7CA:
	call L_A922		;a7ca
	call L_A847		;a7cd
	call L_A839		;a7d0
	ld a,(0ec02h)		;a7d3
	or a			;a7d6
	ret nz			;a7d7
	ld (ix+002h),020h		;a7d8
	ld hl,0e441h		;a7dc
	ld (hl),002h		;a7df
	ret			;a7e1
L_A7E2:
	ld hl,(0e443h)		;a7e2
	dec hl			;a7e5
	ld (0e443h),hl		;a7e6
	ld a,l			;a7e9
	or h			;a7ea
	ret nz			;a7eb
	ld hl,00050h		;a7ec
	ld (0e443h),hl		;a7ef
	dec a			;a7f2
	ld (ix+007h),a		;a7f3
	ld (ix+008h),a		;a7f6
	ld (ix+009h),a		;a7f9
	ld a,008h		;a7fc
	add a,(ix+003h)		;a7fe
	ld e,a			;a801
	ld d,(ix+005h)		;a802
	ld b,d			;a805
	ld c,e			;a806
	call L_A82F		;a807
	ld a,b			;a80a
	sub 030h		;a80b
	ld d,a			;a80d
	ld a,c			;a80e
	sub 030h		;a80f
	jr nc,L_A814		;a811
	xor a			;a813
L_A814:
	ld e,a			;a814
	call L_A82F		;a815
	ld a,b			;a818
	sub 030h		;a819
	ld d,a			;a81b
	ld a,c			;a81c
	add a,040h		;a81d
	cp 0a0h		;a81f
	jr c,L_A825		;a821
	ld a,0a0h		;a823
L_A825:
	ld e,a			;a825
	call L_A82F		;a826
	call L_A0A6		;a829
	jp 09dc1h		;a82c
L_A82F:
	push bc			;a82f
	push ix		;a830
	call 0678dh		;a832
	pop ix		;a835
	pop bc			;a837
	ret			;a838
L_A839:
	ld a,(ix+007h)		;a839
	sub 024h		;a83c
	ld a,001h		;a83e
	jr z,L_A843		;a840
	xor a			;a842
L_A843:
	ld (0e454h),a		;a843
	ret			;a846
L_A847:
	call L_A8BE		;a847
L_A84A:
	call L_A890		;a84a
	ld a,(0ec08h)		;a84d
	call L_A862		;a850
	ld ix,0ec04h		;a853
	ld a,(0ec09h)		;a857
	call L_A862		;a85a
	ld ix,0ec00h		;a85d
	ret			;a861
L_A862:
	ld hl,0a967h		;a862
	call L_A875		;a865
	ld (ix+00ah),l		;a868
	ld (ix+00bh),h		;a86b
	ld (ix+00ch),e		;a86e
	ld (ix+00dh),d		;a871
	ret			;a874
L_A875:
	call 04a5ah		;a875
	ld bc,(0ec05h)		;a878
	ld a,l			;a87c
	call L_A886		;a87d
	ex de,hl			;a880
	ld bc,(0ec03h)		;a881
	ld h,a			;a885
L_A886:
	ld l,h			;a886
	ld h,000h		;a887
	bit 7,l		;a889
	jr z,L_A88E		;a88b
	dec h			;a88d
L_A88E:
	add hl,bc			;a88e
	ret			;a88f
L_A890:
	ld c,02bh		;a890
	ld de,0ec08h		;a892
	call L_A8A7		;a895
	ld c,037h		;a898
	inc de			;a89a
	inc ix		;a89b
	inc ix		;a89d
	call L_A8A7		;a89f
	dec ix		;a8a2
	dec ix		;a8a4
	ret			;a8a6
L_A8A7:
	dec (ix+01bh)		;a8a7
	ret nz			;a8aa
	ld (ix+01bh),003h		;a8ab
	ld a,(ix+01ch)		;a8af
	inc a			;a8b2
	cp 00ch		;a8b3
	jr c,L_A8B8		;a8b5
	xor a			;a8b7
L_A8B8:
	ld (ix+01ch),a		;a8b8
	add a,c			;a8bb
	ld (de),a			;a8bc
	ret			;a8bd
L_A8BE:
	call L_A8CF		;a8be
	ld a,b			;a8c1
	add a,(ix+01ah)		;a8c2
	ld hl,0a902h		;a8c5
	call 04a6eh		;a8c8
	ld (0ec07h),a		;a8cb
	ret			;a8ce
L_A8CF:
	ld a,(ix+01ah)		;a8cf
	cp 00ah		;a8d2
	jr c,L_A8F3		;a8d4
	ld a,014h		;a8d6
	add a,(ix+003h)		;a8d8
	ld e,a			;a8db
	ld a,014h		;a8dc
	add a,(ix+005h)		;a8de
	ld d,a			;a8e1
	call 063ffh		;a8e2
	ld b,000h		;a8e5
	ld a,(0e477h)		;a8e7
	sub 068h		;a8ea
	ret c			;a8ec
	inc b			;a8ed
	sub 030h		;a8ee
	ret c			;a8f0
	inc b			;a8f1
	ret			;a8f2
L_A8F3:
	ld a,(0ec02h)		;a8f3
	ld c,a			;a8f6
	ld a,008h		;a8f7
	ld b,004h		;a8f9
L_A8FB:
	cp c			;a8fb
	ret nc			;a8fc
	add a,008h		;a8fd
	djnz L_A8FB		;a8ff
	ret			;a901

; ----------------------------------------------------------------------
; DATOS tabla_A902: tabla que se lee desde HL = 0xA902 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:A8C5 (13 bytes)
;   0xa902..0xa90f  (13 bytes)
DATA_tabla_A902:
	defb 024h,025h,026h,027h,028h,028h,027h,026h,025h,024h,02ah,028h,029h	; a902  $%&'(('&%$*()

; ======================================================================
; CODIGO 0xa90f..0xa9bd  (174 bytes)
; ======================================================================


L_A90F:
	ld a,(0e604h)		;a90f
	cp (ix+003h)		;a912
	ld a,001h		;a915
	jr nc,L_A91A		;a917
	xor a			;a919
L_A91A:
	ld (ix+018h),a		;a91a
	ld (ix+019h),008h		;a91d
	ret			;a921
L_A922:
	dec (ix+002h)		;a922
	ret z			;a925
	dec (ix+019h)		;a926
	ret nz			;a929
	ld (ix+019h),008h		;a92a
	call L_A943		;a92e
	bit 0,(ix+018h)		;a931
	ld b,0f8h		;a935
	jr z,L_A93B		;a937
	ld b,008h		;a939
L_A93B:
	ld a,(0ec03h)		;a93b
	add a,b			;a93e
	ld (0ec03h),a		;a93f
	ret			;a942
L_A943:
	ld b,001h		;a943
	ld a,(0ec03h)		;a945
	cp 01fh		;a948
	jr c,L_A950		;a94a
	cp 060h		;a94c
	ret c			;a94e
	dec b			;a94f
L_A950:
	ld (ix+018h),b		;a950
	ld (ix+019h),008h		;a953
	ret			;a957
L_A958:
	ld hl,0ec08h		;a958
	ld a,r		;a95b
	bit 6,a		;a95d
	jr z,L_A962		;a95f
	inc hl			;a961
L_A962:
	ld a,(hl)			;a962
	push af			;a963
	ld hl,0a997h		;a964
	call L_A875		;a967
	pop af			;a96a
	ld b,e			;a96b
	call L_A978		;a96c
	ld de,000a8h		;a96f
	rst 20h			;a972
	ccf			;a973
	ret c			;a974
	ld e,l			;a975
	ld d,b			;a976
	ret			;a977
L_A978:
	cp 041h		;a978
	ret nz			;a97a
	ld de,00100h		;a97b
	add hl,de			;a97e
	ret			;a97f
L_A980:
	dec (ix+01fh)		;a980
	ret nz			;a983
	ld (ix+01fh),006h		;a984
	call L_A958		;a988
	jr c,L_A99D		;a98b
	ld a,(ix+017h)		;a98d
	inc (ix+017h)		;a990
	and 001h		;a993
	ld b,a			;a995
	ld c,000h		;a996
	ld a,040h		;a998
	jp 07647h		;a99a
L_A99D:
	ld (ix+01fh),001h		;a99d
	ret			;a9a1
L_A9A2:
	ld a,(ix+01fh)		;a9a2
	rra			;a9a5
	jr nc,L_A9B8		;a9a6
	ld a,(0e4a2h)		;a9a8
	add a,070h		;a9ab
	ld (0e4a2h),a		;a9ad
	ld h,a			;a9b0
	ld l,010h		;a9b1
	ld a,080h		;a9b3
	jp 07888h		;a9b5
L_A9B8:
	ld a,080h		;a9b8
	jp 07865h		;a9ba

; ----------------------------------------------------------------------
; DATOS leido_A9BD: 72 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (72 bytes)
;   0xa9bd..0xaa05  (72 bytes)
DATA_leido_A9BD:
	defb 0e0h,0b0h,0e8h,0a8h,0f0h,0a8h,0f8h,0a8h,0f8h,0a8h,0f8h,0b8h,0f8h,0b0h,0e0h,0b8h	; a9bd  ................
	defb 0d0h,0b8h,0b0h,0c8h,0a0h,0d8h,0b8h,0b8h,030h,0a8h,030h,0a8h,028h,0a8h,010h,0b0h	; a9cd  ........0.0.(...
	defb 000h,0a8h,008h,0b8h,018h,0b0h,028h,0b8h,030h,0b8h,030h,0c8h,038h,0d0h,038h,0b8h	; a9dd  ......(.0.0.8.8.
	defb 0e4h,0a8h,0f4h,0a0h,00ch,0a0h,01ch,0a0h,02ch,0a0h,01ch,0b0h,004h,0a8h,0e4h,0b0h	; a9ed  ........,.......
	defb 0d4h,0b0h,0b4h,0c0h,0a4h,0d0h,0bch,0a0h	; a9fd  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa05..0xaa1d  (24 bytes)
DATA_AA05:
	defb 04ch,0a0h,03ch,0a0h,02ch,0a0h,014h,0a8h,004h,0a0h,014h,0b0h,03ch,0a8h,04ch,0b0h	; aa05  L.<.,.......<.L.
	defb 064h,0b0h,07ch,0c0h,08ch,0c8h,074h,0b0h	; aa15  d.|...t.

; ======================================================================
; CODIGO 0xaa1d..0xaa2c  (15 bytes)
; ======================================================================


L_AA1D:
	ld c,004h		;aa1d
	call L_A68D		;aa1f
	ld ix,0ec00h		;aa22
	ld a,(0e441h)		;aa26
	call 04093h		;aa29

; ----------------------------------------------------------------------
; DATOS tabla_AA2C: 10 destinos del despachador p00:4093 (call en p05:AA29, el
;   indice en A): AA40, AA6D, AA78, AA93, A00D, A031, A042, A087, A0AE, A0CD;
;   lo leen p05:AA29 (20 bytes)
;   0xaa2c..0xaa40  (20 bytes)
DATA_tabla_AA2C:
	defw 0aa40h,0aa6dh,0aa78h,0aa93h,0a00dh,0a031h,0a042h,0a087h	; aa2c
	defw 0a0aeh,0a0cdh	; aa3c  -> L_A0AE L_A0CD

; ======================================================================
; CODIGO 0xaa40..0xaa63  (35 bytes)
; ======================================================================


L_AA40:
	call 09e0bh		;aa40
	ret nz			;aa43
	ld a,014h		;aa44
	ld hl,0aa63h		;aa46
	call 09dc6h		;aa49
	call L_AB02		;aa4c
	ld (ix+013h),018h		;aa4f
	ld (ix+014h),000h		;aa53
	call 057eeh		;aa57
	call 0594dh		;aa5a
	call 057feh		;aa5d
	jp 09dc1h		;aa60

; ----------------------------------------------------------------------
; DATOS resto_AA63: lo apuntan con el banco puesto p05:AA46 (0xAA63); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p05:AA46 (10 bytes)
;   0xaa63..0xaa6d  (10 bytes)
DATA_resto_AA63:
	defb 00bh,000h,008h,038h,000h,0f8h,000h,062h,063h,0ffh	; aa63  ...8...bc.

; ======================================================================
; CODIGO 0xaa6d..0xaad0  (99 bytes)
; ======================================================================


L_AA6D:
	ld c,080h		;aa6d
	call 09e40h		;aa6f
	call z,09dc1h		;aa72
	jp L_AB02		;aa75
L_AA78:
	xor a			;aa78
	ld (ix+01fh),a		;aa79
	ld (ix+01ch),a		;aa7c
	ld (ix+01dh),a		;aa7f
	ld (0e454h),a		;aa82
	ld (ix+002h),004h		;aa85
	ld (ix+01eh),004h		;aa89
	call L_ABD2		;aa8d
	jp 09dc1h		;aa90
L_AA93:
	call L_AA9F		;aa93
	call L_AB11		;aa96
	call L_ABD2		;aa99
	jp L_AB02		;aa9c
L_AA9F:
	ld a,(0e445h)		;aa9f
	or a			;aaa2
	ret nz			;aaa3
	dec (ix+002h)		;aaa4
	ret nz			;aaa7
	ld (ix+002h),004h		;aaa8
	call L_AAD8		;aaac
	ld a,(0ec01h)		;aaaf
	cp 001h		;aab2
	jr z,L_AABA		;aab4
	cp 005h		;aab6
	jr nz,L_AABB		;aab8
L_AABA:
	ld c,b			;aaba
L_AABB:
	ld hl,0aad0h		;aabb
	call 04a6eh		;aabe
	sub c			;aac1
	ret nz			;aac2
	ld a,(0ec01h)		;aac3
	inc a			;aac6
	cp 008h		;aac7
	jr c,L_AACC		;aac9
	xor a			;aacb
L_AACC:
	ld (0ec01h),a		;aacc
	ret			;aacf

; ----------------------------------------------------------------------
; DATOS tabla_AAD0: tabla que se lee desde HL = 0xAAD0 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:AABB (8 bytes)
;   0xaad0..0xaad8  (8 bytes)
DATA_tabla_AAD0:
	defb 010h,048h,028h,048h,060h,080h,048h,028h	; aad0  .H(H`.H(

; ======================================================================
; CODIGO 0xaad8..0xaaf2  (26 bytes)
; ======================================================================


L_AAD8:
	ld a,(0ec01h)		;aad8
	ld de,0aaf2h		;aadb
	call 04a65h		;aade
	ld a,(0ec03h)		;aae1
	add a,e			;aae4
	ld (0ec03h),a		;aae5
	ld c,a			;aae8
	ld a,(0ec05h)		;aae9
	add a,d			;aaec
	ld (0ec05h),a		;aaed
	ld b,a			;aaf0
	ret			;aaf1

; ----------------------------------------------------------------------
; DATOS resto_AAF2: lo apuntan con el banco puesto p05:AADB (0xAAF2); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p05:AADB (16 bytes)
;   0xaaf2..0xab02  (16 bytes)
DATA_resto_AAF2:
	defb 0f8h,0f8h,000h,0f8h,008h,0f8h,008h,000h,008h,008h,000h,008h,0f8h,008h,0f8h,000h	; aaf2  ................

; ======================================================================
; CODIGO 0xab02..0xab82  (128 bytes)
; ======================================================================


L_AB02:
	ld a,(0ec03h)		;ab02
	add a,018h		;ab05
	ld (0ec0ah),a		;ab07
	ld a,(0ec05h)		;ab0a
	ld (0ec0ch),a		;ab0d
	ret			;ab10
L_AB11:
	ld a,(0e445h)		;ab11
	or a			;ab14
	ret nz			;ab15
	call L_AB22		;ab16
	call L_AB3B		;ab19
	call L_AB4C		;ab1c
	jp L_AB88		;ab1f
L_AB22:
	dec (ix+01eh)		;ab22
	ret nz			;ab25
	ld (ix+01eh),004h		;ab26
	inc (ix+01dh)		;ab2a
	ld e,(ix+01dh)		;ab2d
	ld d,000h		;ab30
	ld hl,0abeeh		;ab32
	add hl,de			;ab35
	ld a,(hl)			;ab36
	ld (0ec1fh),a		;ab37
	ret			;ab3a
L_AB3B:
	ld a,(0ec1fh)		;ab3b
	inc a			;ab3e
	ret nz			;ab3f
	ld (0ec1fh),a		;ab40
	ld (0ec1dh),a		;ab43
	inc (ix+01ch)		;ab46
	jp 0516fh		;ab49
L_AB4C:
	ld a,(0ec1fh)		;ab4c
	and 007h		;ab4f
	jr z,L_AB79		;ab51
	ld hl,0ab82h		;ab53
	dec a			;ab56
	ld e,a			;ab57
	ld d,000h		;ab58
	add hl,de			;ab5a
	ld a,(hl)			;ab5b
	bit 0,(ix+01ch)		;ab5c
	jr z,L_AB64		;ab60
	add a,010h		;ab62
L_AB64:
	ld (0ec09h),a		;ab64
	ld (0ec20h),a		;ab67
	ld hl,0ec27h		;ab6a
	add a,004h		;ab6d
	ld (hl),a			;ab6f
	inc l			;ab70
	add a,004h		;ab71
	ld (hl),a			;ab73
	inc l			;ab74
	add a,004h		;ab75
	ld (hl),a			;ab77
	ret			;ab78
L_AB79:
	xor a			;ab79
	ld (0ec20h),a		;ab7a
	dec a			;ab7d
	ld (0ec09h),a		;ab7e
	ret			;ab81

; ----------------------------------------------------------------------
; DATOS tabla_AB82: tabla que se lee desde HL = 0xAB82 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:AB53 (6 bytes)
;   0xab82..0xab88  (6 bytes)
DATA_tabla_AB82:
	defb 066h,067h,068h,069h,069h,069h	; ab82

; ======================================================================
; CODIGO 0xab88..0xabe9  (97 bytes)
; ======================================================================


L_AB88:
	ld a,(0ec1fh)		;ab88
	or a			;ab8b
	ret z			;ab8c
	ld b,000h		;ab8d
	call L_ABBE		;ab8f
	ld (0ec0eh),hl		;ab92
	ex de,hl			;ab95
	ld (0ec10h),hl		;ab96
	ld b,006h		;ab99
	call L_ABBE		;ab9b
	ld (0ec23h),hl		;ab9e
	ex de,hl			;aba1
	ld (0ec25h),hl		;aba2
	ld b,00ch		;aba5
	call L_ABBE		;aba7
	ld (0ec2ah),hl		;abaa
	ex de,hl			;abad
	ld (0ec2ch),hl		;abae
	ld b,012h		;abb1
	call L_ABBE		;abb3
	ld (0ec2eh),hl		;abb6
	ex de,hl			;abb9
	ld (0ec30h),hl		;abba
	ret			;abbd
L_ABBE:
	bit 0,(ix+01ch)		;abbe
	ld hl,0ac11h		;abc2
	jr z,L_ABCA		;abc5
	ld hl,0ac41h		;abc7
L_ABCA:
	ld a,(0ec1fh)		;abca
	dec a			;abcd
	add a,b			;abce
	jp L_A875		;abcf
L_ABD2:
	ld a,(0ec12h)		;abd2
	ld b,004h		;abd5
L_ABD7:
	sub 004h		;abd7
	jr c,L_ABDD		;abd9
	djnz L_ABD7		;abdb
L_ABDD:
	ld e,b			;abdd
	ld d,000h		;abde
	ld hl,0abe9h		;abe0
	add hl,de			;abe3
	ld a,(hl)			;abe4
	ld (0ec08h),a		;abe5
	ret			;abe8

; ----------------------------------------------------------------------
; DATOS tabla_ABE9: tabla que se lee desde HL = 0xABE9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:ABE0 (5 bytes)
;   0xabe9..0xabee  (5 bytes)
DATA_tabla_ABE9:
	defb 063h,064h,095h,065h,0ffh	; abe9

; ----------------------------------------------------------------------
; DATOS tabla_ABEE: tabla que se lee desde HL = 0xABEE con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:AB32 (35 bytes)
;   0xabee..0xac11  (35 bytes)
DATA_tabla_ABEE:
	defb 000h,001h,002h,003h,004h,005h,006h,003h,004h,005h,006h,003h,004h,005h,006h,003h	; abee  ................
	defb 004h,005h,006h,003h,004h,005h,006h,003h,004h,005h,006h,003h,004h,005h,006h,002h	; abfe  ................
	defb 001h,000h,0ffh	; ac0e

; ----------------------------------------------------------------------
; DATOS resto_AC11: lo apuntan con el banco puesto p05:ABC2 (0xAC11), p05:ABC7
;   (0xAC41); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p05:ABC2, p05:ABC7 (96 bytes)
;   0xac11..0xac71  (96 bytes)
DATA_resto_AC11:
	defb 0f8h,008h,0e0h,028h,0e8h,0e8h,0d0h,008h,0d0h,018h,0d0h,028h,010h,0f8h,000h,0e0h	; ac11  ...(.......(....
	defb 038h,0e8h,028h,0d0h,018h,0d0h,008h,0d0h,040h,010h,040h,000h,040h,038h,040h,028h	; ac21  8.(.....@.@.@8@(
	defb 040h,018h,040h,008h,008h,040h,028h,040h,0e8h,040h,008h,040h,018h,040h,028h,040h	; ac31  @.@..@(@.@.@.@(@
	defb 0f8h,010h,0e0h,000h,0e8h,038h,0d0h,028h,0d0h,018h,0d0h,008h,008h,0f8h,028h,0e0h	; ac41  .....8.(......(.
	defb 0e8h,0e8h,008h,0d0h,018h,0d0h,028h,0d0h,040h,008h,040h,028h,040h,0e8h,040h,008h	; ac51  ......(.@.@(@.@.
	defb 040h,018h,040h,028h,010h,040h,000h,040h,038h,040h,028h,040h,018h,040h,008h,040h	; ac61  @.@(.@.@8@(@.@.@

; ======================================================================
; CODIGO 0xac71..0xac7b  (10 bytes)
; ======================================================================


L_AC71:
	ld ix,0ec00h		;ac71
	ld a,(0e441h)		;ac75
	call 04093h		;ac78

; ----------------------------------------------------------------------
; DATOS tabla_AC7B: 7 destinos del despachador p00:4093 (call en p05:AC78, el
;   indice en A): AC89, ACB2, ACC8, A042, A087, A0AE, A0CD; lo leen p05:AC78
;   (14 bytes)
;   0xac7b..0xac89  (14 bytes)
DATA_tabla_AC7B:
	defw 0ac89h,0acb2h,0acc8h,0a042h,0a087h,0a0aeh,0a0cdh	; ac7b

; ======================================================================
; CODIGO 0xac89..0xaca8  (31 bytes)
; ======================================================================


L_AC89:
	call 09e0bh		;ac89
	ret nz			;ac8c
	ld hl,0aca8h		;ac8d
	ld a,01fh		;ac90
	call 09dc6h		;ac92
	ld (ix+01fh),004h		;ac95
	ld (ix+01eh),001h		;ac99
	ld (ix+013h),034h		;ac9d
	ld (ix+014h),000h		;aca1
	jp 09dc1h		;aca5

; ----------------------------------------------------------------------
; DATOS leido_ACA8: 10 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (10 bytes)
;   0xaca8..0xacb2  (10 bytes)
DATA_leido_ACA8:
	defb 00ch,000h,008h,020h,000h,0f8h,000h,08fh,0ffh,0ffh	; aca8  ... ......

; ======================================================================
; CODIGO 0xacb2..0xad08  (86 bytes)
; ======================================================================


L_ACB2:
	ld c,0d0h		;acb2
	call 09e40h		;acb4
	jr c,L_ACBA		;acb7
	ret			;acb9
L_ACBA:
	xor a			;acba
	ld (0e454h),a		;acbb
	call L_AE24		;acbe
	ld (ix+002h),001h		;acc1
	jp 09dc1h		;acc5
L_ACC8:
	call L_AD0D		;acc8
	push af			;accb
	call L_ACD3		;accc
	pop af			;accf
	jp 09e32h		;acd0
L_ACD3:
	ld a,(ix+012h)		;acd3
	cp 006h		;acd6
	ret nc			;acd8
	ld a,(ix+007h)		;acd9
	sub 08fh		;acdc
	ld hl,0ad08h		;acde
	call 04089h		;ace1
	ld a,(hl)			;ace4
	ld (ix+009h),a		;ace5
	ld l,(ix+003h)		;ace8
	ld h,(ix+004h)		;aceb
	ld de,00028h		;acee
	add hl,de			;acf1
	ld (ix+00eh),l		;acf2
	ld (ix+00fh),h		;acf5
	ld l,(ix+005h)		;acf8
	ld h,(ix+006h)		;acfb
	ld e,010h		;acfe
	add hl,de			;ad00
	ld (ix+010h),l		;ad01
	ld (ix+011h),h		;ad04
	ret			;ad07

; ----------------------------------------------------------------------
; DATOS tabla_AD08: tabla que se lee desde HL = 0xAD08 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:ACDE (5 bytes)
;   0xad08..0xad0d  (5 bytes)
DATA_tabla_AD08:
	defb 010h,01ch,023h,01ch,0ffh	; ad08

; ======================================================================
; CODIGO 0xad0d..0xad13  (6 bytes)
; ======================================================================


L_AD0D:
	ld a,(ix+001h)		;ad0d
	call 04093h		;ad10

; ----------------------------------------------------------------------
; DATOS tabla_AD13: 5 destinos del despachador p00:4093 (call en p05:AD10, el
;   indice en A): AD1D, AD98, ADA8, AD77, AD88; lo leen p05:AD10 (10 bytes)
;   0xad13..0xad1d  (10 bytes)
DATA_tabla_AD13:
	defw 0ad1dh,0ad98h,0ada8h,0ad77h,0ad88h	; ad13

; ======================================================================
; CODIGO 0xad1d..0xae20  (259 bytes)
; ======================================================================


L_AD1D:
	call 09f11h		;ad1d
	push af			;ad20
	call L_AD2E		;ad21
	pop af			;ad24
	jr c,L_AD4B		;ad25
	call L_AD5F		;ad27
	jp c,09f9ch		;ad2a
	ret			;ad2d
L_AD2E:
	xor a			;ad2e
	ld (0e454h),a		;ad2f
	ld a,(0e604h)		;ad32
	ld b,a			;ad35
	ld a,(ix+003h)		;ad36
	add a,020h		;ad39
	cp b			;ad3b
	ld c,092h		;ad3c
	jr c,L_AD47		;ad3e
	add a,020h		;ad40
	dec c			;ad42
	cp b			;ad43
	jr c,L_AD47		;ad44
	dec c			;ad46
L_AD47:
	ld (ix+007h),c		;ad47
	ret			;ad4a
L_AD4B:
	ld (ix+007h),093h		;ad4b
	ld a,001h		;ad4f
	ld (0e454h),a		;ad51
	ld (ix+019h),a		;ad54
	ld (ix+002h),010h		;ad57
	inc (ix+001h)		;ad5b
	ret			;ad5e
L_AD5F:
	ld hl,(0ec03h)		;ad5f
	bit 0,(ix+015h)		;ad62
	jr nz,L_AD70		;ad66
	ld a,h			;ad68
	and a			;ad69
	ret m			;ad6a
	ld a,l			;ad6b
	cp 060h		;ad6c
	ccf			;ad6e
	ret			;ad6f
L_AD70:
	ld a,h			;ad70
	and a			;ad71
	ret z			;ad72
	ld a,l			;ad73
	cp 0d8h		;ad74
	ret			;ad76
L_AD77:
	ld a,(ix+028h)		;ad77
	or a			;ad7a
	ret z			;ad7b
	ld (ix+008h),0ffh		;ad7c
	ld (ix+019h),010h		;ad80
	inc (ix+001h)		;ad84
	ret			;ad87
L_AD88:
	dec (ix+019h)		;ad88
	ret nz			;ad8b
	ld (ix+007h),08fh		;ad8c
	call L_AE24		;ad90
	ld (ix+001h),000h		;ad93
	ret			;ad97
L_AD98:
	call L_AE45		;ad98
	ld a,(ix+019h)		;ad9b
	or a			;ad9e
	ret nz			;ad9f
	ld (ix+028h),001h		;ada0
	inc (ix+001h)		;ada4
	ret			;ada7
L_ADA8:
	dec (ix+028h)		;ada8
	ret nz			;adab
	ld (ix+028h),028h		;adac
	ld hl,(0ec03h)		;adb0
	ld de,00030h		;adb3
	add hl,de			;adb6
	ld a,h			;adb7
	and a			;adb8
	ret nz			;adb9
	ld a,l			;adba
	cp 0b0h		;adbb
	ret nc			;adbd
	ld (ix+019h),020h		;adbe
	inc (ix+001h)		;adc2
	ld a,r		;adc5
	and 003h		;adc7
	ld hl,0ae20h		;adc9
	call 04089h		;adcc
	ld e,(hl)			;adcf
	ld a,(ix+003h)		;add0
	add a,e			;add3
	cp 0a0h		;add4
	ret nc			;add6
	ld e,a			;add7
	ld a,(ix+005h)		;add8
	ld (ix+00ch),a		;addb
	sub 008h		;adde
	ld d,a			;ade0
	ld (ix+008h),094h		;ade1
	ld (ix+00ah),e		;ade5
	call L_AE0C		;ade8
	ld a,c			;adeb
	cp 002h		;adec
	ret c			;adee
	ld (ix+028h),001h		;adef
	ld c,000h		;adf3
	ld b,000h		;adf5
	ld a,01bh		;adf7
	push de			;adf9
	call 0764fh		;adfa
	pop de			;adfd
	ld a,e			;adfe
	add a,008h		;adff
	ld e,a			;ae01
	ld c,000h		;ae02
	ld b,001h		;ae04
	ld a,01bh		;ae06
	call 0764fh		;ae08
	ret			;ae0b
L_AE0C:
	push de			;ae0c
	ld hl,0e800h		;ae0d
	ld de,00040h		;ae10
	ld bc,00c00h		;ae13
L_AE16:
	xor a			;ae16
	or (hl)			;ae17
	jr nz,L_AE1B		;ae18
	inc c			;ae1a
L_AE1B:
	add hl,de			;ae1b
	djnz L_AE16		;ae1c
	pop de			;ae1e
	ret			;ae1f

; ----------------------------------------------------------------------
; DATOS tabla_AE20: tabla que se lee desde HL = 0xAE20 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:ADC9 (4 bytes)
;   0xae20..0xae24  (4 bytes)
DATA_tabla_AE20:
	defb 010h,030h,050h,010h	; ae20

; ======================================================================
; CODIGO 0xae24..0xae83  (95 bytes)
; ======================================================================


L_AE24:
	ld a,(ix+004h)		;ae24
	and a			;ae27
	jr z,L_AE33		;ae28
	ld a,002h		;ae2a
	jp m,09edfh		;ae2c
	dec a			;ae2f
	jp 09edfh		;ae30
L_AE33:
	ld a,(ix+003h)		;ae33
	add a,020h		;ae36
	ld hl,0e604h		;ae38
	cp (hl)			;ae3b
	ld a,002h		;ae3c
	jp c,09edfh		;ae3e
	dec a			;ae41
	jp 09edfh		;ae42
L_AE45:
	ld (ix+019h),000h		;ae45
	ret			;ae49
L_AE4A:
	ld a,(ix+01fh)		;ae4a
	or a			;ae4d
	ld a,00fh		;ae4e
	jr z,L_AE53		;ae50
	inc a			;ae52
L_AE53:
	ld (ix+032h),a		;ae53
	ld a,r		;ae56
	and 007h		;ae58
	ld (ix+025h),a		;ae5a
	ld (ix+013h),001h		;ae5d
	ld (ix+014h),001h		;ae61
	xor a			;ae65
	ld (0ec28h),a		;ae66
	ld (ix+024h),018h		;ae69
	ld (ix+002h),010h		;ae6d
	call 078c8h		;ae71
L_AE74:
	ld (ix+026h),002h		;ae74
	res 1,(ix+010h)		;ae78
	ret			;ae7c
L_AE7D:
	ld a,(ix+001h)		;ae7d
	call 04093h		;ae80

; ----------------------------------------------------------------------
; DATOS tabla_AE83: 3 destinos del despachador p00:4093 (call en p05:AE80, el
;   indice en A): AE89, AE98, AEC7; lo leen p05:AE80 (6 bytes)
;   0xae83..0xae89  (6 bytes)
DATA_tabla_AE83:
	defw 0ae89h,0ae98h,0aec7h	; ae83  -> L_AE89 L_AE98 L_AEC7

; ======================================================================
; CODIGO 0xae89..0xaf1a  (145 bytes)
; ======================================================================


L_AE89:
	dec (ix+002h)		;ae89
	ret nz			;ae8c
	ld (ix+002h),001h		;ae8d
	call 058d5h		;ae91
L_AE94:
	inc (ix+001h)		;ae94
	ret			;ae97
L_AE98:
	ld a,(ix+026h)		;ae98
	ld b,a			;ae9b
	add a,(ix+014h)		;ae9c
	ld (ix+014h),a		;ae9f
	ld a,b			;aea2
	add a,a			;aea3
	add a,a			;aea4
	add a,a			;aea5
	ld b,a			;aea6
	ld a,(ix+006h)		;aea7
	sub b			;aeaa
	ld (ix+006h),a		;aeab
	ld a,(ix+00fh)		;aeae
	add a,b			;aeb1
	ld (ix+00fh),a		;aeb2
	ld a,(ix+024h)		;aeb5
	sub (ix+026h)		;aeb8
	ld (ix+024h),a		;aebb
	ret nz			;aebe
	ld (ix+024h),018h		;aebf
	inc (ix+001h)		;aec3
	ret			;aec6
L_AEC7:
	call L_AEF9		;aec7
	ld a,(ix+026h)		;aeca
	ld b,a			;aecd
	ld c,a			;aece
	ld a,(ix+014h)		;aecf
	sub b			;aed2
	ld (ix+014h),a		;aed3
	ld a,b			;aed6
	add a,a			;aed7
	add a,a			;aed8
	add a,a			;aed9
	ld b,a			;aeda
	add a,(ix+006h)		;aedb
	ld (ix+006h),a		;aede
	ld a,(ix+00fh)		;aee1
	sub b			;aee4
	ld (ix+00fh),a		;aee5
	ld a,(ix+024h)		;aee8
	sub c			;aeeb
	ld (ix+024h),a		;aeec
	ret nz			;aeef
	ld a,001h		;aef0
	ld (0ec28h),a		;aef2
	call 075d1h		;aef5
L_AEF8:
	ret			;aef8
L_AEF9:
	dec (ix+025h)		;aef9
	ret nz			;aefc
	ld (ix+025h),008h		;aefd
	ld e,(ix+004h)		;af01
	ld d,(ix+006h)		;af04
	ld bc,00000h		;af07
	ld a,00fh		;af0a
	call 0764fh		;af0c
	ret			;af0f
L_AF10:
	ld ix,0ec00h		;af10
	ld a,(0e441h)		;af14
	call 04093h		;af17

; ----------------------------------------------------------------------
; DATOS tabla_AF1A: 2 destinos del despachador p00:4093 (call en p05:AF17, el
;   indice en A): AF1E, AF58; lo leen p05:AF17 (4 bytes)
;   0xaf1a..0xaf1e  (4 bytes)
DATA_tabla_AF1A:
	defw 0af1eh,0af58h	; af1a  -> L_AF1E L_AF58

; ======================================================================
; CODIGO 0xaf1e..0xaf4e  (48 bytes)
; ======================================================================


L_AF1E:
	call 09e0bh		;af1e
	ret nz			;af21
	ld hl,0af4eh		;af22
	ld a,03fh		;af25
	call 09dc6h		;af27
	ld (ix+002h),008h		;af2a
	ld (ix+030h),008h		;af2e
	ld (ix+031h),000h		;af32
	ld (ix+034h),000h		;af36
	ld (ix+032h),0a0h		;af3a
	ld (ix+033h),000h		;af3e
	ld (ix+035h),002h		;af42
	ld a,080h		;af46
	ld (0e454h),a		;af48
	jp 09dc1h		;af4b

; ----------------------------------------------------------------------
; DATOS leido_AF4E: 10 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (10 bytes)
;   0xaf4e..0xaf58  (10 bytes)
DATA_leido_AF4E:
	defb 00dh,000h,008h,008h,000h,068h,0ffh,096h,0ffh,0ffh	; af4e  .....h....

; ======================================================================
; CODIGO 0xaf58..0xafd8  (128 bytes)
; ======================================================================


L_AF58:
	dec (ix+002h)		;af58
	ret nz			;af5b
	ld (ix+002h),008h		;af5c
	call L_AFE4		;af60
	ld a,(ix+031h)		;af63
	or a			;af66
	ld a,(ix+007h)		;af67
	jr z,L_AF88		;af6a
	cp 097h		;af6c
	call z,0590eh		;af6e
	cp 09ch		;af71
	call z,0590eh		;af73
	ld de,0fff8h		;af76
	cp 09fh		;af79
	jr z,L_AF9B		;af7b
	ld e,0f0h		;af7d
	cp 09eh		;af7f
	jr z,L_AF9B		;af81
	cp 099h		;af83
	jr z,L_AF9B		;af85
	ret			;af87
L_AF88:
	ld de,00008h		;af88
	cp 096h		;af8b
	jr z,L_AF9B		;af8d
	cp 09ah		;af8f
	jr z,L_AF98		;af91
	ld e,010h		;af93
	cp 09fh		;af95
	ret nz			;af97
L_AF98:
	call 0590eh		;af98
L_AF9B:
	ld l,(ix+005h)		;af9b
	ld h,(ix+006h)		;af9e
	add hl,de			;afa1
	ld (ix+005h),l		;afa2
	ld (ix+006h),h		;afa5
	ld e,(ix+032h)		;afa8
	ld d,(ix+033h)		;afab
	rst 20h			;afae
	ret nz			;afaf
	inc (ix+034h)		;afb0
	ld a,(ix+034h)		;afb3
	cp 004h		;afb6
	jp z,L_A0D4		;afb8
	dec a			;afbb
	add a,a			;afbc
	add a,a			;afbd
	ld hl,0afd8h		;afbe
	call 04089h		;afc1
	ld e,(hl)			;afc4
	inc hl			;afc5
	ld d,(hl)			;afc6
	inc hl			;afc7
	ld (ix+030h),e		;afc8
	ld (ix+031h),d		;afcb
	ld e,(hl)			;afce
	inc hl			;afcf
	ld d,(hl)			;afd0
	ld (ix+032h),e		;afd1
	ld (ix+033h),d		;afd4
	ret			;afd7

; ----------------------------------------------------------------------
; DATOS tabla_AFD8: tabla que se lee desde HL = 0xAFD8 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:AFBE (1 bytes)
;   0xafd8..0xafd9  (1 bytes)
DATA_tabla_AFD8:
	defb 0f8h	; afd8

; ----------------------------------------------------------------------
; DATOS leido_AFD9: 11 bytes que leen p05:AFC6, p05:AFCE, p05:AFD0, p05:AFC4
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p05:AFC6, p05:AFCE, p05:AFD0, p05:AFC4 (11 bytes)
;   0xafd9..0xafe4  (11 bytes)
DATA_leido_AFD9:
	defb 0ffh,0e0h,0ffh,008h,000h,040h,000h,0f8h,0ffh,060h,0ffh	; afd9  .....@...`.

; ======================================================================
; CODIGO 0xafe4..0xb00a  (38 bytes)
; ======================================================================


L_AFE4:
	ld a,(ix+031h)		;afe4
	or a			;afe7
	jr nz,L_AFEB		;afe8
	inc a			;afea
L_AFEB:
	add a,(ix+007h)		;afeb
	ld (ix+007h),a		;afee
	cp 0a0h		;aff1
	ld b,096h		;aff3
	jr nc,L_AFFC		;aff5
	cp 096h		;aff7
	ld b,09fh		;aff9
	ret nc			;affb
L_AFFC:
	ld (ix+007h),b		;affc
	ret			;afff
L_B000:
	ld ix,0ec00h		;b000
	ld a,(0e441h)		;b004
	call 04093h		;b007

; ----------------------------------------------------------------------
; DATOS tabla_B00A: 7 destinos del despachador p00:4093 (call en p05:B007, el
;   indice en A): B018, B03C, B083, A042, A087, A0AE, A0CD; lo leen p05:B007
;   (14 bytes)
;   0xb00a..0xb018  (14 bytes)
DATA_tabla_B00A:
	defw 0b018h,0b03ch,0b083h,0a042h,0a087h,0a0aeh,0a0cdh	; b00a

; ======================================================================
; CODIGO 0xb018..0xb032  (26 bytes)
; ======================================================================


L_B018:
	call 09e0bh		;b018
	ret nz			;b01b
	ld hl,0b032h		;b01c
	ld a,037h		;b01f
	call 09dc6h		;b021
	ld (ix+013h),040h		;b024
	ld (ix+014h),040h		;b028
	call L_B089		;b02c
	jp 09dc1h		;b02f

; ----------------------------------------------------------------------
; DATOS leido_B032: 10 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (10 bytes)
;   0xb032..0xb03c  (10 bytes)
DATA_leido_B032:
	defb 009h,000h,008h,018h,000h,0c0h,000h,05ah,0ffh,0ffh	; b032  .......Z..

; ======================================================================
; CODIGO 0xb03c..0xb098  (92 bytes)
; ======================================================================


L_B03C:
	ld c,078h		;b03c
	call 09e40h		;b03e
	ret nc			;b041
	ld a,(ix+003h)		;b042
	add a,038h		;b045
	ld e,a			;b047
	ld a,(ix+005h)		;b048
	add a,040h		;b04b
	ld d,a			;b04d
	call L_B079		;b04e
	ld a,d			;b051
	sub 008h		;b052
	ld d,a			;b054
	ld a,e			;b055
	add a,008h		;b056
	ld e,a			;b058
	call L_B079		;b059
	ld a,d			;b05c
	add a,010h		;b05d
	ld d,a			;b05f
	call L_B079		;b060
	ld a,d			;b063
	sub 008h		;b064
	ld d,a			;b066
	ld a,e			;b067
	add a,008h		;b068
	ld e,a			;b06a
	call L_B079		;b06b
	ld (ix+002h),001h		;b06e
	ld (ix+018h),001h		;b072
	jp 09dc1h		;b076
L_B079:
	push de			;b079
	ld b,000h		;b07a
	ld a,00ah		;b07c
	call 07bdeh		;b07e
	pop de			;b081
	ret			;b082
L_B083:
	call L_B092		;b083
	jp 09e32h		;b086
L_B089:
	ld (ix+023h),007h		;b089
	ld (ix+022h),010h		;b08d
	ret			;b091
L_B092:
	ld a,(ix+021h)		;b092
	call 04093h		;b095

; ----------------------------------------------------------------------
; DATOS tabla_B098: 4 destinos del despachador p00:4093 (call en p05:B095, el
;   indice en A): B0A0, B0AD, B11A, B136; lo leen p05:B095 (8 bytes)
;   0xb098..0xb0a0  (8 bytes)
DATA_tabla_B098:
	defw 0b0a0h,0b0adh,0b11ah,0b136h	; b098  -> L_B0A0 L_B0AD L_B11A L_B136

; ======================================================================
; CODIGO 0xb0a0..0xb0c7  (39 bytes)
; ======================================================================


L_B0A0:
	dec (ix+022h)		;b0a0
	ret nz			;b0a3
	ld (ix+022h),002h		;b0a4
	call 058f1h		;b0a8
	jr L_B0C3		;b0ab
L_B0AD:
	dec (ix+022h)		;b0ad
	ret nz			;b0b0
	ld (ix+022h),002h		;b0b1
	inc (ix+007h)		;b0b5
	dec (ix+023h)		;b0b8
	ret nz			;b0bb
	ld (ix+023h),00bh		;b0bc
	call L_B0CF		;b0c0
L_B0C3:
	inc (ix+021h)		;b0c3
	ret			;b0c6

; ----------------------------------------------------------------------
; DATOS tabla_B0C7: tabla que se lee desde HL = 0xB0C7 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:B0D7 (8 bytes)
;   0xb0c7..0xb0cf  (8 bytes)
DATA_tabla_B0C7:
	defb 002h,001h,002h,003h,000h,003h,002h,000h	; b0c7  ........

; ======================================================================
; CODIGO 0xb0cf..0xb0e4  (21 bytes)
; ======================================================================


L_B0CF:
	inc (ix+027h)		;b0cf
	ld a,(ix+027h)		;b0d2
	and 007h		;b0d5
	ld hl,0b0c7h		;b0d7
	call 04089h		;b0da
	ld a,(hl)			;b0dd
	ld (ix+026h),a		;b0de
	call 04093h		;b0e1

; ----------------------------------------------------------------------
; DATOS tabla_B0E4: 4 destinos del despachador p00:4093 (call en p05:B0E1, el
;   indice en A): B0EC, B0F3, B100, B10D; lo leen p05:B0E1 (8 bytes)
;   0xb0e4..0xb0ec  (8 bytes)
DATA_tabla_B0E4:
	defw 0b0ech,0b0f3h,0b100h,0b10dh	; b0e4  -> L_B0EC L_B0F3 L_B100 L_B10D

; ======================================================================
; CODIGO 0xb0ec..0xb16f  (131 bytes)
; ======================================================================


L_B0EC:
	ld a,(ix+004h)		;b0ec
	rla			;b0ef
	ret nc			;b0f0
	jr $-34		;b0f1
L_B0F3:
	ld a,(ix+004h)		;b0f3
	rla			;b0f6
	ret c			;b0f7
	ld a,(ix+003h)		;b0f8
	cp 058h		;b0fb
	ret c			;b0fd
	jr $-47		;b0fe
L_B100:
	ld a,(ix+006h)		;b100
	rla			;b103
	ret nc			;b104
	ld a,(ix+003h)		;b105
	cp 0c8h		;b108
	ret nc			;b10a
	jr $-60		;b10b
L_B10D:
	ld a,(ix+006h)		;b10d
	rla			;b110
	ret c			;b111
	ld a,(ix+005h)		;b112
	cp 0a8h		;b115
	ret c			;b117
	jr $-73		;b118
L_B11A:
	dec (ix+022h)		;b11a
	ret nz			;b11d
	ld (ix+022h),002h		;b11e
	call L_B167		;b122
	dec (ix+007h)		;b125
	dec (ix+023h)		;b128
	ret nz			;b12b
	ld (ix+022h),010h		;b12c
	ld (ix+024h),001h		;b130
	jr $-113		;b134
L_B136:
	call L_B14A		;b136
	dec (ix+022h)		;b139
	ret nz			;b13c
	ld (ix+022h),004h		;b13d
	ld (ix+023h),00bh		;b141
	ld (ix+021h),000h		;b145
	ret			;b149
L_B14A:
	dec (ix+024h)		;b14a
	ret nz			;b14d
	ld (ix+024h),008h		;b14e
	ld a,(ix+003h)		;b152
	add a,040h		;b155
	ld e,a			;b157
	ld a,(ix+005h)		;b158
	add a,040h		;b15b
	ld d,a			;b15d
	ld a,02ah		;b15e
	ld bc,00000h		;b160
	call 0764fh		;b163
	ret			;b166
L_B167:
	ld a,(ix+026h)		;b167
	and 003h		;b16a
	call 04093h		;b16c

; ----------------------------------------------------------------------
; DATOS tabla_B16F: 4 destinos del despachador p00:4093 (call en p05:B16C, el
;   indice en A): B177, B17C, B196, B19E; lo leen p05:B16C (8 bytes)
;   0xb16f..0xb177  (8 bytes)
DATA_tabla_B16F:
	defw 0b177h,0b17ch,0b196h,0b19eh	; b16f  -> L_B177 L_B17C L_B196 L_B19E

; ======================================================================
; CODIGO 0xb177..0xb281  (266 bytes)
; ======================================================================


L_B177:
	ld de,0fff8h		;b177
	jr L_B17F		;b17a
L_B17C:
	ld de,00008h		;b17c
L_B17F:
	ld l,(ix+003h)		;b17f
	ld h,(ix+004h)		;b182
	add hl,de			;b185
	ld de,00050h		;b186
	rst 20h			;b189
	jr z,L_B1BA		;b18a
	ld (ix+003h),l		;b18c
	ld (ix+004h),h		;b18f
	call L_B1BC		;b192
	ret			;b195
L_B196:
	ld de,0fff8h		;b196
	ld bc,0ff58h		;b199
	jr L_B1A4		;b19c
L_B19E:
	ld de,00008h		;b19e
	ld bc,000a8h		;b1a1
L_B1A4:
	ld l,(ix+005h)		;b1a4
	ld h,(ix+006h)		;b1a7
	add hl,de			;b1aa
	ld d,b			;b1ab
	ld e,c			;b1ac
	rst 20h			;b1ad
	jr z,L_B1BA		;b1ae
	ld (ix+005h),l		;b1b0
	ld (ix+006h),h		;b1b3
	call L_B1BC		;b1b6
	ret			;b1b9
L_B1BA:
	scf			;b1ba
	ret			;b1bb
L_B1BC:
	ld a,(ix+026h)		;b1bc
	dec a			;b1bf
	ld bc,00008h		;b1c0
	jr z,L_B1D4		;b1c3
	dec a			;b1c5
	ld bc,0f800h		;b1c6
	jr z,L_B1D4		;b1c9
	dec a			;b1cb
	ld bc,00800h		;b1cc
	jr z,L_B1D4		;b1cf
	ld bc,000f8h		;b1d1
L_B1D4:
	ld hl,0ed04h		;b1d4
	ld de,0001eh		;b1d7
	exx			;b1da
	ld b,008h		;b1db
L_B1DD:
	exx			;b1dd
	ld a,(hl)			;b1de
	add a,c			;b1df
	ld (hl),a			;b1e0
	inc hl			;b1e1
	inc hl			;b1e2
	ld a,(hl)			;b1e3
	add a,b			;b1e4
	ld (hl),a			;b1e5
	add hl,de			;b1e6
	exx			;b1e7
	djnz L_B1DD		;b1e8
	ret			;b1ea
L_B1EB:
	call L_B4E1		;b1eb
L_B1EE:
	ld (ix+036h),0e8h		;b1ee
	ld (ix+037h),00fh		;b1f2
	ld (ix+024h),020h		;b1f6
	ld (ix+025h),002h		;b1fa
	ld a,(ix+004h)		;b1fe
	ld (ix+034h),a		;b201
	ld a,(ix+006h)		;b204
	ld (ix+035h),a		;b207
	ret			;b20a
L_B20B:
	call L_B4FC		;b20b
	dec (ix+025h)		;b20e
	ret nz			;b211
	ld (ix+025h),002h		;b212
	ld a,(ix+030h)		;b216
	ld bc,0e0e8h		;b219
	cp b			;b21c
	jr nz,L_B222		;b21d
	ld bc,0d4e4h		;b21f
L_B222:
	ld (ix+030h),b		;b222
	ld (ix+036h),c		;b225
	ret			;b228
L_B229:
	ld a,010h		;b229
	ld (ix+008h),a		;b22b
	ld (ix+012h),000h		;b22e
	ld (ix+007h),00bh		;b232
	ld (ix+009h),002h		;b236
	ld (ix+00ah),002h		;b23a
	ret			;b23e
L_B23F:
	ld a,(0e445h)		;b23f
	or a			;b242
	jr z,L_B24A		;b243
	ld (ix+000h),000h		;b245
	ret			;b249
L_B24A:
	call L_B263		;b24a
	ld a,(ix+008h)		;b24d
	cp 010h		;b250
	ret z			;b252
	ld (ix+008h),010h		;b253
	push ix		;b257
	ld ix,0ec00h		;b259
	call 0484eh		;b25d
L_B260:
	pop ix		;b260
	ret			;b262
L_B263:
	ld a,(0ec00h)		;b263
	cp 009h		;b266
	ret nz			;b268
	ld a,(0ec07h)		;b269
	cp 05ah		;b26c
	ld a,080h		;b26e
	jr nc,L_B273		;b270
	xor a			;b272
L_B273:
	ld (ix+00dh),a		;b273
	ret			;b276
L_B277:
	ld ix,0ec00h		;b277
	ld a,(0e441h)		;b27b
	call 04093h		;b27e

; ----------------------------------------------------------------------
; DATOS tabla_B281: 7 destinos del despachador p00:4093 (call en p05:B27E, el
;   indice en A): B28F, B2BE, B2D2, A042, A087, A0AE, A0CD; lo leen p05:B27E
;   (14 bytes)
;   0xb281..0xb28f  (14 bytes)
DATA_tabla_B281:
	defw 0b28fh,0b2beh,0b2d2h,0a042h,0a087h,0a0aeh,0a0cdh	; b281

; ======================================================================
; CODIGO 0xb28f..0xb2b4  (37 bytes)
; ======================================================================


L_B28F:
	call 09e0bh		;b28f
	ret nz			;b292
	ld hl,0b2b4h		;b293
	ld a,01bh		;b296
	call 09dc6h		;b298
	ld hl,0ec13h		;b29b
	ld (hl),04ch		;b29e
	inc hl			;b2a0
	ld (hl),018h		;b2a1
	ld a,001h		;b2a3
	ld (0e454h),a		;b2a5
	ld (ix+012h),020h		;b2a8
	call L_B2DB		;b2ac
L_B2AF:
	ld hl,0e441h		;b2af
	inc (hl)			;b2b2
	ret			;b2b3

; ----------------------------------------------------------------------
; DATOS leido_B2B4: 10 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (10 bytes)
;   0xb2b4..0xb2be  (10 bytes)
DATA_leido_B2B4:
	defb 008h,000h,008h,020h,000h,0f8h,000h,044h,0ffh,0ffh	; b2b4  ... ...D..

; ======================================================================
; CODIGO 0xb2be..0xb327  (105 bytes)
; ======================================================================


L_B2BE:
	ld c,0c0h		;b2be
	call 09e40h		;b2c0
	jr c,L_B2C8		;b2c3
	jp L_B2DB		;b2c5
L_B2C8:
	ld (ix+002h),001h		;b2c8
	ld (ix+018h),001h		;b2cc
	jr $-33		;b2d0
L_B2D2:
	call L_B30D		;b2d2
	call L_B2DB		;b2d5
	jp 09e32h		;b2d8
L_B2DB:
	ld a,(ix+012h)		;b2db
	cp 008h		;b2de
	jr nc,L_B306		;b2e0
	ld a,(ix+007h)		;b2e2
	cp 046h		;b2e5
	jr nc,L_B306		;b2e7
	and 001h		;b2e9
	add a,046h		;b2eb
	ld (ix+007h),a		;b2ed
	ld a,(ix+003h)		;b2f0
	add a,030h		;b2f3
	ld e,a			;b2f5
	ld a,(ix+005h)		;b2f6
	add a,018h		;b2f9
	ld d,a			;b2fb
	push ix		;b2fc
	call 0678dh		;b2fe
	pop ix		;b301
	call 05884h		;b303
L_B306:
	ld a,058h		;b306
	ld b,038h		;b308
	jp 09e67h		;b30a
L_B30D:
	call L_B321		;b30d
	ld a,(ix+001h)		;b310
	dec a			;b313
	jr z,$+121		;b314
	dec (ix+002h)		;b316
	ret nz			;b319
	call L_B3BD		;b31a
	inc (ix+001h)		;b31d
	ret			;b320
L_B321:
	ld a,(ix+01fh)		;b321
	call 04093h		;b324

; ----------------------------------------------------------------------
; DATOS tabla_B327: 3 destinos del despachador p00:4093 (call en p05:B324, el
;   indice en A): B32D, B36C, B380; lo leen p05:B324 (6 bytes)
;   0xb327..0xb32d  (6 bytes)
DATA_tabla_B327:
	defw 0b32dh,0b36ch,0b380h	; b327  -> L_B32D L_B36C L_B380

; ======================================================================
; CODIGO 0xb32d..0xb41b  (238 bytes)
; ======================================================================


L_B32D:
	ld hl,(0ec03h)		;b32d
	ld de,00030h		;b330
	add hl,de			;b333
	ld a,h			;b334
	and a			;b335
	ret nz			;b336
	ld a,l			;b337
	cp 0b0h		;b338
	ret nc			;b33a
	ld e,a			;b33b
	ld d,0a8h		;b33c
	push ix		;b33e
	ld b,000h		;b340
	ld a,031h		;b342
	push de			;b344
	call 04833h		;b345
	pop de			;b348
	push de			;b349
	ld b,001h		;b34a
	ld a,031h		;b34c
	call 04833h		;b34e
	pop de			;b351
	ld b,002h		;b352
	ld a,031h		;b354
	call 04833h		;b356
	pop ix		;b359
	ld (ix+018h),030h		;b35b
	inc (ix+007h)		;b35f
	xor a			;b362
	ld (0e454h),a		;b363
	inc (ix+01fh)		;b366
	jp 05894h		;b369
L_B36C:
	dec (ix+018h)		;b36c
	ret nz			;b36f
	ld (ix+018h),030h		;b370
	dec (ix+007h)		;b374
	ld a,001h		;b377
	ld (0e454h),a		;b379
	inc (ix+01fh)		;b37c
	ret			;b37f
L_B380:
	dec (ix+018h)		;b380
	ret nz			;b383
	ld (ix+018h),030h		;b384
	ld (ix+01fh),000h		;b388
	ret			;b38c
L_B38D:
	call 09f11h		;b38d
	jr c,L_B399		;b390
	call L_B3A5		;b392
	jp c,09f9ch		;b395
	ret			;b398
L_B399:
	ld (ix+002h),010h		;b399
	dec (ix+001h)		;b39d
	ld (ix+016h),000h		;b3a0
	ret			;b3a4
L_B3A5:
	ld hl,(0ec03h)		;b3a5
	bit 0,(ix+015h)		;b3a8
	jr nz,L_B3B6		;b3ac
	ld a,h			;b3ae
	and a			;b3af
	ret m			;b3b0
	ld a,l			;b3b1
	cp 048h		;b3b2
	ccf			;b3b4
	ret			;b3b5
L_B3B6:
	ld a,h			;b3b6
	and a			;b3b7
	ret z			;b3b8
	ld a,l			;b3b9
	cp 0c0h		;b3ba
	ret			;b3bc
L_B3BD:
	ld a,(ix+004h)		;b3bd
	and a			;b3c0
	jr z,L_B3CC		;b3c1
	ld a,002h		;b3c3
	jp m,09edfh		;b3c5
	dec a			;b3c8
	jp 09edfh		;b3c9
L_B3CC:
	ld a,(ix+003h)		;b3cc
	add a,020h		;b3cf
	ld hl,0e604h		;b3d1
	cp (hl)			;b3d4
	ld a,002h		;b3d5
	jp c,09edfh		;b3d7
	dec a			;b3da
	jp 09edfh		;b3db
L_B3DE:
	ld (ix+009h),004h		;b3de
	ld (ix+00ah),003h		;b3e2
	ld (ix+007h),08ah		;b3e6
	ld (ix+008h),005h		;b3ea
	xor a			;b3ee
	ld (ix+00dh),a		;b3ef
	ld (ix+017h),a		;b3f2
	ld (ix+002h),002h		;b3f5
	ld a,r		;b3f9
	and 01fh		;b3fb
	ld (ix+00ch),a		;b3fd
	ld a,(ix+00bh)		;b400
	ld b,a			;b403
	add a,a			;b404
	add a,b			;b405
	ld hl,0b41bh		;b406
	call 04089h		;b409
L_B40C:
	ld a,(hl)			;b40c
	inc hl			;b40d
	ld (ix+014h),a		;b40e
	ld a,(hl)			;b411
	inc hl			;b412
	ld (ix+015h),a		;b413
	ld a,(hl)			;b416
	ld (ix+016h),a		;b417
	ret			;b41a

; ----------------------------------------------------------------------
; DATOS tabla_B41B: tabla que se lee desde HL = 0xB41B con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:B406 (1 bytes)
;   0xb41b..0xb41c  (1 bytes)
DATA_tabla_B41B:
	defb 0f8h	; b41b

; ----------------------------------------------------------------------
; DATOS leido_B41C: 8 bytes que leen p05:B411, p05:B416, p05:B40C al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p05:B411, p05:B416, p05:B40C
;   (8 bytes)
;   0xb41c..0xb424  (8 bytes)
DATA_leido_B41C:
	defb 010h,000h,000h,000h,068h,008h,090h,000h	; b41c  ....h...

; ======================================================================
; CODIGO 0xb424..0xb430  (12 bytes)
; ======================================================================


L_B424:
	call L_B47A		;b424
	call L_B499		;b427
	ld a,(ix+001h)		;b42a
	call 04093h		;b42d

; ----------------------------------------------------------------------
; DATOS tabla_B430: 3 destinos del despachador p00:4093 (call en p05:B42D, el
;   indice en A): B436, B468, B479; lo leen p05:B42D (6 bytes)
;   0xb430..0xb436  (6 bytes)
DATA_tabla_B430:
	defw 0b436h,0b468h,0b479h	; b430  -> L_B436 L_B468 L_B479

; ======================================================================
; CODIGO 0xb436..0xb49f  (105 bytes)
; ======================================================================


L_B436:
	dec (ix+002h)		;b436
	ret nz			;b439
	ld (ix+002h),002h		;b43a
	ld a,(ix+014h)		;b43e
	add a,(ix+004h)		;b441
	ld (ix+004h),a		;b444
	sub (ix+015h)		;b447
	jr nc,L_B44E		;b44a
	neg		;b44c
L_B44E:
	cp 008h		;b44e
	jr c,L_B464		;b450
	ld a,0f8h		;b452
	add a,(ix+006h)		;b454
	ld (ix+006h),a		;b457
	sub (ix+016h)		;b45a
	jr nc,L_B461		;b45d
	neg		;b45f
L_B461:
	cp 008h		;b461
	ret nc			;b463
L_B464:
	inc (ix+001h)		;b464
	ret			;b467
L_B468:
	ld de,0fe00h		;b468
	ld h,(ix+006h)		;b46b
	ld l,(ix+005h)		;b46e
	add hl,de			;b471
	ld (ix+006h),h		;b472
	ld (ix+005h),l		;b475
	ret			;b478
L_B479:
	ret			;b479
L_B47A:
	ld a,(ix+007h)		;b47a
	and 001h		;b47d
	ld c,a			;b47f
	ld a,(ix+006h)		;b480
	add a,00ch		;b483
	ld b,a			;b485
	ld a,(0e606h)		;b486
	cp b			;b489
	ld a,08ah		;b48a
	jr c,L_B490		;b48c
	ld a,08ch		;b48e
L_B490:
	add a,c			;b490
	cp (ix+007h)		;b491
	ret z			;b494
	ld (ix+007h),a		;b495
	ret			;b498
L_B499:
	ld a,(ix+017h)		;b499
	call 04093h		;b49c

; ----------------------------------------------------------------------
; DATOS tabla_B49F: 2 destinos del despachador p00:4093 (call en p05:B49C, el
;   indice en A): B4A3, B4D2; lo leen p05:B49C (4 bytes)
;   0xb49f..0xb4a3  (4 bytes)
DATA_tabla_B49F:
	defw 0b4a3h,0b4d2h	; b49f  -> L_B4A3 L_B4D2

; ======================================================================
; CODIGO 0xb4a3..0xb4f6  (83 bytes)
; ======================================================================


L_B4A3:
	dec (ix+00ch)		;b4a3
	ret nz			;b4a6
	inc (ix+007h)		;b4a7
	inc (ix+017h)		;b4aa
	ld (ix+00ch),010h		;b4ad
	ld a,(ix+007h)		;b4b1
	cp 08ch		;b4b4
	ld bc,0f810h		;b4b6
	jr c,L_B4BE		;b4b9
	ld bc,01010h		;b4bb
L_B4BE:
	ld a,(ix+004h)		;b4be
	add a,c			;b4c1
	ld e,a			;b4c2
	ld a,(ix+006h)		;b4c3
	add a,b			;b4c6
	ld d,a			;b4c7
	ld b,000h		;b4c8
	ld c,000h		;b4ca
	ld a,043h		;b4cc
	call 0764fh		;b4ce
	ret			;b4d1
L_B4D2:
	dec (ix+00ch)		;b4d2
	ret nz			;b4d5
	dec (ix+007h)		;b4d6
	dec (ix+017h)		;b4d9
	ld (ix+00ch),030h		;b4dc
	ret			;b4e0
L_B4E1:
	ld a,040h		;b4e1
	call 07865h		;b4e3
L_B4E6:
	ld (ix+024h),020h		;b4e6
	ld (ix+025h),000h		;b4ea
	ld (ix+015h),020h		;b4ee
	call L_B55E		;b4f2
	ret			;b4f5

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb4f6..0xb4fc  (6 bytes)
DATA_B4F6:
	defb 0cdh,00ah,0b5h,0cdh,058h,0b5h	; b4f6

; ======================================================================
; CODIGO 0xb4fc..0xb50a  (14 bytes)
; ======================================================================


L_B4FC:
	dec (ix+024h)		;b4fc
	ret nz			;b4ff
	ld (ix+024h),010h		;b500
	ld a,040h		;b504
	call 07865h		;b506
L_B509:
	ret			;b509

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb50a..0xb55e  (84 bytes)
DATA_B50A:
	defb 0ddh,07eh,025h,0cdh,093h,040h,014h,0b5h,044h,0b5h,0ddh,035h,015h,0c0h,0ddh,036h	; b50a  .~%..@..D..5...6
	defb 015h,008h,0ddh,07eh,030h,0c6h,004h,0ddh,077h,030h,0ddh,07eh,030h,0feh,0b8h,03eh	; b51a  ...~0...w0.~0..>
	defb 00ch,030h,001h,0afh,0ddh,086h,006h,057h,0ddh,07eh,004h,0c6h,00ch,05fh,03eh,045h	; b52a  .0.....W.~..._>E
	defb 001h,000h,000h,0cdh,04fh,076h,0ddh,034h,025h,0c9h,0ddh,035h,015h,0c0h,0ddh,036h	; b53a  ....Ov.4%..5...6
	defb 015h,018h,0ddh,07eh,030h,0d6h,004h,0ddh,077h,030h,0ddh,035h,025h,0c9h,03ah,003h	; b54a  ...~0...w0.5%.:.
	defb 0e3h,0e6h,007h,0c0h	; b55a

; ======================================================================
; CODIGO 0xb55e..0xb57b  (29 bytes)
; ======================================================================


L_B55E:
	ld a,(ix+030h)		;b55e
	and 004h		;b561
	ld c,a			;b563
	ld a,(0e606h)		;b564
	cp (ix+006h)		;b567
	ld a,0b0h		;b56a
	jr c,L_B570		;b56c
	ld a,0b8h		;b56e
L_B570:
	add a,c			;b570
	ld (ix+030h),a		;b571
	ret			;b574
L_B575:
	ld a,(0e441h)		;b575
	call 04093h		;b578

; ----------------------------------------------------------------------
; DATOS tabla_B57B: 7 destinos del despachador p00:4093 (call en p05:B578, el
;   indice en A): B589, B5B3, B5CB, A042, A087, A0AE, A0CD; lo leen p05:B578
;   (14 bytes)
;   0xb57b..0xb589  (14 bytes)
DATA_tabla_B57B:
	defw 0b589h,0b5b3h,0b5cbh,0a042h,0a087h,0a0aeh,0a0cdh	; b57b

; ======================================================================
; CODIGO 0xb589..0xb5a9  (32 bytes)
; ======================================================================


L_B589:
	call 09e0bh		;b589
	ret nz			;b58c
	ld hl,0b5a9h		;b58d
	ld a,02bh		;b590
	call 09dc6h		;b592
	call L_B5D4		;b595
	ld (ix+030h),060h		;b598
	ld (ix+013h),028h		;b59c
	ld (ix+014h),008h		;b5a0
L_B5A4:
	ld hl,0e441h		;b5a4
	inc (hl)			;b5a7
	ret			;b5a8

; ----------------------------------------------------------------------
; DATOS leido_B5A9: 10 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (10 bytes)
;   0xb5a9..0xb5b3  (10 bytes)
DATA_leido_B5A9:
	defb 00fh,000h,008h,020h,000h,0f8h,000h,0ach,0aeh,0bbh	; b5a9  ... ......

; ======================================================================
; CODIGO 0xb5b3..0xb6bb  (264 bytes)
; ======================================================================


L_B5B3:
	ld c,0a8h		;b5b3
	call 09e40h		;b5b5
	jr c,L_B5BD		;b5b8
	jp L_B5D4		;b5ba
L_B5BD:
	xor a			;b5bd
	ld (0e454h),a		;b5be
	ld (ix+002h),001h		;b5c1
	ld (ix+018h),001h		;b5c5
	jr $-37		;b5c9
L_B5CB:
	call L_B5E2		;b5cb
	call L_B5D4		;b5ce
	jp 09e32h		;b5d1
L_B5D4:
	ld a,028h		;b5d4
	ld bc,01038h		;b5d6
	call 09e67h		;b5d9
	ld bc,004aeh		;b5dc
	jp 09e96h		;b5df
L_B5E2:
	call L_B647		;b5e2
	ld a,(ix+001h)		;b5e5
	dec a			;b5e8
	jr z,L_B5F6		;b5e9
	dec (ix+002h)		;b5eb
	ret nz			;b5ee
	call L_B626		;b5ef
	inc (ix+001h)		;b5f2
	ret			;b5f5
L_B5F6:
	call 09f11h		;b5f6
	jr c,L_B602		;b5f9
	call L_B60E		;b5fb
	jp c,09f9ch		;b5fe
	ret			;b601
L_B602:
	ld (ix+002h),010h		;b602
	dec (ix+001h)		;b606
	ld (ix+016h),000h		;b609
	ret			;b60d
L_B60E:
	ld hl,(0ec03h)		;b60e
	bit 0,(ix+015h)		;b611
	jr nz,L_B61F		;b615
	ld a,h			;b617
	and a			;b618
	ret m			;b619
	ld a,l			;b61a
	cp 060h		;b61b
	ccf			;b61d
	ret			;b61e
L_B61F:
	ld a,h			;b61f
	and a			;b620
	ret z			;b621
	ld a,l			;b622
	cp 0d8h		;b623
	ret			;b625
L_B626:
	ld a,(ix+004h)		;b626
	and a			;b629
	jr z,L_B635		;b62a
	ld a,002h		;b62c
	jp m,09edfh		;b62e
	dec a			;b631
	jp 09edfh		;b632
L_B635:
	ld a,(ix+003h)		;b635
	add a,020h		;b638
	ld hl,0e604h		;b63a
	cp (hl)			;b63d
	ld a,002h		;b63e
	jp c,09edfh		;b640
	dec a			;b643
	jp 09edfh		;b644
L_B647:
	dec (ix+030h)		;b647
	ret nz			;b64a
	ld (ix+030h),060h		;b64b
	ld a,(ix+003h)		;b64f
	add a,020h		;b652
	ld e,a			;b654
	ld a,(ix+005h)		;b655
	sub 008h		;b658
	ld d,a			;b65a
	ld bc,00000h		;b65b
	ld a,049h		;b65e
	push de			;b660
	call 07647h		;b661
	pop de			;b664
	ld a,e			;b665
	add a,008h		;b666
	ld e,a			;b668
	ld b,001h		;b669
	ld c,000h		;b66b
	ld a,049h		;b66d
	push de			;b66f
	call 07647h		;b670
	pop de			;b673
	ld a,e			;b674
	add a,008h		;b675
	ld e,a			;b677
	ld b,002h		;b678
	ld c,000h		;b67a
	ld a,049h		;b67c
	push de			;b67e
	call 07647h		;b67f
	pop de			;b682
	ld a,e			;b683
	add a,008h		;b684
	ld e,a			;b686
	ld b,003h		;b687
	ld c,000h		;b689
	ld a,049h		;b68b
	push de			;b68d
	call 07647h		;b68e
	pop de			;b691
	jp 058d9h		;b692
L_B695:
	ld a,(ix+01fh)		;b695
	ld hl,0b6bbh		;b698
	call 04a6eh		;b69b
L_B69E:
	ld (ix+024h),a		;b69e
	ld (ix+002h),001h		;b6a1
	ld (ix+013h),001h		;b6a5
	ld (ix+014h),001h		;b6a9
	ld (ix+010h),011h		;b6ad
L_B6B1:
	ld a,(ix+024h)		;b6b1
	add a,a			;b6b4
	add a,a			;b6b5
	add a,a			;b6b6
	ld (ix+00fh),a		;b6b7
	ret			;b6ba

; ----------------------------------------------------------------------
; DATOS tabla_B6BB: tabla que se lee desde HL = 0xB6BB con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:B698 (4 bytes)
;   0xb6bb..0xb6bf  (4 bytes)
DATA_tabla_B6BB:
	defb 001h,002h,002h,001h	; b6bb

; ======================================================================
; CODIGO 0xb6bf..0xb6f7  (56 bytes)
; ======================================================================


L_B6BF:
	call L_B6C4		;b6bf
	jr $-17		;b6c2
L_B6C4:
	ld a,(ix+001h)		;b6c4
	dec a			;b6c7
	jr z,$+51		;b6c8
	ld a,(ix+01fh)		;b6ca
	ld hl,0b6f7h		;b6cd
	call 04089h		;b6d0
L_B6D3:
	ld b,(hl)			;b6d3
	ld a,(0ec03h)		;b6d4
	add a,b			;b6d7
	ld (ix+004h),a		;b6d8
	dec (ix+002h)		;b6db
	ret nz			;b6de
	ld (ix+002h),001h		;b6df
	inc (ix+024h)		;b6e3
	ld a,(ix+006h)		;b6e6
	sub 008h		;b6e9
	ld (ix+006h),a		;b6eb
	ret nz			;b6ee
	ld (ix+006h),004h		;b6ef
	inc (ix+001h)		;b6f3
	ret			;b6f6

; ----------------------------------------------------------------------
; DATOS tabla_B6F7: tabla que se lee desde HL = 0xB6F7 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:B6CD (4 bytes)
;   0xb6f7..0xb6fb  (4 bytes)
DATA_tabla_B6F7:
	defb 020h,028h,030h,038h	; b6f7

; ======================================================================
; CODIGO 0xb6fb..0xb729  (46 bytes)
; ======================================================================


L_B6FB:
	dec (ix+002h)		;b6fb
	ret nz			;b6fe
	ld (ix+002h),001h		;b6ff
	dec (ix+024h)		;b703
	ret nz			;b706
	jp 075d1h		;b707
L_B70A:
	ld l,(ix+004h)		;b70a
	ld h,(ix+006h)		;b70d
	call 04a46h		;b710
	ld a,(ix+024h)		;b713
	dec a			;b716
	jr z,L_B71C		;b717
	call L_B72C		;b719
L_B71C:
	ld a,(ix+01fh)		;b71c
	cp 002h		;b71f
	ld a,0e1h		;b721
	jr c,L_B727		;b723
	ld a,0efh		;b725
L_B727:
	ld (hl),a			;b727
	ret			;b728

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb729..0xb72c  (3 bytes)
DATA_B729:
	defb 0ddh,07eh,024h	; b729

; ======================================================================
; CODIGO 0xb72c..0xb755  (41 bytes)
; ======================================================================


L_B72C:
	ld b,a			;b72c
	ld a,(ix+01fh)		;b72d
	cp 002h		;b730
	ld a,0e0h		;b732
	jr c,L_B738		;b734
	ld a,0eeh		;b736
L_B738:
	ld (hl),a			;b738
	inc hl			;b739
	djnz L_B738		;b73a
	ret			;b73c
L_B73D:
	ld l,(ix+004h)		;b73d
	ld h,(ix+006h)		;b740
	call 04a46h		;b743
	ld b,(ix+024h)		;b746
L_B749:
	ld (hl),000h		;b749
	inc hl			;b74b
	djnz L_B749		;b74c
	ret			;b74e
L_B74F:
	ld a,(0e441h)		;b74f
	call 04093h		;b752

; ----------------------------------------------------------------------
; DATOS tabla_B755: 7 destinos del despachador p00:4093 (call en p05:B752, el
;   indice en A): B763, B7D4, B7F2, B9E4, B9FE, BA0F, BA58; lo leen p05:B752
;   (14 bytes)
;   0xb755..0xb763  (14 bytes)
DATA_tabla_B755:
	defw 0b763h,0b7d4h,0b7f2h,0b9e4h,0b9feh,0ba0fh,0ba58h	; b755

; ======================================================================
; CODIGO 0xb763..0xb7ca  (103 bytes)
; ======================================================================


L_B763:
	call 09e0bh		;b763
	ret nz			;b766
	ld hl,0b7cah		;b767
	ld a,043h		;b76a
	call 09dc6h		;b76c
	call L_B7FB		;b76f
	ld (ix+013h),038h		;b772
	ld (ix+014h),068h		;b776
	ld (ix+015h),001h		;b77a
	ld (ix+022h),0ffh		;b77e
	ld (ix+036h),008h		;b782
	ld (ix+020h),001h		;b786
	ld (ix+027h),0b9h		;b78a
	ld (ix+028h),0d2h		;b78e
	ld (ix+029h),0d2h		;b792
	ld (ix+040h),001h		;b796
	ld (ix+047h),0d2h		;b79a
	ld (ix+048h),0d2h		;b79e
	ld (ix+049h),0d2h		;b7a2
	ld (ix+060h),001h		;b7a6
	ld (ix+067h),0d2h		;b7aa
	ld (ix+068h),0ffh		;b7ae
	ld (ix+069h),0ffh		;b7b2
	ld (ix+015h),003h		;b7b6
	ld de,0ec71h		;b7ba
	ld hl,0ec70h		;b7bd
	ld bc,0000bh		;b7c0
	ld (hl),000h		;b7c3
	ldir		;b7c5
	jp L_B5A4		;b7c7

; ----------------------------------------------------------------------
; DATOS leido_B7CA: 10 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (10 bytes)
;   0xb7ca..0xb7d4  (10 bytes)
DATA_leido_B7CA:
	defb 011h,000h,008h,008h,000h,000h,001h,0adh,0c1h,0ffh	; b7ca  ..........

; ======================================================================
; CODIGO 0xb7d4..0xb97f  (427 bytes)
; ======================================================================


L_B7D4:
	call L_B8B6		;b7d4
	call L_B983		;b7d7
	ld c,018h		;b7da
	call 09e40h		;b7dc
	push af			;b7df
	call L_B924		;b7e0
	pop af			;b7e3
	jp nc,L_B7FB		;b7e4
	xor a			;b7e7
	ld (0e454h),a		;b7e8
	ld (ix+015h),001h		;b7eb
	jp L_B5A4		;b7ef
L_B7F2:
	call L_B92B		;b7f2
	call L_B7FB		;b7f5
	jp 09e32h		;b7f8
L_B7FB:
	ld a,038h		;b7fb
	ld bc,068a8h		;b7fd
	call 09e67h		;b800
	ld l,(ix+00eh)		;b803
	ld h,(ix+00fh)		;b806
	ld de,00008h		;b809
	or a			;b80c
	sbc hl,de		;b80d
	ld (ix+00eh),l		;b80f
	ld (ix+00fh),h		;b812
	ld bc,004c1h		;b815
	call 09e96h		;b818
	call L_B8B6		;b81b
	ld l,(ix+003h)		;b81e
	ld h,(ix+004h)		;b821
	ld (0ef80h),hl		;b824
	ld de,00008h		;b827
	add hl,de			;b82a
	ld (ix+023h),l		;b82b
	ld (ix+024h),h		;b82e
	ld e,090h		;b831
	add hl,de			;b833
	ld (ix+02ah),l		;b834
	ld (ix+02bh),h		;b837
	ld hl,(0ef80h)		;b83a
	ld e,010h		;b83d
	add hl,de			;b83f
	ld (ix+02eh),l		;b840
	ld (ix+02fh),h		;b843
	ld hl,(0ef80h)		;b846
	ld e,028h		;b849
	add hl,de			;b84b
	ld (ix+043h),l		;b84c
	ld (ix+044h),h		;b84f
	ld hl,(0ef80h)		;b852
	ld e,048h		;b855
	add hl,de			;b857
	ld (ix+04ah),l		;b858
	ld (ix+04bh),h		;b85b
	ld hl,(0ef80h)		;b85e
	ld e,078h		;b861
	add hl,de			;b863
	ld (ix+04eh),l		;b864
	ld (ix+04fh),h		;b867
	ld e,010h		;b86a
	add hl,de			;b86c
	ld (ix+063h),l		;b86d
	ld (ix+064h),h		;b870
	ld l,(ix+005h)		;b873
	ld h,(ix+006h)		;b876
	ld (0ef80h),hl		;b879
	ld e,068h		;b87c
	add hl,de			;b87e
	ld (ix+025h),l		;b87f
	ld (ix+026h),h		;b882
	ld hl,(0ef80h)		;b885
	ld e,048h		;b888
	add hl,de			;b88a
	ld (ix+02ch),l		;b88b
	ld (ix+02dh),h		;b88e
	ld hl,(0ef80h)		;b891
	inc h			;b894
	ld (ix+030h),l		;b895
	ld (ix+031h),h		;b898
	ld (ix+045h),l		;b89b
	ld (ix+046h),h		;b89e
	ex de,hl			;b8a1
	ld hl,0ec4ch		;b8a2
	ld b,002h		;b8a5
L_B8A7:
	ld (hl),e			;b8a7
	inc hl			;b8a8
	ld (hl),d			;b8a9
	inc hl			;b8aa
	inc hl			;b8ab
	inc hl			;b8ac
	djnz L_B8A7		;b8ad
	ld (ix+065h),e		;b8af
	ld (ix+066h),d		;b8b2
	ret			;b8b5
L_B8B6:
	ld a,(ix+035h)		;b8b6
	or a			;b8b9
	jr nz,L_B8FB		;b8ba
	dec (ix+002h)		;b8bc
	ret nz			;b8bf
	ld (ix+002h),001h		;b8c0
	dec (ix+036h)		;b8c4
	jr z,L_B8E6		;b8c7
	ld hl,0ec27h		;b8c9
	ld bc,001b9h		;b8cc
	call L_B91A		;b8cf
	ld b,002h		;b8d2
	call L_B918		;b8d4
	ld hl,0ec47h		;b8d7
	call L_B916		;b8da
	ld b,001h		;b8dd
	ld hl,0ec67h		;b8df
	call L_B918		;b8e2
	ret			;b8e5
L_B8E6:
	ld (ix+036h),024h		;b8e6
	ld (ix+035h),001h		;b8ea
	ld (ix+020h),000h		;b8ee
	ld (ix+040h),000h		;b8f2
	ld (ix+060h),000h		;b8f6
	ret			;b8fa
L_B8FB:
	dec (ix+036h)		;b8fb
	ret nz			;b8fe
	ld (ix+036h),010h		;b8ff
	ld (ix+020h),001h		;b903
	ld (ix+040h),001h		;b907
	ld (ix+060h),001h		;b90b
	ld (ix+035h),000h		;b90f
	jp 058e1h		;b913
L_B916:
	ld b,003h		;b916
L_B918:
	ld c,0d2h		;b918
L_B91A:
	ld a,(hl)			;b91a
	cp c			;b91b
	jr nz,L_B91F		;b91c
	inc c			;b91e
L_B91F:
	ld (hl),c			;b91f
	inc hl			;b920
	djnz L_B91A		;b921
	ret			;b923
L_B924:
	ld a,(0e456h)		;b924
	or a			;b927
	ret z			;b928
	jr L_B93C		;b929
L_B92B:
	ld hl,0ec18h		;b92b
	ld (hl),000h		;b92e
	ld a,(0e303h)		;b930
	and 007h		;b933
	ret nz			;b935
	inc (hl)			;b936
	call 09fa7h		;b937
	jr c,L_B96C		;b93a
L_B93C:
	ld a,(ix+015h)		;b93c
	dec a			;b93f
	ld bc,000f8h		;b940
	jr z,L_B955		;b943
	dec a			;b945
	ld bc,00008h		;b946
	jr z,L_B955		;b949
	dec a			;b94b
	ld bc,0f800h		;b94c
	jr z,L_B955		;b94f
	dec a			;b951
	ld bc,00800h		;b952
L_B955:
	ld hl,0e804h		;b955
	ld de,0003eh		;b958
	exx			;b95b
	ld b,00ch		;b95c
L_B95E:
	exx			;b95e
	ld a,(hl)			;b95f
	add a,c			;b960
	ld (hl),a			;b961
	inc hl			;b962
	inc hl			;b963
	ld a,(hl)			;b964
	add a,b			;b965
	ld (hl),a			;b966
	add hl,de			;b967
	exx			;b968
	djnz L_B95E		;b969
	ret			;b96b
L_B96C:
	inc (ix+022h)		;b96c
	ld a,(ix+022h)		;b96f
	and 003h		;b972
	ld hl,0b97fh		;b974
	call 04089h		;b977
	ld a,(hl)			;b97a
	ld (ix+015h),a		;b97b
	ret			;b97e

; ----------------------------------------------------------------------
; DATOS tabla_B97F: tabla que se lee desde HL = 0xB97F con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:B974 (4 bytes)
;   0xb97f..0xb983  (4 bytes)
DATA_tabla_B97F:
	defb 001h,004h,002h,003h	; b97f

; ======================================================================
; CODIGO 0xb983..0xba4e  (203 bytes)
; ======================================================================


L_B983:
	ld hl,0ba7dh		;b983
	ld b,00ch		;b986
L_B988:
	ld a,(hl)			;b988
	inc hl			;b989
	push hl			;b98a
	ld c,a			;b98b
	and 0f8h		;b98c
	ld e,a			;b98e
	ld a,c			;b98f
	and 001h		;b990
	ld c,a			;b992
	ld d,000h		;b993
	ld l,(ix+003h)		;b995
	ld h,(ix+004h)		;b998
	add hl,de			;b99b
	ld a,h			;b99c
	or a			;b99d
	ld a,l			;b99e
	ex af,af'			;b99f
	pop hl			;b9a0
	jr nz,L_B9BE		;b9a1
	ld a,(hl)			;b9a3
	inc hl			;b9a4
	push hl			;b9a5
	and 0f8h		;b9a6
	ld e,a			;b9a8
	ld l,(ix+005h)		;b9a9
	ld h,(ix+006h)		;b9ac
	add hl,de			;b9af
	ld a,h			;b9b0
	or a			;b9b1
	ld a,l			;b9b2
	pop hl			;b9b3
	jr nz,L_B9BF		;b9b4
	ld d,a			;b9b6
	ex af,af'			;b9b7
	ld e,a			;b9b8
	call L_B9C2		;b9b9
	jr L_B9BF		;b9bc
L_B9BE:
	inc hl			;b9be
L_B9BF:
	djnz L_B988		;b9bf
	ret			;b9c1
L_B9C2:
	ld a,b			;b9c2
	push hl			;b9c3
	ld hl,0ec70h		;b9c4
	call 04089h		;b9c7
	ld a,(hl)			;b9ca
	or a			;b9cb
	jr nz,L_B9E2		;b9cc
	ld (hl),001h		;b9ce
	pop hl			;b9d0
	push hl			;b9d1
	push bc			;b9d2
	call L_B9D9		;b9d3
	pop bc			;b9d6
	pop hl			;b9d7
	ret			;b9d8
L_B9D9:
	ld b,c			;b9d9
	ld c,001h		;b9da
	ld a,04ah		;b9dc
	call 0764fh		;b9de
	ret			;b9e1
L_B9E2:
	pop hl			;b9e2
	ret			;b9e3
L_B9E4:
	ld (ix+009h),0d4h		;b9e4
	ld (ix+002h),010h		;b9e8
	ld (ix+020h),000h		;b9ec
	ld (ix+040h),000h		;b9f0
	ld (ix+060h),000h		;b9f4
	call L_B7FB		;b9f8
	jp L_B5A4		;b9fb
L_B9FE:
	dec (ix+002h)		;b9fe
	ret nz			;ba01
	inc (ix+009h)		;ba02
	ld (ix+002h),0f0h		;ba05
	call L_B7FB		;ba09
	jp L_B5A4		;ba0c
L_BA0F:
	ld l,(ix+003h)		;ba0f
	ld h,(ix+004h)		;ba12
	ld de,00040h		;ba15
	add hl,de			;ba18
	ld a,(0e604h)		;ba19
	sub l			;ba1c
	jr nc,L_BA21		;ba1d
	neg		;ba1f
L_BA21:
	cp 010h		;ba21
	jr nc,L_BA3B		;ba23
	ld l,(ix+005h)		;ba25
	ld h,(ix+006h)		;ba28
	ld de,000b8h		;ba2b
	add hl,de			;ba2e
	ld a,(0e606h)		;ba2f
	sub l			;ba32
	jr nc,L_BA37		;ba33
	neg		;ba35
L_BA37:
	cp 010h		;ba37
	jr c,L_BA3F		;ba39
L_BA3B:
	dec (ix+002h)		;ba3b
	ret nz			;ba3e
L_BA3F:
	ld hl,0ba4eh		;ba3f
	call 05ffeh		;ba42
	call 05901h		;ba45
	call 05951h		;ba48
	jp L_B5A4		;ba4b

; ----------------------------------------------------------------------
; DATOS resto_BA4E: lo apuntan con el banco puesto p05:BA3F (0xBA4E); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p05:BA3F (10 bytes)
;   0xba4e..0xba58  (10 bytes)
DATA_resto_BA4E:
	defb 012h,004h,007h,059h,080h,007h,0d9h,027h,007h,000h	; ba4e  ...Y...'..

; ======================================================================
; CODIGO 0xba58..0xba7d  (37 bytes)
; ======================================================================


L_BA58:
	call 0600bh		;ba58
	ld a,(0e518h)		;ba5b
	or a			;ba5e
	ret nz			;ba5f
	ld hl,0e800h		;ba60
	ld de,00040h		;ba63
	ld b,00ch		;ba66
L_BA68:
	ld (hl),000h		;ba68
	add hl,de			;ba6a
	djnz L_BA68		;ba6b
	ld hl,0eb00h		;ba6d
	ld de,00010h		;ba70
	ld b,00ah		;ba73
L_BA75:
	ld (hl),000h		;ba75
	add hl,de			;ba77
	djnz L_BA75		;ba78
	jp L_A0D1		;ba7a

; ----------------------------------------------------------------------
; DATOS leido_BA7D: 24 bytes que leen p05:B988, p05:B9A3 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 1 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p05:B988, p05:B9A3 (24 bytes)
;   0xba7d..0xba95  (24 bytes)
DATA_leido_BA7D:
	defb 061h,058h,061h,068h,061h,078h,061h,088h,061h,098h,070h,038h,070h,048h,070h,058h	; ba7d  aXahaxa.a.p8pHpX
	defb 070h,068h,070h,078h,070h,088h,070h,0c8h	; ba8d  phpxp.p.

; ======================================================================
; CODIGO 0xba95..0xbab5  (32 bytes)
; ======================================================================


L_BA95:
	ld ix,0ec20h		;ba95
	ld a,001h		;ba99
	call L_BAAC		;ba9b
	ld ix,0ec40h		;ba9e
	ld a,002h		;baa2
	call L_BAAC		;baa4
	ld ix,0ec00h		;baa7
	xor a			;baab
L_BAAC:
	ld (0e455h),a		;baac
	ld a,(ix+001h)		;baaf
	call 04093h		;bab2

; ----------------------------------------------------------------------
; DATOS tabla_BAB5: 9 destinos del despachador p00:4093 (call en p05:BAB2, el
;   indice en A): BAC7, BB4C, BB63, BB74, BB9E, BBE4, BC52, BC6C, BC79; lo
;   leen p05:BAB2 (18 bytes)
;   0xbab5..0xbac7  (18 bytes)
DATA_tabla_BAB5:
	defw 0bac7h,0bb4ch,0bb63h,0bb74h,0bb9eh,0bbe4h,0bc52h,0bc6ch	; bab5
	defw 0bc79h	; bac5  -> L_BC79

; ======================================================================
; CODIGO 0xbac7..0xbb06  (63 bytes)
; ======================================================================


L_BAC7:
	call 09e0bh		;bac7
	ret nz			;baca
	call L_BB1E		;bacb
	ld a,010h		;bace
	call 09dc6h		;bad0
	ld (ix+013h),010h		;bad3
	xor a			;bad7
	ld (ix+014h),a		;bad8
	ld (ix+01bh),a		;badb
	inc a			;bade
	ld (ix+018h),a		;badf
	ld (ix+019h),002h		;bae2
	ld (ix+020h),001h		;bae6
	ld (ix+067h),0ffh		;baea
	ld (ix+068h),0ffh		;baee
	ld (ix+069h),0ffh		;baf2
	call L_BB2D		;baf6
	ld de,00000h		;baf9
	call L_BCF1		;bafc
	call L_BD69		;baff
L_BB02:
	inc (ix+001h)		;bb02
	ret			;bb05

; ----------------------------------------------------------------------
; DATOS leido_BB06: 24 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (24 bytes)
;   0xbb06..0xbb1e  (24 bytes)
DATA_leido_BB06:
	defb 00eh,000h,008h,010h,000h,0c8h,000h,0aah,00eh,000h,008h,040h,000h,000h,001h,0abh	; bb06  ...........@....
	defb 00eh,000h,008h,070h,000h,0e0h,000h,0aah	; bb16  ...p....

; ======================================================================
; CODIGO 0xbb1e..0xbb27  (9 bytes)
; ======================================================================


L_BB1E:
	ld a,(0e455h)		;bb1e
	ld hl,0bb27h		;bb21
	jp 04a5ah		;bb24

; ----------------------------------------------------------------------
; DATOS leido_BB27: 6 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (6 bytes)
;   0xbb27..0xbb2d  (6 bytes)
DATA_leido_BB27:
	defb 006h,0bbh,00eh,0bbh,016h,0bbh	; bb27

; ======================================================================
; CODIGO 0xbb2d..0xbc08  (219 bytes)
; ======================================================================


L_BB2D:
	xor a			;bb2d
	ld (ix+01ch),a		;bb2e
	ld (ix+01eh),a		;bb31
	ld (0e454h),a		;bb34
	ld (ix+008h),0a4h		;bb37
	ld (ix+009h),0a5h		;bb3b
	ld (ix+01ah),018h		;bb3f
	ld (ix+01dh),001h		;bb43
	ld (ix+01fh),004h		;bb47
	ret			;bb4b
L_BB4C:
	call L_BD7C		;bb4c
	ld c,0c0h		;bb4f
	call 09e40h		;bb51
	ex af,af'			;bb54
	ld de,00000h		;bb55
	call L_BCF1		;bb58
	ex af,af'			;bb5b
	ret nz			;bb5c
	ld (ix+018h),000h		;bb5d
	jr $-95		;bb61
L_BB63:
	call L_BD7C		;bb63
	ld a,001h		;bb66
	call L_BCDB		;bb68
	ld a,(ix+01ch)		;bb6b
	rra			;bb6e
	call c,L_BB02		;bb6f
	jr L_BB8B		;bb72
L_BB74:
	call L_BD32		;bb74
	call L_BC84		;bb77
	ld a,002h		;bb7a
	call L_BCDB		;bb7c
	ld a,(ix+01ch)		;bb7f
	rra			;bb82
	jr c,L_BB8B		;bb83
	dec (ix+001h)		;bb85
	call L_BB2D		;bb88
L_BB8B:
	ld a,(ix+012h)		;bb8b
	or a			;bb8e
	ret p			;bb8f
	ld (ix+01ch),000h		;bb90
	ld (ix+001h),004h		;bb94
	ld a,0a4h		;bb98
	call L_BD59		;bb9a
	ret			;bb9d
L_BB9E:
	ld hl,00010h		;bb9e
	ld e,(ix+005h)		;bba1
	ld d,(ix+006h)		;bba4
	rst 20h			;bba7
	jr nc,L_BBB0		;bba8
	ld a,001h		;bbaa
	call L_BCDB		;bbac
	ret			;bbaf
L_BBB0:
	ld hl,0ec01h		;bbb0
	ld de,00020h		;bbb3
	ld a,(hl)			;bbb6
	cp 005h		;bbb7
	ret z			;bbb9
	add hl,de			;bbba
	ld a,(hl)			;bbbb
	cp 005h		;bbbc
	ret z			;bbbe
	add hl,de			;bbbf
	ld a,(hl)			;bbc0
	cp 005h		;bbc1
	ret z			;bbc3
	ld a,001h		;bbc4
	ld (0e454h),a		;bbc6
	inc (ix+001h)		;bbc9
	ld (ix+002h),001h		;bbcc
	ld (ix+017h),008h		;bbd0
	call L_BC60		;bbd4
	sub 002h		;bbd7
	jp nz,05884h		;bbd9
	ld a,001h		;bbdc
	ld (0e445h),a		;bbde
	jp 05888h		;bbe1
L_BBE4:
	dec (ix+002h)		;bbe4
	ret nz			;bbe7
	ld (ix+002h),004h		;bbe8
	dec (ix+017h)		;bbec
	jr z,$+78		;bbef
	call L_BC0F		;bbf1
	ld e,(ix+017h)		;bbf4
	ld d,000h		;bbf7
	ld hl,lbc07h		;bbf9
	add hl,de			;bbfc
	ld d,(hl)			;bbfd
	ld a,(ix+003h)		;bbfe
	add a,008h		;bc01
	ld e,a			;bc03
	call 0678dh		;bc04
L_BC07:
	ret			;bc07

; ----------------------------------------------------------------------
; DATOS leido_BC08: 7 bytes que lee p05:BBFD al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p05:BBFD (7 bytes)
;   0xbc08..0xbc0f  (7 bytes)
DATA_leido_BC08:
	defb 0c0h,0a0h,080h,060h,040h,020h,000h	; bc08

; ======================================================================
; CODIGO 0xbc0f..0xbc75  (102 bytes)
; ======================================================================


L_BC0F:
	ld a,(ix+017h)		;bc0f
	cp 007h		;bc12
	jr z,L_BC2F		;bc14
	cp 005h		;bc16
	jr z,L_BC34		;bc18
	cp 004h		;bc1a
	jr z,L_BC2A		;bc1c
	cp 002h		;bc1e
	jr z,L_BC34		;bc20
	cp 001h		;bc22
	ret nz			;bc24
	ld (ix+009h),0ffh		;bc25
	ret			;bc29
L_BC2A:
	ld (ix+008h),0ffh		;bc2a
	ret			;bc2e
L_BC2F:
	ld (ix+007h),0ffh		;bc2f
	ret			;bc33
L_BC34:
	call L_BC60		;bc34
	sub 002h		;bc37
	ret z			;bc39
	jp 05884h		;bc3a
L_BC3D:
	inc (ix+01bh)		;bc3d
	ld de,00100h		;bc40
	call 048f9h		;bc43
	ld (ix+018h),001h		;bc46
	xor a			;bc4a
	ld (0e454h),a		;bc4b
	inc (ix+001h)		;bc4e
	ret			;bc51
L_BC52:
	ld a,(0e455h)		;bc52
	or a			;bc55
	ret nz			;bc56
	call L_BC60		;bc57
	sub 003h		;bc5a
	ret nz			;bc5c
	jp L_BB02		;bc5d
L_BC60:
	ld hl,0ec1bh		;bc60
	ld de,00020h		;bc63
	ld a,(hl)			;bc66
	add hl,de			;bc67
	add a,(hl)			;bc68
	add hl,de			;bc69
	add a,(hl)			;bc6a
	ret			;bc6b
L_BC6C:
	ld hl,0bc75h		;bc6c
	call 05ffeh		;bc6f
	jp L_BB02		;bc72

; ----------------------------------------------------------------------
; DATOS resto_BC75: lo apuntan con el banco puesto p05:BC6C (0xBC75); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p05:BC6C (4 bytes)
;   0xbc75..0xbc79  (4 bytes)
DATA_resto_BC75:
	defb 09eh,012h,007h,000h	; bc75

; ======================================================================
; CODIGO 0xbc79..0xbcc3  (74 bytes)
; ======================================================================


L_BC79:
	call 0600bh		;bc79
	ld a,(0e518h)		;bc7c
	or a			;bc7f
	ret nz			;bc80
	jp L_A0D1		;bc81
L_BC84:
	ld a,(ix+01ah)		;bc84
	or a			;bc87
	ret z			;bc88
	dec (ix+01ah)		;bc89
	ret nz			;bc8c
	ld a,(ix+006h)		;bc8d
	or a			;bc90
	ret nz			;bc91
	ld a,(ix+005h)		;bc92
	sub 008h		;bc95
	ret c			;bc97
	ld d,a			;bc98
	ld a,(ix+003h)		;bc99
	add a,010h		;bc9c
	ld e,a			;bc9e
	ld b,006h		;bc9f
L_BCA1:
	push de			;bca1
	push bc			;bca2
	call L_BCAE		;bca3
	call 07ecch		;bca6
	pop bc			;bca9
	pop de			;bcaa
	djnz L_BCA1		;bcab
	ret			;bcad
L_BCAE:
	ld a,b			;bcae
	ld hl,0bcc1h		;bcaf
	call 04a5ah		;bcb2
	ld (0e474h),hl		;bcb5
	ld a,b			;bcb8
	ld hl,0bccdh		;bcb9
	call 04a5ah		;bcbc
	ld (0e472h),hl		;bcbf
	ret			;bcc2

; ----------------------------------------------------------------------
; DATOS leido_BCC3: 10 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (10 bytes)
;   0xbcc3..0xbccd  (10 bytes)
DATA_leido_BCC3:
	defb 000h,0feh,080h,0feh,0c0h,0fch,080h,0feh,090h,0fdh	; bcc3  ..........

; ----------------------------------------------------------------------
; DATOS tabla_BCCD: tabla que se lee desde HL = 0xBCCD con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:BCB9 (14 bytes)
;   0xbccd..0xbcdb  (14 bytes)
DATA_tabla_BCCD:
	defb 040h,0feh,0f0h,001h,020h,001h,0e0h,000h,0e0h,0ffh,040h,0feh,0f0h,0fdh	; bccd  @... .....@...

; ======================================================================
; CODIGO 0xbcdb..0xbd61  (134 bytes)
; ======================================================================


L_BCDB:
	dec (ix+01dh)		;bcdb
	ret nz			;bcde
	ld (ix+01dh),a		;bcdf
	call L_BD13		;bce2
	bit 0,(ix+01ch)		;bce5
	ld de,00008h		;bce9
	jr nz,L_BCF1		;bcec
	ld de,0fff8h		;bcee
L_BCF1:
	ld l,(ix+005h)		;bcf1
	ld h,(ix+006h)		;bcf4
	add hl,de			;bcf7
	ld (ix+005h),l		;bcf8
	ld (ix+006h),h		;bcfb
	ld de,00010h		;bcfe
	add hl,de			;bd01
	ld (ix+00ch),l		;bd02
	ld (ix+00dh),h		;bd05
	ld de,00060h		;bd08
	add hl,de			;bd0b
	ld (ix+010h),l		;bd0c
	ld (ix+011h),h		;bd0f
	ret			;bd12
L_BD13:
	ld a,(ix+001h)		;bd13
	sub 004h		;bd16
	ret z			;bd18
	ld l,(ix+005h)		;bd19
	ld h,(ix+006h)		;bd1c
	ld de,000c0h		;bd1f
	rst 20h			;bd22
	jr nc,L_BD2D		;bd23
	ld a,l			;bd25
	or h			;bd26
	ret nz			;bd27
	ld (ix+01ch),001h		;bd28
	ret			;bd2c
L_BD2D:
	ld (ix+01ch),000h		;bd2d
	ret			;bd31
L_BD32:
	call L_BD7C		;bd32
	dec (ix+01fh)		;bd35
	ret nz			;bd38
	ld a,(ix+012h)		;bd39
	cp 008h		;bd3c
	ld a,004h		;bd3e
	jr nc,L_BD44		;bd40
	ld a,002h		;bd42
L_BD44:
	ld (ix+01fh),a		;bd44
	ld a,(ix+01eh)		;bd47
	inc a			;bd4a
	cp 008h		;bd4b
	jr c,L_BD50		;bd4d
	xor a			;bd4f
L_BD50:
	ld (ix+01eh),a		;bd50
	ld hl,0bd61h		;bd53
	call 04a6eh		;bd56
L_BD59:
	ld (ix+008h),a		;bd59
	inc a			;bd5c
	ld (ix+009h),a		;bd5d
	ret			;bd60

; ----------------------------------------------------------------------
; DATOS tabla_BD61: tabla que se lee desde HL = 0xBD61 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p05:BD53 (8 bytes)
;   0xbd61..0xbd69  (8 bytes)
DATA_tabla_BD61:
	defb 0a4h,0a6h,0a8h,0a6h,0a4h,0a2h,0a0h,0a2h	; bd61  ........

; ======================================================================
; CODIGO 0xbd69..0xbd97  (46 bytes)
; ======================================================================


L_BD69:
	ld l,(ix+003h)		;bd69
	ld h,(ix+004h)		;bd6c
	ld (ix+00ah),l		;bd6f
	ld (ix+00bh),h		;bd72
	ld (ix+00eh),l		;bd75
	ld (ix+00fh),h		;bd78
	ret			;bd7b
L_BD7C:
	dec (ix+019h)		;bd7c
	ret nz			;bd7f
	ld (ix+019h),002h		;bd80
	ld a,(ix+007h)		;bd84
	xor 001h		;bd87
	ld (ix+007h),a		;bd89
	ret			;bd8c
L_BD8D:
	ld ix,0ec00h		;bd8d
	ld a,(0e441h)		;bd91
	call 04093h		;bd94

; ----------------------------------------------------------------------
; DATOS tabla_BD97: 3 destinos del despachador p00:4093 (call en p05:BD94, el
;   indice en A): BD9D, BDD4, A0D4; lo leen p05:BD94 (6 bytes)
;   0xbd97..0xbd9d  (6 bytes)
DATA_tabla_BD97:
	defw 0bd9dh,0bdd4h,0a0d4h	; bd97  -> L_BD9D L_BDD4 L_A0D4

; ======================================================================
; CODIGO 0xbd9d..0xbdab  (14 bytes)
; ======================================================================


L_BD9D:
	ld a,010h		;bd9d
	ld hl,0bdabh		;bd9f
	call 09dc6h		;bda2
	call L_BDB5		;bda5
	jp 09dc1h		;bda8

; ----------------------------------------------------------------------
; DATOS leido_BDAB: 10 bytes que lee p04:9DCF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9DCF (10 bytes)
;   0xbdab..0xbdb5  (10 bytes)
DATA_leido_BDAB:
	defb 010h,000h,000h,068h,000h,0a0h,000h,0bch,0bfh,0ffh	; bdab  ...h......

; ======================================================================
; CODIGO 0xbdb5..0xbde4  (47 bytes)
; ======================================================================


L_BDB5:
	ld hl,00080h		;bdb5
	ld (0ec0ah),hl		;bdb8
	ld hl,00098h		;bdbb
	ld (0ec0ch),hl		;bdbe
	xor a			;bdc1
	ld (0ec16h),a		;bdc2
	ld (0ec18h),a		;bdc5
	ld (ix+017h),008h		;bdc8
	ld (ix+019h),010h		;bdcc
	call L_BE76		;bdd0
	ret			;bdd3
L_BDD4:
	call L_BDDE		;bdd4
	call L_BE20		;bdd7
	call L_BE4E		;bdda
	ret			;bddd
L_BDDE:
	ld a,(0ec16h)		;bdde
	call 04093h		;bde1

; ----------------------------------------------------------------------
; DATOS tabla_BDE4: 4 destinos del despachador p00:4093 (call en p05:BDE1, el
;   indice en A): BDEC, BDFC, BDEC, BE0F; lo leen p05:BDE1 (8 bytes)
;   0xbde4..0xbdec  (8 bytes)
DATA_tabla_BDE4:
	defw 0bdech,0bdfch,0bdech,0be0fh	; bde4  -> L_BDEC L_BDFC L_BDEC L_BE0F

; ======================================================================
; CODIGO 0xbdec..0xbe8a  (158 bytes)
; ======================================================================


L_BDEC:
	dec (ix+017h)		;bdec
	ret nz			;bdef
	ld (ix+017h),004h		;bdf0
	ld (ix+007h),0bdh		;bdf4
	inc (ix+016h)		;bdf8
	ret			;bdfb
L_BDFC:
	dec (ix+017h)		;bdfc
	ret nz			;bdff
	ld (ix+017h),010h		;be00
	call 04872h		;be04
	ld (ix+007h),0beh		;be07
	inc (ix+016h)		;be0b
	ret			;be0e
L_BE0F:
	dec (ix+017h)		;be0f
	ret nz			;be12
	ld (ix+017h),020h		;be13
	ld (ix+007h),0bch		;be17
	ld (ix+016h),000h		;be1b
	ret			;be1f
L_BE20:
	ld a,(0ec18h)		;be20
	or a			;be23
	jr nz,L_BE3A		;be24
	dec (ix+019h)		;be26
	ret nz			;be29
	ld (ix+008h),0c0h		;be2a
	ld (ix+019h),001h		;be2e
	ld (ix+01ah),005h		;be32
	inc (ix+018h)		;be36
	ret			;be39
L_BE3A:
	call L_BE5E		;be3a
	ld a,(ix+01ah)		;be3d
	or a			;be40
	ret nz			;be41
	ld (ix+008h),0bfh		;be42
	ld (ix+019h),020h		;be46
	dec (ix+018h)		;be4a
	ret			;be4d
L_BE4E:
	call 07a4dh		;be4e
	ld a,(0e4b1h)		;be51
	or a			;be54
	ret nz			;be55
	ld a,001h		;be56
	ld (0e445h),a		;be58
	jp 09dc1h		;be5b
L_BE5E:
	dec (ix+019h)		;be5e
	ret nz			;be61
	ld (ix+019h),004h		;be62
	ld b,(ix+01ah)		;be66
	dec (ix+01ah)		;be69
	ld de,08888h		;be6c
	ld c,000h		;be6f
	ld a,00bh		;be71
	jp 0764fh		;be73
L_BE76:
	ld b,005h		;be76
L_BE78:
	ld a,b			;be78
	ld hl,0be88h		;be79
	call 04a5ah		;be7c
	ex de,hl			;be7f
	ld a,035h		;be80
	push bc			;be82
	call 04833h		;be83
	pop bc			;be86
	djnz L_BE78		;be87
	ret			;be89

; ----------------------------------------------------------------------
; DATOS leido_BE8A: 10 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (10 bytes)
;   0xbe8a..0xbe94  (10 bytes)
DATA_leido_BE8A:
	defb 010h,0b0h,018h,0b8h,018h,0c8h,018h,0d0h,018h,0e0h	; be8a  ..........

; ======================================================================
; CODIGO 0xbe94..0xbeb9  (37 bytes)
; ======================================================================


L_BE94:
	ld (ix+008h),004h		;be94
	ld (ix+00ah),001h		;be98
	ld (ix+00ah),001h		;be9c
	ld (ix+00eh),004h		;bea0
	ld a,(ix+00bh)		;bea4
	add a,0edh		;bea7
	ld (ix+007h),a		;bea9
	ld a,(ix+00bh)		;beac
	ld hl,lbeb8h		;beaf
	call 04a6eh		;beb2
L_BEB5:
	ld (ix+009h),a		;beb5
L_BEB8:
	ret			;beb8

; ----------------------------------------------------------------------
; DATOS leido_BEB9: 5 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (5 bytes)
;   0xbeb9..0xbebe  (5 bytes)
DATA_leido_BEB9:
	defb 007h,006h,005h,005h,006h	; beb9

; ======================================================================
; CODIGO 0xbebe..0xbed9  (27 bytes)
; ======================================================================


L_BEBE:
	ld (ix+024h),000h		;bebe
	ld a,080h		;bec2
	ld (0e46eh),a		;bec4
	ld l,(ix+004h)		;bec7
	ld h,(ix+006h)		;beca
	ld (0ef82h),hl		;becd
	ld hl,09957h		;bed0
	ld c,005h		;bed3
	call 07ed5h		;bed5
L_BED8:
	ret			;bed8

; ----------------------------------------------------------------------
; DATOS relleno_ff: 295 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (295 bytes)
;   0xbed9..0xc000  (295 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bed9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bee9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bef9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf09  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf19  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf29  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf39  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf49  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf59  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf69  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf79  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf89  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf99  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfa9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff9

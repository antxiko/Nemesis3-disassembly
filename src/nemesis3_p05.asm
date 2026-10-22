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
lbc07h:	equ 0x0bc07

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa000..0xa002  (2 bytes)
DATA_A000:
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
; DATOS sin identificar  0xa0f6..0xa108  (18 bytes)
DATA_A0F6:
	defb 008h,0a1h,037h,0a1h,04fh,0a1h,00dh,0a0h,031h,0a0h,042h,0a0h,087h,0a0h,0aeh,0a0h	; a0f6  ..7.O...1.B.....
	defb 0cdh,0a0h	; a106

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
; DATOS sin identificar  0xa12d..0xa137  (10 bytes)
DATA_A12D:
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
; DATOS sin identificar  0xa29e..0xa2da  (60 bytes)
DATA_A29E:
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
; DATOS sin identificar  0xa2e0..0xa2f4  (20 bytes)
DATA_A2E0:
	defb 0f4h,0a2h,021h,0a3h,032h,0a3h,041h,0a3h,00dh,0a0h,031h,0a0h,042h,0a0h,087h,0a0h	; a2e0  ..!.2.A...1.B...
	defb 0aeh,0a0h,0cdh,0a0h	; a2f0

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
; DATOS sin identificar  0xa317..0xa321  (10 bytes)
DATA_A317:
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
; DATOS sin identificar  0xa3f4..0xa406  (18 bytes)
DATA_A3F4:
	defb 006h,0a4h,046h,0a4h,05fh,0a4h,00dh,0a0h,031h,0a0h,042h,0a0h,087h,0a0h,0aeh,0a0h	; a3f4  ..F._...1.B.....
	defb 0cdh,0a0h	; a404

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
; DATOS sin identificar  0xa43c..0xa446  (10 bytes)
DATA_A43C:
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
; DATOS sin identificar  0xa505..0xa521  (28 bytes)
DATA_A505:
	defb 021h,0a5h,059h,0a5h,068h,0a5h,099h,0a5h,0bch,0a5h,099h,0a5h,0d1h,0a5h,0d1h,0a5h	; a505  !.Y.h...........
	defb 0d1h,0a5h,0f1h,0a5h,042h,0a0h,087h,0a0h,0aeh,0a0h,0cdh,0a0h	; a515  ....B.......

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
; DATOS sin identificar  0xa533..0xa53d  (10 bytes)
DATA_A533:
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
; DATOS sin identificar  0xa591..0xa599  (8 bytes)
DATA_A591:
	defb 010h,068h,058h,088h,028h,098h,068h,050h	; a591  .hX.(.hP

; ======================================================================
; CODIGO 0xa599..0xa6a0  (263 bytes)
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

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa6a0..0xa710  (112 bytes)
DATA_A6A0:
	defb 0ddh,036h,010h,005h,006h,0a8h,0cdh,006h,0a7h,0ddh,07eh,01fh,021h,0beh,0a6h,0cdh	; a6a0  .6........~.!...
	defb 040h,06eh,0ddh,07eh,01fh,021h,0dch,0a6h,0cdh,05ah,04ah,0ddh,075h,00eh,0ddh,074h	; a6b0  @n.~.!...ZJ.u..t
	defb 00fh,0c9h,000h,0fah,080h,0fbh,000h,0fah,000h,0fdh,000h,0fah,080h,0feh,000h,0fah	; a6c0  ................
	defb 000h,000h,000h,0fah,080h,001h,000h,0fah,000h,003h,000h,0fah,080h,004h,010h,007h	; a6d0  ................
	defb 00dh,00dh,007h,010h,005h,010h,007h,010h,00dh,00dh,010h,007h,006h,09ch,0cdh,006h	; a6e0  ................
	defb 0a7h,0ddh,07eh,01fh,021h,0f6h,0a6h,0c3h,040h,06eh,0d8h,0fdh,080h,0feh,000h,0fdh	; a6f0  ..~.!...@n......
	defb 000h,000h,0d8h,0fdh,080h,001h,0ddh,07eh,01fh,087h,087h,080h,0ddh,077h,030h,0c9h	; a700  .......~.....w0.

; ======================================================================
; CODIGO 0xa710..0xa71f  (15 bytes)
; ======================================================================


L_A710:
	ld c,006h		;a710
	call L_A68D		;a712
	ld ix,0ec00h		;a715
	ld a,(0e441h)		;a719
	call 04093h		;a71c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa71f..0xa731  (18 bytes)
DATA_A71F:
	defb 031h,0a7h,066h,0a7h,078h,0a7h,08eh,0a7h,0abh,0a7h,0cah,0a7h,0e2h,0a7h,0aeh,0a0h	; a71f  1.f.x...........
	defb 0cdh,0a0h	; a72f

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
; DATOS sin identificar  0xa75c..0xa766  (10 bytes)
DATA_A75C:
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
; DATOS sin identificar  0xa902..0xa90f  (13 bytes)
DATA_A902:
	defb 024h,025h,026h,027h,028h,028h,027h,026h,025h,024h,02ah,028h,029h	; a902  $%&'(('&%$*()

; ======================================================================
; CODIGO 0xa90f..0xa9a2  (147 bytes)
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

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa9a2..0xaa1d  (123 bytes)
DATA_A9A2:
	defb 0ddh,07eh,01fh,01fh,030h,010h,03ah,0a2h,0e4h,0c6h,070h,032h,0a2h,0e4h,067h,02eh	; a9a2  .~..0.:...p2..g.
	defb 010h,03eh,080h,0c3h,088h,078h,03eh,080h,0c3h,065h,078h,0e0h,0b0h,0e8h,0a8h,0f0h	; a9b2  .>...x>..ex.....
	defb 0a8h,0f8h,0a8h,0f8h,0a8h,0f8h,0b8h,0f8h,0b0h,0e0h,0b8h,0d0h,0b8h,0b0h,0c8h,0a0h	; a9c2  ................
	defb 0d8h,0b8h,0b8h,030h,0a8h,030h,0a8h,028h,0a8h,010h,0b0h,000h,0a8h,008h,0b8h,018h	; a9d2  ...0.0.(........
	defb 0b0h,028h,0b8h,030h,0b8h,030h,0c8h,038h,0d0h,038h,0b8h,0e4h,0a8h,0f4h,0a0h,00ch	; a9e2  .(.0.0.8.8......
	defb 0a0h,01ch,0a0h,02ch,0a0h,01ch,0b0h,004h,0a8h,0e4h,0b0h,0d4h,0b0h,0b4h,0c0h,0a4h	; a9f2  ...,............
	defb 0d0h,0bch,0a0h,04ch,0a0h,03ch,0a0h,02ch,0a0h,014h,0a8h,004h,0a0h,014h,0b0h,03ch	; aa02  ...L.<.,.......<
	defb 0a8h,04ch,0b0h,064h,0b0h,07ch,0c0h,08ch,0c8h,074h,0b0h	; aa12  .L.d.|...t.

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
; DATOS sin identificar  0xaa2c..0xaa40  (20 bytes)
DATA_AA2C:
	defb 040h,0aah,06dh,0aah,078h,0aah,093h,0aah,00dh,0a0h,031h,0a0h,042h,0a0h,087h,0a0h	; aa2c  @.m.x.....1.B...
	defb 0aeh,0a0h,0cdh,0a0h	; aa3c

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
; DATOS sin identificar  0xaa63..0xaa6d  (10 bytes)
DATA_AA63:
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
; DATOS sin identificar  0xaad0..0xaad8  (8 bytes)
DATA_AAD0:
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
; DATOS sin identificar  0xaaf2..0xab02  (16 bytes)
DATA_AAF2:
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
; DATOS sin identificar  0xab82..0xab88  (6 bytes)
DATA_AB82:
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
; DATOS sin identificar  0xabe9..0xac71  (136 bytes)
DATA_ABE9:
	defb 063h,064h,095h,065h,0ffh,000h,001h,002h,003h,004h,005h,006h,003h,004h,005h,006h	; abe9  cd.e............
	defb 003h,004h,005h,006h,003h,004h,005h,006h,003h,004h,005h,006h,003h,004h,005h,006h	; abf9  ................
	defb 003h,004h,005h,006h,002h,001h,000h,0ffh,0f8h,008h,0e0h,028h,0e8h,0e8h,0d0h,008h	; ac09  ...........(....
	defb 0d0h,018h,0d0h,028h,010h,0f8h,000h,0e0h,038h,0e8h,028h,0d0h,018h,0d0h,008h,0d0h	; ac19  ...(....8.(.....
	defb 040h,010h,040h,000h,040h,038h,040h,028h,040h,018h,040h,008h,008h,040h,028h,040h	; ac29  @.@.@8@(@.@..@(@
	defb 0e8h,040h,008h,040h,018h,040h,028h,040h,0f8h,010h,0e0h,000h,0e8h,038h,0d0h,028h	; ac39  .@.@.@(@.....8.(
	defb 0d0h,018h,0d0h,008h,008h,0f8h,028h,0e0h,0e8h,0e8h,008h,0d0h,018h,0d0h,028h,0d0h	; ac49  ......(.......(.
	defb 040h,008h,040h,028h,040h,0e8h,040h,008h,040h,018h,040h,028h,010h,040h,000h,040h	; ac59  @.@(@.@.@.@(.@.@
	defb 038h,040h,028h,040h,018h,040h,008h,040h	; ac69  8@(@.@.@

; ======================================================================
; CODIGO 0xac71..0xac7b  (10 bytes)
; ======================================================================


L_AC71:
	ld ix,0ec00h		;ac71
	ld a,(0e441h)		;ac75
	call 04093h		;ac78

; ----------------------------------------------------------------------
; DATOS sin identificar  0xac7b..0xac89  (14 bytes)
DATA_AC7B:
	defb 089h,0ach,0b2h,0ach,0c8h,0ach,042h,0a0h,087h,0a0h,0aeh,0a0h,0cdh,0a0h	; ac7b  ......B.......

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
; DATOS sin identificar  0xaca8..0xacb2  (10 bytes)
DATA_ACA8:
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
; DATOS sin identificar  0xad08..0xad0d  (5 bytes)
DATA_AD08:
	defb 010h,01ch,023h,01ch,0ffh	; ad08

; ======================================================================
; CODIGO 0xad0d..0xad13  (6 bytes)
; ======================================================================


L_AD0D:
	ld a,(ix+001h)		;ad0d
	call 04093h		;ad10

; ----------------------------------------------------------------------
; DATOS sin identificar  0xad13..0xad1d  (10 bytes)
DATA_AD13:
	defb 01dh,0adh,098h,0adh,0a8h,0adh,077h,0adh,088h,0adh	; ad13  ......w...

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
; DATOS sin identificar  0xae20..0xae24  (4 bytes)
DATA_AE20:
	defb 010h,030h,050h,010h	; ae20

; ======================================================================
; CODIGO 0xae24..0xae4a  (38 bytes)
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

; ----------------------------------------------------------------------
; DATOS sin identificar  0xae4a..0xaf10  (198 bytes)
DATA_AE4A:
	defb 0ddh,07eh,01fh,0b7h,03eh,00fh,028h,001h,03ch,0ddh,077h,032h,0edh,05fh,0e6h,007h	; ae4a  .~..>.(.<.w2._..
	defb 0ddh,077h,025h,0ddh,036h,013h,001h,0ddh,036h,014h,001h,0afh,032h,028h,0ech,0ddh	; ae5a  .w%.6...6...2(..
	defb 036h,024h,018h,0ddh,036h,002h,010h,0cdh,0c8h,078h,0ddh,036h,026h,002h,0ddh,0cbh	; ae6a  6$..6....x.6&...
	defb 010h,08eh,0c9h,0ddh,07eh,001h,0cdh,093h,040h,089h,0aeh,098h,0aeh,0c7h,0aeh,0ddh	; ae7a  ....~...@.......
	defb 035h,002h,0c0h,0ddh,036h,002h,001h,0cdh,0d5h,058h,0ddh,034h,001h,0c9h,0ddh,07eh	; ae8a  5...6....X.4...~
	defb 026h,047h,0ddh,086h,014h,0ddh,077h,014h,078h,087h,087h,087h,047h,0ddh,07eh,006h	; ae9a  &G....w.x...G.~.
	defb 090h,0ddh,077h,006h,0ddh,07eh,00fh,080h,0ddh,077h,00fh,0ddh,07eh,024h,0ddh,096h	; aeaa  ..w..~...w..~$..
	defb 026h,0ddh,077h,024h,0c0h,0ddh,036h,024h,018h,0ddh,034h,001h,0c9h,0cdh,0f9h,0aeh	; aeba  &.w$..6$..4.....
	defb 0ddh,07eh,026h,047h,04fh,0ddh,07eh,014h,090h,0ddh,077h,014h,078h,087h,087h,087h	; aeca  .~&GO.~...w.x...
	defb 047h,0ddh,086h,006h,0ddh,077h,006h,0ddh,07eh,00fh,090h,0ddh,077h,00fh,0ddh,07eh	; aeda  G....w..~...w..~
	defb 024h,091h,0ddh,077h,024h,0c0h,03eh,001h,032h,028h,0ech,0cdh,0d1h,075h,0c9h,0ddh	; aeea  $..w$.>.2(...u..
	defb 035h,025h,0c0h,0ddh,036h,025h,008h,0ddh,05eh,004h,0ddh,056h,006h,001h,000h,000h	; aefa  5%..6%..^..V....
	defb 03eh,00fh,0cdh,04fh,076h,0c9h	; af0a

; ======================================================================
; CODIGO 0xaf10..0xaf1a  (10 bytes)
; ======================================================================


L_AF10:
	ld ix,0ec00h		;af10
	ld a,(0e441h)		;af14
	call 04093h		;af17

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaf1a..0xaf1e  (4 bytes)
DATA_AF1A:
	defb 01eh,0afh,058h,0afh	; af1a

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
; DATOS sin identificar  0xaf4e..0xaf58  (10 bytes)
DATA_AF4E:
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
; DATOS sin identificar  0xafd8..0xafe4  (12 bytes)
DATA_AFD8:
	defb 0f8h,0ffh,0e0h,0ffh,008h,000h,040h,000h,0f8h,0ffh,060h,0ffh	; afd8  ......@...`.

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
; DATOS sin identificar  0xb00a..0xb018  (14 bytes)
DATA_B00A:
	defb 018h,0b0h,03ch,0b0h,083h,0b0h,042h,0a0h,087h,0a0h,0aeh,0a0h,0cdh,0a0h	; b00a  ..<...B.......

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
; DATOS sin identificar  0xb032..0xb03c  (10 bytes)
DATA_B032:
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
; DATOS sin identificar  0xb098..0xb0a0  (8 bytes)
DATA_B098:
	defb 0a0h,0b0h,0adh,0b0h,01ah,0b1h,036h,0b1h	; b098  ......6.

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
; DATOS sin identificar  0xb0c7..0xb0cf  (8 bytes)
DATA_B0C7:
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
; DATOS sin identificar  0xb0e4..0xb0ec  (8 bytes)
DATA_B0E4:
	defb 0ech,0b0h,0f3h,0b0h,000h,0b1h,00dh,0b1h	; b0e4  ........

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
; DATOS sin identificar  0xb16f..0xb177  (8 bytes)
DATA_B16F:
	defb 077h,0b1h,07ch,0b1h,096h,0b1h,09eh,0b1h	; b16f  w.|.....

; ======================================================================
; CODIGO 0xb177..0xb1eb  (116 bytes)
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

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb1eb..0xb277  (140 bytes)
DATA_B1EB:
	defb 0cdh,0e1h,0b4h,0ddh,036h,036h,0e8h,0ddh,036h,037h,00fh,0ddh,036h,024h,020h,0ddh	; b1eb  ....66..67..6$ .
	defb 036h,025h,002h,0ddh,07eh,004h,0ddh,077h,034h,0ddh,07eh,006h,0ddh,077h,035h,0c9h	; b1fb  6%..~..w4.~..w5.
	defb 0cdh,0fch,0b4h,0ddh,035h,025h,0c0h,0ddh,036h,025h,002h,0ddh,07eh,030h,001h,0e8h	; b20b  ....5%..6%..~0..
	defb 0e0h,0b8h,020h,003h,001h,0e4h,0d4h,0ddh,070h,030h,0ddh,071h,036h,0c9h,03eh,010h	; b21b  .. .....p0.q6.>.
	defb 0ddh,077h,008h,0ddh,036h,012h,000h,0ddh,036h,007h,00bh,0ddh,036h,009h,002h,0ddh	; b22b  .w..6...6...6...
	defb 036h,00ah,002h,0c9h,03ah,045h,0e4h,0b7h,028h,005h,0ddh,036h,000h,000h,0c9h,0cdh	; b23b  6...:E..(..6....
	defb 063h,0b2h,0ddh,07eh,008h,0feh,010h,0c8h,0ddh,036h,008h,010h,0ddh,0e5h,0ddh,021h	; b24b  c..~.....6.....!
	defb 000h,0ech,0cdh,04eh,048h,0ddh,0e1h,0c9h,03ah,000h,0ech,0feh,009h,0c0h,03ah,007h	; b25b  ...NH...:.....:.
	defb 0ech,0feh,05ah,03eh,080h,030h,001h,0afh,0ddh,077h,00dh,0c9h	; b26b  ..Z>.0...w..

; ======================================================================
; CODIGO 0xb277..0xb281  (10 bytes)
; ======================================================================


L_B277:
	ld ix,0ec00h		;b277
	ld a,(0e441h)		;b27b
	call 04093h		;b27e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb281..0xb28f  (14 bytes)
DATA_B281:
	defb 08fh,0b2h,0beh,0b2h,0d2h,0b2h,042h,0a0h,087h,0a0h,0aeh,0a0h,0cdh,0a0h	; b281  ......B.......

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
; DATOS sin identificar  0xb2b4..0xb2be  (10 bytes)
DATA_B2B4:
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
; DATOS sin identificar  0xb327..0xb32d  (6 bytes)
DATA_B327:
	defb 02dh,0b3h,06ch,0b3h,080h,0b3h	; b327

; ======================================================================
; CODIGO 0xb32d..0xb3de  (177 bytes)
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

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb3de..0xb575  (407 bytes)
DATA_B3DE:
	defb 0ddh,036h,009h,004h,0ddh,036h,00ah,003h,0ddh,036h,007h,08ah,0ddh,036h,008h,005h	; b3de  .6...6...6...6..
	defb 0afh,0ddh,077h,00dh,0ddh,077h,017h,0ddh,036h,002h,002h,0edh,05fh,0e6h,01fh,0ddh	; b3ee  ..w..w..6..._...
	defb 077h,00ch,0ddh,07eh,00bh,047h,087h,080h,021h,01bh,0b4h,0cdh,089h,040h,07eh,023h	; b3fe  w..~.G..!....@~#
	defb 0ddh,077h,014h,07eh,023h,0ddh,077h,015h,07eh,0ddh,077h,016h,0c9h,0f8h,010h,000h	; b40e  .w.~#.w.~.w.....
	defb 000h,000h,068h,008h,090h,000h,0cdh,07ah,0b4h,0cdh,099h,0b4h,0ddh,07eh,001h,0cdh	; b41e  ..h....z.....~..
	defb 093h,040h,036h,0b4h,068h,0b4h,079h,0b4h,0ddh,035h,002h,0c0h,0ddh,036h,002h,002h	; b42e  .@6.h.y..5...6..
	defb 0ddh,07eh,014h,0ddh,086h,004h,0ddh,077h,004h,0ddh,096h,015h,030h,002h,0edh,044h	; b43e  .~.....w....0..D
	defb 0feh,008h,038h,012h,03eh,0f8h,0ddh,086h,006h,0ddh,077h,006h,0ddh,096h,016h,030h	; b44e  ..8.>.....w....0
	defb 002h,0edh,044h,0feh,008h,0d0h,0ddh,034h,001h,0c9h,011h,000h,0feh,0ddh,066h,006h	; b45e  ..D....4......f.
	defb 0ddh,06eh,005h,019h,0ddh,074h,006h,0ddh,075h,005h,0c9h,0c9h,0ddh,07eh,007h,0e6h	; b46e  .n...t..u....~..
	defb 001h,04fh,0ddh,07eh,006h,0c6h,00ch,047h,03ah,006h,0e6h,0b8h,03eh,08ah,038h,002h	; b47e  .O.~...G:...>.8.
	defb 03eh,08ch,081h,0ddh,0beh,007h,0c8h,0ddh,077h,007h,0c9h,0ddh,07eh,017h,0cdh,093h	; b48e  >.......w...~...
	defb 040h,0a3h,0b4h,0d2h,0b4h,0ddh,035h,00ch,0c0h,0ddh,034h,007h,0ddh,034h,017h,0ddh	; b49e  @.....5...4..4..
	defb 036h,00ch,010h,0ddh,07eh,007h,0feh,08ch,001h,010h,0f8h,038h,003h,001h,010h,010h	; b4ae  6...~......8....
	defb 0ddh,07eh,004h,081h,05fh,0ddh,07eh,006h,080h,057h,006h,000h,00eh,000h,03eh,043h	; b4be  .~.._.~..W....>C
	defb 0cdh,04fh,076h,0c9h,0ddh,035h,00ch,0c0h,0ddh,035h,007h,0ddh,035h,017h,0ddh,036h	; b4ce  .Ov..5...5..5..6
	defb 00ch,030h,0c9h,03eh,040h,0cdh,065h,078h,0ddh,036h,024h,020h,0ddh,036h,025h,000h	; b4de  .0.>@.ex.6$ .6%.
	defb 0ddh,036h,015h,020h,0cdh,05eh,0b5h,0c9h,0cdh,00ah,0b5h,0cdh,058h,0b5h,0ddh,035h	; b4ee  .6. .^......X..5
	defb 024h,0c0h,0ddh,036h,024h,010h,03eh,040h,0cdh,065h,078h,0c9h,0ddh,07eh,025h,0cdh	; b4fe  $..6$.>@.ex..~%.
	defb 093h,040h,014h,0b5h,044h,0b5h,0ddh,035h,015h,0c0h,0ddh,036h,015h,008h,0ddh,07eh	; b50e  .@..D..5...6...~
	defb 030h,0c6h,004h,0ddh,077h,030h,0ddh,07eh,030h,0feh,0b8h,03eh,00ch,030h,001h,0afh	; b51e  0...w0.~0..>.0..
	defb 0ddh,086h,006h,057h,0ddh,07eh,004h,0c6h,00ch,05fh,03eh,045h,001h,000h,000h,0cdh	; b52e  ...W.~..._>E....
	defb 04fh,076h,0ddh,034h,025h,0c9h,0ddh,035h,015h,0c0h,0ddh,036h,015h,018h,0ddh,07eh	; b53e  Ov.4%..5...6...~
	defb 030h,0d6h,004h,0ddh,077h,030h,0ddh,035h,025h,0c9h,03ah,003h,0e3h,0e6h,007h,0c0h	; b54e  0...w0.5%.:.....
	defb 0ddh,07eh,030h,0e6h,004h,04fh,03ah,006h,0e6h,0ddh,0beh,006h,03eh,0b0h,038h,002h	; b55e  .~0..O:.....>.8.
	defb 03eh,0b8h,081h,0ddh,077h,030h,0c9h	; b56e

; ======================================================================
; CODIGO 0xb575..0xb57b  (6 bytes)
; ======================================================================


L_B575:
	ld a,(0e441h)		;b575
	call 04093h		;b578

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb57b..0xb589  (14 bytes)
DATA_B57B:
	defb 089h,0b5h,0b3h,0b5h,0cbh,0b5h,042h,0a0h,087h,0a0h,0aeh,0a0h,0cdh,0a0h	; b57b  ......B.......

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
; DATOS sin identificar  0xb5a9..0xb5b3  (10 bytes)
DATA_B5A9:
	defb 00fh,000h,008h,020h,000h,0f8h,000h,0ach,0aeh,0bbh	; b5a9  ... ......

; ======================================================================
; CODIGO 0xb5b3..0xb695  (226 bytes)
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

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb695..0xb70a  (117 bytes)
DATA_B695:
	defb 0ddh,07eh,01fh,021h,0bbh,0b6h,0cdh,06eh,04ah,0ddh,077h,024h,0ddh,036h,002h,001h	; b695  .~.!...nJ.w$.6..
	defb 0ddh,036h,013h,001h,0ddh,036h,014h,001h,0ddh,036h,010h,011h,0ddh,07eh,024h,087h	; b6a5  .6...6...6...~$.
	defb 087h,087h,0ddh,077h,00fh,0c9h,001h,002h,002h,001h,0cdh,0c4h,0b6h,018h,0edh,0ddh	; b6b5  ...w............
	defb 07eh,001h,03dh,028h,031h,0ddh,07eh,01fh,021h,0f7h,0b6h,0cdh,089h,040h,046h,03ah	; b6c5  ~.=(1.~.!....@F:
	defb 003h,0ech,080h,0ddh,077h,004h,0ddh,035h,002h,0c0h,0ddh,036h,002h,001h,0ddh,034h	; b6d5  ....w..5...6...4
	defb 024h,0ddh,07eh,006h,0d6h,008h,0ddh,077h,006h,0c0h,0ddh,036h,006h,004h,0ddh,034h	; b6e5  $.~....w...6...4
	defb 001h,0c9h,020h,028h,030h,038h,0ddh,035h,002h,0c0h,0ddh,036h,002h,001h,0ddh,035h	; b6f5  .. (08.5...6...5
	defb 024h,0c0h,0c3h,0d1h,075h	; b705

; ======================================================================
; CODIGO 0xb70a..0xb729  (31 bytes)
; ======================================================================


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
; DATOS sin identificar  0xb755..0xb763  (14 bytes)
DATA_B755:
	defb 063h,0b7h,0d4h,0b7h,0f2h,0b7h,0e4h,0b9h,0feh,0b9h,00fh,0bah,058h,0bah	; b755  c...........X.

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
; DATOS sin identificar  0xb7ca..0xb7d4  (10 bytes)
DATA_B7CA:
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
; DATOS sin identificar  0xb97f..0xb983  (4 bytes)
DATA_B97F:
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
; DATOS sin identificar  0xba4e..0xba58  (10 bytes)
DATA_BA4E:
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
; DATOS sin identificar  0xba7d..0xba95  (24 bytes)
DATA_BA7D:
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
; DATOS sin identificar  0xbab5..0xbac7  (18 bytes)
DATA_BAB5:
	defb 0c7h,0bah,04ch,0bbh,063h,0bbh,074h,0bbh,09eh,0bbh,0e4h,0bbh,052h,0bch,06ch,0bch	; bab5  ..L.c.t.....R.l.
	defb 079h,0bch	; bac5

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
; DATOS sin identificar  0xbb06..0xbb1e  (24 bytes)
DATA_BB06:
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
; DATOS sin identificar  0xbb27..0xbb2d  (6 bytes)
DATA_BB27:
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
; DATOS sin identificar  0xbc08..0xbc0f  (7 bytes)
DATA_BC08:
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
; DATOS sin identificar  0xbc75..0xbc79  (4 bytes)
DATA_BC75:
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
; DATOS sin identificar  0xbcc3..0xbcdb  (24 bytes)
DATA_BCC3:
	defb 000h,0feh,080h,0feh,0c0h,0fch,080h,0feh,090h,0fdh,040h,0feh,0f0h,001h,020h,001h	; bcc3  ..........@... .
	defb 0e0h,000h,0e0h,0ffh,040h,0feh,0f0h,0fdh	; bcd3  ....@...

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
; DATOS sin identificar  0xbd61..0xbd69  (8 bytes)
DATA_BD61:
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
; DATOS sin identificar  0xbd97..0xbd9d  (6 bytes)
DATA_BD97:
	defb 09dh,0bdh,0d4h,0bdh,0d4h,0a0h	; bd97

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
; DATOS sin identificar  0xbdab..0xbdb5  (10 bytes)
DATA_BDAB:
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
; DATOS sin identificar  0xbde4..0xbdec  (8 bytes)
DATA_BDE4:
	defb 0ech,0bdh,0fch,0bdh,0ech,0bdh,00fh,0beh	; bde4  ........

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
; DATOS sin identificar  0xbe8a..0xc000  (374 bytes)
DATA_BE8A:
	defb 010h,0b0h,018h,0b8h,018h,0c8h,018h,0d0h,018h,0e0h,0ddh,036h,008h,004h,0ddh,036h	; be8a  ...........6...6
	defb 00ah,001h,0ddh,036h,00ah,001h,0ddh,036h,00eh,004h,0ddh,07eh,00bh,0c6h,0edh,0ddh	; be9a  ...6...6...~....
	defb 077h,007h,0ddh,07eh,00bh,021h,0b8h,0beh,0cdh,06eh,04ah,0ddh,077h,009h,0c9h,007h	; beaa  w..~.!...nJ.w...
	defb 006h,005h,005h,006h,0ddh,036h,024h,000h,03eh,080h,032h,06eh,0e4h,0ddh,06eh,004h	; beba  .....6$.>.2n..n.
	defb 0ddh,066h,006h,022h,082h,0efh,021h,057h,099h,00eh,005h,0cdh,0d5h,07eh,0c9h,0ffh	; beca  .f."..!W.....~..
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beda  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beea  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; befa  ................
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

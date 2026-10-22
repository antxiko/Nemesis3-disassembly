; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 04 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
l94d0h:	equ 0x094d0

; ======================================================================
; CODIGO 0x8000..0x80e0  (224 bytes)
; ======================================================================


L_8000:
	ld a,(0e60dh)		;8000
	dec a			;8003
	jr z,L_800A		;8004
	dec a			;8006
	jr z,L_8017		;8007
	ret			;8009
L_800A:
	ld hl,00040h		;800a
	ld (0e60eh),hl		;800d
	ld hl,0e60dh		;8010
	inc (hl)			;8013
	jp 05938h		;8014
L_8017:
	ld hl,(0e60eh)		;8017
	ld de,00030h		;801a
	add hl,de			;801d
	ld (0e60eh),hl		;801e
	ld de,(0e605h)		;8021
	add hl,de			;8025
	ld (0e605h),hl		;8026
	ld a,h			;8029
	cp 0f0h		;802a
	ret c			;802c
	xor a			;802d
	ld (0e60dh),a		;802e
	ret			;8031
L_8032:
	call L_805A		;8032
	ret			;8035
L_8036:
	ld a,(0e60dh)		;8036
	or a			;8039
	jr nz,L_8032		;803a
	ld a,(0e600h)		;803c
	or a			;803f
	jp m,L_845D		;8040
	ret z			;8043
	call L_81EB		;8044
	call L_8228		;8047
	call L_8237		;804a
	call L_829E		;804d
	call L_81B8		;8050
	call L_805A		;8053
	call L_83CF		;8056
	ret			;8059
L_805A:
	call L_8091		;805a
	ld bc,0e309h		;805d
	call L_8064		;8060
	ret			;8063
L_8064:
	ld a,(bc)			;8064
	and 003h		;8065
	cp 003h		;8067
	jp nz,L_806D		;8069
	xor a			;806c
L_806D:
	add a,a			;806d
	add a,a			;806e
	add a,a			;806f
	ld c,a			;8070
	ld b,000h		;8071
	add hl,bc			;8073
	ld de,0e618h		;8074
	call L_807E		;8077
	call L_807E		;807a
	ret			;807d
L_807E:
	ld a,(0e604h)		;807e
	add a,(hl)			;8081
	ld (de),a			;8082
	inc e			;8083
	inc hl			;8084
	ld a,(0e606h)		;8085
	add a,(hl)			;8088
	ld (de),a			;8089
	inc e			;808a
	inc hl			;808b
	ldi		;808c
	ldi		;808e
	ret			;8090
L_8091:
	ld a,(0e600h)		;8091
	dec a			;8094
	jr z,L_80DC		;8095
	dec a			;8097
	jr z,L_80BB		;8098
	ld a,(0e601h)		;809a
	cp 002h		;809d
	jr c,L_80AE		;809f
	ld hl,08158h		;80a1
	ld a,(0e303h)		;80a4
	bit 2,a		;80a7
	ret z			;80a9
	ld hl,08170h		;80aa
	ret			;80ad
L_80AE:
	ld hl,08188h		;80ae
	ld a,(0e303h)		;80b1
	bit 2,a		;80b4
	ret z			;80b6
	ld hl,081a0h		;80b7
	ret			;80ba
L_80BB:
	ld a,(0e601h)		;80bb
	cp 002h		;80be
	jr c,L_80CF		;80c0
	ld hl,080f8h		;80c2
	ld a,(0e303h)		;80c5
	bit 2,a		;80c8
	ret z			;80ca
	ld hl,08110h		;80cb
	ret			;80ce
L_80CF:
	ld hl,08128h		;80cf
	ld a,(0e303h)		;80d2
	bit 2,a		;80d5
	ret z			;80d7
	ld hl,08140h		;80d8
	ret			;80db
L_80DC:
	ld hl,080e0h		;80dc
	ret			;80df

; ----------------------------------------------------------------------
; DATOS sin identificar  0x80e0..0x81b8  (216 bytes)
DATA_80E0:
	defb 000h,000h,004h,00fh,000h,000h,010h,005h,000h,000h,008h,00fh,000h,000h,014h,005h	; 80e0  ................
	defb 000h,000h,000h,00fh,000h,000h,00ch,005h,000h,000h,004h,00fh,000h,008h,014h,005h	; 80f0  ................
	defb 000h,000h,008h,00fh,000h,008h,01ch,005h,000h,000h,000h,00fh,000h,008h,00ch,005h	; 8100  ................
	defb 000h,000h,004h,00fh,000h,008h,018h,005h,000h,000h,008h,00fh,000h,008h,020h,005h	; 8110  .............. .
	defb 000h,000h,000h,00fh,000h,008h,010h,005h,000h,000h,004h,00fh,000h,008h,014h,009h	; 8120  ................
	defb 000h,000h,008h,00fh,000h,008h,01ch,009h,000h,000h,000h,00fh,000h,008h,00ch,009h	; 8130  ................
	defb 000h,000h,004h,00fh,000h,008h,018h,009h,000h,000h,008h,00fh,000h,008h,020h,009h	; 8140  .............. .
	defb 000h,000h,000h,00fh,000h,008h,010h,009h,000h,000h,004h,00fh,000h,000h,014h,005h	; 8150  ................
	defb 000h,000h,008h,00fh,000h,000h,01ch,005h,000h,000h,000h,00fh,000h,000h,00ch,005h	; 8160  ................
	defb 000h,000h,004h,00fh,000h,000h,018h,005h,000h,000h,008h,00fh,000h,000h,020h,005h	; 8170  .............. .
	defb 000h,000h,000h,00fh,000h,000h,010h,005h,000h,000h,004h,00fh,000h,000h,014h,009h	; 8180  ................
	defb 000h,000h,008h,00fh,000h,000h,01ch,009h,000h,000h,000h,00fh,000h,000h,00ch,009h	; 8190  ................
	defb 000h,000h,004h,00fh,000h,000h,018h,009h,000h,000h,008h,00fh,000h,000h,020h,009h	; 81a0  .............. .
	defb 000h,000h,000h,00fh,000h,000h,010h,009h	; 81b0  ........

; ======================================================================
; CODIGO 0x81b8..0x8336  (382 bytes)
; ======================================================================


L_81B8:
	call L_81D6		;81b8
	call L_81BF		;81bb
	ret			;81be
L_81BF:
	ld hl,0e604h		;81bf
	ld a,(hl)			;81c2
	add a,010h		;81c3
	cp 010h		;81c5
	jp nc,L_81CC		;81c7
	ld a,010h		;81ca
L_81CC:
	cp 0b6h		;81cc
	jr c,L_81D2		;81ce
	ld a,0b5h		;81d0
L_81D2:
	sub 010h		;81d2
	ld (hl),a			;81d4
	ret			;81d5
L_81D6:
	ld c,000h		;81d6
	ld hl,0e606h		;81d8
	ld a,(hl)			;81db
	cp 008h		;81dc
	jr nc,L_81E3		;81de
	ld a,008h		;81e0
	inc c			;81e2
L_81E3:
	cp 0d9h		;81e3
	jr c,L_81E9		;81e5
	ld a,0d8h		;81e7
L_81E9:
	ld (hl),a			;81e9
	ret			;81ea
L_81EB:
	ld a,(0e309h)		;81eb
	and 00fh		;81ee
	add a,a			;81f0
	add a,a			;81f1
	ld c,a			;81f2
	ld b,000h		;81f3
	ld hl,083f3h		;81f5
	add hl,bc			;81f8
	ld e,(hl)			;81f9
	inc hl			;81fa
	ld d,(hl)			;81fb
	inc hl			;81fc
	ld c,(hl)			;81fd
	inc hl			;81fe
	ld b,(hl)			;81ff
	ld (0ef82h),bc		;8200
	ld a,(0e602h)		;8204
	add a,003h		;8207
	ld (0ef80h),a		;8209
	ld b,a			;820c
	ld l,e			;820d
	ld h,d			;820e
L_820F:
	add hl,de			;820f
	djnz L_820F		;8210
	ld (0ef84h),hl		;8212
	ld hl,(0ef82h)		;8215
	ld e,l			;8218
	ld d,h			;8219
	ld a,(0ef80h)		;821a
	ld b,a			;821d
L_821E:
	add hl,de			;821e
	djnz L_821E		;821f
	ld c,l			;8221
	ld b,h			;8222
	ld de,(0ef84h)		;8223
	ret			;8227
L_8228:
	ld hl,(0e603h)		;8228
	add hl,de			;822b
	ld (0e603h),hl		;822c
	ld hl,(0e605h)		;822f
	add hl,bc			;8232
	ld (0e605h),hl		;8233
	ret			;8236
L_8237:
	ld a,(0e361h)		;8237
	cp 003h		;823a
	ret nz			;823c
	ld de,(0e363h)		;823d
	ld hl,0007fh		;8241
	or a			;8244
	sbc hl,de		;8245
	ret nc			;8247
	ld hl,00170h		;8248
	or a			;824b
	sbc hl,de		;824c
	ret c			;824e
	call L_8271		;824f
	ret nc			;8252
	push af			;8253
	call L_8295		;8254
	pop af			;8257
	ld hl,0e411h		;8258
	ld (hl),001h		;825b
	cp 002h		;825d
	ld hl,0e604h		;825f
	jr nc,L_826C		;8262
	ld a,(hl)			;8264
	sub 002h		;8265
	jr nc,L_826A		;8267
	xor a			;8269
L_826A:
	ld (hl),a			;826a
	ret			;826b
L_826C:
	ld a,(hl)			;826c
	add a,002h		;826d
	ld (hl),a			;826f
	ret			;8270
L_8271:
	ld a,(0e604h)		;8271
	add a,008h		;8274
	ld l,a			;8276
	ld a,(0e606h)		;8277
	ld h,a			;827a
	and 007h		;827b
	cp 004h		;827d
	push af			;827f
	call 04a46h		;8280
	pop af			;8283
	jr nc,L_828A		;8284
	call L_828F		;8286
	ret c			;8289
L_828A:
	inc hl			;828a
	call L_828F		;828b
	ret			;828e
L_828F:
	ld a,(hl)			;828f
	sub 059h		;8290
	cp 004h		;8292
	ret			;8294
L_8295:
	ld a,(0e303h)		;8295
	and 00fh		;8298
	call z,058f9h		;829a
	ret			;829d
L_829E:
	ld a,(0e361h)		;829e
	cp 003h		;82a1
	ret nz			;82a3
	ld a,(0e60dh)		;82a4
	or a			;82a7
	ret nz			;82a8
	ld hl,(0e363h)		;82a9
	ld de,00180h		;82ac
	rst 20h			;82af
	ret c			;82b0
	ld de,001d8h		;82b1
	rst 20h			;82b4
	jr nc,L_82C1		;82b5
	call L_8342		;82b7
	call L_82EC		;82ba
	call L_8295		;82bd
	ret			;82c0
L_82C1:
	ld hl,(0e645h)		;82c1
	bit 7,h		;82c4
	ld de,0ff80h		;82c6
	jr z,L_82CE		;82c9
	ld de,00080h		;82cb
L_82CE:
	add hl,de			;82ce
	ld (0e645h),hl		;82cf
	ld hl,(0e643h)		;82d2
	bit 7,h		;82d5
	ld de,0ff80h		;82d7
	jr z,L_82DF		;82da
	ld de,00080h		;82dc
L_82DF:
	add hl,de			;82df
	ld (0e643h),hl		;82e0
	call L_82EC		;82e3
	ld a,003h		;82e6
	ld (0e411h),a		;82e8
	ret			;82eb
L_82EC:
	call L_82F3		;82ec
	call L_8312		;82ef
	ret			;82f2
L_82F3:
	ld hl,(0e603h)		;82f3
	ld de,(0e643h)		;82f6
	bit 7,d		;82fa
	jr z,L_830D		;82fc
	call 04a75h		;82fe
	or a			;8301
	sbc hl,de		;8302
	jr nc,L_8309		;8304
	ld hl,00000h		;8306
L_8309:
	ld (0e603h),hl		;8309
	ret			;830c
L_830D:
	add hl,de			;830d
	ld (0e603h),hl		;830e
	ret			;8311
L_8312:
	ld hl,(0e605h)		;8312
	ld de,(0e645h)		;8315
	bit 7,d		;8319
	jr z,L_832C		;831b
	call 04a75h		;831d
	or a			;8320
	sbc hl,de		;8321
	jr nc,L_8328		;8323
	ld hl,00000h		;8325
L_8328:
	ld (0e605h),hl		;8328
	ret			;832b
L_832C:
	add hl,de			;832c
	jr nc,L_8332		;832d
	ld hl,0d800h		;832f
L_8332:
	ld (0e605h),hl		;8332
	ret			;8335

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8336..0x8342  (12 bytes)
DATA_8336:
	defb 02ah,045h,0e6h,0edh,05bh,005h,0e6h,019h,022h,005h,0e6h,0c9h	; 8336  *E..[..."...

; ======================================================================
; CODIGO 0x8342..0x83f3  (177 bytes)
; ======================================================================


L_8342:
	ld ix,0ed00h		;8342
	ld b,008h		;8346
L_8348:
	push bc			;8348
	call L_8355		;8349
	ld bc,00020h		;834c
	add ix,bc		;834f
	pop bc			;8351
	djnz L_8348		;8352
	ret			;8354
L_8355:
	ld a,(ix+000h)		;8355
	cp 00ch		;8358
	ret nz			;835a
	ld a,(ix+01dh)		;835b
	or a			;835e
	ret nz			;835f
	bit 6,(ix+012h)		;8360
	ret nz			;8364
	ld a,(ix+004h)		;8365
	add a,020h		;8368
	ld l,a			;836a
	ld a,(ix+006h)		;836b
	cp 0e0h		;836e
	ret nc			;8370
	add a,020h		;8371
	ld h,a			;8373
	ld a,(0e604h)		;8374
	add a,008h		;8377
	ld e,a			;8379
	ld a,(0e606h)		;837a
	add a,010h		;837d
	ld d,a			;837f
	call L_83AA		;8380
	ret c			;8383
	ld a,002h		;8384
	ld (0e411h),a		;8386
	call L_9D35		;8389
	ld (0e647h),de		;838c
	ld (0e649h),hl		;8390
	push hl			;8393
	ld hl,(0e643h)		;8394
	add hl,de			;8397
	call L_83BC		;8398
	ld (0e643h),hl		;839b
	pop de			;839e
	ld hl,(0e645h)		;839f
	add hl,de			;83a2
	call L_83BC		;83a3
	ld (0e645h),hl		;83a6
	ret			;83a9
L_83AA:
	ld a,d			;83aa
	sub h			;83ab
	jr c,L_83B0		;83ac
	neg		;83ae
L_83B0:
	cp 010h		;83b0
	ret c			;83b2
	ld a,e			;83b3
	sub l			;83b4
	jr c,L_83B9		;83b5
	neg		;83b7
L_83B9:
	cp 010h		;83b9
	ret			;83bb
L_83BC:
	bit 7,h		;83bc
	push af			;83be
	call nz,04a7dh		;83bf
	ld a,h			;83c2
	cp 004h		;83c3
	jr c,L_83CA		;83c5
	ld hl,00400h		;83c7
L_83CA:
	pop af			;83ca
	call nz,04a7dh		;83cb
	ret			;83ce
L_83CF:
	ld a,(0e411h)		;83cf
	cp 002h		;83d2
	ret nz			;83d4
	ld a,(0e604h)		;83d5
	add a,008h		;83d8
	ld l,a			;83da
	ld a,(0e606h)		;83db
	add a,008h		;83de
	ld h,a			;83e0
	call 04a46h		;83e1
	ld a,(hl)			;83e4
	sub 058h		;83e5
	cp 09dh		;83e7
	ret nc			;83e9
	ld a,001h		;83ea
	ld (0e61bh),a		;83ec
	ld (0e61fh),a		;83ef
	ret			;83f2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x83f3..0x8433  (64 bytes)
DATA_83F3:
	defb 000h,000h,000h,000h,080h,0ffh,000h,000h,080h,000h,000h,000h,000h,000h,000h,000h	; 83f3  ................
	defb 000h,000h,080h,0ffh,080h,0ffh,080h,0ffh,080h,000h,080h,0ffh,000h,000h,080h,0ffh	; 8403  ................
	defb 000h,000h,080h,000h,080h,0ffh,080h,000h,080h,000h,080h,000h,000h,000h,080h,000h	; 8413  ................
	defb 000h,000h,000h,000h,080h,0ffh,000h,000h,080h,000h,000h,000h,000h,000h,000h,000h	; 8423  ................

; ======================================================================
; CODIGO 0x8433..0x84b9  (134 bytes)
; ======================================================================


L_8433:
	ld b,0e0h		;8433
	call 04c40h		;8435
	xor a			;8438
	ld (0e31ah),a		;8439
	ret			;843c
L_843D:
	ld hl,0e600h		;843d
	ld a,(hl)			;8440
	or a			;8441
	ret m			;8442
	xor a			;8443
	ld (0e640h),a		;8444
	dec a			;8447
	ld (hl),a			;8448
	ld (0e610h),a		;8449
	ld (0e620h),a		;844c
	xor a			;844f
	call L_8469		;8450
	call 0504eh		;8453
	call 0594dh		;8456
	call 05863h		;8459
	ret			;845c
L_845D:
	ld hl,0e641h		;845d
	dec (hl)			;8460
	ret nz			;8461
	dec l			;8462
	inc (hl)			;8463
	ld a,(hl)			;8464
	cp 004h		;8465
	jr nc,L_8433		;8467
L_8469:
	ld hl,084b9h		;8469
	call 04a5ah		;846c
	ld a,(hl)			;846f
	ld (0e641h),a		;8470
	inc hl			;8473
	ld a,(0e604h)		;8474
	ld c,a			;8477
	ld a,(0e606h)		;8478
	ld b,a			;847b
	ld de,0e618h		;847c
	call L_8495		;847f
	ld de,0e61ch		;8482
	call L_8495		;8485
	ld de,0e628h		;8488
	call L_8495		;848b
	ld de,0e62ch		;848e
	call L_8495		;8491
	ret			;8494
L_8495:
	ld a,(hl)			;8495
	cp 080h		;8496
	jr z,L_84AC		;8498
	add a,c			;849a
	ld (de),a			;849b
	inc hl			;849c
	inc de			;849d
	ld a,(hl)			;849e
	add a,b			;849f
	ld (de),a			;84a0
	inc hl			;84a1
	inc de			;84a2
	ld a,(hl)			;84a3
	ld (de),a			;84a4
	inc hl			;84a5
	inc de			;84a6
	ld a,(hl)			;84a7
	ld (de),a			;84a8
	inc hl			;84a9
	inc de			;84aa
	ret			;84ab
L_84AC:
	ld a,0e0h		;84ac
	ld (de),a			;84ae
	ld a,e			;84af
	add a,004h		;84b0
	ld e,a			;84b2
	ld a,004h		;84b3
	call 04089h		;84b5
	ret			;84b8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x84b9..0x8516  (93 bytes)
DATA_84B9:
	defb 0c1h,084h,0d2h,084h,0e3h,084h,0f4h,084h,00ah,000h,000h,000h,008h,000h,010h,004h	; 84b9  ................
	defb 008h,000h,000h,008h,00ah,000h,010h,00ch,00ah,014h,000h,000h,010h,008h,000h,010h	; 84c9  ................
	defb 014h,008h,000h,000h,018h,00ah,000h,010h,01ch,00ah,00ah,000h,000h,020h,008h,000h	; 84d9  ............. ..
	defb 010h,024h,008h,000h,000h,028h,00ah,000h,010h,02ch,00ah,00ah,000h,008h,030h,008h	; 84e9  .$...(...,....0.
	defb 000h,008h,034h,008h,080h,000h,000h,000h,080h,000h,000h,000h,021h,010h,0e6h,006h	; 84f9  ..4.........!...
	defb 001h,07eh,0b7h,028h,003h,02eh,020h,004h,070h,0cdh,0c9h,085h,0c9h	; 8509  .~.(.. .p....

; ======================================================================
; CODIGO 0x8516..0x856c  (86 bytes)
; ======================================================================


L_8516:
	ld a,(0e600h)		;8516
	dec a			;8519
	ret m			;851a
	call L_858C		;851b
	ld a,(0e608h)		;851e
	or a			;8521
	ret z			;8522
	call L_852A		;8523
	call L_85C9		;8526
	ret			;8529
L_852A:
	ld hl,0e609h		;852a
	inc (hl)			;852d
	ld a,(hl)			;852e
	cp 002h		;852f
	ret c			;8531
	ld (hl),000h		;8532
	inc l			;8534
	inc (hl)			;8535
	ld a,(0e608h)		;8536
	dec a			;8539
	jr z,L_8542		;853a
	ld de,0e622h		;853c
	call L_8549		;853f
L_8542:
	ld de,0e612h		;8542
	call L_8549		;8545
	ret			;8548
L_8549:
	ld a,(0e380h)		;8549
	add a,a			;854c
	add a,a			;854d
	add a,a			;854e
	ld hl,0856ch		;854f
	call 04089h		;8552
	ld a,(0e60ah)		;8555
	and 003h		;8558
	add a,a			;855a
	call 04089h		;855b
	ldi		;855e
	ldi		;8560
	ld a,(0e49ah)		;8562
	or a			;8565
	ret z			;8566
	dec de			;8567
	ld a,00eh		;8568
	ld (de),a			;856a
	ret			;856b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x856c..0x858c  (32 bytes)
DATA_856C:
	defb 03ch,00ah,03ch,009h,040h,008h,040h,006h,03ch,00ch,03ch,002h,040h,002h,040h,00ch	; 856c  <.<.@.@.<.<.@.@.
	defb 03ch,00ah,03ch,00bh,040h,00bh,040h,00ah,03ch,004h,03ch,005h,040h,005h,040h,004h	; 857c  <.<.@.@.<.<.@.@.

; ======================================================================
; CODIGO 0x858c..0x8647  (187 bytes)
; ======================================================================


L_858C:
	ld a,(0e37eh)		;858c
	or a			;858f
	ret nz			;8590
	ld a,(0e411h)		;8591
	or a			;8594
	jr nz,L_85AC		;8595
	ld a,(0e60dh)		;8597
	or a			;859a
	jr nz,L_85AC		;859b
	ld a,(0e309h)		;859d
	and 00fh		;85a0
	ret z			;85a2
	cp 003h		;85a3
	ret z			;85a5
	cp 00ch		;85a6
	ret z			;85a8
	cp 00fh		;85a9
	ret z			;85ab
L_85AC:
	ld hl,0e660h		;85ac
	ld a,(0e60bh)		;85af
	add a,a			;85b2
	add a,l			;85b3
	ld l,a			;85b4
	ld a,(0e604h)		;85b5
	ld (hl),a			;85b8
	ld a,(0e606h)		;85b9
	inc l			;85bc
	ld (hl),a			;85bd
	ld hl,0e60bh		;85be
	inc (hl)			;85c1
	ld a,(hl)			;85c2
	cp 010h		;85c3
	ret c			;85c5
	ld (hl),000h		;85c6
	ret			;85c8
L_85C9:
	ld a,(0e37eh)		;85c9
	dec a			;85cc
	jp m,L_85D6		;85cd
	jp z,L_8667		;85d0
	jp L_85F8		;85d3
L_85D6:
	ld hl,0e60bh		;85d6
	ld bc,0e624h		;85d9
	ld a,(hl)			;85dc
	call L_85EA		;85dd
	ld bc,0e614h		;85e0
	ld a,(hl)			;85e3
	sub 008h		;85e4
	jr nc,L_85EA		;85e6
	add a,010h		;85e8
L_85EA:
	add a,a			;85ea
	ld de,0e660h		;85eb
	add a,e			;85ee
	ld e,a			;85ef
	ld a,(de)			;85f0
	ld (bc),a			;85f1
	inc e			;85f2
	inc c			;85f3
	inc c			;85f4
	ld a,(de)			;85f5
	ld (bc),a			;85f6
	ret			;85f7
L_85F8:
	exx			;85f8
	ld hl,0e624h		;85f9
	exx			;85fc
	ld a,(0e303h)		;85fd
	and 00fh		;8600
	call L_8619		;8602
	exx			;8605
	ld hl,0e614h		;8606
	exx			;8609
	ld a,(0e303h)		;860a
	and 00fh		;860d
	sub 008h		;860f
	jr nc,L_8615		;8611
	add a,010h		;8613
L_8615:
	call L_8619		;8615
	ret			;8618
L_8619:
	ld hl,0e604h		;8619
	ld de,08647h		;861c
	add a,a			;861f
	call 0408eh		;8620
	ld a,(de)			;8623
	add a,(hl)			;8624
	inc l			;8625
	inc l			;8626
	exx			;8627
	ld (hl),a			;8628
	inc l			;8629
	inc l			;862a
	exx			;862b
	inc de			;862c
	ld a,(de)			;862d
	or a			;862e
	jp p,L_863E		;862f
	neg		;8632
	ld d,a			;8634
	ld a,(hl)			;8635
	sub d			;8636
	jr nc,L_863A		;8637
	xor a			;8639
L_863A:
	exx			;863a
	ld (hl),a			;863b
	exx			;863c
	ret			;863d
L_863E:
	ld a,(de)			;863e
	add a,(hl)			;863f
	jr nc,L_863A		;8640
	ld a,0f8h		;8642
	jp L_863A		;8644

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8647..0x8667  (32 bytes)
DATA_8647:
	defb 0e0h,000h,0e3h,00ch,0eah,016h,0f4h,01dh,000h,020h,00ch,01dh,016h,016h,01dh,00ch	; 8647  ......... ......
	defb 020h,000h,01dh,0f4h,016h,0eah,00ch,0e3h,000h,0e0h,0f4h,0e3h,0eah,0eah,0e3h,0f4h	; 8657   ...............

; ======================================================================
; CODIGO 0x8667..0x8688  (33 bytes)
; ======================================================================


L_8667:
	ld ix,0e610h		;8667
	call L_8676		;866b
	ld ix,0e620h		;866e
	call L_8676		;8672
	ret			;8675
L_8676:
	ld a,(ix+000h)		;8676
	or a			;8679
	ret z			;867a
	ld hl,08686h		;867b
	call 04a5ah		;867e
	call L_868C		;8681
	call L_86A4		;8684
	ret			;8687

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8688..0x868c  (4 bytes)
DATA_8688:
	defb 0f0h,0f0h,010h,0f0h	; 8688

; ======================================================================
; CODIGO 0x868c..0x870f  (131 bytes)
; ======================================================================


L_868C:
	ld a,(0e604h)		;868c
	add a,l			;868f
	ld (ix+004h),a		;8690
	cp 0e0h		;8693
	jr c,L_869C		;8695
	ld (ix+004h),000h		;8697
	ret			;869b
L_869C:
	cp 0a5h		;869c
	ret c			;869e
	ld (ix+004h),0a5h		;869f
	ret			;86a3
L_86A4:
	ld a,(0e606h)		;86a4
	add a,h			;86a7
	ld (ix+006h),a		;86a8
	cp 0e8h		;86ab
	ret c			;86ad
	ld (ix+006h),000h		;86ae
	ret			;86b2
L_86B3:
	ld a,001h		;86b3
	call L_86BE		;86b5
	ret			;86b8
L_86B9:
	xor a			;86b9
	call L_86BE		;86ba
	ret			;86bd
L_86BE:
	ld (0e410h),a		;86be
	ld iy,0e680h		;86c1
	ld b,009h		;86c5
L_86C7:
	push bc			;86c7
	call L_86E7		;86c8
	call L_86D7		;86cb
	ld bc,00020h		;86ce
	add iy,bc		;86d1
	pop bc			;86d3
	djnz L_86C7		;86d4
	ret			;86d6
L_86D7:
	ld a,(iy+000h)		;86d7
	or a			;86da
	ret z			;86db
	ld a,(iy+003h)		;86dc
	cp 0b0h		;86df
	ret c			;86e1
L_86E2:
	ld (iy+000h),000h		;86e2
	ret			;86e6
L_86E7:
	call L_86FF		;86e7
	ld a,(0e410h)		;86ea
	or a			;86ed
	ret nz			;86ee
	ld a,(iy+000h)		;86ef
	cp 018h		;86f2
	jp z,L_8E13		;86f4
	sub 005h		;86f7
	cp 00ah		;86f9
	jp c,L_8E13		;86fb
	ret			;86fe
L_86FF:
	ld a,(iy+000h)		;86ff
	or a			;8702
	ret z			;8703
	call L_873F		;8704
	ret nc			;8707
	ld a,(iy+000h)		;8708
	dec a			;870b
	call 04093h		;870c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x870f..0x873f  (48 bytes)
DATA_870F:
	defb 0b7h,088h,0c3h,088h,01eh,089h,00dh,089h,029h,08ah,0c0h,08ah,0c0h,08ah,0c0h,08ah	; 870f  ........).......
	defb 0f3h,08bh,068h,08bh,083h,08ch,083h,08ch,00eh,08bh,032h,08bh,08bh,092h,0feh,08eh	; 871f  ..h.......2.....
	defb 0feh,08eh,0feh,08eh,078h,091h,033h,08fh,033h,08fh,033h,08fh,078h,091h,087h,08dh	; 872f  ....x.3.3.3.x...

; ======================================================================
; CODIGO 0x873f..0x880a  (203 bytes)
; ======================================================================


L_873F:
	ld a,(0e410h)		;873f
	or a			;8742
	jr nz,L_874E		;8743
	ld a,(iy+000h)		;8745
	sub 00fh		;8748
	cp 009h		;874a
	ccf			;874c
	ret			;874d
L_874E:
	ld a,(iy+000h)		;874e
	sub 00fh		;8751
	cp 009h		;8753
	ret			;8755
L_8756:
	xor a			;8756
	ld (0e639h),a		;8757
	ret			;875a
L_875B:
	ld b,000h		;875b
	ld a,(0e600h)		;875d
	dec a			;8760
	ret m			;8761
	inc b			;8762
	ret			;8763
L_8764:
	ld a,(0e361h)		;8764
	cp 003h		;8767
	jr nz,L_877F		;8769
	ld hl,(0e363h)		;876b
	ld de,00100h		;876e
	rst 20h			;8771
	jr c,L_877F		;8772
	ld de,00180h		;8774
	rst 20h			;8777
	jr nc,L_877F		;8778
	ld a,(0e49ah)		;877a
	or a			;877d
	ret			;877e
L_877F:
	xor a			;877f
	ret			;8780
L_8781:
	call L_875B		;8781
	dec b			;8784
	ret nz			;8785
	ld a,(0e308h)		;8786
	and 010h		;8789
	jr nz,L_87A4		;878b
	ld a,(0e309h)		;878d
	and 010h		;8790
	jr z,L_8756		;8792
	ld hl,0e638h		;8794
	bit 0,(hl)		;8797
	jr nz,L_87A4		;8799
	inc l			;879b
	inc (hl)			;879c
	ld a,(hl)			;879d
	cp 010h		;879e
	ret c			;87a0
	dec l			;87a1
	ld (hl),001h		;87a2
L_87A4:
	call L_8756		;87a4
	call L_8764		;87a7
	ret nz			;87aa
	ld ix,0e600h		;87ab
	ld a,003h		;87af
	ld (0e633h),a		;87b1
	ld hl,00000h		;87b4
	ld (0e634h),hl		;87b7
L_87BA:
	ld a,(ix+000h)		;87ba
	or a			;87bd
	call nz,L_87D7		;87be
	ld bc,00010h		;87c1
	add ix,bc		;87c4
	ld hl,(0e634h)		;87c6
	ld bc,00060h		;87c9
	add hl,bc			;87cc
	ld (0e634h),hl		;87cd
	ld hl,0e633h		;87d0
	dec (hl)			;87d3
	jr nz,L_87BA		;87d4
	ret			;87d6
L_87D7:
	ld a,(0e5e0h)		;87d7
	or a			;87da
	jr z,L_87E6		;87db
	ld a,(0e633h)		;87dd
	cp 003h		;87e0
	ret nz			;87e2
	jp L_8D17		;87e3
L_87E6:
	ld a,(0e5e1h)		;87e6
	or a			;87e9
	ret nz			;87ea
	ld a,003h		;87eb
	ld (0e636h),a		;87ed
	ld de,0e630h		;87f0
L_87F3:
	push de			;87f3
	call L_8800		;87f4
	pop de			;87f7
	inc de			;87f8
	ld hl,0e636h		;87f9
	dec (hl)			;87fc
	jr nz,L_87F3		;87fd
	ret			;87ff
L_8800:
	ld a,(de)			;8800
	or a			;8801
	ret z			;8802
	ld (0e642h),a		;8803
	dec a			;8806
	call 04093h		;8807

; ----------------------------------------------------------------------
; DATOS sin identificar  0x880a..0x883a  (48 bytes)
DATA_880A:
	defb 03ah,088h,06fh,088h,0e8h,088h,0cfh,088h,035h,089h,083h,089h,0c0h,089h,072h,089h	; 880a  :.o.....5.....r.
	defb 0c0h,08bh,039h,08bh,059h,08ch,04bh,08ch,0f2h,089h,01fh,08ah,0deh,08eh,0aah,08eh	; 881a  ..9.Y.K.........
	defb 0aah,08eh,0aah,08eh,0efh,08eh,0aah,08eh,0aah,08eh,0aah,08eh,0efh,08eh,017h,08dh	; 882a  ................

; ======================================================================
; CODIGO 0x883a..0x8edf  (1701 bytes)
; ======================================================================


L_883A:
	ld a,(0e636h)		;883a
	cp 003h		;883d
	jr nz,L_885F		;883f
	xor a			;8841
	ld (0e637h),a		;8842
	ld a,(0e631h)		;8845
	sub 003h		;8848
	cp 002h		;884a
	jr nc,L_8852		;884c
	call L_887C		;884e
	ret nz			;8851
L_8852:
	call L_8DC9		;8852
	ret nz			;8855
	ld a,001h		;8856
	ld (0e637h),a		;8858
	call L_8896		;885b
	ret			;885e
L_885F:
	ld hl,0e637h		;885f
	ld a,(hl)			;8862
	or a			;8863
	ld (hl),000h		;8864
	ret nz			;8866
	call L_8DC3		;8867
	ret nz			;886a
	call L_8896		;886b
	ret			;886e
L_886F:
	call L_8DC3		;886f
	ret nz			;8872
	ld (hl),002h		;8873
	ld de,00800h		;8875
	call L_889B		;8878
	ret			;887b
L_887C:
	call L_8DC9		;887c
	jr nz,L_888F		;887f
	push hl			;8881
	ld bc,00020h		;8882
	add hl,bc			;8885
	ld a,(hl)			;8886
	or a			;8887
	pop hl			;8888
	jr nz,L_888F		;8889
	ld a,000h		;888b
	jr L_8891		;888d
L_888F:
	ld a,001h		;888f
L_8891:
	ld (0e63ah),a		;8891
	or a			;8894
	ret			;8895
L_8896:
	ld (hl),001h		;8896
	ld de,00808h		;8898
L_889B:
	call L_8DF1		;889b
	ld a,(iy+005h)		;889e
	and 0f8h		;88a1
	ld (iy+005h),a		;88a3
	ld d,001h		;88a6
	call L_8E08		;88a8
	ld (iy+00ch),008h		;88ab
	ld (iy+00dh),002h		;88af
	call 0582bh		;88b3
	ret			;88b6
L_88B7:
	ld a,(iy+005h)		;88b7
	add a,00ch		;88ba
	ld (iy+005h),a		;88bc
	call c,L_86E2		;88bf
	ret			;88c2
L_88C3:
	ld a,(iy+005h)		;88c3
	sub 00ch		;88c6
	ld (iy+005h),a		;88c8
	call c,L_86E2		;88cb
	ret			;88ce
L_88CF:
	ld a,(0e63ah)		;88cf
	or a			;88d2
	ret nz			;88d3
	call L_8DC3		;88d4
	ret nz			;88d7
	ld (hl),004h		;88d8
	ld de,00808h		;88da
	call L_8DF1		;88dd
	ld (iy+006h),054h		;88e0
	call L_88FD		;88e4
	ret			;88e7
L_88E8:
	ld a,(0e63ah)		;88e8
	or a			;88eb
	ret nz			;88ec
	call L_8DC3		;88ed
	ret nz			;88f0
	ld (hl),003h		;88f1
	ld de,00808h		;88f3
	call L_8DF1		;88f6
	ld (iy+006h),050h		;88f9
L_88FD:
	ld (iy+007h),007h		;88fd
	ld (iy+00ch),008h		;8901
	ld (iy+00dh),002h		;8905
	call 0582fh		;8909
	ret			;890c
L_890D:
	ld a,(iy+003h)		;890d
	add a,006h		;8910
	cp 0b0h		;8912
	ld (iy+003h),a		;8914
	jp nc,L_86E2		;8917
	call L_8929		;891a
	ret			;891d
L_891E:
	ld a,(iy+003h)		;891e
	sub 006h		;8921
	ld (iy+003h),a		;8923
	jp c,L_86E2		;8926
L_8929:
	ld a,(iy+005h)		;8929
	add a,006h		;892c
	jp c,L_86E2		;892e
	ld (iy+005h),a		;8931
	ret			;8934
L_8935:
	call L_8DC9		;8935
	ret nz			;8938
	ld (hl),005h		;8939
	inc l			;893b
	ld (hl),000h		;893c
	ld de,00810h		;893e
	call L_8DF1		;8941
	ld a,(iy+005h)		;8944
	and 0f8h		;8947
	ld (iy+005h),a		;8949
	ld d,005h		;894c
	call L_8E08		;894e
	call L_8968		;8951
	ld (iy+00ah),000h		;8954
	ld (iy+00bh),01ch		;8958
	ld (iy+00ch),000h		;895c
	ld (iy+00dh),002h		;8960
	call 05833h		;8964
	ret			;8967
L_8968:
	push ix		;8968
	pop bc			;896a
	ld (iy+008h),c		;896b
	ld (iy+009h),b		;896e
	ret			;8971
L_8972:
	call L_8DC9		;8972
	ret nz			;8975
	ld a,008h		;8976
	call L_8994		;8978
	ld (iy+006h),00ch		;897b
	call 05843h		;897f
	ret			;8982
L_8983:
	call L_8DC9		;8983
	ret nz			;8986
	ld a,006h		;8987
	call L_8994		;8989
	ld (iy+006h),009h		;898c
	call 0583bh		;8990
	ret			;8993
L_8994:
	ld (hl),a			;8994
	inc l			;8995
	ld (hl),000h		;8996
	ld a,(ix+004h)		;8998
	add a,008h		;899b
	and 0f8h		;899d
	ld (iy+003h),a		;899f
	ld a,(ix+006h)		;89a2
	add a,010h		;89a5
	and 0f8h		;89a7
	ld (iy+005h),a		;89a9
	call L_8968		;89ac
	ld (iy+00ah),000h		;89af
	ld (iy+00bh),01ch		;89b3
	ld (iy+00ch),000h		;89b7
	ld (iy+00dh),008h		;89bb
	ret			;89bf
L_89C0:
	call L_8DC9		;89c0
	ret nz			;89c3
	ld (hl),007h		;89c4
	inc l			;89c6
	ld (hl),000h		;89c7
	ld a,(ix+004h)		;89c9
	and 0f8h		;89cc
	ld (iy+003h),a		;89ce
	ld a,(ix+006h)		;89d1
	add a,010h		;89d4
	and 0f8h		;89d6
	ld (iy+005h),a		;89d8
	call L_8968		;89db
	ld (iy+00ah),000h		;89de
	ld (iy+00bh),01ch		;89e2
	ld (iy+00ch),000h		;89e6
	ld (iy+00dh),010h		;89ea
	call 0583fh		;89ee
	ret			;89f1
L_89F2:
	call L_8DC3		;89f2
	ret nz			;89f5
	ld a,00dh		;89f6
L_89F8:
	ld (hl),a			;89f8
	inc l			;89f9
	ld (hl),004h		;89fa
	ld de,00800h		;89fc
	call L_8DF1		;89ff
	ld a,(iy+005h)		;8a02
	and 0f8h		;8a05
	ld (iy+005h),a		;8a07
	ld d,005h		;8a0a
	call L_8E08		;8a0c
	ld (iy+00ah),002h		;8a0f
	ld (iy+00ch),010h		;8a13
	ld (iy+00dh),008h		;8a17
	call 05837h		;8a1b
	ret			;8a1e
L_8A1F:
	call L_8DC3		;8a1f
	ret nz			;8a22
	ld a,00eh		;8a23
	call L_89F8		;8a25
	ret			;8a28
L_8A29:
	ld a,(iy+001h)		;8a29
	dec a			;8a2c
	jr z,L_8A93		;8a2d
	jp p,L_8AA4		;8a2f
	ld c,(iy+008h)		;8a32
	ld b,(iy+009h)		;8a35
	push bc			;8a38
	pop ix		;8a39
	ld de,00810h		;8a3b
	call L_8DF1		;8a3e
	ld a,(iy+005h)		;8a41
	and 0f8h		;8a44
	ld (iy+005h),a		;8a46
	cp 0f8h		;8a49
	jp nc,L_86E2		;8a4b
	ld d,005h		;8a4e
	call L_8E08		;8a50
L_8A53:
	ld a,(iy+00ah)		;8a53
	add a,004h		;8a56
	ld (iy+00ah),a		;8a58
	ld a,(iy+00bh)		;8a5b
	sub 004h		;8a5e
	ld (iy+00bh),a		;8a60
	jr nz,L_8A6C		;8a63
	ld (iy+001h),001h		;8a65
	jp L_8A77		;8a69
L_8A6C:
	ld a,(0e309h)		;8a6c
	and 010h		;8a6f
	jr nz,L_8A77		;8a71
	ld (iy+001h),001h		;8a73
L_8A77:
	ld a,(iy+00ah)		;8a77
	add a,a			;8a7a
	add a,a			;8a7b
	add a,a			;8a7c
	neg		;8a7d
	sub (iy+005h)		;8a7f
	ret nc			;8a82
	neg		;8a83
	rra			;8a85
	rra			;8a86
	rra			;8a87
	and 01fh		;8a88
	sub (iy+00ah)		;8a8a
	neg		;8a8d
	ld (iy+00ah),a		;8a8f
	ret			;8a92
L_8A93:
	call L_8AB7		;8a93
	jp c,L_86E2		;8a96
	call L_8A77		;8a99
	ld a,(iy+00ah)		;8a9c
	or a			;8a9f
	ret nz			;8aa0
	jp L_86E2		;8aa1
L_8AA4:
	call L_8AB7		;8aa4
	jp c,L_86E2		;8aa7
	ld a,(iy+00ah)		;8aaa
	sub 005h		;8aad
	jp c,L_86E2		;8aaf
	inc a			;8ab2
	ld (iy+00ah),a		;8ab3
	ret			;8ab6
L_8AB7:
	ld a,(iy+005h)		;8ab7
	add a,020h		;8aba
	ld (iy+005h),a		;8abc
	ret			;8abf
L_8AC0:
	ld a,(iy+001h)		;8ac0
	dec a			;8ac3
	jr z,L_8A93		;8ac4
	jp p,L_8AA4		;8ac6
	ld c,(iy+008h)		;8ac9
	ld b,(iy+009h)		;8acc
	push bc			;8acf
	pop ix		;8ad0
	ld a,(ix+004h)		;8ad2
	add a,008h		;8ad5
	and 0f8h		;8ad7
	ld (iy+003h),a		;8ad9
	ld a,(ix+006h)		;8adc
	add a,010h		;8adf
	and 0f8h		;8ae1
	ld (iy+005h),a		;8ae3
	cp 0f8h		;8ae6
	jp nc,L_86E2		;8ae8
	call L_8A53		;8aeb
	ret			;8aee
L_8AEF:
	ld a,(iy+003h)		;8aef
	sub 006h		;8af2
	jp c,L_86E2		;8af4
L_8AF7:
	ld (iy+003h),a		;8af7
	ld d,005h		;8afa
	call L_8E0B		;8afc
	ret			;8aff
L_8B00:
	ld a,(iy+003h)		;8b00
	add a,006h		;8b03
	cp 0b0h		;8b05
	jp nc,L_86E2		;8b07
	call L_8AF7		;8b0a
	ret			;8b0d
L_8B0E:
	call L_8AEF		;8b0e
L_8B11:
	dec (iy+001h)		;8b11
	ret nz			;8b14
	ld (iy+001h),004h		;8b15
	ld a,(iy+005h)		;8b19
	or a			;8b1c
	ld b,001h		;8b1d
	jr z,L_8B27		;8b1f
	inc b			;8b21
	sub 008h		;8b22
	ld (iy+005h),a		;8b24
L_8B27:
	ld a,(iy+00ah)		;8b27
	add a,b			;8b2a
	ld (iy+00ah),a		;8b2b
	call L_8A77		;8b2e
	ret			;8b31
L_8B32:
	call L_8B00		;8b32
	call L_8B11		;8b35
	ret			;8b38
L_8B39:
	call L_8DC9		;8b39
	ret nz			;8b3c
	ld (hl),00ah		;8b3d
	inc l			;8b3f
	ld (hl),004h		;8b40
	ld a,(ix+004h)		;8b42
	and 0f8h		;8b45
	ld (iy+003h),a		;8b47
	ld a,(ix+006h)		;8b4a
	add a,010h		;8b4d
	and 0f8h		;8b4f
	ld (iy+005h),a		;8b51
	ld (iy+00ah),002h		;8b54
	ld (iy+00ch),010h		;8b58
	ld (iy+00dh),010h		;8b5c
	ld (iy+010h),000h		;8b60
	call 05847h		;8b64
	ret			;8b67
L_8B68:
	ld a,(iy+010h)		;8b68
	or a			;8b6b
	jr z,L_8B80		;8b6c
	dec (iy+011h)		;8b6e
	jp z,L_86E2		;8b71
	ld a,(iy+005h)		;8b74
	add a,008h		;8b77
	jp c,L_86E2		;8b79
	ld (iy+005h),a		;8b7c
	ret			;8b7f
L_8B80:
	ld a,(iy+005h)		;8b80
	add a,008h		;8b83
	ld (iy+005h),a		;8b85
	jp c,L_86E2		;8b88
	dec (iy+001h)		;8b8b
	ret nz			;8b8e
	ld (iy+001h),004h		;8b8f
	ld a,(iy+003h)		;8b93
	or a			;8b96
	ld b,001h		;8b97
	jr z,L_8BA1		;8b99
	inc b			;8b9b
	sub 008h		;8b9c
	ld (iy+003h),a		;8b9e
L_8BA1:
	ld a,(iy+00ah)		;8ba1
	add a,b			;8ba4
	ld (iy+00ah),a		;8ba5
	ld a,(iy+003h)		;8ba8
	rra			;8bab
	rra			;8bac
	rra			;8bad
	and 01fh		;8bae
	add a,(iy+00ah)		;8bb0
	sub 017h		;8bb3
	ret c			;8bb5
	inc a			;8bb6
	neg		;8bb7
	add a,(iy+00ah)		;8bb9
	ld (iy+00ah),a		;8bbc
	ret			;8bbf
L_8BC0:
	call L_8DC9		;8bc0
	ret nz			;8bc3
	ld (hl),009h		;8bc4
	inc l			;8bc6
	ld (hl),004h		;8bc7
	ld a,(ix+004h)		;8bc9
	and 0f8h		;8bcc
	ld (iy+003h),a		;8bce
	ld a,(ix+006h)		;8bd1
	add a,010h		;8bd4
	and 0f8h		;8bd6
	ld (iy+005h),a		;8bd8
	ld (iy+006h),011h		;8bdb
	ld (iy+00ah),002h		;8bdf
	ld (iy+00ch),010h		;8be3
	ld (iy+00dh),010h		;8be7
	ld (iy+010h),000h		;8beb
	call 0584fh		;8bef
	ret			;8bf2
L_8BF3:
	ld a,(iy+010h)		;8bf3
	or a			;8bf6
	jr z,L_8C0B		;8bf7
	dec (iy+011h)		;8bf9
	jp z,L_86E2		;8bfc
	ld a,(iy+005h)		;8bff
	add a,008h		;8c02
	jp c,L_86E2		;8c04
	ld (iy+005h),a		;8c07
	ret			;8c0a
L_8C0B:
	ld a,(iy+005h)		;8c0b
	add a,008h		;8c0e
	jp c,L_86E2		;8c10
	ld (iy+005h),a		;8c13
	dec (iy+001h)		;8c16
	ret nz			;8c19
	ld (iy+001h),004h		;8c1a
	ld a,(iy+003h)		;8c1e
	or a			;8c21
	ld b,001h		;8c22
	jr z,L_8C2C		;8c24
	inc b			;8c26
	sub 008h		;8c27
	ld (iy+003h),a		;8c29
L_8C2C:
	ld a,(iy+00ah)		;8c2c
	add a,b			;8c2f
	ld (iy+00ah),a		;8c30
	ld a,(iy+003h)		;8c33
	rra			;8c36
	rra			;8c37
	rra			;8c38
	and 01fh		;8c39
	add a,(iy+00ah)		;8c3b
	sub 017h		;8c3e
	ret c			;8c40
	inc a			;8c41
	neg		;8c42
	add a,(iy+00ah)		;8c44
	ld (iy+00ah),a		;8c47
	ret			;8c4a
L_8C4B:
	call L_8DC9		;8c4b
	ret nz			;8c4e
	ld (hl),00ch		;8c4f
	call L_8C5F		;8c51
	ld (iy+00dh),010h		;8c54
	ret			;8c58
L_8C59:
	call L_8DC9		;8c59
	ret nz			;8c5c
	ld (hl),00bh		;8c5d
L_8C5F:
	inc l			;8c5f
	ld (hl),000h		;8c60
	call L_8CF3		;8c62
	ld (iy+006h),010h		;8c65
	push ix		;8c69
	pop bc			;8c6b
	ld (iy+008h),c		;8c6c
	ld (iy+009h),b		;8c6f
	xor a			;8c72
	ld (iy+00ah),a		;8c73
	ld (iy+00bh),a		;8c76
	ld (iy+00ch),a		;8c79
	ld (iy+00dh),008h		;8c7c
	jp 0584bh		;8c80
L_8C83:
	ld c,(iy+008h)		;8c83
	ld b,(iy+009h)		;8c86
	ld a,(bc)			;8c89
	or a			;8c8a
	jp z,L_86E2		;8c8b
	bit 0,(iy+001h)		;8c8e
	jr nz,L_8CC3		;8c92
	call L_8CEA		;8c94
	inc (iy+00bh)		;8c97
	ld a,(iy+00bh)		;8c9a
	cp 008h		;8c9d
	jr c,L_8CA5		;8c9f
	ld (iy+001h),001h		;8ca1
L_8CA5:
	ld a,(iy+005h)		;8ca5
	rra			;8ca8
	rra			;8ca9
	rra			;8caa
	and 01fh		;8cab
	add a,(iy+00bh)		;8cad
	sub 021h		;8cb0
	jr nc,L_8CB9		;8cb2
	ld a,(iy+00bh)		;8cb4
	jr L_8CBF		;8cb7
L_8CB9:
	inc a			;8cb9
	neg		;8cba
	add a,(iy+00bh)		;8cbc
L_8CBF:
	ld (iy+00ah),a		;8cbf
	ret			;8cc2
L_8CC3:
	call L_8CEA		;8cc3
	dec (iy+00bh)		;8cc6
	jp z,L_86E2		;8cc9
	ld a,(0e630h)		;8ccc
	cp (iy+000h)		;8ccf
	ret nz			;8cd2
	call L_875B		;8cd3
	dec b			;8cd6
	jr nz,L_8CA5		;8cd7
	ld a,(0e308h)		;8cd9
	and 010h		;8cdc
	jr z,L_8CA5		;8cde
	ld (iy+001h),000h		;8ce0
	call L_8CA5		;8ce4
	jp 0584bh		;8ce7
L_8CEA:
	ld c,(iy+008h)		;8cea
	ld b,(iy+009h)		;8ced
	push bc			;8cf0
	pop ix		;8cf1
L_8CF3:
	ld a,(iy+000h)		;8cf3
	cp 00bh		;8cf6
	ld b,006h		;8cf8
	jr z,L_8CFE		;8cfa
	ld b,002h		;8cfc
L_8CFE:
	ld a,(ix+004h)		;8cfe
	add a,b			;8d01
	and 0f8h		;8d02
	ld (iy+003h),a		;8d04
	ld a,(ix+006h)		;8d07
	add a,010h		;8d0a
	and 0f8h		;8d0c
	ld (iy+005h),a		;8d0e
	cp 0f8h		;8d11
	jp z,L_86E2		;8d13
	ret			;8d16
L_8D17:
	xor a			;8d17
	ld (0e5e0h),a		;8d18
	inc a			;8d1b
	ld (0e5e1h),a		;8d1c
	ld hl,0e680h		;8d1f
	push hl			;8d22
	pop iy		;8d23
	ld (hl),018h		;8d25
	inc l			;8d27
	ld (hl),000h		;8d28
	ld a,(ix+004h)		;8d2a
	and 0f8h		;8d2d
	sub 028h		;8d2f
	ld c,a			;8d31
	ld b,00ch		;8d32
	jr c,L_8D46		;8d34
	sub 050h		;8d36
	jr c,L_8D55		;8d38
	srl a		;8d3a
	srl a		;8d3c
	srl a		;8d3e
	sub b			;8d40
	neg		;8d41
	ld b,a			;8d43
	jr L_8D55		;8d44
L_8D46:
	neg		;8d46
	srl a		;8d48
	srl a		;8d4a
	srl a		;8d4c
	sub 00ch		;8d4e
	neg		;8d50
	ld b,a			;8d52
	ld c,000h		;8d53
L_8D55:
	ld (iy+003h),c		;8d55
	ld (iy+010h),b		;8d58
	ld a,b			;8d5b
	add a,a			;8d5c
	add a,a			;8d5d
	add a,a			;8d5e
	ld (iy+00dh),a		;8d5f
	ld (iy+00ch),000h		;8d62
	ld (iy+00ah),000h		;8d66
	ld (iy+00bh),010h		;8d6a
	ld a,(ix+006h)		;8d6e
	and 0f8h		;8d71
	add a,010h		;8d73
	ld (iy+005h),a		;8d75
	ld (iy+002h),000h		;8d78
	ld (iy+004h),000h		;8d7c
	call L_8968		;8d80
	call 05853h		;8d83
	ret			;8d86
L_8D87:
	ld a,(iy+001h)		;8d87
	dec a			;8d8a
	jr z,L_8DA6		;8d8b
	ld a,(iy+00ah)		;8d8d
	add a,001h		;8d90
	ld (iy+00ah),a		;8d92
	ld a,(iy+00bh)		;8d95
	sub 001h		;8d98
	ld (iy+00bh),a		;8d9a
	jr nz,L_8DA3		;8d9d
	ld (iy+001h),001h		;8d9f
L_8DA3:
	jp L_8A77		;8da3
L_8DA6:
	ld a,(iy+005h)		;8da6
	add a,008h		;8da9
	ld (iy+005h),a		;8dab
	jp c,L_8DB9		;8dae
	call L_8A77		;8db1
	ld a,(iy+00ah)		;8db4
	or a			;8db7
	ret nz			;8db8
L_8DB9:
	xor a			;8db9
	ld (0e5e1h),a		;8dba
	call L_86E2		;8dbd
	jp 05080h		;8dc0
L_8DC3:
	ld hl,0e6a0h		;8dc3
	jp L_8DCC		;8dc6
L_8DC9:
	ld hl,0e680h		;8dc9
L_8DCC:
	ld a,(ix+004h)		;8dcc
	cp 0a6h		;8dcf
	jr nc,L_8DED		;8dd1
	ld a,(ix+006h)		;8dd3
	cp 0d9h		;8dd6
	jr nc,L_8DED		;8dd8
	ld bc,(0e634h)		;8dda
	add hl,bc			;8dde
	push hl			;8ddf
	pop iy		;8de0
	ld a,(hl)			;8de2
	or a			;8de3
	push af			;8de4
	jr nz,L_8DEB		;8de5
	xor a			;8de7
	ld (0e638h),a		;8de8
L_8DEB:
	pop af			;8deb
	ret			;8dec
L_8DED:
	ld a,001h		;8ded
	or a			;8def
	ret			;8df0
L_8DF1:
	ld a,(ix+004h)		;8df1
	add a,d			;8df4
	ld (iy+003h),a		;8df5
	ld a,(ix+006h)		;8df8
	add a,e			;8dfb
	ld (iy+005h),a		;8dfc
	ld (iy+002h),000h		;8dff
	ld (iy+004h),000h		;8e03
	ret			;8e07
L_8E08:
	ld a,(ix+004h)		;8e08
L_8E0B:
	rra			;8e0b
	and 003h		;8e0c
	add a,d			;8e0e
	ld (iy+006h),a		;8e0f
	ret			;8e12
L_8E13:
	ld a,(iy+000h)		;8e13
	sub 009h		;8e16
	cp 002h		;8e18
	jr c,L_8E26		;8e1a
	ld a,(iy+00ah)		;8e1c
	add a,a			;8e1f
	add a,a			;8e20
	add a,a			;8e21
	ld (iy+00ch),a		;8e22
	ret			;8e25
L_8E26:
	ld a,(iy+00ah)		;8e26
	add a,a			;8e29
	add a,a			;8e2a
	add a,a			;8e2b
	ld (iy+00dh),a		;8e2c
	ret			;8e2f
L_8E30:
	ld hl,0e6c0h		;8e30
	ld a,(ix+004h)		;8e33
	cp 0a5h		;8e36
	jr nc,L_8E4C		;8e38
	ld a,(ix+006h)		;8e3a
	cp 0e8h		;8e3d
	jr nc,L_8E4C		;8e3f
	ld bc,(0e634h)		;8e41
	add hl,bc			;8e45
	push hl			;8e46
	pop iy		;8e47
	ld a,(hl)			;8e49
	or a			;8e4a
	ret			;8e4b
L_8E4C:
	ld a,001h		;8e4c
	or a			;8e4e
	ret			;8e4f
L_8E50:
	ld de,00808h		;8e50
	ld bc,0002ch		;8e53
	call L_8E98		;8e56
	jr c,L_8E5D		;8e59
	ld c,044h		;8e5b
L_8E5D:
	ld a,(0e380h)		;8e5d
	cp 003h		;8e60
	ret nz			;8e62
	ld a,(ix+004h)		;8e63
	cp 050h		;8e66
	ret nc			;8e68
	ld d,000h		;8e69
	ld bc,00124h		;8e6b
	call L_8E98		;8e6e
	ret c			;8e71
	ld c,04ch		;8e72
	ret			;8e74
L_8E75:
	call L_8E9D		;8e75
	ld a,04ch		;8e78
	jr nc,L_8E94		;8e7a
	ld a,024h		;8e7c
	jr L_8E94		;8e7e
L_8E80:
	call L_8E9D		;8e80
	ld a,048h		;8e83
	jr nc,L_8E94		;8e85
	ld a,028h		;8e87
	jr L_8E94		;8e89
L_8E8B:
	call L_8E9D		;8e8b
	ld a,044h		;8e8e
	jr nc,L_8E94		;8e90
	ld a,02ch		;8e92
L_8E94:
	ld (iy+006h),a		;8e94
	ret			;8e97
L_8E98:
	ld a,(0e642h)		;8e98
	jr L_8EA0		;8e9b
L_8E9D:
	ld a,(iy+000h)		;8e9d
L_8EA0:
	sub 011h		;8ea0
	cp 002h		;8ea2
	ret c			;8ea4
	sub 004h		;8ea5
	cp 002h		;8ea7
	ret			;8ea9
L_8EAA:
	call L_8E30		;8eaa
	ret nz			;8ead
L_8EAE:
	ld a,(0e642h)		;8eae
	ld hl,08ebfh		;8eb1
	call 04a5ah		;8eb4
	ld (iy+000h),l		;8eb7
	ld (iy+007h),h		;8eba
	call L_8E50		;8ebd
	ld (iy+006h),c		;8ec0
	ld (iy+009h),b		;8ec3
	call L_8DF1		;8ec6
	ld (iy+00ch),008h		;8ec9
	ld (iy+00dh),008h		;8ecd
	ld a,(iy+003h)		;8ed1
	and 0fch		;8ed4
	ld (iy+003h),a		;8ed6
	ret nz			;8ed9
	ld (iy+000h),000h		;8eda
L_8EDE:
	ret			;8ede

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8edf..0x8eef  (16 bytes)
DATA_8EDF:
	defb 010h,00ah,011h,008h,012h,00fh,013h,00bh,014h,00ah,015h,008h,016h,00fh,017h,00bh	; 8edf  ................

; ======================================================================
; CODIGO 0x8eef..0x90a0  (433 bytes)
; ======================================================================


L_8EEF:
	call L_8E30		;8eef
	ret nz			;8ef2
	call L_8EAE		;8ef3
	push ix		;8ef6
	call L_9108		;8ef8
	pop ix		;8efb
	ret			;8efd
L_8EFE:
	bit 0,(iy+009h)		;8efe
	jp nz,L_8F1C		;8f02
	call L_9079		;8f05
	jp nc,L_8FD4		;8f08
	call L_9085		;8f0b
	jp nc,L_8FE2		;8f0e
	call L_9094		;8f11
	jp nc,L_8FF0		;8f14
	ld (iy+000h),000h		;8f17
	ret			;8f1b
L_8F1C:
	call L_90B5		;8f1c
	jp nc,L_8FF8		;8f1f
	call L_90BF		;8f22
	jp nc,L_9006		;8f25
	call L_90CC		;8f28
	jp nc,L_8FF0		;8f2b
	ld (iy+000h),000h		;8f2e
	ret			;8f32
L_8F33:
	bit 0,(iy+009h)		;8f33
	jp nz,L_8F7D		;8f37
	bit 0,(iy+001h)		;8f3a
	jr nz,L_8F66		;8f3e
	call L_9079		;8f40
	jp nc,L_8FD4		;8f43
	call L_9085		;8f46
	jp nc,L_8FE2		;8f49
	call L_9094		;8f4c
	jp nc,L_8FF0		;8f4f
	ld (iy+001h),001h		;8f52
	ld a,(iy+005h)		;8f56
	and 0fch		;8f59
	ld (iy+005h),a		;8f5b
	call L_8E75		;8f5e
	ld b,004h		;8f61
	jp L_9054		;8f63
L_8F66:
	call L_90E4		;8f66
	jr nc,L_8FBE		;8f69
	call L_90F0		;8f6b
	jp c,L_904E		;8f6e
	call L_8E75		;8f71
	ld b,004h		;8f74
	call L_9054		;8f76
	ret c			;8f79
	jp L_8FCA		;8f7a
L_8F7D:
	bit 0,(iy+001h)		;8f7d
	jr nz,L_8FA7		;8f81
	call L_90B5		;8f83
	jr nc,L_8FF8		;8f86
	call L_90BF		;8f88
	jp nc,L_9006		;8f8b
	call L_90CC		;8f8e
	jr nc,L_8FF0		;8f91
	ld (iy+001h),001h		;8f93
	ld a,(iy+005h)		;8f97
	and 0fch		;8f9a
	ld (iy+005h),a		;8f9c
	call L_8E8B		;8f9f
	ld b,004h		;8fa2
	jp L_903C		;8fa4
L_8FA7:
	call L_90E4		;8fa7
	jr nc,L_8FBE		;8faa
	call L_90FC		;8fac
	jp c,L_904E		;8faf
	call L_8E8B		;8fb2
	ld b,004h		;8fb5
	call L_903C		;8fb7
	ret c			;8fba
	jp L_8FCA		;8fbb
L_8FBE:
	ld (iy+001h),000h		;8fbe
	call L_8E80		;8fc2
	ld b,004h		;8fc5
	jp L_9014		;8fc7
L_8FCA:
	ld a,(0e420h)		;8fca
	or a			;8fcd
	ret z			;8fce
	ld b,008h		;8fcf
	jp L_9028		;8fd1
L_8FD4:
	call L_8E8B		;8fd4
	ld b,002h		;8fd7
	call L_9014		;8fd9
	ret c			;8fdc
	ld b,004h		;8fdd
	jp L_903C		;8fdf
L_8FE2:
	call L_8E8B		;8fe2
	ld b,004h		;8fe5
	call L_9014		;8fe7
	ret c			;8fea
	ld b,004h		;8feb
	jp L_903C		;8fed
L_8FF0:
	call L_8E80		;8ff0
	ld b,004h		;8ff3
	jp L_9014		;8ff5
L_8FF8:
	call L_8E75		;8ff8
	ld b,002h		;8ffb
	call L_9014		;8ffd
	ret c			;9000
	ld b,004h		;9001
	jp L_9054		;9003
L_9006:
	call L_8E75		;9006
	ld b,004h		;9009
	call L_9014		;900b
	ret c			;900e
	ld b,004h		;900f
	jp L_9054		;9011
L_9014:
	call L_8E9D		;9014
	jr nc,L_901B		;9017
	srl b		;9019
L_901B:
	ld a,(iy+005h)		;901b
	add a,b			;901e
	ld (iy+005h),a		;901f
	ret nc			;9022
	ld (iy+000h),000h		;9023
	ret			;9027
L_9028:
	call L_8E9D		;9028
	jr nc,L_902F		;902b
	srl b		;902d
L_902F:
	ld a,(iy+005h)		;902f
	sub b			;9032
	ld (iy+005h),a		;9033
	ret nc			;9036
	ld (iy+000h),000h		;9037
	ret			;903b
L_903C:
	call L_8E9D		;903c
	jr nc,L_9043		;903f
	srl b		;9041
L_9043:
	ld a,(iy+003h)		;9043
	add a,b			;9046
	ld (iy+003h),a		;9047
	cp 0ach		;904a
	ccf			;904c
	ret nc			;904d
L_904E:
	ld (iy+000h),000h		;904e
	scf			;9052
	ret			;9053
L_9054:
	call L_8E9D		;9054
	jr nc,L_905B		;9057
	srl b		;9059
L_905B:
	ld a,(iy+003h)		;905b
	sub b			;905e
	ld (iy+003h),a		;905f
	jp c,L_904E		;9062
	jp z,L_904E		;9065
	or a			;9068
	ret			;9069
L_906A:
	ld h,(iy+005h)		;906a
	ld l,(iy+003h)		;906d
L_9070:
	call 04a46h		;9070
	ld a,(0e405h)		;9073
	dec a			;9076
	cp (hl)			;9077
	ret			;9078
L_9079:
	ld h,(iy+005h)		;9079
	ld a,(iy+003h)		;907c
	add a,004h		;907f
	ld l,a			;9081
	jp L_9070		;9082
L_9085:
	ld a,(iy+005h)		;9085
	add a,004h		;9088
	ld h,a			;908a
	ld a,(iy+003h)		;908b
	add a,004h		;908e
	ld l,a			;9090
	jp L_9070		;9091
L_9094:
	ld a,(iy+005h)		;9094
	add a,004h		;9097
	ld h,a			;9099
	ld l,(iy+003h)		;909a
	jp L_9070		;909d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x90a0..0x90b5  (21 bytes)
DATA_90A0:
	defb 0fdh,066h,005h,0fdh,07eh,003h,0d6h,004h,06fh,0c3h,070h,090h,0fdh,066h,005h,0fdh	; 90a0  .f..~...o.p..f..
	defb 06eh,003h,0c3h,070h,090h	; 90b0

; ======================================================================
; CODIGO 0x90b5..0x90d8  (35 bytes)
; ======================================================================


L_90B5:
	ld h,(iy+005h)		;90b5
	ld l,(iy+003h)		;90b8
	dec l			;90bb
	jp L_9070		;90bc
L_90BF:
	ld a,(iy+005h)		;90bf
	add a,004h		;90c2
	ld h,a			;90c4
	ld l,(iy+003h)		;90c5
	dec l			;90c8
	jp L_9070		;90c9
L_90CC:
	ld a,(iy+005h)		;90cc
	add a,004h		;90cf
	ld h,a			;90d1
	ld l,(iy+003h)		;90d2
	jp L_9070		;90d5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x90d8..0x90e4  (12 bytes)
DATA_90D8:
	defb 0fdh,066h,005h,0fdh,07eh,003h,0c6h,003h,06fh,0c3h,070h,090h	; 90d8  .f..~...o.p.

; ======================================================================
; CODIGO 0x90e4..0x92b4  (464 bytes)
; ======================================================================


L_90E4:
	ld a,(iy+005h)		;90e4
	add a,004h		;90e7
	ld h,a			;90e9
	ld l,(iy+003h)		;90ea
	jp L_9070		;90ed
L_90F0:
	ld h,(iy+005h)		;90f0
	ld a,(iy+003h)		;90f3
	sub 008h		;90f6
	ld l,a			;90f8
	jp L_9070		;90f9
L_90FC:
	ld h,(iy+005h)		;90fc
	ld a,(iy+003h)		;90ff
	add a,008h		;9102
	ld l,a			;9104
	jp L_9070		;9105
L_9108:
	ld de,00000h		;9108
	ld (0ef80h),de		;910b
	dec de			;910f
	ld ix,0ed00h		;9110
	ld b,008h		;9114
L_9116:
	push bc			;9116
	call L_913E		;9117
	ld bc,00020h		;911a
	add ix,bc		;911d
	pop bc			;911f
	djnz L_9116		;9120
	ld hl,(0ef80h)		;9122
	ld a,h			;9125
	or l			;9126
	jr z,L_9135		;9127
	ld (iy+010h),l		;9129
	ld (iy+011h),h		;912c
	call L_8E80		;912f
	jp L_91E5		;9132
L_9135:
	ld a,(iy+000h)		;9135
	sub 003h		;9138
	ld (iy+000h),a		;913a
	ret			;913d
L_913E:
	ld a,(ix+000h)		;913e
	or a			;9141
	ret z			;9142
	bit 7,(ix+00dh)		;9143
	ret nz			;9147
	bit 6,(ix+012h)		;9148
	ret nz			;914c
	ld a,(ix+004h)		;914d
	sub (iy+003h)		;9150
	jr nc,L_9157		;9153
	neg		;9155
L_9157:
	ld c,a			;9157
	ld b,000h		;9158
	ld a,(ix+006h)		;915a
	sub (iy+005h)		;915d
	jr nc,L_9164		;9160
	neg		;9162
L_9164:
	add a,c			;9164
	ld c,a			;9165
	jr nc,L_9169		;9166
	inc b			;9168
L_9169:
	ld h,d			;9169
	ld l,e			;916a
	or a			;916b
	sbc hl,bc		;916c
	ret c			;916e
	ld d,b			;916f
	ld e,c			;9170
	push ix		;9171
	pop hl			;9173
	ld (0ef80h),hl		;9174
	ret			;9177
L_9178:
	ld l,(iy+010h)		;9178
	ld h,(iy+011h)		;917b
	ld a,(hl)			;917e
	or a			;917f
	jr z,L_91CC		;9180
	push hl			;9182
	pop ix		;9183
	bit 7,(ix+00dh)		;9185
	jr nz,L_91CC		;9189
	bit 6,(ix+012h)		;918b
	jr nz,L_91CC		;918f
	ld a,(0e303h)		;9191
	inc a			;9194
	and 003h		;9195
	call z,L_91E5		;9197
	ld a,(iy+004h)		;919a
	add a,(iy+014h)		;919d
	ld (iy+004h),a		;91a0
	ld a,(iy+005h)		;91a3
	adc a,(iy+015h)		;91a6
	ld (iy+005h),a		;91a9
	cp 0f8h		;91ac
	jp nc,L_904E		;91ae
	ld a,(iy+002h)		;91b1
	add a,(iy+012h)		;91b4
	ld (iy+002h),a		;91b7
	ld a,(iy+003h)		;91ba
	adc a,(iy+013h)		;91bd
	ld (iy+003h),a		;91c0
	cp 0a4h		;91c3
	jp nc,L_904E		;91c5
	call L_906A		;91c8
	ret nc			;91cb
L_91CC:
	ld a,(iy+000h)		;91cc
	sub 003h		;91cf
	ld (iy+000h),a		;91d1
	ld a,(iy+003h)		;91d4
	and 0fch		;91d7
	ld (iy+003h),a		;91d9
	ld a,(iy+005h)		;91dc
	and 0fch		;91df
	ld (iy+005h),a		;91e1
	ret			;91e4
L_91E5:
	push ix		;91e5
	call L_91ED		;91e7
	pop ix		;91ea
	ret			;91ec
L_91ED:
	push hl			;91ed
	pop ix		;91ee
	ld a,(ix+00dh)		;91f0
	and 07fh		;91f3
	jr nz,L_9230		;91f5
	ld a,(ix+009h)		;91f7
	add a,a			;91fa
	add a,a			;91fb
	add a,(ix+004h)		;91fc
	ld e,a			;91ff
	ld a,(ix+00ah)		;9200
	add a,a			;9203
	add a,a			;9204
	add a,(ix+006h)		;9205
	ld d,a			;9208
L_9209:
	ld (0ef80h),de		;9209
	ld e,(iy+003h)		;920d
	ld d,(iy+005h)		;9210
	call 0640bh		;9213
	ld a,0c0h		;9216
	ld (0e46eh),a		;9218
	ld d,001h		;921b
	call 0639fh		;921d
	ld (iy+014h),e		;9220
	ld (iy+015h),d		;9223
	ld hl,(0e472h)		;9226
	ld (iy+012h),l		;9229
	ld (iy+013h),h		;922c
	ret			;922f
L_9230:
	call 04150h		;9230
	add a,a			;9233
	add a,a			;9234
	ld hl,0be18h		;9235
	call 04089h		;9238
	ld a,(hl)			;923b
	add a,(ix+004h)		;923c
	ld e,a			;923f
	inc hl			;9240
	ld a,(hl)			;9241
	add a,(ix+006h)		;9242
	ld d,a			;9245
	inc hl			;9246
	ld a,(hl)			;9247
	srl a		;9248
	add a,e			;924a
	ld e,a			;924b
	inc hl			;924c
	ld a,(hl)			;924d
	srl a		;924e
	add a,d			;9250
	ld d,a			;9251
	call 0415bh		;9252
	jr L_9209		;9255
L_9257:
	ld (iy+000h),00fh		;9257
	ld (iy+001h),000h		;925b
	ld (iy+010h),01eh		;925f
	ld (iy+00dh),018h		;9263
	ld (iy+00ch),018h		;9267
	ld (iy+006h),030h		;926b
	ld (iy+007h),00fh		;926f
	ld a,(iy+003h)		;9273
	sub 008h		;9276
	jr nc,L_927B		;9278
	xor a			;927a
L_927B:
	ld (iy+003h),a		;927b
	ld a,(iy+005h)		;927e
	sub 008h		;9281
	jr nc,L_9286		;9283
	xor a			;9285
L_9286:
	ld (iy+005h),a		;9286
	jr L_929C		;9289
L_928B:
	dec (iy+010h)		;928b
	jp z,L_904E		;928e
	call L_8FCA		;9291
	ret c			;9294
	call L_92BC		;9295
	call L_929C		;9298
	ret			;929b
L_929C:
	ld a,(iy+001h)		;929c
	ld hl,092b4h		;929f
	call 04a5ah		;92a2
	ld a,(iy+003h)		;92a5
	add a,l			;92a8
	ld (iy+008h),a		;92a9
	ld a,(iy+005h)		;92ac
	add a,h			;92af
	ld (iy+009h),a		;92b0
	ret			;92b3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x92b4..0x92bc  (8 bytes)
DATA_92B4:
	defb 000h,000h,000h,00ch,00ch,00ch,00ch,000h	; 92b4  ........

; ======================================================================
; CODIGO 0x92bc..0x9316  (90 bytes)
; ======================================================================


L_92BC:
	ld a,(iy+006h)		;92bc
	add a,004h		;92bf
	cp 03ch		;92c1
	jr c,L_92C7		;92c3
	ld a,030h		;92c5
L_92C7:
	ld (iy+006h),a		;92c7
	ret c			;92ca
	ld a,(iy+001h)		;92cb
	inc a			;92ce
	cp 004h		;92cf
	jr c,L_92D4		;92d1
	xor a			;92d3
L_92D4:
	ld (iy+001h),a		;92d4
	ret			;92d7
L_92D8:
	ld a,(0e600h)		;92d8
	dec a			;92db
	ret m			;92dc
	ld a,(0e308h)		;92dd
	and 020h		;92e0
	ret z			;92e2
	ld hl,0e430h		;92e3
	ld a,(hl)			;92e6
	or a			;92e7
	ret z			;92e8
	ld (0e43dh),a		;92e9
	ld hl,0e433h		;92ec
	add a,l			;92ef
	ld l,a			;92f0
	ld a,(hl)			;92f1
	or a			;92f2
	ret m			;92f3
	xor a			;92f4
	ld (0e430h),a		;92f5
	call L_9302		;92f8
	call L_957D		;92fb
	call L_95B6		;92fe
	ret			;9301
L_9302:
	ld a,(0e380h)		;9302
	ld hl,09316h		;9305
	call 04a5ah		;9308
	ld a,(0e43dh)		;930b
	dec a			;930e
	call 04094h		;930f
	call 0585fh		;9312
	ret			;9315

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9316..0x94bd  (423 bytes)
DATA_9316:
	defb 01eh,093h,02eh,093h,03eh,093h,04eh,093h,05eh,093h,06dh,093h,09eh,093h,0d1h,093h	; 9316  ....>.N.^.m.....
	defb 004h,094h,02eh,094h,075h,094h,08dh,094h,05eh,093h,06dh,093h,09eh,093h,0d1h,093h	; 9326  ....u...^.m.....
	defb 004h,094h,02eh,094h,075h,094h,08dh,094h,05eh,093h,06dh,093h,09eh,093h,0d1h,093h	; 9336  ....u...^.m.....
	defb 004h,094h,02eh,094h,075h,094h,08dh,094h,05eh,093h,06dh,093h,09eh,093h,0d1h,093h	; 9346  ....u...^.m.....
	defb 004h,094h,02eh,094h,075h,094h,08dh,094h,021h,034h,0e4h,034h,07eh,0feh,007h,038h	; 9356  ....u...!4.4~..8
	defb 002h,036h,0ffh,032h,002h,0e6h,0c9h,0cdh,0b7h,094h,021h,035h,0e4h,034h,07eh,0b9h	; 9366  .6.2......!5.4~.
	defb 038h,002h,036h,0ffh,047h,03ah,080h,0e3h,04fh,087h,081h,080h,021h,091h,093h,0cdh	; 9376  8.6.G:..O...!...
	defb 06eh,04ah,032h,032h,0e6h,011h,080h,000h,0cdh,092h,056h,0c9h,010h,014h,013h,011h	; 9386  nJ22......V.....
	defb 015h,013h,012h,016h,013h,010h,014h,013h,0cdh,0b7h,094h,021h,036h,0e4h,034h,07eh	; 9396  ...........!6.4~
	defb 0b9h,038h,002h,036h,000h,021h,0ceh,093h,0cdh,06eh,04ah,032h,031h,0e6h,03eh,001h	; 93a6  .8.6.!...nJ21.>.
	defb 032h,030h,0e6h,0cdh,0bdh,093h,0c9h,0afh,032h,037h,0e4h,032h,039h,0e4h,03ah,06fh	; 93b6  20......27.29.:o
	defb 0e3h,0feh,003h,0d8h,0afh,032h,038h,0e4h,0c9h,002h,001h,0cdh,0b7h,094h,021h,037h	; 93c6  .....28.......!7
	defb 0e4h,034h,07eh,0b9h,038h,002h,036h,0ffh,021h,001h,094h,0cdh,06eh,04ah,032h,031h	; 93d6  .4~.8.6.!...nJ21
	defb 0e6h,03eh,001h,032h,030h,0e6h,0cdh,0f0h,093h,0c9h,0afh,032h,036h,0e4h,032h,039h	; 93e6  .>.20......26.29
	defb 0e4h,03ah,06fh,0e3h,0feh,003h,0d8h,0afh,032h,038h,0e4h,0c9h,003h,004h,0cdh,0b7h	; 93f6  .:o.....28......
	defb 094h,021h,038h,0e4h,034h,07eh,0b9h,038h,002h,036h,0ffh,021h,02bh,094h,0cdh,06eh	; 9406  .!8.4~.8.6.!+..n
	defb 04ah,032h,031h,0e6h,0cdh,024h,094h,011h,080h,000h,0cdh,092h,056h,0c9h,0afh,032h	; 9416  J21..$......V..2
	defb 036h,0e4h,032h,037h,0e4h,0c9h,00dh,00eh,0cdh,0b7h,094h,021h,039h,0e4h,034h,07eh	; 9426  6.27.......!9.4~
	defb 0b9h,038h,002h,036h,0ffh,047h,03ah,080h,0e3h,04fh,087h,081h,080h,021h,068h,094h	; 9436  .8.6.G:..O...!h.
	defb 0cdh,06eh,04ah,032h,030h,0e6h,03ah,031h,0e6h,0feh,005h,030h,004h,0afh,032h,031h	; 9446  .nJ20.:1...0..21
	defb 0e6h,0cdh,061h,094h,011h,000h,001h,0cdh,092h,056h,0c9h,0afh,032h,036h,0e4h,032h	; 9456  ..a......V..26.2
	defb 037h,0e4h,0c9h,005h,006h,007h,005h,008h,007h,00ah,00bh,00ch,00ah,00bh,009h,021h	; 9466  7..............!
	defb 03ah,0e4h,034h,07eh,032h,008h,0e6h,0feh,002h,038h,002h,036h,0ffh,0cdh,005h,085h	; 9476  :.4~2....8.6....
	defb 011h,080h,000h,0cdh,092h,056h,0c9h,021h,03bh,0e4h,036h,0ffh,03ah,07fh,0e3h,0c6h	; 9486  .....V.!..6.:...
	defb 002h,032h,000h,0e6h,0feh,002h,006h,00ah,028h,002h,006h,005h,03ah,09eh,0e3h,0b7h	; 9496  .2......(...:...
	defb 078h,028h,001h,087h,032h,001h,0e6h,011h,000h,001h,0cdh,092h,056h,0cdh,007h,050h	; 94a6  x(..2.......V..P
	defb 0c9h,03ah,03dh,0e4h,032h,080h,0efh	; 94b6

; ======================================================================
; CODIGO 0x94bd..0x94d1  (20 bytes)
; ======================================================================


L_94BD:
	ld a,(0e36fh)		;94bd
	add a,a			;94c0
	add a,a			;94c1
	add a,a			;94c2
	ld c,a			;94c3
	ld a,(0ef80h)		;94c4
	add a,c			;94c7
	ld c,a			;94c8
	ld b,000h		;94c9
	ld hl,l94d0h		;94cb
	add hl,bc			;94ce
	ld c,(hl)			;94cf
L_94D0:
	ret			;94d0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x94d1..0x9511  (64 bytes)
DATA_94D1:
	defb 007h,001h,002h,001h,000h,001h,002h,001h,007h,001h,002h,001h,000h,002h,002h,001h	; 94d1  ................
	defb 007h,001h,002h,001h,000h,003h,002h,001h,007h,001h,002h,001h,001h,003h,002h,001h	; 94e1  ................
	defb 007h,001h,002h,001h,002h,003h,002h,001h,007h,001h,002h,002h,002h,003h,002h,001h	; 94f1  ................
	defb 007h,002h,002h,002h,002h,003h,002h,001h,007h,003h,002h,002h,002h,003h,002h,001h	; 9501  ................

; ======================================================================
; CODIGO 0x9511..0x95f9  (232 bytes)
; ======================================================================


L_9511:
	call L_9524		;9511
	call L_953D		;9514
L_9517:
	call L_954E		;9517
	call L_956B		;951a
	call L_957D		;951d
	call L_95B6		;9520
	ret			;9523
L_9524:
	ld hl,0e430h		;9524
	ld de,0e431h		;9527
	ld bc,0000ch		;952a
	ld (hl),000h		;952d
	ldir		;952f
	ld a,(0e36fh)		;9531
	cp 003h		;9534
	ret nc			;9536
	ld a,0ffh		;9537
	ld (0e438h),a		;9539
	ret			;953c
L_953D:
	ld a,(0e36bh)		;953d
	or a			;9540
	jr nz,L_9548		;9541
	ld a,(0e36dh)		;9543
	or a			;9546
	ret z			;9547
L_9548:
	ld a,001h		;9548
	ld (0e430h),a		;954a
	ret			;954d
L_954E:
	ld b,009h		;954e
	ld hl,01278h		;9550
L_9553:
	push bc			;9553
	ld a,0e0h		;9554
	call 0004dh		;9556   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;9559
	ld bc,00007h		;955a
	ld a,0a0h		;955d
	call 00056h		;955f   ; BIOS FILVRM - Fills VRAM with value
	ld a,007h		;9562
	call 04089h		;9564
	pop bc			;9567
	djnz L_9553		;9568
	ret			;956a
L_956B:
	ld hl,03ad4h		;956b
	call 04ab6h		;956e
	ld b,009h		;9571
	ld a,04fh		;9573
L_9575:
	exx			;9575
	out (c),a		;9576
	inc a			;9578
	exx			;9579
	djnz L_9575		;957a
	ret			;957c
L_957D:
	ld hl,03ac2h		;957d
	call 04ab6h		;9580
	ld hl,0e434h		;9583
	ld bc,00801h		;9586
L_9589:
	call L_9591		;9589
	inc hl			;958c
	inc c			;958d
	djnz L_9589		;958e
	ret			;9590
L_9591:
	ld a,(hl)			;9591
	inc a			;9592
	jr nz,L_95A2		;9593
	ld a,(0e430h)		;9595
	cp c			;9598
	ld a,03ch		;9599
	jr nz,L_95AC		;959b
	ld a,03eh		;959d
	jp L_95AC		;959f
L_95A2:
	ld a,(0e430h)		;95a2
	cp c			;95a5
	ld a,038h		;95a6
	jr nz,L_95AC		;95a8
	ld a,03ah		;95aa
L_95AC:
	exx			;95ac
	out (c),a		;95ad
	exx			;95af
	inc a			;95b0
	exx			;95b1
	out (c),a		;95b2
	exx			;95b4
	ret			;95b5
L_95B6:
	ld a,(0e430h)		;95b6
	ld b,a			;95b9
	or a			;95ba
	jr z,L_95E4		;95bb
	cp 008h		;95bd
	jr z,L_95E7		;95bf
	ld de,0e433h		;95c1
	add a,e			;95c4
	ld e,a			;95c5
	ld a,(de)			;95c6
	ld c,a			;95c7
	cp 0ffh		;95c8
	jr z,L_95E4		;95ca
	ld a,(0e380h)		;95cc
	ld hl,095f9h		;95cf
	call 04a5ah		;95d2
	ld a,b			;95d5
	call 04a5ah		;95d6
	ld b,000h		;95d9
	add hl,bc			;95db
	ld a,(hl)			;95dc
L_95DD:
	ld (0e43ch),a		;95dd
	call 04f52h		;95e0
	ret			;95e3
L_95E4:
	xor a			;95e4
	jr L_95DD		;95e5
L_95E7:
	ld a,(0e43bh)		;95e7
	inc a			;95ea
	jr z,L_95E4		;95eb
	ld a,(0e37fh)		;95ed
	or a			;95f0
	ld a,00ah		;95f1
	jr z,L_95F7		;95f3
	ld a,00bh		;95f5
L_95F7:
	jr L_95DD		;95f7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x95f9..0x9660  (103 bytes)
DATA_95F9:
	defb 0ffh,095h,00dh,096h,01bh,096h,029h,096h,039h,096h,040h,096h,04ch,096h,04eh,096h	; 95f9  ......).9.@.L.N.
	defb 050h,096h,052h,096h,05eh,096h,039h,096h,043h,096h,04ch,096h,04eh,096h,050h,096h	; 9609  P.R.^.9.C.L.N.P.
	defb 055h,096h,05eh,096h,039h,096h,046h,096h,04ch,096h,04eh,096h,050h,096h,058h,096h	; 9619  U.^.9.F.L.N.P.X.
	defb 05eh,096h,039h,096h,049h,096h,04ch,096h,04eh,096h,050h,096h,05bh,096h,05eh,096h	; 9629  ^.9.I.L.N.P.[.^.
	defb 001h,002h,003h,004h,005h,006h,007h,00ch,00dh,014h,00eh,00fh,014h,010h,011h,014h	; 9639  ................
	defb 012h,013h,014h,016h,015h,017h,018h,019h,01ah,01bh,01ch,01dh,01bh,01eh,01dh,022h	; 9649  ..............."
	defb 01fh,020h,022h,01fh,021h,008h,009h	; 9659

; ======================================================================
; CODIGO 0x9660..0x96a5  (69 bytes)
; ======================================================================


L_9660:
	ld hl,0e608h		;9660
	dec (hl)			;9663
	call L_966E		;9664
	call L_957D		;9667
	call L_95B6		;966a
	ret			;966d
L_966E:
	ld hl,0e43ah		;966e
	ld a,(hl)			;9671
	cp 0ffh		;9672
	ld a,001h		;9674
	jr z,L_9679		;9676
	xor a			;9678
L_9679:
	ld (hl),a			;9679
	ret			;967a
L_967B:
	xor a			;967b
	ld (0e43bh),a		;967c
	call L_957D		;967f
	call L_95B6		;9682
	ret			;9685
L_9686:
	ld a,(0e405h)		;9686
	ld c,a			;9689
	ld iy,0e680h		;968a
	ld b,009h		;968e
L_9690:
	push bc			;9690
	call L_969D		;9691
	ld bc,00020h		;9694
	add iy,bc		;9697
	pop bc			;9699
	djnz L_9690		;969a
	ret			;969c
L_969D:
	ld a,(iy+000h)		;969d
	dec a			;96a0
	ret m			;96a1
	call 04093h		;96a2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x96a5..0x96d5  (48 bytes)
DATA_96A5:
	defb 0d5h,096h,0f0h,096h,0d5h,096h,0d5h,096h,022h,097h,022h,097h,00dh,097h,022h,097h	; 96a5  ........"."...".
	defb 093h,097h,093h,097h,022h,097h,00dh,097h,06eh,097h,06eh,097h,0b1h,098h,02bh,098h	; 96b5  ...."...n.n...+.
	defb 02bh,098h,02bh,098h,02bh,098h,02bh,098h,02bh,098h,02bh,098h,02bh,098h,02ah,098h	; 96c5  +.+.+.+.+.+.+.*.

; ======================================================================
; CODIGO 0x96d5..0x9903  (558 bytes)
; ======================================================================


L_96D5:
	ld a,(iy+005h)		;96d5
	sub 008h		;96d8
	ld h,a			;96da
	ld l,(iy+003h)		;96db
	call L_96FA		;96de
	ld a,(iy+000h)		;96e1
	or a			;96e4
	ret z			;96e5
	ld h,(iy+005h)		;96e6
	ld l,(iy+003h)		;96e9
	call L_96FA		;96ec
	ret			;96ef
L_96F0:
	ld h,(iy+005h)		;96f0
	ld l,(iy+003h)		;96f3
	call L_96FA		;96f6
	ret			;96f9
L_96FA:
	call L_98AB		;96fa
	ret nc			;96fd
	ld (iy+000h),000h		;96fe
	ld a,(0e440h)		;9702
	or a			;9705
	jp nz,L_999D		;9706
	call L_993D		;9709
	ret			;970c
L_970D:
	call L_9722		;970d
	ld a,(iy+000h)		;9710
	or a			;9713
	ret z			;9714
	ld h,(iy+005h)		;9715
	ld a,(iy+003h)		;9718
	add a,008h		;971b
	ld l,a			;971d
	call L_9728		;971e
	ret			;9721
L_9722:
	ld h,(iy+005h)		;9722
	ld l,(iy+003h)		;9725
L_9728:
	call 04a46h		;9728
	ld a,(iy+00ah)		;972b
	or a			;972e
	ret z			;972f
	ld b,a			;9730
L_9731:
	call L_976A		;9731
	jr nc,L_9741		;9734
	ld a,(0e440h)		;9736
	or a			;9739
	jr nz,L_9745		;973a
	call L_993D		;973c
	jr nc,L_9745		;973f
L_9741:
	inc hl			;9741
	djnz L_9731		;9742
	ret			;9744
L_9745:
	ld a,(0e440h)		;9745
	or a			;9748
	call nz,L_999D		;9749
	ld a,(iy+00ah)		;974c
	inc b			;974f
	sub b			;9750
	ld (iy+00ah),a		;9751
	jp c,L_99B0		;9754
	jp z,L_99B0		;9757
	ld a,(iy+000h)		;975a
	sub 00bh		;975d
	cp 002h		;975f
	ld a,001h		;9761
	jr c,L_9766		;9763
	inc a			;9765
L_9766:
	ld (iy+001h),a		;9766
	ret			;9769
L_976A:
	ld a,(hl)			;976a
	cp c			;976b
	ccf			;976c
	ret			;976d
L_976E:
	ld h,(iy+005h)		;976e
	ld l,(iy+003h)		;9771
	call 04a46h		;9774
	ld a,(iy+00ah)		;9777
	or a			;977a
	ret z			;977b
	ld b,a			;977c
L_977D:
	call L_976A		;977d
	jr nc,L_978F		;9780
	ld a,(0e440h)		;9782
	or a			;9785
	jp nz,L_99B0		;9786
	call L_993D		;9789
	jp nc,L_99B0		;978c
L_978F:
	inc hl			;978f
	djnz L_977D		;9790
	ret			;9792
L_9793:
	ld a,(iy+010h)		;9793
	or a			;9796
	ret nz			;9797
	ld h,(iy+005h)		;9798
	ld l,(iy+003h)		;979b
	call 04a46h		;979e
	ld (0ef80h),hl		;97a1
	ld a,(iy+00ah)		;97a4
	or a			;97a7
	jr z,L_9814		;97a8
	ld b,a			;97aa
	exx			;97ab
	ld c,000h		;97ac
	exx			;97ae
L_97AF:
	call L_976A		;97af
	jr nc,L_97C4		;97b2
	ld a,(0e440h)		;97b4
	or a			;97b7
	jp nz,L_981E		;97b8
	call L_993D		;97bb
	jp nc,L_9821		;97be
	exx			;97c1
	inc c			;97c2
	exx			;97c3
L_97C4:
	ld a,040h		;97c4
	call 04089h		;97c6
	djnz L_97AF		;97c9
	ld a,(iy+000h)		;97cb
	cp 00ah		;97ce
	jr nz,L_97D9		;97d0
	exx			;97d2
	ld a,c			;97d3
	exx			;97d4
	or a			;97d5
	jp nz,L_99B0		;97d6
L_97D9:
	ld a,(0e420h)		;97d9
	or a			;97dc
	jr z,L_9814		;97dd
	ld hl,(0ef80h)		;97df
	dec hl			;97e2
	ld b,(iy+00ah)		;97e3
	exx			;97e6
	ld c,000h		;97e7
	exx			;97e9
L_97EA:
	call L_976A		;97ea
	jr nc,L_97FF		;97ed
	ld a,(0e440h)		;97ef
	or a			;97f2
	jp nz,L_981E		;97f3
	call L_993D		;97f6
	jp nc,L_9821		;97f9
	exx			;97fc
	inc c			;97fd
	exx			;97fe
L_97FF:
	ld a,040h		;97ff
	call 04089h		;9801
	djnz L_97EA		;9804
	ld a,(iy+000h)		;9806
	cp 00ah		;9809
	jr nz,L_9814		;980b
	exx			;980d
	ld a,c			;980e
	exx			;980f
	or a			;9810
	jp nz,L_99B0		;9811
L_9814:
	ld a,(iy+00ah)		;9814
	add a,a			;9817
	add a,a			;9818
	add a,a			;9819
	ld (iy+00dh),a		;981a
	ret			;981d
L_981E:
	call L_999D		;981e
L_9821:
	ld (iy+010h),001h		;9821
	ld (iy+011h),004h		;9825
	ret			;9829
L_982A:
	ret			;982a
L_982B:
	ld a,(0e440h)		;982b
	or a			;982e
	jp nz,L_986B		;982f
	ld a,(0e361h)		;9832
	dec a			;9835
	jr z,L_9864		;9836
	cp 006h		;9838
	jr z,L_983D		;983a
	ret			;983c
L_983D:
	ld a,(iy+009h)		;983d
	or a			;9840
	jr nz,L_984D		;9841
	ld h,(iy+005h)		;9843
	ld a,(iy+003h)		;9846
	add a,008h		;9849
	jr L_9857		;984b
L_984D:
	ld h,(iy+005h)		;984d
	ld a,(iy+003h)		;9850
	sub 008h		;9853
	ccf			;9855
	ret nc			;9856
L_9857:
	ld l,a			;9857
	call 04a46h		;9858
	ld a,(hl)			;985b
	sub 0e0h		;985c
	cp 003h		;985e
	ret nc			;9860
	jp L_98A5		;9861
L_9864:
	call L_9881		;9864
	ret nc			;9867
	jp 058ddh		;9868
L_986B:
	ld a,(0e440h)		;986b
	or a			;986e
	ret z			;986f
	sub 00dh		;9870
	cp 002h		;9872
	ret c			;9874
	cp 003h		;9875
	ret nc			;9877
	call L_9881		;9878
	ret nc			;987b
	call L_999D		;987c
	scf			;987f
	ret			;9880
L_9881:
	ld a,(iy+009h)		;9881
	or a			;9884
	jr nz,L_9896		;9885
	ld h,(iy+005h)		;9887
	ld a,(iy+003h)		;988a
	add a,008h		;988d
	ld l,a			;988f
	call L_98AB		;9890
	ret nc			;9893
	jr L_98A5		;9894
L_9896:
	ld h,(iy+005h)		;9896
	ld a,(iy+003h)		;9899
	sub 008h		;989c
	ld l,a			;989e
	ccf			;989f
	ret nc			;98a0
	call L_98AB		;98a1
	ret nc			;98a4
L_98A5:
	ld (iy+000h),000h		;98a5
	scf			;98a9
	ret			;98aa
L_98AB:
	call 04a46h		;98ab
	ld a,(hl)			;98ae
	cp c			;98af
	ccf			;98b0
L_98B1:
	ret			;98b1
L_98B2:
	ld a,(0e440h)		;98b2
	cp 00fh		;98b5
	jr z,L_98BD		;98b7
	dec a			;98b9
	cp 004h		;98ba
	ret nc			;98bc
L_98BD:
	ld a,(0e604h)		;98bd
	add a,008h		;98c0
	ld l,a			;98c2
	ld a,(0e606h)		;98c3
	ld h,a			;98c6
	and 007h		;98c7
	cp 004h		;98c9
	push af			;98cb
	call 04a46h		;98cc
	pop af			;98cf
	jr nc,L_98D8		;98d0
	call L_98E0		;98d2
	jp c,047c5h		;98d5
L_98D8:
	inc hl			;98d8
	call L_98E0		;98d9
	ret nc			;98dc
	jp 047c5h		;98dd
L_98E0:
	ld a,(0e440h)		;98e0
	cp 004h		;98e3
	ld de,(09905h)		;98e5
	jr z,L_98FF		;98e9
	cp 00fh		;98eb
	ld de,(09903h)		;98ed
	jr nz,L_98FF		;98f1
	ld de,(09907h)		;98f3
	call L_98FF		;98f7
	ret c			;98fa
	ld de,(09909h)		;98fb
L_98FF:
	ld a,(hl)			;98ff
	sub e			;9900
	cp d			;9901
	ret			;9902

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9903..0x990b  (8 bytes)
DATA_9903:
	defb 07bh,015h,0f0h,004h,0e0h,002h,0eeh,002h	; 9903  {.......

; ======================================================================
; CODIGO 0x990b..0x9a5c  (337 bytes)
; ======================================================================


L_990B:
	ld a,(0e600h)		;990b
	dec a			;990e
	ret m			;990f
	ld a,(0e405h)		;9910
	ld c,a			;9913
	call L_991B		;9914
	ret nc			;9917
	jp 047c5h		;9918
L_991B:
	ld a,(0e604h)		;991b
	add a,008h		;991e
	ld l,a			;9920
	ld a,(0e606h)		;9921
	ld h,a			;9924
	and 007h		;9925
	cp 004h		;9927
	push af			;9929
	call 04a46h		;992a
	pop af			;992d
	jr nc,L_9934		;992e
	call L_9939		;9930
	ret c			;9933
L_9934:
	inc hl			;9934
	call L_9939		;9935
	ret			;9938
L_9939:
	ld a,(hl)			;9939
	cp c			;993a
	ccf			;993b
	ret			;993c
L_993D:
	ld a,(0e361h)		;993d
	cp 002h		;9940
	jr z,L_994A		;9942
	cp 008h		;9944
	jr z,L_9967		;9946
	xor a			;9948
	ret			;9949
L_994A:
	exx			;994a
	ld hl,(0e363h)		;994b
	ld de,00120h		;994e
	rst 20h			;9951
	exx			;9952
	jr nc,L_995E		;9953
	exx			;9955
	ld b,023h		;9956
	exx			;9958
	ld de,0fe02h		;9959
	jr L_9982		;995c
L_995E:
	exx			;995e
	ld b,024h		;995f
	exx			;9961
	ld de,0fe02h		;9962
	jr L_9982		;9965
L_9967:
	exx			;9967
	ld hl,(0e363h)		;9968
	ld de,00130h		;996b
	rst 20h			;996e
	exx			;996f
	jr nc,L_997B		;9970
	exx			;9972
	ld b,025h		;9973
	exx			;9975
	ld de,0661ah		;9976
	jr L_9982		;9979
L_997B:
	exx			;997b
	ld b,023h		;997c
	exx			;997e
	ld de,0bc04h		;997f
L_9982:
	ld a,(hl)			;9982
	sub d			;9983
	cp e			;9984
	ret nc			;9985
	ld (hl),000h		;9986
	call L_998D		;9988
	scf			;998b
	ret			;998c
L_998D:
	ld a,(0e408h)		;998d
	or a			;9990
	ret nz			;9991
	inc a			;9992
	ld (0e408h),a		;9993
	exx			;9996
	ld a,b			;9997
	exx			;9998
	call 0589ah		;9999
	ret			;999c
L_999D:
	ld a,(0e409h)		;999d
	or a			;99a0
	ret nz			;99a1
	inc a			;99a2
	ld (0e409h),a		;99a3
	ld a,(0ec12h)		;99a6
	rla			;99a9
	ret c			;99aa
	call 05890h		;99ab
	scf			;99ae
	ret			;99af
L_99B0:
	ld (iy+000h),000h		;99b0
	ret			;99b4
L_99B5:
	call L_99BC		;99b5
	call L_99F5		;99b8
	ret			;99bb
L_99BC:
	ld de,0ef00h		;99bc
	ld a,(0e600h)		;99bf
	or a			;99c2
	jr z,L_99E0		;99c3
	jp m,L_99E8		;99c5
	ld hl,0e618h		;99c8
	call L_99CF		;99cb
	ret			;99ce
L_99CF:
	ldi		;99cf
	ldi		;99d1
	ldi		;99d3
	ldi		;99d5
	ldi		;99d7
	ldi		;99d9
	ldi		;99db
	ldi		;99dd
	ret			;99df
L_99E0:
	ld b,004h		;99e0
L_99E2:
	call L_9A8E		;99e2
	djnz L_99E2		;99e5
	ret			;99e7
L_99E8:
	ld hl,0e618h		;99e8
	call L_99CF		;99eb
	ld hl,0e628h		;99ee
	call L_99CF		;99f1
	ret			;99f4
L_99F5:
	ld a,(0e600h)		;99f5
	or a			;99f8
	ret z			;99f9
	inc a			;99fa
	ret z			;99fb
	ld de,0ef08h		;99fc
	ld hl,0e610h		;99ff
	call L_9A0C		;9a02
	ld hl,0e620h		;9a05
	call L_9A0C		;9a08
	ret			;9a0b
L_9A0C:
	ld a,(hl)			;9a0c
	or a			;9a0d
	jr z,$+128		;9a0e
	ld a,l			;9a10
	add a,004h		;9a11
	ld l,a			;9a13
	ldi		;9a14
	inc l			;9a16
	ldi		;9a17
	ld a,l			;9a19
	sub 005h		;9a1a
	ld l,a			;9a1c
	ldi		;9a1d
	ldi		;9a1f
	ret			;9a21
L_9A22:
	call L_9A5F		;9a22
	call L_9A29		;9a25
	ret			;9a28
L_9A29:
	ld a,(0e5e0h)		;9a29
	or a			;9a2c
	ret z			;9a2d
	ld de,0ef10h		;9a2e
	ld a,(0e604h)		;9a31
	ld (de),a			;9a34
	inc de			;9a35
	ld a,(0e606h)		;9a36
	add a,010h		;9a39
	ld (de),a			;9a3b
	inc de			;9a3c
	ld hl,0e64bh		;9a3d
	ld a,(0e303h)		;9a40
	and 003h		;9a43
	jr nz,L_9A4F		;9a45
	ld a,(hl)			;9a47
	inc a			;9a48
	cp 003h		;9a49
	jr c,L_9A4E		;9a4b
	xor a			;9a4d
L_9A4E:
	ld (hl),a			;9a4e
L_9A4F:
	ld a,(hl)			;9a4f
	ld hl,09a5ch		;9a50
	call 04a6eh		;9a53
	ld (de),a			;9a56
	inc de			;9a57
	ld a,00fh		;9a58
	ld (de),a			;9a5a
	ret			;9a5b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a5c..0x9a5f  (3 bytes)
DATA_9A5C:
	defb 024h,028h,02ch	; 9a5c

; ======================================================================
; CODIGO 0x9a5f..0x9ad2  (115 bytes)
; ======================================================================


L_9A5F:
	ld de,0ef10h		;9a5f
	ld hl,0e6a0h		;9a62
	exx			;9a65
	ld b,003h		;9a66
L_9A68:
	exx			;9a68
	push hl			;9a69
	call L_9A7F		;9a6a
	pop hl			;9a6d
	ld bc,00020h		;9a6e
	add hl,bc			;9a71
	push hl			;9a72
	call L_9A7F		;9a73
	pop hl			;9a76
	ld bc,00040h		;9a77
	add hl,bc			;9a7a
	exx			;9a7b
	djnz L_9A68		;9a7c
	ret			;9a7e
L_9A7F:
	ld a,(hl)			;9a7f
	sub 003h		;9a80
	cp 002h		;9a82
	jr c,L_9A96		;9a84
	sub 00ch		;9a86
	jr z,L_9AA3		;9a88
	cp 009h		;9a8a
	jr c,L_9A96		;9a8c
L_9A8E:
	ld a,0e0h		;9a8e
	ld (de),a			;9a90
	inc e			;9a91
	inc e			;9a92
	inc e			;9a93
	inc e			;9a94
	ret			;9a95
L_9A96:
	inc l			;9a96
	inc l			;9a97
	inc l			;9a98
	ldi		;9a99
	inc l			;9a9b
	ldi		;9a9c
	ldi		;9a9e
	ldi		;9aa0
	ret			;9aa2
L_9AA3:
	ld a,l			;9aa3
	add a,008h		;9aa4
	ld l,a			;9aa6
	ldi		;9aa7
	ldi		;9aa9
	ld a,l			;9aab
	sub 004h		;9aac
	ld l,a			;9aae
	ldi		;9aaf
	ldi		;9ab1
	ret			;9ab3
L_9AB4:
	ld ix,0e680h		;9ab4
	ld de,0ce00h		;9ab8
	ld b,009h		;9abb
L_9ABD:
	push bc			;9abd
	call L_9ACA		;9abe
	ld bc,00020h		;9ac1
	add ix,bc		;9ac4
	pop bc			;9ac6
	djnz L_9ABD		;9ac7
	ret			;9ac9
L_9ACA:
	ld a,(ix+000h)		;9aca
	dec a			;9acd
	ret m			;9ace
	call 04093h		;9acf

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ad2..0x9b02  (48 bytes)
DATA_9AD2:
	defb 002h,09bh,002h,09bh,044h,09bh,044h,09bh,008h,09bh,008h,09bh,016h,09bh,008h,09bh	; 9ad2  ....D.D.........
	defb 033h,09bh,033h,09bh,008h,09bh,016h,09bh,008h,09bh,008h,09bh,044h,09bh,044h,09bh	; 9ae2  3.3.........D.D.
	defb 044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh	; 9af2  D.D.D.D.D.D.D.D.

; ======================================================================
; CODIGO 0x9b02..0x9b73  (113 bytes)
; ======================================================================


L_9B02:
	call L_9B45		;9b02
	ldi		;9b05
	ret			;9b07
L_9B08:
	call L_9B45		;9b08
	ld a,(ix+00ah)		;9b0b
	or a			;9b0e
	ret z			;9b0f
	ld c,a			;9b10
	ld b,000h		;9b11
	ldir		;9b13
	ret			;9b15
L_9B16:
	call L_9B45		;9b16
	ld (0ef80h),hl		;9b19
	ld a,(ix+00ah)		;9b1c
	or a			;9b1f
	ret z			;9b20
	ld c,a			;9b21
	ld b,000h		;9b22
	ldir		;9b24
	ld hl,(0ef80h)		;9b26
	ld bc,00040h		;9b29
	add hl,bc			;9b2c
	ld c,(ix+00ah)		;9b2d
	ldir		;9b30
	ret			;9b32
L_9B33:
	call L_9B45		;9b33
	ld a,(ix+00ah)		;9b36
	or a			;9b39
	ret z			;9b3a
L_9B3B:
	ldi		;9b3b
	ld bc,0003fh		;9b3d
	add hl,bc			;9b40
	dec a			;9b41
	jr nz,L_9B3B		;9b42
L_9B44:
	ret			;9b44
L_9B45:
	ld l,(ix+003h)		;9b45
	ld h,(ix+005h)		;9b48
	call 04a46h		;9b4b
	ld (ix+00eh),l		;9b4e
	ld (ix+00fh),h		;9b51
	ret			;9b54
L_9B55:
	ld ix,0e680h		;9b55
	ld de,0ce00h		;9b59
	ld b,009h		;9b5c
L_9B5E:
	push bc			;9b5e
	call L_9B6B		;9b5f
	ld bc,00020h		;9b62
	add ix,bc		;9b65
	pop bc			;9b67
	djnz L_9B5E		;9b68
	ret			;9b6a
L_9B6B:
	ld a,(ix+000h)		;9b6b
	dec a			;9b6e
	ret m			;9b6f
	call 04093h		;9b70

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9b73..0x9ba3  (48 bytes)
DATA_9B73:
	defb 0a3h,09bh,0a3h,09bh,044h,09bh,044h,09bh,0aeh,09bh,0aeh,09bh,0c1h,09bh,0aeh,09bh	; 9b73  ....D.D.........
	defb 0e1h,09bh,0e1h,09bh,0aeh,09bh,0c1h,09bh,0aeh,09bh,0aeh,09bh,044h,09bh,044h,09bh	; 9b83  ............D.D.
	defb 044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh,0fah,09bh	; 9b93  D.D.D.D.D.D.D...

; ======================================================================
; CODIGO 0x9ba3..0x9c35  (146 bytes)
; ======================================================================


L_9BA3:
	ex de,hl			;9ba3
	ld e,(ix+00eh)		;9ba4
	ld d,(ix+00fh)		;9ba7
	ldi		;9baa
	ex de,hl			;9bac
	ret			;9bad
L_9BAE:
	ld a,(ix+00ah)		;9bae
	or a			;9bb1
	ret z			;9bb2
	ld c,a			;9bb3
	ld b,000h		;9bb4
	ex de,hl			;9bb6
	ld e,(ix+00eh)		;9bb7
	ld d,(ix+00fh)		;9bba
	ldir		;9bbd
	ex de,hl			;9bbf
	ret			;9bc0
L_9BC1:
	ld a,(ix+00ah)		;9bc1
	or a			;9bc4
	ret z			;9bc5
	ld c,a			;9bc6
	ld b,000h		;9bc7
	ex de,hl			;9bc9
	ld e,(ix+00eh)		;9bca
	ld d,(ix+00fh)		;9bcd
	push de			;9bd0
	ldir		;9bd1
	ex de,hl			;9bd3
	pop hl			;9bd4
	ld bc,00040h		;9bd5
	add hl,bc			;9bd8
	ld c,(ix+00ah)		;9bd9
	ex de,hl			;9bdc
	ldir		;9bdd
	ex de,hl			;9bdf
	ret			;9be0
L_9BE1:
	ld a,(ix+00ah)		;9be1
	or a			;9be4
	ret z			;9be5
	ex de,hl			;9be6
	ld e,(ix+00eh)		;9be7
	ld d,(ix+00fh)		;9bea
L_9BED:
	ldi		;9bed
	ex de,hl			;9bef
	ld bc,0003fh		;9bf0
	add hl,bc			;9bf3
	ex de,hl			;9bf4
	dec a			;9bf5
	jr nz,L_9BED		;9bf6
	ex de,hl			;9bf8
	ret			;9bf9
L_9BFA:
	ld a,(ix+00ah)		;9bfa
	or a			;9bfd
	ret z			;9bfe
	ld l,(ix+00eh)		;9bff
	ld h,(ix+00fh)		;9c02
	ld c,(ix+010h)		;9c05
	ld de,00040h		;9c08
	xor a			;9c0b
L_9C0C:
	push hl			;9c0c
	ld b,(ix+00ah)		;9c0d
L_9C10:
	ld (hl),a			;9c10
	inc l			;9c11
	djnz L_9C10		;9c12
	pop hl			;9c14
	add hl,de			;9c15
	dec c			;9c16
	jr nz,L_9C0C		;9c17
	ret			;9c19
L_9C1A:
	ld ix,0e680h		;9c1a
	ld b,009h		;9c1e
L_9C20:
	push bc			;9c20
	call L_9C2D		;9c21
	ld bc,00020h		;9c24
	add ix,bc		;9c27
	pop bc			;9c29
	djnz L_9C20		;9c2a
	ret			;9c2c
L_9C2D:
	ld a,(ix+000h)		;9c2d
	dec a			;9c30
	ret m			;9c31
	call 04093h		;9c32

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9c35..0x9c65  (48 bytes)
DATA_9C35:
	defb 065h,09ch,065h,09ch,044h,09bh,044h,09bh,070h,09ch,070h,09ch,084h,09ch,070h,09ch	; 9c35  e.e.D.D.p.p...p.
	defb 0fbh,09ch,0c4h,09ch,070h,09ch,0a5h,09ch,070h,09ch,070h,09ch,044h,09bh,044h,09bh	; 9c45  ....p...p.p.D.D.
	defb 044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh,044h,09bh,016h,09dh	; 9c55  D.D.D.D.D.D.D...

; ======================================================================
; CODIGO 0x9c65..0x9d9e  (313 bytes)
; ======================================================================


L_9C65:
	ld l,(ix+00eh)		;9c65
	ld h,(ix+00fh)		;9c68
	ld a,(ix+006h)		;9c6b
	ld (hl),a			;9c6e
	ret			;9c6f
L_9C70:
	ld a,(ix+00ah)		;9c70
	or a			;9c73
	ret z			;9c74
	ld b,a			;9c75
	ld l,(ix+00eh)		;9c76
	ld h,(ix+00fh)		;9c79
	ld a,(ix+006h)		;9c7c
L_9C7F:
	ld (hl),a			;9c7f
	inc l			;9c80
	djnz L_9C7F		;9c81
	ret			;9c83
L_9C84:
	ld a,(ix+00ah)		;9c84
	or a			;9c87
	ret z			;9c88
	ld b,a			;9c89
	ld c,a			;9c8a
	ld l,(ix+00eh)		;9c8b
	ld h,(ix+00fh)		;9c8e
	push hl			;9c91
	ld a,00ah		;9c92
L_9C94:
	ld (hl),a			;9c94
	inc l			;9c95
	djnz L_9C94		;9c96
	pop hl			;9c98
	ld de,00040h		;9c99
	add hl,de			;9c9c
	ld b,c			;9c9d
	ld a,00bh		;9c9e
L_9CA0:
	ld (hl),a			;9ca0
	inc l			;9ca1
	djnz L_9CA0		;9ca2
	ret			;9ca4
L_9CA5:
	ld a,(ix+00ah)		;9ca5
	or a			;9ca8
	ret z			;9ca9
	ld b,a			;9caa
	ld c,a			;9cab
	ld l,(ix+00eh)		;9cac
	ld h,(ix+00fh)		;9caf
	push hl			;9cb2
	ld a,010h		;9cb3
L_9CB5:
	ld (hl),a			;9cb5
	inc l			;9cb6
	djnz L_9CB5		;9cb7
	pop hl			;9cb9
	ld de,00040h		;9cba
	add hl,de			;9cbd
	ld b,c			;9cbe
L_9CBF:
	ld (hl),a			;9cbf
	inc l			;9cc0
	djnz L_9CBF		;9cc1
	ret			;9cc3
L_9CC4:
	ld a,(ix+010h)		;9cc4
	or a			;9cc7
	ret nz			;9cc8
	ld a,(ix+00ah)		;9cc9
	or a			;9ccc
	ret z			;9ccd
	cp 003h		;9cce
	jr nc,L_9CE1		;9cd0
	ld l,(ix+00eh)		;9cd2
	ld h,(ix+00fh)		;9cd5
	ld (hl),00dh		;9cd8
	ld de,00040h		;9cda
	add hl,de			;9cdd
	ld (hl),00fh		;9cde
	ret			;9ce0
L_9CE1:
	ld l,(ix+00eh)		;9ce1
	ld h,(ix+00fh)		;9ce4
	ld (hl),00dh		;9ce7
	ld a,00eh		;9ce9
	ld b,(ix+00ah)		;9ceb
	dec b			;9cee
	dec b			;9cef
	ld de,00040h		;9cf0
L_9CF3:
	add hl,de			;9cf3
	ld (hl),a			;9cf4
	djnz L_9CF3		;9cf5
	add hl,de			;9cf7
	ld (hl),00fh		;9cf8
	ret			;9cfa
L_9CFB:
	ld a,(ix+010h)		;9cfb
	or a			;9cfe
	ret nz			;9cff
	ld a,(ix+00ah)		;9d00
	or a			;9d03
	ret z			;9d04
	ld b,a			;9d05
	ld l,(ix+00eh)		;9d06
	ld h,(ix+00fh)		;9d09
	ld a,011h		;9d0c
	ld de,00040h		;9d0e
L_9D11:
	ld (hl),a			;9d11
	add hl,de			;9d12
	djnz L_9D11		;9d13
	ret			;9d15
L_9D16:
	ld a,(ix+00ah)		;9d16
	or a			;9d19
	ret z			;9d1a
	call L_9B45		;9d1b
	ld b,(ix+010h)		;9d1e
	ld a,034h		;9d21
	ld de,00040h		;9d23
L_9D26:
	push bc			;9d26
	push hl			;9d27
	ld b,(ix+00ah)		;9d28
L_9D2B:
	ld (hl),a			;9d2b
	inc l			;9d2c
	djnz L_9D2B		;9d2d
	pop hl			;9d2f
	add hl,de			;9d30
	pop bc			;9d31
	djnz L_9D26		;9d32
	ret			;9d34
L_9D35:
	call 041f7h		;9d35
	call 041ach		;9d38
	call L_9D41		;9d3b
	jp 04213h		;9d3e
L_9D41:
	ld c,000h		;9d41
	ld a,h			;9d43
	sub d			;9d44
	jr nc,L_9D4B		;9d45
	neg		;9d47
	set 0,c		;9d49
L_9D4B:
	ld h,a			;9d4b
	ld a,l			;9d4c
	sub e			;9d4d
	jr nc,L_9D54		;9d4e
	neg		;9d50
	set 1,c		;9d52
L_9D54:
	ld l,a			;9d54
	rra			;9d55
	rra			;9d56
	rra			;9d57
	rra			;9d58
	and 00fh		;9d59
	ld e,a			;9d5b
	ld a,h			;9d5c
	and 0f0h		;9d5d
	or e			;9d5f
	ld e,a			;9d60
	ld d,000h		;9d61
	sla e		;9d63
	rl d		;9d65
	push hl			;9d67
	ld hl,0b906h		;9d68
	add hl,de			;9d6b
	ld e,(hl)			;9d6c
	inc hl			;9d6d
	ld d,(hl)			;9d6e
	bit 0,c		;9d6f
	call nz,04a75h		;9d71
	pop hl			;9d74
	push de			;9d75
	ld a,h			;9d76
	rra			;9d77
	rra			;9d78
	rra			;9d79
	rra			;9d7a
	and 00fh		;9d7b
	ld e,a			;9d7d
	ld a,l			;9d7e
	and 0f0h		;9d7f
	or e			;9d81
	ld e,a			;9d82
	ld d,000h		;9d83
	sla e		;9d85
	rl d		;9d87
	ld hl,0b906h		;9d89
	add hl,de			;9d8c
	ld e,(hl)			;9d8d
	inc hl			;9d8e
	ld d,(hl)			;9d8f
	bit 1,c		;9d90
	call nz,04a75h		;9d92
	pop hl			;9d95
	ret			;9d96
L_9D97:
	ld ix,0ec00h		;9d97
	call 04093h		;9d9b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d9e..0x9dc0  (34 bytes)
DATA_9D9E:
	defb 0f0h,0a0h,0c0h,09dh,0dah,0a2h,0eeh,0a3h,0c0h,09dh,0f8h,0a4h,010h,0a7h,077h,0b2h	; 9d9e  ..............w.
	defb 000h,0b0h,0c0h,09dh,01dh,0aah,071h,0ach,010h,0afh,095h,0bah,075h,0b5h,08dh,0bdh	; 9dae  ......q.....u...
	defb 04fh,0b7h	; 9dbe

; ======================================================================
; CODIGO 0x9dc0..0x9df2  (50 bytes)
; ======================================================================


L_9DC0:
	ret			;9dc0
L_9DC1:
	ld hl,0e441h		;9dc1
	inc (hl)			;9dc4
	ret			;9dc5
L_9DC6:
	ld (ix+012h),a		;9dc6
	push ix		;9dc9
	pop de			;9dcb
	ld bc,0000ah		;9dcc
	ldir		;9dcf
	xor a			;9dd1
	ld (0ec20h),a		;9dd2
	inc a			;9dd5
	ld (0e454h),a		;9dd6
	ld a,(0e440h)		;9dd9
	ld hl,09df1h		;9ddc
	call 04a6eh		;9ddf
	ld (0e405h),a		;9de2
	call 05718h		;9de5
	ld a,(0e440h)		;9de8
	cp 00eh		;9deb
	jr z,$+22		;9ded
	jp 050feh		;9def

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9df2..0x9e03  (17 bytes)
DATA_9DF2:
	defb 07bh,07bh,07bh,07bh,05ch,070h,060h,090h,060h,07bh,07bh,064h,093h,080h,075h,060h	; 9df2  {{{{\p`.`{{d..u`
	defb 075h	; 9e02

; ======================================================================
; CODIGO 0x9e03..0x9f00  (253 bytes)
; ======================================================================


L_9E03:
	ld a,(0e455h)		;9e03
	dec a			;9e06
	jp z,050feh		;9e07
	ret			;9e0a
L_9E0B:
	ld a,(0e440h)		;9e0b
	cp 00dh		;9e0e
	jr z,L_9E2A		;9e10
	sub 00eh		;9e12
	jr nz,L_9E21		;9e14
	ld a,(0e455h)		;9e16
	dec a			;9e19
	jr z,L_9E21		;9e1a
	ld a,(0ec21h)		;9e1c
	dec a			;9e1f
	ret			;9e20
L_9E21:
	call 06de6h		;9e21
	ret nz			;9e24
	ld a,(0e600h)		;9e25
	or a			;9e28
	ret m			;9e29
L_9E2A:
	ld hl,0e443h		;9e2a
	ld a,(hl)			;9e2d
	and a			;9e2e
	ret z			;9e2f
	dec (hl)			;9e30
	ret			;9e31
L_9E32:
	ld a,(0e445h)		;9e32
	and a			;9e35
	ret z			;9e36
	ld hl,00030h		;9e37
	ld (0e443h),hl		;9e3a
	jp L_9DC1		;9e3d
L_9E40:
	xor a			;9e40
	ld (0e456h),a		;9e41
	and a			;9e44
	dec (ix+002h)		;9e45
	ret nz			;9e48
	ld (ix+002h),008h		;9e49
	ld a,001h		;9e4d
	ld (0e456h),a		;9e4f
	ld l,(ix+005h)		;9e52
	ld h,(ix+006h)		;9e55
	ld de,0fff8h		;9e58
	add hl,de			;9e5b
	ld (ix+005h),l		;9e5c
	ld (ix+006h),h		;9e5f
	ld e,c			;9e62
	ld d,000h		;9e63
	rst 20h			;9e65
	ret			;9e66
L_9E67:
	ld l,(ix+003h)		;9e67
	ld h,(ix+004h)		;9e6a
	ld d,000h		;9e6d
	ld e,a			;9e6f
	add hl,de			;9e70
	ld (ix+00ah),l		;9e71
	ld (ix+00bh),h		;9e74
	ld (ix+00eh),l		;9e77
	ld (ix+00fh),h		;9e7a
	ld l,(ix+005h)		;9e7d
	ld h,(ix+006h)		;9e80
	ld e,b			;9e83
	push hl			;9e84
	add hl,de			;9e85
	ld (ix+00ch),l		;9e86
	ld (ix+00dh),h		;9e89
	pop hl			;9e8c
	ld e,c			;9e8d
	add hl,de			;9e8e
	ld (ix+010h),l		;9e8f
	ld (ix+011h),h		;9e92
	ret			;9e95
L_9E96:
	ld a,(ix+012h)		;9e96
L_9E99:
	sub b			;9e99
	jr c,L_9EA2		;9e9a
	jp m,L_9EA2		;9e9c
	inc c			;9e9f
	jr L_9E99		;9ea0
L_9EA2:
	ld (ix+008h),c		;9ea2
	ret			;9ea5
L_9EA6:
	ld a,(ix+004h)		;9ea6
	and a			;9ea9
	jr z,L_9EB4		;9eaa
	ld a,002h		;9eac
	jp m,L_9EDF		;9eae
	dec a			;9eb1
	jr L_9EDF		;9eb2
L_9EB4:
	ld a,(0e606h)		;9eb4
	cp 080h		;9eb7
	jr c,L_9EC4		;9eb9
	ld a,(ix+005h)		;9ebb
	cp 060h		;9ebe
	ld a,004h		;9ec0
	jr c,L_9EDF		;9ec2
L_9EC4:
	ld a,(0e440h)		;9ec4
	dec a			;9ec7
	ld hl,09f0dh		;9ec8
	call 04089h		;9ecb
	ld c,(hl)			;9ece
	ld a,(ix+003h)		;9ecf
	add a,c			;9ed2
	jr c,L_9EDD		;9ed3
	ld hl,0e604h		;9ed5
	cp (hl)			;9ed8
	ld a,002h		;9ed9
	jr c,L_9EDF		;9edb
L_9EDD:
	ld a,001h		;9edd
L_9EDF:
	ld (ix+015h),a		;9edf
	ld (ix+002h),0ffh		;9ee2
	cp 003h		;9ee6
	ld c,00ch		;9ee8
	jr c,L_9EEE		;9eea
	ld c,00eh		;9eec
L_9EEE:
	ld a,r		;9eee
	and 003h		;9ef0
	add a,c			;9ef2
	ld (ix+016h),a		;9ef3
	ld a,(0e389h)		;9ef6
	add a,a			;9ef9
	add a,040h		;9efa
	ld (ix+017h),a		;9efc
	ret			;9eff

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f00..0x9f11  (17 bytes)
DATA_9F00:
	defb 03ah,006h,0e6h,0ddh,0beh,005h,03eh,003h,038h,0d5h,03ch,018h,0d2h,028h,030h,040h	; 9f00  :.....>.8.<..(0@
	defb 040h	; 9f10

; ======================================================================
; CODIGO 0x9f11..0x9fff  (238 bytes)
; ======================================================================


L_9F11:
	ld a,(ix+017h)		;9f11
	add a,(ix+002h)		;9f14
	ld (ix+002h),a		;9f17
	ret nc			;9f1a
	dec (ix+016h)		;9f1b
	jp z,L_9FA5		;9f1e
	ld a,(ix+015h)		;9f21
	and a			;9f24
	ret z			;9f25
	dec a			;9f26
	jr z,L_9F71		;9f27
	dec a			;9f29
	jr z,L_9F48		;9f2a
	dec a			;9f2c
	jr z,L_9F3A		;9f2d
	ld a,(ix+005h)		;9f2f
	add a,008h		;9f32
	cp 0b0h		;9f34
	jr nc,L_9FA5		;9f36
	jr L_9F43		;9f38
L_9F3A:
	ld a,(ix+005h)		;9f3a
	sub 008h		;9f3d
	cp 019h		;9f3f
	jr c,L_9FA5		;9f41
L_9F43:
	ld (ix+005h),a		;9f43
	and a			;9f46
	ret			;9f47
L_9F48:
	ld hl,(0ec03h)		;9f48
	ld de,00008h		;9f4b
	add hl,de			;9f4e
	ld a,h			;9f4f
	and a			;9f50
	jr nz,L_9F6C		;9f51
	ld a,(0e440h)		;9f53
	ld de,00068h		;9f56
	cp 003h		;9f59
	jr z,L_9F69		;9f5b
	ld e,090h		;9f5d
	cp 004h		;9f5f
	jr z,L_9F69		;9f61
	cp 00fh		;9f63
	jr z,L_9F69		;9f65
	ld e,080h		;9f67
L_9F69:
	rst 20h			;9f69
	jr nc,L_9F9C		;9f6a
L_9F6C:
	ld (0ec03h),hl		;9f6c
	and a			;9f6f
	ret			;9f70
L_9F71:
	ld hl,(0ec03h)		;9f71
	ld de,0fff8h		;9f74
	add hl,de			;9f77
	ld (0ec03h),hl		;9f78
	ld a,h			;9f7b
	and a			;9f7c
	ret p			;9f7d
	ld a,(0e440h)		;9f7e
	ld b,0e0h		;9f81
	cp 003h		;9f83
	jr z,L_9F99		;9f85
	ld b,0e8h		;9f87
	cp 00fh		;9f89
	jr z,L_9F99		;9f8b
	cp 004h		;9f8d
	jr z,L_9F99		;9f8f
	ld b,0f8h		;9f91
	cp 004h		;9f93
	jr z,L_9F99		;9f95
	ld b,0c0h		;9f97
L_9F99:
	ld a,l			;9f99
	cp b			;9f9a
	ret nc			;9f9b
L_9F9C:
	ld a,(ix+015h)		;9f9c
	xor 003h		;9f9f
	ld (ix+015h),a		;9fa1
	ret			;9fa4
L_9FA5:
	scf			;9fa5
	ret			;9fa6
L_9FA7:
	ld a,(ix+015h)		;9fa7
	and a			;9faa
	ret z			;9fab
	dec a			;9fac
	jr z,L_9FE1		;9fad
	dec a			;9faf
	jr z,L_9FF5		;9fb0
	dec a			;9fb2
	jr z,L_9FC7		;9fb3
	ld l,(ix+005h)		;9fb5
	ld h,(ix+006h)		;9fb8
	ld de,00008h		;9fbb
	add hl,de			;9fbe
	ld de,00030h		;9fbf
	rst 20h			;9fc2
	jr z,L_9FA5		;9fc3
	jr L_9FD9		;9fc5
L_9FC7:
	ld l,(ix+005h)		;9fc7
	ld h,(ix+006h)		;9fca
	ld de,00008h		;9fcd
	or a			;9fd0
	sbc hl,de		;9fd1
	ld de,0ffd0h		;9fd3
	rst 20h			;9fd6
	jr z,L_9FA5		;9fd7
L_9FD9:
	ld (ix+005h),l		;9fd9
	ld (ix+006h),h		;9fdc
	or a			;9fdf
	ret			;9fe0
L_9FE1:
	ld l,(ix+003h)		;9fe1
	ld h,(ix+004h)		;9fe4
	ld de,00008h		;9fe7
	or a			;9fea
	sbc hl,de		;9feb
	ld de,0ffd8h		;9fed
	rst 20h			;9ff0
	jr z,L_9FA5		;9ff1
	jr $+18		;9ff3
L_9FF5:
	ld l,(ix+003h)		;9ff5
	ld h,(ix+004h)		;9ff8
	ld de,00008h		;9ffb
	add hl,de			;9ffe

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9fff..0xa000  (1 bytes)
DATA_9FFF:
	defb 011h	; 9fff

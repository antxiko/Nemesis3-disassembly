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
	bit 2,a		;8000
	ld a,000h		;8002
	jr z,L_8008		;8004
	ld a,008h		;8006
L_8008:
	ld (0ef37h),a		;8008
	ld (0ef3bh),a		;800b
	ld (0ef3fh),a		;800e
	ret			;8011

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8012..0x801e  (12 bytes)
DATA_8012:
	defb 03fh,050h,0c0h,008h,03eh,08dh,0c0h,008h,036h,0b1h,0c0h,008h	; 8012  ?P..>...6...

; ======================================================================
; CODIGO 0x801e..0x8052  (52 bytes)
; ======================================================================


L_801E:
	ld a,(0e303h)		;801e
	rra			;8021
	rra			;8022
	and 003h		;8023
	add a,0ech		;8025
	ld hl,0ca48h		;8027
	ld bc,00b10h		;802a
	ld de,00010h		;802d
L_8030:
	push bc			;8030
L_8031:
	ld (hl),a			;8031
	inc hl			;8032
	inc a			;8033
	cp 0f0h		;8034
	jr c,L_803A		;8036
	ld a,0ech		;8038
L_803A:
	dec c			;803a
	jr nz,L_8031		;803b
	add hl,de			;803d
	add a,001h		;803e
	cp 0f0h		;8040
	jr c,L_8046		;8042
	ld a,0ech		;8044
L_8046:
	pop bc			;8046
	djnz L_8030		;8047
	ret			;8049
L_804A:
	ld bc,(0e7e4h)		;804a
	ld a,c			;804e
	call 04093h		;804f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8052..0x805a  (8 bytes)
DATA_8052:
	defb 0cbh,06ch,014h,06dh,05ah,080h,0b7h,06dh	; 8052  .l.mZ..m

; ======================================================================
; CODIGO 0x805a..0x806b  (17 bytes)
; ======================================================================


L_805A:
	push bc			;805a
	call 05de9h		;805b
	call 05985h		;805e
	pop af			;8061
	or a			;8062
	push af			;8063
	call nz,07320h		;8064
	pop af			;8067
	call 04093h		;8068

; ----------------------------------------------------------------------
; DATOS sin identificar  0x806b..0x8073  (8 bytes)
DATA_806B:
	defb 07ch,07dh,073h,080h,0a2h,080h,0aeh,080h	; 806b  |}s.....

; ======================================================================
; CODIGO 0x8073..0x80bf  (76 bytes)
; ======================================================================


L_8073:
	ld hl,0e5c0h		;8073
	dec (hl)			;8076
	ret nz			;8077
	call 041e4h		;8078
	ld ix,0bfb8h		;807b
	call 04cb1h		;807f
	ld ix,0bfc5h		;8082
	call 04d17h		;8086
	ld hl,0bfceh		;8089
	ld de,0caach		;808c
	ld bc,00508h		;808f
	call 059a1h		;8092
	call 041bfh		;8095
	ld hl,0626ah		;8098
	call 0612ah		;809b
	call 06cc1h		;809e
	ret			;80a1
L_80A2:
	call 06135h		;80a2
	ret nz			;80a5
	xor a			;80a6
	ld (0e5c0h),a		;80a7
	call 06cc1h		;80aa
	ret			;80ad
L_80AE:
	ld hl,0e5c0h		;80ae
	dec (hl)			;80b1
	ret nz			;80b2
	call 07dedh		;80b3
	ret			;80b6
L_80B7:
	ld bc,(0e7e4h)		;80b7
	ld a,c			;80bb
	call 04093h		;80bc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x80bf..0x80c7  (8 bytes)
DATA_80BF:
	defb 0cbh,06ch,014h,06dh,0c7h,080h,0b7h,06dh	; 80bf  .l.m...m

; ======================================================================
; CODIGO 0x80c7..0x80d8  (17 bytes)
; ======================================================================


L_80C7:
	push bc			;80c7
	call 05de9h		;80c8
	call 05985h		;80cb
	pop af			;80ce
	or a			;80cf
	push af			;80d0
	call nz,07320h		;80d1
	pop af			;80d4
	call 04093h		;80d5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x80d8..0x80e0  (8 bytes)
DATA_80D8:
	defb 07ch,07dh,0e0h,080h,0f1h,080h,0fch,080h	; 80d8  |}......

; ======================================================================
; CODIGO 0x80e0..0x812f  (79 bytes)
; ======================================================================


L_80E0:
	ld hl,0e5c0h		;80e0
	dec (hl)			;80e3
	ret nz			;80e4
	call L_8104		;80e5
	ld hl,061fdh		;80e8
	call 0612ah		;80eb
	jp 06cc1h		;80ee
L_80F1:
	call 06135h		;80f1
	ret nz			;80f4
	xor a			;80f5
	ld (0e5c0h),a		;80f6
	jp 06cc1h		;80f9
L_80FC:
	ld hl,0e5c0h		;80fc
	dec (hl)			;80ff
	ret nz			;8100
	jp 07dedh		;8101
L_8104:
	call 041e4h		;8104
	call L_8110		;8107
	call L_8138		;810a
	jp 041bfh		;810d
L_8110:
	ld de,0b730h		;8110
	call 04b36h		;8113
	ld de,0b7b8h		;8116
	call 04b36h		;8119
	ld de,0b7fch		;811c
	call 04b36h		;811f
	ld de,0b84dh		;8122
	call 04b36h		;8125
	ld ix,0812fh		;8128
	jp 04d17h		;812c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x812f..0x8138  (9 bytes)
DATA_812F:
	defb 050h,070h,024h,013h,080h,090h,012h,00bh,000h	; 812f  Pp$......

; ======================================================================
; CODIGO 0x8138..0x816e  (54 bytes)
; ======================================================================


L_8138:
	ld hl,0b87eh		;8138
	ld de,0cd00h		;813b
	call 055cdh		;813e
	ld hl,0cd00h		;8141
	ld de,0ca6ah		;8144
	ld bc,0090ch		;8147
	jp 059a1h		;814a
L_814D:
	ld a,(0e321h)		;814d
	dec a			;8150
	jr z,L_8156		;8151
	jp L_836A		;8153
L_8156:
	call 05de9h		;8156
	call 05985h		;8159
	ld bc,(0e322h)		;815c
	push bc			;8160
	ld a,c			;8161
	sub 001h		;8162
	cp 003h		;8164
	call c,07320h		;8166
	pop bc			;8169
	ld a,c			;816a
	call 04093h		;816b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x816e..0x8178  (10 bytes)
DATA_816E:
	defb 078h,081h,097h,081h,0a9h,081h,0c3h,081h,0d9h,081h	; 816e  x.........

; ======================================================================
; CODIGO 0x8178..0x8208  (144 bytes)
; ======================================================================


L_8178:
	call 0594dh		;8178
	call 0580eh		;817b
	call L_8188		;817e
	ld hl,06102h		;8181
	call 060f9h		;8184
	ret			;8187
L_8188:
	call L_83CF		;8188
	call L_83DC		;818b
	ld a,0b4h		;818e
	ld (0e5c0h),a		;8190
	call 060dfh		;8193
	ret			;8196
L_8197:
	ld hl,0e5c0h		;8197
	dec (hl)			;819a
	ret nz			;819b
	call L_81F4		;819c
	ld hl,06193h		;819f
	call 0612ah		;81a2
	call L_83CF		;81a5
	ret			;81a8
L_81A9:
	call L_81CC		;81a9
	ret nz			;81ac
	call L_820F		;81ad
	call 06135h		;81b0
	ret nz			;81b3
	call 060c0h		;81b4
	call L_838C		;81b7
	ld a,03ch		;81ba
	ld (0e5c0h),a		;81bc
	call L_83CF		;81bf
	ret			;81c2
L_81C3:
	ld hl,0e5c0h		;81c3
	dec (hl)			;81c6
	ret nz			;81c7
	call L_83CF		;81c8
	ret			;81cb
L_81CC:
	ld a,(0e308h)		;81cc
	and 030h		;81cf
	ret z			;81d1
	ld hl,00004h		;81d2
	ld (0e322h),hl		;81d5
	ret			;81d8
L_81D9:
	dec b			;81d9
	jr z,L_81E7		;81da
	call 0578bh		;81dc
	ld a,078h		;81df
	ld (0e402h),a		;81e1
	jp L_83D7		;81e4
L_81E7:
	ld hl,0e402h		;81e7
	dec (hl)			;81ea
	ret nz			;81eb
	call 04aa9h		;81ec
	xor a			;81ef
	ld (0e321h),a		;81f0
	ret			;81f3
L_81F4:
	ld ix,08208h		;81f4
	call 04cb1h		;81f8
	ld hl,06030h		;81fb
	ld (0e5d2h),hl		;81fe
	ld hl,0a030h		;8201
	ld (0e5d4h),hl		;8204
	ret			;8207

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8208..0x820f  (7 bytes)
DATA_8208:
	defb 006h,0b4h,0a0h,080h,0f6h,0a0h,000h	; 8208

; ======================================================================
; CODIGO 0x820f..0x8378  (361 bytes)
; ======================================================================


L_820F:
	call 060c0h		;820f
	ld ix,0e5d2h		;8212
	call L_821D		;8216
	ld ix,0e5d4h		;8219
L_821D:
	call L_8224		;821d
	call L_827D		;8220
	ret			;8223
L_8224:
	ld a,(0e303h)		;8224
	and 003h		;8227
	ret nz			;8229
	ld a,r		;822a
	rra			;822c
	push af			;822d
	call c,L_8241		;822e
	pop af			;8231
	call nc,L_8250		;8232
	ld a,r		;8235
	rra			;8237
	push af			;8238
	call c,L_825F		;8239
	pop af			;823c
	call nc,L_826E		;823d
	ret			;8240
L_8241:
	ld a,(ix+001h)		;8241
	add a,008h		;8244
	cp 0b0h		;8246
	jr c,L_824C		;8248
	ld a,0b0h		;824a
L_824C:
	ld (ix+001h),a		;824c
	ret			;824f
L_8250:
	ld a,(ix+001h)		;8250
	sub 008h		;8253
	cp 048h		;8255
	jr nc,L_825B		;8257
	ld a,048h		;8259
L_825B:
	ld (ix+001h),a		;825b
	ret			;825e
L_825F:
	ld a,(ix+000h)		;825f
	sub 008h		;8262
	cp 020h		;8264
	jr nc,L_826A		;8266
	ld a,020h		;8268
L_826A:
	ld (ix+000h),a		;826a
	ret			;826d
L_826E:
	ld a,(ix+000h)		;826e
	add a,008h		;8271
	cp 058h		;8273
	jr c,L_8279		;8275
	ld a,058h		;8277
L_8279:
	ld (ix+000h),a		;8279
	ret			;827c
L_827D:
	call L_8287		;827d
	call L_8312		;8280
	call L_82CA		;8283
	ret			;8286
L_8287:
	ld l,(ix+000h)		;8287
	ld h,040h		;828a
	call L_8356		;828c
	ld e,l			;828f
	ld d,h			;8290
	inc de			;8291
	ld (hl),081h		;8292
	ld bc,0000fh		;8294
	ldir		;8297
	ld l,010h		;8299
	ld h,(ix+001h)		;829b
	call L_8356		;829e
	ld de,00020h		;82a1
	ld b,00bh		;82a4
L_82A6:
	ld (hl),082h		;82a6
	add hl,de			;82a8
	djnz L_82A6		;82a9
	ld l,(ix+000h)		;82ab
	ld h,(ix+001h)		;82ae
	call L_8356		;82b1
	ld (hl),080h		;82b4
	ld bc,00020h		;82b6
	add hl,bc			;82b9
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
	ld a,(ix+000h)		;82ca
	add a,010h		;82cd
	ld l,a			;82cf
	ld a,(ix+001h)		;82d0
	sub 008h		;82d3
	ld h,a			;82d5
	ld (0ef80h),hl		;82d6
L_82D9:
	call L_82ED		;82d9
	ret c			;82dc
	ld hl,(0ef80h)		;82dd
	ld a,l			;82e0
	add a,018h		;82e1
	ld l,a			;82e3
	ld a,h			;82e4
	sub 008h		;82e5
	ld h,a			;82e7
	ld (0ef80h),hl		;82e8
	jr L_82D9		;82eb
L_82ED:
	ld a,h			;82ed
	cp 040h		;82ee
	ret c			;82f0
	call L_8356		;82f1
	ld de,0cb98h		;82f4
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
	ld a,(ix+000h)		;8312
	add a,010h		;8315
	ld l,a			;8317
	ld a,(ix+001h)		;8318
	add a,008h		;831b
	ld h,a			;831d
	ld (0ef80h),hl		;831e
L_8321:
	call L_8335		;8321
	ret nc			;8324
	ld hl,(0ef80h)		;8325
	ld a,l			;8328
	add a,018h		;8329
	ld l,a			;832b
	ld a,h			;832c
	add a,008h		;832d
	ld h,a			;832f
	ld (0ef80h),hl		;8330
	jr L_8321		;8333
L_8335:
	ld a,h			;8335
	cp 0c0h		;8336
	ret nc			;8338
	call L_8356		;8339
	ld de,0cb98h		;833c
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
	ld a,l			;8356
	rra			;8357
	rra			;8358
	rra			;8359
	rra			;835a
	rr h		;835b
	rra			;835d
	rr h		;835e
	rra			;8360
	rr h		;8361
	ld l,h			;8363
	and 003h		;8364
	add a,0cah		;8366
	ld h,a			;8368
	ret			;8369
L_836A:
	call 05de9h		;836a
	call 05985h		;836d
	ld bc,(0e322h)		;8370
	ld a,c			;8374
	call 04093h		;8375

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8378..0x8380  (8 bytes)
DATA_8378:
	defb 080h,083h,098h,083h,0b3h,083h,0d9h,081h	; 8378  ........

; ======================================================================
; CODIGO 0x8380..0x8406  (134 bytes)
; ======================================================================


L_8380:
	call 0580eh		;8380
	call L_8188		;8383
	ld hl,0610eh		;8386
	call 060f9h		;8389
L_838C:
	ld a,002h		;838c
	ld (0e54ch),a		;838e
	ld hl,00001h		;8391
	ld (0e54dh),hl		;8394
	ret			;8397
L_8398:
	call 07320h		;8398
	call L_8C9B		;839b
	ret nz			;839e
	xor a			;839f
	ld (0e54ch),a		;83a0
	ld hl,06108h		;83a3
	call 060f9h		;83a6
	ld hl,061b4h		;83a9
	call 0612ah		;83ac
	call L_83CF		;83af
	ret			;83b2
L_83B3:
	call L_83C2		;83b3
	ret nz			;83b6
	call 07320h		;83b7
	call 06135h		;83ba
	ret nz			;83bd
	call L_83CF		;83be
	ret			;83c1
L_83C2:
	ld a,(0e308h)		;83c2
	and 030h		;83c5
	ret z			;83c7
	ld hl,00003h		;83c8
	ld (0e322h),hl		;83cb
	ret			;83ce
L_83CF:
	ld hl,0e322h		;83cf
	inc (hl)			;83d2
	inc hl			;83d3
	ld (hl),000h		;83d4
	ret			;83d6
L_83D7:
	ld hl,0e323h		;83d7
	inc (hl)			;83da
	ret			;83db
L_83DC:
	ld hl,0e5c0h		;83dc
	ld de,0e5c1h		;83df
	ld bc,0001fh		;83e2
	ld (hl),000h		;83e5
	ldir		;83e7
	ret			;83e9
L_83EA:
	call 05de9h		;83ea
	ld bc,(0e329h)		;83ed
	ld a,c			;83f1
	cp 004h		;83f2
	jr nz,L_83FB		;83f4
	ld a,b			;83f6
	cp 007h		;83f7
	jr nc,L_83FE		;83f9
L_83FB:
	call 05985h		;83fb
L_83FE:
	ld bc,(0e329h)		;83fe
	ld a,c			;8402
	call 04093h		;8403

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8406..0x8410  (10 bytes)
DATA_8406:
	defb 01dh,084h,029h,085h,011h,086h,097h,087h,01dh,089h	; 8406  ..).......

; ======================================================================
; CODIGO 0x8410..0x8427  (23 bytes)
; ======================================================================


L_8410:
	ld hl,0e329h		;8410
	inc (hl)			;8413
	inc hl			;8414
	ld (hl),000h		;8415
	ret			;8417
L_8418:
	ld hl,0e32ah		;8418
	inc (hl)			;841b
	ret			;841c
L_841D:
	push bc			;841d
	ld a,b			;841e
	or a			;841f
	call nz,07320h		;8420
	pop af			;8423
	call 04093h		;8424

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8427..0x8437  (16 bytes)
DATA_8427:
	defb 037h,084h,058h,084h,084h,084h,097h,084h,0beh,084h,0eah,084h,005h,085h,021h,085h	; 8427  7.X...........!.

; ======================================================================
; CODIGO 0x8437..0x852d  (246 bytes)
; ======================================================================


L_8437:
	call 0594dh		;8437
	call 05827h		;843a
	call 05718h		;843d
	call 04aa9h		;8440
	call 06033h		;8443
	call 060dfh		;8446
	ld hl,06108h		;8449
	call 060f9h		;844c
	ld a,078h		;844f
	ld (0e40ch),a		;8451
	call L_8418		;8454
	ret			;8457
L_8458:
	ld hl,0e40ch		;8458
	dec (hl)			;845b
	ret nz			;845c
	ld a,004h		;845d
	call 05709h		;845f
	call 041e4h		;8462
	ld ix,0a1d6h		;8465
	call 04cb1h		;8469
	ld ix,0a225h		;846c
	call 04d17h		;8470
	call 041bfh		;8473
	xor a			;8476
	call L_84A7		;8477
	ld hl,0620ah		;847a
	call 0612ah		;847d
	call L_8418		;8480
	ret			;8483
L_8484:
	call 06135h		;8484
	ret nz			;8487
	ld hl,00500h		;8488
	ld (0e5d0h),hl		;848b
	ld a,001h		;848e
	ld (0e40ch),a		;8490
	call L_8418		;8493
	ret			;8496
L_8497:
	ld hl,0e40ch		;8497
	dec (hl)			;849a
	ret nz			;849b
	ld (hl),078h		;849c
	ld hl,0e5d1h		;849e
	dec (hl)			;84a1
	jr z,L_84B4		;84a2
	dec hl			;84a4
	ld a,(hl)			;84a5
	inc (hl)			;84a6
L_84A7:
	call 041e4h		;84a7
	ld hl,0b467h		;84aa
	call 06064h		;84ad
	call 041bfh		;84b0
	ret			;84b3
L_84B4:
	ld hl,06213h		;84b4
	call 0612ah		;84b7
	call L_8418		;84ba
	ret			;84bd
L_84BE:
	call 06135h		;84be
	ret nz			;84c1
	ld a,005h		;84c2
	call 05709h		;84c4
	call 041e4h		;84c7
	ld ix,0a808h		;84ca
	call 04cb1h		;84ce
	ld ix,0a81bh		;84d1
	call 04d17h		;84d5
	call 041bfh		;84d8
	ld hl,00704h		;84db
	ld (0e5d0h),hl		;84de
	ld a,001h		;84e1
	ld (0e40ch),a		;84e3
	call L_8418		;84e6
	ret			;84e9
L_84EA:
	ld hl,0e40ch		;84ea
	dec (hl)			;84ed
	ret nz			;84ee
	ld (hl),014h		;84ef
	ld hl,0e5d1h		;84f1
	dec (hl)			;84f4
	jr z,L_84FC		;84f5
	dec hl			;84f7
	ld a,(hl)			;84f8
	inc (hl)			;84f9
	jr L_84A7		;84fa
L_84FC:
	ld a,0b4h		;84fc
	ld (0e40ch),a		;84fe
	call L_8418		;8501
	ret			;8504
L_8505:
	ld hl,0e40ch		;8505
	dec (hl)			;8508
	jr z,L_8517		;8509
	bit 3,(hl)		;850b
	ld a,00ah		;850d
	jr z,L_8513		;850f
	ld a,00bh		;8511
L_8513:
	call L_84A7		;8513
	ret			;8516
L_8517:
	ld hl,0621ch		;8517
	call 0612ah		;851a
	call L_8418		;851d
	ret			;8520
L_8521:
	call 06135h		;8521
	ret nz			;8524
	call L_8410		;8525
	ret			;8528
L_8529:
	ld a,b			;8529
	call 04093h		;852a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x852d..0x853d  (16 bytes)
DATA_852D:
	defb 03dh,085h,054h,085h,077h,085h,0a1h,085h,0b6h,085h,0c1h,085h,0d8h,085h,0efh,085h	; 852d  =.T.w...........

; ======================================================================
; CODIGO 0x853d..0x8621  (228 bytes)
; ======================================================================


L_853D:
	call 04aa9h		;853d
	call 05959h		;8540
	call 05648h		;8543
	call 0be34h		;8546
	call 0bbe9h		;8549
	xor a			;854c
	ld (0e40ch),a		;854d
	call L_8418		;8550
	ret			;8553
L_8554:
	call 0bc08h		;8554
	ld hl,0e40ch		;8557
	dec (hl)			;855a
	ret nz			;855b
	call L_8563		;855c
	call L_8418		;855f
	ret			;8562
L_8563:
	ld a,007h		;8563
	call 05709h		;8565
	call L_8A7F		;8568
	ld hl,00500h		;856b
	ld (0e5d0h),hl		;856e
	ld a,001h		;8571
	ld (0e40ch),a		;8573
	ret			;8576
L_8577:
	call 0bc08h		;8577
	ld hl,0e40ch		;857a
	dec (hl)			;857d
	ret nz			;857e
	ld (hl),05ah		;857f
	ld hl,0e5d1h		;8581
	dec (hl)			;8584
	jr z,L_8597		;8585
	dec hl			;8587
	ld a,(hl)			;8588
	inc (hl)			;8589
L_858A:
	ld hl,0b2e7h		;858a
	call 041e4h		;858d
	call 06064h		;8590
	call 041bfh		;8593
	ret			;8596
L_8597:
	call L_8A94		;8597
	call L_8AAE		;859a
	call L_8418		;859d
	ret			;85a0
L_85A1:
	call L_8ADF		;85a1
	ld a,(0e5d6h)		;85a4
	or a			;85a7
	ret nz			;85a8
	call L_8A6C		;85a9
	ld hl,06225h		;85ac
	call 0612ah		;85af
	call L_8418		;85b2
	ret			;85b5
L_85B6:
	call 06135h		;85b6
	ret nz			;85b9
	call L_8AA4		;85ba
	call L_8418		;85bd
	ret			;85c0
L_85C1:
	call L_8ADF		;85c1
	ld a,(0e5d6h)		;85c4
	or a			;85c7
	ret nz			;85c8
	call 0be34h		;85c9
	call 0bbe9h		;85cc
	ld a,03ch		;85cf
	ld (0e40ch),a		;85d1
	call L_8418		;85d4
	ret			;85d7
L_85D8:
	call 0bc12h		;85d8
	ld hl,0e40ch		;85db
	dec (hl)			;85de
	ret nz			;85df
	ld hl,00503h		;85e0
	ld (0e5d0h),hl		;85e3
	ld a,001h		;85e6
	ld (0e40ch),a		;85e8
	call L_8418		;85eb
	ret			;85ee
L_85EF:
	call 0bc12h		;85ef
	ld hl,0e40ch		;85f2
	dec (hl)			;85f5
	ret nz			;85f6
	ld (hl),05ah		;85f7
	call 05959h		;85f9
	ld hl,0e5d1h		;85fc
	dec (hl)			;85ff
	jr z,L_8609		;8600
	dec hl			;8602
	ld a,(hl)			;8603
	dec (hl)			;8604
	call L_858A		;8605
	ret			;8608
L_8609:
	xor a			;8609
	ld (0e40ch),a		;860a
	call L_8410		;860d
	ret			;8610
L_8611:
	push bc			;8611
	ld a,b			;8612
	cp 004h		;8613
	jr c,L_861D		;8615
	call 07320h		;8617
	call L_8CBF		;861a
L_861D:
	pop af			;861d
	call 04093h		;861e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8621..0x8645  (36 bytes)
DATA_8621:
	defb 045h,086h,056h,086h,070h,086h,08ch,086h,0a6h,086h,0b8h,086h,0cah,086h,0d9h,086h	; 8621  E.V.p...........
	defb 0e8h,086h,0fdh,086h,017h,087h,031h,087h,043h,087h,059h,087h,068h,087h,072h,087h	; 8631  ......1.C.Y.h.r.
	defb 07dh,087h,081h,087h	; 8641

; ======================================================================
; CODIGO 0x8645..0x87a9  (356 bytes)
; ======================================================================


L_8645:
	call 0bc12h		;8645
	ld hl,0e40ch		;8648
	dec (hl)			;864b
	ret nz			;864c
	ld a,078h		;864d
	ld (0e40ch),a		;864f
	call L_8418		;8652
	ret			;8655
L_8656:
	call 0bc12h		;8656
	ld hl,0e40ch		;8659
	dec (hl)			;865c
	ret nz			;865d
	call 05648h		;865e
	call 05959h		;8661
	ld a,096h		;8664
	ld (0e40ch),a		;8666
	call 058fdh		;8669
	call L_8418		;866c
	ret			;866f
L_8670:
	ld a,(0e40ch)		;8670
	and 00fh		;8673
	or 0e0h		;8675
	ld b,a			;8677
	call 04c40h		;8678
	ld hl,0e40ch		;867b
	dec (hl)			;867e
	ret nz			;867f
	ld b,0e0h		;8680
	call 04c40h		;8682
	call 0591ah		;8685
	call L_8418		;8688
	ret			;868b
L_868C:
	call 060dfh		;868c
	ld a,003h		;868f
	ld (0e540h),a		;8691
	ld hl,06108h		;8694
	call 060f9h		;8697
	call L_8CDD		;869a
	ld a,03ch		;869d
	ld (0e40ch),hl		;869f
	call L_8418		;86a2
	ret			;86a5
L_86A6:
	call L_8CEB		;86a6
	ld hl,0e40ch		;86a9
	dec (hl)			;86ac
	ret nz			;86ad
	ld hl,0622eh		;86ae
	call 0612ah		;86b1
	call L_8418		;86b4
	ret			;86b7
L_86B8:
	call L_8CEB		;86b8
	call 06135h		;86bb
	ret nz			;86be
	call 060cah		;86bf
	xor a			;86c2
	ld (0e40ch),a		;86c3
	call L_8418		;86c6
	ret			;86c9
L_86CA:
	call L_8CEB		;86ca
	ld hl,0e40ch		;86cd
	dec (hl)			;86d0
	ret nz			;86d1
	call 060c0h		;86d2
	call L_8418		;86d5
	ret			;86d8
L_86D9:
	call L_8D00		;86d9
	call L_8D3E		;86dc
	ld a,0b4h		;86df
	ld (0e40ch),a		;86e1
	call L_8418		;86e4
	ret			;86e7
L_86E8:
	call L_8D7D		;86e8
	ld hl,0e40ch		;86eb
	dec (hl)			;86ee
	ret nz			;86ef
	ld hl,06233h		;86f0
	call 0612ah		;86f3
	call 05951h		;86f6
	call L_8418		;86f9
	ret			;86fc
L_86FD:
	call L_8D7D		;86fd
	call 06135h		;8700
	ret nz			;8703
	call L_8D84		;8704
	call 060c0h		;8707
	call 060cah		;870a
	call L_8418		;870d
	call 0594dh		;8710
	call 057eah		;8713
	ret			;8716
L_8717:
	ld a,006h		;8717
	call 05709h		;8719
	call L_8DD9		;871c
	call L_8E21		;871f
	call L_8DF5		;8722
	call 05941h		;8725
	ld a,080h		;8728
	ld (0e40ch),a		;872a
	call L_8418		;872d
	ret			;8730
L_8731:
	ld hl,0e40ch		;8731
	dec (hl)			;8734
	ret nz			;8735
	ld hl,06238h		;8736
	call 0612ah		;8739
	call 05812h		;873c
	call L_8418		;873f
	ret			;8742
L_8743:
	call L_8DFA		;8743
	call 06135h		;8746
	ret nz			;8749
	call L_8E04		;874a
	call 060cah		;874d
	ld a,078h		;8750
	ld (0e40ch),a		;8752
	call L_8418		;8755
	ret			;8758
L_8759:
	ld hl,0e40ch		;8759
	dec (hl)			;875c
	ret nz			;875d
	call 060c0h		;875e
	call 05648h		;8761
	call L_8418		;8764
	ret			;8767
L_8768:
	ld hl,06241h		;8768
	call 0612ah		;876b
	call L_8418		;876e
	ret			;8771
L_8772:
	call 06135h		;8772
	ret nz			;8775
	call 060cah		;8776
	call L_8418		;8779
	ret			;877c
L_877D:
	call L_8418		;877d
	ret			;8780
L_8781:
	ld a,002h		;8781
	call 05709h		;8783
	ld a,(0e396h)		;8786
	or a			;8789
	jr nz,L_8793		;878a
	call L_8410		;878c
	call L_8410		;878f
	ret			;8792
L_8793:
	call L_8410		;8793
	ret			;8796
L_8797:
	push bc			;8797
	push bc			;8798
	ld a,b			;8799
	cp 006h		;879a
	call c,L_8CBF		;879c
	pop af			;879f
	cp 008h		;87a0
	call c,07320h		;87a2
	pop af			;87a5
	call 04093h		;87a6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x87a9..0x87cf  (38 bytes)
DATA_87A9:
	defb 0cfh,087h,0d9h,087h,0e8h,087h,00bh,088h,02bh,088h,03dh,088h,04bh,088h,052h,088h	; 87a9  ........+.=.K.R.
	defb 069h,088h,03dh,085h,054h,085h,077h,085h,075h,088h,089h,088h,0c8h,088h,0d4h,088h	; 87b9  i.=.T.w.u.......
	defb 0ech,088h,008h,089h,018h,089h	; 87c9

; ======================================================================
; CODIGO 0x87cf..0x88c4  (245 bytes)
; ======================================================================


L_87CF:
	ld hl,06246h		;87cf
	call 0612ah		;87d2
	call L_8418		;87d5
	ret			;87d8
L_87D9:
	call 06135h		;87d9
	ret nz			;87dc
	call 05951h		;87dd
	xor a			;87e0
	ld (0e40ch),a		;87e1
	call L_8418		;87e4
	ret			;87e7
L_87E8:
	ld hl,0e40ch		;87e8
	dec (hl)			;87eb
	ret nz			;87ec
	call 0594dh		;87ed
	call 0581ah		;87f0
	call 05730h		;87f3
	call L_8E4C		;87f6
	call L_8E63		;87f9
	ld hl,00000h		;87fc
	ld (0e5d0h),hl		;87ff
	ld a,008h		;8802
	ld (0e540h),a		;8804
	call L_8418		;8807
	ret			;880a
L_880B:
	ld hl,0e40ch		;880b
	dec (hl)			;880e
	ret nz			;880f
	call L_8E8E		;8810
	ld hl,0e5d0h		;8813
	inc (hl)			;8816
	ld a,(hl)			;8817
	cp 004h		;8818
	jr nc,L_8822		;881a
	ld a,01eh		;881c
	ld (0e40ch),a		;881e
	ret			;8821
L_8822:
	ld a,03ch		;8822
	ld (0e40ch),a		;8824
	call L_8418		;8827
	ret			;882a
L_882B:
	call L_8E83		;882b
	ld hl,0e40ch		;882e
	dec (hl)			;8831
	ret nz			;8832
	ld hl,0624fh		;8833
	call 0612ah		;8836
	call L_8418		;8839
	ret			;883c
L_883D:
	call L_8E83		;883d
	call 06135h		;8840
	ret nz			;8843
	call L_8E7C		;8844
	call L_8418		;8847
	ret			;884a
L_884B:
	call L_8C62		;884b
	call L_8418		;884e
	ret			;8851
L_8852:
	call L_8CA3		;8852
	ret nz			;8855
	ld hl,06102h		;8856
	call 060f9h		;8859
	xor a			;885c
	ld (0e54ch),a		;885d
	ld a,078h		;8860
	ld (0e40ch),a		;8862
	call L_8418		;8865
	ret			;8868
L_8869:
	ld hl,0e40ch		;8869
	dec (hl)			;886c
	ret nz			;886d
	call 05959h		;886e
	call L_8418		;8871
	ret			;8874
L_8875:
	call L_8ADF		;8875
	ld a,(0e5d6h)		;8878
	or a			;887b
	ret nz			;887c
	call L_8A6C		;887d
	call L_8418		;8880
	ld a,078h		;8883
	ld (0e40ch),a		;8885
	ret			;8888
L_8889:
	ld hl,0e40ch		;8889
	dec (hl)			;888c
	ret nz			;888d
	call 041e4h		;888e
	ld ix,0abbfh		;8891
	call 04cb1h		;8895
	ld ix,0abd9h		;8898
	call 04d17h		;889c
	ld hl,01300h		;889f
	ld bc,00160h		;88a2
	xor a			;88a5
	call 00056h		;88a6   ; BIOS FILVRM - Fills VRAM with value
	ld hl,0b41ch		;88a9
	ld de,0cc29h		;88ac
	ld bc,0050fh		;88af
	call 059a1h		;88b2
	call 041bfh		;88b5
	ld hl,088c4h		;88b8
	ld c,0f0h		;88bb
	call 07978h		;88bd
	call L_8418		;88c0
	ret			;88c3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x88c4..0x88c8  (4 bytes)
DATA_88C4:
	defb 001h,060h,02ch,000h	; 88c4

; ======================================================================
; CODIGO 0x88c8..0x88e8  (32 bytes)
; ======================================================================


L_88C8:
	call 07a3dh		;88c8
	ld a,(0e564h)		;88cb
	or a			;88ce
	ret nz			;88cf
	call L_8418		;88d0
	ret			;88d3
L_88D4:
	ld de,01284h		;88d4
	call 05737h		;88d7
	ret c			;88da
	call 05951h		;88db
	ld hl,088e8h		;88de
	call 078a2h		;88e1
	call L_8418		;88e4
	ret			;88e7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x88e8..0x88ec  (4 bytes)
DATA_88E8:
	defb 007h,001h,0ffh,000h	; 88e8

; ======================================================================
; CODIGO 0x88ec..0x8921  (53 bytes)
; ======================================================================


L_88EC:
	call 078ach		;88ec
	ld a,(0e560h)		;88ef
	or a			;88f2
	ret nz			;88f3
	call 04aa9h		;88f4
	call 05959h		;88f7
	call 05985h		;88fa
	call 05648h		;88fd
	xor a			;8900
	ld (0e40ch),a		;8901
	call L_8418		;8904
	ret			;8907
L_8908:
	ld hl,0e40ch		;8908
	dec (hl)			;890b
	ret nz			;890c
	call 0594dh		;890d
	call 057eah		;8910
	xor a			;8913
	call L_8418		;8914
	ret			;8917
L_8918:
	xor a			;8918
	ld (0e328h),a		;8919
	ret			;891c
L_891D:
	ld a,b			;891d
	call 04093h		;891e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8921..0x893f  (30 bytes)
DATA_8921:
	defb 03fh,089h,04fh,089h,06ah,089h,07ch,089h,097h,089h,0a3h,089h,0b8h,089h,0cch,089h	; 8921  ?.O.j.|.........
	defb 0ddh,089h,0edh,089h,017h,08ah,02ch,08ah,038h,08ah,04ah,08ah,05fh,08ah	; 8931  ......,.8.J._.

; ======================================================================
; CODIGO 0x893f..0x89b4  (117 bytes)
; ======================================================================


L_893F:
	call L_8CBF		;893f
	call 07320h		;8942
	ld hl,06258h		;8945
	call 0612ah		;8948
	call L_8418		;894b
	ret			;894e
L_894F:
	call L_8CBF		;894f
	call 07320h		;8952
	call 06135h		;8955
	ret nz			;8958
	call 05959h		;8959
	call 05648h		;895c
	call 05951h		;895f
	xor a			;8962
	ld (0e40ch),a		;8963
	call L_8418		;8966
	ret			;8969
L_896A:
	ld hl,0e40ch		;896a
	dec (hl)			;896d
	ret nz			;896e
	call 0594dh		;896f
	call 05816h		;8972
	call 05730h		;8975
	call L_8418		;8978
	ret			;897b
L_897C:
	ld hl,06265h		;897c
	call 0612ah		;897f
	ld hl,0c400h		;8982
	ld c,0f0h		;8985
	call 05636h		;8987
	ld a,012h		;898a
	jr z,L_8990		;898c
	ld a,032h		;898e
L_8990:
	call 0796bh		;8990
	call L_8418		;8993
	ret			;8996
L_8997:
	call 079cfh		;8997
	ld a,(0e564h)		;899a
	or a			;899d
	ret nz			;899e
	call L_8418		;899f
	ret			;89a2
L_89A3:
	ld de,00800h		;89a3
	call 05737h		;89a6
	ret c			;89a9
	ld hl,089b4h		;89aa
	call 078a2h		;89ad
	call L_8418		;89b0
	ret			;89b3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x89b4..0x89b8  (4 bytes)
DATA_89B4:
	defb 007h,001h,0ffh,000h	; 89b4

; ======================================================================
; CODIGO 0x89b8..0x8b50  (408 bytes)
; ======================================================================


L_89B8:
	call 078ach		;89b8
	ret nz			;89bb
	call 04aa9h		;89bc
	call 05648h		;89bf
	call 05959h		;89c2
	call 05985h		;89c5
	call L_8418		;89c8
	ret			;89cb
L_89CC:
	ld de,00870h		;89cc
	call 05737h		;89cf
	ret c			;89d2
	call 05730h		;89d3
	call 05951h		;89d6
	call L_8418		;89d9
	ret			;89dc
L_89DD:
	ld de,00172h		;89dd
	call 05737h		;89e0
	ret c			;89e3
	call 0594dh		;89e4
	call 057eah		;89e7
	jp L_8418		;89ea
L_89ED:
	ld a,006h		;89ed
	call 05709h		;89ef
	call L_8E21		;89f2
	call L_8DF5		;89f5
	call 05985h		;89f8
	call 05959h		;89fb
	call 041e4h		;89fe
	ld de,0bbf3h		;8a01
	ld hl,01e80h		;8a04
	call 04b3ch		;8a07
	ld hl,0b8b7h		;8a0a
	call 05ed4h		;8a0d
	call 041bfh		;8a10
	call L_8418		;8a13
	ret			;8a16
L_8A17:
	call 041e4h		;8a17
	call 05eech		;8a1a
	call 041bfh		;8a1d
	ld a,(0e518h)		;8a20
	or a			;8a23
	ret nz			;8a24
	call 057eah		;8a25
	call L_8418		;8a28
	ret			;8a2b
L_8A2C:
	call 05941h		;8a2c
	ld a,080h		;8a2f
	ld (0e40ch),a		;8a31
	call L_8418		;8a34
	ret			;8a37
L_8A38:
	ld hl,0e40ch		;8a38
	dec (hl)			;8a3b
	ret nz			;8a3c
	call 057eah		;8a3d
	ld hl,05ecdh		;8a40
	call 047b3h		;8a43
	call L_8418		;8a46
	ret			;8a49
L_8A4A:
	call 047bch		;8a4a
	ld a,(0e518h)		;8a4d
	or a			;8a50
	ret nz			;8a51
	call 05648h		;8a52
	ld hl,000b4h		;8a55
	ld (0e40ch),hl		;8a58
	call L_8418		;8a5b
	ret			;8a5e
L_8A5F:
	ld hl,(0e40ch)		;8a5f
	dec hl			;8a62
	ld (0e40ch),hl		;8a63
	ld a,l			;8a66
	or h			;8a67
	ret nz			;8a68
	jp L_8918		;8a69
L_8A6C:
	ld hl,0ef00h		;8a6c
	ld de,00004h		;8a6f
	ld b,020h		;8a72
L_8A74:
	ld a,(hl)			;8a74
	cp 07fh		;8a75
	jr c,L_8A7B		;8a77
	ld (hl),0e0h		;8a79
L_8A7B:
	add hl,de			;8a7b
	djnz L_8A74		;8a7c
	ret			;8a7e
L_8A7F:
	call 041e4h		;8a7f
	ld ix,0ab9ah		;8a82
	call 04cb1h		;8a86
	ld ix,0abcch		;8a89
	call 04d17h		;8a8d
	call 041bfh		;8a90
	ret			;8a93
L_8A94:
	call 041e4h		;8a94
	ld de,0bc4ah		;8a97
	ld hl,01800h		;8a9a
	call 04b3ch		;8a9d
	call 041bfh		;8aa0
	ret			;8aa3
L_8AA4:
	ld hl,04200h		;8aa4
	ld de,04e00h		;8aa7
	ld a,002h		;8aaa
	jr L_8AB6		;8aac
L_8AAE:
	ld hl,0bf00h		;8aae
	ld de,01900h		;8ab1
	ld a,001h		;8ab4
L_8AB6:
	ld (0e5d6h),a		;8ab6
	xor a			;8ab9
	ld (0e5d8h),a		;8aba
	ld (0e5dch),hl		;8abd
	ld (0e5deh),de		;8ac0
	call L_8AD1		;8ac4
	call L_8BF1		;8ac7
	call L_8B90		;8aca
	call L_8B1C		;8acd
	ret			;8ad0
L_8AD1:
	ld hl,0ef00h		;8ad1
	ld de,0ef01h		;8ad4
	ld bc,0000bh		;8ad7
	ld (hl),0e0h		;8ada
	ldir		;8adc
	ret			;8ade
L_8ADF:
	call L_8B05		;8adf
	call L_8B1C		;8ae2
	ld hl,0e5d7h		;8ae5
	dec (hl)			;8ae8
	ret nz			;8ae9
	call L_8AD1		;8aea
	ld hl,0e5d8h		;8aed
	inc (hl)			;8af0
	ld a,(hl)			;8af1
	cp 007h		;8af2
	jr nc,L_8B00		;8af4
	call L_8BF1		;8af6
	call L_8B90		;8af9
	call L_8B1C		;8afc
	ret			;8aff
L_8B00:
	xor a			;8b00
	ld (0e5d6h),a		;8b01
	ret			;8b04
L_8B05:
	ld hl,(0e5dch)		;8b05
	ld de,(0e5e2h)		;8b08
	add hl,de			;8b0c
	ld (0e5dch),hl		;8b0d
	ld hl,(0e5deh)		;8b10
	ld de,(0e5e4h)		;8b13
	add hl,de			;8b17
	ld (0e5deh),hl		;8b18
	ret			;8b1b
L_8B1C:
	ld a,(0e5ddh)		;8b1c
	ld b,a			;8b1f
	ld a,(0e5dfh)		;8b20
	ld c,a			;8b23
	ld hl,08b70h		;8b24
	ld a,(0e5d6h)		;8b27
	dec a			;8b2a
	jr z,L_8B30		;8b2b
	ld hl,08b50h		;8b2d
L_8B30:
	ld a,(0e5d8h)		;8b30
	call 04a5ah		;8b33
	ld a,(hl)			;8b36
	exx			;8b37
	ld b,a			;8b38
	exx			;8b39
	ld de,0ef00h		;8b3a
	inc hl			;8b3d
L_8B3E:
	ld a,(hl)			;8b3e
	add a,b			;8b3f
	ld (de),a			;8b40
	inc hl			;8b41
	inc de			;8b42
	ld a,(hl)			;8b43
	add a,c			;8b44
	ld (de),a			;8b45
	inc hl			;8b46
	inc de			;8b47
	inc de			;8b48
	inc de			;8b49
	exx			;8b4a
	dec b			;8b4b
	exx			;8b4c
	jr nz,L_8B3E		;8b4d
	ret			;8b4f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8b50..0x8b90  (64 bytes)
DATA_8B50:
	defb 05eh,08bh,05eh,08bh,061h,08bh,061h,08bh,064h,08bh,064h,08bh,069h,08bh,001h,0ffh	; 8b50  ^.^.a.a.d.d.i...
	defb 0feh,001h,0feh,0fdh,002h,0fbh,0fah,0fbh,0fah,003h,0f5h,0f2h,0f5h,0f4h,0f7h,0fch	; 8b60  ................
	defb 07eh,08bh,07eh,08bh,085h,08bh,085h,08bh,08ah,08bh,08ah,08bh,08dh,08bh,003h,0fbh	; 8b70  ~.~.............
	defb 0efh,0fbh,0f8h,0fbh,0ffh,002h,0f5h,0f7h,0f5h,0f7h,001h,0f4h,0f5h,001h,0f2h,0f3h	; 8b80  ................

; ======================================================================
; CODIGO 0x8b90..0x8bb1  (33 bytes)
; ======================================================================


L_8B90:
	ld hl,08bb1h		;8b90
	ld a,(0e5d6h)		;8b93
	dec a			;8b96
	jr z,L_8B9C		;8b97
	ld hl,08bd1h		;8b99
L_8B9C:
	ld a,(0e5d8h)		;8b9c
	call 04a5ah		;8b9f
	ld a,(hl)			;8ba2
	inc hl			;8ba3
	ld de,0ef02h		;8ba4
L_8BA7:
	ldi		;8ba7
	ldi		;8ba9
	inc de			;8bab
	inc de			;8bac
	dec a			;8bad
	jr nz,L_8BA7		;8bae
	ret			;8bb0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8bb1..0x8bf1  (64 bytes)
DATA_8BB1:
	defb 0bfh,08bh,0bfh,08bh,0c6h,08bh,0c6h,08bh,0cbh,08bh,0cbh,08bh,0ceh,08bh,003h,000h	; 8bb1  ................
	defb 00fh,008h,005h,004h,00fh,002h,00ch,00fh,010h,005h,001h,014h,00fh,001h,018h,007h	; 8bc1  ................
	defb 0dfh,08bh,0dfh,08bh,0e2h,08bh,0e2h,08bh,0e5h,08bh,0e5h,08bh,0eah,08bh,001h,01ch	; 8bd1  ................
	defb 007h,001h,020h,00fh,002h,024h,00fh,028h,005h,003h,02ch,00fh,034h,005h,030h,00fh	; 8be1  .. ..$.(..,.4.0.

; ======================================================================
; CODIGO 0x8bf1..0x8c1c  (43 bytes)
; ======================================================================


L_8BF1:
	ld hl,08c1ch		;8bf1
	ld a,(0e5d6h)		;8bf4
	dec a			;8bf7
	jr z,L_8BFD		;8bf8
	ld hl,08c3fh		;8bfa
L_8BFD:
	ld a,(0e5d8h)		;8bfd
	ld b,a			;8c00
	add a,a			;8c01
	add a,a			;8c02
	add a,b			;8c03
	call 04089h		;8c04
	ld a,(hl)			;8c07
	ld (0e5d7h),a		;8c08
	inc hl			;8c0b
	ld e,(hl)			;8c0c
	inc hl			;8c0d
	ld d,(hl)			;8c0e
	ld (0e5e2h),de		;8c0f
	inc hl			;8c13
	ld e,(hl)			;8c14
	inc hl			;8c15
	ld d,(hl)			;8c16
	ld (0e5e4h),de		;8c17
	ret			;8c1b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8c1c..0x8c62  (70 bytes)
DATA_8C1C:
	defb 02dh,03fh,0ffh,0c7h,001h,01eh,05eh,0ffh,0e6h,000h,01eh,078h,0ffh,0b3h,000h,01eh	; 8c1c  -?....^....x....
	defb 06fh,0ffh,091h,000h,01eh,067h,0ffh,04ch,000h,01eh,092h,0ffh,011h,000h,01eh,0bch	; 8c2c  o....g.L........
	defb 0ffh,0deh,0ffh,01eh,044h,000h,0deh,0ffh,01eh,044h,000h,0efh,0ffh,01eh,03bh,000h	; 8c3c  ....D....D......
	defb 000h,000h,01eh,044h,000h,008h,000h,01eh,0a2h,000h,077h,000h,01eh,0bbh,000h,011h	; 8c4c  ...D......w.....
	defb 001h,04bh,0cch,000h,099h,001h	; 8c5c

; ======================================================================
; CODIGO 0x8c62..0x8d36  (212 bytes)
; ======================================================================


L_8C62:
	ld a,(0e54fh)		;8c62
	ld h,a			;8c65
	ld a,(0e550h)		;8c66
	ld l,a			;8c69
	ld de,00608h		;8c6a
	rst 20h			;8c6d
	jr z,L_8C74		;8c6e
	jr c,L_8C8B		;8c70
	jr L_8C8F		;8c72
L_8C74:
	ld a,(0e551h)		;8c74
	ld h,a			;8c77
	ld a,(0e552h)		;8c78
	ld l,a			;8c7b
	ld de,00009h		;8c7c
	rst 20h			;8c7f
	jr z,L_8C86		;8c80
	jr c,L_8C8B		;8c82
	jr nc,L_8C8F		;8c84
L_8C86:
	dec de			;8c86
	ld (0e54fh),de		;8c87
L_8C8B:
	ld a,001h		;8c8b
	jr L_8C91		;8c8d
L_8C8F:
	ld a,002h		;8c8f
L_8C91:
	ld (0e54ch),a		;8c91
	ld hl,00001h		;8c94
	ld (0e54dh),hl		;8c97
	ret			;8c9a
L_8C9B:
	ld de,00606h		;8c9b
	ld bc,00404h		;8c9e
	jr L_8CA9		;8ca1
L_8CA3:
	ld de,00608h		;8ca3
	ld bc,00009h		;8ca6
L_8CA9:
	ld a,(0e54fh)		;8ca9
	ld h,a			;8cac
	ld a,(0e550h)		;8cad
	ld l,a			;8cb0
	rst 20h			;8cb1
	ret nz			;8cb2
	ld a,(0e551h)		;8cb3
	ld h,a			;8cb6
	ld a,(0e552h)		;8cb7
	ld l,a			;8cba
	ld d,b			;8cbb
	ld e,c			;8cbc
	rst 20h			;8cbd
	ret			;8cbe
L_8CBF:
	ld a,(0e303h)		;8cbf
	and 003h		;8cc2
	ret nz			;8cc4
	ld hl,0e54ch		;8cc5
	ld a,(hl)			;8cc8
	inc a			;8cc9
	cp 003h		;8cca
	jr c,L_8CD0		;8ccc
	ld a,001h		;8cce
L_8CD0:
	ld (hl),a			;8cd0
	ld a,r		;8cd1
	and 003h		;8cd3
	ld l,a			;8cd5
	and 001h		;8cd6
	ld h,a			;8cd8
	ld (0e54dh),hl		;8cd9
	ret			;8cdc
L_8CDD:
	call 041e4h		;8cdd
	ld ix,0aaceh		;8ce0
	call 04cb1h		;8ce4
	call 041bfh		;8ce7
	ret			;8cea
L_8CEB:
	ld a,(0e303h)		;8ceb
	bit 3,a		;8cee
	jp z,060c0h		;8cf0
	call 041ach		;8cf3
	ld hl,0b8f6h		;8cf6
	call 06067h		;8cf9
	call 041bfh		;8cfc
	ret			;8cff
L_8D00:
	call 041f7h		;8d00
	call 041ach		;8d03
	ld a,(0e380h)		;8d06
	ld hl,08d36h		;8d09
	call 04a5ah		;8d0c
	ex de,hl			;8d0f
	push de			;8d10
	ld hl,02488h		;8d11
	call 04b3ch		;8d14
	pop de			;8d17
	ld hl,02c88h		;8d18
	call 04b3ch		;8d1b
	ld a,0f0h		;8d1e
	ld hl,00488h		;8d20
	ld bc,00378h		;8d23
	call 00056h		;8d26   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00c88h		;8d29
	ld bc,00378h		;8d2c
	call 00056h		;8d2f   ; BIOS FILVRM - Fills VRAM with value
	call 04213h		;8d32
	ret			;8d35

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8d36..0x8d3e  (8 bytes)
DATA_8D36:
	defb 046h,0b4h,086h,0b5h,099h,0b6h,0a6h,0b7h	; 8d36  F.......

; ======================================================================
; CODIGO 0x8d3e..0x8d5d  (31 bytes)
; ======================================================================


L_8D3E:
	ld hl,0a23eh		;8d3e
	ld de,0e800h		;8d41
	call 055cdh		;8d44
	call L_8D65		;8d47
	ld a,(0e380h)		;8d4a
	ld hl,08d5dh		;8d4d
	call 04a5ah		;8d50
	ld de,0caa9h		;8d53
	ld bc,0060eh		;8d56
	call 059a1h		;8d59
	ret			;8d5c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8d5d..0x8d65  (8 bytes)
DATA_8D5D:
	defb 000h,0e8h,054h,0e8h,0a8h,0e8h,0fch,0e8h	; 8d5d  ..T.....

; ======================================================================
; CODIGO 0x8d65..0x8da9  (68 bytes)
; ======================================================================


L_8D65:
	ld hl,0e800h		;8d65
	ld bc,00150h		;8d68
L_8D6B:
	ld a,(hl)			;8d6b
	or a			;8d6c
	jr z,L_8D76		;8d6d
	cp 081h		;8d6f
	jr nc,L_8D76		;8d71
	add a,080h		;8d73
	ld (hl),a			;8d75
L_8D76:
	inc hl			;8d76
	dec bc			;8d77
	ld a,b			;8d78
	or c			;8d79
	jr nz,L_8D6B		;8d7a
	ret			;8d7c
L_8D7D:
	ld a,(0e303h)		;8d7d
	bit 2,a		;8d80
	jr nz,L_8D92		;8d82
L_8D84:
	ld hl,0ef40h		;8d84
	ld de,0ef41h		;8d87
	ld bc,0000bh		;8d8a
	ld (hl),0e0h		;8d8d
	ldir		;8d8f
	ret			;8d91
L_8D92:
	ld a,(0e380h)		;8d92
	add a,a			;8d95
	add a,a			;8d96
	ld b,a			;8d97
	add a,a			;8d98
	add a,b			;8d99
	ld hl,08da9h		;8d9a
	call 04089h		;8d9d
	ld de,0ef40h		;8da0
	ld bc,0000ch		;8da3
	ldir		;8da6
	ret			;8da8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8da9..0x8dd9  (48 bytes)
DATA_8DA9:
	defb 034h,060h,0c0h,008h,03fh,050h,0c0h,008h,046h,07fh,0c0h,008h,02eh,060h,0c0h,008h	; 8da9  4`..?P..F....`..
	defb 037h,07fh,0c0h,008h,046h,068h,0c0h,008h,03eh,058h,0c0h,008h,046h,080h,0c0h,008h	; 8db9  7...Fh..>X..F...
	defb 04eh,050h,0c0h,008h,02eh,058h,0c0h,008h,03fh,090h,0c0h,008h,047h,060h,0c0h,008h	; 8dc9  NP...X..?...G`..

; ======================================================================
; CODIGO 0x8dd9..0x8e11  (56 bytes)
; ======================================================================


L_8DD9:
	call 041e4h		;8dd9
	ld ix,0b8bbh		;8ddc
	call 04cb1h		;8de0
	inc ix		;8de3
	call 04d17h		;8de5
	ld de,0bbf3h		;8de8
	ld hl,01e80h		;8deb
	call 04b3ch		;8dee
	call 041bfh		;8df1
	ret			;8df4
L_8DF5:
	ld hl,08e19h		;8df5
	jr L_8E07		;8df8
L_8DFA:
	ld a,(0e303h)		;8dfa
	bit 3,a		;8dfd
	ld hl,08e19h		;8dff
	jr z,L_8E07		;8e02
L_8E04:
	ld hl,08e11h		;8e04
L_8E07:
	ld de,0cb6eh		;8e07
	ld bc,00204h		;8e0a
	call 059a1h		;8e0d
	ret			;8e10

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8e11..0x8e21  (16 bytes)
DATA_8E11:
	defb 099h,090h,091h,0b5h,0abh,092h,093h,0c7h,09ah,094h,095h,0b6h,0abh,096h,097h,0c7h	; 8e11  ................

; ======================================================================
; CODIGO 0x8e21..0x8e48  (39 bytes)
; ======================================================================


L_8E21:
	call 041e4h		;8e21
	ld hl,0bc13h		;8e24
	ld de,0e800h		;8e27
	call 055cdh		;8e2a
	ld bc,00810h		;8e2d
	ld hl,0e800h		;8e30
	ld de,0caa8h		;8e33
	call 059a1h		;8e36
	call 041bfh		;8e39
	ld hl,08e48h		;8e3c
	ld de,0ef40h		;8e3f
	ld bc,00004h		;8e42
	ldir		;8e45
	ret			;8e47

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8e48..0x8e4c  (4 bytes)
DATA_8E48:
	defb 02fh,078h,0d0h,008h	; 8e48

; ======================================================================
; CODIGO 0x8e4c..0x8e70  (36 bytes)
; ======================================================================


L_8E4C:
	call 041e4h		;8e4c
	ld ix,0bd4dh		;8e4f
	call 04cb1h		;8e53
	ld de,0bdcah		;8e56
	ld hl,01de0h		;8e59
	call 04b3ch		;8e5c
	call 041bfh		;8e5f
	ret			;8e62
L_8E63:
	ld hl,08e70h		;8e63
	ld de,0caceh		;8e66
	ld bc,00304h		;8e69
	call 059a1h		;8e6c
	ret			;8e6f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8e70..0x8e7c  (12 bytes)
DATA_8E70:
	defb 063h,000h,000h,000h,064h,065h,066h,067h,08bh,08ch,08dh,08eh	; 8e70  c...defg....

; ======================================================================
; CODIGO 0x8e7c..0x8eb2  (54 bytes)
; ======================================================================


L_8E7C:
	call L_8EA4		;8e7c
	call 060c0h		;8e7f
	ret			;8e82
L_8E83:
	ld a,(0e303h)		;8e83
	rra			;8e86
	and 001h		;8e87
	add a,002h		;8e89
	ld (0e5d0h),a		;8e8b
L_8E8E:
	call L_8EA4		;8e8e
	ld a,(0e5d0h)		;8e91
	ld hl,08eb2h		;8e94
	call 04a5ah		;8e97
	ld c,(hl)			;8e9a
	ld b,000h		;8e9b
	inc hl			;8e9d
	ld de,0ef40h		;8e9e
	ldir		;8ea1
	ret			;8ea3
L_8EA4:
	ld hl,0ef40h		;8ea4
	ld de,0ef41h		;8ea7
	ld bc,00017h		;8eaa
	ld (hl),0e0h		;8ead
	ldir		;8eaf
	ret			;8eb1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8eb2..0xa000  (4430 bytes)
DATA_8EB2:
	defb 0bah,08eh,0bfh,08eh,0d0h,08eh,0e9h,08eh,004h,037h,07bh,0bch,003h,010h,02fh,070h	; 8eb2  .........7{.../p
	defb 0c0h,003h,02fh,080h,0c4h,003h,03fh,070h,0c8h,003h,03fh,080h,0cch,003h,018h,02fh	; 8ec2  ../...?p..?..../
	defb 06dh,0d0h,003h,02fh,07dh,0d4h,003h,02fh,08dh,0d8h,003h,03fh,06dh,0dch,003h,03fh	; 8ed2  m../}../...?m..?
	defb 07dh,0e0h,003h,03fh,08dh,0e4h,003h,018h,02fh,06bh,0e8h,00ch,02fh,07bh,0ech,00ch	; 8ee2  }..?..../k../{..
	defb 02fh,08bh,0f0h,00ch,03fh,06bh,0f4h,00ch,03fh,07bh,0f8h,00ch,03fh,08bh,0fch,00ch	; 8ef2  /...?k..?{..?...
	defb 014h,090h,029h,090h,040h,090h,055h,090h,060h,090h,07dh,090h,0b2h,090h,0cbh,090h	; 8f02  ..).@.U.`.}.....
	defb 00ah,091h,030h,091h,04ah,091h,072h,091h,092h,091h,0cdh,091h,0e0h,091h,0f3h,091h	; 8f12  ..0.J.r.........
	defb 006h,092h,01ah,092h,045h,092h,062h,092h,085h,092h,0a3h,092h,0b7h,092h,0c9h,092h	; 8f22  ....E.b.........
	defb 0e7h,092h,0fbh,092h,019h,093h,03dh,093h,04fh,093h,060h,093h,07ch,093h,08dh,093h	; 8f32  ......=.O.`.|...
	defb 09dh,093h,0b2h,093h,0c7h,093h,0f1h,093h,008h,094h,01bh,094h,042h,094h,06fh,094h	; 8f42  ............B.o.
	defb 082h,094h,0a2h,094h,0b5h,094h,0c1h,094h,0d1h,094h,0fbh,094h,024h,095h,033h,095h	; 8f52  ............$.3.
	defb 07dh,095h,053h,096h,095h,096h,0bfh,096h,02ch,097h,024h,093h,014h,090h,014h,090h	; 8f62  }.S.....,.$.....
	defb 014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h	; 8f72  ................
	defb 073h,097h,096h,097h,0bch,097h,0d8h,097h,0e8h,097h,006h,098h,02dh,098h,044h,098h	; 8f82  s...........-.D.
	defb 071h,098h,090h,098h,0a2h,098h,0c4h,098h,0e1h,098h,005h,099h,016h,099h,028h,099h	; 8f92  q.............(.
	defb 03ah,099h,060h,099h,097h,099h,0beh,099h,0f4h,099h,01dh,09ah,03bh,09ah,052h,09ah	; 8fa2  :.`...........R.
	defb 07ch,09ah,0a1h,09ah,0bfh,09ah,0feh,09ah,016h,09bh,02eh,09bh,051h,09bh,06ch,09bh	; 8fb2  |...........Q.l.
	defb 084h,09bh,099h,09bh,0b4h,09bh,0d8h,09bh,001h,09ch,023h,09ch,044h,09ch,071h,09ch	; 8fc2  ..........#.D.q.
	defb 083h,09ch,0abh,09ch,0bfh,09ch,0cbh,09ch,0e0h,09ch,00dh,09dh,038h,09dh,043h,09dh	; 8fd2  ............8.C.
	defb 08eh,09eh,04bh,09fh,08eh,09fh,0c4h,09fh,019h,0a0h,0d4h,09ah,014h,090h,014h,090h	; 8fe2  ..K.............
	defb 014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h	; 8ff2  ................
	defb 0a7h,09dh,0bah,09dh,0e1h,09dh,0f0h,09dh,0fch,09dh,00ch,09eh,037h,09eh,04fh,09eh	; 9002  ............7.O.
	defb 076h,09eh,068h,0cch,0d0h,000h,02ch,08ah,06dh,076h,07fh,067h,083h,0b4h,068h,047h	; 9012  v.h...,.mv.g..hG
	defb 006h,04ah,058h,01ch,061h,03ch,02dh,068h,0cch,0d1h,064h,02ch,001h,050h,0b3h,0a4h	; 9022  .JX.a<-h..d,.P..
	defb 049h,050h,0cah,014h,0f9h,043h,0c9h,047h,042h,045h,04bh,03ch,000h,02dh,068h,0cch	; 9032  IP...C.GBEK<.-h.
	defb 0d0h,000h,02ch,0dah,0aah,045h,048h,0d3h,0a4h,09ah,0a8h,006h,056h,03fh,042h,045h	; 9042  ..,..EH.....V?BE
	defb 04bh,03ch,02dh,06dh,0cch,0c7h,000h,02ch,0bfh,0e3h,048h,025h,025h,025h,065h,0cch	; 9052  K<-m...,..H%%%e.
	defb 0d7h,010h,002h,007h,006h,009h,0e4h,028h,085h,07eh,008h,088h,093h,069h,071h,028h	; 9062  .......(.~...iq(
	defb 007h,007h,005h,000h,005h,030h,001h,002h,061h,03ch,02dh,047h,0cch,051h,000h,02ch	; 9072  .....0..a<-G.Q.,
	defb 08ah,06dh,076h,07fh,067h,083h,047h,0c8h,051h,052h,048h,028h,053h,0d3h,004h,0c1h	; 9082  .mv.g.G.QRH(S...
	defb 000h,047h,084h,0cch,0d8h,000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,000h,077h	; 9092  .G......h}q%./.w
	defb 083h,047h,040h,047h,07eh,02fh,087h,000h,002h,009h,0dfh,096h,0c2h,061h,03ch,02dh	; 90a2  .G@G~/.......a<-
	defb 066h,0cch,0d3h,041h,02ch,04dh,047h,04bh,04bh,061h,048h,029h,025h,0c5h,058h,016h	; 90b2  f..A,MGKKaH)%.X.
	defb 064h,042h,03fh,04bh,045h,000h,04bh,03ch,02dh,044h,0cch,058h,000h,02ch,082h,02fh	; 90c2  dB?KE.K<-D.X.,./
	defb 090h,0ffh,045h,0abh,0afh,005h,043h,047h,0e6h,0c4h,058h,044h,052h,049h,040h,04dh	; 90d2  ..E...CG..XDRI@M
	defb 03fh,053h,04bh,03dh,057h,058h,028h,083h,0cch,0dah,0a0h,04eh,064h,04ah,047h,08bh	; 90e2  ?SK=WX(....NdJG.
	defb 07eh,094h,06dh,000h,07bh,02fh,080h,056h,0d2h,064h,042h,073h,002h,068h,07dh,082h	; 90f2  ~.m.{/.V.dBs.h}.
	defb 02fh,090h,056h,03fh,04bh,000h,03ch,02dh,04bh,0cch,04ah,000h,02ch,073h,068h,07dh	; 9102  /.V?K.<-K.J.,sh}
	defb 082h,02fh,090h,0deh,080h,026h,028h,088h,0cch,0d1h,002h,085h,07eh,088h,093h,069h	; 9112  ./...&(.....~..i
	defb 071h,028h,007h,000h,007h,005h,005h,030h,001h,008h,061h,03ch,000h,02dh,067h,0cch	; 9122  q(.....0..a<.-g.
	defb 0d4h,000h,02ch,08ah,06dh,076h,07fh,067h,083h,04fh,026h,051h,007h,049h,0b7h,04dh	; 9132  ..,.mv.g.O&Q.I.M
	defb 048h,04bh,053h,040h,04bh,03fh,03fh,02dh,048h,0cch,050h,048h,02ch,04dh,047h,007h	; 9142  HKS@K??-H.PH,MG.
	defb 049h,0b7h,047h,0a4h,000h,045h,08ah,06dh,076h,07fh,067h,083h,048h,089h,0cch,0ceh	; 9152  I.G..E.mv.g.H...
	defb 010h,006h,041h,047h,02bh,0e5h,056h,09eh,0edh,0a0h,03fh,042h,045h,04bh,03ch,02dh	; 9162  ..AG+.V...?BEK<-
	defb 063h,0cch,0d9h,000h,02ch,086h,091h,068h,07dh,071h,048h,062h,0dch,04dh,049h,045h	; 9172  c...,..h}qHb.MIE
	defb 020h,017h,04eh,053h,042h,080h,045h,052h,043h,0d0h,055h,053h,04bh,03ch,000h,02dh	; 9182   .NSB.ERC.USK<.-
	defb 042h,0cch,05ch,000h,02ch,08ah,06dh,076h,07fh,067h,083h,047h,000h,071h,08eh,02fh	; 9192  B.\.,.mv.g.G.q./
	defb 071h,090h,07eh,083h,077h,024h,045h,0dbh,01bh,058h,09bh,04eh,053h,042h,080h,045h	; 91a2  q.~.w$E..X.NSB.E
	defb 04bh,03ch,029h,087h,0cch,0d2h,001h,049h,043h,041h,049h,043h,041h,0bbh,027h,038h	; 91b2  K<)....ICAICA.'8
	defb 03ch,052h,03fh,049h,044h,051h,04bh,03dh,000h,057h,02dh,069h,0cch,0ceh,041h,02ch	; 91c2  <R?IDQK=.W-i..A,
	defb 02dh,047h,07ch,094h,090h,056h,00ch,050h,0bah,03fh,04bh,03fh,03fh,02dh,069h,0cch	; 91d2  -G|..V.P.?K??-i.
	defb 0ceh,041h,02ch,02eh,047h,07ch,094h,090h,056h,00ch,050h,0bah,03fh,04bh,03fh,03fh	; 91e2  .A,.G|..V.P.?K??
	defb 02dh,069h,0cch,0ceh,041h,02ch,02fh,047h,07ch,094h,090h,056h,00ch,050h,0bah,03fh	; 91f2  -i..A,/G|..V.P.?
	defb 04bh,03fh,03fh,02dh,069h,0cch,0cfh,003h,02ch,07ch,094h,090h,048h,004h,030h,031h	; 9202  K??-i...,|..H.01
	defb 090h,044h,052h,04fh,046h,061h,03ch,02dh,046h,0cch,054h,000h,02ch,004h,041h,047h	; 9212  .DROFa<-F.T.,.AG
	defb 07ch,094h,090h,048h,09ah,03eh,047h,004h,032h,033h,047h,02dh,025h,0a0h,02eh,025h	; 9222  |..H.>G.23G-%..%
	defb 02fh,045h,08ah,0cch,0cch,0a2h,048h,047h,048h,047h,0f0h,09dh,03fh,042h,080h,045h	; 9232  /E....HGHG..?B.E
	defb 04bh,03ch,02dh,064h,0cch,0d7h,000h,02ch,0e2h,042h,058h,03eh,054h,055h,044h,080h	; 9242  K<-d...,.BX>TUD.
	defb 045h,043h,0a5h,0e2h,044h,07ch,094h,090h,000h,045h,044h,051h,04bh,03dh,057h,02dh	; 9252  EC..D|...EDQK=W-
	defb 047h,0cch,051h,000h,02ch,004h,041h,047h,07ch,094h,090h,058h,00ah,0e2h,042h,03eh	; 9262  G.Q.,.AG|..X..B>
	defb 054h,045h,04bh,03fh,03fh,000h,029h,08ch,0cch,0c8h,0b8h,036h,0e1h,034h,035h,03fh	; 9272  TEK??.)....6.45?
	defb 04bh,03ch,02dh,064h,0cch,0d8h,041h,02ch,038h,058h,0e5h,0b5h,028h,0ffh,03ah,06bh	; 9282  K<-d..A,8X..(.:k
	defb 058h,03bh,03dh,028h,039h,058h,03ch,03dh,068h,056h,035h,03fh,042h,045h,04bh,03ch	; 9292  X.=(9X<=hV5?BEK<
	defb 02dh,068h,0cch,0cfh,002h,02ch,086h,091h,068h,07dh,071h,054h,0d9h,030h,045h,0beh	; 92a2  -h...,..h}qT.0E.
	defb 049h,045h,04bh,03ch,02dh,069h,0cch,0cdh,005h,02ch,07ch,094h,090h,056h,036h,0e1h	; 92b2  IEK<-i...,|..V6.
	defb 034h,0c0h,035h,03fh,04bh,03ch,02dh,064h,0cch,0d8h,000h,02ch,07ch,094h,090h,058h	; 92c2  4.5?K<-d...,|..X
	defb 03fh,051h,04bh,000h,03dh,057h,029h,07ch,094h,090h,056h,0eeh,080h,03fh,045h,04dh	; 92d2  ?QK.=W)|..V..?EM
	defb 062h,051h,04bh,03ch,02dh,068h,0cch,0cfh,000h,02ch,070h,02fh,080h,089h,0e9h,0feh	; 92e2  bQK<-h...,p/....
	defb 056h,0a8h,00ch,0bah,03fh,04bh,03fh,03fh,02dh,064h,0cch,0d8h,000h,02ch,073h,068h	; 92f2  V...?K??-d...,sh
	defb 07dh,082h,02fh,090h,0ffh,028h,045h,0d2h,021h,061h,04ah,052h,070h,02fh,008h,080h	; 9302  }./..(E.!aJRp/..
	defb 089h,047h,04fh,046h,061h,03ch,02dh,06ch,0cch,0c7h,030h,02ch,0cbh,00bh,03fh,04bh	; 9312  .GOFa<-l..0,..?K
	defb 03ch,02dh,067h,0cch,0d3h,040h,02ch,055h,06dh,071h,077h,07eh,025h,072h,00ah,083h	; 9322  <-g..@,Umqw~%r..
	defb 06fh,02fh,056h,00ch,0bah,03fh,04bh,080h,03fh,03fh,02dh,06ah,0cch,0cdh,002h,02ch	; 9332  o/V..?K.??-j...,
	defb 06bh,090h,072h,080h,056h,00ch,0bah,0a0h,03fh,04bh,03fh,03fh,02dh,06ah,0cch,0cch	; 9342  k.r.V...?K??-j..
	defb 001h,02ch,06bh,090h,072h,080h,056h,0cbh,00bh,080h,03fh,04bh,03ch,02dh,065h,0cch	; 9352  .,k.r.V...?K<-e.
	defb 0d6h,000h,02ch,0a9h,0d8h,0cch,0f6h,061h,03ch,058h,000h,028h,086h,091h,068h,07dh	; 9362  ..,....a<X.(..h}
	defb 071h,025h,08ah,000h,02fh,077h,083h,061h,03ch,02dh,06ah,0cch,0cch,003h,02ch,03eh	; 9372  q%../w.a<-j...,>
	defb 0d7h,084h,071h,056h,000h,008h,080h,03fh,04bh,03ch,02dh,06ah,0cch,0cbh,002h,02ch	; 9382  ..qV...?K<-j...,
	defb 0a5h,0e2h,045h,03eh,0d7h,03fh,04bh,080h,03fh,03fh,02dh,068h,0cch,0d0h,040h,02ch	; 9392  ..E>.?K.??-h..@,
	defb 02bh,0e5h,085h,07eh,088h,093h,069h,018h,071h,045h,0beh,049h,045h,04bh,03ch,02dh	; 93a2  +..~..i.qE.IEK<-
	defb 068h,0cch,0d0h,000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,010h,077h,083h,028h	; 93b2  h.....h}q%./.w.(
	defb 04fh,05ch,0b1h,0a8h,029h,047h,0cch,052h,000h,020h,013h,022h,00fh,018h,048h,028h	; 93c2  O\..)G.R. ."..H(
	defb 04dh,000h,043h,047h,0d3h,0f5h,045h,04dh,062h,052h,000h,03fh,04ch,08ah,0cch,0cdh	; 93d2  M.CG..EMbR.?L...
	defb 001h,073h,068h,07dh,082h,02fh,090h,056h,048h,080h,04dh,044h,064h,03fh,029h,068h	; 93e2  .sh}./.VH.MDd?)h
	defb 0cch,0d1h,01ah,02ch,0dah,0f3h,013h,01dh,0aeh,049h,050h,00ah,0bbh,0b8h,056h,0ceh	; 93f2  ...,.....IP...V.
	defb 04ch,04bh,03fh,03fh,000h,02dh,069h,0cch,0ceh,048h,02ch,001h,0cfh,0a6h,02ah,045h	; 9402  LK??.-i..H,...*E
	defb 0cfh,0bch,020h,056h,06ch,040h,094h,074h,02dh,047h,0cch,053h,044h,02ch,04dh,047h	; 9412  .. Vl@.t-G.SD,MG
	defb 04bh,04bh,005h,05ah,050h,002h,053h,052h,043h,0d0h,064h,042h,045h,052h,040h,047h	; 9422  KK.ZP.SRC.dBER@G
	defb 049h,029h,08ch,0cch,0c9h,0a0h,005h,058h,03fh,048h,03dh,057h,05fh,027h,000h,02dh	; 9432  I).....X?H=W_'.-
	defb 048h,0cch,050h,000h,02ch,086h,091h,068h,07dh,071h,096h,0c2h,018h,045h,048h,0d1h	; 9442  H.P.,..h}q...EH.
	defb 00dh,03fh,03fh,058h,028h,087h,0cch,0d2h,0c6h,04ah,04eh,04bh,048h,0d7h,049h,03fh	; 9452  .??X(....JNKH.I?
	defb 042h,040h,0b1h,04eh,057h,029h,0d8h,046h,065h,027h,000h,027h,02dh,069h,0cch,0ceh	; 9462  B@.NW).Fe'.'-i..
	defb 001h,02ch,08dh,091h,079h,07dh,058h,0d7h,04ah,050h,042h,045h,04bh,03fh,03fh,02dh	; 9472  .,..y}X.JPBEK??-
	defb 064h,0cch,0d9h,001h,02ch,08ah,06dh,076h,07fh,067h,083h,049h,040h,050h,046h,063h	; 9482  d...,.mv.g.I@PFc
	defb 064h,03fh,070h,02fh,080h,004h,089h,0e9h,0feh,056h,0d2h,045h,04bh,03ch,000h,02dh	; 9492  d?p/.....V.EK<.-
	defb 069h,0cch,0ceh,000h,02ch,070h,02fh,080h,089h,028h,071h,068h,000h,094h,074h,000h	; 94a2  i...,p/..(qh..t.
	defb 06ah,083h,02dh,06ch,0cch,0c8h,000h,02ch,070h,02fh,080h,089h,0e1h,0bdh,02dh,06bh	; 94b2  j.-l...,p/....-k
	defb 0cch,0cbh,005h,02ch,0b9h,0b3h,099h,056h,024h,0f4h,03fh,000h,04bh,03ch,02dh,04bh	; 94c2  ...,...V$.?.K<-K
	defb 0cch,049h,000h,02ch,020h,013h,022h,00fh,018h,0aeh,045h,000h,048h,085h,0cch,0d6h	; 94d2  .I., ."...E.H...
	defb 000h,082h,02fh,090h,0ffh,047h,070h,02fh,080h,006h,089h,0e9h,0feh,058h,0e9h,010h	; 94e2  ../..Gp/.....X..
	defb 04eh,053h,040h,042h,045h,04bh,03dh,057h,02dh,046h,0cch,054h,040h,02ch,045h,041h	; 94f2  NS@BEK=W-F.T@,EA
	defb 047h,0d3h,0f5h,045h,043h,094h,041h,0d9h,03ch,049h,055h,049h,051h,04bh,000h,03dh	; 9502  G..EC.A.<IUIQK.=
	defb 057h,058h,028h,08bh,0cch,0cah,002h,082h,02fh,090h,056h,0a7h,0cdh,03fh,04bh,000h	; 9512  WX(...../.V..?K.
	defb 03ch,02dh,06bh,0cch,0cah,000h,02ch,082h,02fh,090h,000h,067h,069h,077h,000h,027h	; 9522  <-k...,./..giw.'
	defb 02dh,02fh,0cah,002h,000h,038h,039h,04fh,0cah,002h,000h,03ah,03bh,0a2h,0cah,014h	; 9532  -/...89O...:....
	defb 004h,011h,007h,009h,001h,00ah,009h,000h,000h,000h,000h,088h,068h,08dh,093h,094h	; 9542  ............h...
	defb 089h,025h,000h,08ah,02fh,077h,083h,0ebh,0cah,013h,000h,020h,013h,022h,00fh,018h	; 9552  .%../w..... ."..
	defb 0aeh,061h,08ah,000h,06dh,076h,07fh,067h,083h,0b8h,0f2h,045h,040h,0d9h,00ch,029h	; 9562  .a..mv.g...E@..)
	defb 033h,0cbh,0a7h,000h,0b1h,0a8h,03dh,05dh,025h,025h,025h,00fh,0cah,002h,000h,038h	; 9572  3.....=]%%%....8
	defb 039h,02fh,0cah,002h,000h,03ah,03bh,062h,0cah,015h,004h,011h,007h,007h,005h,002h	; 9582  9/...:.b........
	defb 009h,000h,000h,000h,000h,086h,091h,068h,07dh,071h,025h,08ah,000h,02fh,077h,083h	; 9592  .......h}q%../w.
	defb 0f1h,0d7h,0a2h,0cah,011h,004h,011h,007h,007h,006h,009h,009h,000h,000h,000h,000h	; 95a2  ................
	defb 0f0h,08ah,06dh,076h,07fh,067h,083h,000h,0e0h,0e2h,0cah,00fh,004h,011h,007h,007h	; 95b2  ..mv.g..........
	defb 007h,007h,009h,000h,000h,000h,000h,0f0h,08dh,091h,079h,07dh,0e0h,02bh,0cbh,034h	; 95c2  ..........y}.+.4
	defb 000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,000h,077h,083h,028h,07eh,02fh,087h	; 95d2  ...h}q%./.w.(~/.
	defb 002h,009h,000h,0dfh,045h,0eah,098h,062h,0cbh,030h,004h,011h,007h,008h,001h,00ah	; 95e2  ....E..b.0......
	defb 009h,000h,000h,002h,000h,0f0h,06fh,07eh,07ch,083h,042h,0e0h,0a2h,0cbh,03ch,004h	; 95f2  ......o~|.B...<.
	defb 011h,007h,008h,002h,009h,009h,000h,000h,000h,000h,086h,091h,068h,07dh,071h,025h	; 9602  ............h}q%
	defb 08ah,001h,02fh,077h,083h,0d8h,0afh,02ah,0b0h,009h,000h,008h,008h,0c1h,02bh,0f0h	; 9612  ../w...*......+.
	defb 0cbh,021h,000h,025h,010h,0cch,041h,000h,025h,030h,0cch,041h,000h,025h,050h,0cch	; 9622  .!.%..A.%0.A.%P.
	defb 041h,000h,025h,082h,0cch,0d8h,004h,011h,007h,009h,001h,00ah,009h,000h,000h,004h	; 9632  A.%.............
	defb 000h,095h,0b3h,0a4h,0e0h,004h,0aeh,02ch,000h,020h,013h,022h,00fh,018h,02dh,0a5h	; 9642  .......,. ."..-.
	defb 0e1h,00ch,0cch,047h,000h,02ch,020h,013h,022h,00fh,018h,02dh,044h,0cch,058h,000h	; 9652  ...G., ."..-D.X.
	defb 085h,07eh,088h,093h,069h,071h,0a1h,0a2h,006h,0adh,0d6h,0fch,058h,0a3h,00ch,03fh	; 9662  .~..iq......X..?
	defb 03fh,004h,028h,095h,0b3h,0a4h,0e0h,004h,0aeh,029h,087h,0cch,0d3h,020h,0e9h,0fdh	; 9672  ?.(......)... ..
	defb 043h,02fh,075h,058h,09ch,044h,000h,052h,005h,041h,047h,073h,068h,090h,058h,080h	; 9682  C/uX.D.R.AGsh.X.
	defb 044h,052h,029h,04dh,0cch,046h,000h,02ch,084h,069h,088h,093h,02dh,084h,0cch,0d9h	; 9692  DR)M.F.,.i..-...
	defb 002h,020h,013h,022h,00fh,018h,045h,003h,0c0h,090h,04eh,053h,042h,045h,052h,028h	; 96a2  . ."..E...NSBER(
	defb 0d4h,09fh,040h,0fah,00ah,06eh,083h,08fh,092h,02fh,073h,000h,029h,0cah,0cbh,02dh	; 96b2  ..@..n.../s.)..-
	defb 000h,02ch,088h,068h,08dh,093h,094h,089h,025h,000h,08ah,02fh,077h,083h,02dh,004h	; 96c2  .,.h....%../w.-.
	defb 0cch,058h,000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,000h,077h,083h,02ah,07eh	; 96d2  .X...h}q%./.w.*~
	defb 02fh,087h,002h,009h,000h,0dfh,02bh,047h,0fbh,0b5h,0d5h,0e8h,029h,047h,0cch,052h	; 96e2  /.....+G....)G.R
	defb 042h,097h,002h,045h,04fh,052h,0ach,023h,044h,010h,07fh,02fh,06dh,043h,082h,02fh	; 96f2  B..EOR.#D../mC./
	defb 056h,04dh,000h,040h,028h,089h,0cch,04fh,033h,03eh,047h,00ah,023h,056h,0efh,04bh	; 9702  VM.@(..O3>G.#V.K
	defb 00fh,048h,0a0h,04eh,053h,042h,045h,052h,029h,0cah,0cch,0cch,002h,020h,013h,022h	; 9712  .H.NSBER).... ."
	defb 00fh,018h,047h,043h,068h,000h,081h,094h,077h,029h,00fh,0cah,002h,000h,038h,039h	; 9722  ..GCh...w)....89
	defb 02fh,0cah,002h,000h,03ah,03bh,083h,0cah,018h,004h,011h,007h,009h,001h,00ah,009h	; 9732  /...:...........
	defb 002h,001h,000h,0b7h,000h,000h,000h,088h,068h,08dh,093h,000h,094h,089h,025h,08ah	; 9742  ........h.....%.
	defb 02fh,077h,083h,028h,0cfh,0cah,00eh,000h,02ch,020h,013h,022h,00fh,018h,02dh,061h	; 9752  /w.(...., ."..-a
	defb 000h,08ah,06dh,076h,07fh,067h,083h,013h,0cbh,0a6h,008h,0b8h,0f2h,04ah,0d9h,00ch	; 9762  ..mv.g.......J..
	defb 029h,048h,0cch,050h,0ech,0deh,012h,000h,017h,099h,00fh,097h,04fh,01eh,000h,059h	; 9772  )H.P........O..Y
	defb 085h,0cch,0d6h,01eh,012h,00fh,08ch,0cbh,04dh,04fh,09ch,053h,0d8h,01dh,040h,09dh	; 9782  ........MO.S..@.
	defb 0c0h,019h,00eh,037h,046h,0cch,055h,0ech,0deh,012h,0e3h,0f2h,01ch,040h,0ceh,053h	; 9792  ...7F.U......@.S
	defb 0cbh,0dah,01ah,00bh,09ch,053h,011h,086h,0cch,0d5h,0d0h,05ch,059h,0c0h,01eh,052h	; 97a2  .....S.....\Y..R
	defb 0ddh,000h,05eh,017h,04fh,080h,0d9h,058h,08fh,02dh,047h,0cch,051h,0ech,0deh,012h	; 97b2  ..^.O..X.-G.Q...
	defb 0e3h,0f2h,01ch,080h,0cfh,058h,00fh,09ch,053h,011h,08ah,0cch,0cch,0cbh,000h,05eh	; 97c2  .....X..S......^
	defb 057h,00fh,080h,0cbh,05ch,0dah,068h,0cch,0d1h,0ech,0deh,012h,0e3h,0f2h,01ch,0c0h	; 97d2  W...\.h.........
	defb 011h,059h,058h,051h,0a5h,025h,049h,0cch,04fh,0d8h,0cfh,017h,01dh,013h,01dh,047h	; 97e2  .YXQ.%I.O......G
	defb 047h,005h,030h,001h,002h,089h,0cch,0cfh,002h,007h,006h,023h,0cfh,04bh,05dh,000h	; 97f2  G.0........#.K].
	defb 04bh,019h,027h,02dh,045h,0cch,056h,0ech,0deh,012h,0e3h,0f2h,01ch,0c0h,011h,059h	; 9802  K.'-E.V........Y
	defb 098h,0d1h,040h,0d9h,000h,055h,016h,016h,085h,0cch,0d5h,0d4h,0cbh,017h,0ddh,080h	; 9812  ..@..U..........
	defb 016h,01eh,00fh,01ch,056h,0cbh,05ch,080h,074h,0f5h,037h,063h,0cch,0dah,06ch,0d2h	; 9822  ....V.\.t.7c..l.
	defb 053h,0deh,019h,09ch,0c0h,0e1h,059h,016h,0ceh,000h,08fh,000h,04dh,0cbh,0d8h,011h	; 9832  S.....Y.....M...
	defb 00eh,037h,043h,0cch,05ah,0ech,092h,00fh,04eh,080h,050h,09ch,000h,05eh,08fh,040h	; 9842  .7C.Z...N.P..^.@
	defb 04ch,00bh,00dh,015h,0d2h,0d9h,016h,025h,025h,084h,0cch,0d9h,021h,0cfh,072h,00fh	; 9852  L......%%...!.r.
	defb 080h,04fh,0deh,00fh,05ch,098h,0d1h,040h,0d3h,0d7h,08fh,0a1h,08bh,05ch,037h,049h	; 9862  .O..\..@.....\7I
	defb 0cch,04dh,02ch,012h,08bh,00fh,0c0h,04bh,0dch,0d3h,020h,00eh,086h,0cch,0d3h,013h	; 9872  .M,....K.. .....
	defb 098h,040h,04fh,0d7h,04fh,0d3h,05dh,000h,007h,005h,0c5h,001h,008h,037h,066h,0cch	; 9882  .@O.O.]......7f.
	defb 0d3h,0ech,047h,040h,099h,018h,05eh,05dh,080h,05eh,0d9h,080h,016h,01eh,00fh,037h	; 9892  ..G@..^].^.....7
	defb 045h,0cch,057h,06ch,0cch,00bh,0deh,00fh,05ch,099h,018h,040h,00bh,0ddh,040h,0cfh	; 98a2  E.Wl....\..@..@.
	defb 0efh,04ch,013h,016h,01eh,08ah,0cch,0cdh,0d0h,0d3h,020h,0c0h,09ah,016h,058h,0cfh	; 98b2  .L........ ...X.
	defb 05eh,037h,048h,0cch,04fh,0ech,054h,04bh,08fh,01dh,040h,00bh,0ddh,000h,00fh,00fh	; 98c2  ^7H.O.TK..@.....
	defb 018h,089h,0cch,0ceh,092h,0cfh,016h,0c0h,01ah,05ch,0ddh,0d9h,018h,01ch,037h,046h	; 98d2  .........\....7F
	defb 0cch,054h,0ech,0deh,012h,0dch,04fh,040h,01fh,01dh,01eh,04ch,0cfh,000h,056h,0dfh	; 98e2  .T....O@...L..V.
	defb 04fh,087h,0cch,0d3h,09eh,019h,040h,053h,01dh,080h,0d2h,0cfh,01ch,0cbh,0cch,059h	; 98f2  O.....@S.......Y
	defb 01eh,01dh,037h,067h,0cch,0d2h,02ch,0d2h,04fh,00fh,032h,01dh,0cbh,0c0h,01ch,0ceh	; 9902  ..7g..,.O.2.....
	defb 080h,017h,01ah,037h,067h,0cch,0d3h,02ch,0d2h,04fh,00fh,032h,01dh,08bh,040h,04ch	; 9912  ...7g..,.O.2..@L
	defb 0dfh,04fh,040h,00bh,01ah,037h,066h,0cch,0d4h,02ch,0d2h,04fh,00fh,032h,01dh,00bh	; 9922  .O@..7f..,.O.2..
	defb 0c0h,051h,00fh,00fh,018h,0d7h,04bh,0dah,047h,0cch,051h,0ech,0deh,012h,05ch,0cfh	; 9932  .Q....K.G.Q...\.
	defb 040h,00fh,00fh,017h,01eh,0d9h,000h,00fh,084h,0cch,0d9h,0c4h,000h,04eh,010h,0d0h	; 9942  @............N..
	defb 04fh,00fh,018h,01eh,095h,0d3h,018h,01dh,000h,059h,080h,097h,04bh,037h,027h,0cch	; 9952  O........Y..K7'.
	defb 052h,06ch,0cfh,00bh,0d2h,000h,09eh,0dah,04fh,040h,08bh,01eh,04dh,00fh,01dh,065h	; 9962  Rl......O@..M..e
	defb 0cch,057h,00bh,0c0h,05ah,013h,0d7h,04bh,0e3h,000h,056h,011h,012h,01eh,04dh,099h	; 9972  .W..Z..K..V...M.
	defb 056h,01fh,01ch,033h,0a7h,0cch,0d2h,05ch,00fh,0ceh,0cch,0d6h,01fh,000h,019h,01ch	; 9982  V..3...\........
	defb 0d1h,0dch,00fh,018h,037h,045h,0cch,056h,02ch,021h,00fh,098h,0cfh,00fh,080h,04bh	; 9992  ....7E.V,!.....K
	defb 056h,040h,0c4h,000h,0d9h,0d6h,059h,01ch,01dh,086h,0cch,0d5h,010h,019h,01ch,01eh	; 99a2  V@....Y.........
	defb 012h,00fh,08dh,099h,057h,0d6h,0cfh,01eh,080h,097h,04bh,037h,024h,0cch,058h,02ch	; 99b2  ....W.....K7$.X,
	defb 0d2h,04fh,00fh,0c0h,04bh,08fh,000h,05eh,08fh,000h,05eh,01ch,00fh,00fh,057h,0cbh	; 99c2  .O..K..^..^...W.
	defb 05ah,067h,0cch,052h,0deh,0d9h,011h,01eh,0d2h,04fh,040h,057h,04bh,013h,018h,011h	; 99d2  Zg.R.....O@WK...
	defb 01fh,01ah,0a7h,0cch,0d1h,01eh,012h,00fh,08dh,099h,057h,0d6h,0cfh,01eh,080h,097h	; 99e2  ..........W.....
	defb 04bh,037h,044h,0cch,058h,0ech,0deh,012h,000h,0deh,052h,0cfh,04fh,040h,00bh,01ah	; 99f2  K7D.X.....R.O@..
	defb 01dh,0deh,0d9h,011h,01eh,0d2h,04fh,085h,0cch,0d6h,0d1h,0d3h,020h,080h,04bh,056h	; 9a02  ......O..... .KV
	defb 0c0h,0deh,012h,0c0h,08ch,00fh,05ch,013h,058h,01dh,037h,04ah,0cch,04bh,0ach,053h	; 9a12  ......\.X.7J.K.S
	defb 072h,056h,080h,051h,000h,01eh,019h,086h,0cch,0d4h,01eh,012h,00fh,05ch,0cfh,01dh	; 9a22  rV.Q.........\..
	defb 05fh,08fh,040h,0d0h,080h,014h,0d7h,04fh,0ddh,063h,0cch,0dah,02ch,0d2h,04fh,00fh	; 9a32  _.@....O.c..,.O.
	defb 032h,01dh,01eh,012h,00fh,0cbh,0ddh,01dh,0d7h,0cch,016h,0ceh,080h,017h,01ah,037h	; 9a42  2..............7
	defb 044h,0cch,057h,02ch,021h,00fh,09dh,05eh,053h,0d6h,0c0h,018h,04fh,08eh,040h,0d8h	; 9a52  D.W,!..^S...O.@.
	defb 04fh,040h,00bh,01ah,030h,084h,0cch,0d8h,093h,072h,056h,000h,011h,019h,04ch,04bh	; 9a62  O@..0....rV...LK
	defb 04dh,080h,0cbh,018h,080h,0d1h,04fh,0c0h,053h,0deh,046h,0cch,055h,02ch,013h,0b2h	; 9a72  M.....O.S.F.U,..
	defb 04fh,080h,050h,01fh,018h,00eh,0ddh,0d9h,017h,000h,095h,053h,00eh,087h,0cch,0d3h	; 9a82  O.P........S....
	defb 0d9h,090h,000h,0c0h,01dh,052h,00fh,016h,00eh,0ceh,00fh,060h,00dh,00fh,037h,048h	; 9a92  .....R.....`..7H
	defb 0cch,04fh,0ech,09eh,012h,01eh,032h,01dh,08bh,080h,05dh,00bh,00dh,00fh,088h,0cch	; 9aa2  .O....2...].....
	defb 0cfh,090h,013h,051h,01eh,00fh,01ch,0ddh,0d2h,013h,016h,00eh,037h,065h,0cch,0d7h	; 9ab2  ...Q........7e..
	defb 0ach,021h,0cfh,096h,0d6h,040h,00bh,015h,00fh,053h,01eh,080h,013h,01eh,012h,01fh	; 9ac2  .!...@...S......
	defb 01dh,037h,044h,0cch,058h,02ch,013h,0b2h,04fh,080h,050h,01fh,018h,00eh,0ddh,0d9h	; 9ad2  .7D.X,..O.P.....
	defb 017h,000h,095h,053h,00eh,000h,059h,085h,0cch,0d7h,08bh,000h,08fh,0deh,0dch,08bh	; 9ae2  ...S..Y.........
	defb 05dh,0cfh,058h,019h,01ch,023h,0ceh,00fh,060h,00dh,00fh,037h,063h,0cch,0dbh,0ech	; 9af2  ].X..#..`..7c...
	defb 0deh,012h,05ch,0cfh,072h,040h,04bh,040h,013h,018h,00eh,059h,0d0h,000h,0cbh,0dah	; 9b02  ..\.r@K@...Y....
	defb 05dh,016h,00fh,037h,063h,0cch,0dbh,0ach,053h,072h,016h,0c0h,04ch,013h,018h,011h	; 9b12  ]..7c...Sr..L...
	defb 093h,0d8h,040h,052h,0cfh,000h,0cbh,0dah,05dh,016h,00fh,037h,049h,0cch,04eh,0ach	; 9b22  ..@R....]..7I.N.
	defb 013h,0deh,0ddh,080h,014h,057h,04fh,09dh,025h,025h,084h,0cch,0d8h,092h,04fh,040h	; 9b32  .....WO.%%....O@
	defb 059h,0d9h,055h,040h,056h,053h,0cfh,0c0h,012h,0b2h,0ddh,000h,0cfh,04bh,0ceh,04ah	; 9b42  Y.U@VS.......K.J
	defb 0cch,04ch,0ach,053h,072h,0d6h,0c0h,05ah,01eh,080h,053h,088h,0cch,0d0h,01eh,012h	; 9b52  .L.Sr..Z..S.....
	defb 00fh,0dch,00fh,060h,020h,00bh,016h,0d1h,04bh,0ddh,063h,0cch,0dbh,0ach,012h,0cfh	; 9b62  ...` ...K.c.....
	defb 05dh,080h,04dh,0d7h,0dah,016h,0deh,00fh,096h,040h,0dch,00fh,019h,0e0h,04fh,00fh	; 9b72  ].M......@....O.
	defb 00eh,037h,064h,0cch,0d8h,0ach,0d6h,04fh,0b2h,01dh,040h,00fh,00bh,00eh,010h,019h	; 9b82  .7d....O..@.....
	defb 01ch,0d8h,0cfh,017h,0ddh,053h,0ddh,04ah,0cch,04ch,0d4h,0cbh,017h,0ddh,0c0h,04ch	; 9b92  .....S.J.L.....L
	defb 01ch,09eh,059h,088h,0cch,0d0h,0ddh,0cbh,010h,016h,0e3h,040h,00fh,0deh,05fh,018h	; 9ba2  ..Y........@.._.
	defb 00fh,0ceh,045h,0cch,057h,0e0h,0d3h,022h,018h,080h,04fh,0deh,0cfh,01ch,0ceh,000h	; 9bb2  ..E.W.."..O.....
	defb 05eh,057h,00fh,0afh,00bh,01ch,01ah,089h,0cch,0cfh,01eh,0d9h,040h,00fh,0deh,05fh	; 9bc2  ^W..........@.._
	defb 058h,080h,052h,017h,00fh,030h,044h,0cch,058h,0ach,021h,0cfh,0dch,0cfh,040h,018h	; 9bd2  X.R..0D.X.!...@.
	defb 0ceh,04fh,080h,0cbh,05eh,00bh,00dh,015h,0d0h,05ch,059h,085h,0cch,0d6h,0cbh,0d8h	; 9be2  .O..^....\Y.....
	defb 040h,0d8h,0d3h,00eh,018h,01eh,053h,013h,00fh,00eh,00dh,01ch,04bh,01eh,037h,047h	; 9bf2  @.....S.....K.7G
	defb 0cch,052h,0ech,0deh,012h,05ch,0cfh,072h,0c0h,04bh,040h,0cfh,09dh,01dh,011h,00fh	; 9c02  .R...\.r.K@.....
	defb 087h,0cch,0d2h,0cdh,019h,057h,098h,0d1h,040h,0d2h,0dch,059h,051h,052h,0a5h,025h	; 9c12  .....W..@..YQR.%
	defb 02dh,044h,0cch,058h,0ech,01eh,052h,0d8h,015h,080h,059h,0dfh,000h,04bh,018h,040h	; 9c22  -D.X..R...Y..K.@
	defb 0cfh,09eh,000h,0a1h,04bh,0a3h,08ah,0cch,0cch,012h,00bh,071h,059h,0d9h,056h,067h	; 9c32  ....K......qY.Vg
	defb 0e7h,0a7h,043h,0cch,059h,02ch,021h,00fh,017h,00bh,023h,018h,019h,01eh,0d2h,0cbh	; 9c42  ..C.Y,!...#.....
	defb 020h,080h,0d1h,059h,000h,0d6h,04bh,01dh,083h,0cch,0dah,00ch,01fh,01eh,023h,019h	; 9c52   ..Y..K.......#.
	defb 01fh,0a1h,019h,0d8h,05eh,0c0h,04fh,0cdh,0cbh,01ah,0f0h,0ceh,013h,027h,02dh,066h	; 9c62  ....^.O......'-f
	defb 0cch,0d4h,02ch,0a0h,04fh,0d9h,017h,040h,05dh,080h,058h,0deh,0c0h,00eh,04bh,0ceh	; 9c72  ..,.O..@].X...K.
	defb 0a7h,045h,0cch,056h,0ech,0dfh,01dh,0c0h,0deh,012h,0c0h,01dh,052h,00fh,016h,00eh	; 9c82  .E.V........R...
	defb 0ceh,00fh,060h,00dh,00fh,085h,0cch,0d6h,061h,00fh,040h,019h,01eh,040h,01ch,019h	; 9c92  ..`.....a.@..@..
	defb 017h,08ch,0cbh,04dh,04fh,09ch,053h,018h,037h,065h,0cch,0d6h,0ech,01dh,061h,01eh	; 9ca2  ...MO.S.7e....a.
	defb 00dh,012h,099h,0d8h,040h,052h,0cfh,040h,092h,053h,04fh,00eh,037h,06bh,0cch,0cbh	; 9cb2  ....@R.@.SO.7k..
	defb 0ech,01dh,052h,00fh,016h,00eh,019h,018h,037h,064h,0cch,0d7h,0ach,0d6h,04fh,072h	; 9cc2  ..R.....7d....Or
	defb 01dh,040h,04fh,09eh,040h,05fh,09eh,040h,0d0h,0c0h,012h,01ch,00fh,037h,042h,0cch	; 9cd2  .@O.@_.@.....7B.
	defb 05bh,0ech,0deh,012h,080h,020h,093h,04fh,0d8h,000h,09ch,0cbh,050h,000h,08dh,04bh	; 9ce2  [.... .O....P..K
	defb 018h,019h,01eh,01fh,01dh,00fh,084h,0cch,0d8h,01eh,012h,00fh,0ddh,0d2h,013h,0d6h	; 9cf2  ................
	defb 00eh,040h,0d8h,080h,021h,0dch,05ah,040h,0d9h,04eh,0cfh,044h,0cch,057h,02ch,08dh	; 9d02  .@..!.Z@.N.D.W,.
	defb 04bh,00dh,00fh,016h,0a1h,08bh,05ch,040h,09eh,052h,01fh,011h,012h,021h,012h,019h	; 9d12  K.....\@.R...!..
	defb 083h,0cch,0d9h,055h,018h,099h,09dh,000h,061h,00fh,01ch,00fh,0a1h,04fh,072h,0d6h	; 9d22  ...U....a....Or.
	defb 040h,04fh,0cfh,0dch,011h,037h,06bh,0cch,0cah,02ch,0e1h,04bh,01ah,000h,059h,010h	; 9d32  @O...7k..,.K..Y.
	defb 037h,00fh,0cah,002h,038h,039h,02fh,0cah,002h,03ah,03bh,063h,0cah,012h,023h,0cfh	; 9d42  7...89/..:.c..#.
	defb 04bh,000h,000h,000h,000h,000h,000h,0c0h,0cfh,020h,018h,01eh,0a2h,0cah,01ch,051h	; 9d52  K........ .....Q
	defb 007h,009h,08ah,0c0h,000h,08bh,0e0h,013h,000h,0cch,05fh,01eh,019h,018h,05dh,0cfh	; 9d62  .........._...].
	defb 05eh,080h,0d9h,05fh,0e9h,0cah,013h,013h,018h,080h,013h,0a2h,04fh,040h,010h,053h	; 9d72  ^.._........O@.S
	defb 012h,0deh,04fh,000h,01eh,019h,029h,0cbh,030h,0dch,0cfh,01ah,0d6h,080h,00ch,00dh	; 9d82  ..O...).0.......
	defb 0deh,04fh,013h,019h,0d8h,06dh,0cbh,0b1h,018h,019h,01eh,023h,00fh,01eh,0dch,0cfh	; 9d92  .O...m.....#....
	defb 05eh,09ch,0d8h,00fh,030h,066h,0cbh,0b5h,04bh,080h,056h,098h,051h,040h,019h,018h	; 9da2  ^...0f..K.V.Q@..
	defb 011h,0deh,0d3h,017h,040h,08bh,051h,030h,043h,0cbh,03bh,01ah,096h,04bh,04fh,01eh	; 9db2  ....@.Q0C....KO.
	defb 040h,0dch,00bh,04eh,05fh,01dh,080h,0cbh,01dh,040h,098h,060h,059h,020h,00fh,00eh	; 9dc2  @..N_....@.`Y ..
	defb 088h,0cbh,0b0h,013h,058h,000h,0c0h,09dh,01ah,04dh,00fh,080h,0cbh,01ch,0ddh,068h	; 9dd2  ....X....M.....h
	defb 0cbh,0b0h,060h,0cfh,05ch,01fh,0ddh,000h,0cbh,0cdh,01eh,01ch,093h,059h,06ah,0cbh	; 9de2  ..`.\........Yj.
	defb 0ach,060h,0cfh,05ch,01fh,01dh,080h,0cfh,058h,059h,068h,0cbh,0b1h,060h,0cfh,05ch	; 9df2  .`.\....XYh..`.\
	defb 05fh,0ddh,040h,0cbh,056h,04bh,0cbh,0d8h,00eh,01ch,047h,0cbh,032h,0deh,0d3h,017h	; 9e02  _.@.VK....G.2...
	defb 040h,0d2h,04bh,040h,0dah,04bh,05dh,04fh,08eh,025h,025h,081h,0cbh,0beh,003h,001h	; 9e12  @.K@.K]O.%%.....
	defb 001h,023h,0cfh,04bh,0ddh,080h,016h,01eh,00fh,01ch,01eh,0d9h,000h,08fh,000h,08fh	; 9e22  .#.K............
	defb 04bh,04dh,09eh,025h,025h,062h,0cbh,0bch,0d3h,01eh,040h,05dh,080h,058h,061h,080h	; 9e32  KM.%%b....@].Xa.
	defb 007h,041h,00ah,040h,0dch,00bh,04eh,0dfh,01dh,080h,00fh,00bh,0dch,043h,0cbh,03bh	; 9e42  .A.@..N......C..
	defb 01ah,096h,04bh,00fh,09eh,040h,04fh,0d7h,04fh,053h,01dh,080h,0cbh,01dh,040h,098h	; 9e52  ..K..@O.OS....@.
	defb 060h,059h,020h,00fh,00eh,088h,0cbh,0b0h,013h,058h,000h,0c0h,09dh,01ah,04dh,00fh	; 9e62  `Y ......X....M.
	defb 080h,0cbh,01ch,0ddh,062h,0cbh,0bch,0d3h,01eh,040h,05dh,080h,058h,061h,080h,007h	; 9e72  ....b....@].Xa..
	defb 001h,08ah,040h,04fh,0d7h,04fh,0d3h,01dh,080h,00fh,00bh,0dch,00fh,0cah,002h,038h	; 9e82  ..@O.O.........8
	defb 039h,02fh,0cah,002h,03ah,03bh,063h,0cah,012h,023h,0cfh,04bh,000h,000h,000h,000h	; 9e92  9/..:.c..#.K....
	defb 000h,000h,0c0h,0cfh,020h,018h,01eh,0a2h,0cah,01ch,051h,047h,007h,002h,0c0h,000h	; 9ea2  .... .....QG....
	defb 093h,01ch,05eh,000h,019h,010h,0d4h,0cbh,017h,0ddh,0c0h,04ch,01ch,09eh,059h,0e2h	; 9eb2  ..^........L..Y.
	defb 0cah,019h,091h,047h,007h,049h,000h,080h,04bh,01ch,080h,013h,01eh,012h,08ch,0cbh	; 9ec2  ...G.I..K.......
	defb 04dh,04fh,09ch,053h,018h,022h,0cbh,035h,0d1h,047h,007h,047h,000h,080h,04bh,01ch	; 9ed2  MO.S.".5.G.G..K.
	defb 080h,013h,01eh,012h,060h,08fh,058h,017h,069h,0cbh,036h,0d4h,0cbh,017h,0ddh,0c0h	; 9ee2  ....`.X.i.6.....
	defb 00ch,0cdh,0d9h,017h,0ddh,080h,016h,01ch,05dh,0c0h,035h,036h,0a2h,0cbh,03ah,051h	; 9ef2  ........].56..:Q
	defb 007h,008h,04ah,000h,080h,04bh,01ch,080h,013h,01eh,012h,0ddh,08bh,016h,097h,0cbh	; 9f02  ..J..K..........
	defb 018h,00fh,01ch,0e2h,0cbh,03ch,091h,007h,008h,089h,0c0h,000h,08fh,00bh,05eh,000h	; 9f12  .....<........^.
	defb 019h,010h,0d4h,0cbh,017h,0ddh,0c0h,04ch,01ch,09eh,059h,062h,0cch,056h,051h,007h	; 9f22  .......L..Yb.VQ.
	defb 009h,00ah,0c0h,080h,0e0h,0d3h,022h,018h,02dh,040h,093h,011h,05eh,00fh,01ch,0ach	; 9f32  ......".-@..^...
	defb 0cch,0c9h,0ceh,0cfh,020h,0d6h,0d9h,01ah,00eh,00ch,0cch,047h,0ach,020h,093h,00fh	; 9f42  .... ......G. ..
	defb 018h,02dh,046h,0cch,054h,090h,013h,051h,01eh,00fh,01ch,0ceh,0cfh,020h,0d6h,0d9h	; 9f52  .-F.T..Q..... ..
	defb 01ah,0ceh,000h,08ch,084h,0cch,059h,0d8h,0cfh,017h,09dh,013h,0ddh,0c0h,01dh,04dh	; 9f62  ......Y........M
	defb 06fh,0deh,00fh,052h,000h,04bh,0cfh,018h,08dh,030h,0c6h,0cch,0d4h,01eh,0d2h,04fh	; 9f72  o..R.K...0.....O
	defb 00fh,0c0h,04bh,00fh,000h,005h,04dh,0d6h,04bh,01dh,00fh,0ddh,02ch,0cch,048h,0ech	; 9f82  ..K...M.K...,.H.
	defb 0d1h,04bh,04eh,0d3h,08fh,065h,0cch,057h,0cbh,01ch,05eh,0d0h,013h,04dh,0cbh,016h	; 9f92  .KN..e.W..^..M..
	defb 040h,098h,05eh,04fh,0d6h,0d3h,011h,018h,00dh,00fh,0a2h,0cch,0dch,08dh,099h,057h	; 9fa2  @.^O...........W
	defb 01fh,0deh,04fh,040h,0d3h,058h,09eh,04bh,056h,04fh,08eh,040h,0d8h,000h,060h,022h	; 9fb2  ..O@.X.KVO.@..`"
	defb 00fh,0d8h,009h,0cch,04eh,02ch,00eh,08bh,013h,0ceh,000h,05fh,09ch,05eh,018h,02dh	; 9fc2  ....N,....._.^.-
	defb 043h,0cch,05bh,0ceh,0d3h,01ch,08dh,0deh,000h,0cfh,0ddh,00dh,018h,08eh,04bh,01eh	; 9fd2  C.[...........K.
	defb 000h,059h,0c0h,054h,04bh,00fh,01dh,030h,082h,0cch,05ch,0e0h,0d3h,022h,0d8h,000h	; 9fe2  .Y.TK..0..\.."..
	defb 050h,0d1h,0d2h,01eh,0dch,000h,05ah,016h,019h,0deh,012h,00bh,01dh,092h	; 9ff2  P.....Z.......

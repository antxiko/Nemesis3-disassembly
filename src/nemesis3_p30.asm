; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 30 (se ejecuta en 0x8000)
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
l841fh:	equ 0x0841f

; ======================================================================
; CODIGO 0x8000..0x8017  (23 bytes)
; ======================================================================


L_8000:
	jp L_8009		;8000
L_8003:
	jp L_8523		;8003
L_8006:
	jp L_8596		;8006
L_8009:
	call 05de9h		;8009
	call 05985h		;800c
	ld bc,(0e32fh)		;800f
	ld a,c			;8013
	call 04093h		;8014

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8017..0x801d  (6 bytes)
DATA_8017:
	defb 02ah,080h,0c6h,080h,05ah,081h	; 8017

; ======================================================================
; CODIGO 0x801d..0x8035  (24 bytes)
; ======================================================================


L_801D:
	ld hl,0e32fh		;801d
	inc (hl)			;8020
	inc hl			;8021
	ld (hl),000h		;8022
	ret			;8024
L_8025:
	ld hl,0e330h		;8025
	inc (hl)			;8028
	ret			;8029
L_802A:
	push bc			;802a
	inc b			;802b
	dec b			;802c
	call nz,L_84C1		;802d
	pop bc			;8030
	ld a,b			;8031
	call 04093h		;8032

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8035..0x8043  (14 bytes)
DATA_8035:
	defb 043h,080h,057h,080h,06ch,080h,07dh,080h,08eh,080h,0a2h,080h,0b5h,080h	; 8035  C.W.l.}.......

; ======================================================================
; CODIGO 0x8043..0x80ca  (135 bytes)
; ======================================================================


L_8043:
	xor a			;8043
	call 05709h		;8044
	call L_84CB		;8047
	call L_84D5		;804a
	call 05806h		;804d
	call 05730h		;8050
	call L_8025		;8053
	ret			;8056
L_8057:
	ld de,00100h		;8057
	call 05737h		;805a
	ret c			;805d
	call 05730h		;805e
	xor a			;8061
	call 04818h		;8062
	call L_8419		;8065
	call L_8025		;8068
	ret			;806b
L_806C:
	call 04821h		;806c
	ld a,(0e5cah)		;806f
	or a			;8072
	jr z,L_8079		;8073
	call L_83EB		;8075
	ret			;8078
L_8079:
	call L_8025		;8079
	ret			;807c
L_807D:
	ld de,00180h		;807d
	call 05737h		;8080
	ret c			;8083
	call 05730h		;8084
	call 05959h		;8087
	call L_8025		;808a
	ret			;808d
L_808E:
	ld de,00100h		;808e
	call 05737h		;8091
	ret c			;8094
	call 05730h		;8095
	call 05951h		;8098
	call 05730h		;809b
	call L_8025		;809e
	ret			;80a1
L_80A2:
	ld de,00180h		;80a2
	call 05737h		;80a5
	ret c			;80a8
	call 05730h		;80a9
	call 0594dh		;80ac
	call 057eah		;80af
	jp L_8025		;80b2
L_80B5:
	ld de,00120h		;80b5
	call 05737h		;80b8
	ret c			;80bb
	call 05730h		;80bc
	call 05802h		;80bf
	call L_801D		;80c2
	ret			;80c5
L_80C6:
	ld a,b			;80c6
	call 04093h		;80c7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x80ca..0x80d6  (12 bytes)
DATA_80CA:
	defb 0d6h,080h,0e1h,080h,002h,081h,01bh,081h,032h,081h,043h,081h	; 80ca  ........2.C.

; ======================================================================
; CODIGO 0x80d6..0x815e  (136 bytes)
; ======================================================================


L_80D6:
	call L_84C1		;80d6
	xor a			;80d9
	ld (0e335h),a		;80da
	call L_8025		;80dd
	ret			;80e0
L_80E1:
	call L_84C1		;80e1
	call L_8476		;80e4
	ret c			;80e7
	call 05730h		;80e8
	call 05959h		;80eb
	call 05985h		;80ee
	ld hl,0e335h		;80f1
	inc (hl)			;80f4
	ld a,(hl)			;80f5
	cp 01fh		;80f6
	jr nc,L_80FE		;80f8
	call L_8432		;80fa
	ret			;80fd
L_80FE:
	call L_8025		;80fe
	ret			;8101
L_8102:
	call L_84C1		;8102
	ld de,000a8h		;8105
	call 05737h		;8108
	ret c			;810b
	call 05730h		;810c
	ld a,001h		;810f
	call 04818h		;8111
	call L_8419		;8114
	call L_8025		;8117
	ret			;811a
L_811B:
	call L_84C1		;811b
	call 04821h		;811e
	ld a,(0e5cah)		;8121
	or a			;8124
	jr z,L_812B		;8125
	call L_83EB		;8127
	ret			;812a
L_812B:
	call 05959h		;812b
	call L_8025		;812e
	ret			;8131
L_8132:
	call L_84C1		;8132
	ld de,00240h		;8135
	call 05737h		;8138
	ret c			;813b
	call 05730h		;813c
	call L_8025		;813f
	ret			;8142
L_8143:
	call L_84DF		;8143
	call L_84E9		;8146
	ld de,00100h		;8149
	call 05737h		;814c
	ret c			;814f
	call 05730h		;8150
	call 05648h		;8153
	call L_801D		;8156
	ret			;8159
L_815A:
	ld a,b			;815a
	call 04093h		;815b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x815e..0x818c  (46 bytes)
DATA_815E:
	defb 08ch,081h,0a6h,081h,0aeh,081h,0c3h,081h,0ceh,081h,0ebh,081h,0fah,081h,025h,082h	; 815e  ..............%.
	defb 037h,082h,067h,082h,084h,082h,0b3h,082h,0c4h,082h,0f1h,082h,015h,083h,05eh,083h	; 816e  7.g...........^.
	defb 066h,083h,077h,083h,082h,083h,0aah,083h,0b2h,083h,0c3h,083h,0ceh,083h	; 817e  f.w...........

; ======================================================================
; CODIGO 0x818c..0x81bf  (51 bytes)
; ======================================================================


L_818C:
	ld a,002h		;818c
	call 04818h		;818e
	ld hl,0c400h		;8191
	ld c,0f0h		;8194
	call 05636h		;8196
	ld a,000h		;8199
	jr z,L_819F		;819b
	ld a,020h		;819d
L_819F:
	call L_84F3		;819f
	call L_8025		;81a2
	ret			;81a5
L_81A6:
	call L_84FD		;81a6
	ret nz			;81a9
	call L_8025		;81aa
	ret			;81ad
L_81AE:
	ld de,00414h		;81ae
	call 05737h		;81b1
	ret c			;81b4
	ld hl,081bfh		;81b5
	call L_850B		;81b8
	call L_8025		;81bb
	ret			;81be

; ----------------------------------------------------------------------
; DATOS sin identificar  0x81bf..0x81c3  (4 bytes)
DATA_81BF:
	defb 007h,001h,0ffh,000h	; 81bf

; ======================================================================
; CODIGO 0x81c3..0x8221  (94 bytes)
; ======================================================================


L_81C3:
	call L_8515		;81c3
	ret nz			;81c6
	call 05959h		;81c7
	call L_8025		;81ca
	ret			;81cd
L_81CE:
	ld de,00494h		;81ce
	call 05737h		;81d1
	ret c			;81d4
	call 05730h		;81d5
	ld a,003h		;81d8
	call 04818h		;81da
	ld hl,0c400h		;81dd
	ld c,0f0h		;81e0
	ld a,080h		;81e2
	call L_84F3		;81e4
	call L_8025		;81e7
	ret			;81ea
L_81EB:
	call L_84FD		;81eb
	ret nz			;81ee
	call 05724h		;81ef
	xor a			;81f2
	ld (0e380h),a		;81f3
	call L_8025		;81f6
	ret			;81f9
L_81FA:
	ld de,000a8h		;81fa
	call 0572bh		;81fd
	ret c			;8200
	call 05724h		;8201
	call 041cfh		;8204
	call 06fb0h		;8207
	ld a,(0e380h)		;820a
	ld hl,08221h		;820d
	call 04089h		;8210
	ld c,(hl)			;8213
	call 06f89h		;8214
	call 07069h		;8217
	call 041dch		;821a
	call L_8025		;821d
	ret			;8220

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8221..0x8225  (4 bytes)
DATA_8221:
	defb 090h,030h,0a0h,050h	; 8221

; ======================================================================
; CODIGO 0x8225..0x825f  (58 bytes)
; ======================================================================


L_8225:
	call 041cfh		;8225
	call 07a3dh		;8228
	call 041dch		;822b
	ld a,(0e564h)		;822e
	or a			;8231
	ret nz			;8232
	call L_8025		;8233
	ret			;8236
L_8237:
	ld a,(0e380h)		;8237
	cp 003h		;823a
	ld de,000a8h		;823c
	jr nz,L_8244		;823f
	ld de,001a4h		;8241
L_8244:
	call 0572bh		;8244
	ret c			;8247
	call 05724h		;8248
	ld a,(0e380h)		;824b
	cp 003h		;824e
	ld hl,0825fh		;8250
	jr nz,L_8258		;8253
	ld hl,08263h		;8255
L_8258:
	call L_850B		;8258
	call L_8025		;825b
	ret			;825e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x825f..0x8267  (8 bytes)
DATA_825F:
	defb 006h,001h,0ffh,000h,007h,001h,0ffh,000h	; 825f  ........

; ======================================================================
; CODIGO 0x8267..0x82ea  (131 bytes)
; ======================================================================


L_8267:
	call L_8515		;8267
	ret nz			;826a
	call L_83DD		;826b
	ld hl,0e380h		;826e
	inc (hl)			;8271
	ld a,(hl)			;8272
	cp 004h		;8273
	jr nc,L_827D		;8275
	ld a,006h		;8277
	ld (0e330h),a		;8279
	ret			;827c
L_827D:
	call 05959h		;827d
	call L_8025		;8280
	ret			;8283
L_8284:
	ld de,007a8h		;8284
	call 05737h		;8287
	ret c			;828a
	call 05730h		;828b
	call 05648h		;828e
	call 041cfh		;8291
	call 060dfh		;8294
	ld hl,06102h		;8297
	call 060f9h		;829a
	call 041dch		;829d
	ld a,004h		;82a0
	call 04818h		;82a2
	ld hl,0c400h		;82a5
	ld c,0f0h		;82a8
	ld a,080h		;82aa
	call L_84F3		;82ac
	call L_8025		;82af
	ret			;82b2
L_82B3:
	call 041cfh		;82b3
	call 07320h		;82b6
	call 041dch		;82b9
	call L_84FD		;82bc
	ret nz			;82bf
	call L_8025		;82c0
	ret			;82c3
L_82C4:
	call 041cfh		;82c4
	call 07320h		;82c7
	call 041dch		;82ca
	ld de,002c0h		;82cd
	call 05737h		;82d0
	ret c			;82d3
	ld hl,082eah		;82d4
	call L_850B		;82d7
	call 041c7h		;82da
	ld hl,082eeh		;82dd
	call 07913h		;82e0
	call 041dch		;82e3
	call L_8025		;82e6
	ret			;82e9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x82ea..0x82f1  (7 bytes)
DATA_82EA:
	defb 007h,001h,0ffh,000h,000h,030h,0ffh	; 82ea

; ======================================================================
; CODIGO 0x82f1..0x8420  (303 bytes)
; ======================================================================


L_82F1:
	call 041cfh		;82f1
	call 07320h		;82f4
	call 041dch		;82f7
	call 041c7h		;82fa
	call 078ach		;82fd
	call 0791dh		;8300
	call 041dch		;8303
	ld a,(0e560h)		;8306
	or a			;8309
	ret nz			;830a
	call 05648h		;830b
	call 05959h		;830e
	call L_8025		;8311
	ret			;8314
L_8315:
	ld de,002f0h		;8315
	call 05737h		;8318
	ret c			;831b
	call 05730h		;831c
	ld a,003h		;831f
	call 05709h		;8321
	call 041ach		;8324
	ld ix,0b40bh		;8327
	call 04cb1h		;832b
	inc ix		;832e
	call 04d17h		;8330
	ld hl,0b421h		;8333
	ld de,0cd00h		;8336
	call 055cdh		;8339
	call 041dch		;833c
	ld de,0ca8bh		;833f
	ld hl,0cd00h		;8342
	ld bc,0080ah		;8345
	call 059a1h		;8348
	ld a,005h		;834b
	call 04818h		;834d
	ld hl,0c400h		;8350
	ld c,0f0h		;8353
	ld a,080h		;8355
	call L_84F3		;8357
	call L_8025		;835a
	ret			;835d
L_835E:
	call L_84FD		;835e
	ret nz			;8361
	call L_8025		;8362
	ret			;8365
L_8366:
	ld de,00580h		;8366
	call 05737h		;8369
	ret c			;836c
	ld hl,082eah		;836d
	call L_850B		;8370
	call L_8025		;8373
	ret			;8376
L_8377:
	call L_8515		;8377
	ret nz			;837a
	call 05959h		;837b
	call L_8025		;837e
	ret			;8381
L_8382:
	ld de,005f8h		;8382
	call 05737h		;8385
	ret c			;8388
	call 05730h		;8389
	xor a			;838c
	call 05709h		;838d
	ld a,006h		;8390
	call 04818h		;8392
	ld hl,0c400h		;8395
	ld c,0f0h		;8398
	call 05636h		;839a
	ld a,00dh		;839d
	jr z,L_83A3		;839f
	ld a,02bh		;83a1
L_83A3:
	call L_84F3		;83a3
	call L_8025		;83a6
	ret			;83a9
L_83AA:
	call L_84FD		;83aa
	ret nz			;83ad
	call L_8025		;83ae
	ret			;83b1
L_83B2:
	ld de,00180h		;83b2
	call 05737h		;83b5
	ret c			;83b8
	ld hl,082eah		;83b9
	call L_850B		;83bc
	call L_8025		;83bf
	ret			;83c2
L_83C3:
	call L_8515		;83c3
	ret nz			;83c6
	call 05959h		;83c7
	call L_8025		;83ca
	ret			;83cd
L_83CE:
	ld de,00230h		;83ce
	call 05737h		;83d1
	ret c			;83d4
	call 05730h		;83d5
	xor a			;83d8
	ld (0e32eh),a		;83d9
	ret			;83dc
L_83DD:
	ld hl,0ca00h		;83dd
	ld de,0ca01h		;83e0
	ld bc,001ffh		;83e3
	ld (hl),000h		;83e6
	ldir		;83e8
	ret			;83ea
L_83EB:
	ld a,(0e5e8h)		;83eb
	or a			;83ee
	jr nz,L_8419		;83ef
	ld hl,0e5e9h		;83f1
	ld a,(hl)			;83f4
	inc a			;83f5
	ret z			;83f6
	inc hl			;83f7
	dec (hl)			;83f8
	ret nz			;83f9
	ld (hl),007h		;83fa
	dec hl			;83fc
	inc (hl)			;83fd
	ld a,(hl)			;83fe
	cp 013h		;83ff
	jr nc,L_8413		;8401
	ld hl,l841fh		;8403
	call 04a6eh		;8406
	ld hl,00808h		;8409
	ld bc,00200h		;840c
	call 00056h		;840f   ; BIOS FILVRM - Fills VRAM with value
	ret			;8412
L_8413:
	ld a,0ffh		;8413
	ld (0e5e9h),a		;8415
	ret			;8418
L_8419:
	ld hl,00700h		;8419
	ld (0e5e9h),hl		;841c
L_841F:
	ret			;841f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8420..0x8432  (18 bytes)
DATA_8420:
	defb 040h,050h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,050h	; 8420  @P.............P
	defb 040h,000h	; 8430

; ======================================================================
; CODIGO 0x8432..0x8483  (81 bytes)
; ======================================================================


L_8432:
	ld a,(0e335h)		;8432
	ld hl,09296h		;8435
	call 04a5ah		;8438
	push hl			;843b
	pop ix		;843c
	call 04cb1h		;843e
	inc ix		;8441
	call 04d17h		;8443
	call L_844A		;8446
	ret			;8449
L_844A:
	ld a,(0e335h)		;844a
	ld hl,08a4ch		;844d
	call 04a5ah		;8450
	ld de,0cd00h		;8453
	call 055cdh		;8456
	ld a,(0e335h)		;8459
	call L_8466		;845c
	ld hl,0cd00h		;845f
	call 059a1h		;8462
	ret			;8465
L_8466:
	add a,a			;8466
	add a,a			;8467
	ld hl,089d2h		;8468
	call 04089h		;846b
	ld e,(hl)			;846e
	inc hl			;846f
	ld d,(hl)			;8470
	inc hl			;8471
	ld b,(hl)			;8472
	inc hl			;8473
	ld c,(hl)			;8474
	ret			;8475
L_8476:
	ld a,(0e335h)		;8476
	ld hl,08483h		;8479
	call 04a5ah		;847c
	ex de,hl			;847f
	jp 05737h		;8480

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8483..0x84c1  (62 bytes)
DATA_8483:
	defb 000h,000h,04dh,000h,052h,000h,053h,000h,051h,000h,053h,000h,052h,000h,052h,000h	; 8483  ..M.R.S.Q.S.R.R.
	defb 050h,000h,054h,000h,052h,000h,052h,000h,053h,000h,053h,000h,054h,000h,054h,000h	; 8493  P.T.R.R.S.S.T.T.
	defb 054h,000h,054h,000h,054h,000h,054h,000h,052h,000h,052h,000h,050h,000h,053h,000h	; 84a3  T.T.T.T.R.R.P.S.
	defb 054h,000h,053h,000h,052h,000h,055h,000h,053h,000h,054h,000h,054h,000h	; 84b3  T.S.R.U.S.T.T.

; ======================================================================
; CODIGO 0x84c1..0x85a3  (226 bytes)
; ======================================================================


L_84C1:
	call 041cfh		;84c1
	call 0bc08h		;84c4
	call 041dch		;84c7
	ret			;84ca
L_84CB:
	call 041cfh		;84cb
	call 0be34h		;84ce
	call 041dch		;84d1
	ret			;84d4
L_84D5:
	call 041cfh		;84d5
	call 0bbeeh		;84d8
	call 041dch		;84db
	ret			;84de
L_84DF:
	call 041cfh		;84df
	call 0bd0fh		;84e2
	call 041dch		;84e5
	ret			;84e8
L_84E9:
	call 041cfh		;84e9
	call 0bdech		;84ec
	call 041dch		;84ef
	ret			;84f2
L_84F3:
	call 041c7h		;84f3
	call 0796bh		;84f6
	call 041dch		;84f9
	ret			;84fc
L_84FD:
	call 041c7h		;84fd
	call 079cfh		;8500
	call 041dch		;8503
	ld a,(0e564h)		;8506
	or a			;8509
	ret			;850a
L_850B:
	call 041c7h		;850b
	call 078a2h		;850e
	call 041dch		;8511
	ret			;8514
L_8515:
	call 041c7h		;8515
	call 078ach		;8518
	call 041dch		;851b
	ld a,(0e560h)		;851e
	or a			;8521
	ret			;8522
L_8523:
	ld a,001h		;8523
	ld (0e32bh),a		;8525
	call 05718h		;8528
	ld b,0e0h		;852b
	call 04c40h		;852d
	call 04aa9h		;8530
	call L_874B		;8533
	call 05648h		;8536
	call 05de9h		;8539
	call 05636h		;853c
	jr z,L_8575		;853f
	call 041ach		;8541
	ld ix,0a906h		;8544
	call 04cb1h		;8548
	call 041dch		;854b
	call 05959h		;854e
	ld hl,0887ah		;8551
	ld de,0e800h		;8554
	call 055cdh		;8557
	ld hl,0e800h		;855a
	ld de,0ca84h		;855d
	ld bc,00a18h		;8560
	call 059a1h		;8563
	ld hl,089cah		;8566
	ld de,0ca4ah		;8569
	ld bc,0000ch		;856c
	ldir		;856f
	call 05985h		;8571
	ret			;8574
L_8575:
	call 041ach		;8575
	ld ix,0a8d8h		;8578
	call 04cb1h		;857c
	ld ix,0a8f1h		;857f
	call 04d1bh		;8583
	ld hl,01800h		;8586
	ld de,0aec6h		;8589
	call 04b3ch		;858c
	call 041dch		;858f
	call 05669h		;8592
	ret			;8595
L_8596:
	call 05de9h		;8596
	call 05dfbh		;8599
	ld a,(0e32bh)		;859c
	dec a			;859f
	call 04093h		;85a0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x85a3..0x85bd  (26 bytes)
DATA_85A3:
	defb 0bdh,085h,0d3h,085h,00ah,086h,049h,086h,06fh,086h,080h,086h,090h,086h,0c2h,086h	; 85a3  ......I.o.......
	defb 0d1h,086h,0e0h,086h,0efh,086h,001h,087h,00fh,087h	; 85b3  ..........

; ======================================================================
; CODIGO 0x85bd..0x866b  (174 bytes)
; ======================================================================


L_85BD:
	ld hl,0c4e0h		;85bd
	ld (0ebb0h),hl		;85c0
	ld hl,0c535h		;85c3
	ld (0ebb2h),hl		;85c6
	ld a,00ch		;85c9
	ld (0e331h),a		;85cb
L_85CE:
	ld hl,0e32bh		;85ce
	inc (hl)			;85d1
	ret			;85d2
L_85D3:
	call L_8791		;85d3
	ld hl,(0ebb0h)		;85d6
	dec hl			;85d9
	dec hl			;85da
	dec hl			;85db
	dec hl			;85dc
	ld (0ebb0h),hl		;85dd
	ex de,hl			;85e0
	ld hl,088c0h		;85e1
	ld bc,00210h		;85e4
	call L_882F		;85e7
	ld hl,(0ebb2h)		;85ea
	inc hl			;85ed
	inc hl			;85ee
	inc hl			;85ef
	inc hl			;85f0
	ld (0ebb2h),hl		;85f1
	ex de,hl			;85f4
	ld hl,088e0h		;85f5
	ld bc,00706h		;85f8
	call L_882F		;85fb
	ld hl,0e331h		;85fe
	dec (hl)			;8601
	ret nz			;8602
	ld a,006h		;8603
	ld (0e331h),a		;8605
	jr L_85CE		;8608
L_860A:
	call L_8791		;860a
	ld hl,(0ebb0h)		;860d
	inc hl			;8610
	inc hl			;8611
	inc hl			;8612
	inc hl			;8613
	ld (0ebb0h),hl		;8614
	ex de,hl			;8617
	ld hl,088c0h		;8618
	ld bc,00210h		;861b
	call L_882F		;861e
	ld hl,(0ebb2h)		;8621
	dec hl			;8624
	dec hl			;8625
	dec hl			;8626
	dec hl			;8627
	ld (0ebb2h),hl		;8628
	ex de,hl			;862b
	ld hl,088e0h		;862c
	ld bc,00706h		;862f
	call L_882F		;8632
	ld hl,0e331h		;8635
	dec (hl)			;8638
	ret nz			;8639
	ld a,00ah		;863a
	ld (0c50eh),a		;863c
	call 0591eh		;863f
	ld a,01eh		;8642
	ld (0e331h),a		;8644
	jr L_85CE		;8647
L_8649:
	call L_875F		;8649
	ld hl,0e331h		;864c
	dec (hl)			;864f
	ret nz			;8650
	ld hl,0890ah		;8651
	ld de,0c74dh		;8654
	ld bc,00606h		;8657
	call L_882F		;865a
	ld a,0f0h		;865d
	call L_876E		;865f
	ld hl,0866bh		;8662
	call 05ed4h		;8665
	jp L_85CE		;8668

; ----------------------------------------------------------------------
; DATOS sin identificar  0x866b..0x866f  (4 bytes)
DATA_866B:
	defb 0fah,0a8h,001h,0a9h	; 866b

; ======================================================================
; CODIGO 0x866f..0x86b2  (67 bytes)
; ======================================================================


L_866F:
	call 041ach		;866f
	call 05eech		;8672
	call 041dch		;8675
	ld a,(0e518h)		;8678
	or a			;867b
	ret nz			;867c
	jp L_85CE		;867d
L_8680:
	xor a			;8680
	ld (0ebb4h),a		;8681
	ld hl,0893bh		;8684
	ld de,0e800h		;8687
	call 055cdh		;868a
	jp L_85CE		;868d
L_8690:
	call L_87A6		;8690
	ret c			;8693
	ld hl,01520h		;8694
	ld bc,00178h		;8697
	xor a			;869a
	call 00056h		;869b   ; BIOS FILVRM - Fills VRAM with value
	ld hl,0c888h		;869e
	ld (0ebb0h),hl		;86a1
	call L_8805		;86a4
	ld hl,086b2h		;86a7
	ld c,080h		;86aa
	call L_8733		;86ac
	jp L_85CE		;86af

; ----------------------------------------------------------------------
; DATOS sin identificar  0x86b2..0x86c2  (16 bytes)
DATA_86B2:
	defb 001h,0a4h,002h,000h,001h,0a6h,010h,000h,001h,0b6h,00dh,000h,001h,0c3h,010h,000h	; 86b2  ................

; ======================================================================
; CODIGO 0x86c2..0x8781  (191 bytes)
; ======================================================================


L_86C2:
	call L_873D		;86c2
	ret nz			;86c5
	ld hl,086b6h		;86c6
	ld c,080h		;86c9
	call L_8733		;86cb
	jp L_85CE		;86ce
L_86D1:
	call L_873D		;86d1
	ret nz			;86d4
	ld hl,086bah		;86d5
	ld c,080h		;86d8
	call L_8733		;86da
	jp L_85CE		;86dd
L_86E0:
	call L_873D		;86e0
	ret nz			;86e3
	ld hl,086beh		;86e4
	ld c,080h		;86e7
	call L_8733		;86e9
	jp L_85CE		;86ec
L_86EF:
	call L_873D		;86ef
	ret nz			;86f2
	ld hl,089cah		;86f3
	ld de,0c44ah		;86f6
	ld bc,0000ch		;86f9
	ldir		;86fc
	jp L_85CE		;86fe
L_8701:
	ld a,006h		;8701
	ld (0ebb4h),a		;8703
	ld hl,0c888h		;8706
	ld (0ebb0h),hl		;8709
	jp L_85CE		;870c
L_870F:
	ld de,(0ebb0h)		;870f
	ld bc,00410h		;8713
	call L_8855		;8716
	ld hl,(0ebb0h)		;8719
	ld de,0ffc0h		;871c
	add hl,de			;871f
	ld (0ebb0h),hl		;8720
	call L_8805		;8723
	ld hl,0ebb4h		;8726
	dec (hl)			;8729
	ret nz			;872a
	call 05dfbh		;872b
	xor a			;872e
	ld (0e32bh),a		;872f
	ret			;8732
L_8733:
	call 041c7h		;8733
	call 07978h		;8736
	call 041dch		;8739
	ret			;873c
L_873D:
	call 041c7h		;873d
	call 07a3dh		;8740
	call 041dch		;8743
	ld a,(0e564h)		;8746
	or a			;8749
	ret			;874a
L_874B:
	xor a			;874b
	ld hl,02000h		;874c
	ld bc,01800h		;874f
	call 00056h		;8752   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00000h		;8755
	ld bc,01800h		;8758
	call 00056h		;875b   ; BIOS FILVRM - Fills VRAM with value
	ret			;875e
L_875F:
	ld a,(0e303h)		;875f
	and 00fh		;8762
	ld hl,08781h		;8764
	call 04a6eh		;8767
	call L_876E		;876a
	ret			;876d
L_876E:
	ld hl,00040h		;876e
	ld bc,00130h		;8771
	call 00056h		;8774   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00840h		;8777
	ld bc,00130h		;877a
	call 00056h		;877d   ; BIOS FILVRM - Fills VRAM with value
	ret			;8780

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8781..0x8791  (16 bytes)
DATA_8781:
	defb 0f0h,0e0h,050h,040h,040h,050h,0e0h,0f0h,0f0h,0e0h,090h,080h,060h,080h,090h,0e0h	; 8781  ..P@@P......`...

; ======================================================================
; CODIGO 0x8791..0x887a  (233 bytes)
; ======================================================================


L_8791:
	ld de,(0ebb0h)		;8791
	ld bc,00210h		;8795
	call L_8855		;8798
	ld de,(0ebb2h)		;879b
	ld bc,00706h		;879f
	call L_8855		;87a2
	ret			;87a5
L_87A6:
	ld a,(0e303h)		;87a6
	and 001h		;87a9
	scf			;87ab
	ret nz			;87ac
	ld a,(0ebb4h)		;87ad
	ld c,a			;87b0
	ld b,000h		;87b1
	ld hl,0c5cfh		;87b3
	or a			;87b6
	sbc hl,bc		;87b7
	ex de,hl			;87b9
	or a			;87ba
	ld hl,0e80dh		;87bb
	sbc hl,bc		;87be
	call L_87F1		;87c0
	ld a,(0ebb4h)		;87c3
	ld b,a			;87c6
	ld hl,0e80eh		;87c7
	call 04089h		;87ca
	ld a,b			;87cd
	ld de,0c5d0h		;87ce
	call 0408eh		;87d1
	call L_87F1		;87d4
	ld a,(0ebb4h)		;87d7
	cp 002h		;87da
	jr nz,L_87E9		;87dc
	ld hl,089b2h		;87de
	ld de,0ef00h		;87e1
	ld bc,00018h		;87e4
	ldir		;87e7
L_87E9:
	ld hl,0ebb4h		;87e9
	inc (hl)			;87ec
	ld a,(hl)			;87ed
	cp 00eh		;87ee
	ret			;87f0
L_87F1:
	ld b,006h		;87f1
L_87F3:
	ld a,(hl)			;87f3
	or a			;87f4
	jr z,L_87F8		;87f5
	ld (de),a			;87f7
L_87F8:
	ld a,01ch		;87f8
	call 04089h		;87fa
	ld a,040h		;87fd
	call 0408eh		;87ff
	djnz L_87F3		;8802
	ret			;8804
L_8805:
	ld hl,0892eh		;8805
	ld de,0e800h		;8808
	call 055cdh		;880b
	ld hl,(0ebb0h)		;880e
	ld de,0000eh		;8811
	add hl,de			;8814
	ex de,hl			;8815
	ld hl,0e800h		;8816
	ldi		;8819
	ldi		;881b
	ld hl,(0ebb0h)		;881d
	ld de,00040h		;8820
	add hl,de			;8823
	ex de,hl			;8824
	ld hl,0e802h		;8825
	ld bc,00310h		;8828
	call L_882F		;882b
	ret			;882e
L_882F:
	ld a,b			;882f
	exx			;8830
	ld b,a			;8831
	exx			;8832
	ld b,000h		;8833
	ld (0ef80h),bc		;8835
	ld (0ef82h),de		;8839
L_883D:
	ld bc,(0ef80h)		;883d
	ldir		;8841
	ex de,hl			;8843
	ld hl,(0ef82h)		;8844
	ld bc,00040h		;8847
	add hl,bc			;884a
	ld (0ef82h),hl		;884b
	ex de,hl			;884e
	exx			;884f
	dec b			;8850
	exx			;8851
	jr nz,L_883D		;8852
	ret			;8854
L_8855:
	ld a,b			;8855
	exx			;8856
	ld b,a			;8857
	exx			;8858
	ld (0ef80h),bc		;8859
	ex de,hl			;885d
	ld (0ef82h),hl		;885e
	ld de,00040h		;8861
L_8864:
	ld a,(0ef80h)		;8864
	ld b,a			;8867
	xor a			;8868
L_8869:
	ld (hl),a			;8869
	inc hl			;886a
	djnz L_8869		;886b
	ld hl,(0ef82h)		;886d
	add hl,de			;8870
	ld (0ef82h),hl		;8871
	exx			;8874
	dec b			;8875
	exx			;8876
	jr nz,L_8864		;8877
	ret			;8879

; ----------------------------------------------------------------------
; DATOS sin identificar  0x887a..0xa000  (6022 bytes)
DATA_887A:
	defb 004h,000h,047h,039h,043h,03ch,044h,040h,0c2h,03ah,045h,00ah,000h,045h,008h,042h	; 887a  ..G9C<D@.:E..E.B
	defb 009h,045h,00dh,00ch,000h,044h,012h,0c1h,036h,047h,013h,010h,000h,042h,046h,0c2h	; 888a  .E...D..6G...BF.
	defb 047h,049h,014h,000h,044h,04ah,014h,000h,043h,04eh,0c1h,01ah,014h,000h,042h,01bh	; 889a  GI..DJ..CN....B.
	defb 042h,01ch,022h,000h,04ah,051h,0c1h,054h,046h,05bh,0c1h,053h,042h,061h,0c2h,044h	; 88aa  B.".JQ.TF[.SBa.D
	defb 048h,042h,037h,058h,01eh,000h,012h,013h,014h,008h,008h,008h,008h,008h,008h,008h	; 88ba  HB7X............
	defb 008h,008h,008h,024h,023h,022h,000h,000h,015h,009h,009h,009h,009h,009h,009h,009h	; 88ca  ...$#"..........
	defb 009h,009h,009h,025h,000h,000h,000h,00bh,000h,000h,000h,000h,00ch,00dh,000h,000h	; 88da  ...%............
	defb 000h,000h,016h,019h,000h,00eh,01bh,01ch,016h,019h,000h,00fh,01dh,026h,016h,019h	; 88ea  .............&..
	defb 000h,000h,029h,026h,016h,018h,01ah,01ah,028h,026h,017h,02bh,02bh,02bh,02bh,027h	; 88fa  ..)&....(&.++++'
	defb 030h,03dh,03eh,04eh,04dh,040h,031h,033h,03ah,04ah,043h,041h,035h,034h,03ch,04ch	; 890a  0=>NM@13:JCA54<L
	defb 044h,045h,036h,03bh,032h,042h,04bh,046h,000h,039h,037h,047h,049h,000h,000h,000h	; 891a  DE6.2BKF.97GI...
	defb 038h,048h,000h,000h,052h,0a4h,0c3h,000h,0b6h,000h,045h,0b7h,0c1h,000h,057h,0bch	; 892a  8H..R.....E...W.
	defb 000h,004h,000h,0c3h,05bh,05fh,073h,015h,000h,0c1h,06dh,003h,06ah,0c4h,069h,072h	; 893a  ....[_s...m.j.ir
	defb 074h,06ch,002h,06ah,0c7h,06bh,056h,019h,000h,00fh,01dh,026h,002h,000h,044h,084h	; 894a  tl.j.kV....&..D.
	defb 044h,094h,002h,000h,044h,075h,0c2h,05ch,06eh,042h,079h,0c4h,076h,07bh,060h,050h	; 895a  D...Du.\nBy.v{`P
	defb 082h,071h,0c2h,052h,054h,002h,000h,044h,088h,044h,098h,0c1h,000h,082h,05ah,082h	; 896a  .q.RT..D.D....Z.
	defb 059h,0c1h,07ch,042h,063h,0cah,05eh,059h,057h,07dh,05dh,06fh,051h,053h,055h,026h	; 897a  Y.|Bc.^YW}]oQSU&
	defb 042h,080h,044h,08ch,044h,09ch,0c2h,000h,062h,002h,067h,0c2h,065h,07eh,002h,000h	; 898a  B.D.D...b.g.e~..
	defb 083h,068h,0c2h,07fh,061h,042h,010h,002h,02bh,0c1h,027h,042h,082h,044h,090h,044h	; 899a  .h..aB..+.'B.D.D
	defb 0a0h,01ah,000h,042h,0d3h,0c1h,000h,000h,03bh,070h,000h,008h,03bh,070h,00ch,001h	; 89aa  ...B.....p...p..
	defb 055h,070h,004h,008h,055h,070h,014h,006h,04fh,090h,008h,008h,04fh,090h,010h,001h	; 89ba  Up..Up..O...O...
	defb 001h,002h,003h,004h,005h,006h,007h,000h,0e0h,0e1h,0e2h,0e3h,009h,0cbh,008h,00eh	; 89ca  ................
	defb 001h,0cah,008h,00fh,003h,0cbh,008h,00ah,00fh,0cah,008h,010h,013h,0cch,008h,00ah	; 89da  ................
	defb 003h,0cch,008h,007h,014h,0cbh,008h,00ah,009h,0cah,008h,00bh,004h,0cch,007h,00fh	; 89ea  ................
	defb 002h,0cbh,008h,009h,010h,0cbh,008h,00ch,021h,0cah,006h,009h,006h,0cbh,008h,004h	; 89fa  ........!.......
	defb 011h,0cah,008h,009h,008h,0cch,007h,00ah,015h,0cbh,008h,008h,033h,0cch,006h,00ah	; 8a0a  ............3...
	defb 022h,0cah,006h,009h,013h,0cbh,008h,00bh,002h,0cch,008h,00dh,028h,0cbh,007h,006h	; 8a1a  "...........(...
	defb 013h,0cah,008h,00bh,009h,0cbh,008h,00dh,00ch,0cah,008h,009h,012h,0cch,008h,00ch	; 8a2a  ................
	defb 002h,0cch,008h,00eh,014h,0cah,008h,00bh,001h,0cah,008h,00bh,048h,0cbh,004h,010h	; 8a3a  ............H...
	defb 02bh,0cbh,006h,00bh,0f9h,091h,0d2h,090h,0a1h,091h,031h,091h,00ah,08fh,08ah,08ah	; 8a4a  +.........1.....
	defb 04bh,092h,046h,08fh,0bfh,08ah,027h,08bh,064h,08bh,09ch,08bh,060h,090h,0b8h,08bh	; 8a5a  K.F...'.d...`...
	defb 0fdh,08bh,048h,08ch,072h,08ch,09bh,08fh,0a1h,08ch,082h,090h,0cah,08fh,0f2h,08ch	; 8a6a  ..H.r...........
	defb 03eh,08dh,0a6h,08dh,0e3h,08dh,0edh,08fh,036h,08eh,075h,08eh,0bch,08eh,0edh,08eh	; 8a7a  >.......6.u.....
	defb 002h,000h,0c3h,007h,001h,01bh,002h,000h,043h,008h,0c1h,000h,083h,01eh,043h,00bh	; 8a8a  ........C.....C.
	defb 0c1h,000h,083h,021h,043h,00eh,0c1h,002h,083h,024h,043h,011h,0c1h,003h,083h,027h	; 8a9a  ...!C....$C....'
	defb 043h,014h,0c1h,004h,083h,02ah,043h,017h,0c1h,005h,083h,02dh,002h,000h,0c3h,01ah	; 8aaa  C....*C....-....
	defb 006h,02eh,002h,000h,000h,042h,002h,042h,000h,002h,000h,082h,001h,043h,00ch,002h	; 8aba  .....B.B.....C..
	defb 000h,082h,019h,042h,004h,042h,000h,002h,000h,082h,001h,043h,00fh,002h,000h,082h	; 8aca  ...B.B.....C....
	defb 01bh,042h,006h,0c1h,000h,083h,024h,004h,000h,0c1h,012h,002h,000h,082h,01dh,042h	; 8ada  .B....$........B
	defb 008h,0c1h,000h,083h,027h,0c4h,000h,013h,000h,013h,003h,000h,082h,01fh,0c4h,00ah	; 8aea  ....'...........
	defb 007h,000h,028h,002h,000h,0c1h,014h,006h,000h,0c7h,01dh,020h,00bh,009h,000h,016h	; 8afa  ..(........ ....
	defb 000h,042h,014h,042h,000h,002h,000h,082h,001h,0c8h,01fh,021h,00ah,007h,000h,017h	; 8b0a  .B.B.......!....
	defb 000h,015h,002h,000h,082h,001h,042h,000h,0c3h,000h,01dh,020h,000h,044h,010h,044h	; 8b1a  ......B.... .D.D
	defb 010h,0c1h,010h,006h,000h,042h,001h,0c1h,000h,042h,003h,004h,004h,042h,009h,0c2h	; 8b2a  .....B...B...B..
	defb 014h,000h,042h,006h,003h,000h,042h,00bh,0c1h,00fh,004h,000h,082h,001h,042h,00dh	; 8b3a  ..B...B.......B.
	defb 0c1h,015h,003h,000h,0c1h,008h,003h,000h,0c2h,005h,01ah,042h,000h,004h,000h,082h	; 8b4a  ...........B....
	defb 001h,0c1h,000h,044h,016h,044h,016h,0c1h,016h,000h,044h,001h,042h,001h,046h,005h	; 8b5a  ...D.D....D.B.F.
	defb 007h,000h,045h,00bh,007h,000h,043h,010h,003h,000h,042h,013h,0c2h,000h,015h,002h	; 8b6a  ..E...C...B.....
	defb 000h,043h,016h,002h,000h,0c1h,019h,006h,000h,043h,023h,003h,000h,0c1h,01ah,005h	; 8b7a  .C.......C#.....
	defb 000h,043h,020h,009h,000h,043h,027h,002h,000h,045h,01bh,0c1h,026h,045h,01bh,0c1h	; 8b8a  .C ..C'..E..&E..
	defb 026h,000h,047h,002h,042h,000h,048h,009h,0c2h,000h,017h,002h,000h,046h,011h,0c3h	; 8b9a  &.G.B.H......F..
	defb 000h,017h,000h,046h,027h,048h,01fh,0c1h,001h,047h,018h,082h,001h,000h,044h,002h	; 8baa  ...F'H...G....D.
	defb 042h,023h,0c1h,01eh,082h,02dh,0c1h,02ah,002h,000h,082h,001h,0c3h,025h,01fh,02eh	; 8bba  B#...-.*.....%..
	defb 002h,000h,042h,006h,002h,000h,0c4h,026h,01ah,02fh,001h,042h,006h,002h,000h,045h	; 8bca  ..B....&./.B...E
	defb 008h,002h,000h,047h,00dh,0c1h,000h,042h,014h,0c1h,000h,044h,016h,0c1h,000h,043h	; 8bda  ...G...B...D...C
	defb 01bh,0c8h,007h,000h,027h,021h,030h,000h,020h,02bh,042h,000h,042h,028h,0c1h,022h	; 8bea  ....'!0. +B.B(."
	defb 082h,032h,000h,0c1h,001h,043h,003h,0c1h,021h,003h,000h,082h,001h,0c1h,000h,046h	; 8bfa  .2...C..!......F
	defb 006h,042h,00bh,0c1h,00bh,082h,001h,0c1h,001h,043h,00dh,042h,00eh,0c2h,020h,00fh	; 8c0a  .B.......C.B.. .
	defb 042h,000h,042h,010h,042h,011h,002h,012h,042h,013h,0c1h,002h,042h,00bh,0c2h,00bh	; 8c1a  B.B.B...B...B...
	defb 022h,042h,000h,0c1h,000h,042h,015h,0c5h,00dh,00fh,020h,00fh,017h,002h,000h,0c2h	; 8c2a  "B...B.... .....
	defb 001h,015h,044h,018h,0c1h,01ah,042h,01ch,0c4h,01ah,01eh,019h,01fh,000h,046h,001h	; 8c3a  ..D...B.......F.
	defb 0c2h,000h,007h,046h,00bh,0c2h,000h,008h,046h,01eh,042h,009h,045h,011h,0c1h,000h	; 8c4a  ...F....F.B.E...
	defb 042h,019h,046h,001h,042h,026h,002h,000h,043h,016h,002h,000h,0c1h,025h,046h,01eh	; 8c5a  B.F.B&..C....%F.
	defb 0c2h,000h,024h,045h,011h,043h,01bh,000h,042h,000h,0c1h,004h,003h,000h,042h,002h	; 8c6a  ..$E.C..B.....B.
	defb 042h,000h,082h,001h,0c1h,000h,045h,004h,082h,001h,043h,009h,0c1h,000h,045h,00ch	; 8c7a  B.....E...C...E.
	defb 0c1h,00fh,04ah,011h,002h,000h,044h,01bh,082h,001h,002h,000h,082h,001h,042h,000h	; 8c8a  ..J...D.......B.
	defb 042h,000h,002h,000h,082h,001h,000h,047h,002h,044h,002h,0c3h,000h,009h,00ch,042h	; 8c9a  B......G.D.....B
	defb 00ah,002h,00dh,0c8h,000h,009h,00ch,00ah,001h,013h,00eh,01fh,042h,000h,0cbh,00fh	; 8caa  ............B...
	defb 000h,013h,00eh,01fh,000h,014h,00ch,020h,001h,00fh,002h,00dh,0c8h,014h,00ch,020h	; 8cba  ....... .......
	defb 001h,013h,00eh,020h,000h,042h,010h,0c9h,00dh,013h,00eh,020h,000h,014h,00ch,01fh	; 8cca  ... .B..... ....
	defb 012h,003h,000h,0c6h,014h,00ch,01fh,000h,01ch,00eh,042h,01dh,0c6h,000h,012h,000h	; 8cda  ..........B.....
	defb 01ch,00eh,01dh,047h,015h,044h,015h,000h,044h,002h,042h,002h,082h,005h,0c1h,006h	; 8cea  ...G.D..D.B.....
	defb 042h,002h,007h,000h,044h,007h,042h,00fh,042h,000h,002h,000h,042h,00bh,0c1h,000h	; 8cfa  B...D.B.B...B...
	defb 042h,00dh,0c1h,000h,042h,011h,002h,000h,082h,001h,042h,000h,005h,000h,082h,001h	; 8d0a  B...B.....B.....
	defb 0c1h,000h,043h,013h,0c2h,000h,016h,002h,001h,042h,000h,004h,000h,043h,017h,006h	; 8d1a  ..C......B...C..
	defb 000h,082h,001h,002h,000h,043h,01ah,0c1h,01fh,042h,01bh,0c1h,01fh,042h,01dh,042h	; 8d2a  .....C...B...B.B
	defb 01dh,0c1h,01ch,000h,0c5h,00ch,01ch,00dh,002h,00eh,003h,000h,0d6h,028h,003h,027h	; 8d3a  .............(.'
	defb 036h,026h,00fh,001h,029h,006h,029h,010h,000h,02ah,00fh,006h,00fh,004h,029h,011h	; 8d4a  6&..).)..*....).
	defb 00bh,012h,007h,042h,013h,0c1h,025h,082h,02eh,0c7h,007h,02ch,006h,02bh,015h,000h	; 8d5a  ...B..%....,.+..
	defb 02fh,002h,000h,0c3h,016h,005h,030h,002h,000h,0c5h,015h,007h,02fh,017h,000h,044h	; 8d6a  /.....0...../..D
	defb 018h,0c1h,006h,083h,035h,0c3h,022h,000h,031h,042h,022h,0c1h,03dh,043h,01dh,0c1h	; 8d7a  ....5.".1B".=C..
	defb 008h,083h,039h,002h,000h,0c5h,018h,000h,024h,03eh,000h,042h,020h,0c1h,009h,082h	; 8d8a  ..9.....$>.B ...
	defb 03bh,007h,000h,0c5h,00bh,000h,022h,00ah,03ch,005h,000h,000h,004h,000h,0c4h,002h	; 8d9a  ......".<.......
	defb 000h,003h,000h,042h,003h,003h,000h,042h,002h,042h,008h,002h,000h,0c1h,001h,042h	; 8daa  ...B...B.B.....B
	defb 005h,002h,000h,042h,00ch,006h,000h,082h,001h,002h,000h,082h,001h,005h,000h,042h	; 8dba  ...B...........B
	defb 00ah,003h,000h,0c4h,004h,000h,007h,000h,042h,00eh,0c1h,000h,042h,008h,007h,000h	; 8dca  ........B...B...
	defb 042h,00ch,042h,000h,002h,000h,082h,001h,000h,044h,000h,003h,000h,045h,004h,002h	; 8dda  B.B......D...E..
	defb 000h,042h,009h,003h,000h,043h,00bh,0c2h,00ch,000h,002h,00eh,0c1h,00fh,005h,000h	; 8dea  .B...C..........
	defb 0c4h,00dh,000h,00fh,009h,082h,00ch,002h,000h,0c1h,00bh,082h,00dh,002h,000h,0c1h	; 8dfa  ................
	defb 010h,003h,000h,002h,011h,0c7h,00eh,000h,012h,000h,013h,00fh,009h,002h,000h,0c1h	; 8e0a  ................
	defb 009h,003h,000h,0c6h,01ch,000h,014h,00ah,015h,000h,042h,00ch,007h,000h,0c2h,01ch	; 8e1a  ..........B.....
	defb 000h,047h,015h,0c1h,018h,082h,01ah,0c1h,01bh,044h,018h,000h,042h,026h,044h,024h	; 8e2a  .G.......D..B&D$
	defb 0c1h,027h,043h,025h,0c1h,024h,043h,008h,002h,000h,0c3h,00bh,000h,00ch,002h,000h	; 8e3a  .'C%.$C.........
	defb 0c1h,00dh,005h,000h,046h,00eh,002h,000h,002h,001h,002h,000h,044h,014h,006h,000h	; 8e4a  ....F.......D...
	defb 045h,018h,005h,000h,0c2h,023h,000h,044h,01dh,006h,000h,042h,021h,0c4h,028h,000h	; 8e5a  E....#.D...B!.(.
	defb 029h,000h,046h,002h,0c3h,004h,002h,004h,042h,002h,000h,044h,002h,043h,002h,044h	; 8e6a  ).F.....B..D.C.D
	defb 002h,042h,000h,002h,000h,082h,001h,003h,000h,044h,006h,003h,000h,043h,00ah,048h	; 8e7a  .B.......D...C.H
	defb 00ch,004h,000h,042h,014h,044h,002h,0c1h,016h,002h,000h,082h,001h,043h,017h,042h	; 8e8a  ...B.D.......C.B
	defb 019h,002h,000h,082h,001h,042h,01bh,002h,000h,002h,019h,0c1h,01dh,002h,000h,044h	; 8e9a  .....B.........D
	defb 01eh,002h,000h,042h,022h,0c2h,012h,015h,042h,024h,0c1h,011h,042h,026h,0c2h,012h	; 8eaa  ...B"...B$..B&..
	defb 024h,000h,0c1h,000h,042h,002h,003h,000h,003h,004h,082h,001h,043h,006h,003h,000h	; 8eba  $...B.......C...
	defb 0c1h,005h,002h,000h,082h,001h,003h,004h,046h,009h,082h,001h,0c1h,005h,004h,000h	; 8eca  ........F.......
	defb 003h,004h,046h,012h,002h,000h,082h,001h,004h,000h,082h,001h,002h,000h,043h,00fh	; 8eda  ..F...........C.
	defb 002h,000h,000h,004h,000h,042h,001h,008h,000h,044h,003h,007h,000h,044h,007h,005h	; 8eea  .....B...D...D..
	defb 000h,049h,00bh,0c1h,000h,050h,014h,0c1h,000h,042h,024h,0c1h,000h,042h,026h,000h	; 8efa  .I...P...B$..B&.
	defb 04ah,011h,044h,002h,0c3h,001h,021h,001h,043h,01bh,042h,002h,002h,002h,0c1h,005h	; 8f0a  J.D...!.C.B.....
	defb 042h,021h,043h,01eh,042h,002h,042h,002h,0c2h,021h,023h,044h,00dh,042h,002h,0c3h	; 8f1a  B!C.B.B..!#D.B..
	defb 002h,021h,001h,042h,021h,043h,031h,042h,004h,0c5h,021h,001h,021h,001h,021h,043h	; 8f2a  .!.B!C1B..!.!.!C
	defb 02eh,04ah,024h,045h,006h,0c1h,009h,042h,007h,042h,00bh,000h,042h,001h,0c2h,001h	; 8f3a  .J$E...B.B..B...
	defb 004h,003h,000h,0c2h,005h,002h,042h,006h,008h,000h,0c1h,008h,042h,006h,003h,000h	; 8f4a  ......B.....B...
	defb 0c3h,013h,009h,015h,045h,00ah,003h,000h,0c1h,003h,042h,006h,0c1h,006h,005h,000h	; 8f5a  ....E.....B.....
	defb 0c2h,013h,009h,082h,007h,0c3h,014h,00fh,016h,003h,000h,0c6h,00fh,012h,00fh,012h	; 8f6a  ................
	defb 00fh,016h,042h,006h,0c4h,011h,007h,011h,002h,082h,007h,082h,007h,082h,007h,082h	; 8f7a  ..B.............
	defb 007h,082h,007h,0c8h,006h,014h,00fh,016h,006h,014h,00fh,016h,042h,006h,0c1h,006h	; 8f8a  ............B...
	defb 000h,004h,000h,0c4h,002h,015h,002h,015h,042h,000h,042h,000h,0c1h,000h,044h,003h	; 8f9a  ........B.B...D.
	defb 0c1h,000h,042h,010h,002h,000h,0c1h,007h,004h,000h,082h,001h,0c1h,001h,045h,008h	; 8faa  ..B...........E.
	defb 004h,000h,043h,00dh,0c2h,00fh,014h,042h,000h,004h,000h,042h,012h,082h,001h,000h	; 8fba  ..C....B...B....
	defb 003h,000h,002h,001h,0c3h,002h,000h,003h,082h,001h,003h,000h,044h,004h,0c1h,000h	; 8fca  ............D...
	defb 049h,008h,0c2h,001h,011h,003h,000h,042h,012h,082h,001h,002h,000h,0c4h,015h,001h	; 8fda  I......B........
	defb 014h,000h,000h,042h,019h,082h,026h,0c1h,002h,003h,000h,0c9h,003h,01bh,027h,004h	; 8fea  ...B..&.......'.
	defb 01bh,027h,000h,010h,01ch,042h,000h,003h,000h,0c1h,001h,042h,005h,0c3h,000h,011h	; 8ffa  .'...B.....B....
	defb 01dh,002h,000h,043h,007h,003h,009h,0c1h,000h,042h,00ah,0c4h,000h,010h,01ch,000h	; 900a  ...C.....B......
	defb 042h,00eh,0c1h,00ch,005h,000h,0c2h,010h,01ch,004h,000h,042h,005h,002h,000h,082h	; 901a  B..........B....
	defb 001h,003h,000h,082h,001h,0c3h,014h,020h,015h,042h,00ah,0c1h,021h,004h,000h,042h	; 902a  ....... .B..!..B
	defb 00eh,002h,000h,0c2h,012h,01eh,042h,028h,082h,02ch,0c2h,000h,00ch,002h,000h,0c2h	; 903a  ......B(.,......
	defb 028h,02bh,002h,000h,0c2h,013h,01fh,042h,016h,082h,023h,003h,00dh,0c7h,018h,02ah	; 904a  (+.....B..#....*
	defb 02dh,024h,018h,02ah,02dh,000h,002h,000h,0c1h,002h,042h,000h,0c1h,000h,042h,003h	; 905a  -$.*-.....B...B.
	defb 042h,000h,0c1h,000h,046h,005h,0c1h,000h,042h,00bh,082h,001h,0c4h,000h,005h,000h	; 906a  B...F...B.......
	defb 00dh,082h,00fh,082h,001h,002h,000h,000h,044h,002h,0c3h,00dh,012h,00dh,044h,002h	; 907a  ........D.....D.
	defb 0c3h,012h,00dh,000h,042h,006h,042h,000h,003h,000h,042h,006h,0c3h,000h,00eh,013h	; 908a  ....B.B...B.....
	defb 00bh,000h,0c2h,00fh,014h,082h,001h,0c2h,010h,015h,043h,008h,006h,00ah,007h,000h	; 909a  ..........C.....
	defb 0c2h,00eh,013h,004h,000h,082h,001h,004h,000h,0c3h,001h,00fh,014h,002h,000h,082h	; 90aa  ................
	defb 001h,008h,000h,0c3h,011h,000h,011h,002h,000h,042h,00bh,042h,00bh,042h,00bh,042h	; 90ba  .........B.B.B.B
	defb 00bh,042h,00bh,042h,00bh,0c1h,00bh,000h,042h,002h,043h,002h,002h,000h,082h,001h	; 90ca  .B.B....B.C.....
	defb 006h,000h,0c1h,001h,043h,006h,042h,008h,002h,000h,043h,00ah,003h,000h,0c3h,001h	; 90da  ....C.B...C.....
	defb 005h,000h,042h,00dh,002h,000h,047h,00fh,0c3h,00dh,000h,034h,04ch,016h,0c2h,017h	; 90ea  ..B...G....4L...
	defb 022h,002h,000h,045h,023h,0c1h,025h,043h,028h,083h,037h,0c1h,02bh,003h,000h,082h	; 90fa  "..E#.%C(.7.+...
	defb 001h,002h,000h,044h,02ch,0c1h,038h,042h,000h,002h,000h,082h,001h,003h,000h,0c2h	; 910a  ...D,.8B........
	defb 030h,000h,042h,031h,002h,000h,0c1h,030h,007h,000h,0c1h,033h,042h,002h,042h,002h	; 911a  0.B1...0...3B.B.
	defb 042h,002h,0c3h,002h,004h,000h,000h,042h,002h,042h,002h,042h,002h,042h,002h,042h	; 912a  B......B.B.B.B.B
	defb 002h,042h,002h,042h,002h,042h,002h,042h,000h,0c1h,000h,042h,004h,004h,000h,042h	; 913a  .B.B.B.B...B...B
	defb 006h,042h,007h,003h,000h,082h,001h,0c2h,000h,009h,002h,000h,082h,001h,042h,00ah	; 914a  .B............B.
	defb 002h,00ah,042h,000h,0c2h,000h,00ch,002h,000h,0c2h,009h,00dh,005h,000h,0c1h,00ch	; 915a  ..B.............
	defb 00ch,000h,082h,001h,004h,000h,0c1h,00ch,002h,000h,002h,001h,042h,000h,042h,00fh	; 916a  ............B.B.
	defb 082h,001h,042h,000h,002h,000h,042h,00fh,042h,000h,0c1h,000h,042h,018h,0c1h,000h	; 917a  ..B...B.B...B...
	defb 043h,011h,042h,018h,042h,018h,0c1h,000h,043h,011h,044h,018h,044h,014h,042h,01ah	; 918a  C.B.B...C.D.D.B.
	defb 042h,01ah,044h,014h,042h,01ah,000h,0c1h,017h,043h,003h,042h,004h,082h,004h,042h	; 919a  B.D.B....C.B...B
	defb 004h,0c2h,000h,007h,082h,001h,042h,008h,0c2h,000h,007h,002h,000h,042h,00eh,082h	; 91aa  ......B......B..
	defb 01ah,082h,01ah,042h,000h,042h,000h,043h,010h,042h,015h,0c1h,016h,042h,000h,002h	; 91ba  ...B.B.C.B...B..
	defb 000h,042h,00ch,0c1h,013h,003h,000h,0c1h,01fh,042h,000h,002h,000h,0c1h,014h,042h	; 91ca  .B.......B.....B
	defb 000h,0c1h,000h,042h,00ah,0c1h,01eh,002h,000h,082h,001h,0c3h,000h,006h,001h,043h	; 91da  ...B...........C
	defb 01bh,0c2h,020h,002h,042h,017h,042h,017h,042h,017h,042h,017h,042h,017h,000h,0c1h	; 91ea  .. .B.B.B.B.B...
	defb 03dh,082h,001h,042h,003h,0c1h,03fh,042h,005h,0c1h,04bh,045h,007h,046h,040h,042h	; 91fa  =..B..?B..KE.F@B
	defb 00ch,086h,051h,0c1h,002h,044h,046h,044h,00eh,084h,055h,002h,001h,0c2h,000h,002h	; 920a  ..Q..DFD..U.....
	defb 002h,04ah,044h,012h,0c2h,056h,03dh,042h,000h,003h,000h,043h,016h,0c1h,001h,047h	; 921a  .JD..V=B...C...G
	defb 019h,0c2h,002h,000h,043h,020h,0c1h,000h,046h,023h,0c3h,03dh,000h,03eh,04ah,029h	; 922a  ....C ..F#.=.>J)
	defb 0c1h,000h,042h,033h,0c3h,000h,017h,035h,082h,001h,042h,001h,0c1h,000h,047h,036h	; 923a  ..B3...5..B...G6
	defb 000h,044h,002h,042h,007h,0c1h,006h,042h,009h,0c1h,005h,082h,001h,002h,000h,042h	; 924a  .D.B...B.......B
	defb 00bh,0c1h,000h,042h,00dh,003h,000h,082h,001h,042h,00fh,082h,001h,0c1h,011h,005h	; 925a  ...B.....B......
	defb 000h,042h,012h,0c1h,000h,042h,00bh,005h,000h,0c1h,014h,002h,000h,042h,00fh,003h	; 926a  .B...B.......B..
	defb 000h,002h,015h,042h,016h,0c1h,000h,042h,012h,0c1h,001h,045h,01ah,042h,01dh,0c1h	; 927a  ...B...B...E.B..
	defb 018h,042h,01dh,082h,01ah,082h,01ah,082h,01ah,082h,01ah,082h,01ah,000h,0d4h,092h	; 928a  .B..............
	defb 0e0h,092h,0f4h,092h,004h,093h,00ch,093h,018h,093h,024h,093h,030h,093h,03ch,093h	; 929a  ..........$.0.<.
	defb 048h,093h,054h,093h,064h,093h,070h,093h,078h,093h,084h,093h,090h,093h,09ch,093h	; 92aa  H.T.d.p.x.......
	defb 0a4h,093h,0b0h,093h,0c0h,093h,0cch,093h,0dch,093h,0e8h,093h,0f4h,093h,000h,094h	; 92ba  ................
	defb 00ch,094h,020h,094h,030h,094h,038h,094h,044h,094h,002h,04ch,094h,001h,082h,096h	; 92ca  .. .0.8.D..L....
	defb 000h,03fh,04bh,012h,00ch,000h,004h,029h,098h,001h,0a4h,099h,000h,004h,033h,024h	; 92da  .?K....)......3$
	defb 002h,023h,035h,024h,003h,02ch,038h,024h,001h,000h,002h,081h,09ah,001h,02fh,09bh	; 92ea  .#5$.,8$....../.
	defb 000h,00eh,019h,012h,002h,010h,01bh,092h,006h,000h,004h,08ah,09bh,001h,04ah,09ch	; 92fa  ..............J.
	defb 000h,000h,001h,09bh,09ch,001h,0b5h,09dh,000h,011h,024h,089h,010h,000h,001h,0a7h	; 930a  ..........$.....
	defb 09eh,001h,05fh,09fh,000h,007h,01bh,009h,014h,000h,002h,0cdh,09fh,001h,088h,0a0h	; 931a  .._.............
	defb 000h,002h,01ah,092h,005h,000h,004h,019h,0a1h,001h,0a8h,0a1h,000h,012h,014h,024h	; 932a  ...............$
	defb 002h,000h,001h,035h,0a2h,001h,0e0h,0a2h,000h,002h,018h,009h,011h,000h,002h,064h	; 933a  ...5...........d
	defb 0a3h,001h,0f5h,0a3h,000h,00fh,015h,092h,006h,000h,002h,038h,0a4h,001h,057h,0a5h	; 934a  ...........8..W.
	defb 000h,01fh,026h,012h,001h,023h,027h,092h,003h,000h,004h,03eh,0a6h,001h,0e0h,0a6h	; 935a  ..&..#'....>....
	defb 000h,002h,018h,0a4h,015h,000h,002h,033h,0a7h,001h,09bh,0a7h,000h,000h,004h,0e2h	; 936a  .......3........
	defb 0a7h,001h,026h,0a9h,000h,023h,02ch,024h,007h,000h,001h,016h,0aah,001h,0feh,0aah	; 937a  ..&..#,$........
	defb 000h,002h,021h,009h,002h,000h,002h,0b5h,0abh,001h,093h,0ach,000h,001h,01eh,092h	; 938a  ..!.............
	defb 00ah,000h,001h,070h,0adh,001h,049h,0aeh,000h,000h,004h,0beh,0aeh,001h,04fh,0afh	; 939a  ...p..I.......O.
	defb 000h,002h,015h,024h,001h,000h,002h,0b6h,0afh,001h,053h,0b0h,000h,002h,015h,092h	; 93aa  ...$......S.....
	defb 00ah,013h,01fh,012h,002h,000h,001h,092h,0b0h,001h,00bh,0b1h,000h,00dh,012h,009h	; 93ba  ................
	defb 004h,000h,002h,047h,0b1h,001h,0e5h,0b1h,000h,002h,015h,012h,001h,015h,015h,092h	; 93ca  ...G............
	defb 001h,000h,004h,045h,0b2h,001h,000h,0b3h,000h,002h,01bh,0a4h,005h,000h,002h,066h	; 93da  ...E...........f
	defb 0b3h,001h,083h,0b4h,000h,00ch,026h,012h,019h,000h,004h,082h,0b5h,001h,0d5h,0b5h	; 93ea  ......&.........
	defb 000h,008h,00ch,0a4h,004h,000h,001h,002h,0b6h,001h,0cdh,0b6h,000h,00fh,01ch,009h	; 93fa  ................
	defb 001h,000h,001h,048h,0b7h,001h,010h,0b8h,000h,010h,01ch,009h,00ch,019h,028h,089h	; 940a  ...H..........(.
	defb 003h,028h,02bh,009h,003h,000h,004h,0a9h,0b8h,001h,0b2h,0b9h,000h,004h,024h,0a4h	; 941a  .(+...........$.
	defb 004h,00ch,028h,0a4h,002h,000h,004h,02bh,0bah,001h,04fh,0bbh,000h,000h,002h,036h	; 942a  ..(....+..O....6
	defb 0bch,001h,099h,0bch,000h,006h,00fh,092h,009h,000h,002h,0deh,0bch,001h,008h,0beh	; 943a  ................
	defb 000h,000h,003h,000h,084h,020h,001h,000h,004h,003h,000h,083h,040h,000h,002h,003h	; 944a  ..... ......@...
	defb 000h,085h,01fh,07fh,01fh,00fh,002h,003h,000h,083h,0feh,0f0h,0c0h,003h,000h,0a4h	; 945a  ................
	defb 001h,017h,001h,003h,001h,02bh,036h,0f8h,061h,00ch,080h,0c0h,080h,0d4h,06ch,0e0h	; 946a  .....+6.a.....l.
	defb 086h,030h,004h,02eh,01fh,03ch,03fh,004h,080h,0e8h,000h,040h,0c0h,0e0h,080h,009h	; 947a  .0...<?....@....
	defb 017h,009h,003h,01fh,003h,000h,086h,020h,0d0h,020h,0c3h,00eh,07fh,005h,000h,085h	; 948a  ....... . ......
	defb 0c3h,00eh,038h,003h,00fh,003h,000h,0b4h,0f0h,01fh,0c8h,004h,058h,072h,0f8h,074h	; 949a  ..8.........Xr.t
	defb 00fh,0f8h,013h,038h,0ffh,03fh,0bfh,0f8h,026h,044h,083h,0c1h,02bh,0d4h,011h,0fbh	; 94aa  ...8.?..&D..+...
	defb 01fh,007h,01fh,0e0h,0f0h,080h,0f8h,0e7h,0f8h,0e0h,0f8h,03fh,00fh,03fh,003h,03fh	; 94ba  ...........?.?.?
	defb 064h,022h,0c1h,083h,0d4h,02bh,0e0h,003h,07dh,0fch,07ch,003h,004h,000h,093h,0dfh	; 94ca  d"...+..}.|.....
	defb 018h,007h,03fh,00fh,00fh,000h,000h,0e3h,047h,043h,0deh,021h,030h,030h,059h,037h	; 94da  ..?.....GC.!00Y7
	defb 02fh,00fh,005h,0a0h,085h,008h,00ch,006h,003h,003h,003h,000h,090h,006h,01fh,077h	; 94ea  /..............w
	defb 0efh,047h,00eh,01ch,078h,000h,041h,082h,020h,08ch,038h,062h,0c4h,004h,000h,08eh	; 94fa  .G..x.A. .8b....
	defb 001h,006h,01fh,07fh,05bh,069h,04dh,0b1h,0cdh,099h,022h,0fch,0a0h,0a0h,003h,01fh	; 950a  ....[iM...".....
	defb 083h,0a7h,0abh,0edh,003h,000h,085h,0fch,0c3h,03ch,0cfh,0c0h,004h,000h,0a8h,0f1h	; 951a  .........<......
	defb 01fh,0fch,0f1h,000h,000h,007h,03fh,0c7h,0f8h,01fh,0e0h,00fh,07ah,0e4h,0d8h,0b0h	; 952a  ......?.....z...
	defb 0a0h,040h,080h,03ch,07eh,0f3h,0e0h,07ch,07eh,03ch,000h,000h,004h,00ah,01fh,07ch	; 953a  .@.<~..|~<.....|
	defb 0c0h,080h,003h,008h,030h,060h,080h,003h,000h,0aeh,0f0h,000h,001h,007h,00fh,03ch	; 954a  ....0`.........<
	defb 072h,0fdh,0e0h,0e5h,0cbh,0e7h,03fh,0f4h,068h,0c0h,082h,0c0h,080h,0ffh,0f8h,0ffh	; 955a  r.....?.h.......
	defb 0e0h,01fh,00fh,072h,057h,0a8h,0abh,0ach,069h,093h,003h,0feh,060h,008h,0b2h,00ah	; 956a  ...rW...i...`...
	defb 0e2h,0e0h,0f0h,00bh,022h,08ch,090h,0a0h,003h,000h,092h,01ah,038h,0cfh,007h,01fh	; 957a  ....".......8...
	defb 03fh,03fh,07fh,026h,07fh,0f8h,0e0h,0e0h,0c0h,0c7h,0c0h,007h,003h,006h,000h,085h	; 958a  ??.&............
	defb 0ffh,087h,07bh,00dh,003h,003h,000h,08ch,0e6h,0d9h,0b7h,06ch,050h,0c0h,000h,000h	; 959a  ..{........lP...
	defb 0fch,0e7h,01ch,0f0h,004h,000h,084h,018h,06bh,014h,003h,004h,000h,002h,01fh,003h	; 95aa  ........k.......
	defb 03fh,003h,01fh,002h,087h,0a2h,0c7h,0c3h,0c3h,0c1h,0c0h,0c0h,0f8h,0f8h,0fch,0fch	; 95ba  ?...............
	defb 0feh,0feh,03ch,07fh,030h,048h,090h,060h,007h,003h,001h,00fh,018h,03ch,00eh,0deh	; 95ca  ..<.0H.`.....<..
	defb 0ffh,0ffh,0feh,0feh,0fch,0f8h,0f8h,0f0h,004h,000h,003h,00fh,003h,007h,082h,003h	; 95da  ................
	defb 002h,004h,0c0h,08eh,040h,0c0h,040h,080h,02fh,01fh,00fh,007h,003h,001h,000h,000h	; 95ea  ....@.@./.......
	defb 080h,080h,003h,0c0h,0abh,060h,0e0h,050h,003h,00fh,01fh,00fh,000h,000h,008h,000h	; 95fa  .....`.P........
	defb 0fch,0f8h,0f0h,0e0h,000h,001h,000h,008h,000h,000h,010h,000h,000h,01fh,07fh,01eh	; 960a  ................
	defb 000h,004h,004h,01eh,004h,004h,000h,000h,070h,0fch,0feh,01eh,07fh,07fh,03fh,01eh	; 961a  ........p.....?.
	defb 004h,000h,084h,020h,040h,063h,0ach,006h,000h,0aeh,004h,003h,000h,000h,003h,006h	; 962a  ... @c..........
	defb 03fh,0fah,03fh,0c0h,000h,000h,080h,0c1h,04fh,0bfh,066h,099h,003h,000h,003h,007h	; 963a  ?.?.....O.f.....
	defb 0f8h,0c7h,0c0h,0bfh,061h,03fh,08fh,080h,00fh,0c7h,06ch,007h,0cfh,033h,0f9h,0cch	; 964a  ....a?....l..3..
	defb 03fh,039h,07ch,010h,038h,00fh,07fh,007h,004h,000h,09ah,0ffh,0e0h,0ffh,00fh,0fch	; 965a  ?9|.8...........
	defb 01fh,001h,000h,059h,003h,003h,0fch,03eh,0fch,0fch,00fh,092h,024h,001h,0f0h,0f0h	; 966a  ...Y...>....$...
	defb 007h,00fh,002h,0fch,00fh,006h,000h,000h,004h,060h,081h,050h,003h,040h,004h,0a0h	; 967a  .........`.P.@..
	defb 004h,050h,081h,096h,00dh,060h,0a3h,020h,030h,020h,030h,020h,030h,020h,032h,020h	; 968a  .P...`. 0 0 0 2
	defb 084h,0c0h,020h,0c0h,020h,0c0h,0c2h,0c0h,084h,020h,0c0h,070h,0f7h,070h,050h,020h	; 969a  .. . .... .p.pP
	defb 030h,060h,060h,0c0h,070h,040h,070h,020h,070h,096h,004h,090h,085h,070h,020h,070h	; 96aa  0``.p@p p....p p
	defb 096h,096h,006h,060h,004h,096h,002h,090h,092h,000h,090h,030h,030h,080h,082h,083h	; 96ba  ...`.......00...
	defb 082h,092h,083h,030h,030h,080h,032h,030h,020h,020h,032h,004h,0c2h,094h,030h,0c0h	; 96ca  ...00.20  2...0.
	defb 020h,020h,032h,043h,083h,0c2h,042h,042h,020h,020h,032h,043h,083h,0c2h,042h,0c2h	; 96da    2C..BB  2C..B.
	defb 0fch,0fch,004h,0c2h,086h,030h,0c0h,0fch,0c7h,0c0h,020h,006h,0c0h,003h,030h,082h	; 96ea  .....0.... ...0.
	defb 020h,092h,003h,020h,08ch,0c7h,0fch,0fch,0c7h,0f0h,0fch,0f0h,040h,0c5h,0c4h,0c4h	; 96fa   .. ........@...
	defb 050h,008h,040h,004h,050h,002h,040h,081h,050h,005h,040h,006h,050h,002h,040h,005h	; 970a  P.@.P.@.P.@.P.@.
	defb 070h,003h,0f0h,007h,040h,086h,070h,040h,040h,074h,054h,054h,003h,040h,004h,070h	; 971a  p...@.p@@tTT.@.p
	defb 003h,050h,081h,085h,005h,070h,002h,050h,081h,040h,003h,0f0h,085h,0e0h,070h,050h	; 972a  .P...p.P.@....pP
	defb 040h,040h,003h,0f0h,005h,0e0h,002h,090h,085h,096h,098h,086h,080h,060h,003h,040h	; 973a  @@...........`.@
	defb 002h,050h,084h,040h,050h,050h,0f0h,003h,040h,004h,050h,008h,0f0h,094h,0f4h,0f7h	; 974a  .P.@PP..@.P.....
	defb 075h,075h,070h,075h,075h,054h,040h,075h,075h,050h,054h,040h,070h,040h,0a4h,040h	; 975a  uupuuT@uuPT@p@.@
	defb 040h,070h,004h,040h,081h,0a0h,003h,040h,002h,070h,083h,040h,0a0h,0a0h,009h,040h	; 976a  @p.@...@.p.@...@
	defb 081h,050h,004h,040h,002h,050h,084h,040h,050h,040h,050h,003h,040h,082h,054h,0f0h	; 977a  .P.@.P.@P@P.@.T.
	defb 007h,0e0h,002h,0f0h,006h,0e0h,003h,0f0h,005h,0e0h,010h,040h,006h,0a0h,082h,0b0h	; 978a  ...........@....
	defb 0f0h,005h,0a0h,083h,0b0h,0f0h,0b0h,004h,0a0h,084h,0b0h,0f0h,0fbh,0f0h,004h,040h	; 979a  ...............@
	defb 004h,080h,004h,090h,004h,080h,081h,050h,007h,040h,002h,0f0h,006h,0b0h,004h,0f0h	; 97aa  .......P.@......
	defb 014h,0b0h,003h,080h,003h,060h,081h,0f0h,003h,080h,003h,060h,081h,020h,003h,0f0h	; 97ba  .....`.....`. ..
	defb 004h,0d0h,088h,060h,090h,096h,090h,040h,070h,0f0h,070h,003h,040h,085h,080h,090h	; 97ca  ...`...@p.p.@...
	defb 090h,098h,080h,003h,060h,008h,020h,007h,060h,081h,0f0h,004h,030h,003h,020h,081h	; 97da  ....`. .`...0. .
	defb 0f2h,003h,030h,088h,020h,030h,020h,040h,020h,030h,030h,070h,003h,0c3h,08ah,032h	; 97ea  ..0. 0 @ 00p...2
	defb 030h,0c3h,0c5h,030h,0c3h,043h,0c4h,032h,032h,004h,020h,086h,0c0h,083h,032h,0c2h	; 97fa  0..0.C.22. ...2.
	defb 042h,042h,006h,0c0h,084h,020h,043h,040h,042h,004h,0c0h,002h,0c2h,08eh,0c3h,043h	; 980a  BB... C@B......C
	defb 040h,0c0h,0c2h,0c0h,0c2h,0c3h,0c2h,030h,0c3h,0c0h,082h,082h,008h,0c0h,000h,002h	; 981a  @......0........
	defb 000h,081h,040h,005h,000h,084h,098h,03dh,0d8h,0c3h,004h,000h,084h,086h,0b6h,039h	; 982a  ..@....=.......9
	defb 054h,004h,000h,084h,080h,0b0h,038h,050h,007h,000h,083h,00eh,01fh,00eh,004h,000h	; 983a  T.....8P........
	defb 08eh,0c0h,078h,03fh,03ch,060h,000h,000h,040h,0a0h,040h,080h,040h,0a0h,040h,004h	; 984a  ..x?<`..@.@.@.@.
	defb 000h,081h,0ffh,003h,000h,0a0h,010h,086h,029h,054h,03eh,018h,041h,014h,000h,000h	; 985a  ........)T>.A...
	defb 001h,001h,003h,003h,007h,007h,080h,091h,0a0h,0b4h,070h,0d8h,0dch,0d8h,000h,000h	; 986a  ..........p.....
	defb 080h,0c0h,040h,060h,0e0h,0b0h,006h,000h,002h,001h,006h,000h,002h,011h,004h,000h	; 987a  ..@`............
	defb 0ach,001h,003h,027h,0f7h,000h,000h,010h,0b8h,080h,043h,0efh,0dfh,00fh,01fh,03fh	; 988a  ...'......C....?
	defb 07fh,0feh,0feh,0fdh,0ffh,098h,0b8h,0b8h,038h,078h,0e8h,0c4h,0c2h,0d0h,0d8h,06ch	; 989a  ........8x.....l
	defb 066h,0b3h,0b9h,09fh,0cdh,000h,000h,040h,0e0h,0f0h,0f8h,0ach,0c1h,005h,000h,083h	; 98aa  f......@........
	defb 040h,0c0h,0a0h,005h,000h,083h,005h,00eh,004h,003h,003h,0a0h,006h,001h,06dh,0ddh	; 98ba  @.............m.
	defb 008h,0bbh,0bbh,0b7h,06ah,011h,0efh,09eh,01eh,000h,080h,080h,087h,07fh,0ffh,0deh	; 98ca  ....j...........
	defb 039h,002h,007h,06fh,0f7h,0ffh,0ffh,07ch,099h,071h,028h,09fh,003h,0ffh,0fch,0e1h	; 98da  9..o...|.q(.....
	defb 0ceh,0eeh,09ch,063h,006h,002h,0ffh,0d6h,039h,0ffh,0f0h,0fch,0f8h,0e0h,0feh,010h	; 98ea  ...c....9.......
	defb 0cch,080h,0ffh,0feh,0f6h,07bh,059h,00ch,0c4h,0ceh,0f6h,0fbh,0ffh,02fh,011h,031h	; 98fa  .....{Y....../.1
	defb 07bh,0f3h,079h,03ch,0d7h,0b9h,0c4h,0cdh,0ech,0a0h,050h,00ch,01ch,00ah,04ch,09eh	; 990a  {.y<......P...L.
	defb 00ch,000h,080h,080h,040h,000h,080h,0bdh,018h,0c0h,0cdh,022h,015h,00ah,008h,000h	; 991a  ....@......"....
	defb 000h,084h,0ceh,000h,0a6h,088h,036h,011h,000h,003h,0b3h,000h,066h,0a1h,014h,022h	; 992a  ......6.....f.."
	defb 000h,0e3h,0cch,000h,024h,035h,090h,088h,000h,021h,073h,000h,026h,032h,093h,089h	; 993a  ....$5...!s.&2..
	defb 002h,0e3h,0cch,000h,092h,00ch,00eh,044h,044h,021h,073h,000h,044h,062h,02ah,031h	; 994a  .......DD!s.Db*1
	defb 011h,003h,0b3h,000h,020h,02ah,091h,091h,010h,0e3h,0cch,006h,000h,083h,008h,005h	; 995a  .... *..........
	defb 002h,005h,000h,08dh,025h,021h,008h,005h,002h,002h,000h,000h,005h,044h,022h,02ah	; 996a  ....%!.......D"*
	defb 010h,003h,000h,083h,044h,020h,0a0h,006h,000h,087h,008h,00ch,01ch,018h,01ah,020h	; 997a  ....D .........
	defb 008h,003h,000h,095h,004h,006h,00ch,00dh,002h,000h,000h,044h,0cch,0ech,0deh,04ah	; 998a  ...........D...J
	defb 044h,000h,020h,020h,072h,066h,0f7h,06eh,012h,000h,00ah,0f0h,081h,070h,005h,050h	; 999a  D.  rf.n.....p.P
	defb 083h,0f0h,070h,050h,005h,070h,002h,0f0h,081h,050h,005h,070h,008h,090h,003h,0f0h	; 99aa  ..pP.p...P.p....
	defb 081h,070h,00ch,0f0h,008h,070h,008h,080h,00ah,0f0h,006h,0f4h,008h,040h,017h,0f0h	; 99ba  .p...p.......@..
	defb 081h,074h,003h,0f0h,005h,0f4h,003h,0f0h,004h,0f4h,081h,0f0h,008h,0f4h,008h,040h	; 99ca  .t.............@
	defb 004h,0f0h,081h,070h,003h,040h,006h,0f0h,082h,070h,040h,006h,0f0h,082h,070h,050h	; 99da  ...p.@...p@...pP
	defb 004h,0f0h,084h,060h,0f0h,070h,050h,004h,0f0h,084h,060h,0f0h,070h,050h,005h,0f0h	; 99ea  ...`.pP...`.pP..
	defb 081h,070h,005h,0f0h,081h,074h,003h,070h,081h,0f0h,003h,074h,003h,070h,082h,0f0h	; 99fa  .p...t.p...t.p..
	defb 070h,005h,0f7h,085h,070h,0f7h,070h,0f0h,0f7h,003h,074h,084h,040h,0f0h,0f0h,074h	; 9a0a  p...p.p...t.@..t
	defb 005h,040h,082h,070h,050h,006h,040h,082h,0f0h,070h,006h,040h,002h,0f0h,002h,040h	; 9a1a  .@.pP.@..p.@...@
	defb 086h,050h,040h,040h,0f0h,070h,070h,005h,0f0h,085h,060h,0f0h,070h,070h,050h,003h	; 9a2a  .P@@.pp...`.ppP.
	defb 040h,004h,050h,005h,040h,002h,050h,082h,070h,050h,006h,040h,082h,070h,050h,003h	; 9a3a  @.P.@.P.pP.@.pP.
	defb 040h,004h,050h,005h,040h,084h,050h,040h,070h,050h,006h,040h,081h,050h,005h,040h	; 9a4a  @.P.@.P@pP.@.P.@
	defb 002h,050h,083h,070h,050h,050h,005h,040h,081h,070h,007h,050h,008h,040h,002h,050h	; 9a5a  .P.pPP.@.p.P.@.P
	defb 003h,040h,004h,050h,00fh,040h,007h,0f0h,081h,060h,007h,0f0h,081h,060h,007h,0f0h	; 9a6a  .@.P.@...`...`..
	defb 081h,060h,007h,0f0h,081h,060h,000h,002h,000h,081h,020h,007h,000h,092h,050h,028h	; 9a7a  .`...`.... ...P(
	defb 014h,054h,054h,0a8h,067h,016h,038h,056h,0b0h,0d8h,068h,028h,018h,056h,0efh,046h	; 9a8a  .TT.g.8V..h(.V.F
	defb 004h,000h,084h,067h,016h,038h,056h,008h,000h,087h,005h,00ah,00ah,007h,028h,050h	; 9a9a  ...g.8V.......(P
	defb 0a0h,006h,000h,086h,0c0h,078h,0bfh,0bfh,01fh,060h,003h,000h,09ch,004h,00ah,0e4h	; 9aaa  .....x...`......
	defb 004h,00ah,004h,001h,001h,003h,001h,007h,002h,000h,000h,03fh,077h,0efh,0feh,0fdh	; 9aba  ...........?w...
	defb 053h,016h,061h,000h,001h,002h,007h,001h,003h,003h,001h,097h,086h,073h,0fdh,0feh	; 9aca  S.a..........s..
	defb 0efh,077h,03fh,000h,000h,00eh,011h,00eh,012h,08dh,05dh,000h,000h,031h,066h,0a8h	; 9ada  .w?.......]..1f.
	defb 016h,00bh,05dh,003h,000h,09fh,004h,003h,001h,000h,000h,076h,08eh,005h,000h,02dh	; 9aea  ..]........v...-
	defb 07bh,02ah,000h,06ch,0a6h,09bh,06dh,0b5h,05ah,0eah,074h,0b5h,0dah,048h,008h,008h	; 9afa  {*.l..m.Z.t..H..
	defb 010h,000h,000h,0feh,03ch,006h,000h,084h,08ch,040h,020h,000h,004h,080h,083h,08ch	; 9b0a  ....<....@ .....
	defb 040h,020h,006h,000h,08fh,046h,0efh,056h,018h,06ah,070h,06ch,000h,056h,038h,016h	; 9b1a  @ ...F.V.jpl.V8.
	defb 067h,06fh,02fh,096h,000h,010h,0f0h,081h,0e0h,008h,0f0h,081h,0e0h,006h,0f0h,081h	; 9b2a  go/.............
	defb 0e0h,02ah,0f0h,081h,0e0h,006h,0f0h,002h,0e0h,081h,0f0h,006h,0e0h,082h,0f0h,0e0h	; 9b3a  .*..............
	defb 004h,0f0h,002h,0e0h,083h,0f0h,0e0h,0e0h,005h,0f0h,081h,0e0h,008h,0f0h,002h,0e0h	; 9b4a  ................
	defb 006h,0f0h,081h,0e0h,003h,0f0h,081h,0e0h,003h,0f0h,002h,0e0h,002h,0f0h,002h,0e0h	; 9b5a  ................
	defb 003h,0f0h,084h,0e0h,0f0h,0e0h,0e0h,010h,0f0h,003h,0e0h,005h,0f0h,007h,0e0h,003h	; 9b6a  ................
	defb 0f0h,085h,0e0h,0f0h,0f0h,0e0h,0e0h,003h,0f0h,085h,0e0h,0f0h,0f0h,0e0h,0e0h,000h	; 9b7a  ................
	defb 082h,000h,010h,006h,000h,084h,0c3h,0b8h,0dch,0d8h,004h,000h,084h,01fh,07dh,0fch	; 9b8a  ..............}.
	defb 033h,005h,000h,08eh,00ch,007h,003h,005h,005h,003h,004h,000h,000h,080h,0f8h,0ffh	; 9b9a  3...............
	defb 0fch,0c0h,004h,000h,081h,007h,003h,000h,081h,048h,003h,000h,081h,0ffh,003h,000h	; 9baa  .........H......
	defb 081h,0ffh,003h,000h,081h,0ffh,003h,000h,081h,0e0h,003h,000h,083h,03ch,07eh,03ch	; 9bba  .............<~<
	defb 009h,000h,089h,0ffh,021h,00ch,09ch,03ah,058h,005h,022h,0ffh,004h,000h,094h,078h	; 9bca  ....!..:X."....x
	defb 0ech,0fch,078h,010h,000h,032h,04ch,00ch,024h,076h,028h,020h,010h,008h,024h,04ch	; 9bda  ..x..2L.$v( ..$L
	defb 020h,082h,028h,005h,000h,083h,001h,003h,007h,005h,000h,093h,080h,0e0h,0f0h,01fh	; 9bea   .(.............
	defb 03fh,03fh,07fh,07fh,004h,004h,008h,0f8h,0fch,0fch,0feh,0a8h,0a4h,0b4h,092h,005h	; 9bfa  ??..............
	defb 000h,0a3h,080h,0c0h,0e0h,001h,003h,007h,007h,00fh,09fh,00ah,002h,028h,048h,0d8h	; 9c0a  .............(H.
	defb 090h,030h,070h,06ah,0f4h,01bh,009h,0c0h,0e2h,0eah,0b9h,098h,001h,0e0h,0f0h,0f0h	; 9c1a  .0pj............
	defb 0f8h,0f8h,003h,03bh,09ah,006h,000h,082h,044h,065h,006h,000h,092h,092h,0bah,0efh	; 9c2a  ........De......
	defb 012h,036h,06fh,045h,07eh,00eh,03ch,048h,059h,0fbh,0deh,096h,07dh,0f5h,079h,000h	; 9c3a  .6oE~.<HY...}.y.
	defb 008h,0f0h,004h,096h,004h,090h,003h,096h,005h,060h,010h,0f0h,007h,070h,081h,087h	; 9c4a  .........`...p..
	defb 010h,070h,008h,090h,008h,070h,007h,080h,081h,070h,008h,060h,008h,080h,003h,0b0h	; 9c5a  .p...p...p.`....
	defb 005h,080h,008h,090h,008h,060h,005h,090h,003h,0b9h,004h,060h,004h,096h,008h,060h	; 9c6a  .....`.....`...`
	defb 006h,090h,005h,0b9h,002h,0b8h,003h,0b6h,008h,096h,005h,060h,003h,096h,011h,020h	; 9c7a  ...........`...
	defb 002h,0c2h,002h,0c0h,083h,060h,096h,096h,003h,0c2h,002h,0c0h,083h,060h,096h,096h	; 9c8a  .....`.......`..
	defb 000h,003h,000h,09dh,020h,000h,004h,000h,000h,049h,0e0h,049h,012h,049h,0c3h,049h	; 9c9a  .... ....I.I.I.I
	defb 092h,024h,070h,024h,04ah,024h,00ch,024h,089h,040h,0e0h,040h,012h,049h,0c3h,049h	; 9caa  .$p$J$.$.@.@.I.I
	defb 092h,003h,000h,0f2h,040h,020h,0f0h,020h,080h,0f9h,060h,086h,076h,078h,030h,0f8h	; 9cba  ....@ . ..`.vx0.
	defb 0e6h,002h,050h,0e6h,06fh,046h,010h,01eh,061h,043h,0f0h,061h,0fch,0e3h,099h,06ch	; 9cca  ..P.oF..aC.a...l
	defb 020h,0f7h,063h,008h,07fh,0a3h,098h,093h,032h,0ffh,018h,098h,0feh,0f5h,0c8h,08dh	; 9cda   .c.....2.......
	defb 069h,01ah,0bch,019h,003h,007h,068h,003h,088h,04eh,0ceh,010h,0b9h,012h,007h,03fh	; 9cea  i.....h..N.....?
	defb 0c9h,08ah,017h,02ah,017h,00bh,02ah,017h,00ah,02fh,009h,0a2h,077h,022h,0ffh,004h	; 9cfa  ...*..*../..w"..
	defb 027h,080h,024h,072h,027h,04ah,01ch,0ech,041h,0fah,0d4h,0fah,00ch,02ch,0feh,0e8h	; 9d0a  '.$r'J..A....,..
	defb 0fch,0fbh,061h,073h,089h,058h,004h,020h,080h,0b7h,0ebh,044h,022h,080h,008h,000h	; 9d1a  ..as.X. ...D"...
	defb 000h,010h,043h,00fh,003h,040h,003h,000h,0ffh,0e3h,097h,0dfh,003h,082h,044h,0a0h	; 9d2a  ..C..@........D.
	defb 008h,05bh,001h,007h,030h,018h,00ch,014h,001h,0efh,0c6h,0c6h,031h,010h,020h,006h	; 9d3a  .[..0.......1. .
	defb 008h,057h,002h,0cch,024h,002h,01fh,043h,009h,027h,042h,0e7h,067h,042h,025h,017h	; 9d4a  .W..$..C.'B.gB%.
	defb 042h,097h,042h,0f0h,048h,044h,00ah,080h,051h,064h,0e2h,092h,045h,021h,008h,0f8h	; 9d5a  B.B.HD..Qd..E!..
	defb 0f6h,001h,007h,020h,002h,008h,000h,002h,000h,00ah,0c3h,014h,06eh,022h,071h,024h	; 9d6a  ... ........n"q$
	defb 034h,0c8h,002h,030h,020h,000h,004h,040h,000h,020h,001h,012h,00ch,004h,013h,02fh	; 9d7a  4..0 ..@. ...../
	defb 09ah,0d2h,047h,022h,027h,022h,014h,02ah,0fch,000h,000h,008h,000h,010h,084h,0e1h	; 9d8a  ..G"'".*........
	defb 0f4h,000h,000h,008h,000h,000h,040h,004h,000h,000h,044h,000h,010h,019h,040h,004h	; 9d9a  ......@...D...@.
	defb 020h,010h,004h,000h,001h,004h,000h,002h,081h,000h,000h,005h,050h,003h,070h,098h	; 9daa   ...........P.p.
	defb 030h,072h,020h,020h,070h,072h,020h,020h,030h,072h,020h,070h,070h,072h,020h,020h	; 9dba  0r  pr  0r ppr
	defb 030h,070h,020h,020h,070h,072h,020h,020h,005h,070h,003h,020h,002h,0b8h,081h,0f9h	; 9dca  0p  pr  .p. ....
	defb 003h,0b9h,002h,090h,002h,0b9h,081h,0f9h,003h,0b9h,002h,090h,083h,0b9h,0f9h,0b9h	; 9dda  ................
	defb 005h,090h,083h,0f9h,0b9h,0b9h,005h,090h,083h,080h,0f8h,0b9h,005h,090h,084h,0b9h	; 9dea  ................
	defb 0f9h,0b9h,0b9h,003h,090h,082h,050h,0f9h,005h,0b9h,002h,090h,002h,070h,0a1h,050h	; 9dfa  ......P......p.P
	defb 0f0h,0b0h,050h,070h,070h,084h,0b8h,0f9h,0b8h,0f8h,090h,0b8h,084h,0b8h,0f9h,0b8h	; 9e0a  ..Ppp...........
	defb 0f8h,0b8h,0b8h,0f9h,0b8h,040h,090h,090h,0b8h,0b8h,090h,090h,040h,0a8h,0f8h,085h	; 9e1a  .....@......@...
	defb 003h,080h,002h,050h,085h,0a8h,085h,084h,080h,080h,003h,050h,084h,0a9h,085h,040h	; 9e2a  ...P.......P...@
	defb 060h,004h,070h,084h,0a9h,085h,050h,040h,003h,060h,085h,050h,0a9h,0f6h,065h,064h	; 9e3a  `.p...P@.`.P..ed
	defb 003h,060h,08eh,050h,0a9h,0f9h,065h,064h,060h,080h,050h,050h,0a8h,0f8h,085h,085h	; 9e4a  .`.P..ed`.PP....
	defb 084h,003h,040h,082h,0a9h,0f8h,004h,085h,084h,054h,084h,0f9h,0a8h,004h,085h,002h	; 9e5a  ..@......T......
	defb 084h,081h,0a8h,004h,085h,084h,084h,040h,040h,064h,003h,040h,081h,070h,003h,040h	; 9e6a  .......@@d.@.p.@
	defb 081h,084h,003h,040h,002h,0b5h,085h,0f5h,050h,040h,040h,070h,006h,040h,08fh,070h	; 9e7a  ...@....P@@p.@.p
	defb 0f0h,0a0h,040h,080h,040h,084h,070h,070h,0f0h,0f0h,074h,074h,075h,085h,00eh,040h	; 9e8a  ..@.@.pp..ttu..@
	defb 081h,050h,004h,040h,081h,070h,006h,040h,004h,050h,002h,040h,000h,005h,000h,081h	; 9e9a  .P.@.p.@.P.@....
	defb 0ffh,004h,000h,0a1h,008h,020h,08ah,020h,054h,0eah,07eh,0ffh,0f7h,0ffh,042h,024h	; 9eaa  ..... . T.~...B$
	defb 0bdh,0efh,0bdh,0c3h,081h,018h,018h,03ch,018h,081h,0c3h,0ffh,018h,042h,0bdh,06ah	; 9eba  .......<.....B.j
	defb 014h,024h,0c3h,000h,0ffh,00ah,000h,083h,001h,00ch,070h,006h,000h,08eh,001h,002h	; 9eca  .$........p.....
	defb 001h,006h,019h,000h,04ch,09ch,018h,040h,088h,003h,00ch,010h,003h,020h,088h,010h	; 9eda  ....L..@..... ..
	defb 004h,008h,008h,012h,010h,020h,022h,003h,000h,08eh,067h,080h,040h,020h,024h,018h	; 9eea  ..... "...g.@ $.
	defb 010h,010h,0a0h,040h,040h,021h,022h,01ch,004h,040h,004h,080h,090h,020h,040h,020h	; 9efa  ...@@!"..@... @
	defb 030h,0c8h,008h,004h,002h,020h,040h,0c0h,030h,008h,004h,006h,000h,004h,080h,003h	; 9f0a  0.... @.0.......
	defb 040h,003h,000h,08eh,0e0h,01ch,002h,005h,010h,001h,048h,003h,025h,09bh,07fh,002h	; 9f1a  @.........H.%...
	defb 001h,006h,003h,020h,002h,010h,002h,008h,093h,004h,00bh,007h,013h,007h,009h,003h	; 9f2a  ... ............
	defb 001h,024h,00bh,007h,015h,02fh,01fh,027h,00bh,002h,002h,001h,006h,000h,093h,018h	; 9f3a  .$.../.'........
	defb 006h,080h,040h,020h,018h,006h,001h,005h,07fh,08fh,015h,002h,047h,098h,080h,070h	; 9f4a  ..@ ........G..p
	defb 00eh,001h,005h,000h,000h,008h,0f0h,00ch,080h,005h,0a9h,002h,0a0h,084h,0f0h,050h	; 9f5a  ...............P
	defb 070h,0f0h,003h,0b0h,082h,0b9h,0a9h,003h,090h,083h,020h,0c0h,0c0h,006h,090h,015h	; 9f6a  p......... .....
	defb 0f0h,002h,0a0h,002h,0f0h,004h,0c0h,003h,020h,008h,0f0h,003h,0c0h,002h,020h,002h	; 9f7a  ........ ..... .
	defb 0c0h,081h,020h,006h,0c0h,002h,020h,002h,0f0h,006h,0b0h,002h,020h,002h,0c0h,002h	; 9f8a  .. ... ..... ...
	defb 020h,005h,0c0h,002h,020h,003h,0c0h,004h,0b0h,004h,0a0h,003h,020h,002h,0c0h,008h	; 9f9a   ... ....... ...
	defb 080h,003h,0a8h,007h,0a0h,081h,090h,005h,080h,002h,090h,081h,020h,004h,0a8h,081h	; 9faa  ............ ...
	defb 0b8h,003h,0b9h,008h,090h,002h,0c0h,006h,090h,081h,0b9h,004h,090h,082h,0c0h,020h	; 9fba  ...............
	defb 009h,090h,000h,002h,000h,081h,010h,005h,000h,002h,0f7h,093h,06bh,05ch,01ch,0dbh	; 9fca  ............k\..
	defb 0e7h,042h,0fbh,077h,00fh,0d6h,0b8h,0d0h,000h,000h,0aeh,0aeh,035h,058h,080h,003h	; 9fda  .B.w........5X..
	defb 000h,083h,0f7h,06bh,08ch,005h,000h,083h,0ach,071h,0ach,005h,000h,084h,0ach,071h	; 9fea  ...k.....q.....q
	defb 0ach,000h,003h,001h,099h,000h	; 9ffa

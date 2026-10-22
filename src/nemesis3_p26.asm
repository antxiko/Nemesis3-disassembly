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
	jp L_6488		;6000
L_6003:
	jp L_6CA4		;6003
L_6006:
	jp 0814dh		;6006
L_6009:
	jp L_7EC5		;6009
L_600C:
	jp 083eah		;600c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x600f..0x6018  (9 bytes)
DATA_600F:
	defb 000h,000h,000h,0c3h,00ah,073h,0c3h,020h,073h	; 600f  .....s. s

; ======================================================================
; CODIGO 0x6018..0x6102  (234 bytes)
; ======================================================================


L_6018:
	jp L_6114		;6018
L_601B:
	jp L_6135		;601b
L_601E:
	call 05648h		;601e
	call 05959h		;6021
	call L_603E		;6024
	ret			;6027
L_6028:
	ld hl,03800h		;6028
	ld bc,002c0h		;602b
	xor a			;602e
	call 00056h		;602f   ; BIOS FILVRM - Fills VRAM with value
	ret			;6032
L_6033:
	ld hl,01800h		;6033
	ld bc,00800h		;6036
	xor a			;6039
	call 00056h		;603a   ; BIOS FILVRM - Fills VRAM with value
	ret			;603d
L_603E:
	xor a			;603e
	ld hl,02008h		;603f
	ld bc,007f8h		;6042
	call 00056h		;6045   ; BIOS FILVRM - Fills VRAM with value
	ld hl,02808h		;6048
	ld bc,007f8h		;604b
	call 00056h		;604e   ; BIOS FILVRM - Fills VRAM with value
	ld hl,03008h		;6051
	ld bc,001b0h		;6054
	call 00056h		;6057   ; BIOS FILVRM - Fills VRAM with value
	ld hl,03300h		;605a
	ld bc,00500h		;605d
	call 00056h		;6060   ; BIOS FILVRM - Fills VRAM with value
	ret			;6063
L_6064:
	call 04a5ah		;6064
L_6067:
	push hl			;6067
	pop ix		;6068
	call L_6080		;606a
	ld e,(ix+000h)		;606d
	ld d,(ix+001h)		;6070
	ld b,(ix+002h)		;6073
	ld c,(ix+003h)		;6076
	ld hl,0cd00h		;6079
	call 059a1h		;607c
	ret			;607f
L_6080:
	ld a,(ix+004h)		;6080
	dec a			;6083
	jr z,L_60A2		;6084
	jp p,L_60B1		;6086
	ld h,(ix+002h)		;6089
	ld e,(ix+003h)		;608c
	call 0563ch		;608f
	ld c,l			;6092
	ld b,h			;6093
	push ix		;6094
	pop hl			;6096
	ld a,005h		;6097
	call 04089h		;6099
	ld de,0cd00h		;609c
	ldir		;609f
	ret			;60a1
L_60A2:
	push ix		;60a2
	pop hl			;60a4
	ld a,005h		;60a5
	call 04089h		;60a7
	ld de,0cd00h		;60aa
	call 055adh		;60ad
	ret			;60b0
L_60B1:
	push ix		;60b1
	pop hl			;60b3
	ld a,005h		;60b4
	call 04089h		;60b6
	ld de,0cd00h		;60b9
	call 055cdh		;60bc
	ret			;60bf
L_60C0:
	ld de,0ca48h		;60c0
	ld bc,00b10h		;60c3
	call 059c7h		;60c6
	ret			;60c9
L_60CA:
	ld de,0cc22h		;60ca
	ld bc,0051ch		;60cd
	call 059c7h		;60d0
	ret			;60d3
L_60D4:
	ld hl,03ac0h		;60d4
	ld bc,00040h		;60d7
	xor a			;60da
	call 00056h		;60db   ; BIOS FILVRM - Fills VRAM with value
	ret			;60de
L_60DF:
	call L_60EB		;60df
	ld a,008h		;60e2
	ld (0e540h),a		;60e4
	call L_730A		;60e7
	ret			;60ea
L_60EB:
	ld hl,0e540h		;60eb
	ld de,0e541h		;60ee
	ld bc,0001fh		;60f1
	ld (hl),000h		;60f4
	ldir		;60f6
	ret			;60f8
L_60F9:
	ld de,0e54fh		;60f9
	ld bc,00006h		;60fc
	ldir		;60ff
	ret			;6101

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6102..0x6114  (18 bytes)
DATA_6102:
	defb 006h,008h,000h,009h,001h,000h,006h,006h,004h,004h,000h,007h,006h,007h,005h,009h	; 6102  ................
	defb 000h,007h	; 6112

; ======================================================================
; CODIGO 0x6114..0x611c  (8 bytes)
; ======================================================================


L_6114:
	ld hl,0611ch		;6114
	call 04a5ah		;6117
	jr $+16		;611a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x611c..0x612a  (14 bytes)
DATA_611C:
	defb 06fh,062h,084h,062h,08dh,062h,092h,062h,097h,062h,09ch,062h,0a1h,062h	; 611c  ob.b.b.b.b.b.b

; ======================================================================
; CODIGO 0x612a..0x6193  (105 bytes)
; ======================================================================


L_612A:
	ld (0e5ceh),hl		;612a
	ld hl,0ff01h		;612d
	ld (0e5cah),hl		;6130
	jr L_6146		;6133
L_6135:
	xor a			;6135
	ld (0e5e8h),a		;6136
	ld de,(0e5cch)		;6139
	ld hl,(0e333h)		;613d
	rst 20h			;6140
	jr c,L_6176		;6141
	call L_617F		;6143
L_6146:
	ld hl,0e5cbh		;6146
	inc (hl)			;6149
	ld a,(hl)			;614a
	ld l,a			;614b
	add a,a			;614c
	add a,a			;614d
	ld hl,(0e5ceh)		;614e
	call 04089h		;6151
	ld a,(hl)			;6154
	inc a			;6155
	jr z,L_617A		;6156
	call 05636h		;6158
	ld a,(hl)			;615b
	inc hl			;615c
	jr z,L_6160		;615d
	ld a,(hl)			;615f
L_6160:
	inc hl			;6160
	ld e,(hl)			;6161
	inc hl			;6162
	ld d,(hl)			;6163
	ld (0e5cch),de		;6164
	ld hl,00000h		;6168
	ld (0e333h),hl		;616b
	call L_62A6		;616e
	ld a,001h		;6171
	ld (0e5e8h),a		;6173
L_6176:
	ld a,001h		;6176
	or a			;6178
	ret			;6179
L_617A:
	xor a			;617a
	ld (0e5cah),a		;617b
	ret			;617e
L_617F:
	ld a,(0e5c2h)		;617f
	sub 023h		;6182
	cp 002h		;6184
	ret c			;6186
	sub 040h		;6187
	cp 002h		;6189
	ret c			;618b
	ld hl,0cd00h		;618c
	call 04b32h		;618f
	ret			;6192

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6193..0x62a6  (275 bytes)
DATA_6193:
	defb 000h,040h,02ch,001h,001h,041h,02ch,001h,002h,042h,02ch,001h,003h,043h,02ch,001h	; 6193  .@,..A,..B,..C,.
	defb 004h,044h,02ch,001h,005h,045h,02ch,001h,006h,046h,02ch,001h,007h,047h,02ch,001h	; 61a3  .D,..E,..F,..G,.
	defb 0ffh,008h,048h,02ch,001h,009h,049h,02ch,001h,00ah,04ah,02ch,001h,00bh,04bh,02ch	; 61b3  ..H,..I,..J,..K,
	defb 001h,00ch,04ch,02ch,001h,0ffh,00dh,04dh,02ch,001h,0ffh,00eh,04eh,02ch,001h,0ffh	; 61c3  ..L,...M,...N,..
	defb 00fh,04fh,02ch,001h,0ffh,010h,050h,02ch,001h,011h,051h,02ch,001h,012h,052h,02ch	; 61d3  .O,...P,..Q,..R,
	defb 001h,0ffh,013h,053h,02ch,001h,0ffh,014h,054h,02ch,001h,015h,055h,02ch,001h,0ffh	; 61e3  ...S,...T,..U,..
	defb 016h,056h,02ch,001h,0ffh,017h,057h,02ch,001h,0ffh,018h,058h,02ch,001h,019h,059h	; 61f3  .V,...W,...X,..Y
	defb 02ch,001h,01ah,05ah,02ch,001h,0ffh,01bh,05bh,02ch,001h,01ch,05ch,02ch,001h,0ffh	; 6203  ,..Z,...[,..\,..
	defb 01dh,05dh,02ch,001h,01eh,05eh,02ch,001h,0ffh,01fh,05fh,02ch,001h,020h,060h,02ch	; 6213  .],..^,..._,. `,
	defb 001h,0ffh,021h,061h,02ch,001h,022h,062h,02ch,001h,0ffh,023h,063h,02ch,001h,0ffh	; 6223  ..!a,."b,..#c,..
	defb 024h,064h,02ch,001h,0ffh,025h,065h,02ch,001h,026h,066h,02ch,001h,0ffh,027h,067h	; 6233  $d,..%e,.&f,..'g
	defb 02ch,001h,0ffh,028h,068h,02ch,001h,029h,069h,02ch,001h,0ffh,02ah,06ah,02ch,001h	; 6243  ,..(h,.)i,..*j,.
	defb 02bh,06bh,02ch,001h,0ffh,02ch,06ch,02ch,001h,02dh,06dh,02ch,001h,02eh,06eh,02ch	; 6253  +k,..,l,.-m,..n,
	defb 001h,0ffh,02fh,06fh,02ch,001h,0ffh,035h,075h,02ch,001h,0ffh,080h,080h,0f0h,000h	; 6263  ../o,..5u,......
	defb 081h,087h,0f0h,000h,082h,082h,0f0h,000h,083h,083h,0f0h,000h,084h,084h,0f0h,000h	; 6273  ................
	defb 0ffh,085h,085h,0f0h,000h,086h,088h,0f0h,000h,0ffh,030h,070h,0f0h,000h,0ffh,031h	; 6283  ..........0p...1
	defb 071h,0f0h,000h,0ffh,032h,072h,0f0h,000h,0ffh,033h,073h,0f0h,000h,0ffh,034h,074h	; 6293  q...2r...3s...4t
	defb 0f0h,000h,0ffh	; 62a3

; ======================================================================
; CODIGO 0x62a6..0x6497  (497 bytes)
; ======================================================================


L_62A6:
	ld (0e5c2h),a		;62a6
	call L_62D3		;62a9
	ld a,(0e5c2h)		;62ac
	ld de,08f02h		;62af
	call 04a65h		;62b2
	ex de,hl			;62b5
	call L_631F		;62b6
	ld hl,0cd00h		;62b9
	call 04b1fh		;62bc
	ld a,(0e5c2h)		;62bf
	sub 02fh		;62c2
	cp 006h		;62c4
	jr c,L_62CF		;62c6
	sub 040h		;62c8
	cp 006h		;62ca
	jr c,L_62CF		;62cc
	ret			;62ce
L_62CF:
	call L_63F7		;62cf
	ret			;62d2
L_62D3:
	ld bc,00000h		;62d3
	ld a,(0e5c2h)		;62d6
	cp 02fh		;62d9
	jr z,L_6307		;62db
	cp 06fh		;62dd
	jr z,L_6307		;62df
	sub 030h		;62e1
	cp 005h		;62e3
	jr c,L_6307		;62e5
	sub 040h		;62e7
	cp 005h		;62e9
	jr c,L_6307		;62eb
	sub 010h		;62ed
	cp 009h		;62ef
	jr c,L_6307		;62f1
	ld bc,00190h		;62f3
	ld a,(0e5c2h)		;62f6
	sub 025h		;62f9
	cp 002h		;62fb
	jr c,L_6307		;62fd
	sub 040h		;62ff
	cp 002h		;6301
	jr c,L_6307		;6303
	ld c,0f0h		;6305
L_6307:
	ld a,(0e5c2h)		;6307
	cp 032h		;630a
	jr z,L_631B		;630c
	cp 072h		;630e
	jr z,L_631B		;6310
L_6312:
	ld a,b			;6312
	ld (0e5e7h),a		;6313
	ld a,c			;6316
	ld (0e5c3h),a		;6317
	ret			;631a
L_631B:
	ld b,001h		;631b
	jr L_6312		;631d
L_631F:
	call L_632C		;631f
	call L_6349		;6322
	call L_63C7		;6325
	call L_6456		;6328
	ret			;632b
L_632C:
	ld a,(0e5e7h)		;632c
	or a			;632f
	ld a,001h		;6330
	jr z,L_6336		;6332
	ld a,080h		;6334
L_6336:
	ld (0e5c4h),a		;6336
	ld (0e5c5h),a		;6339
	ld (0e5c6h),a		;633c
	ld (0e5c7h),a		;633f
	ld (0e5c8h),a		;6342
	ld (0e5c9h),a		;6345
	ret			;6348
L_6349:
	ld de,0ce00h		;6349
L_634C:
	ldi		;634c
	ldi		;634e
	ld a,(hl)			;6350
	and 01fh		;6351
	ld (de),a			;6353
	exx			;6354
	ld b,a			;6355
	exx			;6356
	inc de			;6357
	ld a,(hl)			;6358
	rlca			;6359
	rlca			;635a
	rlca			;635b
	and 003h		;635c
	ld (de),a			;635e
	inc de			;635f
	bit 7,(hl)		;6360
	ld a,0feh		;6362
	jr z,L_6367		;6364
	inc a			;6366
L_6367:
	push af			;6367
	inc hl			;6368
	call L_6373		;6369
	pop af			;636c
	ld (de),a			;636d
	inc de			;636e
	inc a			;636f
	jr nz,L_634C		;6370
	ret			;6372
L_6373:
	ld a,(0e5c2h)		;6373
	cp 040h		;6376
	jr nc,L_6390		;6378
	ld b,008h		;637a
	ld c,(hl)			;637c
	inc hl			;637d
L_637E:
	ld a,(hl)			;637e
	inc hl			;637f
	ld (de),a			;6380
	inc de			;6381
	xor a			;6382
	rl c		;6383
	rla			;6385
	ld (de),a			;6386
	inc de			;6387
	exx			;6388
	dec b			;6389
	exx			;638a
	ret z			;638b
	djnz L_637E		;638c
	jr L_6373		;638e
L_6390:
	ld b,003h		;6390
L_6392:
	ld a,(hl)			;6392
	and 03fh		;6393
	ld (de),a			;6395
	inc hl			;6396
	inc de			;6397
	xor a			;6398
	ld (de),a			;6399
	inc de			;639a
	exx			;639b
	dec b			;639c
	exx			;639d
	ret z			;639e
	djnz L_6392		;639f
	push hl			;63a1
	dec hl			;63a2
	ld c,(hl)			;63a3
	rlc c		;63a4
	rlc c		;63a6
	dec hl			;63a8
	ld a,(hl)			;63a9
	rla			;63aa
	rl c		;63ab
	rla			;63ad
	rl c		;63ae
	dec hl			;63b0
	ld a,(hl)			;63b1
	rla			;63b2
	rl c		;63b3
	rla			;63b5
	rl c		;63b6
	ld a,c			;63b8
	and 03fh		;63b9
	ld (de),a			;63bb
	inc de			;63bc
	xor a			;63bd
	ld (de),a			;63be
	inc de			;63bf
	pop hl			;63c0
	exx			;63c1
	dec b			;63c2
	exx			;63c3
	ret z			;63c4
	jr L_6390		;63c5
L_63C7:
	ld hl,0ce00h		;63c7
	ld de,0cd00h		;63ca
L_63CD:
	ldi		;63cd
	ldi		;63cf
	ld b,(hl)			;63d1
	push bc			;63d2
	inc hl			;63d3
	ld a,(hl)			;63d4
	inc hl			;63d5
	exx			;63d6
	ld hl,0e5c4h		;63d7
	add a,l			;63da
	ld l,a			;63db
	exx			;63dc
	ld a,b			;63dd
	add a,a			;63de
	ld c,a			;63df
	ld b,000h		;63e0
	add hl,bc			;63e2
	exx			;63e3
	ld a,(hl)			;63e4
	exx			;63e5
	pop bc			;63e6
L_63E7:
	ld (de),a			;63e7
	inc de			;63e8
	inc a			;63e9
	djnz L_63E7		;63ea
	exx			;63ec
	ld (hl),a			;63ed
	exx			;63ee
	ld a,(hl)			;63ef
	inc hl			;63f0
	ld (de),a			;63f1
	inc de			;63f2
	inc a			;63f3
	jr nz,L_63CD		;63f4
	ret			;63f6
L_63F7:
	ld b,080h		;63f7
	ld a,(0e5c2h)		;63f9
	cp 032h		;63fc
	jr z,L_6406		;63fe
	cp 072h		;6400
	jr z,L_6406		;6402
	ld b,001h		;6404
L_6406:
	ld a,b			;6406
	ld (0ef80h),a		;6407
	ld (0ef81h),a		;640a
	ld (0ef82h),a		;640d
	ld ix,0ce00h		;6410
	ld de,0c400h		;6414
L_6417:
	ld a,(ix+003h)		;6417
	ld c,004h		;641a
	or a			;641c
	jr z,L_6426		;641d
	ld c,002h		;641f
	dec a			;6421
	jr z,L_6426		;6422
	ld c,001h		;6424
L_6426:
	ld a,c			;6426
	ld (de),a			;6427
	inc de			;6428
	exx			;6429
	ld a,(ix+003h)		;642a
	ld hl,0ef80h		;642d
	add a,l			;6430
	ld l,a			;6431
	ld a,(hl)			;6432
	exx			;6433
	ld (de),a			;6434
	inc de			;6435
	ld b,a			;6436
	ld a,(ix+002h)		;6437
	ld (de),a			;643a
	inc de			;643b
	add a,b			;643c
	exx			;643d
	ld (hl),a			;643e
	exx			;643f
	ld l,(ix+002h)		;6440
	inc l			;6443
	inc l			;6444
	ld h,000h		;6445
	add hl,hl			;6447
	inc hl			;6448
	ex de,hl			;6449
	add ix,de		;644a
	ex de,hl			;644c
	ld a,(ix-001h)		;644d
	inc a			;6450
	jr nz,L_6417		;6451
	xor a			;6453
	ld (de),a			;6454
	ret			;6455
L_6456:
	ld ix,0ce00h		;6456
L_645A:
	call L_6470		;645a
	ld l,(ix+002h)		;645d
	inc l			;6460
	inc l			;6461
	ld h,000h		;6462
	add hl,hl			;6464
	inc hl			;6465
	ex de,hl			;6466
	add ix,de		;6467
	ld a,(ix-001h)		;6469
	inc a			;646c
	jr nz,L_645A		;646d
	ret			;646f
L_6470:
	push ix		;6470
	pop hl			;6472
	inc hl			;6473
	inc hl			;6474
	inc hl			;6475
	inc hl			;6476
	ld b,(ix+002h)		;6477
L_647A:
	push bc			;647a
	ld e,(hl)			;647b
	inc hl			;647c
	ld d,(hl)			;647d
	inc hl			;647e
	push hl			;647f
	call 04f02h		;6480
	pop hl			;6483
	pop bc			;6484
	djnz L_647A		;6485
	ret			;6487
L_6488:
	call L_648F		;6488
	call L_683C		;648b
	ret			;648e
L_648F:
	ld bc,(0e31bh)		;648f
	ld a,c			;6493
	call 04093h		;6494

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6497..0x64a1  (10 bytes)
DATA_6497:
	defb 0a1h,064h,041h,065h,02eh,066h,000h,067h,0c5h,067h	; 6497  .dAe.f.g.g

; ======================================================================
; CODIGO 0x64a1..0x64a5  (4 bytes)
; ======================================================================


L_64A1:
	ld a,b			;64a1
	call 04093h		;64a2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x64a5..0x64af  (10 bytes)
DATA_64A5:
	defb 0afh,064h,0f7h,064h,015h,065h,021h,065h,02fh,065h	; 64a5  .d.d.e!e/e

; ======================================================================
; CODIGO 0x64af..0x64e3  (52 bytes)
; ======================================================================


L_64AF:
	call 04aa9h		;64af
	ld a,001h		;64b2
	call 05709h		;64b4
	call L_6827		;64b7
	call L_6858		;64ba
	call L_6801		;64bd
	ld a,001h		;64c0
	ld (0e534h),a		;64c2
	ld a,(0e302h)		;64c5
	and 020h		;64c8
	ret z			;64ca
	ld a,078h		;64cb
	ld (0e534h),a		;64cd
	call 054c3h		;64d0
	ld hl,064e3h		;64d3
	call 04b1fh		;64d6
	ld a,(0e324h)		;64d9
	or a			;64dc
	ret z			;64dd
	ld a,003h		;64de
	dec de			;64e0
	ld (de),a			;64e1
	ret			;64e2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x64e3..0x64f7  (20 bytes)
DATA_64E3:
	defb 0cdh,0c4h,024h,016h,01dh,016h,014h,025h,0feh,00ch,0c5h,021h,01dh,012h,02ah,016h	; 64e3  ..$....%...!..*.
	defb 023h,000h,002h,0ffh	; 64f3

; ======================================================================
; CODIGO 0x64f7..0x6545  (78 bytes)
; ======================================================================


L_64F7:
	ld hl,0e534h		;64f7
	dec (hl)			;64fa
	ret nz			;64fb
	call L_6858		;64fc
	call L_680B		;64ff
	call L_68C9		;6502
	call L_6A45		;6505
	call L_6BF9		;6508
	call L_6C79		;650b
	call L_6B4E		;650e
	call L_6801		;6511
	ret			;6514
L_6515:
	call L_7A3D		;6515
	ld a,(0e564h)		;6518
	or a			;651b
	ret nz			;651c
	call L_6801		;651d
	ret			;6520
L_6521:
	call L_6B61		;6521
	call L_6B6E		;6524
	xor a			;6527
	call L_695A		;6528
	call L_6801		;652b
	ret			;652e
L_652F:
	call L_7AC9		;652f
	call L_7A3D		;6532
	call L_7C0A		;6535
	ld a,(0e564h)		;6538
	or a			;653b
	ret nz			;653c
	call L_67F9		;653d
	ret			;6540
L_6541:
	ld a,b			;6541
	call 04093h		;6542

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6545..0x654b  (6 bytes)
DATA_6545:
	defb 04bh,065h,092h,065h,0a7h,065h	; 6545

; ======================================================================
; CODIGO 0x654b..0x65f0  (165 bytes)
; ======================================================================


L_654B:
	call L_65B6		;654b
	jp nz,L_6801		;654e
	ld a,(0e308h)		;6551
	and 030h		;6554
	ret z			;6556
	call L_6564		;6557
	call L_6B14		;655a
	call L_6801		;655d
	call L_6801		;6560
	ret			;6563
L_6564:
	ld a,(0e380h)		;6564
	cp 002h		;6567
	ld hl,00000h		;6569
	jr nc,L_6571		;656c
	ld hl,00200h		;656e
L_6571:
	ld (0e530h),hl		;6571
	add hl,hl			;6574
	add hl,hl			;6575
	add hl,hl			;6576
	ld (0e532h),hl		;6577
	ret			;657a
L_657B:
	ld a,(0e380h)		;657b
	cp 002h		;657e
	ld hl,00000h		;6580
	jr c,L_6588		;6583
	ld hl,00200h		;6585
L_6588:
	ld (0e530h),hl		;6588
	add hl,hl			;658b
	add hl,hl			;658c
	add hl,hl			;658d
	ld (0e532h),hl		;658e
	ret			;6591
L_6592:
	call L_7AC9		;6592
	call L_7ADB		;6595
	call L_7C0A		;6598
	call L_7A3D		;659b
	ld a,(0e569h)		;659e
	or a			;65a1
	ret nz			;65a2
	call L_6806		;65a3
	ret			;65a6
L_65A7:
	call L_78AC		;65a7
	ld a,(0e560h)		;65aa
	or a			;65ad
	ret nz			;65ae
	call L_6A9A		;65af
	call L_67F9		;65b2
	ret			;65b5
L_65B6:
	ld hl,0e380h		;65b6
	ld b,(hl)			;65b9
	call L_6600		;65ba
	ld a,(hl)			;65bd
	cp b			;65be
	ret z			;65bf
	push bc			;65c0
	ld d,a			;65c1
	ld hl,06abch		;65c2
	call 04a6eh		;65c5
	ld c,a			;65c8
	ld a,d			;65c9
	add a,a			;65ca
	add a,a			;65cb
	ld hl,065f0h		;65cc
	call 04089h		;65cf
	call L_7AAD		;65d2
	pop af			;65d5
	add a,a			;65d6
	add a,a			;65d7
	ld hl,065f0h		;65d8
	call 04089h		;65db
	ld c,0f0h		;65de
	call L_7ABB		;65e0
	call L_6B6E		;65e3
	ld a,(0e380h)		;65e6
	call L_695A		;65e9
	ld a,001h		;65ec
	or a			;65ee
	ret			;65ef

; ----------------------------------------------------------------------
; DATOS sin identificar  0x65f0..0x6600  (16 bytes)
DATA_65F0:
	defb 004h,011h,032h,000h,004h,091h,02ah,000h,001h,011h,02ch,000h,001h,091h,032h,000h	; 65f0  ..2...*...,...2.

; ======================================================================
; CODIGO 0x6600..0x6632  (50 bytes)
; ======================================================================


L_6600:
	ld a,(0e308h)		;6600
	rra			;6603
	jr c,L_6610		;6604
	rra			;6606
	jr c,L_6618		;6607
	rra			;6609
	jr c,L_6620		;660a
	rra			;660c
	jr c,L_6627		;660d
	ret			;660f
L_6610:
	ld a,(hl)			;6610
	cp 002h		;6611
	ret c			;6613
	sub 002h		;6614
	ld (hl),a			;6616
	ret			;6617
L_6618:
	ld a,(hl)			;6618
	cp 002h		;6619
	ret nc			;661b
	add a,002h		;661c
	ld (hl),a			;661e
	ret			;661f
L_6620:
	ld a,(hl)			;6620
	bit 0,a		;6621
	ret z			;6623
	dec a			;6624
	ld (hl),a			;6625
	ret			;6626
L_6627:
	ld a,(hl)			;6627
	bit 0,a		;6628
	ret nz			;662a
	inc a			;662b
	ld (hl),a			;662c
	ret			;662d
L_662E:
	ld a,b			;662e
	call 04093h		;662f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6632..0x663c  (10 bytes)
DATA_6632:
	defb 03ch,066h,04ch,066h,05bh,066h,071h,066h,080h,066h	; 6632  <fLf[fqf.f

; ======================================================================
; CODIGO 0x663c..0x66dd  (161 bytes)
; ======================================================================


L_663C:
	call L_6C29		;663c
	call L_689F		;663f
	call L_69F0		;6642
	call L_6BA4		;6645
	call L_6801		;6648
	ret			;664b
L_664C:
	call L_7A3D		;664c
	call L_7C0A		;664f
	ld a,(0e580h)		;6652
	or a			;6655
	ret nz			;6656
	call L_6801		;6657
	ret			;665a
L_665B:
	call L_669D		;665b
	jp nz,L_6801		;665e
	ld a,(0e308h)		;6661
	and 030h		;6664
	ret z			;6666
	call L_6ACB		;6667
	call L_6801		;666a
	call L_6801		;666d
	ret			;6670
L_6671:
	call L_78AC		;6671
	call L_7AC9		;6674
	ld a,(0e560h)		;6677
	or a			;667a
	ret nz			;667b
	call L_6806		;667c
	ret			;667f
L_6680:
	call L_78AC		;6680
	ld a,(0e560h)		;6683
	or a			;6686
	ret nz			;6687
	ld a,(0e37fh)		;6688
	xor 001h		;668b
	call L_6A89		;668d
	ld a,(0e380h)		;6690
	call L_6AAB		;6693
	call L_657B		;6696
	call L_67F9		;6699
	ret			;669c
L_669D:
	ld hl,0e37fh		;669d
	ld c,(hl)			;66a0
	call L_66F5		;66a1
	ld a,(hl)			;66a4
	cp c			;66a5
	ret z			;66a6
	ld a,c			;66a7
	add a,a			;66a8
	add a,a			;66a9
	ld hl,066ddh		;66aa
	call 04089h		;66ad
	ld a,(0e380h)		;66b0
	cp 002h		;66b3
	jr nc,L_66BB		;66b5
	ld bc,0000ch		;66b7
	add hl,bc			;66ba
L_66BB:
	call L_78A2		;66bb
	ld a,(0e37fh)		;66be
	add a,a			;66c1
	add a,a			;66c2
	ld hl,066ddh		;66c3
	call 04089h		;66c6
	ld a,(0e380h)		;66c9
	cp 002h		;66cc
	jr nc,L_66D4		;66ce
	ld bc,0000ch		;66d0
	add hl,bc			;66d3
L_66D4:
	ld c,0f0h		;66d4
	call L_7AAD		;66d6
	ld a,001h		;66d9
	or a			;66db
	ret			;66dc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x66dd..0x66f5  (24 bytes)
DATA_66DD:
	defb 004h,001h,006h,000h,004h,007h,006h,000h,004h,00dh,006h,000h,001h,001h,006h,000h	; 66dd  ................
	defb 001h,007h,006h,000h,001h,00dh,006h,000h	; 66ed  ........

; ======================================================================
; CODIGO 0x66f5..0x6704  (15 bytes)
; ======================================================================


L_66F5:
	ld a,(0e308h)		;66f5
	and 00fh		;66f8
	ret z			;66fa
	ld a,(hl)			;66fb
	xor 001h		;66fc
	ld (hl),a			;66fe
	ret			;66ff
L_6700:
	ld a,b			;6700
	call 04093h		;6701

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6704..0x670c  (8 bytes)
DATA_6704:
	defb 00ch,067h,01ch,067h,02bh,067h,05ah,067h	; 6704  .g.g+gZg

; ======================================================================
; CODIGO 0x670c..0x67c9  (189 bytes)
; ======================================================================


L_670C:
	call L_6866		;670c
	call L_699D		;670f
	call L_6C18		;6712
	call L_6B93		;6715
	call L_6801		;6718
	ret			;671b
L_671C:
	call L_7A3D		;671c
	call L_7C0A		;671f
	ld a,(0e580h)		;6722
	or a			;6725
	ret nz			;6726
	call L_6801		;6727
	ret			;672a
L_672B:
	call L_6743		;672b
	call L_676C		;672e
	jp nz,L_6801		;6731
	ld a,(0e308h)		;6734
	and 030h		;6737
	ret z			;6739
	call L_67F9		;673a
	ld a,03ch		;673d
	ld (0e534h),a		;673f
	ret			;6742
L_6743:
	ld a,(0e303h)		;6743
	and 007h		;6746
	ret nz			;6748
	ld hl,0e535h		;6749
	ld a,(hl)			;674c
	inc a			;674d
	cp 004h		;674e
	jr c,L_6753		;6750
	xor a			;6752
L_6753:
	ld (hl),a			;6753
	add a,002h		;6754
	call L_69AA		;6756
	ret			;6759
L_675A:
	call L_6743		;675a
	call L_78AC		;675d
	call L_7AC9		;6760
	ld a,(0e560h)		;6763
	or a			;6766
	ret nz			;6767
	call L_6806		;6768
	ret			;676b
L_676C:
	ld hl,0e37eh		;676c
	ld c,(hl)			;676f
	call L_67AC		;6770
	ld a,(hl)			;6773
	cp c			;6774
	ret z			;6775
	ld a,c			;6776
	add a,a			;6777
	add a,a			;6778
	ld hl,066ddh		;6779
	call 04089h		;677c
	ld a,(0e380h)		;677f
	cp 002h		;6782
	jr c,L_678A		;6784
	ld bc,0000ch		;6786
	add hl,bc			;6789
L_678A:
	call L_78A2		;678a
	ld a,(0e37eh)		;678d
	add a,a			;6790
	add a,a			;6791
	ld hl,066ddh		;6792
	call 04089h		;6795
	ld a,(0e380h)		;6798
	cp 002h		;679b
	jr c,L_67A3		;679d
	ld bc,0000ch		;679f
	add hl,bc			;67a2
L_67A3:
	ld c,0f0h		;67a3
	call L_7AAD		;67a5
	ld a,001h		;67a8
	or a			;67aa
	ret			;67ab
L_67AC:
	ld a,(0e308h)		;67ac
	rra			;67af
	rra			;67b0
	rra			;67b1
	jr c,L_67B8		;67b2
	rra			;67b4
	jr c,L_67BE		;67b5
	ret			;67b7
L_67B8:
	ld a,(hl)			;67b8
	or a			;67b9
	ret z			;67ba
	dec a			;67bb
	ld (hl),a			;67bc
	ret			;67bd
L_67BE:
	ld a,(hl)			;67be
	cp 002h		;67bf
	ret nc			;67c1
	inc a			;67c2
	ld (hl),a			;67c3
	ret			;67c4
L_67C5:
	ld a,b			;67c5
	call 04093h		;67c6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x67c9..0x67cf  (6 bytes)
DATA_67C9:
	defb 0cfh,067h,0dbh,067h,0e7h,067h	; 67c9

; ======================================================================
; CODIGO 0x67cf..0x69d8  (521 bytes)
; ======================================================================


L_67CF:
	ld hl,0e534h		;67cf
	dec (hl)			;67d2
	ret nz			;67d3
	call L_6AC0		;67d4
	call L_6801		;67d7
	ret			;67da
L_67DB:
	call L_78AC		;67db
	ld a,(0e560h)		;67de
	or a			;67e1
	ret nz			;67e2
	call L_6801		;67e3
	ret			;67e6
L_67E7:
	call 04aa9h		;67e7
	call L_6827		;67ea
	call L_6858		;67ed
	call L_6819		;67f0
	ld a,0ffh		;67f3
	ld (0e31bh),a		;67f5
	ret			;67f8
L_67F9:
	ld hl,0e31bh		;67f9
	inc (hl)			;67fc
	inc hl			;67fd
	ld (hl),000h		;67fe
	ret			;6800
L_6801:
	ld hl,0e31ch		;6801
	inc (hl)			;6804
	ret			;6805
L_6806:
	ld hl,0e31ch		;6806
	dec (hl)			;6809
	ret			;680a
L_680B:
	xor a			;680b
	ld (0e380h),a		;680c
	ld (0e37fh),a		;680f
	ld (0e37eh),a		;6812
	ld (0e535h),a		;6815
	ret			;6818
L_6819:
	ld a,001h		;6819
	ld (0e399h),a		;681b
	ld a,(0e333h)		;681e
	and 003h		;6821
	ld (0e381h),a		;6823
	ret			;6826
L_6827:
	ld hl,02000h		;6827
	call L_6834		;682a
	ld hl,00000h		;682d
	call L_6834		;6830
	ret			;6833
L_6834:
	ld bc,01800h		;6834
	xor a			;6837
	call 00056h		;6838   ; BIOS FILVRM - Fills VRAM with value
	ret			;683b
L_683C:
	ld hl,03800h		;683c
	call 04ab6h		;683f
	exx			;6842
	ld hl,0c400h		;6843
	ld b,000h		;6846
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
	ld hl,0c400h		;6858
	ld de,0c401h		;685b
	ld bc,002ffh		;685e
	ld (hl),000h		;6861
	ldir		;6863
	ret			;6865
L_6866:
	ld hl,00008h		;6866
	ld (0ef80h),hl		;6869
	ld a,006h		;686c
	ld (0ef82h),a		;686e
	ld a,001h		;6871
	ld (0ef83h),a		;6873
	ld de,0c401h		;6876
	ld hl,(0e530h)		;6879
	add hl,de			;687c
	call L_6912		;687d
	ld a,007h		;6880
	ld (0ef83h),a		;6882
	ld de,0c40bh		;6885
	ld hl,(0e530h)		;6888
	add hl,de			;688b
	call L_6912		;688c
	ld a,00dh		;688f
	ld (0ef83h),a		;6891
	ld de,0c415h		;6894
	ld hl,(0e530h)		;6897
	add hl,de			;689a
	call L_6912		;689b
	ret			;689e
L_689F:
	ld hl,00006h		;689f
	ld (0ef80h),hl		;68a2
	ld a,003h		;68a5
	ld (0ef82h),a		;68a7
	ld a,001h		;68aa
	ld (0ef83h),a		;68ac
	ld de,0c424h		;68af
	ld hl,(0e530h)		;68b2
	add hl,de			;68b5
	call L_6912		;68b6
	ld a,007h		;68b9
	ld (0ef83h),a		;68bb
	ld de,0c434h		;68be
	ld hl,(0e530h)		;68c1
	add hl,de			;68c4
	call L_6912		;68c5
	ret			;68c8
L_68C9:
	ld hl,0000eh		;68c9
	ld (0ef80h),hl		;68cc
	ld a,006h		;68cf
	ld (0ef82h),a		;68d1
	ld a,001h		;68d4
	ld (0ef83h),a		;68d6
	ld hl,0c400h		;68d9
	call L_6912		;68dc
	ld a,081h		;68df
	ld (0ef83h),a		;68e1
	ld hl,0c410h		;68e4
	call L_6912		;68e7
	ld a,001h		;68ea
	ld (0ef83h),a		;68ec
	ld hl,0c600h		;68ef
	call L_6912		;68f2
	ld a,081h		;68f5
	ld (0ef83h),a		;68f7
	ld hl,0c610h		;68fa
	call L_6912		;68fd
	ld a,001h		;6900
	ld (0ef83h),a		;6902
	ld hl,0001eh		;6905
	ld (0ef80h),hl		;6908
	ld hl,0c500h		;690b
	call L_6912		;690e
	ret			;6911
L_6912:
	ld a,(0ef83h)		;6912
	ld (hl),a			;6915
	inc hl			;6916
	add a,002h		;6917
	ld (hl),a			;6919
	ld e,l			;691a
	ld d,h			;691b
	inc de			;691c
	ld bc,(0ef80h)		;691d
	ldir		;6921
	dec a			;6923
	ld (hl),a			;6924
	ld a,(0ef82h)		;6925
	inc a			;6928
	ld b,a			;6929
	ld a,(0ef83h)		;692a
	add a,003h		;692d
	ld de,00020h		;692f
L_6932:
	add hl,de			;6932
	ld (hl),a			;6933
	djnz L_6932		;6934
	add a,002h		;6936
	ld (hl),a			;6938
	dec hl			;6939
	sub 003h		;693a
	ld (hl),a			;693c
	ld e,l			;693d
	ld d,h			;693e
	dec de			;693f
	ld bc,(0ef80h)		;6940
	lddr		;6944
	add a,002h		;6946
	ld (hl),a			;6948
	ld a,(0ef82h)		;6949
	ld b,a			;694c
	ld de,0ffe0h		;694d
	ld a,(0ef83h)		;6950
	add a,003h		;6953
L_6955:
	add hl,de			;6955
	ld (hl),a			;6956
	djnz L_6955		;6957
	ret			;6959
L_695A:
	push af			;695a
	ld hl,0a101h		;695b
	ld de,0e800h		;695e
	call 055cdh		;6961
	pop af			;6964
	ld b,a			;6965
	add a,a			;6966
	add a,a			;6967
	add a,a			;6968
	sub b			;6969
	ld hl,0e800h		;696a
	call 04089h		;696d
	ld (0ef84h),hl		;6970
	ld de,0c522h		;6973
	ld b,007h		;6976
L_6978:
	push bc			;6978
	push de			;6979
	ld hl,(0ef84h)		;697a
	ld a,(hl)			;697d
	inc hl			;697e
	ld (0ef84h),hl		;697f
	add a,a			;6982
	add a,a			;6983
	add a,a			;6984
	ld b,a			;6985
	add a,a			;6986
	add a,b			;6987
	ld hl,0e81ch		;6988
	call 04089h		;698b
	ld bc,00604h		;698e
	call 059a1h		;6991
	pop de			;6994
	inc de			;6995
	inc de			;6996
	inc de			;6997
	inc de			;6998
	pop bc			;6999
	djnz L_6978		;699a
	ret			;699c
L_699D:
	ld bc,00300h		;699d
L_69A0:
	push bc			;69a0
	ld a,c			;69a1
	call L_69AA		;69a2
	pop bc			;69a5
	inc c			;69a6
	djnz L_69A0		;69a7
	ret			;69a9
L_69AA:
	push af			;69aa
	ld hl,0a1c3h		;69ab
	ld de,0e800h		;69ae
	call 055cdh		;69b1
	pop af			;69b4
	call L_69BC		;69b5
	call 059a1h		;69b8
	ret			;69bb
L_69BC:
	add a,a			;69bc
	add a,a			;69bd
	ld c,a			;69be
	ld b,000h		;69bf
	ld hl,069d8h		;69c1
	add hl,bc			;69c4
	ld e,(hl)			;69c5
	inc hl			;69c6
	ld d,(hl)			;69c7
	push hl			;69c8
	ld hl,(0e530h)		;69c9
	add hl,de			;69cc
	ex de,hl			;69cd
	pop hl			;69ce
	inc hl			;69cf
	ld a,(hl)			;69d0
	inc hl			;69d1
	ld h,(hl)			;69d2
	ld l,a			;69d3
	ld bc,00608h		;69d4
	ret			;69d7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x69d8..0x69f0  (24 bytes)
DATA_69D8:
	defb 022h,0c4h,000h,0e8h,02ch,0c4h,030h,0e8h,036h,0c4h,060h,0e8h,036h,0c4h,090h,0e8h	; 69d8  "...,.0.6.`.6...
	defb 036h,0c4h,0c0h,0e8h,036h,0c4h,0f0h,0e8h	; 69e8  6...6...

; ======================================================================
; CODIGO 0x69f0..0x6a21  (49 bytes)
; ======================================================================


L_69F0:
	xor a			;69f0
	call L_6A00		;69f1
	call 059a1h		;69f4
	ld a,001h		;69f7
	call L_6A00		;69f9
	call 059a1h		;69fc
	ret			;69ff
L_6A00:
	or a			;6a00
	jr nz,L_6A12		;6a01
	ld de,0c445h		;6a03
	ld hl,(0e530h)		;6a06
	add hl,de			;6a09
	ex de,hl			;6a0a
	ld hl,06a21h		;6a0b
	ld bc,00306h		;6a0e
	ret			;6a11
L_6A12:
	ld de,0c455h		;6a12
	ld hl,(0e530h)		;6a15
	add hl,de			;6a18
	ex de,hl			;6a19
	ld hl,06a33h		;6a1a
	ld bc,00306h		;6a1d
	ret			;6a20

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6a21..0x6a45  (36 bytes)
DATA_6A21:
	defb 000h,040h,041h,042h,043h,000h,000h,044h,045h,046h,043h,000h,000h,013h,014h,015h	; 6a21  .@ABC..DEFC.....
	defb 016h,000h,000h,047h,048h,049h,04ah,000h,04bh,04ch,04dh,04eh,04fh,000h,017h,018h	; 6a31  ...GHIJ.KLMNO...
	defb 019h,01ah,01bh,01ch	; 6a41

; ======================================================================
; CODIGO 0x6a45..0x6a79  (52 bytes)
; ======================================================================


L_6A45:
	ld bc,00400h		;6a45
L_6A48:
	push bc			;6a48
	ld a,c			;6a49
	call L_6A52		;6a4a
	pop bc			;6a4d
	inc c			;6a4e
	djnz L_6A48		;6a4f
	ret			;6a51
L_6A52:
	push af			;6a52
	ld hl,0a23eh		;6a53
	ld de,0e800h		;6a56
	call 055cdh		;6a59
	pop af			;6a5c
	call L_6A64		;6a5d
	call 059a1h		;6a60
	ret			;6a63
L_6A64:
	add a,a			;6a64
	add a,a			;6a65
	ld c,a			;6a66
	ld b,000h		;6a67
	ld hl,06a79h		;6a69
	add hl,bc			;6a6c
	ld e,(hl)			;6a6d
	inc hl			;6a6e
	ld d,(hl)			;6a6f
	inc hl			;6a70
	ld a,(hl)			;6a71
	inc hl			;6a72
	ld h,(hl)			;6a73
	ld l,a			;6a74
	ld bc,0060eh		;6a75
	ret			;6a78

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6a79..0x6a89  (16 bytes)
DATA_6A79:
	defb 021h,0c4h,000h,0e8h,031h,0c4h,054h,0e8h,021h,0c6h,0a8h,0e8h,031h,0c6h,0fch,0e8h	; 6a79  !...1.T.!...1...

; ======================================================================
; CODIGO 0x6a89..0x6abc  (51 bytes)
; ======================================================================


L_6A89:
	call L_6A00		;6a89
	inc b			;6a8c
	inc b			;6a8d
	inc c			;6a8e
	inc c			;6a8f
	ex de,hl			;6a90
	ld de,0ffdfh		;6a91
	add hl,de			;6a94
	ex de,hl			;6a95
	call 059c7h		;6a96
	ret			;6a99
L_6A9A:
	ld bc,00400h		;6a9a
L_6A9D:
	push bc			;6a9d
	ld a,(0e380h)		;6a9e
	cp c			;6aa1
	ld a,c			;6aa2
	call nz,L_6AAB		;6aa3
	pop bc			;6aa6
	inc c			;6aa7
	djnz L_6A9D		;6aa8
	ret			;6aaa
L_6AAB:
	call L_6A64		;6aab
	inc b			;6aae
	inc b			;6aaf
	inc c			;6ab0
	inc c			;6ab1
	ex de,hl			;6ab2
	ld de,0ffdfh		;6ab3
	add hl,de			;6ab6
	ex de,hl			;6ab7
	call 059c7h		;6ab8
	ret			;6abb

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6abc..0x6ac0  (4 bytes)
DATA_6ABC:
	defb 090h,030h,0a0h,050h	; 6abc

; ======================================================================
; CODIGO 0x6ac0..0x6ac7  (7 bytes)
; ======================================================================


L_6AC0:
	ld hl,06ac7h		;6ac0
	call L_78A2		;6ac3
	ret			;6ac6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6ac7..0x6acb  (4 bytes)
DATA_6AC7:
	defb 007h,001h,0ffh,000h	; 6ac7

; ======================================================================
; CODIGO 0x6acb..0x6b57  (140 bytes)
; ======================================================================


L_6ACB:
	ld a,(0e380h)		;6acb
	cp 002h		;6ace
	ld a,004h		;6ad0
	jr c,L_6AD6		;6ad2
	ld a,001h		;6ad4
L_6AD6:
	ld (0ef80h),a		;6ad6
	ld hl,0ff01h		;6ad9
	ld (0ef81h),hl		;6adc
	ld a,(0e380h)		;6adf
	cp 002h		;6ae2
	ld a,001h		;6ae4
	jr c,L_6AEA		;6ae6
	ld a,004h		;6ae8
L_6AEA:
	ld (0ef83h),a		;6aea
	ld (0ef86h),a		;6aed
	ld a,(0e37fh)		;6af0
	or a			;6af3
	ld hl,00413h		;6af4
	ld de,00740h		;6af7
	jr nz,L_6B02		;6afa
	ld hl,00617h		;6afc
	ld de,00947h		;6aff
L_6B02:
	ld (0ef84h),hl		;6b02
	ld (0ef87h),de		;6b05
	xor a			;6b09
	ld (0ef89h),a		;6b0a
	ld hl,0ef80h		;6b0d
	call L_78A2		;6b10
	ret			;6b13
L_6B14:
	ld a,(0e380h)		;6b14
	cp 002h		;6b17
	ld a,001h		;6b19
	jr c,L_6B1F		;6b1b
	ld a,004h		;6b1d
L_6B1F:
	ld (0ef80h),a		;6b1f
	ld hl,0ff01h		;6b22
	ld (0ef81h),hl		;6b25
	ld a,(0e380h)		;6b28
	cp 002h		;6b2b
	ld l,001h		;6b2d
	jr nc,L_6B33		;6b2f
	ld l,004h		;6b31
L_6B33:
	bit 0,a		;6b33
	ld h,081h		;6b35
	jr z,L_6B3B		;6b37
	ld h,001h		;6b39
L_6B3B:
	ld (0ef83h),hl		;6b3b
	ld a,07fh		;6b3e
	ld (0ef85h),a		;6b40
	xor a			;6b43
	ld (0ef86h),a		;6b44
	ld hl,0ef80h		;6b47
	call L_78A2		;6b4a
	ret			;6b4d
L_6B4E:
	ld hl,06b57h		;6b4e
	ld c,0f0h		;6b51
	call L_7978		;6b53
	ret			;6b56

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6b57..0x6b61  (10 bytes)
DATA_6B57:
	defb 005h,001h,042h,005h,081h,042h,002h,001h,006h,000h	; 6b57  ..B..B....

; ======================================================================
; CODIGO 0x6b61..0x6b6a  (9 bytes)
; ======================================================================


L_6B61:
	ld c,090h		;6b61
	ld hl,06b6ah		;6b63
	call L_7AAD		;6b66
	ret			;6b69

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6b6a..0x6b6e  (4 bytes)
DATA_6B6A:
	defb 004h,011h,032h,000h	; 6b6a

; ======================================================================
; CODIGO 0x6b6e..0x6b83  (21 bytes)
; ======================================================================


L_6B6E:
	ld de,0a298h		;6b6e
	call 04b36h		;6b71
	ld hl,06b83h		;6b74
	ld c,0f0h		;6b77
	call L_7978		;6b79
	ld hl,06b87h		;6b7c
	call L_7B52		;6b7f
	ret			;6b82

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6b83..0x6b93  (16 bytes)
DATA_6B83:
	defb 002h,020h,036h,000h,002h,060h,032h,002h,030h,0a4h,060h,05ch,0a5h,000h,000h,000h	; 6b83  . 6..`2.0.`\....

; ======================================================================
; CODIGO 0x6b93..0x6bc7  (52 bytes)
; ======================================================================


L_6B93:
	ld a,(0e380h)		;6b93
	push af			;6b96
	xor 003h		;6b97
	ld (0e380h),a		;6b99
	call L_6BA4		;6b9c
	pop af			;6b9f
	ld (0e380h),a		;6ba0
	ret			;6ba3
L_6BA4:
	ld hl,06bc7h		;6ba4
	ld a,(0e380h)		;6ba7
	cp 002h		;6baa
	jr c,L_6BB1		;6bac
	ld hl,06bceh		;6bae
L_6BB1:
	ld c,0f0h		;6bb1
	call L_7978		;6bb3
	ld hl,06bd5h		;6bb6
	ld a,(0e380h)		;6bb9
	cp 002h		;6bbc
	jr c,L_6BC3		;6bbe
	ld hl,06be7h		;6bc0
L_6BC3:
	call L_7B52		;6bc3
	ret			;6bc6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6bc7..0x6bf9  (50 bytes)
DATA_6BC7:
	defb 001h,001h,006h,001h,013h,01ah,000h,004h,001h,006h,004h,013h,01ah,000h,001h,040h	; 6bc7  ...............@
	defb 030h,001h,006h,0a6h,013h,0fbh,0a7h,001h,0c2h,0a6h,040h,000h,0a8h,000h,000h,000h	; 6bd7  0.........@.....
	defb 004h,040h,030h,004h,006h,0a6h,013h,0fbh,0a7h,004h,0c2h,0a6h,040h,000h,0a8h,000h	; 6be7  .@0.........@...
	defb 000h,000h	; 6bf7

; ======================================================================
; CODIGO 0x6bf9..0x6c5a  (97 bytes)
; ======================================================================


L_6BF9:
	ld hl,02008h		;6bf9
	call L_6C53		;6bfc
	ld hl,02408h		;6bff
	call L_6C53		;6c02
	ld hl,03008h		;6c05
	call L_6C53		;6c08
	ld hl,03408h		;6c0b
	call L_6C53		;6c0e
	ld hl,02808h		;6c11
	call L_6C53		;6c14
	ret			;6c17
L_6C18:
	ld a,(0e380h)		;6c18
	push af			;6c1b
	xor 003h		;6c1c
	ld (0e380h),a		;6c1e
	call L_6C29		;6c21
	pop af			;6c24
	ld (0e380h),a		;6c25
	ret			;6c28
L_6C29:
	ld a,(0e380h)		;6c29
	cp 002h		;6c2c
	ld hl,02008h		;6c2e
	ld de,02038h		;6c31
	ld bc,02068h		;6c34
	jr nc,L_6C42		;6c37
	ld hl,03008h		;6c39
	ld de,03038h		;6c3c
	ld bc,03068h		;6c3f
L_6C42:
	push bc			;6c42
	push de			;6c43
	call L_6C53		;6c44
	pop de			;6c47
	ex de,hl			;6c48
	call L_6C53		;6c49
	pop bc			;6c4c
	ld h,b			;6c4d
	ld l,c			;6c4e
	call L_6C53		;6c4f
	ret			;6c52
L_6C53:
	ld de,06c5ah		;6c53
	call 04b3ch		;6c56
	ret			;6c59

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c5a..0x6c79  (31 bytes)
DATA_6C5A:
	defb 003h,000h,002h,01fh,003h,018h,003h,000h,002h,0f8h,003h,018h,003h,000h,002h,0ffh	; 6c5a  ................
	defb 003h,000h,00bh,018h,002h,01fh,003h,000h,003h,018h,002h,0f8h,003h,000h,000h	; 6c6a  ...............

; ======================================================================
; CODIGO 0x6c79..0x6cd6  (93 bytes)
; ======================================================================


L_6C79:
	call 041ach		;6c79
	ld hl,02088h		;6c7c
	ld de,0b446h		;6c7f
	call 04b3ch		;6c82
	ld hl,02488h		;6c85
	ld de,0b586h		;6c88
	call 04b3ch		;6c8b
	ld hl,03088h		;6c8e
	ld de,0b699h		;6c91
	call 04b3ch		;6c94
	ld hl,03488h		;6c97
	ld de,0b7a6h		;6c9a
	call 04b3ch		;6c9d
	call 041bfh		;6ca0
	ret			;6ca3
L_6CA4:
	ld a,(0e31eh)		;6ca4
	or a			;6ca7
	ret z			;6ca8
	cp 008h		;6ca9
	jp c,L_6E29		;6cab
	cp 00bh		;6cae
	jp c,L_7D46		;6cb0
	jp z,080b7h		;6cb3
	jp 0804ah		;6cb6
L_6CB9:
	ld hl,0e7e4h		;6cb9
	inc (hl)			;6cbc
	inc hl			;6cbd
	ld (hl),000h		;6cbe
	ret			;6cc0
L_6CC1:
	ld hl,0e7e5h		;6cc1
	inc (hl)			;6cc4
	ret			;6cc5
L_6CC6:
	xor a			;6cc6
	ld (0e31eh),a		;6cc7
	ret			;6cca
L_6CCB:
	push bc			;6ccb
	call 05de9h		;6ccc
	call 047ceh		;6ccf
	pop af			;6cd2
	call 04093h		;6cd3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6cd6..0x6cdc  (6 bytes)
DATA_6CD6:
	defb 0dch,06ch,0e3h,06ch,005h,06dh	; 6cd6

; ======================================================================
; CODIGO 0x6cdc..0x6cf8  (28 bytes)
; ======================================================================


L_6CDC:
	call 0578bh		;6cdc
	call L_6CC1		;6cdf
	ret			;6ce2
L_6CE3:
	ld hl,0e402h		;6ce3
	dec (hl)			;6ce6
	ret nz			;6ce7
	ld hl,06cf8h		;6ce8
	call L_78A2		;6ceb
	ld hl,06d02h		;6cee
	call L_7913		;6cf1
	call L_6CC1		;6cf4
	ret			;6cf7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6cf8..0x6d05  (13 bytes)
DATA_6CF8:
	defb 006h,001h,0ffh,001h,001h,036h,001h,059h,0a7h,000h,024h,037h,0ffh	; 6cf8  .....6.Y..$7.

; ======================================================================
; CODIGO 0x6d05..0x6d1c  (23 bytes)
; ======================================================================


L_6D05:
	call L_78AC		;6d05
	call L_791D		;6d08
	ld a,(0e560h)		;6d0b
	or a			;6d0e
	ret nz			;6d0f
	call L_6CB9		;6d10
	ret			;6d13
L_6D14:
	push bc			;6d14
	call 05de9h		;6d15
	pop af			;6d18
	call 04093h		;6d19

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6d1c..0x6d24  (8 bytes)
DATA_6D1C:
	defb 024h,06dh,050h,06dh,06dh,06dh,07ah,06dh	; 6d1c  $mPmmmzm

; ======================================================================
; CODIGO 0x6d24..0x6d77  (83 bytes)
; ======================================================================


L_6D24:
	call 05938h		;6d24
	ld hl,(0e604h)		;6d27
	ld (0e7e8h),hl		;6d2a
	ld hl,(0e606h)		;6d2d
	ld (0e7eah),hl		;6d30
	ld de,08040h		;6d33
	ld a,040h		;6d36
	call 047fdh		;6d38
	call 04a7dh		;6d3b
	ld (0e7ech),hl		;6d3e
	call 04a75h		;6d41
	ld (0e7eeh),de		;6d44
	xor a			;6d48
	ld (0e7e7h),a		;6d49
	call L_6CC1		;6d4c
	ret			;6d4f
L_6D50:
	call L_6D89		;6d50
	call c,L_6CC1		;6d53
	call L_6D5A		;6d56
	ret			;6d59
L_6D5A:
	ld a,(0e7edh)		;6d5a
	bit 7,a		;6d5d
	ld a,001h		;6d5f
	jr nz,L_6D65		;6d61
	ld a,002h		;6d63
L_6D65:
	ld bc,0ef80h		;6d65
	ld (bc),a			;6d68
	call 047d7h		;6d69
	ret			;6d6c
L_6D6D:
	ld hl,06d77h		;6d6d
	call L_7913		;6d70
	call L_6CC1		;6d73
	ret			;6d76

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6d77..0x6d7a  (3 bytes)
DATA_6D77:
	defb 000h,00fh,0ffh	; 6d77

; ======================================================================
; CODIGO 0x6d7a..0x6dc2  (72 bytes)
; ======================================================================


L_6D7A:
	call L_791D		;6d7a
	ld a,(0e573h)		;6d7d
	or a			;6d80
	ret nz			;6d81
	call L_601E		;6d82
	call L_6CB9		;6d85
	ret			;6d88
L_6D89:
	ld hl,0e7e7h		;6d89
	inc (hl)			;6d8c
	call L_6DA0		;6d8d
	ld a,(0e604h)		;6d90
	sub 030h		;6d93
	cp 021h		;6d95
	ret nc			;6d97
	ld a,(0e606h)		;6d98
	sub 070h		;6d9b
	cp 021h		;6d9d
	ret			;6d9f
L_6DA0:
	ld hl,(0e603h)		;6da0
	ld de,(0e7ech)		;6da3
	add hl,de			;6da7
	ld (0e603h),hl		;6da8
	ld hl,(0e605h)		;6dab
	ld de,(0e7eeh)		;6dae
	add hl,de			;6db2
	ld (0e605h),hl		;6db3
	ret			;6db6
L_6DB7:
	push bc			;6db7
	call 05de9h		;6db8
	call 05967h		;6dbb
	pop af			;6dbe
	call 04093h		;6dbf

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6dc2..0x6dca  (8 bytes)
DATA_6DC2:
	defb 0cah,06dh,0e1h,06dh,005h,06eh,026h,06eh	; 6dc2  .m.m.n&n

; ======================================================================
; CODIGO 0x6dca..0x6e31  (103 bytes)
; ======================================================================


L_6DCA:
	ld a,(0e31eh)		;6dca
	cp 008h		;6dcd
	jr c,L_6DD8		;6dcf
	call 05951h		;6dd1
	ld a,078h		;6dd4
	jr L_6DDA		;6dd6
L_6DD8:
	ld a,001h		;6dd8
L_6DDA:
	ld (0e40ch),a		;6dda
	call L_6CC1		;6ddd
	ret			;6de0
L_6DE1:
	ld hl,0e40ch		;6de1
	dec (hl)			;6de4
	ret nz			;6de5
	call 05938h		;6de6
	call L_6033		;6de9
	call 05007h		;6dec
	ld hl,(0e7ech)		;6def
	call 04a7dh		;6df2
	ld (0e7ech),hl		;6df5
	ld hl,(0e7eeh)		;6df8
	call 04a7dh		;6dfb
	ld (0e7eeh),hl		;6dfe
	call L_6CC1		;6e01
	ret			;6e04
L_6E05:
	call L_6DA0		;6e05
	call L_6D5A		;6e08
	ld hl,0e7e7h		;6e0b
	dec (hl)			;6e0e
	ret nz			;6e0f
	ld hl,(0e7e8h)		;6e10
	ld (0e604h),hl		;6e13
	ld hl,(0e7eah)		;6e16
	ld (0e606h),hl		;6e19
	call 05959h		;6e1c
	call L_6028		;6e1f
	call L_6CC1		;6e22
	ret			;6e25
L_6E26:
	jp L_6CC6		;6e26
L_6E29:
	ld bc,(0e7e4h)		;6e29
	ld a,c			;6e2d
	call 04093h		;6e2e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e31..0x6e39  (8 bytes)
DATA_6E31:
	defb 0cbh,06ch,014h,06dh,039h,06eh,0b7h,06dh	; 6e31  .l.m9n.m

; ======================================================================
; CODIGO 0x6e39..0x6e44  (11 bytes)
; ======================================================================


L_6E39:
	push bc			;6e39
	call 05de9h		;6e3a
	call 05967h		;6e3d
	pop af			;6e40
	call 04093h		;6e41

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e44..0x6e5e  (26 bytes)
DATA_6E44:
	defb 05eh,06eh,071h,06eh,08dh,06eh,09ch,06eh,0adh,06eh,0c8h,06eh,0f4h,06eh,025h,06fh	; 6e44  ^nqn.n.n.n.n.n%o
	defb 025h,06fh,02bh,06fh,056h,06fh,05fh,06fh,072h,06fh	; 6e54  %o+oVo_oro

; ======================================================================
; CODIGO 0x6e5e..0x6f3d  (223 bytes)
; ======================================================================


L_6E5E:
	call 05718h		;6e5e
	call 05934h		;6e61
	call L_6FB0		;6e64
	call L_6F87		;6e67
	call L_7069		;6e6a
	call L_6CC1		;6e6d
	ret			;6e70
L_6E71:
	call L_7A3D		;6e71
	ld a,(0e564h)		;6e74
	or a			;6e77
	ret nz			;6e78
	ld a,(0e36fh)		;6e79
	cp 007h		;6e7c
	push af			;6e7e
	call c,L_71B7		;6e7f
	pop af			;6e82
	call nc,L_71B1		;6e83
	call L_6F94		;6e86
	call L_6CC1		;6e89
	ret			;6e8c
L_6E8D:
	call L_7CCC		;6e8d
	ld a,(0e577h)		;6e90
	or a			;6e93
	ret nz			;6e94
	call L_6FA2		;6e95
	call L_6CC1		;6e98
	ret			;6e9b
L_6E9C:
	call L_7CCC		;6e9c
	ld a,(0e577h)		;6e9f
	or a			;6ea2
	ret nz			;6ea3
	ld a,03ch		;6ea4
	ld (0e7e6h),a		;6ea6
	call L_6CC1		;6ea9
	ret			;6eac
L_6EAD:
	ld hl,0e7e6h		;6ead
	dec (hl)			;6eb0
	ret nz			;6eb1
	ld (hl),0b4h		;6eb2
	ld hl,0e36fh		;6eb4
	ld a,(hl)			;6eb7
	cp 007h		;6eb8
	jr nc,L_6EC2		;6eba
	inc a			;6ebc
	ld (hl),a			;6ebd
	call L_6CC1		;6ebe
	ret			;6ec1
L_6EC2:
	ld a,009h		;6ec2
	ld (0e7e5h),a		;6ec4
	ret			;6ec7
L_6EC8:
	ld hl,0e7e6h		;6ec8
	dec (hl)			;6ecb
	jr z,L_6EDA		;6ecc
	bit 3,(hl)		;6ece
	ld a,009h		;6ed0
	jr z,L_6ED6		;6ed2
	ld a,000h		;6ed4
L_6ED6:
	call L_7199		;6ed6
	ret			;6ed9
L_6EDA:
	ld a,009h		;6eda
	call L_7199		;6edc
	call L_6FC9		;6edf
	call L_6FDF		;6ee2
	call L_6FFA		;6ee5
	call L_7007		;6ee8
	ld a,078h		;6eeb
	ld (0e7e6h),a		;6eed
	call L_6CC1		;6ef0
	ret			;6ef3
L_6EF4:
	call L_7022		;6ef4
	ld hl,0e7e6h		;6ef7
	dec (hl)			;6efa
	ret nz			;6efb
	call L_6F06		;6efc
	call 047e8h		;6eff
	call L_6CC1		;6f02
	ret			;6f05
L_6F06:
	ld a,(0e36fh)		;6f06
	ld hl,0701ah		;6f09
	call 04a6eh		;6f0c
	ld (0ef80h),a		;6f0f
	call 047f4h		;6f12
	ld hl,0e433h		;6f15
	ld a,(0ef80h)		;6f18
	call 04089h		;6f1b
	ld a,(hl)			;6f1e
	cp 0ffh		;6f1f
	ret nz			;6f21
	dec c			;6f22
	ld (hl),c			;6f23
	ret			;6f24
L_6F25:
	ld a,00bh		;6f25
	ld (0e7e5h),a		;6f27
	ret			;6f2a
L_6F2B:
	call 0551fh		;6f2b
	ld hl,06f3dh		;6f2e
	call 04b1fh		;6f31
	ld a,078h		;6f34
	ld (0e7e6h),a		;6f36
	call L_6CC1		;6f39
	ret			;6f3c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6f3d..0x6f56  (25 bytes)
DATA_6F3D:
	defb 02ah,0cch,017h,026h,01dh,01dh,000h,021h,020h,028h,016h,023h,026h,021h,0feh,06dh	; 6f3d  *..&...! (.#&!.m
	defb 0cch,012h,01dh,023h,016h,012h,015h,02ah,0ffh	; 6f4d  ...#...*.

; ======================================================================
; CODIGO 0x6f56..0x6f6f  (25 bytes)
; ======================================================================


L_6F56:
	ld hl,0e7e6h		;6f56
	dec (hl)			;6f59
	ret nz			;6f5a
	call L_6CC1		;6f5b
	ret			;6f5e
L_6F5F:
	ld hl,06cf8h		;6f5f
	call L_78A2		;6f62
	ld hl,06f6fh		;6f65
	call L_7913		;6f68
	call L_6CC1		;6f6b
	ret			;6f6e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6f6f..0x6f72  (3 bytes)
DATA_6F6F:
	defb 000h,02eh,0ffh	; 6f6f

; ======================================================================
; CODIGO 0x6f72..0x6f90  (30 bytes)
; ======================================================================


L_6F72:
	call L_78AC		;6f72
	call L_791D		;6f75
	ld a,(0e560h)		;6f78
	or a			;6f7b
	ret nz			;6f7c
	call 05648h		;6f7d
	call 05de9h		;6f80
	call L_6CB9		;6f83
	ret			;6f86
L_6F87:
	ld c,0f0h		;6f87
L_6F89:
	ld hl,06f90h		;6f89
	call L_7978		;6f8c
	ret			;6f8f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6f90..0x6f94  (4 bytes)
DATA_6F90:
	defb 006h,020h,055h,000h	; 6f90

; ======================================================================
; CODIGO 0x6f94..0x6f9b  (7 bytes)
; ======================================================================


L_6F94:
	ld hl,06f9bh		;6f94
	call L_7C85		;6f97
	ret			;6f9a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6f9b..0x6fa2  (7 bytes)
DATA_6F9B:
	defb 000h,0cdh,000h,060h,0ffh,0b7h,0ffh	; 6f9b

; ======================================================================
; CODIGO 0x6fa2..0x6fa9  (7 bytes)
; ======================================================================


L_6FA2:
	ld hl,06fa9h		;6fa2
	call L_7C85		;6fa5
	ret			;6fa8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6fa9..0x6fb0  (7 bytes)
DATA_6FA9:
	defb 000h,0cdh,060h,058h,0d5h,0b9h,0ffh	; 6fa9

; ======================================================================
; CODIGO 0x6fb0..0x701b  (107 bytes)
; ======================================================================


L_6FB0:
	ld a,(0e380h)		;6fb0
	ld hl,0b0fdh		;6fb3
	call 04a5ah		;6fb6
	ex de,hl			;6fb9
	push de			;6fba
	ld hl,02100h		;6fbb
	call 04b3ch		;6fbe
	pop de			;6fc1
	ld hl,02900h		;6fc2
	call 04b3ch		;6fc5
	ret			;6fc8
L_6FC9:
	ld hl,07045h		;6fc9
	ld a,(0e380h)		;6fcc
	call 04a5ah		;6fcf
	ld a,(0e36fh)		;6fd2
	call 04a6eh		;6fd5
	ld hl,03008h		;6fd8
	call 04f55h		;6fdb
	ret			;6fde
L_6FDF:
	ld hl,01008h		;6fdf
	ld b,009h		;6fe2
L_6FE4:
	push bc			;6fe4
	xor a			;6fe5
	call 0004dh		;6fe6   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;6fe9
	ld bc,00007h		;6fea
	ld a,0a0h		;6fed
	call 00056h		;6fef   ; BIOS FILVRM - Fills VRAM with value
	ld bc,00007h		;6ff2
	add hl,bc			;6ff5
	pop bc			;6ff6
	djnz L_6FE4		;6ff7
	ret			;6ff9
L_6FFA:
	ld hl,0cc2bh		;6ffa
	ld a,001h		;6ffd
	ld b,00bh		;6fff
L_7001:
	ld (hl),a			;7001
	inc a			;7002
	inc hl			;7003
	djnz L_7001		;7004
	ret			;7006
L_7007:
	ld a,(0e36fh)		;7007
	ld hl,l701ah		;700a
	call 04a6eh		;700d
	add a,a			;7010
	ld hl,03ac0h		;7011
	call 04089h		;7014
	ld (0e7f2h),hl		;7017
L_701A:
	ret			;701a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x701b..0x7022  (7 bytes)
DATA_701B:
	defb 006h,006h,005h,005h,004h,002h,002h	; 701b

; ======================================================================
; CODIGO 0x7022..0x7045  (35 bytes)
; ======================================================================


L_7022:
	ld hl,(0e7f2h)		;7022
	call 04ab6h		;7025
	ld a,(0e303h)		;7028
	bit 2,a		;702b
	jr nz,L_703B		;702d
	ld a,03ah		;702f
	exx			;7031
	out (c),a		;7032
	exx			;7034
	inc a			;7035
	exx			;7036
	out (c),a		;7037
	exx			;7039
	ret			;703a
L_703B:
	xor a			;703b
	exx			;703c
	out (c),a		;703d
	exx			;703f
	exx			;7040
	out (c),a		;7041
	exx			;7043
	ret			;7044

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7045..0x7069  (36 bytes)
DATA_7045:
	defb 04ch,070h,053h,070h,05ah,070h,061h,070h,01ch,01dh,019h,01ah,018h,00dh,014h,01eh	; 7045  LpSpZpap........
	defb 01dh,019h,01ah,018h,00fh,014h,01fh,020h,019h,01ah,018h,011h,014h,01fh,021h,019h	; 7055  ....... ......!.
	defb 01ah,018h,013h,014h	; 7065

; ======================================================================
; CODIGO 0x7069..0x7073  (10 bytes)
; ======================================================================


L_7069:
	ld a,(0e380h)		;7069
	ld hl,07073h		;706c
	call L_6064		;706f
	ret			;7072

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7073..0x7199  (294 bytes)
DATA_7073:
	defb 07bh,070h,0bbh,070h,00ch,071h,04eh,071h,067h,0cah,008h,013h,002h,0c1h,000h,042h	; 7073  {p.p.qNqg......B
	defb 020h,011h,000h,044h,022h,00fh,000h,0c3h,026h,023h,000h,043h,027h,00dh,000h,0c2h	; 7083   ..D"...&#.C'...
	defb 026h,023h,002h,02ah,044h,02bh,00ah,000h,050h,02fh,003h,000h,045h,03fh,0c1h,021h	; 7093  &#.*D+..P/..E?.!
	defb 04ch,044h,0c2h,000h,02fh,044h,050h,0c1h,000h,047h,054h,043h,05ah,0c1h,05ah,042h	; 70a3  LD../DP..GTCZ.ZB
	defb 05dh,0c1h,03fh,047h,05fh,00bh,000h,000h,067h,0cah,00ah,013h,002h,002h,000h,046h	; 70b3  ].?G_...g......F
	defb 020h,00ch,000h,047h,026h,00bh,000h,04fh,02dh,004h,000h,042h,03ch,0c2h,000h,03eh	; 70c3   ..G&..O-..B<..>
	defb 002h,040h,043h,041h,0c1h,000h,042h,044h,002h,045h,045h,046h,002h,000h,043h,04bh	; 70d3  .@CA..BD.EEF..CK
	defb 0c5h,040h,000h,041h,04eh,047h,043h,04fh,046h,051h,004h,000h,043h,057h,0c1h,036h	; 70e3  .@.ANGCOFQ..CW.6
	defb 044h,05ah,00bh,000h,0c3h,05eh,000h,05fh,010h,000h,0c3h,060h,045h,061h,010h,000h	; 70f3  DZ...^._...`Ea..
	defb 042h,062h,010h,000h,043h,064h,00dh,000h,000h,067h,0cah,009h,013h,002h,0c1h,000h	; 7103  Bb..Cd...g......
	defb 043h,020h,010h,000h,043h,023h,010h,000h,044h,026h,00fh,000h,0c1h,026h,042h,02ah	; 7113  C ..C#..D&...&B*
	defb 0c1h,025h,002h,000h,042h,02ch,00ah,000h,04dh,02eh,006h,000h,042h,03bh,0c2h,026h	; 7123  .%..B,..M...B..&
	defb 000h,045h,03dh,042h,041h,0c2h,000h,05fh,04eh,043h,0c1h,021h,047h,051h,002h,057h	; 7133  .E=BA.._NC.!GQ.W
	defb 046h,058h,00eh,000h,0c1h,05eh,003h,041h,00fh,000h,000h,066h,0cah,00ah,014h,002h	; 7143  FX...^.A...f....
	defb 002h,000h,042h,020h,010h,000h,046h,022h,0c1h,021h,00dh,000h,044h,028h,0c1h,026h	; 7153  ..B ..F".!..D(.&
	defb 043h,02ch,0c2h,027h,02fh,00ch,000h,046h,030h,0c1h,000h,043h,036h,00ch,000h,04ah	; 7163  C,.'/..F0..C6..J
	defb 039h,046h,042h,004h,000h,050h,048h,002h,000h,046h,058h,0c1h,000h,045h,05eh,002h	; 7173  9FB..PH..FX..E^.
	defb 062h,042h,063h,002h,000h,04ah,065h,00ah,000h,044h,06fh,0c3h,069h,06dh,073h,00fh	; 7183  bBc..Je..Do.ims.
	defb 000h,082h,074h,010h,000h,000h	; 7193

; ======================================================================
; CODIGO 0x7199..0x720c  (115 bytes)
; ======================================================================


L_7199:
	ld (0e7f0h),a		;7199
	ld a,(0e7f1h)		;719c
	add a,a			;719f
	add a,a			;71a0
	ld de,0ef00h		;71a1
	call 0408eh		;71a4
	ld a,(0e36fh)		;71a7
	ld (0ef80h),a		;71aa
	call L_71DF		;71ad
	ret			;71b0
L_71B1:
	ld a,007h		;71b1
	call L_71CA		;71b3
	ret			;71b6
L_71B7:
	xor a			;71b7
	ld (0e7f1h),a		;71b8
	ld a,(0e36fh)		;71bb
	or a			;71be
	ret z			;71bf
	ld c,000h		;71c0
	call L_71CA		;71c2
	ld a,c			;71c5
	ld (0e7f1h),a		;71c6
	ret			;71c9
L_71CA:
	ld (0ef80h),a		;71ca
	ld a,00bh		;71cd
	ld (0e7f0h),a		;71cf
	ld de,0ef00h		;71d2
L_71D5:
	call L_71DF		;71d5
	ld hl,0ef80h		;71d8
	dec (hl)			;71db
	jr nz,L_71D5		;71dc
	ret			;71de
L_71DF:
	ld a,(0e380h)		;71df
	ld hl,0720ch		;71e2
	call 04a5ah		;71e5
	ld a,(0ef80h)		;71e8
	call 04a5ah		;71eb
	ld a,(hl)			;71ee
	inc hl			;71ef
	ld b,a			;71f0
	add a,c			;71f1
	ld c,a			;71f2
L_71F3:
	push bc			;71f3
	ldi		;71f4
	ldi		;71f6
	ldi		;71f8
	dec hl			;71fa
	ld a,(hl)			;71fb
	inc hl			;71fc
	cp 06ch		;71fd
	ld a,001h		;71ff
	jr z,L_7206		;7201
	ld a,(0e7f0h)		;7203
L_7206:
	ld (de),a			;7206
	inc de			;7207
	pop bc			;7208
	djnz L_71F3		;7209
	ret			;720b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x720c..0x730a  (254 bytes)
DATA_720C:
	defb 014h,072h,04dh,072h,08bh,072h,0cch,072h,024h,072h,025h,072h,02ch,072h,033h,072h	; 720c  .rMr.r.r$r%r,r3r
	defb 037h,072h,03bh,072h,03fh,072h,046h,072h,000h,002h,055h,042h,01ch,055h,052h,020h	; 721c  7r.r?rFr..UB.UR
	defb 002h,017h,03dh,000h,017h,04dh,004h,001h,02ah,081h,008h,001h,043h,0a0h,010h,001h	; 722c  ..=..M..*...C...
	defb 044h,08eh,00ch,002h,044h,0b0h,014h,044h,0c0h,018h,002h,05ah,039h,024h,05ah,049h	; 723c  D...D..D...Z9$ZI
	defb 028h,024h,072h,05dh,072h,06ah,072h,06eh,072h,072h,072h,076h,072h,07dh,072h,084h	; 724c  ($r]rjrnrrrvr}r.
	defb 072h,004h,05fh,050h,04ch,05fh,060h,050h,05fh,070h,054h,05fh,080h,058h,001h,01eh	; 725c  r._PL_`P_pT_.X..
	defb 073h,034h,001h,01dh,082h,008h,001h,044h,080h,038h,002h,03bh,095h,03ch,04bh,095h	; 726c  s4.....D.8...<K.
	defb 040h,002h,034h,09eh,044h,034h,0aeh,048h,002h,024h,034h,02ch,034h,034h,030h,024h	; 727c  @.4.D4.H.$4,440$
	defb 072h,09bh,072h,09fh,072h,0a6h,072h,0adh,072h,0b1h,072h,0b5h,072h,0c2h,072h,001h	; 728c  r.r.r.r.r.r.r.r.
	defb 050h,05fh,078h,002h,050h,06fh,07ch,050h,07fh,080h,002h,02dh,063h,008h,02dh,063h	; 729c  P_x.Po|P...-c.-c
	defb 06ch,001h,057h,048h,084h,001h,01fh,036h,068h,004h,03fh,0afh,070h,03fh,0bfh,074h	; 72ac  l.WH...6h.?.p?.t
	defb 03fh,0afh,06ch,03fh,0bfh,06ch,003h,00fh,026h,05ch,00fh,036h,060h,00fh,046h,064h	; 72bc  ?.l?.l..&\.6`.Fd
	defb 024h,072h,0dch,072h,0e3h,072h,0eah,072h,0eeh,072h,0f2h,072h,0f6h,072h,003h,073h	; 72cc  $r.r.r.r.r.r.r.s
	defb 002h,04ah,07ch,0a0h,04ah,08ch,0a4h,002h,039h,0c0h,09ch,039h,0c0h,06ch,001h,017h	; 72dc  .J|.J...9..9.l..
	defb 048h,090h,001h,05ch,048h,0ach,001h,04ch,072h,0a8h,004h,01bh,030h,088h,01bh,040h	; 72ec  H..\H..Lr...0..@
	defb 08ch,05ch,030h,0b0h,05ch,040h,0b4h,002h,037h,036h,094h,037h,046h,098h	; 72fc  .\0.\@..76.7F.

; ======================================================================
; CODIGO 0x730a..0x73e0  (214 bytes)
; ======================================================================


L_730A:
	ld a,002h		;730a
	call 05709h		;730c
	xor a			;730f
	ld (0e54ch),a		;7310
	call L_73AF		;7313
	call 0518eh		;7316
	call L_7344		;7319
	call L_743B		;731c
	ret			;731f
L_7320:
	call L_783F		;7320
	call L_7542		;7323
	call L_732A		;7326
	ret			;7329
L_732A:
	call L_7451		;732a
	ret c			;732d
	call L_746C		;732e
	call L_7487		;7331
	call L_74A2		;7334
	call L_74BD		;7337
	call L_745E		;733a
	call L_74D8		;733d
	call L_7528		;7340
	ret			;7343
L_7344:
	ld hl,0a8c8h		;7344
	ld de,0cd00h		;7347
	call 055adh		;734a
	ld hl,0cd00h		;734d
	ld de,0ca26h		;7350
	ld bc,00d14h		;7353
	call 059a1h		;7356
	ld hl,0a935h		;7359
	ld de,0cd00h		;735c
	call 055adh		;735f
	ld hl,0cd00h		;7362
	ld de,0cc01h		;7365
	ld bc,0071eh		;7368
	call 059a1h		;736b
	ld a,03dh		;736e
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
	ld hl,076ffh		;7396
	ld de,0ca5ah		;7399
	ld bc,00504h		;739c
	call 059a1h		;739f
	ld hl,077c3h		;73a2
	ld de,0cb7ah		;73a5
	ld bc,00504h		;73a8
	call 059a1h		;73ab
	ret			;73ae
L_73AF:
	ld ix,073e0h		;73af
	call 04cb1h		;73b3
	ld ix,073f9h		;73b6
	call 04d1bh		;73ba
	ld hl,01800h		;73bd
	ld de,0af44h		;73c0
	call 04b3ch		;73c3
	ld hl,01b40h		;73c6
	ld de,0b0c2h		;73c9
	call 04b3ch		;73cc
	ld ix,07406h		;73cf
	call 04e5ah		;73d3
	ld hl,01e00h		;73d6
	ld de,0b0f5h		;73d9
	call 04b3ch		;73dc
	ret			;73df

; ----------------------------------------------------------------------
; DATOS sin identificar  0x73e0..0x743b  (91 bytes)
DATA_73E0:
	defb 007h,06ah,0a9h,001h,0b6h,0a9h,004h,0d1h,0a9h,010h,0ceh,0aah,002h,025h,0abh,010h	; 73e0  .j...........%..
	defb 0b9h,0adh,001h,0d4h,0aeh,010h,00bh,0afh,000h,039h,03eh,024h,005h,072h,078h,012h	; 73f0  .........9>$.rx.
	defb 006h,014h,019h,009h,005h,000h,002h,004h,048h,058h,001h,001h,06ch,078h,002h,001h	; 7400  ........HX..lx..
	defb 068h,07ch,001h,001h,07ch,080h,002h,001h,070h,084h,001h,001h,068h,088h,002h,001h	; 7410  h|..|...p...h...
	defb 078h,08ch,001h,001h,074h,090h,002h,001h,06ch,094h,001h,001h,070h,098h,002h,001h	; 7420  x...t...l...p...
	defb 098h,09ch,002h,001h,074h,0a0h,001h,001h,0a0h,0a4h,000h	; 7430  ....t......

; ======================================================================
; CODIGO 0x743b..0x7573  (312 bytes)
; ======================================================================


L_743B:
	call L_746C		;743b
	call L_7487		;743e
	call L_74A2		;7441
	call L_74BD		;7444
	call L_7542		;7447
	call L_74D8		;744a
	call L_7528		;744d
	ret			;7450
L_7451:
	ld hl,0e540h		;7451
	ld b,(hl)			;7454
	inc hl			;7455
	ld a,(hl)			;7456
	inc a			;7457
	cp b			;7458
	jr c,L_745C		;7459
	xor a			;745b
L_745C:
	ld (hl),a			;745c
	ret			;745d
L_745E:
	ld hl,0ef00h		;745e
	ld de,0ef01h		;7461
	ld bc,00033h		;7464
	ld (hl),000h		;7467
	ldir		;7469
	ret			;746b
L_746C:
	ld hl,0e542h		;746c
	ld a,(hl)			;746f
	inc a			;7470
	cp 004h		;7471
	jr c,L_7476		;7473
	xor a			;7475
L_7476:
	ld (hl),a			;7476
	ld hl,07573h		;7477
	call 04a5ah		;747a
	ld de,0ca42h		;747d
	ld bc,00804h		;7480
	call 059a1h		;7483
	ret			;7486
L_7487:
	ld hl,0e543h		;7487
	ld a,(hl)			;748a
	inc a			;748b
	cp 004h		;748c
	jr c,L_7491		;748e
	xor a			;7490
L_7491:
	ld (hl),a			;7491
	ld hl,075fbh		;7492
	call 04a5ah		;7495
	ld de,0cb42h		;7498
	ld bc,00603h		;749b
	call 059a1h		;749e
	ret			;74a1
L_74A2:
	ld hl,0e544h		;74a2
	ld a,(hl)			;74a5
	inc a			;74a6
	cp 004h		;74a7
	jr c,L_74AC		;74a9
	xor a			;74ab
L_74AC:
	ld (hl),a			;74ac
	ld hl,0764bh		;74ad
	call 04a5ah		;74b0
	ld de,0cbc6h		;74b3
	ld bc,0020ah		;74b6
	call 059a1h		;74b9
	ret			;74bc
L_74BD:
	ld hl,0e54ah		;74bd
	ld a,(hl)			;74c0
	inc a			;74c1
	cp 004h		;74c2
	jr c,L_74C7		;74c4
	xor a			;74c6
L_74C7:
	ld (hl),a			;74c7
	ld hl,076b7h		;74c8
	call 04a5ah		;74cb
	ld de,0cafah		;74ce
	ld bc,00404h		;74d1
	call 059a1h		;74d4
	ret			;74d7
L_74D8:
	ld de,0ef00h		;74d8
	ld bc,0e546h		;74db
	ld hl,07713h		;74de
	exx			;74e1
	ld c,003h		;74e2
	exx			;74e4
	call L_7510		;74e5
	ld bc,0e547h		;74e8
	ld hl,07734h		;74eb
	exx			;74ee
	ld c,005h		;74ef
	exx			;74f1
	call L_7510		;74f2
	ld bc,0e548h		;74f5
	ld hl,0775bh		;74f8
	exx			;74fb
	ld c,008h		;74fc
	exx			;74fe
	call L_7510		;74ff
	ld bc,0e549h		;7502
	ld hl,0778fh		;7505
	exx			;7508
	ld c,008h		;7509
	exx			;750b
	call L_7510		;750c
	ret			;750f
L_7510:
	ld a,(bc)			;7510
	inc a			;7511
	exx			;7512
	cp c			;7513
	exx			;7514
	jr c,L_7518		;7515
	xor a			;7517
L_7518:
	ld (bc),a			;7518
	call 04a5ah		;7519
	ld a,(hl)			;751c
	or a			;751d
	ret z			;751e
	add a,a			;751f
	add a,a			;7520
	ld c,a			;7521
	ld b,000h		;7522
	inc hl			;7524
	ldir		;7525
	ret			;7527
L_7528:
	ld hl,0e54bh		;7528
	ld a,(hl)			;752b
	inc a			;752c
	cp 004h		;752d
	jr c,L_7532		;752f
	xor a			;7531
L_7532:
	ld (hl),a			;7532
	ld hl,077d7h		;7533
	call 04a5ah		;7536
	ld bc,00018h		;7539
	ld de,0ef1ch		;753c
	ldir		;753f
	ret			;7541
L_7542:
	ld bc,0e54fh		;7542
	ld de,0cbd2h		;7545
	ld l,004h		;7548
	call L_7559		;754a
	ld bc,0e553h		;754d
	ld de,0cbd7h		;7550
	ld l,002h		;7553
	call L_7559		;7555
	ret			;7558
L_7559:
	push hl			;7559
	ld a,(bc)			;755a
	inc bc			;755b
	ld hl,076a3h		;755c
	call 04a5ah		;755f
	ld a,l			;7562
	push de			;7563
	ld (de),a			;7564
	ld a,020h		;7565
	call 0408eh		;7567
	ld a,h			;756a
	ld (de),a			;756b
	pop de			;756c
	inc de			;756d
	pop hl			;756e
	dec l			;756f
	jr nz,L_7559		;7570
	ret			;7572

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7573..0x783f  (716 bytes)
DATA_7573:
	defb 07bh,075h,09bh,075h,0bbh,075h,0dbh,075h,010h,011h,000h,000h,012h,013h,014h,015h	; 7573  {u.u.u.u........
	defb 016h,017h,001h,002h,018h,019h,001h,002h,012h,013h,001h,002h,016h,017h,01ah,01bh	; 7583  ................
	defb 010h,011h,000h,000h,012h,013h,000h,000h,018h,011h,000h,01ch,012h,013h,000h,002h	; 7593  ................
	defb 016h,017h,01dh,002h,010h,019h,001h,002h,012h,013h,01eh,002h,016h,017h,000h,002h	; 75a3  ................
	defb 010h,011h,000h,002h,012h,013h,000h,000h,010h,011h,000h,000h,012h,013h,014h,015h	; 75b3  ................
	defb 016h,017h,001h,002h,018h,019h,001h,002h,012h,013h,001h,002h,016h,017h,01ah,01bh	; 75c3  ................
	defb 010h,011h,000h,000h,012h,013h,000h,000h,010h,011h,01fh,000h,012h,013h,001h,000h	; 75d3  ................
	defb 016h,017h,001h,020h,010h,019h,001h,002h,012h,013h,001h,021h,016h,017h,001h,000h	; 75e3  ... .......!....
	defb 014h,011h,001h,000h,012h,013h,000h,000h,003h,076h,015h,076h,027h,076h,039h,076h	; 75f3  .........v.v'v9v
	defb 015h,016h,017h,018h,019h,01ah,018h,000h,000h,018h,01bh,000h,018h,01ch,000h,01dh	; 7603  ................
	defb 01eh,01fh,015h,016h,020h,018h,019h,01bh,018h,021h,000h,018h,021h,000h,018h,019h	; 7613  .... ....!..!...
	defb 01ch,01dh,01eh,01fh,015h,016h,017h,018h,019h,000h,018h,019h,021h,018h,019h,000h	; 7623  ............!...
	defb 018h,019h,024h,01dh,01eh,01fh,015h,016h,022h,018h,023h,000h,018h,019h,000h,018h	; 7633  ..$.....".#.....
	defb 019h,021h,018h,024h,000h,01dh,01eh,01fh,053h,076h,067h,076h,07bh,076h,08fh,076h	; 7643  .!.$....Svgv{v.v
	defb 025h,026h,027h,028h,028h,028h,029h,02ah,02ah,000h,02bh,003h,02dh,02eh,02fh,030h	; 7653  %&'((()**.+.-./0
	defb 031h,032h,003h,033h,025h,026h,026h,026h,026h,027h,028h,034h,02ah,000h,02bh,035h	; 7663  12.3%&&&&'(4*.+5
	defb 036h,02eh,02fh,030h,031h,037h,02ch,033h,025h,026h,026h,026h,026h,026h,026h,026h	; 7673  6./017,3%&&&&&&&
	defb 038h,000h,02bh,003h,02dh,02eh,02fh,030h,031h,032h,003h,033h,025h,026h,026h,026h	; 7683  8.+.-./012.3%&&&
	defb 026h,027h,028h,034h,02ah,000h,02bh,003h,039h,03ah,02fh,030h,03bh,03ch,003h,033h	; 7693  &'(4*.+.9:/0.<.3
	defb 046h,053h,03eh,04bh,03fh,04ch,040h,04dh,041h,04eh,042h,04dh,043h,04fh,044h,050h	; 76a3  FS>K?L@MANBMCODP
	defb 045h,051h,045h,052h,0bfh,076h,0cfh,076h,0dfh,076h,0efh,076h,024h,003h,025h,026h	; 76b3  EQER.v.v.v.v$.%&
	defb 000h,000h,057h,058h,059h,05ah,000h,000h,05bh,05bh,05bh,05ch,024h,003h,027h,028h	; 76c3  ..WXYZ..[[[\$.'(
	defb 000h,000h,057h,058h,05dh,05eh,000h,000h,05bh,05bh,05bh,05ch,024h,003h,029h,02ah	; 76d3  ..WX]^..[[[\$.)*
	defb 000h,000h,057h,058h,05fh,060h,061h,000h,05bh,05bh,05bh,05ch,024h,003h,02bh,02ch	; 76e3  ..WX_`a.[[[\$.+,
	defb 000h,000h,057h,058h,062h,063h,061h,000h,05bh,05bh,05bh,05ch,02dh,004h,02eh,02fh	; 76f3  ..WXbca.[[[\-../
	defb 005h,006h,030h,031h,007h,008h,009h,00ah,032h,033h,034h,035h,022h,023h,000h,000h	; 7703  ..01....2345"#..
	defb 019h,077h,022h,077h,02bh,077h,002h,00fh,0d0h,014h,007h,01fh,0d0h,018h,007h,002h	; 7713  .w"w+w..........
	defb 00fh,0d0h,01ch,007h,01fh,0d0h,020h,007h,002h,00fh,0d0h,024h,007h,01fh,0d0h,028h	; 7723  ...... ....$...(
	defb 007h,03eh,077h,043h,077h,048h,077h,051h,077h,056h,077h,001h,00fh,0d0h,000h,009h	; 7733  .>wCwHwQwVw.....
	defb 001h,00fh,0d0h,004h,009h,002h,00fh,0d0h,008h,009h,01fh,0d0h,00ch,009h,001h,00fh	; 7743  ................
	defb 0d0h,004h,009h,001h,00fh,0d0h,010h,009h,06bh,077h,070h,077h,075h,077h,076h,077h	; 7753  ........kwpwuwvw
	defb 07bh,077h,080h,077h,085h,077h,08ah,077h,001h,00fh,0e0h,02ch,008h,001h,00fh,0e0h	; 7763  {w.w.w.w...,....
	defb 030h,008h,000h,001h,00fh,0e0h,034h,008h,001h,00fh,0e0h,038h,008h,001h,00fh,0e0h	; 7773  0.....4....8....
	defb 03ch,008h,001h,00fh,0e0h,040h,008h,001h,00fh,0e0h,044h,008h,09fh,077h,0a8h,077h	; 7783  <....@....D..w.w
	defb 0b1h,077h,0bah,077h,0bah,077h,0b1h,077h,0a8h,077h,09fh,077h,002h,01fh,0d0h,048h	; 7793  .w.w.w.w.w.w...H
	defb 005h,01fh,0e0h,058h,005h,002h,01fh,0d0h,04ch,005h,01fh,0e0h,05ch,005h,002h,01fh	; 77a3  ...X....L...\...
	defb 0d0h,050h,005h,01fh,0e0h,060h,005h,002h,01fh,0d0h,054h,005h,01fh,0e0h,064h,005h	; 77b3  .P...`....T...d.
	defb 000h,000h,064h,065h,066h,004h,067h,068h,005h,006h,069h,06ah,007h,008h,009h,00ah	; 77c3  ..def.gh..ij....
	defb 06bh,06ch,06dh,06eh,0dfh,077h,0f7h,077h,00fh,078h,027h,078h,05fh,0d0h,06ch,009h	; 77d3  klmn.w.w.x'x_.l.
	defb 05fh,0e0h,094h,009h,05fh,0e0h,0a0h,008h,06fh,0d0h,068h,00bh,06fh,0e0h,07ch,00bh	; 77e3  _..._...o.h.o.|.
	defb 06fh,0e0h,0a4h,008h,05fh,0d0h,088h,00bh,05fh,0e0h,094h,009h,06fh,0d0h,068h,00bh	; 77f3  o..._..._...o.h.
	defb 06fh,0d0h,098h,008h,06fh,0e0h,08ch,009h,06fh,0e0h,09ch,008h,05fh,0d0h,088h,00bh	; 7803  o...o...o..._...
	defb 05fh,0d0h,074h,008h,06fh,0d0h,090h,008h,06fh,0e0h,08ch,009h,0e0h,000h,000h,000h	; 7813  _.t.o...o.......
	defb 0e0h,000h,000h,000h,05fh,0d0h,06ch,009h,05fh,0d0h,070h,008h,05fh,0e0h,080h,00bh	; 7823  ...._.l._.p._...
	defb 05fh,0e0h,084h,008h,06fh,0d0h,078h,009h,06fh,0e0h,07ch,00bh	; 7833  _...o.x.o.|.

; ======================================================================
; CODIGO 0x783f..0x7d4e  (1295 bytes)
; ======================================================================


L_783F:
	ld bc,(0e54dh)		;783f
	ld a,(0e54ch)		;7843
	or a			;7846
	ret z			;7847
	dec a			;7848
	jr nz,L_7876		;7849
	ld hl,0e552h		;784b
	ld a,(hl)			;784e
	add a,c			;784f
	ld (hl),a			;7850
	sub 00ah		;7851
	jr c,L_7857		;7853
	ld (hl),a			;7855
	inc b			;7856
L_7857:
	dec hl			;7857
	ld a,(hl)			;7858
	add a,b			;7859
	ld (hl),a			;785a
	sub 00ah		;785b
	ret c			;785d
	ld (hl),a			;785e
	dec hl			;785f
	inc (hl)			;7860
	ld a,(hl)			;7861
	sub 00ah		;7862
	ret c			;7864
	ld (hl),a			;7865
	dec hl			;7866
	inc (hl)			;7867
	ld a,(hl)			;7868
	sub 00ah		;7869
	ret c			;786b
	ld a,009h		;786c
	ld (hl),a			;786e
	inc hl			;786f
	ld (hl),a			;7870
	inc hl			;7871
	ld (hl),a			;7872
	inc hl			;7873
	ld (hl),a			;7874
	ret			;7875
L_7876:
	ld hl,0e552h		;7876
	ld a,(hl)			;7879
	sub c			;787a
	ld (hl),a			;787b
	jr nc,L_7882		;787c
	add a,00ah		;787e
	ld (hl),a			;7880
	inc b			;7881
L_7882:
	dec hl			;7882
	ld a,(hl)			;7883
	sub b			;7884
	ld (hl),a			;7885
	ret nc			;7886
	add a,00ah		;7887
	ld (hl),a			;7889
	dec hl			;788a
	ld a,(hl)			;788b
	sub 001h		;788c
	ld (hl),a			;788e
	ret nc			;788f
	add a,00ah		;7890
	ld (hl),a			;7892
	dec hl			;7893
	ld a,(hl)			;7894
	sub 001h		;7895
	ld (hl),a			;7897
	ret nc			;7898
	xor a			;7899
	ld (hl),a			;789a
	inc hl			;789b
	ld (hl),a			;789c
	inc hl			;789d
	ld (hl),a			;789e
	inc hl			;789f
	ld (hl),a			;78a0
	ret			;78a1
L_78A2:
	ld (0e562h),hl		;78a2
	ld hl,00001h		;78a5
	ld (0e560h),hl		;78a8
	ret			;78ab
L_78AC:
	ld a,(0e303h)		;78ac
	and 003h		;78af
	ret nz			;78b1
	ld hl,(0e562h)		;78b2
	push hl			;78b5
	pop ix		;78b6
L_78B8:
	ld a,(ix+000h)		;78b8
	or a			;78bb
	jr z,L_78C9		;78bc
	call L_78D7		;78be
	ld bc,00003h		;78c1
	add ix,bc		;78c4
	jp L_78B8		;78c6
L_78C9:
	ld hl,0e561h		;78c9
	ld a,(hl)			;78cc
	inc a			;78cd
	ld (hl),a			;78ce
	cp 008h		;78cf
	ret nz			;78d1
	xor a			;78d2
	ld (0e560h),a		;78d3
	ret			;78d6
L_78D7:
	ld de,00000h		;78d7
	bit 2,(ix+000h)		;78da
	call nz,L_78F6		;78de
	ld de,00800h		;78e1
	bit 1,(ix+000h)		;78e4
	call nz,L_78F6		;78e8
	ld de,01000h		;78eb
	bit 0,(ix+000h)		;78ee
	call nz,L_78F6		;78f2
	ret			;78f5
L_78F6:
	ld l,(ix+001h)		;78f6
	ld h,000h		;78f9
	add hl,hl			;78fb
	add hl,hl			;78fc
	add hl,hl			;78fd
	add hl,de			;78fe
	ld a,(0e561h)		;78ff
	call 04089h		;7902
	ld b,(ix+002h)		;7905
	ld de,00008h		;7908
	xor a			;790b
L_790C:
	call 0004dh		;790c   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;790f
	djnz L_790C		;7910
	ret			;7912
L_7913:
	ld (0e575h),hl		;7913
	ld hl,00001h		;7916
	ld (0e573h),hl		;7919
	ret			;791c
L_791D:
	ld a,(0e303h)		;791d
	and 003h		;7920
	ret nz			;7922
	ld hl,(0e575h)		;7923
	push hl			;7926
	pop ix		;7927
L_7929:
	ld a,(ix+000h)		;7929
	inc a			;792c
	jr z,L_793A		;792d
	call L_7948		;792f
	ld bc,00002h		;7932
	add ix,bc		;7935
	jp L_7929		;7937
L_793A:
	ld hl,0e574h		;793a
	ld a,(hl)			;793d
	inc a			;793e
	ld (hl),a			;793f
	cp 008h		;7940
	ret nz			;7942
	xor a			;7943
	ld (0e573h),a		;7944
	ret			;7947
L_7948:
	ld l,(ix+000h)		;7948
	ld h,000h		;794b
	add hl,hl			;794d
	add hl,hl			;794e
	add hl,hl			;794f
	ld de,01800h		;7950
	add hl,de			;7953
	ld a,(0e574h)		;7954
	call 04089h		;7957
	ld a,(ix+001h)		;795a
	add a,a			;795d
	add a,a			;795e
	ld b,a			;795f
	ld de,00008h		;7960
	xor a			;7963
L_7964:
	call 0004dh		;7964   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;7967
	djnz L_7964		;7968
	ret			;796a
L_796B:
	ld (0e57dh),a		;796b
	call L_7978		;796e
	ld hl,00100h		;7971
	ld (0e57bh),hl		;7974
	ret			;7977
L_7978:
	ld a,c			;7978
	ld (0e568h),a		;7979
	ld (0e566h),hl		;797c
	push hl			;797f
	pop ix		;7980
	ld hl,00001h		;7982
	ld (0e564h),hl		;7985
L_7988:
	ld a,(ix+000h)		;7988
	or a			;798b
	ret z			;798c
	call L_7998		;798d
	ld bc,00003h		;7990
	add ix,bc		;7993
	jp L_7988		;7995
L_7998:
	ld de,00000h		;7998
	bit 2,(ix+000h)		;799b
	call nz,L_79B7		;799f
	ld de,00800h		;79a2
	bit 1,(ix+000h)		;79a5
	call nz,L_79B7		;79a9
	ld de,01000h		;79ac
	bit 0,(ix+000h)		;79af
	call nz,L_79B7		;79b3
	ret			;79b6
L_79B7:
	ld l,(ix+002h)		;79b7
	ld h,000h		;79ba
	add hl,hl			;79bc
	add hl,hl			;79bd
	add hl,hl			;79be
	ld c,l			;79bf
	ld b,h			;79c0
	ld l,(ix+001h)		;79c1
	ld h,000h		;79c4
	add hl,hl			;79c6
	add hl,hl			;79c7
	add hl,hl			;79c8
	add hl,de			;79c9
	xor a			;79ca
	call 00056h		;79cb   ; BIOS FILVRM - Fills VRAM with value
	ret			;79ce
L_79CF:
	ld a,(0e57bh)		;79cf
	or a			;79d2
	jr nz,L_79DF		;79d3
	ld hl,0e57ch		;79d5
	dec (hl)			;79d8
	ret nz			;79d9
	ld (hl),03ch		;79da
	dec hl			;79dc
	inc (hl)			;79dd
	ret			;79de
L_79DF:
	ld a,(0e303h)		;79df
	and 003h		;79e2
	ret nz			;79e4
	ld ix,(0e566h)		;79e5
	call L_7A6F		;79e9
	ld hl,0e565h		;79ec
	ld a,(hl)			;79ef
	inc a			;79f0
	ld (hl),a			;79f1
	cp 008h		;79f2
	ret nz			;79f4
	ld (hl),000h		;79f5
	ld bc,00003h		;79f7
	add ix,bc		;79fa
	ld a,(ix+000h)		;79fc
	or a			;79ff
	jr z,L_7A6A		;7a00
	ld (0e566h),ix		;7a02
	ld hl,0e57dh		;7a06
	inc (hl)			;7a09
	ld a,(hl)			;7a0a
	dec a			;7a0b
	ret z			;7a0c
	sub 007h		;7a0d
	cp 004h		;7a0f
	ret c			;7a11
	ld a,(hl)			;7a12
	cp 00eh		;7a13
	ret z			;7a15
	cp 011h		;7a16
	ret z			;7a18
	cp 013h		;7a19
	ret z			;7a1b
	cp 016h		;7a1c
	jr z,L_7A34		;7a1e
	cp 021h		;7a20
	ret z			;7a22
	cp 02ah		;7a23
	ret z			;7a25
	cp 033h		;7a26
	ret z			;7a28
	cp 038h		;7a29
	jr z,L_7A34		;7a2b
	sub 02ch		;7a2d
	cp 006h		;7a2f
	ret c			;7a31
	jr L_7A38		;7a32
L_7A34:
	xor a			;7a34
	ld (0e57ch),a		;7a35
L_7A38:
	xor a			;7a38
	ld (0e57bh),a		;7a39
	ret			;7a3c
L_7A3D:
	ld b,001h		;7a3d
	ld a,(0e32bh)		;7a3f
	or a			;7a42
	jr nz,L_7A47		;7a43
	ld b,003h		;7a45
L_7A47:
	ld a,(0e303h)		;7a47
	and b			;7a4a
	ret nz			;7a4b
	ld ix,(0e566h)		;7a4c
L_7A50:
	ld a,(ix+000h)		;7a50
	or a			;7a53
	jr z,L_7A61		;7a54
	call L_7A6F		;7a56
	ld bc,00003h		;7a59
	add ix,bc		;7a5c
	jp L_7A50		;7a5e
L_7A61:
	ld hl,0e565h		;7a61
	ld a,(hl)			;7a64
	inc a			;7a65
	ld (hl),a			;7a66
	cp 008h		;7a67
	ret nz			;7a69
L_7A6A:
	xor a			;7a6a
	ld (0e564h),a		;7a6b
	ret			;7a6e
L_7A6F:
	ld de,00000h		;7a6f
	bit 2,(ix+000h)		;7a72
	call nz,L_7A8E		;7a76
	ld de,00800h		;7a79
	bit 1,(ix+000h)		;7a7c
	call nz,L_7A8E		;7a80
	ld de,01000h		;7a83
	bit 0,(ix+000h)		;7a86
	call nz,L_7A8E		;7a8a
	ret			;7a8d
L_7A8E:
	ld l,(ix+001h)		;7a8e
	ld h,000h		;7a91
	add hl,hl			;7a93
	add hl,hl			;7a94
	add hl,hl			;7a95
	add hl,de			;7a96
	ld a,(0e565h)		;7a97
	call 04089h		;7a9a
	ld b,(ix+002h)		;7a9d
	ld de,00008h		;7aa0
	ld a,(0e568h)		;7aa3
L_7AA6:
	call 0004dh		;7aa6   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;7aa9
	djnz L_7AA6		;7aaa
	ret			;7aac
L_7AAD:
	ld a,c			;7aad
	ld (0e56dh),a		;7aae
	ld (0e56bh),hl		;7ab1
	ld hl,00001h		;7ab4
	ld (0e569h),hl		;7ab7
	ret			;7aba
L_7ABB:
	ld a,c			;7abb
	ld (0e572h),a		;7abc
	ld (0e570h),hl		;7abf
	ld hl,00001h		;7ac2
	ld (0e56eh),hl		;7ac5
	ret			;7ac8
L_7AC9:
	exx			;7ac9
	ld hl,0e56ah		;7aca
	ld de,0e569h		;7acd
	ld bc,0e56dh		;7ad0
	exx			;7ad3
	ld hl,(0e56bh)		;7ad4
	call L_7AED		;7ad7
	ret			;7ada
L_7ADB:
	exx			;7adb
	ld hl,0e56fh		;7adc
	ld de,0e56eh		;7adf
	ld bc,0e572h		;7ae2
	exx			;7ae5
	ld hl,(0e570h)		;7ae6
	call L_7AED		;7ae9
	ret			;7aec
L_7AED:
	ld a,(0e303h)		;7aed
	and 003h		;7af0
	ret nz			;7af2
	push hl			;7af3
	pop ix		;7af4
L_7AF6:
	ld a,(ix+000h)		;7af6
	or a			;7af9
	jr z,L_7B07		;7afa
	call L_7B14		;7afc
	ld bc,00003h		;7aff
	add ix,bc		;7b02
	jp L_7AF6		;7b04
L_7B07:
	exx			;7b07
	ld a,(hl)			;7b08
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
	ld de,00000h		;7b14
	bit 2,(ix+000h)		;7b17
	call nz,L_7B33		;7b1b
	ld de,00800h		;7b1e
	bit 1,(ix+000h)		;7b21
	call nz,L_7B33		;7b25
	ld de,01000h		;7b28
	bit 0,(ix+000h)		;7b2b
	call nz,L_7B33		;7b2f
	ret			;7b32
L_7B33:
	ld l,(ix+001h)		;7b33
	ld h,000h		;7b36
	add hl,hl			;7b38
	add hl,hl			;7b39
	add hl,hl			;7b3a
	add hl,de			;7b3b
	exx			;7b3c
	ld a,(hl)			;7b3d
	exx			;7b3e
	call 04089h		;7b3f
	ld b,(ix+002h)		;7b42
	ld de,00008h		;7b45
	exx			;7b48
	ld a,(bc)			;7b49
	exx			;7b4a
L_7B4B:
	call 0004dh		;7b4b   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;7b4e
	djnz L_7B4B		;7b4f
	ret			;7b51
L_7B52:
	push hl			;7b52
	pop ix		;7b53
	ld hl,0c700h		;7b55
	ld (0e582h),hl		;7b58
	ld hl,0e584h		;7b5b
	push hl			;7b5e
	pop iy		;7b5f
L_7B61:
	call L_7B7A		;7b61
	ld bc,00005h		;7b64
	add iy,bc		;7b67
	ld a,(ix+000h)		;7b69
	or a			;7b6c
	jr nz,L_7B61		;7b6d
	ld (iy+000h),000h		;7b6f
	ld hl,00001h		;7b73
	ld (0e580h),hl		;7b76
	ret			;7b79
L_7B7A:
	ld a,(ix+000h)		;7b7a
	ld (iy+000h),a		;7b7d
	ld a,(ix+001h)		;7b80
	ld (iy+001h),a		;7b83
	ld a,(ix+002h)		;7b86
	ld (iy+002h),a		;7b89
	ld hl,(0e582h)		;7b8c
	ld (iy+003h),l		;7b8f
	ld (iy+004h),h		;7b92
	ld bc,00003h		;7b95
	add ix,bc		;7b98
	call 04cb1h		;7b9a
	inc ix		;7b9d
	call 04d1bh		;7b9f
	inc ix		;7ba2
	ld l,(iy+002h)		;7ba4
	ld h,000h		;7ba7
	add hl,hl			;7ba9
	add hl,hl			;7baa
	add hl,hl			;7bab
	ld (0ef80h),hl		;7bac
	ld b,h			;7baf
	ld c,l			;7bb0
	ld l,(iy+001h)		;7bb1
	ld h,000h		;7bb4
	add hl,hl			;7bb6
	add hl,hl			;7bb7
	add hl,hl			;7bb8
	ld (0ef82h),hl		;7bb9
	ld a,(iy+000h)		;7bbc
	ld de,01000h		;7bbf
	rra			;7bc2
	jr c,L_7BCE		;7bc3
	ld de,00800h		;7bc5
	rra			;7bc8
	jr c,L_7BCE		;7bc9
	ld de,00000h		;7bcb
L_7BCE:
	add hl,de			;7bce
	ld de,(0e582h)		;7bcf
	push de			;7bd3
	ex de,hl			;7bd4
	add hl,bc			;7bd5
	ld (0e582h),hl		;7bd6
	ex de,hl			;7bd9
	pop de			;7bda
	call 00059h		;7bdb   ; BIOS LDIRMV - Block transfers to memory from VRAM
	ld de,00000h		;7bde
	bit 2,(iy+000h)		;7be1
	call nz,L_7BFD		;7be5
	ld de,00800h		;7be8
	bit 1,(iy+000h)		;7beb
	call nz,L_7BFD		;7bef
	ld de,01000h		;7bf2
	bit 0,(iy+000h)		;7bf5
	call nz,L_7BFD		;7bf9
	ret			;7bfc
L_7BFD:
	ld hl,(0ef82h)		;7bfd
	add hl,de			;7c00
	ld bc,(0ef80h)		;7c01
	xor a			;7c05
	call 00056h		;7c06   ; BIOS FILVRM - Fills VRAM with value
	ret			;7c09
L_7C0A:
	ld a,(0e303h)		;7c0a
	and 003h		;7c0d
	ret nz			;7c0f
	ld hl,0e584h		;7c10
	push hl			;7c13
	pop ix		;7c14
L_7C16:
	ld a,(ix+000h)		;7c16
	or a			;7c19
	jr z,L_7C27		;7c1a
	call L_7C35		;7c1c
	ld bc,00005h		;7c1f
	add ix,bc		;7c22
	jp L_7C16		;7c24
L_7C27:
	ld hl,0e581h		;7c27
	ld a,(hl)			;7c2a
	inc a			;7c2b
	ld (hl),a			;7c2c
	cp 008h		;7c2d
	ret nz			;7c2f
	xor a			;7c30
	ld (0e580h),a		;7c31
	ret			;7c34
L_7C35:
	ld de,00000h		;7c35
	bit 2,(ix+000h)		;7c38
	call nz,L_7C54		;7c3c
	ld de,00800h		;7c3f
	bit 1,(ix+000h)		;7c42
	call nz,L_7C54		;7c46
	ld de,01000h		;7c49
	bit 0,(ix+000h)		;7c4c
	call nz,L_7C54		;7c50
	ret			;7c53
L_7C54:
	ld l,(ix+001h)		;7c54
	ld h,000h		;7c57
	add hl,hl			;7c59
	add hl,hl			;7c5a
	add hl,hl			;7c5b
	add hl,de			;7c5c
	ld a,(0e581h)		;7c5d
	call 04089h		;7c60
	exx			;7c63
	ld l,(ix+003h)		;7c64
	ld h,(ix+004h)		;7c67
	ld a,(0e581h)		;7c6a
	call 04089h		;7c6d
	ld de,00008h		;7c70
	exx			;7c73
	ld b,(ix+002h)		;7c74
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
L_7C85:
	inc hl			;7c85
	inc hl			;7c86
	ld (0e579h),hl		;7c87
	push hl			;7c8a
	pop ix		;7c8b
	ld hl,00001h		;7c8d
	ld (0e577h),hl		;7c90
	ld e,(ix-002h)		;7c93
	ld d,(ix-001h)		;7c96
L_7C99:
	ld a,(ix+000h)		;7c99
	cp 0ffh		;7c9c
	ret z			;7c9e
	push de			;7c9f
	ld l,(ix+001h)		;7ca0
	ld h,000h		;7ca3
	add hl,hl			;7ca5
	add hl,hl			;7ca6
	add hl,hl			;7ca7
	ld c,l			;7ca8
	ld b,h			;7ca9
	ld l,(ix+000h)		;7caa
	ld h,000h		;7cad
	add hl,hl			;7caf
	add hl,hl			;7cb0
	add hl,hl			;7cb1
	ld de,01800h		;7cb2
	add hl,de			;7cb5
	xor a			;7cb6
	call 00056h		;7cb7   ; BIOS FILVRM - Fills VRAM with value
	pop de			;7cba
	ld l,(ix+002h)		;7cbb
	ld h,(ix+003h)		;7cbe
	call 055adh		;7cc1
	ld bc,00004h		;7cc4
	add ix,bc		;7cc7
	jp L_7C99		;7cc9
L_7CCC:
	ld a,(0e303h)		;7ccc
	and 003h		;7ccf
	ret nz			;7cd1
	ld hl,(0e579h)		;7cd2
	push hl			;7cd5
	pop ix		;7cd6
	exx			;7cd8
	ld l,(ix-002h)		;7cd9
	ld h,(ix-001h)		;7cdc
	ld (0ef80h),hl		;7cdf
	ld de,00008h		;7ce2
	exx			;7ce5
L_7CE6:
	ld a,(ix+000h)		;7ce6
	cp 0ffh		;7ce9
	jr z,L_7D0A		;7ceb
	call L_7D18		;7ced
	exx			;7cf0
	ld l,(ix+001h)		;7cf1
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
	ld hl,0e578h		;7d0a
	ld a,(hl)			;7d0d
	inc a			;7d0e
	ld (hl),a			;7d0f
	cp 008h		;7d10
	ret nz			;7d12
	xor a			;7d13
	ld (0e577h),a		;7d14
	ret			;7d17
L_7D18:
	exx			;7d18
	ld hl,(0ef80h)		;7d19
	ld a,(0e578h)		;7d1c
	call 04089h		;7d1f
	exx			;7d22
	ld l,(ix+000h)		;7d23
	ld h,000h		;7d26
	add hl,hl			;7d28
	add hl,hl			;7d29
	add hl,hl			;7d2a
	ld bc,01800h		;7d2b
	add hl,bc			;7d2e
	ld a,(0e578h)		;7d2f
	call 04089h		;7d32
	ld b,(ix+001h)		;7d35
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
	ld bc,(0e7e4h)		;7d46
	ld a,c			;7d4a
	call 04093h		;7d4b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7d4e..0x7d56  (8 bytes)
DATA_7D4E:
	defb 0cbh,06ch,014h,06dh,056h,07dh,0b7h,06dh	; 7d4e  .l.mV}.m

; ======================================================================
; CODIGO 0x7d56..0x7d6e  (24 bytes)
; ======================================================================


L_7D56:
	push bc			;7d56
	call 05de9h		;7d57
	call 05985h		;7d5a
	pop af			;7d5d
	or a			;7d5e
	push af			;7d5f
	call nz,L_7320		;7d60
	pop af			;7d63
	push af			;7d64
	cp 002h		;7d65
	call nc,L_7E6B		;7d67
	pop af			;7d6a
	call 04093h		;7d6b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7d6e..0x7d7c  (14 bytes)
DATA_7D6E:
	defb 07ch,07dh,094h,07dh,0b7h,07dh,0ceh,07dh,0d8h,07dh,0e0h,07dh,0e8h,07dh	; 7d6e  |}.}.}.}.}.}.}

; ======================================================================
; CODIGO 0x7d7c..0x7db1  (53 bytes)
; ======================================================================


L_7D7C:
	call 0580eh		;7d7c
	call L_6CC1		;7d7f
	call 05718h		;7d82
	call L_60DF		;7d85
	ld hl,06108h		;7d88
	call L_60F9		;7d8b
	ld a,078h		;7d8e
	ld (0e5c0h),a		;7d90
	ret			;7d93
L_7D94:
	ld hl,0e5c0h		;7d94
	dec (hl)			;7d97
	ret nz			;7d98
	call L_7DFD		;7d99
	call L_7E2A		;7d9c
	ld a,(0e31eh)		;7d9f
	sub 008h		;7da2
	ld hl,07db1h		;7da4
	call 04a5ah		;7da7
	call L_612A		;7daa
	call L_6CC1		;7dad
	ret			;7db0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7db1..0x7db7  (6 bytes)
DATA_7DB1:
	defb 0c9h,061h,0ceh,061h,0d3h,061h	; 7db1

; ======================================================================
; CODIGO 0x7db7..0x7e23  (108 bytes)
; ======================================================================


L_7DB7:
	call L_6135		;7db7
	ret nz			;7dba
	ld hl,0e393h		;7dbb
	ld a,(hl)			;7dbe
	inc hl			;7dbf
	add a,(hl)			;7dc0
	inc hl			;7dc1
	add a,(hl)			;7dc2
	dec a			;7dc3
	ld a,003h		;7dc4
	jr z,L_7DCA		;7dc6
	ld a,005h		;7dc8
L_7DCA:
	ld (0e7e5h),a		;7dca
	ret			;7dcd
L_7DCE:
	ld hl,061d8h		;7dce
	call L_612A		;7dd1
	call L_6CC1		;7dd4
	ret			;7dd7
L_7DD8:
	call L_6135		;7dd8
	ret nz			;7ddb
	call L_6CC1		;7ddc
	ret			;7ddf
L_7DE0:
	xor a			;7de0
	ld (0e5c0h),a		;7de1
	call L_6CC1		;7de4
	ret			;7de7
L_7DE8:
	ld hl,0e5c0h		;7de8
	dec (hl)			;7deb
	ret nz			;7dec
L_7DED:
	call 05648h		;7ded
	call 05de9h		;7df0
	call L_60D4		;7df3
	call 05959h		;7df6
	call L_6CB9		;7df9
	ret			;7dfc
L_7DFD:
	call 041e4h		;7dfd
	ld de,0a000h		;7e00
	call 04b36h		;7e03
	ld de,0a0fch		;7e06
	call 04b36h		;7e09
	ld de,0a105h		;7e0c
	call 04b36h		;7e0f
	ld de,0a1aah		;7e12
	call 04b36h		;7e15
	ld ix,07e23h		;7e18
	call 04cb1h		;7e1c
	call 041bfh		;7e1f
	ret			;7e22

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7e23..0x7e2a  (7 bytes)
DATA_7E23:
	defb 006h,0b1h,0a1h,0ech,0d3h,0a1h,000h	; 7e23

; ======================================================================
; CODIGO 0x7e2a..0x7eb9  (143 bytes)
; ======================================================================


L_7E2A:
	ld a,(0e393h)		;7e2a
	or a			;7e2d
	call nz,L_7E40		;7e2e
	ld a,(0e394h)		;7e31
	or a			;7e34
	call nz,L_7E49		;7e35
	ld a,(0e395h)		;7e38
	or a			;7e3b
	call nz,L_7E52		;7e3c
	ret			;7e3f
L_7E40:
	ld hl,0cac9h		;7e40
	ld a,0ech		;7e43
	call L_7E5B		;7e45
	ret			;7e48
L_7E49:
	ld hl,0caceh		;7e49
	ld a,0edh		;7e4c
	call L_7E5B		;7e4e
	ret			;7e51
L_7E52:
	ld hl,0cad3h		;7e52
	ld a,0eeh		;7e55
	call L_7E5B		;7e57
	ret			;7e5a
L_7E5B:
	ld b,004h		;7e5b
	ld de,0001dh		;7e5d
L_7E60:
	ld (hl),a			;7e60
	inc hl			;7e61
	ld (hl),a			;7e62
	inc hl			;7e63
	ld (hl),a			;7e64
	inc hl			;7e65
	ld (hl),a			;7e66
	add hl,de			;7e67
	djnz L_7E60		;7e68
	ret			;7e6a
L_7E6B:
	ld a,(0e303h)		;7e6b
	rra			;7e6e
	rra			;7e6f
	rra			;7e70
	and 003h		;7e71
	ld b,a			;7e73
	add a,a			;7e74
	add a,b			;7e75
	ld hl,07eb9h		;7e76
	call 04089h		;7e79
	ex de,hl			;7e7c
	ld a,(de)			;7e7d
	ld hl,00760h		;7e7e
	ld bc,00008h		;7e81
	call 00056h		;7e84   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00f60h		;7e87
	ld bc,00008h		;7e8a
	call 00056h		;7e8d   ; BIOS FILVRM - Fills VRAM with value
	inc de			;7e90
	ld a,(de)			;7e91
	ld hl,00768h		;7e92
	ld bc,00008h		;7e95
	call 00056h		;7e98   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00f68h		;7e9b
	ld bc,00008h		;7e9e
	call 00056h		;7ea1   ; BIOS FILVRM - Fills VRAM with value
	inc de			;7ea4
	ld a,(de)			;7ea5
	ld hl,00770h		;7ea6
	ld bc,00008h		;7ea9
	call 00056h		;7eac   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00f70h		;7eaf
	ld bc,00008h		;7eb2
	call 00056h		;7eb5   ; BIOS FILVRM - Fills VRAM with value
	ret			;7eb8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7eb9..0x7ec5  (12 bytes)
DATA_7EB9:
	defb 060h,040h,0c0h,080h,070h,020h,090h,050h,030h,080h,070h,020h	; 7eb9  `@..p .P0.p

; ======================================================================
; CODIGO 0x7ec5..0x7edb  (22 bytes)
; ======================================================================


L_7EC5:
	ld a,(0e327h)		;7ec5
	cp 003h		;7ec8
	jr c,L_7ED7		;7eca
	push af			;7ecc
	call 05de9h		;7ecd
	call 05985h		;7ed0
	call L_7320		;7ed3
	pop af			;7ed6
L_7ED7:
	dec a			;7ed7
	call 04093h		;7ed8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7edb..0x7ef1  (22 bytes)
DATA_7EDB:
	defb 0f1h,07eh,0feh,07eh,017h,07fh,039h,07fh,063h,07fh,06eh,07fh,07ah,07fh,093h,07fh	; 7edb  .~.~..9.c.n.z...
	defb 0a3h,07fh,0b8h,07fh,0c8h,07fh	; 7eeb

; ======================================================================
; CODIGO 0x7ef1..0x8000  (271 bytes)
; ======================================================================


L_7EF1:
	call 0594dh		;7ef1
	call 057eah		;7ef4
	call L_601E		;7ef7
	call L_7FE8		;7efa
	ret			;7efd
L_7EFE:
	call 0580eh		;7efe
	call 04aa9h		;7f01
	call L_6033		;7f04
	call L_60DF		;7f07
	ld hl,06108h		;7f0a
	call L_60F9		;7f0d
	call L_7DFD		;7f10
	call L_7FE8		;7f13
	ret			;7f16
L_7F17:
	ld hl,0e393h		;7f17
	ld a,(hl)			;7f1a
	inc hl			;7f1b
	add a,(hl)			;7f1c
	inc hl			;7f1d
	add a,(hl)			;7f1e
	cp 003h		;7f1f
	jr nc,L_7F2F		;7f21
	ld a,008h		;7f23
	call L_7FED		;7f25
	ld hl,061f3h		;7f28
	call L_612A		;7f2b
	ret			;7f2e
L_7F2F:
	ld hl,061e5h		;7f2f
	call L_612A		;7f32
	call L_7FE8		;7f35
	ret			;7f38
L_7F39:
	call L_6135		;7f39
	ret nz			;7f3c
	call L_7F4D		;7f3d
	call L_7FF1		;7f40
	ld hl,061eah		;7f43
	call L_612A		;7f46
	call L_7FE8		;7f49
	ret			;7f4c
L_7F4D:
	ld hl,0a078h		;7f4d
	ld de,0cd00h		;7f50
	call 055cdh		;7f53
	ld hl,0cd00h		;7f56
	ld de,0ca89h		;7f59
	ld bc,0070eh		;7f5c
	call 059a1h		;7f5f
	ret			;7f62
L_7F63:
	call L_7FFD		;7f63
	call L_6135		;7f66
	ret nz			;7f69
	call L_7FE8		;7f6a
	ret			;7f6d
L_7F6E:
	call 05951h		;7f6e
	ld a,096h		;7f71
	ld (0e5c0h),a		;7f73
	call L_7FE8		;7f76
	ret			;7f79
L_7F7A:
	ld hl,0e5c0h		;7f7a
	dec (hl)			;7f7d
	ret nz			;7f7e
	call 0594dh		;7f7f
	ld a,00ah		;7f82
	ld (0e37dh),a		;7f84
	xor a			;7f87
	ld (0e398h),a		;7f88
L_7F8B:
	xor a			;7f8b
	ld (0e327h),a		;7f8c
	call 04aa9h		;7f8f
	ret			;7f92
L_7F93:
	call L_6135		;7f93
	ret nz			;7f96
	ld a,0f0h		;7f97
	ld (0e5c0h),a		;7f99
	call L_7FE8		;7f9c
	call L_7DFD		;7f9f
	ret			;7fa2
L_7FA3:
	call 0801eh		;7fa3
	ld hl,0e5c0h		;7fa6
	dec (hl)			;7fa9
	ret nz			;7faa
	call L_60C0		;7fab
	ld hl,061f8h		;7fae
	call L_612A		;7fb1
	call L_7FE8		;7fb4
	ret			;7fb7
L_7FB8:
	call L_6135		;7fb8
	ret nz			;7fbb
	call 05951h		;7fbc
	ld a,0b4h		;7fbf
	ld (0e5c0h),a		;7fc1
	call L_7FE8		;7fc4
	ret			;7fc7
L_7FC8:
	ld hl,0e5c0h		;7fc8
	dec (hl)			;7fcb
	ret nz			;7fcc
	call 0594dh		;7fcd
	ld c,005h		;7fd0
	ld a,(0e393h)		;7fd2
	or a			;7fd5
	jr z,L_7FE2		;7fd6
	ld c,007h		;7fd8
	ld a,(0e394h)		;7fda
	or a			;7fdd
	jr z,L_7FE2		;7fde
	ld c,008h		;7fe0
L_7FE2:
	ld a,c			;7fe2
	ld (0e37dh),a		;7fe3
	jr L_7F8B		;7fe6
L_7FE8:
	ld hl,0e327h		;7fe8
	inc (hl)			;7feb
	ret			;7fec
L_7FED:
	ld (0e327h),a		;7fed
	ret			;7ff0
L_7FF1:
	ld hl,08012h		;7ff1
	ld de,0ef34h		;7ff4
	ld bc,0000ch		;7ff7
	ldir		;7ffa
	ret			;7ffc
L_7FFD:
	ld a,(0e303h)		;7ffd

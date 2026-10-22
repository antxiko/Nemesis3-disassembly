; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 10 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ======================================================================
; CODIGO 0x6000..0x6144  (324 bytes)
; ======================================================================


L_6000:
	jp L_6009		;6000
L_6003:
	jp L_602F		;6003
L_6006:
	jp L_62DE		;6006
L_6009:
	ld a,001h		;6009
	call L_602F		;600b
	ld a,0ffh		;600e
	ld hl,0e2a0h		;6010
	ld (hl),a			;6013
	inc hl			;6014
	ld (hl),a			;6015
	inc hl			;6016
	ld de,0e2a3h		;6017
	ld (hl),001h		;601a
	ld bc,0000eh		;601c
	ldir		;601f
	call L_71F6		;6021
	ld a,0bfh		;6024
	ld (0e298h),a		;6026
	ld e,a			;6029
	ld a,007h		;602a
	jp 00093h		;602c   ; BIOS WRTPSG - Writes data to PSG-register
L_602F:
	ld c,a			;602f
	ld (0e2c2h),a		;6030
	cp 055h		;6033
	jp c,L_603E		;6035
	cp 081h		;6038
	ret c			;603a
	cp 086h		;603b
	ret nc			;603d
L_603E:
	cp 053h		;603e
	jp z,L_62D5		;6040
	ld a,(0e2bfh)		;6043
	or a			;6046
	ret nz			;6047
	ld hl,0e0c0h		;6048
	ld a,c			;604b
	cp 033h		;604c
	jr nz,L_6053		;604e
	ld a,(hl)			;6050
	cp c			;6051
	ret z			;6052
L_6053:
	ld a,c			;6053
	cp 017h		;6054
	jr nz,L_605B		;6056
	ld a,(hl)			;6058
	cp c			;6059
	ret z			;605a
L_605B:
	ld a,c			;605b
	cp 083h		;605c
	jp z,L_6180		;605e
	cp 084h		;6061
	jp z,L_6187		;6063
	cp 085h		;6066
	jp z,L_6192		;6068
	cp 081h		;606b
	jp z,L_61A9		;606d
	cp 082h		;6070
	call z,L_6212		;6072
	ld hl,0e281h		;6075
	ld (hl),c			;6078
	ld hl,07504h		;6079
	ld a,c			;607c
	add a,c			;607d
	ld e,a			;607e
	ld d,000h		;607f
	add hl,de			;6081
	ld e,(hl)			;6082
	inc hl			;6083
	ld d,(hl)			;6084
	ex de,hl			;6085
	ld de,0e282h		;6086
	ld bc,00012h		;6089
	ldir		;608c
	ld ix,0e284h		;608e
	ld hl,0e282h		;6092
	bit 7,(hl)		;6095
	jr z,L_60A5		;6097
	inc hl			;6099
	ld a,(hl)			;609a
	ld hl,0e001h		;609b
	call L_6122		;609e
	inc ix		;60a1
	inc ix		;60a3
L_60A5:
	ld hl,0e282h		;60a5
	bit 6,(hl)		;60a8
	jr z,L_60B8		;60aa
	inc hl			;60ac
	ld a,(hl)			;60ad
	ld hl,0e041h		;60ae
	call L_6122		;60b1
	inc ix		;60b4
	inc ix		;60b6
L_60B8:
	ld hl,0e282h		;60b8
	bit 5,(hl)		;60bb
	jr z,L_60CB		;60bd
	inc hl			;60bf
	ld a,(hl)			;60c0
	ld hl,0e081h		;60c1
	call L_6122		;60c4
	inc ix		;60c7
	inc ix		;60c9
L_60CB:
	ld hl,0e282h		;60cb
	bit 4,(hl)		;60ce
	jr z,L_60DE		;60d0
	inc hl			;60d2
	ld a,(hl)			;60d3
	ld hl,0e0c1h		;60d4
	call L_6122		;60d7
	inc ix		;60da
	inc ix		;60dc
L_60DE:
	ld hl,0e282h		;60de
	bit 3,(hl)		;60e1
	jr z,L_60F1		;60e3
	inc hl			;60e5
	ld a,(hl)			;60e6
	ld hl,0e101h		;60e7
	call L_6122		;60ea
	inc ix		;60ed
	inc ix		;60ef
L_60F1:
	ld hl,0e282h		;60f1
	bit 2,(hl)		;60f4
	jr z,L_6104		;60f6
	inc hl			;60f8
	ld a,(hl)			;60f9
	ld hl,0e141h		;60fa
	call L_6122		;60fd
	inc ix		;6100
	inc ix		;6102
L_6104:
	ld hl,0e282h		;6104
	bit 1,(hl)		;6107
	jr z,L_6117		;6109
	inc hl			;610b
	ld a,(hl)			;610c
	ld hl,0e181h		;610d
	call L_6122		;6110
	inc ix		;6113
	inc ix		;6115
L_6117:
	ld hl,0e282h		;6117
	bit 0,(hl)		;611a
	ret z			;611c
	inc hl			;611d
	ld a,(hl)			;611e
	ld hl,0e1c1h		;611f
L_6122:
	cp (hl)			;6122
	ret c			;6123
	ex de,hl			;6124
	ld (de),a			;6125
	dec de			;6126
	ld hl,0e281h		;6127
	ld a,(hl)			;612a
	ld (de),a			;612b
	inc de			;612c
	inc de			;612d
	ld a,(ix+000h)		;612e
	ld (de),a			;6131
	inc de			;6132
	ld a,(ix+001h)		;6133
	ld (de),a			;6136
	inc de			;6137
	ld hl,06144h		;6138
	ld bc,0003ch		;613b
	ldir		;613e
	call L_62A9		;6140
	ret			;6143

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6144..0x6180  (60 bytes)
DATA_6144:
	defb 001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6144  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6154  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6164  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6174  ............

; ======================================================================
; CODIGO 0x6180..0x64dd  (861 bytes)
; ======================================================================


L_6180:
	ld hl,0e280h		;6180
	res 0,(hl)		;6183
	jr L_61A1		;6185
L_6187:
	ld hl,0e294h		;6187
	ld (hl),025h		;618a
	inc hl			;618c
	ld (hl),00ah		;618d
	jp L_619A		;618f
L_6192:
	ld hl,0e294h		;6192
	ld (hl),025h		;6195
	inc hl			;6197
	ld (hl),00ah		;6198
L_619A:
	ld hl,0e280h		;619a
	set 0,(hl)		;619d
	res 4,(hl)		;619f
L_61A1:
	ld hl,0e296h		;61a1
	xor a			;61a4
	ld (hl),a			;61a5
	inc hl			;61a6
	ld (hl),a			;61a7
	ret			;61a8
L_61A9:
	ld hl,0e280h		;61a9
	bit 1,(hl)		;61ac
	ld b,000h		;61ae
	jr nz,L_61B4		;61b0
	ld b,001h		;61b2
L_61B4:
	res 1,(hl)		;61b4
	bit 3,(hl)		;61b6
	jr z,L_61BE		;61b8
	res 3,(hl)		;61ba
	set 0,(hl)		;61bc
L_61BE:
	ld hl,0e200h		;61be
	ld de,0e0c0h		;61c1
	call L_62A3		;61c4
	ld a,(0e00dh)		;61c7
	ld e,a			;61ca
	ld a,(0e2bbh)		;61cb
	and 00fh		;61ce
	or e			;61d0
	ld (0e00dh),a		;61d1
	ld a,(0e04dh)		;61d4
	ld e,a			;61d7
	ld a,(0e2bbh)		;61d8
	and 0f0h		;61db
	rrca			;61dd
	rrca			;61de
	rrca			;61df
	rrca			;61e0
	or e			;61e1
	ld (0e04dh),a		;61e2
	ld a,(0e08dh)		;61e5
	ld e,a			;61e8
	ld a,(0e2bch)		;61e9
	and 00fh		;61ec
	or e			;61ee
	ld (0e08dh),a		;61ef
	ld hl,0e0cfh		;61f2
	set 7,(hl)		;61f5
	ld a,03fh		;61f7
	ld (09000h),a		;61f9
	ld a,(0e2b1h)		;61fc
	ld (0988fh),a		;61ff
	ld a,00bh		;6202
	ld (09000h),a		;6204
	ld a,0ffh		;6207
	ld hl,0e2a0h		;6209
	ld (hl),a			;620c
	inc hl			;620d
	ld (hl),a			;620e
	jp L_71F6		;620f
L_6212:
	ld hl,0e280h		;6212
	bit 1,(hl)		;6215
	ld b,000h		;6217
	jr z,L_621D		;6219
	ld b,001h		;621b
L_621D:
	set 1,(hl)		;621d
	bit 0,(hl)		;621f
	jr z,L_6227		;6221
	res 0,(hl)		;6223
	set 3,(hl)		;6225
L_6227:
	ld hl,0e0c0h		;6227
	ld de,0e200h		;622a
	call L_62A3		;622d
	ld a,(0e00dh)		;6230
	ld d,a			;6233
	and 00fh		;6234
	ld (0e2bbh),a		;6236
	ld a,d			;6239
	and 0f0h		;623a
	ld (0e00dh),a		;623c
	ld a,(0e04dh)		;623f
	ld d,a			;6242
	and 00fh		;6243
	rlca			;6245
	rlca			;6246
	rlca			;6247
	rlca			;6248
	ld e,a			;6249
	ld a,(0e2bbh)		;624a
	and e			;624d
	ld (0e2bbh),a		;624e
	ld a,d			;6251
	and 0f0h		;6252
	ld (0e04dh),a		;6254
	ld a,(0e08dh)		;6257
	ld d,a			;625a
	and 00fh		;625b
	ld (0e2bch),a		;625d
	ld a,d			;6260
	and 0f0h		;6261
	ld (0e08dh),a		;6263
	ld a,(0e00ch)		;6266
	res 4,a		;6269
	ld (0e00ch),a		;626b
	ld a,(0e04ch)		;626e
	res 4,a		;6271
	ld (0e04ch),a		;6273
	ld a,(0e08ch)		;6276
	res 4,a		;6279
	ld (0e08ch),a		;627b
	ld a,03fh		;627e
	ld (09000h),a		;6280
	ld a,(0e2b1h)		;6283
	and 0feh		;6286
	ld (0988fh),a		;6288
	xor a			;628b
	ld (0988bh),a		;628c
	ld (0988ch),a		;628f
	ld (0988dh),a		;6292
	ld (0988eh),a		;6295
	ld a,00bh		;6298
	ld (09000h),a		;629a
	ld a,b			;629d
	or a			;629e
	ret nz			;629f
	ld c,003h		;62a0
	ret			;62a2
L_62A3:
	ld bc,00040h		;62a3
	ldir		;62a6
	ret			;62a8
L_62A9:
	ld a,(0e2c2h)		;62a9
	cp 03dh		;62ac
	jr c,L_62C1		;62ae
	cp 044h		;62b0
	jr c,L_62C9		;62b2
	cp 04bh		;62b4
	jr c,L_62CF		;62b6
L_62B8:
	cp 080h		;62b8
	ret nc			;62ba
	ld a,003h		;62bb
	ld (0e2beh),a		;62bd
	ret			;62c0
L_62C1:
	cp 00fh		;62c1
	ret nc			;62c3
	xor a			;62c4
	ld (0e2beh),a		;62c5
	ret			;62c8
L_62C9:
	ld a,001h		;62c9
	ld (0e2beh),a		;62cb
	ret			;62ce
L_62CF:
	ld a,002h		;62cf
	ld (0e2beh),a		;62d1
	ret			;62d4
L_62D5:
	ld a,003h		;62d5
	ld (0e2bfh),a		;62d7
	call L_62B8		;62da
	ret			;62dd
L_62DE:
	ld a,(0e2beh)		;62de
	or a			;62e1
	jr z,L_62FF		;62e2
	cp 001h		;62e4
	jr z,L_62F3		;62e6
	cp 002h		;62e8
	jr z,L_62FA		;62ea
	ld a,019h		;62ec
	ld (0b000h),a		;62ee
	jr L_62FF		;62f1
L_62F3:
	ld a,00dh		;62f3
	ld (0b000h),a		;62f5
	jr L_62FF		;62f8
L_62FA:
	ld a,009h		;62fa
	ld (0b000h),a		;62fc
L_62FF:
	ld a,(0e298h)		;62ff
	call L_7075		;6302
	nop			;6305
	ld hl,0e2bfh		;6306
	ld a,(hl)			;6309
	or a			;630a
	jr z,L_6362		;630b
	and 002h		;630d
	jr z,L_632B		;630f
	ld a,03fh		;6311
	ld (09000h),a		;6313
	ld a,00fh		;6316
	ld (0988ah),a		;6318
	ld a,001h		;631b
	ld (0988fh),a		;631d
	ld hl,0b111h		;6320
	ld (0e2c0h),hl		;6323
	ld a,001h		;6326
	ld (0e2bfh),a		;6328
L_632B:
	ld a,03fh		;632b
	ld (09000h),a		;632d
	ld hl,(0e2c0h)		;6330
	ld d,(hl)			;6333
	inc hl			;6334
	ld e,(hl)			;6335
	inc hl			;6336
	ld a,d			;6337
	or e			;6338
	jp z,L_6351		;6339
	push hl			;633c
	ld h,d			;633d
	ld l,e			;633e
	add hl,de			;633f
	add hl,de			;6340
	ld (09880h),hl		;6341
	pop hl			;6344
	ld de,09800h		;6345
	ld bc,00020h		;6348
	ldir		;634b
	ld (0e2c0h),hl		;634d
	ret			;6350
L_6351:
	xor a			;6351
	ld (0988ah),a		;6352
	ld (0988fh),a		;6355
	ld (09880h),a		;6358
	ld (09881h),a		;635b
	ld (0e2bfh),a		;635e
	ret			;6361
L_6362:
	ld a,(0fda2h)		;6362
	ld hl,0e2bdh		;6365
	cp (hl)			;6368
	jr z,L_638F		;6369
	ld ix,0e0c0h		;636b
	set 7,(ix+00fh)		;636f
	ld ix,0e100h		;6373
	set 7,(ix+00fh)		;6377
	ld ix,0e140h		;637b
	set 7,(ix+00fh)		;637f
	ld ix,0e180h		;6383
	set 7,(ix+00fh)		;6387
	ld a,(0fda2h)		;638b
	ld (hl),a			;638e
L_638F:
	inc (hl)			;638f
	ld a,(hl)			;6390
	ld (0fda2h),a		;6391
	ld hl,0e280h		;6394
	bit 1,(hl)		;6397
	jp nz,L_6410		;6399
	ld a,(0e280h)		;639c
	bit 0,a		;639f
	call nz,L_6A78		;63a1
	ld a,001h		;63a4
	ld (0e299h),a		;63a6
	ld ix,0e000h		;63a9
	call L_6408		;63ad
	ld a,002h		;63b0
	ld (0e299h),a		;63b2
	ld ix,0e040h		;63b5
	call L_6408		;63b9
	ld a,004h		;63bc
	ld (0e299h),a		;63be
	ld ix,0e080h		;63c1
	call L_6408		;63c5
	ld a,008h		;63c8
	ld (0e299h),a		;63ca
	ld ix,0e0c0h		;63cd
	call L_6408		;63d1
	ld a,010h		;63d4
	ld (0e299h),a		;63d6
	ld ix,0e100h		;63d9
	call L_6408		;63dd
	ld a,020h		;63e0
	ld (0e299h),a		;63e2
	ld ix,0e140h		;63e5
	call L_6408		;63e9
	ld a,040h		;63ec
	ld (0e299h),a		;63ee
	ld ix,0e180h		;63f1
	call L_6408		;63f5
	ld a,080h		;63f8
	ld (0e299h),a		;63fa
	ld ix,0e1c0h		;63fd
	call L_6408		;6401
	call L_6F99		;6404
	ret			;6407
L_6408:
	ld a,(ix+000h)		;6408
	or a			;640b
	call nz,L_6428		;640c
	ret			;640f
L_6410:
	ld a,008h		;6410
	ld (0e299h),a		;6412
	ld ix,0e0c0h		;6415
	call L_6408		;6419
	ld a,0bfh		;641c
	ld (0e298h),a		;641e
	call L_6C24		;6421
	call L_6F99		;6424
	ret			;6427
L_6428:
	dec (ix+004h)		;6428
	ld a,(ix+004h)		;642b
	cp 0ffh		;642e
	jr z,L_6439		;6430
	cp 000h		;6432
	jr z,L_643F		;6434
	jp L_6687		;6436
L_6439:
	dec (ix+02ch)		;6439
	jp L_6687		;643c
L_643F:
	ld a,(ix+02ch)		;643f
	or a			;6442
	jp nz,L_6687		;6443
	ld l,(ix+002h)		;6446
	ld h,(ix+003h)		;6449
L_644C:
	ld a,(hl)			;644c
	cp 0ffh		;644d
	jp z,L_6AFC		;644f
	cp 0d0h		;6452
	jr c,L_645D		;6454
	call L_6B3D		;6456
	inc hl			;6459
	jp L_644C		;645a
L_645D:
	bit 0,(ix+009h)		;645d
	jp nz,L_6474		;6461
	bit 1,(ix+009h)		;6464
	jp nz,L_64EA		;6468
	ld a,(ix+009h)		;646b
	and 01ch		;646e
	jp nz,L_6563		;6470
	ret			;6473
L_6474:
	ld a,(hl)			;6474
	and 00fh		;6475
	ld b,a			;6477
	ld a,(ix+014h)		;6478
	jr z,L_6486		;647b
	ld e,a			;647d
L_647E:
	add a,e			;647e
	jr nc,L_6484		;647f
	inc (ix+02ch)		;6481
L_6484:
	djnz L_647E		;6484
L_6486:
	ld (ix+004h),a		;6486
	ld a,(hl)			;6489
	and 0f0h		;648a
	rrca			;648c
	rrca			;648d
	rrca			;648e
	rrca			;648f
	call L_65EE		;6490
	bit 7,(ix+009h)		;6493
	ret nz			;6497
	cp 00ch		;6498
	jr nc,L_64D4		;649a
	ld hl,064ddh		;649c
	ld e,a			;649f
	ld d,000h		;64a0
	add hl,de			;64a2
	ld l,(hl)			;64a3
	ld h,000h		;64a4
	ld a,(ix+016h)		;64a6
	or a			;64a9
	jr z,L_64B0		;64aa
	ld b,a			;64ac
L_64AD:
	add hl,hl			;64ad
	djnz L_64AD		;64ae
L_64B0:
	ld (ix+010h),l		;64b0
	ld (ix+011h),h		;64b3
	ld e,(ix+015h)		;64b6
	ld a,(0e280h)		;64b9
	and 011h		;64bc
	call nz,L_6AD8		;64be
	ld (ix+012h),e		;64c1
	ld a,(ix+00dh)		;64c4
	and 0f0h		;64c7
	ld (ix+00dh),a		;64c9
	set 1,(ix+00dh)		;64cc
	call L_65F6		;64d0
	ret			;64d3
L_64D4:
	ld a,(ix+00dh)		;64d4
	and 0f0h		;64d7
	ld (ix+00dh),a		;64d9
	ret			;64dc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x64dd..0x64ea  (13 bytes)
DATA_64DD:
	defb 06ah,064h,05eh,059h,054h,04fh,04ah,046h,042h,03fh,03bh,038h,035h	; 64dd  jd^YTOJFB?.85

; ======================================================================
; CODIGO 0x64ea..0x6b52  (1640 bytes)
; ======================================================================


L_64EA:
	ld a,(ix+00dh)		;64ea
	and 003h		;64ed
	jr z,L_6554		;64ef
	cp 001h		;64f1
	jr z,L_652B		;64f3
	ld a,(hl)			;64f5
	bit 6,(ix+00eh)		;64f6
	jr nz,L_6517		;64fa
	bit 5,(ix+00eh)		;64fc
	jr nz,L_651C		;6500
	and 0f0h		;6502
	ld b,a			;6504
	xor (hl)			;6505
	ld d,a			;6506
	inc hl			;6507
	ld a,(hl)			;6508
	ld (ix+010h),a		;6509
	ld (ix+011h),d		;650c
	ld a,b			;650f
	rrca			;6510
	rrca			;6511
	rrca			;6512
	rrca			;6513
	ld b,a			;6514
	jr L_652F		;6515
L_6517:
	ld (ix+010h),a		;6517
	jr L_6543		;651a
L_651C:
	and 0f0h		;651c
	rrca			;651e
	rrca			;651f
	rrca			;6520
	rrca			;6521
	ld b,a			;6522
	ld a,(hl)			;6523
	and 00fh		;6524
	ld (ix+011h),a		;6526
	jr L_652F		;6529
L_652B:
	ld a,(hl)			;652b
	and 00fh		;652c
	ld b,a			;652e
L_652F:
	ld a,(0e299h)		;652f
	cp 008h		;6532
	jr nc,L_653E		;6534
	bit 2,(ix+00dh)		;6536
	jr z,L_653E		;653a
	ld b,010h		;653c
L_653E:
	inc b			;653e
	inc b			;653f
	ld (ix+012h),b		;6540
L_6543:
	ld e,(ix+012h)		;6543
	ld a,(0e280h)		;6546
	and 011h		;6549
	call nz,L_6AD8		;654b
	ld (ix+012h),e		;654e
	call L_65F6		;6551
L_6554:
	bit 7,(ix+009h)		;6554
	ret nz			;6558
	call L_65EE		;6559
	ld a,(ix+013h)		;655c
	ld (ix+004h),a		;655f
	ret			;6562
L_6563:
	set 7,(ix+009h)		;6563
	call L_6474		;6567
	ld b,a			;656a
	call L_659A		;656b
	ld a,b			;656e
	add a,a			;656f
	ld e,a			;6570
	ld d,000h		;6571
	add hl,de			;6573
	ld e,(hl)			;6574
	inc hl			;6575
	ld d,(hl)			;6576
	ex de,hl			;6577
	ld a,(hl)			;6578
L_6579:
	set 1,(ix+009h)		;6579
	call L_644C		;657d
	res 1,(ix+009h)		;6580
	res 7,(ix+009h)		;6584
	ld a,(ix+013h)		;6588
	ld (ix+019h),a		;658b
	inc hl			;658e
	ld (ix+017h),l		;658f
	ld (ix+018h),h		;6592
	set 0,(ix+00eh)		;6595
	ret			;6599
L_659A:
	bit 2,(ix+009h)		;659a
	jp nz,L_65AF		;659e
	bit 3,(ix+009h)		;65a1
	jp nz,L_65C4		;65a5
	bit 4,(ix+009h)		;65a8
	jp nz,L_65D9		;65ac
L_65AF:
	ld a,(ix+029h)		;65af
	cp 000h		;65b2
	jp z,L_65BC		;65b4
	cp 001h		;65b7
	jp z,L_65C0		;65b9
L_65BC:
	ld hl,073a9h		;65bc
	ret			;65bf
L_65C0:
	ld hl,0748eh		;65c0
	ret			;65c3
L_65C4:
	ld a,(ix+029h)		;65c4
	cp 000h		;65c7
	jp z,L_65D1		;65c9
	cp 001h		;65cc
	jp z,L_65D5		;65ce
L_65D1:
	ld hl,074a2h		;65d1
	ret			;65d4
L_65D5:
	ld hl,074bah		;65d5
	ret			;65d8
L_65D9:
	ld a,(ix+029h)		;65d9
	cp 000h		;65dc
	jp z,L_65E6		;65de
	cp 001h		;65e1
	jp z,L_65EA		;65e3
L_65E6:
	ld hl,074d2h		;65e6
	ret			;65e9
L_65EA:
	ld hl,074d2h		;65ea
	ret			;65ed
L_65EE:
	inc hl			;65ee
	ld (ix+002h),l		;65ef
	ld (ix+003h),h		;65f2
	ret			;65f5
L_65F6:
	call L_66DA		;65f6
	res 4,(ix+00eh)		;65f9
	bit 4,(ix+03ch)		;65fd
	jp z,L_6608		;6601
	set 6,(ix+03ch)		;6604
L_6608:
	res 5,(ix+03ch)		;6608
	ld a,(ix+00fh)		;660c
	and 0d7h		;660f
	ld (ix+00fh),a		;6611
	xor a			;6614
	ld (ix+01dh),a		;6615
	ld (ix+01eh),a		;6618
	ld (ix+031h),a		;661b
	ld (ix+033h),a		;661e
	res 6,(ix+030h)		;6621
	res 7,(ix+030h)		;6625
	res 7,(ix+00dh)		;6629
	res 5,(ix+030h)		;662d
	res 3,(ix+030h)		;6631
	ld (ix+01fh),a		;6635
	ld (ix+020h),a		;6638
	set 2,(ix+00fh)		;663b
	ld a,(ix+012h)		;663f
	bit 7,(ix+00eh)		;6642
	jr z,L_664F		;6646
	ld e,(ix+02fh)		;6648
	sub e			;664b
	call m,L_6685		;664c
L_664F:
	ld (ix+00ch),a		;664f
	set 1,(ix+030h)		;6652
	ld a,(0e299h)		;6656
	cp 008h		;6659
	jr nc,L_6662		;665b
	bit 2,(ix+00dh)		;665d
	ret nz			;6661
L_6662:
	bit 0,(ix+030h)		;6662
	jr z,L_6675		;6666
	res 2,(ix+030h)		;6668
	res 1,(ix+030h)		;666c
	res 2,(ix+00fh)		;6670
	ret			;6674
L_6675:
	bit 1,(ix+00fh)		;6675
	ret z			;6679
	ld a,(ix+025h)		;667a
	ld (ix+00ch),a		;667d
	res 2,(ix+00fh)		;6680
	ret			;6684
L_6685:
	xor a			;6685
	ret			;6686
L_6687:
	bit 0,(ix+00eh)		;6687
	jp nz,L_66B2		;668b
	bit 4,(ix+03ch)		;668e
	call nz,L_685E		;6692
	bit 2,(ix+00eh)		;6695
	call nz,L_66F5		;6699
	bit 0,(ix+00fh)		;669c
	call nz,L_6743		;66a0
	bit 6,(ix+00fh)		;66a3
	call nz,L_690B		;66a7
	bit 6,(ix+00dh)		;66aa
	call nz,L_6A1A		;66ae
	ret			;66b1
L_66B2:
	dec (ix+019h)		;66b2
	ret nz			;66b5
	ld l,(ix+017h)		;66b6
	ld h,(ix+018h)		;66b9
	ld a,(hl)			;66bc
	cp 0ffh		;66bd
	jr z,L_66C9		;66bf
	set 7,(ix+009h)		;66c1
	call L_6579		;66c5
	ret			;66c8
L_66C9:
	res 0,(ix+00eh)		;66c9
	xor a			;66cd
	ld (ix+00ch),a		;66ce
	ld a,(ix+00dh)		;66d1
	and 0f0h		;66d4
	ld (ix+00dh),a		;66d6
	ret			;66d9
L_66DA:
	ld e,(ix+010h)		;66da
	ld d,(ix+011h)		;66dd
	bit 1,(ix+00eh)		;66e0
	jr z,L_66EE		;66e4
	ld a,(ix+026h)		;66e6
	add a,e			;66e9
	ld e,a			;66ea
	jr nc,L_66EE		;66eb
	inc d			;66ed
L_66EE:
	ld (ix+00ah),e		;66ee
	ld (ix+00bh),d		;66f1
	ret			;66f4
L_66F5:
	inc (ix+01eh)		;66f5
	ld a,(ix+01eh)		;66f8
	ld b,(ix+00eh)		;66fb
	bit 4,b		;66fe
	jr nz,L_6714		;6700
	bit 3,b		;6702
	jr z,L_6714		;6704
	cp (ix+01ah)		;6706
	ret nz			;6709
	ld (ix+01eh),000h		;670a
	set 4,(ix+00eh)		;670e
	jr L_6718		;6712
L_6714:
	cp (ix+01bh)		;6714
	ret nz			;6717
L_6718:
	ld e,(ix+00ah)		;6718
	ld d,(ix+00bh)		;671b
	ld b,(ix+01ch)		;671e
	ld a,(ix+01dh)		;6721
	cpl			;6724
	ld (ix+01dh),a		;6725
	and a			;6728
	ld a,e			;6729
	jr nz,L_6733		;672a
	add a,b			;672c
	ld e,a			;672d
	jr nc,L_6738		;672e
	inc d			;6730
	jr L_6738		;6731
L_6733:
	sub b			;6733
	ld e,a			;6734
	jr nc,L_6738		;6735
	dec d			;6737
L_6738:
	ld (ix+00ah),e		;6738
	ld (ix+00bh),d		;673b
	ld (ix+01eh),000h		;673e
	ret			;6742
L_6743:
	ld a,(0e299h)		;6743
	cp 008h		;6746
	jr nc,L_674F		;6748
	bit 2,(ix+00dh)		;674a
	ret nz			;674e
L_674F:
	call L_6756		;674f
	ld (ix+00ch),e		;6752
	ret			;6755
L_6756:
	ld e,(ix+00ch)		;6756
	inc (ix+01fh)		;6759
	ld b,(ix+01fh)		;675c
	ld a,(ix+02ch)		;675f
	or a			;6762
	jr nz,L_676E		;6763
	ld a,(ix+024h)		;6765
	cp (ix+004h)		;6768
	call nc,L_6859		;676b
L_676E:
	bit 5,(ix+00fh)		;676e
	jp nz,L_683F		;6772
	bit 3,(ix+00fh)		;6775
	jr nz,L_67F3		;6779
	bit 2,(ix+00fh)		;677b
	jr nz,L_67D3		;677f
	bit 1,(ix+030h)		;6781
	jr nz,L_67C0		;6785
	bit 2,(ix+030h)		;6787
	jr nz,L_67AA		;678b
	ld a,(ix+035h)		;678d
	ld d,a			;6790
	ld a,e			;6791
	sub d			;6792
	jp c,L_679C		;6793
	cp (ix+034h)		;6796
	jp nc,L_679F		;6799
L_679C:
	ld a,(ix+034h)		;679c
L_679F:
	ld e,a			;679f
	ld a,b			;67a0
	cp (ix+025h)		;67a1
	ret nz			;67a4
	set 2,(ix+030h)		;67a5
	ret			;67a9
L_67AA:
	ld a,(ix+012h)		;67aa
	sub (ix+036h)		;67ad
	ld c,a			;67b0
	ld a,e			;67b1
	inc a			;67b2
	ld e,a			;67b3
	cp c			;67b4
	ret c			;67b5
	set 2,(ix+00fh)		;67b6
	ld (ix+01fh),000h		;67ba
	ld e,c			;67be
	ret			;67bf
L_67C0:
	ld a,e			;67c0
	inc a			;67c1
	ld e,a			;67c2
	cp (ix+012h)		;67c3
	ret c			;67c6
	set 2,(ix+00fh)		;67c7
	ld e,(ix+012h)		;67cb
	ld (ix+01fh),000h		;67ce
	ret			;67d2
L_67D3:
	ld a,e			;67d3
	dec a			;67d4
	jp m,L_67E1		;67d5
	cp (ix+034h)		;67d8
	jp c,L_67E1		;67db
	ld e,a			;67de
	jr L_67E5		;67df
L_67E1:
	ld a,(ix+034h)		;67e1
	ld e,a			;67e4
L_67E5:
	ld a,b			;67e5
	cp (ix+021h)		;67e6
	ret c			;67e9
	ld (ix+01fh),000h		;67ea
	set 3,(ix+00fh)		;67ee
	ret			;67f2
L_67F3:
	bit 4,(ix+00fh)		;67f3
	jp nz,L_6822		;67f7
	ld a,b			;67fa
	cp (ix+022h)		;67fb
	ret nz			;67fe
	ld a,e			;67ff
	dec a			;6800
	jp m,L_681D		;6801
	cp (ix+034h)		;6804
	jr c,L_681D		;6807
	ld e,a			;6809
	inc (ix+020h)		;680a
	ld a,(ix+020h)		;680d
	cp (ix+023h)		;6810
	ld (ix+01fh),000h		;6813
	ret nz			;6817
	set 5,(ix+00fh)		;6818
	ret			;681c
L_681D:
	ld a,(ix+034h)		;681d
	ld e,a			;6820
	ret			;6821
L_6822:
	ld a,(ix+022h)		;6822
	ld d,a			;6825
	ld a,e			;6826
	sub d			;6827
	jp c,L_6831		;6828
	cp (ix+034h)		;682b
	jp nc,L_6834		;682e
L_6831:
	ld a,(ix+034h)		;6831
L_6834:
	ld e,a			;6834
	ld a,b			;6835
	cp (ix+023h)		;6836
	ret nz			;6839
	set 5,(ix+00fh)		;683a
	ret			;683e
L_683F:
	ld a,(ix+024h)		;683f
	cp (ix+004h)		;6842
	jr nc,L_6848		;6845
	ret			;6847
L_6848:
	ld a,e			;6848
	dec a			;6849
	jp m,L_6854		;684a
	cp (ix+034h)		;684d
	jr c,L_6854		;6850
	jr L_6857		;6852
L_6854:
	ld a,(ix+034h)		;6854
L_6857:
	ld e,a			;6857
	ret			;6858
L_6859:
	set 5,(ix+00fh)		;6859
	ret			;685d
L_685E:
	bit 6,(ix+03ch)		;685e
	ret z			;6862
	bit 7,(ix+03ch)		;6863
	jp nz,L_68B2		;6867
	bit 5,(ix+03ch)		;686a
	jp nz,L_688A		;686e
	ld l,(ix+010h)		;6871
	ld h,(ix+011h)		;6874
	ld b,(ix+03ah)		;6877
L_687A:
	ld d,000h		;687a
	ld e,(ix+039h)		;687c
	add hl,de			;687f
	jp nc,L_6885		;6880
	sbc hl,de		;6883
L_6885:
	djnz L_687A		;6885
	jp L_68CF		;6887
L_688A:
	ld a,(ix+00ah)		;688a
	ld d,(ix+00bh)		;688d
	sbc a,(ix+039h)		;6890
	ld e,a			;6893
	jp nc,L_68A1		;6894
	ld a,d			;6897
	or a			;6898
	jr nz,L_68A0		;6899
	ld de,00001h		;689b
	jr L_68A1		;689e
L_68A0:
	dec d			;68a0
L_68A1:
	ld (ix+00ah),e		;68a1
	ld (ix+00bh),d		;68a4
	dec (ix+03ah)		;68a7
	ld a,(ix+03ah)		;68aa
	or a			;68ad
	ret nz			;68ae
	jp L_68F4		;68af
L_68B2:
	bit 5,(ix+03ch)		;68b2
	jp nz,L_68DA		;68b6
	ld l,(ix+010h)		;68b9
	ld h,(ix+011h)		;68bc
	ld b,(ix+03ah)		;68bf
L_68C2:
	ld d,000h		;68c2
	ld e,(ix+039h)		;68c4
	sbc hl,de		;68c7
	jp nc,L_68CD		;68c9
	add hl,de			;68cc
L_68CD:
	djnz L_68C2		;68cd
L_68CF:
	ld (ix+00ah),l		;68cf
	ld (ix+00bh),h		;68d2
	set 5,(ix+03ch)		;68d5
	ret			;68d9
L_68DA:
	ld l,(ix+00ah)		;68da
	ld h,(ix+00bh)		;68dd
	ld d,000h		;68e0
	ld e,(ix+039h)		;68e2
	add hl,de			;68e5
	ld (ix+00ah),l		;68e6
	ld (ix+00bh),h		;68e9
	dec (ix+03ah)		;68ec
	ld a,(ix+03ah)		;68ef
	or a			;68f2
	ret nz			;68f3
L_68F4:
	res 6,(ix+03ch)		;68f4
	ld e,(ix+010h)		;68f8
	ld d,(ix+011h)		;68fb
	ld (ix+00ah),e		;68fe
	ld (ix+00bh),d		;6901
	ld a,(ix+03bh)		;6904
	ld (ix+03ah),a		;6907
	ret			;690a
L_690B:
	ld a,(0e299h)		;690b
	cp 008h		;690e
	jr nc,L_6917		;6910
	bit 2,(ix+00dh)		;6912
	ret nz			;6916
L_6917:
	call L_691E		;6917
	ld (ix+00ch),e		;691a
	ret			;691d
L_691E:
	ld e,(ix+00ch)		;691e
	inc (ix+01fh)		;6921
	ld b,(ix+01fh)		;6924
	bit 3,(ix+00fh)		;6927
	jr nz,L_6937		;692b
	bit 2,(ix+00fh)		;692d
	jp nz,L_67D3		;6931
	jp L_67C0		;6934
L_6937:
	bit 3,(ix+030h)		;6937
	ret nz			;693b
	bit 5,(ix+00fh)		;693c
	jp nz,L_69B8		;6940
	ld a,(ix+023h)		;6943
	ld d,a			;6946
	bit 5,(ix+030h)		;6947
	ld a,(ix+037h)		;694b
	jr nz,L_696A		;694e
	set 5,(ix+030h)		;6950
	ld a,e			;6954
	sub (ix+038h)		;6955
	jr c,L_695F		;6958
	cp (ix+034h)		;695a
	jr nc,L_6962		;695d
L_695F:
	ld a,(ix+034h)		;695f
L_6962:
	ld (ix+020h),a		;6962
	ld a,e			;6965
	rlca			;6966
	rlca			;6967
	rlca			;6968
	rlca			;6969
L_696A:
	sub d			;696a
	jp c,L_69A8		;696b
	ld (ix+037h),a		;696e
	rrca			;6971
	rrca			;6972
	rrca			;6973
	rrca			;6974
	and 00fh		;6975
	cp (ix+034h)		;6977
	jp c,L_69A8		;697a
	ld a,(ix+037h)		;697d
	bit 3,a		;6980
	jr z,L_6986		;6982
	add a,010h		;6984
L_6986:
	rrca			;6986
	rrca			;6987
	rrca			;6988
	rrca			;6989
	and 00fh		;698a
	ld e,a			;698c
	cp (ix+034h)		;698d
	jr nz,L_6996		;6990
L_6992:
	set 4,(ix+030h)		;6992
L_6996:
	ld a,b			;6996
	cp (ix+022h)		;6997
	ret nz			;699a
	set 5,(ix+00fh)		;699b
	res 5,(ix+030h)		;699f
	ld (ix+01fh),000h		;69a3
	ret			;69a7
L_69A8:
	ld a,(ix+034h)		;69a8
	rlca			;69ab
	rlca			;69ac
	rlca			;69ad
	rlca			;69ae
	ld (ix+037h),a		;69af
	ld a,(ix+034h)		;69b2
	ld e,a			;69b5
	jr L_6992		;69b6
L_69B8:
	ld a,(ix+024h)		;69b8
	ld d,a			;69bb
	bit 5,(ix+030h)		;69bc
	ld a,(ix+037h)		;69c0
	jr nz,L_69D9		;69c3
	set 5,(ix+030h)		;69c5
	ld a,e			;69c9
	bit 4,(ix+030h)		;69ca
	jr z,L_69D5		;69ce
	cp (ix+020h)		;69d0
	jr nc,L_6A14		;69d3
L_69D5:
	rlca			;69d5
	rlca			;69d6
	rlca			;69d7
	rlca			;69d8
L_69D9:
	add a,d			;69d9
	ld (ix+037h),a		;69da
	jp c,L_6A0C		;69dd
	bit 3,a		;69e0
	jr z,L_69E8		;69e2
	add a,010h		;69e4
	jr c,L_6A0C		;69e6
L_69E8:
	rrca			;69e8
	rrca			;69e9
	rrca			;69ea
	rrca			;69eb
	and 00fh		;69ec
L_69EE:
	ld e,a			;69ee
	bit 4,(ix+030h)		;69ef
	jr z,L_69FA		;69f3
	cp (ix+020h)		;69f5
	jr nc,L_69FF		;69f8
L_69FA:
	ld a,b			;69fa
	cp (ix+022h)		;69fb
	ret nz			;69fe
L_69FF:
	res 5,(ix+00fh)		;69ff
	res 5,(ix+030h)		;6a03
	ld (ix+01fh),000h		;6a07
	ret			;6a0b
L_6A0C:
	ld (ix+037h),0f0h		;6a0c
	ld a,00fh		;6a10
	jr L_69EE		;6a12
L_6A14:
	set 3,(ix+030h)		;6a14
	jr L_69FF		;6a18
L_6A1A:
	bit 7,(ix+030h)		;6a1a
	ret nz			;6a1e
	bit 7,(ix+00dh)		;6a1f
	jr nz,L_6A31		;6a23
	ld (ix+033h),010h		;6a25
	res 6,(ix+030h)		;6a29
	set 7,(ix+00dh)		;6a2d
L_6A31:
	ld a,(ix+00dh)		;6a31
	and 030h		;6a34
	jr z,L_6A40		;6a36
	cp 010h		;6a38
	jr z,L_6A40		;6a3a
	cp 020h		;6a3c
	jr z,L_6A40		;6a3e
L_6A40:
	ld e,(ix+032h)		;6a40
	ld a,(ix+033h)		;6a43
	add a,e			;6a46
	jr nc,L_6A4D		;6a47
	set 6,(ix+030h)		;6a49
L_6A4D:
	ld (ix+033h),a		;6a4d
	and 0f0h		;6a50
	rrca			;6a52
	rrca			;6a53
	rrca			;6a54
	rrca			;6a55
	bit 6,(ix+030h)		;6a56
	jr z,L_6A6C		;6a5a
	bit 4,(ix+031h)		;6a5c
	jr z,L_6A6A		;6a60
	res 6,(ix+030h)		;6a62
	and 00fh		;6a66
	jr L_6A6C		;6a68
L_6A6A:
	add a,010h		;6a6a
L_6A6C:
	ld (ix+031h),a		;6a6c
	cp 020h		;6a6f
	ret c			;6a71
	and 01fh		;6a72
	ld (ix+031h),a		;6a74
	ret			;6a77
L_6A78:
	ld de,0e294h		;6a78
	ld a,(de)			;6a7b
	ld b,a			;6a7c
	inc de			;6a7d
	ld a,(de)			;6a7e
	ld c,a			;6a7f
	ld hl,0e296h		;6a80
	inc (hl)			;6a83
	ld a,(hl)			;6a84
	cp b			;6a85
	ret nz			;6a86
	ld (hl),000h		;6a87
	inc hl			;6a89
	inc (hl)			;6a8a
	ld a,(hl)			;6a8b
	cp c			;6a8c
	ret nz			;6a8d
	ld hl,0e280h		;6a8e
	res 0,(hl)		;6a91
	xor a			;6a93
	ld hl,0e296h		;6a94
	ld (hl),a			;6a97
	inc hl			;6a98
	ld (hl),a			;6a99
	ld a,(0e040h)		;6a9a
	ld e,a			;6a9d
	ld a,(0e080h)		;6a9e
	cp e			;6aa1
	jr nz,L_6AB2		;6aa2
	ld ix,0e080h		;6aa4
	call L_6AFC		;6aa8
	ld ix,0e0c0h		;6aab
	call L_6AFC		;6aaf
L_6AB2:
	ld de,00040h		;6ab2
	ld ix,0e000h		;6ab5
	call L_6AFC		;6ab9
	add ix,de		;6abc
	call L_6AFC		;6abe
	ld ix,0e100h		;6ac1
	call L_6AFC		;6ac5
	add ix,de		;6ac8
	call L_6AFC		;6aca
	add ix,de		;6acd
	call L_6AFC		;6acf
	add ix,de		;6ad2
	call L_6AFC		;6ad4
	ret			;6ad7
L_6AD8:
	ld a,(0e040h)		;6ad8
	ld b,a			;6adb
	ld a,(0e080h)		;6adc
	cp b			;6adf
	jr z,L_6AE8		;6ae0
	ld a,(0e299h)		;6ae2
	and 0f3h		;6ae5
	ret z			;6ae7
L_6AE8:
	bit 2,(ix+00dh)		;6ae8
	jr nz,L_6AF9		;6aec
	ld a,(0e297h)		;6aee
	ld b,a			;6af1
	ld a,e			;6af2
	sub b			;6af3
	ld e,000h		;6af4
	ret m			;6af6
	ld e,a			;6af7
	ret			;6af8
L_6AF9:
	ld e,000h		;6af9
	ret			;6afb
L_6AFC:
	xor a			;6afc
	ld (ix+000h),a		;6afd
	ld (ix+001h),a		;6b00
	ld (ix+005h),a		;6b03
	ld (ix+006h),a		;6b06
	ld (ix+00ah),a		;6b09
	ld (ix+00bh),a		;6b0c
	ld (ix+00ch),a		;6b0f
	ld (ix+00dh),a		;6b12
	ld (ix+00eh),a		;6b15
	ld (ix+00fh),a		;6b18
	ld a,(0e299h)		;6b1b
	cp 008h		;6b1e
	ret nc			;6b20
	nop			;6b21
	cp 004h		;6b22
	ld hl,0e29ch		;6b24
	jr nz,L_6B38		;6b27
	res 0,(hl)		;6b29
	res 1,(hl)		;6b2b
	bit 3,(hl)		;6b2d
	ret z			;6b2f
	bit 2,(hl)		;6b30
	ret z			;6b32
	set 2,(hl)		;6b33
	res 3,(hl)		;6b35
	ret			;6b37
L_6B38:
	res 2,(hl)		;6b38
	res 3,(hl)		;6b3a
	ret			;6b3c
L_6B3D:
	cp 0e0h		;6b3d
	jp c,L_6E27		;6b3f
	and 01fh		;6b42
	push hl			;6b44
	ld hl,06b52h		;6b45
	add a,a			;6b48
	ld e,a			;6b49
	ld d,000h		;6b4a
	add hl,de			;6b4c
	ld e,(hl)			;6b4d
	inc hl			;6b4e
	ld d,(hl)			;6b4f
	ex de,hl			;6b50
	jp (hl)			;6b51

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6b52..0x6c24  (210 bytes)
DATA_6B52:
	defb 090h,06bh,0a6h,06bh,090h,06bh,0a6h,06bh,0c3h,06bh,0edh,06bh,001h,06ch,011h,06ch	; 6b52  .k.k.k.k.k.k.l.l
	defb 023h,06ch,032h,06ch,03dh,06ch,05ch,06ch,0afh,06ch,0b9h,06ch,0dch,06ch,0e7h,06ch	; 6b62  #l2l=l\l.l.l.l.l
	defb 0edh,06ch,0f7h,06ch,012h,06dh,021h,06dh,027h,06dh,02dh,06dh,033h,06dh,03dh,06dh	; 6b72  .l.l.m!m'm-m3m=m
	defb 048h,06dh,0ach,06dh,0b7h,06dh,0bfh,06dh,0d9h,06dh,0eeh,06dh,0f1h,06dh,0e1h,0ddh	; 6b82  Hm.m.m.m.m.m.m..
	defb 0cbh,00eh,0beh,07eh,0e6h,003h,0ddh,077h,00dh,047h,023h,07eh,0ddh,077h,013h,078h	; 6b92  ...~...w.G#~.w.x
	defb 0b7h,0c0h,02bh,0c9h,0e1h,03ah,099h,0e2h,0feh,004h,03ah,09ch,0e2h,020h,009h,0cbh	; 6ba2  ..+..:....:.. ..
	defb 0c7h,0cbh,08fh,032h,09ch,0e2h,018h,0d7h,0cbh,0d7h,0cbh,09fh,032h,09ch,0e2h,018h	; 6bb2  ...2........2...
	defb 0ceh,0e1h,023h,07eh,0e6h,01fh,047h,03ah,099h,0e2h,0feh,004h,078h,020h,00eh,032h	; 6bc2  ..#~..G:....x .2
	defb 09ah,0e2h,03ah,09ch,0e2h,0cbh,0c7h,0cbh,08fh,032h,09ch,0e2h,0c9h,032h,09bh,0e2h	; 6bd2  ..:......2...2..
	defb 03ah,09ch,0e2h,0cbh,0d7h,0cbh,09fh,032h,09ch,0e2h,0c9h,0e1h,023h,0ddh,0cbh,00dh	; 6be2  :......2....#...
	defb 09eh,07eh,032h,09dh,0e2h,011h,09ch,0e2h,01ah,0cbh,0efh,012h,0c3h,002h,06ch,0e1h	; 6bf2  .~2...........l.
	defb 023h,07eh,032h,09fh,0e2h,011h,09ch,0e2h,01ah,0cbh,0f7h,012h,0c3h,012h,06ch,0e1h	; 6c02  #~2...........l.
	defb 023h,07eh,032h,09eh,0e2h,011h,09ch,0e2h,01ah,0cbh,0ffh,012h,0ddh,0cbh,00dh,0d6h	; 6c12  #~2.............
	defb 0c9h,0e1h	; 6c22

; ======================================================================
; CODIGO 0x6c24..0x6c32  (14 bytes)
; ======================================================================


L_6C24:
	ld de,0e29ch		;6c24
	xor a			;6c27
	ld (de),a			;6c28
	ld a,(ix+00dh)		;6c29
	and 0f3h		;6c2c
	ld (ix+00dh),a		;6c2e
	ret			;6c31

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c32..0x6e27  (501 bytes)
DATA_6C32:
	defb 0e1h,023h,07eh,0ddh,077h,014h,0afh,0ddh,077h,02ch,0c9h,0e1h,023h,07eh,0e6h,0f0h	; 6c32  .#~.w...w,..#~..
	defb 028h,00dh,00fh,00fh,00fh,00fh,0ddh,077h,036h,0ddh,0cbh,030h,0c6h,018h,004h,0ddh	; 6c42  (......w6..0....
	defb 0cbh,030h,086h,07eh,0e6h,00fh,0ddh,077h,015h,0c9h,0e1h,023h,0ddh,07eh,00fh,0e6h	; 6c52  .0.~...w...#.~..
	defb 080h,0ddh,077h,00fh,07eh,0e6h,0f0h,00fh,00fh,00fh,00fh,0feh,008h,0d2h,076h,06ch	; 6c62  ..w.~.........vl
	defb 0ddh,0cbh,00fh,0d6h,0cbh,09fh,03ch,0ddh,0cbh,00fh,056h,0c2h,084h,06ch,0ddh,0cbh	; 6c72  ......<...V..l..
	defb 00fh,0ceh,0ddh,077h,021h,07eh,0e6h,00fh,0feh,008h,0dah,093h,06ch,0ddh,0cbh,00fh	; 6c82  ...w!~......l...
	defb 0e6h,0cbh,09fh,03ch,0ddh,077h,022h,023h,07eh,0e6h,0f0h,00fh,00fh,00fh,00fh,0ddh	; 6c92  ...<.w"#~.......
	defb 077h,023h,07eh,0e6h,00fh,0ddh,077h,024h,0ddh,0cbh,00fh,0c6h,0c9h,0e1h,0ddh,07eh	; 6ca2  w#~...w$.......~
	defb 00fh,0e6h,080h,0ddh,077h,00fh,0c9h,0e1h,023h,07eh,0e6h,0f0h,00fh,00fh,00fh,00fh	; 6cb2  ....w...#~......
	defb 0cah,0d3h,06ch,0ddh,077h,035h,07eh,0e6h,00fh,0ddh,077h,025h,0ddh,0cbh,030h,0c6h	; 6cc2  ..l.w5~...w%..0.
	defb 0c9h,0ddh,0cbh,030h,086h,07eh,0ddh,077h,025h,0c9h,0e1h,023h,07eh,0ddh,077h,026h	; 6cd2  ...0.~.w%..#~.w&
	defb 0ddh,0cbh,00eh,0ceh,0c9h,0e1h,0ddh,0cbh,00eh,08eh,0c9h,0e1h,0ddh,07eh,00eh,0e6h	; 6ce2  .............~..
	defb 0e2h,0ddh,077h,00eh,0c9h,0e1h,023h,0ddh,07eh,00eh,0f6h,014h,0ddh,077h,00eh,07eh	; 6cf2  ..w...#.~....w.~
	defb 0e6h,00fh,0ddh,077h,01ch,07eh,0e6h,0f0h,00fh,00fh,00fh,00fh,0ddh,077h,01bh,0c9h	; 6d02  ...w.~.......w..
	defb 0e1h,023h,07eh,0ddh,077h,01ah,0ddh,07eh,00eh,0f6h,00ch,0ddh,077h,00eh,0c9h,0e1h	; 6d12  .#~.w..~....w...
	defb 0ddh,0cbh,00eh,09eh,0c9h,0e1h,0ddh,0cbh,00eh,0f6h,0c9h,0e1h,0ddh,0cbh,00eh,0eeh	; 6d22  ................
	defb 0c9h,0e1h,0ddh,07eh,00eh,0e6h,09fh,0ddh,077h,00eh,0c9h,0e1h,0ddh,0cbh,00eh,0feh	; 6d32  ...~....w.......
	defb 023h,07eh,0ddh,077h,02fh,0c9h,0e1h,023h,07eh,0cbh,07fh,020h,023h,0ddh,0cbh,00fh	; 6d42  #~.w/..#~.. #...
	defb 0feh,0ddh,0cbh,00dh,0beh,0ddh,0cbh,00dh,0b6h,0ddh,0cbh,03ch,09eh,011h,004h,079h	; 6d52  ...........<...y
	defb 087h,083h,05fh,030h,001h,014h,01ah,0ddh,077h,027h,013h,01ah,0ddh,077h,028h,0c9h	; 6d62  .._0....w'...w(.
	defb 0ddh,0cbh,00fh,0feh,0ddh,0cbh,00dh,0f6h,0ddh,0cbh,00dh,0feh,0ddh,0cbh,03ch,09eh	; 6d72  ..............<.
	defb 07eh,0e6h,07fh,0cdh,05fh,06dh,023h,07eh,0cbh,07fh,020h,006h,0ddh,0cbh,00dh,0a6h	; 6d82  ~..._m#~.. .....
	defb 018h,004h,0ddh,0cbh,00dh,0e6h,0cbh,077h,020h,006h,0ddh,0cbh,00dh,0aeh,018h,004h	; 6d92  .......w .......
	defb 0ddh,0cbh,00dh,0eeh,0e6h,03fh,0ddh,077h,032h,0c9h,0e1h,0cdh,0cbh,06dh,0ddh,073h	; 6da2  .....?.w2....m.s
	defb 007h,0ddh,072h,008h,0c9h,0e1h,0ddh,06eh,007h,0ddh,066h,008h,0c9h,0e1h,023h,0ddh	; 6db2  ..r....n..f...#.
	defb 07eh,005h,03ch,0beh,028h,00ah,0ddh,077h,005h,023h,05eh,023h,056h,0ebh,02bh,0c9h	; 6dc2  ~.<.(..w.#^#V.+.
	defb 023h,023h,0ddh,036h,005h,000h,0c9h,0e1h,023h,0ddh,07eh,006h,03ch,0beh,028h,005h	; 6dd2  ##.6....#.~.<.(.
	defb 0ddh,077h,006h,018h,0e4h,023h,023h,0ddh,036h,006h,000h,0c9h,0e1h,018h,0dah,0e1h	; 6de2  .w...##.6.......
	defb 023h,0ddh,046h,009h,07eh,0ddh,077h,009h,0feh,001h,078h,0cah,017h,06eh,0feh,001h	; 6df2  #.F.~.w...x..n..
	defb 0c0h,0ddh,07eh,00eh,0ddh,077h,02ah,0ddh,07eh,00fh,0ddh,077h,02bh,0afh,0ddh,077h	; 6e02  ..~..w*.~..w+..w
	defb 00eh,0ddh,077h,00fh,0c9h,0feh,001h,0c8h,0ddh,07eh,02ah,0ddh,077h,00eh,0ddh,07eh	; 6e12  ..w......~*.w..~
	defb 02bh,0ddh,077h,00fh,0c9h	; 6e22

; ======================================================================
; CODIGO 0x6e27..0x6e37  (16 bytes)
; ======================================================================


L_6E27:
	and 00fh		;6e27
	push hl			;6e29
	ld hl,06e37h		;6e2a
	add a,a			;6e2d
	ld e,a			;6e2e
	ld d,000h		;6e2f
	add hl,de			;6e31
	ld e,(hl)			;6e32
	inc hl			;6e33
	ld d,(hl)			;6e34
	ex de,hl			;6e35
	jp (hl)			;6e36

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e37..0x6f99  (354 bytes)
DATA_6E37:
	defb 057h,06eh,057h,06eh,057h,06eh,057h,06eh,057h,06eh,057h,06eh,062h,06eh,07dh,06eh	; 6e37  WnWnWnWnWnWnbn}n
	defb 094h,06eh,09eh,06eh,0a0h,06eh,0a2h,06eh,0a9h,06eh,0afh,06eh,092h,06fh,094h,06fh	; 6e47  .n.n.n.n.n.n.o.o
	defb 0e1h,07eh,0e6h,00fh,0ddh,077h,016h,0ddh,077h,029h,0c9h,0e1h,0ddh,07eh,03ch,0f6h	; 6e57  .~...w..w)...~<.
	defb 050h,0ddh,077h,03ch,0ddh,0cbh,03ch,0beh,023h,07eh,0ddh,077h,039h,023h,07eh,0ddh	; 6e67  P.w<..<.#~.w9#~.
	defb 077h,03ah,0ddh,077h,03bh,0c9h,0e1h,0ddh,07eh,03ch,0f6h,0d0h,0ddh,077h,03ch,023h	; 6e77  w:.w....~<...w<#
	defb 07eh,0ddh,077h,039h,023h,07eh,0ddh,077h,03ah,0ddh,077h,03bh,0c9h,0e1h,0ddh,07eh	; 6e87  ~.w9#~.w:.w....~
	defb 03ch,0e6h,00fh,0ddh,077h,03ch,0c9h,0e1h,0c9h,0e1h,0c9h,0e1h,023h,07eh,0ddh,077h	; 6e97  <...w<......#~.w
	defb 034h,0c9h,0e1h,0afh,0ddh,077h,034h,0c9h,0e1h,023h,0ddh,07eh,00fh,0e6h,080h,0ddh	; 6ea7  4....w4..#.~....
	defb 077h,00fh,07eh,0e6h,0f0h,00fh,00fh,00fh,00fh,0feh,008h,0d2h,0c9h,06eh,0ddh,0cbh	; 6eb7  w.~..........n..
	defb 00fh,0d6h,0cbh,09fh,03ch,0ddh,0cbh,00fh,056h,0c2h,0d7h,06eh,0ddh,0cbh,00fh,0ceh	; 6ec7  ....<...V..n....
	defb 0ddh,077h,021h,07eh,0e6h,00fh,0ddh,077h,022h,023h,07eh,0e6h,0f0h,00fh,00fh,00fh	; 6ed7  .w!~...w"#~.....
	defb 00fh,0ddh,077h,023h,07eh,0e6h,00fh,0ddh,077h,024h,047h,0ddh,07eh,023h,090h,0ddh	; 6ee7  ..w#~...w$G.~#..
	defb 077h,038h,01eh,000h,016h,000h,0ddh,046h,022h,0ddh,07eh,023h,090h,038h,009h,014h	; 6ef7  w8.....F".~#.8..
	defb 0ddh,077h,023h,0b7h,028h,01fh,018h,0f4h,078h,0ddh,046h,023h,090h,007h,007h,007h	; 6f07  .w#.(...x.F#....
	defb 007h,0e6h,0f0h,0ddh,077h,023h,0ddh,046h,022h,090h,038h,009h,01ch,0ddh,077h,023h	; 6f17  ....w#.F".8...w#
	defb 0b7h,028h,002h,018h,0f4h,07bh,0b7h,028h,003h,02fh,0e6h,00fh,0ddh,077h,023h,07ah	; 6f27  .(...{.(./...w#z
	defb 007h,007h,007h,007h,0e6h,0f0h,0ddh,0b6h,023h,0ddh,077h,023h,01eh,000h,016h,000h	; 6f37  ........#.w#....
	defb 0ddh,046h,022h,0ddh,07eh,024h,090h,038h,009h,014h,0ddh,077h,024h,0b7h,028h,01fh	; 6f47  .F".~$.8...w$.(.
	defb 018h,0f4h,078h,0ddh,046h,024h,090h,007h,007h,007h,007h,0e6h,0f0h,0ddh,077h,024h	; 6f57  ..x.F$........w$
	defb 0ddh,046h,022h,090h,038h,009h,01ch,0ddh,077h,024h,0b7h,028h,002h,018h,0f4h,07bh	; 6f67  .F".8...w$.(...{
	defb 0b7h,028h,003h,02fh,0e6h,00fh,0ddh,077h,024h,07ah,007h,007h,007h,007h,0e6h,0f0h	; 6f77  .(./...w$z......
	defb 0ddh,0b6h,024h,0ddh,077h,024h,0ddh,0cbh,00fh,0f6h,0c9h,0e1h,0c9h,0ddh,0cbh,00eh	; 6f87  ..$.w$..........
	defb 0beh,0c9h	; 6f97

; ======================================================================
; CODIGO 0x6f99..0x7086  (237 bytes)
; ======================================================================


L_6F99:
	call L_6FA0		;6f99
	call L_7092		;6f9c
	ret			;6f9f
L_6FA0:
	call L_6FB0		;6fa0
	call L_6FC8		;6fa3
	call L_6FFD		;6fa6
	call L_7024		;6fa9
	call L_7052		;6fac
	ret			;6faf
L_6FB0:
	ld hl,0e00dh		;6fb0
	ld a,(hl)			;6fb3
	and 001h		;6fb4
	jr z,L_6FC7		;6fb6
	ld hl,0e08dh		;6fb8
	ld a,(hl)			;6fbb
	and 001h		;6fbc
	jr z,L_6FC7		;6fbe
	ld hl,0e00dh		;6fc0
	set 1,(hl)		;6fc3
	res 0,(hl)		;6fc5
L_6FC7:
	ret			;6fc7
L_6FC8:
	ld b,000h		;6fc8
	ld c,008h		;6fca
	ld hl,0e00ah		;6fcc
	call L_6FDF		;6fcf
	ld hl,0e04ah		;6fd2
	call L_6FDF		;6fd5
	ld hl,0e08ah		;6fd8
	call L_6FDF		;6fdb
	ret			;6fde
L_6FDF:
	ld e,(hl)			;6fdf
	ld a,b			;6fe0
	call 00093h		;6fe1   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;6fe4
	inc b			;6fe5
	ld e,(hl)			;6fe6
	ld a,b			;6fe7
	call 00093h		;6fe8   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;6feb
	ld e,(hl)			;6fec
	ld a,c			;6fed
	inc b			;6fee
	inc c			;6fef
	inc hl			;6ff0
	bit 3,(hl)		;6ff1
	ret nz			;6ff3
	call 00093h		;6ff4   ; BIOS WRTPSG - Writes data to PSG-register
	bit 2,(hl)		;6ff7
	ret z			;6ff9
	set 3,(hl)		;6ffa
	ret			;6ffc
L_6FFD:
	ld hl,0e29ch		;6ffd
	bit 0,(hl)		;7000
	jr z,L_7010		;7002
	res 0,(hl)		;7004
	set 1,(hl)		;7006
	ld a,(0e29ah)		;7008
	ld e,a			;700b
	ld a,006h		;700c
	jr L_7020		;700e
L_7010:
	bit 1,(hl)		;7010
	ret nz			;7012
	bit 2,(hl)		;7013
	ret z			;7015
	res 2,(hl)		;7016
	set 3,(hl)		;7018
	ld a,(0e29bh)		;701a
	ld e,a			;701d
	ld a,006h		;701e
L_7020:
	call 00093h		;7020   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;7023
L_7024:
	ld hl,0e29ch		;7024
	bit 7,(hl)		;7027
	ret z			;7029
	res 7,(hl)		;702a
	ld a,(0e29eh)		;702c
	ld e,a			;702f
	ld a,00bh		;7030
	call 00093h		;7032   ; BIOS WRTPSG - Writes data to PSG-register
	bit 6,(hl)		;7035
	ret z			;7037
	res 6,(hl)		;7038
	ld a,(0e29fh)		;703a
	ld e,a			;703d
	ld a,00ch		;703e
	call 00093h		;7040   ; BIOS WRTPSG - Writes data to PSG-register
	bit 5,(hl)		;7043
	ret z			;7045
	res 5,(hl)		;7046
	ld a,(0e29dh)		;7048
	ld e,a			;704b
	ld a,00dh		;704c
	call 00093h		;704e   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;7051
L_7052:
	ld hl,0e00dh		;7052
	ld a,(hl)			;7055
	ld hl,07086h		;7056
	call L_707F		;7059
	ld b,(hl)			;705c
	ld hl,0e04dh		;705d
	ld a,(hl)			;7060
	ld hl,0708ah		;7061
	call L_707F		;7064
	ld c,(hl)			;7067
	ld hl,0e08dh		;7068
	ld a,(hl)			;706b
	ld hl,0708eh		;706c
	call L_707F		;706f
	ld a,(hl)			;7072
	or b			;7073
	or c			;7074
L_7075:
	ld e,a			;7075
	ld (0e298h),a		;7076
	ld a,007h		;7079
	call 00093h		;707b   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;707e
L_707F:
	and 003h		;707f
	ld e,a			;7081
	ld d,000h		;7082
	add hl,de			;7084
	ret			;7085

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7086..0x7092  (12 bytes)
DATA_7086:
	defb 089h,081h,088h,080h,092h,082h,090h,080h,0a4h,084h,0a0h,080h	; 7086  ............

; ======================================================================
; CODIGO 0x7092..0x73a9  (791 bytes)
; ======================================================================


L_7092:
	call L_709F		;7092
	call L_71A4		;7095
	call L_71F6		;7098
	call L_72BB		;709b
	ret			;709e
L_709F:
	ld ix,0e2a0h		;709f
	ld bc,0e2ach		;70a3
	ld de,0e2a2h		;70a6
	ld hl,0e0cah		;70a9
	ld a,(de)			;70ac
	res 0,(ix+000h)		;70ad
	cp (hl)			;70b1
	jr z,L_70BA		;70b2
	set 0,(ix+000h)		;70b4
	ld a,(hl)			;70b8
	ld (de),a			;70b9
L_70BA:
	inc de			;70ba
	inc hl			;70bb
	ld a,(de)			;70bc
	res 1,(ix+000h)		;70bd
	cp (hl)			;70c1
	jr z,L_70CA		;70c2
	set 1,(ix+000h)		;70c4
	ld a,(hl)			;70c8
	ld (de),a			;70c9
L_70CA:
	inc de			;70ca
	inc hl			;70cb
	res 2,(ix+001h)		;70cc
	ld a,(bc)			;70d0
	cp (hl)			;70d1
	jr z,L_70DA		;70d2
	set 2,(ix+001h)		;70d4
	ld a,(hl)			;70d8
	ld (bc),a			;70d9
L_70DA:
	inc bc			;70da
	ld hl,0e10ah		;70db
	ld a,(de)			;70de
	res 2,(ix+000h)		;70df
	cp (hl)			;70e3
	jr z,L_70EC		;70e4
	set 2,(ix+000h)		;70e6
	ld a,(hl)			;70ea
	ld (de),a			;70eb
L_70EC:
	inc de			;70ec
	inc hl			;70ed
	ld a,(de)			;70ee
	res 3,(ix+000h)		;70ef
	cp (hl)			;70f3
	jr z,L_70FC		;70f4
	set 3,(ix+000h)		;70f6
	ld a,(hl)			;70fa
	ld (de),a			;70fb
L_70FC:
	inc de			;70fc
	inc hl			;70fd
	res 3,(ix+001h)		;70fe
	ld a,(bc)			;7102
	cp (hl)			;7103
	jr z,L_710C		;7104
	set 3,(ix+001h)		;7106
	ld a,(hl)			;710a
	ld (bc),a			;710b
L_710C:
	inc bc			;710c
	ld hl,0e14ah		;710d
	ld a,(de)			;7110
	res 4,(ix+000h)		;7111
	cp (hl)			;7115
	jr z,L_711E		;7116
	set 4,(ix+000h)		;7118
	ld a,(hl)			;711c
	ld (de),a			;711d
L_711E:
	inc de			;711e
	inc hl			;711f
	ld a,(de)			;7120
	res 5,(ix+000h)		;7121
	cp (hl)			;7125
	jr z,L_712E		;7126
	set 5,(ix+000h)		;7128
	ld a,(hl)			;712c
	ld (de),a			;712d
L_712E:
	inc de			;712e
	inc hl			;712f
	res 4,(ix+001h)		;7130
	ld a,(bc)			;7134
	cp (hl)			;7135
	jr z,L_713E		;7136
	set 4,(ix+001h)		;7138
	ld a,(hl)			;713c
	ld (bc),a			;713d
L_713E:
	inc bc			;713e
	ld hl,0e18ah		;713f
	ld a,(de)			;7142
	res 6,(ix+000h)		;7143
	cp (hl)			;7147
	jr z,L_7150		;7148
	set 6,(ix+000h)		;714a
	ld a,(hl)			;714e
	ld (de),a			;714f
L_7150:
	inc de			;7150
	inc hl			;7151
	ld a,(de)			;7152
	res 7,(ix+000h)		;7153
	cp (hl)			;7157
	jr z,L_7160		;7158
	set 7,(ix+000h)		;715a
	ld a,(hl)			;715e
	ld (de),a			;715f
L_7160:
	inc de			;7160
	inc hl			;7161
	res 5,(ix+001h)		;7162
	ld a,(bc)			;7166
	cp (hl)			;7167
	jr z,L_7170		;7168
	set 5,(ix+001h)		;716a
	ld a,(hl)			;716e
	ld (bc),a			;716f
L_7170:
	inc bc			;7170
	ld hl,0e1cah		;7171
	ld a,(de)			;7174
	res 0,(ix+001h)		;7175
	cp (hl)			;7179
	jr z,L_7182		;717a
	set 0,(ix+001h)		;717c
	ld a,(hl)			;7180
	ld (de),a			;7181
L_7182:
	inc de			;7182
	inc hl			;7183
	ld a,(de)			;7184
	res 1,(ix+001h)		;7185
	cp (hl)			;7189
	jr z,L_7192		;718a
	set 1,(ix+001h)		;718c
	ld a,(hl)			;7190
	ld (de),a			;7191
L_7192:
	inc de			;7192
	inc hl			;7193
	res 6,(ix+001h)		;7194
	ld a,(bc)			;7198
	cp (hl)			;7199
	jr z,L_71A2		;719a
	set 6,(ix+001h)		;719c
	ld a,(hl)			;71a0
	ld (bc),a			;71a1
L_71A2:
	inc bc			;71a2
	ret			;71a3
L_71A4:
	ld e,000h		;71a4
	ld hl,0e0cdh		;71a6
	ld c,001h		;71a9
	ld a,(hl)			;71ab
	or a			;71ac
	jr z,L_71B0		;71ad
	ld a,c			;71af
L_71B0:
	or e			;71b0
	ld e,a			;71b1
	ld hl,0e10dh		;71b2
	sla c		;71b5
	ld a,(hl)			;71b7
	or a			;71b8
	jr z,L_71BC		;71b9
	ld a,c			;71bb
L_71BC:
	or e			;71bc
	ld e,a			;71bd
	ld hl,0e14dh		;71be
	sla c		;71c1
	ld a,(hl)			;71c3
	or a			;71c4
	jr z,L_71C8		;71c5
	ld a,c			;71c7
L_71C8:
	or e			;71c8
	ld e,a			;71c9
	ld hl,0e18dh		;71ca
	sla c		;71cd
	ld a,(hl)			;71cf
	or a			;71d0
	jr z,L_71D4		;71d1
	ld a,c			;71d3
L_71D4:
	or e			;71d4
	ld e,a			;71d5
	ld hl,0e1cdh		;71d6
	sla c		;71d9
	ld a,(hl)			;71db
	or a			;71dc
	jr z,L_71E0		;71dd
	ld a,c			;71df
L_71E0:
	or e			;71e0
	ld e,a			;71e1
	ld hl,0e2b1h		;71e2
	ld a,(hl)			;71e5
	cp e			;71e6
	jr z,L_71F0		;71e7
	ld (hl),e			;71e9
	ld hl,0e2a1h		;71ea
	set 7,(hl)		;71ed
	ret			;71ef
L_71F0:
	ld hl,0e2a1h		;71f0
	res 7,(hl)		;71f3
	ret			;71f5
L_71F6:
	ld ix,0e2a0h		;71f6
	ld hl,0e2a2h		;71fa
	ld de,09880h		;71fd
	bit 0,(ix+000h)		;7200
	jr z,L_7209		;7204
	call L_72AE		;7206
L_7209:
	inc hl			;7209
	inc de			;720a
	bit 1,(ix+000h)		;720b
	jr z,L_7214		;720f
	call L_72AE		;7211
L_7214:
	inc hl			;7214
	inc de			;7215
	bit 2,(ix+000h)		;7216
	jr z,L_721F		;721a
	call L_72AE		;721c
L_721F:
	inc hl			;721f
	inc de			;7220
	bit 3,(ix+000h)		;7221
	jr z,L_722A		;7225
	call L_72AE		;7227
L_722A:
	inc hl			;722a
	inc de			;722b
	bit 4,(ix+000h)		;722c
	jr z,L_7235		;7230
	call L_72AE		;7232
L_7235:
	inc hl			;7235
	inc de			;7236
	bit 5,(ix+000h)		;7237
	jr z,L_7240		;723b
	call L_72AE		;723d
L_7240:
	inc hl			;7240
	inc de			;7241
	bit 6,(ix+000h)		;7242
	jr z,L_724B		;7246
	call L_72AE		;7248
L_724B:
	inc hl			;724b
	inc de			;724c
	bit 7,(ix+000h)		;724d
	jr z,L_7256		;7251
	call L_72AE		;7253
L_7256:
	inc hl			;7256
	inc de			;7257
	bit 0,(ix+001h)		;7258
	jr z,L_7261		;725c
	call L_72AE		;725e
L_7261:
	inc hl			;7261
	inc de			;7262
	bit 1,(ix+001h)		;7263
	jr z,L_726C		;7267
	call L_72AE		;7269
L_726C:
	inc hl			;726c
	inc de			;726d
	bit 2,(ix+001h)		;726e
	jr z,L_7277		;7272
	call L_72AE		;7274
L_7277:
	inc hl			;7277
	inc de			;7278
	bit 3,(ix+001h)		;7279
	jr z,L_7282		;727d
	call L_72AE		;727f
L_7282:
	inc hl			;7282
	inc de			;7283
	bit 4,(ix+001h)		;7284
	jr z,L_728D		;7288
	call L_72AE		;728a
L_728D:
	inc hl			;728d
	inc de			;728e
	bit 5,(ix+001h)		;728f
	jr z,L_7298		;7293
	call L_72AE		;7295
L_7298:
	inc hl			;7298
	inc de			;7299
	bit 6,(ix+001h)		;729a
	jr z,L_72A3		;729e
	call L_72AE		;72a0
L_72A3:
	inc hl			;72a3
	inc de			;72a4
	bit 7,(ix+001h)		;72a5
	ret z			;72a9
	call L_72AE		;72aa
	ret			;72ad
L_72AE:
	ld a,03fh		;72ae
	ld (09000h),a		;72b0
	ld a,(hl)			;72b3
	ld (de),a			;72b4
	ld a,00bh		;72b5
	ld (09000h),a		;72b7
	ret			;72ba
L_72BB:
	ld ix,0e0c0h		;72bb
	bit 7,(ix+00fh)		;72bf
	jr z,L_72EA		;72c3
	res 7,(ix+00fh)		;72c5
	ld e,(ix+027h)		;72c9
	ld d,(ix+028h)		;72cc
	bit 6,(ix+00dh)		;72cf
	jr z,L_72E3		;72d3
	set 7,(ix+00fh)		;72d5
	ex de,hl			;72d9
	ld de,09800h		;72da
	call L_738F		;72dd
	jp L_72EA		;72e0
L_72E3:
	ex de,hl			;72e3
	ld de,09800h		;72e4
	call L_7370		;72e7
L_72EA:
	ld ix,0e100h		;72ea
	bit 7,(ix+00fh)		;72ee
	jr z,L_7319		;72f2
	res 7,(ix+00fh)		;72f4
	ld e,(ix+027h)		;72f8
	ld d,(ix+028h)		;72fb
	bit 6,(ix+00dh)		;72fe
	jr z,L_7312		;7302
	set 7,(ix+00fh)		;7304
	ex de,hl			;7308
	ld de,09820h		;7309
	call L_738F		;730c
	jp L_7319		;730f
L_7312:
	ex de,hl			;7312
	ld de,09820h		;7313
	call L_7370		;7316
L_7319:
	ld ix,0e140h		;7319
	bit 7,(ix+00fh)		;731d
	jr z,L_7348		;7321
	res 7,(ix+00fh)		;7323
	ld e,(ix+027h)		;7327
	ld d,(ix+028h)		;732a
	bit 6,(ix+00dh)		;732d
	jr z,L_7341		;7331
	set 7,(ix+00fh)		;7333
	ex de,hl			;7337
	ld de,09840h		;7338
	call L_738F		;733b
	jp L_7348		;733e
L_7341:
	ex de,hl			;7341
	ld de,09840h		;7342
	call L_7370		;7345
L_7348:
	ld ix,0e180h		;7348
	bit 7,(ix+00fh)		;734c
	ret z			;7350
	res 7,(ix+00fh)		;7351
	ld e,(ix+027h)		;7355
	ld d,(ix+028h)		;7358
	bit 6,(ix+00dh)		;735b
	jr z,L_736C		;735f
	set 7,(ix+00fh)		;7361
	ex de,hl			;7365
	ld de,09860h		;7366
	jp L_738F		;7369
L_736C:
	ex de,hl			;736c
	ld de,09860h		;736d
L_7370:
	ld a,03fh		;7370
	ld (09000h),a		;7372
	xor a			;7375
	ld (0988fh),a		;7376
	ld b,020h		;7379
L_737B:
	ld a,(hl)			;737b
	ld (de),a			;737c
	inc hl			;737d
	inc de			;737e
	djnz L_737B		;737f
	ld hl,0988fh		;7381
	ld de,0e2b1h		;7384
	ld a,(de)			;7387
	ld (hl),a			;7388
	ld a,00bh		;7389
	ld (09000h),a		;738b
	ret			;738e
L_738F:
	ld a,03fh		;738f
	ld (09000h),a		;7391
	ld b,020h		;7394
L_7396:
	ld a,(hl)			;7396
	ld (de),a			;7397
	ld a,l			;7398
	add a,(ix+031h)		;7399
	ld l,a			;739c
	jr nc,L_73A0		;739d
	inc h			;739f
L_73A0:
	inc de			;73a0
	djnz L_7396		;73a1
	ld a,00bh		;73a3
	ld (09000h),a		;73a5
	ret			;73a8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x73a9..0x8000  (3159 bytes)
DATA_73A9:
	defb 0bdh,073h,0c4h,073h,0d1h,073h,0e6h,073h,0feh,073h,015h,074h,02eh,074h,047h,074h	; 73a9  .s.s.s.s.s.t.tGt
	defb 062h,074h,07fh,074h,0e1h,001h,0e4h,000h,007h,005h,0ffh,0e3h,001h,0e4h,000h,08ah	; 73b9  bt.t............
	defb 000h,0e1h,004h,006h,005h,004h,003h,0ffh,0e1h,001h,0e4h,014h,007h,0e2h,001h,072h	; 73c9  ...............r
	defb 000h,0e1h,002h,0e4h,010h,003h,002h,0e1h,001h,0e4h,006h,002h,0ffh,0e2h,001h,0e5h	; 73d9  ................
	defb 000h,000h,010h,0c1h,0b0h,0e8h,0e1h,001h,0e4h,004h,008h,007h,006h,005h,004h,0e4h	; 73e9  ................
	defb 004h,003h,002h,001h,0ffh,0e2h,001h,0e5h,000h,000h,00fh,0a2h,080h,0e8h,0e1h,001h	; 73f9  ................
	defb 0e4h,003h,007h,006h,005h,0e1h,006h,004h,003h,002h,001h,0ffh,0e2h,001h,091h,02ah	; 7409  ...............*
	defb 081h,04ah,071h,055h,061h,060h,051h,06ah,041h,075h,031h,080h,021h,08ah,011h,095h	; 7419  .JqUa`QjAu1.!...
	defb 001h,0a0h,001h,0b0h,0ffh,0e2h,001h,0a1h,05ah,081h,080h,071h,08ah,061h,095h,051h	; 7429  ........Z..q.a.Q
	defb 0a0h,041h,0aah,031h,0b5h,021h,0c0h,011h,0cah,001h,0d5h,001h,0e0h,0ffh,0e2h,001h	; 7439  .A.1.!..........
	defb 0a1h,095h,091h,0c0h,081h,0cah,0a1h,0d5h,061h,0e0h,051h,0eah,041h,0f5h,032h,000h	; 7449  ........a.Q.A.2.
	defb 022h,00ah,012h,015h,002h,020h,002h,030h,0ffh,0e2h,001h,0b1h,0e0h,0a2h,010h,092h	; 7459  ".... .0........
	defb 01ah,082h,025h,072h,030h,062h,03ah,052h,045h,042h,050h,032h,05ah,022h,065h,012h	; 7469  ..%r0b:REBP2Z"e.
	defb 070h,002h,07ah,002h,085h,0ffh,0e2h,001h,0e5h,009h,000h,00ah,094h,050h,096h,000h	; 7479  p.z..........P..
	defb 097h,000h,098h,000h,0ffh,0a2h,074h,0a2h,074h,0a2h,074h,0a2h,074h,0a2h,074h,0a2h	; 7489  ......t.t.t.t.t.
	defb 074h,0a2h,074h,0a2h,074h,0a2h,074h,0a2h,074h,0bah,074h,0bah,074h,0bah,074h,0bah	; 7499  t.t.t.t.t.t.t.t.
	defb 074h,0bah,074h,0bah,074h,0bah,074h,0bah,074h,0bah,074h,0bah,074h,0bah,074h,0bah	; 74a9  t.t.t.t.t.t.t.t.
	defb 074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h	; 74b9  t.t.t.t.t.t.t.t.
	defb 074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h,0eah,074h,0eah,074h,0eah,074h,0eah	; 74c9  t.t.t.t.t.t.t.t.
	defb 074h,0eah,074h,0eah,074h,0eah,074h,0eah,074h,0eah,074h,0eah,074h,006h,075h,006h	; 74d9  t.t.t.t.t.t.t.u.
	defb 075h,0e2h,001h,0a2h,030h,0e1h,001h,0e4h,005h,00ah,0e4h,006h,009h,0e4h,008h,008h	; 74e9  u...0...........
	defb 0e4h,004h,007h,0e1h,005h,0e4h,00ah,005h,004h,003h,002h,001h,0ffh,0ach,075h,0beh	; 74f9  ..............u.
	defb 075h,0d0h,075h,0d4h,075h,08ah,076h,0e2h,075h,0f0h,075h,0feh,075h,00ch,076h,01ah	; 7509  u.u.u.v.u.u.u.v.
	defb 076h,028h,076h,036h,076h,06eh,076h,03ah,077h,048h,077h,04eh,077h,054h,077h,05ah	; 7519  v(v6vnv:wHwNwTwZ
	defb 077h,060h,077h,066h,077h,06ch,077h,072h,077h,078h,077h,07eh,077h,084h,077h,08ah	; 7529  w`wfwlwrwxw~w.w.
	defb 077h,090h,077h,096h,077h,0aeh,077h,0b4h,077h,0bah,077h,0c0h,077h,0c6h,077h,0cch	; 7539  w.w.w.w.w.w.w.w.
	defb 077h,0d2h,077h,0d8h,077h,0deh,077h,0e4h,077h,00eh,078h,014h,078h,01ah,078h,020h	; 7549  w.w.w.w.w.x.x.x
	defb 078h,026h,078h,02ch,078h,032h,078h,038h,078h,03eh,078h,044h,078h,04ah,078h,050h	; 7559  x&x,x2x8x>xDxJxP
	defb 078h,056h,078h,05ch,078h,062h,078h,068h,078h,092h,078h,098h,078h,09eh,078h,0a4h	; 7569  xVx\xbxhx.x.x.x.
	defb 078h,0aah,078h,0b0h,078h,098h,076h,0bch,076h,0f2h,076h,004h,077h,016h,077h,0aah	; 7579  x.x.x.v.v.v.w.w.
	defb 076h,0b6h,078h,044h,076h,052h,076h,060h,076h,07ch,076h,0e0h,076h,028h,077h,0ceh	; 7589  v.xDvRv`v|v.v(w.
	defb 076h,09ch,077h,0eah,077h,06eh,078h,080h,078h,0c8h,078h,0d6h,078h,0eeh,078h,0fch	; 7599  v.w.wnx.x.x.x.x.
	defb 077h,000h,079h,0ffh,0ffh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h	; 75a9  w.y...~.~.~.~.~.
	defb 07eh,0b9h,07eh,0b9h,07eh,0ffh,0e0h,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h	; 75b9  ~.~.~...~.~.~.~.
	defb 07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,010h,0feh,0a4h,07eh,0cfh,0e0h,078h,095h,0f7h	; 75c9  ~.~.~.~...~..x..
	defb 095h,08eh,096h,059h,097h,041h,098h,01ah,099h,0cfh,0e0h,09eh,09eh,001h,09fh,054h	; 75d9  ...Y.A.........T
	defb 09fh,0bah,09fh,084h,0a0h,0feh,0a0h,0cfh,0e0h,0d3h,0a2h,022h,0a3h,091h,0a3h,026h	; 75e9  ..........."...&
	defb 0a4h,09ch,0a4h,01bh,0a5h,0cfh,0e0h,04eh,0a6h,0e9h,0a6h,093h,0a7h,025h,0a8h,068h	; 75f9  .......N.....%.h
	defb 0a9h,068h,0aah,0cfh,0e0h,024h,0adh,05bh,0adh,08bh,0adh,0e5h,0adh,03fh,0aeh,069h	; 7609  .h...$.[.....?.i
	defb 0aeh,0cfh,0e0h,01bh,0afh,039h,0afh,076h,0afh,0ech,0afh,02fh,0b0h,041h,0b0h,0cfh	; 7619  .....9.v.../.A..
	defb 0e0h,0dfh,0b0h,048h,0b1h,072h,0b1h,0d8h,0b1h,01ah,0b2h,053h,0b2h,0cfh,0e0h,07bh	; 7629  ...H.r.....S...{
	defb 0b3h,0cfh,0b3h,041h,0b4h,09dh,0b4h,063h,0b5h,0bch,0b5h,0cfh,0e0h,000h,0a0h,06ah	; 7639  ...A...c.......j
	defb 0a0h,005h,0a1h,0a9h,0a1h,062h,0a2h,020h,0a3h,0cfh,0e0h,09dh,0a4h,0cah,0a4h,03ch	; 7649  .....b. .......<
	defb 0a5h,06fh,0a5h,019h,0a6h,0a5h,0a6h,0cfh,0e0h,085h,0a9h,0c7h,0a9h,0f4h,0a9h,039h	; 7659  .o.............9
	defb 0aah,096h,0aah,0c9h,0aah,0cfh,0e0h,093h,0b7h,0d7h,0b7h,03fh,0b8h,064h,0b9h,008h	; 7669  ...........?.d..
	defb 0bah,028h,0bbh,0cfh,0e0h,070h,0ach,0dbh,0ach,04eh,0adh,006h,0aeh,0cah,0aeh,048h	; 7679  .(...p...N.....H
	defb 0afh,0cfh,0e0h,01ah,09bh,04fh,09bh,08ch,09bh,0ebh,09bh,05bh,09ch,0cfh,09ch,0ffh	; 7689  .....O.....[....
	defb 0e0h,0f4h,0a8h,02ch,0a9h,05bh,0a9h,0b1h,0a9h,0d3h,0a9h,023h,0aah,06ah,0aah,0cch	; 7699  ...,.[.....#.j..
	defb 0aah,0ffh,0e0h,0aah,0a0h,03ch,0a1h,040h,0a2h,008h,0a3h,04bh,0a4h,0bah,0a4h,09bh	; 76a9  .....<.@...K....
	defb 0a5h,0d0h,0a6h,0ffh,0e0h,007h,0abh,02fh,0ach,004h,0adh,0d5h,0adh,08dh,0afh,0d4h	; 76b9  ......./........
	defb 0b0h,05fh,0b2h,08ch,0b3h,0ffh,0e0h,074h,0bbh,0bch,0bbh,005h,0bch,042h,0bch,0a3h	; 76c9  ._.....t.....B..
	defb 0bch,0dch,0bch,006h,0bdh,058h,0bdh,0ffh,0e0h,0abh,0b1h,0e1h,0b1h,0f1h,0b1h,002h	; 76d9  .....X..........
	defb 0b2h,01eh,0b2h,034h,0b2h,04eh,0b2h,061h,0b2h,0ffh,0e0h,054h,0b7h,0d7h,0b7h,05dh	; 76e9  ...4.N.a...T...]
	defb 0b8h,08bh,0b8h,0c8h,0b8h,0fch,0b8h,07bh,0b9h,0aeh,0b9h,0ffh,0e0h,0ebh,0b9h,004h	; 76f9  .......{........
	defb 0bah,01fh,0bah,032h,0bah,045h,0bah,06dh,0bah,0b4h,0bah,0feh,0bah,0ffh,0e0h,005h	; 7709  ...2.E.m........
	defb 0bch,04dh,0bch,08ch,0bch,08dh,0bch,0ebh,0bch,033h,0bdh,084h,0bdh,0b6h,0bdh,0ffh	; 7719  .M.......3......
	defb 0e0h,0f2h,0b2h,0bah,0b3h,04eh,0b4h,023h,0b5h,0e9h,0b5h,0b7h,0b6h,0beh,0b7h,0a5h	; 7729  .....N.#........
	defb 0b8h,0cfh,0e0h,030h,0bdh,05ch,0bdh,0b4h,0bdh,0d9h,0bdh,059h,0beh,0bah,0beh,030h	; 7739  ...0.\.....Y...0
	defb 002h,0bah,07eh,0f5h,07eh,030h,003h,034h,07fh,081h,07fh,030h,003h,0d2h,07fh,0f7h	; 7749  ..~.~0.4...0....
	defb 07fh,030h,004h,02eh,080h,069h,080h,030h,004h,0a8h,080h,0d5h,080h,030h,004h,00ch	; 7759  .0...i.0.....0..
	defb 081h,045h,081h,030h,004h,07ch,081h,0a9h,081h,030h,004h,0dah,081h,021h,082h,030h	; 7769  .E.0.|...0...!.0
	defb 005h,06ah,082h,0a9h,082h,030h,007h,0d4h,082h,01bh,083h,030h,025h,066h,083h,0bfh	; 7779  .j...0.....0%f..
	defb 083h,030h,00ch,008h,084h,04ch,084h,030h,012h,09ah,084h,017h,085h,030h,00dh,096h	; 7789  .0...L.0.....0..
	defb 085h,0beh,085h,0ffh,0e0h,000h,0a8h,01ah,0a8h,020h,0a8h,02ch,0a8h,03fh,0a8h,050h	; 7799  ......... .,.?.P
	defb 0a8h,0c5h,0a8h,06eh,0a9h,030h,022h,0e9h,085h,010h,086h,030h,008h,037h,086h,08eh	; 77a9  ...n.0"....0.7..
	defb 086h,030h,008h,0ddh,086h,030h,087h,030h,00dh,083h,087h,0eeh,087h,030h,008h,069h	; 77b9  .0...0.0.....0.i
	defb 088h,0beh,088h,030h,00eh,017h,089h,088h,089h,030h,005h,0fdh,089h,02ch,08ah,030h	; 77c9  ...0.....0...,.0
	defb 005h,05dh,08ah,086h,08ah,030h,005h,0b3h,08ah,0dch,08ah,030h,013h,011h,08bh,080h	; 77d9  .]...0.....0....
	defb 08bh,0ffh,0e0h,0e2h,0a9h,025h,0aah,02bh,0aah,035h,0aah,0b5h,0aah,0cfh,0aah,0e7h	; 77e9  .....%.+.5......
	defb 0aah,032h,0abh,0ffh,0e0h,063h,0b0h,074h,0b0h,089h,0b0h,09ah,0b0h,0a4h,0b0h,0b2h	; 77f9  .2...c.t........
	defb 0b0h,0c0h,0b0h,0d3h,0b0h,030h,012h,0f7h,08bh,050h,08ch,030h,007h,0a9h,08ch,0d8h	; 7809  .....0...P.0....
	defb 08ch,030h,004h,005h,08dh,04ch,08dh,030h,00ah,089h,08dh,0b0h,08dh,030h,00ah,0e3h	; 7819  .0...L.0.....0..
	defb 08dh,032h,08eh,030h,00ah,0bdh,08eh,0bdh,08eh,030h,00ah,0feh,08eh,008h,08fh,030h	; 7829  .2.0.....0.....0
	defb 00ah,043h,08fh,047h,08fh,030h,004h,092h,08fh,0cdh,08fh,030h,008h,010h,090h,073h	; 7839  .C.G.0.....0...s
	defb 090h,030h,00ch,0bbh,090h,006h,091h,030h,00ah,048h,091h,059h,091h,030h,004h,06ch	; 7849  .0.....0.H.Y.0.l
	defb 091h,09bh,091h,030h,00ah,0ceh,091h,007h,092h,030h,00eh,05fh,092h,0e2h,092h,030h	; 7859  ...0.....0._...0
	defb 007h,020h,093h,047h,093h,0ffh,0e0h,0f4h,0abh,0f4h,0abh,0f4h,0abh,0f9h,0abh,0fdh	; 7869  . .G............
	defb 0abh,02ah,0ach,02eh,0ach,032h,0ach,0ffh,0e0h,08ch,0ach,08dh,0ach,08eh,0ach,096h	; 7879  .*...2..........
	defb 0ach,0b2h,0ach,0d0h,0ach,0f6h,0ach,00eh,0adh,030h,009h,06ch,093h,08fh,093h,030h	; 7889  .........0.l...0
	defb 007h,0cfh,093h,018h,094h,030h,007h,055h,094h,0b3h,094h,030h,008h,0f2h,094h,00fh	; 7899  .....0.U...0....
	defb 095h,030h,009h,02eh,095h,02fh,095h,030h,007h,030h,095h,053h,095h,0ffh,0e0h,000h	; 78a9  .0.../.0.0.S....
	defb 0a0h,001h,0a0h,017h,0a0h,02fh,0a0h,04bh,0a0h,064h,0a0h,07dh,0a0h,094h,0a0h,0cfh	; 78b9  ...../.K.d.}....
	defb 0e0h,028h,0adh,029h,0adh,02ah,0adh,051h,0adh,075h,0adh,081h,0adh,0ffh,0e0h,0a6h	; 78c9  .(.).*.Q.u......
	defb 0adh,0a7h,0adh,0a8h,0adh,0a9h,0adh,0beh,0adh,0d6h,0adh,0e4h,0adh,0eeh,0adh,030h	; 78d9  ...............0
	defb 010h,090h,0aeh,091h,0aeh,0ffh,0e0h,092h,0aeh,00fh,0afh,03ah,0afh,065h,0afh,093h	; 78e9  ...........:.e..
	defb 0afh,0c3h,0afh,0f3h,0afh,0fbh,0afh,010h,010h,011h,0b1h,044h,07bh,044h,07bh,044h	; 78f9  ...........D{D{D
	defb 07bh,064h,07bh,064h,07bh,084h,07bh,0a4h,07bh,0c4h,07bh,0e4h,07bh,0e4h,07bh,004h	; 7909  {d{d{.{.{.{.{.{.
	defb 07ch,024h,07ch,044h,07ch,064h,07ch,084h,07ch,084h,07ch,084h,07ch,084h,07ch,084h	; 7919  |$|D|d|.|.|.|.|.
	defb 07ch,084h,07ch,0a4h,07ch,0c4h,07ch,0e4h,07ch,004h,07dh,024h,07dh,044h,07dh,064h	; 7929  |.|.|.|.|.}$}D}d
	defb 07dh,064h,07dh,084h,07dh,0a4h,07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh,0c4h	; 7939  }d}.}.}.}.}.}.}.
	defb 07dh,0c4h,07dh,0e4h,07dh,004h,07eh,024h,07eh,044h,07eh,064h,07eh,084h,07eh,084h	; 7949  }.}.}.~$~D~d~.~.
	defb 07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h	; 7959  ~.~.~.~.~.~.~.~.
	defb 07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h	; 7969  ~.~.~.~.~.~.~.~.
	defb 07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,01ch,07ah,01ch,07ah,01ch	; 7979  ~.~.~.~.~.~.z.z.
	defb 07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch	; 7989  z.z.z.z.z.z.z.z.
	defb 07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch	; 7999  z.z.z.z.z.z.z.z.
	defb 07ah,03ch,07ah,05ch,07ah,07ch,07ah,07ch,07ah,07ch,07ah,07ch,07ah,07ch,07ah,09ch	; 79a9  z<z\z|z|z|z|z|z.
	defb 07ah,09ch,07ah,09ch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch	; 79b9  z.z.z.z.z.z.z.z.
	defb 07ah,0bch,07ah,0bch,07ah,0dch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch	; 79c9  z.z.z.z.z.z.z.z.
	defb 07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch	; 79d9  z.z.z.z.z.z.z.z.
	defb 07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,03ch,07ah,05ch	; 79e9  z.z.z.z.z.z.z<z\
	defb 07ah,07ch,07ah,07ch,07ah,07ch,07ah,07ch,07ah,07ch,07ah,09ch,07ah,09ch,07ah,09ch	; 79f9  z|z|z|z|z|z.z.z.
	defb 07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch	; 7a09  z.z.z.z.z.z.z.z.
	defb 07ah,0dch,07ah,080h,0d0h,020h,07fh,040h,000h,0c0h,080h,0d0h,020h,07fh,030h,0d0h	; 7a19  z.z.. .@.... .0.
	defb 080h,0d0h,030h,07fh,030h,0d0h,080h,0b0h,0e0h,018h,0e0h,0b0h,080h,090h,0a0h,0b0h	; 7a29  ..0.0...........
	defb 0a0h,090h,080h,0a0h,090h,0a0h,0ach,0f0h,00ah,016h,000h,090h,000h,020h,040h,060h	; 7a39  ............. @`
	defb 050h,038h,01ch,0f2h,0e2h,0d6h,0d0h,0d0h,0dah,0dch,0e0h,0e2h,0e2h,0e2h,0e0h,0dch	; 7a49  P8..............
	defb 0d8h,0d0h,0b0h,080h,0aah,0c8h,000h,024h,040h,05ch,070h,07fh,06ah,04ah,026h,000h	; 7a59  .......$@\p.jJ&.
	defb 0d0h,0a8h,08ch,080h,0aah,0c8h,000h,024h,040h,05ch,070h,07fh,06ah,04ah,026h,000h	; 7a69  .......$@\p.jJ&.
	defb 0d0h,0a8h,08ch,000h,068h,040h,004h,000h,026h,040h,0f5h,010h,040h,020h,0d0h,0f0h	; 7a79  ....h@..&@..@ ..
	defb 000h,0c0h,080h,0d0h,030h,0c0h,0a0h,0b0h,0c0h,080h,0d0h,0f0h,040h,010h,0c0h,0d4h	; 7a89  ....0.......@...
	defb 000h,0c0h,0e0h,090h,088h,090h,09ch,0b0h,0c0h,0e0h,026h,070h,07ch,070h,056h,040h	; 7a99  ..........&p|pV@
	defb 020h,010h,0fch,0e0h,0fch,010h,024h,040h,054h,072h,07fh,070h,026h,0e0h,0c0h,0b0h	; 7aa9   .....$@Tr.p&...
	defb 09ch,090h,088h,080h,080h,0e8h,018h,038h,066h,078h,07fh,080h,080h,080h,080h,080h	; 7ab9  .......8fx......
	defb 080h,080h,09ch,080h,0dch,080h,020h,0d0h,080h,07fh,080h,0d0h,020h,080h,0dch,080h	; 7ac9  ...... ..... ...
	defb 09ch,080h,088h,044h,07bh,044h,07bh,044h,07bh,064h,07bh,064h,07bh,084h,07bh,0a4h	; 7ad9  ...D{D{D{d{d{.{.
	defb 07bh,0c4h,07bh,0e4h,07bh,0e4h,07bh,004h,07ch,024h,07ch,044h,07ch,064h,07ch,084h	; 7ae9  {.{.{.{.|$|D|d|.
	defb 07ch,084h,07ch,084h,07ch,084h,07ch,084h,07ch,084h,07ch,0a4h,07ch,0c4h,07ch,0e4h	; 7af9  |.|.|.|.|.|.|.|.
	defb 07ch,004h,07dh,024h,07dh,044h,07dh,064h,07dh,064h,07dh,084h,07dh,0a4h,07dh,0c4h	; 7b09  |.}$}D}d}d}.}.}.
	defb 07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh,0e4h,07dh,004h,07eh,024h	; 7b19  }.}.}.}.}.}.}.~$
	defb 07eh,044h,07eh,064h,07eh,084h,07eh,084h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h	; 7b29  ~D~d~.~.~.~.~.~.
	defb 07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,000h,0f8h,0f0h,0e8h,0e0h	; 7b39  ~.~.~.~.~.~.....
	defb 0d8h,0d0h,0c8h,0c0h,0b8h,0b0h,0a8h,0a0h,098h,090h,088h,080h,078h,070h,068h,060h	; 7b49  ............xph`
	defb 058h,050h,048h,040h,038h,030h,028h,020h,018h,010h,008h,000h,04eh,062h,06dh,075h	; 7b59  XPH@80( ....Nbmu
	defb 07ah,07dh,07eh,07fh,07eh,07dh,07ah,075h,06dh,062h,04eh,000h,0b1h,09dh,092h,08ah	; 7b69  z}~.~}zumbN.....
	defb 085h,082h,081h,080h,081h,082h,085h,08ah,092h,09dh,0b1h,000h,019h,031h,047h,05ah	; 7b79  .............1GZ
	defb 06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h,019h,000h,0e7h,0cfh,0b9h,0a6h	; 7b89  ju}.}ujZG1......
	defb 096h,08bh,083h,080h,083h,08bh,096h,0a6h,0b9h,0cfh,0e7h,000h,0f0h,0e0h,0d0h,0c0h	; 7b99  ................
	defb 0b0h,0a0h,090h,080h,090h,0a0h,0b0h,0c0h,0d0h,0e0h,0f0h,000h,010h,020h,030h,040h	; 7ba9  ............. 0@
	defb 050h,060h,070h,07fh,070h,060h,050h,040h,030h,020h,010h,000h,0e0h,0c0h,0a0h,080h	; 7bb9  P`p.p`P@0 ......
	defb 0a0h,0c0h,0e0h,000h,020h,040h,060h,07fh,060h,040h,020h,000h,0e0h,0c0h,0a0h,080h	; 7bc9  .... @`.`@ .....
	defb 0a0h,0c0h,0e0h,000h,020h,040h,060h,07fh,060h,040h,020h,000h,019h,031h,047h,05ah	; 7bd9  .... @`.`@ ..1GZ
	defb 06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h,019h,000h,0e0h,0c0h,0a0h,080h	; 7be9  ju}.}ujZG1......
	defb 0a0h,0c0h,0e0h,000h,020h,040h,060h,07fh,060h,040h,020h,000h,019h,031h,047h,05ah	; 7bf9  .... @`.`@ ..1GZ
	defb 06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h,019h,080h,090h,0a0h,0b0h,0c0h	; 7c09  ju}.}ujZG1......
	defb 0d0h,0e0h,0f0h,000h,010h,020h,030h,040h,050h,060h,070h,000h,019h,031h,047h,05ah	; 7c19  ..... 0@P`p..1GZ
	defb 06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h,019h,080h,0a0h,0c0h,0e0h,000h	; 7c29  ju}.}ujZG1......
	defb 020h,040h,060h,080h,0a0h,0c0h,0e0h,000h,020h,040h,060h,001h,02ah,040h,050h,05ch	; 7c39   @`..... @`.*@P\
	defb 068h,070h,078h,07fh,078h,070h,068h,05ch,050h,040h,02ah,0ffh,0d6h,0c0h,0b0h,0a4h	; 7c49  hpx.xph\P@*.....
	defb 098h,090h,088h,081h,088h,090h,098h,0a4h,0b0h,0c0h,0d6h,000h,040h,07fh,040h,001h	; 7c59  ............@.@.
	defb 0c0h,081h,0c0h,001h,040h,07fh,040h,001h,0c0h,001h,040h,001h,0e0h,001h,020h,001h	; 7c69  ....@.@...@... .
	defb 0f0h,001h,010h,001h,0ffh,0ffh,0ffh,0ffh,040h,040h,040h,000h,0f0h,0e0h,0d0h,0c0h	; 7c79  ........@@@.....
	defb 0b0h,0a0h,090h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h,080h	; 7c89  ................
	defb 080h,080h,080h,07fh,070h,060h,050h,040h,030h,020h,010h,000h,030h,050h,060h,070h	; 7c99  ....p`P@0 ..0P`p
	defb 060h,050h,030h,000h,0d0h,0b0h,0a0h,090h,0a0h,0b0h,0d0h,000h,040h,060h,070h,060h	; 7ca9  `P0.........@`p`
	defb 040h,000h,0c0h,0a0h,090h,0a0h,0c0h,000h,070h,000h,090h,030h,050h,050h,030h,000h	; 7cb9  @.......p..0PP0.
	defb 000h,010h,040h,060h,070h,060h,030h,0f0h,0e0h,0e0h,000h,020h,020h,010h,0c0h,0a0h	; 7cc9  ..@`p`0....  ...
	defb 090h,0a0h,0c0h,000h,000h,0d0h,0b0h,0b0h,0d0h,000h,000h,0a0h,090h,090h,0a0h,0a0h	; 7cd9  ................
	defb 0b0h,0b0h,0b0h,0c0h,0c0h,0d0h,0d0h,0e0h,0e0h,0f0h,0f0h,000h,000h,010h,010h,020h	; 7ce9  ...............
	defb 020h,030h,030h,040h,040h,050h,050h,060h,060h,060h,050h,000h,07fh,000h,080h,0a0h	; 7cf9   00@@PP```P.....
	defb 0c0h,0d8h,0f0h,008h,020h,030h,040h,050h,060h,070h,078h,07ch,07fh,07ch,078h,070h	; 7d09  .... 0@P`px|.|xp
	defb 060h,050h,040h,030h,020h,008h,0f0h,0d8h,0c0h,0a0h,080h,07fh,080h,07fh,080h,07fh	; 7d19  `P@0 ...........
	defb 080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh	; 7d29  ................
	defb 080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh	; 7d39  ................
	defb 080h,07fh,080h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 7d49  ................
	defb 000h,000h,000h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,000h,000h,000h,000h,000h	; 7d59  ................
	defb 000h,000h,000h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh	; 7d69  ................
	defb 080h,07fh,080h,000h,000h,000h,000h,000h,000h,000h,000h,080h,08eh,0a0h,0c0h,0e0h	; 7d79  ................
	defb 000h,020h,03fh,03eh,03ch,03ah,037h,031h,029h,020h,01ch,010h,000h,0e6h,0c0h,0d0h	; 7d89  . ?><:71) ......
	defb 000h,020h,03fh,010h,0e0h,080h,0c0h,000h,020h,000h,090h,000h,070h,050h,020h,050h	; 7d99  . ?..... ...pP P
	defb 070h,030h,000h,050h,07fh,060h,010h,030h,040h,000h,0b0h,010h,060h,000h,0e0h,0f0h	; 7da9  p0.P.`.0@...`...
	defb 000h,0b0h,090h,0c0h,010h,0e0h,0a0h,0c0h,0f0h,0c0h,0a0h,080h,0b0h,0c0h,010h,01ah	; 7db9  ................
	defb 02ah,02ch,01ah,000h,0e0h,0d0h,0e0h,022h,053h,070h,075h,070h,031h,0eah,080h,088h	; 7dc9  *,....."Spup1...
	defb 08ah,08ch,08eh,000h,07fh,075h,073h,062h,000h,0c0h,090h,000h,020h,030h,040h,050h	; 7dd9  .....usb.... 0@P
	defb 058h,060h,068h,070h,068h,060h,058h,050h,040h,030h,020h,000h,0e0h,0d0h,0c0h,0b0h	; 7de9  X`hph`XP@0 .....
	defb 0a0h,098h,090h,088h,090h,098h,0a0h,0b0h,0c0h,0d0h,0e0h,000h,000h,000h,000h,000h	; 7df9  ................
	defb 070h,070h,000h,000h,080h,080h,080h,000h,000h,000h,000h,070h,070h,070h,000h,080h	; 7e09  pp.........ppp..
	defb 080h,000h,000h,000h,000h,070h,070h,000h,000h,080h,080h,000h,000h,000h,080h,000h	; 7e19  .....pp.........
	defb 070h,070h,070h,000h,000h,000h,080h,000h,000h,000h,080h,080h,080h,080h,000h,080h	; 7e29  ppp.............
	defb 000h,000h,000h,000h,080h,080h,080h,000h,080h,080h,080h,000h,030h,0f0h,030h,040h	; 7e39  ............0.0@
	defb 050h,060h,060h,070h,079h,070h,078h,040h,000h,000h,00eh,070h,083h,060h,050h,000h	; 7e49  P``pypx@...p.`P.
	defb 000h,000h,026h,074h,082h,084h,065h,064h,0e4h,093h,084h,070h,070h,070h,070h,070h	; 7e59  ..&t..ed...ppppp
	defb 070h,070h,070h,080h,080h,080h,080h,080h,080h,080h,080h,070h,070h,070h,080h,080h	; 7e69  ppp........ppp..
	defb 080h,070h,070h,070h,070h,080h,080h,080h,080h,080h,080h,070h,070h,060h,080h,090h	; 7e79  .pppp......pp`..
	defb 090h,080h,080h,040h,040h,030h,080h,090h,090h,080h,080h,020h,020h,010h,080h,090h	; 7e89  ...@@0.....  ...
	defb 090h,080h,080h,000h,000h,0f0h,080h,090h,090h,080h,080h,0feh,001h,0f8h,015h,0eah	; 7e99  ................
	defb 00fh,0e9h,001h,0d1h,0ebh,001h,088h,004h,074h,044h,074h,0ebh,001h,023h,0d0h,009h	; 7ea9  ........tDt..#..
	defb 0ffh,0feh,002h,0e0h,002h,0e2h,001h,031h,000h,030h,0f0h,030h,0e0h,030h,0d0h,030h	; 7eb9  .......1.0.0.0.0
	defb 0c0h,030h,0b0h,030h,0a0h,030h,090h,030h,080h,030h,070h,030h,0c0h,030h,0b0h,030h	; 7ec9  .0.0.0.0.0p0.0.0
	defb 0a0h,030h,090h,030h,080h,030h,070h,020h,0c0h,020h,0b0h,020h,0a0h,020h,090h,020h	; 7ed9  .0.0.0p . . . .
	defb 080h,020h,070h,010h,0c0h,010h,0b0h,010h,0a0h,010h,090h,0ffh,0feh,002h,0f8h,02ah	; 7ee9  . p............*
	defb 0e2h,001h,031h,000h,030h,0f0h,030h,0e0h,030h,0d0h,030h,0c0h,030h,0b0h,030h,0a0h	; 7ef9  ..1.0.0.0.0.0.0.
	defb 030h,090h,030h,080h,030h,070h,020h,0c0h,020h,0b0h,020h,0a0h,020h,090h,020h,080h	; 7f09  0.0.0p . . . . .
	defb 020h,070h,010h,0c0h,010h,0b0h,010h,0a0h,010h,090h,010h,080h,010h,070h,000h,0c0h	; 7f19   p...........p..
	defb 000h,0b0h,000h,0a0h,000h,090h,000h,080h,000h,070h,0ffh,0feh,002h,0e0h,002h,0eeh	; 7f29  .........p......
	defb 001h,0e2h,001h,040h,0d0h,040h,0c0h,040h,0b0h,040h,0a0h,040h,090h,040h,080h,040h	; 7f39  ...@.@.@.@.@.@.@
	defb 070h,040h,060h,040h,050h,040h,040h,030h,0c0h,030h,0b0h,030h,0a0h,030h,090h,030h	; 7f49  p@`@P@@0.0.0.0.0
	defb 080h,030h,070h,030h,060h,030h,050h,030h,040h,020h,0c0h,020h,0b0h,020h,0a0h,020h	; 7f59  .0p0`0P0@ . . .
	defb 090h,020h,080h,020h,070h,020h,060h,020h,050h,020h,040h,010h,0c0h,010h,0b0h,010h	; 7f69  . . p ` P @.....
	defb 0a0h,010h,090h,010h,080h,010h,070h,0ffh,0feh,002h,0f8h,00dh,0e2h,001h,060h,0d0h	; 7f79  ......p.......`.
	defb 060h,0c0h,060h,0b0h,060h,0a0h,060h,090h,060h,080h,060h,070h,060h,060h,060h,050h	; 7f89  `.`.`.`.`.`p```P
	defb 060h,040h,040h,0c0h,040h,0b0h,040h,0a0h,040h,090h,040h,080h,040h,070h,040h,060h	; 7f99  `@@.@.@.@.@.@p@`
	defb 040h,050h,040h,040h,020h,0c0h,020h,0b0h,020h,0a0h,020h,090h,020h,080h,020h,070h	; 7fa9  @P@@ . . . . . p
	defb 020h,060h,020h,050h,020h,040h,000h,0c0h,000h,0b0h,000h,0a0h,000h,090h,000h,080h	; 7fb9   ` P @..........
	defb 000h,070h,000h,060h,000h,050h,000h,040h,0ffh,0feh,002h,0e2h,001h,050h,050h,050h	; 7fc9  .p.`.P.@.....PPP
	defb 054h,0fbh,008h,0d6h,07fh,040h,050h,040h,054h,0fbh,002h,0deh,07fh,030h,050h,030h	; 7fd9  T....@P@T....0P0
	defb 054h,0fbh,002h,0e6h,07fh,020h,050h,020h,054h,0fbh,00ah,0eeh,07fh,0ffh,0feh,002h	; 7fe9  T.... P T.......
	defb 0f8h,015h,0e2h,001h,060h,050h,060h	; 7ff9

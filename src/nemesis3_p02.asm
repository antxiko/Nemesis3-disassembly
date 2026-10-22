; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 02 (se ejecuta en 0x8000)
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
l8728h:	equ 0x08728
l9941h:	equ 0x09941

; ======================================================================
; CODIGO 0x8000..0x847b  (1147 bytes)
; ======================================================================


L_8000:
	ld (ix+000h),000h		;8000
	ret			;8004
L_8005:
	ld a,(0e44fh)		;8005
	or a			;8008
	ret nz			;8009
	ld ix,0e4b2h		;800a
	ld iy,0ec80h		;800e
	ld b,004h		;8012
L_8014:
	push bc			;8014
	call L_8025		;8015
	ld bc,00008h		;8018
	add ix,bc		;801b
	ld c,010h		;801d
	add iy,bc		;801f
	pop bc			;8021
	djnz L_8014		;8022
	ret			;8024
L_8025:
	ld a,(ix+000h)		;8025
	or a			;8028
	ret z			;8029
	ld l,(ix+002h)		;802a
	ld h,(ix+003h)		;802d
	call 04a46h		;8030
	ld (ix+004h),l		;8033
	ld (ix+005h),h		;8036
	push iy		;8039
	pop de			;803b
	ld a,004h		;803c
L_803E:
	ld bc,00004h		;803e
	ldir		;8041
	ld c,03ch		;8043
	add hl,bc			;8045
	dec a			;8046
	jr nz,L_803E		;8047
	ret			;8049
L_804A:
	ld a,(0e44fh)		;804a
	or a			;804d
	ret nz			;804e
	ld ix,0e4b2h		;804f
	ld iy,0ec80h		;8053
	ld b,004h		;8057
L_8059:
	push bc			;8059
	call L_806A		;805a
	ld bc,00008h		;805d
	add ix,bc		;8060
	ld c,010h		;8062
	add iy,bc		;8064
	pop bc			;8066
	djnz L_8059		;8067
	ret			;8069
L_806A:
	ld a,(ix+000h)		;806a
	or a			;806d
	ret z			;806e
	ld e,(ix+004h)		;806f
	ld d,(ix+005h)		;8072
	push iy		;8075
	pop hl			;8077
	ld a,004h		;8078
L_807A:
	ld bc,00004h		;807a
	ldir		;807d
	ld c,03ch		;807f
	ex de,hl			;8081
	add hl,bc			;8082
	ex de,hl			;8083
	dec a			;8084
	jr nz,L_807A		;8085
	ret			;8087
L_8088:
	ld a,(0e361h)		;8088
	cp 004h		;808b
	ret z			;808d
	call L_80B1		;808e
	jr z,L_8088		;8091
	ret c			;8093
	ld hl,0e7f8h		;8094
	inc (hl)			;8097
	jp L_8088		;8098
L_809B:
	ld a,(0e361h)		;809b
	cp 004h		;809e
	ret z			;80a0
	ld a,(0e420h)		;80a1
	or a			;80a4
	ret z			;80a5
	ld a,0f8h		;80a6
	ld (0e428h),a		;80a8
L_80AB:
	call L_80B1		;80ab
	jr z,L_80AB		;80ae
	ret			;80b0
L_80B1:
	call L_80ED		;80b1
	ret nz			;80b4
	ld hl,0e7f8h		;80b5
	inc (hl)			;80b8
	call L_80BE		;80b9
	xor a			;80bc
	ret			;80bd
L_80BE:
	ld a,c			;80be
	and 00fh		;80bf
	ld hl,0e381h		;80c1
	cp (hl)			;80c4
	ret nz			;80c5
	ld a,(0e428h)		;80c6
	ld d,a			;80c9
	ld e,b			;80ca
	ld a,c			;80cb
	rra			;80cc
	rra			;80cd
	rra			;80ce
	rra			;80cf
	and 00fh		;80d0
	call L_80D6		;80d2
	ret			;80d5
L_80D6:
	ld c,a			;80d6
	ld hl,0e38bh		;80d7
	add a,l			;80da
	ld l,a			;80db
	ld a,(hl)			;80dc
	or a			;80dd
	ret nz			;80de
	ld hl,0e7e0h		;80df
	ld a,(hl)			;80e2
	or a			;80e3
	ret nz			;80e4
	ld (hl),c			;80e5
	inc l			;80e6
	ld (hl),e			;80e7
	inc l			;80e8
	ld (hl),d			;80e9
	inc l			;80ea
	ld (hl),b			;80eb
	ret			;80ec
L_80ED:
	call 041efh		;80ed
	ld a,(0e361h)		;80f0
	ld hl,0a3c8h		;80f3
	call 04a5ah		;80f6
	ld a,(0e7f8h)		;80f9
	add a,a			;80fc
	add a,a			;80fd
	call 04089h		;80fe
	ld e,(hl)			;8101
	inc hl			;8102
	ld d,(hl)			;8103
	inc hl			;8104
	ld c,(hl)			;8105
	inc hl			;8106
	ld b,(hl)			;8107
	call 04148h		;8108
	ld hl,(0e363h)		;810b
	rst 20h			;810e
	ret			;810f
L_8110:
	ld a,(0e361h)		;8110
	cp 004h		;8113
	ret z			;8115
	ld a,(0e420h)		;8116
	or a			;8119
	ret z			;811a
	ld hl,0e7e0h		;811b
	ld a,(hl)			;811e
	or a			;811f
	ret z			;8120
	inc l			;8121
	inc l			;8122
	ld a,(hl)			;8123
	sub 008h		;8124
	ld (hl),a			;8126
	ret nc			;8127
	dec l			;8128
	dec l			;8129
	ld (hl),000h		;812a
	ret			;812c
L_812D:
	ld a,(0e600h)		;812d
	inc a			;8130
	ret z			;8131
	ld a,(0e7e0h)		;8132
	or a			;8135
	ret z			;8136
	ld de,(0e7e1h)		;8137
	ld a,(0e604h)		;813b
	add a,006h		;813e
	sub e			;8140
	add a,004h		;8141
	cp 009h		;8143
	ret nc			;8145
	ld a,(0e606h)		;8146
	add a,005h		;8149
	sub d			;814b
	add a,004h		;814c
	cp 00dh		;814e
	ret nc			;8150
	ld a,(0e7e0h)		;8151
	ld (0e31eh),a		;8154
	ld hl,0e38bh		;8157
	call 04089h		;815a
	ld (hl),001h		;815d
	xor a			;815f
	ld h,a			;8160
	ld l,a			;8161
	ld (0e7e0h),a		;8162
	ld (0e7e4h),hl		;8165
	ret			;8168
L_8169:
	ld a,(0e7e0h)		;8169
	or a			;816c
	ret z			;816d
	ld hl,(0e7e1h)		;816e
	call 04a46h		;8171
	ld de,0e7f6h		;8174
	ldi		;8177
	ret			;8179
L_817A:
	ld a,(0e7e0h)		;817a
	or a			;817d
	ret z			;817e
	ld hl,(0e7e1h)		;817f
	call 04a46h		;8182
	ld de,0e7f6h		;8185
	ex de,hl			;8188
	ldi		;8189
	ret			;818b
L_818C:
	ld a,(0e39ch)		;818c
	or a			;818f
	jr nz,L_8197		;8190
	ld a,(0e397h)		;8192
	or a			;8195
	ret z			;8196
L_8197:
	ld a,(0e7e0h)		;8197
	or a			;819a
	ret z			;819b
	ld hl,(0e7e1h)		;819c
	call 04a46h		;819f
	ld a,(0e303h)		;81a2
	and 003h		;81a5
	ret nz			;81a7
	ld (hl),035h		;81a8
	ret			;81aa
L_81AB:
	ld a,(0e4b1h)		;81ab
	and a			;81ae
	ret z			;81af
	ld b,a			;81b0
	ld ix,0ed00h		;81b1
L_81B5:
	push bc			;81b5
	call L_81C2		;81b6
	ld bc,00020h		;81b9
	add ix,bc		;81bc
	pop bc			;81be
	djnz L_81B5		;81bf
	ret			;81c1
L_81C2:
	ld a,(ix+000h)		;81c2
	or a			;81c5
	ret z			;81c6
	cp 006h		;81c7
	jp z,0a4d7h		;81c9
	ld a,(ix+009h)		;81cc
	or a			;81cf
	ret z			;81d0
	ld a,(ix+00ah)		;81d1
	or a			;81d4
	ret z			;81d5
	ld a,(ix+012h)		;81d6
	bit 1,a		;81d9
	ret z			;81db
	rla			;81dc
	jr c,L_81E4		;81dd
	ld a,(ix+006h)		;81df
	and a			;81e2
	ret z			;81e3
L_81E4:
	call L_8281		;81e4
	ld de,00040h		;81e7
	ld c,(ix+009h)		;81ea
	xor a			;81ed
L_81EE:
	ld b,(ix+00ah)		;81ee
	push hl			;81f1
L_81F2:
	ld (hl),a			;81f2
	inc hl			;81f3
	djnz L_81F2		;81f4
	pop hl			;81f6
	add hl,de			;81f7
	dec c			;81f8
	jr nz,L_81EE		;81f9
	ret			;81fb
L_81FC:
	ld a,(0e4b1h)		;81fc
	and a			;81ff
	ret z			;8200
	ld b,a			;8201
	ld ix,0ed00h		;8202
L_8206:
	push bc			;8206
	call L_8213		;8207
	ld bc,00020h		;820a
	add ix,bc		;820d
	pop bc			;820f
	djnz L_8206		;8210
	ret			;8212
L_8213:
	ld a,(ix+000h)		;8213
	and a			;8216
	ret z			;8217
	ld a,(ix+012h)		;8218
	rra			;821b
	ret nc			;821c
	bit 2,a		;821d
	jr nz,L_8264		;821f
L_8221:
	ld a,(ix+007h)		;8221
	ld (0e34fh),a		;8224
	ld l,a			;8227
	ld h,000h		;8228
	add hl,hl			;822a
	ld de,0b834h		;822b
	add hl,de			;822e
	call 0417bh		;822f
	ld e,(hl)			;8232
	inc hl			;8233
	ld d,(hl)			;8234
	call L_8281		;8235
	ex de,hl			;8238
	ld a,(ix+009h)		;8239
L_823C:
	push de			;823c
	ld c,(ix+00ah)		;823d
	ld b,000h		;8240
	ldir		;8242
	pop de			;8244
	ld c,040h		;8245
	ex de,hl			;8247
	add hl,bc			;8248
	ex de,hl			;8249
	dec a			;824a
	jr nz,L_823C		;824b
	call 04148h		;824d
	ld a,(ix+000h)		;8250
	cp 006h		;8253
	jp z,0a36bh		;8255
	cp 005h		;8258
	ret nz			;825a
	call 041efh		;825b
	call 0ae73h		;825e
	jp 04148h		;8261
L_8264:
	ld a,(ix+000h)		;8264
	cp 02fh		;8267
	jp z,L_8A9C		;8269
	cp 01eh		;826c
	jp z,L_8299		;826e
	cp 02eh		;8271
	jp z,L_889C		;8273
	cp 00dh		;8276
	jp z,0bd2ah		;8278
	cp 030h		;827b
	jp z,0bb5bh		;827d
	ret			;8280
L_8281:
	ld l,(ix+004h)		;8281
	ld h,(ix+006h)		;8284
L_8287:
	call 04a46h		;8287
	bit 6,(ix+012h)		;828a
	ret z			;828e
	ld bc,0ffe0h		;828f
	add hl,bc			;8292
	ret			;8293
L_8294:
	ld (ix+000h),000h		;8294
	ret			;8298
L_8299:
	call 0417bh		;8299
	ld l,(ix+007h)		;829c
	ld b,000h		;829f
	call L_82BB		;82a1
	bit 0,(ix+00bh)		;82a4
	ld b,008h		;82a8
	jr z,L_82AE		;82aa
	ld b,0f8h		;82ac
L_82AE:
	ld a,(ix+007h)		;82ae
	add a,006h		;82b1
	ld l,a			;82b3
	call L_82BB		;82b4
	call 04148h		;82b7
	ret			;82ba
L_82BB:
	ld h,000h		;82bb
	add hl,hl			;82bd
	ld de,0b834h		;82be
	add hl,de			;82c1
	ld a,(hl)			;82c2
	inc hl			;82c3
	ld h,(hl)			;82c4
	ld l,a			;82c5
	ld a,(ix+01ch)		;82c6
	call 04089h		;82c9
	ex de,hl			;82cc
	ld h,(ix+006h)		;82cd
	ld a,(ix+004h)		;82d0
	add a,b			;82d3
	ld l,a			;82d4
	call 04a46h		;82d5
	ex de,hl			;82d8
	ld c,(ix+00ah)		;82d9
	ld b,000h		;82dc
	ldir		;82de
	ret			;82e0
L_82E1:
	ld de,0cf00h		;82e1
	ld ix,0e800h		;82e4
	ld b,00ch		;82e8
L_82EA:
	push bc			;82ea
	call L_82F7		;82eb
	ld bc,00040h		;82ee
	add ix,bc		;82f1
	pop bc			;82f3
	djnz L_82EA		;82f4
	ret			;82f6
L_82F7:
	ld a,(ix+000h)		;82f7
	and a			;82fa
	ret z			;82fb
	bit 6,(ix+00bh)		;82fc
	ret z			;8300
	ld h,(ix+006h)		;8301
	ld l,(ix+004h)		;8304
	call 04a46h		;8307
	ld (ix+011h),l		;830a
	ld (ix+012h),h		;830d
	ld b,(ix+013h)		;8310
	ld c,(ix+014h)		;8313
L_8316:
	push bc			;8316
	push hl			;8317
	ld b,000h		;8318
	ldir		;831a
	pop hl			;831c
	ld bc,00040h		;831d
	add hl,bc			;8320
	pop bc			;8321
	djnz L_8316		;8322
	ret			;8324
L_8325:
	call 04173h		;8325
	call L_8331		;8328
	call L_835A		;832b
	jp 04148h		;832e
L_8331:
	ld a,(0e303h)		;8331
	and 007h		;8334
	ret nz			;8336
	ld hl,01ac1h		;8337
	call 04ab6h		;833a
	exx			;833d
	ld hl,0e53ah		;833e
	ld a,(hl)			;8341
	inc a			;8342
	cp 004h		;8343
	jr c,L_8348		;8345
	xor a			;8347
L_8348:
	ld (hl),a			;8348
	ld b,a			;8349
	add a,a			;834a
	add a,b			;834b
	ld hl,0bd5bh		;834c
	call 04089h		;834f
	ld b,003h		;8352
L_8354:
	outi		;8354
	jp nz,L_8354		;8356
	ret			;8359
L_835A:
	ld a,(0e361h)		;835a
	cp 004h		;835d
	ret z			;835f
	ld a,(0e440h)		;8360
	or a			;8363
	ret nz			;8364
	ld a,(0e518h)		;8365
	or a			;8368
	ret nz			;8369
	ld a,(0e361h)		;836a
	ld hl,0b1f5h		;836d
	call 04a5ah		;8370
L_8373:
	inc hl			;8373
	inc hl			;8374
	ld e,(hl)			;8375
	inc hl			;8376
	ld d,(hl)			;8377
	push hl			;8378
	ld hl,(0e363h)		;8379
	rst 20h			;837c
	pop hl			;837d
	jr c,L_8384		;837e
	inc hl			;8380
	jp L_8373		;8381
L_8384:
	dec hl			;8384
	dec hl			;8385
	dec hl			;8386
	ld e,(hl)			;8387
	inc hl			;8388
	ld d,(hl)			;8389
	ex de,hl			;838a
	ld a,(hl)			;838b
	or a			;838c
	ret z			;838d
	exx			;838e
	ld hl,0e538h		;838f
	inc (hl)			;8392
	cp (hl)			;8393
	exx			;8394
	ret nc			;8395
	exx			;8396
	ld (hl),000h		;8397
	exx			;8399
	inc hl			;839a
	ld a,(0e539h)		;839b
	inc a			;839e
	cp (hl)			;839f
	jr c,L_83A3		;83a0
	xor a			;83a2
L_83A3:
	ld (0e539h),a		;83a3
	inc hl			;83a6
	call 04a5ah		;83a7
L_83AA:
	ld a,(hl)			;83aa
	or a			;83ab
	ret z			;83ac
	push hl			;83ad
	call L_83B9		;83ae
	pop hl			;83b1
	ld bc,0000ah		;83b2
	add hl,bc			;83b5
	jp L_83AA		;83b6
L_83B9:
	ld a,(hl)			;83b9
	inc hl			;83ba
	ld c,(hl)			;83bb
	ex de,hl			;83bc
	ld l,a			;83bd
	bit 3,c		;83be
	ld h,006h		;83c0
	jr z,L_83C6		;83c2
	ld h,002h		;83c4
L_83C6:
	add hl,hl			;83c6
	add hl,hl			;83c7
	add hl,hl			;83c8
	ld a,(00007h)		;83c9
	ld c,a			;83cc
	ld a,(de)			;83cd
	inc de			;83ce
	exx			;83cf
	ld b,003h		;83d0
	ld e,a			;83d2
L_83D3:
	rr e		;83d3
	exx			;83d5
	jr nc,L_83E7		;83d6
	call 00053h		;83d8   ; BIOS SETWRT - Enables VDP to write
	push de			;83db
	push hl			;83dc
	ex de,hl			;83dd
	ld b,008h		;83de
L_83E0:
	outi		;83e0
	jp nz,L_83E0		;83e2
	pop hl			;83e5
	pop de			;83e6
L_83E7:
	ld a,h			;83e7
	sub 008h		;83e8
	ld h,a			;83ea
	exx			;83eb
	djnz L_83D3		;83ec
	ret			;83ee
L_83EF:
	call 057eah		;83ef
	call 05718h		;83f2
	ld hl,00000h		;83f5
	ld (0e30eh),hl		;83f8
	ld de,0a737h		;83fb
	call 04b36h		;83fe
	ld hl,00a00h		;8401
	ld bc,003f0h		;8404
	xor a			;8407
	call 00056h		;8408   ; BIOS FILVRM - Fills VRAM with value
	ld hl,03907h		;840b
	ld a,040h		;840e
	ld c,006h		;8410
	ld de,0000bh		;8412
L_8415:
	ld b,015h		;8415
L_8417:
	call 0004dh		;8417   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;841a
	inc a			;841b
	djnz L_8417		;841c
	add hl,de			;841e
	dec c			;841f
	jr nz,L_8415		;8420
	ret			;8422
L_8423:
	ld a,(0e30fh)		;8423
	cp 006h		;8426
	ld c,a			;8428
	ret z			;8429
	ld a,(0e30eh)		;842a
	and 007h		;842d
	ld a,c			;842f
	push af			;8430
	call z,L_846F		;8431
	pop af			;8434
	ld hl,08487h		;8435
	call 04a5ah		;8438
	ex de,hl			;843b
	ld hl,0e30eh		;843c
	ld a,(hl)			;843f
	and 007h		;8440
	ld c,a			;8442
	cp 007h		;8443
	jr nz,L_8449		;8445
	inc hl			;8447
	inc (hl)			;8448
L_8449:
	inc a			;8449
	and 007h		;844a
	ld (0e30eh),a		;844c
	ld a,c			;844f
	call 0408eh		;8450
	ld a,c			;8453
	ld hl,0c400h		;8454
	call 04089h		;8457
	ex de,hl			;845a
	ld b,015h		;845b
L_845D:
	ld a,(de)			;845d
	call 0004dh		;845e   ; BIOS WRTVRM - Writes data in VRAM
	ld a,008h		;8461
	call 0408eh		;8463
	ld a,008h		;8466
	call 04089h		;8468
	djnz L_845D		;846b
	inc b			;846d
	ret			;846e
L_846F:
	ld hl,0847bh		;846f
	call 04a5ah		;8472
	ld de,0c400h		;8475
	jp 055adh		;8478

; ----------------------------------------------------------------------
; DATOS sin identificar  0x847b..0x8493  (24 bytes)
DATA_847B:
	defb 0b6h,0a8h,0bbh,0a8h,0c0h,0a8h,0c7h,0a8h,0ceh,0a8h,0d3h,0a8h,000h,00ah,0a8h,00ah	; 847b  ................
	defb 050h,00bh,0f8h,00bh,0a0h,00ch,048h,00dh	; 848b  P.....H.

; ======================================================================
; CODIGO 0x8493..0x863f  (428 bytes)
; ======================================================================


L_8493:
	ld hl,0cf00h		;8493
	ld ix,0e800h		;8496
	ld b,00ch		;849a
L_849C:
	push bc			;849c
	call L_84A9		;849d
	ld bc,00040h		;84a0
	add ix,bc		;84a3
	pop bc			;84a5
	djnz L_849C		;84a6
	ret			;84a8
L_84A9:
	ld a,(ix+000h)		;84a9
	and a			;84ac
	ret z			;84ad
	cp 035h		;84ae
	ret z			;84b0
	cp 038h		;84b1
	jr z,L_8502		;84b3
	cp 039h		;84b5
	jr z,L_8502		;84b7
	cp 03bh		;84b9
	jr z,L_8502		;84bb
	cp 049h		;84bd
	jp z,07a44h		;84bf
	bit 6,(ix+00bh)		;84c2
	ret z			;84c6
	ld e,(ix+011h)		;84c7
	ld d,(ix+012h)		;84ca
	ld b,(ix+013h)		;84cd
	ld c,(ix+014h)		;84d0
	ld a,(0e440h)		;84d3
	cp 00dh		;84d6
	jr z,L_84EC		;84d8
L_84DA:
	push bc			;84da
	push de			;84db
	ld b,000h		;84dc
	ldir		;84de
	pop de			;84e0
	ld a,040h		;84e1
	add a,e			;84e3
	ld e,a			;84e4
	jr nc,L_84E8		;84e5
	inc d			;84e7
L_84E8:
	pop bc			;84e8
	djnz L_84DA		;84e9
	ret			;84eb
L_84EC:
	ld a,b			;84ec
	ld b,c			;84ed
	ld c,a			;84ee
	ld h,d			;84ef
	ld l,e			;84f0
L_84F1:
	push bc			;84f1
	push hl			;84f2
L_84F3:
	ld (hl),000h		;84f3
	inc hl			;84f5
	djnz L_84F3		;84f6
	pop hl			;84f8
	ld de,00040h		;84f9
	add hl,de			;84fc
	pop bc			;84fd
	dec c			;84fe
	jr nz,L_84F1		;84ff
	ret			;8501
L_8502:
	push hl			;8502
	call 04163h		;8503
	call 0a27fh		;8506
	call 04148h		;8509
	pop hl			;850c
	ret			;850d
L_850E:
	ld ix,0eb00h		;850e
	ld b,00ah		;8512
L_8514:
	ld a,(ix+000h)		;8514
	and a			;8517
	jr z,L_852A		;8518
	call 0758fh		;851a
	jr nc,L_8526		;851d
	ld a,(ix+006h)		;851f
	cp 0f0h		;8522
	jr c,L_852A		;8524
L_8526:
	ld (ix+000h),000h		;8526
L_852A:
	ld de,00010h		;852a
	add ix,de		;852d
	djnz L_8514		;852f
	ret			;8531
L_8532:
	ld ix,0eb00h		;8532
	ld b,00ah		;8536
L_8538:
	ld a,(ix+000h)		;8538
	and a			;853b
	jr z,L_8547		;853c
	call L_854F		;853e
	jr nc,L_8547		;8541
	ld (ix+000h),000h		;8543
L_8547:
	ld de,00010h		;8547
	add ix,de		;854a
	djnz L_8538		;854c
	ret			;854e
L_854F:
	ld l,(ix+004h)		;854f
	ld h,(ix+006h)		;8552
	call 04a46h		;8555
	ld a,(hl)			;8558
	ld a,(0e405h)		;8559
	cp (hl)			;855c
	ret			;855d
L_855E:
	ld a,e			;855e
	add a,008h		;855f
	ld e,a			;8561
	ld a,(0e389h)		;8562
	add a,a			;8565
	add a,050h		;8566
	cp 060h		;8568
	jr c,L_856E		;856a
	ld a,060h		;856c
L_856E:
	ld (0e46eh),a		;856e
	push de			;8571
	call 0639ah		;8572
	pop de			;8575
	ld a,(0e479h)		;8576
	and a			;8579
	ret nz			;857a
	ld a,(0e464h)		;857b
	and a			;857e
	ret nz			;857f
L_8580:
	ld hl,0eb00h		;8580
	ld b,00ah		;8583
L_8585:
	ld a,(hl)			;8585
	and a			;8586
	jr z,L_8593		;8587
	ld a,010h		;8589
	add a,l			;858b
	ld l,a			;858c
	jr nc,L_8590		;858d
	inc h			;858f
L_8590:
	djnz L_8585		;8590
	ret			;8592
L_8593:
	ld a,001h		;8593
	ld (0e407h),a		;8595
	ld (hl),a			;8598
	inc l			;8599
	inc l			;859a
	inc l			;859b
	xor a			;859c
	ld (hl),a			;859d
	inc l			;859e
	ld (hl),e			;859f
	inc l			;85a0
	ld (hl),a			;85a1
	inc l			;85a2
	ld (hl),d			;85a3
	inc l			;85a4
	ld de,(0e472h)		;85a5
	ld (hl),e			;85a9
	inc l			;85aa
	ld (hl),d			;85ab
	ld de,(0e474h)		;85ac
	inc l			;85b0
	ld (hl),e			;85b1
	inc l			;85b2
	ld (hl),d			;85b3
	inc l			;85b4
	ld (hl),058h		;85b5
	inc l			;85b7
	ld (hl),009h		;85b8
	ret			;85ba
L_85BB:
	ld a,(0e600h)		;85bb
	inc a			;85be
	ret z			;85bf
	ld a,(0e361h)		;85c0
	cp 003h		;85c3
	ret nz			;85c5
	ld a,(0e440h)		;85c6
	or a			;85c9
	ret nz			;85ca
	ld hl,(0e363h)		;85cb
	ld de,00180h		;85ce
	or a			;85d1
	sbc hl,de		;85d2
	ret c			;85d4
	ld a,(0e600h)		;85d5
	inc a			;85d8
	ret z			;85d9
	ld a,(0e604h)		;85da
	add a,004h		;85dd
	ld e,a			;85df
	ld a,(0e606h)		;85e0
	add a,002h		;85e3
	ld d,a			;85e5
	ld hl,00806h		;85e6
	call L_85F4		;85e9
	ret nc			;85ec
	ld hl,00001h		;85ed
	ld (0e31fh),hl		;85f0
	ret			;85f3
L_85F4:
	ld ix,0ed00h		;85f4
	ld b,008h		;85f8
	exx			;85fa
	ld de,00020h		;85fb
	exx			;85fe
L_85FF:
	ld a,(ix+000h)		;85ff
	cp 00ch		;8602
	jr nz,L_8637		;8604
	ld a,(ix+01dh)		;8606
	or a			;8609
	jr nz,L_8637		;860a
	ld a,(ix+004h)		;860c
	add a,01ch		;860f
	sub e			;8611
	jp nc,L_861F		;8612
	neg		;8615
	cp 008h		;8617
	jp c,L_8622		;8619
	jp L_8637		;861c
L_861F:
	cp l			;861f
	jr nc,L_8637		;8620
L_8622:
	ld a,(ix+006h)		;8622
	cp 0e0h		;8625
	ret nc			;8627
	add a,01ch		;8628
	sub d			;862a
	jp nc,L_8635		;862b
	neg		;862e
	cp 008h		;8630
	jr nc,L_8637		;8632
	ret			;8634
L_8635:
	cp h			;8635
	ret c			;8636
L_8637:
	exx			;8637
	add ix,de		;8638
	exx			;863a
	djnz L_85FF		;863b
	xor a			;863d
	ret			;863e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x863f..0x86b9  (122 bytes)
DATA_863F:
	defb 0e6h,03ah,041h,04bh,0ffh,0e6h,03ah,042h,04bh,0ffh,00ch,00dh,0ffh,00bh,039h,018h	; 863f  .:AK..:BK.....9.
	defb 012h,01eh,016h,000h,000h,020h,027h,016h,023h,0feh,08ah,039h,014h,020h,01fh,025h	; 864f  ..... '.#..9. .%
	defb 01ah,01fh,026h,016h,000h,000h,017h,006h,0ffh,04ch,039h,021h,01dh,012h,02ah,016h	; 865f  ..&......L9!..*.
	defb 023h,000h,002h,0ffh,04ah,039h,016h,029h,025h,016h,01fh,015h,000h,021h,01dh,012h	; 866f  #...J9.)%....!..
	defb 02ah,0feh,08fh,039h,017h,006h,0ffh,0cdh,0adh,086h,0ddh,036h,032h,08fh,0ddh,07eh	; 867f  *..9.......62..~
	defb 00ch,0ddh,077h,002h,0ddh,036h,00ch,000h,03eh,010h,0ddh,077h,010h,03eh,001h,0ddh	; 868f  ..w..6..>..w.>..
	defb 077h,013h,0ddh,077h,014h,0ddh,07eh,006h,0e6h,0f8h,0ddh,077h,006h,0c9h,0ddh,077h	; 869f  w..w..~....w...w
	defb 032h,0ddh,07eh,004h,0e6h,0f8h,0ddh,077h,004h,0c9h	; 86af  2.~....w..

; ======================================================================
; CODIGO 0x86b9..0x86bf  (6 bytes)
; ======================================================================


L_86B9:
	ld a,(ix+001h)		;86b9
	call 04093h		;86bc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x86bf..0x86c7  (8 bytes)
DATA_86BF:
	defb 0c7h,086h,02dh,087h,044h,087h,04ch,087h	; 86bf  ..-.D.L.

; ======================================================================
; CODIGO 0x86c7..0x8729  (98 bytes)
; ======================================================================


L_86C7:
	ld a,(ix+006h)		;86c7
	sub 008h		;86ca
	ld (ix+006h),a		;86cc
	jr z,$+112		;86cf
	ld a,(0e440h)		;86d1
	or a			;86d4
	jr z,L_86FF		;86d5
	cp 005h		;86d7
	jr z,L_8704		;86d9
	ld hl,l8728h		;86db
	ld a,(ix+002h)		;86de
	call 04a6eh		;86e1
	ld a,(0ec03h)		;86e4
	add a,(hl)			;86e7
	ld (ix+004h),a		;86e8
	cp 0b0h		;86eb
	jp nc,075d1h		;86ed
	ld a,(ix+000h)		;86f0
	cp 039h		;86f3
	jr z,L_86FF		;86f5
	ld a,(ix+004h)		;86f7
	and 0f8h		;86fa
	ld (ix+004h),a		;86fc
L_86FF:
	call L_8765		;86ff
	jr c,L_871C		;8702
L_8704:
	inc (ix+014h)		;8704
	ld a,(ix+014h)		;8707
	cp (ix+01fh)		;870a
	jr c,L_8712		;870d
	inc (ix+001h)		;870f
L_8712:
	ld a,(ix+014h)		;8712
	add a,a			;8715
	add a,a			;8716
	add a,a			;8717
	ld (ix+00fh),a		;8718
	ret			;871b
L_871C:
	ld a,(ix+006h)		;871c
	add a,008h		;871f
	ld (ix+006h),a		;8721
	ld (ix+001h),003h		;8724
L_8728:
	ret			;8728

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8729..0x872d  (4 bytes)
DATA_8729:
	defb 010h,02eh,050h,06eh	; 8729

; ======================================================================
; CODIGO 0x872d..0x879d  (112 bytes)
; ======================================================================


L_872D:
	ld a,(ix+006h)		;872d
	sub 008h		;8730
	ld (ix+006h),a		;8732
	cp 008h		;8735
	jr c,L_873F		;8737
	call L_8765		;8739
	jr c,$-32		;873c
	ret			;873e
L_873F:
	ld (ix+001h),002h		;873f
	ret			;8743
L_8744:
	dec (ix+014h)		;8744
	jr nz,$-53		;8747
	jp 075d1h		;8749
L_874C:
	dec (ix+014h)		;874c
	jp z,075d1h		;874f
	call L_8712		;8752
	ld a,(0e420h)		;8755
	or a			;8758
	ret z			;8759
	ld a,(ix+006h)		;875a
	sub 008h		;875d
	ld (ix+006h),a		;875f
	ret nz			;8762
	jr L_873F		;8763
L_8765:
	ld a,(0e440h)		;8765
	or a			;8768
	ret nz			;8769
	jp 07fb7h		;876a
L_876D:
	ld (ix+00dh),080h		;876d
	ld (ix+008h),004h		;8771
	ld a,(ix+004h)		;8775
	cp 060h		;8778
	ld b,091h		;877a
	jr nc,L_8780		;877c
	ld b,092h		;877e
L_8780:
	ld (ix+007h),b		;8780
	ld (ix+009h),001h		;8783
	ld (ix+00ah),004h		;8787
	ld (ix+002h),010h		;878b
	ld (ix+014h),003h		;878f
	ret			;8793
L_8794:
	call L_881C		;8794
	ld a,(ix+001h)		;8797
	call 04093h		;879a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x879d..0x87a5  (8 bytes)
DATA_879D:
	defb 0a5h,087h,0b1h,087h,0d9h,087h,0feh,087h	; 879d  ........

; ======================================================================
; CODIGO 0x87a5..0x8869  (196 bytes)
; ======================================================================


L_87A5:
	dec (ix+002h)		;87a5
	ret nz			;87a8
	ld (ix+002h),008h		;87a9
	inc (ix+001h)		;87ad
	ret			;87b0
L_87B1:
	dec (ix+002h)		;87b1
	ret nz			;87b4
	ld (ix+002h),008h		;87b5
	inc (ix+009h)		;87b9
	ld a,(ix+004h)		;87bc
	cp 060h		;87bf
	jr c,L_87CA		;87c1
	add a,0f8h		;87c3
	ld (ix+004h),a		;87c5
	jr L_87CD		;87c8
L_87CA:
	inc (ix+007h)		;87ca
L_87CD:
	dec (ix+014h)		;87cd
	ret nz			;87d0
	ld (ix+002h),010h		;87d1
	inc (ix+001h)		;87d5
	ret			;87d8
L_87D9:
	dec (ix+002h)		;87d9
	ret nz			;87dc
	ld a,(ix+004h)		;87dd
	cp 060h		;87e0
	ld a,027h		;87e2
	jr c,L_87E8		;87e4
	ld a,026h		;87e6
L_87E8:
	ld (ix+007h),a		;87e8
	ld (ix+002h),050h		;87eb
	ld (ix+014h),008h		;87ef
	ld (ix+00ch),004h		;87f3
	call L_9C87		;87f7
	inc (ix+001h)		;87fa
	ret			;87fd
L_87FE:
	call L_9E32		;87fe
	dec (ix+002h)		;8801
	ret nz			;8804
	ld a,(ix+004h)		;8805
	cp 060h		;8808
	ld a,095h		;880a
	jr c,L_8810		;880c
	ld a,091h		;880e
L_8810:
	ld (ix+007h),a		;8810
	ld (ix+002h),00ch		;8813
	ld (ix+001h),002h		;8817
	ret			;881b
L_881C:
	ld a,(ix+006h)		;881c
	cp 0e0h		;881f
	ret nc			;8821
	res 7,(ix+00dh)		;8822
	ret			;8826
L_8827:
	ld a,(ix+004h)		;8827
	cp 040h		;882a
	ld b,000h		;882c
	jr c,L_8832		;882e
	ld b,0a8h		;8830
L_8832:
	ld (ix+004h),b		;8832
	ld (ix+007h),08eh		;8835
	ld (ix+009h),001h		;8839
	ld (ix+00ah),004h		;883d
	jp L_8221		;8841
L_8844:
	ld (ix+009h),004h		;8844
	ld (ix+00ah),001h		;8848
	ld (ix+012h),08fh		;884c
	ld (ix+00dh),080h		;8850
	ld (ix+014h),004h		;8854
	ld (ix+007h),000h		;8858
	call 05905h		;885c
	ret			;885f
L_8860:
	call L_8883		;8860
	ld a,(ix+001h)		;8863
	call 04093h		;8866

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8869..0x886d  (4 bytes)
DATA_8869:
	defb 06dh,088h,094h,088h	; 8869

; ======================================================================
; CODIGO 0x886d..0x88c4  (87 bytes)
; ======================================================================


L_886D:
	inc (ix+00ah)		;886d
	ld a,(ix+006h)		;8870
	sub 008h		;8873
	ld (ix+006h),a		;8875
	cp 008h		;8878
	ret nc			;887a
	ld (ix+006h),001h		;887b
	inc (ix+001h)		;887f
	ret			;8882
L_8883:
	dec (ix+014h)		;8883
	ret nz			;8886
	ld (ix+014h),004h		;8887
	ld a,001h		;888b
	xor (ix+007h)		;888d
	ld (ix+007h),a		;8890
	ret			;8893
L_8894:
	dec (ix+00ah)		;8894
	ret nz			;8897
	call L_8294		;8898
	ret			;889b
L_889C:
	ld h,(ix+006h)		;889c
	ld l,(ix+004h)		;889f
	call 04a46h		;88a2
	ld b,004h		;88a5
L_88A7:
	push hl			;88a7
	push bc			;88a8
	ld c,(ix+00ah)		;88a9
	ld b,000h		;88ac
	ld de,088c4h		;88ae
	ld a,(ix+007h)		;88b1
	or a			;88b4
	jr z,L_88B8		;88b5
	inc de			;88b7
L_88B8:
	ex de,hl			;88b8
	ldir		;88b9
	pop bc			;88bb
	pop hl			;88bc
	ld de,00040h		;88bd
	add hl,de			;88c0
	djnz L_88A7		;88c1
	ret			;88c3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x88c4..0x88e5  (33 bytes)
DATA_88C4:
	defb 0e0h,0e1h,0e2h,0e0h,0e1h,0e2h,0e0h,0e1h,0e1h,0e2h,0e0h,0e1h,0e2h,0e0h,0e1h,0e2h	; 88c4  ................
	defb 0e2h,0e0h,0e1h,0e2h,0e0h,0e1h,0e2h,0e0h,0e0h,0e1h,0e2h,0e0h,0e1h,0e2h,0e0h,0e1h	; 88d4  ................
	defb 0e0h	; 88e4

; ======================================================================
; CODIGO 0x88e5..0x88f4  (15 bytes)
; ======================================================================


L_88E5:
	ld a,008h		;88e5
	add a,(ix+006h)		;88e7
	ld h,a			;88ea
	ld a,008h		;88eb
	add a,(ix+004h)		;88ed
	ld l,a			;88f0
	jp 07fbdh		;88f1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x88f4..0x8919  (37 bytes)
DATA_88F4:
	defb 0ddh,07eh,004h,0feh,060h,03eh,001h,006h,0a8h,030h,003h,0afh,006h,0bch,0ddh,077h	; 88f4  .~..`>...0.....w
	defb 01fh,0ddh,070h,024h,0ddh,036h,010h,018h,0ddh,036h,002h,002h,0ddh,036h,030h,08ch	; 8904  ..p$.6...6...60.
	defb 0ddh,036h,00bh,001h,0c9h	; 8914

; ======================================================================
; CODIGO 0x8919..0x891f  (6 bytes)
; ======================================================================


L_8919:
	ld a,(ix+001h)		;8919
	call 04093h		;891c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x891f..0x8931  (18 bytes)
DATA_891F:
	defb 05dh,089h,039h,089h,04dh,089h,079h,089h,07fh,089h,0b9h,089h,0dch,089h,039h,089h	; 891f  ].9.M.y.......9.
	defb 008h,08ah	; 892f

; ======================================================================
; CODIGO 0x8931..0x8a46  (277 bytes)
; ======================================================================


L_8931:
	ld (ix+002h),002h		;8931
L_8935:
	inc (ix+001h)		;8935
	ret			;8938
L_8939:
	ld a,(ix+030h)		;8939
	and 00fh		;893c
	ld a,090h		;893e
	jr nz,L_8944		;8940
	ld a,08ch		;8942
L_8944:
	ld (ix+030h),a		;8944
	dec (ix+002h)		;8947
	ret nz			;894a
	jr L_8935		;894b
L_894D:
	ld a,(ix+024h)		;894d
	ld (ix+030h),a		;8950
	ld (ix+031h),00bh		;8953
	ld (ix+010h),00bh		;8957
	jr L_8931		;895b
L_895D:
	ld a,(ix+006h)		;895d
	cp 020h		;8960
	jr c,L_896F		;8962
	ld b,a			;8964
	ld a,(0e606h)		;8965
	sub 020h		;8968
	jr nc,L_896D		;896a
	xor a			;896c
L_896D:
	cp b			;896d
	ret c			;896e
L_896F:
	ld (ix+00bh),081h		;896f
	ld (ix+002h),004h		;8973
	jr L_8935		;8977
L_8979:
	ld (ix+031h),00bh		;8979
	jr L_8931		;897d
L_897F:
	dec (ix+002h)		;897f
	ret nz			;8982
	ld (ix+002h),004h		;8983
	call L_89FF		;8987
	ld (ix+002h),00fh		;898a
	ld (ix+010h),007h		;898e
	ld a,(ix+01fh)		;8992
	or a			;8995
	ld hl,0fbc0h		;8996
	jr nz,L_899E		;8999
	ld hl,00440h		;899b
L_899E:
	ld de,00200h		;899e
	call 078d7h		;89a1
	ld a,(ix+01fh)		;89a4
	or a			;89a7
	ld de,00030h		;89a8
	jr nz,L_89B0		;89ab
	ld de,0ffd0h		;89ad
L_89B0:
	ld hl,00000h		;89b0
	call 07f0ah		;89b3
	jp L_8935		;89b6
L_89B9:
	call L_89E9		;89b9
	call 07f1ch		;89bc
	call 07f2fh		;89bf
	ld a,(ix+004h)		;89c2
	cp 008h		;89c5
	jr c,L_89D1		;89c7
	cp 098h		;89c9
	jr nc,L_89D1		;89cb
	call L_88E5		;89cd
	ret nc			;89d0
L_89D1:
	ld (ix+002h),004h		;89d1
	ld (ix+010h),00bh		;89d5
	jp L_8935		;89d9
L_89DC:
	dec (ix+002h)		;89dc
	ret nz			;89df
	call L_89FF		;89e0
	ld (ix+010h),018h		;89e3
	jr L_896F		;89e7
L_89E9:
	ld a,(ix+030h)		;89e9
	cp 0b4h		;89ec
	ret z			;89ee
	cp 0c8h		;89ef
	ret z			;89f1
	ld a,(ix+002h)		;89f2
	or a			;89f5
	ret z			;89f6
	dec (ix+002h)		;89f7
	ret nz			;89fa
	ld (ix+002h),004h		;89fb
L_89FF:
	ld a,(ix+030h)		;89ff
	add a,004h		;8a02
	ld (ix+030h),a		;8a04
	ret			;8a07
L_8A08:
	ld (ix+00bh),000h		;8a08
	call 075d1h		;8a0c
	ret			;8a0f
L_8A10:
	ld (ix+00dh),080h		;8a10
	ld (ix+012h),08ah		;8a14
L_8A18:
	ld a,(ix+00bh)		;8a18
	or a			;8a1b
	ld bc,0048eh		;8a1c
	jr z,L_8A2A		;8a1f
	ld bc,0028ah		;8a21
	dec a			;8a24
	jr z,L_8A2A		;8a25
	ld bc,0088ah		;8a27
L_8A2A:
	ld (ix+00ah),b		;8a2a
	ld (ix+007h),c		;8a2d
	ld (ix+009h),001h		;8a30
	ld (ix+014h),013h		;8a34
	ld a,b			;8a38
	add a,a			;8a39
	add a,a			;8a3a
	add a,a			;8a3b
	ld (ix+002h),a		;8a3c
	ret			;8a3f
L_8A40:
	ld a,(ix+001h)		;8a40
	call 04093h		;8a43

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8a46..0x8a4c  (6 bytes)
DATA_8A46:
	defb 04ch,08ah,05eh,08ah,075h,08ah	; 8a46

; ======================================================================
; CODIGO 0x8a4c..0x8af0  (164 bytes)
; ======================================================================


L_8A4C:
	dec (ix+002h)		;8a4c
	ret nz			;8a4f
	set 0,(ix+012h)		;8a50
	ld (ix+002h),001h		;8a54
	inc (ix+001h)		;8a58
	jp 05905h		;8a5b
L_8A5E:
	dec (ix+002h)		;8a5e
	ret nz			;8a61
	ld (ix+002h),001h		;8a62
	inc (ix+009h)		;8a66
	dec (ix+014h)		;8a69
	ret nz			;8a6c
	ld (ix+014h),013h		;8a6d
	inc (ix+001h)		;8a71
	ret			;8a74
L_8A75:
	dec (ix+002h)		;8a75
	ret nz			;8a78
	ld (ix+002h),001h		;8a79
	ld a,008h		;8a7d
	add a,(ix+004h)		;8a7f
	ld (ix+004h),a		;8a82
	dec (ix+009h)		;8a85
	dec (ix+014h)		;8a88
	ret nz			;8a8b
	ld (ix+004h),008h		;8a8c
	res 0,(ix+012h)		;8a90
	call L_8A18		;8a94
	ld (ix+001h),000h		;8a97
	ret			;8a9b
L_8A9C:
	ld a,(ix+009h)		;8a9c
	or a			;8a9f
	ret z			;8aa0
	ld h,(ix+006h)		;8aa1
	ld l,(ix+004h)		;8aa4
	bit 6,(ix+012h)		;8aa7
	push af			;8aab
	call z,04a46h		;8aac
	pop af			;8aaf
	call nz,L_8281		;8ab0
	ex de,hl			;8ab3
	ld b,(ix+009h)		;8ab4
	ld a,(ix+001h)		;8ab7
	cp 002h		;8aba
	jr z,L_8AC2		;8abc
	ld a,b			;8abe
	rra			;8abf
	jr c,L_8AD0		;8ac0
L_8AC2:
	ld a,(ix+00bh)		;8ac2
	ld hl,08af0h		;8ac5
	call 04a5ah		;8ac8
	call L_8ADF		;8acb
	dec b			;8ace
	ret z			;8acf
L_8AD0:
	ld a,(ix+00bh)		;8ad0
	ld hl,08af6h		;8ad3
	call 04a5ah		;8ad6
	call L_8ADF		;8ad9
	djnz L_8AC2		;8adc
	ret			;8ade
L_8ADF:
	push de			;8adf
	push bc			;8ae0
	ld c,(ix+00ah)		;8ae1
	ld b,000h		;8ae4
	ldir		;8ae6
	pop bc			;8ae8
	pop de			;8ae9
	ld hl,00040h		;8aea
	add hl,de			;8aed
	ex de,hl			;8aee
	ret			;8aef

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8af0..0x8b18  (40 bytes)
DATA_8AF0:
	defb 0fch,08ah,004h,08bh,008h,08bh,000h,08bh,006h,08bh,010h,08bh,0d0h,0d1h,0d2h,0d3h	; 8af0  ................
	defb 0d4h,0d5h,0d6h,0d7h,0d0h,0d3h,0d4h,0d7h,0d0h,0d1h,0d2h,0d1h,0d2h,0d1h,0d2h,0d3h	; 8b00  ................
	defb 0d4h,0d5h,0d6h,0d5h,0d6h,0d5h,0d6h,0d7h	; 8b10  ........

; ======================================================================
; CODIGO 0x8b18..0x8b35  (29 bytes)
; ======================================================================


L_8B18:
	ld de,0fe80h		;8b18
	call 078b3h		;8b1b
	call 078cdh		;8b1e
	ld a,(ix+01fh)		;8b21
	cp 00fh		;8b24
	ret nz			;8b26
	ld (ix+031h),008h		;8b27
	ret			;8b2b
L_8B2C:
	call L_8B70		;8b2c
	ld a,(ix+001h)		;8b2f
	call 04093h		;8b32

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8b35..0x8b3d  (8 bytes)
DATA_8B35:
	defb 03dh,08bh,059h,08bh,06fh,08bh,06fh,08bh	; 8b35  =.Y.o.o.

; ======================================================================
; CODIGO 0x8b3d..0x8b7a  (61 bytes)
; ======================================================================


L_8B3D:
	ld a,(0e606h)		;8b3d
	add a,040h		;8b40
	cp (ix+006h)		;8b42
	ret c			;8b45
	sub 020h		;8b46
	cp (ix+006h)		;8b48
	ret c			;8b4b
	inc (ix+001h)		;8b4c
L_8B4F:
	ld a,028h		;8b4f
	call 07865h		;8b51
	ld (ix+002h),008h		;8b54
	ret			;8b58
L_8B59:
	dec (ix+002h)		;8b59
	jr z,L_8B4F		;8b5c
	ld a,(0e606h)		;8b5e
	add a,020h		;8b61
	cp (ix+006h)		;8b63
	ret nc			;8b66
	call L_8B18		;8b67
	ld (ix+001h),000h		;8b6a
	ret			;8b6e
L_8B6F:
	ret			;8b6f
L_8B70:
	ld bc,00702h		;8b70
	ld hl,08b7ah		;8b73
	call 07f7ch		;8b76
	ret			;8b79

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8b7a..0x8b9a  (32 bytes)
DATA_8B7A:
	defb 0a0h,0a4h,0ddh,036h,001h,000h,0ddh,036h,010h,00fh,0ddh,036h,002h,028h,0ddh,036h	; 8b7a  ...6...6...6.(.6
	defb 006h,0f0h,0ddh,07eh,00ch,0b7h,028h,004h,0ddh,036h,031h,008h,0cdh,0c8h,078h,0c9h	; 8b8a  ...~..(..61...x.

; ======================================================================
; CODIGO 0x8b9a..0x8ba3  (9 bytes)
; ======================================================================


L_8B9A:
	call L_8B70		;8b9a
	ld a,(ix+001h)		;8b9d
	call 04093h		;8ba0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8ba3..0x8bab  (8 bytes)
DATA_8BA3:
	defb 0abh,08bh,0c1h,08bh,0d6h,08bh,0dbh,08bh	; 8ba3  ........

; ======================================================================
; CODIGO 0x8bab..0x8be7  (60 bytes)
; ======================================================================


L_8BAB:
	call 078c8h		;8bab
	dec (ix+002h)		;8bae
	ret nz			;8bb1
	res 3,(ix+010h)		;8bb2
	ld (ix+002h),020h		;8bb6
	call L_8BDC		;8bba
L_8BBD:
	inc (ix+001h)		;8bbd
	ret			;8bc0
L_8BC1:
	dec (ix+002h)		;8bc1
	ret nz			;8bc4
	ld a,(ix+006h)		;8bc5
	cp 080h		;8bc8
	jr nc,L_8BCE		;8bca
	jr L_8BBD		;8bcc
L_8BCE:
	ld (ix+002h),001h		;8bce
	dec (ix+001h)		;8bd2
	ret			;8bd5
L_8BD6:
	call L_8B4F		;8bd6
	jr L_8BBD		;8bd9
L_8BDB:
	ret			;8bdb
L_8BDC:
	call 0565ah		;8bdc
	and 007h		;8bdf
	ld hl,08be7h		;8be1
	jp 06e40h		;8be4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8be7..0x8c07  (32 bytes)
DATA_8BE7:
	defb 080h,0feh,000h,0ffh,080h,0feh,000h,001h,080h,0ffh,000h,0ffh,080h,0ffh,000h,001h	; 8be7  ................
	defb 080h,000h,000h,0ffh,080h,000h,000h,001h,080h,000h,000h,000h,080h,0feh,000h,000h	; 8bf7  ................

; ======================================================================
; CODIGO 0x8c07..0x8c52  (75 bytes)
; ======================================================================


L_8C07:
	ld (ix+008h),005h		;8c07
	ld (ix+002h),020h		;8c0b
	ld (ix+00dh),080h		;8c0f
	ld (ix+00ch),004h		;8c13
	ld (ix+012h),001h		;8c17
	ld (ix+018h),008h		;8c1b
	ld hl,0e364h		;8c1f
	ld d,060h		;8c22
	ld a,(hl)			;8c24
	or a			;8c25
	jr z,L_8C2A		;8c26
	ld d,07ah		;8c28
L_8C2A:
	ld a,(ix+000h)		;8c2a
	cp 026h		;8c2d
	ld b,000h		;8c2f
	jr z,L_8C35		;8c31
	ld b,008h		;8c33
L_8C35:
	ld a,(ix+00bh)		;8c35
	ld c,a			;8c38
	add a,a			;8c39
	add a,d			;8c3a
	add a,b			;8c3b
	ld (ix+007h),a		;8c3c
	ld a,c			;8c3f
	add a,a			;8c40
	ld hl,08c52h		;8c41
	call 04089h		;8c44
	ld a,(hl)			;8c47
	inc hl			;8c48
	ld h,(hl)			;8c49
	ld l,a			;8c4a
	ld (ix+009h),l		;8c4b
	ld (ix+00ah),h		;8c4e
	ret			;8c51

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8c52..0x8c5a  (8 bytes)
DATA_8C52:
	defb 005h,007h,005h,007h,002h,008h,002h,008h	; 8c52  ........

; ======================================================================
; CODIGO 0x8c5a..0x8c75  (27 bytes)
; ======================================================================


L_8C5A:
	add a,(ix+007h)		;8c5a
L_8C5D:
	ld (ix+007h),a		;8c5d
	ld b,a			;8c60
	ld a,(ix+006h)		;8c61
	cp 0c0h		;8c64
	ret nc			;8c66
	ld a,b			;8c67
	sub 060h		;8c68
	ld hl,08c75h		;8c6a
	call 04089h		;8c6d
	ld a,(hl)			;8c70
	ld (ix+00dh),a		;8c71
	ret			;8c74

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8c75..0x8c9f  (42 bytes)
DATA_8C75:
	defb 080h,001h,080h,002h,080h,005h,080h,006h,080h,003h,080h,004h,080h,007h,080h,008h	; 8c75  ................
	defb 080h,001h,080h,080h,002h,080h,003h,080h,080h,004h,080h,001h,080h,002h,080h,005h	; 8c85  ................
	defb 080h,006h,080h,003h,080h,004h,080h,007h,080h,008h	; 8c95  ..........

; ======================================================================
; CODIGO 0x8c9f..0x8ca5  (6 bytes)
; ======================================================================


L_8C9F:
	ld a,(ix+001h)		;8c9f
	call 04093h		;8ca2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8ca5..0x8cab  (6 bytes)
DATA_8CA5:
	defb 0abh,08ch,0c0h,08ch,070h,08dh	; 8ca5

; ======================================================================
; CODIGO 0x8cab..0x8d1e  (115 bytes)
; ======================================================================


L_8CAB:
	dec (ix+002h)		;8cab
	ret nz			;8cae
	ld (ix+002h),030h		;8caf
	ld a,001h		;8cb3
	call L_8C5A		;8cb5
	xor a			;8cb8
	ld (0e482h),a		;8cb9
	inc (ix+001h)		;8cbc
	ret			;8cbf
L_8CC0:
	ld a,(ix+000h)		;8cc0
	cp 027h		;8cc3
	jr nz,L_8CCC		;8cc5
	ld a,(ix+014h)		;8cc7
	or a			;8cca
	ret nz			;8ccb
L_8CCC:
	dec (ix+002h)		;8ccc
	jr nz,L_8CE7		;8ccf
	ld a,0ffh		;8cd1
	call L_8C5A		;8cd3
L_8CD6:
	ld (ix+002h),020h		;8cd6
	ld (ix+018h),008h		;8cda
	ld (ix+00ch),004h		;8cde
	ld (ix+001h),000h		;8ce2
	ret			;8ce6
L_8CE7:
	ld a,(ix+00ch)		;8ce7
	or a			;8cea
	ret z			;8ceb
	dec (ix+018h)		;8cec
	ret nz			;8cef
	ld (ix+018h),008h		;8cf0
	dec (ix+00ch)		;8cf4
	ld a,(ix+006h)		;8cf7
	cp 0c8h		;8cfa
	ret nc			;8cfc
	ld a,(ix+007h)		;8cfd
	sub 061h		;8d00
	add a,a			;8d02
	ld hl,08d1eh		;8d03
	call 04089h		;8d06
	ld c,(hl)			;8d09
	inc hl			;8d0a
	ld b,(hl)			;8d0b
	ld a,(ix+006h)		;8d0c
	add a,b			;8d0f
	ld d,a			;8d10
	ld a,(ix+004h)		;8d11
	add a,c			;8d14
	ld e,a			;8d15
	ld c,000h		;8d16
	ld a,024h		;8d18
	call 07647h		;8d1a
	ret			;8d1d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8d1e..0x8d70  (82 bytes)
DATA_8D1E:
	defb 010h,000h,000h,000h,010h,028h,000h,000h,0f8h,008h,000h,000h,0f8h,028h,000h,000h	; 8d1e  .....(.......(..
	defb 00ch,000h,000h,000h,00ch,028h,000h,000h,010h,004h,000h,000h,010h,030h,000h,000h	; 8d2e  .....(.......0..
	defb 010h,000h,000h,000h,000h,000h,010h,028h,000h,000h,00ch,000h,000h,000h,000h,000h	; 8d3e  .......(........
	defb 00ch,028h,000h,000h,010h,000h,000h,000h,010h,028h,000h,000h,0f8h,008h,000h,000h	; 8d4e  .(.......(......
	defb 0f8h,028h,000h,000h,00ch,000h,000h,000h,00ch,028h,000h,000h,010h,004h,000h,000h	; 8d5e  .(.......(......
	defb 010h,030h	; 8d6e

; ======================================================================
; CODIGO 0x8d70..0x8d81  (17 bytes)
; ======================================================================


L_8D70:
	dec (ix+002h)		;8d70
	ret nz			;8d73
	ld (ix+002h),020h		;8d74
	ld a,0ffh		;8d78
	call L_8C5A		;8d7a
	dec (ix+001h)		;8d7d
	ret			;8d80

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8d81..0x8d87  (6 bytes)
DATA_8D81:
	defb 03eh,070h,0cdh,065h,078h,0c9h	; 8d81

; ======================================================================
; CODIGO 0x8d87..0x8dd4  (77 bytes)
; ======================================================================


L_8D87:
	ld hl,0e4d1h		;8d87
	inc (hl)			;8d8a
	ld (ix+008h),005h		;8d8b
	ld (ix+00dh),080h		;8d8f
	ld (ix+009h),005h		;8d93
	ld (ix+00ah),007h		;8d97
	ld (ix+012h),001h		;8d9b
	ld (ix+016h),000h		;8d9f
	ld (ix+017h),000h		;8da3
	ld (ix+014h),000h		;8da7
	ld (ix+002h),020h		;8dab
	ld (ix+018h),008h		;8daf
	ld (ix+00ch),004h		;8db3
	ld a,(ix+00bh)		;8db7
	or a			;8dba
	ld a,070h		;8dbb
	jr z,L_8DC1		;8dbd
	ld a,075h		;8dbf
L_8DC1:
	ld (ix+007h),a		;8dc1
	ret			;8dc4
L_8DC5:
	call L_8C9F		;8dc5
	ld a,(ix+006h)		;8dc8
	cp 0c8h		;8dcb
	ret nc			;8dcd
	ld a,(ix+014h)		;8dce
	call 04093h		;8dd1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8dd4..0x8dd8  (4 bytes)
DATA_8DD4:
	defb 0d8h,08dh,008h,08eh	; 8dd4

; ======================================================================
; CODIGO 0x8dd8..0x8e26  (78 bytes)
; ======================================================================


L_8DD8:
	ld a,(0e606h)		;8dd8
	ld c,a			;8ddb
	ld a,(ix+006h)		;8ddc
	add a,018h		;8ddf
	ld b,a			;8de1
	ld a,(ix+017h)		;8de2
	or a			;8de5
	jr nz,L_8DED		;8de6
	ld a,c			;8de8
	cp b			;8de9
	ret c			;8dea
	jr L_8DF0		;8deb
L_8DED:
	ld a,c			;8ded
	cp b			;8dee
	ret nc			;8def
L_8DF0:
	call L_8CD6		;8df0
	ld (ix+015h),004h		;8df3
	ld a,(ix+00bh)		;8df7
	or a			;8dfa
	ld a,072h		;8dfb
	jr z,L_8E01		;8dfd
	ld a,077h		;8dff
L_8E01:
	call L_8C5D		;8e01
	inc (ix+014h)		;8e04
	ret			;8e07
L_8E08:
	dec (ix+015h)		;8e08
	ret nz			;8e0b
	ld a,(ix+017h)		;8e0c
	or a			;8e0f
	ld b,001h		;8e10
	jr z,L_8E16		;8e12
	ld b,0feh		;8e14
L_8E16:
	ld a,b			;8e16
	call L_8C5A		;8e17
	ld a,001h		;8e1a
	xor (ix+017h)		;8e1c
	ld (ix+017h),a		;8e1f
	dec (ix+014h)		;8e22
	ret			;8e25

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8e26..0x8e29  (3 bytes)
DATA_8E26:
	defb 001h,030h,030h	; 8e26

; ======================================================================
; CODIGO 0x8e29..0x8e7a  (81 bytes)
; ======================================================================


L_8E29:
	ld a,(0e604h)		;8e29
	sub (ix+004h)		;8e2c
	jr nc,L_8E33		;8e2f
	neg		;8e31
L_8E33:
	cp c			;8e33
	jr nc,L_8E47		;8e34
	ld a,(0e606h)		;8e36
	sub (ix+006h)		;8e39
	jr nc,L_8E40		;8e3c
	neg		;8e3e
L_8E40:
	cp b			;8e40
	jr nc,L_8E47		;8e41
	ld a,001h		;8e43
	jr L_8E48		;8e45
L_8E47:
	xor a			;8e47
L_8E48:
	ld (ix+016h),a		;8e48
	ret			;8e4b
L_8E4C:
	ld hl,0e4d1h		;8e4c
	inc (hl)			;8e4f
	ld (ix+008h),005h		;8e50
	ld (ix+002h),020h		;8e54
	ld (ix+00dh),0ffh		;8e58
	ld (ix+00ch),004h		;8e5c
	ld (ix+009h),002h		;8e60
	ld (ix+00ah),008h		;8e64
	ld (ix+012h),001h		;8e68
	ld a,(ix+00bh)		;8e6c
	ld hl,08e7ah		;8e6f
	call 04089h		;8e72
	ld a,(hl)			;8e75
	call L_8C5D		;8e76
	ret			;8e79

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8e7a..0x8e7e  (4 bytes)
DATA_8E7A:
	defb 07eh,080h,086h,088h	; 8e7a

; ======================================================================
; CODIGO 0x8e7e..0x8e84  (6 bytes)
; ======================================================================


L_8E7E:
	ld a,(ix+001h)		;8e7e
	call 04093h		;8e81

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8e84..0x8e88  (4 bytes)
DATA_8E84:
	defb 088h,08eh,0c8h,08eh	; 8e84

; ======================================================================
; CODIGO 0x8e88..0x8ec0  (56 bytes)
; ======================================================================


L_8E88:
	ld a,(ix+006h)		;8e88
	cp 0c8h		;8e8b
	ret nc			;8e8d
	ld bc,03080h		;8e8e
	call L_8E29		;8e91
	ret nc			;8e94
	ld (ix+002h),020h		;8e95
	ld a,001h		;8e99
	call L_8C5A		;8e9b
	inc (ix+001h)		;8e9e
	ld a,(ix+00bh)		;8ea1
	add a,a			;8ea4
	ld hl,08ec0h		;8ea5
	call 04089h		;8ea8
	ld b,(hl)			;8eab
	inc hl			;8eac
	ld c,(hl)			;8ead
	ld a,(ix+006h)		;8eae
	add a,b			;8eb1
	ld d,a			;8eb2
	ld a,(ix+004h)		;8eb3
	add a,c			;8eb6
	ld e,a			;8eb7
	ld c,000h		;8eb8
	ld a,025h		;8eba
	call 07647h		;8ebc
	ret			;8ebf

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8ec0..0x8ec8  (8 bytes)
DATA_8EC0:
	defb 00ch,0f8h,02ch,0f8h,000h,010h,02ch,010h	; 8ec0  ..,...,.

; ======================================================================
; CODIGO 0x8ec8..0x8ed5  (13 bytes)
; ======================================================================


L_8EC8:
	dec (ix+002h)		;8ec8
	ret nz			;8ecb
	ld a,0ffh		;8ecc
	call L_8C5A		;8ece
	dec (ix+001h)		;8ed1
	ret			;8ed4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8ed5..0x8efe  (41 bytes)
DATA_8ED5:
	defb 0ddh,07eh,004h,0feh,060h,03eh,002h,038h,001h,0afh,0ddh,077h,01fh,0ddh,036h,032h	; 8ed5  .~..`>.8...w..62
	defb 0c2h,0ddh,036h,013h,001h,0ddh,036h,014h,001h,0ddh,036h,010h,011h,0ddh,036h,002h	; 8ee5  ..6...6...6...6.
	defb 004h,0ddh,036h,024h,002h,0cdh,012h,059h,0c9h	; 8ef5  ..6$...Y.

; ======================================================================
; CODIGO 0x8efe..0x8fc0  (194 bytes)
; ======================================================================


L_8EFE:
	call L_8F6F		;8efe
	call L_8F55		;8f01
	jp c,075d1h		;8f04
	dec (ix+002h)		;8f07
	ret nz			;8f0a
	ld (ix+002h),004h		;8f0b
	ld a,(ix+01fh)		;8f0f
	cp 002h		;8f12
	ld b,008h		;8f14
	jr nc,L_8F1A		;8f16
	ld b,0f8h		;8f18
L_8F1A:
	ld a,(ix+004h)		;8f1a
	add a,b			;8f1d
	ld (ix+004h),a		;8f1e
	sub 0b0h		;8f21
	cp 040h		;8f23
	jp c,075d1h		;8f25
	ld a,(ix+006h)		;8f28
	cp 008h		;8f2b
	jr c,L_8F45		;8f2d
	add a,0f8h		;8f2f
	ld (ix+006h),a		;8f31
	ld a,(ix+014h)		;8f34
	add a,002h		;8f37
	ld (ix+014h),a		;8f39
	ld a,(ix+00fh)		;8f3c
	add a,010h		;8f3f
	ld (ix+00fh),a		;8f41
	ret			;8f44
L_8F45:
	add a,c			;8f45
	ld (ix+004h),a		;8f46
	dec (ix+014h)		;8f49
	ld a,(ix+00fh)		;8f4c
	add a,008h		;8f4f
	ld (ix+00fh),a		;8f51
	ret			;8f54
L_8F55:
	ld h,(ix+006h)		;8f55
	ld l,(ix+004h)		;8f58
	call 04a46h		;8f5b
	ld b,(ix+014h)		;8f5e
	ld a,(0e405h)		;8f61
L_8F64:
	cp (hl)			;8f64
	ret c			;8f65
	inc hl			;8f66
	djnz L_8F64		;8f67
	ld a,(ix+006h)		;8f69
	cp 008h		;8f6c
	ret			;8f6e
L_8F6F:
	dec (ix+024h)		;8f6f
	ret nz			;8f72
	ld (ix+024h),002h		;8f73
	ld a,0c2h		;8f77
	cp (ix+032h)		;8f79
	jr nz,L_8F7F		;8f7c
	inc a			;8f7e
L_8F7F:
	ld (ix+032h),a		;8f7f
	ret			;8f82
L_8F83:
	bit 1,(ix+00bh)		;8f83
	ld hl,00802h		;8f87
	ld a,05dh		;8f8a
	jr z,L_8FB1		;8f8c
	ld a,05fh		;8f8e
	jr L_8FB1		;8f90
L_8F92:
	bit 0,(ix+00bh)		;8f92
	ld a,0a2h		;8f96
	ld hl,00805h		;8f98
	jr z,L_8FB0		;8f9b
	ld a,0a4h		;8f9d
	jr L_8FB0		;8f9f
L_8FA1:
	bit 1,(ix+00bh)		;8fa1
	ld a,05ch		;8fa5
	ld hl,00805h		;8fa7
	jr z,L_8FB0		;8faa
	ld a,05dh		;8fac
	ld l,002h		;8fae
L_8FB0:
	add a,c			;8fb0
L_8FB1:
	ld (ix+007h),a		;8fb1
	ld (ix+009h),l		;8fb4
	ld (ix+00ah),h		;8fb7
	call L_8221		;8fba
	jp 05880h		;8fbd

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8fc0..0x8fef  (47 bytes)
DATA_8FC0:
	defb 0ddh,036h,002h,002h,0ddh,036h,01ch,000h,0ddh,036h,010h,008h,0ddh,036h,031h,00fh	; 8fc0  .6...6...6...61.
	defb 0c9h,0ddh,036h,002h,002h,0afh,0ddh,077h,01ch,0ddh,077h,010h,0c9h,004h,060h,005h	; 8fd0  ..6....w..w...`.
	defb 002h,0f8h,00fh,002h,0fch,007h,004h,0ech,008h,002h,0f0h,00fh,002h,0f4h,00fh	; 8fe0  ...............

; ======================================================================
; CODIGO 0x8fef..0x904d  (94 bytes)
; ======================================================================


L_8FEF:
	ld b,000h		;8fef
	jr L_8FF5		;8ff1
L_8FF3:
	ld b,001h		;8ff3
L_8FF5:
	dec (ix+002h)		;8ff5
	ret nz			;8ff8
	inc (ix+01ch)		;8ff9
	ld a,(ix+01ch)		;8ffc
	cp 004h		;8fff
	jr nc,L_9022		;9001
	rr b		;9003
	ld hl,08fdah		;9005
	jr nc,L_900D		;9008
	ld hl,08fe3h		;900a
L_900D:
	ld b,a			;900d
	add a,a			;900e
	add a,b			;900f
	call 04089h		;9010
	ld a,(hl)			;9013
	ld (ix+002h),a		;9014
	inc hl			;9017
	ld a,(hl)			;9018
	ld (ix+030h),a		;9019
	inc hl			;901c
	ld a,(hl)			;901d
	ld (ix+031h),a		;901e
	ret			;9021
L_9022:
	xor a			;9022
	ld (ix+016h),a		;9023
	call 075d1h		;9026
	ld a,(ix+00ch)		;9029
	or a			;902c
	ret z			;902d
	add a,03dh		;902e
	ld c,a			;9030
	ld a,(ix+004h)		;9031
	and 0f8h		;9034
	ld e,a			;9036
	ld a,(ix+006h)		;9037
	and 0f8h		;903a
	ld d,a			;903c
	ld a,(ix+01fh)		;903d
	or a			;9040
	jr z,L_9045		;9041
	ld c,047h		;9043
L_9045:
	ld a,c			;9045
	ld bc,00000h		;9046
	call 0763ch		;9049
	ret			;904c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x904d..0x9075  (40 bytes)
DATA_904D:
	defb 03ah,00bh,000h,017h,006h,080h,038h,002h,006h,000h,0ddh,07eh,004h,0feh,060h,030h	; 904d  :.....8....~..`0
	defb 002h,0cbh,0e8h,0ddh,070h,01fh,03eh,005h,018h,002h,03eh,009h,0ddh,077h,010h,03eh	; 905d  ....p.>...>..w.>
	defb 002h,0ddh,077h,013h,0ddh,077h,014h,0c9h	; 906d  ..w..w..

; ======================================================================
; CODIGO 0x9075..0x9081  (12 bytes)
; ======================================================================


L_9075:
	call 0711bh		;9075
	jr z,L_9075		;9078
	ret c			;907a
	ld hl,0e468h		;907b
	inc (hl)			;907e
	jr L_9075		;907f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9081..0x90be  (61 bytes)
DATA_9081:
	defb 0ddh,036h,013h,002h,0ddh,036h,014h,002h,0ddh,036h,010h,00bh,0cdh,094h,090h,006h	; 9081  .6...6...6......
	defb 000h,018h,02dh,0cdh,0abh,090h,0ddh,036h,027h,000h,0cdh,020h,091h,0cbh,02fh,04fh	; 9091  ..-....6'.. ../O
	defb 03ah,068h,0e4h,0e6h,003h,081h,0ddh,077h,015h,0c9h,0ddh,04eh,01fh,0afh,0cbh,069h	; 90a1  :h.....w...N...i
	defb 028h,002h,03eh,002h,0cbh,071h,020h,001h,03ch,0ddh,077h,026h,0c9h	; 90b1  (.>..q .<.w&.

; ======================================================================
; CODIGO 0x90be..0x9179  (187 bytes)
; ======================================================================


L_90BE:
	call 0b348h		;90be
	ld a,(0e361h)		;90c1
	call L_90DA		;90c4
	add a,a			;90c7
	add a,a			;90c8
	ld e,a			;90c9
	ld d,000h		;90ca
	ld hl,09185h		;90cc
	add hl,de			;90cf
	ld e,(ix+026h)		;90d0
	add hl,de			;90d3
	ld a,(hl)			;90d4
	add a,b			;90d5
	ld (ix+032h),a		;90d6
	ret			;90d9
L_90DA:
	ld c,a			;90da
	ld a,(0e440h)		;90db
	cp 011h		;90de
	ld a,c			;90e0
	ret nz			;90e1
	ld a,00bh		;90e2
	ret			;90e4
L_90E5:
	dec (ix+015h)		;90e5
	ld a,(ix+015h)		;90e8
	and 003h		;90eb
	ret nz			;90ed
	call L_90BE		;90ee
	ld a,(0e477h)		;90f1
	bit 1,(ix+026h)		;90f4
	jr nz,L_9101		;90f8
	sub 010h		;90fa
	cp 060h		;90fc
	ret c			;90fe
	jr L_9106		;90ff
L_9101:
	sub 090h		;9101
	cp 060h		;9103
	ret c			;9105
L_9106:
	ld a,(ix+015h)		;9106
	and a			;9109
	ret nz			;910a
	ld hl,0e407h		;910b
	ld a,(hl)			;910e
	and a			;910f
	jr z,L_9117		;9110
	ld (ix+015h),001h		;9112
	ret			;9116
L_9117:
	ld e,(ix+004h)		;9117
	ld d,(ix+006h)		;911a
	call L_855E		;911d
	ld hl,09179h		;9120
	ld a,(0e366h)		;9123
	dec a			;9126
	ld a,(0e389h)		;9127
	jr nz,L_9132		;912a
	cp 002h		;912c
	jr c,L_9132		;912e
	ld a,002h		;9130
L_9132:
	call 04089h		;9132
	ld c,(hl)			;9135
	inc (ix+027h)		;9136
	ld a,(ix+027h)		;9139
	and 003h		;913c
	jr nz,L_9142		;913e
	sla c		;9140
L_9142:
	ld a,(0e600h)		;9142
	cp 002h		;9145
	ld a,c			;9147
	jr nz,L_914C		;9148
	sub 004h		;914a
L_914C:
	ld c,a			;914c
	ld a,(0e366h)		;914d
	srl a		;9150
	srl a		;9152
	ld b,a			;9154
	ld a,c			;9155
	sub b			;9156
	jr nc,L_915A		;9157
	xor a			;9159
L_915A:
	cp 00ch		;915a
	jr nc,L_9160		;915c
	ld a,00ch		;915e
L_9160:
	ld c,a			;9160
	ld a,(0e361h)		;9161
	and a			;9164
	jr z,L_916B		;9165
	cp 007h		;9167
	jr nz,L_9175		;9169
L_916B:
	ld a,c			;916b
	sub 008h		;916c
	cp 004h		;916e
	jr nc,L_9174		;9170
	ld a,004h		;9172
L_9174:
	ld c,a			;9174
L_9175:
	ld (ix+015h),c		;9175
	ret			;9178

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9179..0x91b9  (64 bytes)
DATA_9179:
	defb 050h,040h,030h,028h,024h,022h,020h,01eh,01ch,01ah,018h,016h,014h,012h,010h,00ch	; 9179  P@0($" .........
	defb 000h,000h,000h,000h,002h,002h,005h,005h,067h,064h,061h,05eh,000h,000h,000h,000h	; 9189  ........gda^....
	defb 05bh,058h,055h,052h,000h,000h,000h,000h,030h,033h,036h,039h,000h,000h,000h,000h	; 9199  [XUR....0369....
	defb 077h,074h,071h,06eh,084h,08ah,087h,08dh,084h,084h,061h,061h,0ddh,035h,015h,0c0h	; 91a9  wtqn......aa.5..

; ======================================================================
; CODIGO 0x91b9..0x91d5  (28 bytes)
; ======================================================================


L_91B9:
	ld hl,0e407h		;91b9
	ld a,(hl)			;91bc
	and a			;91bd
	jr z,L_91C5		;91be
	ld (ix+015h),001h		;91c0
	ret			;91c4
L_91C5:
	ld e,(ix+004h)		;91c5
	ld d,(ix+006h)		;91c8
	call L_855E		;91cb
	call 07844h		;91ce
	ld (ix+015h),a		;91d1
	ret			;91d4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x91d5..0x9215  (64 bytes)
DATA_91D5:
	defb 0cdh,044h,078h,006h,000h,0ddh,07eh,004h,0feh,060h,038h,001h,004h,0ddh,070h,025h	; 91d5  .Dx...~..`8...p%
	defb 03ah,006h,0e5h,0ddh,077h,017h,0ddh,036h,013h,002h,0ddh,036h,014h,002h,0cdh,0c8h	; 91e5  :...w..6...6....
	defb 078h,011h,000h,0fch,0cdh,0b3h,078h,03ah,061h,0e3h,03dh,021h,00bh,092h,0cdh,089h	; 91f5  x.....x:a.=!....
	defb 040h,07eh,0ddh,077h,032h,0c9h,000h,009h,012h,000h,000h,000h,06ah,000h,06ch,000h	; 9205  @~.w2.......j.l.

; ======================================================================
; CODIGO 0x9215..0x9221  (12 bytes)
; ======================================================================


L_9215:
	call L_92EF		;9215
	call L_92CB		;9218
	ld a,(ix+001h)		;921b
	call 04093h		;921e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9221..0x922b  (10 bytes)
DATA_9221:
	defb 02bh,092h,05ch,092h,075h,092h,09fh,092h,0cah,092h	; 9221  +.\.u.....

; ======================================================================
; CODIGO 0x922b..0x92db  (176 bytes)
; ======================================================================


L_922B:
	ld a,(ix+006h)		;922b
	cp 010h		;922e
	ret nc			;9230
	ld a,(ix+025h)		;9231
	or a			;9234
	ld a,00ch		;9235
	jr nz,L_923B		;9237
	ld a,010h		;9239
L_923B:
	ld (ix+006h),a		;923b
	ld a,(ix+004h)		;923e
	and 0f8h		;9241
	ld (ix+004h),a		;9243
	inc (ix+001h)		;9246
	ld de,00400h		;9249
	ld a,(ix+025h)		;924c
	and a			;924f
	call nz,04a75h		;9250
	call 078ach		;9253
	ld de,00400h		;9256
	jp 078b3h		;9259
L_925C:
	ld a,(ix+006h)		;925c
	cp 050h		;925f
	ret c			;9261
	ld (ix+006h),050h		;9262
	call L_92B9		;9266
	inc (ix+001h)		;9269
	call 078c8h		;926c
	ld de,00400h		;926f
	jp 078b3h		;9272
L_9275:
	ld a,(ix+006h)		;9275
	cp 0a0h		;9278
	ret c			;927a
	ld (ix+006h),0a0h		;927b
	ld a,(ix+025h)		;927f
	or a			;9282
	jr z,L_9289		;9283
	ld (ix+004h),04ch		;9285
L_9289:
	inc (ix+001h)		;9289
	ld de,0fc00h		;928c
	ld a,(ix+025h)		;928f
	and a			;9292
	call nz,04a75h		;9293
	call 078ach		;9296
	ld de,0fc00h		;9299
	jp 078b3h		;929c
L_929F:
	ld a,(ix+006h)		;929f
	cp 060h		;92a2
	ret nc			;92a4
	ld (ix+006h),060h		;92a5
	call L_92B9		;92a9
	call 078c8h		;92ac
	ld de,00400h		;92af
	call 078b3h		;92b2
	inc (ix+001h)		;92b5
	ret			;92b8
L_92B9:
	ld a,(ix+004h)		;92b9
	and 0f8h		;92bc
	ld (ix+004h),a		;92be
	ld a,(ix+006h)		;92c1
	and 0f8h		;92c4
	ld (ix+006h),a		;92c6
	ret			;92c9
L_92CA:
	ret			;92ca
L_92CB:
	ld a,(0e361h)		;92cb
	add a,a			;92ce
	ld hl,092d9h		;92cf
	call 04089h		;92d2
	ld bc,00702h		;92d5
	jp 07f7ch		;92d8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x92db..0x92ef  (20 bytes)
DATA_92DB:
	defb 000h,001h,009h,00ah,012h,013h,009h,00ah,009h,00ah,009h,00ah,06ah,06bh,000h,000h	; 92db  ............jk..
	defb 06ch,06dh,000h,000h	; 92eb

; ======================================================================
; CODIGO 0x92ef..0x92fe  (15 bytes)
; ======================================================================


L_92EF:
	ld a,(0e36ah)		;92ef
	or a			;92f2
	ret z			;92f3
	dec (ix+015h)		;92f4
	ret nz			;92f7
	call 07844h		;92f8
	jp 06e1dh		;92fb

; ----------------------------------------------------------------------
; DATOS sin identificar  0x92fe..0x932a  (44 bytes)
DATA_92FE:
	defb 0ddh,07eh,004h,0feh,050h,011h,0c0h,0ffh,001h,08ch,000h,038h,006h,011h,040h,000h	; 92fe  .~..P......8..@.
	defb 001h,070h,001h,0ddh,070h,027h,0ddh,071h,030h,0cdh,0f3h,07eh,0ddh,036h,025h,00ah	; 930e  .p..p'.q0..~.6%.
	defb 0cdh,046h,094h,0cdh,0cdh,078h,011h,000h,002h,0cdh,0b3h,078h	; 931e  .F...x.....x

; ======================================================================
; CODIGO 0x932a..0x954c  (546 bytes)
; ======================================================================


L_932A:
	ld a,r		;932a
	and 01fh		;932c
	add a,02dh		;932e
	ld (ix+002h),a		;9330
	ret			;9333
L_9334:
	call L_95B0		;9334
	ret nc			;9337
	ld a,(ix+001h)		;9338
	dec a			;933b
	jr z,L_9378		;933c
	dec a			;933e
	jp z,L_93A7		;933f
	jp p,L_93BC		;9342
	ld a,(0e361h)		;9345
	cp 009h		;9348
	jr z,L_9351		;934a
	call 07f5bh		;934c
	jr c,L_93AE		;934f
L_9351:
	dec (ix+002h)		;9351
	jr z,L_9362		;9354
	call L_9446		;9356
	call L_9530		;9359
	call L_957A		;935c
	jr c,L_93D1		;935f
	ret			;9361
L_9362:
	ld (ix+001h),001h		;9362
	ld (ix+002h),05ah		;9366
	call L_9554		;936a
	call L_9442		;936d
	call L_94E4		;9370
	ld (ix+010h),00bh		;9373
	ret			;9377
L_9378:
	call 07f5bh		;9378
	jr c,L_93AE		;937b
	dec (ix+002h)		;937d
	jr z,L_938B		;9380
	call L_957A		;9382
	jr c,L_93D1		;9385
	call L_94F0		;9387
	ret			;938a
L_938B:
	ld a,(0e606h)		;938b
	cp (ix+006h)		;938e
	ld de,00200h		;9391
	jr nc,L_9399		;9394
	ld de,0fe00h		;9396
L_9399:
	call 078b3h		;9399
L_939C:
	ld (ix+010h),007h		;939c
	ld (ix+001h),000h		;93a0
	jp L_932A		;93a4
L_93A7:
	call L_9530		;93a7
	call L_9446		;93aa
	ret			;93ad
L_93AE:
	ld (ix+010h),007h		;93ae
	ld (ix+001h),002h		;93b2
	ld de,0fe00h		;93b6
	jp 078b3h		;93b9
L_93BC:
	call 07f1ch		;93bc
	call L_93F1		;93bf
	ret nc			;93c2
	call L_9431		;93c3
	call 078cdh		;93c6
	ld a,(ix+02ah)		;93c9
	or a			;93cc
	jr z,L_938B		;93cd
	jr L_9362		;93cf
L_93D1:
	ld a,(ix+001h)		;93d1
	ld (ix+02ah),a		;93d4
	ld (ix+001h),003h		;93d7
	ld (ix+010h),007h		;93db
	bit 0,(ix+027h)		;93df
	ld de,0fc00h		;93e3
	jr nz,L_93EB		;93e6
	ld de,00400h		;93e8
L_93EB:
	call 078ach		;93eb
	jp 078d2h		;93ee
L_93F1:
	bit 0,(ix+027h)		;93f1
	jr nz,L_9401		;93f5
	call L_9413		;93f7
	call c,078ddh		;93fa
	call L_940B		;93fd
	ret			;9400
L_9401:
	call L_940B		;9401
	call c,078ddh		;9404
	call L_9413		;9407
	ret			;940a
L_940B:
	ld h,(ix+006h)		;940b
	ld l,(ix+004h)		;940e
	jr L_941C		;9411
L_9413:
	ld h,(ix+006h)		;9413
	ld a,(ix+004h)		;9416
	add a,010h		;9419
	ld l,a			;941b
L_941C:
	call 04a46h		;941c
	ld (0e47fh),hl		;941f
L_9422:
	ld a,(0e405h)		;9422
	dec a			;9425
	ld c,a			;9426
	cp (hl)			;9427
	ret c			;9428
	inc hl			;9429
	ld a,l			;942a
	and 01fh		;942b
	ret z			;942d
	ld a,c			;942e
	cp (hl)			;942f
	ret			;9430
L_9431:
	bit 0,(ix+027h)		;9431
	ld a,(ix+004h)		;9435
	jr nz,L_943C		;9438
	add a,008h		;943a
L_943C:
	and 0f8h		;943c
	ld (ix+004h),a		;943e
	ret			;9441
L_9442:
	ld a,001h		;9442
	jr L_9447		;9444
L_9446:
	xor a			;9446
L_9447:
	ld (ix+029h),a		;9447
	ld a,(0e440h)		;944a
	sub 00dh		;944d
	jp z,L_94D6		;944f
	ld a,(ix+004h)		;9452
	ld (ix+028h),a		;9455
	bit 0,(ix+027h)		;9458
	jr z,L_94A1		;945c
L_945E:
	call L_9413		;945e
	jr nc,L_948D		;9461
L_9463:
	ld hl,(0e47fh)		;9463
	ld bc,0ffc0h		;9466
	add hl,bc			;9469
	ld (0e47fh),hl		;946a
	call L_9422		;946d
	ret nc			;9470
	ld a,(ix+004h)		;9471
	sub 008h		;9474
	ld (ix+004h),a		;9476
	cp 010h		;9479
	jr nc,L_9463		;947b
L_947D:
	call 078edh		;947d
	ld (ix+025h),005h		;9480
	ld a,(ix+028h)		;9484
	ld (ix+004h),a		;9487
	jp L_939C		;948a
L_948D:
	ld a,(ix+004h)		;948d
	cp 0a0h		;9490
	jp nc,075d1h		;9492
	add a,008h		;9495
	ld (ix+004h),a		;9497
	ld a,(ix+029h)		;949a
	or a			;949d
	jr nz,L_945E		;949e
	ret			;94a0
L_94A1:
	call L_940B		;94a1
	jr nc,L_94B4		;94a4
	ld a,(ix+004h)		;94a6
	add a,008h		;94a9
	ld (ix+004h),a		;94ab
	cp 080h		;94ae
	jr c,L_94A1		;94b0
	jr L_947D		;94b2
L_94B4:
	ld hl,(0e47fh)		;94b4
	ld bc,0ffc0h		;94b7
	add hl,bc			;94ba
	ld (0e47fh),hl		;94bb
	call L_9422		;94be
	ret c			;94c1
	ld a,(ix+004h)		;94c2
	cp 009h		;94c5
	call c,075d1h		;94c7
	sub 008h		;94ca
	ld (ix+004h),a		;94cc
	ld a,(ix+029h)		;94cf
	or a			;94d2
	jr nz,L_94B4		;94d3
	ret			;94d5
L_94D6:
	call 0b5a1h		;94d6
	ld de,0021ch		;94d9
	rst 20h			;94dc
	ld de,0fe00h		;94dd
	jp nc,078b3h		;94e0
	ret			;94e3
L_94E4:
	ld a,(0e389h)		;94e4
	add a,a			;94e7
	sub 03ch		;94e8
	neg		;94ea
	ld (ix+015h),a		;94ec
	ret			;94ef
L_94F0:
	dec (ix+015h)		;94f0
	ret nz			;94f3
	call L_94E4		;94f4
	call L_9554		;94f7
	bit 0,(ix+027h)		;94fa
	jr z,L_9509		;94fe
	ld a,(0e604h)		;9500
	cp (ix+004h)		;9503
	ret nc			;9506
	jr L_9510		;9507
L_9509:
	ld a,(0e604h)		;9509
	cp (ix+004h)		;950c
	ret c			;950f
L_9510:
	ld e,(ix+004h)		;9510
	ld d,(ix+006h)		;9513
	call 063ffh		;9516
	ld a,(0e477h)		;9519
	cp 080h		;951c
	jr c,L_9522		;951e
	neg		;9520
L_9522:
	cp 040h		;9522
	jr c,L_9528		;9524
	sub 040h		;9526
L_9528:
	sub 008h		;9528
	cp 030h		;952a
	ret nc			;952c
	jp L_91B9		;952d
L_9530:
	ld a,(ix+00ah)		;9530
	or a			;9533
	ld hl,0954ch		;9534
	jp p,L_953C		;9537
	inc hl			;953a
	inc hl			;953b
L_953C:
	bit 0,(ix+027h)		;953c
	jr z,L_9546		;9540
	ld bc,00004h		;9542
	add hl,bc			;9545
L_9546:
	ld bc,00302h		;9546
	jp 07f7ch		;9549

; ----------------------------------------------------------------------
; DATOS sin identificar  0x954c..0x9554  (8 bytes)
DATA_954C:
	defb 088h,08ch,07ch,080h,070h,074h,064h,068h	; 954c  ..|.ptdh

; ======================================================================
; CODIGO 0x9554..0x95d9  (133 bytes)
; ======================================================================


L_9554:
	bit 0,(ix+027h)		;9554
	jr z,L_956A		;9558
	ld b,078h		;955a
	ld a,(0e606h)		;955c
	cp (ix+006h)		;955f
	jr nc,L_9566		;9562
	ld b,06ch		;9564
L_9566:
	ld (ix+030h),b		;9566
	ret			;9569
L_956A:
	ld b,090h		;956a
	ld a,(0e606h)		;956c
	cp (ix+006h)		;956f
	jr nc,L_9576		;9572
	ld b,084h		;9574
L_9576:
	ld (ix+030h),b		;9576
	ret			;9579
L_957A:
	or a			;957a
	bit 0,(ix+01fh)		;957b
	ret nz			;957f
	ld a,(ix+006h)		;9580
	sub 020h		;9583
	ccf			;9585
	ret nc			;9586
	ld b,003h		;9587
	ld hl,0e6c0h		;9589
	ld de,00060h		;958c
L_958F:
	push hl			;958f
	ld a,(hl)			;9590
	or a			;9591
	jr z,L_95A9		;9592
	ld a,(ix+004h)		;9594
	inc hl			;9597
	inc hl			;9598
	inc hl			;9599
	sub (hl)			;959a
	add a,010h		;959b
	cp 018h		;959d
	jr nc,L_95A9		;959f
	ld a,(ix+006h)		;95a1
	inc hl			;95a4
	inc hl			;95a5
	sub (hl)			;95a6
	cp 021h		;95a7
L_95A9:
	pop hl			;95a9
	ret c			;95aa
	add hl,de			;95ab
	djnz L_958F		;95ac
	or a			;95ae
	ret			;95af
L_95B0:
	ld a,(0e361h)		;95b0
	sub 009h		;95b3
	scf			;95b5
	ret nz			;95b6
	ld a,(ix+004h)		;95b7
	add a,008h		;95ba
	ld l,a			;95bc
	ld a,(ix+006h)		;95bd
	add a,008h		;95c0
	ld h,a			;95c2
	call 04a46h		;95c3
	call L_95CC		;95c6
	jr nc,L_95D4		;95c9
	inc hl			;95cb
L_95CC:
	ld a,(hl)			;95cc
	sub 092h		;95cd
	ret c			;95cf
	sub 00dh		;95d0
	ccf			;95d2
	ret c			;95d3
L_95D4:
	call 0a8a1h		;95d4
	or a			;95d7
	ret			;95d8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x95d9..0x95e5  (12 bytes)
DATA_95D9:
	defb 0cdh,081h,090h,0cdh,04ch,096h,03eh,002h,0ddh,077h,002h,0c9h	; 95d9  ....L.>..w..

; ======================================================================
; CODIGO 0x95e5..0x9687  (162 bytes)
; ======================================================================


L_95E5:
	ld a,(ix+001h)		;95e5
	dec a			;95e8
	jr z,L_961B		;95e9
	ld a,(ix+006h)		;95eb
	sub 030h		;95ee
	ret c			;95f0
	call L_9643		;95f1
	dec (ix+002h)		;95f4
	ret nz			;95f7
	ld (ix+002h),004h		;95f8
	ld (ix+027h),003h		;95fc
	call L_9665		;9600
	ret nc			;9603
	dec (ix+027h)		;9604
	ld (ix+002h),020h		;9607
	ld (ix+015h),008h		;960b
	inc (ix+001h)		;960f
	ld a,07ch		;9612
	add a,(ix+032h)		;9614
	ld (ix+032h),a		;9617
	ret			;961a
L_961B:
	dec (ix+002h)		;961b
	jr z,L_9634		;961e
	dec (ix+015h)		;9620
	ret nz			;9623
	ld (ix+015h),008h		;9624
	ld a,(ix+027h)		;9628
	or a			;962b
	ret z			;962c
	call L_9665		;962d
	dec (ix+027h)		;9630
	ret			;9633
L_9634:
	call L_9659		;9634
	dec (ix+001h)		;9637
	ld a,(ix+032h)		;963a
	sub 07ch		;963d
	ld (ix+032h),a		;963f
	ret			;9642
L_9643:
	ld a,(0e303h)		;9643
	and 007h		;9646
	ret nz			;9648
	call L_90BE		;9649
	ld a,b			;964c
	add a,a			;964d
	bit 1,(ix+026h)		;964e
	jr z,L_9655		;9652
	inc a			;9654
L_9655:
	ld (ix+01ch),a		;9655
	ret			;9658
L_9659:
	ld a,(0e389h)		;9659
	add a,a			;965c
	sub 050h		;965d
	neg		;965f
	ld (ix+002h),a		;9661
	ret			;9664
L_9665:
	ld a,(ix+01ch)		;9665
	ld b,a			;9668
	ld hl,09687h		;9669
	call 04a5ah		;966c
	ld a,(ix+004h)		;966f
	add a,l			;9672
	ld e,a			;9673
	ld a,(ix+006h)		;9674
	add a,h			;9677
	ld d,a			;9678
	ld a,(ix+027h)		;9679
	dec a			;967c
	ld c,000h		;967d
	jr z,L_9682		;967f
	inc c			;9681
L_9682:
	ld a,001h		;9682
	jp 07647h		;9684

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9687..0x96a0  (25 bytes)
DATA_9687:
	defb 0f0h,0f0h,010h,0f0h,0f0h,000h,010h,000h,0f0h,010h,010h,010h,0ddh,036h,002h,020h	; 9687  .............6.
	defb 0ddh,036h,02fh,000h,0ddh,07eh,01fh,018h,020h	; 9697  .6/..~..

; ======================================================================
; CODIGO 0x96a0..0x96cf  (47 bytes)
; ======================================================================


L_96A0:
	ld bc,00306h		;96a0
	ld hl,096efh		;96a3
	call 07f7ch		;96a6
	ld a,(ix+001h)		;96a9
	or a			;96ac
	ret nz			;96ad
	dec (ix+02fh)		;96ae
	jr z,L_96C6		;96b1
	dec (ix+002h)		;96b3
	ret nz			;96b6
	ld (ix+002h),010h		;96b7
	call 0565ah		;96bb
	and 007h		;96be
	ld hl,096cfh		;96c0
	jp 06e40h		;96c3
L_96C6:
	inc (ix+001h)		;96c6
	ld de,0fe80h		;96c9
	jp 078b3h		;96cc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x96cf..0x96f5  (38 bytes)
DATA_96CF:
	defb 000h,0feh,080h,0feh,000h,0feh,080h,001h,080h,0ffh,080h,0feh,080h,0ffh,080h,001h	; 96cf  ................
	defb 000h,001h,080h,0feh,000h,001h,080h,001h,000h,001h,000h,000h,000h,0feh,000h,000h	; 96df  ................
	defb 0a0h,0a4h,0a8h,0ach,0b0h,0b4h	; 96ef

; ======================================================================
; CODIGO 0x96f5..0x971d  (40 bytes)
; ======================================================================


L_96F5:
	ld (ix+008h),010h		;96f5
	ld (ix+009h),006h		;96f9
	ld (ix+00ah),008h		;96fd
	ld (ix+012h),000h		;9701
	ld (ix+00dh),080h		;9705
	ld a,(ix+00bh)		;9709
	or a			;970c
	ld a,004h		;970d
	jr nz,L_9713		;970f
	ld a,000h		;9711
L_9713:
	ld (ix+007h),a		;9713
	ret			;9716
L_9717:
	ld a,(ix+001h)		;9717
	call 04093h		;971a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x971d..0x9721  (4 bytes)
DATA_971D:
	defb 021h,097h,03bh,097h	; 971d

; ======================================================================
; CODIGO 0x9721..0x974d  (44 bytes)
; ======================================================================


L_9721:
	ld a,(ix+006h)		;9721
	cp 080h		;9724
	ret nc			;9726
	ld (ix+002h),080h		;9727
	ld (ix+012h),003h		;972b
	ld (ix+014h),004h		;972f
	ld (ix+002h),010h		;9733
	inc (ix+001h)		;9737
	ret			;973a
L_973B:
	dec (ix+002h)		;973b
	ret nz			;973e
	dec (ix+014h)		;973f
	jr nz,L_9745		;9742
	ret			;9744
L_9745:
	ld (ix+002h),010h		;9745
	inc (ix+007h)		;9749
	ret			;974c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x974d..0x9766  (25 bytes)
DATA_974D:
	defb 03ah,09ah,0e4h,0b7h,0c2h,0d1h,075h,0ddh,036h,002h,010h,0ddh,036h,031h,00dh,011h	; 974d  :.....u.6...61..
	defb 000h,0fch,021h,000h,000h,0cdh,0d7h,078h,0c9h	; 975d  ..!....x.

; ======================================================================
; CODIGO 0x9766..0x976f  (9 bytes)
; ======================================================================


L_9766:
	call L_9827		;9766
	ld a,(ix+001h)		;9769
	call 04093h		;976c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x976f..0x9777  (8 bytes)
DATA_976F:
	defb 077h,097h,0f1h,097h,01ah,098h,086h,097h	; 976f  w.......

; ======================================================================
; CODIGO 0x9777..0x9831  (186 bytes)
; ======================================================================


L_9777:
	call L_97AA		;9777
	jr c,L_9787		;977a
	ld de,00000h		;977c
	call 078ach		;977f
	ld (ix+001h),003h		;9782
L_9786:
	ret			;9786
L_9787:
	call L_97B3		;9787
	jr c,L_9798		;978a
	dec (ix+002h)		;978c
	ret nz			;978f
	call L_97CF		;9790
	ld (ix+002h),005h		;9793
	ret			;9797
L_9798:
	call 078c8h		;9798
	call 058e5h		;979b
	ld a,001h		;979e
	ld (0e49ah),a		;97a0
	call L_9833		;97a3
L_97A6:
	inc (ix+001h)		;97a6
	ret			;97a9
L_97AA:
	ld a,(0e606h)		;97aa
	sub 010h		;97ad
	sub (ix+006h)		;97af
	ret			;97b2
L_97B3:
	ld a,(0e606h)		;97b3
	sub (ix+006h)		;97b6
	jr nc,L_97CD		;97b9
	neg		;97bb
	cp 020h		;97bd
	ret nc			;97bf
	ld a,(0e604h)		;97c0
	sub (ix+004h)		;97c3
	jr nc,L_97CA		;97c6
	neg		;97c8
L_97CA:
	cp 008h		;97ca
	ret			;97cc
L_97CD:
	xor a			;97cd
	ret			;97ce
L_97CF:
	ld a,(0e604h)		;97cf
	sub (ix+004h)		;97d2
	jr nc,L_97D9		;97d5
	neg		;97d7
L_97D9:
	cp 008h		;97d9
	ld de,00000h		;97db
	jr c,L_97EE		;97de
	ld a,(0e604h)		;97e0
	cp (ix+004h)		;97e3
	ld de,00100h		;97e6
	jr nc,L_97EE		;97e9
	ld de,0ff00h		;97eb
L_97EE:
	jp 078ach		;97ee
L_97F1:
	ld a,(0e604h)		;97f1
	ld (ix+004h),a		;97f4
	ld a,(0e606h)		;97f7
	add a,018h		;97fa
	ld (ix+006h),a		;97fc
	ld hl,(0e363h)		;97ff
	ld de,00180h		;9802
	rst 20h			;9805
	ret nz			;9806
	ld a,(ix+006h)		;9807
	cp 0f0h		;980a
	jp nc,075d1h		;980c
	ld de,00800h		;980f
	ld hl,00000h		;9812
	call 078d7h		;9815
	jr L_97A6		;9818
L_981A:
	ld a,(ix+006h)		;981a
	cp 0f0h		;981d
	ret c			;981f
	xor a			;9820
	ld (0e49ah),a		;9821
	jp 075d1h		;9824
L_9827:
	ld bc,00702h		;9827
	ld hl,09831h		;982a
	call 07f7ch		;982d
	ret			;9830

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9831..0x9833  (2 bytes)
DATA_9831:
	defb 0a0h,0a4h	; 9831

; ======================================================================
; CODIGO 0x9833..0x9942  (271 bytes)
; ======================================================================


L_9833:
	ld hl,0e800h		;9833
	ld de,00040h		;9836
	ld b,00ch		;9839
L_983B:
	ld a,018h		;983b
	cp (hl)			;983d
	jr nz,L_9842		;983e
	ld (hl),000h		;9840
L_9842:
	add hl,de			;9842
	djnz L_983B		;9843
	ld (ix+000h),a		;9845
	ret			;9848
L_9849:
	bit 0,(ix+00bh)		;9849
	ld a,0f6h		;984d
	jr z,L_9853		;984f
	ld a,0fbh		;9851
L_9853:
	ld (ix+007h),a		;9853
	ld (ix+009h),006h		;9856
	ld (ix+00ah),004h		;985a
	ld (ix+00dh),080h		;985e
	ld (ix+012h),003h		;9862
	ld (ix+008h),028h		;9866
	ret			;986a
L_986B:
	ld a,(ix+001h)		;986b
	dec a			;986e
	jr z,L_9887		;986f
	ld a,(ix+006h)		;9871
	cp 0e0h		;9874
	ret nc			;9876
	bit 0,(ix+00bh)		;9877
	ld a,026h		;987b
	jr z,L_9880		;987d
	inc a			;987f
L_9880:
	ld (ix+00dh),a		;9880
	inc (ix+001h)		;9883
	ret			;9886
L_9887:
	call L_98F1		;9887
	ld a,004h		;988a
	cp b			;988c
	jr z,L_98AB		;988d
	ld c,b			;988f
	call L_98E6		;9890
	ld a,b			;9893
	cp 004h		;9894
	jr z,L_98B1		;9896
	cp c			;9898
	jr nc,L_989C		;9899
	ld a,c			;989b
L_989C:
	bit 0,(ix+00bh)		;989c
	ld b,0f6h		;98a0
	jr z,L_98A6		;98a2
	ld b,0fbh		;98a4
L_98A6:
	add a,b			;98a6
	ld (ix+007h),a		;98a7
	ret			;98aa
L_98AB:
	ld (ix+01ah),000h		;98ab
	jr L_98B5		;98af
L_98B1:
	ld (ix+01ah),001h		;98b1
L_98B5:
	push ix		;98b5
	ld d,(ix+006h)		;98b7
	ld e,(ix+004h)		;98ba
	call 0678dh		;98bd
	pop ix		;98c0
	ret nc			;98c2
	call L_98D5		;98c3
	call L_8294		;98c6
	call 05878h		;98c9
	bit 0,(ix+01ah)		;98cc
	ret z			;98d0
	call L_9901		;98d1
	ret			;98d4
L_98D5:
	bit 0,(ix+00bh)		;98d5
	ld a,0ffh		;98d9
	jr nz,L_98DF		;98db
	ld a,0fah		;98dd
L_98DF:
	ld (ix+007h),a		;98df
	call L_8221		;98e2
	ret			;98e5
L_98E6:
	dec (ix+002h)		;98e6
	ld de,09008h		;98e9
	ld a,(ix+002h)		;98ec
	jr L_98F7		;98ef
L_98F1:
	ld de,02002h		;98f1
	ld a,(ix+008h)		;98f4
L_98F7:
	ld b,004h		;98f7
	sub d			;98f9
	ret c			;98fa
	dec b			;98fb
L_98FC:
	sub e			;98fc
	ret c			;98fd
	djnz L_98FC		;98fe
	ret			;9900
L_9901:
	ld a,(ix+004h)		;9901
	add a,014h		;9904
	ld e,a			;9906
	ld a,(ix+006h)		;9907
	add a,020h		;990a
	ld d,a			;990c
	ld (0ef82h),de		;990d
	ld a,(0e389h)		;9911
	add a,a			;9914
	add a,a			;9915
	add a,040h		;9916
	ld (0ef84h),a		;9918
	ld b,007h		;991b
L_991D:
	push bc			;991d
	call L_992F		;991e
	call L_9949		;9921
	ld de,(0ef82h)		;9924
	call L_8580		;9928
	pop bc			;992b
	djnz L_991D		;992c
	ret			;992e
L_992F:
	ld e,b			;992f
	ld d,000h		;9930
	ld hl,l9941h		;9932
	add hl,de			;9935
	ld a,(0ef84h)		;9936
	add a,(hl)			;9939
	jr nc,L_993E		;993a
	ld a,0ffh		;993c
L_993E:
	ld (0e46eh),a		;993e
L_9941:
	ret			;9941

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9942..0x9949  (7 bytes)
DATA_9942:
	defb 020h,020h,038h,038h,02ch,02ch,020h	; 9942

; ======================================================================
; CODIGO 0x9949..0x9951  (8 bytes)
; ======================================================================


L_9949:
	ld hl,09950h		;9949
	ld a,b			;994c
	ld c,007h		;994d
	jr $+17		;994f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9951..0x9960  (15 bytes)
DATA_9951:
	defb 0e8h,018h,0f0h,010h,0f8h,008h,000h,0f0h,0f8h,000h,008h,010h,0ddh,07eh,01fh	; 9951  .............~.

; ======================================================================
; CODIGO 0x9960..0x99af  (79 bytes)
; ======================================================================


L_9960:
	cp c			;9960
	call z,L_9971		;9961
	call L_9983		;9964
	ld (0e476h),a		;9967
	ld e,a			;996a
	ld (0e470h),hl		;996b
	jp 063c7h		;996e
L_9971:
	push af			;9971
	push hl			;9972
	ld de,(0ef82h)		;9973
	call 063ffh		;9977
	ld a,(0e477h)		;997a
	ld (0e490h),a		;997d
	pop hl			;9980
	pop af			;9981
	ret			;9982
L_9983:
	ld e,a			;9983
	ld d,000h		;9984
	add hl,de			;9986
	ld a,(0e490h)		;9987
	add a,(hl)			;998a
	cp 040h		;998b
	jr c,L_99AB		;998d
	cp 080h		;998f
	jr c,L_99A3		;9991
	cp 0c0h		;9993
	jr c,L_999D		;9995
	neg		;9997
	ld hl,00001h		;9999
	ret			;999c
L_999D:
	sub 080h		;999d
	ld hl,00101h		;999f
	ret			;99a2
L_99A3:
	sub 080h		;99a3
	neg		;99a5
	ld hl,00100h		;99a7
	ret			;99aa
L_99AB:
	ld hl,00000h		;99ab
	ret			;99ae

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99af..0x99d8  (41 bytes)
DATA_99AF:
	defb 0cdh,044h,078h,0ddh,07eh,004h,0ddh,077h,027h,011h,000h,0fdh,0cdh,0b3h,078h,0ddh	; 99af  .Dx.~..w'.....x.
	defb 07eh,004h,0feh,060h,011h,000h,008h,021h,000h,0ffh,038h,006h,011h,000h,0f8h,021h	; 99bf  ~..`...!..8....!
	defb 000h,001h,0cdh,0d8h,099h,0ebh,0c3h,010h,07fh	; 99cf  .........

; ======================================================================
; CODIGO 0x99d8..0x9a61  (137 bytes)
; ======================================================================


L_99D8:
	call 078ach		;99d8
	ex de,hl			;99db
	jp 07ef3h		;99dc
L_99DF:
	call L_92EF		;99df
	call 07f1ch		;99e2
	call 07f42h		;99e5
	call z,07eeah		;99e8
	ld a,(ix+027h)		;99eb
	cp (ix+004h)		;99ee
	ret nz			;99f1
	ld a,048h		;99f2
	cp (ix+006h)		;99f4
	ret c			;99f7
	ld (ix+030h),0dch		;99f8
	jp 078edh		;99fc
L_99FF:
	bit 0,(ix+00bh)		;99ff
	ld a,04ch		;9a03
	jr z,L_9A09		;9a05
	ld a,04eh		;9a07
L_9A09:
	ld (ix+007h),a		;9a09
	ld (ix+009h),002h		;9a0c
	ld (ix+00ah),003h		;9a10
	ld (ix+00dh),080h		;9a14
	ld (ix+012h),001h		;9a18
	ld (ix+002h),040h		;9a1c
	ret			;9a20
L_9A21:
	ld a,(ix+001h)		;9a21
	dec a			;9a24
	jr z,L_9A3A		;9a25
	ret p			;9a27
	dec (ix+002h)		;9a28
	ret nz			;9a2b
	ld (ix+002h),020h		;9a2c
	inc (ix+007h)		;9a30
	inc (ix+001h)		;9a33
	call L_9A45		;9a36
	ret			;9a39
L_9A3A:
	dec (ix+002h)		;9a3a
	ret nz			;9a3d
	dec (ix+007h)		;9a3e
	inc (ix+001h)		;9a41
	ret			;9a44
L_9A45:
	bit 0,(ix+00bh)		;9a45
	ld a,0f8h		;9a49
	jr z,L_9A4F		;9a4b
	ld a,010h		;9a4d
L_9A4F:
	add a,(ix+004h)		;9a4f
	ld e,a			;9a52
	ld a,(ix+006h)		;9a53
	add a,008h		;9a56
	ld d,a			;9a58
	ld bc,00000h		;9a59
	ld a,034h		;9a5c
	jp 07647h		;9a5e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9a61..0x9a81  (32 bytes)
DATA_9A61:
	defb 0cdh,071h,09ah,026h,050h,0ddh,074h,02eh,0ddh,075h,02fh,03eh,0c0h,0c3h,088h,078h	; 9a61  .q.&P.t..u/>...x
	defb 02eh,0c0h,03ah,006h,0e6h,0c6h,030h,0d8h,0bdh,0d0h,02eh,040h,0bdh,0d8h,06fh,0c9h	; 9a71  ..:...0....@..o.

; ======================================================================
; CODIGO 0x9a81..0x9ab8  (55 bytes)
; ======================================================================


L_9A81:
	call L_9A8B		;9a81
	ret nc			;9a84
	call L_9AA5		;9a85
	jp 075d1h		;9a88
L_9A8B:
	ld b,010h		;9a8b
	ld a,(ix+004h)		;9a8d
	sub (ix+02eh)		;9a90
	jr nc,L_9A97		;9a93
	neg		;9a95
L_9A97:
	cp b			;9a97
	ret nc			;9a98
	ld a,(ix+006h)		;9a99
	sub (ix+02fh)		;9a9c
	jr nc,L_9AA3		;9a9f
	neg		;9aa1
L_9AA3:
	cp b			;9aa3
	ret			;9aa4
L_9AA5:
	ld bc,00600h		;9aa5
L_9AA8:
	push bc			;9aa8
	ld e,(ix+004h)		;9aa9
	ld d,(ix+006h)		;9aac
	ld a,035h		;9aaf
	call 07647h		;9ab1
	pop bc			;9ab4
	djnz L_9AA8		;9ab5
	ret			;9ab7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ab8..0x9aee  (54 bytes)
DATA_9AB8:
	defb 0ddh,036h,010h,014h,0ddh,036h,01ch,000h,0ddh,036h,01dh,004h,0ddh,036h,002h,003h	; 9ab8  .6...6...6...6..
	defb 011h,000h,000h,0cdh,003h,07fh,0cdh,0f3h,07eh,0ddh,07eh,01fh,021h,0e0h,09ah,0cdh	; 9ac8  ........~.~.!...
	defb 05ah,04ah,054h,01eh,000h,065h,06bh,0c3h,0d7h,078h,003h,0fch,004h,000h,003h,004h	; 9ad8  ZJT..ek..x......
	defb 0fdh,0fch,0fch,000h,0fdh,004h	; 9ae8

; ======================================================================
; CODIGO 0x9aee..0x9bb2  (196 bytes)
; ======================================================================


L_9AEE:
	call 07f1ch		;9aee
	call 07f2fh		;9af1
	call L_9B04		;9af4
	call L_9B5B		;9af7
	call L_9B9E		;9afa
	jp c,075d1h		;9afd
	call L_9B72		;9b00
	ret			;9b03
L_9B04:
	ld a,(ix+01fh)		;9b04
	cp 003h		;9b07
	jr c,L_9B0D		;9b09
	sub 003h		;9b0b
L_9B0D:
	dec a			;9b0d
	jr z,L_9B1D		;9b0e
	dec a			;9b10
	jr z,L_9B2C		;9b11
	ld a,(ix+00ah)		;9b13
	call L_9B4D		;9b16
	ld (ix+00ah),b		;9b19
	ret			;9b1c
L_9B1D:
	ld a,(ix+00ah)		;9b1d
	neg		;9b20
	call L_9B4D		;9b22
	ld a,b			;9b25
	neg		;9b26
	ld (ix+00ah),a		;9b28
	ret			;9b2b
L_9B2C:
	ld a,(ix+00ah)		;9b2c
	bit 7,a		;9b2f
	jr nz,L_9B40		;9b31
	cp 004h		;9b33
	ret c			;9b35
	ld de,00400h		;9b36
	call 078b3h		;9b39
	call 07efah		;9b3c
	ret			;9b3f
L_9B40:
	cp 0fdh		;9b40
	ret nc			;9b42
	ld de,0fc00h		;9b43
	call 078b3h		;9b46
	call 07efah		;9b49
	ret			;9b4c
L_9B4D:
	ld b,007h		;9b4d
	cp b			;9b4f
	jp nc,07efah		;9b50
	ld b,002h		;9b53
	cp b			;9b55
	jp c,07efah		;9b56
	ld b,a			;9b59
	ret			;9b5a
L_9B5B:
	dec (ix+002h)		;9b5b
	ret nz			;9b5e
	ld (ix+002h),006h		;9b5f
	ld a,r		;9b63
	bit 6,a		;9b65
	ld de,00200h		;9b67
	jr nz,L_9B6F		;9b6a
	ld de,0fe00h		;9b6c
L_9B6F:
	jp 07f03h		;9b6f
L_9B72:
	call L_9B90		;9b72
	bit 0,(ix+01ch)		;9b75
	ld de,0fd08h		;9b79
	jr z,L_9B81		;9b7c
	ld de,0fe04h		;9b7e
L_9B81:
	ld (hl),d			;9b81
	dec (ix+01dh)		;9b82
	ret nz			;9b85
	ld (ix+01dh),e		;9b86
	call L_9B90		;9b89
	inc (ix+01ch)		;9b8c
	ret			;9b8f
L_9B90:
	ld a,(ix+01fh)		;9b90
	dec a			;9b93
	ret nz			;9b94
	ld a,(0e303h)		;9b95
	and 003h		;9b98
	ret nz			;9b9a
	jp 058e9h		;9b9b
L_9B9E:
	ld h,(ix+006h)		;9b9e
	ld l,(ix+004h)		;9ba1
	call 04a46h		;9ba4
	ld a,(0e405h)		;9ba7
	ld c,a			;9baa
	ld a,(hl)			;9bab
	cp 0fdh		;9bac
	ret nc			;9bae
	cp c			;9baf
	ccf			;9bb0
	ret			;9bb1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9bb2..0x9bd9  (39 bytes)
DATA_9BB2:
	defb 021h,099h,0e4h,07eh,034h,0e6h,003h,021h,0c9h,09bh,0cdh,040h,06eh,0edh,05fh,0cbh	; 9bb2  !..~4..!...@n._.
	defb 06fh,0c8h,0ddh,036h,030h,0a8h,0c9h,000h,000h,000h,006h,000h,0ffh,080h,005h,000h	; 9bc2  o..60...........
	defb 0feh,000h,005h,000h,0fdh,080h,004h	; 9bd2

; ======================================================================
; CODIGO 0x9bd9..0x9c14  (59 bytes)
; ======================================================================


L_9BD9:
	ret			;9bd9
L_9BDA:
	xor a			;9bda
	ld (ix+014h),a		;9bdb
	ld (ix+00ch),a		;9bde
	inc a			;9be1
	ld (ix+01fh),a		;9be2
	ld (ix+002h),002h		;9be5
	ld bc,09604h		;9be9
	jp 0b12eh		;9bec
L_9BEF:
	call L_9C20		;9bef
	call L_9C41		;9bf2
	ret nc			;9bf5
	dec (ix+01fh)		;9bf6
	jr nz,$+82		;9bf9
	ld a,(ix+00ch)		;9bfb
	inc (ix+00ch)		;9bfe
	and 007h		;9c01
	ld hl,09c14h		;9c03
	call 04a6eh		;9c06
	ld (ix+01fh),a		;9c09
	call 058f5h		;9c0c
	ld b,0efh		;9c0f
	jp 04c40h		;9c11

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9c14..0x9c20  (12 bytes)
DATA_9C14:
	defb 020h,010h,030h,018h,024h,010h,030h,010h,096h,097h,098h,099h	; 9c14   .0.$.0.....

; ======================================================================
; CODIGO 0x9c20..0x9ca0  (128 bytes)
; ======================================================================


L_9C20:
	ld bc,00204h		;9c20
	ld hl,09c1ch		;9c23
L_9C26:
	dec (ix+002h)		;9c26
	ret nz			;9c29
	ld (ix+002h),b		;9c2a
	inc (ix+014h)		;9c2d
	ld a,(ix+014h)		;9c30
	cp c			;9c33
	jr c,L_9C3A		;9c34
	xor a			;9c36
	ld (ix+014h),a		;9c37
L_9C3A:
	call 04a6eh		;9c3a
	ld (ix+007h),a		;9c3d
	ret			;9c40
L_9C41:
	ld a,(ix+006h)		;9c41
	cp 020h		;9c44
	jr c,L_9C4B		;9c46
	cp 0c0h		;9c48
	ret c			;9c4a
L_9C4B:
	ld b,0e0h		;9c4b
	call 04c40h		;9c4d
	or a			;9c50
	ret			;9c51
L_9C52:
	call L_9C87		;9c52
	ld (ix+009h),004h		;9c55
	ld (ix+00ah),004h		;9c59
	ld (ix+002h),020h		;9c5d
	ld (ix+00dh),080h		;9c61
	ld (ix+00eh),000h		;9c65
	ld (ix+008h),004h		;9c69
	ld (ix+00ch),004h		;9c6d
	ld (ix+014h),008h		;9c71
	ld (ix+015h),0ffh		;9c75
	ld a,(ix+004h)		;9c79
	cp 060h		;9c7c
	ld a,018h		;9c7e
	jr c,L_9C83		;9c80
	inc a			;9c82
L_9C83:
	ld (ix+007h),a		;9c83
	ret			;9c86
L_9C87:
	ld a,(ix+004h)		;9c87
	cp 060h		;9c8a
	ld hl,0e482h		;9c8c
	jr c,L_9C94		;9c8f
	ld hl,0e492h		;9c91
L_9C94:
	ld (hl),000h		;9c94
	ret			;9c96
L_9C97:
	call L_9DAC		;9c97
	ld a,(ix+001h)		;9c9a
	call 04093h		;9c9d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ca0..0x9caa  (10 bytes)
DATA_9CA0:
	defb 0aah,09ch,0c1h,09ch,0edh,09ch,0feh,09ch,044h,09dh	; 9ca0  ........D.

; ======================================================================
; CODIGO 0x9caa..0x9ce9  (63 bytes)
; ======================================================================


L_9CAA:
	dec (ix+002h)		;9caa
	ret nz			;9cad
	ld a,(ix+00bh)		;9cae
	or a			;9cb1
	jr nz,L_9CBC		;9cb2
	ld (ix+002h),050h		;9cb4
	inc (ix+001h)		;9cb8
	ret			;9cbb
L_9CBC:
	ld (ix+001h),002h		;9cbc
	ret			;9cc0
L_9CC1:
	ld d,(ix+006h)		;9cc1
	ld e,(ix+004h)		;9cc4
	ld a,029h		;9cc7
	ld c,000h		;9cc9
	call 07647h		;9ccb
	dec (ix+001h)		;9cce
	ld (ix+002h),050h		;9cd1
	ret			;9cd5
L_9CD6:
	xor a			;9cd6
	or (ix+024h)		;9cd7
	ld hl,09ce9h		;9cda
	jr z,L_9CE2		;9cdd
	ld hl,09cebh		;9cdf
L_9CE2:
	ld bc,00702h		;9ce2
	call 07f7ch		;9ce5
	ret			;9ce8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9ce9..0x9ced  (4 bytes)
DATA_9CE9:
	defb 094h,098h,0f0h,0f4h	; 9ce9

; ======================================================================
; CODIGO 0x9ced..0x9d6c  (127 bytes)
; ======================================================================


L_9CED:
	ld hl,0e303h		;9ced
	ld a,r		;9cf0
	add a,(hl)			;9cf2
	and 00fh		;9cf3
	ret nz			;9cf5
	ld (ix+002h),003h		;9cf6
	inc (ix+001h)		;9cfa
	ret			;9cfd
L_9CFE:
	dec (ix+002h)		;9cfe
	ret nz			;9d01
	ld a,(ix+006h)		;9d02
	cp 010h		;9d05
	jr c,L_9D37		;9d07
	add a,008h		;9d09
	ld d,a			;9d0b
	ld a,(ix+004h)		;9d0c
	cp 060h		;9d0f
	ld b,010h		;9d11
	jr c,L_9D17		;9d13
	ld b,000h		;9d15
L_9D17:
	add a,b			;9d17
	ld e,a			;9d18
	inc (ix+015h)		;9d19
	ld a,(ix+015h)		;9d1c
	cp 006h		;9d1f
	jr nc,L_9D37		;9d21
	ld b,a			;9d23
	ld c,000h		;9d24
	ld a,r		;9d26
	bit 5,a		;9d28
	jr z,L_9D2E		;9d2a
	ld c,001h		;9d2c
L_9D2E:
	ld a,031h		;9d2e
	call 07647h		;9d30
	inc (ix+001h)		;9d33
	ret			;9d36
L_9D37:
	ld (ix+015h),0ffh		;9d37
	ld (ix+001h),000h		;9d3b
	ld (ix+002h),020h		;9d3f
	ret			;9d43
L_9D44:
	ld (ix+002h),003h		;9d44
	ld (ix+001h),003h		;9d48
	ret			;9d4c
L_9D4D:
	ld a,(ix+004h)		;9d4d
	cp 060h		;9d50
	ld bc,00ef0h		;9d52
	jr c,L_9D5A		;9d55
	ld bc,02c00h		;9d57
L_9D5A:
	add a,c			;9d5a
	ld (ix+007h),b		;9d5b
	ld (ix+009h),006h		;9d5e
	ld (ix+00ah),004h		;9d62
	ld (ix+004h),a		;9d66
	jp L_8221		;9d69

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9d6c..0x9d8b  (31 bytes)
DATA_9D6C:
	defb 03ah,006h,0e6h,0ddh,0beh,006h,011h,000h,002h,030h,003h,011h,000h,0feh,03ah,004h	; 9d6c  :........0....:.
	defb 000h,0feh,060h,021h,000h,006h,038h,003h,021h,000h,0fah,0cdh,0d7h,078h,0c9h	; 9d7c  ..`!..8.!....x.

; ======================================================================
; CODIGO 0x9d8b..0x9da8  (29 bytes)
; ======================================================================


L_9D8B:
	call 04857h		;9d8b
	ld c,000h		;9d8e
	ld a,(ix+00ah)		;9d90
	rla			;9d93
	rl c		;9d94
	ld a,(ix+008h)		;9d96
	rla			;9d99
	rl c		;9d9a
	ld a,c			;9d9c
	ld hl,09da8h		;9d9d
	call 04089h		;9da0
	ld a,(hl)			;9da3
	ld (ix+030h),a		;9da4
	ret			;9da7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9da8..0x9dac  (4 bytes)
DATA_9DA8:
	defb 0bch,0cch,0b8h,0c8h	; 9da8

; ======================================================================
; CODIGO 0x9dac..0x9df6  (74 bytes)
; ======================================================================


L_9DAC:
	ld a,(ix+006h)		;9dac
	cp 0e0h		;9daf
	ret nc			;9db1
	res 7,(ix+00dh)		;9db2
	ret			;9db6
L_9DB7:
	call L_9C87		;9db7
	ld (ix+009h),004h		;9dba
	ld (ix+00ah),004h		;9dbe
	ld (ix+002h),020h		;9dc2
	ld (ix+00dh),080h		;9dc6
	ld (ix+008h),008h		;9dca
	ld (ix+00ch),004h		;9dce
	ld (ix+014h),006h		;9dd2
L_9DD6:
	ld a,(0e361h)		;9dd6
	cp 009h		;9dd9
	ld a,01ah		;9ddb
	jr z,L_9DE9		;9ddd
	ld a,(ix+00bh)		;9ddf
	or a			;9de2
	ld a,05ah		;9de3
	jr z,L_9DE9		;9de5
	ld a,058h		;9de7
L_9DE9:
	ld (ix+007h),a		;9de9
	ret			;9dec
L_9DED:
	call L_9DAC		;9ded
	ld a,(ix+001h)		;9df0
	call 04093h		;9df3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9df6..0x9dfe  (8 bytes)
DATA_9DF6:
	defb 0feh,09dh,011h,09eh,01ch,09eh,05fh,09eh	; 9df6  ......_.

; ======================================================================
; CODIGO 0x9dfe..0x9e6e  (112 bytes)
; ======================================================================


L_9DFE:
	dec (ix+002h)		;9dfe
	ret nz			;9e01
	ld (ix+002h),028h		;9e02
	inc (ix+007h)		;9e06
	xor a			;9e09
	ld (0e482h),a		;9e0a
L_9E0D:
	inc (ix+001h)		;9e0d
	ret			;9e10
L_9E11:
	dec (ix+002h)		;9e11
	jr nz,L_9E32		;9e14
	ld (ix+002h),028h		;9e16
	jr L_9E0D		;9e1a
L_9E1C:
	dec (ix+002h)		;9e1c
	jr nz,L_9E32		;9e1f
	dec (ix+007h)		;9e21
	ld (ix+002h),020h		;9e24
	ld (ix+014h),006h		;9e28
	ld (ix+00ch),004h		;9e2c
	jr L_9E0D		;9e30
L_9E32:
	ld a,(ix+00ch)		;9e32
	or a			;9e35
	ret z			;9e36
	dec (ix+014h)		;9e37
	ret nz			;9e3a
	ld (ix+014h),006h		;9e3b
	dec (ix+00ch)		;9e3f
	ld a,(ix+004h)		;9e42
	cp 060h		;9e45
	ld bc,00118h		;9e47
	jr c,L_9E4F		;9e4a
	ld bc,00000h		;9e4c
L_9E4F:
	add a,c			;9e4f
	ld e,a			;9e50
	ld a,(ix+006h)		;9e51
	add a,008h		;9e54
	ld d,a			;9e56
	ld c,000h		;9e57
	ld a,00ch		;9e59
	call 07647h		;9e5b
	ret			;9e5e
L_9E5F:
	dec (ix+002h)		;9e5f
	ret nz			;9e62
	ld (ix+002h),020h		;9e63
	ld (ix+001h),000h		;9e67
	jp L_9DD6		;9e6b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e6e..0x9e93  (37 bytes)
DATA_9E6E:
	defb 0c9h,03ah,006h,0e6h,0ddh,0beh,006h,03eh,001h,030h,001h,03dh,0ddh,077h,024h,0ddh	; 9e6e  .:.....>.0.=.w$.
	defb 07eh,01fh,0b7h,011h,000h,004h,020h,003h,011h,000h,0fch,0cdh,0ach,078h,011h,000h	; 9e7e  ~..... ......x..
	defb 000h,0cdh,0b3h,078h,0c9h	; 9e8e

; ======================================================================
; CODIGO 0x9e93..0x9eed  (90 bytes)
; ======================================================================


L_9E93:
	call L_9CD6		;9e93
	ld a,(ix+001h)		;9e96
	or a			;9e99
	ret nz			;9e9a
	ld a,(ix+01fh)		;9e9b
	or a			;9e9e
	jr nz,L_9EB7		;9e9f
	ld hl,0e482h		;9ea1
	ld a,(hl)			;9ea4
	or a			;9ea5
	jr z,L_9EAE		;9ea6
	cp (ix+004h)		;9ea8
	ret c			;9eab
	jr L_9ECC		;9eac
L_9EAE:
	ld a,(0e604h)		;9eae
	cp (ix+004h)		;9eb1
	ret c			;9eb4
	jr L_9ECB		;9eb5
L_9EB7:
	ld hl,0e492h		;9eb7
	ld a,(hl)			;9eba
	or a			;9ebb
	jr z,L_9EC4		;9ebc
	cp (ix+004h)		;9ebe
	ret nc			;9ec1
	jr L_9ECC		;9ec2
L_9EC4:
	ld a,(0e604h)		;9ec4
	cp (ix+004h)		;9ec7
	ret nc			;9eca
L_9ECB:
	ld (hl),a			;9ecb
L_9ECC:
	ld de,00000h		;9ecc
	call 078ach		;9ecf
	ld a,(0e606h)		;9ed2
	cp (ix+006h)		;9ed5
	ld b,001h		;9ed8
	ld de,00600h		;9eda
	jr nc,L_9EE3		;9edd
	dec b			;9edf
	ld de,0fa00h		;9ee0
L_9EE3:
	ld (ix+024h),b		;9ee3
	call 078b3h		;9ee6
	inc (ix+001h)		;9ee9
	ret			;9eec

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9eed..0x9f16  (41 bytes)
DATA_9EED:
	defb 0ddh,036h,010h,00fh,0cdh,0c8h,078h,0ddh,036h,001h,000h,0ddh,036h,002h,001h,006h	; 9eed  .6....x.6...6...
	defb 000h,0ddh,07eh,004h,0feh,060h,038h,001h,004h,0ddh,070h,024h,0cdh,02fh,09fh,03eh	; 9efd  ..~..`8...p$./.>
	defb 0b0h,020h,002h,0c6h,010h,0ddh,077h,030h,0c9h	; 9f0d  . ....w0.

; ======================================================================
; CODIGO 0x9f16..0x9f1c  (6 bytes)
; ======================================================================


L_9F16:
	ld a,(ix+001h)		;9f16
	call 04093h		;9f19

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f1c..0x9f24  (8 bytes)
DATA_9F1C:
	defb 034h,09fh,052h,09fh,071h,09fh,08dh,09fh	; 9f1c  4.R.q...

; ======================================================================
; CODIGO 0x9f24..0x9f2b  (7 bytes)
; ======================================================================


L_9F24:
	ld (ix+002h),a		;9f24
	inc (ix+001h)		;9f27
	ret			;9f2a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f2b..0x9f2f  (4 bytes)
DATA_9F2B:
	defb 0ddh,035h,002h,0c9h	; 9f2b

; ======================================================================
; CODIGO 0x9f2f..0x9f4c  (29 bytes)
; ======================================================================


L_9F2F:
	ld a,(ix+024h)		;9f2f
	or a			;9f32
	ret			;9f33
L_9F34:
	call 078c8h		;9f34
	ld (ix+008h),004h		;9f37
	call L_9F2F		;9f3b
	call nz,078ddh		;9f3e
	ld a,(ix+01fh)		;9f41
	ld hl,09f4ch		;9f44
	call 04a6eh		;9f47
	jr $-38		;9f4a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f4c..0x9f52  (6 bytes)
DATA_9F4C:
	defb 018h,014h,010h,00ch,008h,004h	; 9f4c

; ======================================================================
; CODIGO 0x9f52..0x9f8e  (60 bytes)
; ======================================================================


L_9F52:
	dec (ix+002h)		;9f52
	ret nz			;9f55
	call 078c8h		;9f56
	res 3,(ix+010h)		;9f59
	ld a,(ix+030h)		;9f5d
	add a,008h		;9f60
	bit 0,(ix+01fh)		;9f62
	jr z,L_9F6A		;9f66
	add a,004h		;9f68
L_9F6A:
	ld (ix+030h),a		;9f6a
	ld a,004h		;9f6d
	jr $-75		;9f6f
L_9F71:
	dec (ix+002h)		;9f71
	ret nz			;9f74
	ld (ix+030h),0b4h		;9f75
	call 078c8h		;9f79
	ld (ix+00ah),004h		;9f7c
	bit 0,(ix+01fh)		;9f80
	call nz,078edh		;9f84
	res 4,(ix+010h)		;9f87
	jr $-103		;9f8b
L_9F8D:
	ret			;9f8d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f8e..0x9fad  (31 bytes)
DATA_9F8E:
	defb 0ddh,036h,025h,0c0h,011h,000h,002h,0ddh,07eh,006h,0d6h,078h,0d4h,075h,04ah,0cdh	; 9f8e  .6%.....~..x.uJ.
	defb 0b3h,078h,0ddh,07eh,004h,0d6h,058h,006h,000h,030h,001h,004h,0ddh,070h,01fh	; 9f9e  .x.~..X..0...p.

; ======================================================================
; CODIGO 0x9fad..0x9fcc  (31 bytes)
; ======================================================================


L_9FAD:
	ld (ix+02fh),000h		;9fad
	bit 0,(ix+01fh)		;9fb1
	ld de,00800h		;9fb5
	ld hl,0ff00h		;9fb8
	jr nz,L_9FC3		;9fbb
	ld de,0f800h		;9fbd
	ld hl,00100h		;9fc0
L_9FC3:
	jp L_99D8		;9fc3
L_9FC6:
	ld a,(ix+001h)		;9fc6
	call 04093h		;9fc9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9fcc..0x9fd4  (8 bytes)
DATA_9FCC:
	defb 0d4h,09fh,018h,0a0h,0d9h,09fh,018h,0a0h	; 9fcc  ........

; ======================================================================
; CODIGO 0x9fd4..0x9fff  (43 bytes)
; ======================================================================


L_9FD4:
	call 07f5bh		;9fd4
	jr c,$+55		;9fd7
L_9FD9:
	call 07f1ch		;9fd9
	call L_9FE6		;9fdc
	call 0a025h		;9fdf
	call 0a058h		;9fe2
	ret			;9fe5
L_9FE6:
	call L_940B		;9fe6
	ld a,001h		;9fe9
	jr c,L_9FF2		;9feb
	call L_9413		;9fed
	ret nc			;9ff0
	xor a			;9ff1
L_9FF2:
	ld (ix+01fh),a		;9ff2
	or a			;9ff5
	ld a,(ix+004h)		;9ff6
	jr z,L_9FFD		;9ff9
	add a,008h		;9ffb
L_9FFD:
	and 0f8h		;9ffd

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9fff..0xa000  (1 bytes)
DATA_9FFF:
	defb 0ddh	; 9fff

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
	cp 083h		;605c   ; 0xF4: otro fundido
	jp z,L_6180		;605e
	cp 084h		;6061   ; 0xF5: la subida
	jp z,L_6187		;6063
	cp 085h		;6066   ; 0xF6: los canales del SCC al PSG
	jp z,L_6192		;6068
	cp 081h		;606b   ; 0xF2: y de vuelta
	jp z,L_61A9		;606d
	cp 082h		;6070   ; 0xF3: al PSG y sigue
	call z,L_6212		;6072
	ld hl,0e281h		;6075   ; apunta al sonido que se esta arrancando
	ld (hl),c			;6078   ; el sonido que arranca
	ld hl,07504h		;6079   ; la cabecera: 0x7504 + 2 x numero
	ld a,c			;607c
	add a,c			;607d
	ld e,a			;607e
	ld d,000h		;607f
	add hl,de			;6081
	ld e,(hl)			;6082   ; su direccion
	inc hl			;6083
	ld d,(hl)			;6084
	ex de,hl			;6085   ; HL = la cabecera
	ld de,0e282h		;6086   ; apunta a la cabecera del sonido que se arranca (18 bytes)
	ld bc,00012h		;6089   ; 18 bytes
	ldir		;608c
	ld ix,0e284h		;608e   ; las palabras de partitura, de 0xE284 en adelante
	ld hl,0e282h		;6092   ; apunta a la cabecera del sonido que se arranca (18 bytes)
	bit 7,(hl)		;6095   ; bit 7: el canal 1 (0xE000)
	jr z,L_60A5		;6097
	inc hl			;6099   ; la prioridad
	ld a,(hl)			;609a
	ld hl,0e001h		;609b   ; el canal
	call L_6122		;609e
	inc ix		;60a1   ; la palabra siguiente
	inc ix		;60a3
L_60A5:
	ld hl,0e282h		;60a5   ; apunta a la cabecera del sonido que se arranca (18 bytes)
	bit 6,(hl)		;60a8   ; bit 6: el canal 2 (0xE040)
	jr z,L_60B8		;60aa
	inc hl			;60ac
	ld a,(hl)			;60ad
	ld hl,0e041h		;60ae
	call L_6122		;60b1
	inc ix		;60b4
	inc ix		;60b6
L_60B8:
	ld hl,0e282h		;60b8   ; apunta a la cabecera del sonido que se arranca (18 bytes)
	bit 5,(hl)		;60bb
	jr z,L_60CB		;60bd
	inc hl			;60bf
	ld a,(hl)			;60c0
	ld hl,0e081h		;60c1
	call L_6122		;60c4
	inc ix		;60c7
	inc ix		;60c9
L_60CB:
	ld hl,0e282h		;60cb   ; apunta a la cabecera del sonido que se arranca (18 bytes)
	bit 4,(hl)		;60ce   ; bit 4: el canal 4 (0xE0C0)
	jr z,L_60DE		;60d0
	inc hl			;60d2
	ld a,(hl)			;60d3
	ld hl,0e0c1h		;60d4
	call L_6122		;60d7
	inc ix		;60da
	inc ix		;60dc
L_60DE:
	ld hl,0e282h		;60de   ; apunta a la cabecera del sonido que se arranca (18 bytes)
	bit 3,(hl)		;60e1   ; bit 3: el canal 5 (0xE100)
	jr z,L_60F1		;60e3
	inc hl			;60e5
	ld a,(hl)			;60e6
	ld hl,0e101h		;60e7
	call L_6122		;60ea
	inc ix		;60ed
	inc ix		;60ef
L_60F1:
	ld hl,0e282h		;60f1   ; apunta a la cabecera del sonido que se arranca (18 bytes)
	bit 2,(hl)		;60f4
	jr z,L_6104		;60f6
	inc hl			;60f8
	ld a,(hl)			;60f9
	ld hl,0e141h		;60fa
	call L_6122		;60fd
	inc ix		;6100
	inc ix		;6102
L_6104:
	ld hl,0e282h		;6104   ; apunta a la cabecera del sonido que se arranca (18 bytes)
	bit 1,(hl)		;6107
	jr z,L_6117		;6109
	inc hl			;610b
	ld a,(hl)			;610c
	ld hl,0e181h		;610d
	call L_6122		;6110
	inc ix		;6113
	inc ix		;6115
L_6117:
	ld hl,0e282h		;6117   ; apunta a la cabecera del sonido que se arranca (18 bytes)
	bit 0,(hl)		;611a
	ret z			;611c
	inc hl			;611d
	ld a,(hl)			;611e
	ld hl,0e1c1h		;611f
L_6122:
	cp (hl)			;6122
	ret c			;6123
	ex de,hl			;6124   ; DE = el canal + 1
	ld (de),a			;6125   ; la prioridad
	dec de			;6126   ; el byte de antes...
	ld hl,0e281h		;6127   ; apunta al sonido que se esta arrancando
	ld a,(hl)			;612a   ; ...el numero de sonido
	ld (de),a			;612b
	inc de			;612c   ; el canal + 2
	inc de			;612d
	ld a,(ix+000h)		;612e   ; la partitura, bajo
	ld (de),a			;6131
	inc de			;6132
	ld a,(ix+001h)		;6133   ; alto
	ld (de),a			;6136
	inc de			;6137
	ld hl,06144h		;6138   ; el resto del canal de 0x6144 (12 bytes): la cuenta a 1 y lo demas a 0
	ld bc,0003ch		;613b
	ldir		;613e
	call L_62A9		;6140
	ret			;6143

; ----------------------------------------------------------------------
; DATOS leido_6144: 60 bytes que lee p10:613E al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:613E (60 bytes)
;   0x6144..0x6180  (60 bytes)
DATA_leido_6144:
	defb 001h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6144  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6154  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6164  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 6174  ............

; ======================================================================
; CODIGO 0x6180..0x64dd  (861 bytes)
; ======================================================================


L_6180:
	ld hl,0e280h		;6180   ; 0xF0: sin pausa
	res 0,(hl)		;6183
	jr L_61A1		;6185
L_6187:
	ld hl,0e294h		;6187   ; 0xF4: 37 cuadros y 10 pasos
	ld (hl),025h		;618a
	inc hl			;618c
	ld (hl),00ah		;618d
	jp L_619A		;618f
L_6192:
	ld hl,0e294h		;6192   ; 0xF1: 37 cuadros y 10 pasos
	ld (hl),025h		;6195
	inc hl			;6197
	ld (hl),00ah		;6198
L_619A:
	ld hl,0e280h		;619a   ; la pausa (0xE280 bit 0) sin subida
	set 0,(hl)		;619d
	res 4,(hl)		;619f
L_61A1:
	ld hl,0e296h		;61a1   ; las cuentas a 0
	xor a			;61a4
	ld (hl),a			;61a5
	inc hl			;61a6
	ld (hl),a			;61a7
	ret			;61a8
L_61A9:
	ld hl,0e280h		;61a9   ; 0xF2: vuelven los canales del SCC
	bit 1,(hl)		;61ac
	ld b,000h		;61ae
	jr nz,L_61B4		;61b0
	ld b,001h		;61b2
L_61B4:
	res 1,(hl)		;61b4
	bit 3,(hl)		;61b6   ; los habia en pausa?
	jr z,L_61BE		;61b8
	res 3,(hl)		;61ba
	set 0,(hl)		;61bc   ; entonces la pausa otra vez
L_61BE:
	ld hl,0e200h		;61be
	ld de,0e0c0h		;61c1
	call L_62A3		;61c4   ; 0x58 bytes
	ld a,(0e00dh)		;61c7   ; los canales del SCC que sonaban (0xE00D)
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
	ld (0988fh),a		;61ff   ; al SCC: los canales del SCC que suenan (un bit cada uno)
	ld a,00bh		;6202   ; el banco 11 otra vez
	ld (09000h),a		;6204
	ld a,0ffh		;6207   ; 0xE2A0-0xE2A1 = 0xFF
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
	bit 0,(hl)		;621f   ; en pausa?
	jr z,L_6227		;6221
	res 0,(hl)		;6223   ; la pausa al bit 3
	set 3,(hl)		;6225
L_6227:
	ld hl,0e0c0h		;6227   ; guarda los canales 3-4 en 0xE200
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
	ld (0988fh),a		;6288   ; al SCC: ningun canal suena
	xor a			;628b
	ld (0988bh),a		;628c   ; los 5 volumenes del SCC a 0
	ld (0988ch),a		;628f   ; al SCC: el volumen del canal 2 del SCC
	ld (0988dh),a		;6292   ; al SCC: el volumen del canal 3 del SCC
	ld (0988eh),a		;6295   ; al SCC: el volumen del canal 4 del SCC
	ld a,00bh		;6298
	ld (09000h),a		;629a
	ld a,b			;629d
	or a			;629e
	ret nz			;629f
	ld c,003h		;62a0   ; C = 2
	ret			;62a2
L_62A3:
	ld bc,00040h		;62a3   ; copia 0x58 bytes: dos canales
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
	ld hl,0e280h		;6394   ; los canales del SCC en el PSG?
	bit 1,(hl)		;6397
	jp nz,L_6410		;6399
	ld a,(0e280h)		;639c   ; en pausa...
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
	ld a,008h		;6410   ; solo los canales 3 y 4
	ld (0e299h),a		;6412   ; guarda el bit del canal que se interpreta (1, 2, 4... 0x80)
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
	ld l,(ix+002h)		;6446   ; lee por donde va la partitura (bajo)
	ld h,(ix+003h)		;6449   ; lee por donde va la partitura (alto)
L_644C:
	ld a,(hl)			;644c   ; el byte de la partitura
	cp 0ffh		;644d   ; 0xFF: acaba el canal
	jp z,L_6AFC		;644f
	cp 0d0h		;6452   ; una orden (0xD0 o mas)...
	jr c,L_645D		;6454
	call L_6B3D		;6456
	inc hl			;6459   ; el siguiente byte
	jp L_644C		;645a
L_645D:
	bit 0,(ix+009h)		;645d   ; una nota: el modo
	jp nz,L_6474		;6461   ; bit 0: el PSG con la nota en la cifra alta
	bit 1,(ix+009h)		;6464   ; mira el bit 1 de el modo del canal (orden 0xFE)
	jp nz,L_64EA		;6468
	ld a,(ix+009h)		;646b   ; lee el modo del canal (orden 0xFE)
	and 01ch		;646e
	jp nz,L_6563		;6470
	ret			;6473   ; ninguno: no lee
L_6474:
	ld a,(hl)			;6474   ; la cifra baja: la duracion
	and 00fh		;6475
	ld b,a			;6477
	ld a,(ix+014h)		;6478   ; la unidad (IX+14)
	jr z,L_6486		;647b   ; 0: la unidad
	ld e,a			;647d
L_647E:
	add a,e			;647e   ; la unidad x la cifra
	jr nc,L_6484		;647f
	inc (ix+02ch)		;6481
L_6484:
	djnz L_647E		;6484
L_6486:
	ld (ix+004h),a		;6486   ; la cuenta de la nota
	ld a,(hl)			;6489   ; la cifra alta: la nota
	and 0f0h		;648a
	rrca			;648c
	rrca			;648d
	rrca			;648e
	rrca			;648f
	call L_65EE		;6490
	bit 7,(ix+009h)		;6493   ; en la bateria: fuera
	ret nz			;6497
	cp 00ch		;6498   ; 12 o mas: un silencio
	jr nc,L_64D4		;649a
	ld hl,064ddh		;649c   ; el divisor de la nota (0x64DD)
	ld e,a			;649f
	ld d,000h		;64a0
	add hl,de			;64a2
	ld l,(hl)			;64a3
	ld h,000h		;64a4
	ld a,(ix+016h)		;64a6   ; la octava
	or a			;64a9
	jr z,L_64B0		;64aa   ; 0: tal cual
	ld b,a			;64ac
L_64AD:
	add hl,hl			;64ad   ; x 2 por octava
	djnz L_64AD		;64ae
L_64B0:
	ld (ix+010h),l		;64b0   ; el divisor en IX+10/11
	ld (ix+011h),h		;64b3
	ld e,(ix+015h)		;64b6   ; el volumen (IX+15)
	ld a,(0e280h)		;64b9   ; en pausa o subiendo...
	and 011h		;64bc
	call nz,L_6AD8		;64be
	ld (ix+012h),e		;64c1   ; el volumen
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
; DATOS tabla_64DD: tabla que se lee desde HL = 0x64DD con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p10:649C (13 bytes)
;   0x64dd..0x64ea  (13 bytes)
DATA_tabla_64DD:
	defb 06ah,064h,05eh,059h,054h,04fh,04ah,046h,042h,03fh,03bh,038h,035h	; 64dd  jd^YTOJFB?.85

; ======================================================================
; CODIGO 0x64ea..0x6b52  (1640 bytes)
; ======================================================================


L_64EA:
	ld a,(ix+00dh)		;64ea   ; el SCC: IX+0D & 3
	and 003h		;64ed
	jr z,L_6554		;64ef   ; 0: un silencio
	cp 001h		;64f1   ; 1: solo el volumen
	jr z,L_652B		;64f3
	ld a,(hl)			;64f5   ; el byte de la nota
	bit 6,(ix+00eh)		;64f6   ; con IX+0E bit 6...
	jr nz,L_6517		;64fa
	bit 5,(ix+00eh)		;64fc   ; ...o bit 5...
	jr nz,L_651C		;6500
	and 0f0h		;6502   ; si no: la cifra alta es el volumen...
	ld b,a			;6504
	xor (hl)			;6505   ; ...la baja el periodo alto
	ld d,a			;6506
	inc hl			;6507   ; el periodo bajo
	ld a,(hl)			;6508
	ld (ix+010h),a		;6509   ; en IX+10/11
	ld (ix+011h),d		;650c
	ld a,b			;650f   ; el volumen
	rrca			;6510
	rrca			;6511
	rrca			;6512
	rrca			;6513
	ld b,a			;6514
	jr L_652F		;6515
L_6517:
	ld (ix+010h),a		;6517   ; bit 6: solo el periodo bajo
	jr L_6543		;651a
L_651C:
	and 0f0h		;651c   ; bit 5: la cifra alta el volumen...
	rrca			;651e
	rrca			;651f
	rrca			;6520
	rrca			;6521
	ld b,a			;6522
	ld a,(hl)			;6523   ; ...y la baja el periodo alto
	and 00fh		;6524
	ld (ix+011h),a		;6526
	jr L_652F		;6529
L_652B:
	ld a,(hl)			;652b   ; solo el volumen, en la cifra baja
	and 00fh		;652c
	ld b,a			;652e
L_652F:
	ld a,(0e299h)		;652f   ; los canales 1-3 del PSG...
	cp 008h		;6532
	jr nc,L_653E		;6534
	bit 2,(ix+00dh)		;6536   ; ...con IX+0D bit 2 (ruido)...
	jr z,L_653E		;653a
	ld b,010h		;653c   ; ...el volumen 16: la envolvente
L_653E:
	inc b			;653e   ; + 2
	inc b			;653f
	ld (ix+012h),b		;6540   ; el volumen
L_6543:
	ld e,(ix+012h)		;6543   ; en pausa o subiendo, mas bajo
	ld a,(0e280h)		;6546   ; lee el estado del sonido (bits: pausa, SCC...)
	and 011h		;6549
	call nz,L_6AD8		;654b
	ld (ix+012h),e		;654e
	call L_65F6		;6551   ; la envolvente desde el principio
L_6554:
	bit 7,(ix+009h)		;6554   ; en la bateria: fuera
	ret nz			;6558
	call L_65EE		;6559
	ld a,(ix+013h)		;655c   ; la duracion (IX+13)
	ld (ix+004h),a		;655f   ; es la cuenta
	ret			;6562
L_6563:
	set 7,(ix+009h)		;6563   ; la bateria: IX+09 bit 7
	call L_6474		;6567   ; la nota de la bateria
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
	ex de,hl			;6577   ; HL = el guion
	ld a,(hl)			;6578
L_6579:
	set 1,(ix+009h)		;6579   ; se lee como el SCC (bit 1)
	call L_644C		;657d   ; hasta su nota
	res 1,(ix+009h)		;6580   ; pone a cero el bit 1 de el modo del canal (orden 0xFE)
	res 7,(ix+009h)		;6584   ; pone a cero el bit 7 de el modo del canal (orden 0xFE)
	ld a,(ix+013h)		;6588   ; la duracion...
	ld (ix+019h),a		;658b   ; ...en IX+19
	inc hl			;658e   ; por donde va el guion
	ld (ix+017h),l		;658f   ; guarda por donde va el guion de bateria (bajo)
	ld (ix+018h),h		;6592   ; guarda por donde va el guion de bateria (alto)
	set 0,(ix+00eh)		;6595   ; IX+0E bit 0: la bateria en marcha
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
	res 5,(ix+03ch)		;6608   ; IX+0E bit 4 a cero
	ld a,(ix+00fh)		;660c   ; IX+0F bits 3 y 5 a cero
	and 0d7h		;660f
	ld (ix+00fh),a		;6611
	xor a			;6614   ; IX+1D-20 a cero
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
	set 2,(ix+00fh)		;663b   ; IX+0F bit 2: la envolvente baja
	ld a,(ix+012h)		;663f   ; el volumen
	bit 7,(ix+00eh)		;6642   ; con IX+0E bit 7...
	jr z,L_664F		;6646
	ld e,(ix+02fh)		;6648   ; ...menos el de IX+15...
	sub e			;664b
	call m,L_6685		;664c   ; ...sin bajar de 0
L_664F:
	ld (ix+00ch),a		;664f   ; el volumen de ahora
	set 1,(ix+030h)		;6652
	ld a,(0e299h)		;6656   ; los canales 1-3 con ruido...
	cp 008h		;6659
	jr nc,L_6662		;665b
	bit 2,(ix+00dh)		;665d   ; mira el bit 2 de IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ret nz			;6661   ; ...no
L_6662:
	bit 0,(ix+030h)		;6662
	jr z,L_6675		;6666
	res 2,(ix+030h)		;6668
	res 1,(ix+030h)		;666c
	res 2,(ix+00fh)		;6670
	ret			;6674
L_6675:
	bit 1,(ix+00fh)		;6675   ; IX+0F bit 1...
	ret z			;6679
	ld a,(ix+025h)		;667a   ; ...el volumen de IX+25
	ld (ix+00ch),a		;667d
	res 2,(ix+00fh)		;6680   ; y sin bajar
	ret			;6684
L_6685:
	xor a			;6685
	ret			;6686
L_6687:
	bit 0,(ix+00eh)		;6687   ; entre notas: la bateria en marcha?
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
	dec (ix+019h)		;66b2   ; la cuenta del golpe
	ret nz			;66b5   ; aun no: fuera
	ld l,(ix+017h)		;66b6   ; el guion
	ld h,(ix+018h)		;66b9   ; lee por donde va el guion de bateria (alto)
	ld a,(hl)			;66bc   ; el byte
	cp 0ffh		;66bd   ; 0xFF: acaba
	jr z,L_66C9		;66bf
	set 7,(ix+009h)		;66c1   ; el golpe siguiente
	call L_6579		;66c5
	ret			;66c8
L_66C9:
	res 0,(ix+00eh)		;66c9   ; se acabo: la bateria parada
	xor a			;66cd   ; volumen y modo a 0
	ld (ix+00ch),a		;66ce
	ld a,(ix+00dh)		;66d1
	and 0f0h		;66d4
	ld (ix+00dh),a		;66d6   ; guarda IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ret			;66d9
L_66DA:
	ld e,(ix+010h)		;66da   ; el divisor
	ld d,(ix+011h)		;66dd
	bit 1,(ix+00eh)		;66e0   ; IX+0E bit 1...
	jr z,L_66EE		;66e4
	ld a,(ix+026h)		;66e6   ; ...+ IX+26 (orden 0xEE)
	add a,e			;66e9
	ld e,a			;66ea
	jr nc,L_66EE		;66eb
	inc d			;66ed
L_66EE:
	ld (ix+00ah),e		;66ee   ; el periodo en IX+0A/0B
	ld (ix+00bh),d		;66f1
	ret			;66f4
L_66F5:
	inc (ix+01eh)		;66f5   ; la cuenta del vibrato + 1
	ld a,(ix+01eh)		;66f8
	ld b,(ix+00eh)		;66fb   ; IX+0E
	bit 4,b		;66fe   ; bit 4: ya empezado
	jr nz,L_6714		;6700
	bit 3,b		;6702   ; bit 3: con espera
	jr z,L_6714		;6704
	cp (ix+01ah)		;6706   ; la espera (IX+1A)...
	ret nz			;6709
	ld (ix+01eh),000h		;670a   ; ...cumplida: empieza
	set 4,(ix+00eh)		;670e   ; pone a uno el bit 4 de IX+0E (marcas de las ordenes 0xEE-0xF7)
	jr L_6718		;6712
L_6714:
	cp (ix+01bh)		;6714   ; el paso (IX+1B)
	ret nz			;6717
L_6718:
	ld e,(ix+00ah)		;6718   ; el periodo
	ld d,(ix+00bh)		;671b
	ld b,(ix+01ch)		;671e   ; cuanto (IX+1C)
	ld a,(ix+01dh)		;6721   ; arriba o abajo, alternando
	cpl			;6724
	ld (ix+01dh),a		;6725
	and a			;6728
	ld a,e			;6729
	jr nz,L_6733		;672a
	add a,b			;672c   ; + cuanto
	ld e,a			;672d
	jr nc,L_6738		;672e
	inc d			;6730
	jr L_6738		;6731
L_6733:
	sub b			;6733   ; - cuanto
	ld e,a			;6734
	jr nc,L_6738		;6735
	dec d			;6737
L_6738:
	ld (ix+00ah),e		;6738   ; el periodo nuevo
	ld (ix+00bh),d		;673b
	ld (ix+01eh),000h		;673e   ; la cuenta a 0
	ret			;6742
L_6743:
	ld a,(0e299h)		;6743   ; los canales 1-3 con ruido: no
	cp 008h		;6746
	jr nc,L_674F		;6748
	bit 2,(ix+00dh)		;674a   ; mira el bit 2 de IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ret nz			;674e
L_674F:
	call L_6756		;674f
	ld (ix+00ch),e		;6752   ; a IX+0C
	ret			;6755
L_6756:
	ld e,(ix+00ch)		;6756   ; el volumen
	inc (ix+01fh)		;6759   ; la cuenta de la envolvente + 1
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
	bit 3,(ix+00fh)		;6775   ; bit 5: la caida final
	jr nz,L_67F3		;6779
	bit 2,(ix+00fh)		;677b   ; bit 3: el sostenido
	jr nz,L_67D3		;677f
	bit 1,(ix+030h)		;6781   ; bit 2: el ataque bajando
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
	ld a,e			;67c0   ; el ataque: sube 1...
	inc a			;67c1
	ld e,a			;67c2
	cp (ix+012h)		;67c3   ; ...hasta el volumen de la nota
	ret c			;67c6
	set 2,(ix+00fh)		;67c7
	ld e,(ix+012h)		;67cb   ; llega: ya baja
	ld (ix+01fh),000h		;67ce
	ret			;67d2
L_67D3:
	ld a,e			;67d3   ; baja 1...
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
	ld a,b			;67e5   ; ...hasta la cuenta de IX+21
	cp (ix+021h)		;67e6
	ret c			;67e9
	ld (ix+01fh),000h		;67ea
	set 3,(ix+00fh)		;67ee   ; y el sostenido
	ret			;67f2
L_67F3:
	bit 4,(ix+00fh)		;67f3   ; bit 4: el sostenido de golpe
	jp nz,L_6822		;67f7
	ld a,b			;67fa   ; cada IX+22 cuadros...
	cp (ix+022h)		;67fb
	ret nz			;67fe
	ld a,e			;67ff   ; ...baja 1
	dec a			;6800
	jp m,L_681D		;6801
	cp (ix+034h)		;6804
	jr c,L_681D		;6807
	ld e,a			;6809
	inc (ix+020h)		;680a   ; IX+20 + 1...
	ld a,(ix+020h)		;680d
	cp (ix+023h)		;6810   ; ...hasta IX+23: la caida
	ld (ix+01fh),000h		;6813
	ret nz			;6817
	set 5,(ix+00fh)		;6818
	ret			;681c
L_681D:
	ld a,(ix+034h)		;681d   ; baja IX+22 de una vez
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
	ld a,b			;6835   ; a los IX+23 cuadros: la caida
	cp (ix+023h)		;6836
	ret nz			;6839
	set 5,(ix+00fh)		;683a
	ret			;683e
L_683F:
	ld a,(ix+024h)		;683f   ; la caida: cuando la nota llega a IX+24...
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
	ld hl,0e296h		;6a80   ; la cuenta de cuadros
	inc (hl)			;6a83
	ld a,(hl)			;6a84
	cp b			;6a85
	ret nz			;6a86   ; aun no
	ld (hl),000h		;6a87   ; un paso mas
	inc hl			;6a89
	inc (hl)			;6a8a
	ld a,(hl)			;6a8b
	cp c			;6a8c   ; todos: se acaba
	ret nz			;6a8d
	ld hl,0e280h		;6a8e   ; sin pausa
	res 0,(hl)		;6a91
	xor a			;6a93   ; las cuentas a 0
	ld hl,0e296h		;6a94
	ld (hl),a			;6a97
	inc hl			;6a98
	ld (hl),a			;6a99
	ld a,(0e040h)		;6a9a   ; el sonido del canal 2...
	ld e,a			;6a9d
	ld a,(0e080h)		;6a9e   ; ...y el del 3 iguales?
	cp e			;6aa1
	jr nz,L_6AB2		;6aa2
	ld ix,0e080h		;6aa4   ; entonces acaban el 3 y el 4
	call L_6AFC		;6aa8
	ld ix,0e0c0h		;6aab
	call L_6AFC		;6aaf
L_6AB2:
	ld de,00040h		;6ab2   ; y los canales 1, 2, 5, 6, 7 y 8
	ld ix,0e000h		;6ab5   ; apunta a los 8 canales de sonido (0x2C bytes cada uno)
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
	ld a,(0e040h)		;6ad8   ; el volumen con el fundido: el sonido del canal 2...
	ld b,a			;6adb
	ld a,(0e080h)		;6adc
	cp b			;6adf   ; ...distinto del del 3...
	jr z,L_6AE8		;6ae0
	ld a,(0e299h)		;6ae2   ; ...y el canal 3 o 4: no
	and 0f3h		;6ae5
	ret z			;6ae7
L_6AE8:
	bit 2,(ix+00dh)		;6ae8   ; con ruido: 0
	jr nz,L_6AF9		;6aec
	ld a,(0e297h)		;6aee   ; el volumen - los pasos del fundido
	ld b,a			;6af1
	ld a,e			;6af2
	sub b			;6af3
	ld e,000h		;6af4
	ret m			;6af6   ; sin bajar de 0
	ld e,a			;6af7
	ret			;6af8
L_6AF9:
	ld e,000h		;6af9
	ret			;6afb
L_6AFC:
	xor a			;6afc   ; acaba el canal: todo a 0
	ld (ix+000h),a		;6afd   ; guarda el canal en marcha (su sonido)
	ld (ix+001h),a		;6b00   ; guarda el operando de la orden 0xDE
	ld (ix+005h),a		;6b03
	ld (ix+006h),a		;6b06
	ld (ix+00ah),a		;6b09
	ld (ix+00bh),a		;6b0c
	ld (ix+00ch),a		;6b0f
	ld (ix+00dh),a		;6b12   ; guarda IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ld (ix+00eh),a		;6b15   ; guarda IX+0E (marcas de las ordenes 0xEE-0xF7)
	ld (ix+00fh),a		;6b18
	ld a,(0e299h)		;6b1b   ; el bit del canal
	cp 008h		;6b1e   ; los del SCC: fuera
	ret nc			;6b20
	nop			;6b21
	cp 004h		;6b22   ; el canal 3...
	ld hl,0e29ch		;6b24   ; 0xE29C: el ruido
	jr nz,L_6B38		;6b27
	res 0,(hl)		;6b29   ; el bit 1 a cero
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
	and 01fh		;6b42   ; & 0x1F
	push hl			;6b44   ; la partitura se guarda en la pila
	ld hl,06b52h		;6b45   ; la tabla de 0x6B52
	add a,a			;6b48   ; x 2
	ld e,a			;6b49
	ld d,000h		;6b4a
	add hl,de			;6b4c
	ld e,(hl)			;6b4d   ; el destino
	inc hl			;6b4e
	ld d,(hl)			;6b4f
	ex de,hl			;6b50
	jp (hl)			;6b51   ; salta alli (el destino saca HL de la pila)

; ----------------------------------------------------------------------
; DATOS tabla_6B52: tabla que se lee desde HL = 0x6B52 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p10:6B45 (1 bytes)
;   0x6b52..0x6b53  (1 bytes)
DATA_tabla_6B52:
	defb 090h	; 6b52

; ----------------------------------------------------------------------
; DATOS leido_6B53: 61 bytes que leen p10:6B4F, p10:6B4D al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 6 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p10:6B4F, p10:6B4D (61 bytes)
;   0x6b53..0x6b90  (61 bytes)
DATA_leido_6B53:
	defb 06bh,0a6h,06bh,090h,06bh,0a6h,06bh,0c3h,06bh,0edh,06bh,001h,06ch,011h,06ch,023h	; 6b53  k.k.k.k.k.k.l.l#
	defb 06ch,032h,06ch,03dh,06ch,05ch,06ch,0afh,06ch,0b9h,06ch,0dch,06ch,0e7h,06ch,0edh	; 6b63  l2l=l\l.l.l.l.l.
	defb 06ch,0f7h,06ch,012h,06dh,021h,06dh,027h,06dh,02dh,06dh,033h,06dh,03dh,06dh,048h	; 6b73  l.l.m!m'm-m3m=mH
	defb 06dh,0ach,06dh,0b7h,06dh,0bfh,06dh,0d9h,06dh,0eeh,06dh,0f1h,06dh	; 6b83  m.m.m.m.m.m.m

; ======================================================================
; CODIGO 0x6b90..0x6c01  (113 bytes)
; ======================================================================


L_6B90:
	pop hl			;6b90
L_6B91:
	res 7,(ix+00eh)		;6b91
	ld a,(hl)			;6b95
	and 003h		;6b96
	ld (ix+00dh),a		;6b98
	ld b,a			;6b9b
	inc hl			;6b9c
	ld a,(hl)			;6b9d
	ld (ix+013h),a		;6b9e
	ld a,b			;6ba1
	or a			;6ba2
	ret nz			;6ba3
	dec hl			;6ba4
	ret			;6ba5
L_6BA6:
	pop hl			;6ba6
	ld a,(0e299h)		;6ba7
	cp 004h		;6baa
	ld a,(0e29ch)		;6bac
	jr nz,L_6BBA		;6baf
	set 0,a		;6bb1
	res 1,a		;6bb3
	ld (0e29ch),a		;6bb5
	jr L_6B91		;6bb8
L_6BBA:
	set 2,a		;6bba
	res 3,a		;6bbc
	ld (0e29ch),a		;6bbe
	jr L_6B91		;6bc1
L_6BC3:
	pop hl			;6bc3
	inc hl			;6bc4
	ld a,(hl)			;6bc5
	and 01fh		;6bc6
	ld b,a			;6bc8
	ld a,(0e299h)		;6bc9
	cp 004h		;6bcc
	ld a,b			;6bce
	jr nz,L_6BDF		;6bcf
	ld (0e29ah),a		;6bd1
	ld a,(0e29ch)		;6bd4
	set 0,a		;6bd7
	res 1,a		;6bd9
	ld (0e29ch),a		;6bdb
	ret			;6bde
L_6BDF:
	ld (0e29bh),a		;6bdf
	ld a,(0e29ch)		;6be2
	set 2,a		;6be5
	res 3,a		;6be7
	ld (0e29ch),a		;6be9
	ret			;6bec
L_6BED:
	pop hl			;6bed
	inc hl			;6bee
	res 3,(ix+00dh)		;6bef
	ld a,(hl)			;6bf3
	ld (0e29dh),a		;6bf4
	ld de,0e29ch		;6bf7
	ld a,(de)			;6bfa
	set 5,a		;6bfb
	ld (de),a			;6bfd
	jp L_6C02		;6bfe

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c01..0x6c02  (1 bytes)
DATA_6C01:
	defb 0e1h	; 6c01

; ======================================================================
; CODIGO 0x6c02..0x6c11  (15 bytes)
; ======================================================================


L_6C02:
	inc hl			;6c02
	ld a,(hl)			;6c03
	ld (0e29fh),a		;6c04
	ld de,0e29ch		;6c07
	ld a,(de)			;6c0a
	set 6,a		;6c0b
	ld (de),a			;6c0d
	jp L_6C12		;6c0e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c11..0x6c12  (1 bytes)
DATA_6C11:
	defb 0e1h	; 6c11

; ======================================================================
; CODIGO 0x6c12..0x6d27  (277 bytes)
; ======================================================================


L_6C12:
	inc hl			;6c12
	ld a,(hl)			;6c13
	ld (0e29eh),a		;6c14
	ld de,0e29ch		;6c17
	ld a,(de)			;6c1a
	set 7,a		;6c1b
	ld (de),a			;6c1d
	set 2,(ix+00dh)		;6c1e
	ret			;6c22
L_6C23:
	pop hl			;6c23
L_6C24:
	ld de,0e29ch		;6c24
	xor a			;6c27
	ld (de),a			;6c28
	ld a,(ix+00dh)		;6c29   ; IX+0D bits 2-3 a cero
	and 0f3h		;6c2c
	ld (ix+00dh),a		;6c2e   ; guarda IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ret			;6c31
L_6C32:
	pop hl			;6c32
	inc hl			;6c33
	ld a,(hl)			;6c34
	ld (ix+014h),a		;6c35
	xor a			;6c38
	ld (ix+02ch),a		;6c39
	ret			;6c3c
L_6C3D:
	pop hl			;6c3d
	inc hl			;6c3e
	ld a,(hl)			;6c3f
	and 0f0h		;6c40
	jr z,L_6C51		;6c42
	rrca			;6c44
	rrca			;6c45
	rrca			;6c46
	rrca			;6c47
	ld (ix+036h),a		;6c48
	set 0,(ix+030h)		;6c4b
	jr L_6C55		;6c4f
L_6C51:
	res 0,(ix+030h)		;6c51
L_6C55:
	ld a,(hl)			;6c55
	and 00fh		;6c56
	ld (ix+015h),a		;6c58
	ret			;6c5b
L_6C5C:
	pop hl			;6c5c
	inc hl			;6c5d
	ld a,(ix+00fh)		;6c5e
	and 080h		;6c61
	ld (ix+00fh),a		;6c63
	ld a,(hl)			;6c66
	and 0f0h		;6c67
	rrca			;6c69
	rrca			;6c6a
	rrca			;6c6b
	rrca			;6c6c
	cp 008h		;6c6d
	jp nc,L_6C76		;6c6f
	set 2,(ix+00fh)		;6c72
L_6C76:
	res 3,a		;6c76
	inc a			;6c78
	bit 2,(ix+00fh)		;6c79
	jp nz,L_6C84		;6c7d
	set 1,(ix+00fh)		;6c80
L_6C84:
	ld (ix+021h),a		;6c84
	ld a,(hl)			;6c87
	and 00fh		;6c88
	cp 008h		;6c8a
	jp c,L_6C93		;6c8c
	set 4,(ix+00fh)		;6c8f
L_6C93:
	res 3,a		;6c93
	inc a			;6c95
	ld (ix+022h),a		;6c96
	inc hl			;6c99
	ld a,(hl)			;6c9a
	and 0f0h		;6c9b
	rrca			;6c9d
	rrca			;6c9e
	rrca			;6c9f
	rrca			;6ca0
	ld (ix+023h),a		;6ca1
	ld a,(hl)			;6ca4
	and 00fh		;6ca5
	ld (ix+024h),a		;6ca7
	set 0,(ix+00fh)		;6caa
	ret			;6cae
L_6CAF:
	pop hl			;6caf
	ld a,(ix+00fh)		;6cb0
	and 080h		;6cb3
	ld (ix+00fh),a		;6cb5
	ret			;6cb8
L_6CB9:
	pop hl			;6cb9
	inc hl			;6cba
	ld a,(hl)			;6cbb
	and 0f0h		;6cbc
	rrca			;6cbe
	rrca			;6cbf
	rrca			;6cc0
	rrca			;6cc1
	jp z,L_6CD3		;6cc2
	ld (ix+035h),a		;6cc5
	ld a,(hl)			;6cc8
	and 00fh		;6cc9
	ld (ix+025h),a		;6ccb
	set 0,(ix+030h)		;6cce
	ret			;6cd2
L_6CD3:
	res 0,(ix+030h)		;6cd3
	ld a,(hl)			;6cd7
	ld (ix+025h),a		;6cd8
	ret			;6cdb
L_6CDC:
	pop hl			;6cdc
	inc hl			;6cdd
	ld a,(hl)			;6cde
	ld (ix+026h),a		;6cdf
	set 1,(ix+00eh)		;6ce2
	ret			;6ce6
L_6CE7:
	pop hl			;6ce7
	res 1,(ix+00eh)		;6ce8
	ret			;6cec
L_6CED:
	pop hl			;6ced
	ld a,(ix+00eh)		;6cee
	and 0e2h		;6cf1
	ld (ix+00eh),a		;6cf3
	ret			;6cf6
L_6CF7:
	pop hl			;6cf7
	inc hl			;6cf8
	ld a,(ix+00eh)		;6cf9
	or 014h		;6cfc
	ld (ix+00eh),a		;6cfe
	ld a,(hl)			;6d01
	and 00fh		;6d02
	ld (ix+01ch),a		;6d04
	ld a,(hl)			;6d07
	and 0f0h		;6d08
	rrca			;6d0a
	rrca			;6d0b
	rrca			;6d0c
	rrca			;6d0d
	ld (ix+01bh),a		;6d0e
	ret			;6d11
L_6D12:
	pop hl			;6d12
	inc hl			;6d13
	ld a,(hl)			;6d14
	ld (ix+01ah),a		;6d15
	ld a,(ix+00eh)		;6d18
	or 00ch		;6d1b
	ld (ix+00eh),a		;6d1d
	ret			;6d20
L_6D21:
	pop hl			;6d21
	res 3,(ix+00eh)		;6d22
	ret			;6d26

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6d27..0x6d2d  (6 bytes)
DATA_6D27:
	defb 0e1h,0ddh,0cbh,00eh,0f6h,0c9h	; 6d27

; ======================================================================
; CODIGO 0x6d2d..0x6e37  (266 bytes)
; ======================================================================


L_6D2D:
	pop hl			;6d2d
	set 5,(ix+00eh)		;6d2e
	ret			;6d32
L_6D33:
	pop hl			;6d33
	ld a,(ix+00eh)		;6d34
	and 09fh		;6d37
	ld (ix+00eh),a		;6d39
	ret			;6d3c
L_6D3D:
	pop hl			;6d3d
	set 7,(ix+00eh)		;6d3e
	inc hl			;6d42
	ld a,(hl)			;6d43
	ld (ix+02fh),a		;6d44
	ret			;6d47
L_6D48:
	pop hl			;6d48
	inc hl			;6d49
	ld a,(hl)			;6d4a
	bit 7,a		;6d4b
	jr nz,L_6D72		;6d4d
	set 7,(ix+00fh)		;6d4f
	res 7,(ix+00dh)		;6d53
	res 6,(ix+00dh)		;6d57
	res 3,(ix+03ch)		;6d5b
L_6D5F:
	ld de,07904h		;6d5f
	add a,a			;6d62
	add a,e			;6d63
	ld e,a			;6d64
	jr nc,L_6D68		;6d65
	inc d			;6d67
L_6D68:
	ld a,(de)			;6d68
	ld (ix+027h),a		;6d69
	inc de			;6d6c
	ld a,(de)			;6d6d
	ld (ix+028h),a		;6d6e
	ret			;6d71
L_6D72:
	set 7,(ix+00fh)		;6d72
	set 6,(ix+00dh)		;6d76
	set 7,(ix+00dh)		;6d7a
	res 3,(ix+03ch)		;6d7e
	ld a,(hl)			;6d82
	and 07fh		;6d83
	call L_6D5F		;6d85
	inc hl			;6d88
	ld a,(hl)			;6d89
	bit 7,a		;6d8a
	jr nz,L_6D94		;6d8c
	res 4,(ix+00dh)		;6d8e
	jr L_6D98		;6d92
L_6D94:
	set 4,(ix+00dh)		;6d94
L_6D98:
	bit 6,a		;6d98
	jr nz,L_6DA2		;6d9a
	res 5,(ix+00dh)		;6d9c
	jr L_6DA6		;6da0
L_6DA2:
	set 5,(ix+00dh)		;6da2
L_6DA6:
	and 03fh		;6da6
	ld (ix+032h),a		;6da8
	ret			;6dab
L_6DAC:
	pop hl			;6dac
	call L_6DCB		;6dad
	ld (ix+007h),e		;6db0
	ld (ix+008h),d		;6db3
	ret			;6db6
L_6DB7:
	pop hl			;6db7
	ld l,(ix+007h)		;6db8
	ld h,(ix+008h)		;6dbb
	ret			;6dbe
L_6DBF:
	pop hl			;6dbf
	inc hl			;6dc0
	ld a,(ix+005h)		;6dc1
	inc a			;6dc4
	cp (hl)			;6dc5
	jr z,L_6DD2		;6dc6
	ld (ix+005h),a		;6dc8
L_6DCB:
	inc hl			;6dcb
	ld e,(hl)			;6dcc
	inc hl			;6dcd
	ld d,(hl)			;6dce
	ex de,hl			;6dcf
	dec hl			;6dd0
	ret			;6dd1
L_6DD2:
	inc hl			;6dd2
	inc hl			;6dd3
	ld (ix+005h),000h		;6dd4
	ret			;6dd8
L_6DD9:
	pop hl			;6dd9
	inc hl			;6dda
	ld a,(ix+006h)		;6ddb
	inc a			;6dde
	cp (hl)			;6ddf
	jr z,L_6DE7		;6de0
	ld (ix+006h),a		;6de2
	jr L_6DCB		;6de5
L_6DE7:
	inc hl			;6de7
	inc hl			;6de8
	ld (ix+006h),000h		;6de9
	ret			;6ded
L_6DEE:
	pop hl			;6dee
	jr L_6DCB		;6def
L_6DF1:
	pop hl			;6df1
	inc hl			;6df2
	ld b,(ix+009h)		;6df3
	ld a,(hl)			;6df6
	ld (ix+009h),a		;6df7
	cp 001h		;6dfa
	ld a,b			;6dfc
	jp z,L_6E17		;6dfd
	cp 001h		;6e00
	ret nz			;6e02
	ld a,(ix+00eh)		;6e03
	ld (ix+02ah),a		;6e06
	ld a,(ix+00fh)		;6e09
	ld (ix+02bh),a		;6e0c
	xor a			;6e0f
	ld (ix+00eh),a		;6e10
	ld (ix+00fh),a		;6e13
	ret			;6e16
L_6E17:
	cp 001h		;6e17
	ret z			;6e19
	ld a,(ix+02ah)		;6e1a
	ld (ix+00eh),a		;6e1d
	ld a,(ix+02bh)		;6e20
	ld (ix+00fh),a		;6e23
	ret			;6e26
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
	ex de,hl			;6e35   ; HL = la direccion - 1
	jp (hl)			;6e36

; ----------------------------------------------------------------------
; DATOS tabla_6E37: tabla que se lee desde HL = 0x6E37 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p10:6E2A (1 bytes)
;   0x6e37..0x6e38  (1 bytes)
DATA_tabla_6E37:
	defb 057h	; 6e37

; ----------------------------------------------------------------------
; DATOS leido_6E38: 27 bytes que leen p10:6E34, p10:6E32 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 4 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p10:6E34, p10:6E32 (27 bytes)
;   0x6e38..0x6e53  (27 bytes)
DATA_leido_6E38:
	defb 06eh,057h,06eh,057h,06eh,057h,06eh,057h,06eh,057h,06eh,062h,06eh,07dh,06eh,094h	; 6e38  nWnWnWnWnWnbn}n.
	defb 06eh,09eh,06eh,0a0h,06eh,0a2h,06eh,0a9h,06eh,0afh,06eh	; 6e48  n.n.n.n.n.n

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e53..0x6e57  (4 bytes)
DATA_6E53:
	defb 092h,06fh,094h,06fh	; 6e53

; ======================================================================
; CODIGO 0x6e57..0x6e9e  (71 bytes)
; ======================================================================


L_6E57:
	pop hl			;6e57
	ld a,(hl)			;6e58
	and 00fh		;6e59
	ld (ix+016h),a		;6e5b
	ld (ix+029h),a		;6e5e
	ret			;6e61
L_6E62:
	pop hl			;6e62
	ld a,(ix+03ch)		;6e63
	or 050h		;6e66
	ld (ix+03ch),a		;6e68
	res 7,(ix+03ch)		;6e6b
	inc hl			;6e6f
	ld a,(hl)			;6e70
	ld (ix+039h),a		;6e71
	inc hl			;6e74
	ld a,(hl)			;6e75
	ld (ix+03ah),a		;6e76
	ld (ix+03bh),a		;6e79
	ret			;6e7c
L_6E7D:
	pop hl			;6e7d
	ld a,(ix+03ch)		;6e7e
	or 0d0h		;6e81
	ld (ix+03ch),a		;6e83
	inc hl			;6e86
	ld a,(hl)			;6e87
	ld (ix+039h),a		;6e88
	inc hl			;6e8b
	ld a,(hl)			;6e8c
	ld (ix+03ah),a		;6e8d
	ld (ix+03bh),a		;6e90
	ret			;6e93
L_6E94:
	pop hl			;6e94
	ld a,(ix+03ch)		;6e95
	and 00fh		;6e98
	ld (ix+03ch),a		;6e9a
	ret			;6e9d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6e9e..0x6ea2  (4 bytes)
DATA_6E9E:
	defb 0e1h,0c9h,0e1h,0c9h	; 6e9e

; ======================================================================
; CODIGO 0x6ea2..0x6f92  (240 bytes)
; ======================================================================


L_6EA2:
	pop hl			;6ea2
	inc hl			;6ea3
	ld a,(hl)			;6ea4
	ld (ix+034h),a		;6ea5
	ret			;6ea8
L_6EA9:
	pop hl			;6ea9
	xor a			;6eaa
	ld (ix+034h),a		;6eab
	ret			;6eae
L_6EAF:
	pop hl			;6eaf
	inc hl			;6eb0
	ld a,(ix+00fh)		;6eb1
	and 080h		;6eb4
	ld (ix+00fh),a		;6eb6
	ld a,(hl)			;6eb9
	and 0f0h		;6eba
	rrca			;6ebc
	rrca			;6ebd
	rrca			;6ebe
	rrca			;6ebf
	cp 008h		;6ec0
	jp nc,L_6EC9		;6ec2
	set 2,(ix+00fh)		;6ec5
L_6EC9:
	res 3,a		;6ec9
	inc a			;6ecb
	bit 2,(ix+00fh)		;6ecc
	jp nz,L_6ED7		;6ed0
	set 1,(ix+00fh)		;6ed3
L_6ED7:
	ld (ix+021h),a		;6ed7
	ld a,(hl)			;6eda
	and 00fh		;6edb
	ld (ix+022h),a		;6edd
	inc hl			;6ee0
	ld a,(hl)			;6ee1
	and 0f0h		;6ee2
	rrca			;6ee4
	rrca			;6ee5
	rrca			;6ee6
	rrca			;6ee7
	ld (ix+023h),a		;6ee8
	ld a,(hl)			;6eeb
	and 00fh		;6eec
	ld (ix+024h),a		;6eee
	ld b,a			;6ef1
	ld a,(ix+023h)		;6ef2
	sub b			;6ef5
	ld (ix+038h),a		;6ef6
	ld e,000h		;6ef9
	ld d,000h		;6efb
	ld b,(ix+022h)		;6efd
	ld a,(ix+023h)		;6f00
L_6F03:
	sub b			;6f03
	jr c,L_6F0F		;6f04
	inc d			;6f06
	ld (ix+023h),a		;6f07
	or a			;6f0a
	jr z,L_6F2C		;6f0b
	jr L_6F03		;6f0d
L_6F0F:
	ld a,b			;6f0f
	ld b,(ix+023h)		;6f10
	sub b			;6f13
	rlca			;6f14
	rlca			;6f15
	rlca			;6f16
	rlca			;6f17
	and 0f0h		;6f18
	ld (ix+023h),a		;6f1a
	ld b,(ix+022h)		;6f1d
L_6F20:
	sub b			;6f20
	jr c,L_6F2C		;6f21
	inc e			;6f23
	ld (ix+023h),a		;6f24
	or a			;6f27
	jr z,L_6F2C		;6f28
	jr L_6F20		;6f2a
L_6F2C:
	ld a,e			;6f2c
	or a			;6f2d
	jr z,L_6F33		;6f2e
	cpl			;6f30
	and 00fh		;6f31
L_6F33:
	ld (ix+023h),a		;6f33
	ld a,d			;6f36
	rlca			;6f37
	rlca			;6f38
	rlca			;6f39
	rlca			;6f3a
	and 0f0h		;6f3b
	or (ix+023h)		;6f3d
	ld (ix+023h),a		;6f40
	ld e,000h		;6f43
	ld d,000h		;6f45
	ld b,(ix+022h)		;6f47
	ld a,(ix+024h)		;6f4a
L_6F4D:
	sub b			;6f4d
	jr c,L_6F59		;6f4e
	inc d			;6f50
	ld (ix+024h),a		;6f51
	or a			;6f54
	jr z,L_6F76		;6f55
	jr L_6F4D		;6f57
L_6F59:
	ld a,b			;6f59
	ld b,(ix+024h)		;6f5a
	sub b			;6f5d
	rlca			;6f5e
	rlca			;6f5f
	rlca			;6f60
	rlca			;6f61
	and 0f0h		;6f62
	ld (ix+024h),a		;6f64
	ld b,(ix+022h)		;6f67
L_6F6A:
	sub b			;6f6a
	jr c,L_6F76		;6f6b
	inc e			;6f6d
	ld (ix+024h),a		;6f6e
	or a			;6f71
	jr z,L_6F76		;6f72
	jr L_6F6A		;6f74
L_6F76:
	ld a,e			;6f76
	or a			;6f77
	jr z,L_6F7D		;6f78
	cpl			;6f7a
	and 00fh		;6f7b
L_6F7D:
	ld (ix+024h),a		;6f7d
	ld a,d			;6f80
	rlca			;6f81
	rlca			;6f82
	rlca			;6f83
	rlca			;6f84
	and 0f0h		;6f85
	or (ix+024h)		;6f87
	ld (ix+024h),a		;6f8a
	set 6,(ix+00fh)		;6f8d
	ret			;6f91

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6f92..0x6f99  (7 bytes)
DATA_6F92:
	defb 0e1h,0c9h,0ddh,0cbh,00eh,0beh,0c9h	; 6f92

; ======================================================================
; CODIGO 0x6f99..0x7086  (237 bytes)
; ======================================================================


L_6F99:
	call L_6FA0		;6f99
	call L_7092		;6f9c
	ret			;6f9f
L_6FA0:
	call L_6FB0		;6fa0   ; periodos y volumenes, ruido, envolvente y mezclador
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
	ld b,000h		;6fc8   ; los tres canales del PSG: los registros 0-5 y 8-10
	ld c,008h		;6fca
	ld hl,0e00ah		;6fcc   ; el canal 1 (0xE00A: periodo y volumen)
	call L_6FDF		;6fcf
	ld hl,0e04ah		;6fd2   ; el 2
	call L_6FDF		;6fd5
	ld hl,0e08ah		;6fd8   ; el 3
	call L_6FDF		;6fdb
	ret			;6fde
L_6FDF:
	ld e,(hl)			;6fdf   ; el periodo bajo
	ld a,b			;6fe0
	call 00093h		;6fe1   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;6fe4
	inc b			;6fe5
	ld e,(hl)			;6fe6   ; el alto
	ld a,b			;6fe7
	call 00093h		;6fe8   ; BIOS WRTPSG - Writes data to PSG-register
	inc hl			;6feb
	ld e,(hl)			;6fec   ; el volumen
	ld a,c			;6fed
	inc b			;6fee
	inc c			;6fef
	inc hl			;6ff0
	bit 3,(hl)		;6ff1   ; IX+0D bit 3: con envolvente...
	ret nz			;6ff3   ; ...no se escribe
	call 00093h		;6ff4   ; BIOS WRTPSG - Writes data to PSG-register
	bit 2,(hl)		;6ff7   ; bit 2 (pide envolvente)...
	ret z			;6ff9
	set 3,(hl)		;6ffa   ; ...pasa al bit 3: el volumen 16 una sola vez
	ret			;6ffc
L_6FFD:
	ld hl,0e29ch		;6ffd   ; el ruido: 0xE29C bit 0 (el del canal 3)?
	bit 0,(hl)		;7000
	jr z,L_7010		;7002
	res 0,(hl)		;7004   ; se escribe una vez...
	set 1,(hl)		;7006
	ld a,(0e29ah)		;7008   ; ...el periodo de 0xE29A...
	ld e,a			;700b
	ld a,006h		;700c   ; ...en el registro 6
	jr L_7020		;700e
L_7010:
	bit 1,(hl)		;7010   ; bit 1: ya esta
	ret nz			;7012
	bit 2,(hl)		;7013   ; bit 2 (el del canal 4)?
	ret z			;7015
	res 2,(hl)		;7016
	set 3,(hl)		;7018
	ld a,(0e29bh)		;701a   ; el de 0xE29B
	ld e,a			;701d
	ld a,006h		;701e
L_7020:
	call 00093h		;7020   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;7023
L_7024:
	ld hl,0e29ch		;7024   ; la envolvente del PSG: bit 7?
	bit 7,(hl)		;7027
	ret z			;7029
	res 7,(hl)		;702a
	ld a,(0e29eh)		;702c   ; el periodo bajo (0xE29E)...
	ld e,a			;702f
	ld a,00bh		;7030   ; ...al registro 11
	call 00093h		;7032   ; BIOS WRTPSG - Writes data to PSG-register
	bit 6,(hl)		;7035   ; bit 6...
	ret z			;7037
	res 6,(hl)		;7038
	ld a,(0e29fh)		;703a   ; ...el alto (0xE29F) al 12
	ld e,a			;703d
	ld a,00ch		;703e
	call 00093h		;7040   ; BIOS WRTPSG - Writes data to PSG-register
	bit 5,(hl)		;7043   ; bit 5...
	ret z			;7045
	res 5,(hl)		;7046
	ld a,(0e29dh)		;7048   ; ...la forma (0xE29D) al 13
	ld e,a			;704b
	ld a,00dh		;704c
	call 00093h		;704e   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;7051
L_7052:
	ld hl,0e00dh		;7052   ; el mezclador: los bits del canal 1 (0x7086)...
	ld a,(hl)			;7055
	ld hl,07086h		;7056
	call L_707F		;7059
	ld b,(hl)			;705c   ; ...en B
	ld hl,0e04dh		;705d   ; los del 2 (0x708A) en C
	ld a,(hl)			;7060
	ld hl,0708ah		;7061
	call L_707F		;7064
	ld c,(hl)			;7067
	ld hl,0e08dh		;7068   ; los del 3 (0x708E)
	ld a,(hl)			;706b
	ld hl,0708eh		;706c
	call L_707F		;706f
	ld a,(hl)			;7072
	or b			;7073   ; todos juntos
	or c			;7074
L_7075:
	ld e,a			;7075   ; en E
	ld (0e298h),a		;7076   ; la copia
	ld a,007h		;7079   ; el registro 7
	call 00093h		;707b   ; BIOS WRTPSG - Writes data to PSG-register
	ret			;707e
L_707F:
	and 003h		;707f   ; IX+0D & 3...
	ld e,a			;7081
	ld d,000h		;7082
	add hl,de			;7084   ; ...en la tabla HL
	ret			;7085

; ----------------------------------------------------------------------
; DATOS leido_7086: 4 bytes que lee p10:705C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:705C (4 bytes)
;   0x7086..0x708a  (4 bytes)
DATA_leido_7086:
	defb 089h,081h,088h,080h	; 7086

; ----------------------------------------------------------------------
; DATOS leido_708A: 3 bytes que lee p10:7067 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:7067 (3
;   bytes)
;   0x708a..0x708d  (3 bytes)
DATA_leido_708A:
	defb 092h,082h,090h	; 708a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x708d..0x708e  (1 bytes)
DATA_708D:
	defb 080h	; 708d

; ----------------------------------------------------------------------
; DATOS leido_708E: 4 bytes que lee p10:7072 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:7072 (4 bytes)
;   0x708e..0x7092  (4 bytes)
DATA_leido_708E:
	defb 0a4h,084h,0a0h,080h	; 708e

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
	ld ix,0e2a0h		;709f   ; las marcas de lo que cambia (0xE2A0-0xE2A1)
	ld bc,0e2ach		;70a3   ; las copias de los volumenes
	ld de,0e2a2h		;70a6   ; las copias de los periodos
	ld hl,0e0cah		;70a9   ; el periodo del canal 4 (0xE0CA)
	ld a,(de)			;70ac   ; la copia
	res 0,(ix+000h)		;70ad
	cp (hl)			;70b1   ; igual?
	jr z,L_70BA		;70b2
	set 0,(ix+000h)		;70b4   ; no: la marca...
	ld a,(hl)			;70b8   ; ...y la copia nueva
	ld (de),a			;70b9
L_70BA:
	inc de			;70ba   ; el alto
	inc hl			;70bb
	ld a,(de)			;70bc
	res 1,(ix+000h)		;70bd
	cp (hl)			;70c1
	jr z,L_70CA		;70c2
	set 1,(ix+000h)		;70c4
	ld a,(hl)			;70c8
	ld (de),a			;70c9
L_70CA:
	inc de			;70ca   ; el volumen
	inc hl			;70cb
	res 2,(ix+001h)		;70cc
	ld a,(bc)			;70d0
	cp (hl)			;70d1
	jr z,L_70DA		;70d2
	set 2,(ix+001h)		;70d4
	ld a,(hl)			;70d8
	ld (bc),a			;70d9
L_70DA:
	inc bc			;70da   ; el canal 5 (0xE10A)
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
	ld a,(de)			;70ee   ; el periodo alto del canal 5: distinto de la copia?
	res 3,(ix+000h)		;70ef
	cp (hl)			;70f3
	jr z,L_70FC		;70f4
	set 3,(ix+000h)		;70f6   ; si: la marca (0xE2A0 bit 3)...
	ld a,(hl)			;70fa   ; ...y la copia nueva
	ld (de),a			;70fb
L_70FC:
	inc de			;70fc
	inc hl			;70fd
	res 3,(ix+001h)		;70fe   ; el volumen: 0xE2A1 bit 3
	ld a,(bc)			;7102   ; distinto?
	cp (hl)			;7103
	jr z,L_710C		;7104
	set 3,(ix+001h)		;7106
	ld a,(hl)			;710a   ; la copia nueva
	ld (bc),a			;710b
L_710C:
	inc bc			;710c   ; el 6 (0xE14A)
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
	ld a,(de)			;7120   ; el periodo alto del canal 6: distinto?
	res 5,(ix+000h)		;7121
	cp (hl)			;7125
	jr z,L_712E		;7126
	set 5,(ix+000h)		;7128   ; la marca (0xE2A0 bit 5)...
	ld a,(hl)			;712c   ; ...y la copia nueva
	ld (de),a			;712d
L_712E:
	inc de			;712e
	inc hl			;712f
	res 4,(ix+001h)		;7130   ; el volumen: 0xE2A1 bit 4
	ld a,(bc)			;7134   ; distinto?
	cp (hl)			;7135
	jr z,L_713E		;7136
	set 4,(ix+001h)		;7138
	ld a,(hl)			;713c   ; la copia nueva
	ld (bc),a			;713d
L_713E:
	inc bc			;713e   ; el 7 (0xE18A)
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
	ld a,(de)			;7152   ; el periodo alto del canal 7: distinto?
	res 7,(ix+000h)		;7153
	cp (hl)			;7157
	jr z,L_7160		;7158
	set 7,(ix+000h)		;715a   ; la marca (0xE2A0 bit 7)...
	ld a,(hl)			;715e   ; ...y la copia nueva
	ld (de),a			;715f
L_7160:
	inc de			;7160
	inc hl			;7161
	res 5,(ix+001h)		;7162   ; el volumen: 0xE2A1 bit 5
	ld a,(bc)			;7166   ; distinto?
	cp (hl)			;7167
	jr z,L_7170		;7168
	set 5,(ix+001h)		;716a
	ld a,(hl)			;716e   ; la copia nueva
	ld (bc),a			;716f
L_7170:
	inc bc			;7170   ; el 8 (0xE1CA)
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
	ld a,(de)			;7184   ; el periodo alto del canal 8: distinto?
	res 1,(ix+001h)		;7185
	cp (hl)			;7189
	jr z,L_7192		;718a
	set 1,(ix+001h)		;718c   ; la marca (0xE2A1 bit 1)...
	ld a,(hl)			;7190   ; ...y la copia nueva
	ld (de),a			;7191
L_7192:
	inc de			;7192
	inc hl			;7193
	res 6,(ix+001h)		;7194   ; el volumen: 0xE2A1 bit 6
	ld a,(bc)			;7198   ; distinto?
	cp (hl)			;7199
	jr z,L_71A2		;719a
	set 6,(ix+001h)		;719c
	ld a,(hl)			;71a0   ; la copia nueva
	ld (bc),a			;71a1
L_71A2:
	inc bc			;71a2
	ret			;71a3
L_71A4:
	ld e,000h		;71a4   ; los canales que suenan: los modos de los 5 del SCC...
	ld hl,0e0cdh		;71a6
	ld c,001h		;71a9
	ld a,(hl)			;71ab   ; ...con modo, su bit
	or a			;71ac
	jr z,L_71B0		;71ad
	ld a,c			;71af
L_71B0:
	or e			;71b0
	ld e,a			;71b1
	ld hl,0e10dh		;71b2
	sla c		;71b5   ; el siguiente bit
	ld a,(hl)			;71b7
	or a			;71b8
	jr z,L_71BC		;71b9
	ld a,c			;71bb
L_71BC:
	or e			;71bc
	ld e,a			;71bd
	ld hl,0e14dh		;71be   ; el modo del canal 6 (0xE14D)
	sla c		;71c1   ; su bit
	ld a,(hl)			;71c3
	or a			;71c4
	jr z,L_71C8		;71c5
	ld a,c			;71c7
L_71C8:
	or e			;71c8
	ld e,a			;71c9
	ld hl,0e18dh		;71ca   ; el del 7 (0xE18D)
	sla c		;71cd   ; su bit
	ld a,(hl)			;71cf
	or a			;71d0
	jr z,L_71D4		;71d1
	ld a,c			;71d3
L_71D4:
	or e			;71d4
	ld e,a			;71d5
	ld hl,0e1cdh		;71d6   ; el del 8 (0xE1CD)
	sla c		;71d9   ; su bit
	ld a,(hl)			;71db
	or a			;71dc
	jr z,L_71E0		;71dd
	ld a,c			;71df
L_71E0:
	or e			;71e0
	ld e,a			;71e1
	ld hl,0e2b1h		;71e2   ; la copia de 0xE2B1
	ld a,(hl)			;71e5
	cp e			;71e6
	jr z,L_71F0		;71e7
	ld (hl),e			;71e9   ; la nueva...
	ld hl,0e2a1h		;71ea   ; ...y la marca (0xE2A1 bit 7)
	set 7,(hl)		;71ed
	ret			;71ef
L_71F0:
	ld hl,0e2a1h		;71f0   ; sin cambio
	res 7,(hl)		;71f3
	ret			;71f5
L_71F6:
	ld ix,0e2a0h		;71f6   ; los registros del SCC: las marcas
	ld hl,0e2a2h		;71fa   ; las copias
	ld de,09880h		;71fd   ; desde 0x9880 (los periodos)
	bit 0,(ix+000h)		;7200   ; cambia?
	jr z,L_7209		;7204
	call L_72AE		;7206   ; escribe el registro
L_7209:
	inc hl			;7209   ; el siguiente
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
	bit 7,(ix+001h)		;72a5   ; el siguiente: con el bit 7 de 0xE2A1...
	ret z			;72a9
	call L_72AE		;72aa   ; ...lo escribe
	ret			;72ad
L_72AE:
	ld a,03fh		;72ae
	ld (09000h),a		;72b0
	ld a,(hl)			;72b3
	ld (de),a			;72b4   ; ...al registro
	ld a,00bh		;72b5   ; y el banco 11 otra vez
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
	xor a			;7375   ; todos callados mientras
	ld (0988fh),a		;7376   ; al SCC: los canales del SCC que suenan (un bit cada uno)
	ld b,020h		;7379   ; 32 muestras
L_737B:
	ld a,(hl)			;737b   ; una
	ld (de),a			;737c
	inc hl			;737d
	inc de			;737e
	djnz L_737B		;737f   ; las 32
	ld hl,0988fh		;7381   ; y los que suenan otra vez
	ld de,0e2b1h		;7384
	ld a,(de)			;7387
	ld (hl),a			;7388
	ld a,00bh		;7389   ; el banco 11
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
; DATOS leido_73A9: 21 bytes que leen p10:6574, p10:6576, p10:6578 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6574, p10:6576, p10:6578
;   (21 bytes)
;   0x73a9..0x73be  (21 bytes)
DATA_leido_73A9:
	defb 0bdh,073h,0c4h,073h,0d1h,073h,0e6h,073h,0feh,073h,015h,074h,02eh,074h,047h,074h	; 73a9  .s.s.s.s.s.t.tGt
	defb 062h,074h,07fh,074h,0e1h	; 73b9

; ----------------------------------------------------------------------
; DATOS leido_73BE: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73be..0x73bf  (1 bytes)
DATA_leido_73BE:
	defb 001h	; 73be

; ----------------------------------------------------------------------
; DATOS leido_73BF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73bf..0x73c0  (1 bytes)
DATA_leido_73BF:
	defb 0e4h	; 73bf

; ----------------------------------------------------------------------
; DATOS leido_73C0: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x73c0..0x73c1  (1 bytes)
DATA_leido_73C0:
	defb 000h	; 73c0

; ----------------------------------------------------------------------
; DATOS leido_73C1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73c1..0x73c2  (1 bytes)
DATA_leido_73C1:
	defb 007h	; 73c1

; ----------------------------------------------------------------------
; DATOS leido_73C2: 2 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (2 bytes)
;   0x73c2..0x73c4  (2 bytes)
DATA_leido_73C2:
	defb 005h,0ffh	; 73c2

; ----------------------------------------------------------------------
; DATOS leido_73C4: 1 bytes que lee p10:6578 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6578 (1 bytes)
;   0x73c4..0x73c5  (1 bytes)
DATA_leido_73C4:
	defb 0e3h	; 73c4

; ----------------------------------------------------------------------
; DATOS leido_73C5: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73c5..0x73c6  (1 bytes)
DATA_leido_73C5:
	defb 001h	; 73c5

; ----------------------------------------------------------------------
; DATOS leido_73C6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73c6..0x73c7  (1 bytes)
DATA_leido_73C6:
	defb 0e4h	; 73c6

; ----------------------------------------------------------------------
; DATOS leido_73C7: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x73c7..0x73c8  (1 bytes)
DATA_leido_73C7:
	defb 000h	; 73c7

; ----------------------------------------------------------------------
; DATOS leido_73C8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73c8..0x73c9  (1 bytes)
DATA_leido_73C8:
	defb 08ah	; 73c8

; ----------------------------------------------------------------------
; DATOS leido_73C9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x73c9..0x73ca  (1 bytes)
DATA_leido_73C9:
	defb 000h	; 73c9

; ----------------------------------------------------------------------
; DATOS leido_73CA: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x73ca..0x73cb  (1 bytes)
DATA_leido_73CA:
	defb 0e1h	; 73ca

; ----------------------------------------------------------------------
; DATOS leido_73CB: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73cb..0x73cc  (1 bytes)
DATA_leido_73CB:
	defb 004h	; 73cb

; ----------------------------------------------------------------------
; DATOS leido_73CC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73cc..0x73cd  (1 bytes)
DATA_leido_73CC:
	defb 006h	; 73cc

; ----------------------------------------------------------------------
; DATOS leido_73CD: 4 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (4 bytes)
;   0x73cd..0x73d1  (4 bytes)
DATA_leido_73CD:
	defb 005h,004h,003h,0ffh	; 73cd

; ----------------------------------------------------------------------
; DATOS leido_73D1: 1 bytes que lee p10:6578 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6578 (1 bytes)
;   0x73d1..0x73d2  (1 bytes)
DATA_leido_73D1:
	defb 0e1h	; 73d1

; ----------------------------------------------------------------------
; DATOS leido_73D2: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73d2..0x73d3  (1 bytes)
DATA_leido_73D2:
	defb 001h	; 73d2

; ----------------------------------------------------------------------
; DATOS leido_73D3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73d3..0x73d4  (1 bytes)
DATA_leido_73D3:
	defb 0e4h	; 73d3

; ----------------------------------------------------------------------
; DATOS leido_73D4: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x73d4..0x73d5  (1 bytes)
DATA_leido_73D4:
	defb 014h	; 73d4

; ----------------------------------------------------------------------
; DATOS leido_73D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73d5..0x73d6  (1 bytes)
DATA_leido_73D5:
	defb 007h	; 73d5

; ----------------------------------------------------------------------
; DATOS leido_73D6: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x73d6..0x73d7  (1 bytes)
DATA_leido_73D6:
	defb 0e2h	; 73d6

; ----------------------------------------------------------------------
; DATOS leido_73D7: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73d7..0x73d8  (1 bytes)
DATA_leido_73D7:
	defb 001h	; 73d7

; ----------------------------------------------------------------------
; DATOS leido_73D8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73d8..0x73d9  (1 bytes)
DATA_leido_73D8:
	defb 072h	; 73d8

; ----------------------------------------------------------------------
; DATOS leido_73D9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x73d9..0x73da  (1 bytes)
DATA_leido_73D9:
	defb 000h	; 73d9

; ----------------------------------------------------------------------
; DATOS leido_73DA: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x73da..0x73db  (1 bytes)
DATA_leido_73DA:
	defb 0e1h	; 73da

; ----------------------------------------------------------------------
; DATOS leido_73DB: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73db..0x73dc  (1 bytes)
DATA_leido_73DB:
	defb 002h	; 73db

; ----------------------------------------------------------------------
; DATOS leido_73DC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73dc..0x73dd  (1 bytes)
DATA_leido_73DC:
	defb 0e4h	; 73dc

; ----------------------------------------------------------------------
; DATOS leido_73DD: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x73dd..0x73de  (1 bytes)
DATA_leido_73DD:
	defb 010h	; 73dd

; ----------------------------------------------------------------------
; DATOS leido_73DE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73de..0x73df  (1 bytes)
DATA_leido_73DE:
	defb 003h	; 73de

; ----------------------------------------------------------------------
; DATOS leido_73DF: 2 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (2 bytes)
;   0x73df..0x73e1  (2 bytes)
DATA_leido_73DF:
	defb 002h,0e1h	; 73df

; ----------------------------------------------------------------------
; DATOS leido_73E1: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73e1..0x73e2  (1 bytes)
DATA_leido_73E1:
	defb 001h	; 73e1

; ----------------------------------------------------------------------
; DATOS leido_73E2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73e2..0x73e3  (1 bytes)
DATA_leido_73E2:
	defb 0e4h	; 73e2

; ----------------------------------------------------------------------
; DATOS leido_73E3: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x73e3..0x73e4  (1 bytes)
DATA_leido_73E3:
	defb 006h	; 73e3

; ----------------------------------------------------------------------
; DATOS leido_73E4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73e4..0x73e5  (1 bytes)
DATA_leido_73E4:
	defb 002h	; 73e4

; ----------------------------------------------------------------------
; DATOS leido_73E5: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x73e5..0x73e6  (1 bytes)
DATA_leido_73E5:
	defb 0ffh	; 73e5

; ----------------------------------------------------------------------
; DATOS leido_73E6: 1 bytes que lee p10:6578 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6578 (1 bytes)
;   0x73e6..0x73e7  (1 bytes)
DATA_leido_73E6:
	defb 0e2h	; 73e6

; ----------------------------------------------------------------------
; DATOS leido_73E7: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73e7..0x73e8  (1 bytes)
DATA_leido_73E7:
	defb 001h	; 73e7

; ----------------------------------------------------------------------
; DATOS leido_73E8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73e8..0x73e9  (1 bytes)
DATA_leido_73E8:
	defb 0e5h	; 73e8

; ----------------------------------------------------------------------
; DATOS leido_73E9: 3 bytes que leen p10:6BF3, p10:6C03, p10:6C13 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6BF3, p10:6C03, p10:6C13
;   (3 bytes)
;   0x73e9..0x73ec  (3 bytes)
DATA_leido_73E9:
	defb 000h,000h,010h	; 73e9

; ----------------------------------------------------------------------
; DATOS leido_73EC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73ec..0x73ed  (1 bytes)
DATA_leido_73EC:
	defb 0c1h	; 73ec

; ----------------------------------------------------------------------
; DATOS leido_73ED: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x73ed..0x73ee  (1 bytes)
DATA_leido_73ED:
	defb 0b0h	; 73ed

; ----------------------------------------------------------------------
; DATOS leido_73EE: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x73ee..0x73ef  (1 bytes)
DATA_leido_73EE:
	defb 0e8h	; 73ee

; ----------------------------------------------------------------------
; DATOS leido_73EF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73ef..0x73f0  (1 bytes)
DATA_leido_73EF:
	defb 0e1h	; 73ef

; ----------------------------------------------------------------------
; DATOS leido_73F0: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73f0..0x73f1  (1 bytes)
DATA_leido_73F0:
	defb 001h	; 73f0

; ----------------------------------------------------------------------
; DATOS leido_73F1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73f1..0x73f2  (1 bytes)
DATA_leido_73F1:
	defb 0e4h	; 73f1

; ----------------------------------------------------------------------
; DATOS leido_73F2: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x73f2..0x73f3  (1 bytes)
DATA_leido_73F2:
	defb 004h	; 73f2

; ----------------------------------------------------------------------
; DATOS leido_73F3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73f3..0x73f4  (1 bytes)
DATA_leido_73F3:
	defb 008h	; 73f3

; ----------------------------------------------------------------------
; DATOS leido_73F4: 5 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (5 bytes)
;   0x73f4..0x73f9  (5 bytes)
DATA_leido_73F4:
	defb 007h,006h,005h,004h,0e4h	; 73f4

; ----------------------------------------------------------------------
; DATOS leido_73F9: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x73f9..0x73fa  (1 bytes)
DATA_leido_73F9:
	defb 004h	; 73f9

; ----------------------------------------------------------------------
; DATOS leido_73FA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x73fa..0x73fb  (1 bytes)
DATA_leido_73FA:
	defb 003h	; 73fa

; ----------------------------------------------------------------------
; DATOS leido_73FB: 3 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (3 bytes)
;   0x73fb..0x73fe  (3 bytes)
DATA_leido_73FB:
	defb 002h,001h,0ffh	; 73fb

; ----------------------------------------------------------------------
; DATOS leido_73FE: 1 bytes que lee p10:6578 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6578 (1 bytes)
;   0x73fe..0x73ff  (1 bytes)
DATA_leido_73FE:
	defb 0e2h	; 73fe

; ----------------------------------------------------------------------
; DATOS leido_73FF: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x73ff..0x7400  (1 bytes)
DATA_leido_73FF:
	defb 001h	; 73ff

; ----------------------------------------------------------------------
; DATOS leido_7400: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7400..0x7401  (1 bytes)
DATA_leido_7400:
	defb 0e5h	; 7400

; ----------------------------------------------------------------------
; DATOS leido_7401: 3 bytes que leen p10:6BF3, p10:6C03, p10:6C13 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6BF3, p10:6C03, p10:6C13
;   (3 bytes)
;   0x7401..0x7404  (3 bytes)
DATA_leido_7401:
	defb 000h,000h,00fh	; 7401

; ----------------------------------------------------------------------
; DATOS leido_7404: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7404..0x7405  (1 bytes)
DATA_leido_7404:
	defb 0a2h	; 7404

; ----------------------------------------------------------------------
; DATOS leido_7405: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7405..0x7406  (1 bytes)
DATA_leido_7405:
	defb 080h	; 7405

; ----------------------------------------------------------------------
; DATOS leido_7406: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7406..0x7407  (1 bytes)
DATA_leido_7406:
	defb 0e8h	; 7406

; ----------------------------------------------------------------------
; DATOS leido_7407: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7407..0x7408  (1 bytes)
DATA_leido_7407:
	defb 0e1h	; 7407

; ----------------------------------------------------------------------
; DATOS leido_7408: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x7408..0x7409  (1 bytes)
DATA_leido_7408:
	defb 001h	; 7408

; ----------------------------------------------------------------------
; DATOS leido_7409: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7409..0x740a  (1 bytes)
DATA_leido_7409:
	defb 0e4h	; 7409

; ----------------------------------------------------------------------
; DATOS leido_740A: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x740a..0x740b  (1 bytes)
DATA_leido_740A:
	defb 003h	; 740a

; ----------------------------------------------------------------------
; DATOS leido_740B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x740b..0x740c  (1 bytes)
DATA_leido_740B:
	defb 007h	; 740b

; ----------------------------------------------------------------------
; DATOS leido_740C: 3 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (3 bytes)
;   0x740c..0x740f  (3 bytes)
DATA_leido_740C:
	defb 006h,005h,0e1h	; 740c

; ----------------------------------------------------------------------
; DATOS leido_740F: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x740f..0x7410  (1 bytes)
DATA_leido_740F:
	defb 006h	; 740f

; ----------------------------------------------------------------------
; DATOS leido_7410: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7410..0x7411  (1 bytes)
DATA_leido_7410:
	defb 004h	; 7410

; ----------------------------------------------------------------------
; DATOS leido_7411: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7411..0x7412  (1 bytes)
DATA_leido_7411:
	defb 003h	; 7411

; ----------------------------------------------------------------------
; DATOS leido_7412: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7412..0x7413  (1 bytes)
DATA_leido_7412:
	defb 002h	; 7412

; ----------------------------------------------------------------------
; DATOS leido_7413: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7413..0x7414  (1 bytes)
DATA_leido_7413:
	defb 001h	; 7413

; ----------------------------------------------------------------------
; DATOS leido_7414: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7414..0x7415  (1 bytes)
DATA_leido_7414:
	defb 0ffh	; 7414

; ----------------------------------------------------------------------
; DATOS leido_7415: 1 bytes que lee p10:6578 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6578 (1 bytes)
;   0x7415..0x7416  (1 bytes)
DATA_leido_7415:
	defb 0e2h	; 7415

; ----------------------------------------------------------------------
; DATOS leido_7416: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x7416..0x7417  (1 bytes)
DATA_leido_7416:
	defb 001h	; 7416

; ----------------------------------------------------------------------
; DATOS leido_7417: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7417..0x7418  (1 bytes)
DATA_leido_7417:
	defb 091h	; 7417

; ----------------------------------------------------------------------
; DATOS leido_7418: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7418..0x7419  (1 bytes)
DATA_leido_7418:
	defb 02ah	; 7418

; ----------------------------------------------------------------------
; DATOS leido_7419: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7419..0x741a  (1 bytes)
DATA_leido_7419:
	defb 081h	; 7419

; ----------------------------------------------------------------------
; DATOS leido_741A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x741a..0x741b  (1 bytes)
DATA_leido_741A:
	defb 04ah	; 741a

; ----------------------------------------------------------------------
; DATOS leido_741B: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x741b..0x741c  (1 bytes)
DATA_leido_741B:
	defb 071h	; 741b

; ----------------------------------------------------------------------
; DATOS leido_741C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x741c..0x741d  (1 bytes)
DATA_leido_741C:
	defb 055h	; 741c

; ----------------------------------------------------------------------
; DATOS leido_741D: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x741d..0x741e  (1 bytes)
DATA_leido_741D:
	defb 061h	; 741d

; ----------------------------------------------------------------------
; DATOS leido_741E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x741e..0x741f  (1 bytes)
DATA_leido_741E:
	defb 060h	; 741e

; ----------------------------------------------------------------------
; DATOS leido_741F: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x741f..0x7420  (1 bytes)
DATA_leido_741F:
	defb 051h	; 741f

; ----------------------------------------------------------------------
; DATOS leido_7420: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7420..0x7421  (1 bytes)
DATA_leido_7420:
	defb 06ah	; 7420

; ----------------------------------------------------------------------
; DATOS leido_7421: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7421..0x7422  (1 bytes)
DATA_leido_7421:
	defb 041h	; 7421

; ----------------------------------------------------------------------
; DATOS leido_7422: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7422..0x7423  (1 bytes)
DATA_leido_7422:
	defb 075h	; 7422

; ----------------------------------------------------------------------
; DATOS leido_7423: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7423..0x7424  (1 bytes)
DATA_leido_7423:
	defb 031h	; 7423

; ----------------------------------------------------------------------
; DATOS leido_7424: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7424..0x7425  (1 bytes)
DATA_leido_7424:
	defb 080h	; 7424

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7425..0x742e  (9 bytes)
DATA_7425:
	defb 021h,08ah,011h,095h,001h,0a0h,001h,0b0h,0ffh	; 7425  !........

; ----------------------------------------------------------------------
; DATOS leido_742E: 1 bytes que lee p10:6578 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6578 (1 bytes)
;   0x742e..0x742f  (1 bytes)
DATA_leido_742E:
	defb 0e2h	; 742e

; ----------------------------------------------------------------------
; DATOS leido_742F: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x742f..0x7430  (1 bytes)
DATA_leido_742F:
	defb 001h	; 742f

; ----------------------------------------------------------------------
; DATOS leido_7430: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7430..0x7431  (1 bytes)
DATA_leido_7430:
	defb 0a1h	; 7430

; ----------------------------------------------------------------------
; DATOS leido_7431: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7431..0x7432  (1 bytes)
DATA_leido_7431:
	defb 05ah	; 7431

; ----------------------------------------------------------------------
; DATOS leido_7432: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7432..0x7433  (1 bytes)
DATA_leido_7432:
	defb 081h	; 7432

; ----------------------------------------------------------------------
; DATOS leido_7433: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7433..0x7434  (1 bytes)
DATA_leido_7433:
	defb 080h	; 7433

; ----------------------------------------------------------------------
; DATOS leido_7434: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7434..0x7435  (1 bytes)
DATA_leido_7434:
	defb 071h	; 7434

; ----------------------------------------------------------------------
; DATOS leido_7435: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7435..0x7436  (1 bytes)
DATA_leido_7435:
	defb 08ah	; 7435

; ----------------------------------------------------------------------
; DATOS leido_7436: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7436..0x7437  (1 bytes)
DATA_leido_7436:
	defb 061h	; 7436

; ----------------------------------------------------------------------
; DATOS leido_7437: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7437..0x7438  (1 bytes)
DATA_leido_7437:
	defb 095h	; 7437

; ----------------------------------------------------------------------
; DATOS leido_7438: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7438..0x7439  (1 bytes)
DATA_leido_7438:
	defb 051h	; 7438

; ----------------------------------------------------------------------
; DATOS leido_7439: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7439..0x743a  (1 bytes)
DATA_leido_7439:
	defb 0a0h	; 7439

; ----------------------------------------------------------------------
; DATOS leido_743A: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x743a..0x743b  (1 bytes)
DATA_leido_743A:
	defb 041h	; 743a

; ----------------------------------------------------------------------
; DATOS leido_743B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x743b..0x743c  (1 bytes)
DATA_leido_743B:
	defb 0aah	; 743b

; ----------------------------------------------------------------------
; DATOS leido_743C: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x743c..0x743d  (1 bytes)
DATA_leido_743C:
	defb 031h	; 743c

; ----------------------------------------------------------------------
; DATOS leido_743D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x743d..0x743e  (1 bytes)
DATA_leido_743D:
	defb 0b5h	; 743d

; ----------------------------------------------------------------------
; DATOS leido_743E: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x743e..0x743f  (1 bytes)
DATA_leido_743E:
	defb 021h	; 743e

; ----------------------------------------------------------------------
; DATOS leido_743F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x743f..0x7440  (1 bytes)
DATA_leido_743F:
	defb 0c0h	; 743f

; ----------------------------------------------------------------------
; DATOS leido_7440: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7440..0x7441  (1 bytes)
DATA_leido_7440:
	defb 011h	; 7440

; ----------------------------------------------------------------------
; DATOS leido_7441: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7441..0x7442  (1 bytes)
DATA_leido_7441:
	defb 0cah	; 7441

; ----------------------------------------------------------------------
; DATOS leido_7442: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7442..0x7443  (1 bytes)
DATA_leido_7442:
	defb 001h	; 7442

; ----------------------------------------------------------------------
; DATOS leido_7443: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7443..0x7444  (1 bytes)
DATA_leido_7443:
	defb 0d5h	; 7443

; ----------------------------------------------------------------------
; DATOS leido_7444: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7444..0x7445  (1 bytes)
DATA_leido_7444:
	defb 001h	; 7444

; ----------------------------------------------------------------------
; DATOS leido_7445: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7445..0x7446  (1 bytes)
DATA_leido_7445:
	defb 0e0h	; 7445

; ----------------------------------------------------------------------
; DATOS leido_7446: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7446..0x7447  (1 bytes)
DATA_leido_7446:
	defb 0ffh	; 7446

; ----------------------------------------------------------------------
; DATOS leido_7447: 1 bytes que lee p10:6578 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6578 (1 bytes)
;   0x7447..0x7448  (1 bytes)
DATA_leido_7447:
	defb 0e2h	; 7447

; ----------------------------------------------------------------------
; DATOS leido_7448: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x7448..0x7449  (1 bytes)
DATA_leido_7448:
	defb 001h	; 7448

; ----------------------------------------------------------------------
; DATOS leido_7449: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7449..0x744a  (1 bytes)
DATA_leido_7449:
	defb 0a1h	; 7449

; ----------------------------------------------------------------------
; DATOS leido_744A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x744a..0x744b  (1 bytes)
DATA_leido_744A:
	defb 095h	; 744a

; ----------------------------------------------------------------------
; DATOS leido_744B: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x744b..0x744c  (1 bytes)
DATA_leido_744B:
	defb 091h	; 744b

; ----------------------------------------------------------------------
; DATOS leido_744C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x744c..0x744d  (1 bytes)
DATA_leido_744C:
	defb 0c0h	; 744c

; ----------------------------------------------------------------------
; DATOS leido_744D: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x744d..0x744e  (1 bytes)
DATA_leido_744D:
	defb 081h	; 744d

; ----------------------------------------------------------------------
; DATOS leido_744E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x744e..0x744f  (1 bytes)
DATA_leido_744E:
	defb 0cah	; 744e

; ----------------------------------------------------------------------
; DATOS leido_744F: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x744f..0x7450  (1 bytes)
DATA_leido_744F:
	defb 0a1h	; 744f

; ----------------------------------------------------------------------
; DATOS leido_7450: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7450..0x7451  (1 bytes)
DATA_leido_7450:
	defb 0d5h	; 7450

; ----------------------------------------------------------------------
; DATOS leido_7451: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7451..0x7452  (1 bytes)
DATA_leido_7451:
	defb 061h	; 7451

; ----------------------------------------------------------------------
; DATOS leido_7452: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7452..0x7453  (1 bytes)
DATA_leido_7452:
	defb 0e0h	; 7452

; ----------------------------------------------------------------------
; DATOS leido_7453: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7453..0x7454  (1 bytes)
DATA_leido_7453:
	defb 051h	; 7453

; ----------------------------------------------------------------------
; DATOS leido_7454: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7454..0x7455  (1 bytes)
DATA_leido_7454:
	defb 0eah	; 7454

; ----------------------------------------------------------------------
; DATOS leido_7455: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7455..0x7456  (1 bytes)
DATA_leido_7455:
	defb 041h	; 7455

; ----------------------------------------------------------------------
; DATOS leido_7456: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7456..0x7457  (1 bytes)
DATA_leido_7456:
	defb 0f5h	; 7456

; ----------------------------------------------------------------------
; DATOS leido_7457: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7457..0x7458  (1 bytes)
DATA_leido_7457:
	defb 032h	; 7457

; ----------------------------------------------------------------------
; DATOS leido_7458: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7458..0x7459  (1 bytes)
DATA_leido_7458:
	defb 000h	; 7458

; ----------------------------------------------------------------------
; DATOS leido_7459: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7459..0x745a  (1 bytes)
DATA_leido_7459:
	defb 022h	; 7459

; ----------------------------------------------------------------------
; DATOS leido_745A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x745a..0x745b  (1 bytes)
DATA_leido_745A:
	defb 00ah	; 745a

; ----------------------------------------------------------------------
; DATOS leido_745B: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x745b..0x745c  (1 bytes)
DATA_leido_745B:
	defb 012h	; 745b

; ----------------------------------------------------------------------
; DATOS leido_745C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x745c..0x745d  (1 bytes)
DATA_leido_745C:
	defb 015h	; 745c

; ----------------------------------------------------------------------
; DATOS leido_745D: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x745d..0x745e  (1 bytes)
DATA_leido_745D:
	defb 002h	; 745d

; ----------------------------------------------------------------------
; DATOS leido_745E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x745e..0x745f  (1 bytes)
DATA_leido_745E:
	defb 020h	; 745e

; ----------------------------------------------------------------------
; DATOS leido_745F: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x745f..0x7460  (1 bytes)
DATA_leido_745F:
	defb 002h	; 745f

; ----------------------------------------------------------------------
; DATOS leido_7460: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7460..0x7461  (1 bytes)
DATA_leido_7460:
	defb 030h	; 7460

; ----------------------------------------------------------------------
; DATOS leido_7461: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7461..0x7462  (1 bytes)
DATA_leido_7461:
	defb 0ffh	; 7461

; ----------------------------------------------------------------------
; DATOS leido_7462: 1 bytes que lee p10:6578 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6578 (1 bytes)
;   0x7462..0x7463  (1 bytes)
DATA_leido_7462:
	defb 0e2h	; 7462

; ----------------------------------------------------------------------
; DATOS leido_7463: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x7463..0x7464  (1 bytes)
DATA_leido_7463:
	defb 001h	; 7463

; ----------------------------------------------------------------------
; DATOS leido_7464: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7464..0x7465  (1 bytes)
DATA_leido_7464:
	defb 0b1h	; 7464

; ----------------------------------------------------------------------
; DATOS leido_7465: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7465..0x7466  (1 bytes)
DATA_leido_7465:
	defb 0e0h	; 7465

; ----------------------------------------------------------------------
; DATOS leido_7466: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7466..0x7467  (1 bytes)
DATA_leido_7466:
	defb 0a2h	; 7466

; ----------------------------------------------------------------------
; DATOS leido_7467: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7467..0x7468  (1 bytes)
DATA_leido_7467:
	defb 010h	; 7467

; ----------------------------------------------------------------------
; DATOS leido_7468: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7468..0x7469  (1 bytes)
DATA_leido_7468:
	defb 092h	; 7468

; ----------------------------------------------------------------------
; DATOS leido_7469: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7469..0x746a  (1 bytes)
DATA_leido_7469:
	defb 01ah	; 7469

; ----------------------------------------------------------------------
; DATOS leido_746A: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x746a..0x746b  (1 bytes)
DATA_leido_746A:
	defb 082h	; 746a

; ----------------------------------------------------------------------
; DATOS leido_746B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x746b..0x746c  (1 bytes)
DATA_leido_746B:
	defb 025h	; 746b

; ----------------------------------------------------------------------
; DATOS leido_746C: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x746c..0x746d  (1 bytes)
DATA_leido_746C:
	defb 072h	; 746c

; ----------------------------------------------------------------------
; DATOS leido_746D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x746d..0x746e  (1 bytes)
DATA_leido_746D:
	defb 030h	; 746d

; ----------------------------------------------------------------------
; DATOS leido_746E: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x746e..0x746f  (1 bytes)
DATA_leido_746E:
	defb 062h	; 746e

; ----------------------------------------------------------------------
; DATOS leido_746F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x746f..0x7470  (1 bytes)
DATA_leido_746F:
	defb 03ah	; 746f

; ----------------------------------------------------------------------
; DATOS leido_7470: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7470..0x7471  (1 bytes)
DATA_leido_7470:
	defb 052h	; 7470

; ----------------------------------------------------------------------
; DATOS leido_7471: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7471..0x7472  (1 bytes)
DATA_leido_7471:
	defb 045h	; 7471

; ----------------------------------------------------------------------
; DATOS leido_7472: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7472..0x7473  (1 bytes)
DATA_leido_7472:
	defb 042h	; 7472

; ----------------------------------------------------------------------
; DATOS leido_7473: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7473..0x7474  (1 bytes)
DATA_leido_7473:
	defb 050h	; 7473

; ----------------------------------------------------------------------
; DATOS leido_7474: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7474..0x7475  (1 bytes)
DATA_leido_7474:
	defb 032h	; 7474

; ----------------------------------------------------------------------
; DATOS leido_7475: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7475..0x7476  (1 bytes)
DATA_leido_7475:
	defb 05ah	; 7475

; ----------------------------------------------------------------------
; DATOS leido_7476: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7476..0x7477  (1 bytes)
DATA_leido_7476:
	defb 022h	; 7476

; ----------------------------------------------------------------------
; DATOS leido_7477: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7477..0x7478  (1 bytes)
DATA_leido_7477:
	defb 065h	; 7477

; ----------------------------------------------------------------------
; DATOS leido_7478: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7478..0x7479  (1 bytes)
DATA_leido_7478:
	defb 012h	; 7478

; ----------------------------------------------------------------------
; DATOS leido_7479: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7479..0x747a  (1 bytes)
DATA_leido_7479:
	defb 070h	; 7479

; ----------------------------------------------------------------------
; DATOS leido_747A: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x747a..0x747b  (1 bytes)
DATA_leido_747A:
	defb 002h	; 747a

; ----------------------------------------------------------------------
; DATOS leido_747B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x747b..0x747c  (1 bytes)
DATA_leido_747B:
	defb 07ah	; 747b

; ----------------------------------------------------------------------
; DATOS leido_747C: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x747c..0x747d  (1 bytes)
DATA_leido_747C:
	defb 002h	; 747c

; ----------------------------------------------------------------------
; DATOS leido_747D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x747d..0x747e  (1 bytes)
DATA_leido_747D:
	defb 085h	; 747d

; ----------------------------------------------------------------------
; DATOS leido_747E: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x747e..0x747f  (1 bytes)
DATA_leido_747E:
	defb 0ffh	; 747e

; ----------------------------------------------------------------------
; DATOS leido_747F: 1 bytes que lee p10:6578 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6578 (1 bytes)
;   0x747f..0x7480  (1 bytes)
DATA_leido_747F:
	defb 0e2h	; 747f

; ----------------------------------------------------------------------
; DATOS leido_7480: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x7480..0x7481  (1 bytes)
DATA_leido_7480:
	defb 001h	; 7480

; ----------------------------------------------------------------------
; DATOS leido_7481: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7481..0x7482  (1 bytes)
DATA_leido_7481:
	defb 0e5h	; 7481

; ----------------------------------------------------------------------
; DATOS leido_7482: 3 bytes que leen p10:6BF3, p10:6C03, p10:6C13 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6BF3, p10:6C03, p10:6C13
;   (3 bytes)
;   0x7482..0x7485  (3 bytes)
DATA_leido_7482:
	defb 009h,000h,00ah	; 7482

; ----------------------------------------------------------------------
; DATOS leido_7485: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7485..0x7486  (1 bytes)
DATA_leido_7485:
	defb 094h	; 7485

; ----------------------------------------------------------------------
; DATOS leido_7486: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7486..0x7487  (1 bytes)
DATA_leido_7486:
	defb 050h	; 7486

; ----------------------------------------------------------------------
; DATOS leido_7487: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7487..0x7488  (1 bytes)
DATA_leido_7487:
	defb 096h	; 7487

; ----------------------------------------------------------------------
; DATOS leido_7488: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7488..0x7489  (1 bytes)
DATA_leido_7488:
	defb 000h	; 7488

; ----------------------------------------------------------------------
; DATOS leido_7489: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x7489..0x748a  (1 bytes)
DATA_leido_7489:
	defb 097h	; 7489

; ----------------------------------------------------------------------
; DATOS leido_748A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x748a..0x748b  (1 bytes)
DATA_leido_748A:
	defb 000h	; 748a

; ----------------------------------------------------------------------
; DATOS leido_748B: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x748b..0x748c  (1 bytes)
DATA_leido_748B:
	defb 098h	; 748b

; ----------------------------------------------------------------------
; DATOS leido_748C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x748c..0x748d  (1 bytes)
DATA_leido_748C:
	defb 000h	; 748c

; ----------------------------------------------------------------------
; DATOS leido_748D: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x748d..0x748e  (1 bytes)
DATA_leido_748D:
	defb 0ffh	; 748d

; ----------------------------------------------------------------------
; DATOS resto_748E: lo apuntan con el banco puesto p10:65C0 (0x748E), p10:65D1
;   (0x74A2), p10:65D5 (0x74BA), p10:65E6 (0x74D2), p10:65EA (0x74D2); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p10:65C0, p10:65D1, p10:65D5, p10:65E6, p10:65EA (86 bytes)
;   0x748e..0x74e4  (86 bytes)
DATA_resto_748E:
	defb 0a2h,074h,0a2h,074h,0a2h,074h,0a2h,074h,0a2h,074h,0a2h,074h,0a2h,074h,0a2h,074h	; 748e  .t.t.t.t.t.t.t.t
	defb 0a2h,074h,0a2h,074h,0bah,074h,0bah,074h,0bah,074h,0bah,074h,0bah,074h,0bah,074h	; 749e  .t.t.t.t.t.t.t.t
	defb 0bah,074h,0bah,074h,0bah,074h,0bah,074h,0bah,074h,0bah,074h,0d2h,074h,0d2h,074h	; 74ae  .t.t.t.t.t.t.t.t
	defb 0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h,0d2h,074h	; 74be  .t.t.t.t.t.t.t.t
	defb 0d2h,074h,0d2h,074h,0eah,074h,0eah,074h,0eah,074h,0eah,074h,0eah,074h,0eah,074h	; 74ce  .t.t.t.t.t.t.t.t
	defb 0eah,074h,0eah,074h,0eah,074h	; 74de

; ----------------------------------------------------------------------
; DATOS leido_74E4: 7 bytes que leen p10:6574, p10:6576, p10:6578 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido, con 4 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p10:6574, p10:6576, p10:6578 (7 bytes)
;   0x74e4..0x74eb  (7 bytes)
DATA_leido_74E4:
	defb 0eah,074h,006h,075h,006h,075h,0e2h	; 74e4

; ----------------------------------------------------------------------
; DATOS leido_74EB: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x74eb..0x74ec  (1 bytes)
DATA_leido_74EB:
	defb 001h	; 74eb

; ----------------------------------------------------------------------
; DATOS leido_74EC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x74ec..0x74ed  (1 bytes)
DATA_leido_74EC:
	defb 0a2h	; 74ec

; ----------------------------------------------------------------------
; DATOS leido_74ED: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x74ed..0x74ee  (1 bytes)
DATA_leido_74ED:
	defb 030h	; 74ed

; ----------------------------------------------------------------------
; DATOS leido_74EE: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x74ee..0x74ef  (1 bytes)
DATA_leido_74EE:
	defb 0e1h	; 74ee

; ----------------------------------------------------------------------
; DATOS leido_74EF: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x74ef..0x74f0  (1 bytes)
DATA_leido_74EF:
	defb 001h	; 74ef

; ----------------------------------------------------------------------
; DATOS leido_74F0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x74f0..0x74f1  (1 bytes)
DATA_leido_74F0:
	defb 0e4h	; 74f0

; ----------------------------------------------------------------------
; DATOS leido_74F1: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x74f1..0x74f2  (1 bytes)
DATA_leido_74F1:
	defb 005h	; 74f1

; ----------------------------------------------------------------------
; DATOS leido_74F2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x74f2..0x74f3  (1 bytes)
DATA_leido_74F2:
	defb 00ah	; 74f2

; ----------------------------------------------------------------------
; DATOS leido_74F3: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x74f3..0x74f4  (1 bytes)
DATA_leido_74F3:
	defb 0e4h	; 74f3

; ----------------------------------------------------------------------
; DATOS leido_74F4: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x74f4..0x74f5  (1 bytes)
DATA_leido_74F4:
	defb 006h	; 74f4

; ----------------------------------------------------------------------
; DATOS leido_74F5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x74f5..0x74f6  (1 bytes)
DATA_leido_74F5:
	defb 009h	; 74f5

; ----------------------------------------------------------------------
; DATOS leido_74F6: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x74f6..0x74f7  (1 bytes)
DATA_leido_74F6:
	defb 0e4h	; 74f6

; ----------------------------------------------------------------------
; DATOS leido_74F7: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x74f7..0x74f8  (1 bytes)
DATA_leido_74F7:
	defb 008h	; 74f7

; ----------------------------------------------------------------------
; DATOS leido_74F8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x74f8..0x74f9  (1 bytes)
DATA_leido_74F8:
	defb 008h	; 74f8

; ----------------------------------------------------------------------
; DATOS leido_74F9: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x74f9..0x74fa  (1 bytes)
DATA_leido_74F9:
	defb 0e4h	; 74f9

; ----------------------------------------------------------------------
; DATOS leido_74FA: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x74fa..0x74fb  (1 bytes)
DATA_leido_74FA:
	defb 004h	; 74fa

; ----------------------------------------------------------------------
; DATOS leido_74FB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x74fb..0x74fc  (1 bytes)
DATA_leido_74FB:
	defb 007h	; 74fb

; ----------------------------------------------------------------------
; DATOS leido_74FC: 1 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (1 bytes)
;   0x74fc..0x74fd  (1 bytes)
DATA_leido_74FC:
	defb 0e1h	; 74fc

; ----------------------------------------------------------------------
; DATOS leido_74FD: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x74fd..0x74fe  (1 bytes)
DATA_leido_74FD:
	defb 005h	; 74fd

; ----------------------------------------------------------------------
; DATOS leido_74FE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x74fe..0x74ff  (1 bytes)
DATA_leido_74FE:
	defb 0e4h	; 74fe

; ----------------------------------------------------------------------
; DATOS leido_74FF: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0x74ff..0x7500  (1 bytes)
DATA_leido_74FF:
	defb 00ah	; 74ff

; ----------------------------------------------------------------------
; DATOS leido_7500: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7500..0x7501  (1 bytes)
DATA_leido_7500:
	defb 005h	; 7500

; ----------------------------------------------------------------------
; DATOS leido_7501: 3 bytes que lee p10:66BC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:66BC (3 bytes)
;   0x7501..0x7504  (3 bytes)
DATA_leido_7501:
	defb 004h,003h,002h	; 7501

; ----------------------------------------------------------------------
; DATOS tabla_7504: tabla que se lee desde HL = 0x7504 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p10:6079 (2 bytes)
;   0x7504..0x7506  (2 bytes)
DATA_tabla_7504:
	defb 001h,0ffh	; 7504

; ----------------------------------------------------------------------
; DATOS leido_7506: 510 bytes que leen p10:6082, p10:6084, p10:608C al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido, con 120 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p10:6082, p10:6084, p10:608C (510 bytes)
;   0x7506..0x7704  (510 bytes)
DATA_leido_7506:
	defb 0ach,075h,0beh,075h,0d0h,075h,0d4h,075h,08ah,076h,0e2h,075h,0f0h,075h,0feh,075h	; 7506  .u.u.u.u.v.u.u.u
	defb 00ch,076h,01ah,076h,028h,076h,036h,076h,06eh,076h,03ah,077h,048h,077h,04eh,077h	; 7516  .v.v(v6vnv:wHwNw
	defb 054h,077h,05ah,077h,060h,077h,066h,077h,06ch,077h,072h,077h,078h,077h,07eh,077h	; 7526  TwZw`wfwlwrwxw~w
	defb 084h,077h,08ah,077h,090h,077h,096h,077h,0aeh,077h,0b4h,077h,0bah,077h,0c0h,077h	; 7536  .w.w.w.w.w.w.w.w
	defb 0c6h,077h,0cch,077h,0d2h,077h,0d8h,077h,0deh,077h,0e4h,077h,00eh,078h,014h,078h	; 7546  .w.w.w.w.w.w.x.x
	defb 01ah,078h,020h,078h,026h,078h,02ch,078h,032h,078h,038h,078h,03eh,078h,044h,078h	; 7556  .x x&x,x2x8x>xDx
	defb 04ah,078h,050h,078h,056h,078h,05ch,078h,062h,078h,068h,078h,092h,078h,098h,078h	; 7566  JxPxVx\xbxhx.x.x
	defb 09eh,078h,0a4h,078h,0aah,078h,0b0h,078h,098h,076h,0bch,076h,0f2h,076h,004h,077h	; 7576  .x.x.x.x.v.v.v.w
	defb 016h,077h,0aah,076h,0b6h,078h,044h,076h,052h,076h,060h,076h,07ch,076h,0e0h,076h	; 7586  .w.v.xDvRv`v|v.v
	defb 028h,077h,0ceh,076h,09ch,077h,0eah,077h,06eh,078h,080h,078h,0c8h,078h,0d6h,078h	; 7596  (w.v.w.wnx.x.x.x
	defb 0eeh,078h,0fch,077h,000h,079h,0ffh,0ffh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh	; 75a6  .x.w.y...~.~.~.~
	defb 0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0ffh,0e0h,0b9h,07eh,0b9h,07eh,0b9h,07eh	; 75b6  .~.~.~.~...~.~.~
	defb 0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,010h,0feh,0a4h,07eh,0cfh,0e0h	; 75c6  .~.~.~.~.~...~..
	defb 078h,095h,0f7h,095h,08eh,096h,059h,097h,041h,098h,01ah,099h,0cfh,0e0h,09eh,09eh	; 75d6  x.....Y.A.......
	defb 001h,09fh,054h,09fh,0bah,09fh,084h,0a0h,0feh,0a0h,0cfh,0e0h,0d3h,0a2h,022h,0a3h	; 75e6  ..T...........".
	defb 091h,0a3h,026h,0a4h,09ch,0a4h,01bh,0a5h,0cfh,0e0h,04eh,0a6h,0e9h,0a6h,093h,0a7h	; 75f6  ..&.......N.....
	defb 025h,0a8h,068h,0a9h,068h,0aah,0cfh,0e0h,024h,0adh,05bh,0adh,08bh,0adh,0e5h,0adh	; 7606  %.h.h...$.[.....
	defb 03fh,0aeh,069h,0aeh,0cfh,0e0h,01bh,0afh,039h,0afh,076h,0afh,0ech,0afh,02fh,0b0h	; 7616  ?.i.....9.v.../.
	defb 041h,0b0h,0cfh,0e0h,0dfh,0b0h,048h,0b1h,072h,0b1h,0d8h,0b1h,01ah,0b2h,053h,0b2h	; 7626  A.....H.r.....S.
	defb 0cfh,0e0h,07bh,0b3h,0cfh,0b3h,041h,0b4h,09dh,0b4h,063h,0b5h,0bch,0b5h,0cfh,0e0h	; 7636  ..{...A...c.....
	defb 000h,0a0h,06ah,0a0h,005h,0a1h,0a9h,0a1h,062h,0a2h,020h,0a3h,0cfh,0e0h,09dh,0a4h	; 7646  ..j.....b. .....
	defb 0cah,0a4h,03ch,0a5h,06fh,0a5h,019h,0a6h,0a5h,0a6h,0cfh,0e0h,085h,0a9h,0c7h,0a9h	; 7656  ..<.o...........
	defb 0f4h,0a9h,039h,0aah,096h,0aah,0c9h,0aah,0cfh,0e0h,093h,0b7h,0d7h,0b7h,03fh,0b8h	; 7666  ..9...........?.
	defb 064h,0b9h,008h,0bah,028h,0bbh,0cfh,0e0h,070h,0ach,0dbh,0ach,04eh,0adh,006h,0aeh	; 7676  d...(...p...N...
	defb 0cah,0aeh,048h,0afh,0cfh,0e0h,01ah,09bh,04fh,09bh,08ch,09bh,0ebh,09bh,05bh,09ch	; 7686  ..H.....O.....[.
	defb 0cfh,09ch,0ffh,0e0h,0f4h,0a8h,02ch,0a9h,05bh,0a9h,0b1h,0a9h,0d3h,0a9h,023h,0aah	; 7696  ......,.[.....#.
	defb 06ah,0aah,0cch,0aah,0ffh,0e0h,0aah,0a0h,03ch,0a1h,040h,0a2h,008h,0a3h,04bh,0a4h	; 76a6  j.......<.@...K.
	defb 0bah,0a4h,09bh,0a5h,0d0h,0a6h,0ffh,0e0h,007h,0abh,02fh,0ach,004h,0adh,0d5h,0adh	; 76b6  ........../.....
	defb 08dh,0afh,0d4h,0b0h,05fh,0b2h,08ch,0b3h,0ffh,0e0h,074h,0bbh,0bch,0bbh,005h,0bch	; 76c6  ...._.....t.....
	defb 042h,0bch,0a3h,0bch,0dch,0bch,006h,0bdh,058h,0bdh,0ffh,0e0h,0abh,0b1h,0e1h,0b1h	; 76d6  B.......X.......
	defb 0f1h,0b1h,002h,0b2h,01eh,0b2h,034h,0b2h,04eh,0b2h,061h,0b2h,0ffh,0e0h,054h,0b7h	; 76e6  ......4.N.a...T.
	defb 0d7h,0b7h,05dh,0b8h,08bh,0b8h,0c8h,0b8h,0fch,0b8h,07bh,0b9h,0aeh,0b9h	; 76f6  ..].......{...

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7704..0x773a  (54 bytes)
DATA_7704:
	defb 0ffh,0e0h,0ebh,0b9h,004h,0bah,01fh,0bah,032h,0bah,045h,0bah,06dh,0bah,0b4h,0bah	; 7704  ........2.E.m...
	defb 0feh,0bah,0ffh,0e0h,005h,0bch,04dh,0bch,08ch,0bch,08dh,0bch,0ebh,0bch,033h,0bdh	; 7714  ......M.......3.
	defb 084h,0bdh,0b6h,0bdh,0ffh,0e0h,0f2h,0b2h,0bah,0b3h,04eh,0b4h,023h,0b5h,0e9h,0b5h	; 7724  ..........N.#...
	defb 0b7h,0b6h,0beh,0b7h,0a5h,0b8h	; 7734

; ----------------------------------------------------------------------
; DATOS leido_773A: 32 bytes que lee p10:608C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:608C (32 bytes)
;   0x773a..0x775a  (32 bytes)
DATA_leido_773A:
	defb 0cfh,0e0h,030h,0bdh,05ch,0bdh,0b4h,0bdh,0d9h,0bdh,059h,0beh,0bah,0beh,030h,002h	; 773a  ..0.\.....Y...0.
	defb 0bah,07eh,0f5h,07eh,030h,003h,034h,07fh,081h,07fh,030h,003h,0d2h,07fh,0f7h,07fh	; 774a  .~.~0.4...0.....

; ----------------------------------------------------------------------
; DATOS sin identificar  0x775a..0x778a  (48 bytes)
DATA_775A:
	defb 030h,004h,02eh,080h,069h,080h,030h,004h,0a8h,080h,0d5h,080h,030h,004h,00ch,081h	; 775a  0...i.0.....0...
	defb 045h,081h,030h,004h,07ch,081h,0a9h,081h,030h,004h,0dah,081h,021h,082h,030h,005h	; 776a  E.0.|...0...!.0.
	defb 06ah,082h,0a9h,082h,030h,007h,0d4h,082h,01bh,083h,030h,025h,066h,083h,0bfh,083h	; 777a  j...0.....0%f...

; ----------------------------------------------------------------------
; DATOS leido_778A: 350 bytes que lee p10:608C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 38 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:608C (350 bytes)
;   0x778a..0x78e8  (350 bytes)
DATA_leido_778A:
	defb 030h,00ch,008h,084h,04ch,084h,030h,012h,09ah,084h,017h,085h,030h,00dh,096h,085h	; 778a  0...L.0.....0...
	defb 0beh,085h,0ffh,0e0h,000h,0a8h,01ah,0a8h,020h,0a8h,02ch,0a8h,03fh,0a8h,050h,0a8h	; 779a  ........ .,.?.P.
	defb 0c5h,0a8h,06eh,0a9h,030h,022h,0e9h,085h,010h,086h,030h,008h,037h,086h,08eh,086h	; 77aa  ..n.0"....0.7...
	defb 030h,008h,0ddh,086h,030h,087h,030h,00dh,083h,087h,0eeh,087h,030h,008h,069h,088h	; 77ba  0...0.0.....0.i.
	defb 0beh,088h,030h,00eh,017h,089h,088h,089h,030h,005h,0fdh,089h,02ch,08ah,030h,005h	; 77ca  ..0.....0...,.0.
	defb 05dh,08ah,086h,08ah,030h,005h,0b3h,08ah,0dch,08ah,030h,013h,011h,08bh,080h,08bh	; 77da  ]...0.....0.....
	defb 0ffh,0e0h,0e2h,0a9h,025h,0aah,02bh,0aah,035h,0aah,0b5h,0aah,0cfh,0aah,0e7h,0aah	; 77ea  ....%.+.5.......
	defb 032h,0abh,0ffh,0e0h,063h,0b0h,074h,0b0h,089h,0b0h,09ah,0b0h,0a4h,0b0h,0b2h,0b0h	; 77fa  2...c.t.........
	defb 0c0h,0b0h,0d3h,0b0h,030h,012h,0f7h,08bh,050h,08ch,030h,007h,0a9h,08ch,0d8h,08ch	; 780a  ....0...P.0.....
	defb 030h,004h,005h,08dh,04ch,08dh,030h,00ah,089h,08dh,0b0h,08dh,030h,00ah,0e3h,08dh	; 781a  0...L.0.....0...
	defb 032h,08eh,030h,00ah,0bdh,08eh,0bdh,08eh,030h,00ah,0feh,08eh,008h,08fh,030h,00ah	; 782a  2.0.....0.....0.
	defb 043h,08fh,047h,08fh,030h,004h,092h,08fh,0cdh,08fh,030h,008h,010h,090h,073h,090h	; 783a  C.G.0.....0...s.
	defb 030h,00ch,0bbh,090h,006h,091h,030h,00ah,048h,091h,059h,091h,030h,004h,06ch,091h	; 784a  0.....0.H.Y.0.l.
	defb 09bh,091h,030h,00ah,0ceh,091h,007h,092h,030h,00eh,05fh,092h,0e2h,092h,030h,007h	; 785a  ..0.....0._...0.
	defb 020h,093h,047h,093h,0ffh,0e0h,0f4h,0abh,0f4h,0abh,0f4h,0abh,0f9h,0abh,0fdh,0abh	; 786a   .G.............
	defb 02ah,0ach,02eh,0ach,032h,0ach,0ffh,0e0h,08ch,0ach,08dh,0ach,08eh,0ach,096h,0ach	; 787a  *...2...........
	defb 0b2h,0ach,0d0h,0ach,0f6h,0ach,00eh,0adh,030h,009h,06ch,093h,08fh,093h,030h,007h	; 788a  ........0.l...0.
	defb 0cfh,093h,018h,094h,030h,007h,055h,094h,0b3h,094h,030h,008h,0f2h,094h,00fh,095h	; 789a  ....0.U...0.....
	defb 030h,009h,02eh,095h,02fh,095h,030h,007h,030h,095h,053h,095h,0ffh,0e0h,000h,0a0h	; 78aa  0.../.0.0.S.....
	defb 001h,0a0h,017h,0a0h,02fh,0a0h,04bh,0a0h,064h,0a0h,07dh,0a0h,094h,0a0h,0cfh,0e0h	; 78ba  ..../.K.d.}.....
	defb 028h,0adh,029h,0adh,02ah,0adh,051h,0adh,075h,0adh,081h,0adh,0ffh,0e0h,0a6h,0adh	; 78ca  (.).*.Q.u.......
	defb 0a7h,0adh,0a8h,0adh,0a9h,0adh,0beh,0adh,0d6h,0adh,0e4h,0adh,0eeh,0adh	; 78da  ..............

; ----------------------------------------------------------------------
; DATOS resto_78E8: lo apuntan con el banco puesto p10:6D5F (0x7904); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p10:6D5F (32 bytes)
;   0x78e8..0x7908  (32 bytes)
DATA_resto_78E8:
	defb 030h,010h,090h,0aeh,091h,0aeh,0ffh,0e0h,092h,0aeh,00fh,0afh,03ah,0afh,065h,0afh	; 78e8  0...........:.e.
	defb 093h,0afh,0c3h,0afh,0f3h,0afh,0fbh,0afh,010h,010h,011h,0b1h,044h,07bh,044h,07bh	; 78f8  ............D{D{

; ----------------------------------------------------------------------
; DATOS leido_7908: 82 bytes que leen p10:6D68, p10:6D6D al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 40 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p10:6D68, p10:6D6D (82 bytes)
;   0x7908..0x795a  (82 bytes)
DATA_leido_7908:
	defb 044h,07bh,064h,07bh,064h,07bh,084h,07bh,0a4h,07bh,0c4h,07bh,0e4h,07bh,0e4h,07bh	; 7908  D{d{d{.{.{.{.{.{
	defb 004h,07ch,024h,07ch,044h,07ch,064h,07ch,084h,07ch,084h,07ch,084h,07ch,084h,07ch	; 7918  .|$|D|d|.|.|.|.|
	defb 084h,07ch,084h,07ch,0a4h,07ch,0c4h,07ch,0e4h,07ch,004h,07dh,024h,07dh,044h,07dh	; 7928  .|.|.|.|.|.}$}D}
	defb 064h,07dh,064h,07dh,084h,07dh,0a4h,07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh	; 7938  d}d}.}.}.}.}.}.}
	defb 0c4h,07dh,0c4h,07dh,0e4h,07dh,004h,07eh,024h,07eh,044h,07eh,064h,07eh,084h,07eh	; 7948  .}.}.}.~$~D~d~.~
	defb 084h,07eh	; 7958

; ----------------------------------------------------------------------
; DATOS sin identificar  0x795a..0x79aa  (80 bytes)
DATA_795A:
	defb 0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh	; 795a  .~.~.~.~.~.~.~.~
	defb 0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh	; 796a  .~.~.~.~.~.~.~.~
	defb 0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,01ch,07ah,01ch,07ah,01ch,07ah	; 797a  .~.~.~.~.~.z.z.z
	defb 01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah	; 798a  .z.z.z.z.z.z.z.z
	defb 01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah	; 799a  .z.z.z.z.z.z.z.z

; ----------------------------------------------------------------------
; DATOS leido_79AA: 36 bytes que leen p10:6D68, p10:6D6D al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 26 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p10:6D68, p10:6D6D (36 bytes)
;   0x79aa..0x79ce  (36 bytes)
DATA_leido_79AA:
	defb 03ch,07ah,05ch,07ah,07ch,07ah,07ch,07ah,07ch,07ah,07ch,07ah,07ch,07ah,09ch,07ah	; 79aa  <z\z|z|z|z|z|z.z
	defb 09ch,07ah,09ch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah	; 79ba  .z.z.z.z.z.z.z.z
	defb 0bch,07ah,0bch,07ah	; 79ca

; ----------------------------------------------------------------------
; DATOS sin identificar  0x79ce..0x7a3c  (110 bytes)
DATA_79CE:
	defb 0dch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah	; 79ce  .z.z.z.z.z.z.z.z
	defb 01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah	; 79de  .z.z.z.z.z.z.z.z
	defb 01ch,07ah,01ch,07ah,01ch,07ah,01ch,07ah,03ch,07ah,05ch,07ah,07ch,07ah,07ch,07ah	; 79ee  .z.z.z.z<z\z|z|z
	defb 07ch,07ah,07ch,07ah,07ch,07ah,09ch,07ah,09ch,07ah,09ch,07ah,0bch,07ah,0bch,07ah	; 79fe  |z|z|z.z.z.z.z.z
	defb 0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0dch,07ah,080h,0d0h	; 7a0e  .z.z.z.z.z.z.z..
	defb 020h,07fh,040h,000h,0c0h,080h,0d0h,020h,07fh,030h,0d0h,080h,0d0h,030h,07fh,030h	; 7a1e   .@.... .0...0.0
	defb 0d0h,080h,0b0h,0e0h,018h,0e0h,0b0h,080h,090h,0a0h,0b0h,0a0h,090h,080h	; 7a2e  ..............

; ----------------------------------------------------------------------
; DATOS leido_7A3C: 160 bytes que lee p10:737B al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:737B (160 bytes)
;   0x7a3c..0x7adc  (160 bytes)
DATA_leido_7A3C:
	defb 0a0h,090h,0a0h,0ach,0f0h,00ah,016h,000h,090h,000h,020h,040h,060h,050h,038h,01ch	; 7a3c  .......... @`P8.
	defb 0f2h,0e2h,0d6h,0d0h,0d0h,0dah,0dch,0e0h,0e2h,0e2h,0e2h,0e0h,0dch,0d8h,0d0h,0b0h	; 7a4c  ................
	defb 080h,0aah,0c8h,000h,024h,040h,05ch,070h,07fh,06ah,04ah,026h,000h,0d0h,0a8h,08ch	; 7a5c  ....$@\p.jJ&....
	defb 080h,0aah,0c8h,000h,024h,040h,05ch,070h,07fh,06ah,04ah,026h,000h,0d0h,0a8h,08ch	; 7a6c  ....$@\p.jJ&....
	defb 000h,068h,040h,004h,000h,026h,040h,0f5h,010h,040h,020h,0d0h,0f0h,000h,0c0h,080h	; 7a7c  .h@..&@..@ .....
	defb 0d0h,030h,0c0h,0a0h,0b0h,0c0h,080h,0d0h,0f0h,040h,010h,0c0h,0d4h,000h,0c0h,0e0h	; 7a8c  .0.......@......
	defb 090h,088h,090h,09ch,0b0h,0c0h,0e0h,026h,070h,07ch,070h,056h,040h,020h,010h,0fch	; 7a9c  .......&p|pV@ ..
	defb 0e0h,0fch,010h,024h,040h,054h,072h,07fh,070h,026h,0e0h,0c0h,0b0h,09ch,090h,088h	; 7aac  ...$@Tr.p&......
	defb 080h,080h,0e8h,018h,038h,066h,078h,07fh,080h,080h,080h,080h,080h,080h,080h,09ch	; 7abc  ....8fx.........
	defb 080h,0dch,080h,020h,0d0h,080h,07fh,080h,0d0h,020h,080h,0dch,080h,09ch,080h,088h	; 7acc  ... ..... ......

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7adc..0x7b44  (104 bytes)
DATA_7ADC:
	defb 044h,07bh,044h,07bh,044h,07bh,064h,07bh,064h,07bh,084h,07bh,0a4h,07bh,0c4h,07bh	; 7adc  D{D{D{d{d{.{.{.{
	defb 0e4h,07bh,0e4h,07bh,004h,07ch,024h,07ch,044h,07ch,064h,07ch,084h,07ch,084h,07ch	; 7aec  .{.{.|$|D|d|.|.|
	defb 084h,07ch,084h,07ch,084h,07ch,084h,07ch,0a4h,07ch,0c4h,07ch,0e4h,07ch,004h,07dh	; 7afc  .|.|.|.|.|.|.|.}
	defb 024h,07dh,044h,07dh,064h,07dh,064h,07dh,084h,07dh,0a4h,07dh,0c4h,07dh,0c4h,07dh	; 7b0c  $}D}d}d}.}.}.}.}
	defb 0c4h,07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh,0e4h,07dh,004h,07eh,024h,07eh,044h,07eh	; 7b1c  .}.}.}.}.}.~$~D~
	defb 064h,07eh,084h,07eh,084h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh	; 7b2c  d~.~.~.~.~.~.~.~
	defb 0a4h,07eh,0a4h,07eh,0a4h,07eh,0a4h,07eh	; 7b3c  .~.~.~.~

; ----------------------------------------------------------------------
; DATOS leido_7B44: 864 bytes que leen p10:737B, p10:7396 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 118 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p10:737B, p10:7396 (864 bytes)
;   0x7b44..0x7ea4  (864 bytes)
DATA_leido_7B44:
	defb 000h,0f8h,0f0h,0e8h,0e0h,0d8h,0d0h,0c8h,0c0h,0b8h,0b0h,0a8h,0a0h,098h,090h,088h	; 7b44  ................
	defb 080h,078h,070h,068h,060h,058h,050h,048h,040h,038h,030h,028h,020h,018h,010h,008h	; 7b54  .xph`XPH@80( ...
	defb 000h,04eh,062h,06dh,075h,07ah,07dh,07eh,07fh,07eh,07dh,07ah,075h,06dh,062h,04eh	; 7b64  .Nbmuz}~.~}zumbN
	defb 000h,0b1h,09dh,092h,08ah,085h,082h,081h,080h,081h,082h,085h,08ah,092h,09dh,0b1h	; 7b74  ................
	defb 000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h,019h	; 7b84  ..1GZju}.}ujZG1.
	defb 000h,0e7h,0cfh,0b9h,0a6h,096h,08bh,083h,080h,083h,08bh,096h,0a6h,0b9h,0cfh,0e7h	; 7b94  ................
	defb 000h,0f0h,0e0h,0d0h,0c0h,0b0h,0a0h,090h,080h,090h,0a0h,0b0h,0c0h,0d0h,0e0h,0f0h	; 7ba4  ................
	defb 000h,010h,020h,030h,040h,050h,060h,070h,07fh,070h,060h,050h,040h,030h,020h,010h	; 7bb4  .. 0@P`p.p`P@0 .
	defb 000h,0e0h,0c0h,0a0h,080h,0a0h,0c0h,0e0h,000h,020h,040h,060h,07fh,060h,040h,020h	; 7bc4  ......... @`.`@
	defb 000h,0e0h,0c0h,0a0h,080h,0a0h,0c0h,0e0h,000h,020h,040h,060h,07fh,060h,040h,020h	; 7bd4  ......... @`.`@
	defb 000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h,019h	; 7be4  ..1GZju}.}ujZG1.
	defb 000h,0e0h,0c0h,0a0h,080h,0a0h,0c0h,0e0h,000h,020h,040h,060h,07fh,060h,040h,020h	; 7bf4  ......... @`.`@
	defb 000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h,019h	; 7c04  ..1GZju}.}ujZG1.
	defb 080h,090h,0a0h,0b0h,0c0h,0d0h,0e0h,0f0h,000h,010h,020h,030h,040h,050h,060h,070h	; 7c14  .......... 0@P`p
	defb 000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h,019h	; 7c24  ..1GZju}.}ujZG1.
	defb 080h,0a0h,0c0h,0e0h,000h,020h,040h,060h,080h,0a0h,0c0h,0e0h,000h,020h,040h,060h	; 7c34  ..... @`..... @`
	defb 001h,02ah,040h,050h,05ch,068h,070h,078h,07fh,078h,070h,068h,05ch,050h,040h,02ah	; 7c44  .*@P\hpx.xph\P@*
	defb 0ffh,0d6h,0c0h,0b0h,0a4h,098h,090h,088h,081h,088h,090h,098h,0a4h,0b0h,0c0h,0d6h	; 7c54  ................
	defb 000h,040h,07fh,040h,001h,0c0h,081h,0c0h,001h,040h,07fh,040h,001h,0c0h,001h,040h	; 7c64  .@.@.....@.@...@
	defb 001h,0e0h,001h,020h,001h,0f0h,001h,010h,001h,0ffh,0ffh,0ffh,0ffh,040h,040h,040h	; 7c74  ... .........@@@
	defb 000h,0f0h,0e0h,0d0h,0c0h,0b0h,0a0h,090h,080h,080h,080h,080h,080h,080h,080h,080h	; 7c84  ................
	defb 080h,080h,080h,080h,080h,080h,080h,080h,07fh,070h,060h,050h,040h,030h,020h,010h	; 7c94  .........p`P@0 .
	defb 000h,030h,050h,060h,070h,060h,050h,030h,000h,0d0h,0b0h,0a0h,090h,0a0h,0b0h,0d0h	; 7ca4  .0P`p`P0........
	defb 000h,040h,060h,070h,060h,040h,000h,0c0h,0a0h,090h,0a0h,0c0h,000h,070h,000h,090h	; 7cb4  .@`p`@.......p..
	defb 030h,050h,050h,030h,000h,000h,010h,040h,060h,070h,060h,030h,0f0h,0e0h,0e0h,000h	; 7cc4  0PP0...@`p`0....
	defb 020h,020h,010h,0c0h,0a0h,090h,0a0h,0c0h,000h,000h,0d0h,0b0h,0b0h,0d0h,000h,000h	; 7cd4    ..............
	defb 0a0h,090h,090h,0a0h,0a0h,0b0h,0b0h,0b0h,0c0h,0c0h,0d0h,0d0h,0e0h,0e0h,0f0h,0f0h	; 7ce4  ................
	defb 000h,000h,010h,010h,020h,020h,030h,030h,040h,040h,050h,050h,060h,060h,060h,050h	; 7cf4  ....  00@@PP```P
	defb 000h,07fh,000h,080h,0a0h,0c0h,0d8h,0f0h,008h,020h,030h,040h,050h,060h,070h,078h	; 7d04  ......... 0@P`px
	defb 07ch,07fh,07ch,078h,070h,060h,050h,040h,030h,020h,008h,0f0h,0d8h,0c0h,0a0h,080h	; 7d14  |.|xp`P@0 ......
	defb 07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h	; 7d24  ................
	defb 07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h,07fh,080h	; 7d34  ................
	defb 07fh,080h,07fh,080h,07fh,080h,07fh,080h,000h,000h,000h,000h,000h,000h,000h,000h	; 7d44  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,07fh,080h,07fh,080h,07fh,080h,07fh,080h	; 7d54  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,07fh,080h,07fh,080h,07fh,080h,07fh,080h	; 7d64  ................
	defb 07fh,080h,07fh,080h,07fh,080h,07fh,080h,000h,000h,000h,000h,000h,000h,000h,000h	; 7d74  ................
	defb 080h,08eh,0a0h,0c0h,0e0h,000h,020h,03fh,03eh,03ch,03ah,037h,031h,029h,020h,01ch	; 7d84  ...... ?><:71) .
	defb 010h,000h,0e6h,0c0h,0d0h,000h,020h,03fh,010h,0e0h,080h,0c0h,000h,020h,000h,090h	; 7d94  ...... ?..... ..
	defb 000h,070h,050h,020h,050h,070h,030h,000h,050h,07fh,060h,010h,030h,040h,000h,0b0h	; 7da4  .pP Pp0.P.`.0@..
	defb 010h,060h,000h,0e0h,0f0h,000h,0b0h,090h,0c0h,010h,0e0h,0a0h,0c0h,0f0h,0c0h,0a0h	; 7db4  .`..............
	defb 080h,0b0h,0c0h,010h,01ah,02ah,02ch,01ah,000h,0e0h,0d0h,0e0h,022h,053h,070h,075h	; 7dc4  .....*,....."Spu
	defb 070h,031h,0eah,080h,088h,08ah,08ch,08eh,000h,07fh,075h,073h,062h,000h,0c0h,090h	; 7dd4  p1........usb...
	defb 000h,020h,030h,040h,050h,058h,060h,068h,070h,068h,060h,058h,050h,040h,030h,020h	; 7de4  . 0@PX`hph`XP@0
	defb 000h,0e0h,0d0h,0c0h,0b0h,0a0h,098h,090h,088h,090h,098h,0a0h,0b0h,0c0h,0d0h,0e0h	; 7df4  ................
	defb 000h,000h,000h,000h,000h,070h,070h,000h,000h,080h,080h,080h,000h,000h,000h,000h	; 7e04  .....pp.........
	defb 070h,070h,070h,000h,080h,080h,000h,000h,000h,000h,070h,070h,000h,000h,080h,080h	; 7e14  ppp.......pp....
	defb 000h,000h,000h,080h,000h,070h,070h,070h,000h,000h,000h,080h,000h,000h,000h,080h	; 7e24  .....ppp........
	defb 080h,080h,080h,000h,080h,000h,000h,000h,000h,080h,080h,080h,000h,080h,080h,080h	; 7e34  ................
	defb 000h,030h,0f0h,030h,040h,050h,060h,060h,070h,079h,070h,078h,040h,000h,000h,00eh	; 7e44  .0.0@P``pypx@...
	defb 070h,083h,060h,050h,000h,000h,000h,026h,074h,082h,084h,065h,064h,0e4h,093h,084h	; 7e54  p.`P...&t..ed...
	defb 070h,070h,070h,070h,070h,070h,070h,070h,080h,080h,080h,080h,080h,080h,080h,080h	; 7e64  pppppppp........
	defb 070h,070h,070h,080h,080h,080h,070h,070h,070h,070h,080h,080h,080h,080h,080h,080h	; 7e74  ppp...pppp......
	defb 070h,070h,060h,080h,090h,090h,080h,080h,040h,040h,030h,080h,090h,090h,080h,080h	; 7e84  pp`.....@@0.....
	defb 020h,020h,010h,080h,090h,090h,080h,080h,000h,000h,0f0h,080h,090h,090h,080h,080h	; 7e94    ..............

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7ea4..0x7eb9  (21 bytes)
DATA_7EA4:
	defb 0feh,001h,0f8h,015h,0eah,00fh,0e9h,001h,0d1h,0ebh,001h,088h,004h,074h,044h,074h	; 7ea4  .............tDt
	defb 0ebh,001h,023h,0d0h,009h	; 7eb4

; ----------------------------------------------------------------------
; DATOS leido_7EB9: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0x7eb9..0x7ebb  (2 bytes)
DATA_leido_7EB9:
	defb 0ffh,0feh	; 7eb9

; ----------------------------------------------------------------------
; DATOS leido_7EBB: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0x7ebb..0x7ebc  (1 bytes)
DATA_leido_7EBB:
	defb 002h	; 7ebb

; ----------------------------------------------------------------------
; DATOS leido_7EBC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ebc..0x7ebd  (1 bytes)
DATA_leido_7EBC:
	defb 0e0h	; 7ebc

; ----------------------------------------------------------------------
; DATOS leido_7EBD: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x7ebd..0x7ebe  (1 bytes)
DATA_leido_7EBD:
	defb 002h	; 7ebd

; ----------------------------------------------------------------------
; DATOS leido_7EBE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ebe..0x7ebf  (1 bytes)
DATA_leido_7EBE:
	defb 0e2h	; 7ebe

; ----------------------------------------------------------------------
; DATOS leido_7EBF: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x7ebf..0x7ec0  (1 bytes)
DATA_leido_7EBF:
	defb 001h	; 7ebf

; ----------------------------------------------------------------------
; DATOS leido_7EC0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ec0..0x7ec1  (1 bytes)
DATA_leido_7EC0:
	defb 031h	; 7ec0

; ----------------------------------------------------------------------
; DATOS leido_7EC1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ec1..0x7ec2  (1 bytes)
DATA_leido_7EC1:
	defb 000h	; 7ec1

; ----------------------------------------------------------------------
; DATOS leido_7EC2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ec2..0x7ec3  (1 bytes)
DATA_leido_7EC2:
	defb 030h	; 7ec2

; ----------------------------------------------------------------------
; DATOS leido_7EC3: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ec3..0x7ec4  (1 bytes)
DATA_leido_7EC3:
	defb 0f0h	; 7ec3

; ----------------------------------------------------------------------
; DATOS leido_7EC4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ec4..0x7ec5  (1 bytes)
DATA_leido_7EC4:
	defb 030h	; 7ec4

; ----------------------------------------------------------------------
; DATOS leido_7EC5: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ec5..0x7ec6  (1 bytes)
DATA_leido_7EC5:
	defb 0e0h	; 7ec5

; ----------------------------------------------------------------------
; DATOS leido_7EC6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ec6..0x7ec7  (1 bytes)
DATA_leido_7EC6:
	defb 030h	; 7ec6

; ----------------------------------------------------------------------
; DATOS leido_7EC7: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ec7..0x7ec8  (1 bytes)
DATA_leido_7EC7:
	defb 0d0h	; 7ec7

; ----------------------------------------------------------------------
; DATOS leido_7EC8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ec8..0x7ec9  (1 bytes)
DATA_leido_7EC8:
	defb 030h	; 7ec8

; ----------------------------------------------------------------------
; DATOS leido_7EC9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ec9..0x7eca  (1 bytes)
DATA_leido_7EC9:
	defb 0c0h	; 7ec9

; ----------------------------------------------------------------------
; DATOS leido_7ECA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7eca..0x7ecb  (1 bytes)
DATA_leido_7ECA:
	defb 030h	; 7eca

; ----------------------------------------------------------------------
; DATOS leido_7ECB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ecb..0x7ecc  (1 bytes)
DATA_leido_7ECB:
	defb 0b0h	; 7ecb

; ----------------------------------------------------------------------
; DATOS leido_7ECC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ecc..0x7ecd  (1 bytes)
DATA_leido_7ECC:
	defb 030h	; 7ecc

; ----------------------------------------------------------------------
; DATOS leido_7ECD: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ecd..0x7ece  (1 bytes)
DATA_leido_7ECD:
	defb 0a0h	; 7ecd

; ----------------------------------------------------------------------
; DATOS leido_7ECE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ece..0x7ecf  (1 bytes)
DATA_leido_7ECE:
	defb 030h	; 7ece

; ----------------------------------------------------------------------
; DATOS leido_7ECF: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ecf..0x7ed0  (1 bytes)
DATA_leido_7ECF:
	defb 090h	; 7ecf

; ----------------------------------------------------------------------
; DATOS leido_7ED0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ed0..0x7ed1  (1 bytes)
DATA_leido_7ED0:
	defb 030h	; 7ed0

; ----------------------------------------------------------------------
; DATOS leido_7ED1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ed1..0x7ed2  (1 bytes)
DATA_leido_7ED1:
	defb 080h	; 7ed1

; ----------------------------------------------------------------------
; DATOS leido_7ED2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ed2..0x7ed3  (1 bytes)
DATA_leido_7ED2:
	defb 030h	; 7ed2

; ----------------------------------------------------------------------
; DATOS leido_7ED3: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ed3..0x7ed4  (1 bytes)
DATA_leido_7ED3:
	defb 070h	; 7ed3

; ----------------------------------------------------------------------
; DATOS leido_7ED4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ed4..0x7ed5  (1 bytes)
DATA_leido_7ED4:
	defb 030h	; 7ed4

; ----------------------------------------------------------------------
; DATOS leido_7ED5: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ed5..0x7ed6  (1 bytes)
DATA_leido_7ED5:
	defb 0c0h	; 7ed5

; ----------------------------------------------------------------------
; DATOS leido_7ED6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ed6..0x7ed7  (1 bytes)
DATA_leido_7ED6:
	defb 030h	; 7ed6

; ----------------------------------------------------------------------
; DATOS leido_7ED7: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ed7..0x7ed8  (1 bytes)
DATA_leido_7ED7:
	defb 0b0h	; 7ed7

; ----------------------------------------------------------------------
; DATOS leido_7ED8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ed8..0x7ed9  (1 bytes)
DATA_leido_7ED8:
	defb 030h	; 7ed8

; ----------------------------------------------------------------------
; DATOS leido_7ED9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ed9..0x7eda  (1 bytes)
DATA_leido_7ED9:
	defb 0a0h	; 7ed9

; ----------------------------------------------------------------------
; DATOS leido_7EDA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7eda..0x7edb  (1 bytes)
DATA_leido_7EDA:
	defb 030h	; 7eda

; ----------------------------------------------------------------------
; DATOS leido_7EDB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7edb..0x7edc  (1 bytes)
DATA_leido_7EDB:
	defb 090h	; 7edb

; ----------------------------------------------------------------------
; DATOS leido_7EDC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7edc..0x7edd  (1 bytes)
DATA_leido_7EDC:
	defb 030h	; 7edc

; ----------------------------------------------------------------------
; DATOS leido_7EDD: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7edd..0x7ede  (1 bytes)
DATA_leido_7EDD:
	defb 080h	; 7edd

; ----------------------------------------------------------------------
; DATOS leido_7EDE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ede..0x7edf  (1 bytes)
DATA_leido_7EDE:
	defb 030h	; 7ede

; ----------------------------------------------------------------------
; DATOS leido_7EDF: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7edf..0x7ee0  (1 bytes)
DATA_leido_7EDF:
	defb 070h	; 7edf

; ----------------------------------------------------------------------
; DATOS leido_7EE0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ee0..0x7ee1  (1 bytes)
DATA_leido_7EE0:
	defb 020h	; 7ee0

; ----------------------------------------------------------------------
; DATOS leido_7EE1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ee1..0x7ee2  (1 bytes)
DATA_leido_7EE1:
	defb 0c0h	; 7ee1

; ----------------------------------------------------------------------
; DATOS leido_7EE2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ee2..0x7ee3  (1 bytes)
DATA_leido_7EE2:
	defb 020h	; 7ee2

; ----------------------------------------------------------------------
; DATOS leido_7EE3: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ee3..0x7ee4  (1 bytes)
DATA_leido_7EE3:
	defb 0b0h	; 7ee3

; ----------------------------------------------------------------------
; DATOS leido_7EE4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ee4..0x7ee5  (1 bytes)
DATA_leido_7EE4:
	defb 020h	; 7ee4

; ----------------------------------------------------------------------
; DATOS leido_7EE5: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ee5..0x7ee6  (1 bytes)
DATA_leido_7EE5:
	defb 0a0h	; 7ee5

; ----------------------------------------------------------------------
; DATOS leido_7EE6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ee6..0x7ee7  (1 bytes)
DATA_leido_7EE6:
	defb 020h	; 7ee6

; ----------------------------------------------------------------------
; DATOS leido_7EE7: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ee7..0x7ee8  (1 bytes)
DATA_leido_7EE7:
	defb 090h	; 7ee7

; ----------------------------------------------------------------------
; DATOS leido_7EE8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ee8..0x7ee9  (1 bytes)
DATA_leido_7EE8:
	defb 020h	; 7ee8

; ----------------------------------------------------------------------
; DATOS leido_7EE9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ee9..0x7eea  (1 bytes)
DATA_leido_7EE9:
	defb 080h	; 7ee9

; ----------------------------------------------------------------------
; DATOS leido_7EEA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7eea..0x7eeb  (1 bytes)
DATA_leido_7EEA:
	defb 020h	; 7eea

; ----------------------------------------------------------------------
; DATOS leido_7EEB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7eeb..0x7eec  (1 bytes)
DATA_leido_7EEB:
	defb 070h	; 7eeb

; ----------------------------------------------------------------------
; DATOS leido_7EEC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7eec..0x7eed  (1 bytes)
DATA_leido_7EEC:
	defb 010h	; 7eec

; ----------------------------------------------------------------------
; DATOS leido_7EED: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7eed..0x7eee  (1 bytes)
DATA_leido_7EED:
	defb 0c0h	; 7eed

; ----------------------------------------------------------------------
; DATOS leido_7EEE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7eee..0x7eef  (1 bytes)
DATA_leido_7EEE:
	defb 010h	; 7eee

; ----------------------------------------------------------------------
; DATOS leido_7EEF: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7eef..0x7ef0  (1 bytes)
DATA_leido_7EEF:
	defb 0b0h	; 7eef

; ----------------------------------------------------------------------
; DATOS leido_7EF0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ef0..0x7ef1  (1 bytes)
DATA_leido_7EF0:
	defb 010h	; 7ef0

; ----------------------------------------------------------------------
; DATOS leido_7EF1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ef1..0x7ef2  (1 bytes)
DATA_leido_7EF1:
	defb 0a0h	; 7ef1

; ----------------------------------------------------------------------
; DATOS leido_7EF2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ef2..0x7ef3  (1 bytes)
DATA_leido_7EF2:
	defb 010h	; 7ef2

; ----------------------------------------------------------------------
; DATOS leido_7EF3: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7ef3..0x7ef4  (1 bytes)
DATA_leido_7EF3:
	defb 090h	; 7ef3

; ----------------------------------------------------------------------
; DATOS leido_7EF4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0x7ef4..0x7ef6  (2 bytes)
DATA_leido_7EF4:
	defb 0ffh,0feh	; 7ef4

; ----------------------------------------------------------------------
; DATOS leido_7EF6: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0x7ef6..0x7ef7  (1 bytes)
DATA_leido_7EF6:
	defb 002h	; 7ef6

; ----------------------------------------------------------------------
; DATOS leido_7EF7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ef7..0x7ef8  (1 bytes)
DATA_leido_7EF7:
	defb 0f8h	; 7ef7

; ----------------------------------------------------------------------
; DATOS leido_7EF8: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0x7ef8..0x7ef9  (1 bytes)
DATA_leido_7EF8:
	defb 02ah	; 7ef8

; ----------------------------------------------------------------------
; DATOS leido_7EF9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7ef9..0x7efa  (1 bytes)
DATA_leido_7EF9:
	defb 0e2h	; 7ef9

; ----------------------------------------------------------------------
; DATOS leido_7EFA: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0x7efa..0x7efb  (1 bytes)
DATA_leido_7EFA:
	defb 001h	; 7efa

; ----------------------------------------------------------------------
; DATOS leido_7EFB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7efb..0x7efc  (1 bytes)
DATA_leido_7EFB:
	defb 031h	; 7efb

; ----------------------------------------------------------------------
; DATOS leido_7EFC: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7efc..0x7efd  (1 bytes)
DATA_leido_7EFC:
	defb 000h	; 7efc

; ----------------------------------------------------------------------
; DATOS leido_7EFD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7efd..0x7efe  (1 bytes)
DATA_leido_7EFD:
	defb 030h	; 7efd

; ----------------------------------------------------------------------
; DATOS leido_7EFE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7efe..0x7eff  (1 bytes)
DATA_leido_7EFE:
	defb 0f0h	; 7efe

; ----------------------------------------------------------------------
; DATOS leido_7EFF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7eff..0x7f00  (1 bytes)
DATA_leido_7EFF:
	defb 030h	; 7eff

; ----------------------------------------------------------------------
; DATOS leido_7F00: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f00..0x7f01  (1 bytes)
DATA_leido_7F00:
	defb 0e0h	; 7f00

; ----------------------------------------------------------------------
; DATOS leido_7F01: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f01..0x7f02  (1 bytes)
DATA_leido_7F01:
	defb 030h	; 7f01

; ----------------------------------------------------------------------
; DATOS leido_7F02: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f02..0x7f03  (1 bytes)
DATA_leido_7F02:
	defb 0d0h	; 7f02

; ----------------------------------------------------------------------
; DATOS leido_7F03: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f03..0x7f04  (1 bytes)
DATA_leido_7F03:
	defb 030h	; 7f03

; ----------------------------------------------------------------------
; DATOS leido_7F04: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f04..0x7f05  (1 bytes)
DATA_leido_7F04:
	defb 0c0h	; 7f04

; ----------------------------------------------------------------------
; DATOS leido_7F05: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f05..0x7f06  (1 bytes)
DATA_leido_7F05:
	defb 030h	; 7f05

; ----------------------------------------------------------------------
; DATOS leido_7F06: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f06..0x7f07  (1 bytes)
DATA_leido_7F06:
	defb 0b0h	; 7f06

; ----------------------------------------------------------------------
; DATOS leido_7F07: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f07..0x7f08  (1 bytes)
DATA_leido_7F07:
	defb 030h	; 7f07

; ----------------------------------------------------------------------
; DATOS leido_7F08: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f08..0x7f09  (1 bytes)
DATA_leido_7F08:
	defb 0a0h	; 7f08

; ----------------------------------------------------------------------
; DATOS leido_7F09: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f09..0x7f0a  (1 bytes)
DATA_leido_7F09:
	defb 030h	; 7f09

; ----------------------------------------------------------------------
; DATOS leido_7F0A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f0a..0x7f0b  (1 bytes)
DATA_leido_7F0A:
	defb 090h	; 7f0a

; ----------------------------------------------------------------------
; DATOS leido_7F0B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f0b..0x7f0c  (1 bytes)
DATA_leido_7F0B:
	defb 030h	; 7f0b

; ----------------------------------------------------------------------
; DATOS leido_7F0C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f0c..0x7f0d  (1 bytes)
DATA_leido_7F0C:
	defb 080h	; 7f0c

; ----------------------------------------------------------------------
; DATOS leido_7F0D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f0d..0x7f0e  (1 bytes)
DATA_leido_7F0D:
	defb 030h	; 7f0d

; ----------------------------------------------------------------------
; DATOS leido_7F0E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f0e..0x7f0f  (1 bytes)
DATA_leido_7F0E:
	defb 070h	; 7f0e

; ----------------------------------------------------------------------
; DATOS leido_7F0F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f0f..0x7f10  (1 bytes)
DATA_leido_7F0F:
	defb 020h	; 7f0f

; ----------------------------------------------------------------------
; DATOS leido_7F10: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f10..0x7f11  (1 bytes)
DATA_leido_7F10:
	defb 0c0h	; 7f10

; ----------------------------------------------------------------------
; DATOS leido_7F11: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f11..0x7f12  (1 bytes)
DATA_leido_7F11:
	defb 020h	; 7f11

; ----------------------------------------------------------------------
; DATOS leido_7F12: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f12..0x7f13  (1 bytes)
DATA_leido_7F12:
	defb 0b0h	; 7f12

; ----------------------------------------------------------------------
; DATOS leido_7F13: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f13..0x7f14  (1 bytes)
DATA_leido_7F13:
	defb 020h	; 7f13

; ----------------------------------------------------------------------
; DATOS leido_7F14: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f14..0x7f15  (1 bytes)
DATA_leido_7F14:
	defb 0a0h	; 7f14

; ----------------------------------------------------------------------
; DATOS leido_7F15: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f15..0x7f16  (1 bytes)
DATA_leido_7F15:
	defb 020h	; 7f15

; ----------------------------------------------------------------------
; DATOS leido_7F16: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f16..0x7f17  (1 bytes)
DATA_leido_7F16:
	defb 090h	; 7f16

; ----------------------------------------------------------------------
; DATOS leido_7F17: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f17..0x7f18  (1 bytes)
DATA_leido_7F17:
	defb 020h	; 7f17

; ----------------------------------------------------------------------
; DATOS leido_7F18: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f18..0x7f19  (1 bytes)
DATA_leido_7F18:
	defb 080h	; 7f18

; ----------------------------------------------------------------------
; DATOS leido_7F19: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f19..0x7f1a  (1 bytes)
DATA_leido_7F19:
	defb 020h	; 7f19

; ----------------------------------------------------------------------
; DATOS leido_7F1A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f1a..0x7f1b  (1 bytes)
DATA_leido_7F1A:
	defb 070h	; 7f1a

; ----------------------------------------------------------------------
; DATOS leido_7F1B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f1b..0x7f1c  (1 bytes)
DATA_leido_7F1B:
	defb 010h	; 7f1b

; ----------------------------------------------------------------------
; DATOS leido_7F1C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f1c..0x7f1d  (1 bytes)
DATA_leido_7F1C:
	defb 0c0h	; 7f1c

; ----------------------------------------------------------------------
; DATOS leido_7F1D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f1d..0x7f1e  (1 bytes)
DATA_leido_7F1D:
	defb 010h	; 7f1d

; ----------------------------------------------------------------------
; DATOS leido_7F1E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f1e..0x7f1f  (1 bytes)
DATA_leido_7F1E:
	defb 0b0h	; 7f1e

; ----------------------------------------------------------------------
; DATOS leido_7F1F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f1f..0x7f20  (1 bytes)
DATA_leido_7F1F:
	defb 010h	; 7f1f

; ----------------------------------------------------------------------
; DATOS leido_7F20: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f20..0x7f21  (1 bytes)
DATA_leido_7F20:
	defb 0a0h	; 7f20

; ----------------------------------------------------------------------
; DATOS leido_7F21: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f21..0x7f22  (1 bytes)
DATA_leido_7F21:
	defb 010h	; 7f21

; ----------------------------------------------------------------------
; DATOS leido_7F22: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f22..0x7f23  (1 bytes)
DATA_leido_7F22:
	defb 090h	; 7f22

; ----------------------------------------------------------------------
; DATOS leido_7F23: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f23..0x7f24  (1 bytes)
DATA_leido_7F23:
	defb 010h	; 7f23

; ----------------------------------------------------------------------
; DATOS leido_7F24: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f24..0x7f25  (1 bytes)
DATA_leido_7F24:
	defb 080h	; 7f24

; ----------------------------------------------------------------------
; DATOS leido_7F25: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f25..0x7f26  (1 bytes)
DATA_leido_7F25:
	defb 010h	; 7f25

; ----------------------------------------------------------------------
; DATOS leido_7F26: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f26..0x7f27  (1 bytes)
DATA_leido_7F26:
	defb 070h	; 7f26

; ----------------------------------------------------------------------
; DATOS leido_7F27: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f27..0x7f28  (1 bytes)
DATA_leido_7F27:
	defb 000h	; 7f27

; ----------------------------------------------------------------------
; DATOS leido_7F28: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f28..0x7f29  (1 bytes)
DATA_leido_7F28:
	defb 0c0h	; 7f28

; ----------------------------------------------------------------------
; DATOS leido_7F29: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f29..0x7f2a  (1 bytes)
DATA_leido_7F29:
	defb 000h	; 7f29

; ----------------------------------------------------------------------
; DATOS leido_7F2A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f2a..0x7f2b  (1 bytes)
DATA_leido_7F2A:
	defb 0b0h	; 7f2a

; ----------------------------------------------------------------------
; DATOS leido_7F2B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f2b..0x7f2c  (1 bytes)
DATA_leido_7F2B:
	defb 000h	; 7f2b

; ----------------------------------------------------------------------
; DATOS leido_7F2C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f2c..0x7f2d  (1 bytes)
DATA_leido_7F2C:
	defb 0a0h	; 7f2c

; ----------------------------------------------------------------------
; DATOS leido_7F2D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f2d..0x7f2e  (1 bytes)
DATA_leido_7F2D:
	defb 000h	; 7f2d

; ----------------------------------------------------------------------
; DATOS leido_7F2E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f2e..0x7f2f  (1 bytes)
DATA_leido_7F2E:
	defb 090h	; 7f2e

; ----------------------------------------------------------------------
; DATOS leido_7F2F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f2f..0x7f30  (1 bytes)
DATA_leido_7F2F:
	defb 000h	; 7f2f

; ----------------------------------------------------------------------
; DATOS leido_7F30: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f30..0x7f31  (1 bytes)
DATA_leido_7F30:
	defb 080h	; 7f30

; ----------------------------------------------------------------------
; DATOS leido_7F31: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f31..0x7f32  (1 bytes)
DATA_leido_7F31:
	defb 000h	; 7f31

; ----------------------------------------------------------------------
; DATOS leido_7F32: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0x7f32..0x7f33  (1 bytes)
DATA_leido_7F32:
	defb 070h	; 7f32

; ----------------------------------------------------------------------
; DATOS leido_7F33: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0x7f33..0x7f34  (1 bytes)
DATA_leido_7F33:
	defb 0ffh	; 7f33

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7f34..0x8000  (204 bytes)
DATA_7F34:
	defb 0feh,002h,0e0h,002h,0eeh,001h,0e2h,001h,040h,0d0h,040h,0c0h,040h,0b0h,040h,0a0h	; 7f34  ........@.@.@.@.
	defb 040h,090h,040h,080h,040h,070h,040h,060h,040h,050h,040h,040h,030h,0c0h,030h,0b0h	; 7f44  @.@.@p@`@P@@0.0.
	defb 030h,0a0h,030h,090h,030h,080h,030h,070h,030h,060h,030h,050h,030h,040h,020h,0c0h	; 7f54  0.0.0.0p0`0P0@ .
	defb 020h,0b0h,020h,0a0h,020h,090h,020h,080h,020h,070h,020h,060h,020h,050h,020h,040h	; 7f64   . . . . p ` P @
	defb 010h,0c0h,010h,0b0h,010h,0a0h,010h,090h,010h,080h,010h,070h,0ffh,0feh,002h,0f8h	; 7f74  ...........p....
	defb 00dh,0e2h,001h,060h,0d0h,060h,0c0h,060h,0b0h,060h,0a0h,060h,090h,060h,080h,060h	; 7f84  ...`.`.`.`.`.`.`
	defb 070h,060h,060h,060h,050h,060h,040h,040h,0c0h,040h,0b0h,040h,0a0h,040h,090h,040h	; 7f94  p```P`@@.@.@.@.@
	defb 080h,040h,070h,040h,060h,040h,050h,040h,040h,020h,0c0h,020h,0b0h,020h,0a0h,020h	; 7fa4  .@p@`@P@@ . . .
	defb 090h,020h,080h,020h,070h,020h,060h,020h,050h,020h,040h,000h,0c0h,000h,0b0h,000h	; 7fb4  . . p ` P @.....
	defb 0a0h,000h,090h,000h,080h,000h,070h,000h,060h,000h,050h,000h,040h,0ffh,0feh,002h	; 7fc4  ......p.`.P.@...
	defb 0e2h,001h,050h,050h,050h,054h,0fbh,008h,0d6h,07fh,040h,050h,040h,054h,0fbh,002h	; 7fd4  ..PPPT....@P@T..
	defb 0deh,07fh,030h,050h,030h,054h,0fbh,002h,0e6h,07fh,020h,050h,020h,054h,0fbh,00ah	; 7fe4  ..0P0T.... P T..
	defb 0eeh,07fh,0ffh,0feh,002h,0f8h,015h,0e2h,001h,060h,050h,060h	; 7ff4  .........`P`

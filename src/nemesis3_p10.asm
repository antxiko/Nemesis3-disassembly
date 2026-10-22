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


sonido_arranca:		; el motor de sonido: lo pone a cero
	jp L_6009		;6000
sonido_pide:		; el motor de sonido: arranca el sonido A
	jp L_602F		;6003
sonido_cuadro:		; el motor de sonido: un cuadro de los ocho canales
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
	call L_71F6		;6021   ; los registros del SCC: las marcas
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
	cp 083h		;605c   ; 0x83: quita el fundido (p10:6180)
	jp z,L_6180		;605e
	cp 084h		;6061   ; 0x84: el fundido (p10:6187)
	jp z,L_6187		;6063
	cp 085h		;6066   ; 0x85: lo mismo (p10:6192)
	jp z,L_6192		;6068
	cp 081h		;606b   ; 0x81: vuelve el canal 4 guardado (p10:61A9)
	jp z,L_61A9		;606d
	cp 082h		;6070   ; 0x82: guarda el canal 4 y calla el SCC (p10:6212), y sigue
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
	ld hl,06144h		;6138   ; el resto del canal de 0x6144 (0x3C bytes): la cuenta a 1 y lo demas a cero
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
	ld hl,0e280h		;6180   ; 0x83: sin fundido
	res 0,(hl)		;6183
	jr L_61A1		;6185
L_6187:
	ld hl,0e294h		;6187   ; 0x84: el fundido, un paso cada 0x25 cuadros, 0x0A pasos
	ld (hl),025h		;618a
	inc hl			;618c
	ld (hl),00ah		;618d
	jp L_619A		;618f
L_6192:
	ld hl,0e294h		;6192   ; 0x85: lo mismo
	ld (hl),025h		;6195
	inc hl			;6197
	ld (hl),00ah		;6198
L_619A:
	ld hl,0e280h		;619a   ; el fundido en marcha (0xE280 bit 0), sin subida (bit 4)
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
	ld hl,0e280h		;61a9   ; 0x81: vuelve el canal 4 que guardo la 0x82
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
	call L_62A3		;61c4   ; 0x40 bytes: un canal
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
	ld (09000h),a		;61f9   ; el mapper: pone en 0x8000 el banco de A
	ld a,(0e2b1h)		;61fc
	ld (0988fh),a		;61ff   ; al SCC: los canales del SCC que suenan (un bit cada uno)
	ld a,00bh		;6202   ; el banco 11 otra vez
	ld (09000h),a		;6204   ; el mapper: pone en 0x8000 el banco de A
	ld a,0ffh		;6207   ; 0xE2A0-0xE2A1 = 0xFF
	ld hl,0e2a0h		;6209
	ld (hl),a			;620c
	inc hl			;620d
	ld (hl),a			;620e
	jp L_71F6		;620f
L_6212:
	ld hl,0e280h		;6212   ; apunta a el estado del sonido (pausa, fundido...)
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
	ld hl,0e0c0h		;6227   ; guarda el canal 4 (0xE0C0) en 0xE200
	ld de,0e200h		;622a
	call L_62A3		;622d   ; copia 0x40 bytes: un canal
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
	ld (09000h),a		;6280   ; el mapper: pone en 0x8000 el banco de A
	ld a,(0e2b1h)		;6283
	and 0feh		;6286
	ld (0988fh),a		;6288   ; al SCC: ningun canal suena
	xor a			;628b
	ld (0988bh),a		;628c   ; los 5 volumenes del SCC a 0
	ld (0988ch),a		;628f   ; al SCC: el volumen del canal 2 del SCC
	ld (0988dh),a		;6292   ; al SCC: el volumen del canal 3 del SCC
	ld (0988eh),a		;6295   ; al SCC: el volumen del canal 4 del SCC
	ld a,00bh		;6298
	ld (09000h),a		;629a   ; el mapper: pone en 0x8000 el banco de A
	ld a,b			;629d
	or a			;629e
	ret nz			;629f
	ld c,003h		;62a0   ; C = 3
	ret			;62a2
L_62A3:
	ld bc,00040h		;62a3   ; copia 0x40 bytes: un canal
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
	ld (0e2beh),a		;62bd   ; guarda que banco de partituras va en 0xA000 (0: 12, 1: 13, 2: 9, otro: 25)
	ret			;62c0
L_62C1:
	cp 00fh		;62c1
	ret nc			;62c3
	xor a			;62c4
	ld (0e2beh),a		;62c5   ; guarda que banco de partituras va en 0xA000 (0: 12, 1: 13, 2: 9, otro: 25)
	ret			;62c8
L_62C9:
	ld a,001h		;62c9
	ld (0e2beh),a		;62cb   ; guarda que banco de partituras va en 0xA000 (0: 12, 1: 13, 2: 9, otro: 25)
	ret			;62ce
L_62CF:
	ld a,002h		;62cf
	ld (0e2beh),a		;62d1   ; guarda que banco de partituras va en 0xA000 (0: 12, 1: 13, 2: 9, otro: 25)
	ret			;62d4
L_62D5:
	ld a,003h		;62d5
	ld (0e2bfh),a		;62d7
	call L_62B8		;62da
	ret			;62dd
L_62DE:
	ld a,(0e2beh)		;62de   ; lee que banco de partituras va en 0xA000 (0: 12, 1: 13, 2: 9, otro: 25)
	or a			;62e1
	jr z,L_62FF		;62e2
	cp 001h		;62e4
	jr z,L_62F3		;62e6
	cp 002h		;62e8
	jr z,L_62FA		;62ea
	ld a,019h		;62ec
	ld (0b000h),a		;62ee   ; el mapper: pone en 0xA000 el banco de A
	jr L_62FF		;62f1
L_62F3:
	ld a,00dh		;62f3
	ld (0b000h),a		;62f5   ; el mapper: pone en 0xA000 el banco de A
	jr L_62FF		;62f8
L_62FA:
	ld a,009h		;62fa
	ld (0b000h),a		;62fc   ; el mapper: pone en 0xA000 el banco de A
L_62FF:
	ld a,(0e298h)		;62ff
	call L_7075		;6302   ; en E
	nop			;6305
	ld hl,0e2bfh		;6306
	ld a,(hl)			;6309
	or a			;630a
	jr z,L_6362		;630b
	and 002h		;630d
	jr z,L_632B		;630f
	ld a,03fh		;6311
	ld (09000h),a		;6313   ; el mapper: pone en 0x8000 el banco de A
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
	ld (09000h),a		;632d   ; el mapper: pone en 0x8000 el banco de A
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
	ld hl,0e2bdh		;6365   ; apunta a una cuenta de cuadros del sonido
	cp (hl)			;6368
	jr z,L_638F		;6369
	ld ix,0e0c0h		;636b
	set 7,(ix+00fh)		;636f   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld ix,0e100h		;6373
	set 7,(ix+00fh)		;6377   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld ix,0e140h		;637b
	set 7,(ix+00fh)		;637f   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld ix,0e180h		;6383
	set 7,(ix+00fh)		;6387   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
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
	call nz,L_6A78		;63a1   ; el fundido: cada 0xE294 cuadros un paso (0xE297), hasta 0xE295 pasos
	ld a,001h		;63a4
	ld (0e299h),a		;63a6
	ld ix,0e000h		;63a9   ; apunta a los 8 canales de sonido (0x40 bytes cada uno)
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
	ld a,(ix+000h)		;6408   ; lee el sonido del canal (0: callado; p10:612B)
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
	dec (ix+004h)		;6428   ; resta 1 a la cuenta de la nota
	ld a,(ix+004h)		;642b   ; lee la cuenta de la nota
	cp 0ffh		;642e
	jr z,L_6439		;6430
	cp 000h		;6432
	jr z,L_643F		;6434
	jp L_6687		;6436
L_6439:
	dec (ix+02ch)		;6439   ; resta 1 a la cuenta de la nota (alto)
	jp L_6687		;643c
L_643F:
	ld a,(ix+02ch)		;643f   ; lee la cuenta de la nota (alto)
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
	inc (ix+02ch)		;6481   ; suma 1 a la cuenta de la nota (alto)
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
	ld (ix+011h),h		;64b3   ; guarda el divisor de la nota (alto)
	ld e,(ix+015h)		;64b6   ; el volumen (IX+15)
	ld a,(0e280h)		;64b9   ; en pausa o subiendo...
	and 011h		;64bc
	call nz,L_6AD8		;64be
	ld (ix+012h),e		;64c1   ; el volumen
	ld a,(ix+00dh)		;64c4   ; lee las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	and 0f0h		;64c7
	ld (ix+00dh),a		;64c9   ; guarda las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	set 1,(ix+00dh)		;64cc   ; pone a uno el bit 1 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	call L_65F6		;64d0   ; la nota empieza: su periodo (p10:66DA); el deslizamiento pedido (IX+3C bit 4) se pone en marcha (bit 6)
	ret			;64d3
L_64D4:
	ld a,(ix+00dh)		;64d4   ; lee las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	and 0f0h		;64d7
	ld (ix+00dh),a		;64d9   ; guarda las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	ret			;64dc

; ----------------------------------------------------------------------
; DATOS partitura_64DD: partitura que lee el motor de sonido (p10:64A3) al
;   tocar los sonidos 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A y otros
;   (medido ejecutando el motor, tools/lee_sonidos.py; el tamano es lo que se
;   lee seguido); lo leen p10:64A3 (12 bytes)
;   0x64dd..0x64e9  (12 bytes)
DATA_partitura_64DD:
	defb 06ah,064h,05eh,059h,054h,04fh,04ah,046h,042h,03fh,03bh,038h	; 64dd  jd^YTOJFB?.8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x64e9..0x64ea  (1 bytes)
DATA_64E9:
	defb 035h	; 64e9

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
	ld (ix+011h),d		;650c   ; guarda el divisor de la nota (alto)
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
	ld (ix+011h),a		;6526   ; guarda el divisor de la nota (alto)
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
	ld (ix+012h),e		;654e   ; guarda el volumen de la nota
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
	bit 2,(ix+009h)		;659a   ; mira el bit 2 de el modo del canal (orden 0xFE)
	jp nz,L_65AF		;659e
	bit 3,(ix+009h)		;65a1   ; mira el bit 3 de el modo del canal (orden 0xFE)
	jp nz,L_65C4		;65a5
	bit 4,(ix+009h)		;65a8   ; mira el bit 4 de el modo del canal (orden 0xFE)
	jp nz,L_65D9		;65ac
L_65AF:
	ld a,(ix+029h)		;65af   ; lee la octava, para elegir el guion de bateria
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
	ld a,(ix+029h)		;65c4   ; lee la octava, para elegir el guion de bateria
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
	ld a,(ix+029h)		;65d9   ; lee la octava, para elegir el guion de bateria
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
	ld (ix+002h),l		;65ef   ; guarda por donde va la partitura (bajo)
	ld (ix+003h),h		;65f2   ; guarda por donde va la partitura (alto)
	ret			;65f5
L_65F6:
	call L_66DA		;65f6   ; la nota empieza: su periodo (p10:66DA); el deslizamiento pedido (IX+3C bit 4) se pone en marcha (bit 6)
	res 4,(ix+00eh)		;65f9   ; pone a cero el bit 4 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	bit 4,(ix+03ch)		;65fd   ; mira el bit 4 de las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	jp z,L_6608		;6601
	set 6,(ix+03ch)		;6604   ; pone a uno el bit 6 de las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
L_6608:
	res 5,(ix+03ch)		;6608   ; IX+3C bit 5 a cero
	ld a,(ix+00fh)		;660c   ; IX+0F bits 3 y 5 a cero
	and 0d7h		;660f
	ld (ix+00fh),a		;6611   ; guarda las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	xor a			;6614   ; a cero las cuentas del vibrato, de la onda que cambia y de la envolvente, y las marcas de IX+30
	ld (ix+01dh),a		;6615   ; guarda hacia donde va el vibrato
	ld (ix+01eh),a		;6618   ; guarda la cuenta del vibrato
	ld (ix+031h),a		;661b   ; guarda por donde va la onda que cambia (0-0x1F)
	ld (ix+033h),a		;661e   ; guarda la cuenta de la onda que cambia
	res 6,(ix+030h)		;6621   ; pone a cero el bit 6 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	res 7,(ix+030h)		;6625   ; pone a cero el bit 7 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	res 7,(ix+00dh)		;6629   ; pone a cero el bit 7 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	res 5,(ix+030h)		;662d   ; pone a cero el bit 5 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	res 3,(ix+030h)		;6631   ; pone a cero el bit 3 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ld (ix+01fh),a		;6635   ; guarda la cuenta de la envolvente
	ld (ix+020h),a		;6638   ; guarda la segunda cuenta de la envolvente
	set 2,(ix+00fh)		;663b   ; IX+0F bit 2: la envolvente baja
	ld a,(ix+012h)		;663f   ; el volumen
	bit 7,(ix+00eh)		;6642   ; con IX+0E bit 7...
	jr z,L_664F		;6646
	ld e,(ix+02fh)		;6648   ; ...menos lo de IX+2F (orden 0xF7)...
	sub e			;664b
	call m,L_6685		;664c   ; ...sin bajar de 0
L_664F:
	ld (ix+00ch),a		;664f   ; el volumen de ahora
	set 1,(ix+030h)		;6652   ; pone a uno el bit 1 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ld a,(0e299h)		;6656   ; los canales 1-3 con ruido...
	cp 008h		;6659
	jr nc,L_6662		;665b
	bit 2,(ix+00dh)		;665d   ; mira el bit 2 de IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ret nz			;6661   ; ...no
L_6662:
	bit 0,(ix+030h)		;6662   ; mira el bit 0 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	jr z,L_6675		;6666
	res 2,(ix+030h)		;6668   ; pone a cero el bit 2 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	res 1,(ix+030h)		;666c   ; pone a cero el bit 1 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	res 2,(ix+00fh)		;6670   ; pone a cero el bit 2 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ret			;6674
L_6675:
	bit 1,(ix+00fh)		;6675   ; IX+0F bit 1...
	ret z			;6679
	ld a,(ix+025h)		;667a   ; ...el volumen de IX+25
	ld (ix+00ch),a		;667d   ; guarda el volumen de ahora
	res 2,(ix+00fh)		;6680   ; y sin bajar
	ret			;6684
L_6685:
	xor a			;6685
	ret			;6686
L_6687:
	bit 0,(ix+00eh)		;6687   ; entre notas: la bateria (p10:66B2) o el deslizamiento, el vibrato, la envolvente y la onda que cambia
	jp nz,L_66B2		;668b
	bit 4,(ix+03ch)		;668e   ; mira el bit 4 de las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	call nz,L_685E		;6692   ; el deslizamiento hacia la nota (IX+3C bit 6 en marcha; bit 7 hacia el otro lado)
	bit 2,(ix+00eh)		;6695   ; mira el bit 2 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	call nz,L_66F5		;6699   ; la cuenta del vibrato + 1
	bit 0,(ix+00fh)		;669c   ; mira el bit 0 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	call nz,L_6743		;66a0   ; la primera envolvente (IX+0F bit 0): en los canales 1-3 con la envolvente del PSG, no
	bit 6,(ix+00fh)		;66a3   ; mira el bit 6 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	call nz,L_690B		;66a7   ; la segunda envolvente (IX+0F bit 6, orden 0xDD): en los canales 1-3 con la envolvente del PSG, no
	bit 6,(ix+00dh)		;66aa   ; mira el bit 6 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	call nz,L_6A1A		;66ae   ; la onda que cambia (IX+0D bit 6): IX+33 + IX+32 cada cuadro; su cifra alta, en IX+31 (0-0x1F)
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
	call L_6579		;66c5   ; se lee como el SCC (bit 1)
	ret			;66c8
L_66C9:
	res 0,(ix+00eh)		;66c9   ; se acabo: la bateria parada
	xor a			;66cd   ; volumen y modo a 0
	ld (ix+00ch),a		;66ce   ; guarda el volumen de ahora
	ld a,(ix+00dh)		;66d1   ; lee las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	and 0f0h		;66d4
	ld (ix+00dh),a		;66d6   ; guarda IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ret			;66d9
L_66DA:
	ld e,(ix+010h)		;66da   ; el divisor
	ld d,(ix+011h)		;66dd   ; lee el divisor de la nota (alto)
	bit 1,(ix+00eh)		;66e0   ; IX+0E bit 1...
	jr z,L_66EE		;66e4
	ld a,(ix+026h)		;66e6   ; ...+ IX+26 (orden 0xEE)
	add a,e			;66e9
	ld e,a			;66ea
	jr nc,L_66EE		;66eb
	inc d			;66ed
L_66EE:
	ld (ix+00ah),e		;66ee   ; el periodo en IX+0A/0B
	ld (ix+00bh),d		;66f1   ; guarda el periodo (alto)
	ret			;66f4
L_66F5:
	inc (ix+01eh)		;66f5   ; la cuenta del vibrato + 1
	ld a,(ix+01eh)		;66f8   ; lee la cuenta del vibrato
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
	ld d,(ix+00bh)		;671b   ; lee el periodo (alto)
	ld b,(ix+01ch)		;671e   ; cuanto (IX+1C)
	ld a,(ix+01dh)		;6721   ; arriba o abajo, alternando
	cpl			;6724
	ld (ix+01dh),a		;6725   ; guarda hacia donde va el vibrato
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
	ld (ix+00bh),d		;673b   ; guarda el periodo (alto)
	ld (ix+01eh),000h		;673e   ; la cuenta a 0
	ret			;6742
L_6743:
	ld a,(0e299h)		;6743   ; la primera envolvente (IX+0F bit 0): en los canales 1-3 con la envolvente del PSG, no
	cp 008h		;6746
	jr nc,L_674F		;6748
	bit 2,(ix+00dh)		;674a   ; mira el bit 2 de IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ret nz			;674e
L_674F:
	call L_6756		;674f   ; la envolvente: la cuenta + 1; al acercarse el final de la nota (IX+24), la caida final
	ld (ix+00ch),e		;6752   ; a IX+0C
	ret			;6755
L_6756:
	ld e,(ix+00ch)		;6756   ; la envolvente: la cuenta + 1; al acercarse el final de la nota (IX+24), la caida final
	inc (ix+01fh)		;6759   ; la cuenta de la envolvente + 1
	ld b,(ix+01fh)		;675c   ; lee la cuenta de la envolvente
	ld a,(ix+02ch)		;675f   ; lee la cuenta de la nota (alto)
	or a			;6762
	jr nz,L_676E		;6763
	ld a,(ix+024h)		;6765   ; lee cuando empieza la caida final (ordenes 0xEB y 0xDD)
	cp (ix+004h)		;6768   ; compara con la cuenta de la nota
	call nc,L_6859		;676b
L_676E:
	bit 5,(ix+00fh)		;676e   ; bit 5: la caida final (p10:683F)
	jp nz,L_683F		;6772
	bit 3,(ix+00fh)		;6775   ; bit 3: baja 1 cada IX+22 cuadros (p10:67F3)
	jr nz,L_67F3		;6779
	bit 2,(ix+00fh)		;677b   ; bit 2: baja hasta los IX+21 cuadros (p10:67D3)
	jr nz,L_67D3		;677f
	bit 1,(ix+030h)		;6781   ; IX+30 bit 1: el ataque, sube hasta el volumen de la nota (p10:67C0)
	jr nz,L_67C0		;6785
	bit 2,(ix+030h)		;6787   ; IX+30 bit 2: sube hasta el volumen de la nota menos IX+36 (p10:67AA)
	jr nz,L_67AA		;678b
	ld a,(ix+035h)		;678d   ; si no: el volumen menos IX+35, sin pasar de IX+34, hasta los IX+25 cuadros
	ld d,a			;6790
	ld a,e			;6791
	sub d			;6792
	jp c,L_679C		;6793
	cp (ix+034h)		;6796   ; compara con el volumen minimo (orden 0xDB)
	jp nc,L_679F		;6799
L_679C:
	ld a,(ix+034h)		;679c   ; lee el volumen minimo (orden 0xDB)
L_679F:
	ld e,a			;679f
	ld a,b			;67a0
	cp (ix+025h)		;67a1   ; compara con el volumen de arranque (orden 0xED)
	ret nz			;67a4
	set 2,(ix+030h)		;67a5   ; pone a uno el bit 2 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ret			;67a9
L_67AA:
	ld a,(ix+012h)		;67aa   ; lee el volumen de la nota
	sub (ix+036h)		;67ad   ; le resta lo que queda por debajo del volumen de la nota (orden 0xEA)
	ld c,a			;67b0
	ld a,e			;67b1
	inc a			;67b2
	ld e,a			;67b3
	cp c			;67b4
	ret c			;67b5
	set 2,(ix+00fh)		;67b6   ; pone a uno el bit 2 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld (ix+01fh),000h		;67ba   ; la cuenta de la envolvente = 0x00
	ld e,c			;67be
	ret			;67bf
L_67C0:
	ld a,e			;67c0   ; el ataque: sube 1...
	inc a			;67c1
	ld e,a			;67c2
	cp (ix+012h)		;67c3   ; ...hasta el volumen de la nota
	ret c			;67c6
	set 2,(ix+00fh)		;67c7   ; pone a uno el bit 2 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld e,(ix+012h)		;67cb   ; llega: ya baja
	ld (ix+01fh),000h		;67ce   ; la cuenta de la envolvente = 0x00
	ret			;67d2
L_67D3:
	ld a,e			;67d3   ; baja 1...
	dec a			;67d4
	jp m,L_67E1		;67d5
	cp (ix+034h)		;67d8   ; compara con el volumen minimo (orden 0xDB)
	jp c,L_67E1		;67db
	ld e,a			;67de
	jr L_67E5		;67df
L_67E1:
	ld a,(ix+034h)		;67e1   ; lee el volumen minimo (orden 0xDB)
	ld e,a			;67e4
L_67E5:
	ld a,b			;67e5   ; ...hasta la cuenta de IX+21
	cp (ix+021h)		;67e6   ; compara con los cuadros del ataque (orden 0xEB)
	ret c			;67e9
	ld (ix+01fh),000h		;67ea   ; la cuenta de la envolvente = 0x00
	set 3,(ix+00fh)		;67ee   ; y a bajar poco a poco (bit 3)
	ret			;67f2
L_67F3:
	bit 4,(ix+00fh)		;67f3   ; bit 4: de golpe (p10:6822)
	jp nz,L_6822		;67f7
	ld a,b			;67fa   ; cada IX+22 cuadros...
	cp (ix+022h)		;67fb   ; compara con cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)
	ret nz			;67fe
	ld a,e			;67ff   ; ...baja 1
	dec a			;6800
	jp m,L_681D		;6801
	cp (ix+034h)		;6804   ; compara con el volumen minimo (orden 0xDB)
	jr c,L_681D		;6807
	ld e,a			;6809
	inc (ix+020h)		;680a   ; IX+20 + 1...
	ld a,(ix+020h)		;680d   ; lee la segunda cuenta de la envolvente
	cp (ix+023h)		;6810   ; ...hasta IX+23: la caida
	ld (ix+01fh),000h		;6813   ; la cuenta de la envolvente = 0x00
	ret nz			;6817
	set 5,(ix+00fh)		;6818   ; pone a uno el bit 5 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ret			;681c
L_681D:
	ld a,(ix+034h)		;681d   ; sin pasar del volumen minimo (IX+34)
	ld e,a			;6820
	ret			;6821
L_6822:
	ld a,(ix+022h)		;6822   ; de golpe: el volumen menos IX+22, sin pasar de IX+34; a los IX+23 cuadros, la caida final
	ld d,a			;6825
	ld a,e			;6826
	sub d			;6827
	jp c,L_6831		;6828
	cp (ix+034h)		;682b   ; compara con el volumen minimo (orden 0xDB)
	jp nc,L_6834		;682e
L_6831:
	ld a,(ix+034h)		;6831   ; lee el volumen minimo (orden 0xDB)
L_6834:
	ld e,a			;6834
	ld a,b			;6835   ; a los IX+23 cuadros: la caida
	cp (ix+023h)		;6836   ; compara con cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	ret nz			;6839
	set 5,(ix+00fh)		;683a   ; pone a uno el bit 5 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ret			;683e
L_683F:
	ld a,(ix+024h)		;683f   ; la caida: cuando la nota llega a IX+24...
	cp (ix+004h)		;6842   ; compara con la cuenta de la nota
	jr nc,L_6848		;6845
	ret			;6847
L_6848:
	ld a,e			;6848
	dec a			;6849
	jp m,L_6854		;684a
	cp (ix+034h)		;684d   ; compara con el volumen minimo (orden 0xDB)
	jr c,L_6854		;6850
	jr L_6857		;6852
L_6854:
	ld a,(ix+034h)		;6854   ; lee el volumen minimo (orden 0xDB)
L_6857:
	ld e,a			;6857
	ret			;6858
L_6859:
	set 5,(ix+00fh)		;6859   ; pone a uno el bit 5 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ret			;685d
L_685E:
	bit 6,(ix+03ch)		;685e   ; el deslizamiento hacia la nota (IX+3C bit 6 en marcha; bit 7 hacia el otro lado)
	ret z			;6862
	bit 7,(ix+03ch)		;6863   ; mira el bit 7 de las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	jp nz,L_68B2		;6867
	bit 5,(ix+03ch)		;686a   ; mira el bit 5 de las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	jp nz,L_688A		;686e
	ld l,(ix+010h)		;6871   ; al empezar: el periodo, el divisor + IX+39 x IX+3A (sin pasar de 0xFFFF)
	ld h,(ix+011h)		;6874   ; lee el divisor de la nota (alto)
	ld b,(ix+03ah)		;6877   ; lee la cuenta del deslizamiento
L_687A:
	ld d,000h		;687a
	ld e,(ix+039h)		;687c   ; lee el paso del deslizamiento (ordenes 0xD6 y 0xD7)
	add hl,de			;687f
	jp nc,L_6885		;6880
	sbc hl,de		;6883
L_6885:
	djnz L_687A		;6885
	jp L_68CF		;6887
L_688A:
	ld a,(ix+00ah)		;688a   ; en marcha: el periodo - IX+39 cada cuadro (sin bajar de 1)...
	ld d,(ix+00bh)		;688d   ; lee el periodo (alto)
	sbc a,(ix+039h)		;6890   ; le resta el paso del deslizamiento (ordenes 0xD6 y 0xD7)
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
	ld (ix+00ah),e		;68a1   ; guarda el periodo (bajo)
	ld (ix+00bh),d		;68a4   ; guarda el periodo (alto)
	dec (ix+03ah)		;68a7   ; ...durante IX+3A cuadros
	ld a,(ix+03ah)		;68aa   ; lee la cuenta del deslizamiento
	or a			;68ad
	ret nz			;68ae
	jp L_68F4		;68af
L_68B2:
	bit 5,(ix+03ch)		;68b2   ; bit 7: al reves, desde el divisor - IX+39 x IX+3A y subiendo IX+39 cada cuadro
	jp nz,L_68DA		;68b6
	ld l,(ix+010h)		;68b9   ; lee el divisor de la nota (bajo)
	ld h,(ix+011h)		;68bc   ; lee el divisor de la nota (alto)
	ld b,(ix+03ah)		;68bf   ; lee la cuenta del deslizamiento
L_68C2:
	ld d,000h		;68c2
	ld e,(ix+039h)		;68c4   ; lee el paso del deslizamiento (ordenes 0xD6 y 0xD7)
	sbc hl,de		;68c7
	jp nc,L_68CD		;68c9
	add hl,de			;68cc
L_68CD:
	djnz L_68C2		;68cd
L_68CF:
	ld (ix+00ah),l		;68cf   ; guarda el periodo (bajo)
	ld (ix+00bh),h		;68d2   ; guarda el periodo (alto)
	set 5,(ix+03ch)		;68d5   ; pone a uno el bit 5 de las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	ret			;68d9
L_68DA:
	ld l,(ix+00ah)		;68da   ; lee el periodo (bajo)
	ld h,(ix+00bh)		;68dd   ; lee el periodo (alto)
	ld d,000h		;68e0
	ld e,(ix+039h)		;68e2   ; lee el paso del deslizamiento (ordenes 0xD6 y 0xD7)
	add hl,de			;68e5
	ld (ix+00ah),l		;68e6   ; guarda el periodo (bajo)
	ld (ix+00bh),h		;68e9   ; guarda el periodo (alto)
	dec (ix+03ah)		;68ec   ; resta 1 a la cuenta del deslizamiento
	ld a,(ix+03ah)		;68ef   ; lee la cuenta del deslizamiento
	or a			;68f2
	ret nz			;68f3
L_68F4:
	res 6,(ix+03ch)		;68f4   ; al acabar: parado, el periodo de la nota y la cuenta otra vez (IX+3B)
	ld e,(ix+010h)		;68f8   ; lee el divisor de la nota (bajo)
	ld d,(ix+011h)		;68fb   ; lee el divisor de la nota (alto)
	ld (ix+00ah),e		;68fe   ; guarda el periodo (bajo)
	ld (ix+00bh),d		;6901   ; guarda el periodo (alto)
	ld a,(ix+03bh)		;6904   ; lee los cuadros del deslizamiento
	ld (ix+03ah),a		;6907   ; guarda la cuenta del deslizamiento
	ret			;690a
L_690B:
	ld a,(0e299h)		;690b   ; la segunda envolvente (IX+0F bit 6, orden 0xDD): en los canales 1-3 con la envolvente del PSG, no
	cp 008h		;690e
	jr nc,L_6917		;6910
	bit 2,(ix+00dh)		;6912   ; mira el bit 2 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	ret nz			;6916
L_6917:
	call L_691E		;6917   ; sube (p10:67C0) y baja (p10:67D3) como la primera; despues, con decimales
	ld (ix+00ch),e		;691a   ; guarda el volumen de ahora
	ret			;691d
L_691E:
	ld e,(ix+00ch)		;691e   ; sube (p10:67C0) y baja (p10:67D3) como la primera; despues, con decimales
	inc (ix+01fh)		;6921   ; suma 1 a la cuenta de la envolvente
	ld b,(ix+01fh)		;6924   ; lee la cuenta de la envolvente
	bit 3,(ix+00fh)		;6927   ; mira el bit 3 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	jr nz,L_6937		;692b
	bit 2,(ix+00fh)		;692d   ; mira el bit 2 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	jp nz,L_67D3		;6931
	jp L_67C0		;6934
L_6937:
	bit 3,(ix+030h)		;6937   ; con IX+30 bit 3, quieta
	ret nz			;693b
	bit 5,(ix+00fh)		;693c   ; mira el bit 5 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	jp nz,L_69B8		;6940
	ld a,(ix+023h)		;6943   ; baja: IX+37 (el volumen x 16) menos IX+23 cada cuadro, sin pasar de IX+34; a los IX+22 cuadros, la caida
	ld d,a			;6946
	bit 5,(ix+030h)		;6947   ; mira el bit 5 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ld a,(ix+037h)		;694b   ; lee el volumen con decimales de la segunda envolvente
	jr nz,L_696A		;694e
	set 5,(ix+030h)		;6950   ; pone a uno el bit 5 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ld a,e			;6954
	sub (ix+038h)		;6955   ; le resta la diferencia de IX+23 e IX+24 (orden 0xDD)
	jr c,L_695F		;6958
	cp (ix+034h)		;695a   ; compara con el volumen minimo (orden 0xDB)
	jr nc,L_6962		;695d
L_695F:
	ld a,(ix+034h)		;695f   ; lee el volumen minimo (orden 0xDB)
L_6962:
	ld (ix+020h),a		;6962   ; guarda la segunda cuenta de la envolvente
	ld a,e			;6965
	rlca			;6966
	rlca			;6967
	rlca			;6968
	rlca			;6969
L_696A:
	sub d			;696a
	jp c,L_69A8		;696b
	ld (ix+037h),a		;696e   ; guarda el volumen con decimales de la segunda envolvente
	rrca			;6971
	rrca			;6972
	rrca			;6973
	rrca			;6974
	and 00fh		;6975
	cp (ix+034h)		;6977   ; compara con el volumen minimo (orden 0xDB)
	jp c,L_69A8		;697a
	ld a,(ix+037h)		;697d   ; lee el volumen con decimales de la segunda envolvente
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
	cp (ix+034h)		;698d   ; compara con el volumen minimo (orden 0xDB)
	jr nz,L_6996		;6990
L_6992:
	set 4,(ix+030h)		;6992   ; pone a uno el bit 4 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
L_6996:
	ld a,b			;6996
	cp (ix+022h)		;6997   ; compara con cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)
	ret nz			;699a
	set 5,(ix+00fh)		;699b   ; pone a uno el bit 5 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	res 5,(ix+030h)		;699f   ; pone a cero el bit 5 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ld (ix+01fh),000h		;69a3   ; la cuenta de la envolvente = 0x00
	ret			;69a7
L_69A8:
	ld a,(ix+034h)		;69a8   ; lee el volumen minimo (orden 0xDB)
	rlca			;69ab
	rlca			;69ac
	rlca			;69ad
	rlca			;69ae
	ld (ix+037h),a		;69af   ; guarda el volumen con decimales de la segunda envolvente
	ld a,(ix+034h)		;69b2   ; lee el volumen minimo (orden 0xDB)
	ld e,a			;69b5
	jr L_6992		;69b6
L_69B8:
	ld a,(ix+024h)		;69b8   ; la caida: IX+37 mas IX+24 cada cuadro (con IX+30 bit 4, hasta IX+20)
	ld d,a			;69bb
	bit 5,(ix+030h)		;69bc   ; mira el bit 5 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ld a,(ix+037h)		;69c0   ; lee el volumen con decimales de la segunda envolvente
	jr nz,L_69D9		;69c3
	set 5,(ix+030h)		;69c5   ; pone a uno el bit 5 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ld a,e			;69c9
	bit 4,(ix+030h)		;69ca   ; mira el bit 4 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	jr z,L_69D5		;69ce
	cp (ix+020h)		;69d0   ; compara con la segunda cuenta de la envolvente
	jr nc,L_6A14		;69d3
L_69D5:
	rlca			;69d5
	rlca			;69d6
	rlca			;69d7
	rlca			;69d8
L_69D9:
	add a,d			;69d9
	ld (ix+037h),a		;69da   ; guarda el volumen con decimales de la segunda envolvente
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
	bit 4,(ix+030h)		;69ef   ; mira el bit 4 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	jr z,L_69FA		;69f3
	cp (ix+020h)		;69f5   ; compara con la segunda cuenta de la envolvente
	jr nc,L_69FF		;69f8
L_69FA:
	ld a,b			;69fa
	cp (ix+022h)		;69fb   ; compara con cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)
	ret nz			;69fe
L_69FF:
	res 5,(ix+00fh)		;69ff   ; pone a cero el bit 5 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	res 5,(ix+030h)		;6a03   ; pone a cero el bit 5 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ld (ix+01fh),000h		;6a07   ; la cuenta de la envolvente = 0x00
	ret			;6a0b
L_6A0C:
	ld (ix+037h),0f0h		;6a0c   ; el volumen con decimales de la segunda envolvente = 0xF0
	ld a,00fh		;6a10
	jr L_69EE		;6a12
L_6A14:
	set 3,(ix+030h)		;6a14   ; pone a uno el bit 3 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	jr L_69FF		;6a18
L_6A1A:
	bit 7,(ix+030h)		;6a1a   ; la onda que cambia (IX+0D bit 6): IX+33 + IX+32 cada cuadro; su cifra alta, en IX+31 (0-0x1F)
	ret nz			;6a1e
	bit 7,(ix+00dh)		;6a1f   ; mira el bit 7 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	jr nz,L_6A31		;6a23
	ld (ix+033h),010h		;6a25   ; la cuenta de la onda que cambia = 0x10
	res 6,(ix+030h)		;6a29   ; pone a cero el bit 6 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	set 7,(ix+00dh)		;6a2d   ; pone a uno el bit 7 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
L_6A31:
	ld a,(ix+00dh)		;6a31   ; lee las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	and 030h		;6a34
	jr z,L_6A40		;6a36
	cp 010h		;6a38
	jr z,L_6A40		;6a3a
	cp 020h		;6a3c
	jr z,L_6A40		;6a3e
L_6A40:
	ld e,(ix+032h)		;6a40   ; lee la velocidad de la onda que cambia (orden 0xF8)
	ld a,(ix+033h)		;6a43   ; lee la cuenta de la onda que cambia
	add a,e			;6a46
	jr nc,L_6A4D		;6a47
	set 6,(ix+030h)		;6a49   ; pone a uno el bit 6 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
L_6A4D:
	ld (ix+033h),a		;6a4d   ; guarda la cuenta de la onda que cambia
	and 0f0h		;6a50
	rrca			;6a52
	rrca			;6a53
	rrca			;6a54
	rrca			;6a55
	bit 6,(ix+030h)		;6a56   ; mira el bit 6 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	jr z,L_6A6C		;6a5a
	bit 4,(ix+031h)		;6a5c   ; mira el bit 4 de por donde va la onda que cambia (0-0x1F)
	jr z,L_6A6A		;6a60
	res 6,(ix+030h)		;6a62   ; pone a cero el bit 6 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	and 00fh		;6a66
	jr L_6A6C		;6a68
L_6A6A:
	add a,010h		;6a6a
L_6A6C:
	ld (ix+031h),a		;6a6c   ; guarda por donde va la onda que cambia (0-0x1F)
	cp 020h		;6a6f
	ret c			;6a71
	and 01fh		;6a72
	ld (ix+031h),a		;6a74   ; guarda por donde va la onda que cambia (0-0x1F)
	ret			;6a77
L_6A78:
	ld de,0e294h		;6a78   ; el fundido: cada 0xE294 cuadros un paso (0xE297), hasta 0xE295 pasos
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
	ld hl,0e280h		;6a8e   ; al acabar: sin fundido y los canales callados
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
	call L_6AFC		;6aa8   ; acaba el canal: todo a 0
	ld ix,0e0c0h		;6aab
	call L_6AFC		;6aaf   ; acaba el canal: todo a 0
L_6AB2:
	ld de,00040h		;6ab2   ; y los canales 1, 2, 5, 6, 7 y 8
	ld ix,0e000h		;6ab5   ; el 1 y el 2
	call L_6AFC		;6ab9   ; acaba el canal: todo a 0
	add ix,de		;6abc
	call L_6AFC		;6abe   ; acaba el canal: todo a 0
	ld ix,0e100h		;6ac1
	call L_6AFC		;6ac5   ; acaba el canal: todo a 0
	add ix,de		;6ac8
	call L_6AFC		;6aca   ; acaba el canal: todo a 0
	add ix,de		;6acd
	call L_6AFC		;6acf   ; acaba el canal: todo a 0
	add ix,de		;6ad2
	call L_6AFC		;6ad4   ; acaba el canal: todo a 0
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
	ld (ix+005h),a		;6b03   ; guarda la cuenta del bucle de la orden 0xFB
	ld (ix+006h),a		;6b06   ; guarda la cuenta del bucle de la orden 0xFC
	ld (ix+00ah),a		;6b09   ; guarda el periodo (bajo)
	ld (ix+00bh),a		;6b0c   ; guarda el periodo (alto)
	ld (ix+00ch),a		;6b0f   ; guarda el volumen de ahora
	ld (ix+00dh),a		;6b12   ; guarda IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ld (ix+00eh),a		;6b15   ; guarda IX+0E (marcas de las ordenes 0xEE-0xF7)
	ld (ix+00fh),a		;6b18   ; guarda las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
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
; DATOS ordenes_E0_FE: las rutinas de las ordenes 0xE0-0xFE de la partitura:
;   p10:6B4D toma la palabra (orden & 0x1F) x 2 y salta alli (la 0xFF no
;   llega: p10:644D); lo leen p10:6B4D (62 bytes)
;   0x6b52..0x6b90  (62 bytes)
DATA_ordenes_E0_FE:
	defw 06b90h,06ba6h,06b90h,06ba6h,06bc3h,06bedh,06c01h,06c11h	; 6b52
	defw 06c23h,06c32h,06c3dh,06c5ch,06cafh,06cb9h,06cdch,06ce7h	; 6b62
	defw 06cedh,06cf7h,06d12h,06d21h,06d27h,06d2dh,06d33h,06d3dh	; 6b72
	defw 06d48h,06dach,06db7h,06dbfh,06dd9h,06deeh,06df1h	; 6b82

; ======================================================================
; CODIGO 0x6b90..0x6e37  (679 bytes)
; ======================================================================


L_6B90:
	pop hl			;6b90   ; 0xE0 y 0xE2: tono y ruido (IX+0D bits 0-1) y la duracion fija (IX+13)
L_6B91:
	res 7,(ix+00eh)		;6b91   ; pone a cero el bit 7 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ld a,(hl)			;6b95
	and 003h		;6b96
	ld (ix+00dh),a		;6b98   ; guarda las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	ld b,a			;6b9b
	inc hl			;6b9c
	ld a,(hl)			;6b9d
	ld (ix+013h),a		;6b9e   ; guarda la duracion fija (ordenes 0xE0-0xE3)
	ld a,b			;6ba1
	or a			;6ba2
	ret nz			;6ba3
	dec hl			;6ba4
	ret			;6ba5
L_6BA6:
	pop hl			;6ba6   ; 0xE1 y 0xE3: lo mismo, con el ruido del canal en 0xE29C
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
	pop hl			;6bc3   ; 0xE4: el periodo del ruido (0xE29A en el canal 3, 0xE29B en los demas)
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
	pop hl			;6bed   ; 0xE5: la envolvente del PSG: la forma (0xE29D) y su periodo (0xE29F y 0xE29E)
	inc hl			;6bee
	res 3,(ix+00dh)		;6bef   ; pone a cero el bit 3 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	ld a,(hl)			;6bf3
	ld (0e29dh),a		;6bf4
	ld de,0e29ch		;6bf7
	ld a,(de)			;6bfa
	set 5,a		;6bfb
	ld (de),a			;6bfd
	jp L_6C02		;6bfe
L_6C01:
	pop hl			;6c01
L_6C02:
	inc hl			;6c02
	ld a,(hl)			;6c03
	ld (0e29fh),a		;6c04
	ld de,0e29ch		;6c07
	ld a,(de)			;6c0a
	set 6,a		;6c0b
	ld (de),a			;6c0d
	jp L_6C12		;6c0e
L_6C11:
	pop hl			;6c11
L_6C12:
	inc hl			;6c12
	ld a,(hl)			;6c13
	ld (0e29eh),a		;6c14
	ld de,0e29ch		;6c17
	ld a,(de)			;6c1a
	set 7,a		;6c1b
	ld (de),a			;6c1d
	set 2,(ix+00dh)		;6c1e   ; pone a uno el bit 2 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	ret			;6c22
L_6C23:
	pop hl			;6c23   ; 0xE8: sin ruido ni envolvente del PSG
L_6C24:
	ld de,0e29ch		;6c24
	xor a			;6c27
	ld (de),a			;6c28
	ld a,(ix+00dh)		;6c29   ; IX+0D bits 2-3 a cero
	and 0f3h		;6c2c
	ld (ix+00dh),a		;6c2e   ; guarda IX+0D (bits 0-1 de las ordenes 0xE0-0xE3)
	ret			;6c31
L_6C32:
	pop hl			;6c32   ; 0xE9: la unidad de duracion
	inc hl			;6c33
	ld a,(hl)			;6c34
	ld (ix+014h),a		;6c35   ; guarda la unidad de duracion (orden 0xE9)
	xor a			;6c38
	ld (ix+02ch),a		;6c39   ; guarda la cuenta de la nota (alto)
	ret			;6c3c
L_6C3D:
	pop hl			;6c3d   ; 0xEA: el volumen (cifra baja) y lo que queda por debajo (cifra alta, IX+36)
	inc hl			;6c3e
	ld a,(hl)			;6c3f
	and 0f0h		;6c40
	jr z,L_6C51		;6c42
	rrca			;6c44
	rrca			;6c45
	rrca			;6c46
	rrca			;6c47
	ld (ix+036h),a		;6c48   ; guarda lo que queda por debajo del volumen de la nota (orden 0xEA)
	set 0,(ix+030h)		;6c4b   ; pone a uno el bit 0 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	jr L_6C55		;6c4f
L_6C51:
	res 0,(ix+030h)		;6c51   ; pone a cero el bit 0 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
L_6C55:
	ld a,(hl)			;6c55
	and 00fh		;6c56
	ld (ix+015h),a		;6c58   ; guarda el volumen (orden 0xEA)
	ret			;6c5b
L_6C5C:
	pop hl			;6c5c   ; 0xEB: la primera envolvente: ataque, paso, cuanto baja y la caida final
	inc hl			;6c5d
	ld a,(ix+00fh)		;6c5e   ; lee las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	and 080h		;6c61
	ld (ix+00fh),a		;6c63   ; guarda las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld a,(hl)			;6c66
	and 0f0h		;6c67
	rrca			;6c69
	rrca			;6c6a
	rrca			;6c6b
	rrca			;6c6c
	cp 008h		;6c6d
	jp nc,L_6C76		;6c6f
	set 2,(ix+00fh)		;6c72   ; pone a uno el bit 2 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
L_6C76:
	res 3,a		;6c76
	inc a			;6c78
	bit 2,(ix+00fh)		;6c79   ; mira el bit 2 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	jp nz,L_6C84		;6c7d
	set 1,(ix+00fh)		;6c80   ; pone a uno el bit 1 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
L_6C84:
	ld (ix+021h),a		;6c84   ; guarda los cuadros del ataque (orden 0xEB)
	ld a,(hl)			;6c87
	and 00fh		;6c88
	cp 008h		;6c8a
	jp c,L_6C93		;6c8c
	set 4,(ix+00fh)		;6c8f   ; pone a uno el bit 4 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
L_6C93:
	res 3,a		;6c93
	inc a			;6c95
	ld (ix+022h),a		;6c96   ; guarda cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)
	inc hl			;6c99
	ld a,(hl)			;6c9a
	and 0f0h		;6c9b
	rrca			;6c9d
	rrca			;6c9e
	rrca			;6c9f
	rrca			;6ca0
	ld (ix+023h),a		;6ca1   ; guarda cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	ld a,(hl)			;6ca4
	and 00fh		;6ca5
	ld (ix+024h),a		;6ca7   ; guarda cuando empieza la caida final (ordenes 0xEB y 0xDD)
	set 0,(ix+00fh)		;6caa   ; pone a uno el bit 0 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ret			;6cae
L_6CAF:
	pop hl			;6caf   ; 0xEC: sin envolvente
	ld a,(ix+00fh)		;6cb0   ; lee las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	and 080h		;6cb3
	ld (ix+00fh),a		;6cb5   ; guarda las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ret			;6cb8
L_6CB9:
	pop hl			;6cb9   ; 0xED: el volumen de arranque (cifra baja) y cuanto baja (alta, IX+35)
	inc hl			;6cba
	ld a,(hl)			;6cbb
	and 0f0h		;6cbc
	rrca			;6cbe
	rrca			;6cbf
	rrca			;6cc0
	rrca			;6cc1
	jp z,L_6CD3		;6cc2
	ld (ix+035h),a		;6cc5   ; guarda cuanto baja el volumen de arranque (orden 0xED)
	ld a,(hl)			;6cc8
	and 00fh		;6cc9
	ld (ix+025h),a		;6ccb   ; guarda el volumen de arranque (orden 0xED)
	set 0,(ix+030h)		;6cce   ; pone a uno el bit 0 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ret			;6cd2
L_6CD3:
	res 0,(ix+030h)		;6cd3   ; pone a cero el bit 0 de las marcas IX+30 (la envolvente: ataque, bajada, segunda envolvente)
	ld a,(hl)			;6cd7
	ld (ix+025h),a		;6cd8   ; guarda el volumen de arranque (orden 0xED)
	ret			;6cdb
L_6CDC:
	pop hl			;6cdc   ; 0xEE: lo que se suma al periodo
	inc hl			;6cdd
	ld a,(hl)			;6cde
	ld (ix+026h),a		;6cdf   ; guarda lo que se suma al periodo (orden 0xEE)
	set 1,(ix+00eh)		;6ce2   ; pone a uno el bit 1 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ret			;6ce6
L_6CE7:
	pop hl			;6ce7   ; 0xEF: sin sumar
	res 1,(ix+00eh)		;6ce8   ; pone a cero el bit 1 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ret			;6cec
L_6CED:
	pop hl			;6ced   ; 0xF0: sin vibrato
	ld a,(ix+00eh)		;6cee   ; lee las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	and 0e2h		;6cf1
	ld (ix+00eh),a		;6cf3   ; guarda las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ret			;6cf6
L_6CF7:
	pop hl			;6cf7   ; 0xF1: el vibrato: el paso (cifra alta) y cuanto mueve (baja)
	inc hl			;6cf8
	ld a,(ix+00eh)		;6cf9   ; lee las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	or 014h		;6cfc
	ld (ix+00eh),a		;6cfe   ; guarda las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ld a,(hl)			;6d01
	and 00fh		;6d02
	ld (ix+01ch),a		;6d04   ; guarda cuanto mueve el vibrato (orden 0xF1)
	ld a,(hl)			;6d07
	and 0f0h		;6d08
	rrca			;6d0a
	rrca			;6d0b
	rrca			;6d0c
	rrca			;6d0d
	ld (ix+01bh),a		;6d0e   ; guarda el paso del vibrato (orden 0xF1)
	ret			;6d11
L_6D12:
	pop hl			;6d12   ; 0xF2: la espera del vibrato
	inc hl			;6d13
	ld a,(hl)			;6d14
	ld (ix+01ah),a		;6d15   ; guarda la espera del vibrato (orden 0xF2)
	ld a,(ix+00eh)		;6d18   ; lee las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	or 00ch		;6d1b
	ld (ix+00eh),a		;6d1d   ; guarda las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ret			;6d20
L_6D21:
	pop hl			;6d21   ; 0xF3: IX+0E bit 3 a cero
	res 3,(ix+00eh)		;6d22   ; pone a cero el bit 3 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ret			;6d26
L_6D27:
	pop hl			;6d27
	set 6,(ix+00eh)		;6d28   ; pone a uno el bit 6 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ret			;6d2c
L_6D2D:
	pop hl			;6d2d   ; 0xF5: IX+0E bit 5: en el SCC, la cifra alta es el volumen y la baja el periodo alto
	set 5,(ix+00eh)		;6d2e   ; pone a uno el bit 5 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ret			;6d32
L_6D33:
	pop hl			;6d33   ; 0xF6: IX+0E bits 5 y 6 a cero
	ld a,(ix+00eh)		;6d34   ; lee las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	and 09fh		;6d37
	ld (ix+00eh),a		;6d39   ; guarda las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ret			;6d3c
L_6D3D:
	pop hl			;6d3d   ; 0xF7: resta IX+2F al volumen
	set 7,(ix+00eh)		;6d3e   ; pone a uno el bit 7 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	inc hl			;6d42
	ld a,(hl)			;6d43
	ld (ix+02fh),a		;6d44   ; guarda lo que se resta al volumen (orden 0xF7)
	ret			;6d47
L_6D48:
	pop hl			;6d48   ; 0xF8: la forma de onda del SCC (tabla 0x7904); con el bit 7, la onda que cambia y su velocidad
	inc hl			;6d49
	ld a,(hl)			;6d4a
	bit 7,a		;6d4b
	jr nz,L_6D72		;6d4d
	set 7,(ix+00fh)		;6d4f   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	res 7,(ix+00dh)		;6d53   ; pone a cero el bit 7 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	res 6,(ix+00dh)		;6d57   ; pone a cero el bit 6 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	res 3,(ix+03ch)		;6d5b   ; pone a cero el bit 3 de las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
L_6D5F:
	ld de,07904h		;6d5f
	add a,a			;6d62
	add a,e			;6d63
	ld e,a			;6d64
	jr nc,L_6D68		;6d65
	inc d			;6d67
L_6D68:
	ld a,(de)			;6d68
	ld (ix+027h),a		;6d69   ; guarda la forma de onda del SCC (orden 0xF8, bajo)
	inc de			;6d6c
	ld a,(de)			;6d6d
	ld (ix+028h),a		;6d6e   ; guarda la forma de onda del SCC (orden 0xF8, alto)
	ret			;6d71
L_6D72:
	set 7,(ix+00fh)		;6d72   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	set 6,(ix+00dh)		;6d76   ; pone a uno el bit 6 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	set 7,(ix+00dh)		;6d7a   ; pone a uno el bit 7 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	res 3,(ix+03ch)		;6d7e   ; pone a cero el bit 3 de las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	ld a,(hl)			;6d82
	and 07fh		;6d83
	call L_6D5F		;6d85
	inc hl			;6d88
	ld a,(hl)			;6d89
	bit 7,a		;6d8a
	jr nz,L_6D94		;6d8c
	res 4,(ix+00dh)		;6d8e   ; pone a cero el bit 4 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	jr L_6D98		;6d92
L_6D94:
	set 4,(ix+00dh)		;6d94   ; pone a uno el bit 4 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
L_6D98:
	bit 6,a		;6d98
	jr nz,L_6DA2		;6d9a
	res 5,(ix+00dh)		;6d9c   ; pone a cero el bit 5 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	jr L_6DA6		;6da0
L_6DA2:
	set 5,(ix+00dh)		;6da2   ; pone a uno el bit 5 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
L_6DA6:
	and 03fh		;6da6
	ld (ix+032h),a		;6da8   ; guarda la velocidad de la onda que cambia (orden 0xF8)
	ret			;6dab
L_6DAC:
	pop hl			;6dac   ; 0xF9: salta y guarda la vuelta (IX+7/8)
	call L_6DCB		;6dad
	ld (ix+007h),e		;6db0   ; guarda la vuelta de la orden 0xF9 (bajo)
	ld (ix+008h),d		;6db3   ; guarda la vuelta de la orden 0xF9 (alto)
	ret			;6db6
L_6DB7:
	pop hl			;6db7   ; 0xFA: vuelve alli
	ld l,(ix+007h)		;6db8   ; lee la vuelta de la orden 0xF9 (bajo)
	ld h,(ix+008h)		;6dbb   ; lee la vuelta de la orden 0xF9 (alto)
	ret			;6dbe
L_6DBF:
	pop hl			;6dbf   ; 0xFB: repite: las veces y la direccion (cuenta en IX+5)
	inc hl			;6dc0
	ld a,(ix+005h)		;6dc1   ; lee la cuenta del bucle de la orden 0xFB
	inc a			;6dc4
	cp (hl)			;6dc5
	jr z,L_6DD2		;6dc6
	ld (ix+005h),a		;6dc8   ; guarda la cuenta del bucle de la orden 0xFB
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
	ld (ix+005h),000h		;6dd4   ; la cuenta del bucle de la orden 0xFB = 0x00
	ret			;6dd8
L_6DD9:
	pop hl			;6dd9   ; 0xFC: otro bucle (cuenta en IX+6)
	inc hl			;6dda
	ld a,(ix+006h)		;6ddb   ; lee la cuenta del bucle de la orden 0xFC
	inc a			;6dde
	cp (hl)			;6ddf
	jr z,L_6DE7		;6de0
	ld (ix+006h),a		;6de2   ; guarda la cuenta del bucle de la orden 0xFC
	jr L_6DCB		;6de5
L_6DE7:
	inc hl			;6de7
	inc hl			;6de8
	ld (ix+006h),000h		;6de9   ; la cuenta del bucle de la orden 0xFC = 0x00
	ret			;6ded
L_6DEE:
	pop hl			;6dee   ; 0xFD: salta
	jr L_6DCB		;6def
L_6DF1:
	pop hl			;6df1   ; 0xFE: el modo del canal; al pasar al 1 guarda IX+0E/0F y al salir los devuelve
	inc hl			;6df2
	ld b,(ix+009h)		;6df3   ; lee el modo del canal (orden 0xFE)
	ld a,(hl)			;6df6
	ld (ix+009h),a		;6df7   ; guarda el modo del canal (orden 0xFE)
	cp 001h		;6dfa
	ld a,b			;6dfc
	jp z,L_6E17		;6dfd
	cp 001h		;6e00
	ret nz			;6e02
	ld a,(ix+00eh)		;6e03   ; lee las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ld (ix+02ah),a		;6e06   ; guarda IX+0E guardado (orden 0xFE)
	ld a,(ix+00fh)		;6e09   ; lee las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld (ix+02bh),a		;6e0c   ; guarda IX+0F guardado (orden 0xFE)
	xor a			;6e0f
	ld (ix+00eh),a		;6e10   ; guarda las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ld (ix+00fh),a		;6e13   ; guarda las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ret			;6e16
L_6E17:
	cp 001h		;6e17
	ret z			;6e19
	ld a,(ix+02ah)		;6e1a   ; lee IX+0E guardado (orden 0xFE)
	ld (ix+00eh),a		;6e1d   ; guarda las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ld a,(ix+02bh)		;6e20   ; lee IX+0F guardado (orden 0xFE)
	ld (ix+00fh),a		;6e23   ; guarda las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
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
	ex de,hl			;6e35   ; HL = el destino
	jp (hl)			;6e36

; ----------------------------------------------------------------------
; DATOS ordenes_D0_DF: las rutinas de las ordenes 0xD0-0xDF de la partitura:
;   p10:6E32 toma la palabra (orden & 0x0F) x 2 y salta alli; lo leen p10:6E32
;   (32 bytes)
;   0x6e37..0x6e57  (32 bytes)
DATA_ordenes_D0_DF:
	defw 06e57h,06e57h,06e57h,06e57h,06e57h,06e57h,06e62h,06e7dh	; 6e37
	defw 06e94h,06e9eh,06ea0h,06ea2h,06ea9h,06eafh,06f92h,06f94h	; 6e47

; ======================================================================
; CODIGO 0x6e57..0x7086  (559 bytes)
; ======================================================================


L_6E57:
	pop hl			;6e57   ; 0xD0-0xD5: la octava (y su copia en IX+29)
	ld a,(hl)			;6e58
	and 00fh		;6e59
	ld (ix+016h),a		;6e5b   ; guarda la octava (ordenes 0xD0-0xD5)
	ld (ix+029h),a		;6e5e   ; guarda la octava, para elegir el guion de bateria
	ret			;6e61
L_6E62:
	pop hl			;6e62   ; 0xD6: el deslizamiento: IX+39 el paso, IX+3A los cuadros
	ld a,(ix+03ch)		;6e63   ; lee las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	or 050h		;6e66
	ld (ix+03ch),a		;6e68   ; guarda las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	res 7,(ix+03ch)		;6e6b   ; pone a cero el bit 7 de las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	inc hl			;6e6f
	ld a,(hl)			;6e70
	ld (ix+039h),a		;6e71   ; guarda el paso del deslizamiento (ordenes 0xD6 y 0xD7)
	inc hl			;6e74
	ld a,(hl)			;6e75
	ld (ix+03ah),a		;6e76   ; guarda la cuenta del deslizamiento
	ld (ix+03bh),a		;6e79   ; guarda los cuadros del deslizamiento
	ret			;6e7c
L_6E7D:
	pop hl			;6e7d   ; 0xD7: lo mismo hacia el otro lado (IX+3C bit 7)
	ld a,(ix+03ch)		;6e7e   ; lee las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	or 0d0h		;6e81
	ld (ix+03ch),a		;6e83   ; guarda las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	inc hl			;6e86
	ld a,(hl)			;6e87
	ld (ix+039h),a		;6e88   ; guarda el paso del deslizamiento (ordenes 0xD6 y 0xD7)
	inc hl			;6e8b
	ld a,(hl)			;6e8c
	ld (ix+03ah),a		;6e8d   ; guarda la cuenta del deslizamiento
	ld (ix+03bh),a		;6e90   ; guarda los cuadros del deslizamiento
	ret			;6e93
L_6E94:
	pop hl			;6e94   ; 0xD8: sin deslizamiento
	ld a,(ix+03ch)		;6e95   ; lee las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	and 00fh		;6e98
	ld (ix+03ch),a		;6e9a   ; guarda las marcas del deslizamiento (bit 6 en marcha, 7 hacia arriba)
	ret			;6e9d
L_6E9E:
	pop hl			;6e9e
	ret			;6e9f
L_6EA0:
	pop hl			;6ea0
	ret			;6ea1
L_6EA2:
	pop hl			;6ea2   ; 0xDB: el volumen minimo
	inc hl			;6ea3
	ld a,(hl)			;6ea4
	ld (ix+034h),a		;6ea5   ; guarda el volumen minimo (orden 0xDB)
	ret			;6ea8
L_6EA9:
	pop hl			;6ea9   ; 0xDC: sin volumen minimo
	xor a			;6eaa
	ld (ix+034h),a		;6eab   ; guarda el volumen minimo (orden 0xDB)
	ret			;6eae
L_6EAF:
	pop hl			;6eaf   ; 0xDD: la segunda envolvente: ataque y paso de la cifra alta y baja; las bajadas del byte siguiente, en dieciseisavos (divididas por IX+22)
	inc hl			;6eb0
	ld a,(ix+00fh)		;6eb1   ; lee las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	and 080h		;6eb4
	ld (ix+00fh),a		;6eb6   ; guarda las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld a,(hl)			;6eb9
	and 0f0h		;6eba
	rrca			;6ebc
	rrca			;6ebd
	rrca			;6ebe
	rrca			;6ebf
	cp 008h		;6ec0
	jp nc,L_6EC9		;6ec2
	set 2,(ix+00fh)		;6ec5   ; pone a uno el bit 2 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
L_6EC9:
	res 3,a		;6ec9
	inc a			;6ecb
	bit 2,(ix+00fh)		;6ecc   ; mira el bit 2 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	jp nz,L_6ED7		;6ed0
	set 1,(ix+00fh)		;6ed3   ; pone a uno el bit 1 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
L_6ED7:
	ld (ix+021h),a		;6ed7   ; guarda los cuadros del ataque (orden 0xEB)
	ld a,(hl)			;6eda
	and 00fh		;6edb
	ld (ix+022h),a		;6edd   ; guarda cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)
	inc hl			;6ee0
	ld a,(hl)			;6ee1
	and 0f0h		;6ee2
	rrca			;6ee4
	rrca			;6ee5
	rrca			;6ee6
	rrca			;6ee7
	ld (ix+023h),a		;6ee8   ; guarda cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	ld a,(hl)			;6eeb
	and 00fh		;6eec
	ld (ix+024h),a		;6eee   ; guarda cuando empieza la caida final (ordenes 0xEB y 0xDD)
	ld b,a			;6ef1
	ld a,(ix+023h)		;6ef2   ; lee cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	sub b			;6ef5
	ld (ix+038h),a		;6ef6   ; guarda la diferencia de IX+23 e IX+24 (orden 0xDD)
	ld e,000h		;6ef9
	ld d,000h		;6efb
	ld b,(ix+022h)		;6efd   ; lee cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)
	ld a,(ix+023h)		;6f00   ; lee cuanto baja la envolvente (ordenes 0xEB y 0xDD)
L_6F03:
	sub b			;6f03
	jr c,L_6F0F		;6f04
	inc d			;6f06
	ld (ix+023h),a		;6f07   ; guarda cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	or a			;6f0a
	jr z,L_6F2C		;6f0b
	jr L_6F03		;6f0d
L_6F0F:
	ld a,b			;6f0f
	ld b,(ix+023h)		;6f10   ; lee cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	sub b			;6f13
	rlca			;6f14
	rlca			;6f15
	rlca			;6f16
	rlca			;6f17
	and 0f0h		;6f18
	ld (ix+023h),a		;6f1a   ; guarda cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	ld b,(ix+022h)		;6f1d   ; lee cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)
L_6F20:
	sub b			;6f20
	jr c,L_6F2C		;6f21
	inc e			;6f23
	ld (ix+023h),a		;6f24   ; guarda cuanto baja la envolvente (ordenes 0xEB y 0xDD)
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
	ld (ix+023h),a		;6f33   ; guarda cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	ld a,d			;6f36
	rlca			;6f37
	rlca			;6f38
	rlca			;6f39
	rlca			;6f3a
	and 0f0h		;6f3b
	or (ix+023h)		;6f3d   ; OR con cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	ld (ix+023h),a		;6f40   ; guarda cuanto baja la envolvente (ordenes 0xEB y 0xDD)
	ld e,000h		;6f43
	ld d,000h		;6f45
	ld b,(ix+022h)		;6f47   ; lee cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)
	ld a,(ix+024h)		;6f4a   ; lee cuando empieza la caida final (ordenes 0xEB y 0xDD)
L_6F4D:
	sub b			;6f4d
	jr c,L_6F59		;6f4e
	inc d			;6f50
	ld (ix+024h),a		;6f51   ; guarda cuando empieza la caida final (ordenes 0xEB y 0xDD)
	or a			;6f54
	jr z,L_6F76		;6f55
	jr L_6F4D		;6f57
L_6F59:
	ld a,b			;6f59
	ld b,(ix+024h)		;6f5a   ; lee cuando empieza la caida final (ordenes 0xEB y 0xDD)
	sub b			;6f5d
	rlca			;6f5e
	rlca			;6f5f
	rlca			;6f60
	rlca			;6f61
	and 0f0h		;6f62
	ld (ix+024h),a		;6f64   ; guarda cuando empieza la caida final (ordenes 0xEB y 0xDD)
	ld b,(ix+022h)		;6f67   ; lee cada cuantos cuadros baja la envolvente (ordenes 0xEB y 0xDD)
L_6F6A:
	sub b			;6f6a
	jr c,L_6F76		;6f6b
	inc e			;6f6d
	ld (ix+024h),a		;6f6e   ; guarda cuando empieza la caida final (ordenes 0xEB y 0xDD)
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
	ld (ix+024h),a		;6f7d   ; guarda cuando empieza la caida final (ordenes 0xEB y 0xDD)
	ld a,d			;6f80
	rlca			;6f81
	rlca			;6f82
	rlca			;6f83
	rlca			;6f84
	and 0f0h		;6f85
	or (ix+024h)		;6f87   ; OR con cuando empieza la caida final (ordenes 0xEB y 0xDD)
	ld (ix+024h),a		;6f8a   ; guarda cuando empieza la caida final (ordenes 0xEB y 0xDD)
	set 6,(ix+00fh)		;6f8d   ; pone a uno el bit 6 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ret			;6f91
L_6F92:
	pop hl			;6f92
	ret			;6f93
L_6F94:
	res 7,(ix+00eh)		;6f94   ; pone a cero el bit 7 de las marcas IX+0E (bateria, desafinado, vibrato, periodo del SCC, volumen restado)
	ret			;6f98
L_6F99:
	call L_6FA0		;6f99   ; periodos y volumenes, ruido, envolvente y mezclador
	call L_7092		;6f9c
	ret			;6f9f
L_6FA0:
	call L_6FB0		;6fa0   ; periodos y volumenes, ruido, envolvente y mezclador
	call L_6FC8		;6fa3   ; los tres canales del PSG: los registros 0-5 y 8-10
	call L_6FFD		;6fa6   ; el ruido: 0xE29C bit 0 (el del canal 3)?
	call L_7024		;6fa9   ; la envolvente del PSG: bit 7?
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
	call L_6FDF		;6fcf   ; el periodo bajo
	ld hl,0e04ah		;6fd2   ; el 2
	call L_6FDF		;6fd5   ; el periodo bajo
	ld hl,0e08ah		;6fd8   ; el 3
	call L_6FDF		;6fdb   ; el periodo bajo
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
; DATOS partitura_7086: partitura que lee el motor de sonido (p10:705C,
;   p10:7067) al tocar los sonidos 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
;   0x08 y otros (medido ejecutando el motor, tools/lee_sonidos.py; el tamano
;   es lo que se lee seguido); lo leen p10:705C, p10:7067 (5 bytes)
;   0x7086..0x708b  (5 bytes)
DATA_partitura_7086:
	defb 089h,081h,088h,080h,092h	; 7086

; ----------------------------------------------------------------------
; DATOS sin identificar  0x708b..0x708c  (1 bytes)
DATA_708B:
	defb 082h	; 708b

; ----------------------------------------------------------------------
; DATOS partitura_708C: partitura que lee el motor de sonido (p10:7067,
;   p10:7072) al tocar los sonidos 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
;   0x08 y otros (medido ejecutando el motor, tools/lee_sonidos.py; el tamano
;   es lo que se lee seguido); lo leen p10:7067, p10:7072 (6 bytes)
;   0x708c..0x7092  (6 bytes)
DATA_partitura_708C:
	defb 090h,080h,0a4h,084h,0a0h,080h	; 708c

; ======================================================================
; CODIGO 0x7092..0x73a9  (791 bytes)
; ======================================================================


L_7092:
	call L_709F		;7092   ; las marcas de lo que cambia (0xE2A0-0xE2A1)
	call L_71A4		;7095
	call L_71F6		;7098   ; los registros del SCC: las marcas
	call L_72BB		;709b   ; la onda del SCC de los canales 4-7: con IX+0F bit 7, sus 32 muestras al SCC (0x9800 + 0x20 x n)
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
	ld (09000h),a		;72b0   ; el mapper: pone en 0x8000 el banco de A
	ld a,(hl)			;72b3
	ld (de),a			;72b4   ; ...al registro
	ld a,00bh		;72b5   ; y el banco 11 otra vez
	ld (09000h),a		;72b7   ; el mapper: pone en 0x8000 el banco de A
	ret			;72ba
L_72BB:
	ld ix,0e0c0h		;72bb   ; la onda del SCC de los canales 4-7: con IX+0F bit 7, sus 32 muestras al SCC (0x9800 + 0x20 x n)
	bit 7,(ix+00fh)		;72bf   ; mira el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	jr z,L_72EA		;72c3
	res 7,(ix+00fh)		;72c5   ; pone a cero el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld e,(ix+027h)		;72c9   ; lee la forma de onda del SCC (orden 0xF8, bajo)
	ld d,(ix+028h)		;72cc   ; lee la forma de onda del SCC (orden 0xF8, alto)
	bit 6,(ix+00dh)		;72cf   ; con la onda que cambia (IX+0D bit 6), saltando IX+31 entre muestras, y otra vez al cuadro siguiente
	jr z,L_72E3		;72d3
	set 7,(ix+00fh)		;72d5   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ex de,hl			;72d9
	ld de,09800h		;72da
	call L_738F		;72dd   ; copia 32 muestras avanzando IX+31 cada vez
	jp L_72EA		;72e0
L_72E3:
	ex de,hl			;72e3
	ld de,09800h		;72e4
	call L_7370		;72e7
L_72EA:
	ld ix,0e100h		;72ea
	bit 7,(ix+00fh)		;72ee   ; mira el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	jr z,L_7319		;72f2
	res 7,(ix+00fh)		;72f4   ; pone a cero el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld e,(ix+027h)		;72f8   ; lee la forma de onda del SCC (orden 0xF8, bajo)
	ld d,(ix+028h)		;72fb   ; lee la forma de onda del SCC (orden 0xF8, alto)
	bit 6,(ix+00dh)		;72fe   ; mira el bit 6 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	jr z,L_7312		;7302
	set 7,(ix+00fh)		;7304   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ex de,hl			;7308
	ld de,09820h		;7309
	call L_738F		;730c   ; copia 32 muestras avanzando IX+31 cada vez
	jp L_7319		;730f
L_7312:
	ex de,hl			;7312
	ld de,09820h		;7313
	call L_7370		;7316
L_7319:
	ld ix,0e140h		;7319
	bit 7,(ix+00fh)		;731d   ; mira el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	jr z,L_7348		;7321
	res 7,(ix+00fh)		;7323   ; pone a cero el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld e,(ix+027h)		;7327   ; lee la forma de onda del SCC (orden 0xF8, bajo)
	ld d,(ix+028h)		;732a   ; lee la forma de onda del SCC (orden 0xF8, alto)
	bit 6,(ix+00dh)		;732d   ; mira el bit 6 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	jr z,L_7341		;7331
	set 7,(ix+00fh)		;7333   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ex de,hl			;7337
	ld de,09840h		;7338
	call L_738F		;733b   ; copia 32 muestras avanzando IX+31 cada vez
	jp L_7348		;733e
L_7341:
	ex de,hl			;7341
	ld de,09840h		;7342
	call L_7370		;7345
L_7348:
	ld ix,0e180h		;7348
	bit 7,(ix+00fh)		;734c   ; mira el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ret z			;7350
	res 7,(ix+00fh)		;7351   ; pone a cero el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ld e,(ix+027h)		;7355   ; lee la forma de onda del SCC (orden 0xF8, bajo)
	ld d,(ix+028h)		;7358   ; lee la forma de onda del SCC (orden 0xF8, alto)
	bit 6,(ix+00dh)		;735b   ; mira el bit 6 de las marcas IX+0D (bits 0-1 tono y ruido, 2-3 la envolvente del PSG, 4-7 la onda que cambia)
	jr z,L_736C		;735f
	set 7,(ix+00fh)		;7361   ; pone a uno el bit 7 de las marcas IX+0F (la envolvente de volumen; bit 7: onda nueva al SCC)
	ex de,hl			;7365
	ld de,09860h		;7366
	jp L_738F		;7369
L_736C:
	ex de,hl			;736c
	ld de,09860h		;736d
L_7370:
	ld a,03fh		;7370
	ld (09000h),a		;7372   ; el mapper: pone en 0x8000 el banco de A
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
	ld (09000h),a		;738b   ; el mapper: pone en 0x8000 el banco de A
	ret			;738e
L_738F:
	ld a,03fh		;738f   ; copia 32 muestras avanzando IX+31 cada vez
	ld (09000h),a		;7391   ; el mapper: pone en 0x8000 el banco de A
	ld b,020h		;7394
L_7396:
	ld a,(hl)			;7396
	ld (de),a			;7397
	ld a,l			;7398
	add a,(ix+031h)		;7399   ; le suma por donde va la onda que cambia (0-0x1F)
	ld l,a			;739c
	jr nc,L_73A0		;739d
	inc h			;739f
L_73A0:
	inc de			;73a0
	djnz L_7396		;73a1
	ld a,00bh		;73a3
	ld (09000h),a		;73a5   ; el mapper: pone en 0x8000 el banco de A
	ret			;73a8

; ----------------------------------------------------------------------
; DATOS partitura_73A9: partitura que lee el motor de sonido (p10:644C,
;   p10:6508, p10:6574, p10:6576 y otras) al tocar los sonidos 0x04, 0x05,
;   0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B y otros (medido ejecutando el motor,
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:644C, p10:6508, p10:6574, p10:6576, p10:6578, p10:66BC, p10:6B9D,
;   p10:6BC5 (104 bytes)
;   0x73a9..0x7411  (104 bytes)
DATA_partitura_73A9:
	defb 0bdh,073h,0c4h,073h,0d1h,073h,0e6h,073h,0feh,073h,015h,074h,02eh,074h,047h,074h	; 73a9  .s.s.s.s.s.t.tGt
	defb 062h,074h,07fh,074h,0e1h,001h,0e4h,000h,007h,005h,0ffh,0e3h,001h,0e4h,000h,08ah	; 73b9  bt.t............
	defb 000h,0e1h,004h,006h,005h,004h,003h,0ffh,0e1h,001h,0e4h,014h,007h,0e2h,001h,072h	; 73c9  ...............r
	defb 000h,0e1h,002h,0e4h,010h,003h,002h,0e1h,001h,0e4h,006h,002h,0ffh,0e2h,001h,0e5h	; 73d9  ................
	defb 000h,000h,010h,0c1h,0b0h,0e8h,0e1h,001h,0e4h,004h,008h,007h,006h,005h,004h,0e4h	; 73e9  ................
	defb 004h,003h,002h,001h,0ffh,0e2h,001h,0e5h,000h,000h,00fh,0a2h,080h,0e8h,0e1h,001h	; 73f9  ................
	defb 0e4h,003h,007h,006h,005h,0e1h,006h,004h	; 7409  ........

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
; DATOS partitura_7415: partitura que lee el motor de sonido (p10:644C,
;   p10:6508, p10:6578, p10:66BC y otras) al tocar los sonidos 0x04, 0x3E,
;   0x47, 0x49 (medido ejecutando el motor, tools/lee_sonidos.py; el tamano es
;   lo que se lee seguido); lo leen p10:644C, p10:6508, p10:6578, p10:66BC,
;   p10:6B9D (18 bytes)
;   0x7415..0x7427  (18 bytes)
DATA_partitura_7415:
	defb 0e2h,001h,091h,02ah,081h,04ah,071h,055h,061h,060h,051h,06ah,041h,075h,031h,080h	; 7415  ...*.JqUa`QjAu1.
	defb 021h,08ah	; 7425

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7427..0x742e  (7 bytes)
DATA_7427:
	defb 011h,095h,001h,0a0h,001h,0b0h,0ffh	; 7427

; ----------------------------------------------------------------------
; DATOS partitura_742E: partitura que lee el motor de sonido (p10:644C,
;   p10:6508, p10:6578, p10:66BC y otras) al tocar los sonidos 0x04, 0x05,
;   0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B y otros (medido ejecutando el motor,
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:644C, p10:6508, p10:6578, p10:66BC, p10:6B9D, p10:6BF3, p10:6C03,
;   p10:6C13 (96 bytes)
;   0x742e..0x748e  (96 bytes)
DATA_partitura_742E:
	defb 0e2h,001h,0a1h,05ah,081h,080h,071h,08ah,061h,095h,051h,0a0h,041h,0aah,031h,0b5h	; 742e  ...Z..q.a.Q.A.1.
	defb 021h,0c0h,011h,0cah,001h,0d5h,001h,0e0h,0ffh,0e2h,001h,0a1h,095h,091h,0c0h,081h	; 743e  !...............
	defb 0cah,0a1h,0d5h,061h,0e0h,051h,0eah,041h,0f5h,032h,000h,022h,00ah,012h,015h,002h	; 744e  ...a.Q.A.2."....
	defb 020h,002h,030h,0ffh,0e2h,001h,0b1h,0e0h,0a2h,010h,092h,01ah,082h,025h,072h,030h	; 745e   .0..........%r0
	defb 062h,03ah,052h,045h,042h,050h,032h,05ah,022h,065h,012h,070h,002h,07ah,002h,085h	; 746e  b:REBP2Z"e.p.z..
	defb 0ffh,0e2h,001h,0e5h,009h,000h,00ah,094h,050h,096h,000h,097h,000h,098h,000h,0ffh	; 747e  ........P.......

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
; DATOS partitura_74E4: partitura que lee el motor de sonido (p10:6574,
;   p10:6576) al tocar los sonidos 0x40, 0x41, 0x42, 0x44, 0x45, 0x47, 0x48,
;   0x49 (medido ejecutando el motor, tools/lee_sonidos.py; el tamano es lo
;   que se lee seguido); lo leen p10:6574, p10:6576 (2 bytes)
;   0x74e4..0x74e6  (2 bytes)
DATA_partitura_74E4:
	defb 0eah,074h	; 74e4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x74e6..0x74ea  (4 bytes)
DATA_74E6:
	defb 006h,075h,006h,075h	; 74e6

; ----------------------------------------------------------------------
; DATOS partitura_74EA: partitura que lee el motor de sonido (p10:644C,
;   p10:6508, p10:6578, p10:66BC y otras) al tocar los sonidos 0x40, 0x41,
;   0x42, 0x44, 0x45, 0x47, 0x48, 0x49 (medido ejecutando el motor,
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:644C, p10:6508, p10:6578, p10:66BC, p10:6B9D, p10:6BC5 (26 bytes)
;   0x74ea..0x7504  (26 bytes)
DATA_partitura_74EA:
	defb 0e2h,001h,0a2h,030h,0e1h,001h,0e4h,005h,00ah,0e4h,006h,009h,0e4h,008h,008h,0e4h	; 74ea  ...0............
	defb 004h,007h,0e1h,005h,0e4h,00ah,005h,004h,003h,002h	; 74fa  ..........

; ----------------------------------------------------------------------
; DATOS sonidos: un puntero por sonido a su cabecera (p10:6079: 0x7504 + 2 x
;   numero, del 1 al 0x53; la palabra 0 no la pide nadie); lo leen p10:6082
;   (168 bytes)
;   0x7504..0x75ac  (168 bytes)
DATA_sonidos:
	defw 0ff01h,075ach,075beh,075d0h,075d4h,0768ah,075e2h,075f0h	; 7504
	defw 075feh,0760ch,0761ah,07628h,07636h,0766eh,0773ah,07748h	; 7514
	defw 0774eh,07754h,0775ah,07760h,07766h,0776ch,07772h,07778h	; 7524
	defw 0777eh,07784h,0778ah,07790h,07796h,077aeh,077b4h,077bah	; 7534
	defw 077c0h,077c6h,077cch,077d2h,077d8h,077deh,077e4h,0780eh	; 7544
	defw 07814h,0781ah,07820h,07826h,0782ch,07832h,07838h,0783eh	; 7554
	defw 07844h,0784ah,07850h,07856h,0785ch,07862h,07868h,07892h	; 7564
	defw 07898h,0789eh,078a4h,078aah,078b0h,07698h,076bch,076f2h	; 7574
	defw 07704h,07716h,076aah,078b6h,07644h,07652h,07660h,0767ch	; 7584
	defw 076e0h,07728h,076ceh,0779ch,077eah,0786eh,07880h,078c8h	; 7594
	defw 078d6h,078eeh,077fch,07900h	; 75a4

; ----------------------------------------------------------------------
; DATOS cabeceras: las cabeceras de los sonidos: p10:6089 copia 18 bytes de
;   cada una ([canales][prioridad] y una palabra por canal, la partitura); se
;   solapan porque cada una solo usa 2 + 2 x canales; lo leen p10:608C (870
;   bytes)
;   0x75ac..0x7912  (870 bytes)
DATA_cabeceras:
	defb 0ffh,0ffh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh	; 75ac  ...~.~.~.~.~.~.~.~
	defb 0ffh,0e0h,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh,0b9h,07eh	; 75be  ...~.~.~.~.~.~.~.~
	defb 010h,0feh,0a4h,07eh,0cfh,0e0h,078h,095h,0f7h,095h,08eh,096h,059h,097h,041h,098h,01ah,099h	; 75d0  ...~..x.....Y.A...
	defb 0cfh,0e0h,09eh,09eh,001h,09fh,054h,09fh,0bah,09fh,084h,0a0h,0feh,0a0h,0cfh,0e0h,0d3h,0a2h	; 75e2  ......T...........
	defb 022h,0a3h,091h,0a3h,026h,0a4h,09ch,0a4h,01bh,0a5h,0cfh,0e0h,04eh,0a6h,0e9h,0a6h,093h,0a7h	; 75f4  "...&.......N.....
	defb 025h,0a8h,068h,0a9h,068h,0aah,0cfh,0e0h,024h,0adh,05bh,0adh,08bh,0adh,0e5h,0adh,03fh,0aeh	; 7606  %.h.h...$.[.....?.
	defb 069h,0aeh,0cfh,0e0h,01bh,0afh,039h,0afh,076h,0afh,0ech,0afh,02fh,0b0h,041h,0b0h,0cfh,0e0h	; 7618  i.....9.v.../.A...
	defb 0dfh,0b0h,048h,0b1h,072h,0b1h,0d8h,0b1h,01ah,0b2h,053h,0b2h,0cfh,0e0h,07bh,0b3h,0cfh,0b3h	; 762a  ..H.r.....S...{...
	defb 041h,0b4h,09dh,0b4h,063h,0b5h,0bch,0b5h,0cfh,0e0h,000h,0a0h,06ah,0a0h,005h,0a1h,0a9h,0a1h	; 763c  A...c.......j.....
	defb 062h,0a2h,020h,0a3h,0cfh,0e0h,09dh,0a4h,0cah,0a4h,03ch,0a5h,06fh,0a5h,019h,0a6h,0a5h,0a6h	; 764e  b. .......<.o.....
	defb 0cfh,0e0h,085h,0a9h,0c7h,0a9h,0f4h,0a9h,039h,0aah,096h,0aah,0c9h,0aah,0cfh,0e0h,093h,0b7h	; 7660  ........9.........
	defb 0d7h,0b7h,03fh,0b8h,064h,0b9h,008h,0bah,028h,0bbh,0cfh,0e0h,070h,0ach,0dbh,0ach,04eh,0adh	; 7672  ..?.d...(...p...N.
	defb 006h,0aeh,0cah,0aeh,048h,0afh,0cfh,0e0h,01ah,09bh,04fh,09bh,08ch,09bh,0ebh,09bh,05bh,09ch	; 7684  ....H.....O.....[.
	defb 0cfh,09ch,0ffh,0e0h,0f4h,0a8h,02ch,0a9h,05bh,0a9h,0b1h,0a9h,0d3h,0a9h,023h,0aah,06ah,0aah	; 7696  ......,.[.....#.j.
	defb 0cch,0aah,0ffh,0e0h,0aah,0a0h,03ch,0a1h,040h,0a2h,008h,0a3h,04bh,0a4h,0bah,0a4h,09bh,0a5h	; 76a8  ......<.@...K.....
	defb 0d0h,0a6h,0ffh,0e0h,007h,0abh,02fh,0ach,004h,0adh,0d5h,0adh,08dh,0afh,0d4h,0b0h,05fh,0b2h	; 76ba  ....../........._.
	defb 08ch,0b3h,0ffh,0e0h,074h,0bbh,0bch,0bbh,005h,0bch,042h,0bch,0a3h,0bch,0dch,0bch,006h,0bdh	; 76cc  ....t.....B.......
	defb 058h,0bdh,0ffh,0e0h,0abh,0b1h,0e1h,0b1h,0f1h,0b1h,002h,0b2h,01eh,0b2h,034h,0b2h,04eh,0b2h	; 76de  X.............4.N.
	defb 061h,0b2h,0ffh,0e0h,054h,0b7h,0d7h,0b7h,05dh,0b8h,08bh,0b8h,0c8h,0b8h,0fch,0b8h,07bh,0b9h	; 76f0  a...T...].......{.
	defb 0aeh,0b9h,0ffh,0e0h,0ebh,0b9h,004h,0bah,01fh,0bah,032h,0bah,045h,0bah,06dh,0bah,0b4h,0bah	; 7702  ..........2.E.m...
	defb 0feh,0bah,0ffh,0e0h,005h,0bch,04dh,0bch,08ch,0bch,08dh,0bch,0ebh,0bch,033h,0bdh,084h,0bdh	; 7714  ......M.......3...
	defb 0b6h,0bdh,0ffh,0e0h,0f2h,0b2h,0bah,0b3h,04eh,0b4h,023h,0b5h,0e9h,0b5h,0b7h,0b6h,0beh,0b7h	; 7726  ........N.#.......
	defb 0a5h,0b8h,0cfh,0e0h,030h,0bdh,05ch,0bdh,0b4h,0bdh,0d9h,0bdh,059h,0beh,0bah,0beh,030h,002h	; 7738  ....0.\.....Y...0.
	defb 0bah,07eh,0f5h,07eh,030h,003h,034h,07fh,081h,07fh,030h,003h,0d2h,07fh,0f7h,07fh,030h,004h	; 774a  .~.~0.4...0.....0.
	defb 02eh,080h,069h,080h,030h,004h,0a8h,080h,0d5h,080h,030h,004h,00ch,081h,045h,081h,030h,004h	; 775c  ..i.0.....0...E.0.
	defb 07ch,081h,0a9h,081h,030h,004h,0dah,081h,021h,082h,030h,005h,06ah,082h,0a9h,082h,030h,007h	; 776e  |...0...!.0.j...0.
	defb 0d4h,082h,01bh,083h,030h,025h,066h,083h,0bfh,083h,030h,00ch,008h,084h,04ch,084h,030h,012h	; 7780  ....0%f...0...L.0.
	defb 09ah,084h,017h,085h,030h,00dh,096h,085h,0beh,085h,0ffh,0e0h,000h,0a8h,01ah,0a8h,020h,0a8h	; 7792  ....0........... .
	defb 02ch,0a8h,03fh,0a8h,050h,0a8h,0c5h,0a8h,06eh,0a9h,030h,022h,0e9h,085h,010h,086h,030h,008h	; 77a4  ,.?.P...n.0"....0.
	defb 037h,086h,08eh,086h,030h,008h,0ddh,086h,030h,087h,030h,00dh,083h,087h,0eeh,087h,030h,008h	; 77b6  7...0...0.0.....0.
	defb 069h,088h,0beh,088h,030h,00eh,017h,089h,088h,089h,030h,005h,0fdh,089h,02ch,08ah,030h,005h	; 77c8  i...0.....0...,.0.
	defb 05dh,08ah,086h,08ah,030h,005h,0b3h,08ah,0dch,08ah,030h,013h,011h,08bh,080h,08bh,0ffh,0e0h	; 77da  ]...0.....0.......
	defb 0e2h,0a9h,025h,0aah,02bh,0aah,035h,0aah,0b5h,0aah,0cfh,0aah,0e7h,0aah,032h,0abh,0ffh,0e0h	; 77ec  ..%.+.5.......2...
	defb 063h,0b0h,074h,0b0h,089h,0b0h,09ah,0b0h,0a4h,0b0h,0b2h,0b0h,0c0h,0b0h,0d3h,0b0h,030h,012h	; 77fe  c.t.............0.
	defb 0f7h,08bh,050h,08ch,030h,007h,0a9h,08ch,0d8h,08ch,030h,004h,005h,08dh,04ch,08dh,030h,00ah	; 7810  ..P.0.....0...L.0.
	defb 089h,08dh,0b0h,08dh,030h,00ah,0e3h,08dh,032h,08eh,030h,00ah,0bdh,08eh,0bdh,08eh,030h,00ah	; 7822  ....0...2.0.....0.
	defb 0feh,08eh,008h,08fh,030h,00ah,043h,08fh,047h,08fh,030h,004h,092h,08fh,0cdh,08fh,030h,008h	; 7834  ....0.C.G.0.....0.
	defb 010h,090h,073h,090h,030h,00ch,0bbh,090h,006h,091h,030h,00ah,048h,091h,059h,091h,030h,004h	; 7846  ..s.0.....0.H.Y.0.
	defb 06ch,091h,09bh,091h,030h,00ah,0ceh,091h,007h,092h,030h,00eh,05fh,092h,0e2h,092h,030h,007h	; 7858  l...0.....0._...0.
	defb 020h,093h,047h,093h,0ffh,0e0h,0f4h,0abh,0f4h,0abh,0f4h,0abh,0f9h,0abh,0fdh,0abh,02ah,0ach	; 786a   .G.............*.
	defb 02eh,0ach,032h,0ach,0ffh,0e0h,08ch,0ach,08dh,0ach,08eh,0ach,096h,0ach,0b2h,0ach,0d0h,0ach	; 787c  ..2...............
	defb 0f6h,0ach,00eh,0adh,030h,009h,06ch,093h,08fh,093h,030h,007h,0cfh,093h,018h,094h,030h,007h	; 788e  ....0.l...0.....0.
	defb 055h,094h,0b3h,094h,030h,008h,0f2h,094h,00fh,095h,030h,009h,02eh,095h,02fh,095h,030h,007h	; 78a0  U...0.....0.../.0.
	defb 030h,095h,053h,095h,0ffh,0e0h,000h,0a0h,001h,0a0h,017h,0a0h,02fh,0a0h,04bh,0a0h,064h,0a0h	; 78b2  0.S........./.K.d.
	defb 07dh,0a0h,094h,0a0h,0cfh,0e0h,028h,0adh,029h,0adh,02ah,0adh,051h,0adh,075h,0adh,081h,0adh	; 78c4  }.....(.).*.Q.u...
	defb 0ffh,0e0h,0a6h,0adh,0a7h,0adh,0a8h,0adh,0a9h,0adh,0beh,0adh,0d6h,0adh,0e4h,0adh,0eeh,0adh	; 78d6  ..................
	defb 030h,010h,090h,0aeh,091h,0aeh,0ffh,0e0h,092h,0aeh,00fh,0afh,03ah,0afh,065h,0afh,093h,0afh	; 78e8  0...........:.e...
	defb 0c3h,0afh,0f3h,0afh,0fbh,0afh,010h,010h,011h,0b1h,044h,07bh,044h,07bh,044h,07bh,064h,07bh	; 78fa  ..........D{D{D{d{
	defb 064h,07bh,084h,07bh,0a4h,07bh	; 790c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7912..0x7916  (4 bytes)
DATA_7912:
	defb 0c4h,07bh,0e4h,07bh	; 7912

; ----------------------------------------------------------------------
; DATOS partitura_7916: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A,
;   0x0B y otros (medido ejecutando el motor, tools/lee_sonidos.py; el tamano
;   es lo que se lee seguido); lo leen p10:6D68, p10:6D6D (6 bytes)
;   0x7916..0x791c  (6 bytes)
DATA_partitura_7916:
	defb 0e4h,07bh,004h,07ch,024h,07ch	; 7916

; ----------------------------------------------------------------------
; DATOS sin identificar  0x791c..0x791e  (2 bytes)
DATA_791C:
	defb 044h,07ch	; 791c

; ----------------------------------------------------------------------
; DATOS partitura_791E: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x04, 0x05, 0x06, 0x0D, 0x10, 0x12, 0x14,
;   0x42 y otros (medido ejecutando el motor, tools/lee_sonidos.py; el tamano
;   es lo que se lee seguido); lo leen p10:6D68, p10:6D6D (2 bytes)
;   0x791e..0x7920  (2 bytes)
DATA_partitura_791E:
	defb 064h,07ch	; 791e

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7920..0x7928  (8 bytes)
DATA_7920:
	defb 084h,07ch,084h,07ch,084h,07ch,084h,07ch	; 7920  .|.|.|.|

; ----------------------------------------------------------------------
; DATOS partitura_7928: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x0A, 0x40 (medido ejecutando el motor,
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:6D68, p10:6D6D (2 bytes)
;   0x7928..0x792a  (2 bytes)
DATA_partitura_7928:
	defb 084h,07ch	; 7928

; ----------------------------------------------------------------------
; DATOS sin identificar  0x792a..0x792c  (2 bytes)
DATA_792A:
	defb 084h,07ch	; 792a

; ----------------------------------------------------------------------
; DATOS partitura_792C: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x03, 0x04, 0x06, 0x07, 0x08, 0x0C, 0x0D,
;   0x11 y otros (medido ejecutando el motor, tools/lee_sonidos.py; el tamano
;   es lo que se lee seguido); lo leen p10:6D68, p10:6D6D (12 bytes)
;   0x792c..0x7938  (12 bytes)
DATA_partitura_792C:
	defb 0a4h,07ch,0c4h,07ch,0e4h,07ch,004h,07dh,024h,07dh,044h,07dh	; 792c  .|.|.|.}$}D}

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7938..0x793a  (2 bytes)
DATA_7938:
	defb 064h,07dh	; 7938

; ----------------------------------------------------------------------
; DATOS partitura_793A: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x04, 0x07, 0x0C, 0x16, 0x1A, 0x1E, 0x25,
;   0x2A y otros (medido ejecutando el motor, tools/lee_sonidos.py; el tamano
;   es lo que se lee seguido); lo leen p10:6D68, p10:6D6D (6 bytes)
;   0x793a..0x7940  (6 bytes)
DATA_partitura_793A:
	defb 064h,07dh,084h,07dh,0a4h,07dh	; 793a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7940..0x794a  (10 bytes)
DATA_7940:
	defb 0c4h,07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh,0c4h,07dh	; 7940  .}.}.}.}.}

; ----------------------------------------------------------------------
; DATOS partitura_794A: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A,
;   0x0B y otros (medido ejecutando el motor, tools/lee_sonidos.py; el tamano
;   es lo que se lee seguido); lo leen p10:6D68, p10:6D6D (12 bytes)
;   0x794a..0x7956  (12 bytes)
DATA_partitura_794A:
	defb 0c4h,07dh,0e4h,07dh,004h,07eh,024h,07eh,044h,07eh,064h,07eh	; 794a  .}.}.~$~D~d~

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7956..0x7958  (2 bytes)
DATA_7956:
	defb 084h,07eh	; 7956

; ----------------------------------------------------------------------
; DATOS partitura_7958: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x0F, 0x2A, 0x44, 0x4D, 0x4E (medido
;   ejecutando el motor, tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido); lo leen p10:6D68, p10:6D6D (2 bytes)
;   0x7958..0x795a  (2 bytes)
DATA_partitura_7958:
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
; DATOS partitura_79AA: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x04, 0x3F, 0x41, 0x46 (medido ejecutando
;   el motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo
;   leen p10:6D68, p10:6D6D (4 bytes)
;   0x79aa..0x79ae  (4 bytes)
DATA_partitura_79AA:
	defb 03ch,07ah,05ch,07ah	; 79aa

; ----------------------------------------------------------------------
; DATOS sin identificar  0x79ae..0x79b6  (8 bytes)
DATA_79AE:
	defb 07ch,07ah,07ch,07ah,07ch,07ah,07ch,07ah	; 79ae  |z|z|z|z

; ----------------------------------------------------------------------
; DATOS partitura_79B6: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x04, 0x06, 0x0D, 0x1C, 0x1D, 0x47, 0x49
;   (medido ejecutando el motor, tools/lee_sonidos.py; el tamano es lo que se
;   lee seguido); lo leen p10:6D68, p10:6D6D (2 bytes)
;   0x79b6..0x79b8  (2 bytes)
DATA_partitura_79B6:
	defb 07ch,07ah	; 79b6

; ----------------------------------------------------------------------
; DATOS sin identificar  0x79b8..0x79bc  (4 bytes)
DATA_79B8:
	defb 09ch,07ah,09ch,07ah	; 79b8

; ----------------------------------------------------------------------
; DATOS partitura_79BC: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x3F, 0x40, 0x42, 0x48, 0x49 (medido
;   ejecutando el motor, tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido); lo leen p10:6D68, p10:6D6D (2 bytes)
;   0x79bc..0x79be  (2 bytes)
DATA_partitura_79BC:
	defb 09ch,07ah	; 79bc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x79be..0x79cc  (14 bytes)
DATA_79BE:
	defb 0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah,0bch,07ah	; 79be  .z.z.z.z.z.z.z

; ----------------------------------------------------------------------
; DATOS partitura_79CC: partitura que lee el motor de sonido (p10:6D68,
;   p10:6D6D) al tocar los sonidos 0x0A, 0x45, 0x47 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:6D68, p10:6D6D (2 bytes)
;   0x79cc..0x79ce  (2 bytes)
DATA_partitura_79CC:
	defb 0bch,07ah	; 79cc

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
; DATOS partitura_7A3C: partitura que lee el motor de sonido (p10:737B) al
;   tocar los sonidos 0x04, 0x06, 0x0A, 0x0D, 0x1C, 0x1D, 0x3F, 0x40 y otros
;   (medido ejecutando el motor, tools/lee_sonidos.py; el tamano es lo que se
;   lee seguido); lo leen p10:737B (160 bytes)
;   0x7a3c..0x7adc  (160 bytes)
DATA_partitura_7A3C:
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
; DATOS partitura_7B44: partitura que lee el motor de sonido (p10:737B) al
;   tocar los sonidos 0x04, 0x05, 0x08, 0x0A, 0x0B, 0x0C, 0x0E, 0x28 y otros
;   (medido ejecutando el motor, tools/lee_sonidos.py; el tamano es lo que se
;   lee seguido); lo leen p10:737B (32 bytes)
;   0x7b44..0x7b64  (32 bytes)
DATA_partitura_7B44:
	defb 000h,0f8h,0f0h,0e8h,0e0h,0d8h,0d0h,0c8h,0c0h,0b8h,0b0h,0a8h,0a0h,098h,090h,088h	; 7b44  ................
	defb 080h,078h,070h,068h,060h,058h,050h,048h,040h,038h,030h,028h,020h,018h,010h,008h	; 7b54  .xph`XPH@80( ...

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7b64..0x7b84  (32 bytes)
DATA_7B64:
	defb 000h,04eh,062h,06dh,075h,07ah,07dh,07eh,07fh,07eh,07dh,07ah,075h,06dh,062h,04eh	; 7b64  .Nbmuz}~.~}zumbN
	defb 000h,0b1h,09dh,092h,08ah,085h,082h,081h,080h,081h,082h,085h,08ah,092h,09dh,0b1h	; 7b74  ................

; ----------------------------------------------------------------------
; DATOS partitura_7B84: partitura que lee el motor de sonido (p10:737B,
;   p10:7396) al tocar los sonidos 0x04, 0x05, 0x08, 0x09, 0x0B, 0x24, 0x32,
;   0x33 y otros (medido ejecutando el motor, tools/lee_sonidos.py; el tamano
;   es lo que se lee seguido); lo leen p10:737B, p10:7396 (37 bytes)
;   0x7b84..0x7ba9  (37 bytes)
DATA_partitura_7B84:
	defb 000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h,019h	; 7b84  ..1GZju}.}ujZG1.
	defb 000h,0e7h,0cfh,0b9h,0a6h,096h,08bh,083h,080h,083h,08bh,096h,0a6h,0b9h,0cfh,0e7h	; 7b94  ................
	defb 000h,0f0h,0e0h,0d0h,0c0h	; 7ba4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7ba9..0x7baa  (1 bytes)
DATA_7BA9:
	defb 0b0h	; 7ba9

; ----------------------------------------------------------------------
; DATOS partitura_7BAA: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (3 bytes)
;   0x7baa..0x7bad  (3 bytes)
DATA_partitura_7BAA:
	defb 0a0h,090h,080h	; 7baa

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bad..0x7bae  (1 bytes)
DATA_7BAD:
	defb 090h	; 7bad

; ----------------------------------------------------------------------
; DATOS partitura_7BAE: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (1 bytes)
;   0x7bae..0x7baf  (1 bytes)
DATA_partitura_7BAE:
	defb 0a0h	; 7bae

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7baf..0x7bb0  (1 bytes)
DATA_7BAF:
	defb 0b0h	; 7baf

; ----------------------------------------------------------------------
; DATOS partitura_7BB0: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (3 bytes)
;   0x7bb0..0x7bb3  (3 bytes)
DATA_partitura_7BB0:
	defb 0c0h,0d0h,0e0h	; 7bb0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bb3..0x7bb4  (1 bytes)
DATA_7BB3:
	defb 0f0h	; 7bb3

; ----------------------------------------------------------------------
; DATOS partitura_7BB4: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (5 bytes)
;   0x7bb4..0x7bb9  (5 bytes)
DATA_partitura_7BB4:
	defb 000h,010h,020h,030h,040h	; 7bb4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bb9..0x7bba  (1 bytes)
DATA_7BB9:
	defb 050h	; 7bb9

; ----------------------------------------------------------------------
; DATOS partitura_7BBA: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (5 bytes)
;   0x7bba..0x7bbf  (5 bytes)
DATA_partitura_7BBA:
	defb 060h,070h,07fh,070h,060h	; 7bba

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bbf..0x7bc0  (1 bytes)
DATA_7BBF:
	defb 050h	; 7bbf

; ----------------------------------------------------------------------
; DATOS partitura_7BC0: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (1 bytes)
;   0x7bc0..0x7bc1  (1 bytes)
DATA_partitura_7BC0:
	defb 040h	; 7bc0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bc1..0x7bc2  (1 bytes)
DATA_7BC1:
	defb 030h	; 7bc1

; ----------------------------------------------------------------------
; DATOS partitura_7BC2: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (5 bytes)
;   0x7bc2..0x7bc7  (5 bytes)
DATA_partitura_7BC2:
	defb 020h,010h,000h,0e0h,0c0h	; 7bc2

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bc7..0x7bc8  (1 bytes)
DATA_7BC7:
	defb 0a0h	; 7bc7

; ----------------------------------------------------------------------
; DATOS partitura_7BC8: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (3 bytes)
;   0x7bc8..0x7bcb  (3 bytes)
DATA_partitura_7BC8:
	defb 080h,0a0h,0c0h	; 7bc8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bcb..0x7bcc  (1 bytes)
DATA_7BCB:
	defb 0e0h	; 7bcb

; ----------------------------------------------------------------------
; DATOS partitura_7BCC: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (1 bytes)
;   0x7bcc..0x7bcd  (1 bytes)
DATA_partitura_7BCC:
	defb 000h	; 7bcc

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bcd..0x7bcf  (2 bytes)
DATA_7BCD:
	defb 020h,040h	; 7bcd

; ----------------------------------------------------------------------
; DATOS partitura_7BCF: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (4 bytes)
;   0x7bcf..0x7bd3  (4 bytes)
DATA_partitura_7BCF:
	defb 060h,07fh,060h,040h	; 7bcf

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bd3..0x7bd4  (1 bytes)
DATA_7BD3:
	defb 020h	; 7bd3

; ----------------------------------------------------------------------
; DATOS partitura_7BD4: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (2 bytes)
;   0x7bd4..0x7bd6  (2 bytes)
DATA_partitura_7BD4:
	defb 000h,0e0h	; 7bd4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bd6..0x7bd8  (2 bytes)
DATA_7BD6:
	defb 0c0h,0a0h	; 7bd6

; ----------------------------------------------------------------------
; DATOS partitura_7BD8: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (2 bytes)
;   0x7bd8..0x7bda  (2 bytes)
DATA_partitura_7BD8:
	defb 080h,0a0h	; 7bd8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bda..0x7bdb  (1 bytes)
DATA_7BDA:
	defb 0c0h	; 7bda

; ----------------------------------------------------------------------
; DATOS partitura_7BDB: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (2 bytes)
;   0x7bdb..0x7bdd  (2 bytes)
DATA_partitura_7BDB:
	defb 0e0h,000h	; 7bdb

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7bdd..0x7bde  (1 bytes)
DATA_7BDD:
	defb 020h	; 7bdd

; ----------------------------------------------------------------------
; DATOS partitura_7BDE: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (4 bytes)
;   0x7bde..0x7be2  (4 bytes)
DATA_partitura_7BDE:
	defb 040h,060h,07fh,060h	; 7bde

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7be2..0x7be3  (1 bytes)
DATA_7BE2:
	defb 040h	; 7be2

; ----------------------------------------------------------------------
; DATOS partitura_7BE3: partitura que lee el motor de sonido (p10:737B,
;   p10:7396) al tocar los sonidos 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A,
;   0x0B y otros (medido ejecutando el motor, tools/lee_sonidos.py; el tamano
;   es lo que se lee seguido); lo leen p10:737B, p10:7396 (98 bytes)
;   0x7be3..0x7c45  (98 bytes)
DATA_partitura_7BE3:
	defb 020h,000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h	; 7be3   ..1GZju}.}ujZG1
	defb 019h,000h,0e0h,0c0h,0a0h,080h,0a0h,0c0h,0e0h,000h,020h,040h,060h,07fh,060h,040h	; 7bf3  .......... @`.`@
	defb 020h,000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h	; 7c03   ..1GZju}.}ujZG1
	defb 019h,080h,090h,0a0h,0b0h,0c0h,0d0h,0e0h,0f0h,000h,010h,020h,030h,040h,050h,060h	; 7c13  ........... 0@P`
	defb 070h,000h,019h,031h,047h,05ah,06ah,075h,07dh,07fh,07dh,075h,06ah,05ah,047h,031h	; 7c23  p..1GZju}.}ujZG1
	defb 019h,080h,0a0h,0c0h,0e0h,000h,020h,040h,060h,080h,0a0h,0c0h,0e0h,000h,020h,040h	; 7c33  ...... @`..... @
	defb 060h,001h	; 7c43

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c45..0x7c47  (2 bytes)
DATA_7C45:
	defb 02ah,040h	; 7c45

; ----------------------------------------------------------------------
; DATOS partitura_7C47: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (2 bytes)
;   0x7c47..0x7c49  (2 bytes)
DATA_partitura_7C47:
	defb 050h,05ch	; 7c47

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c49..0x7c4a  (1 bytes)
DATA_7C49:
	defb 068h	; 7c49

; ----------------------------------------------------------------------
; DATOS partitura_7C4A: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (1 bytes)
;   0x7c4a..0x7c4b  (1 bytes)
DATA_partitura_7C4A:
	defb 070h	; 7c4a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c4b..0x7c4c  (1 bytes)
DATA_7C4B:
	defb 078h	; 7c4b

; ----------------------------------------------------------------------
; DATOS partitura_7C4C: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (1 bytes)
;   0x7c4c..0x7c4d  (1 bytes)
DATA_partitura_7C4C:
	defb 07fh	; 7c4c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c4d..0x7c4f  (2 bytes)
DATA_7C4D:
	defb 078h,070h	; 7c4d

; ----------------------------------------------------------------------
; DATOS partitura_7C4F: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (2 bytes)
;   0x7c4f..0x7c51  (2 bytes)
DATA_partitura_7C4F:
	defb 068h,05ch	; 7c4f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c51..0x7c53  (2 bytes)
DATA_7C51:
	defb 050h,040h	; 7c51

; ----------------------------------------------------------------------
; DATOS partitura_7C53: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (4 bytes)
;   0x7c53..0x7c57  (4 bytes)
DATA_partitura_7C53:
	defb 02ah,0ffh,0d6h,0c0h	; 7c53

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c57..0x7c5c  (5 bytes)
DATA_7C57:
	defb 0b0h,0a4h,098h,090h,088h	; 7c57

; ----------------------------------------------------------------------
; DATOS partitura_7C5C: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (2 bytes)
;   0x7c5c..0x7c5e  (2 bytes)
DATA_partitura_7C5C:
	defb 081h,088h	; 7c5c

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c5e..0x7c60  (2 bytes)
DATA_7C5E:
	defb 090h,098h	; 7c5e

; ----------------------------------------------------------------------
; DATOS partitura_7C60: partitura que lee el motor de sonido (p10:7396) al
;   tocar los sonidos 0x05, 0x08, 0x09, 0x44, 0x45 (medido ejecutando el
;   motor, tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:7396 (2 bytes)
;   0x7c60..0x7c62  (2 bytes)
DATA_partitura_7C60:
	defb 0a4h,0b0h	; 7c60

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c62..0x7c64  (2 bytes)
DATA_7C62:
	defb 0c0h,0d6h	; 7c62

; ----------------------------------------------------------------------
; DATOS partitura_7C64: partitura que lee el motor de sonido (p10:644C,
;   p10:6508, p10:6B9D, p10:6C34 y otras) al tocar los sonidos 0x01, 0x02,
;   0x03, 0x04, 0x05, 0x06, 0x07, 0x08 y otros (medido ejecutando el motor,
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p10:644C, p10:6508, p10:6B9D, p10:6C34, p10:6C3F, p10:6C66, p10:6C9A,
;   p10:6CDE (924 bytes)
;   0x7c64..0x8000  (924 bytes)
DATA_partitura_7C64:
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
	defb 0feh,001h,0f8h,015h,0eah,00fh,0e9h,001h,0d1h,0ebh,001h,088h,004h,074h,044h,074h	; 7ea4  .............tDt
	defb 0ebh,001h,023h,0d0h,009h,0ffh,0feh,002h,0e0h,002h,0e2h,001h,031h,000h,030h,0f0h	; 7eb4  ..#.........1.0.
	defb 030h,0e0h,030h,0d0h,030h,0c0h,030h,0b0h,030h,0a0h,030h,090h,030h,080h,030h,070h	; 7ec4  0.0.0.0.0.0.0.0p
	defb 030h,0c0h,030h,0b0h,030h,0a0h,030h,090h,030h,080h,030h,070h,020h,0c0h,020h,0b0h	; 7ed4  0.0.0.0.0.0p . .
	defb 020h,0a0h,020h,090h,020h,080h,020h,070h,010h,0c0h,010h,0b0h,010h,0a0h,010h,090h	; 7ee4   . . . p........
	defb 0ffh,0feh,002h,0f8h,02ah,0e2h,001h,031h,000h,030h,0f0h,030h,0e0h,030h,0d0h,030h	; 7ef4  ....*..1.0.0.0.0
	defb 0c0h,030h,0b0h,030h,0a0h,030h,090h,030h,080h,030h,070h,020h,0c0h,020h,0b0h,020h	; 7f04  .0.0.0.0.0p . .
	defb 0a0h,020h,090h,020h,080h,020h,070h,010h,0c0h,010h,0b0h,010h,0a0h,010h,090h,010h	; 7f14  . . . p.........
	defb 080h,010h,070h,000h,0c0h,000h,0b0h,000h,0a0h,000h,090h,000h,080h,000h,070h,0ffh	; 7f24  ..p...........p.
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

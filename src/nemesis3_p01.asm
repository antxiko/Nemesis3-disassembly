; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 01 (se ejecuta en 0x6000)
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
l7075h:	equ 0x07075
l7157h:	equ 0x07157
l775ah:	equ 0x0775a

; ----------------------------------------------------------------------
; DATOS partida_6000: los 1 ultimos bytes de la instruccion de p00:5FFE (22 1C
;   E5), que empieza en el banco 0; lo leen p00:5FFE (1 bytes)
;   0x6000..0x6001  (1 bytes)
DATA_partida_6000:
	defb 0e5h	; 6000

; ======================================================================
; CODIGO 0x6001..0x60fc  (251 bytes)
; ======================================================================


L_6001:
	xor a			;6001
	ld (0e519h),a		;6002
	ld a,002h		;6005
	ld (0e518h),a		;6007
	ret			;600a
L_600B:
	ld a,(0e518h)		;600b
	cp 002h		;600e
	ret nz			;6010
	ld a,(0e519h)		;6011
	dec a			;6014
	jr z,L_6054		;6015
	ld ix,(0e51ch)		;6017
	ld a,0f0h		;601b
	ld (0e51bh),a		;601d
L_6020:
	ld a,(ix+000h)		;6020
	and a			;6023
	jr z,L_604C		;6024
	bit 2,(ix+002h)		;6026
	ld de,00000h		;602a
	call nz,L_60A5		;602d
	bit 1,(ix+002h)		;6030
	ld de,00800h		;6034
	call nz,L_60A5		;6037
	bit 0,(ix+002h)		;603a
	ld de,01000h		;603e
	call nz,L_60A5		;6041
	inc ix		;6044
	inc ix		;6046
	inc ix		;6048
	jr L_6020		;604a
L_604C:
	ld a,07fh		;604c
	ld (0e51bh),a		;604e
	jp 05f10h		;6051
L_6054:
	ld ix,(0e51ch)		;6054
L_6058:
	ld a,(ix+000h)		;6058
	and a			;605b
	jr z,L_6084		;605c
	bit 2,(ix+002h)		;605e
	ld de,02000h		;6062
	call nz,L_60A5		;6065
	bit 1,(ix+002h)		;6068
	ld de,02800h		;606c
	call nz,L_60A5		;606f
	bit 0,(ix+002h)		;6072
	ld de,03000h		;6076
	call nz,L_60A5		;6079
	inc ix		;607c
	inc ix		;607e
	inc ix		;6080
	jr L_6058		;6082
L_6084:
	ld hl,0e51bh		;6084
	ld a,(hl)			;6087
	and a			;6088
	jr z,L_608F		;6089
	srl a		;608b
	ld (hl),a			;608d
	ret			;608e
L_608F:
	call L_6097		;608f
	xor a			;6092
	ld (0e518h),a		;6093
	ret			;6096
L_6097:
	ld hl,0ca00h		;6097
	ld de,0ca01h		;609a
	ld bc,003ffh		;609d
	ld (hl),000h		;60a0
	ldir		;60a2
	ret			;60a4
L_60A5:
	ld l,(ix+001h)		;60a5
	ld h,000h		;60a8
	add hl,hl			;60aa
	add hl,hl			;60ab
	add hl,hl			;60ac
	ld c,l			;60ad
	ld b,h			;60ae
	ld l,(ix+000h)		;60af
	ld h,000h		;60b2
	add hl,hl			;60b4
	add hl,hl			;60b5
	add hl,hl			;60b6
	add hl,de			;60b7
	push hl			;60b8
	ld de,0ca00h		;60b9
	push bc			;60bc
	call 00059h		;60bd   ; BIOS LDIRMV - Block transfers to memory from VRAM
	pop bc			;60c0
	push bc			;60c1
	call L_60CD		;60c2
	pop bc			;60c5
	ld hl,0ca00h		;60c6
	pop de			;60c9
	jp 0005ch		;60ca   ; BIOS LDIRVM - Block transfers to VRAM from memory
L_60CD:
	ld hl,0ca00h		;60cd
	ld a,(0e51bh)		;60d0
	ld e,a			;60d3
	ld a,(0e519h)		;60d4
	dec a			;60d7
	jr z,L_60E4		;60d8
L_60DA:
	ld a,e			;60da
	and (hl)			;60db
	ld (hl),a			;60dc
	inc hl			;60dd
	dec bc			;60de
	ld a,b			;60df
	or c			;60e0
	jr nz,L_60DA		;60e1
	ret			;60e3
L_60E4:
	ld a,e			;60e4
	rrca			;60e5
	rrca			;60e6
	rrca			;60e7
	ld e,a			;60e8
	and (hl)			;60e9
	ld (hl),a			;60ea
	inc hl			;60eb
	dec bc			;60ec
	ld a,b			;60ed
	or c			;60ee
	jr nz,L_60E4		;60ef
	ret			;60f1
L_60F2:
	call 056bch		;60f2
	ld a,(0e361h)		;60f5   ; lee la fase (1 a 11)
	dec a			;60f8
	call 04093h		;60f9   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_60FC: 11 destinos del despachador p00:4093 (call en p01:60F9, el
;   indice en A): 611A, 611A, 6163, 61F5, 611A, 611A, 611A, 611A, 617C, 619D,
;   61C2; lo leen p01:60F9 (22 bytes)
;   0x60fc..0x6112  (22 bytes)
DATA_tabla_60FC:
	defw 0611ah,0611ah,06163h,061f5h,0611ah,0611ah,0611ah,0611ah	; 60fc
	defw 0617ch,0619dh,061c2h	; 610c  -> L_617C L_619D L_61C2

; ----------------------------------------------------------------------
; DATOS leido_6112: 8 bytes que lee p01:6131 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 2 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p01:6131 (8
;   bytes)
;   0x6112..0x611a  (8 bytes)
DATA_leido_6112:
	defb 006h,007h,000h,000h,008h,009h,00eh,00ch	; 6112  ........

; ======================================================================
; CODIGO 0x611a..0x61a3  (137 bytes)
; ======================================================================


L_611A:
	ld a,(0e365h)		;611a
	dec a			;611d
	jr z,L_6134		;611e
	ld a,(0e427h)		;6120
	or a			;6123
	ret z			;6124
	call L_615E		;6125
	ld a,(0e361h)		;6128   ; lee la fase (1 a 11)
	ld hl,06111h		;612b
	call 04089h		;612e   ; suma_a_hl: HL = HL + A
	ld l,(hl)			;6131
	jr L_6144		;6132
L_6134:
	ld a,(0e442h)		;6134
	and a			;6137
	ret z			;6138
L_6139:
	ld a,(0e600h)		;6139   ; lee el estado de la nave (0xFF: estalla)
	and a			;613c
	ret m			;613d
	ld a,001h		;613e
	ld (0e30dh),a		;6140
	ret			;6143
L_6144:
	xor a			;6144
	ld (0e445h),a		;6145
	ld (0e442h),a		;6148
	ld h,a			;614b
	ld (0e440h),hl		;614c
	ld l,a			;614f
	ld (0e450h),hl		;6150
	ld a,001h		;6153
	ld (0e44dh),a		;6155
	ld a,008h		;6158
	ld (0e443h),a		;615a
	ret			;615d
L_615E:
	ld hl,0e365h		;615e
	inc (hl)			;6161
	ret			;6162
L_6163:
	ld a,(0e365h)		;6163
	dec a			;6166
	jr z,L_6175		;6167
	ld a,(0e427h)		;6169
	or a			;616c
	ret z			;616d
	ld a,001h		;616e
	ld (0e60dh),a		;6170
	jr L_615E		;6173
L_6175:
	ld a,(0e60dh)		;6175
	or a			;6178
	ret nz			;6179
	jr L_6139		;617a
L_617C:
	ld a,(0e365h)		;617c
	dec a			;617f
	jr z,L_6195		;6180
	ld hl,0e363h		;6182   ; apunta a la posicion del scroll (16 bits)
	ld e,(hl)			;6185
	inc hl			;6186
	ld d,(hl)			;6187
	ex de,hl			;6188
	ld de,001c0h		;6189
	rst 20h			;618c
	ret nz			;618d
	call L_615E		;618e
	ld l,00dh		;6191
	jr L_6144		;6193
L_6195:
	ld a,(0e427h)		;6195
	or a			;6198
	ret z			;6199
	jp L_6139		;619a
L_619D:
	ld a,(0e365h)		;619d
	call 04093h		;61a0   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_61A3: 3 destinos del despachador p00:4093 (call en p01:61A0, el
;   indice en A): 61A9, 61B5, 6134; lo leen p01:61A0 (6 bytes)
;   0x61a3..0x61a9  (6 bytes)
DATA_tabla_61A3:
	defw 061a9h,061b5h,06134h	; 61a3  -> L_61A9 L_61B5 L_6134

; ======================================================================
; CODIGO 0x61a9..0x61fb  (82 bytes)
; ======================================================================


L_61A9:
	ld a,(0e427h)		;61a9
	or a			;61ac
	ret z			;61ad
	call L_615E		;61ae
	ld l,00fh		;61b1
	jr $-111		;61b3
L_61B5:
	ld a,(0e442h)		;61b5
	and a			;61b8
	ret z			;61b9
	call L_615E		;61ba
	ld l,011h		;61bd
	jp L_6144		;61bf
L_61C2:
	ld a,(0e365h)		;61c2
	dec a			;61c5
	jr z,L_61D8		;61c6
	dec a			;61c8
	jr z,L_61EA		;61c9
	ld a,(0e427h)		;61cb
	or a			;61ce
	ret z			;61cf
	call L_615E		;61d0
	ld l,010h		;61d3
	jp L_6144		;61d5
L_61D8:
	ld a,(0e442h)		;61d8
	and a			;61db
	ret z			;61dc
	xor a			;61dd
	ld (0e445h),a		;61de
	ld hl,0009fh		;61e1
	ld (0e425h),hl		;61e4
	jp L_615E		;61e7
L_61EA:
	ld a,(0e427h)		;61ea
	or a			;61ed
	ret z			;61ee
	ld a,001h		;61ef
	ld (0e328h),a		;61f1
	ret			;61f4
L_61F5:
	ld a,(0e365h)		;61f5
	call 04093h		;61f8   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_61FB: 6 destinos del despachador p00:4093 (call en p01:61F8, el
;   indice en A): 6207, 6213, 621B, 622E, 6247, 626C; lo leen p01:61F8 (12
;   bytes)
;   0x61fb..0x6207  (12 bytes)
DATA_tabla_61FB:
	defw 06207h,06213h,0621bh,0622eh,06247h,0626ch	; 61fb

; ======================================================================
; CODIGO 0x6207..0x6243  (60 bytes)
; ======================================================================


L_6207:
	call L_615E		;6207
	call 057eeh		;620a   ; sonido_02: pide el sonido 0x02
	call 0594dh		;620d   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	jp 057fah		;6210   ; sonido_0A: pide el sonido 0x0A
L_6213:
	ld a,0f0h		;6213
	ld (0e443h),a		;6215
	jp L_615E		;6218
L_621B:
	call L_734C		;621b
	ld hl,0e443h		;621e
	dec (hl)			;6221
	ret nz			;6222
	call 05951h		;6223   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	ld a,014h		;6226
	ld (0e402h),a		;6228
	jp L_615E		;622b
L_622E:
	ld hl,0e402h		;622e
	dec (hl)			;6231
	ret nz			;6232
	ld a,(0e37ch)		;6233
	ld hl,06243h		;6236
	call 04089h		;6239   ; suma_a_hl: HL = HL + A
	ld l,(hl)			;623c
	call L_6144		;623d
	jp L_615E		;6240

; ----------------------------------------------------------------------
; DATOS tabla_6243: tabla que se lee desde HL = 0x6243 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:6236 (4 bytes)
;   0x6243..0x6247  (4 bytes)
DATA_tabla_6243:
	defb 00bh,001h,003h,004h	; 6243

; ======================================================================
; CODIGO 0x6247..0x627d  (54 bytes)
; ======================================================================


L_6247:
	ld a,(0e442h)		;6247
	and a			;624a
	ret z			;624b
	xor a			;624c
	ld (0e442h),a		;624d
	ld hl,0e37ch		;6250
	inc (hl)			;6253
	ld a,(hl)			;6254
	cp 004h		;6255
	jr nc,L_6264		;6257
	ld a,003h		;6259
	ld (0e365h),a		;625b
	ld a,001h		;625e
	ld (0e402h),a		;6260
	ret			;6263
L_6264:
	ld a,001h		;6264
	ld (0e402h),a		;6266
	jp L_615E		;6269
L_626C:
	ld hl,0e402h		;626c
	dec (hl)			;626f
	ret nz			;6270
	jp L_6139		;6271
L_6274:
	ld bc,(0e31fh)		;6274
	ld a,c			;6278
	dec a			;6279
	call 04093h		;627a   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_627D: 2 destinos del despachador p00:4093 (call en p01:627A, el
;   indice en A): 6281, 62D4; lo leen p01:627A (4 bytes)
;   0x627d..0x6281  (4 bytes)
DATA_tabla_627D:
	defw 06281h,062d4h	; 627d  -> L_6281 L_62D4

; ======================================================================
; CODIGO 0x6281..0x628c  (11 bytes)
; ======================================================================


L_6281:
	push bc			;6281
	call 05db8h		;6282
	call 05ac6h		;6285
	pop af			;6288
	call 04093h		;6289   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_628C: 4 destinos del despachador p00:4093 (call en p01:6289, el
;   indice en A): 6294, 62A3, 62B7, 62C3; lo leen p01:6289 (8 bytes)
;   0x628c..0x6294  (8 bytes)
DATA_tabla_628C:
	defw 06294h,062a3h,062b7h,062c3h	; 628c  -> L_6294 L_62A3 L_62B7 L_62C3

; ======================================================================
; CODIGO 0x6294..0x62df  (75 bytes)
; ======================================================================


L_6294:
	call 058fdh		;6294   ; sonido_4D: pide el sonido 0x4D
	ld a,03ch		;6297
	ld (0e7f4h),a		;6299
	xor a			;629c
	ld (0e7f5h),a		;629d
	jp L_6330		;62a0
L_62A3:
	ld hl,0e7f4h		;62a3
	dec (hl)			;62a6
	jr z,L_62AC		;62a7
	jp L_6343		;62a9
L_62AC:
	ld b,0e0h		;62ac
	call 04c40h		;62ae   ; color_del_borde: B al registro 7 del VDP
	call L_6335		;62b1
	jp L_6330		;62b4
L_62B7:
	call 05901h		;62b7   ; sonido_4E: pide el sonido 0x4E
	ld hl,05eb8h		;62ba
	call 05ffeh		;62bd
	jp L_6330		;62c0
L_62C3:
	call L_600B		;62c3
	ld a,(0e518h)		;62c6
	or a			;62c9
	ret nz			;62ca
	call L_6352		;62cb
	call 05648h		;62ce
	jp L_6328		;62d1
L_62D4:
	push bc			;62d4
	call 05db8h		;62d5
	call 05ac6h		;62d8
	pop af			;62db
	call 04093h		;62dc   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_62DF: 3 destinos del despachador p00:4093 (call en p01:62DC, el
;   indice en A): 62E5, 6318, 6323; lo leen p01:62DC (6 bytes)
;   0x62df..0x62e5  (6 bytes)
DATA_tabla_62DF:
	defw 062e5h,06318h,06323h	; 62df  -> L_62E5 L_6318 L_6323

; ======================================================================
; CODIGO 0x62e5..0x6395  (176 bytes)
; ======================================================================


L_62E5:
	call 05951h		;62e5   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	call 05c59h		;62e8
	ld hl,00038h		;62eb
	ld (0e363h),hl		;62ee   ; guarda la posicion del scroll (16 bits)
	ld hl,05ec5h		;62f1
	call 05ed4h		;62f4
	call 04f7ch		;62f7
	call 05236h		;62fa
	call L_7A4D		;62fd
	call L_637A		;6300
	call 05cb4h		;6303
	call 0415bh		;6306   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 085c9h		;6309
	call 0805ah		;630c
	call 04148h		;630f   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 05648h		;6312
	jp L_6330		;6315
L_6318:
	call 05ee3h		;6318
	ld a,(0e518h)		;631b
	or a			;631e
	ret nz			;631f
	jp L_6330		;6320
L_6323:
	xor a			;6323
	ld (0e31fh),a		;6324
	ret			;6327
L_6328:
	ld hl,0e31fh		;6328
	inc (hl)			;632b
	inc hl			;632c
	ld (hl),000h		;632d
	ret			;632f
L_6330:
	ld hl,0e320h		;6330
	inc (hl)			;6333
	ret			;6334
L_6335:
	ld hl,0c400h		;6335
	ld de,0c401h		;6338
	ld bc,005ffh		;633b
	ld (hl),000h		;633e
	ldir		;6340
	ret			;6342
L_6343:
	ld hl,0e7f5h		;6343
	inc (hl)			;6346
	bit 0,(hl)		;6347
	ld b,0e0h		;6349
	jr z,L_634F		;634b
	ld b,0efh		;634d
L_634F:
	jp 04c40h		;634f   ; color_del_borde: B al registro 7 del VDP
L_6352:
	ld hl,0e440h		;6352
	ld de,0e441h		;6355
	ld bc,001bfh		;6358
	ld (hl),000h		;635b
	ldir		;635d
	ld hl,0e680h		;635f
	ld de,0e681h		;6362
	ld bc,0087fh		;6365
	ld (hl),000h		;6368
	ldir		;636a
	ld hl,0c400h		;636c
	ld de,0c401h		;636f
	ld bc,005ffh		;6372
	ld (hl),000h		;6375
	ldir		;6377
	ret			;6379
L_637A:
	ld a,(0ed04h)		;637a
	add a,018h		;637d
	ld (0e604h),a		;637f
	ld a,(0ed06h)		;6382
	add a,018h		;6385
	ld (0e606h),a		;6387
	ret			;638a
L_638B:
	ld (0e46eh),a		;638b
	call L_63FF		;638e
	ld d,001h		;6391
	jr $+12		;6393

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6395..0x6397  (2 bytes)
DATA_6395:
	defb 03eh,080h	; 6395

; ======================================================================
; CODIGO 0x6397..0x6479  (226 bytes)
; ======================================================================


L_6397:
	ld (0e46eh),a		;6397
L_639A:
	call L_63FF		;639a
L_639D:
	ld d,000h		;639d
L_639F:
	ld a,(0e476h)		;639f
	ld e,a			;63a2
	ld a,(0e389h)		;63a3
	cp 007h		;63a6
	jr c,L_63C7		;63a8
	dec d			;63aa
	jr z,L_63C7		;63ab
	ld a,r		;63ad
	ld b,a			;63af
	and 00fh		;63b0
	bit 6,b		;63b2
	jr z,L_63BF		;63b4
	ld b,a			;63b6
	ld a,c			;63b7
	sub b			;63b8
	jr nc,L_63BC		;63b9
	xor a			;63bb
L_63BC:
	ld e,a			;63bc
	jr L_63C7		;63bd
L_63BF:
	add a,e			;63bf
	cp 03fh		;63c0
	jr c,L_63C6		;63c2
	ld a,03fh		;63c4
L_63C6:
	ld e,a			;63c6
L_63C7:
	ld d,000h		;63c7
	ld a,e			;63c9
	sub 03fh		;63ca
	neg		;63cc
	ld hl,06479h		;63ce
	push hl			;63d1
	add hl,de			;63d2
	ld c,(hl)			;63d3
	pop hl			;63d4
	ld e,a			;63d5
	add hl,de			;63d6
	ld a,(hl)			;63d7
	ld (0e46fh),a		;63d8
	ld e,c			;63db
	call L_6467		;63dc
	ld a,(0e470h)		;63df
	and a			;63e2
	call nz,04a75h		;63e3
	ld (0e472h),de		;63e6
	push de			;63ea
	ld a,(0e46fh)		;63eb
	ld e,a			;63ee
	call L_6467		;63ef
	ld a,(0e471h)		;63f2
	and a			;63f5
	call nz,04a75h		;63f6
	ld (0e474h),de		;63f9
	pop hl			;63fd
	ret			;63fe
L_63FF:
	ld a,(0e604h)		;63ff
	ld (0ef80h),a		;6402
	ld a,(0e606h)		;6405
	ld (0ef81h),a		;6408
L_640B:
	ld hl,0e470h		;640b
	ld (hl),000h		;640e
	ld a,(0ef80h)		;6410
	sub e			;6413
	jr nc,L_6419		;6414
	neg		;6416
	inc (hl)			;6418
L_6419:
	inc hl			;6419
	ld (hl),000h		;641a
	and 0f0h		;641c
	ld e,a			;641e
	ld a,(0ef81h)		;641f
	sub d			;6422
	jr nc,L_6428		;6423
	neg		;6425
	inc (hl)			;6427
L_6428:
	ld d,a			;6428
	ld hl,0e479h		;6429
	ld (hl),000h		;642c
	add a,e			;642e
	jr c,L_6436		;642f
	cp 030h		;6431
	jr nc,L_6436		;6433
	inc (hl)			;6435
L_6436:
	ld a,d			;6436
	rra			;6437
	rra			;6438
	rra			;6439
	rra			;643a
	and 00fh		;643b
	add a,e			;643d
	call 041f7h		;643e   ; guarda_reparto: guarda las tres copias del mapper en la pila de 0xF0D0
	call 041ach		;6441   ; bancos_22: pone el 22 (y sus copias en 0xF0F1-3)
	ld hl,0bb06h		;6444
	call 04a6eh		;6447
	ld (0e476h),a		;644a
	call 04213h		;644d   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
	ld c,a			;6450
	ld hl,(0e470h)		;6451
	ld a,h			;6454
	ld b,000h		;6455
	and a			;6457
	jr z,L_645C		;6458
	ld b,080h		;645a
L_645C:
	cp l			;645c
	ld a,c			;645d
	jr z,L_6462		;645e
	neg		;6460
L_6462:
	add a,b			;6462
	ld (0e477h),a		;6463
	ret			;6466
L_6467:
	ld a,(0e46eh)		;6467
	ld h,a			;646a
	call 0563ch		;646b
	xor a			;646e
	add hl,hl			;646f
	adc a,a			;6470
	add hl,hl			;6471
	adc a,a			;6472
	add hl,hl			;6473
	adc a,a			;6474
	ld l,h			;6475
	ld h,a			;6476
	ex de,hl			;6477
	ret			;6478

; ----------------------------------------------------------------------
; DATOS tabla_6479: tabla que se lee desde HL = 0x6479 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:63CE, p03:B277 (1 bytes)
;   0x6479..0x647a  (1 bytes)
DATA_tabla_6479:
	defb 000h	; 6479

; ----------------------------------------------------------------------
; DATOS leido_647A: 62 bytes que leen p01:63D3, p01:63D7 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p01:63D3, p01:63D7 (62 bytes)
;   0x647a..0x64b8  (62 bytes)
DATA_leido_647A:
	defb 006h,00ch,012h,019h,01fh,026h,02ch,032h,038h,03eh,044h,04ah,050h,056h,05ch,062h	; 647a  .....&,28>DJPV\b
	defb 068h,06dh,073h,079h,07eh,084h,089h,08eh,093h,099h,09eh,0a2h,0a7h,0ach,0b1h,0b5h	; 648a  hmsy~...........
	defb 0b9h,0beh,0c2h,0c6h,0cah,0ceh,0d1h,0d5h,0d8h,0dch,0dfh,0e2h,0e5h,0e7h,0eah,0edh	; 649a  ................
	defb 0efh,0f1h,0f3h,0f5h,0f7h,0f8h,0fah,0fbh,0fch,0fdh,0feh,0feh,0ffh,0ffh	; 64aa  ..............

; ----------------------------------------------------------------------
; DATOS leido_64B8: 1 bytes que lee p03:B27D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p03:B27D (1 bytes)
;   0x64b8..0x64b9  (1 bytes)
DATA_leido_64B8:
	defb 0ffh	; 64b8

; ======================================================================
; CODIGO 0x64b9..0x686c  (947 bytes)
; ======================================================================


L_64B9:
	ld ix,0e800h		;64b9
	ld b,00ch		;64bd
L_64BF:
	push bc			;64bf
	bit 1,(ix+010h)		;64c0
	jr z,L_64DC		;64c4
	ld iy,0e680h		;64c6
	ld de,00020h		;64ca
	ld b,009h		;64cd
L_64CF:
	ld a,(iy+000h)		;64cf
	or a			;64d2
	call nz,L_64E5		;64d3
	jr c,L_64DC		;64d6
	add iy,de		;64d8
	djnz L_64CF		;64da
L_64DC:
	ld de,00040h		;64dc
	add ix,de		;64df
	pop bc			;64e1
	djnz L_64BF		;64e2
	ret			;64e4
L_64E5:
	ld a,(ix+004h)		;64e5
	sub (iy+003h)		;64e8
	jp nc,L_64F8		;64eb
	neg		;64ee
	dec a			;64f0
	cp (ix+00eh)		;64f1
	jp c,L_64FC		;64f4
	ret			;64f7
L_64F8:
	cp (iy+00dh)		;64f8
	ret nc			;64fb
L_64FC:
	ld a,(ix+006h)		;64fc
	sub (iy+005h)		;64ff
	jp nc,L_650E		;6502
	neg		;6505
	cp (ix+00fh)		;6507
	jp c,L_6512		;650a
	ret			;650d
L_650E:
	cp (iy+00ch)		;650e
	ret nc			;6511
L_6512:
	call L_6517		;6512
	scf			;6515
	ret			;6516
L_6517:
	call L_65C5		;6517
	ld a,(0e412h)		;651a
	cp 011h		;651d
	jr z,L_6533		;651f
	cp 015h		;6521
	jr z,L_6533		;6523
	dec (ix+00dh)		;6525
	jr z,L_6533		;6528
	ld a,(ix+000h)		;652a
	cp 026h		;652d
	ret nz			;652f
	jp 05890h		;6530   ; sonido_28: pide el sonido 0x28
L_6533:
	ld de,00001h		;6533
	call 048f9h		;6536
	ld a,(ix+000h)		;6539
	cp 017h		;653c
	jr z,L_6582		;653e
	cp 007h		;6540
	jr z,L_6582		;6542
	cp 01ah		;6544
	jr z,L_6582		;6546
	cp 01eh		;6548
	jr z,L_6582		;654a
	cp 00ah		;654c
	jr z,L_657D		;654e
	cp 00dh		;6550
	jr z,L_657D		;6552
	cp 00eh		;6554
	jr z,L_657D		;6556
	cp 019h		;6558
	jr z,L_657D		;655a
	cp 021h		;655c
	jr z,L_657D		;655e
	cp 022h		;6560
	jr z,L_657D		;6562
	cp 028h		;6564
	jr z,L_657D		;6566
	cp 02ch		;6568
	jr z,L_657D		;656a
	cp 02dh		;656c
	jr z,L_657D		;656e
	cp 030h		;6570
	jr z,L_657D		;6572
	cp 04ah		;6574
	jr z,L_657D		;6576
	call 05870h		;6578   ; sonido_1E: pide el sonido 0x1E
	jr L_6585		;657b
L_657D:
	call 05874h		;657d   ; sonido_1F: pide el sonido 0x1F
	jr L_6585		;6580
L_6582:
	call 0587ch		;6582   ; sonido_21: pide el sonido 0x21
L_6585:
	call L_65A5		;6585
	ld b,(ix+000h)		;6588
	push bc			;658b
	call L_75D1		;658c
	pop bc			;658f
	ld a,b			;6590
	cp 019h		;6591
	ld b,000h		;6593
	jr nz,L_6598		;6595
	inc b			;6597
L_6598:
	ld a,03dh		;6598
	ld e,(ix+004h)		;659a
	ld d,(ix+006h)		;659d
	call L_763C		;65a0
	ret c			;65a3
	ret			;65a4
L_65A5:
	ld c,(ix+00ch)		;65a5
	ld a,(ix+016h)		;65a8
	and a			;65ab
	ret z			;65ac
	ld c,000h		;65ad
	ld a,(ix+017h)		;65af
	call L_6E0F		;65b2
	ret c			;65b5
	ld a,(hl)			;65b6
	inc l			;65b7
	inc l			;65b8
	dec (hl)			;65b9
	ret nz			;65ba
	dec l			;65bb
	dec l			;65bc
	ld (hl),000h		;65bd
	inc c			;65bf
	and 007h		;65c0
	ret nz			;65c2
	inc c			;65c3
	ret			;65c4
L_65C5:
	ld a,(iy+000h)		;65c5
	ld (0e412h),a		;65c8
	cp 012h		;65cb
	jr z,L_65EA		;65cd
	cp 016h		;65cf
	jr z,L_65EA		;65d1
	cp 011h		;65d3
	ret z			;65d5
	cp 015h		;65d6
	ret z			;65d8
	cp 018h		;65d9
	ret z			;65db
	cp 00ah		;65dc
	jr z,L_65E5		;65de
	sub 005h		;65e0
	cp 00bh		;65e2
	ret c			;65e4
L_65E5:
	ld (iy+000h),000h		;65e5
	ret			;65e9
L_65EA:
	call 0415bh		;65ea   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 09257h		;65ed
	call 04148h		;65f0   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ret			;65f3
L_65F4:
	ld a,(0e4b1h)		;65f4
	and a			;65f7
	ret z			;65f8
	ld b,a			;65f9
	ld ix,0ed00h		;65fa
L_65FE:
	push bc			;65fe
	ld a,(ix+000h)		;65ff
	and a			;6602
	jr z,L_662C		;6603
	cp 006h		;6605
	jr z,L_662C		;6607
	bit 7,(ix+00dh)		;6609
	jr nz,L_662C		;660d
	ld a,(ix+012h)		;660f
	and 040h		;6612
	jr nz,L_662C		;6614
	ld iy,0e680h		;6616
	ld de,00020h		;661a
	ld b,009h		;661d
L_661F:
	ld a,(iy+000h)		;661f
	or a			;6622
	call nz,L_6635		;6623
	jr c,L_662C		;6626
	add iy,de		;6628
	djnz L_661F		;662a
L_662C:
	ld de,00020h		;662c
	add ix,de		;662f
	pop bc			;6631
	djnz L_65FE		;6632
	ret			;6634
L_6635:
	ld a,(ix+00dh)		;6635
	or a			;6638
	jr z,L_667C		;6639
	add a,a			;663b
	add a,a			;663c
	ld hl,0be18h		;663d
	call 04089h		;6640   ; suma_a_hl: HL = HL + A
	ld (0ef80h),hl		;6643
	ld a,(ix+004h)		;6646
	add a,(hl)			;6649
	sub (iy+003h)		;664a
	jp nc,L_665A		;664d
	neg		;6650
	dec a			;6652
	inc hl			;6653
	inc hl			;6654
	cp (hl)			;6655
	jp c,L_665E		;6656
	ret			;6659
L_665A:
	cp (iy+00dh)		;665a
	ret nc			;665d
L_665E:
	ld hl,(0ef80h)		;665e
	inc hl			;6661
	ld a,(ix+006h)		;6662
	add a,(hl)			;6665
	sub (iy+005h)		;6666
	jp nc,L_6675		;6669
	neg		;666c
	inc hl			;666e
	inc hl			;666f
	cp (hl)			;6670
	jp c,L_66B7		;6671
	ret			;6674
L_6675:
	cp (iy+00ch)		;6675
	jp c,L_66B7		;6678
	ret			;667b
L_667C:
	ld a,(ix+004h)		;667c
	sub (iy+003h)		;667f
	jp nc,L_6696		;6682
	neg		;6685
	dec a			;6687
	ld c,(ix+009h)		;6688
	sla c		;668b
	sla c		;668d
	sla c		;668f
	cp c			;6691
	jp c,L_669A		;6692
	ret			;6695
L_6696:
	cp (iy+00dh)		;6696
	ret nc			;6699
L_669A:
	ld a,(ix+006h)		;669a
	sub (iy+005h)		;669d
	jp nc,L_66B3		;66a0
	neg		;66a3
	ld c,(ix+00ah)		;66a5
	sla c		;66a8
	sla c		;66aa
	sla c		;66ac
	cp c			;66ae
	jp c,L_66B7		;66af
	ret			;66b2
L_66B3:
	cp (iy+00ch)		;66b3
	ret nc			;66b6
L_66B7:
	call L_66BC		;66b7
	scf			;66ba
	ret			;66bb
L_66BC:
	call L_65C5		;66bc
	ld a,(ix+000h)		;66bf
	cp 00ah		;66c2
	jr nz,L_66CC		;66c4
	ld a,(0e412h)		;66c6
	cp 00fh		;66c9
	ret z			;66cb
L_66CC:
	ld e,(iy+003h)		;66cc
	ld d,(iy+005h)		;66cf
	ld bc,00000h		;66d2
	ld a,03dh		;66d5
	call L_7647		;66d7
	ld a,(0e412h)		;66da
	cp 011h		;66dd
	jr z,L_66EC		;66df
	cp 015h		;66e1
	jr z,L_66EC		;66e3
	call 05890h		;66e5   ; sonido_28: pide el sonido 0x28
	dec (ix+008h)		;66e8
	ret nz			;66eb
L_66EC:
	call L_6737		;66ec
	ld a,(ix+000h)		;66ef
	cp 00ah		;66f2
	ret z			;66f4
	ld de,00010h		;66f5
	call 048f9h		;66f8
	call L_6727		;66fb
	call 08294h		;66fe
	ld a,(ix+00eh)		;6701
	ld hl,0bec8h		;6704
	call 04a5ah		;6707   ; lee_palabra: HL = la palabra A de la tabla HL
	ld e,(ix+004h)		;670a
	ld d,(ix+006h)		;670d
	ld a,l			;6710
	add a,e			;6711
	ld e,a			;6712
	ld c,d			;6713
	ld a,h			;6714
	add a,d			;6715
	ld d,a			;6716
	cp 0e0h		;6717
	jr c,L_678D		;6719
	bit 7,c		;671b
	ld d,0e0h		;671d
	jr nz,L_678D		;671f
	ld d,000h		;6721
	call L_678D		;6723
	ret			;6726
L_6727:
	ld a,(ix+000h)		;6727
	cp 031h		;672a
	jp z,05880h		;672c   ; sonido_22: pide el sonido 0x22
	cp 035h		;672f
	jp z,05884h		;6731   ; sonido_26: pide el sonido 0x26
	jp 05878h		;6734   ; sonido_20: pide el sonido 0x20
L_6737:
	ld a,(ix+000h)		;6737
	ld c,000h		;673a
	cp 026h		;673c
	jp z,08fa1h		;673e
	ld c,002h		;6741
	cp 01ch		;6743
	jp z,08fa1h		;6745
	ld c,000h		;6748
	cp 027h		;674a
	jp z,08f92h		;674c
	ld c,002h		;674f
	cp 028h		;6751
	jp z,08f83h		;6753
	cp 023h		;6756
	jp z,09d4dh		;6758
	cp 022h		;675b
	jp z,0ac5dh		;675d
	cp 00dh		;6760
	jp z,0bdb7h		;6762
	cp 02ah		;6765
	jp z,08221h		;6767
	cp 021h		;676a
	jp z,0afe4h		;676c
	cp 010h		;676f
	jp z,0aeb7h		;6771
	cp 02dh		;6774
	jp z,08827h		;6776
	cp 007h		;6779
	jr z,L_6783		;677b
	cp 004h		;677d
	jp z,098d5h		;677f
	ret			;6782
L_6783:
	call 041efh		;6783   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
	call 0acb9h		;6786
	call 04148h		;6789   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ret			;678c
L_678D:
	ld a,d			;678d
	cp 0e8h		;678e
	ret nc			;6790
	ld a,e			;6791
	cp 0a8h		;6792
	ret nc			;6794
	xor a			;6795
	ld (0e44fh),a		;6796
	ld hl,0e4b2h		;6799
	ld b,004h		;679c
L_679E:
	ld a,(hl)			;679e
	and a			;679f
	jr z,L_67AA		;67a0
	ld a,008h		;67a2
	add a,l			;67a4
	ld l,a			;67a5
	djnz L_679E		;67a6
	xor a			;67a8
	ret			;67a9
L_67AA:
	ld a,005h		;67aa
	sub b			;67ac
	ld (hl),a			;67ad
	inc l			;67ae
	ld (hl),004h		;67af
	inc l			;67b1
	ld (hl),e			;67b2
	inc l			;67b3
	ld (hl),d			;67b4
	inc l			;67b5
	push hl			;67b6
	ex de,hl			;67b7
	call 04a46h		;67b8
	ex de,hl			;67bb
	pop hl			;67bc
	ld (hl),e			;67bd
	inc l			;67be
	ld (hl),d			;67bf
	inc l			;67c0
	ld (hl),003h		;67c1
	scf			;67c3
	ret			;67c4
L_67C5:
	ld a,(0e600h)		;67c5   ; lee el estado de la nave (0xFF: estalla)
	dec a			;67c8
	ret m			;67c9
	ld ix,0eb00h		;67ca
	ld l,00ah		;67ce
	ld bc,00303h		;67d0
	call L_67DE		;67d3
	ret nc			;67d6
	ld (ix+000h),000h		;67d7
	jp L_693D		;67db
L_67DE:
	ld a,(0e604h)		;67de
	add a,004h		;67e1
	ld e,a			;67e3
	ld a,(0e606h)		;67e4
	add a,003h		;67e7
	ld d,a			;67e9
	exx			;67ea
	ld de,00010h		;67eb
	ld bc,00906h		;67ee
	exx			;67f1
L_67F2:
	ld a,(ix+000h)		;67f2
	or a			;67f5
	jr z,L_680E		;67f6
	ld a,(ix+004h)		;67f8
	sub e			;67fb
	exx			;67fc
	cp c			;67fd
	exx			;67fe
	jr c,L_6804		;67ff
	add a,c			;6801
	jr nc,L_680E		;6802
L_6804:
	ld a,(ix+006h)		;6804
	sub d			;6807
	exx			;6808
	cp b			;6809
	exx			;680a
	ret c			;680b
	add a,b			;680c
	ret c			;680d
L_680E:
	exx			;680e
	add ix,de		;680f
	exx			;6811
	dec l			;6812
	jr nz,L_67F2		;6813
	xor a			;6815
	ret			;6816
L_6817:
	ld a,(0e600h)		;6817   ; lee el estado de la nave (0xFF: estalla)
	sub 002h		;681a
	cp 002h		;681c
	ret nc			;681e
	or a			;681f
	ld hl,0686ch		;6820
	jr z,L_6828		;6823
	ld hl,06872h		;6825
L_6828:
	ld e,(hl)			;6828
	inc hl			;6829
	ld d,(hl)			;682a
	inc hl			;682b
	ld c,(hl)			;682c
	inc hl			;682d
	ld b,(hl)			;682e
	inc hl			;682f
	ld a,(0e604h)		;6830
	add a,(hl)			;6833
	push af			;6834
	inc hl			;6835
	ld a,(0e606h)		;6836
	add a,(hl)			;6839
	ld h,a			;683a
	pop af			;683b
	ld l,a			;683c
	ld ix,0eb00h		;683d
	exx			;6841
	ld de,00010h		;6842
	ld b,00ah		;6845
L_6847:
	exx			;6847
	ld a,(ix+000h)		;6848
	and a			;684b
	jp z,L_685F		;684c
	ld a,l			;684f
	sub (ix+004h)		;6850
	add a,e			;6853
	cp c			;6854
	jr nc,L_685F		;6855
	ld a,h			;6857
	sub (ix+006h)		;6858
	add a,d			;685b
	cp b			;685c
	jr c,L_6865		;685d
L_685F:
	exx			;685f
	add ix,de		;6860
	djnz L_6847		;6862
	ret			;6864
L_6865:
	ld (ix+000h),000h		;6865
	jp L_68DF		;6869

; ----------------------------------------------------------------------
; DATOS resto_686C: lo apuntan con el banco puesto p01:6820 (0x686C), p01:6881
;   (0x686C), p01:6825 (0x6872), p01:6886 (0x6872); el tamano es lo que hay
;   hasta lo siguiente, no sale de recorrerlo; lo leen p01:6820, p01:6881,
;   p01:6825, p01:6886 (12 bytes)
;   0x686c..0x6878  (12 bytes)
DATA_resto_686C:
	defb 00dh,00ah,011h,00eh,001h,00ch,00ah,00eh,00eh,012h,003h,001h	; 686c  ............

; ======================================================================
; CODIGO 0x6878..0x69f7  (383 bytes)
; ======================================================================


L_6878:
	ld a,(0e600h)		;6878   ; lee el estado de la nave (0xFF: estalla)
	sub 002h		;687b
	cp 002h		;687d
	ret nc			;687f
	or a			;6880
	ld hl,0686ch		;6881
	jr z,L_6889		;6884
	ld hl,06872h		;6886
L_6889:
	ld e,(hl)			;6889
	inc hl			;688a
	ld d,(hl)			;688b
	inc hl			;688c
	inc hl			;688d
	inc hl			;688e
	ld a,(0e604h)		;688f
	add a,(hl)			;6892
	push af			;6893
	inc hl			;6894
	ld a,(0e606h)		;6895
	add a,(hl)			;6898
	ld h,a			;6899
	pop af			;689a
	ld l,a			;689b
	ex de,hl			;689c
	call L_6962		;689d
	ret nc			;68a0
	ld a,(ix+000h)		;68a1
	ld b,a			;68a4
	cp 020h		;68a5
	ret z			;68a7
	cp 044h		;68a8
	ret z			;68aa
	cp 012h		;68ab
	ret z			;68ad
	sub 03dh		;68ae
	cp 003h		;68b0
	ret c			;68b2
	ld a,b			;68b3
	sub 046h		;68b4
	cp 002h		;68b6
	ret c			;68b8
	ld a,b			;68b9
	cp 018h		;68ba
	jr nz,L_68C3		;68bc
	ld a,(ix+001h)		;68be
	dec a			;68c1
	ret z			;68c2
L_68C3:
	push bc			;68c3
	ld a,b			;68c4
	cp 01bh		;68c5
	jr z,L_68D0		;68c7
	cp 049h		;68c9
	jr z,L_68D0		;68cb
	call L_6533		;68cd
L_68D0:
	pop af			;68d0
	cp 049h		;68d1
	jr z,L_68EC		;68d3
	cp 025h		;68d5
	jr z,L_68EC		;68d7
	sub 038h		;68d9
	cp 005h		;68db
	jr c,L_68EC		;68dd
L_68DF:
	ld hl,0e601h		;68df
	dec (hl)			;68e2
	jr z,L_68EC		;68e3
	ld a,(hl)			;68e5
	dec a			;68e6
	ret nz			;68e7
	call 05007h		;68e8
	ret			;68eb
L_68EC:
	xor a			;68ec
	ld (0e601h),a		;68ed
	inc a			;68f0
	ld (0e600h),a		;68f1   ; guarda el estado de la nave (0xFF: estalla)
	call 05007h		;68f4
	call 0415bh		;68f7   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 0967bh		;68fa
	call 04148h		;68fd   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ret			;6900
L_6901:
	ld a,(0e600h)		;6901   ; lee el estado de la nave (0xFF: estalla)
	inc a			;6904
	ret z			;6905
	ld a,(0e604h)		;6906
	add a,005h		;6909
	ld e,a			;690b
	ld a,(0e606h)		;690c
	add a,004h		;690f
	ld d,a			;6911
	ld hl,00806h		;6912
	call L_6962		;6915
	ret nc			;6918
	ld a,(ix+000h)		;6919
	ld b,a			;691c
	cp 01bh		;691d
	jr z,L_693D		;691f
	cp 049h		;6921
	jr z,L_693D		;6923
	sub 047h		;6925
	jp z,L_69ED		;6927
	ld a,b			;692a
	sub 03eh		;692b
	cp 002h		;692d
	jp c,L_69ED		;692f
	ld a,b			;6932
	sub 01eh		;6933
	cp 002h		;6935
	jp z,L_69ED		;6937
	call L_6533		;693a
L_693D:
	nop			;693d
	ld a,(0e302h)		;693e
	bit 6,a		;6941
	ret z			;6943
L_6944:
	nop			;6944
	xor a			;6945
	ld (0e36bh),a		;6946
	ld a,(0e430h)		;6949
	ld (0e36dh),a		;694c
	xor a			;694f
	ld (0e6c0h),a		;6950
	ld (0e720h),a		;6953
	ld (0e780h),a		;6956
	call 0415bh		;6959   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 0843dh		;695c   ; mata_la_nave: la nave estalla: 0xFF en 0xE600
	jp 04148h		;695f   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_6962:
	ld ix,0e800h		;6962
	ld b,00ch		;6966
	exx			;6968
	ld de,00040h		;6969
	exx			;696c
L_696D:
	ld a,(ix+000h)		;696d
	or a			;6970
	jr z,L_699F		;6971
	bit 0,(ix+010h)		;6973
	jr z,L_699F		;6977
	ld a,(ix+004h)		;6979
	sub e			;697c
	jp nc,L_698B		;697d
	neg		;6980
	cp (ix+00eh)		;6982
	jp c,L_698E		;6985
	jp L_699F		;6988
L_698B:
	cp l			;698b
	jr nc,L_699F		;698c
L_698E:
	ld a,(ix+006h)		;698e
	sub d			;6991
	jp nc,L_699D		;6992
	neg		;6995
	cp (ix+00fh)		;6997
	jr nc,L_699F		;699a
	ret			;699c
L_699D:
	cp h			;699d
	ret c			;699e
L_699F:
	ld a,(ix+000h)		;699f
	cp 03ah		;69a2
	jr nz,L_69AA		;69a4
	call L_69B2		;69a6
	ret c			;69a9
L_69AA:
	exx			;69aa
	add ix,de		;69ab
	exx			;69ad
	djnz L_696D		;69ae
	xor a			;69b0
	ret			;69b1
L_69B2:
	push bc			;69b2
	push ix		;69b3
	pop bc			;69b5
	ld a,034h		;69b6
	add a,c			;69b8
	ld c,a			;69b9
	exx			;69ba
	ld c,003h		;69bb
	exx			;69bd
L_69BE:
	ld a,(bc)			;69be
	inc c			;69bf
	inc c			;69c0
	sub e			;69c1
	jp nc,L_69CE		;69c2
	neg		;69c5
	cp 008h		;69c7
	jp c,L_69D1		;69c9
	jr L_69E3		;69cc
L_69CE:
	cp l			;69ce
	jr nc,L_69E3		;69cf
L_69D1:
	dec c			;69d1
	ld a,(bc)			;69d2
	inc c			;69d3
	sub d			;69d4
	jp nc,L_69E0		;69d5
	neg		;69d8
	cp 010h		;69da
	jr nc,L_69E3		;69dc
L_69DE:
	pop bc			;69de
	ret			;69df
L_69E0:
	cp h			;69e0
	jr c,L_69DE		;69e1
L_69E3:
	inc c			;69e3
	inc c			;69e4
	exx			;69e5
	dec c			;69e6
	exx			;69e7
	jr nz,L_69BE		;69e8
	pop bc			;69ea
	xor a			;69eb
	ret			;69ec
L_69ED:
	push af			;69ed
	cp 003h		;69ee
	call c,L_75D1		;69f0
	pop af			;69f3
	call 04093h		;69f4   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_69F7: 3 destinos del despachador p00:4093 (call en p01:69F4, el
;   indice en A): 69FD, 6A22, 6A6A; lo leen p01:69F4 (6 bytes)
;   0x69f7..0x69fd  (6 bytes)
DATA_tabla_69F7:
	defw 069fdh,06a22h,06a6ah	; 69f7  -> L_69FD L_6A22 L_6A6A

; ======================================================================
; CODIGO 0x69fd..0x6c7e  (641 bytes)
; ======================================================================


L_69FD:
	xor a			;69fd
	ld (0e36bh),a		;69fe
	ld hl,0e430h		;6a01
	ld a,(hl)			;6a04
	inc a			;6a05
	cp 009h		;6a06
	jr c,L_6A0C		;6a08
	ld a,001h		;6a0a
L_6A0C:
	ld (hl),a			;6a0c
	ld de,00005h		;6a0d
	call 048f9h		;6a10
	call 0415bh		;6a13   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 0957dh		;6a16
	call 095b6h		;6a19
	call 04148h		;6a1c   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	jp 05857h		;6a1f   ; sonido_1A: pide el sonido 0x1A
L_6A22:
	ld de,00005h		;6a22
	call 048f9h		;6a25
	xor a			;6a28
	ld (0e49ah),a		;6a29
	ld ix,0eac0h		;6a2c
	ld b,00ch		;6a30
L_6A32:
	push bc			;6a32
	ld a,(ix+000h)		;6a33
	ld b,a			;6a36
	or a			;6a37
	jr z,L_6A5F		;6a38
	sub 038h		;6a3a
	cp 008h		;6a3c
	jr c,L_6A5F		;6a3e
	ld a,b			;6a40
	sub 046h		;6a41
	cp 002h		;6a43
	jr c,L_6A5F		;6a45
	ld a,b			;6a47
	cp 027h		;6a48
	jr z,L_6A5F		;6a4a
	cp 033h		;6a4c
	jr z,L_6A5F		;6a4e
	cp 020h		;6a50
	jr z,L_6A5F		;6a52
	cp 025h		;6a54
	jr z,L_6A5F		;6a56
	cp 012h		;6a58
	jr z,L_6A5F		;6a5a
	call L_6533		;6a5c
L_6A5F:
	ld bc,0ffc0h		;6a5f
	add ix,bc		;6a62
	pop bc			;6a64
	djnz L_6A32		;6a65
	jp 0585bh		;6a67   ; sonido_1B: pide el sonido 0x1B
L_6A6A:
	ld a,001h		;6a6a
	ld (0e5e0h),a		;6a6c
	ld hl,0e680h		;6a6f
	ld de,00020h		;6a72
	ld b,009h		;6a75
	xor a			;6a77
L_6A78:
	ld (hl),a			;6a78
	add hl,de			;6a79
	djnz L_6A78		;6a7a
	xor a			;6a7c
	ld (0e64bh),a		;6a7d
	call 05071h		;6a80
	jp 05857h		;6a83   ; sonido_1A: pide el sonido 0x1A
L_6A86:
	ld a,(0e600h)		;6a86   ; lee el estado de la nave (0xFF: estalla)
	inc a			;6a89
	ret z			;6a8a
	ld a,(0e361h)		;6a8b   ; lee la fase (1 a 11)
	cp 002h		;6a8e
	ret nz			;6a90
	ld de,(0e363h)		;6a91   ; lee la posicion del scroll (16 bits)
	ld hl,00100h		;6a95
	or a			;6a98
	sbc hl,de		;6a99
	ret nc			;6a9b
	ld hl,00160h		;6a9c
	or a			;6a9f
	sbc hl,de		;6aa0
	ret c			;6aa2
	ld iy,0e610h		;6aa3
	call L_6AC8		;6aa7
	call c,L_6AB8		;6aaa
	ld iy,0e620h		;6aad
	call L_6AC8		;6ab1
	call c,L_6AB8		;6ab4
	ret			;6ab7
L_6AB8:
	ld (iy+000h),000h		;6ab8
	call 0415bh		;6abc   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 09660h		;6abf
	call 04148h		;6ac2   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	jp 058e5h		;6ac5   ; sonido_31: pide el sonido 0x31
L_6AC8:
	ld a,(iy+000h)		;6ac8
	or a			;6acb
	ret z			;6acc
	ld a,(iy+004h)		;6acd
	add a,004h		;6ad0
	ld e,a			;6ad2
	ld a,(iy+006h)		;6ad3
	add a,002h		;6ad6
	ld d,a			;6ad8
	ld hl,00c08h		;6ad9
	ld ix,0e800h		;6adc
	ld b,00ch		;6ae0
	exx			;6ae2
	ld de,00040h		;6ae3
	exx			;6ae6
L_6AE7:
	ld a,(ix+000h)		;6ae7
	cp 003h		;6aea
	jr nz,L_6B14		;6aec
	ld a,(ix+004h)		;6aee
	sub e			;6af1
	jp nc,L_6B00		;6af2
	neg		;6af5
	cp (ix+00eh)		;6af7
	jp c,L_6B03		;6afa
	jp L_6B14		;6afd
L_6B00:
	cp l			;6b00
	jr nc,L_6B14		;6b01
L_6B03:
	ld a,(ix+006h)		;6b03
	sub d			;6b06
	jp nc,L_6B12		;6b07
	neg		;6b0a
	cp (ix+00fh)		;6b0c
	jr nc,L_6B14		;6b0f
	ret			;6b11
L_6B12:
	cp h			;6b12
	ret c			;6b13
L_6B14:
	exx			;6b14
	add ix,de		;6b15
	exx			;6b17
	djnz L_6AE7		;6b18
	xor a			;6b1a
	ret			;6b1b
L_6B1C:
	call L_7EC2		;6b1c
	ret z			;6b1f
	ld a,(0e445h)		;6b20
	and a			;6b23
	ret nz			;6b24
	ld a,(0e454h)		;6b25
	or a			;6b28
	ret nz			;6b29
	ld ix,0ec00h		;6b2a
	ld a,(ix+000h)		;6b2e
	and a			;6b31
	ret z			;6b32
	sub 00eh		;6b33
	jr z,L_6B54		;6b35
L_6B37:
	ld iy,0e680h		;6b37
	ld b,009h		;6b3b
L_6B3D:
	push bc			;6b3d
	ld a,(iy+000h)		;6b3e
	or a			;6b41
	jr z,L_6B4B		;6b42
	cp 00fh		;6b44
	jr z,L_6B4B		;6b46
	call L_6B69		;6b48
L_6B4B:
	ld de,00020h		;6b4b
	add iy,de		;6b4e
	pop bc			;6b50
	djnz L_6B3D		;6b51
	ret			;6b53
L_6B54:
	call L_6B62		;6b54
	ld ix,0ec20h		;6b57
	call L_6B62		;6b5b
	ld ix,0ec40h		;6b5e
L_6B62:
	ld a,(ix+018h)		;6b62
	or a			;6b65
	ret nz			;6b66
	jr L_6B37		;6b67
L_6B69:
	ld a,(0e445h)		;6b69
	and a			;6b6c
	ret nz			;6b6d
	call L_6C0F		;6b6e
	ld (0ef80h),hl		;6b71
	call 04a46h		;6b74
	ld (0dffeh),hl		;6b77
	ld hl,0ef80h		;6b7a
	ld bc,01010h		;6b7d
	ld a,(hl)			;6b80
	inc a			;6b81
	sub (iy+003h)		;6b82
	jp nc,L_6B8F		;6b85
	neg		;6b88
	cp c			;6b8a
	jp c,L_6B93		;6b8b
	ret			;6b8e
L_6B8F:
	cp (iy+00dh)		;6b8f
	ret nc			;6b92
L_6B93:
	inc l			;6b93
	ld a,(hl)			;6b94
	sub (iy+005h)		;6b95
	jp nc,L_6BA2		;6b98
	neg		;6b9b
	cp b			;6b9d
	jp c,L_6BA6		;6b9e
	ret			;6ba1
L_6BA2:
	cp (iy+00ch)		;6ba2
	ret nc			;6ba5
L_6BA6:
	call L_6BF6		;6ba6
L_6BA9:
	call L_6C0F		;6ba9
	ex de,hl			;6bac
	push de			;6bad
	call 0855eh		;6bae
	pop de			;6bb1
	dec (ix+012h)		;6bb2
	jp m,L_6BC2		;6bb5
	call 0588ch		;6bb8   ; sonido_27: pide el sonido 0x27
	ld a,044h		;6bbb
	ld c,000h		;6bbd
	jp L_7647		;6bbf
L_6BC2:
	ld a,(0ec00h)		;6bc2
	sub 00eh		;6bc5
	ret z			;6bc7
	ld a,001h		;6bc8
	ld (0e445h),a		;6bca
	ld de,00100h		;6bcd
	call 048f9h		;6bd0
	ld a,(0e361h)		;6bd3   ; lee la fase (1 a 11)
	cp 004h		;6bd6
	ret nz			;6bd8
	ld a,(0e37ch)		;6bd9
	ld b,a			;6bdc
	ld a,(0e381h)		;6bdd
	cp b			;6be0
	ret nz			;6be1
	call L_6C0F		;6be2
	ex de,hl			;6be5
	ld a,007h		;6be6
	call 080d6h		;6be8
	ld a,(0e7e0h)		;6beb
	or a			;6bee
	ret z			;6bef
	ld a,002h		;6bf0
	ld (0e445h),a		;6bf2
	ret			;6bf5
L_6BF6:
	ld a,(iy+000h)		;6bf6
	cp 012h		;6bf9
	jr z,L_6C06		;6bfb
	cp 016h		;6bfd
	jr z,L_6C06		;6bff
	ld (iy+000h),000h		;6c01
	ret			;6c05
L_6C06:
	call 0415bh		;6c06   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 09257h		;6c09
	jp 04148h		;6c0c   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_6C0F:
	ld a,(ix+013h)		;6c0f
	add a,(ix+003h)		;6c12
	ld l,a			;6c15
	ld a,(ix+014h)		;6c16
	add a,(ix+005h)		;6c19
	ld h,a			;6c1c
	ret			;6c1d
L_6C1E:
	call 041efh		;6c1e   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
	call 0b3c4h		;6c21
	call 04148h		;6c24   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0f0f7h)		;6c27
	inc a			;6c2a
	ret z			;6c2b
	ld hl,0e404h		;6c2c
	ld a,(hl)			;6c2f
	and a			;6c30
	jr z,L_6C35		;6c31
	dec (hl)			;6c33
	ret			;6c34
L_6C35:
	ld a,005h		;6c35
	call 00141h		;6c37   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	rra			;6c3a
	jr nc,L_6C47		;6c3b
	ld a,004h		;6c3d
	call 00141h		;6c3f   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 1,a		;6c42
	jr z,L_6C74		;6c44
	ret			;6c46
L_6C47:
	call L_6CC2		;6c47
	ld c,000h		;6c4a
	jr z,L_6C4F		;6c4c
	inc c			;6c4e
L_6C4F:
	push bc			;6c4f
	ld hl,03ae0h		;6c50
	ld bc,00020h		;6c53
	xor a			;6c56
	call 00056h		;6c57   ; BIOS FILVRM - Fills VRAM with value
	call 05563h		;6c5a
	pop bc			;6c5d
	ld a,c			;6c5e
	ld hl,06c7eh		;6c5f
	call 04a5ah		;6c62   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;6c65
	ld hl,03ae8h		;6c66
	ld c,0ffh		;6c69
	call 04b0ch		;6c6b   ; escribe_letras: escribe en la VRAM de HL las letras de DE
	ld a,001h		;6c6e
	ld (0e403h),a		;6c70
	ret			;6c73
L_6C74:
	call 05d0bh		;6c74
	ld c,002h		;6c77
	jr z,L_6C7C		;6c79
	inc c			;6c7b
L_6C7C:
	jr L_6C4F		;6c7c

; ----------------------------------------------------------------------
; DATOS tabla_6C7E: tabla que se lee desde HL = 0x6C7E con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:6C5F (68 bytes)
;   0x6c7e..0x6cc2  (68 bytes)
DATA_tabla_6C7E:
	defb 086h,06ch,095h,06ch,0a4h,06ch,0b3h,06ch,040h,041h,042h,043h,000h,044h,045h,046h	; 6c7e  .l.l.l.l@ABC.DEF
	defb 047h,048h,043h,049h,043h,04ch,0ffh,040h,041h,042h,043h,000h,04ah,041h,04bh,048h	; 6c8e  GHCICL.@ABC.JAKH
	defb 043h,04ch,000h,000h,000h,0ffh,048h,045h,041h,04ch,000h,044h,045h,046h,047h,048h	; 6c9e  CL....HEAL.DEFGH
	defb 043h,049h,043h,04ch,0ffh,048h,045h,041h,04ch,000h,04ah,041h,04bh,048h,043h,04ch	; 6cae  CICL.HEAL.JAKHCL
	defb 000h,000h,000h,0ffh	; 6cbe

; ======================================================================
; CODIGO 0x6cc2..0x6d54  (146 bytes)
; ======================================================================


L_6CC2:
	ld a,(0f0f7h)		;6cc2
	inc a			;6cc5
	jr z,L_6CFF		;6cc6
	dec a			;6cc8
	ld h,080h		;6cc9
	call 00024h		;6ccb   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld a,004h		;6cce
	ld (08000h),a		;6cd0
	call L_6D3C		;6cd3
	ld bc,0010ah		;6cd6
	ld de,0ef80h		;6cd9
	call 08000h		;6cdc
	or a			;6cdf
	jr nz,L_6CEF		;6ce0
	call L_6D48		;6ce2
	ld bc,0010ah		;6ce5
	ld de,0ef80h		;6ce8
	call 08000h		;6ceb
	or a			;6cee
L_6CEF:
	push af			;6cef
	ld a,002h		;6cf0
	ld (08000h),a		;6cf2
	ld a,(0f0f8h)		;6cf5   ; lee la ranura del cartucho
	ld h,080h		;6cf8
	call 00024h		;6cfa   ; BIOS ENASLT - Switches to specified slot and page definitively
	pop af			;6cfd
	ret			;6cfe
L_6CFF:
	dec a			;6cff
	ret			;6d00
L_6D01:
	ld a,(0f0f7h)		;6d01
	inc a			;6d04
	jr z,L_6CFF		;6d05
	dec a			;6d07
	ld h,080h		;6d08
	call 00024h		;6d0a   ; BIOS ENASLT - Switches to specified slot and page definitively
	ld a,004h		;6d0d
	ld (08000h),a		;6d0f
	call L_6D3C		;6d12
	ld c,00bh		;6d15
	ld de,0ef80h		;6d17
	call 08000h		;6d1a
	or a			;6d1d
	jr nz,L_6D2C		;6d1e
	call L_6D48		;6d20
	ld c,00bh		;6d23
	ld de,0ef80h		;6d25
	call 08000h		;6d28
	or a			;6d2b
L_6D2C:
	push af			;6d2c
	ld a,002h		;6d2d
	ld (08000h),a		;6d2f
	ld a,(0f0f8h)		;6d32   ; lee la ranura del cartucho
	ld h,080h		;6d35
	call 00024h		;6d37   ; BIOS ENASLT - Switches to specified slot and page definitively
	pop af			;6d3a
	ret			;6d3b
L_6D3C:
	ld hl,06d54h		;6d3c
	ld de,0ef80h		;6d3f
	ld bc,00011h		;6d42
	ldir		;6d45
	ret			;6d47
L_6D48:
	ld hl,06d65h		;6d48
	ld de,0ef80h		;6d4b
	ld bc,00011h		;6d4e
	ldir		;6d51
	ret			;6d53

; ----------------------------------------------------------------------
; DATOS resto_6D54: lo apuntan con el banco puesto p01:6D3C (0x6D54), p01:6D48
;   (0x6D65); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p01:6D3C, p01:6D48 (34 bytes)
;   0x6d54..0x6d76  (34 bytes)
DATA_resto_6D54:
	defb 047h,04fh,046h,045h,031h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0e0h,080h	; 6d54  GOFE1...........
	defb 00fh,047h,04fh,046h,045h,032h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0c4h	; 6d64  .GOFE2..........
	defb 000h,00ch	; 6d74

; ======================================================================
; CODIGO 0x6d76..0x6fb2  (572 bytes)
; ======================================================================


L_6D76:
	ld bc,00400h		;6d76
	ld hl,0fcc1h		;6d79
L_6D7C:
	push bc			;6d7c
	push hl			;6d7d
	ld a,(hl)			;6d7e
	bit 7,a		;6d7f
	jr nz,L_6D89		;6d81
	ld a,c			;6d83
	call L_6DA9		;6d84
	jr L_6D8C		;6d87
L_6D89:
	call L_6D99		;6d89
L_6D8C:
	pop hl			;6d8c
	pop bc			;6d8d
	ret c			;6d8e
	inc hl			;6d8f
	inc c			;6d90
	djnz L_6D7C		;6d91
	ld a,0ffh		;6d93
	ld (0f0f7h),a		;6d95
	ret			;6d98
L_6D99:
	and 080h		;6d99
	or c			;6d9b
	ld b,004h		;6d9c
L_6D9E:
	push bc			;6d9e
	call L_6DA9		;6d9f
	pop bc			;6da2
	ret c			;6da3
	add a,004h		;6da4
	djnz L_6D9E		;6da6
	ret			;6da8
L_6DA9:
	ld (0f0f7h),a		;6da9
	ld hl,04010h		;6dac
	call 0000ch		;6daf   ; BIOS RDSLT - Reads the value of an address in another slot
	cp 059h		;6db2
	jr nz,L_6DC8		;6db4
	ld hl,04011h		;6db6
	ld a,(0f0f7h)		;6db9
	call 0000ch		;6dbc   ; BIOS RDSLT - Reads the value of an address in another slot
	cp 05ah		;6dbf
	jr nz,L_6DC8		;6dc1
	ld a,(0f0f7h)		;6dc3
	scf			;6dc6
	ret			;6dc7
L_6DC8:
	ld a,(0f0f7h)		;6dc8
	and a			;6dcb
	ret			;6dcc
L_6DCD:
	push af			;6dcd
	ld a,(0e361h)		;6dce   ; lee la fase (1 a 11)
	dec a			;6dd1
	call 04a5ah		;6dd2   ; lee_palabra: HL = la palabra A de la tabla HL
	pop af			;6dd5
	ld c,a			;6dd6
	add a,a			;6dd7
	add a,c			;6dd8
	call 04089h		;6dd9   ; suma_a_hl: HL = HL + A
	ld e,(hl)			;6ddc
	inc hl			;6ddd
	ld d,(hl)			;6dde
	inc hl			;6ddf
	ld c,(hl)			;6de0
	ld hl,(0e363h)		;6de1   ; lee la posicion del scroll (16 bits)
	rst 20h			;6de4
	ret			;6de5
L_6DE6:
	ld hl,0e800h		;6de6
	ld de,00040h		;6de9
	ld b,00ch		;6dec
L_6DEE:
	ld a,(hl)			;6dee
	and a			;6def
	jr z,L_6DF8		;6df0
	sub 03dh		;6df2
	cp 003h		;6df4
	jr nc,L_6E0B		;6df6
L_6DF8:
	add hl,de			;6df8
	djnz L_6DEE		;6df9
	ld hl,0eb00h		;6dfb
	ld de,00010h		;6dfe
	ld b,00ah		;6e01
L_6E03:
	ld a,(hl)			;6e03
	and a			;6e04
	ret nz			;6e05
	add hl,de			;6e06
	djnz L_6E03		;6e07
	xor a			;6e09
	ret			;6e0a
L_6E0B:
	ld a,001h		;6e0b
	or a			;6e0d
	ret			;6e0e
L_6E0F:
	ld hl,0e507h		;6e0f
	ld b,004h		;6e12
L_6E14:
	cp (hl)			;6e14
	ret z			;6e15
	inc l			;6e16
	inc l			;6e17
	inc l			;6e18
	djnz L_6E14		;6e19
	scf			;6e1b
	ret			;6e1c
L_6E1D:
	ld e,(ix+004h)		;6e1d
	ld a,(ix+006h)		;6e20
	add a,008h		;6e23
	ld d,a			;6e25
	jp 0855eh		;6e26
L_6E29:
	ld a,(ix+014h)		;6e29
	or a			;6e2c
	ret z			;6e2d
	ld b,a			;6e2e
	ld l,(ix+004h)		;6e2f
	ld h,(ix+006h)		;6e32
	call 04a46h		;6e35
	ld a,(ix+032h)		;6e38
L_6E3B:
	ld (hl),a			;6e3b
	inc l			;6e3c
	djnz L_6E3B		;6e3d
	ret			;6e3f
L_6E40:
	add a,a			;6e40
	add a,a			;6e41
	ld e,a			;6e42
	ld d,000h		;6e43
	add hl,de			;6e45
	ld e,(hl)			;6e46
	inc hl			;6e47
	ld d,(hl)			;6e48
	inc hl			;6e49
	ld a,(hl)			;6e4a
	inc hl			;6e4b
	ld h,(hl)			;6e4c
	ld l,a			;6e4d
	jp L_78D7		;6e4e
L_6E51:
	call L_6E6A		;6e51
	ld e,b			;6e54
L_6E55:
	ld a,h			;6e55
	cp 0cah		;6e56
	ret nc			;6e58
	ld b,e			;6e59
	xor a			;6e5a
	ld d,l			;6e5b
L_6E5C:
	ld (hl),a			;6e5c
	inc l			;6e5d
	djnz L_6E5C		;6e5e
	ld l,d			;6e60
	ld a,040h		;6e61
	call 04089h		;6e63   ; suma_a_hl: HL = HL + A
	dec c			;6e66
	jr nz,L_6E55		;6e67
	ret			;6e69
L_6E6A:
	call 04a46h		;6e6a
	ld a,l			;6e6d
	and 01fh		;6e6e
	add a,b			;6e70
	sub 040h		;6e71
	ret c			;6e73
	neg		;6e74
	add a,b			;6e76
	ld b,a			;6e77
	ret			;6e78
L_6E79:
	push bc			;6e79
	call L_6E6A		;6e7a
	pop af			;6e7d
	sub b			;6e7e
	exx			;6e7f
	ld c,a			;6e80
	exx			;6e81
	ld a,040h		;6e82
	sub b			;6e84
	exx			;6e85
	ld d,a			;6e86
	exx			;6e87
	ld a,c			;6e88
	ld c,b			;6e89
	ld b,a			;6e8a
	ex de,hl			;6e8b
L_6E8C:
	ld a,d			;6e8c
	cp 0cah		;6e8d
	ret nc			;6e8f
	push bc			;6e90
	ld b,c			;6e91
L_6E92:
	ld a,(hl)			;6e92
	or a			;6e93
	jr z,L_6E97		;6e94
	ld (de),a			;6e96
L_6E97:
	inc hl			;6e97
	inc de			;6e98
	djnz L_6E92		;6e99
	pop bc			;6e9b
	exx			;6e9c
	ld a,c			;6e9d
	exx			;6e9e
	call 04089h		;6e9f   ; suma_a_hl: HL = HL + A
	exx			;6ea2
	ld a,d			;6ea3
	exx			;6ea4
	call 0408eh		;6ea5   ; suma_a_de: DE = DE + A
	djnz L_6E8C		;6ea8
	ret			;6eaa
L_6EAB:
	push de			;6eab
	call L_6ECD		;6eac
	pop de			;6eaf
	ld a,040h		;6eb0
	sub b			;6eb2
	exx			;6eb3
	ld c,a			;6eb4
	exx			;6eb5
	ld a,c			;6eb6
	ld c,b			;6eb7
	ld b,a			;6eb8
	ex de,hl			;6eb9
L_6EBA:
	ld a,d			;6eba
	cp 0cah		;6ebb
	ret nc			;6ebd
	push bc			;6ebe
	ld b,000h		;6ebf
	ldir		;6ec1
	pop bc			;6ec3
	exx			;6ec4
	ld a,c			;6ec5
	exx			;6ec6
	call 0408eh		;6ec7   ; suma_a_de: DE = DE + A
	djnz L_6EBA		;6eca
	ret			;6ecc
L_6ECD:
	call 04a46h		;6ecd
	ld a,(0ef90h)		;6ed0
	or a			;6ed3
	ret z			;6ed4
	ld de,0ffe0h		;6ed5
	add hl,de			;6ed8
	ret			;6ed9
L_6EDA:
	call 0416bh		;6eda   ; bancos_6_7: pone los bancos 6-7 (y sus copias en 0xF0F1-3)
	ex de,hl			;6edd
	call 04a5ah		;6ede   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;6ee1
	call L_6EE8		;6ee2
	jp 04148h		;6ee5   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_6EE8:
	ld b,000h		;6ee8
L_6EEA:
	ld a,(de)			;6eea
	inc de			;6eeb
	or a			;6eec
	ret z			;6eed
	cp 041h		;6eee
	jr nc,L_6EF6		;6ef0
	ld c,a			;6ef2
	add hl,bc			;6ef3
	jr L_6EEA		;6ef4
L_6EF6:
	ld (hl),a			;6ef6
	inc hl			;6ef7
	jr L_6EEA		;6ef8
L_6EFA:
	ld a,(0e44fh)		;6efa
	or a			;6efd
	jp nz,0a6c5h		;6efe
	ld ix,0e4b2h		;6f01
	ld b,004h		;6f05
L_6F07:
	push bc			;6f07
	call L_6F14		;6f08
	ld bc,00008h		;6f0b
	add ix,bc		;6f0e
	pop bc			;6f10
	djnz L_6F07		;6f11
	ret			;6f13
L_6F14:
	ld a,(ix+000h)		;6f14
	and a			;6f17
	ret z			;6f18
	call 0417bh		;6f19   ; bancos_8: pone el 8 (y sus copias en 0xF0F1-3)
	ld a,(ix+006h)		;6f1c
	ld hl,0ba32h		;6f1f
	call 04a5ah		;6f22   ; lee_palabra: HL = la palabra A de la tabla HL
	ld e,(ix+004h)		;6f25
	ld d,(ix+005h)		;6f28
	ld a,004h		;6f2b
L_6F2D:
	ld bc,00004h		;6f2d
	ldir		;6f30
	ld c,03ch		;6f32
	ex de,hl			;6f34
	add hl,bc			;6f35
	ex de,hl			;6f36
	dec a			;6f37
	jr nz,L_6F2D		;6f38
	call 04148h		;6f3a   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ret			;6f3d
L_6F3E:
	ld a,(0e361h)		;6f3e   ; lee la fase (1 a 11)
	cp 004h		;6f41
	ret z			;6f43
	call L_7105		;6f44
	call L_7178		;6f47
	call L_6F69		;6f4a
	ret nz			;6f4d
	call L_6FEB		;6f4e
	ld a,(0e500h)		;6f51
	and a			;6f54
	ret nz			;6f55
	ld a,(0e463h)		;6f56
	and a			;6f59
	jr z,L_6F89		;6f5a
	ld hl,0e462h		;6f5c
	ld a,00bh		;6f5f
	sub (hl)			;6f61
	ld hl,0e502h		;6f62
	cp (hl)			;6f65
	ret c			;6f66
	jr L_6F89		;6f67
L_6F69:
	ld hl,0e464h		;6f69
	ld a,(hl)			;6f6c
	and a			;6f6d
	jr z,L_6F74		;6f6e
	dec (hl)			;6f70
L_6F71:
	or 0ffh		;6f71
	ret			;6f73
L_6F74:
	ld a,(0e361h)		;6f74   ; lee la fase (1 a 11)
	cp 009h		;6f77
	jr z,L_6F80		;6f79
	ld a,(0e440h)		;6f7b
	and a			;6f7e
	ret nz			;6f7f
L_6F80:
	ld a,(0e364h)		;6f80
	cp 002h		;6f83
	jr nc,L_6F71		;6f85
	xor a			;6f87
	ret			;6f88
L_6F89:
	ld a,(0e361h)		;6f89   ; lee la fase (1 a 11)
	cp 004h		;6f8c
	ret z			;6f8e
	ld de,0a27ch		;6f8f
	call L_6FCB		;6f92
	push af			;6f95
	rra			;6f96
	rra			;6f97
	rra			;6f98
	rra			;6f99
	and 00fh		;6f9a
	call L_6FAD		;6f9c
	pop bc			;6f9f
	ld a,(0e389h)		;6fa0
	cp 00ah		;6fa3
	ret c			;6fa5
	ld a,b			;6fa6
	and 00fh		;6fa7
	call L_6FAD		;6fa9
	ret			;6fac
L_6FAD:
	dec a			;6fad
	ret m			;6fae
	call 04093h		;6faf   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_6FB2: 12 destinos del despachador p00:4093 (call en p01:6FAF, el
;   indice en A): 7282, 72E3, 730B, 7354, 7396, 7397, 73EF, 73CD, 724D, 71F9,
;   724E, 727E; lo leen p01:6FAF (24 bytes)
;   0x6fb2..0x6fca  (24 bytes)
DATA_tabla_6FB2:
	defw 07282h,072e3h,0730bh,07354h,07396h,07397h,073efh,073cdh	; 6fb2
	defw 0724dh,071f9h,0724eh,0727eh	; 6fc2  -> L_724D L_71F9 L_724E L_727E

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6fca..0x6fcb  (1 bytes)
DATA_6FCA:
	defb 0c9h	; 6fca

; ======================================================================
; CODIGO 0x6fcb..0x7088  (189 bytes)
; ======================================================================


L_6FCB:
	call 041efh		;6fcb   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
	ld a,(0e361h)		;6fce   ; lee la fase (1 a 11)
	dec a			;6fd1
	call 04a65h		;6fd2
	ld hl,(0e363h)		;6fd5   ; lee la posicion del scroll (16 bits)
	ld a,l			;6fd8
	rr h		;6fd9
	rra			;6fdb
	rr h		;6fdc
	rra			;6fde
	rra			;6fdf
	rra			;6fe0
	rra			;6fe1
	and 01fh		;6fe2
	call 0408eh		;6fe4   ; suma_a_de: DE = DE + A
	ld a,(de)			;6fe7
	jp 04148h		;6fe8   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_6FEB:
	ld a,(0e361h)		;6feb   ; lee la fase (1 a 11)
	sub 003h		;6fee
	ret c			;6ff0
	sub 007h		;6ff1
	ret nc			;6ff3
	ld hl,0e500h		;6ff4
	ld a,(hl)			;6ff7
	and a			;6ff8
	jr z,L_703A		;6ff9
	dec a			;6ffb
	jr z,L_7032		;6ffc
	inc l			;6ffe
	dec (hl)			;6fff
	ret nz			;7000
	call L_707A		;7001
	ld (hl),a			;7004
	inc l			;7005
	dec (hl)			;7006
	jr nz,L_700D		;7007
	dec l			;7009
	dec l			;700a
	ld (hl),000h		;700b
L_700D:
	ld hl,0e46ch		;700d
	inc (hl)			;7010
	ld b,(hl)			;7011
	ld a,(0e505h)		;7012
	ld e,a			;7015
	ld d,0f8h		;7016
	ld a,(0e503h)		;7018
	ld c,000h		;701b
	call L_765B		;701d
	ld a,(0e463h)		;7020
	and a			;7023
	ret nz			;7024
	ld hl,0e46ch		;7025
	dec (hl)			;7028
	ld hl,0e502h		;7029
	inc (hl)			;702c
	dec l			;702d
	dec l			;702e
	ld (hl),001h		;702f
	ret			;7031
L_7032:
	ld a,(0e462h)		;7032
	cp 007h		;7035
	ret nc			;7037
	inc (hl)			;7038
	ret			;7039
L_703A:
	ld a,(0e420h)		;703a
	and a			;703d
	ret z			;703e
	ld a,(0e363h)		;703f   ; lee la posicion del scroll (16 bits)
	and 007h		;7042
	ret nz			;7044
	ld de,0a347h		;7045
	call L_6FCB		;7048
	or a			;704b
	ret z			;704c
	ld (0e503h),a		;704d
	ld hl,00101h		;7050
	ld (0e500h),hl		;7053
	ld hl,0e506h		;7056
	ld a,(hl)			;7059
	inc a			;705a
	jr nz,L_705E		;705b
	inc a			;705d
L_705E:
	ld (hl),a			;705e
	call L_7098		;705f
	ld (0e505h),a		;7062
	ld a,006h		;7065
	ld (0e502h),a		;7067
	ld a,0ffh		;706a
	ld (0e46ch),a		;706c
	xor a			;706f
	call L_6E0F		;7070
	jr nc,$+25		;7073
L_7075:
	xor a			;7075
	ld (0e500h),a		;7076
	ret			;7079
L_707A:
	exx			;707a
	ld a,(0e503h)		;707b
	ld e,a			;707e
	ld d,000h		;707f
	ld hl,l7075h		;7081
	add hl,de			;7084
	ld a,(hl)			;7085
	exx			;7086
	ret			;7087

; ----------------------------------------------------------------------
; DATOS leido_7088: 4 bytes que lee p01:7085 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:7085 (4 bytes)
;   0x7088..0x708c  (4 bytes)
DATA_leido_7088:
	defb 004h,004h,006h,004h	; 7088

; ======================================================================
; CODIGO 0x708c..0x70c2  (54 bytes)
; ======================================================================


L_708C:
	ld a,(0e506h)		;708c
	ld (hl),a			;708f
	inc l			;7090
	ld a,(0e502h)		;7091
	ld (hl),a			;7094
	inc l			;7095
	ld (hl),a			;7096
	ret			;7097
L_7098:
	ld hl,0e46dh		;7098
	inc (hl)			;709b
	ld a,(0e503h)		;709c
	cp 014h		;709f
	jr z,L_70B0		;70a1
	cp 016h		;70a3
	jr z,L_70B9		;70a5
	ld a,(hl)			;70a7
	and 001h		;70a8
	ld a,010h		;70aa
	ret z			;70ac
	ld a,090h		;70ad
	ret			;70af
L_70B0:
	ld a,(hl)			;70b0
	and 001h		;70b1
	ld a,030h		;70b3
	ret z			;70b5
	xor 040h		;70b6
	ret			;70b8
L_70B9:
	ld a,(hl)			;70b9
	and 001h		;70ba
	ld a,000h		;70bc
	ret z			;70be
	ld a,0a0h		;70bf
	ret			;70c1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x70c2..0x70d2  (16 bytes)
DATA_70C2:
	defb 0d9h,021h,0e5h,070h,0d9h,0c3h,0dah,070h,0d9h,021h,0f5h,070h,0d9h,0c3h,0d7h,070h	; 70c2  .!.p...p.!.p...p

; ======================================================================
; CODIGO 0x70d2..0x70e5  (19 bytes)
; ======================================================================


L_70D2:
	exx			;70d2
	ld hl,070e5h		;70d3
	exx			;70d6
	ld hl,0e466h		;70d7
	ld a,(hl)			;70da
	and 00fh		;70db
	inc (hl)			;70dd
	exx			;70de
	call 04a6eh		;70df
	exx			;70e2
	ld c,a			;70e3
	ret			;70e4

; ----------------------------------------------------------------------
; DATOS leido_70E5: 16 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (16 bytes)
;   0x70e5..0x70f5  (16 bytes)
DATA_leido_70E5:
	defb 000h,000h,000h,001h,000h,000h,000h,001h,000h,000h,000h,002h,000h,000h,000h,001h	; 70e5  ................

; ----------------------------------------------------------------------
; DATOS sin identificar  0x70f5..0x7105  (16 bytes)
DATA_70F5:
	defb 000h,000h,001h,001h,000h,000h,001h,001h,000h,000h,001h,002h,000h,000h,001h,001h	; 70f5  ................

; ======================================================================
; CODIGO 0x7105..0x7158  (83 bytes)
; ======================================================================


L_7105:
	ld a,(0e361h)		;7105   ; lee la fase (1 a 11)
	cp 004h		;7108
	ret z			;710a
	ld a,(0e420h)		;710b
	and a			;710e
	ret z			;710f
	ld a,0f8h		;7110
	ld (0e428h),a		;7112
L_7115:
	call L_711B		;7115
	jr z,L_7115		;7118
	ret			;711a
L_711B:
	call 0416bh		;711b   ; bancos_6_7: pone los bancos 6-7 (y sus copias en 0xF0F1-3)
	ld a,(0e468h)		;711e
	ld hl,08000h		;7121
	call L_6DCD		;7124
	call 04148h		;7127   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ret nz			;712a
	ld hl,0e468h		;712b
	inc (hl)			;712e
	ld b,c			;712f
	ld a,c			;7130
	and 01fh		;7131
	add a,a			;7133
	add a,a			;7134
	add a,a			;7135
	ld e,a			;7136
	ld a,(0e428h)		;7137
	ld d,a			;713a
	xor a			;713b
	bit 6,c		;713c
	jr z,L_7141		;713e
	inc a			;7140
L_7141:
	ld c,a			;7141
	call L_714A		;7142
	call L_765B		;7145
	xor a			;7148
	ret			;7149
L_714A:
	exx			;714a
	ld a,(0e361h)		;714b   ; lee la fase (1 a 11)
	ld e,a			;714e
	ld d,000h		;714f
	ld hl,l7157h		;7151
	add hl,de			;7154
	ld a,(hl)			;7155
	exx			;7156
L_7157:
	ret			;7157

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7158..0x7159  (1 bytes)
DATA_7158:
	defb 00dh	; 7158

; ----------------------------------------------------------------------
; DATOS leido_7159: 9 bytes que lee p01:7155 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 3 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p01:7155 (9
;   bytes)
;   0x7159..0x7162  (9 bytes)
DATA_leido_7159:
	defb 028h,00dh,00dh,00dh,00dh,02fh,02dh,00dh,00dh	; 7159  (..../-..

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7162..0x7163  (1 bytes)
DATA_7162:
	defb 00dh	; 7162

; ======================================================================
; CODIGO 0x7163..0x71f0  (141 bytes)
; ======================================================================


L_7163:
	ld a,(0e361h)		;7163   ; lee la fase (1 a 11)
	cp 004h		;7166
	ret z			;7168
	cp 009h		;7169
	ret nc			;716b
L_716C:
	call L_718E		;716c
	jr z,L_716C		;716f
	ret c			;7171
	ld hl,0e47bh		;7172
	inc (hl)			;7175
	jr L_716C		;7176
L_7178:
	ld a,(0e361h)		;7178   ; lee la fase (1 a 11)
	cp 004h		;717b
	ret z			;717d
	ld a,(0e420h)		;717e
	and a			;7181
	ret z			;7182
	ld a,0f8h		;7183
	ld (0e428h),a		;7185
L_7188:
	call L_718E		;7188
	jr z,L_7188		;718b
	ret			;718d
L_718E:
	ld a,(0e47bh)		;718e
	ld de,0a000h		;7191
	call L_71BD		;7194
	ret nz			;7197
	ld hl,0e47bh		;7198
	inc (hl)			;719b
	ld e,b			;719c
	ld l,a			;719d
	srl a		;719e
	srl a		;71a0
	and 00fh		;71a2
	ld b,a			;71a4
	ld a,(0e428h)		;71a5
	ld d,a			;71a8
	ld a,l			;71a9
	and 03fh		;71aa
	cp l			;71ac
	ld a,c			;71ad
	ld c,000h		;71ae
	jr z,L_71B8		;71b0
	inc c			;71b2
	rl l		;71b3
	jr nc,L_71B8		;71b5
	inc c			;71b7
L_71B8:
	call L_765B		;71b8
	xor a			;71bb
	ret			;71bc
L_71BD:
	call 041efh		;71bd   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
	ld l,a			;71c0
	ld h,000h		;71c1
	add hl,hl			;71c3
	add hl,hl			;71c4
	ex de,hl			;71c5
	ld a,(0e361h)		;71c6   ; lee la fase (1 a 11)
	dec a			;71c9
	call 04a5ah		;71ca   ; lee_palabra: HL = la palabra A de la tabla HL
	add hl,de			;71cd
	ld e,(hl)			;71ce
	inc hl			;71cf
	ld a,(hl)			;71d0
	cp e			;71d1
	jr nz,L_71DE		;71d2
	cp 0ffh		;71d4
	jr nz,L_71DE		;71d6
	or a			;71d8
	scf			;71d9
	call 04148h		;71da   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ret			;71dd
L_71DE:
	and 003h		;71de
	ld d,a			;71e0
	ld a,(hl)			;71e1
	inc hl			;71e2
	ld c,(hl)			;71e3
	inc hl			;71e4
	ld b,(hl)			;71e5
	call 04148h		;71e6   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld hl,(0e363h)		;71e9   ; lee la posicion del scroll (16 bits)
	and a			;71ec
	sbc hl,de		;71ed
	ret			;71ef

; ----------------------------------------------------------------------
; DATOS sin identificar  0x71f0..0x71f9  (9 bytes)
DATA_71F0:
	defb 03ah,089h,0e3h,087h,091h,0edh,044h,077h,0c9h	; 71f0  :.....Dw.

; ======================================================================
; CODIGO 0x71f9..0x723d  (68 bytes)
; ======================================================================


L_71F9:
	call L_7228		;71f9
	ld hl,0e493h		;71fc
	ld a,(hl)			;71ff
	or a			;7200
	jr z,L_7205		;7201
	dec (hl)			;7203
	ret nz			;7204
L_7205:
	ld (hl),001h		;7205
	ld hl,(0e363h)		;7207   ; lee la posicion del scroll (16 bits)
	ld de,00145h		;720a
	rst 20h			;720d
	ld d,0f0h		;720e
	jr nc,L_7214		;7210
	ld d,000h		;7212
L_7214:
	ld a,r		;7214
	and 00fh		;7216
	ld hl,0723dh		;7218
	call 04089h		;721b   ; suma_a_hl: HL = HL + A
	ld e,(hl)			;721e
	ld bc,00000h		;721f
	ld a,009h		;7222
	call L_765B		;7224
	ret			;7227
L_7228:
	ld a,(0e420h)		;7228
	or a			;722b
	ret z			;722c
	ld a,(0e363h)		;722d   ; lee la posicion del scroll (16 bits)
	sub 03ch		;7230
	neg		;7232
	add a,020h		;7234
	add a,a			;7236
	add a,a			;7237
	add a,a			;7238
	ld (0e495h),a		;7239
	ret			;723c

; ----------------------------------------------------------------------
; DATOS tabla_723D: tabla que se lee desde HL = 0x723D con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:7218 (16 bytes)
;   0x723d..0x724d  (16 bytes)
DATA_tabla_723D:
	defb 018h,020h,028h,030h,038h,040h,020h,028h,080h,088h,068h,070h,078h,080h,088h,090h	; 723d  . (08@ (..hpx...

; ======================================================================
; CODIGO 0x724d..0x72d3  (134 bytes)
; ======================================================================


L_724D:
	ret			;724d
L_724E:
	ld hl,0e48eh		;724e
	ld a,(hl)			;7251
	or a			;7252
	jr z,L_7257		;7253
	dec (hl)			;7255
	ret nz			;7256
L_7257:
	ld (hl),060h		;7257
	ld a,r		;7259
	and 007h		;725b
	ld hl,073c5h		;725d
	call 04a6eh		;7260
	ld e,a			;7263
	ld a,r		;7264
	and 007h		;7266
	ld hl,0743ah		;7268
	call 04a6eh		;726b
	ld c,a			;726e
	or a			;726f
	ld d,0f0h		;7270
	ld b,000h		;7272
	jr z,L_7278		;7274
	ld b,00fh		;7276
L_7278:
	ld a,00fh		;7278
	call L_765B		;727a
	ret			;727d
L_727E:
	ld b,001h		;727e
	jr L_7284		;7280
L_7282:
	ld b,000h		;7282
L_7284:
	ld hl,0e47dh		;7284
	ld a,(hl)			;7287
	and a			;7288
	jr z,L_72B8		;7289
	inc hl			;728b
	dec (hl)			;728c
	ret nz			;728d
	ld a,(0e389h)		;728e
	add a,a			;7291
	add a,a			;7292
	sub 070h		;7293
	neg		;7295
	ld (hl),a			;7297
	dec hl			;7298
	dec (hl)			;7299
	ld a,(hl)			;729a
	and 007h		;729b
	push af			;729d
	call L_72BE		;729e
	ld hl,072d3h		;72a1
	jr c,L_72A9		;72a4
	ld hl,072dbh		;72a6
L_72A9:
	pop af			;72a9
	call 04a6eh		;72aa
	ld e,a			;72ad
	ld d,000h		;72ae
	call L_70D2		;72b0
	ld a,00ah		;72b3
	jp L_765B		;72b5
L_72B8:
	ld (hl),008h		;72b8
	inc hl			;72ba
	ld (hl),001h		;72bb
	ret			;72bd
L_72BE:
	ld a,(0e361h)		;72be   ; lee la fase (1 a 11)
	sub 009h		;72c1
	scf			;72c3
	ret nz			;72c4
	ld hl,(0e363h)		;72c5   ; lee la posicion del scroll (16 bits)
	ld de,0019ch		;72c8
	rst 20h			;72cb
	ret c			;72cc
	ld de,001bch		;72cd
	rst 20h			;72d0
	ccf			;72d1
	ret			;72d2

; ----------------------------------------------------------------------
; DATOS tabla_72D3: tabla que se lee desde HL = 0x72D3 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:72A1 (8 bytes)
;   0x72d3..0x72db  (8 bytes)
DATA_tabla_72D3:
	defb 098h,008h,098h,008h,098h,008h,008h,098h	; 72d3  ........

; ----------------------------------------------------------------------
; DATOS tabla_72DB: tabla que se lee desde HL = 0x72DB con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:72A6 (8 bytes)
;   0x72db..0x72e3  (8 bytes)
DATA_tabla_72DB:
	defb 050h,040h,050h,040h,050h,040h,040h,050h	; 72db  P@P@P@@P

; ======================================================================
; CODIGO 0x72e3..0x7344  (97 bytes)
; ======================================================================


L_72E3:
	ld hl,0e481h		;72e3
	ld a,(hl)			;72e6
	or a			;72e7
	jr nz,L_72EC		;72e8
	ld (hl),004h		;72ea
L_72EC:
	dec (hl)			;72ec
	ret nz			;72ed
	call L_72F8		;72ee
	ld c,000h		;72f1
	ld a,007h		;72f3
	jp L_765B		;72f5
L_72F8:
	ld a,r		;72f8
	ld b,a			;72fa
	and 003h		;72fb
	jr z,L_7305		;72fd
	sla b		;72ff
	ld d,b			;7301
	ld e,001h		;7302
	ret			;7304
L_7305:
	res 7,b		;7305
	ld e,b			;7307
	ld d,0f6h		;7308
	ret			;730a
L_730B:
	ld hl,0e483h		;730b
	ld a,(hl)			;730e
	and a			;730f
	jr z,L_7335		;7310
	inc hl			;7312
	dec (hl)			;7313
	ret nz			;7314
	ld a,(0e389h)		;7315
	add a,a			;7318
	add a,a			;7319
	sub 090h		;731a
	neg		;731c
	ld (hl),a			;731e
	dec hl			;731f
	dec (hl)			;7320
	ld a,(hl)			;7321
	and 007h		;7322
	ld hl,07344h		;7324
	call 04a6eh		;7327
	ld e,a			;732a
	ld d,000h		;732b
	call L_733B		;732d
	ld a,021h		;7330
	jp L_765B		;7332
L_7335:
	ld (hl),008h		;7335
	inc hl			;7337
	ld (hl),001h		;7338
	ret			;733a
L_733B:
	ld c,001h		;733b
	ld a,r		;733d
	and 003h		;733f
	ret z			;7341
	dec c			;7342
	ret			;7343

; ----------------------------------------------------------------------
; DATOS tabla_7344: tabla que se lee desde HL = 0x7344 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:7324 (6 bytes)
;   0x7344..0x734a  (6 bytes)
DATA_tabla_7344:
	defb 010h,08ch,010h,010h,08ch,010h	; 7344

; ----------------------------------------------------------------------
; DATOS leido_734A: 2 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (2 bytes)
;   0x734a..0x734c  (2 bytes)
DATA_leido_734A:
	defb 08ch,08ch	; 734a

; ======================================================================
; CODIGO 0x734c..0x7376  (42 bytes)
; ======================================================================


L_734C:
	ld c,001h		;734c
	ld a,(0e49dh)		;734e
	rra			;7351
	jr c,L_7356		;7352
L_7354:
	ld c,000h		;7354
L_7356:
	ld hl,0e485h		;7356
	ld a,(hl)			;7359
	or a			;735a
	jr nz,L_735F		;735b
	ld (hl),00ah		;735d
L_735F:
	dec (hl)			;735f
	ret nz			;7360
	call L_7369		;7361
	ld a,01ch		;7364
	jp L_765B		;7366
L_7369:
	ld hl,0e49dh		;7369
	inc (hl)			;736c
	ld a,(hl)			;736d
	and 00fh		;736e
	ld de,07376h		;7370
	jp 04a65h		;7373

; ----------------------------------------------------------------------
; DATOS resto_7376: lo apuntan con el banco puesto p01:7370 (0x7376); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p01:7370 (32 bytes)
;   0x7376..0x7396  (32 bytes)
DATA_resto_7376:
	defb 008h,010h,098h,010h,020h,030h,048h,030h,070h,048h,048h,060h,030h,080h,098h,080h	; 7376  .... 0H0pHH`0...
	defb 008h,090h,028h,0a8h,080h,0a8h,018h,0c0h,060h,0c0h,008h,0d8h,008h,0f0h,098h,0f0h	; 7386  ..(.....`.......

; ======================================================================
; CODIGO 0x7396..0x73c5  (47 bytes)
; ======================================================================


L_7396:
	ret			;7396
L_7397:
	ld hl,0e48ah		;7397
	ld a,(hl)			;739a
	inc hl			;739b
	and a			;739c
	jr nz,L_73A1		;739d
	ld (hl),001h		;739f
L_73A1:
	dec (hl)			;73a1
	ret nz			;73a2
	ld a,(0e389h)		;73a3
	cp 00ah		;73a6
	ld a,004h		;73a8
	jr nc,L_73AE		;73aa
	ld a,006h		;73ac
L_73AE:
	ld (hl),a			;73ae
	dec hl			;73af
	inc (hl)			;73b0
	ld a,(hl)			;73b1
	and 007h		;73b2
	ld e,a			;73b4
	ld d,000h		;73b5
	ld hl,073c5h		;73b7
	add hl,de			;73ba
	ld e,(hl)			;73bb
	ld d,0f7h		;73bc
	ld c,000h		;73be
	ld a,002h		;73c0
	jp L_765B		;73c2

; ----------------------------------------------------------------------
; DATOS tabla_73C5: tabla que se lee desde HL = 0x73C5 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:725D, p01:73B7 (8 bytes)
;   0x73c5..0x73cd  (8 bytes)
DATA_tabla_73C5:
	defb 010h,078h,038h,058h,028h,090h,048h,068h	; 73c5  .x8X(.Hh

; ======================================================================
; CODIGO 0x73cd..0x743a  (109 bytes)
; ======================================================================


L_73CD:
	ld a,(0e420h)		;73cd
	or a			;73d0
	ret z			;73d1
	ld a,(0e363h)		;73d2   ; lee la posicion del scroll (16 bits)
	sub 002h		;73d5
	ld b,a			;73d7
	and 003h		;73d8
	ret nz			;73da
	bit 2,b		;73db
	ret nz			;73dd
	ld b,000h		;73de
	call L_73E5		;73e0
	ld b,001h		;73e3
L_73E5:
	ld de,0f850h		;73e5
	ld c,000h		;73e8
	ld a,027h		;73ea
	jp L_765B		;73ec
L_73EF:
	ld hl,0e497h		;73ef
	ld a,(hl)			;73f2
	and a			;73f3
	jr z,L_7425		;73f4
	inc hl			;73f6
	dec (hl)			;73f7
	ret nz			;73f8
	ld a,(0e389h)		;73f9
	sub 030h		;73fc
	neg		;73fe
	ld (hl),a			;7400
	dec hl			;7401
	dec (hl)			;7402
	ld a,(hl)			;7403
	and 007h		;7404
	ld hl,07442h		;7406
	ld e,a			;7409
	ld d,000h		;740a
	add hl,de			;740c
	ld e,(hl)			;740d
	ld d,0f7h		;740e
	ld b,003h		;7410
L_7412:
	push bc			;7412
	push de			;7413
	call L_742B		;7414
	ld a,006h		;7417
	call L_765B		;7419
	pop de			;741c
	pop bc			;741d
	ld a,e			;741e
	add a,018h		;741f
	ld e,a			;7421
	djnz L_7412		;7422
	ret			;7424
L_7425:
	ld (hl),008h		;7425
	inc hl			;7427
	ld (hl),010h		;7428
	ret			;742a
L_742B:
	ld hl,0e496h		;742b
	inc (hl)			;742e
	ld a,(hl)			;742f
	and 007h		;7430
	ld hl,0743ah		;7432
	call 04089h		;7435   ; suma_a_hl: HL = HL + A
	ld c,(hl)			;7438
	ret			;7439

; ----------------------------------------------------------------------
; DATOS tabla_743A: tabla que se lee desde HL = 0x743A con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:7268, p01:7432 (8 bytes)
;   0x743a..0x7442  (8 bytes)
DATA_tabla_743A:
	defb 001h,000h,000h,001h,000h,001h,000h,000h	; 743a  ........

; ----------------------------------------------------------------------
; DATOS tabla_7442: tabla que se lee desde HL = 0x7442 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:7406 (8 bytes)
;   0x7442..0x744a  (8 bytes)
DATA_tabla_7442:
	defb 020h,060h,030h,050h,038h,060h,025h,055h	; 7442   `0P8`%U

; ======================================================================
; CODIGO 0x744a..0x747c  (50 bytes)
; ======================================================================


L_744A:
	ld ix,0e800h		;744a
	ld b,00ch		;744e
L_7450:
	push bc			;7450
	ld a,(ix+000h)		;7451
	or a			;7454
	call nz,L_7461		;7455
	ld bc,00040h		;7458
	add ix,bc		;745b
	pop bc			;745d
	djnz L_7450		;745e
	ret			;7460
L_7461:
	call L_7475		;7461
	ld a,(ix+000h)		;7464
	or a			;7467
	ret z			;7468
	call L_75B8		;7469
	ret c			;746c
	call L_7562		;746d
	ret nc			;7470
	call L_7577		;7471
	ret			;7474
L_7475:
	ld a,(ix+000h)		;7475
	dec a			;7478
	call 04093h		;7479   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_747C: 74 destinos del despachador p00:4093 (call en p01:7479, el
;   indice en A): 96A0, AD3A, 754E, BAE3, 8B9A, A295, 9BD9, 7549, 7544, 9334,
;   BAC1, 9E93, 90E5, A0E5, 8B2C, 755D, BAEC, A207, 9215, 99DF, 7553, 7558,
;   A609, 9766, A9E5, A831, 7511, AB6B, AD3A, AFD6, B0CA, BDE1, 9FC6, B72E,
;   BA20, BAC1, 8EFE, 753F, B516, 95E5, 9D8B, 752A, A649, 7510, B315, 8919,
;   B29A, B37D, 9F16, 7510, B6FF, 9A81, 9AEE, A1D2, AC49, 7516, 86B9, 7532,
;   86B9, 7525, 8FEF, 7510, 7510, B285, B48A, 7510, 7520, 8FF3, BAC1, B1E7,
;   A9F3, B847, 751B, 90E5; lo leen p01:7479 (148 bytes)
;   0x747c..0x7510  (148 bytes)
DATA_tabla_747C:
	defw 096a0h,0ad3ah,0754eh,0bae3h,08b9ah,0a295h,09bd9h,07549h	; 747c
	defw 07544h,09334h,0bac1h,09e93h,090e5h,0a0e5h,08b2ch,0755dh	; 748c
	defw 0baech,0a207h,09215h,099dfh,07553h,07558h,0a609h,09766h	; 749c
	defw 0a9e5h,0a831h,07511h,0ab6bh,0ad3ah,0afd6h,0b0cah,0bde1h	; 74ac
	defw 09fc6h,0b72eh,0ba20h,0bac1h,08efeh,0753fh,0b516h,095e5h	; 74bc
	defw 09d8bh,0752ah,0a649h,07510h,0b315h,08919h,0b29ah,0b37dh	; 74cc
	defw 09f16h,07510h,0b6ffh,09a81h,09aeeh,0a1d2h,0ac49h,07516h	; 74dc
	defw 086b9h,07532h,086b9h,07525h,08fefh,07510h,07510h,0b285h	; 74ec
	defw 0b48ah,07510h,07520h,08ff3h,0bac1h,0b1e7h,0a9f3h,0b847h	; 74fc
	defw 0751bh,090e5h	; 750c  -> L_751B 0x90e5

; ======================================================================
; CODIGO 0x7510..0x775c  (588 bytes)
; ======================================================================


L_7510:
	ret			;7510
L_7511:
	ld hl,0ae7dh		;7511
	jr L_752D		;7514
L_7516:
	ld hl,0a20eh		;7516
	jr L_752D		;7519
L_751B:
	ld hl,0b6bfh		;751b
	jr L_752D		;751e
L_7520:
	ld hl,0b4f6h		;7520
	jr L_752D		;7523
L_7525:
	ld hl,0a4e7h		;7525
	jr L_752D		;7528
L_752A:
	ld hl,0b20bh		;752a
L_752D:
	call 0415bh		;752d   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	jr L_7538		;7530
L_7532:
	ld hl,0afech		;7532
L_7535:
	call 041efh		;7535   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
L_7538:
	call L_753E		;7538
	jp 04148h		;753b   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_753E:
	jp (hl)			;753e
L_753F:
	ld hl,0b274h		;753f
	jr L_7535		;7542
L_7544:
	ld hl,0b1f7h		;7544
	jr L_7535		;7547
L_7549:
	ld hl,0aa3dh		;7549
	jr L_7535		;754c
L_754E:
	ld hl,0aca4h		;754e
	jr L_7535		;7551
L_7553:
	ld hl,0acedh		;7553
	jr L_7535		;7556
L_7558:
	ld hl,0ada8h		;7558
	jr L_7535		;755b
L_755D:
	ld hl,0af79h		;755d
	jr L_7535		;7560
L_7562:
	bit 2,(ix+010h)		;7562
	jr z,L_756E		;7566
	call L_758F		;7568
	ret c			;756b
	jr L_7572		;756c
L_756E:
	call L_75A1		;756e
	ret c			;7571
L_7572:
	call L_75D1		;7572
	or a			;7575
	ret			;7576
L_7577:
	ld a,(ix+000h)		;7577
	cp 006h		;757a
	jp z,0a2ddh		;757c
	cp 02ah		;757f
	ret nz			;7581
	ld a,(ix+004h)		;7582
	ld (ix+034h),a		;7585
	ld a,(ix+006h)		;7588
	ld (ix+035h),a		;758b
	ret			;758e
L_758F:
	push ix		;758f
	pop hl			;7591
	inc l			;7592
	inc l			;7593
	inc l			;7594
	ld d,h			;7595
	ld e,l			;7596
	inc e			;7597
	inc e			;7598
	inc e			;7599
	inc e			;759a
	call L_75AD		;759b
	call L_75AD		;759e
L_75A1:
	ld a,(ix+004h)		;75a1
	cp 0a8h		;75a4
	ret nc			;75a6
	ld a,(ix+006h)		;75a7
	cp 0f9h		;75aa
	ret			;75ac
L_75AD:
	ld a,(de)			;75ad
	add a,(hl)			;75ae
	ld (hl),a			;75af
	inc l			;75b0
	inc e			;75b1
	ld a,(de)			;75b2
	adc a,(hl)			;75b3
	ld (hl),a			;75b4
	inc l			;75b5
	inc e			;75b6
	ret			;75b7
L_75B8:
	ld a,(ix+010h)		;75b8
	and 008h		;75bb
	ret z			;75bd
	ld a,(0e420h)		;75be
	or a			;75c1
	ret z			;75c2
	ld a,(ix+006h)		;75c3
	sub 008h		;75c6
	ld (ix+006h),a		;75c8
	ret nc			;75cb
	call L_75D1		;75cc
	scf			;75cf
	ret			;75d0
L_75D1:
	ld hl,0e462h		;75d1
	ld a,(hl)			;75d4
	or a			;75d5
	jr z,L_75D9		;75d6
	dec (hl)			;75d8
L_75D9:
	call L_7616		;75d9
	ld a,(ix+000h)		;75dc
	cp 02dh		;75df
	ld a,(ix+00bh)		;75e1
	jr z,L_75EA		;75e4
	bit 6,a		;75e6
	jr nz,L_75F8		;75e8
L_75EA:
	and 03fh		;75ea
	ld hl,0e465h		;75ec
	sub (hl)			;75ef
	neg		;75f0
	bit 7,a		;75f2
	jr z,L_75F7		;75f4
	xor a			;75f6
L_75F7:
	ld (hl),a			;75f7
L_75F8:
	ld (ix+000h),000h		;75f8
	xor a			;75fc
	ld (ix+00bh),a		;75fd
	ld (ix+010h),a		;7600
	bit 0,(ix+016h)		;7603
	ret z			;7607
	ld a,(ix+017h)		;7608
	call L_6E0F		;760b
	ret c			;760e
	inc l			;760f
	dec (hl)			;7610
	ret nz			;7611
	dec l			;7612
	ld (hl),000h		;7613
	ret			;7615
L_7616:
	ld a,(ix+000h)		;7616
	cp 018h		;7619
	ret nz			;761b
	ld a,(ix+001h)		;761c
	or a			;761f
	ret z			;7620
	xor a			;7621
	ld (0e49ah),a		;7622
	ret			;7625
L_7626:
	call L_7674		;7626
	push ix		;7629
	ld ix,0eac0h		;762b
	ld a,(ix+000h)		;762f
	or a			;7632
	call nz,L_75D1		;7633
	call L_768B		;7636
	pop ix		;7639
	ret			;763b
L_763C:
	call L_7674		;763c
	push ix		;763f
	call L_768B		;7641
	pop ix		;7644
	ret			;7646
L_7647:
	push ix		;7647
	call L_765B		;7649
	pop ix		;764c
	ret			;764e
L_764F:
	call 041f7h		;764f   ; guarda_reparto: guarda las tres copias del mapper en la pila de 0xF0D0
	call 04148h		;7652   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_7647		;7655
	jp 04213h		;7658   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_765B:
	call L_7674		;765b
	ld a,(0e31fh)		;765e
	or a			;7661
	ret nz			;7662
	ld hl,0e800h		;7663
	ld b,00ch		;7666
	ld de,00040h		;7668
	xor a			;766b
L_766C:
	cp (hl)			;766c
	jr z,L_7688		;766d
	add hl,de			;766f
	djnz L_766C		;7670
	xor a			;7672
	ret			;7673
L_7674:
	ld (0e478h),de		;7674
	ld (0e460h),a		;7678
	ld a,b			;767b
	ld (0e46ah),a		;767c
	xor a			;767f
	ld (0e463h),a		;7680
	ld a,c			;7683
	ld (0e461h),a		;7684
	ret			;7687
L_7688:
	push hl			;7688
	pop ix		;7689
L_768B:
	ld a,(0e460h)		;768b
	ld l,a			;768e
	ld h,000h		;768f
	ld e,l			;7691
	ld d,h			;7692
	add hl,hl			;7693
	add hl,hl			;7694
	add hl,hl			;7695
	or a			;7696
	sbc hl,de		;7697
	ld de,0a489h		;7699
	add hl,de			;769c
	ex de,hl			;769d
	call 041ech		;769e   ; guarda_y_bancos_19: guarda el reparto en la pila y pone el 19 (y sus copias en 0xF0F1-3)
	ld a,(de)			;76a1
	bit 6,a		;76a2
	jr nz,L_76B9		;76a4
	and 03fh		;76a6
	ld b,a			;76a8
	ld a,(0e465h)		;76a9
	add a,b			;76ac
	cp 00dh		;76ad
	jr c,L_76B6		;76af
	xor a			;76b1
	call 04213h		;76b2   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
	ret			;76b5
L_76B6:
	ld (0e465h),a		;76b6
L_76B9:
	push de			;76b9
	ld de,(0e478h)		;76ba
	exx			;76be
	ld hl,0e462h		;76bf
	inc (hl)			;76c2
	exx			;76c3
	ld a,(0e460h)		;76c4
	ld (0e463h),a		;76c7
	ld (ix+000h),a		;76ca
	xor a			;76cd
	ld (ix+001h),a		;76ce
	ld (ix+002h),a		;76d1
	ld (ix+003h),a		;76d4
	ld (ix+004h),e		;76d7
	ld (ix+005h),a		;76da
	ld (ix+006h),d		;76dd
	ld (ix+020h),a		;76e0
	pop de			;76e3
	ld a,(de)			;76e4
	inc de			;76e5
	ld (ix+00bh),a		;76e6
	ld a,(0e461h)		;76e9
	ld (ix+00ch),a		;76ec
	ld a,(de)			;76ef
	inc de			;76f0
	ld (ix+00dh),a		;76f1
	ld a,(de)			;76f4
	inc de			;76f5
	ld (ix+00eh),a		;76f6
	ld a,(de)			;76f9
	inc de			;76fa
	ld (ix+00fh),a		;76fb
	ld (ix+010h),007h		;76fe
	call L_7844		;7702
	ld (ix+015h),a		;7705
	ld a,(0e460h)		;7708
	cp 03dh		;770b
	jr z,L_772C		;770d
	ld (ix+016h),000h		;770f
	ld a,(0e460h)		;7713
	sub 013h		;7716
	jr c,L_772C		;7718
	sub 004h		;771a
	jr nc,L_772C		;771c
	ld (ix+016h),001h		;771e
	ld (ix+01fh),000h		;7722
	ld a,(0e506h)		;7726
	ld (ix+017h),a		;7729
L_772C:
	ld a,(0e46ah)		;772c
	ld (ix+01fh),a		;772f
	ld (ix+020h),000h		;7732
	ld a,(de)			;7736
	inc de			;7737
	ld (ix+030h),a		;7738
	ld a,(de)			;773b
	inc de			;773c
	ld (ix+031h),a		;773d
	ld a,(de)			;7740
	ld (ix+032h),a		;7741
	ld a,(0e461h)		;7744
	and a			;7747
	jr z,L_774E		;7748
	ld (ix+031h),008h		;774a
L_774E:
	call 04213h		;774e   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
	ld a,(0e460h)		;7751
	ld hl,l775ah		;7754
	call 04094h		;7757
L_775A:
	scf			;775a
	ret			;775b

; ----------------------------------------------------------------------
; DATOS leido_775C: 148 bytes que leen p00:4098, p00:409A al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 28 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p00:4098, p00:409A (148 bytes)
;   0x775c..0x77f0  (148 bytes)
DATA_leido_775C:
	defb 093h,096h,05dh,0adh,030h,078h,0ech,0a6h,07ch,08bh,069h,0a2h,0b2h,09bh,02bh,078h	; 775c  ..].0x..|.i...+x
	defb 021h,078h,0feh,092h,005h,078h,06fh,09eh,081h,090h,0c1h,0a0h,018h,08bh,03fh,078h	; 776c  !x...xo.......?x
	defb 0a0h,0a6h,0edh,0a1h,0d5h,091h,0afh,099h,035h,078h,03ah,078h,0dah,0a5h,04dh,097h	; 777c  ........5x:x..M.
	defb 0abh,0a9h,022h,0a8h,0f1h,077h,059h,0abh,0eah,0ach,083h,0afh,09eh,0b0h,0d4h,0bdh	; 778c  .."..wY.........
	defb 08eh,09fh,002h,0b7h,0f0h,0b9h,081h,08dh,0d5h,08eh,01ch,078h,0f9h,0b4h,0d9h,095h	; 779c  ...........x....
	defb 06ch,09dh,00ah,078h,017h,0a6h,0f0h,077h,0e1h,0b2h,0f4h,088h,091h,0b2h,062h,0b3h	; 77ac  l..x...w......b.
	defb 0edh,09eh,0f0h,077h,0ebh,0b6h,061h,09ah,0b8h,09ah,0bfh,0a1h,011h,0ach,0fbh,077h	; 77bc  ...w..a........w
	defb 089h,086h,026h,078h,086h,086h,000h,078h,0c0h,08fh,067h,090h,067h,090h,0a2h,0a9h	; 77cc  ..&x...x..g.g...
	defb 067h,0b4h,0f0h,077h,0f6h,077h,0d1h,08fh,081h,08dh,0deh,0b1h,04dh,090h,0fdh,0b7h	; 77dc  g..w.w......M...
	defb 095h,0b6h,0abh,0a9h	; 77ec

; ----------------------------------------------------------------------
; DATOS sin identificar  0x77f0..0x77f1  (1 bytes)
DATA_77F0:
	defb 0c9h	; 77f0

; ======================================================================
; CODIGO 0x77f1..0x77f6  (5 bytes)
; ======================================================================


L_77F1:
	ld hl,0ae4ah		;77f1
	jr $+25		;77f4

; ----------------------------------------------------------------------
; DATOS sin identificar  0x77f6..0x7805  (15 bytes)
DATA_77F6:
	defb 021h,0e1h,0b4h,018h,012h,021h,0fch,0a1h,018h,00dh,021h,0adh,0a4h,018h,008h	; 77f6  !....!....!....

; ======================================================================
; CODIGO 0x7805..0x782b  (38 bytes)
; ======================================================================


L_7805:
	ld hl,0bebeh		;7805
	jr L_780D		;7808
L_780A:
	ld hl,0b1ebh		;780a
L_780D:
	call 0415bh		;780d   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
L_7810:
	jr L_7815		;7810
L_7812:
	call 041efh		;7812   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
L_7815:
	call L_781B		;7815
	jp 04148h		;7818   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_781B:
	jp (hl)			;781b
L_781C:
	ld hl,0b222h		;781c
	jr L_7812		;781f
L_7821:
	ld hl,0b1d2h		;7821
	jr L_7812		;7824
L_7826:
	ld hl,0af95h		;7826
	jr L_7812		;7829

; ----------------------------------------------------------------------
; DATOS sin identificar  0x782b..0x7830  (5 bytes)
DATA_782B:
	defb 021h,031h,0aah,018h,0e2h	; 782b

; ======================================================================
; CODIGO 0x7830..0x7855  (37 bytes)
; ======================================================================


L_7830:
	ld hl,0ac5dh		;7830
	jr $-33		;7833
L_7835:
	ld hl,0acc1h		;7835
	jr $-38		;7838
L_783A:
	ld hl,0ad87h		;783a
	jr $-43		;783d
L_783F:
	ld hl,0af57h		;783f
	jr $-48		;7842
L_7844:
	push hl			;7844
	ld a,(0e389h)		;7845
	ld hl,07855h		;7848
	call 04089h		;784b   ; suma_a_hl: HL = HL + A
	ld a,r		;784e
	and 007h		;7850
	add a,(hl)			;7852
	pop hl			;7853
	ret			;7854

; ----------------------------------------------------------------------
; DATOS tabla_7855: tabla que se lee desde HL = 0x7855 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:7848 (16 bytes)
;   0x7855..0x7865  (16 bytes)
DATA_tabla_7855:
	defb 068h,060h,048h,040h,038h,030h,028h,024h,020h,01ch,01ah,018h,014h,010h,00eh,00ch	; 7855  h`H@80($ .......

; ======================================================================
; CODIGO 0x7865..0x787b  (22 bytes)
; ======================================================================


L_7865:
	ld e,(ix+004h)		;7865
	ld d,(ix+006h)		;7868
	call L_6397		;786b
L_786E:
	ld de,(0e472h)		;786e
	call L_78AC		;7872
	ld de,(0e474h)		;7875
	jr $+58		;7879

; ----------------------------------------------------------------------
; DATOS sin identificar  0x787b..0x7888  (13 bytes)
DATA_787B:
	defb 0ddh,05eh,004h,0ddh,056h,006h,0cdh,08bh,063h,018h,0e8h,03eh,080h	; 787b  .^..V...c..>.

; ======================================================================
; CODIGO 0x7888..0x78c1  (57 bytes)
; ======================================================================


L_7888:
	ld e,(ix+004h)		;7888
	ld d,(ix+006h)		;788b
	ld (0e46eh),a		;788e
	ld a,h			;7891
	ld (0ef80h),a		;7892
	ld a,l			;7895
	ld (0ef81h),a		;7896
	call L_640B		;7899
	ld d,001h		;789c
	call L_639F		;789e
	ld de,(0e474h)		;78a1
	call L_78B3		;78a5
	ld de,(0e472h)		;78a8
L_78AC:
	ld (ix+007h),e		;78ac
	ld (ix+008h),d		;78af
	ret			;78b2
L_78B3:
	ld (ix+009h),e		;78b3
	ld (ix+00ah),d		;78b6
	ret			;78b9
L_78BA:
	ld e,(ix+007h)		;78ba
	ld d,(ix+008h)		;78bd
	ret			;78c0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x78c1..0x78c8  (7 bytes)
DATA_78C1:
	defb 0ddh,05eh,009h,0ddh,056h,00ah,0c9h	; 78c1

; ======================================================================
; CODIGO 0x78c8..0x7ad4  (524 bytes)
; ======================================================================


L_78C8:
	call L_78D2		;78c8
	jr $-31		;78cb
L_78CD:
	ld d,000h		;78cd
	ld e,d			;78cf
	jr $-36		;78d0
L_78D2:
	ld d,000h		;78d2
	ld e,d			;78d4
	jr $-34		;78d5
L_78D7:
	call L_78B3		;78d7
	ex de,hl			;78da
	jr $-47		;78db
L_78DD:
	ld e,(ix+007h)		;78dd
	ld d,(ix+008h)		;78e0
	call 04a75h		;78e3
	ld (ix+007h),e		;78e6
	ld (ix+008h),d		;78e9
	ret			;78ec
L_78ED:
	ld e,(ix+009h)		;78ed
	ld d,(ix+00ah)		;78f0
	call 04a75h		;78f3
	ld (ix+009h),e		;78f6
	ld (ix+00ah),d		;78f9
	ret			;78fc
L_78FD:
	ld de,00010h		;78fd
	exx			;7900
	ld ix,0eb00h		;7901
	ld de,0ef58h		;7905
	ld b,00ah		;7908
L_790A:
	ld a,(ix+000h)		;790a
	and a			;790d
	jr z,L_792B		;790e
	ld a,(ix+004h)		;7910
	ld (de),a			;7913
	inc e			;7914
	ld a,(ix+006h)		;7915
	ld (de),a			;7918
	inc e			;7919
	ld a,(ix+00bh)		;791a
	ld (de),a			;791d
	inc e			;791e
	ld a,(ix+00ch)		;791f
	ld (de),a			;7922
	inc e			;7923
L_7924:
	exx			;7924
	add ix,de		;7925
	exx			;7927
	djnz L_790A		;7928
	ret			;792a
L_792B:
	ld a,0e0h		;792b
	ld (de),a			;792d
	inc e			;792e
	inc e			;792f
	inc e			;7930
	inc e			;7931
	jp L_7924		;7932
L_7935:
	call L_7939		;7935
	ret			;7938
L_7939:
	call L_7963		;7939
	ld ix,0e800h		;793c
	ld de,0ef28h		;7940
	ld b,00ch		;7943
L_7945:
	push bc			;7945
	ld a,(ix+000h)		;7946
	or a			;7949
	jr z,L_7958		;794a
	bit 7,(ix+00bh)		;794c
	jr z,L_7958		;7950
	call L_7972		;7952
	call L_79C3		;7955
L_7958:
	exx			;7958
	ld de,00040h		;7959
	add ix,de		;795c
	exx			;795e
	pop bc			;795f
	djnz L_7945		;7960
	ret			;7962
L_7963:
	ld de,0ef28h		;7963
	ld b,00ch		;7966
	ld a,0e0h		;7968
L_796A:
	ld (de),a			;796a
	inc e			;796b
	inc e			;796c
	inc e			;796d
	inc e			;796e
	djnz L_796A		;796f
	ret			;7971
L_7972:
	ld a,(ix+00bh)		;7972
	bit 6,a		;7975
	ret nz			;7977
	and 03fh		;7978
	ld b,a			;797a
	ret z			;797b
	ld a,(ix+004h)		;797c
	ld (de),a			;797f
	inc e			;7980
	ld a,(ix+006h)		;7981
	ld (de),a			;7984
	inc e			;7985
	ld a,(ix+030h)		;7986
	ld (de),a			;7989
	inc e			;798a
	ld a,(ix+031h)		;798b
	ld (de),a			;798e
	inc e			;798f
	dec b			;7990
	ret z			;7991
	push ix		;7992
	pop hl			;7994
	ld a,034h		;7995
	add a,l			;7997
	ld l,a			;7998
	jr nc,L_799C		;7999
	inc h			;799b
L_799C:
	ld a,b			;799c
	add a,a			;799d
	add a,a			;799e
	ld c,a			;799f
	ld b,000h		;79a0
	ldir		;79a2
	ret			;79a4
L_79A5:
	push de			;79a5
	call 0415bh		;79a6   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 0a24ah		;79a9
	call 04148h		;79ac   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	pop de			;79af
	ret			;79b0
L_79B1:
	push de			;79b1
	call L_6E29		;79b2
	pop de			;79b5
	ret			;79b6
L_79B7:
	push de			;79b7
	call 0415bh		;79b8   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 0b70ah		;79bb
	call 04148h		;79be   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	pop de			;79c1
	ret			;79c2
L_79C3:
	bit 6,(ix+00bh)		;79c3
	ret z			;79c7
	ld a,(ix+000h)		;79c8
	cp 038h		;79cb
	jr z,L_79A5		;79cd
	cp 039h		;79cf
	jr z,L_79B1		;79d1
	cp 03bh		;79d3
	jr z,L_79B1		;79d5
	cp 025h		;79d7
	jr z,L_79B1		;79d9
	cp 049h		;79db
	jr z,L_79B7		;79dd
	ld a,(ix+004h)		;79df
	ld l,a			;79e2
	cp 0b8h		;79e3
	ret nc			;79e5
	ld a,(ix+006h)		;79e6
	ld h,a			;79e9
	cp 0f8h		;79ea
	ret nc			;79ec
	call 0417bh		;79ed   ; bancos_8: pone el 8 (y sus copias en 0xF0F1-3)
	push de			;79f0
	call L_79F9		;79f1
	pop de			;79f4
	call 04148h		;79f5   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ret			;79f8
L_79F9:
	push hl			;79f9
	ld de,0bd4ch		;79fa
	ld a,(ix+032h)		;79fd
	call 04a65h		;7a00
	pop hl			;7a03
	call 04a46h		;7a04
	ld (ix+011h),l		;7a07
	ld (ix+012h),h		;7a0a
	ex de,hl			;7a0d
	ld b,(ix+013h)		;7a0e
	ld c,(ix+006h)		;7a11
	xor a			;7a14
	sub c			;7a15
	jr nz,L_7A1A		;7a16
	ld a,0f8h		;7a18
L_7A1A:
	rra			;7a1a
	rra			;7a1b
	rra			;7a1c
	and 01fh		;7a1d
	ld c,(ix+014h)		;7a1f
	cp c			;7a22
	jr nc,L_7A26		;7a23
	ld c,a			;7a25
L_7A26:
	push bc			;7a26
	ld a,c			;7a27
	ld b,000h		;7a28
	ldir		;7a2a
	pop bc			;7a2c
	sub (ix+014h)		;7a2d
	jr z,L_7A39		;7a30
	neg		;7a32
	add a,l			;7a34
	ld l,a			;7a35
	jr nc,L_7A39		;7a36
	inc h			;7a38
L_7A39:
	ld a,040h		;7a39
	sub c			;7a3b
	add a,e			;7a3c
	ld e,a			;7a3d
	jr nc,L_7A41		;7a3e
	inc d			;7a40
L_7A41:
	djnz L_7A26		;7a41
	ret			;7a43
L_7A44:
	call 0415bh		;7a44   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 0b73dh		;7a47
	jp 04148h		;7a4a   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_7A4D:
	ld hl,0ede0h		;7a4d
	ld de,0ffe0h		;7a50
	ld bc,00808h		;7a53
L_7A56:
	ld a,(hl)			;7a56
	and a			;7a57
	jr nz,L_7A5E		;7a58
	dec c			;7a5a
	add hl,de			;7a5b
	djnz L_7A56		;7a5c
L_7A5E:
	ld a,c			;7a5e
	ld (0e4b1h),a		;7a5f
	ret			;7a62
L_7A63:
	ld a,(0e4b1h)		;7a63
	and a			;7a66
	ret z			;7a67
	ld b,a			;7a68
	ld ix,0ed00h		;7a69
L_7A6D:
	push bc			;7a6d
	call L_7A7A		;7a6e
	ld bc,00020h		;7a71
	add ix,bc		;7a74
	pop bc			;7a76
	djnz L_7A6D		;7a77
	ret			;7a79
L_7A7A:
	ld a,(ix+000h)		;7a7a
	and a			;7a7d
	ret z			;7a7e
	call L_7AD0		;7a7f
	ld a,(ix+000h)		;7a82
	cp 00ah		;7a85
	ret z			;7a87
	ld a,(ix+012h)		;7a88
	rla			;7a8b
	jr c,L_7AA9		;7a8c
	ld a,(ix+006h)		;7a8e
	sub 008h		;7a91
	ld b,a			;7a93
	jr c,L_7AA4		;7a94
	ld a,(0e420h)		;7a96
	and a			;7a99
	ret z			;7a9a
	bit 2,(ix+012h)		;7a9b
	ret nz			;7a9f
	ld (ix+006h),b		;7aa0
	ret			;7aa3
L_7AA4:
	ld (ix+000h),000h		;7aa4
	ret			;7aa8
L_7AA9:
	rla			;7aa9
	jr nc,L_7AB8		;7aaa
	rla			;7aac
	ld a,0c0h		;7aad
	jr nc,L_7AB3		;7aaf
	ld a,080h		;7ab1
L_7AB3:
	cp (ix+006h)		;7ab3
	jr z,L_7AA4		;7ab6
L_7AB8:
	ld a,(0e420h)		;7ab8
	and a			;7abb
	ret z			;7abc
	bit 2,(ix+012h)		;7abd
	ret nz			;7ac1
	ld a,(ix+006h)		;7ac2
	sub 008h		;7ac5
	ld (ix+006h),a		;7ac7
	ret nc			;7aca
	set 6,(ix+012h)		;7acb
	ret			;7acf
L_7AD0:
	dec a			;7ad0
	call 04093h		;7ad1   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_7AD4: 55 destinos del despachador p00:4093 (call en p01:7AD1, el
;   indice en A): 9717, 9A21, B02D, 986B, 7B64, A352, 7B5F, 7B42, 7B42, 7B48,
;   B140, B175, BCCB, 7B50, 9BEF, ADC5, 7B42, 9DED, 7B42, 7B42, B402, 7B42,
;   7B69, 7B42, 7B42, B623, 7B42, 8C9F, AA91, A941, AA3A, AC7A, AF04, ABC4,
;   9C97, 7B55, 7B42, 8C9F, 8DC5, 8E7E, 7B42, 7B5A, AB24, AB24, 8794, 8860,
;   8A40, BB1F, 7B43, 7B42, 7B42, B9C4, 7B42, BC8C, BCAA; lo leen p01:7AD1
;   (110 bytes)
;   0x7ad4..0x7b42  (110 bytes)
DATA_tabla_7AD4:
	defw 09717h,09a21h,0b02dh,0986bh,07b64h,0a352h,07b5fh,07b42h	; 7ad4
	defw 07b42h,07b48h,0b140h,0b175h,0bccbh,07b50h,09befh,0adc5h	; 7ae4
	defw 07b42h,09dedh,07b42h,07b42h,0b402h,07b42h,07b69h,07b42h	; 7af4
	defw 07b42h,0b623h,07b42h,08c9fh,0aa91h,0a941h,0aa3ah,0ac7ah	; 7b04
	defw 0af04h,0abc4h,09c97h,07b55h,07b42h,08c9fh,08dc5h,08e7eh	; 7b14
	defw 07b42h,07b5ah,0ab24h,0ab24h,08794h,08860h,08a40h,0bb1fh	; 7b24
	defw 07b43h,07b42h,07b42h,0b9c4h,07b42h,0bc8ch,0bcaah	; 7b34

; ======================================================================
; CODIGO 0x7b42..0x7b76  (52 bytes)
; ======================================================================


L_7B42:
	ret			;7b42
L_7B43:
	ld hl,0b424h		;7b43
	jr L_7B4B		;7b46
L_7B48:
	ld hl,0b23fh		;7b48
L_7B4B:
	call 0415bh		;7b4b   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	jr L_7B6F		;7b4e
L_7B50:
	ld hl,0a9a6h		;7b50
	jr L_7B6C		;7b53
L_7B55:
	ld hl,0ab34h		;7b55
	jr L_7B6C		;7b58
L_7B5A:
	ld hl,0abddh		;7b5a
	jr L_7B6C		;7b5d
L_7B5F:
	ld hl,0ac0dh		;7b5f
	jr L_7B6C		;7b62
L_7B64:
	ld hl,0ae49h		;7b64
	jr L_7B6C		;7b67
L_7B69:
	ld hl,0aed1h		;7b69
L_7B6C:
	call 041efh		;7b6c   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
L_7B6F:
	call L_7B75		;7b6f
	jp 04148h		;7b72   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_7B75:
	jp (hl)			;7b75

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7b76..0x7b98  (34 bytes)
DATA_7B76:
	defb 0ddh,021h,000h,0e8h,006h,00ch,0ddh,07eh,02fh,0a7h,020h,00eh,0ddh,07eh,000h,0a7h	; 7b76  .!.....~/. ..~..
	defb 028h,008h,0cdh,04fh,085h,030h,003h,0cdh,0d1h,075h,011h,040h,000h,0ddh,019h,010h	; 7b86  (..O.0...u.@....
	defb 0e5h,0c9h	; 7b96

; ======================================================================
; CODIGO 0x7b98..0x7c9a  (258 bytes)
; ======================================================================


L_7B98:
	ld a,(0e361h)		;7b98   ; lee la fase (1 a 11)
	cp 004h		;7b9b
	ret z			;7b9d
	call L_7BC0		;7b9e
	jr z,L_7B98		;7ba1
	ret c			;7ba3
	ld hl,0e4b0h		;7ba4
	inc (hl)			;7ba7
	jr L_7B98		;7ba8
L_7BAA:
	ld a,(0e361h)		;7baa   ; lee la fase (1 a 11)
	cp 004h		;7bad
	ret z			;7baf
	ld a,(0e420h)		;7bb0
	and a			;7bb3
	ret z			;7bb4
	ld a,0f8h		;7bb5
	ld (0e428h),a		;7bb7
L_7BBA:
	call L_7BC0		;7bba
	jr z,L_7BBA		;7bbd
	ret			;7bbf
L_7BC0:
	call L_7C70		;7bc0
	ret nz			;7bc3
	ld hl,0e4b0h		;7bc4
	inc (hl)			;7bc7
	call L_7BCD		;7bc8
	xor a			;7bcb
	ret			;7bcc
L_7BCD:
	ld a,b			;7bcd
	and 0f8h		;7bce
	ld e,a			;7bd0
	ld a,(0e428h)		;7bd1
	ld d,a			;7bd4
	ld a,c			;7bd5
	rlca			;7bd6
	rlca			;7bd7
	and 003h		;7bd8
	ld b,a			;7bda
	ld a,c			;7bdb
	and 03fh		;7bdc
L_7BDE:
	ld h,a			;7bde
	ld a,(0f0f1h)		;7bdf   ; lee la copia del banco de 0x6000
	ld (0f0f4h),a		;7be2
	ld a,(0f0f2h)		;7be5   ; lee la copia del banco de 0x8000
	ld (0f0f5h),a		;7be8
	ld a,(0f0f3h)		;7beb   ; lee la copia del banco de 0xA000
	ld (0f0f6h),a		;7bee
	ld a,h			;7bf1
	call 04148h		;7bf2   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	push ix		;7bf5
	call L_7C18		;7bf7
	pop ix		;7bfa
	ld a,(0f0f4h)		;7bfc
	ld (0f0f1h),a		;7bff   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;7c02   ; el mapper: pone en 0x6000 el banco de A
	ld a,(0f0f5h)		;7c05
	ld (0f0f2h),a		;7c08   ; guarda la copia del banco de 0x8000
	ld (09000h),a		;7c0b   ; el mapper: pone en 0x8000 el banco de A
	ld a,(0f0f6h)		;7c0e
	ld (0f0f3h),a		;7c11   ; guarda la copia del banco de 0xA000
	ld (0b000h),a		;7c14   ; el mapper: pone en 0xA000 el banco de A
	ret			;7c17
L_7C18:
	ld (0ef90h),a		;7c18
	ld a,b			;7c1b
	ld (0ef91h),a		;7c1c
	ld (0ef92h),de		;7c1f
	ld hl,0ed00h		;7c23
	ld de,00020h		;7c26
	xor a			;7c29
	ld b,008h		;7c2a
L_7C2C:
	cp (hl)			;7c2c
	jr z,L_7C34		;7c2d
	add hl,de			;7c2f
	djnz L_7C2C		;7c30
	xor a			;7c32
	ret			;7c33
L_7C34:
	push hl			;7c34
	pop ix		;7c35
	ld a,(0ef90h)		;7c37
	ld (hl),a			;7c3a
	push af			;7c3b
	inc l			;7c3c
	ld (hl),000h		;7c3d
	ld de,(0ef92h)		;7c3f
	inc l			;7c43
	ld a,d			;7c44
	cp 0f8h		;7c45
	ld a,000h		;7c47
	jr z,L_7C4C		;7c49
	dec a			;7c4b
L_7C4C:
	ld (hl),a			;7c4c
	inc l			;7c4d
	xor a			;7c4e
	ld (hl),a			;7c4f
	inc l			;7c50
	ld (hl),e			;7c51
	inc l			;7c52
	ld (hl),a			;7c53
	inc l			;7c54
	ld (hl),d			;7c55
	ld a,l			;7c56
	add a,005h		;7c57
	ld l,a			;7c59
	ld a,(0ef91h)		;7c5a
	ld (hl),a			;7c5d
	inc l			;7c5e
	inc l			;7c5f
	xor a			;7c60
	ld (hl),a			;7c61
	inc l			;7c62
	ld (hl),a			;7c63
	ld a,l			;7c64
	add a,004h		;7c65
	ld l,a			;7c67
	ld (hl),003h		;7c68
	pop af			;7c6a
	call L_7C96		;7c6b
	scf			;7c6e
L_7C6F:
	ret			;7c6f
L_7C70:
	call 041efh		;7c70   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
	ld a,(0e361h)		;7c73   ; lee la fase (1 a 11)
	dec a			;7c76
	ld hl,0a696h		;7c77
	call 04a5ah		;7c7a   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(0e4b0h)		;7c7d
	ld b,a			;7c80
	add a,a			;7c81
	add a,b			;7c82
	call 04089h		;7c83   ; suma_a_hl: HL = HL + A
	ld e,(hl)			;7c86
	inc hl			;7c87
	ld a,(hl)			;7c88
	ld b,a			;7c89
	and 007h		;7c8a
	ld d,a			;7c8c
	inc hl			;7c8d
	ld c,(hl)			;7c8e
	ld hl,(0e363h)		;7c8f   ; lee la posicion del scroll (16 bits)
	rst 20h			;7c92
	jp 04148h		;7c93   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_7C96:
	dec a			;7c96
	call 04093h		;7c97   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_7C9A: 55 destinos del despachador p00:4093 (call en p01:7C97, el
;   indice en A): 96F5, 99FF, B009, 9849, 7D2E, A301, 7D29, BCAB, 7C6F, 7D12,
;   B11F, B14E, BCAC, 7D1A, 9BDA, ADA1, 7C6F, 9DB7, 7C6F, 7C6F, B3ED, 7C6F,
;   7D33, 7C6F, 7C6F, B5F9, 7C6F, 8C07, AA78, A8E3, AA2D, AC67, AECD, ABA7,
;   9C52, 7D1F, 7C6F, 8C07, 8D87, 8E4C, 7C6F, 7D24, AAEE, AAE7, 876D, 8844,
;   8A10, BAF5, 7D0D, 7C6F, 7C6F, B9AF, 7D08, BC6E, BC8D; lo leen p01:7C97
;   (110 bytes)
;   0x7c9a..0x7d08  (110 bytes)
DATA_tabla_7C9A:
	defw 096f5h,099ffh,0b009h,09849h,07d2eh,0a301h,07d29h,0bcabh	; 7c9a
	defw 07c6fh,07d12h,0b11fh,0b14eh,0bcach,07d1ah,09bdah,0ada1h	; 7caa
	defw 07c6fh,09db7h,07c6fh,07c6fh,0b3edh,07c6fh,07d33h,07c6fh	; 7cba
	defw 07c6fh,0b5f9h,07c6fh,08c07h,0aa78h,0a8e3h,0aa2dh,0ac67h	; 7cca
	defw 0aecdh,0aba7h,09c52h,07d1fh,07c6fh,08c07h,08d87h,08e4ch	; 7cda
	defw 07c6fh,07d24h,0aaeeh,0aae7h,0876dh,08844h,08a10h,0baf5h	; 7cea
	defw 07d0dh,07c6fh,07c6fh,0b9afh,07d08h,0bc6eh,0bc8dh	; 7cfa

; ======================================================================
; CODIGO 0x7d08..0x7d6c  (100 bytes)
; ======================================================================


L_7D08:
	ld hl,0be94h		;7d08
	jr L_7D15		;7d0b
L_7D0D:
	ld hl,0b3deh		;7d0d
	jr L_7D15		;7d10
L_7D12:
	ld hl,0b229h		;7d12
L_7D15:
	call 0415bh		;7d15   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	jr L_7D39		;7d18
L_7D1A:
	ld hl,0a98ch		;7d1a
	jr L_7D36		;7d1d
L_7D1F:
	ld hl,0ab0eh		;7d1f
	jr L_7D36		;7d22
L_7D24:
	ld hl,0abbbh		;7d24
	jr L_7D36		;7d27
L_7D29:
	ld hl,0abf0h		;7d29
	jr L_7D36		;7d2c
L_7D2E:
	ld hl,0ae01h		;7d2e
	jr L_7D36		;7d31
L_7D33:
	ld hl,0ae99h		;7d33
L_7D36:
	call 041efh		;7d36   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
L_7D39:
	call L_7D3F		;7d39
	jp 04148h		;7d3c   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_7D3F:
	jp (hl)			;7d3f
L_7D40:
	ld a,(0e440h)		;7d40
	dec a			;7d43
	ret m			;7d44
	call 0415bh		;7d45   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 09d97h		;7d48
	jp 04148h		;7d4b   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_7D4E:
	ld a,(0e44fh)		;7d4e
	or a			;7d51
	ret nz			;7d52
	call L_7EC2		;7d53
	ret z			;7d56
	ld c,001h		;7d57
	call L_7D6F		;7d59
	ld a,(0e440h)		;7d5c
	sub 00eh		;7d5f
	ret nz			;7d61
	ld hl,0c49ah		;7d62
	ld de,0b183h		;7d65
	xor a			;7d68
	jp L_6EDA		;7d69

; ----------------------------------------------------------------------
; DATOS leido_7D6C: 3 bytes que lee p01:7DAA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:7DAA (3 bytes)
;   0x7d6c..0x7d6f  (3 bytes)
DATA_leido_7D6C:
	defb 006h,00dh,011h	; 7d6c

; ======================================================================
; CODIGO 0x7d6f..0x7f96  (551 bytes)
; ======================================================================


L_7D6F:
	ld ix,0ec00h		;7d6f
	ld hl,07d6ch		;7d73
	ld de,0ec07h		;7d76
	call L_7DA0		;7d79
	ld ix,0ec20h		;7d7c
	ld hl,07d6ch		;7d80
	ld de,0ec27h		;7d83
	call L_7DA0		;7d86
	ld ix,0ec40h		;7d89
	ld hl,07d6ch		;7d8d
	ld de,0ec47h		;7d90
	call L_7DA0		;7d93
	ld ix,0ec60h		;7d96
	ld hl,07d6ch		;7d9a
	ld de,0ec67h		;7d9d
L_7DA0:
	ld a,(ix+000h)		;7da0
	or a			;7da3
	ret z			;7da4
	ld b,003h		;7da5
L_7DA7:
	push bc			;7da7
	push de			;7da8
	ld a,(de)			;7da9
	ld e,(hl)			;7daa
	ld d,000h		;7dab
	push hl			;7dad
	inc a			;7dae
	jr z,L_7DC5		;7daf
	dec a			;7db1
	push ix		;7db2
	pop hl			;7db4
	add hl,de			;7db5
	bit 0,c		;7db6
	jr z,L_7DC2		;7db8
	call L_7DDC		;7dba
	call L_7DCD		;7dbd
	jr L_7DC5		;7dc0
L_7DC2:
	call L_7E47		;7dc2
L_7DC5:
	pop hl			;7dc5
	inc hl			;7dc6
	pop de			;7dc7
	inc de			;7dc8
	pop bc			;7dc9
	djnz L_7DA7		;7dca
	ret			;7dcc
L_7DCD:
	call L_7E7F		;7dcd
	ret c			;7dd0
	ld a,(0e440h)		;7dd1
	sub 007h		;7dd4
	jp z,L_6E79		;7dd6
	jp L_6EAB		;7dd9
L_7DDC:
	push hl			;7ddc
	push af			;7ddd
	call 0416bh		;7dde   ; bancos_6_7: pone los bancos 6-7 (y sus copias en 0xF0F1-3)
	ld hl,08465h		;7de1
	ld b,a			;7de4
	and 0f8h		;7de5
	rra			;7de7
	rra			;7de8
	rra			;7de9
	call 04089h		;7dea   ; suma_a_hl: HL = HL + A
	ld a,b			;7ded
	and 007h		;7dee
	inc a			;7df0
	ld b,a			;7df1
	ld a,(hl)			;7df2
L_7DF3:
	rla			;7df3
	djnz L_7DF3		;7df4
	jr c,L_7E12		;7df6
	pop af			;7df8
	call L_7E1F		;7df9
	ld a,(hl)			;7dfc
	inc hl			;7dfd
	ld (de),a			;7dfe
	inc de			;7dff
	ld b,a			;7e00
	ld a,(hl)			;7e01
	inc hl			;7e02
	ld (de),a			;7e03
	inc de			;7e04
	ld c,a			;7e05
L_7E06:
	push bc			;7e06
	ld b,000h		;7e07
	ldir		;7e09
	pop bc			;7e0b
	djnz L_7E06		;7e0c
	pop hl			;7e0e
	jp 04148h		;7e0f   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_7E12:
	pop af			;7e12
	push af			;7e13
	call L_7E1F		;7e14
	call 055adh		;7e17   ; rle_a_ram: descomprime a la RAM de DE el RLE de HL
	pop af			;7e1a
	pop hl			;7e1b
	jp 04148h		;7e1c   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_7E1F:
	ld de,082b9h		;7e1f
	ld l,a			;7e22
	ld h,000h		;7e23
	add hl,hl			;7e25
	add hl,de			;7e26
	ld e,(hl)			;7e27
	inc hl			;7e28
	ld d,(hl)			;7e29
	ex de,hl			;7e2a
	ld de,0ca00h		;7e2b
	ret			;7e2e
L_7E2F:
	call L_7EC2		;7e2f
	ret z			;7e32
	ld a,(0e440h)		;7e33
	cp 010h		;7e36
	ret z			;7e38
	cp 00dh		;7e39
	ret z			;7e3b
	cp 011h		;7e3c
	ret z			;7e3e
	ld c,000h		;7e3f
	call L_7D6F		;7e41
	jp 0547bh		;7e44
L_7E47:
	call 0416bh		;7e47   ; bancos_6_7: pone los bancos 6-7 (y sus copias en 0xF0F1-3)
	push hl			;7e4a
	push de			;7e4b
	call L_7DDC		;7e4c
	ld hl,0ca00h		;7e4f
	ld c,(hl)			;7e52
	inc l			;7e53
	ld b,(hl)			;7e54
	pop de			;7e55
	pop hl			;7e56
	call 04148h		;7e57   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_7E88		;7e5a
	ret c			;7e5d
	ld a,(0ef90h)		;7e5e
	inc a			;7e61
	jp nz,L_6E51		;7e62
	push bc			;7e65
	call 04a46h		;7e66
	ld bc,0ffe0h		;7e69
	add hl,bc			;7e6c
	pop bc			;7e6d
	ld de,00040h		;7e6e
	xor a			;7e71
L_7E72:
	push bc			;7e72
	push hl			;7e73
L_7E74:
	ld (hl),a			;7e74
	inc hl			;7e75
	djnz L_7E74		;7e76
	pop hl			;7e78
	add hl,de			;7e79
	pop bc			;7e7a
	dec c			;7e7b
	jr nz,L_7E72		;7e7c
	ret			;7e7e
L_7E7F:
	ld de,0ca00h		;7e7f
	ld a,(de)			;7e82
	inc e			;7e83
	ld c,a			;7e84
	ld a,(de)			;7e85
	inc e			;7e86
	ld b,a			;7e87
L_7E88:
	ld a,(hl)			;7e88
	ld (0ef90h),a		;7e89
	dec a			;7e8c
	scf			;7e8d
	ret p			;7e8e
	dec l			;7e8f
	dec l			;7e90
	ld a,(hl)			;7e91
	dec l			;7e92
	and a			;7e93
	jr z,L_7EBB		;7e94
	scf			;7e96
	ret p			;7e97
	ld a,(hl)			;7e98
	rra			;7e99
	rra			;7e9a
	rra			;7e9b
	or 0e0h		;7e9c
	ld (0ef80h),a		;7e9e
	add a,c			;7ea1
	ld c,a			;7ea2
	scf			;7ea3
	ret z			;7ea4
	ret m			;7ea5
	ld a,(0ef80h)		;7ea6
L_7EA9:
	ex af,af'			;7ea9
	ld a,b			;7eaa
	add a,e			;7eab
	ld e,a			;7eac
	jr nc,L_7EB0		;7ead
	inc d			;7eaf
L_7EB0:
	ex af,af'			;7eb0
	inc a			;7eb1
	jr nz,L_7EA9		;7eb2
	inc l			;7eb4
	inc l			;7eb5
	ld h,(hl)			;7eb6
	ld l,000h		;7eb7
	xor a			;7eb9
	ret			;7eba
L_7EBB:
	ld a,(hl)			;7ebb
	inc l			;7ebc
	inc l			;7ebd
	ld h,(hl)			;7ebe
	ld l,a			;7ebf
	xor a			;7ec0
	ret			;7ec1
L_7EC2:
	ld a,(0e440h)		;7ec2
	and a			;7ec5
	ret z			;7ec6
	ld a,(0ec00h)		;7ec7
	and a			;7eca
	ret			;7ecb
L_7ECC:
	call 04148h		;7ecc   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 08580h		;7ecf
	jp 0415bh		;7ed2   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
L_7ED5:
	call 04148h		;7ed5   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_7ED8:
	call 0995dh		;7ed8
L_7EDB:
	call L_78D7		;7edb
L_7EDE:
	jp 0415bh		;7ede   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
L_7EE1:
	xor a			;7ee1
	ld d,a			;7ee2
	ld e,a			;7ee3
	call L_7F03		;7ee4
L_7EE7:
	jp L_7EF3		;7ee7
L_7EEA:
	ld e,(ix+018h)		;7eea
	ld d,(ix+019h)		;7eed
	call 04a75h		;7ef0
L_7EF3:
	ld (ix+018h),e		;7ef3
	ld (ix+019h),d		;7ef6
	ret			;7ef9
L_7EFA:
	ld e,(ix+01ah)		;7efa
	ld d,(ix+01bh)		;7efd
	call 04a75h		;7f00
L_7F03:
	ld (ix+01ah),e		;7f03
	ld (ix+01bh),d		;7f06
	ret			;7f09
L_7F0A:
	call L_7EF3		;7f0a
	ex de,hl			;7f0d
	jr L_7F03		;7f0e
L_7F10:
	ld a,d			;7f10
	or a			;7f11
	call m,04a75h		;7f12
	ld (ix+022h),e		;7f15
	ld (ix+023h),d		;7f18
	ret			;7f1b
L_7F1C:
	ld a,(ix+007h)		;7f1c
	add a,(ix+018h)		;7f1f
	ld (ix+007h),a		;7f22
	ld a,(ix+008h)		;7f25
	adc a,(ix+019h)		;7f28
	ld (ix+008h),a		;7f2b
	ret			;7f2e
L_7F2F:
	ld a,(ix+009h)		;7f2f
	add a,(ix+01ah)		;7f32
	ld (ix+009h),a		;7f35
	ld a,(ix+00ah)		;7f38
	adc a,(ix+01bh)		;7f3b
	ld (ix+00ah),a		;7f3e
	ret			;7f41
L_7F42:
	ld e,(ix+007h)		;7f42
	ld d,(ix+008h)		;7f45
	ld a,d			;7f48
	or a			;7f49
	call m,04a75h		;7f4a
	ld l,(ix+022h)		;7f4d
	ld h,(ix+023h)		;7f50
	rst 20h			;7f53
	ret			;7f54
L_7F55:
	ld a,(0e303h)		;7f55   ; lee la cuenta de cuadros del juego
	and 01fh		;7f58
	ret			;7f5a
L_7F5B:
	call L_7F55		;7f5b
	jr nz,L_7F67		;7f5e
	dec (ix+025h)		;7f60
	jr nz,L_7F67		;7f63
	scf			;7f65
	ret			;7f66
L_7F67:
	ld a,(0e440h)		;7f67
	sub 00dh		;7f6a
	ret z			;7f6c
	ld hl,(0e423h)		;7f6d
	ld de,00010h		;7f70
	or a			;7f73
	sbc hl,de		;7f74
	ld de,(0e363h)		;7f76   ; lee la posicion del scroll (16 bits)
	rst 20h			;7f7a
	ret			;7f7b
L_7F7C:
	ld a,(0e303h)		;7f7c   ; lee la cuenta de cuadros del juego
	and b			;7f7f
	ret nz			;7f80
	ld a,(ix+026h)		;7f81
	inc a			;7f84
	cp c			;7f85
	jr c,L_7F89		;7f86
	xor a			;7f88
L_7F89:
	ld (ix+026h),a		;7f89
	call 04a6eh		;7f8c
	ld (ix+030h),a		;7f8f
	ld (ix+032h),a		;7f92
	ret			;7f95

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7f96..0x7fad  (23 bytes)
DATA_7F96:
	defb 03ah,003h,0e3h,0a0h,0c0h,0ddh,07eh,013h,03ch,0b9h,038h,001h,0afh,0ddh,077h,013h	; 7f96  :.....~.<.8...w.
	defb 0cdh,06eh,04ah,0ddh,077h,007h,0c9h	; 7fa6

; ======================================================================
; CODIGO 0x7fad..0x8000  (83 bytes)
; ======================================================================


L_7FAD:
	ld a,r		;7fad
	rrca			;7faf
	rrca			;7fb0
	rrca			;7fb1
	ld hl,0e303h		;7fb2   ; apunta a la cuenta de cuadros del juego
	xor (hl)			;7fb5
	ret			;7fb6
L_7FB7:
	ld l,(ix+004h)		;7fb7
	ld h,(ix+006h)		;7fba
L_7FBD:
	call 04a46h		;7fbd
	ld a,(0e405h)		;7fc0
	cp (hl)			;7fc3
	ret			;7fc4
L_7FC5:
	ld a,(0e44fh)		;7fc5
	or a			;7fc8
	jp nz,0a69fh		;7fc9
	ld ix,0e4b2h		;7fcc
	ld de,00008h		;7fd0
	ld b,004h		;7fd3
L_7FD5:
	ld a,(ix+000h)		;7fd5
	and a			;7fd8
	call nz,L_7FE1		;7fd9
	add ix,de		;7fdc
	djnz L_7FD5		;7fde
	ret			;7fe0
L_7FE1:
	call L_7FF4		;7fe1
	ld a,(0e420h)		;7fe4
	and a			;7fe7
	ret z			;7fe8
	ld a,(ix+003h)		;7fe9
	sub 008h		;7fec
	jr c,$+18		;7fee
	ld (ix+003h),a		;7ff0
	ret			;7ff3
L_7FF4:
	dec (ix+001h)		;7ff4
	ret nz			;7ff7
	ld (ix+001h),004h		;7ff8
	dec (ix+006h)		;7ffc
	ret nz			;7fff

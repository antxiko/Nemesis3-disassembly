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
; DATOS resto_8012: lo apuntan con el banco puesto p26:7FF1 (0x8012); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p26:7FF1 (12 bytes)
;   0x8012..0x801e  (12 bytes)
DATA_resto_8012:
	defb 03fh,050h,0c0h,008h,03eh,08dh,0c0h,008h,036h,0b1h,0c0h,008h	; 8012  ?P..>...6...

; ======================================================================
; CODIGO 0x801e..0x8052  (52 bytes)
; ======================================================================


L_801E:
	ld a,(0e303h)		;801e   ; lee la cuenta de cuadros del juego
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
	call 04093h		;804f   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8052: 4 destinos del despachador p00:4093 (call en p27:804F, el
;   indice en A): 6CCB, 6D14, 805A, 6DB7; lo leen p27:804F (8 bytes)
;   0x8052..0x805a  (8 bytes)
DATA_tabla_8052:
	defw 06ccbh,06d14h,0805ah,06db7h	; 8052  -> 0x6ccb 0x6d14 L_805A 0x6db7

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
	call 04093h		;8068   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_806B: 4 destinos del despachador p00:4093 (call en p27:8068, el
;   indice en A): 7D7C, 8073, 80A2, 80AE; lo leen p27:8068 (8 bytes)
;   0x806b..0x8073  (8 bytes)
DATA_tabla_806B:
	defw 07d7ch,08073h,080a2h,080aeh	; 806b  -> 0x7d7c L_8073 L_80A2 L_80AE

; ======================================================================
; CODIGO 0x8073..0x80bf  (76 bytes)
; ======================================================================


L_8073:
	ld hl,0e5c0h		;8073
	dec (hl)			;8076
	ret nz			;8077
	call 041e4h		;8078   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0bfb8h		;807b
	call 04cb1h		;807f   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0bfc5h		;8082
	call 04d17h		;8086
	ld hl,0bfceh		;8089
	ld de,0caach		;808c
	ld bc,00508h		;808f
	call 059a1h		;8092
	call 041bfh		;8095   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
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
	call 04093h		;80bc   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_80BF: 4 destinos del despachador p00:4093 (call en p27:80BC, el
;   indice en A): 6CCB, 6D14, 80C7, 6DB7; lo leen p27:80BC (8 bytes)
;   0x80bf..0x80c7  (8 bytes)
DATA_tabla_80BF:
	defw 06ccbh,06d14h,080c7h,06db7h	; 80bf  -> 0x6ccb 0x6d14 L_80C7 0x6db7

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
	call 04093h		;80d5   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_80D8: 4 destinos del despachador p00:4093 (call en p27:80D5, el
;   indice en A): 7D7C, 80E0, 80F1, 80FC; lo leen p27:80D5 (8 bytes)
;   0x80d8..0x80e0  (8 bytes)
DATA_tabla_80D8:
	defw 07d7ch,080e0h,080f1h,080fch	; 80d8  -> 0x7d7c L_80E0 L_80F1 L_80FC

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
	call 041e4h		;8104   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	call L_8110		;8107
	call L_8138		;810a
	jp 041bfh		;810d   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
L_8110:
	ld de,0b730h		;8110
	call 04b36h		;8113   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld de,0b7b8h		;8116
	call 04b36h		;8119   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld de,0b7fch		;811c
	call 04b36h		;811f   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld de,0b84dh		;8122
	call 04b36h		;8125   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld ix,0812fh		;8128
	jp 04d17h		;812c

; ----------------------------------------------------------------------
; DATOS copias_812F: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B): de 4 en 4 (origen, destino, tercios y vuelta, cuantos) y un 0;
;   lo leen p27:812C (9 bytes)
;   0x812f..0x8138  (9 bytes)
DATA_copias_812F:
	defb 050h,070h,024h,013h	; 812f
	defb 080h,090h,012h,00bh	; 8133
	defb 000h	; 8137

; ======================================================================
; CODIGO 0x8138..0x816e  (54 bytes)
; ======================================================================


L_8138:
	ld hl,0b87eh		;8138
	ld de,0cd00h		;813b
	call 055cdh		;813e   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
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
	call 04093h		;816b   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_816E: 5 destinos del despachador p00:4093 (call en p27:816B, el
;   indice en A): 8178, 8197, 81A9, 81C3, 81D9; lo leen p27:816B (10 bytes)
;   0x816e..0x8178  (10 bytes)
DATA_tabla_816E:
	defw 08178h,08197h,081a9h,081c3h,081d9h	; 816e

; ======================================================================
; CODIGO 0x8178..0x8208  (144 bytes)
; ======================================================================


L_8178:
	call 0594dh		;8178   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 0580eh		;817b   ; sonido_3F: pide el sonido 0x3F
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
	ld a,(0e308h)		;81cc   ; lee lo recien pulsado (mando y cursores)
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
	ld (0e402h),a		;81e1   ; guarda un temporizador
	jp L_83D7		;81e4
L_81E7:
	ld hl,0e402h		;81e7   ; apunta a un temporizador
	dec (hl)			;81ea
	ret nz			;81eb
	call 04aa9h		;81ec   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	xor a			;81ef
	ld (0e321h),a		;81f0
	ret			;81f3
L_81F4:
	ld ix,08208h		;81f4
	call 04cb1h		;81f8   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld hl,06030h		;81fb
	ld (0e5d2h),hl		;81fe
	ld hl,0a030h		;8201
	ld (0e5d4h),hl		;8204
	ret			;8207

; ----------------------------------------------------------------------
; DATOS graficos_8208: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:81F8 (7 bytes)
;   0x8208..0x820f  (7 bytes)
DATA_graficos_8208:
	defb 006h,0b4h,0a0h,080h,0f6h,0a0h	; 8208
	defb 000h	; 820e

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
	ld a,(0e303h)		;8224   ; lee la cuenta de cuadros del juego
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
	call 04093h		;8375   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8378: 4 destinos del despachador p00:4093 (call en p27:8375, el
;   indice en A): 8380, 8398, 83B3, 81D9; lo leen p27:8375 (8 bytes)
;   0x8378..0x8380  (8 bytes)
DATA_tabla_8378:
	defw 08380h,08398h,083b3h,081d9h	; 8378  -> L_8380 L_8398 L_83B3 L_81D9

; ======================================================================
; CODIGO 0x8380..0x8406  (134 bytes)
; ======================================================================


L_8380:
	call 0580eh		;8380   ; sonido_3F: pide el sonido 0x3F
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
	ld a,(0e308h)		;83c2   ; lee lo recien pulsado (mando y cursores)
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
	call 04093h		;8403   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8406: 5 destinos del despachador p00:4093 (call en p27:8403, el
;   indice en A): 841D, 8529, 8611, 8797, 891D; lo leen p27:8403 (10 bytes)
;   0x8406..0x8410  (10 bytes)
DATA_tabla_8406:
	defw 0841dh,08529h,08611h,08797h,0891dh	; 8406

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
	call 04093h		;8424   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8427: 8 destinos del despachador p00:4093 (call en p27:8424, el
;   indice en A): 8437, 8458, 8484, 8497, 84BE, 84EA, 8505, 8521; lo leen
;   p27:8424 (16 bytes)
;   0x8427..0x8437  (16 bytes)
DATA_tabla_8427:
	defw 08437h,08458h,08484h,08497h,084beh,084eah,08505h,08521h	; 8427

; ======================================================================
; CODIGO 0x8437..0x852d  (246 bytes)
; ======================================================================


L_8437:
	call 0594dh		;8437   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 05827h		;843a   ; sonido_42: pide el sonido 0x42
	call 05718h		;843d
	call 04aa9h		;8440   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
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
	call 041e4h		;8462   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0a1d6h		;8465
	call 04cb1h		;8469   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0a225h		;846c
	call 04d17h		;8470
	call 041bfh		;8473   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
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
	call 041e4h		;84a7   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld hl,0b467h		;84aa
	call 06064h		;84ad
	call 041bfh		;84b0   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
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
	call 041e4h		;84c7   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0a808h		;84ca
	call 04cb1h		;84ce   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0a81bh		;84d1
	call 04d17h		;84d5
	call 041bfh		;84d8   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
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
	call 04093h		;852a   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_852D: 8 destinos del despachador p00:4093 (call en p27:852A, el
;   indice en A): 853D, 8554, 8577, 85A1, 85B6, 85C1, 85D8, 85EF; lo leen
;   p27:852A (16 bytes)
;   0x852d..0x853d  (16 bytes)
DATA_tabla_852D:
	defw 0853dh,08554h,08577h,085a1h,085b6h,085c1h,085d8h,085efh	; 852d

; ======================================================================
; CODIGO 0x853d..0x8621  (228 bytes)
; ======================================================================


L_853D:
	call 04aa9h		;853d   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
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
	call 041e4h		;858d   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	call 06064h		;8590
	call 041bfh		;8593   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
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
	call 04093h		;861e   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8621: 18 destinos del despachador p00:4093 (call en p27:861E, el
;   indice en A): 8645, 8656, 8670, 868C, 86A6, 86B8, 86CA, 86D9, 86E8, 86FD,
;   8717, 8731, 8743, 8759, 8768, 8772, 877D, 8781; lo leen p27:861E (36
;   bytes)
;   0x8621..0x8645  (36 bytes)
DATA_tabla_8621:
	defw 08645h,08656h,08670h,0868ch,086a6h,086b8h,086cah,086d9h	; 8621
	defw 086e8h,086fdh,08717h,08731h,08743h,08759h,08768h,08772h	; 8631
	defw 0877dh,08781h	; 8641  -> L_877D L_8781

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
	call 058fdh		;8669   ; sonido_4D: pide el sonido 0x4D
	call L_8418		;866c
	ret			;866f
L_8670:
	ld a,(0e40ch)		;8670
	and 00fh		;8673
	or 0e0h		;8675
	ld b,a			;8677
	call 04c40h		;8678   ; color_del_borde: B al registro 7 del VDP
	ld hl,0e40ch		;867b
	dec (hl)			;867e
	ret nz			;867f
	ld b,0e0h		;8680
	call 04c40h		;8682   ; color_del_borde: B al registro 7 del VDP
	call 0591ah		;8685   ; sonido_52: pide el sonido 0x52
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
	call 05951h		;86f6   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
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
	call 0594dh		;8710   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 057eah		;8713   ; sonido_01: pide el sonido 0x01
	ret			;8716
L_8717:
	ld a,006h		;8717
	call 05709h		;8719
	call L_8DD9		;871c
	call L_8E21		;871f
	call L_8DF5		;8722
	call 05941h		;8725   ; sonido_53: pide el sonido 0x53
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
	call 05812h		;873c   ; sonido_40: pide el sonido 0x40
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
	call 04093h		;87a6   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_87A9: 19 destinos del despachador p00:4093 (call en p27:87A6, el
;   indice en A): 87CF, 87D9, 87E8, 880B, 882B, 883D, 884B, 8852, 8869, 853D,
;   8554, 8577, 8875, 8889, 88C8, 88D4, 88EC, 8908, 8918; lo leen p27:87A6 (38
;   bytes)
;   0x87a9..0x87cf  (38 bytes)
DATA_tabla_87A9:
	defw 087cfh,087d9h,087e8h,0880bh,0882bh,0883dh,0884bh,08852h	; 87a9
	defw 08869h,0853dh,08554h,08577h,08875h,08889h,088c8h,088d4h	; 87b9
	defw 088ech,08908h,08918h	; 87c9  -> L_88EC L_8908 L_8918

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
	call 05951h		;87dd   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	xor a			;87e0
	ld (0e40ch),a		;87e1
	call L_8418		;87e4
	ret			;87e7
L_87E8:
	ld hl,0e40ch		;87e8
	dec (hl)			;87eb
	ret nz			;87ec
	call 0594dh		;87ed   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 0581ah		;87f0   ; sonido_49: pide el sonido 0x49
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
	call 041e4h		;888e   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0abbfh		;8891
	call 04cb1h		;8895   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
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
	call 041bfh		;88b5   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ld hl,088c4h		;88b8
	ld c,0f0h		;88bb
	call 07978h		;88bd
	call L_8418		;88c0
	ret			;88c3

; ----------------------------------------------------------------------
; DATOS leido_88C4: 1 bytes que lee p26:7988 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7988 (1 bytes)
;   0x88c4..0x88c5  (1 bytes)
DATA_leido_88C4:
	defb 001h	; 88c4

; ----------------------------------------------------------------------
; DATOS leido_88C5: 3 bytes que leen p26:79C1, p26:79B7, p26:7988 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:79C1, p26:79B7, p26:7988
;   (3 bytes)
;   0x88c5..0x88c8  (3 bytes)
DATA_leido_88C5:
	defb 060h,02ch,000h	; 88c5

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
	call 05951h		;88db   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	ld hl,088e8h		;88de
	call 078a2h		;88e1
	call L_8418		;88e4
	ret			;88e7

; ----------------------------------------------------------------------
; DATOS resto_88E8: lo apuntan con el banco puesto p27:88DE (0x88E8); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p27:88DE (4 bytes)
;   0x88e8..0x88ec  (4 bytes)
DATA_resto_88E8:
	defb 007h,001h,0ffh,000h	; 88e8

; ======================================================================
; CODIGO 0x88ec..0x8921  (53 bytes)
; ======================================================================


L_88EC:
	call 078ach		;88ec
	ld a,(0e560h)		;88ef
	or a			;88f2
	ret nz			;88f3
	call 04aa9h		;88f4   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
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
	call 0594dh		;890d   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 057eah		;8910   ; sonido_01: pide el sonido 0x01
	xor a			;8913
	call L_8418		;8914
	ret			;8917
L_8918:
	xor a			;8918
	ld (0e328h),a		;8919   ; guarda 1: el final del juego (al estado 10)
	ret			;891c
L_891D:
	ld a,b			;891d
	call 04093h		;891e   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8921: 15 destinos del despachador p00:4093 (call en p27:891E, el
;   indice en A): 893F, 894F, 896A, 897C, 8997, 89A3, 89B8, 89CC, 89DD, 89ED,
;   8A17, 8A2C, 8A38, 8A4A, 8A5F; lo leen p27:891E (30 bytes)
;   0x8921..0x893f  (30 bytes)
DATA_tabla_8921:
	defw 0893fh,0894fh,0896ah,0897ch,08997h,089a3h,089b8h,089cch	; 8921
	defw 089ddh,089edh,08a17h,08a2ch,08a38h,08a4ah,08a5fh	; 8931

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
	call 05951h		;895f   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	xor a			;8962
	ld (0e40ch),a		;8963
	call L_8418		;8966
	ret			;8969
L_896A:
	ld hl,0e40ch		;896a
	dec (hl)			;896d
	ret nz			;896e
	call 0594dh		;896f   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 05816h		;8972   ; sonido_41: pide el sonido 0x41
	call 05730h		;8975
	call L_8418		;8978
	ret			;897b
L_897C:
	ld hl,06265h		;897c
	call 0612ah		;897f
	ld hl,0c400h		;8982   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
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
; DATOS leido_89B4: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x89b4..0x89b5  (1 bytes)
DATA_leido_89B4:
	defb 007h	; 89b4

; ----------------------------------------------------------------------
; DATOS leido_89B5: 2 bytes que leen p26:78F6, p26:7905 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p26:78F6, p26:7905 (2 bytes)
;   0x89b5..0x89b7  (2 bytes)
DATA_leido_89B5:
	defb 001h,0ffh	; 89b5

; ----------------------------------------------------------------------
; DATOS leido_89B7: 1 bytes que lee p26:78B8 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:78B8 (1 bytes)
;   0x89b7..0x89b8  (1 bytes)
DATA_leido_89B7:
	defb 000h	; 89b7

; ======================================================================
; CODIGO 0x89b8..0x8b50  (408 bytes)
; ======================================================================


L_89B8:
	call 078ach		;89b8
	ret nz			;89bb
	call 04aa9h		;89bc   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
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
	call 05951h		;89d6   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	call L_8418		;89d9
	ret			;89dc
L_89DD:
	ld de,00172h		;89dd
	call 05737h		;89e0
	ret c			;89e3
	call 0594dh		;89e4   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 057eah		;89e7   ; sonido_01: pide el sonido 0x01
	jp L_8418		;89ea
L_89ED:
	ld a,006h		;89ed
	call 05709h		;89ef
	call L_8E21		;89f2
	call L_8DF5		;89f5
	call 05985h		;89f8
	call 05959h		;89fb
	call 041e4h		;89fe   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld de,0bbf3h		;8a01
	ld hl,01e80h		;8a04
	call 04b3ch		;8a07   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld hl,0b8b7h		;8a0a
	call 05ed4h		;8a0d
	call 041bfh		;8a10   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	call L_8418		;8a13
	ret			;8a16
L_8A17:
	call 041e4h		;8a17   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	call 05eech		;8a1a
	call 041bfh		;8a1d   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ld a,(0e518h)		;8a20   ; lee la aparicion poco a poco en marcha (1 o 2)
	or a			;8a23
	ret nz			;8a24
	call 057eah		;8a25   ; sonido_01: pide el sonido 0x01
	call L_8418		;8a28
	ret			;8a2b
L_8A2C:
	call 05941h		;8a2c   ; sonido_53: pide el sonido 0x53
	ld a,080h		;8a2f
	ld (0e40ch),a		;8a31
	call L_8418		;8a34
	ret			;8a37
L_8A38:
	ld hl,0e40ch		;8a38
	dec (hl)			;8a3b
	ret nz			;8a3c
	call 057eah		;8a3d   ; sonido_01: pide el sonido 0x01
	ld hl,05ecdh		;8a40
	call 047b3h		;8a43
	call L_8418		;8a46
	ret			;8a49
L_8A4A:
	call 047bch		;8a4a
	ld a,(0e518h)		;8a4d   ; lee la aparicion poco a poco en marcha (1 o 2)
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
	ld hl,0ef00h		;8a6c   ; apunta a los atributos de sprite (32 x 4)
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
	call 041e4h		;8a7f   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0ab9ah		;8a82
	call 04cb1h		;8a86   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0abcch		;8a89
	call 04d17h		;8a8d
	call 041bfh		;8a90   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8a93
L_8A94:
	call 041e4h		;8a94   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld de,0bc4ah		;8a97
	ld hl,01800h		;8a9a
	call 04b3ch		;8a9d   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	call 041bfh		;8aa0   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
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
	ld hl,0ef00h		;8ad1   ; apunta a los atributos de sprite (32 x 4)
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
	call 04a5ah		;8b33   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(hl)			;8b36
	exx			;8b37
	ld b,a			;8b38
	exx			;8b39
	ld de,0ef00h		;8b3a   ; apunta a los atributos de sprite (32 x 4)
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
; DATOS tabla_8B50: tabla que se lee desde HL = 0x8B50 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8B2D (14 bytes)
;   0x8b50..0x8b5e  (14 bytes)
DATA_tabla_8B50:
	defb 05eh,08bh,05eh,08bh,061h,08bh,061h,08bh,064h,08bh,064h,08bh,069h,08bh	; 8b50  ^.^.a.a.d.d.i.

; ----------------------------------------------------------------------
; DATOS leido_8B5E: 18 bytes que leen p27:8B36, p27:8B3E, p27:8B43 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p27:8B36, p27:8B3E, p27:8B43
;   (18 bytes)
;   0x8b5e..0x8b70  (18 bytes)
DATA_leido_8B5E:
	defb 001h,0ffh,0feh,001h,0feh,0fdh,002h,0fbh,0fah,0fbh,0fah,003h,0f5h,0f2h,0f5h,0f4h	; 8b5e  ................
	defb 0f7h,0fch	; 8b6e

; ----------------------------------------------------------------------
; DATOS leido_8B70: 14 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (14 bytes)
;   0x8b70..0x8b7e  (14 bytes)
DATA_leido_8B70:
	defb 07eh,08bh,07eh,08bh,085h,08bh,085h,08bh,08ah,08bh,08ah,08bh,08dh,08bh	; 8b70  ~.~...........

; ----------------------------------------------------------------------
; DATOS leido_8B7E: 18 bytes que leen p27:8B36, p27:8B3E, p27:8B43 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p27:8B36, p27:8B3E, p27:8B43
;   (18 bytes)
;   0x8b7e..0x8b90  (18 bytes)
DATA_leido_8B7E:
	defb 003h,0fbh,0efh,0fbh,0f8h,0fbh,0ffh,002h,0f5h,0f7h,0f5h,0f7h,001h,0f4h,0f5h,001h	; 8b7e  ................
	defb 0f2h,0f3h	; 8b8e

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
	call 04a5ah		;8b9f   ; lee_palabra: HL = la palabra A de la tabla HL
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
; DATOS leido_8BB1: 14 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (14 bytes)
;   0x8bb1..0x8bbf  (14 bytes)
DATA_leido_8BB1:
	defb 0bfh,08bh,0bfh,08bh,0c6h,08bh,0c6h,08bh,0cbh,08bh,0cbh,08bh,0ceh,08bh	; 8bb1  ..............

; ----------------------------------------------------------------------
; DATOS leido_8BBF: 18 bytes que leen p27:8BA2, p27:8BA7, p27:8BA9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p27:8BA2, p27:8BA7, p27:8BA9
;   (18 bytes)
;   0x8bbf..0x8bd1  (18 bytes)
DATA_leido_8BBF:
	defb 003h,000h,00fh,008h,005h,004h,00fh,002h,00ch,00fh,010h,005h,001h,014h,00fh,001h	; 8bbf  ................
	defb 018h,007h	; 8bcf

; ----------------------------------------------------------------------
; DATOS tabla_8BD1: tabla que se lee desde HL = 0x8BD1 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8B99 (14 bytes)
;   0x8bd1..0x8bdf  (14 bytes)
DATA_tabla_8BD1:
	defb 0dfh,08bh,0dfh,08bh,0e2h,08bh,0e2h,08bh,0e5h,08bh,0e5h,08bh,0eah,08bh	; 8bd1  ..............

; ----------------------------------------------------------------------
; DATOS leido_8BDF: 18 bytes que leen p27:8BA2, p27:8BA7, p27:8BA9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p27:8BA2, p27:8BA7, p27:8BA9
;   (18 bytes)
;   0x8bdf..0x8bf1  (18 bytes)
DATA_leido_8BDF:
	defb 001h,01ch,007h,001h,020h,00fh,002h,024h,00fh,028h,005h,003h,02ch,00fh,034h,005h	; 8bdf  .... ..$.(..,.4.
	defb 030h,00fh	; 8bef

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
	call 04089h		;8c04   ; suma_a_hl: HL = HL + A
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
; DATOS leido_8C1C: 35 bytes que leen p27:8C07, p27:8C0C, p27:8C0E, p27:8C14,
;   p27:8C16 al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p27:8C07, p27:8C0C, p27:8C0E, p27:8C14, p27:8C16 (35 bytes)
;   0x8c1c..0x8c3f  (35 bytes)
DATA_leido_8C1C:
	defb 02dh,03fh,0ffh,0c7h,001h,01eh,05eh,0ffh,0e6h,000h,01eh,078h,0ffh,0b3h,000h,01eh	; 8c1c  -?....^....x....
	defb 06fh,0ffh,091h,000h,01eh,067h,0ffh,04ch,000h,01eh,092h,0ffh,011h,000h,01eh,0bch	; 8c2c  o....g.L........
	defb 0ffh,0deh,0ffh	; 8c3c

; ----------------------------------------------------------------------
; DATOS leido_8C3F: 35 bytes que leen p27:8C07, p27:8C0C, p27:8C0E, p27:8C14,
;   p27:8C16 al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p27:8C07, p27:8C0C, p27:8C0E, p27:8C14, p27:8C16 (35 bytes)
;   0x8c3f..0x8c62  (35 bytes)
DATA_leido_8C3F:
	defb 01eh,044h,000h,0deh,0ffh,01eh,044h,000h,0efh,0ffh,01eh,03bh,000h,000h,000h,01eh	; 8c3f  .D....D.........
	defb 044h,000h,008h,000h,01eh,0a2h,000h,077h,000h,01eh,0bbh,000h,011h,001h,04bh,0cch	; 8c4f  D......w......K.
	defb 000h,099h,001h	; 8c5f

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
	ld a,(0e303h)		;8cbf   ; lee la cuenta de cuadros del juego
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
	call 041e4h		;8cdd   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0aaceh		;8ce0
	call 04cb1h		;8ce4   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	call 041bfh		;8ce7   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8cea
L_8CEB:
	ld a,(0e303h)		;8ceb   ; lee la cuenta de cuadros del juego
	bit 3,a		;8cee
	jp z,060c0h		;8cf0
	call 041ach		;8cf3   ; bancos_22: pone el 22 (y sus copias en 0xF0F1-3)
	ld hl,0b8f6h		;8cf6
	call 06067h		;8cf9
	call 041bfh		;8cfc   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8cff
L_8D00:
	call 041f7h		;8d00   ; guarda_reparto: guarda las tres copias del mapper en la pila de 0xF0D0
	call 041ach		;8d03   ; bancos_22: pone el 22 (y sus copias en 0xF0F1-3)
	ld a,(0e380h)		;8d06
	ld hl,08d36h		;8d09
	call 04a5ah		;8d0c   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;8d0f
	push de			;8d10
	ld hl,02488h		;8d11
	call 04b3ch		;8d14   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	pop de			;8d17
	ld hl,02c88h		;8d18
	call 04b3ch		;8d1b   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld a,0f0h		;8d1e
	ld hl,00488h		;8d20
	ld bc,00378h		;8d23
	call 00056h		;8d26   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00c88h		;8d29
	ld bc,00378h		;8d2c
	call 00056h		;8d2f   ; BIOS FILVRM - Fills VRAM with value
	call 04213h		;8d32   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
	ret			;8d35

; ----------------------------------------------------------------------
; DATOS tabla_8D36: tabla que se lee desde HL = 0x8D36 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8D09 (8 bytes)
;   0x8d36..0x8d3e  (8 bytes)
DATA_tabla_8D36:
	defb 046h,0b4h,086h,0b5h,099h,0b6h,0a6h,0b7h	; 8d36  F.......

; ======================================================================
; CODIGO 0x8d3e..0x8d5d  (31 bytes)
; ======================================================================


L_8D3E:
	ld hl,0a23eh		;8d3e
	ld de,0e800h		;8d41   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;8d44   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	call L_8D65		;8d47
	ld a,(0e380h)		;8d4a
	ld hl,08d5dh		;8d4d
	call 04a5ah		;8d50   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,0caa9h		;8d53
	ld bc,0060eh		;8d56
	call 059a1h		;8d59
	ret			;8d5c

; ----------------------------------------------------------------------
; DATOS tabla_8D5D: tabla que se lee desde HL = 0x8D5D con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8D4D (8 bytes)
;   0x8d5d..0x8d65  (8 bytes)
DATA_tabla_8D5D:
	defb 000h,0e8h,054h,0e8h,0a8h,0e8h,0fch,0e8h	; 8d5d  ..T.....

; ======================================================================
; CODIGO 0x8d65..0x8da9  (68 bytes)
; ======================================================================


L_8D65:
	ld hl,0e800h		;8d65   ; apunta a los enemigos (12 de 0x40)
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
	ld a,(0e303h)		;8d7d   ; lee la cuenta de cuadros del juego
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
	call 04089h		;8d9d   ; suma_a_hl: HL = HL + A
	ld de,0ef40h		;8da0
	ld bc,0000ch		;8da3
	ldir		;8da6
	ret			;8da8

; ----------------------------------------------------------------------
; DATOS tabla_8DA9: tabla que se lee desde HL = 0x8DA9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8D9A (48 bytes)
;   0x8da9..0x8dd9  (48 bytes)
DATA_tabla_8DA9:
	defb 034h,060h,0c0h,008h,03fh,050h,0c0h,008h,046h,07fh,0c0h,008h,02eh,060h,0c0h,008h	; 8da9  4`..?P..F....`..
	defb 037h,07fh,0c0h,008h,046h,068h,0c0h,008h,03eh,058h,0c0h,008h,046h,080h,0c0h,008h	; 8db9  7...Fh..>X..F...
	defb 04eh,050h,0c0h,008h,02eh,058h,0c0h,008h,03fh,090h,0c0h,008h,047h,060h,0c0h,008h	; 8dc9  NP...X..?...G`..

; ======================================================================
; CODIGO 0x8dd9..0x8e11  (56 bytes)
; ======================================================================


L_8DD9:
	call 041e4h		;8dd9   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0b8bbh		;8ddc
	call 04cb1h		;8de0   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	inc ix		;8de3
	call 04d17h		;8de5
	ld de,0bbf3h		;8de8
	ld hl,01e80h		;8deb
	call 04b3ch		;8dee   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	call 041bfh		;8df1   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8df4
L_8DF5:
	ld hl,08e19h		;8df5
	jr L_8E07		;8df8
L_8DFA:
	ld a,(0e303h)		;8dfa   ; lee la cuenta de cuadros del juego
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
; DATOS leido_8E11: 16 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (16 bytes)
;   0x8e11..0x8e21  (16 bytes)
DATA_leido_8E11:
	defb 099h,090h,091h,0b5h,0abh,092h,093h,0c7h,09ah,094h,095h,0b6h,0abh,096h,097h,0c7h	; 8e11  ................

; ======================================================================
; CODIGO 0x8e21..0x8e48  (39 bytes)
; ======================================================================


L_8E21:
	call 041e4h		;8e21   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld hl,0bc13h		;8e24
	ld de,0e800h		;8e27   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;8e2a   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	ld bc,00810h		;8e2d
	ld hl,0e800h		;8e30   ; apunta a los enemigos (12 de 0x40)
	ld de,0caa8h		;8e33
	call 059a1h		;8e36
	call 041bfh		;8e39   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ld hl,08e48h		;8e3c
	ld de,0ef40h		;8e3f
	ld bc,00004h		;8e42
	ldir		;8e45
	ret			;8e47

; ----------------------------------------------------------------------
; DATOS leido_8E48: 4 bytes que lee p27:8E45 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p27:8E45 (4 bytes)
;   0x8e48..0x8e4c  (4 bytes)
DATA_leido_8E48:
	defb 02fh,078h,0d0h,008h	; 8e48

; ======================================================================
; CODIGO 0x8e4c..0x8e70  (36 bytes)
; ======================================================================


L_8E4C:
	call 041e4h		;8e4c   ; bancos_29: pone el 29 (y sus copias en 0xF0F1-3)
	ld ix,0bd4dh		;8e4f
	call 04cb1h		;8e53   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld de,0bdcah		;8e56
	ld hl,01de0h		;8e59
	call 04b3ch		;8e5c   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	call 041bfh		;8e5f   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	ret			;8e62
L_8E63:
	ld hl,08e70h		;8e63
	ld de,0caceh		;8e66
	ld bc,00304h		;8e69
	call 059a1h		;8e6c
	ret			;8e6f

; ----------------------------------------------------------------------
; DATOS leido_8E70: 12 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (12 bytes)
;   0x8e70..0x8e7c  (12 bytes)
DATA_leido_8E70:
	defb 063h,000h,000h,000h,064h,065h,066h,067h,08bh,08ch,08dh,08eh	; 8e70  c...defg....

; ======================================================================
; CODIGO 0x8e7c..0x8eb2  (54 bytes)
; ======================================================================


L_8E7C:
	call L_8EA4		;8e7c
	call 060c0h		;8e7f
	ret			;8e82
L_8E83:
	ld a,(0e303h)		;8e83   ; lee la cuenta de cuadros del juego
	rra			;8e86
	and 001h		;8e87
	add a,002h		;8e89
	ld (0e5d0h),a		;8e8b
L_8E8E:
	call L_8EA4		;8e8e
	ld a,(0e5d0h)		;8e91
	ld hl,08eb2h		;8e94
	call 04a5ah		;8e97   ; lee_palabra: HL = la palabra A de la tabla HL
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
; DATOS tabla_8EB2: tabla que se lee desde HL = 0x8EB2 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p27:8E94 (8 bytes)
;   0x8eb2..0x8eba  (8 bytes)
DATA_tabla_8EB2:
	defb 0bah,08eh,0bfh,08eh,0d0h,08eh,0e9h,08eh	; 8eb2  ........

; ----------------------------------------------------------------------
; DATOS leido_8EBA: 72 bytes que leen p27:8E9A, p27:8EA1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p27:8E9A, p27:8EA1 (72 bytes)
;   0x8eba..0x8f02  (72 bytes)
DATA_leido_8EBA:
	defb 004h,037h,07bh,0bch,003h,010h,02fh,070h,0c0h,003h,02fh,080h,0c4h,003h,03fh,070h	; 8eba  .7{.../p../...?p
	defb 0c8h,003h,03fh,080h,0cch,003h,018h,02fh,06dh,0d0h,003h,02fh,07dh,0d4h,003h,02fh	; 8eca  ..?..../m../}../
	defb 08dh,0d8h,003h,03fh,06dh,0dch,003h,03fh,07dh,0e0h,003h,03fh,08dh,0e4h,003h,018h	; 8eda  ...?m..?}..?....
	defb 02fh,06bh,0e8h,00ch,02fh,07bh,0ech,00ch,02fh,08bh,0f0h,00ch,03fh,06bh,0f4h,00ch	; 8eea  /k../{../...?k..
	defb 03fh,07bh,0f8h,00ch,03fh,08bh,0fch,00ch	; 8efa  ?{..?...

; ----------------------------------------------------------------------
; DATOS resto_8F02: lo apuntan con el banco puesto p26:62AF (0x8F02); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p26:62AF (128 bytes)
;   0x8f02..0x8f82  (128 bytes)
DATA_resto_8F02:
	defb 014h,090h,029h,090h,040h,090h,055h,090h,060h,090h,07dh,090h,0b2h,090h,0cbh,090h	; 8f02  ..).@.U.`.}.....
	defb 00ah,091h,030h,091h,04ah,091h,072h,091h,092h,091h,0cdh,091h,0e0h,091h,0f3h,091h	; 8f12  ..0.J.r.........
	defb 006h,092h,01ah,092h,045h,092h,062h,092h,085h,092h,0a3h,092h,0b7h,092h,0c9h,092h	; 8f22  ....E.b.........
	defb 0e7h,092h,0fbh,092h,019h,093h,03dh,093h,04fh,093h,060h,093h,07ch,093h,08dh,093h	; 8f32  ......=.O.`.|...
	defb 09dh,093h,0b2h,093h,0c7h,093h,0f1h,093h,008h,094h,01bh,094h,042h,094h,06fh,094h	; 8f42  ............B.o.
	defb 082h,094h,0a2h,094h,0b5h,094h,0c1h,094h,0d1h,094h,0fbh,094h,024h,095h,033h,095h	; 8f52  ............$.3.
	defb 07dh,095h,053h,096h,095h,096h,0bfh,096h,02ch,097h,024h,093h,014h,090h,014h,090h	; 8f62  }.S.....,.$.....
	defb 014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h	; 8f72  ................

; ----------------------------------------------------------------------
; DATOS leido_8F82: 108 bytes que leen p00:4A6A, p00:4A6C al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 38 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p00:4A6A, p00:4A6C (108 bytes)
;   0x8f82..0x8fee  (108 bytes)
DATA_leido_8F82:
	defb 073h,097h,096h,097h,0bch,097h,0d8h,097h,0e8h,097h,006h,098h,02dh,098h,044h,098h	; 8f82  s...........-.D.
	defb 071h,098h,090h,098h,0a2h,098h,0c4h,098h,0e1h,098h,005h,099h,016h,099h,028h,099h	; 8f92  q.............(.
	defb 03ah,099h,060h,099h,097h,099h,0beh,099h,0f4h,099h,01dh,09ah,03bh,09ah,052h,09ah	; 8fa2  :.`...........R.
	defb 07ch,09ah,0a1h,09ah,0bfh,09ah,0feh,09ah,016h,09bh,02eh,09bh,051h,09bh,06ch,09bh	; 8fb2  |...........Q.l.
	defb 084h,09bh,099h,09bh,0b4h,09bh,0d8h,09bh,001h,09ch,023h,09ch,044h,09ch,071h,09ch	; 8fc2  ..........#.D.q.
	defb 083h,09ch,0abh,09ch,0bfh,09ch,0cbh,09ch,0e0h,09ch,00dh,09dh,038h,09dh,043h,09dh	; 8fd2  ............8.C.
	defb 08eh,09eh,04bh,09fh,08eh,09fh,0c4h,09fh,019h,0a0h,0d4h,09ah	; 8fe2  ..K.........

; ----------------------------------------------------------------------
; DATOS resto_8FEE: lo apuntan con el banco puesto p00:4226 (0x9000), p00:4240
;   (0x9000), p00:4257 (0x9000), p00:4260 (0x9000), p00:4279 (0x9000),
;   p00:58A7 (0x9000); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p00:4226, p00:4240, p00:4257, p00:4260, p00:4279,
;   p00:58A7 (20 bytes)
;   0x8fee..0x9002  (20 bytes)
DATA_resto_8FEE:
	defb 014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h,014h,090h	; 8fee  ................
	defb 014h,090h,014h,090h	; 8ffe

; ----------------------------------------------------------------------
; DATOS leido_9002: 18 bytes que leen p00:4A6A, p00:4A6C al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 4 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p00:4A6A, p00:4A6C (18 bytes)
;   0x9002..0x9014  (18 bytes)
DATA_leido_9002:
	defb 0a7h,09dh,0bah,09dh,0e1h,09dh,0f0h,09dh,0fch,09dh,00ch,09eh,037h,09eh,04fh,09eh	; 9002  ............7.O.
	defb 076h,09eh	; 9012

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9014..0x9773  (1887 bytes)
DATA_9014:
	defb 068h,0cch,0d0h,000h,02ch,08ah,06dh,076h,07fh,067h,083h,0b4h,068h,047h,006h,04ah	; 9014  h...,.mv.g..hG.J
	defb 058h,01ch,061h,03ch,02dh,068h,0cch,0d1h,064h,02ch,001h,050h,0b3h,0a4h,049h,050h	; 9024  X.a<-h..d,.P..IP
	defb 0cah,014h,0f9h,043h,0c9h,047h,042h,045h,04bh,03ch,000h,02dh,068h,0cch,0d0h,000h	; 9034  ...C.GBEK<.-h...
	defb 02ch,0dah,0aah,045h,048h,0d3h,0a4h,09ah,0a8h,006h,056h,03fh,042h,045h,04bh,03ch	; 9044  ,..EH.....V?BEK<
	defb 02dh,06dh,0cch,0c7h,000h,02ch,0bfh,0e3h,048h,025h,025h,025h,065h,0cch,0d7h,010h	; 9054  -m...,..H%%%e...
	defb 002h,007h,006h,009h,0e4h,028h,085h,07eh,008h,088h,093h,069h,071h,028h,007h,007h	; 9064  .....(.~...iq(..
	defb 005h,000h,005h,030h,001h,002h,061h,03ch,02dh,047h,0cch,051h,000h,02ch,08ah,06dh	; 9074  ...0..a<-G.Q.,.m
	defb 076h,07fh,067h,083h,047h,0c8h,051h,052h,048h,028h,053h,0d3h,004h,0c1h,000h,047h	; 9084  v.g.G.QRH(S....G
	defb 084h,0cch,0d8h,000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,000h,077h,083h,047h	; 9094  ......h}q%./.w.G
	defb 040h,047h,07eh,02fh,087h,000h,002h,009h,0dfh,096h,0c2h,061h,03ch,02dh,066h,0cch	; 90a4  @G~/.......a<-f.
	defb 0d3h,041h,02ch,04dh,047h,04bh,04bh,061h,048h,029h,025h,0c5h,058h,016h,064h,042h	; 90b4  .A,MGKKaH)%.X.dB
	defb 03fh,04bh,045h,000h,04bh,03ch,02dh,044h,0cch,058h,000h,02ch,082h,02fh,090h,0ffh	; 90c4  ?KE.K<-D.X.,./..
	defb 045h,0abh,0afh,005h,043h,047h,0e6h,0c4h,058h,044h,052h,049h,040h,04dh,03fh,053h	; 90d4  E...CG..XDRI@M?S
	defb 04bh,03dh,057h,058h,028h,083h,0cch,0dah,0a0h,04eh,064h,04ah,047h,08bh,07eh,094h	; 90e4  K=WX(....NdJG.~.
	defb 06dh,000h,07bh,02fh,080h,056h,0d2h,064h,042h,073h,002h,068h,07dh,082h,02fh,090h	; 90f4  m.{/.V.dBs.h}./.
	defb 056h,03fh,04bh,000h,03ch,02dh,04bh,0cch,04ah,000h,02ch,073h,068h,07dh,082h,02fh	; 9104  V?K.<-K.J.,sh}./
	defb 090h,0deh,080h,026h,028h,088h,0cch,0d1h,002h,085h,07eh,088h,093h,069h,071h,028h	; 9114  ...&(.....~..iq(
	defb 007h,000h,007h,005h,005h,030h,001h,008h,061h,03ch,000h,02dh,067h,0cch,0d4h,000h	; 9124  .....0..a<.-g...
	defb 02ch,08ah,06dh,076h,07fh,067h,083h,04fh,026h,051h,007h,049h,0b7h,04dh,048h,04bh	; 9134  ,.mv.g.O&Q.I.MHK
	defb 053h,040h,04bh,03fh,03fh,02dh,048h,0cch,050h,048h,02ch,04dh,047h,007h,049h,0b7h	; 9144  S@K??-H.PH,MG.I.
	defb 047h,0a4h,000h,045h,08ah,06dh,076h,07fh,067h,083h,048h,089h,0cch,0ceh,010h,006h	; 9154  G..E.mv.g.H.....
	defb 041h,047h,02bh,0e5h,056h,09eh,0edh,0a0h,03fh,042h,045h,04bh,03ch,02dh,063h,0cch	; 9164  AG+.V...?BEK<-c.
	defb 0d9h,000h,02ch,086h,091h,068h,07dh,071h,048h,062h,0dch,04dh,049h,045h,020h,017h	; 9174  ..,..h}qHb.MIE .
	defb 04eh,053h,042h,080h,045h,052h,043h,0d0h,055h,053h,04bh,03ch,000h,02dh,042h,0cch	; 9184  NSB.ERC.USK<.-B.
	defb 05ch,000h,02ch,08ah,06dh,076h,07fh,067h,083h,047h,000h,071h,08eh,02fh,071h,090h	; 9194  \.,.mv.g.G.q./q.
	defb 07eh,083h,077h,024h,045h,0dbh,01bh,058h,09bh,04eh,053h,042h,080h,045h,04bh,03ch	; 91a4  ~.w$E..X.NSB.EK<
	defb 029h,087h,0cch,0d2h,001h,049h,043h,041h,049h,043h,041h,0bbh,027h,038h,03ch,052h	; 91b4  )....ICAICA.'8<R
	defb 03fh,049h,044h,051h,04bh,03dh,000h,057h,02dh,069h,0cch,0ceh,041h,02ch,02dh,047h	; 91c4  ?IDQK=.W-i..A,-G
	defb 07ch,094h,090h,056h,00ch,050h,0bah,03fh,04bh,03fh,03fh,02dh,069h,0cch,0ceh,041h	; 91d4  |..V.P.?K??-i..A
	defb 02ch,02eh,047h,07ch,094h,090h,056h,00ch,050h,0bah,03fh,04bh,03fh,03fh,02dh,069h	; 91e4  ,.G|..V.P.?K??-i
	defb 0cch,0ceh,041h,02ch,02fh,047h,07ch,094h,090h,056h,00ch,050h,0bah,03fh,04bh,03fh	; 91f4  ..A,/G|..V.P.?K?
	defb 03fh,02dh,069h,0cch,0cfh,003h,02ch,07ch,094h,090h,048h,004h,030h,031h,090h,044h	; 9204  ?-i...,|..H.01.D
	defb 052h,04fh,046h,061h,03ch,02dh,046h,0cch,054h,000h,02ch,004h,041h,047h,07ch,094h	; 9214  ROFa<-F.T.,.AG|.
	defb 090h,048h,09ah,03eh,047h,004h,032h,033h,047h,02dh,025h,0a0h,02eh,025h,02fh,045h	; 9224  .H.>G.23G-%..%/E
	defb 08ah,0cch,0cch,0a2h,048h,047h,048h,047h,0f0h,09dh,03fh,042h,080h,045h,04bh,03ch	; 9234  ....HGHG..?B.EK<
	defb 02dh,064h,0cch,0d7h,000h,02ch,0e2h,042h,058h,03eh,054h,055h,044h,080h,045h,043h	; 9244  -d...,.BX>TUD.EC
	defb 0a5h,0e2h,044h,07ch,094h,090h,000h,045h,044h,051h,04bh,03dh,057h,02dh,047h,0cch	; 9254  ..D|...EDQK=W-G.
	defb 051h,000h,02ch,004h,041h,047h,07ch,094h,090h,058h,00ah,0e2h,042h,03eh,054h,045h	; 9264  Q.,.AG|..X..B>TE
	defb 04bh,03fh,03fh,000h,029h,08ch,0cch,0c8h,0b8h,036h,0e1h,034h,035h,03fh,04bh,03ch	; 9274  K??.)....6.45?K<
	defb 02dh,064h,0cch,0d8h,041h,02ch,038h,058h,0e5h,0b5h,028h,0ffh,03ah,06bh,058h,03bh	; 9284  -d..A,8X..(.:kX.
	defb 03dh,028h,039h,058h,03ch,03dh,068h,056h,035h,03fh,042h,045h,04bh,03ch,02dh,068h	; 9294  =(9X<=hV5?BEK<-h
	defb 0cch,0cfh,002h,02ch,086h,091h,068h,07dh,071h,054h,0d9h,030h,045h,0beh,049h,045h	; 92a4  ...,..h}qT.0E.IE
	defb 04bh,03ch,02dh,069h,0cch,0cdh,005h,02ch,07ch,094h,090h,056h,036h,0e1h,034h,0c0h	; 92b4  K<-i...,|..V6.4.
	defb 035h,03fh,04bh,03ch,02dh,064h,0cch,0d8h,000h,02ch,07ch,094h,090h,058h,03fh,051h	; 92c4  5?K<-d...,|..X?Q
	defb 04bh,000h,03dh,057h,029h,07ch,094h,090h,056h,0eeh,080h,03fh,045h,04dh,062h,051h	; 92d4  K.=W)|..V..?EMbQ
	defb 04bh,03ch,02dh,068h,0cch,0cfh,000h,02ch,070h,02fh,080h,089h,0e9h,0feh,056h,0a8h	; 92e4  K<-h...,p/....V.
	defb 00ch,0bah,03fh,04bh,03fh,03fh,02dh,064h,0cch,0d8h,000h,02ch,073h,068h,07dh,082h	; 92f4  ..?K??-d...,sh}.
	defb 02fh,090h,0ffh,028h,045h,0d2h,021h,061h,04ah,052h,070h,02fh,008h,080h,089h,047h	; 9304  /..(E.!aJRp/...G
	defb 04fh,046h,061h,03ch,02dh,06ch,0cch,0c7h,030h,02ch,0cbh,00bh,03fh,04bh,03ch,02dh	; 9314  OFa<-l..0,..?K<-
	defb 067h,0cch,0d3h,040h,02ch,055h,06dh,071h,077h,07eh,025h,072h,00ah,083h,06fh,02fh	; 9324  g..@,Umqw~%r..o/
	defb 056h,00ch,0bah,03fh,04bh,080h,03fh,03fh,02dh,06ah,0cch,0cdh,002h,02ch,06bh,090h	; 9334  V..?K.??-j...,k.
	defb 072h,080h,056h,00ch,0bah,0a0h,03fh,04bh,03fh,03fh,02dh,06ah,0cch,0cch,001h,02ch	; 9344  r.V...?K??-j...,
	defb 06bh,090h,072h,080h,056h,0cbh,00bh,080h,03fh,04bh,03ch,02dh,065h,0cch,0d6h,000h	; 9354  k.r.V...?K<-e...
	defb 02ch,0a9h,0d8h,0cch,0f6h,061h,03ch,058h,000h,028h,086h,091h,068h,07dh,071h,025h	; 9364  ,....a<X.(..h}q%
	defb 08ah,000h,02fh,077h,083h,061h,03ch,02dh,06ah,0cch,0cch,003h,02ch,03eh,0d7h,084h	; 9374  ../w.a<-j...,>..
	defb 071h,056h,000h,008h,080h,03fh,04bh,03ch,02dh,06ah,0cch,0cbh,002h,02ch,0a5h,0e2h	; 9384  qV...?K<-j...,..
	defb 045h,03eh,0d7h,03fh,04bh,080h,03fh,03fh,02dh,068h,0cch,0d0h,040h,02ch,02bh,0e5h	; 9394  E>.?K.??-h..@,+.
	defb 085h,07eh,088h,093h,069h,018h,071h,045h,0beh,049h,045h,04bh,03ch,02dh,068h,0cch	; 93a4  .~..i.qE.IEK<-h.
	defb 0d0h,000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,010h,077h,083h,028h,04fh,05ch	; 93b4  ....h}q%./.w.(O\
	defb 0b1h,0a8h,029h,047h,0cch,052h,000h,020h,013h,022h,00fh,018h,048h,028h,04dh,000h	; 93c4  ..)G.R. ."..H(M.
	defb 043h,047h,0d3h,0f5h,045h,04dh,062h,052h,000h,03fh,04ch,08ah,0cch,0cdh,001h,073h	; 93d4  CG..EMbR.?L....s
	defb 068h,07dh,082h,02fh,090h,056h,048h,080h,04dh,044h,064h,03fh,029h,068h,0cch,0d1h	; 93e4  h}./.VH.MDd?)h..
	defb 01ah,02ch,0dah,0f3h,013h,01dh,0aeh,049h,050h,00ah,0bbh,0b8h,056h,0ceh,04ch,04bh	; 93f4  .,.....IP...V.LK
	defb 03fh,03fh,000h,02dh,069h,0cch,0ceh,048h,02ch,001h,0cfh,0a6h,02ah,045h,0cfh,0bch	; 9404  ??.-i..H,...*E..
	defb 020h,056h,06ch,040h,094h,074h,02dh,047h,0cch,053h,044h,02ch,04dh,047h,04bh,04bh	; 9414   Vl@.t-G.SD,MGKK
	defb 005h,05ah,050h,002h,053h,052h,043h,0d0h,064h,042h,045h,052h,040h,047h,049h,029h	; 9424  .ZP.SRC.dBER@GI)
	defb 08ch,0cch,0c9h,0a0h,005h,058h,03fh,048h,03dh,057h,05fh,027h,000h,02dh,048h,0cch	; 9434  .....X?H=W_'.-H.
	defb 050h,000h,02ch,086h,091h,068h,07dh,071h,096h,0c2h,018h,045h,048h,0d1h,00dh,03fh	; 9444  P.,..h}q...EH..?
	defb 03fh,058h,028h,087h,0cch,0d2h,0c6h,04ah,04eh,04bh,048h,0d7h,049h,03fh,042h,040h	; 9454  ?X(....JNKH.I?B@
	defb 0b1h,04eh,057h,029h,0d8h,046h,065h,027h,000h,027h,02dh,069h,0cch,0ceh,001h,02ch	; 9464  .NW).Fe'.'-i...,
	defb 08dh,091h,079h,07dh,058h,0d7h,04ah,050h,042h,045h,04bh,03fh,03fh,02dh,064h,0cch	; 9474  ..y}X.JPBEK??-d.
	defb 0d9h,001h,02ch,08ah,06dh,076h,07fh,067h,083h,049h,040h,050h,046h,063h,064h,03fh	; 9484  ..,.mv.g.I@PFcd?
	defb 070h,02fh,080h,004h,089h,0e9h,0feh,056h,0d2h,045h,04bh,03ch,000h,02dh,069h,0cch	; 9494  p/.....V.EK<.-i.
	defb 0ceh,000h,02ch,070h,02fh,080h,089h,028h,071h,068h,000h,094h,074h,000h,06ah,083h	; 94a4  ..,p/..(qh..t.j.
	defb 02dh,06ch,0cch,0c8h,000h,02ch,070h,02fh,080h,089h,0e1h,0bdh,02dh,06bh,0cch,0cbh	; 94b4  -l...,p/....-k..
	defb 005h,02ch,0b9h,0b3h,099h,056h,024h,0f4h,03fh,000h,04bh,03ch,02dh,04bh,0cch,049h	; 94c4  .,...V$.?.K<-K.I
	defb 000h,02ch,020h,013h,022h,00fh,018h,0aeh,045h,000h,048h,085h,0cch,0d6h,000h,082h	; 94d4  ., ."...E.H.....
	defb 02fh,090h,0ffh,047h,070h,02fh,080h,006h,089h,0e9h,0feh,058h,0e9h,010h,04eh,053h	; 94e4  /..Gp/.....X..NS
	defb 040h,042h,045h,04bh,03dh,057h,02dh,046h,0cch,054h,040h,02ch,045h,041h,047h,0d3h	; 94f4  @BEK=W-F.T@,EAG.
	defb 0f5h,045h,043h,094h,041h,0d9h,03ch,049h,055h,049h,051h,04bh,000h,03dh,057h,058h	; 9504  .EC.A.<IUIQK.=WX
	defb 028h,08bh,0cch,0cah,002h,082h,02fh,090h,056h,0a7h,0cdh,03fh,04bh,000h,03ch,02dh	; 9514  (...../.V..?K.<-
	defb 06bh,0cch,0cah,000h,02ch,082h,02fh,090h,000h,067h,069h,077h,000h,027h,02dh,02fh	; 9524  k...,./..giw.'-/
	defb 0cah,002h,000h,038h,039h,04fh,0cah,002h,000h,03ah,03bh,0a2h,0cah,014h,004h,011h	; 9534  ...89O...:......
	defb 007h,009h,001h,00ah,009h,000h,000h,000h,000h,088h,068h,08dh,093h,094h,089h,025h	; 9544  ..........h....%
	defb 000h,08ah,02fh,077h,083h,0ebh,0cah,013h,000h,020h,013h,022h,00fh,018h,0aeh,061h	; 9554  ../w..... ."...a
	defb 08ah,000h,06dh,076h,07fh,067h,083h,0b8h,0f2h,045h,040h,0d9h,00ch,029h,033h,0cbh	; 9564  ..mv.g...E@..)3.
	defb 0a7h,000h,0b1h,0a8h,03dh,05dh,025h,025h,025h,00fh,0cah,002h,000h,038h,039h,02fh	; 9574  ....=]%%%....89/
	defb 0cah,002h,000h,03ah,03bh,062h,0cah,015h,004h,011h,007h,007h,005h,002h,009h,000h	; 9584  ...:.b..........
	defb 000h,000h,000h,086h,091h,068h,07dh,071h,025h,08ah,000h,02fh,077h,083h,0f1h,0d7h	; 9594  .....h}q%../w...
	defb 0a2h,0cah,011h,004h,011h,007h,007h,006h,009h,009h,000h,000h,000h,000h,0f0h,08ah	; 95a4  ................
	defb 06dh,076h,07fh,067h,083h,000h,0e0h,0e2h,0cah,00fh,004h,011h,007h,007h,007h,007h	; 95b4  mv.g............
	defb 009h,000h,000h,000h,000h,0f0h,08dh,091h,079h,07dh,0e0h,02bh,0cbh,034h,000h,086h	; 95c4  ........y}.+.4..
	defb 091h,068h,07dh,071h,025h,08ah,02fh,000h,077h,083h,028h,07eh,02fh,087h,002h,009h	; 95d4  .h}q%./.w.(~/...
	defb 000h,0dfh,045h,0eah,098h,062h,0cbh,030h,004h,011h,007h,008h,001h,00ah,009h,000h	; 95e4  ..E..b.0........
	defb 000h,002h,000h,0f0h,06fh,07eh,07ch,083h,042h,0e0h,0a2h,0cbh,03ch,004h,011h,007h	; 95f4  ....o~|.B...<...
	defb 008h,002h,009h,009h,000h,000h,000h,000h,086h,091h,068h,07dh,071h,025h,08ah,001h	; 9604  ..........h}q%..
	defb 02fh,077h,083h,0d8h,0afh,02ah,0b0h,009h,000h,008h,008h,0c1h,02bh,0f0h,0cbh,021h	; 9614  /w...*......+..!
	defb 000h,025h,010h,0cch,041h,000h,025h,030h,0cch,041h,000h,025h,050h,0cch,041h,000h	; 9624  .%..A.%0.A.%P.A.
	defb 025h,082h,0cch,0d8h,004h,011h,007h,009h,001h,00ah,009h,000h,000h,004h,000h,095h	; 9634  %...............
	defb 0b3h,0a4h,0e0h,004h,0aeh,02ch,000h,020h,013h,022h,00fh,018h,02dh,0a5h,0e1h,00ch	; 9644  .....,. ."..-...
	defb 0cch,047h,000h,02ch,020h,013h,022h,00fh,018h,02dh,044h,0cch,058h,000h,085h,07eh	; 9654  .G., ."..-D.X..~
	defb 088h,093h,069h,071h,0a1h,0a2h,006h,0adh,0d6h,0fch,058h,0a3h,00ch,03fh,03fh,004h	; 9664  ..iq......X..??.
	defb 028h,095h,0b3h,0a4h,0e0h,004h,0aeh,029h,087h,0cch,0d3h,020h,0e9h,0fdh,043h,02fh	; 9674  (......)... ..C/
	defb 075h,058h,09ch,044h,000h,052h,005h,041h,047h,073h,068h,090h,058h,080h,044h,052h	; 9684  uX.D.R.AGsh.X.DR
	defb 029h,04dh,0cch,046h,000h,02ch,084h,069h,088h,093h,02dh,084h,0cch,0d9h,002h,020h	; 9694  )M.F.,.i..-....
	defb 013h,022h,00fh,018h,045h,003h,0c0h,090h,04eh,053h,042h,045h,052h,028h,0d4h,09fh	; 96a4  ."..E...NSBER(..
	defb 040h,0fah,00ah,06eh,083h,08fh,092h,02fh,073h,000h,029h,0cah,0cbh,02dh,000h,02ch	; 96b4  @..n.../s.)..-.,
	defb 088h,068h,08dh,093h,094h,089h,025h,000h,08ah,02fh,077h,083h,02dh,004h,0cch,058h	; 96c4  .h....%../w.-..X
	defb 000h,086h,091h,068h,07dh,071h,025h,08ah,02fh,000h,077h,083h,02ah,07eh,02fh,087h	; 96d4  ...h}q%./.w.*~/.
	defb 002h,009h,000h,0dfh,02bh,047h,0fbh,0b5h,0d5h,0e8h,029h,047h,0cch,052h,042h,097h	; 96e4  ....+G....)G.RB.
	defb 002h,045h,04fh,052h,0ach,023h,044h,010h,07fh,02fh,06dh,043h,082h,02fh,056h,04dh	; 96f4  .EOR.#D../mC./VM
	defb 000h,040h,028h,089h,0cch,04fh,033h,03eh,047h,00ah,023h,056h,0efh,04bh,00fh,048h	; 9704  .@(..O3>G.#V.K.H
	defb 0a0h,04eh,053h,042h,045h,052h,029h,0cah,0cch,0cch,002h,020h,013h,022h,00fh,018h	; 9714  .NSBER).... ."..
	defb 047h,043h,068h,000h,081h,094h,077h,029h,00fh,0cah,002h,000h,038h,039h,02fh,0cah	; 9724  GCh...w)....89/.
	defb 002h,000h,03ah,03bh,083h,0cah,018h,004h,011h,007h,009h,001h,00ah,009h,002h,001h	; 9734  ..:.............
	defb 000h,0b7h,000h,000h,000h,088h,068h,08dh,093h,000h,094h,089h,025h,08ah,02fh,077h	; 9744  ......h.....%./w
	defb 083h,028h,0cfh,0cah,00eh,000h,02ch,020h,013h,022h,00fh,018h,02dh,061h,000h,08ah	; 9754  .(...., ."..-a..
	defb 06dh,076h,07fh,067h,083h,013h,0cbh,0a6h,008h,0b8h,0f2h,04ah,0d9h,00ch,029h	; 9764  mv.g.......J..)

; ----------------------------------------------------------------------
; DATOS leido_9773: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9773..0x9776  (3 bytes)
DATA_leido_9773:
	defb 048h,0cch,050h	; 9773

; ----------------------------------------------------------------------
; DATOS leido_9776: 12 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (12 bytes)
;   0x9776..0x9782  (12 bytes)
DATA_leido_9776:
	defb 0ech,0deh,012h,000h,017h,099h,00fh,097h,04fh,01eh,000h,059h	; 9776  ........O..Y

; ----------------------------------------------------------------------
; DATOS leido_9782: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9782..0x9785  (3 bytes)
DATA_leido_9782:
	defb 085h,0cch,0d6h	; 9782

; ----------------------------------------------------------------------
; DATOS leido_9785: 17 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (17 bytes)
;   0x9785..0x9796  (17 bytes)
DATA_leido_9785:
	defb 01eh,012h,00fh,08ch,0cbh,04dh,04fh,09ch,053h,0d8h,01dh,040h,09dh,0c0h,019h,00eh	; 9785  .....MO.S..@....
	defb 037h	; 9795

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9796..0x9871  (219 bytes)
DATA_9796:
	defb 046h,0cch,055h,0ech,0deh,012h,0e3h,0f2h,01ch,040h,0ceh,053h,0cbh,0dah,01ah,00bh	; 9796  F.U......@.S....
	defb 09ch,053h,011h,086h,0cch,0d5h,0d0h,05ch,059h,0c0h,01eh,052h,0ddh,000h,05eh,017h	; 97a6  .S.....\Y..R..^.
	defb 04fh,080h,0d9h,058h,08fh,02dh,047h,0cch,051h,0ech,0deh,012h,0e3h,0f2h,01ch,080h	; 97b6  O..X.-G.Q.......
	defb 0cfh,058h,00fh,09ch,053h,011h,08ah,0cch,0cch,0cbh,000h,05eh,057h,00fh,080h,0cbh	; 97c6  .X..S......^W...
	defb 05ch,0dah,068h,0cch,0d1h,0ech,0deh,012h,0e3h,0f2h,01ch,0c0h,011h,059h,058h,051h	; 97d6  \.h..........YXQ
	defb 0a5h,025h,049h,0cch,04fh,0d8h,0cfh,017h,01dh,013h,01dh,047h,047h,005h,030h,001h	; 97e6  .%I.O......GG.0.
	defb 002h,089h,0cch,0cfh,002h,007h,006h,023h,0cfh,04bh,05dh,000h,04bh,019h,027h,02dh	; 97f6  .......#.K].K.'-
	defb 045h,0cch,056h,0ech,0deh,012h,0e3h,0f2h,01ch,0c0h,011h,059h,098h,0d1h,040h,0d9h	; 9806  E.V........Y..@.
	defb 000h,055h,016h,016h,085h,0cch,0d5h,0d4h,0cbh,017h,0ddh,080h,016h,01eh,00fh,01ch	; 9816  .U..............
	defb 056h,0cbh,05ch,080h,074h,0f5h,037h,063h,0cch,0dah,06ch,0d2h,053h,0deh,019h,09ch	; 9826  V.\.t.7c..l.S...
	defb 0c0h,0e1h,059h,016h,0ceh,000h,08fh,000h,04dh,0cbh,0d8h,011h,00eh,037h,043h,0cch	; 9836  ..Y.....M....7C.
	defb 05ah,0ech,092h,00fh,04eh,080h,050h,09ch,000h,05eh,08fh,040h,04ch,00bh,00dh,015h	; 9846  Z...N.P..^.@L...
	defb 0d2h,0d9h,016h,025h,025h,084h,0cch,0d9h,021h,0cfh,072h,00fh,080h,04fh,0deh,00fh	; 9856  ...%%...!.r..O..
	defb 05ch,098h,0d1h,040h,0d3h,0d7h,08fh,0a1h,08bh,05ch,037h	; 9866  \..@.....\7

; ----------------------------------------------------------------------
; DATOS leido_9871: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9871..0x9874  (3 bytes)
DATA_leido_9871:
	defb 049h,0cch,04dh	; 9871

; ----------------------------------------------------------------------
; DATOS leido_9874: 10 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (10 bytes)
;   0x9874..0x987e  (10 bytes)
DATA_leido_9874:
	defb 02ch,012h,08bh,00fh,0c0h,04bh,0dch,0d3h,020h,00eh	; 9874  ,....K.. .

; ----------------------------------------------------------------------
; DATOS leido_987E: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x987e..0x9881  (3 bytes)
DATA_leido_987E:
	defb 086h,0cch,0d3h	; 987e

; ----------------------------------------------------------------------
; DATOS leido_9881: 15 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (15 bytes)
;   0x9881..0x9890  (15 bytes)
DATA_leido_9881:
	defb 013h,098h,040h,04fh,0d7h,04fh,0d3h,05dh,000h,007h,005h,0c5h,001h,008h,037h	; 9881  ..@O.O.]......7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9890..0x9905  (117 bytes)
DATA_9890:
	defb 066h,0cch,0d3h,0ech,047h,040h,099h,018h,05eh,05dh,080h,05eh,0d9h,080h,016h,01eh	; 9890  f...G@..^].^....
	defb 00fh,037h,045h,0cch,057h,06ch,0cch,00bh,0deh,00fh,05ch,099h,018h,040h,00bh,0ddh	; 98a0  .7E.Wl....\..@..
	defb 040h,0cfh,0efh,04ch,013h,016h,01eh,08ah,0cch,0cdh,0d0h,0d3h,020h,0c0h,09ah,016h	; 98b0  @..L........ ...
	defb 058h,0cfh,05eh,037h,048h,0cch,04fh,0ech,054h,04bh,08fh,01dh,040h,00bh,0ddh,000h	; 98c0  X.^7H.O.TK..@...
	defb 00fh,00fh,018h,089h,0cch,0ceh,092h,0cfh,016h,0c0h,01ah,05ch,0ddh,0d9h,018h,01ch	; 98d0  ...........\....
	defb 037h,046h,0cch,054h,0ech,0deh,012h,0dch,04fh,040h,01fh,01dh,01eh,04ch,0cfh,000h	; 98e0  7F.T....O@...L..
	defb 056h,0dfh,04fh,087h,0cch,0d3h,09eh,019h,040h,053h,01dh,080h,0d2h,0cfh,01ch,0cbh	; 98f0  V.O.....@S......
	defb 0cch,059h,01eh,01dh,037h	; 9900

; ----------------------------------------------------------------------
; DATOS leido_9905: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9905..0x9908  (3 bytes)
DATA_leido_9905:
	defb 067h,0cch,0d2h	; 9905

; ----------------------------------------------------------------------
; DATOS leido_9908: 14 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (14 bytes)
;   0x9908..0x9916  (14 bytes)
DATA_leido_9908:
	defb 02ch,0d2h,04fh,00fh,032h,01dh,0cbh,0c0h,01ch,0ceh,080h,017h,01ah,037h	; 9908  ,.O.2........7

; ----------------------------------------------------------------------
; DATOS leido_9916: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9916..0x9919  (3 bytes)
DATA_leido_9916:
	defb 067h,0cch,0d3h	; 9916

; ----------------------------------------------------------------------
; DATOS leido_9919: 15 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (15 bytes)
;   0x9919..0x9928  (15 bytes)
DATA_leido_9919:
	defb 02ch,0d2h,04fh,00fh,032h,01dh,08bh,040h,04ch,0dfh,04fh,040h,00bh,01ah,037h	; 9919  ,.O.2..@L.O@..7

; ----------------------------------------------------------------------
; DATOS leido_9928: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9928..0x992b  (3 bytes)
DATA_leido_9928:
	defb 066h,0cch,0d4h	; 9928

; ----------------------------------------------------------------------
; DATOS leido_992B: 15 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (15 bytes)
;   0x992b..0x993a  (15 bytes)
DATA_leido_992B:
	defb 02ch,0d2h,04fh,00fh,032h,01dh,00bh,0c0h,051h,00fh,00fh,018h,0d7h,04bh,0dah	; 992b  ,.O.2...Q....K.

; ----------------------------------------------------------------------
; DATOS leido_993A: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x993a..0x993d  (3 bytes)
DATA_leido_993A:
	defb 047h,0cch,051h	; 993a

; ----------------------------------------------------------------------
; DATOS leido_993D: 13 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (13 bytes)
;   0x993d..0x994a  (13 bytes)
DATA_leido_993D:
	defb 0ech,0deh,012h,05ch,0cfh,040h,00fh,00fh,017h,01eh,0d9h,000h,00fh	; 993d  ...\.@.......

; ----------------------------------------------------------------------
; DATOS leido_994A: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x994a..0x994d  (3 bytes)
DATA_leido_994A:
	defb 084h,0cch,0d9h	; 994a

; ----------------------------------------------------------------------
; DATOS leido_994D: 19 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (19 bytes)
;   0x994d..0x9960  (19 bytes)
DATA_leido_994D:
	defb 0c4h,000h,04eh,010h,0d0h,04fh,00fh,018h,01eh,095h,0d3h,018h,01dh,000h,059h,080h	; 994d  ..N..O........Y.
	defb 097h,04bh,037h	; 995d

; ----------------------------------------------------------------------
; DATOS leido_9960: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9960..0x9963  (3 bytes)
DATA_leido_9960:
	defb 027h,0cch,052h	; 9960

; ----------------------------------------------------------------------
; DATOS leido_9963: 14 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (14 bytes)
;   0x9963..0x9971  (14 bytes)
DATA_leido_9963:
	defb 06ch,0cfh,00bh,0d2h,000h,09eh,0dah,04fh,040h,08bh,01eh,04dh,00fh,01dh	; 9963  l......O@..M..

; ----------------------------------------------------------------------
; DATOS leido_9971: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9971..0x9974  (3 bytes)
DATA_leido_9971:
	defb 065h,0cch,057h	; 9971

; ----------------------------------------------------------------------
; DATOS leido_9974: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9974..0x9986  (18 bytes)
DATA_leido_9974:
	defb 00bh,0c0h,05ah,013h,0d7h,04bh,0e3h,000h,056h,011h,012h,01eh,04dh,099h,056h,01fh	; 9974  ..Z..K..V...M.V.
	defb 01ch,033h	; 9984

; ----------------------------------------------------------------------
; DATOS leido_9986: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9986..0x9989  (3 bytes)
DATA_leido_9986:
	defb 0a7h,0cch,0d2h	; 9986

; ----------------------------------------------------------------------
; DATOS leido_9989: 14 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (14 bytes)
;   0x9989..0x9997  (14 bytes)
DATA_leido_9989:
	defb 05ch,00fh,0ceh,0cch,0d6h,01fh,000h,019h,01ch,0d1h,0dch,00fh,018h,037h	; 9989  \............7

; ----------------------------------------------------------------------
; DATOS leido_9997: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9997..0x999a  (3 bytes)
DATA_leido_9997:
	defb 045h,0cch,056h	; 9997

; ----------------------------------------------------------------------
; DATOS leido_999A: 17 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (17 bytes)
;   0x999a..0x99ab  (17 bytes)
DATA_leido_999A:
	defb 02ch,021h,00fh,098h,0cfh,00fh,080h,04bh,056h,040h,0c4h,000h,0d9h,0d6h,059h,01ch	; 999a  ,!.....KV@....Y.
	defb 01dh	; 99aa

; ----------------------------------------------------------------------
; DATOS leido_99AB: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x99ab..0x99ae  (3 bytes)
DATA_leido_99AB:
	defb 086h,0cch,0d5h	; 99ab

; ----------------------------------------------------------------------
; DATOS leido_99AE: 16 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (16 bytes)
;   0x99ae..0x99be  (16 bytes)
DATA_leido_99AE:
	defb 010h,019h,01ch,01eh,012h,00fh,08dh,099h,057h,0d6h,0cfh,01eh,080h,097h,04bh,037h	; 99ae  ........W.....K7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x99be..0x9a3b  (125 bytes)
DATA_99BE:
	defb 024h,0cch,058h,02ch,0d2h,04fh,00fh,0c0h,04bh,08fh,000h,05eh,08fh,000h,05eh,01ch	; 99be  $.X,.O..K..^..^.
	defb 00fh,00fh,057h,0cbh,05ah,067h,0cch,052h,0deh,0d9h,011h,01eh,0d2h,04fh,040h,057h	; 99ce  ..W.Zg.R.....O@W
	defb 04bh,013h,018h,011h,01fh,01ah,0a7h,0cch,0d1h,01eh,012h,00fh,08dh,099h,057h,0d6h	; 99de  K.............W.
	defb 0cfh,01eh,080h,097h,04bh,037h,044h,0cch,058h,0ech,0deh,012h,000h,0deh,052h,0cfh	; 99ee  ....K7D.X.....R.
	defb 04fh,040h,00bh,01ah,01dh,0deh,0d9h,011h,01eh,0d2h,04fh,085h,0cch,0d6h,0d1h,0d3h	; 99fe  O@........O.....
	defb 020h,080h,04bh,056h,0c0h,0deh,012h,0c0h,08ch,00fh,05ch,013h,058h,01dh,037h,04ah	; 9a0e   .KV......\.X.7J
	defb 0cch,04bh,0ach,053h,072h,056h,080h,051h,000h,01eh,019h,086h,0cch,0d4h,01eh,012h	; 9a1e  .K.SrV.Q........
	defb 00fh,05ch,0cfh,01dh,05fh,08fh,040h,0d0h,080h,014h,0d7h,04fh,0ddh	; 9a2e  .\.._.@....O.

; ----------------------------------------------------------------------
; DATOS leido_9A3B: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9a3b..0x9a3e  (3 bytes)
DATA_leido_9A3B:
	defb 063h,0cch,0dah	; 9a3b

; ----------------------------------------------------------------------
; DATOS leido_9A3E: 20 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (20 bytes)
;   0x9a3e..0x9a52  (20 bytes)
DATA_leido_9A3E:
	defb 02ch,0d2h,04fh,00fh,032h,01dh,01eh,012h,00fh,0cbh,0ddh,01dh,0d7h,0cch,016h,0ceh	; 9a3e  ,.O.2...........
	defb 080h,017h,01ah,037h	; 9a4e

; ----------------------------------------------------------------------
; DATOS leido_9A52: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9a52..0x9a55  (3 bytes)
DATA_leido_9A52:
	defb 044h,0cch,057h	; 9a52

; ----------------------------------------------------------------------
; DATOS leido_9A55: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9a55..0x9a67  (18 bytes)
DATA_leido_9A55:
	defb 02ch,021h,00fh,09dh,05eh,053h,0d6h,0c0h,018h,04fh,08eh,040h,0d8h,04fh,040h,00bh	; 9a55  ,!..^S...O.@.O@.
	defb 01ah,030h	; 9a65

; ----------------------------------------------------------------------
; DATOS leido_9A67: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9a67..0x9a6a  (3 bytes)
DATA_leido_9A67:
	defb 084h,0cch,0d8h	; 9a67

; ----------------------------------------------------------------------
; DATOS leido_9A6A: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9a6a..0x9a7c  (18 bytes)
DATA_leido_9A6A:
	defb 093h,072h,056h,000h,011h,019h,04ch,04bh,04dh,080h,0cbh,018h,080h,0d1h,04fh,0c0h	; 9a6a  .rV...LKM.....O.
	defb 053h,0deh	; 9a7a

; ----------------------------------------------------------------------
; DATOS leido_9A7C: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9a7c..0x9a7f  (3 bytes)
DATA_leido_9A7C:
	defb 046h,0cch,055h	; 9a7c

; ----------------------------------------------------------------------
; DATOS leido_9A7F: 16 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (16 bytes)
;   0x9a7f..0x9a8f  (16 bytes)
DATA_leido_9A7F:
	defb 02ch,013h,0b2h,04fh,080h,050h,01fh,018h,00eh,0ddh,0d9h,017h,000h,095h,053h,00eh	; 9a7f  ,..O.P........S.

; ----------------------------------------------------------------------
; DATOS leido_9A8F: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9a8f..0x9a92  (3 bytes)
DATA_leido_9A8F:
	defb 087h,0cch,0d3h	; 9a8f

; ----------------------------------------------------------------------
; DATOS leido_9A92: 15 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (15 bytes)
;   0x9a92..0x9aa1  (15 bytes)
DATA_leido_9A92:
	defb 0d9h,090h,000h,0c0h,01dh,052h,00fh,016h,00eh,0ceh,00fh,060h,00dh,00fh,037h	; 9a92  .....R.....`..7

; ----------------------------------------------------------------------
; DATOS leido_9AA1: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9aa1..0x9aa4  (3 bytes)
DATA_leido_9AA1:
	defb 048h,0cch,04fh	; 9aa1

; ----------------------------------------------------------------------
; DATOS leido_9AA4: 12 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (12 bytes)
;   0x9aa4..0x9ab0  (12 bytes)
DATA_leido_9AA4:
	defb 0ech,09eh,012h,01eh,032h,01dh,08bh,080h,05dh,00bh,00dh,00fh	; 9aa4  ....2...]...

; ----------------------------------------------------------------------
; DATOS leido_9AB0: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9ab0..0x9ab3  (3 bytes)
DATA_leido_9AB0:
	defb 088h,0cch,0cfh	; 9ab0

; ----------------------------------------------------------------------
; DATOS leido_9AB3: 12 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (12 bytes)
;   0x9ab3..0x9abf  (12 bytes)
DATA_leido_9AB3:
	defb 090h,013h,051h,01eh,00fh,01ch,0ddh,0d2h,013h,016h,00eh,037h	; 9ab3  ..Q........7

; ----------------------------------------------------------------------
; DATOS leido_9ABF: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9abf..0x9ac2  (3 bytes)
DATA_leido_9ABF:
	defb 065h,0cch,0d7h	; 9abf

; ----------------------------------------------------------------------
; DATOS leido_9AC2: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9ac2..0x9ad4  (18 bytes)
DATA_leido_9AC2:
	defb 0ach,021h,0cfh,096h,0d6h,040h,00bh,015h,00fh,053h,01eh,080h,013h,01eh,012h,01fh	; 9ac2  .!...@...S......
	defb 01dh,037h	; 9ad2

; ----------------------------------------------------------------------
; DATOS leido_9AD4: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9ad4..0x9ad7  (3 bytes)
DATA_leido_9AD4:
	defb 044h,0cch,058h	; 9ad4

; ----------------------------------------------------------------------
; DATOS leido_9AD7: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9ad7..0x9ae9  (18 bytes)
DATA_leido_9AD7:
	defb 02ch,013h,0b2h,04fh,080h,050h,01fh,018h,00eh,0ddh,0d9h,017h,000h,095h,053h,00eh	; 9ad7  ,..O.P........S.
	defb 000h,059h	; 9ae7

; ----------------------------------------------------------------------
; DATOS leido_9AE9: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9ae9..0x9aec  (3 bytes)
DATA_leido_9AE9:
	defb 085h,0cch,0d7h	; 9ae9

; ----------------------------------------------------------------------
; DATOS leido_9AEC: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9aec..0x9afe  (18 bytes)
DATA_leido_9AEC:
	defb 08bh,000h,08fh,0deh,0dch,08bh,05dh,0cfh,058h,019h,01ch,023h,0ceh,00fh,060h,00dh	; 9aec  ......].X..#..`.
	defb 00fh,037h	; 9afc

; ----------------------------------------------------------------------
; DATOS leido_9AFE: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9afe..0x9b01  (3 bytes)
DATA_leido_9AFE:
	defb 063h,0cch,0dbh	; 9afe

; ----------------------------------------------------------------------
; DATOS leido_9B01: 21 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (21 bytes)
;   0x9b01..0x9b16  (21 bytes)
DATA_leido_9B01:
	defb 0ech,0deh,012h,05ch,0cfh,072h,040h,04bh,040h,013h,018h,00eh,059h,0d0h,000h,0cbh	; 9b01  ...\.r@K@...Y...
	defb 0dah,05dh,016h,00fh,037h	; 9b11

; ----------------------------------------------------------------------
; DATOS leido_9B16: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9b16..0x9b19  (3 bytes)
DATA_leido_9B16:
	defb 063h,0cch,0dbh	; 9b16

; ----------------------------------------------------------------------
; DATOS leido_9B19: 21 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (21 bytes)
;   0x9b19..0x9b2e  (21 bytes)
DATA_leido_9B19:
	defb 0ach,053h,072h,016h,0c0h,04ch,013h,018h,011h,093h,0d8h,040h,052h,0cfh,000h,0cbh	; 9b19  .Sr..L.....@R...
	defb 0dah,05dh,016h,00fh,037h	; 9b29

; ----------------------------------------------------------------------
; DATOS leido_9B2E: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9b2e..0x9b31  (3 bytes)
DATA_leido_9B2E:
	defb 049h,0cch,04eh	; 9b2e

; ----------------------------------------------------------------------
; DATOS leido_9B31: 11 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (11 bytes)
;   0x9b31..0x9b3c  (11 bytes)
DATA_leido_9B31:
	defb 0ach,013h,0deh,0ddh,080h,014h,057h,04fh,09dh,025h,025h	; 9b31  ......WO.%%

; ----------------------------------------------------------------------
; DATOS leido_9B3C: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9b3c..0x9b3f  (3 bytes)
DATA_leido_9B3C:
	defb 084h,0cch,0d8h	; 9b3c

; ----------------------------------------------------------------------
; DATOS leido_9B3F: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9b3f..0x9b51  (18 bytes)
DATA_leido_9B3F:
	defb 092h,04fh,040h,059h,0d9h,055h,040h,056h,053h,0cfh,0c0h,012h,0b2h,0ddh,000h,0cfh	; 9b3f  .O@Y.U@VS.......
	defb 04bh,0ceh	; 9b4f

; ----------------------------------------------------------------------
; DATOS leido_9B51: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9b51..0x9b54  (3 bytes)
DATA_leido_9B51:
	defb 04ah,0cch,04ch	; 9b51

; ----------------------------------------------------------------------
; DATOS leido_9B54: 9 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (9 bytes)
;   0x9b54..0x9b5d  (9 bytes)
DATA_leido_9B54:
	defb 0ach,053h,072h,0d6h,0c0h,05ah,01eh,080h,053h	; 9b54  .Sr..Z..S

; ----------------------------------------------------------------------
; DATOS leido_9B5D: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9b5d..0x9b60  (3 bytes)
DATA_leido_9B5D:
	defb 088h,0cch,0d0h	; 9b5d

; ----------------------------------------------------------------------
; DATOS leido_9B60: 12 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (12 bytes)
;   0x9b60..0x9b6c  (12 bytes)
DATA_leido_9B60:
	defb 01eh,012h,00fh,0dch,00fh,060h,020h,00bh,016h,0d1h,04bh,0ddh	; 9b60  .....` ...K.

; ----------------------------------------------------------------------
; DATOS leido_9B6C: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9b6c..0x9b6f  (3 bytes)
DATA_leido_9B6C:
	defb 063h,0cch,0dbh	; 9b6c

; ----------------------------------------------------------------------
; DATOS leido_9B6F: 21 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (21 bytes)
;   0x9b6f..0x9b84  (21 bytes)
DATA_leido_9B6F:
	defb 0ach,012h,0cfh,05dh,080h,04dh,0d7h,0dah,016h,0deh,00fh,096h,040h,0dch,00fh,019h	; 9b6f  ...].M......@...
	defb 0e0h,04fh,00fh,00eh,037h	; 9b7f

; ----------------------------------------------------------------------
; DATOS leido_9B84: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9b84..0x9b87  (3 bytes)
DATA_leido_9B84:
	defb 064h,0cch,0d8h	; 9b84

; ----------------------------------------------------------------------
; DATOS leido_9B87: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9b87..0x9b99  (18 bytes)
DATA_leido_9B87:
	defb 0ach,0d6h,04fh,0b2h,01dh,040h,00fh,00bh,00eh,010h,019h,01ch,0d8h,0cfh,017h,0ddh	; 9b87  ..O..@..........
	defb 053h,0ddh	; 9b97

; ----------------------------------------------------------------------
; DATOS leido_9B99: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9b99..0x9b9c  (3 bytes)
DATA_leido_9B99:
	defb 04ah,0cch,04ch	; 9b99

; ----------------------------------------------------------------------
; DATOS leido_9B9C: 9 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (9 bytes)
;   0x9b9c..0x9ba5  (9 bytes)
DATA_leido_9B9C:
	defb 0d4h,0cbh,017h,0ddh,0c0h,04ch,01ch,09eh,059h	; 9b9c  .....L..Y

; ----------------------------------------------------------------------
; DATOS leido_9BA5: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9ba5..0x9ba8  (3 bytes)
DATA_leido_9BA5:
	defb 088h,0cch,0d0h	; 9ba5

; ----------------------------------------------------------------------
; DATOS leido_9BA8: 12 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (12 bytes)
;   0x9ba8..0x9bb4  (12 bytes)
DATA_leido_9BA8:
	defb 0ddh,0cbh,010h,016h,0e3h,040h,00fh,0deh,05fh,018h,00fh,0ceh	; 9ba8  .....@.._...

; ----------------------------------------------------------------------
; DATOS leido_9BB4: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9bb4..0x9bb7  (3 bytes)
DATA_leido_9BB4:
	defb 045h,0cch,057h	; 9bb4

; ----------------------------------------------------------------------
; DATOS leido_9BB7: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9bb7..0x9bc9  (18 bytes)
DATA_leido_9BB7:
	defb 0e0h,0d3h,022h,018h,080h,04fh,0deh,0cfh,01ch,0ceh,000h,05eh,057h,00fh,0afh,00bh	; 9bb7  .."..O.....^W...
	defb 01ch,01ah	; 9bc7

; ----------------------------------------------------------------------
; DATOS leido_9BC9: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9bc9..0x9bcc  (3 bytes)
DATA_leido_9BC9:
	defb 089h,0cch,0cfh	; 9bc9

; ----------------------------------------------------------------------
; DATOS leido_9BCC: 12 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (12 bytes)
;   0x9bcc..0x9bd8  (12 bytes)
DATA_leido_9BCC:
	defb 01eh,0d9h,040h,00fh,0deh,05fh,058h,080h,052h,017h,00fh,030h	; 9bcc  ..@.._X.R..0

; ----------------------------------------------------------------------
; DATOS leido_9BD8: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9bd8..0x9bdb  (3 bytes)
DATA_leido_9BD8:
	defb 044h,0cch,058h	; 9bd8

; ----------------------------------------------------------------------
; DATOS leido_9BDB: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9bdb..0x9bed  (18 bytes)
DATA_leido_9BDB:
	defb 0ach,021h,0cfh,0dch,0cfh,040h,018h,0ceh,04fh,080h,0cbh,05eh,00bh,00dh,015h,0d0h	; 9bdb  .!...@..O..^....
	defb 05ch,059h	; 9beb

; ----------------------------------------------------------------------
; DATOS leido_9BED: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9bed..0x9bf0  (3 bytes)
DATA_leido_9BED:
	defb 085h,0cch,0d6h	; 9bed

; ----------------------------------------------------------------------
; DATOS leido_9BF0: 17 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (17 bytes)
;   0x9bf0..0x9c01  (17 bytes)
DATA_leido_9BF0:
	defb 0cbh,0d8h,040h,0d8h,0d3h,00eh,018h,01eh,053h,013h,00fh,00eh,00dh,01ch,04bh,01eh	; 9bf0  ..@.....S.....K.
	defb 037h	; 9c00

; ----------------------------------------------------------------------
; DATOS leido_9C01: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9c01..0x9c04  (3 bytes)
DATA_leido_9C01:
	defb 047h,0cch,052h	; 9c01

; ----------------------------------------------------------------------
; DATOS leido_9C04: 14 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (14 bytes)
;   0x9c04..0x9c12  (14 bytes)
DATA_leido_9C04:
	defb 0ech,0deh,012h,05ch,0cfh,072h,0c0h,04bh,040h,0cfh,09dh,01dh,011h,00fh	; 9c04  ...\.r.K@.....

; ----------------------------------------------------------------------
; DATOS leido_9C12: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9c12..0x9c15  (3 bytes)
DATA_leido_9C12:
	defb 087h,0cch,0d2h	; 9c12

; ----------------------------------------------------------------------
; DATOS leido_9C15: 14 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (14 bytes)
;   0x9c15..0x9c23  (14 bytes)
DATA_leido_9C15:
	defb 0cdh,019h,057h,098h,0d1h,040h,0d2h,0dch,059h,051h,052h,0a5h,025h,02dh	; 9c15  ..W..@..YQR.%-

; ----------------------------------------------------------------------
; DATOS leido_9C23: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9c23..0x9c26  (3 bytes)
DATA_leido_9C23:
	defb 044h,0cch,058h	; 9c23

; ----------------------------------------------------------------------
; DATOS leido_9C26: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9c26..0x9c38  (18 bytes)
DATA_leido_9C26:
	defb 0ech,01eh,052h,0d8h,015h,080h,059h,0dfh,000h,04bh,018h,040h,0cfh,09eh,000h,0a1h	; 9c26  ..R...Y..K.@....
	defb 04bh,0a3h	; 9c36

; ----------------------------------------------------------------------
; DATOS leido_9C38: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9c38..0x9c3b  (3 bytes)
DATA_leido_9C38:
	defb 08ah,0cch,0cch	; 9c38

; ----------------------------------------------------------------------
; DATOS leido_9C3B: 9 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (9 bytes)
;   0x9c3b..0x9c44  (9 bytes)
DATA_leido_9C3B:
	defb 012h,00bh,071h,059h,0d9h,056h,067h,0e7h,0a7h	; 9c3b  ..qY.Vg..

; ----------------------------------------------------------------------
; DATOS leido_9C44: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9c44..0x9c47  (3 bytes)
DATA_leido_9C44:
	defb 043h,0cch,059h	; 9c44

; ----------------------------------------------------------------------
; DATOS leido_9C47: 19 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (19 bytes)
;   0x9c47..0x9c5a  (19 bytes)
DATA_leido_9C47:
	defb 02ch,021h,00fh,017h,00bh,023h,018h,019h,01eh,0d2h,0cbh,020h,080h,0d1h,059h,000h	; 9c47  ,!...#..... ..Y.
	defb 0d6h,04bh,01dh	; 9c57

; ----------------------------------------------------------------------
; DATOS leido_9C5A: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9c5a..0x9c5d  (3 bytes)
DATA_leido_9C5A:
	defb 083h,0cch,0dah	; 9c5a

; ----------------------------------------------------------------------
; DATOS leido_9C5D: 20 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (20 bytes)
;   0x9c5d..0x9c71  (20 bytes)
DATA_leido_9C5D:
	defb 00ch,01fh,01eh,023h,019h,01fh,0a1h,019h,0d8h,05eh,0c0h,04fh,0cdh,0cbh,01ah,0f0h	; 9c5d  ...#.....^.O....
	defb 0ceh,013h,027h,02dh	; 9c6d

; ----------------------------------------------------------------------
; DATOS leido_9C71: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9c71..0x9c74  (3 bytes)
DATA_leido_9C71:
	defb 066h,0cch,0d4h	; 9c71

; ----------------------------------------------------------------------
; DATOS leido_9C74: 15 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (15 bytes)
;   0x9c74..0x9c83  (15 bytes)
DATA_leido_9C74:
	defb 02ch,0a0h,04fh,0d9h,017h,040h,05dh,080h,058h,0deh,0c0h,00eh,04bh,0ceh,0a7h	; 9c74  ,.O..@].X...K..

; ----------------------------------------------------------------------
; DATOS leido_9C83: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9c83..0x9c86  (3 bytes)
DATA_leido_9C83:
	defb 045h,0cch,056h	; 9c83

; ----------------------------------------------------------------------
; DATOS leido_9C86: 17 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (17 bytes)
;   0x9c86..0x9c97  (17 bytes)
DATA_leido_9C86:
	defb 0ech,0dfh,01dh,0c0h,0deh,012h,0c0h,01dh,052h,00fh,016h,00eh,0ceh,00fh,060h,00dh	; 9c86  ........R.....`.
	defb 00fh	; 9c96

; ----------------------------------------------------------------------
; DATOS leido_9C97: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9c97..0x9c9a  (3 bytes)
DATA_leido_9C97:
	defb 085h,0cch,0d6h	; 9c97

; ----------------------------------------------------------------------
; DATOS leido_9C9A: 17 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (17 bytes)
;   0x9c9a..0x9cab  (17 bytes)
DATA_leido_9C9A:
	defb 061h,00fh,040h,019h,01eh,040h,01ch,019h,017h,08ch,0cbh,04dh,04fh,09ch,053h,018h	; 9c9a  a.@..@.....MO.S.
	defb 037h	; 9caa

; ----------------------------------------------------------------------
; DATOS leido_9CAB: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9cab..0x9cae  (3 bytes)
DATA_leido_9CAB:
	defb 065h,0cch,0d6h	; 9cab

; ----------------------------------------------------------------------
; DATOS leido_9CAE: 17 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (17 bytes)
;   0x9cae..0x9cbf  (17 bytes)
DATA_leido_9CAE:
	defb 0ech,01dh,061h,01eh,00dh,012h,099h,0d8h,040h,052h,0cfh,040h,092h,053h,04fh,00eh	; 9cae  ..a.....@R.@.SO.
	defb 037h	; 9cbe

; ----------------------------------------------------------------------
; DATOS leido_9CBF: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9cbf..0x9cc2  (3 bytes)
DATA_leido_9CBF:
	defb 06bh,0cch,0cbh	; 9cbf

; ----------------------------------------------------------------------
; DATOS leido_9CC2: 9 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (9 bytes)
;   0x9cc2..0x9ccb  (9 bytes)
DATA_leido_9CC2:
	defb 0ech,01dh,052h,00fh,016h,00eh,019h,018h,037h	; 9cc2  ..R.....7

; ----------------------------------------------------------------------
; DATOS leido_9CCB: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9ccb..0x9cce  (3 bytes)
DATA_leido_9CCB:
	defb 064h,0cch,0d7h	; 9ccb

; ----------------------------------------------------------------------
; DATOS leido_9CCE: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9cce..0x9ce0  (18 bytes)
DATA_leido_9CCE:
	defb 0ach,0d6h,04fh,072h,01dh,040h,04fh,09eh,040h,05fh,09eh,040h,0d0h,0c0h,012h,01ch	; 9cce  ..Or.@O.@_.@....
	defb 00fh,037h	; 9cde

; ----------------------------------------------------------------------
; DATOS leido_9CE0: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9ce0..0x9ce3  (3 bytes)
DATA_leido_9CE0:
	defb 042h,0cch,05bh	; 9ce0

; ----------------------------------------------------------------------
; DATOS leido_9CE3: 21 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (21 bytes)
;   0x9ce3..0x9cf8  (21 bytes)
DATA_leido_9CE3:
	defb 0ech,0deh,012h,080h,020h,093h,04fh,0d8h,000h,09ch,0cbh,050h,000h,08dh,04bh,018h	; 9ce3  .... .O....P..K.
	defb 019h,01eh,01fh,01dh,00fh	; 9cf3

; ----------------------------------------------------------------------
; DATOS leido_9CF8: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9cf8..0x9cfb  (3 bytes)
DATA_leido_9CF8:
	defb 084h,0cch,0d8h	; 9cf8

; ----------------------------------------------------------------------
; DATOS leido_9CFB: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9cfb..0x9d0d  (18 bytes)
DATA_leido_9CFB:
	defb 01eh,012h,00fh,0ddh,0d2h,013h,0d6h,00eh,040h,0d8h,080h,021h,0dch,05ah,040h,0d9h	; 9cfb  ........@..!.Z@.
	defb 04eh,0cfh	; 9d0b

; ----------------------------------------------------------------------
; DATOS leido_9D0D: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d0d..0x9d10  (3 bytes)
DATA_leido_9D0D:
	defb 044h,0cch,057h	; 9d0d

; ----------------------------------------------------------------------
; DATOS leido_9D10: 18 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (18 bytes)
;   0x9d10..0x9d22  (18 bytes)
DATA_leido_9D10:
	defb 02ch,08dh,04bh,00dh,00fh,016h,0a1h,08bh,05ch,040h,09eh,052h,01fh,011h,012h,021h	; 9d10  ,.K.....\@.R...!
	defb 012h,019h	; 9d20

; ----------------------------------------------------------------------
; DATOS leido_9D22: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d22..0x9d25  (3 bytes)
DATA_leido_9D22:
	defb 083h,0cch,0d9h	; 9d22

; ----------------------------------------------------------------------
; DATOS leido_9D25: 19 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (19 bytes)
;   0x9d25..0x9d38  (19 bytes)
DATA_leido_9D25:
	defb 055h,018h,099h,09dh,000h,061h,00fh,01ch,00fh,0a1h,04fh,072h,0d6h,040h,04fh,0cfh	; 9d25  U....a....Or.@O.
	defb 0dch,011h,037h	; 9d35

; ----------------------------------------------------------------------
; DATOS leido_9D38: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d38..0x9d3b  (3 bytes)
DATA_leido_9D38:
	defb 06bh,0cch,0cah	; 9d38

; ----------------------------------------------------------------------
; DATOS leido_9D3B: 8 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (8 bytes)
;   0x9d3b..0x9d43  (8 bytes)
DATA_leido_9D3B:
	defb 02ch,0e1h,04bh,01ah,000h,059h,010h,037h	; 9d3b  ,.K..Y.7

; ----------------------------------------------------------------------
; DATOS leido_9D43: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d43..0x9d46  (3 bytes)
DATA_leido_9D43:
	defb 00fh,0cah,002h	; 9d43

; ----------------------------------------------------------------------
; DATOS leido_9D46: 2 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (2 bytes)
;   0x9d46..0x9d48  (2 bytes)
DATA_leido_9D46:
	defb 038h,039h	; 9d46

; ----------------------------------------------------------------------
; DATOS leido_9D48: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d48..0x9d4b  (3 bytes)
DATA_leido_9D48:
	defb 02fh,0cah,002h	; 9d48

; ----------------------------------------------------------------------
; DATOS leido_9D4B: 2 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (2 bytes)
;   0x9d4b..0x9d4d  (2 bytes)
DATA_leido_9D4B:
	defb 03ah,03bh	; 9d4b

; ----------------------------------------------------------------------
; DATOS leido_9D4D: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d4d..0x9d50  (3 bytes)
DATA_leido_9D4D:
	defb 063h,0cah,012h	; 9d4d

; ----------------------------------------------------------------------
; DATOS leido_9D50: 14 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (14 bytes)
;   0x9d50..0x9d5e  (14 bytes)
DATA_leido_9D50:
	defb 023h,0cfh,04bh,000h,000h,000h,000h,000h,000h,0c0h,0cfh,020h,018h,01eh	; 9d50  #.K........ ..

; ----------------------------------------------------------------------
; DATOS leido_9D5E: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d5e..0x9d61  (3 bytes)
DATA_leido_9D5E:
	defb 0a2h,0cah,01ch	; 9d5e

; ----------------------------------------------------------------------
; DATOS leido_9D61: 21 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (21 bytes)
;   0x9d61..0x9d76  (21 bytes)
DATA_leido_9D61:
	defb 051h,007h,009h,08ah,0c0h,000h,08bh,0e0h,013h,000h,0cch,05fh,01eh,019h,018h,05dh	; 9d61  Q.........._...]
	defb 0cfh,05eh,080h,0d9h,05fh	; 9d71

; ----------------------------------------------------------------------
; DATOS leido_9D76: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d76..0x9d79  (3 bytes)
DATA_leido_9D76:
	defb 0e9h,0cah,013h	; 9d76

; ----------------------------------------------------------------------
; DATOS leido_9D79: 15 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (15 bytes)
;   0x9d79..0x9d88  (15 bytes)
DATA_leido_9D79:
	defb 013h,018h,080h,013h,0a2h,04fh,040h,010h,053h,012h,0deh,04fh,000h,01eh,019h	; 9d79  .....O@.S..O...

; ----------------------------------------------------------------------
; DATOS leido_9D88: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d88..0x9d8b  (3 bytes)
DATA_leido_9D88:
	defb 029h,0cbh,030h	; 9d88

; ----------------------------------------------------------------------
; DATOS leido_9D8B: 12 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (12 bytes)
;   0x9d8b..0x9d97  (12 bytes)
DATA_leido_9D8B:
	defb 0dch,0cfh,01ah,0d6h,080h,00ch,00dh,0deh,04fh,013h,019h,0d8h	; 9d8b  ........O...

; ----------------------------------------------------------------------
; DATOS leido_9D97: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9d97..0x9d9a  (3 bytes)
DATA_leido_9D97:
	defb 06dh,0cbh,0b1h	; 9d97

; ----------------------------------------------------------------------
; DATOS leido_9D9A: 13 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (13 bytes)
;   0x9d9a..0x9da7  (13 bytes)
DATA_leido_9D9A:
	defb 018h,019h,01eh,023h,00fh,01eh,0dch,0cfh,05eh,09ch,0d8h,00fh,030h	; 9d9a  ...#....^...0

; ----------------------------------------------------------------------
; DATOS leido_9DA7: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9da7..0x9daa  (3 bytes)
DATA_leido_9DA7:
	defb 066h,0cbh,0b5h	; 9da7

; ----------------------------------------------------------------------
; DATOS leido_9DAA: 16 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (16 bytes)
;   0x9daa..0x9dba  (16 bytes)
DATA_leido_9DAA:
	defb 04bh,080h,056h,098h,051h,040h,019h,018h,011h,0deh,0d3h,017h,040h,08bh,051h,030h	; 9daa  K.V.Q@......@.Q0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9dba..0x9de1  (39 bytes)
DATA_9DBA:
	defb 043h,0cbh,03bh,01ah,096h,04bh,04fh,01eh,040h,0dch,00bh,04eh,05fh,01dh,080h,0cbh	; 9dba  C....KO.@..N_...
	defb 01dh,040h,098h,060h,059h,020h,00fh,00eh,088h,0cbh,0b0h,013h,058h,000h,0c0h,09dh	; 9dca  .@.`Y ......X...
	defb 01ah,04dh,00fh,080h,0cbh,01ch,0ddh	; 9dda

; ----------------------------------------------------------------------
; DATOS leido_9DE1: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9de1..0x9de4  (3 bytes)
DATA_leido_9DE1:
	defb 068h,0cbh,0b0h	; 9de1

; ----------------------------------------------------------------------
; DATOS leido_9DE4: 12 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (12 bytes)
;   0x9de4..0x9df0  (12 bytes)
DATA_leido_9DE4:
	defb 060h,0cfh,05ch,01fh,0ddh,000h,0cbh,0cdh,01eh,01ch,093h,059h	; 9de4  `.\........Y

; ----------------------------------------------------------------------
; DATOS leido_9DF0: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9df0..0x9df3  (3 bytes)
DATA_leido_9DF0:
	defb 06ah,0cbh,0ach	; 9df0

; ----------------------------------------------------------------------
; DATOS leido_9DF3: 9 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (9 bytes)
;   0x9df3..0x9dfc  (9 bytes)
DATA_leido_9DF3:
	defb 060h,0cfh,05ch,01fh,01dh,080h,0cfh,058h,059h	; 9df3  `.\....XY

; ----------------------------------------------------------------------
; DATOS leido_9DFC: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9dfc..0x9dff  (3 bytes)
DATA_leido_9DFC:
	defb 068h,0cbh,0b1h	; 9dfc

; ----------------------------------------------------------------------
; DATOS leido_9DFF: 13 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (13 bytes)
;   0x9dff..0x9e0c  (13 bytes)
DATA_leido_9DFF:
	defb 060h,0cfh,05ch,05fh,0ddh,040h,0cbh,056h,04bh,0cbh,0d8h,00eh,01ch	; 9dff  `.\_.@.VK....

; ----------------------------------------------------------------------
; DATOS leido_9E0C: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9e0c..0x9e0f  (3 bytes)
DATA_leido_9E0C:
	defb 047h,0cbh,032h	; 9e0c

; ----------------------------------------------------------------------
; DATOS leido_9E0F: 14 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (14 bytes)
;   0x9e0f..0x9e1d  (14 bytes)
DATA_leido_9E0F:
	defb 0deh,0d3h,017h,040h,0d2h,04bh,040h,0dah,04bh,05dh,04fh,08eh,025h,025h	; 9e0f  ...@.K@.K]O.%%

; ----------------------------------------------------------------------
; DATOS leido_9E1D: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9e1d..0x9e20  (3 bytes)
DATA_leido_9E1D:
	defb 081h,0cbh,0beh	; 9e1d

; ----------------------------------------------------------------------
; DATOS leido_9E20: 23 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (23 bytes)
;   0x9e20..0x9e37  (23 bytes)
DATA_leido_9E20:
	defb 003h,001h,001h,023h,0cfh,04bh,0ddh,080h,016h,01eh,00fh,01ch,01eh,0d9h,000h,08fh	; 9e20  ...#.K..........
	defb 000h,08fh,04bh,04dh,09eh,025h,025h	; 9e30

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e37..0x9e4f  (24 bytes)
DATA_9E37:
	defb 062h,0cbh,0bch,0d3h,01eh,040h,05dh,080h,058h,061h,080h,007h,041h,00ah,040h,0dch	; 9e37  b....@].Xa..A.@.
	defb 00bh,04eh,0dfh,01dh,080h,00fh,00bh,0dch	; 9e47  .N......

; ----------------------------------------------------------------------
; DATOS leido_9E4F: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9e4f..0x9e52  (3 bytes)
DATA_leido_9E4F:
	defb 043h,0cbh,03bh	; 9e4f

; ----------------------------------------------------------------------
; DATOS leido_9E52: 21 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (21 bytes)
;   0x9e52..0x9e67  (21 bytes)
DATA_leido_9E52:
	defb 01ah,096h,04bh,00fh,09eh,040h,04fh,0d7h,04fh,053h,01dh,080h,0cbh,01dh,040h,098h	; 9e52  ..K..@O.OS....@.
	defb 060h,059h,020h,00fh,00eh	; 9e62

; ----------------------------------------------------------------------
; DATOS leido_9E67: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9e67..0x9e6a  (3 bytes)
DATA_leido_9E67:
	defb 088h,0cbh,0b0h	; 9e67

; ----------------------------------------------------------------------
; DATOS leido_9E6A: 12 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (12 bytes)
;   0x9e6a..0x9e76  (12 bytes)
DATA_leido_9E6A:
	defb 013h,058h,000h,0c0h,09dh,01ah,04dh,00fh,080h,0cbh,01ch,0ddh	; 9e6a  .X....M.....

; ----------------------------------------------------------------------
; DATOS leido_9E76: 3 bytes que leen p26:634C, p26:634E, p26:6350 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:634C, p26:634E, p26:6350
;   (3 bytes)
;   0x9e76..0x9e79  (3 bytes)
DATA_leido_9E76:
	defb 062h,0cbh,0bch	; 9e76

; ----------------------------------------------------------------------
; DATOS leido_9E79: 21 bytes que lee p26:6392 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:6392 (21 bytes)
;   0x9e79..0x9e8e  (21 bytes)
DATA_leido_9E79:
	defb 0d3h,01eh,040h,05dh,080h,058h,061h,080h,007h,001h,08ah,040h,04fh,0d7h,04fh,0d3h	; 9e79  ..@].Xa....@O.O.
	defb 01dh,080h,00fh,00bh,0dch	; 9e89

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e8e..0xa000  (370 bytes)
DATA_9E8E:
	defb 00fh,0cah,002h,038h,039h,02fh,0cah,002h,03ah,03bh,063h,0cah,012h,023h,0cfh,04bh	; 9e8e  ...89/..:.c..#.K
	defb 000h,000h,000h,000h,000h,000h,0c0h,0cfh,020h,018h,01eh,0a2h,0cah,01ch,051h,047h	; 9e9e  ........ .....QG
	defb 007h,002h,0c0h,000h,093h,01ch,05eh,000h,019h,010h,0d4h,0cbh,017h,0ddh,0c0h,04ch	; 9eae  ......^........L
	defb 01ch,09eh,059h,0e2h,0cah,019h,091h,047h,007h,049h,000h,080h,04bh,01ch,080h,013h	; 9ebe  ..Y....G.I..K...
	defb 01eh,012h,08ch,0cbh,04dh,04fh,09ch,053h,018h,022h,0cbh,035h,0d1h,047h,007h,047h	; 9ece  ....MO.S.".5.G.G
	defb 000h,080h,04bh,01ch,080h,013h,01eh,012h,060h,08fh,058h,017h,069h,0cbh,036h,0d4h	; 9ede  ..K.....`.X.i.6.
	defb 0cbh,017h,0ddh,0c0h,00ch,0cdh,0d9h,017h,0ddh,080h,016h,01ch,05dh,0c0h,035h,036h	; 9eee  ............].56
	defb 0a2h,0cbh,03ah,051h,007h,008h,04ah,000h,080h,04bh,01ch,080h,013h,01eh,012h,0ddh	; 9efe  ..:Q..J..K......
	defb 08bh,016h,097h,0cbh,018h,00fh,01ch,0e2h,0cbh,03ch,091h,007h,008h,089h,0c0h,000h	; 9f0e  .........<......
	defb 08fh,00bh,05eh,000h,019h,010h,0d4h,0cbh,017h,0ddh,0c0h,04ch,01ch,09eh,059h,062h	; 9f1e  ..^........L..Yb
	defb 0cch,056h,051h,007h,009h,00ah,0c0h,080h,0e0h,0d3h,022h,018h,02dh,040h,093h,011h	; 9f2e  .VQ.......".-@..
	defb 05eh,00fh,01ch,0ach,0cch,0c9h,0ceh,0cfh,020h,0d6h,0d9h,01ah,00eh,00ch,0cch,047h	; 9f3e  ^....... ......G
	defb 0ach,020h,093h,00fh,018h,02dh,046h,0cch,054h,090h,013h,051h,01eh,00fh,01ch,0ceh	; 9f4e  . ...-F.T..Q....
	defb 0cfh,020h,0d6h,0d9h,01ah,0ceh,000h,08ch,084h,0cch,059h,0d8h,0cfh,017h,09dh,013h	; 9f5e  . ........Y.....
	defb 0ddh,0c0h,01dh,04dh,06fh,0deh,00fh,052h,000h,04bh,0cfh,018h,08dh,030h,0c6h,0cch	; 9f6e  ...Mo..R.K...0..
	defb 0d4h,01eh,0d2h,04fh,00fh,0c0h,04bh,00fh,000h,005h,04dh,0d6h,04bh,01dh,00fh,0ddh	; 9f7e  ...O..K...M.K...
	defb 02ch,0cch,048h,0ech,0d1h,04bh,04eh,0d3h,08fh,065h,0cch,057h,0cbh,01ch,05eh,0d0h	; 9f8e  ,.H..KN..e.W..^.
	defb 013h,04dh,0cbh,016h,040h,098h,05eh,04fh,0d6h,0d3h,011h,018h,00dh,00fh,0a2h,0cch	; 9f9e  .M..@.^O........
	defb 0dch,08dh,099h,057h,01fh,0deh,04fh,040h,0d3h,058h,09eh,04bh,056h,04fh,08eh,040h	; 9fae  ...W..O@.X.KVO.@
	defb 0d8h,000h,060h,022h,00fh,0d8h,009h,0cch,04eh,02ch,00eh,08bh,013h,0ceh,000h,05fh	; 9fbe  ..`"....N,....._
	defb 09ch,05eh,018h,02dh,043h,0cch,05bh,0ceh,0d3h,01ch,08dh,0deh,000h,0cfh,0ddh,00dh	; 9fce  .^.-C.[.........
	defb 018h,08eh,04bh,01eh,000h,059h,0c0h,054h,04bh,00fh,01dh,030h,082h,0cch,05ch,0e0h	; 9fde  ..K..Y.TK..0..\.
	defb 0d3h,022h,0d8h,000h,050h,0d1h,0d2h,01eh,0dch,000h,05ah,016h,019h,0deh,012h,00bh	; 9fee  ."..P.....Z.....
	defb 01dh,092h	; 9ffe

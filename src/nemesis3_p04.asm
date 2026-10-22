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
l93ceh:	equ 0x093ce
l9401h:	equ 0x09401
l942bh:	equ 0x0942b
l9468h:	equ 0x09468
l94d0h:	equ 0x094d0

; ======================================================================
; CODIGO 0x8000..0x80e0  (224 bytes)
; ======================================================================


L_8000:
	ld a,(0e60dh)		;8000   ; la nave se va (0xE60D): 1 empieza, 2 se va
	dec a			;8003   ; 1: empieza
	jr z,L_800A		;8004
	dec a			;8006   ; 2: se va
	jr z,L_8017		;8007
	ret			;8009
L_800A:
	ld hl,00040h		;800a   ; empieza: velocidad 0x40, al paso 2, la orden 0x83 y el sonido 0x50
	ld (0e60eh),hl		;800d   ; la velocidad 0x40
	ld hl,0e60dh		;8010   ; al paso 2
	inc (hl)			;8013
	jp 05938h		;8014   ; orden_83_y_sonido_50: manda la orden 0x83 al motor y pide el sonido 0x50
L_8017:
	ld hl,(0e60eh)		;8017   ; se va acelerando (+0x30 cada cuadro)...
	ld de,00030h		;801a   ; + 0x30 cada cuadro
	add hl,de			;801d
	ld (0e60eh),hl		;801e
	ld de,(0e605h)		;8021   ; ...la x de 16 bits (0xE605) crece...
	add hl,de			;8025   ; la x + la velocidad
	ld (0e605h),hl		;8026
	ld a,h			;8029   ; ...hasta salir por la derecha (0xF0): se acaba
	cp 0f0h		;802a   ; hasta 0xF0
	ret c			;802c
	xor a			;802d   ; acabado: 0xE60D = 0
	ld (0e60dh),a		;802e
	ret			;8031
L_8032:
	call L_805A		;8032   ; solo el dibujo
	ret			;8035
L_8036:
	ld a,(0e60dh)		;8036   ; la nave, cada cuadro: yendose, solo el dibujo
	or a			;8039   ; yendose: solo el dibujo
	jr nz,L_8032		;803a
	ld a,(0e600h)		;803c   ; estallando: p04:845D; sin nave: nada
	or a			;803f   ; estallando: p04:845D
	jp m,L_845D		;8040
	ret z			;8043   ; sin nave, nada
	call L_81EB		;8044   ; el movimiento con el mando (p04:81EB)...
	call L_8228		;8047   ; ...se suma...
	call L_8237		;804a   ; ...lo de la fase 3 (p04:8237)
	call L_829E		;804d   ; p04:829E
	call L_81B8		;8050   ; dentro de la pantalla
	call L_805A		;8053   ; el dibujo (p04:805A)
	call L_83CF		;8056   ; p04:83CF
	ret			;8059
L_805A:
	call L_8091		;805a   ; el dibujo de la nave: su juego de sprites (p04:8091)...
	ld bc,0e309h		;805d   ; ...segun arriba/abajo de los mandos
	call L_8064		;8060   ; arriba (bit 0) o abajo (bit 1); los dos a la vez, como ninguno
	ret			;8063
L_8064:
	ld a,(bc)			;8064   ; arriba (bit 0) o abajo (bit 1); los dos a la vez, como ninguno
	and 003h		;8065   ; arriba y abajo a la vez: como ninguno
	cp 003h		;8067
	jp nz,L_806D		;8069
	xor a			;806c
L_806D:
	add a,a			;806d   ; 8 bytes cada postura
	add a,a			;806e   ; x 8: la postura
	add a,a			;806f
	ld c,a			;8070
	ld b,000h		;8071
	add hl,bc			;8073
	ld de,0e618h		;8074   ; dos sprites en 0xE618
	call L_807E		;8077   ; los dos sprites
	call L_807E		;807a
	ret			;807d
L_807E:
	ld a,(0e604h)		;807e   ; la y de la nave + dy...
	add a,(hl)			;8081   ; la y + dy
	ld (de),a			;8082
	inc e			;8083
	inc hl			;8084
	ld a,(0e606h)		;8085   ; ...la x + dx...
	add a,(hl)			;8088   ; la x + dx
	ld (de),a			;8089
	inc e			;808a
	inc hl			;808b
	ldi		;808c   ; ...el dibujo y el color
	ldi		;808e   ; el dibujo y el color
	ret			;8090
L_8091:
	ld a,(0e600h)		;8091   ; el juego de sprites segun 0xE600: 1 sin escudo (0x80E0)
	dec a			;8094   ; 1: sin escudo
	jr z,L_80DC		;8095   ; 1: sin escudo
	dec a			;8097   ; 2: el escudo de delante
	jr z,L_80BB		;8098   ; 2: el de delante
	ld a,(0e601h)		;809a   ; 3: el escudo grande (0x8158/0x8170, o 0x8188/0x81A0 con un golpe), parpadeando cada 4 cuadros
	cp 002h		;809d   ; el escudo grande con 2 o mas golpes (0xE601): 0x8158 y 0x8170...
	jr c,L_80AE		;809f
	ld hl,08158h		;80a1
	ld a,(0e303h)		;80a4   ; ...cambiando cada 4 cuadros
	bit 2,a		;80a7   ; cada 4 cuadros uno u otro
	ret z			;80a9
	ld hl,08170h		;80aa
	ret			;80ad
L_80AE:
	ld hl,08188h		;80ae   ; con menos, 0x8188 y 0x81A0
	ld a,(0e303h)		;80b1   ; lee la cuenta de cuadros del juego
	bit 2,a		;80b4   ; cada 4 cuadros uno u otro
	ret z			;80b6
	ld hl,081a0h		;80b7
	ret			;80ba
L_80BB:
	ld a,(0e601h)		;80bb   ; 2: el escudo de delante (0x80F8/0x8110, o 0x8128/0x8140)
	cp 002h		;80be   ; el de delante con 2 o mas: 0x80F8 y 0x8110...
	jr c,L_80CF		;80c0
	ld hl,080f8h		;80c2
	ld a,(0e303h)		;80c5   ; lee la cuenta de cuadros del juego
	bit 2,a		;80c8   ; cada 4 cuadros uno u otro
	ret z			;80ca
	ld hl,08110h		;80cb
	ret			;80ce
L_80CF:
	ld hl,08128h		;80cf   ; ...con menos, 0x8128 y 0x8140
	ld a,(0e303h)		;80d2   ; lee la cuenta de cuadros del juego
	bit 2,a		;80d5   ; cada 4 cuadros uno u otro
	ret z			;80d7
	ld hl,08140h		;80d8
	ret			;80db
L_80DC:
	ld hl,080e0h		;80dc   ; sin escudo, los de 0x80E0
	ret			;80df

; ----------------------------------------------------------------------
; DATOS leido_80E0: 24 bytes que leen p04:8081, p04:8088, p04:808C, p04:808E
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p04:8081, p04:8088, p04:808C, p04:808E (24 bytes)
;   0x80e0..0x80f8  (24 bytes)
DATA_leido_80E0:
	defb 000h,000h,004h,00fh,000h,000h,010h,005h,000h,000h,008h,00fh,000h,000h,014h,005h	; 80e0  ................
	defb 000h,000h,000h,00fh,000h,000h,00ch,005h	; 80f0  ........

; ----------------------------------------------------------------------
; DATOS resto_80F8: lo apuntan con el banco puesto p04:80C2 (0x80F8), p04:80CB
;   (0x8110), p04:80CF (0x8128), p04:80D8 (0x8140), p04:80A1 (0x8158),
;   p04:80AA (0x8170); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p04:80C2, p04:80CB, p04:80CF, p04:80D8, p04:80A1,
;   p04:80AA (192 bytes)
;   0x80f8..0x81b8  (192 bytes)
DATA_resto_80F8:
	defb 000h,000h,004h,00fh,000h,008h,014h,005h,000h,000h,008h,00fh,000h,008h,01ch,005h	; 80f8  ................
	defb 000h,000h,000h,00fh,000h,008h,00ch,005h,000h,000h,004h,00fh,000h,008h,018h,005h	; 8108  ................
	defb 000h,000h,008h,00fh,000h,008h,020h,005h,000h,000h,000h,00fh,000h,008h,010h,005h	; 8118  ...... .........
	defb 000h,000h,004h,00fh,000h,008h,014h,009h,000h,000h,008h,00fh,000h,008h,01ch,009h	; 8128  ................
	defb 000h,000h,000h,00fh,000h,008h,00ch,009h,000h,000h,004h,00fh,000h,008h,018h,009h	; 8138  ................
	defb 000h,000h,008h,00fh,000h,008h,020h,009h,000h,000h,000h,00fh,000h,008h,010h,009h	; 8148  ...... .........
	defb 000h,000h,004h,00fh,000h,000h,014h,005h,000h,000h,008h,00fh,000h,000h,01ch,005h	; 8158  ................
	defb 000h,000h,000h,00fh,000h,000h,00ch,005h,000h,000h,004h,00fh,000h,000h,018h,005h	; 8168  ................
	defb 000h,000h,008h,00fh,000h,000h,020h,005h,000h,000h,000h,00fh,000h,000h,010h,005h	; 8178  ...... .........
	defb 000h,000h,004h,00fh,000h,000h,014h,009h,000h,000h,008h,00fh,000h,000h,01ch,009h	; 8188  ................
	defb 000h,000h,000h,00fh,000h,000h,00ch,009h,000h,000h,004h,00fh,000h,000h,018h,009h	; 8198  ................
	defb 000h,000h,008h,00fh,000h,000h,020h,009h,000h,000h,000h,00fh,000h,000h,010h,009h	; 81a8  ...... .........

; ======================================================================
; CODIGO 0x81b8..0x8336  (382 bytes)
; ======================================================================


L_81B8:
	call L_81D6		;81b8   ; la nave dentro de la pantalla: en x...
	call L_81BF		;81bb   ; y en y
	ret			;81be
L_81BF:
	ld hl,0e604h		;81bf   ; ...y en y, entre 0 y 0xA5
	ld a,(hl)			;81c2   ; la y + 0x10, entre 0x10 y 0xB5...
	add a,010h		;81c3   ; la y + 0x10, al menos 0x10...
	cp 010h		;81c5
	jp nc,L_81CC		;81c7
	ld a,010h		;81ca
L_81CC:
	cp 0b6h		;81cc   ; ...y como mucho 0xB5
	jr c,L_81D2		;81ce
	ld a,0b5h		;81d0
L_81D2:
	sub 010h		;81d2   ; ...menos 0x10
	ld (hl),a			;81d4
	ret			;81d5
L_81D6:
	ld c,000h		;81d6   ; en x entre 8 y 0xD8 (C = 1 si toca la izquierda)
	ld hl,0e606h		;81d8   ; apunta a la x de la nave
	ld a,(hl)			;81db   ; por debajo de 8: 8, y C = 1
	cp 008h		;81dc
	jr nc,L_81E3		;81de
	ld a,008h		;81e0
	inc c			;81e2
L_81E3:
	cp 0d9h		;81e3   ; desde 0xD9: 0xD8
	jr c,L_81E9		;81e5
	ld a,0d8h		;81e7
L_81E9:
	ld (hl),a			;81e9
	ret			;81ea
L_81EB:
	ld a,(0e309h)		;81eb   ; el movimiento: la direccion de los mandos (0x83F3: dx y dy de 16 bits)...
	and 00fh		;81ee   ; la palanca (4 bits) x 4: su entrada en la tabla de 0x83F3
	add a,a			;81f0
	add a,a			;81f1
	ld c,a			;81f2
	ld b,000h		;81f3
	ld hl,083f3h		;81f5
	add hl,bc			;81f8
	ld e,(hl)			;81f9   ; el paso en y (DE)...
	inc hl			;81fa
	ld d,(hl)			;81fb
	inc hl			;81fc
	ld c,(hl)			;81fd   ; ...y el paso en x (BC)
	inc hl			;81fe
	ld b,(hl)			;81ff
	ld (0ef82h),bc		;8200
	ld a,(0e602h)		;8204   ; ...por la velocidad (0xE602 + 3)
	add a,003h		;8207
	ld (0ef80h),a		;8209
	ld b,a			;820c
	ld l,e			;820d   ; el paso en y x la velocidad...
	ld h,d			;820e
L_820F:
	add hl,de			;820f
	djnz L_820F		;8210
	ld (0ef84h),hl		;8212
	ld hl,(0ef82h)		;8215   ; ...y el de x
	ld e,l			;8218
	ld d,h			;8219
	ld a,(0ef80h)		;821a
	ld b,a			;821d
L_821E:
	add hl,de			;821e
	djnz L_821E		;821f
	ld c,l			;8221   ; BC el de x
	ld b,h			;8222
	ld de,(0ef84h)		;8223   ; y DE el de y
	ret			;8227
L_8228:
	ld hl,(0e603h)		;8228   ; la y de 16 bits (0xE603) + DE...
	add hl,de			;822b
	ld (0e603h),hl		;822c
	ld hl,(0e605h)		;822f   ; ...y la x (0xE605) + BC
	add hl,bc			;8232
	ld (0e605h),hl		;8233
	ret			;8236
L_8237:
	ld a,(0e361h)		;8237   ; la fase 3 (la de agua):
	cp 003h		;823a
	ret nz			;823c
	ld de,(0e363h)		;823d   ; entre el scroll 0x80 y 0x170, las corrientes:
	ld hl,0007fh		;8241   ; antes de 0x80, nada
	or a			;8244
	sbc hl,de		;8245
	ret nc			;8247
	ld hl,00170h		;8248   ; despues de 0x170, nada
	or a			;824b
	sbc hl,de		;824c
	ret c			;824e
	call L_8271		;824f   ; la nave sobre una corriente (caracteres 0x59-0x5C, p04:8271)?
	ret nc			;8252   ; sin corriente, nada
	push af			;8253
	call L_8295		;8254   ; el sonido del agua
	pop af			;8257
	ld hl,0e411h		;8258   ; 0xE411 = 1
	ld (hl),001h		;825b
	cp 002h		;825d   ; 0x59-0x5A la empujan 2 hacia arriba...
	ld hl,0e604h		;825f   ; apunta a la y de la nave (el primer byte de su sprite, p01:797C)
	jr nc,L_826C		;8262
	ld a,(hl)			;8264   ; 2 arriba, sin bajar de 0
	sub 002h		;8265
	jr nc,L_826A		;8267
	xor a			;8269
L_826A:
	ld (hl),a			;826a
	ret			;826b
L_826C:
	ld a,(hl)			;826c   ; ...0x5B-0x5C hacia abajo
	add a,002h		;826d
	ld (hl),a			;826f
	ret			;8270
L_8271:
	ld a,(0e604h)		;8271   ; el caracter del bufer bajo la nave (y el de al lado si va entre dos columnas)
	add a,008h		;8274   ; la y + 8 (L)...
	ld l,a			;8276
	ld a,(0e606h)		;8277   ; ...la x (H)
	ld h,a			;827a
	and 007h		;827b   ; entre dos columnas (x & 7 desde 4)?
	cp 004h		;827d
	push af			;827f
	call 04a46h		;8280   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	pop af			;8283
	jr nc,L_828A		;8284
	call L_828F		;8286   ; es una corriente? (0x59-0x5C: C)
	ret c			;8289
L_828A:
	inc hl			;828a   ; la de al lado
	call L_828F		;828b   ; es una corriente? (0x59-0x5C: C)
	ret			;828e
L_828F:
	ld a,(hl)			;828f   ; es una corriente? (0x59-0x5C: C)
	sub 059h		;8290
	cp 004h		;8292
	ret			;8294
L_8295:
	ld a,(0e303h)		;8295   ; cada 16 cuadros, el sonido 0x36
	and 00fh		;8298   ; cada 16 cuadros
	call z,058f9h		;829a   ; sonido_36: pide el sonido 0x36
	ret			;829d
L_829E:
	ld a,(0e361h)		;829e   ; la fase 3, entre el scroll 0x180 y 0x1D8: los remolinos atraen la nave (p04:8342)
	cp 003h		;82a1
	ret nz			;82a3
	ld a,(0e60dh)		;82a4   ; con la nave saliendo, nada
	or a			;82a7
	ret nz			;82a8
	ld hl,(0e363h)		;82a9   ; lee la posicion del scroll (16 bits)
	ld de,00180h		;82ac   ; antes de 0x180, nada
	rst 20h			;82af
	ret c			;82b0
	ld de,001d8h		;82b1   ; despues de 0x1D8, p04:82C1
	rst 20h			;82b4
	jr nc,L_82C1		;82b5
	call L_8342		;82b7   ; la atraccion, el arrastre (p04:82EC) y el sonido
	call L_82EC		;82ba   ; la nave arrastrada: y + 0xE643, x + 0xE645 (16 bits, sin salirse)
	call L_8295		;82bd   ; cada 16 cuadros, el sonido 0x36
	ret			;82c0
L_82C1:
	ld hl,(0e645h)		;82c1   ; pasado 0x1D8, el arrastre se apaga poco a poco (0x80 por cuadro)
	bit 7,h		;82c4   ; la x: 0x80 hacia el cero
	ld de,0ff80h		;82c6
	jr z,L_82CE		;82c9
	ld de,00080h		;82cb
L_82CE:
	add hl,de			;82ce
	ld (0e645h),hl		;82cf
	ld hl,(0e643h)		;82d2   ; la y: lo mismo
	bit 7,h		;82d5
	ld de,0ff80h		;82d7
	jr z,L_82DF		;82da
	ld de,00080h		;82dc
L_82DF:
	add hl,de			;82df
	ld (0e643h),hl		;82e0
	call L_82EC		;82e3   ; la nave arrastrada: y + 0xE643, x + 0xE645 (16 bits, sin salirse)
	ld a,003h		;82e6   ; 0xE411 = 3
	ld (0e411h),a		;82e8
	ret			;82eb
L_82EC:
	call L_82F3		;82ec   ; la nave arrastrada: y + 0xE643, x + 0xE645 (16 bits, sin salirse)
	call L_8312		;82ef
	ret			;82f2
L_82F3:
	ld hl,(0e603h)		;82f3   ; la y + el arrastre en y...
	ld de,(0e643h)		;82f6
	bit 7,d		;82fa   ; ...hacia arriba sin bajar de 0
	jr z,L_830D		;82fc
	call 04a75h		;82fe   ; niega_de: DE = -DE
	or a			;8301
	sbc hl,de		;8302
	jr nc,L_8309		;8304
	ld hl,00000h		;8306
L_8309:
	ld (0e603h),hl		;8309
	ret			;830c
L_830D:
	add hl,de			;830d   ; ...o hacia abajo
	ld (0e603h),hl		;830e
	ret			;8311
L_8312:
	ld hl,(0e605h)		;8312   ; la x + el arrastre en x...
	ld de,(0e645h)		;8315
	bit 7,d		;8319   ; ...hacia la izquierda sin bajar de 0
	jr z,L_832C		;831b
	call 04a75h		;831d   ; niega_de: DE = -DE
	or a			;8320
	sbc hl,de		;8321
	jr nc,L_8328		;8323
	ld hl,00000h		;8325
L_8328:
	ld (0e605h),hl		;8328
	ret			;832b
L_832C:
	add hl,de			;832c   ; ...o hacia la derecha, sin pasar de 0xD8
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
	ld ix,0ed00h		;8342   ; las piezas 0x0C de 0xED00 (los remolinos)
	ld b,008h		;8346   ; las 8
L_8348:
	push bc			;8348
	call L_8355		;8349   ; el remolino (sin IX+1D, visible)
	ld bc,00020h		;834c
	add ix,bc		;834f
	pop bc			;8351
	djnz L_8348		;8352
	ret			;8354
L_8355:
	ld a,(ix+000h)		;8355   ; el remolino (sin IX+1D, visible)
	cp 00ch		;8358
	ret nz			;835a
	ld a,(ix+01dh)		;835b   ; sin IX+1D...
	or a			;835e
	ret nz			;835f
	bit 6,(ix+012h)		;8360   ; ...y visible (bit 6 de IX+12 a 0)
	ret nz			;8364
	ld a,(ix+004h)		;8365   ; su centro (+0x20, +0x20)
	add a,020h		;8368
	ld l,a			;836a
	ld a,(ix+006h)		;836b   ; fuera de la pantalla (x desde 0xE0), nada
	cp 0e0h		;836e
	ret nc			;8370
	add a,020h		;8371
	ld h,a			;8373
	ld a,(0e604h)		;8374   ; el de la nave (+8, +0x10)
	add a,008h		;8377
	ld e,a			;8379
	ld a,(0e606h)		;837a   ; lee la x de la nave
	add a,010h		;837d
	ld d,a			;837f
	call L_83AA		;8380   ; a menos de 0x10, nada (C)
	ret c			;8383
	ld a,002h		;8384   ; si no, 0xE411 = 2 y la direccion hacia el centro (p04:9D35)
	ld (0e411h),a		;8386
	call L_9D35		;8389   ; la direccion de DE a HL con la tabla de p22:B906 (con el 22 puesto)
	ld (0e647h),de		;838c   ; la direccion en 0xE647 (y) y 0xE649 (x)
	ld (0e649h),hl		;8390
	push hl			;8393   ; se suma al arrastre, con tope 0x400
	ld hl,(0e643h)		;8394   ; la y...
	add hl,de			;8397
	call L_83BC		;8398   ; |HL| con tope 0x400
	ld (0e643h),hl		;839b
	pop de			;839e
	ld hl,(0e645h)		;839f   ; ...y la x
	add hl,de			;83a2
	call L_83BC		;83a3   ; |HL| con tope 0x400
	ld (0e645h),hl		;83a6
	ret			;83a9
L_83AA:
	ld a,d			;83aa   ; a menos de 0x10 en x e y? C
	sub h			;83ab   ; la x de un lado u otro
	jr c,L_83B0		;83ac
	neg		;83ae
L_83B0:
	cp 010h		;83b0
	ret c			;83b2
	ld a,e			;83b3   ; y la y
	sub l			;83b4
	jr c,L_83B9		;83b5
	neg		;83b7
L_83B9:
	cp 010h		;83b9
	ret			;83bb
L_83BC:
	bit 7,h		;83bc   ; |HL| con tope 0x400
	push af			;83be
	call nz,04a7dh		;83bf   ; niega_hl: HL = -HL
	ld a,h			;83c2   ; sin pasar de 0x400
	cp 004h		;83c3
	jr c,L_83CA		;83c5
	ld hl,00400h		;83c7
L_83CA:
	pop af			;83ca
	call nz,04a7dh		;83cb   ; niega_hl: HL = -HL
	ret			;83ce
L_83CF:
	ld a,(0e411h)		;83cf   ; con 0xE411 = 2, sobre los caracteres 0x58-0xF4: la nave cambia de dibujo (0xE61B, 0xE61F)
	cp 002h		;83d2
	ret nz			;83d4
	ld a,(0e604h)		;83d5   ; bajo el centro de la nave (+8, +8)
	add a,008h		;83d8
	ld l,a			;83da
	ld a,(0e606h)		;83db   ; lee la x de la nave
	add a,008h		;83de
	ld h,a			;83e0
	call 04a46h		;83e1   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld a,(hl)			;83e4   ; entre 0x58 y 0xF4?
	sub 058h		;83e5
	cp 09dh		;83e7
	ret nc			;83e9
	ld a,001h		;83ea   ; entonces 0xE61B = 1 y 0xE61F = 1
	ld (0e61bh),a		;83ec
	ld (0e61fh),a		;83ef
	ret			;83f2

; ----------------------------------------------------------------------
; DATOS tabla_83F3: tabla que se lee desde HL = 0x83F3 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p04:81F5 (1 bytes)
;   0x83f3..0x83f4  (1 bytes)
DATA_tabla_83F3:
	defb 000h	; 83f3

; ----------------------------------------------------------------------
; DATOS leido_83F4: 11 bytes que leen p04:81FB, p04:81FD, p04:81FF, p04:81F9
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p04:81FB, p04:81FD, p04:81FF, p04:81F9 (11 bytes)
;   0x83f4..0x83ff  (11 bytes)
DATA_leido_83F4:
	defb 000h,000h,000h,080h,0ffh,000h,000h,080h,000h,000h,000h	; 83f4  ...........

; ----------------------------------------------------------------------
; DATOS sin identificar  0x83ff..0x8433  (52 bytes)
DATA_83FF:
	defb 000h,000h,000h,000h,000h,000h,080h,0ffh,080h,0ffh,080h,0ffh,080h,000h,080h,0ffh	; 83ff  ................
	defb 000h,000h,080h,0ffh,000h,000h,080h,000h,080h,0ffh,080h,000h,080h,000h,080h,000h	; 840f  ................
	defb 000h,000h,080h,000h,000h,000h,000h,000h,080h,0ffh,000h,000h,080h,000h,000h,000h	; 841f  ................
	defb 000h,000h,000h,000h	; 842f

; ======================================================================
; CODIGO 0x8433..0x84b9  (134 bytes)
; ======================================================================


L_8433:
	ld b,0e0h		;8433   ; se acaba la muerte: el borde a 0xE0...
	call 04c40h		;8435   ; color_del_borde: B al registro 7 del VDP
	xor a			;8438   ; ...y la nave ya no esta en la fase (0xE31A = 0)
	ld (0e31ah),a		;8439   ; guarda 1 mientras la nave esta en la fase
	ret			;843c
mata_la_nave:		; la nave estalla: 0xFF en 0xE600
	ld hl,0e600h		;843d   ; la nave estalla (si no estaba ya)
	ld a,(hl)			;8440
	or a			;8441
	ret m			;8442
	xor a			;8443   ; la cuenta de la muerte a 0
	ld (0e640h),a		;8444
	dec a			;8447   ; 0xFF: estalla; las dos opciones tambien
	ld (hl),a			;8448
	ld (0e610h),a		;8449
	ld (0e620h),a		;844c
	xor a			;844f   ; el cuadro 0 de la explosion
	call L_8469		;8450
	call 0504eh		;8453   ; p00:504E
	call 0594dh		;8456   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 05863h		;8459   ; orden_83_y_sonido_4B: manda la orden 0x83 al motor y pide el sonido 0x4B
	ret			;845c
L_845D:
	ld hl,0e641h		;845d   ; cada IX cuadros...
	dec (hl)			;8460
	ret nz			;8461
	dec l			;8462   ; ...el cuadro siguiente; al cuarto, se acaba (p04:8433)
	inc (hl)			;8463
	ld a,(hl)			;8464
	cp 004h		;8465
	jr nc,L_8433		;8467
L_8469:
	ld hl,084b9h		;8469   ; el cuadro A (tabla de 0x84B9): cuantos cuadros dura...
	call 04a5ah		;846c   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(hl)			;846f
	ld (0e641h),a		;8470
	inc hl			;8473
	ld a,(0e604h)		;8474   ; ...y sus sprites alrededor de la nave
	ld c,a			;8477
	ld a,(0e606h)		;8478   ; lee la x de la nave
	ld b,a			;847b
	ld de,0e618h		;847c
	call L_8495		;847f   ; cuatro sprites: 0xE618...
	ld de,0e61ch		;8482   ; ...0xE61C...
	call L_8495		;8485
	ld de,0e628h		;8488   ; ...0xE628...
	call L_8495		;848b
	ld de,0e62ch		;848e   ; ...y 0xE62C
	call L_8495		;8491
	ret			;8494
L_8495:
	ld a,(hl)			;8495   ; un sprite: 0x80 lo quita...
	cp 080h		;8496
	jr z,L_84AC		;8498
	add a,c			;849a   ; ...si no, su y sobre la de la nave...
	ld (de),a			;849b
	inc hl			;849c
	inc de			;849d
	ld a,(hl)			;849e   ; ...su x sobre la de la nave...
	add a,b			;849f
	ld (de),a			;84a0
	inc hl			;84a1
	inc de			;84a2
	ld a,(hl)			;84a3   ; ...su dibujo y su color
	ld (de),a			;84a4
	inc hl			;84a5
	inc de			;84a6
	ld a,(hl)			;84a7
	ld (de),a			;84a8
	inc hl			;84a9
	inc de			;84aa
	ret			;84ab
L_84AC:
	ld a,0e0h		;84ac   ; fuera (0xE0) y se salta su entrada
	ld (de),a			;84ae
	ld a,e			;84af
	add a,004h		;84b0
	ld e,a			;84b2
	ld a,004h		;84b3
	call 04089h		;84b5   ; suma_a_hl: HL = HL + A
	ret			;84b8

; ----------------------------------------------------------------------
; DATOS tabla_84B9: tabla que se lee desde HL = 0x84B9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p04:8469 (8 bytes)
;   0x84b9..0x84c1  (8 bytes)
DATA_tabla_84B9:
	defb 0c1h,084h,0d2h,084h,0e3h,084h,0f4h,084h	; 84b9  ........

; ----------------------------------------------------------------------
; DATOS leido_84C1: 65 bytes que leen p04:846F, p04:8495, p04:849E, p04:84A3,
;   p04:84A7 al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido, con 3 sin leer
;   entre lecturas de la misma rutina: entradas de la misma tabla que las
;   partidas no han pedido); lo leen p04:846F, p04:8495, p04:849E, p04:84A3,
;   p04:84A7 (65 bytes)
;   0x84c1..0x8502  (65 bytes)
DATA_leido_84C1:
	defb 00ah,000h,000h,000h,008h,000h,010h,004h,008h,000h,000h,008h,00ah,000h,010h,00ch	; 84c1  ................
	defb 00ah,014h,000h,000h,010h,008h,000h,010h,014h,008h,000h,000h,018h,00ah,000h,010h	; 84d1  ................
	defb 01ch,00ah,00ah,000h,000h,020h,008h,000h,010h,024h,008h,000h,000h,028h,00ah,000h	; 84e1  ..... ...$...(..
	defb 010h,02ch,00ah,00ah,000h,008h,030h,008h,000h,008h,034h,008h,080h,000h,000h,000h	; 84f1  .,....0...4.....
	defb 080h	; 8501

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8502..0x8505  (3 bytes)
DATA_8502:
	defb 000h,000h,000h	; 8502

; ======================================================================
; CODIGO 0x8505..0x856c  (103 bytes)
; ======================================================================


L_8505:
	ld hl,0e610h		;8505   ; una opcion nueva: en 0xE610, o en 0xE620 si ya esta la primera (su numero, 1 o 2)
	ld b,001h		;8508
	ld a,(hl)			;850a
	or a			;850b
	jr z,L_8511		;850c
	ld l,020h		;850e
	inc b			;8510
L_8511:
	ld (hl),b			;8511
	call L_85C9		;8512   ; y su sitio
L_8515:
	ret			;8515
L_8516:
	ld a,(0e600h)		;8516   ; las opciones (si la nave no estalla): la estela (p04:858C)
	dec a			;8519
	ret m			;851a
	call L_858C		;851b   ; la estela de la nave (solo con el tipo de opcion 0, 0xE37E)
	ld a,(0e608h)		;851e   ; cuantas opciones (0xE608): ninguna, nada
	or a			;8521
	ret z			;8522
	call L_852A		;8523   ; su animacion y su sitio
	call L_85C9		;8526   ; donde van las opciones, por el tipo (0xE37E): 0 detras, 1 fijas, 2 girando
	ret			;8529
L_852A:
	ld hl,0e609h		;852a   ; cada 2 cuadros el dibujo siguiente (0xE60A)
	inc (hl)			;852d   ; cada 2 cuadros
	ld a,(hl)			;852e
	cp 002h		;852f
	ret c			;8531
	ld (hl),000h		;8532
	inc l			;8534   ; el dibujo siguiente
	inc (hl)			;8535
	ld a,(0e608h)		;8536   ; la segunda (0xE622) si hay dos...
	dec a			;8539
	jr z,L_8542		;853a
	ld de,0e622h		;853c
	call L_8549		;853f   ; el dibujo y el color de las opciones: tabla de 0x856C por el tipo (0xE380, 8 bytes) y la animacion
L_8542:
	ld de,0e612h		;8542   ; ...y la primera (0xE612)
	call L_8549		;8545   ; el dibujo y el color de las opciones: tabla de 0x856C por el tipo (0xE380, 8 bytes) y la animacion
	ret			;8548
L_8549:
	ld a,(0e380h)		;8549   ; el dibujo y el color de las opciones: tabla de 0x856C por el tipo (0xE380, 8 bytes) y la animacion
	add a,a			;854c   ; la nave x 8 + el dibujo (0-3) x 2: el dibujo y el color
	add a,a			;854d
	add a,a			;854e
	ld hl,0856ch		;854f
	call 04089h		;8552   ; suma_a_hl: HL = HL + A
	ld a,(0e60ah)		;8555
	and 003h		;8558
	add a,a			;855a
	call 04089h		;855b   ; suma_a_hl: HL = HL + A
	ldi		;855e
	ldi		;8560
	ld a,(0e49ah)		;8562   ; con 0xE49A, el color 0x0E
	or a			;8565
	ret z			;8566
	dec de			;8567
	ld a,00eh		;8568
	ld (de),a			;856a
	ret			;856b

; ----------------------------------------------------------------------
; DATOS tabla_856C: tabla que se lee desde HL = 0x856C con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p04:854F (1 bytes)
;   0x856c..0x856d  (1 bytes)
DATA_tabla_856C:
	defb 03ch	; 856c

; ----------------------------------------------------------------------
; DATOS leido_856D: 7 bytes que leen p04:8560, p04:855E al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p04:8560, p04:855E (7 bytes)
;   0x856d..0x8574  (7 bytes)
DATA_leido_856D:
	defb 00ah,03ch,009h,040h,008h,040h,006h	; 856d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8574..0x858c  (24 bytes)
DATA_8574:
	defb 03ch,00ch,03ch,002h,040h,002h,040h,00ch,03ch,00ah,03ch,00bh,040h,00bh,040h,00ah	; 8574  <.<.@.@.<.<.@.@.
	defb 03ch,004h,03ch,005h,040h,005h,040h,004h	; 8584  <.<.@.@.

; ======================================================================
; CODIGO 0x858c..0x8647  (187 bytes)
; ======================================================================


L_858C:
	ld a,(0e37eh)		;858c   ; la estela de la nave (solo con el tipo de opcion 0, 0xE37E)
	or a			;858f   ; solo con las opciones de detras (tipo 0)
	ret nz			;8590
	ld a,(0e411h)		;8591   ; con arrastre o la nave yendose, se apunta siempre
	or a			;8594
	jr nz,L_85AC		;8595
	ld a,(0e60dh)		;8597
	or a			;859a
	jr nz,L_85AC		;859b
	ld a,(0e309h)		;859d   ; sin mover la palanca, no
	and 00fh		;85a0
	ret z			;85a2
	cp 003h		;85a3
	ret z			;85a5
	cp 00ch		;85a6
	ret z			;85a8
	cp 00fh		;85a9
	ret z			;85ab
L_85AC:
	ld hl,0e660h		;85ac   ; su y y su x en la estela de 0xE660 (16 posiciones en circulo)
	ld a,(0e60bh)		;85af   ; el sitio 0xE60B x 2
	add a,a			;85b2
	add a,l			;85b3
	ld l,a			;85b4
	ld a,(0e604h)		;85b5   ; lee la y de la nave (el primer byte de su sprite, p01:797C)
	ld (hl),a			;85b8
	ld a,(0e606h)		;85b9   ; lee la x de la nave
	inc l			;85bc
	ld (hl),a			;85bd
	ld hl,0e60bh		;85be   ; el siguiente, de 0 a 15
	inc (hl)			;85c1
	ld a,(hl)			;85c2
	cp 010h		;85c3
	ret c			;85c5
	ld (hl),000h		;85c6
	ret			;85c8
L_85C9:
	ld a,(0e37eh)		;85c9   ; donde van las opciones, por el tipo (0xE37E): 0 detras, 1 fijas, 2 girando
	dec a			;85cc   ; 1: fijas; 2: giran
	jp m,L_85D6		;85cd
	jp z,L_8667		;85d0
	jp L_85F8		;85d3
L_85D6:
	ld hl,0e60bh		;85d6   ; tipo 0: siguen la estela, la segunda 8 posiciones mas atras
	ld bc,0e624h		;85d9   ; la segunda: la posicion de ahora
	ld a,(hl)			;85dc
	call L_85EA		;85dd   ; la entrada A de la estela (2 bytes)
	ld bc,0e614h		;85e0   ; la primera: 8 posiciones antes
	ld a,(hl)			;85e3
	sub 008h		;85e4
	jr nc,L_85EA		;85e6
	add a,010h		;85e8
L_85EA:
	add a,a			;85ea   ; la entrada A de la estela (2 bytes)
	ld de,0e660h		;85eb   ; su y y su x de la estela
	add a,e			;85ee
	ld e,a			;85ef
	ld a,(de)			;85f0   ; la y...
	ld (bc),a			;85f1
	inc e			;85f2
	inc c			;85f3
	inc c			;85f4
	ld a,(de)			;85f5   ; ...y la x, 2 bytes despues
	ld (bc),a			;85f6
	ret			;85f7
L_85F8:
	exx			;85f8   ; tipo 2: giran alrededor de la nave (tabla de 0x8647), una a 8 pasos de la otra
	ld hl,0e624h		;85f9   ; la segunda, por la cuenta de cuadros...
	exx			;85fc
	ld a,(0e303h)		;85fd   ; lee la cuenta de cuadros del juego
	and 00fh		;8600
	call L_8619		;8602   ; la y de la nave + el paso en y, la x + el de x, sin salirse
	exx			;8605
	ld hl,0e614h		;8606   ; ...la primera, media vuelta despues
	exx			;8609
	ld a,(0e303h)		;860a   ; lee la cuenta de cuadros del juego
	and 00fh		;860d
	sub 008h		;860f
	jr nc,L_8615		;8611
	add a,010h		;8613
L_8615:
	call L_8619		;8615   ; la y de la nave + el paso en y, la x + el de x, sin salirse
	ret			;8618
L_8619:
	ld hl,0e604h		;8619   ; la y de la nave + el paso en y, la x + el de x, sin salirse
	ld de,08647h		;861c   ; el paso de la tabla de 0x8647 (16 posiciones)
	add a,a			;861f
	call 0408eh		;8620   ; suma_a_de: DE = DE + A
	ld a,(de)			;8623
	add a,(hl)			;8624   ; la y + su paso
	inc l			;8625
	inc l			;8626
	exx			;8627
	ld (hl),a			;8628
	inc l			;8629
	inc l			;862a
	exx			;862b
	inc de			;862c   ; la x + su paso, sin bajar de 0...
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
	ld a,(de)			;863e   ; ...ni pasar de 0xF8
	add a,(hl)			;863f
	jr nc,L_863A		;8640
	ld a,0f8h		;8642
	jp L_863A		;8644

; ----------------------------------------------------------------------
; DATOS resto_8647: lo apuntan con el banco puesto p04:861C (0x8647); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p04:861C (32 bytes)
;   0x8647..0x8667  (32 bytes)
DATA_resto_8647:
	defb 0e0h,000h,0e3h,00ch,0eah,016h,0f4h,01dh,000h,020h,00ch,01dh,016h,016h,01dh,00ch	; 8647  ......... ......
	defb 020h,000h,01dh,0f4h,016h,0eah,00ch,0e3h,000h,0e0h,0f4h,0e3h,0eah,0eah,0e3h,0f4h	; 8657   ...............

; ======================================================================
; CODIGO 0x8667..0x8688  (33 bytes)
; ======================================================================


L_8667:
	ld ix,0e610h		;8667   ; tipo 1: fijas respecto a la nave
	call L_8676		;866b   ; la opcion de IX: su desplazamiento (tabla de 0x8686 por IX+0)
	ld ix,0e620h		;866e   ; y la segunda
	call L_8676		;8672   ; la opcion de IX: su desplazamiento (tabla de 0x8686 por IX+0)
	ret			;8675
L_8676:
	ld a,(ix+000h)		;8676   ; la opcion de IX: su desplazamiento (tabla de 0x8686 por IX+0)
	or a			;8679
	ret z			;867a
	ld hl,08686h		;867b   ; el desplazamiento de su numero (tabla de 0x8686)
	call 04a5ah		;867e   ; lee_palabra: HL = la palabra A de la tabla HL
	call L_868C		;8681   ; la y de la nave + L, entre 0 y 0xA5
	call L_86A4		;8684   ; la x de la nave + H
	ret			;8687

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8688..0x868c  (4 bytes)
DATA_8688:
	defb 0f0h,0f0h,010h,0f0h	; 8688

; ======================================================================
; CODIGO 0x868c..0x870f  (131 bytes)
; ======================================================================


L_868C:
	ld a,(0e604h)		;868c   ; la y de la nave + L, entre 0 y 0xA5
	add a,l			;868f
	ld (ix+004h),a		;8690
	cp 0e0h		;8693   ; por arriba (0xE0 o mas): 0
	jr c,L_869C		;8695
	ld (ix+004h),000h		;8697
	ret			;869b
L_869C:
	cp 0a5h		;869c   ; por abajo: 0xA5
	ret c			;869e
	ld (ix+004h),0a5h		;869f
	ret			;86a3
L_86A4:
	ld a,(0e606h)		;86a4   ; la x de la nave + H
	add a,h			;86a7
	ld (ix+006h),a		;86a8
	cp 0e8h		;86ab   ; desde 0xE8: 0
	ret c			;86ad
	ld (ix+006h),000h		;86ae
	ret			;86b2
L_86B3:
	ld a,001h		;86b3   ; los disparos de la nave: se mueven (A = 1, sin choques)...
	call L_86BE		;86b5
	ret			;86b8
L_86B9:
	xor a			;86b9   ; ...o se mueven y chocan con el decorado (A = 0)
	call L_86BE		;86ba
	ret			;86bd
L_86BE:
	ld (0e410h),a		;86be
	ld iy,0e680h		;86c1   ; los 9 de 0xE680
	ld b,009h		;86c5   ; los 9
L_86C7:
	push bc			;86c7
	call L_86E7		;86c8   ; se mueve
	call L_86D7		;86cb   ; y se acaba por abajo
	ld bc,00020h		;86ce
	add iy,bc		;86d1
	pop bc			;86d3
	djnz L_86C7		;86d4
	ret			;86d6
L_86D7:
	ld a,(iy+000h)		;86d7   ; por abajo (y desde 0xB0) se acaban
	or a			;86da
	ret z			;86db
	ld a,(iy+003h)		;86dc   ; lee la y del disparo
	cp 0b0h		;86df
	ret c			;86e1
L_86E2:
	ld (iy+000h),000h		;86e2   ; el tipo del disparo (0: libre) = 0x00
	ret			;86e6
L_86E7:
	call L_86FF		;86e7   ; se mueve (p04:86FF) y...
	ld a,(0e410h)		;86ea   ; sin choques, nada mas
	or a			;86ed
	ret nz			;86ee
	ld a,(iy+000h)		;86ef   ; ...el 0x18 y los 5-0x0E chocan con el decorado (p04:8E13)
	cp 018h		;86f2
	jp z,L_8E13		;86f4
	sub 005h		;86f7
	cp 00ah		;86f9
	jp c,L_8E13		;86fb
	ret			;86fe
L_86FF:
	ld a,(iy+000h)		;86ff   ; un disparo: si toca moverlo este cuadro (p04:873F), por su tipo (tabla de detras)
	or a			;8702
	ret z			;8703
	call L_873F		;8704   ; los tipos 0x0F-0x17 se mueven en la otra pasada
	ret nc			;8707
	ld a,(iy+000h)		;8708   ; lee el tipo del disparo (0: libre)
	dec a			;870b
	call 04093h		;870c   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_870F: 24 destinos del despachador p00:4093 (call en p04:870C, el
;   indice en A): 88B7, 88C3, 891E, 890D, 8A29, 8AC0, 8AC0, 8AC0, 8BF3, 8B68,
;   8C83, 8C83, 8B0E, 8B32, 928B, 8EFE, 8EFE, 8EFE, 9178, 8F33, 8F33, 8F33,
;   9178, 8D87; lo leen p04:870C (48 bytes)
;   0x870f..0x873f  (48 bytes)
DATA_tabla_870F:
	defw 088b7h,088c3h,0891eh,0890dh,08a29h,08ac0h,08ac0h,08ac0h	; 870f
	defw 08bf3h,08b68h,08c83h,08c83h,08b0eh,08b32h,0928bh,08efeh	; 871f
	defw 08efeh,08efeh,09178h,08f33h,08f33h,08f33h,09178h,08d87h	; 872f

; ======================================================================
; CODIGO 0x873f..0x880a  (203 bytes)
; ======================================================================


L_873F:
	ld a,(0e410h)		;873f   ; los tipos 0x0F-0x17 se mueven en la otra pasada
	or a			;8742   ; en la pasada con choques: C con los 0x0F-0x17 fuera...
	jr nz,L_874E		;8743
	ld a,(iy+000h)		;8745   ; lee el tipo del disparo (0: libre)
	sub 00fh		;8748
	cp 009h		;874a
	ccf			;874c
	ret			;874d
L_874E:
	ld a,(iy+000h)		;874e   ; ...en la otra, C con los demas fuera
	sub 00fh		;8751
	cp 009h		;8753
	ret			;8755
L_8756:
	xor a			;8756   ; 0xE639 = 0 (la cuenta del disparo automatico)
	ld (0e639h),a		;8757
	ret			;875a
L_875B:
	ld b,000h		;875b   ; B = 1 si la nave esta (no estalla ni falta)
	ld a,(0e600h)		;875d   ; lee el estado de la nave (1 normal, 2 y 3 con escudo, 0xFF estalla)
	dec a			;8760   ; 0 o 0xFF: no esta
	ret m			;8761
	inc b			;8762
	ret			;8763
L_8764:
	ld a,(0e361h)		;8764   ; en la fase 3 entre el scroll 0x100 y 0x180, con 0xE49A: no se dispara (NZ)
	cp 003h		;8767   ; en la fase 3...
	jr nz,L_877F		;8769
	ld hl,(0e363h)		;876b   ; lee la posicion del scroll (16 bits)
	ld de,00100h		;876e   ; ...entre el scroll 0x100...
	rst 20h			;8771
	jr c,L_877F		;8772
	ld de,00180h		;8774   ; ...y 0x180...
	rst 20h			;8777
	jr nc,L_877F		;8778
	ld a,(0e49ah)		;877a   ; ...NZ con 0xE49A
	or a			;877d
	ret			;877e
L_877F:
	xor a			;877f   ; si no, Z
	ret			;8780
L_8781:
	call L_875B		;8781   ; disparar: con la nave...
	dec b			;8784   ; sin nave, nada
	ret nz			;8785
	ld a,(0e308h)		;8786   ; ...el boton recien pulsado dispara ya
	and 010h		;8789   ; el boton 1
	jr nz,L_87A4		;878b
	ld a,(0e309h)		;878d   ; sin pulsar: la cuenta a cero
	and 010h		;8790   ; sin pulsar
	jr z,L_8756		;8792
	ld hl,0e638h		;8794   ; pulsado: con el automatico (bit 0 de 0xE638), cada 16 cuadros otro
	bit 0,(hl)		;8797
	jr nz,L_87A4		;8799
	inc l			;879b   ; si no, cada 0x10 cuadros
	inc (hl)			;879c
	ld a,(hl)			;879d
	cp 010h		;879e
	ret c			;87a0
	dec l			;87a1
	ld (hl),001h		;87a2   ; y pasa al automatico
L_87A4:
	call L_8756		;87a4   ; se dispara, si se puede
	call L_8764		;87a7   ; en la fase 3 entre el scroll 0x100 y 0x180, con 0xE49A: no se dispara (NZ)
	ret nz			;87aa   ; en ese tramo de la fase 3, no se dispara
	ld ix,0e600h		;87ab   ; la nave y sus dos opciones (0xE600, 0xE610, 0xE620), de 0x10 en 0x10
	ld a,003h		;87af
	ld (0e633h),a		;87b1   ; tres veces, y 0x60 mas cada vez en 0xE634 (los disparos de cada una)
	ld hl,00000h		;87b4   ; la primera, en 0xE680
	ld (0e634h),hl		;87b7
L_87BA:
	ld a,(ix+000h)		;87ba   ; cada una que este
	or a			;87bd
	call nz,L_87D7		;87be   ; con la capsula de 0xE5E0, solo la nave (p04:8D17)
	ld bc,00010h		;87c1
	add ix,bc		;87c4
	ld hl,(0e634h)		;87c6   ; la siguiente, 0x60 mas alla en 0xE680 (tres disparos cada una)
	ld bc,00060h		;87c9
	add hl,bc			;87cc
	ld (0e634h),hl		;87cd
	ld hl,0e633h		;87d0
	dec (hl)			;87d3
	jr nz,L_87BA		;87d4
	ret			;87d6
L_87D7:
	ld a,(0e5e0h)		;87d7   ; con la capsula de 0xE5E0, solo la nave (p04:8D17)
	or a			;87da
	jr z,L_87E6		;87db
	ld a,(0e633h)		;87dd   ; solo con la nave (la primera vuelta)
	cp 003h		;87e0
	ret nz			;87e2
	jp L_8D17		;87e3
L_87E6:
	ld a,(0e5e1h)		;87e6   ; con 0xE5E1, nada
	or a			;87e9
	ret nz			;87ea
	ld a,003h		;87eb   ; las tres armas de 0xE630-0xE632
	ld (0e636h),a		;87ed
	ld de,0e630h		;87f0   ; apunta a el primer arma (el disparo)
L_87F3:
	push de			;87f3   ; cada arma
	call L_8800		;87f4   ; el arma (0 ninguna) por su numero (tabla de detras)
	pop de			;87f7
	inc de			;87f8
	ld hl,0e636h		;87f9
	dec (hl)			;87fc
	jr nz,L_87F3		;87fd
	ret			;87ff
L_8800:
	ld a,(de)			;8800   ; el arma (0 ninguna) por su numero (tabla de detras)
	or a			;8801
	ret z			;8802
	ld (0e642h),a		;8803   ; el arma en curso, en 0xE642
	dec a			;8806
	call 04093h		;8807   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_880A: 24 destinos del despachador p00:4093 (call en p04:8807, el
;   indice en A): 883A, 886F, 88E8, 88CF, 8935, 8983, 89C0, 8972, 8BC0, 8B39,
;   8C59, 8C4B, 89F2, 8A1F, 8EDE, 8EAA, 8EAA, 8EAA, 8EEF, 8EAA, 8EAA, 8EAA,
;   8EEF, 8D17; lo leen p04:8807 (48 bytes)
;   0x880a..0x883a  (48 bytes)
DATA_tabla_880A:
	defw 0883ah,0886fh,088e8h,088cfh,08935h,08983h,089c0h,08972h	; 880a
	defw 08bc0h,08b39h,08c59h,08c4bh,089f2h,08a1fh,08edeh,08eaah	; 881a
	defw 08eaah,08eaah,08eefh,08eaah,08eaah,08eaah,08eefh,08d17h	; 882a

; ======================================================================
; CODIGO 0x883a..0x8edf  (1701 bytes)
; ======================================================================


L_883A:
	ld a,(0e636h)		;883a   ; el disparo normal: el primero de la nave...
	cp 003h		;883d   ; solo con la nave
	jr nz,L_885F		;883f
	xor a			;8841   ; ...0xE637 = 0
	ld (0e637h),a		;8842
	ld a,(0e631h)		;8845   ; con el arma de 0xE631 de 3 o 4, si hay hueco (p04:887C)
	sub 003h		;8848   ; 3 o 4: dos huecos seguidos
	cp 002h		;884a
	jr nc,L_8852		;884c
	call L_887C		;884e   ; hay dos huecos seguidos? 0xE63A = 0 si
	ret nz			;8851
L_8852:
	call L_8DC9		;8852   ; un hueco de disparo (p04:8DC9)
	ret nz			;8855
	ld a,001h		;8856   ; sale: las opciones tambien (0xE637)
	ld (0e637h),a		;8858
	call L_8896		;885b   ; el disparo normal: tipo 1, 8 x 8
	ret			;885e
L_885F:
	ld hl,0e637h		;885f   ; las opciones disparan si lo hizo la nave
	ld a,(hl)			;8862   ; solo si disparo la nave, una vez
	or a			;8863
	ld (hl),000h		;8864
	ret nz			;8866
	call L_8DC3		;8867   ; su hueco
	ret nz			;886a
	call L_8896		;886b   ; el disparo normal: tipo 1, 8 x 8
	ret			;886e
L_886F:
	call L_8DC3		;886f   ; el doble hacia arriba: tipo 2, velocidad 0x800
	ret nz			;8872
	ld (hl),002h		;8873   ; tipo 2
	ld de,00800h		;8875   ; hacia arriba, velocidad 8
	call L_889B		;8878
	ret			;887b
L_887C:
	call L_8DC9		;887c   ; hay dos huecos seguidos? 0xE63A = 0 si
	jr nz,L_888F		;887f   ; el siguiente tambien libre?
	push hl			;8881
	ld bc,00020h		;8882
	add hl,bc			;8885
	ld a,(hl)			;8886
	or a			;8887
	pop hl			;8888
	jr nz,L_888F		;8889
	ld a,000h		;888b   ; si: 0
	jr L_8891		;888d
L_888F:
	ld a,001h		;888f   ; no: 1
L_8891:
	ld (0e63ah),a		;8891
	or a			;8894
	ret			;8895
L_8896:
	ld (hl),001h		;8896   ; el disparo normal: tipo 1, 8 x 8
	ld de,00808h		;8898   ; desde quien lo lanza + 8, + 8
L_889B:
	call L_8DF1		;889b   ; el disparo en la posicion de quien lo lanza + DE (D en y, E en x)
	ld a,(iy+005h)		;889e   ; la x en multiplo de 8
	and 0f8h		;88a1
	ld (iy+005h),a		;88a3
	ld d,001h		;88a6   ; el dibujo 1 + la y
	call L_8E08		;88a8   ; el dibujo: D + (y / 2) & 3
	ld (iy+00ch),008h		;88ab   ; la caja 8 x 2 y el sonido 0x0F
	ld (iy+00dh),002h		;88af
	call 0582bh		;88b3   ; sonido_0F: pide el sonido 0x0F
	ret			;88b6
L_88B7:
	ld a,(iy+005h)		;88b7   ; se mueve 12 a la derecha (fuera, se acaba)
	add a,00ch		;88ba   ; 12 a la derecha
	ld (iy+005h),a		;88bc   ; guarda la x del disparo
	call c,L_86E2		;88bf   ; al salirse, se acaba
	ret			;88c2
L_88C3:
	ld a,(iy+005h)		;88c3   ; o 12 a la izquierda
	sub 00ch		;88c6   ; 12 a la izquierda
	ld (iy+005h),a		;88c8   ; guarda la x del disparo
	call c,L_86E2		;88cb
	ret			;88ce
L_88CF:
	ld a,(0e63ah)		;88cf   ; el tipo 4 (si hay dos huecos): el dibujo 0x54
	or a			;88d2   ; sin dos huecos, nada
	ret nz			;88d3
	call L_8DC3		;88d4
	ret nz			;88d7
	ld (hl),004h		;88d8   ; tipo 4
	ld de,00808h		;88da
	call L_8DF1		;88dd   ; el disparo en la posicion de quien lo lanza + DE (D en y, E en x)
	ld (iy+006h),054h		;88e0   ; el dibujo 0x54
	call L_88FD		;88e4   ; el color 7, caja 8 x 2, el sonido 0x10
	ret			;88e7
L_88E8:
	ld a,(0e63ah)		;88e8   ; el tipo 3: el dibujo 0x50
	or a			;88eb   ; sin dos huecos, nada
	ret nz			;88ec
	call L_8DC3		;88ed
	ret nz			;88f0
	ld (hl),003h		;88f1   ; tipo 3
	ld de,00808h		;88f3
	call L_8DF1		;88f6   ; el disparo en la posicion de quien lo lanza + DE (D en y, E en x)
	ld (iy+006h),050h		;88f9   ; el dibujo 0x50
L_88FD:
	ld (iy+007h),007h		;88fd   ; el color 7, caja 8 x 2, el sonido 0x10
	ld (iy+00ch),008h		;8901
	ld (iy+00dh),002h		;8905
	call 0582fh		;8909   ; sonido_10: pide el sonido 0x10
	ret			;890c
L_890D:
	ld a,(iy+003h)		;890d   ; baja 6 (fuera, se acaba)...
	add a,006h		;8910   ; baja 6...
	cp 0b0h		;8912
	ld (iy+003h),a		;8914   ; guarda la y del disparo
	jp nc,L_86E2		;8917   ; ...y fuera por abajo (0xB0), se acaba
	call L_8929		;891a
	ret			;891d
L_891E:
	ld a,(iy+003h)		;891e   ; ...o sube 6...
	sub 006h		;8921   ; sube 6...
	ld (iy+003h),a		;8923   ; guarda la y del disparo
	jp c,L_86E2		;8926   ; ...y fuera por arriba, se acaba
L_8929:
	ld a,(iy+005h)		;8929   ; ...y 6 a la derecha
	add a,006h		;892c   ; 6 a la derecha; fuera, se acaba
	jp c,L_86E2		;892e
	ld (iy+005h),a		;8931   ; guarda la x del disparo
	ret			;8934
L_8935:
	call L_8DC9		;8935   ; el tipo 5: 8 x 0x10
	ret nz			;8938
	ld (hl),005h		;8939   ; tipo 5, paso 0
	inc l			;893b
	ld (hl),000h		;893c
	ld de,00810h		;893e   ; desde + 8, + 0x10
	call L_8DF1		;8941   ; el disparo en la posicion de quien lo lanza + DE (D en y, E en x)
	ld a,(iy+005h)		;8944   ; la x en multiplo de 8
	and 0f8h		;8947
	ld (iy+005h),a		;8949
	ld d,005h		;894c   ; el dibujo 5 + la y
	call L_8E08		;894e   ; el dibujo: D + (y / 2) & 3
	call L_8968		;8951   ; apunta a la opcion que lo lanza (IY+8)
	ld (iy+00ah),000h		;8954   ; caja 0 x 2, el sonido 0x11
	ld (iy+00bh),01ch		;8958
	ld (iy+00ch),000h		;895c
	ld (iy+00dh),002h		;8960
	call 05833h		;8964   ; sonido_11: pide el sonido 0x11
	ret			;8967
L_8968:
	push ix		;8968   ; IY+8 = IX (de quien sale)
	pop bc			;896a
	ld (iy+008h),c		;896b
	ld (iy+009h),b		;896e
	ret			;8971
L_8972:
	call L_8DC9		;8972   ; el tipo 8
	ret nz			;8975
	ld a,008h		;8976   ; tipo 8
	call L_8994		;8978   ; el tipo, paso 0
	ld (iy+006h),00ch		;897b   ; el dibujo 0x0C
	call 05843h		;897f   ; sonido_15: pide el sonido 0x15
	ret			;8982
L_8983:
	call L_8DC9		;8983   ; el tipo 6, el dibujo 9 y el sonido 0x13
	ret nz			;8986
	ld a,006h		;8987   ; tipo 6
	call L_8994		;8989   ; el tipo, paso 0
	ld (iy+006h),009h		;898c   ; el dibujo 9
	call 0583bh		;8990   ; sonido_13: pide el sonido 0x13
	ret			;8993
L_8994:
	ld (hl),a			;8994   ; el tipo, paso 0
	inc l			;8995
	ld (hl),000h		;8996
	ld a,(ix+004h)		;8998   ; la y + 8...
	add a,008h		;899b
	and 0f8h		;899d
	ld (iy+003h),a		;899f
	ld a,(ix+006h)		;89a2   ; ...la x + 0x10, en multiplos de 8
	add a,010h		;89a5
	and 0f8h		;89a7
	ld (iy+005h),a		;89a9
	call L_8968		;89ac   ; de quien sale, largo 0, 0x1C de vida, caja 0 x 8
	ld (iy+00ah),000h		;89af
	ld (iy+00bh),01ch		;89b3
	ld (iy+00ch),000h		;89b7
	ld (iy+00dh),008h		;89bb
	ret			;89bf
L_89C0:
	call L_8DC9		;89c0   ; el tipo 7: desde x, caja 0 x 0x10, el sonido 0x14
	ret nz			;89c3
	ld (hl),007h		;89c4   ; tipo 7, paso 0
	inc l			;89c6
	ld (hl),000h		;89c7
	ld a,(ix+004h)		;89c9   ; la y de quien lo lanza...
	and 0f8h		;89cc
	ld (iy+003h),a		;89ce
	ld a,(ix+006h)		;89d1   ; ...la x + 0x10, en multiplos de 8
	add a,010h		;89d4
	and 0f8h		;89d6
	ld (iy+005h),a		;89d8
	call L_8968		;89db   ; IY+8 = IX (de quien sale)
	ld (iy+00ah),000h		;89de
	ld (iy+00bh),01ch		;89e2
	ld (iy+00ch),000h		;89e6
	ld (iy+00dh),010h		;89ea
	call 0583fh		;89ee   ; sonido_14: pide el sonido 0x14
	ret			;89f1
L_89F2:
	call L_8DC3		;89f2   ; el tipo 0x0D (dos huecos): 8 x 0, velocidad 5, largo 2, caja 0x10 x 8, el sonido 0x12
	ret nz			;89f5
	ld a,00dh		;89f6   ; tipo 0x0D, paso 4
L_89F8:
	ld (hl),a			;89f8
	inc l			;89f9
	ld (hl),004h		;89fa
	ld de,00800h		;89fc
	call L_8DF1		;89ff   ; el disparo en la posicion de quien lo lanza + DE (D en y, E en x)
	ld a,(iy+005h)		;8a02   ; la x en multiplo de 8
	and 0f8h		;8a05
	ld (iy+005h),a		;8a07
	ld d,005h		;8a0a   ; el dibujo 5 + la y
	call L_8E08		;8a0c   ; el dibujo: D + (y / 2) & 3
	ld (iy+00ah),002h		;8a0f   ; largo 2, caja 0x10 x 8
	ld (iy+00ch),010h		;8a13
	ld (iy+00dh),008h		;8a17
	call 05837h		;8a1b   ; sonido_12: pide el sonido 0x12
	ret			;8a1e
L_8A1F:
	call L_8DC3		;8a1f   ; el tipo 0x0E igual
	ret nz			;8a22
	ld a,00eh		;8a23   ; tipo 0x0E
	call L_89F8		;8a25
	ret			;8a28
L_8A29:
	ld a,(iy+001h)		;8a29   ; el laser: por su paso IY+1
	dec a			;8a2c
	jr z,L_8A93		;8a2d
	jp p,L_8AA4		;8a2f
	ld c,(iy+008h)		;8a32   ; paso 0: pegado a quien lo lanza...
	ld b,(iy+009h)		;8a35
	push bc			;8a38
	pop ix		;8a39
	ld de,00810h		;8a3b
	call L_8DF1		;8a3e   ; el disparo en la posicion de quien lo lanza + DE (D en y, E en x)
	ld a,(iy+005h)		;8a41   ; lee la x del disparo
	and 0f8h		;8a44
	ld (iy+005h),a		;8a46   ; guarda la x del disparo
	cp 0f8h		;8a49   ; ...(por la derecha de la pantalla, x 0xF8, se acaba)...
	jp nc,L_86E2		;8a4b
	ld d,005h		;8a4e
	call L_8E08		;8a50   ; el dibujo: D + (y / 2) & 3
L_8A53:
	ld a,(iy+00ah)		;8a53   ; ...crece 4 por cuadro mientras quede (IY+0B)...
	add a,004h		;8a56
	ld (iy+00ah),a		;8a58
	ld a,(iy+00bh)		;8a5b   ; lo que le queda
	sub 004h		;8a5e
	ld (iy+00bh),a		;8a60
	jr nz,L_8A6C		;8a63
	ld (iy+001h),001h		;8a65   ; acabado: paso 1
	jp L_8A77		;8a69
L_8A6C:
	ld a,(0e309h)		;8a6c   ; ...y mientras se mantenga el boton
	and 010h		;8a6f
	jr nz,L_8A77		;8a71
	ld (iy+001h),001h		;8a73   ; al soltar, se suelta: paso 1
L_8A77:
	ld a,(iy+00ah)		;8a77   ; recortado por la izquierda de la pantalla
	add a,a			;8a7a   ; el largo x 8...
	add a,a			;8a7b
	add a,a			;8a7c
	neg		;8a7d
	sub (iy+005h)		;8a7f   ; ...contra la x: si se sale por la izquierda...
	ret nc			;8a82
	neg		;8a83   ; ...se recorta a lo que cabe
	rra			;8a85
	rra			;8a86
	rra			;8a87
	and 01fh		;8a88
	sub (iy+00ah)		;8a8a
	neg		;8a8d
	ld (iy+00ah),a		;8a8f
	ret			;8a92
L_8A93:
	call L_8AB7		;8a93   ; paso 1: avanza (p04:8AB7) hasta salir o quedarse sin largo
	jp c,L_86E2		;8a96
	call L_8A77		;8a99   ; recortado por la izquierda de la pantalla
	ld a,(iy+00ah)		;8a9c   ; sin largo, se acaba
	or a			;8a9f
	ret nz			;8aa0
	jp L_86E2		;8aa1
L_8AA4:
	call L_8AB7		;8aa4   ; paso 2: avanza y mengua de 5 en 5
	jp c,L_86E2		;8aa7
	ld a,(iy+00ah)		;8aaa   ; 5 menos de largo; sin largo, se acaba
	sub 005h		;8aad
	jp c,L_86E2		;8aaf
	inc a			;8ab2
	ld (iy+00ah),a		;8ab3
	ret			;8ab6
L_8AB7:
	ld a,(iy+005h)		;8ab7   ; avanza 0x20
	add a,020h		;8aba
	ld (iy+005h),a		;8abc   ; guarda la x del disparo
	ret			;8abf
L_8AC0:
	ld a,(iy+001h)		;8ac0   ; el otro laser: por su paso; en el 0 pegado a quien lo lanza
	dec a			;8ac3
	jr z,L_8A93		;8ac4
	jp p,L_8AA4		;8ac6
	ld c,(iy+008h)		;8ac9
	ld b,(iy+009h)		;8acc
	push bc			;8acf
	pop ix		;8ad0
	ld a,(ix+004h)		;8ad2   ; la y de quien lo lanza + 8...
	add a,008h		;8ad5
	and 0f8h		;8ad7
	ld (iy+003h),a		;8ad9   ; guarda la y del disparo
	ld a,(ix+006h)		;8adc   ; ...y su x + 0x10, en multiplos de 8
	add a,010h		;8adf
	and 0f8h		;8ae1
	ld (iy+005h),a		;8ae3   ; guarda la x del disparo
	cp 0f8h		;8ae6   ; por la derecha se acaba
	jp nc,L_86E2		;8ae8
	call L_8A53		;8aeb   ; y crece como el otro
	ret			;8aee
L_8AEF:
	ld a,(iy+003h)		;8aef   ; hacia arriba 6 (fuera, se acaba)
	sub 006h		;8af2
	jp c,L_86E2		;8af4
L_8AF7:
	ld (iy+003h),a		;8af7   ; guarda la y del disparo
	ld d,005h		;8afa   ; el dibujo 5
	call L_8E0B		;8afc   ; la y / 2 & 3 + D: el dibujo
	ret			;8aff
L_8B00:
	ld a,(iy+003h)		;8b00   ; hacia abajo 6
	add a,006h		;8b03
	cp 0b0h		;8b05
	jp nc,L_86E2		;8b07
	call L_8AF7		;8b0a
	ret			;8b0d
L_8B0E:
	call L_8AEF		;8b0e   ; cada 4 cuadros crece...
L_8B11:
	dec (iy+001h)		;8b11
	ret nz			;8b14
	ld (iy+001h),004h		;8b15
	ld a,(iy+005h)		;8b19   ; con la x en 0, crece 1...
	or a			;8b1c
	ld b,001h		;8b1d
	jr z,L_8B27		;8b1f
	inc b			;8b21   ; ...si no, 8 a la izquierda y crece 2
	sub 008h		;8b22
	ld (iy+005h),a		;8b24   ; guarda la x del disparo
L_8B27:
	ld a,(iy+00ah)		;8b27
	add a,b			;8b2a
	ld (iy+00ah),a		;8b2b
	call L_8A77		;8b2e   ; recortado por la izquierda de la pantalla
	ret			;8b31
L_8B32:
	call L_8B00		;8b32   ; hacia abajo 6
	call L_8B11		;8b35
	ret			;8b38
L_8B39:
	call L_8DC9		;8b39   ; el tipo 0x0A: largo 2, caja 0x10 x 0x10, el sonido 0x16
	ret nz			;8b3c
	ld (hl),00ah		;8b3d   ; tipo 0x0A, paso 4
	inc l			;8b3f
	ld (hl),004h		;8b40
	ld a,(ix+004h)		;8b42   ; la y de quien lo lanza...
	and 0f8h		;8b45
	ld (iy+003h),a		;8b47
	ld a,(ix+006h)		;8b4a   ; ...la x + 0x10, en multiplos de 8
	add a,010h		;8b4d
	and 0f8h		;8b4f
	ld (iy+005h),a		;8b51
	ld (iy+00ah),002h		;8b54   ; largo 2, caja 0x10 x 0x10, sin vida
	ld (iy+00ch),010h		;8b58
	ld (iy+00dh),010h		;8b5c
	ld (iy+010h),000h		;8b60
	call 05847h		;8b64   ; sonido_16: pide el sonido 0x16
	ret			;8b67
L_8B68:
	ld a,(iy+010h)		;8b68   ; con IY+10, a la derecha hasta acabar su vida (IY+11)
	or a			;8b6b
	jr z,L_8B80		;8b6c
	dec (iy+011h)		;8b6e   ; resta 1 a la vida del disparo
	jp z,L_86E2		;8b71
	ld a,(iy+005h)		;8b74   ; 8 a la derecha
	add a,008h		;8b77
	jp c,L_86E2		;8b79
	ld (iy+005h),a		;8b7c   ; guarda la x del disparo
	ret			;8b7f
L_8B80:
	ld a,(iy+005h)		;8b80   ; 8 a la derecha y cada 4 cuadros crece...
	add a,008h		;8b83
	ld (iy+005h),a		;8b85   ; guarda la x del disparo
	jp c,L_86E2		;8b88
	dec (iy+001h)		;8b8b   ; cada 4 cuadros...
	ret nz			;8b8e
	ld (iy+001h),004h		;8b8f
	ld a,(iy+003h)		;8b93   ; con la y en 0, crece 1; si no, 8 arriba y crece 2
	or a			;8b96
	ld b,001h		;8b97
	jr z,L_8BA1		;8b99
	inc b			;8b9b
	sub 008h		;8b9c
	ld (iy+003h),a		;8b9e   ; guarda la y del disparo
L_8BA1:
	ld a,(iy+00ah)		;8ba1   ; crece B (IY+0A)
	add a,b			;8ba4
	ld (iy+00ah),a		;8ba5
	ld a,(iy+003h)		;8ba8   ; ...recortado por abajo
	rra			;8bab
	rra			;8bac
	rra			;8bad
	and 01fh		;8bae
	add a,(iy+00ah)		;8bb0
	sub 017h		;8bb3   ; pasa de la fila 0x17? se recorta
	ret c			;8bb5
	inc a			;8bb6   ; lo que sobra, fuera
	neg		;8bb7
	add a,(iy+00ah)		;8bb9
	ld (iy+00ah),a		;8bbc
	ret			;8bbf
L_8BC0:
	call L_8DC9		;8bc0   ; el tipo 9: el dibujo 0x11, largo 2, el sonido 0x18
	ret nz			;8bc3
	ld (hl),009h		;8bc4   ; tipo 9, paso 4
	inc l			;8bc6
	ld (hl),004h		;8bc7
	ld a,(ix+004h)		;8bc9   ; la y de quien lo lanza...
	and 0f8h		;8bcc
	ld (iy+003h),a		;8bce
	ld a,(ix+006h)		;8bd1   ; ...la x + 0x10, en multiplos de 8
	add a,010h		;8bd4
	and 0f8h		;8bd6
	ld (iy+005h),a		;8bd8
	ld (iy+006h),011h		;8bdb   ; el dibujo 0x11, largo 2, caja 0x10 x 0x10
	ld (iy+00ah),002h		;8bdf
	ld (iy+00ch),010h		;8be3
	ld (iy+00dh),010h		;8be7
	ld (iy+010h),000h		;8beb
	call 0584fh		;8bef   ; sonido_18: pide el sonido 0x18
	ret			;8bf2
L_8BF3:
	ld a,(iy+010h)		;8bf3   ; el del tipo 9: igual que el 0x0A, con su vida
	or a			;8bf6
	jr z,L_8C0B		;8bf7
	dec (iy+011h)		;8bf9   ; resta 1 a la vida del disparo
	jp z,L_86E2		;8bfc
	ld a,(iy+005h)		;8bff   ; 8 a la derecha
	add a,008h		;8c02
	jp c,L_86E2		;8c04
	ld (iy+005h),a		;8c07   ; guarda la x del disparo
	ret			;8c0a
L_8C0B:
	ld a,(iy+005h)		;8c0b   ; 8 a la derecha; fuera, se acaba
	add a,008h		;8c0e
	jp c,L_86E2		;8c10
	ld (iy+005h),a		;8c13   ; guarda la x del disparo
	dec (iy+001h)		;8c16   ; cada 4 cuadros...
	ret nz			;8c19
	ld (iy+001h),004h		;8c1a
	ld a,(iy+003h)		;8c1e   ; con la y en 0, crece 1; si no, 8 arriba y crece 2
	or a			;8c21
	ld b,001h		;8c22
	jr z,L_8C2C		;8c24
	inc b			;8c26
	sub 008h		;8c27
	ld (iy+003h),a		;8c29   ; guarda la y del disparo
L_8C2C:
	ld a,(iy+00ah)		;8c2c   ; crece B (IY+0A)
	add a,b			;8c2f
	ld (iy+00ah),a		;8c30
	ld a,(iy+003h)		;8c33   ; recortado por abajo (0x17 filas)
	rra			;8c36
	rra			;8c37
	rra			;8c38
	and 01fh		;8c39
	add a,(iy+00ah)		;8c3b
	sub 017h		;8c3e   ; pasa de la fila 0x17? se recorta
	ret c			;8c40
	inc a			;8c41   ; lo que sobra, fuera
	neg		;8c42
	add a,(iy+00ah)		;8c44
	ld (iy+00ah),a		;8c47
	ret			;8c4a
L_8C4B:
	call L_8DC9		;8c4b   ; el tipo 0x0C (caja 0x10)...
	ret nz			;8c4e
	ld (hl),00ch		;8c4f   ; tipo 0x0C
	call L_8C5F		;8c51
	ld (iy+00dh),010h		;8c54   ; alto 0x10
	ret			;8c58
L_8C59:
	call L_8DC9		;8c59   ; ...y el 0x0B: un rayo pegado a quien lo lanza
	ret nz			;8c5c
	ld (hl),00bh		;8c5d   ; tipo 0x0B
L_8C5F:
	inc l			;8c5f
	ld (hl),000h		;8c60
	call L_8CF3		;8c62   ; su sitio, el dibujo 0x10, de quien sale
	ld (iy+006h),010h		;8c65   ; el dibujo 0x10
	push ix		;8c69   ; de quien sale
	pop bc			;8c6b
	ld (iy+008h),c		;8c6c
	ld (iy+009h),b		;8c6f
	xor a			;8c72   ; largo y caja a cero, alto 8, el sonido 0x17
	ld (iy+00ah),a		;8c73
	ld (iy+00bh),a		;8c76
	ld (iy+00ch),a		;8c79
	ld (iy+00dh),008h		;8c7c
	jp 0584bh		;8c80   ; sonido_17: pide el sonido 0x17
L_8C83:
	ld c,(iy+008h)		;8c83   ; el rayo: si quien lo lanza ya no esta, se acaba
	ld b,(iy+009h)		;8c86
	ld a,(bc)			;8c89
	or a			;8c8a
	jp z,L_86E2		;8c8b
	bit 0,(iy+001h)		;8c8e   ; paso 0: crece hasta 8, pegado a quien lo lanza
	jr nz,L_8CC3		;8c92
	call L_8CEA		;8c94   ; su sitio: el de quien lo lanza (+6 o +2 en y, +0x10 en x)
	inc (iy+00bh)		;8c97   ; crece...
	ld a,(iy+00bh)		;8c9a
	cp 008h		;8c9d   ; ...hasta 8: paso 1
	jr c,L_8CA5		;8c9f
	ld (iy+001h),001h		;8ca1
L_8CA5:
	ld a,(iy+005h)		;8ca5   ; recortado por la derecha (0x21 columnas)
	rra			;8ca8
	rra			;8ca9
	rra			;8caa
	and 01fh		;8cab
	add a,(iy+00bh)		;8cad
	sub 021h		;8cb0
	jr nc,L_8CB9		;8cb2
	ld a,(iy+00bh)		;8cb4   ; cabe entero
	jr L_8CBF		;8cb7
L_8CB9:
	inc a			;8cb9   ; se recorta a lo que cabe
	neg		;8cba
	add a,(iy+00bh)		;8cbc
L_8CBF:
	ld (iy+00ah),a		;8cbf
	ret			;8cc2
L_8CC3:
	call L_8CEA		;8cc3   ; paso 1: mengua hasta acabar...
	dec (iy+00bh)		;8cc6   ; mengua; a 0, se acaba
	jp z,L_86E2		;8cc9
	ld a,(0e630h)		;8ccc   ; ...y si es el arma en curso y se vuelve a pulsar, otra vez crece (el sonido 0x17)
	cp (iy+000h)		;8ccf   ; compara con el tipo del disparo (0: libre)
	ret nz			;8cd2
	call L_875B		;8cd3   ; con la nave...
	dec b			;8cd6
	jr nz,L_8CA5		;8cd7
	ld a,(0e308h)		;8cd9   ; ...y el boton recien pulsado...
	and 010h		;8cdc
	jr z,L_8CA5		;8cde
	ld (iy+001h),000h		;8ce0   ; ...vuelve al paso 0 y el sonido
	call L_8CA5		;8ce4   ; recortado por la derecha (0x21 columnas)
	jp 0584bh		;8ce7   ; sonido_17: pide el sonido 0x17
L_8CEA:
	ld c,(iy+008h)		;8cea   ; su sitio: el de quien lo lanza (+6 o +2 en y, +0x10 en x)
	ld b,(iy+009h)		;8ced
	push bc			;8cf0
	pop ix		;8cf1
L_8CF3:
	ld a,(iy+000h)		;8cf3   ; el 0x0B en la y + 6, los demas + 2
	cp 00bh		;8cf6
	ld b,006h		;8cf8
	jr z,L_8CFE		;8cfa
	ld b,002h		;8cfc
L_8CFE:
	ld a,(ix+004h)		;8cfe
	add a,b			;8d01
	and 0f8h		;8d02
	ld (iy+003h),a		;8d04   ; guarda la y del disparo
	ld a,(ix+006h)		;8d07   ; la x + 0x10
	add a,010h		;8d0a
	and 0f8h		;8d0c
	ld (iy+005h),a		;8d0e   ; guarda la x del disparo
	cp 0f8h		;8d11   ; en el borde (0xF8), se acaba
	jp z,L_86E2		;8d13
	ret			;8d16
L_8D17:
	xor a			;8d17   ; la capsula de 0xE5E0: un rayo grande de la nave (el tipo 0x18), 0xE5E1 = 1
	ld (0e5e0h),a		;8d18   ; 0xE5E0 = 0 y 0xE5E1 = 1: en marcha
	inc a			;8d1b
	ld (0e5e1h),a		;8d1c
	ld hl,0e680h		;8d1f   ; apunta a los disparos de la nave (9 de 0x20)
	push hl			;8d22   ; el primero de 0xE680
	pop iy		;8d23
	ld (hl),018h		;8d25   ; tipo 0x18, paso 0
	inc l			;8d27
	ld (hl),000h		;8d28
	ld a,(ix+004h)		;8d2a   ; su largo hacia arriba segun la y de la nave
	and 0f8h		;8d2d   ; la y de la nave - 0x28: por encima del todo...
	sub 028h		;8d2f
	ld c,a			;8d31
	ld b,00ch		;8d32
	jr c,L_8D46		;8d34
	sub 050h		;8d36   ; ...en medio...
	jr c,L_8D55		;8d38
	srl a		;8d3a   ; ...o abajo: el largo (B) segun la altura
	srl a		;8d3c
	srl a		;8d3e
	sub b			;8d40
	neg		;8d41
	ld b,a			;8d43
	jr L_8D55		;8d44
L_8D46:
	neg		;8d46   ; arriba del todo: desde 0, mas corto
	srl a		;8d48
	srl a		;8d4a
	srl a		;8d4c
	sub 00ch		;8d4e
	neg		;8d50
	ld b,a			;8d52
	ld c,000h		;8d53
L_8D55:
	ld (iy+003h),c		;8d55   ; y, largo (IY+10) y caja
	ld (iy+010h),b		;8d58   ; el largo en IY+10 y el alto de la caja (x 8)
	ld a,b			;8d5b
	add a,a			;8d5c
	add a,a			;8d5d
	add a,a			;8d5e
	ld (iy+00dh),a		;8d5f
	ld (iy+00ch),000h		;8d62   ; ancho 0
	ld (iy+00ah),000h		;8d66
	ld (iy+00bh),010h		;8d6a   ; 0x10 de vida, la x de la nave + 0x10
	ld a,(ix+006h)		;8d6e   ; la x de la nave + 0x10, en multiplos de 8
	and 0f8h		;8d71
	add a,010h		;8d73
	ld (iy+005h),a		;8d75
	ld (iy+002h),000h		;8d78
	ld (iy+004h),000h		;8d7c
	call L_8968		;8d80   ; IY+8 = IX (de quien sale)
	call 05853h		;8d83   ; el sonido 0x19
	ret			;8d86
L_8D87:
	ld a,(iy+001h)		;8d87   ; el rayo grande: paso 0 crece, paso 1 baja hasta salir
	dec a			;8d8a   ; paso 1: p04:8DA6
	jr z,L_8DA6		;8d8b
	ld a,(iy+00ah)		;8d8d   ; paso 0: crece 1 de ancho...
	add a,001h		;8d90
	ld (iy+00ah),a		;8d92
	ld a,(iy+00bh)		;8d95   ; ...mientras quede (IY+0B); al acabar, paso 1
	sub 001h		;8d98
	ld (iy+00bh),a		;8d9a
	jr nz,L_8DA3		;8d9d
	ld (iy+001h),001h		;8d9f
L_8DA3:
	jp L_8A77		;8da3
L_8DA6:
	ld a,(iy+005h)		;8da6   ; lee la x del disparo
	add a,008h		;8da9   ; avanza 8; fuera, se acaba
	ld (iy+005h),a		;8dab   ; guarda la x del disparo
	jp c,L_8DB9		;8dae
	call L_8A77		;8db1   ; recortado por la izquierda de la pantalla
	ld a,(iy+00ah)		;8db4   ; sin ancho, se acaba
	or a			;8db7
	ret nz			;8db8
L_8DB9:
	xor a			;8db9   ; acabado: 0xE5E1 = 0 y los dibujos de sprite de antes (p00:5080)
	ld (0e5e1h),a		;8dba   ; 0xE5E1 = 0, se acaba y p00:5080
	call L_86E2		;8dbd
	jp 05080h		;8dc0
L_8DC3:
	ld hl,0e6a0h		;8dc3   ; un hueco de disparo de los de 0xE6A0 (los segundos)...
	jp L_8DCC		;8dc6
L_8DC9:
	ld hl,0e680h		;8dc9   ; ...o de 0xE680, para quien dispara (0xE634): NZ si no hay o esta fuera
L_8DCC:
	ld a,(ix+004h)		;8dcc   ; con la nave fuera de la pantalla (y desde 0xA6 o x desde 0xD9), NZ
	cp 0a6h		;8dcf
	jr nc,L_8DED		;8dd1
	ld a,(ix+006h)		;8dd3
	cp 0d9h		;8dd6
	jr nc,L_8DED		;8dd8
	ld bc,(0e634h)		;8dda   ; el hueco de quien dispara (0xE634) en IY
	add hl,bc			;8dde
	push hl			;8ddf
	pop iy		;8de0
	ld a,(hl)			;8de2   ; libre? Z
	or a			;8de3
	push af			;8de4
	jr nz,L_8DEB		;8de5
	xor a			;8de7   ; libre: la cuenta del automatico a cero
	ld (0e638h),a		;8de8   ; libre: 0xE638 = 0
L_8DEB:
	pop af			;8deb
	ret			;8dec
L_8DED:
	ld a,001h		;8ded   ; no se puede: NZ
	or a			;8def
	ret			;8df0
L_8DF1:
	ld a,(ix+004h)		;8df1   ; el disparo en la posicion de quien lo lanza + DE (D en y, E en x)
	add a,d			;8df4   ; la y + D
	ld (iy+003h),a		;8df5   ; guarda la y del disparo
	ld a,(ix+006h)		;8df8   ; la x + E
	add a,e			;8dfb
	ld (iy+005h),a		;8dfc   ; guarda la x del disparo
	ld (iy+002h),000h		;8dff   ; la y del disparo (decimales) = 0x00
	ld (iy+004h),000h		;8e03   ; la x del disparo (decimales) = 0x00
	ret			;8e07
L_8E08:
	ld a,(ix+004h)		;8e08   ; el dibujo: D + (y / 2) & 3
L_8E0B:
	rra			;8e0b   ; la y / 2 & 3 + D: el dibujo
	and 003h		;8e0c
	add a,d			;8e0e
	ld (iy+006h),a		;8e0f   ; guarda el dibujo del disparo
	ret			;8e12
L_8E13:
	ld a,(iy+000h)		;8e13   ; la caja del disparo segun su largo: los tipos 9 y 0x0A en alto, los demas en ancho
	sub 009h		;8e16   ; los rayos 9 y 0x0A: el largo es el alto...
	cp 002h		;8e18
	jr c,L_8E26		;8e1a
	ld a,(iy+00ah)		;8e1c   ; ...los demas: el largo es el ancho
	add a,a			;8e1f
	add a,a			;8e20
	add a,a			;8e21
	ld (iy+00ch),a		;8e22   ; guarda el ancho del disparo para los choques
	ret			;8e25
L_8E26:
	ld a,(iy+00ah)		;8e26
	add a,a			;8e29
	add a,a			;8e2a
	add a,a			;8e2b
	ld (iy+00dh),a		;8e2c   ; guarda el alto del disparo para los choques
	ret			;8e2f
L_8E30:
	ld hl,0e6c0h		;8e30   ; un hueco en los de 0xE6C0 (las opciones)
	ld a,(ix+004h)		;8e33   ; con la opcion fuera (y desde 0xA5 o x desde 0xE8), NZ
	cp 0a5h		;8e36
	jr nc,L_8E4C		;8e38
	ld a,(ix+006h)		;8e3a
	cp 0e8h		;8e3d
	jr nc,L_8E4C		;8e3f
	ld bc,(0e634h)		;8e41   ; el hueco de esa opcion
	add hl,bc			;8e45
	push hl			;8e46
	pop iy		;8e47
	ld a,(hl)			;8e49   ; libre? Z
	or a			;8e4a
	ret			;8e4b
L_8E4C:
	ld a,001h		;8e4c   ; no: NZ
	or a			;8e4e
	ret			;8e4f
L_8E50:
	ld de,00808h		;8e50   ; la nave contra el decorado: el caracter que pisa (p04:8E98)
	ld bc,0002ch		;8e53   ; delante: el dibujo 0x2C (0x44 sin misiles)
	call L_8E98		;8e56
	jr c,L_8E5D		;8e59
	ld c,044h		;8e5b
L_8E5D:
	ld a,(0e380h)		;8e5d   ; con 0xE380 = 3 y la y por debajo de 0x50, tambien detras
	cp 003h		;8e60   ; con la nave 3...
	ret nz			;8e62
	ld a,(ix+004h)		;8e63   ; ...y la y por debajo de 0x50...
	cp 050h		;8e66
	ret nc			;8e68
	ld d,000h		;8e69
	ld bc,00124h		;8e6b   ; ...detras tambien: 0x24 (0x4C sin misiles)
	call L_8E98		;8e6e
	ret c			;8e71
	ld c,04ch		;8e72
	ret			;8e74
L_8E75:
	call L_8E9D		;8e75
	ld a,04ch		;8e78   ; el dibujo del misil: 0x4C o 0x24
	jr nc,L_8E94		;8e7a
	ld a,024h		;8e7c
	jr L_8E94		;8e7e
L_8E80:
	call L_8E9D		;8e80   ; el dibujo del misil: 0x48 o 0x28
	ld a,048h		;8e83
	jr nc,L_8E94		;8e85
	ld a,028h		;8e87
	jr L_8E94		;8e89
L_8E8B:
	call L_8E9D		;8e8b   ; 0x44 o 0x2C
	ld a,044h		;8e8e
	jr nc,L_8E94		;8e90
	ld a,02ch		;8e92
L_8E94:
	ld (iy+006h),a		;8e94   ; en IY+6
	ret			;8e97
L_8E98:
	ld a,(0e642h)		;8e98   ; el arma de 0xE642...
	jr L_8EA0		;8e9b
L_8E9D:
	ld a,(iy+000h)		;8e9d   ; ...o el tipo del disparo: 0x11-0x12 o 0x15-0x16 (C: misiles lentos)
L_8EA0:
	sub 011h		;8ea0   ; 0x11-0x12...
	cp 002h		;8ea2
	ret c			;8ea4
	sub 004h		;8ea5   ; ...o 0x15-0x16
	cp 002h		;8ea7
	ret			;8ea9
L_8EAA:
	call L_8E30		;8eaa   ; el misil: un hueco de opcion, su tipo y dibujo (tabla de 0x8EBF por el arma)
	ret nz			;8ead
L_8EAE:
	ld a,(0e642h)		;8eae
	ld hl,08ebfh		;8eb1   ; su tipo y su dibujo de la tabla de 0x8EBF
	call 04a5ah		;8eb4   ; lee_palabra: HL = la palabra A de la tabla HL
	ld (iy+000h),l		;8eb7
	ld (iy+007h),h		;8eba
	call L_8E50		;8ebd   ; el dibujo segun el decorado (p04:8E50)
	ld (iy+006h),c		;8ec0
	ld (iy+009h),b		;8ec3
	call L_8DF1		;8ec6   ; el disparo en la posicion de quien lo lanza + DE (D en y, E en x)
	ld (iy+00ch),008h		;8ec9   ; caja 8 x 8, y en multiplo de 4 (a 0, se acaba)
	ld (iy+00dh),008h		;8ecd   ; caja 8
	ld a,(iy+003h)		;8ed1   ; la y en multiplo de 4
	and 0fch		;8ed4
	ld (iy+003h),a		;8ed6
	ret nz			;8ed9   ; a 0 se acaba
	ld (iy+000h),000h		;8eda
L_8EDE:
	ret			;8ede

; ----------------------------------------------------------------------
; DATOS leido_8EDF: 2 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (2 bytes)
;   0x8edf..0x8ee1  (2 bytes)
DATA_leido_8EDF:
	defb 010h,00ah	; 8edf

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8ee1..0x8eef  (14 bytes)
DATA_8EE1:
	defb 011h,008h,012h,00fh,013h,00bh,014h,00ah,015h,008h,016h,00fh,017h,00bh	; 8ee1  ..............

; ======================================================================
; CODIGO 0x8eef..0x90a0  (433 bytes)
; ======================================================================


L_8EEF:
	call L_8E30		;8eef   ; el misil doble: el primero y otro hacia el otro lado (p04:9108)
	ret nz			;8ef2
	call L_8EAE		;8ef3   ; su tipo...
	push ix		;8ef6   ; ...con la opcion de IX
	call L_9108		;8ef8   ; el misil que busca: la pieza mas cercana de las 8 de 0xED00
	pop ix		;8efb
	ret			;8efd
L_8EFE:
	bit 0,(iy+009h)		;8efe   ; el misil que baja (o sube con el bit 0 de IY+9): sigue el suelo
	jp nz,L_8F1C		;8f02
	call L_9079		;8f05   ; libre abajo? baja...
	jp nc,L_8FD4		;8f08
	call L_9085		;8f0b   ; ...en diagonal...
	jp nc,L_8FE2		;8f0e
	call L_9094		;8f11   ; ...o avanza; sin salida, se acaba
	jp nc,L_8FF0		;8f14
	ld (iy+000h),000h		;8f17   ; el tipo del disparo (0: libre) = 0x00
	ret			;8f1b
L_8F1C:
	call L_90B5		;8f1c   ; arriba: y - 1
	jp nc,L_8FF8		;8f1f
	call L_90BF		;8f22   ; arriba a la derecha: x + 4, y - 1
	jp nc,L_9006		;8f25
	call L_90CC		;8f28   ; a la derecha: x + 4
	jp nc,L_8FF0		;8f2b
	ld (iy+000h),000h		;8f2e   ; el tipo del disparo (0: libre) = 0x00
	ret			;8f32
L_8F33:
	bit 0,(iy+009h)		;8f33   ; el misil que se pega al suelo: paso 0 cae, paso 1 lo recorre
	jp nz,L_8F7D		;8f37
	bit 0,(iy+001h)		;8f3a   ; paso 1: p04:8F66
	jr nz,L_8F66		;8f3e
	call L_9079		;8f40   ; libre abajo? cae; libre al lado? avanza; si no, se queda
	jp nc,L_8FD4		;8f43
	call L_9085		;8f46   ; abajo a la derecha: x + 4, y + 4
	jp nc,L_8FE2		;8f49
	call L_9094		;8f4c   ; a la derecha: x + 4
	jp nc,L_8FF0		;8f4f
	ld (iy+001h),001h		;8f52   ; paso 1: en el suelo
	ld a,(iy+005h)		;8f56   ; la x en multiplo de 4
	and 0fch		;8f59
	ld (iy+005h),a		;8f5b   ; guarda la x del disparo
	call L_8E75		;8f5e
	ld b,004h		;8f61   ; sube 4
	jp L_9054		;8f63
L_8F66:
	call L_90E4		;8f66   ; paso 1: sin suelo, vuelve a caer; con pared, se acaba
	jr nc,L_8FBE		;8f69
	call L_90F0		;8f6b
	jp c,L_904E		;8f6e
	call L_8E75		;8f71
	ld b,004h		;8f74
	call L_9054		;8f76   ; sube B; por arriba se acaba
	ret c			;8f79
	jp L_8FCA		;8f7a
L_8F7D:
	bit 0,(iy+001h)		;8f7d
	jr nz,L_8FA7		;8f81   ; paso 1: p04:8FA7
	call L_90B5		;8f83   ; libre arriba? sube; libre al lado? avanza; si no, se queda
	jr nc,L_8FF8		;8f86
	call L_90BF		;8f88   ; arriba a la derecha: x + 4, y - 1
	jp nc,L_9006		;8f8b
	call L_90CC		;8f8e   ; a la derecha: x + 4
	jr nc,L_8FF0		;8f91
	ld (iy+001h),001h		;8f93   ; paso 1: en el techo
	ld a,(iy+005h)		;8f97   ; lee la x del disparo
	and 0fch		;8f9a   ; la x en multiplo de 4
	ld (iy+005h),a		;8f9c   ; guarda la x del disparo
	call L_8E8B		;8f9f   ; 0x44 o 0x2C
	ld b,004h		;8fa2   ; baja 4
	jp L_903C		;8fa4
L_8FA7:
	call L_90E4		;8fa7   ; sin techo, vuelve a subir; con pared, se acaba
	jr nc,L_8FBE		;8faa
	call L_90FC		;8fac
	jp c,L_904E		;8faf
	call L_8E8B		;8fb2   ; 0x44 o 0x2C
	ld b,004h		;8fb5
	call L_903C		;8fb7   ; baja B; por abajo se acaba
	ret c			;8fba
	jp L_8FCA		;8fbb
L_8FBE:
	ld (iy+001h),000h		;8fbe   ; sin suelo: paso 0 y avanza 4
	call L_8E80		;8fc2   ; el dibujo del misil: 0x48 o 0x28
	ld b,004h		;8fc5
	jp L_9014		;8fc7
L_8FCA:
	ld a,(0e420h)		;8fca   ; con scroll, 8 a la izquierda
	or a			;8fcd   ; sin scroll, nada
	ret z			;8fce
	ld b,008h		;8fcf   ; con scroll, 8 a la izquierda
	jp L_9028		;8fd1
L_8FD4:
	call L_8E8B		;8fd4   ; 0x44 o 0x2C
	ld b,002h		;8fd7   ; cae: avanza 2 y baja 4
	call L_9014		;8fd9   ; a la derecha B (la mitad si es lento); por la derecha se acaba
	ret c			;8fdc
	ld b,004h		;8fdd
	jp L_903C		;8fdf
L_8FE2:
	call L_8E8B		;8fe2   ; 0x44 o 0x2C
	ld b,004h		;8fe5   ; baja 4 (y avanza 4)
	call L_9014		;8fe7   ; a la derecha B (la mitad si es lento); por la derecha se acaba
	ret c			;8fea
	ld b,004h		;8feb
	jp L_903C		;8fed
L_8FF0:
	call L_8E80		;8ff0   ; el dibujo del misil: 0x48 o 0x28
	ld b,004h		;8ff3   ; avanza 4
	jp L_9014		;8ff5
L_8FF8:
	call L_8E75		;8ff8   ; sube: avanza 2 y sube 4
	ld b,002h		;8ffb
	call L_9014		;8ffd   ; a la derecha B (la mitad si es lento); por la derecha se acaba
	ret c			;9000
	ld b,004h		;9001
	jp L_9054		;9003
L_9006:
	call L_8E75		;9006   ; sube 4 (y avanza 4)
	ld b,004h		;9009
	call L_9014		;900b   ; a la derecha B (la mitad si es lento); por la derecha se acaba
	ret c			;900e
	ld b,004h		;900f
	jp L_9054		;9011
L_9014:
	call L_8E9D		;9014   ; a la derecha B (la mitad si es lento); por la derecha se acaba
	jr nc,L_901B		;9017   ; lento (bit 0 de 0xE639): la mitad
	srl b		;9019
L_901B:
	ld a,(iy+005h)		;901b   ; lee la x del disparo
	add a,b			;901e   ; a la derecha; fuera, se acaba
	ld (iy+005h),a		;901f   ; guarda la x del disparo
	ret nc			;9022
	ld (iy+000h),000h		;9023   ; el tipo del disparo (0: libre) = 0x00
	ret			;9027
L_9028:
	call L_8E9D		;9028   ; a la izquierda B
	jr nc,L_902F		;902b   ; lento: la mitad
	srl b		;902d
L_902F:
	ld a,(iy+005h)		;902f   ; lee la x del disparo
	sub b			;9032   ; a la izquierda; fuera, se acaba
	ld (iy+005h),a		;9033   ; guarda la x del disparo
	ret nc			;9036
	ld (iy+000h),000h		;9037   ; el tipo del disparo (0: libre) = 0x00
	ret			;903b
L_903C:
	call L_8E9D		;903c   ; baja B; por abajo se acaba
	jr nc,L_9043		;903f   ; lento: la mitad
	srl b		;9041
L_9043:
	ld a,(iy+003h)		;9043   ; lee la y del disparo
	add a,b			;9046   ; baja; desde 0xAC, se acaba (C)
	ld (iy+003h),a		;9047   ; guarda la y del disparo
	cp 0ach		;904a
	ccf			;904c
	ret nc			;904d
L_904E:
	ld (iy+000h),000h		;904e   ; el tipo del disparo (0: libre) = 0x00
	scf			;9052
	ret			;9053
L_9054:
	call L_8E9D		;9054   ; sube B; por arriba se acaba
	jr nc,L_905B		;9057   ; lento: la mitad
	srl b		;9059
L_905B:
	ld a,(iy+003h)		;905b   ; lee la y del disparo
	sub b			;905e   ; sube; a 0 o por arriba, se acaba
	ld (iy+003h),a		;905f   ; guarda la y del disparo
	jp c,L_904E		;9062
	jp z,L_904E		;9065
	or a			;9068
	ret			;9069
L_906A:
	ld h,(iy+005h)		;906a   ; el caracter del bufer en su sitio: decorado (mayor que el fondo - 1)? C
	ld l,(iy+003h)		;906d   ; lee la y del disparo
L_9070:
	call 04a46h		;9070   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld a,(0e405h)		;9073   ; lee el caracter del fondo de la fase
	dec a			;9076   ; el caracter del bufer: decorado (mayor o igual que el fondo)? C
	cp (hl)			;9077
	ret			;9078
L_9079:
	ld h,(iy+005h)		;9079   ; abajo: y + 4
	ld a,(iy+003h)		;907c   ; lee la y del disparo
	add a,004h		;907f
	ld l,a			;9081
	jp L_9070		;9082
L_9085:
	ld a,(iy+005h)		;9085   ; abajo a la derecha: x + 4, y + 4
	add a,004h		;9088
	ld h,a			;908a
	ld a,(iy+003h)		;908b   ; lee la y del disparo
	add a,004h		;908e
	ld l,a			;9090
	jp L_9070		;9091
L_9094:
	ld a,(iy+005h)		;9094   ; a la derecha: x + 4
	add a,004h		;9097
	ld h,a			;9099
	ld l,(iy+003h)		;909a   ; lee la y del disparo
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
	ld h,(iy+005h)		;90b5   ; arriba: y - 1
	ld l,(iy+003h)		;90b8   ; lee la y del disparo
	dec l			;90bb
	jp L_9070		;90bc
L_90BF:
	ld a,(iy+005h)		;90bf   ; arriba a la derecha: x + 4, y - 1
	add a,004h		;90c2
	ld h,a			;90c4
	ld l,(iy+003h)		;90c5   ; lee la y del disparo
	dec l			;90c8
	jp L_9070		;90c9
L_90CC:
	ld a,(iy+005h)		;90cc   ; a la derecha: x + 4
	add a,004h		;90cf
	ld h,a			;90d1
	ld l,(iy+003h)		;90d2   ; lee la y del disparo
	jp L_9070		;90d5

; ----------------------------------------------------------------------
; DATOS sin identificar  0x90d8..0x90e4  (12 bytes)
DATA_90D8:
	defb 0fdh,066h,005h,0fdh,07eh,003h,0c6h,003h,06fh,0c3h,070h,090h	; 90d8  .f..~...o.p.

; ======================================================================
; CODIGO 0x90e4..0x92b4  (464 bytes)
; ======================================================================


L_90E4:
	ld a,(iy+005h)		;90e4   ; lee la x del disparo
	add a,004h		;90e7   ; abajo del todo: x + 4, y + 8
	ld h,a			;90e9
	ld l,(iy+003h)		;90ea   ; lee la y del disparo
	jp L_9070		;90ed
L_90F0:
	ld h,(iy+005h)		;90f0   ; lee la x del disparo
	ld a,(iy+003h)		;90f3   ; lee la y del disparo
	sub 008h		;90f6   ; arriba: y - 8
	ld l,a			;90f8
	jp L_9070		;90f9
L_90FC:
	ld h,(iy+005h)		;90fc   ; lee la x del disparo
	ld a,(iy+003h)		;90ff   ; lee la y del disparo
	add a,008h		;9102   ; abajo: y + 8
	ld l,a			;9104
	jp L_9070		;9105
L_9108:
	ld de,00000h		;9108   ; el misil que busca: la pieza mas cercana de las 8 de 0xED00
	ld (0ef80h),de		;910b   ; la mejor distancia, 0xFFFF
	dec de			;910f
	ld ix,0ed00h		;9110   ; apunta a las piezas (8 de 0x20)
	ld b,008h		;9114   ; las 8 piezas
L_9116:
	push bc			;9116
	call L_913E		;9117   ; una pieza tocable y visible: su distancia (x + y) contra la mejor
	ld bc,00020h		;911a
	add ix,bc		;911d
	pop bc			;911f
	djnz L_9116		;9120
	ld hl,(0ef80h)		;9122   ; la hay: la apunta (IY+10) y va hacia ella
	ld a,h			;9125   ; alguna: su direccion...
	or l			;9126
	jr z,L_9135		;9127
	ld (iy+010h),l		;9129   ; ...en IY+10/11, y a por ella
	ld (iy+011h),h		;912c
	call L_8E80		;912f   ; el dibujo del misil: 0x48 o 0x28
	jp L_91E5		;9132
L_9135:
	ld a,(iy+000h)		;9135   ; no la hay: el misil normal (tipo - 3)
	sub 003h		;9138   ; ninguna: el tipo pasa a la version que no busca (- 3)
	ld (iy+000h),a		;913a
	ret			;913d
L_913E:
	ld a,(ix+000h)		;913e   ; una pieza tocable y visible: su distancia (x + y) contra la mejor
	or a			;9141   ; libre: nada
	ret z			;9142
	bit 7,(ix+00dh)		;9143   ; que se pueda tocar...
	ret nz			;9147
	bit 6,(ix+012h)		;9148   ; ...y visible
	ret nz			;914c
	ld a,(ix+004h)		;914d   ; |y de la pieza - y del misil|...
	sub (iy+003h)		;9150
	jr nc,L_9157		;9153
	neg		;9155
L_9157:
	ld c,a			;9157
	ld b,000h		;9158
	ld a,(ix+006h)		;915a   ; ...+ |x - x|
	sub (iy+005h)		;915d
	jr nc,L_9164		;9160
	neg		;9162
L_9164:
	add a,c			;9164
	ld c,a			;9165
	jr nc,L_9169		;9166
	inc b			;9168
L_9169:
	ld h,d			;9169   ; menor que la mejor?
	ld l,e			;916a
	or a			;916b
	sbc hl,bc		;916c
	ret c			;916e
	ld d,b			;916f   ; la nueva mejor, y la pieza en 0xEF80
	ld e,c			;9170
	push ix		;9171
	pop hl			;9173
	ld (0ef80h),hl		;9174
	ret			;9177
L_9178:
	ld l,(iy+010h)		;9178   ; el misil que busca: si su pieza sigue, cada 4 cuadros vuelve a apuntar
	ld h,(iy+011h)		;917b   ; lee la vida del disparo
	ld a,(hl)			;917e   ; la pieza perseguida (IY+10/11): si ya no esta...
	or a			;917f
	jr z,L_91CC		;9180
	push hl			;9182
	pop ix		;9183
	bit 7,(ix+00dh)		;9185   ; ...o no se puede tocar o no se ve, otra
	jr nz,L_91CC		;9189
	bit 6,(ix+012h)		;918b
	jr nz,L_91CC		;918f
	ld a,(0e303h)		;9191   ; lee la cuenta de cuadros del juego
	inc a			;9194   ; cada 4 cuadros, la direccion otra vez
	and 003h		;9195
	call z,L_91E5		;9197   ; la direccion hacia la pieza de IY+10/11
	ld a,(iy+004h)		;919a   ; x + la velocidad en x (16 bits); por la derecha se acaba
	add a,(iy+014h)		;919d   ; le suma la velocidad en x del disparo (bajo)
	ld (iy+004h),a		;91a0   ; guarda la x del disparo (decimales)
	ld a,(iy+005h)		;91a3   ; lee la x del disparo
	adc a,(iy+015h)		;91a6   ; le suma la velocidad en x del disparo (alto)
	ld (iy+005h),a		;91a9   ; guarda la x del disparo
	cp 0f8h		;91ac   ; por la derecha se acaba
	jp nc,L_904E		;91ae
	ld a,(iy+002h)		;91b1   ; y + la velocidad en y; por abajo se acaba
	add a,(iy+012h)		;91b4   ; le suma la velocidad en y del disparo (bajo)
	ld (iy+002h),a		;91b7   ; guarda la y del disparo (decimales)
	ld a,(iy+003h)		;91ba   ; lee la y del disparo
	adc a,(iy+013h)		;91bd   ; le suma la velocidad en y del disparo (alto)
	ld (iy+003h),a		;91c0   ; guarda la y del disparo
	cp 0a4h		;91c3   ; por abajo se acaba
	jp nc,L_904E		;91c5
	call L_906A		;91c8   ; al tocar el decorado...
	ret nc			;91cb
L_91CC:
	ld a,(iy+000h)		;91cc   ; ...o perder la pieza: el misil normal
	sub 003h		;91cf   ; sin pieza: la version que no busca
	ld (iy+000h),a		;91d1   ; guarda el tipo del disparo (0: libre)
	ld a,(iy+003h)		;91d4   ; lee la y del disparo
	and 0fch		;91d7   ; la y en multiplo de 4
	ld (iy+003h),a		;91d9   ; guarda la y del disparo
	ld a,(iy+005h)		;91dc   ; lee la x del disparo
	and 0fch		;91df   ; la x en multiplo de 4
	ld (iy+005h),a		;91e1   ; guarda la x del disparo
	ret			;91e4
L_91E5:
	push ix		;91e5   ; la direccion hacia la pieza de IY+10/11
	call L_91ED		;91e7   ; apunta al centro de la pieza (o al de su caja de p03:BE18)
	pop ix		;91ea
	ret			;91ec
L_91ED:
	push hl			;91ed   ; apunta al centro de la pieza (o al de su caja de p03:BE18)
	pop ix		;91ee
	ld a,(ix+00dh)		;91f0   ; sin su punto (IX+0D & 0x7F = 0), al centro: y + 4 x filas...
	and 07fh		;91f3
	jr nz,L_9230		;91f5
	ld a,(ix+009h)		;91f7
	add a,a			;91fa
	add a,a			;91fb
	add a,(ix+004h)		;91fc
	ld e,a			;91ff
	ld a,(ix+00ah)		;9200   ; ...x + 4 x columnas
	add a,a			;9203
	add a,a			;9204
	add a,(ix+006h)		;9205
	ld d,a			;9208
L_9209:
	ld (0ef80h),de		;9209   ; hacia alli desde el misil
	ld e,(iy+003h)		;920d   ; lee la y del disparo
	ld d,(iy+005h)		;9210   ; lee la x del disparo
	call 0640bh		;9213   ; la direccion hacia ella con el paso 0xC0
	ld a,0c0h		;9216   ; velocidad 0xC0
	ld (0e46eh),a		;9218
	ld d,001h		;921b   ; sin azar
	call 0639fh		;921d   ; la direccion de 0xE476 (p01:639F)
	ld (iy+014h),e		;9220   ; guarda la velocidad en x del disparo (bajo)
	ld (iy+015h),d		;9223   ; guarda la velocidad en x del disparo (alto)
	ld hl,(0e472h)		;9226   ; lee la velocidad en y hacia la nave (16 bits; IX+7 de quien la usa)
	ld (iy+012h),l		;9229   ; guarda la velocidad en y del disparo (bajo)
	ld (iy+013h),h		;922c   ; guarda la velocidad en y del disparo (alto)
	ret			;922f
L_9230:
	call 04150h		;9230   ; bancos_3: pone el 3 (y sus copias en 0xF0F1-3)
	add a,a			;9233   ; con su punto: el de la tabla de 0xBE18
	add a,a			;9234
	ld hl,0be18h		;9235
	call 04089h		;9238   ; suma_a_hl: HL = HL + A
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
	call 0415bh		;9252   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	jr L_9209		;9255
L_9257:
	ld (iy+000h),00fh		;9257   ; el disparo 0x0F (lo de p01:65CB): 0x1E cuadros, caja 0x18, el dibujo 0x30
	ld (iy+001h),000h		;925b   ; el rayo de la capsula: paso 0, 0x1E de vida, caja 0x18 x 0x18, el dibujo 0x30 y el color 0x0F
	ld (iy+010h),01eh		;925f
	ld (iy+00dh),018h		;9263
	ld (iy+00ch),018h		;9267
	ld (iy+006h),030h		;926b
	ld (iy+007h),00fh		;926f
	ld a,(iy+003h)		;9273   ; 8 arriba a la izquierda
	sub 008h		;9276   ; 8 arriba, sin bajar de 0...
	jr nc,L_927B		;9278
	xor a			;927a
L_927B:
	ld (iy+003h),a		;927b
	ld a,(iy+005h)		;927e   ; ...y 8 a la izquierda
	sub 008h		;9281
	jr nc,L_9286		;9283
	xor a			;9285
L_9286:
	ld (iy+005h),a		;9286
	jr L_929C		;9289
L_928B:
	dec (iy+010h)		;928b   ; cuenta, va con el scroll y su animacion
	jp z,L_904E		;928e   ; sin vida, se acaba
	call L_8FCA		;9291   ; con scroll, 8 a la izquierda
	ret c			;9294
	call L_92BC		;9295   ; el dibujo de 4 en 4 de 0x30 a 0x3C; al dar la vuelta, el paso siguiente
	call L_929C		;9298   ; el segundo sprite segun el paso (tabla de 0x92B4)
	ret			;929b
L_929C:
	ld a,(iy+001h)		;929c   ; el segundo sprite segun el paso (tabla de 0x92B4)
	ld hl,092b4h		;929f   ; la tabla de 0x92B4 por su paso: el paso en y y en x
	call 04a5ah		;92a2   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(iy+003h)		;92a5   ; lee la y del disparo
	add a,l			;92a8
	ld (iy+008h),a		;92a9
	ld a,(iy+005h)		;92ac   ; lee la x del disparo
	add a,h			;92af
	ld (iy+009h),a		;92b0
	ret			;92b3

; ----------------------------------------------------------------------
; DATOS tabla_92B4: tabla que se lee desde HL = 0x92B4 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p04:929F (8 bytes)
;   0x92b4..0x92bc  (8 bytes)
DATA_tabla_92B4:
	defb 000h,000h,000h,00ch,00ch,00ch,00ch,000h	; 92b4  ........

; ======================================================================
; CODIGO 0x92bc..0x9316  (90 bytes)
; ======================================================================


L_92BC:
	ld a,(iy+006h)		;92bc   ; el dibujo de 4 en 4 de 0x30 a 0x3C; al dar la vuelta, el paso siguiente
	add a,004h		;92bf   ; el dibujo de 4 en 4, de 0x30 a 0x3C
	cp 03ch		;92c1
	jr c,L_92C7		;92c3
	ld a,030h		;92c5
L_92C7:
	ld (iy+006h),a		;92c7   ; guarda el dibujo del disparo
	ret c			;92ca
	ld a,(iy+001h)		;92cb   ; el paso siguiente (0 a 3)
	inc a			;92ce
	cp 004h		;92cf
	jr c,L_92D4		;92d1
	xor a			;92d3
L_92D4:
	ld (iy+001h),a		;92d4
	ret			;92d7
L_92D8:
	ld a,(0e600h)		;92d8   ; comprar arma: con la nave y el boton 2 recien pulsado
	dec a			;92db   ; sin nave, nada
	ret m			;92dc
	ld a,(0e308h)		;92dd   ; lee lo recien pulsado (mando y cursores)
	and 020h		;92e0   ; el boton 2
	ret z			;92e2
	ld hl,0e430h		;92e3   ; la casilla marcada (0xE430; 0: ninguna)
	ld a,(hl)			;92e6   ; sin marca, nada
	or a			;92e7
	ret z			;92e8
	ld (0e43dh),a		;92e9   ; guarda la casilla que se compra
	ld hl,0e433h		;92ec   ; si esa arma ya esta al maximo (bit 7 de 0xE433 + casilla), nada
	add a,l			;92ef
	ld l,a			;92f0
	ld a,(hl)			;92f1
	or a			;92f2
	ret m			;92f3
	xor a			;92f4   ; la marca a cero, el arma (p04:9302) y el marcador
	ld (0e430h),a		;92f5   ; guarda la marca de armas (1 a 8)
	call L_9302		;92f8   ; lo que hace cada casilla segun la nave elegida (0xE380: tabla de 0x9316)
	call L_957D		;92fb   ; las 8 casillas en 0x3AC2, de dos caracteres
	call L_95B6		;92fe
	ret			;9301
L_9302:
	ld a,(0e380h)		;9302   ; lo que hace cada casilla segun la nave elegida (0xE380: tabla de 0x9316)
	ld hl,09316h		;9305   ; la tabla de la nave (0x9316)...
	call 04a5ah		;9308   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(0e43dh)		;930b   ; ...y la rutina de la casilla
	dec a			;930e
	call 04094h		;930f   ; A x 2: la palabra A (p00:4094)
	call 0585fh		;9312   ; y el sonido 0x1C
	ret			;9315

; ----------------------------------------------------------------------
; DATOS tabla_9316: tabla que se lee desde HL = 0x9316 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p04:9305 (8 bytes)
;   0x9316..0x931e  (8 bytes)
DATA_tabla_9316:
	defb 01eh,093h,02eh,093h,03eh,093h,04eh,093h	; 9316  ....>.N.

; ----------------------------------------------------------------------
; DATOS leido_931E: 14 bytes que leen p00:4098, p00:409A al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 2 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p00:4098, p00:409A (14 bytes)
;   0x931e..0x932c  (14 bytes)
DATA_leido_931E:
	defb 05eh,093h,06dh,093h,09eh,093h,0d1h,093h,004h,094h,02eh,094h,075h,094h	; 931e  ^.m.........u.

; ----------------------------------------------------------------------
; DATOS sin identificar  0x932c..0x935e  (50 bytes)
DATA_932C:
	defb 08dh,094h,05eh,093h,06dh,093h,09eh,093h,0d1h,093h,004h,094h,02eh,094h,075h,094h	; 932c  ..^.m.........u.
	defb 08dh,094h,05eh,093h,06dh,093h,09eh,093h,0d1h,093h,004h,094h,02eh,094h,075h,094h	; 933c  ..^.m.........u.
	defb 08dh,094h,05eh,093h,06dh,093h,09eh,093h,0d1h,093h,004h,094h,02eh,094h,075h,094h	; 934c  ..^.m.........u.
	defb 08dh,094h	; 935c

; ======================================================================
; CODIGO 0x935e..0x9392  (52 bytes)
; ======================================================================


L_935E:
	ld hl,0e434h		;935e   ; velocidad: un nivel mas, hasta 7 (0xFF)...
	inc (hl)			;9361
	ld a,(hl)			;9362
	cp 007h		;9363
	jr c,L_9369		;9365
	ld (hl),0ffh		;9367
L_9369:
	ld (0e602h),a		;9369   ; ...es la velocidad de la nave
	ret			;936c
L_936D:
	call L_94B7		;936d   ; el tope de la casilla 2 (p04:94B7)
L_9370:
	ld hl,0e435h		;9370   ; apunta a el nivel de la casilla 2 (0xFF al maximo)
	inc (hl)			;9373   ; un nivel mas; al tope, 0xFF
	ld a,(hl)			;9374
	cp c			;9375
	jr c,L_937A		;9376
	ld (hl),0ffh		;9378
L_937A:
	ld b,a			;937a
	ld a,(0e380h)		;937b   ; el arma de la nave en su nivel (nave x 3 + nivel, tabla de 0x9391)...
	ld c,a			;937e
	add a,a			;937f
	add a,c			;9380
	add a,b			;9381
	ld hl,L_9391		;9382
	call 04a6eh		;9385   ; lee_byte: A = el byte A de la tabla HL
L_9388:
	ld (0e632h),a		;9388   ; ...es el tercer arma (el misil)
	ld de,00080h		;938b   ; 0x80 de puntos segun la dificultad
	call 05692h		;938e   ; segun_dificultad: DE segun la dificultad (0xE39D: igual, el doble o la mitad)
L_9391:
	ret			;9391

; ----------------------------------------------------------------------
; DATOS leido_9392: 1 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (1 bytes)
;   0x9392..0x9393  (1 bytes)
DATA_leido_9392:
	defb 010h	; 9392

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9393..0x939e  (11 bytes)
DATA_9393:
	defb 014h,013h,011h,015h,013h,012h,016h,013h,010h,014h,013h	; 9393  ...........

; ======================================================================
; CODIGO 0x939e..0x93cf  (49 bytes)
; ======================================================================


L_939E:
	call L_94B7		;939e   ; el tope de la casilla 3
L_93A1:
	ld hl,0e436h		;93a1   ; apunta a el nivel de la casilla 3 (0xFF al maximo)
	inc (hl)			;93a4   ; un nivel mas; al tope, vuelve a 0
	ld a,(hl)			;93a5
	cp c			;93a6
	jr c,L_93AB		;93a7
	ld (hl),000h		;93a9
L_93AB:
	ld hl,l93ceh		;93ab   ; el arma de su nivel (tabla de 0x93CE)...
	call 04a6eh		;93ae   ; lee_byte: A = el byte A de la tabla HL
L_93B1:
	ld (0e631h),a		;93b1   ; ...es el segundo arma, con el disparo normal
	ld a,001h		;93b4
	ld (0e630h),a		;93b6   ; guarda el primer arma (el disparo)
	call L_93BD		;93b9
	ret			;93bc
L_93BD:
	xor a			;93bd   ; las casillas 4 y 6 a 0...
	ld (0e437h),a		;93be   ; guarda el nivel de la casilla 4 (0xFF al maximo)
	ld (0e439h),a		;93c1   ; guarda el nivel de la casilla 6 (0xFF al maximo)
	ld a,(0e36fh)		;93c4   ; ...y con el arma secreta en 3 o mas, la 5 tambien
	cp 003h		;93c7
	ret c			;93c9
	xor a			;93ca
	ld (0e438h),a		;93cb   ; guarda el nivel de la casilla 5 (0xFF al maximo)
L_93CE:
	ret			;93ce

; ----------------------------------------------------------------------
; DATOS leido_93CF: 2 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (2 bytes)
;   0x93cf..0x93d1  (2 bytes)
DATA_leido_93CF:
	defb 002h,001h	; 93cf

; ======================================================================
; CODIGO 0x93d1..0x9402  (49 bytes)
; ======================================================================


L_93D1:
	call L_94B7		;93d1   ; el tope de la casilla 4
L_93D4:
	ld hl,0e437h		;93d4   ; apunta a el nivel de la casilla 4 (0xFF al maximo)
	inc (hl)			;93d7   ; un nivel mas; al tope, 0xFF
	ld a,(hl)			;93d8
	cp c			;93d9
	jr c,L_93DE		;93da
	ld (hl),0ffh		;93dc
L_93DE:
	ld hl,l9401h		;93de   ; el arma de su nivel (tabla de 0x9401)...
	call 04a6eh		;93e1   ; lee_byte: A = el byte A de la tabla HL
L_93E4:
	ld (0e631h),a		;93e4   ; ...es el segundo arma, con el disparo normal
	ld a,001h		;93e7
	ld (0e630h),a		;93e9   ; guarda el primer arma (el disparo)
	call L_93F0		;93ec
	ret			;93ef
L_93F0:
	xor a			;93f0   ; las casillas 3 y 6 a 0...
	ld (0e436h),a		;93f1   ; guarda el nivel de la casilla 3 (0xFF al maximo)
	ld (0e439h),a		;93f4   ; guarda el nivel de la casilla 6 (0xFF al maximo)
	ld a,(0e36fh)		;93f7   ; ...y con el arma secreta en 3 o mas, la 5 tambien
	cp 003h		;93fa
	ret c			;93fc
	xor a			;93fd
	ld (0e438h),a		;93fe   ; guarda el nivel de la casilla 5 (0xFF al maximo)
L_9401:
	ret			;9401

; ----------------------------------------------------------------------
; DATOS leido_9402: 1 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (1 bytes)
;   0x9402..0x9403  (1 bytes)
DATA_leido_9402:
	defb 003h	; 9402

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9403..0x9404  (1 bytes)
DATA_9403:
	defb 004h	; 9403

; ======================================================================
; CODIGO 0x9404..0x942c  (40 bytes)
; ======================================================================


L_9404:
	call L_94B7		;9404   ; casilla 5 ("?", solo con el arma secreta en 3 o mas): el tope (p04:94B7)...
	ld hl,0e438h		;9407   ; ...un nivel mas en 0xE438; al tope, 0xFF
	inc (hl)			;940a
	ld a,(hl)			;940b
	cp c			;940c
	jr c,L_9411		;940d
	ld (hl),0ffh		;940f
L_9411:
	ld hl,l942bh		;9411   ; el arma de su nivel (tabla de 0x942B: 0x0D o 0x0E)...
	call 04a6eh		;9414   ; lee_byte: A = el byte A de la tabla HL
	ld (0e631h),a		;9417   ; ...es el segundo arma
	call L_9424		;941a   ; las casillas 3 y 4 a 0
	ld de,00080h		;941d   ; 0x80 de puntos segun la dificultad
	call 05692h		;9420   ; segun_dificultad: DE segun la dificultad (0xE39D: igual, el doble o la mitad)
	ret			;9423
L_9424:
	xor a			;9424
	ld (0e436h),a		;9425   ; guarda el nivel de la casilla 3 (0xFF al maximo)
	ld (0e437h),a		;9428   ; guarda el nivel de la casilla 4 (0xFF al maximo)
L_942B:
	ret			;942b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x942c..0x942e  (2 bytes)
DATA_942C:
	defb 00dh,00eh	; 942c

; ======================================================================
; CODIGO 0x942e..0x9469  (59 bytes)
; ======================================================================


L_942E:
	call L_94B7		;942e   ; el tope de la casilla 6
L_9431:
	ld hl,0e439h		;9431   ; apunta a el nivel de la casilla 6 (0xFF al maximo)
	inc (hl)			;9434   ; un nivel mas; al tope, 0xFF
	ld a,(hl)			;9435
	cp c			;9436
	jr c,L_943B		;9437
	ld (hl),0ffh		;9439
L_943B:
	ld b,a			;943b
	ld a,(0e380h)		;943c   ; el arma de la nave en su nivel (tabla de 0x9468)...
	ld c,a			;943f
	add a,a			;9440
	add a,c			;9441
	add a,b			;9442
	ld hl,l9468h		;9443
	call 04a6eh		;9446   ; lee_byte: A = el byte A de la tabla HL
L_9449:
	ld (0e630h),a		;9449   ; ...es el primer arma
	ld a,(0e631h)		;944c   ; el segundo arma, salvo desde el 5, se quita
	cp 005h		;944f
	jr nc,L_9457		;9451
	xor a			;9453
	ld (0e631h),a		;9454   ; guarda el segundo arma
L_9457:
	call L_9461		;9457   ; las casillas 3 y 4 a 0
	ld de,00100h		;945a   ; 0x100 de puntos segun la dificultad
	call 05692h		;945d   ; segun_dificultad: DE segun la dificultad (0xE39D: igual, el doble o la mitad)
L_9460:
	ret			;9460
L_9461:
	xor a			;9461
	ld (0e436h),a		;9462   ; guarda el nivel de la casilla 3 (0xFF al maximo)
	ld (0e437h),a		;9465   ; guarda el nivel de la casilla 4 (0xFF al maximo)
L_9468:
	ret			;9468

; ----------------------------------------------------------------------
; DATOS leido_9469: 1 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (1 bytes)
;   0x9469..0x946a  (1 bytes)
DATA_leido_9469:
	defb 005h	; 9469

; ----------------------------------------------------------------------
; DATOS sin identificar  0x946a..0x9475  (11 bytes)
DATA_946A:
	defb 006h,007h,005h,008h,007h,00ah,00bh,00ch,00ah,00bh,009h	; 946a  ...........

; ======================================================================
; CODIGO 0x9475..0x94d1  (92 bytes)
; ======================================================================


L_9475:
	ld hl,0e43ah		;9475   ; opciones: una mas, hasta 2 (0xFF)...
	inc (hl)			;9478
	ld a,(hl)			;9479
	ld (0e608h),a		;947a   ; guarda cuantas opciones tiene la nave
	cp 002h		;947d
	jr c,L_9483		;947f
	ld (hl),0ffh		;9481
L_9483:
	call L_8505		;9483   ; ...y aparece
	ld de,00080h		;9486   ; 0x80 de puntos segun la dificultad
	call 05692h		;9489   ; segun_dificultad: DE segun la dificultad (0xE39D: igual, el doble o la mitad)
L_948C:
	ret			;948c
L_948D:
	ld hl,0e43bh		;948d   ; casilla 8, el escudo: una vez (0xFF)
	ld (hl),0ffh		;9490
	ld a,(0e37fh)		;9492   ; el estado de la nave: 2 con SHIELD (el de delante), 3 con FORCE FIELD (el grande)
	add a,002h		;9495
	ld (0e600h),a		;9497   ; guarda el estado de la nave (1 normal, 2 y 3 con escudo, 0xFF estalla)
	cp 002h		;949a   ; los golpes: 10 el de delante, 5 el grande...
	ld b,00ah		;949c
	jr z,L_94A2		;949e
	ld b,005h		;94a0
L_94A2:
	ld a,(0e39eh)		;94a2   ; ...el doble con la clave EXPAND (0xE39E)
	or a			;94a5
	ld a,b			;94a6
	jr z,L_94AA		;94a7
	add a,a			;94a9
L_94AA:
	ld (0e601h),a		;94aa   ; en 0xE601
	ld de,00100h		;94ad
	call 05692h		;94b0   ; segun_dificultad: DE segun la dificultad (0xE39D: igual, el doble o la mitad)
	call 05007h		;94b3   ; y los dibujos de sprite de la nave con escudo (p00:5007)
	ret			;94b6
L_94B7:
	ld a,(0e43dh)		;94b7   ; C = el tope de la casilla elegida: la tabla de 0x94D0 por el nivel del arma secreta (0xE36F x 8 + casilla)
	ld (0ef80h),a		;94ba
L_94BD:
	ld a,(0e36fh)		;94bd   ; un byte de la tabla de 0x94D0 por 0xE36F x 8 + 0xEF80
	add a,a			;94c0
	add a,a			;94c1
	add a,a			;94c2
	ld c,a			;94c3
	ld a,(0ef80h)		;94c4   ; + la casilla (0xEF80)
	add a,c			;94c7
	ld c,a			;94c8
	ld b,000h		;94c9
	ld hl,l94d0h		;94cb
	add hl,bc			;94ce
	ld c,(hl)			;94cf   ; C: el tope
L_94D0:
	ret			;94d0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x94d1..0x94d2  (1 bytes)
DATA_94D1:
	defb 007h	; 94d1

; ----------------------------------------------------------------------
; DATOS leido_94D2: 13 bytes que lee p04:94CF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 6 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p04:94CF (13
;   bytes)
;   0x94d2..0x94df  (13 bytes)
DATA_leido_94D2:
	defb 001h,002h,001h,000h,001h,002h,001h,007h,001h,002h,001h,000h,002h	; 94d2  .............

; ----------------------------------------------------------------------
; DATOS sin identificar  0x94df..0x9511  (50 bytes)
DATA_94DF:
	defb 002h,001h,007h,001h,002h,001h,000h,003h,002h,001h,007h,001h,002h,001h,001h,003h	; 94df  ................
	defb 002h,001h,007h,001h,002h,001h,002h,003h,002h,001h,007h,001h,002h,002h,002h,003h	; 94ef  ................
	defb 002h,001h,007h,002h,002h,002h,002h,003h,002h,001h,007h,003h,002h,002h,002h,003h	; 94ff  ................
	defb 002h,001h	; 950f

; ======================================================================
; CODIGO 0x9511..0x95f9  (232 bytes)
; ======================================================================


L_9511:
	call L_9524		;9511   ; el marcador de armas al empezar: a cero...
	call L_953D		;9514   ; ...la marca si se tenia...
L_9517:
	call L_954E		;9517   ; ...los colores del medidor...
	call L_956B		;951a   ; ...sus caracteres...
	call L_957D		;951d   ; ...las casillas...
	call L_95B6		;9520   ; ...y el nombre de la marcada
	ret			;9523
L_9524:
	ld hl,0e430h		;9524   ; 0xE430-0xE43C a cero
	ld de,0e431h		;9527   ; 0xE430-0xE43C a cero
	ld bc,0000ch		;952a
	ld (hl),000h		;952d
	ldir		;952f
	ld a,(0e36fh)		;9531   ; con 0xE36F por debajo de 3, la casilla 4 (0xE438) llena
	cp 003h		;9534   ; con el arma secreta por debajo de 3, la casilla 5 llena (0xFF)
	ret nc			;9536
	ld a,0ffh		;9537
	ld (0e438h),a		;9539   ; guarda el nivel de la casilla 5 (0xFF al maximo)
	ret			;953c
L_953D:
	ld a,(0e36bh)		;953d   ; con 0xE36B o 0xE36D, la marca en la casilla 1
	or a			;9540
	jr nz,L_9548		;9541
	ld a,(0e36dh)		;9543
	or a			;9546
	ret z			;9547
L_9548:
	ld a,001h		;9548   ; la marca en la 1
	ld (0e430h),a		;954a   ; guarda la marca de armas (1 a 8)
	ret			;954d
L_954E:
	ld b,009h		;954e   ; los colores de los 9 caracteres del medidor (0x1278): 0xE0 y 7 de 0xA0
	ld hl,01278h		;9550
L_9553:
	push bc			;9553   ; cada caracter: su primera fila 0xE0...
	ld a,0e0h		;9554
	call 0004dh		;9556   ; BIOS WRTVRM - Writes data in VRAM
	inc hl			;9559
	ld bc,00007h		;955a   ; ...las siete de abajo 0xA0
	ld a,0a0h		;955d
	call 00056h		;955f   ; BIOS FILVRM - Fills VRAM with value
	ld a,007h		;9562
	call 04089h		;9564   ; suma_a_hl: HL = HL + A
	pop bc			;9567
	djnz L_9553		;9568
	ret			;956a
L_956B:
	ld hl,03ad4h		;956b   ; los 9 caracteres del medidor en 0x3AD4 (del 0x4F en adelante)
	call 04ab6h		;956e   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	ld b,009h		;9571   ; nueve, desde el 0x4F
	ld a,04fh		;9573
L_9575:
	exx			;9575   ; los caracteres seguidos, del 0x4F al 0x57
	out (c),a		;9576
	inc a			;9578
	exx			;9579
	djnz L_9575		;957a
	ret			;957c
L_957D:
	ld hl,03ac2h		;957d   ; las 8 casillas en 0x3AC2, de dos caracteres
	call 04ab6h		;9580   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	ld hl,0e434h		;9583   ; las 8, desde la 1 (C)
	ld bc,00801h		;9586
L_9589:
	call L_9591		;9589   ; la casilla: llena (0xFF) o no, y marcada o no
	inc hl			;958c   ; la siguiente
	inc c			;958d
	djnz L_9589		;958e
	ret			;9590
L_9591:
	ld a,(hl)			;9591   ; la casilla: llena (0xFF) o no, y marcada o no
	inc a			;9592
	jr nz,L_95A2		;9593
	ld a,(0e430h)		;9595   ; lee la marca de armas (1 a 8)
	cp c			;9598
	ld a,03ch		;9599   ; llena: 0x3C, o 0x3E si es la marcada
	jr nz,L_95AC		;959b
	ld a,03eh		;959d
	jp L_95AC		;959f
L_95A2:
	ld a,(0e430h)		;95a2   ; vacia: 0x38, o 0x3A si es la marcada
	cp c			;95a5
	ld a,038h		;95a6
	jr nz,L_95AC		;95a8
	ld a,03ah		;95aa
L_95AC:
	exx			;95ac   ; los dos caracteres
	out (c),a		;95ad
	exx			;95af
	inc a			;95b0
	exx			;95b1
	out (c),a		;95b2
	exx			;95b4
	ret			;95b5
L_95B6:
	ld a,(0e430h)		;95b6   ; el nombre de la casilla marcada: ninguna...
	ld b,a			;95b9
	or a			;95ba
	jr z,L_95E4		;95bb
	cp 008h		;95bd   ; ...o la 8
	jr z,L_95E7		;95bf
	ld de,0e433h		;95c1   ; el arma de esa casilla (0xE433 + casilla): sin tener nada (0xFF), ningun nombre
	add a,e			;95c4
	ld e,a			;95c5
	ld a,(de)			;95c6   ; ya al maximo (0xFF): sin nombre
	ld c,a			;95c7
	cp 0ffh		;95c8
	jr z,L_95E4		;95ca
	ld a,(0e380h)		;95cc   ; el nombre segun la nave (0xE380: tabla de 0x95F9) y la casilla...
	ld hl,095f9h		;95cf
	call 04a5ah		;95d2   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,b			;95d5   ; la de la casilla
	call 04a5ah		;95d6   ; lee_palabra: HL = la palabra A de la tabla HL
	ld b,000h		;95d9   ; ...y lo que ya se tiene
	add hl,bc			;95db
	ld a,(hl)			;95dc
L_95DD:
	ld (0e43ch),a		;95dd   ; en 0xE43C, y se pinta (p00:4F52)
	call 04f52h		;95e0   ; un bloque de 0x48 bytes de p14:646C (palabra A) a la VRAM de 0x3278 (p00:4F52)
	ret			;95e3
L_95E4:
	xor a			;95e4
	jr L_95DD		;95e5
L_95E7:
	ld a,(0e43bh)		;95e7   ; la casilla 8 (el escudo)...
	inc a			;95ea
	jr z,L_95E4		;95eb
	ld a,(0e37fh)		;95ed   ; ...el nombre 0x0A (SHIELD) o 0x0B (FORCE FIELD)
	or a			;95f0
	ld a,00ah		;95f1
	jr z,L_95F7		;95f3
	ld a,00bh		;95f5
L_95F7:
	jr L_95DD		;95f7

; ----------------------------------------------------------------------
; DATOS tabla_95F9: tabla que se lee desde HL = 0x95F9 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p04:95CF (64 bytes)
;   0x95f9..0x9639  (64 bytes)
DATA_tabla_95F9:
	defb 0ffh,095h,00dh,096h,01bh,096h,029h,096h,039h,096h,040h,096h,04ch,096h,04eh,096h	; 95f9  ......).9.@.L.N.
	defb 050h,096h,052h,096h,05eh,096h,039h,096h,043h,096h,04ch,096h,04eh,096h,050h,096h	; 9609  P.R.^.9.C.L.N.P.
	defb 055h,096h,05eh,096h,039h,096h,046h,096h,04ch,096h,04eh,096h,050h,096h,058h,096h	; 9619  U.^.9.F.L.N.P.X.
	defb 05eh,096h,039h,096h,049h,096h,04ch,096h,04eh,096h,050h,096h,05bh,096h,05eh,096h	; 9629  ^.9.I.L.N.P.[.^.

; ----------------------------------------------------------------------
; DATOS leido_9639: 38 bytes que lee p04:95DC al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 25 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p04:95DC (38 bytes)
;   0x9639..0x965f  (38 bytes)
DATA_leido_9639:
	defb 001h,002h,003h,004h,005h,006h,007h,00ch,00dh,014h,00eh,00fh,014h,010h,011h,014h	; 9639  ................
	defb 012h,013h,014h,016h,015h,017h,018h,019h,01ah,01bh,01ch,01dh,01bh,01eh,01dh,022h	; 9649  ..............."
	defb 01fh,020h,022h,01fh,021h,008h	; 9659

; ----------------------------------------------------------------------
; DATOS sin identificar  0x965f..0x9660  (1 bytes)
DATA_965F:
	defb 009h	; 965f

; ======================================================================
; CODIGO 0x9660..0x96a5  (69 bytes)
; ======================================================================


L_9660:
	ld hl,0e608h		;9660   ; una opcion menos (0xE608) y el marcador
	dec (hl)			;9663   ; una menos
	call L_966E		;9664   ; la casilla de 0xE43A: de llena a 1, si no a 0
	call L_957D		;9667   ; las 8 casillas en 0x3AC2, de dos caracteres
	call L_95B6		;966a
	ret			;966d
L_966E:
	ld hl,0e43ah		;966e   ; la casilla de 0xE43A: de llena a 1, si no a 0
	ld a,(hl)			;9671
	cp 0ffh		;9672
	ld a,001h		;9674   ; al maximo: vuelve a 1
	jr z,L_9679		;9676
	xor a			;9678
L_9679:
	ld (hl),a			;9679
	ret			;967a
L_967B:
	xor a			;967b   ; 0xE43B a cero y el marcador
	ld (0e43bh),a		;967c   ; guarda el nivel de la casilla 8 (0xFF al maximo)
	call L_957D		;967f   ; las 8 casillas en 0x3AC2, de dos caracteres
	call L_95B6		;9682
	ret			;9685
L_9686:
	ld a,(0e405h)		;9686   ; los disparos de la nave contra el decorado: el fondo en C
	ld c,a			;9689   ; en C
	ld iy,0e680h		;968a   ; apunta a los disparos de la nave (9 de 0x20)
	ld b,009h		;968e   ; los 9
L_9690:
	push bc			;9690
	call L_969D		;9691   ; por su tipo (tabla de detras)
	ld bc,00020h		;9694
	add iy,bc		;9697
	pop bc			;9699
	djnz L_9690		;969a
	ret			;969c
L_969D:
	ld a,(iy+000h)		;969d   ; por su tipo (tabla de detras)
	dec a			;96a0   ; tipo 0: nada
	ret m			;96a1
	call 04093h		;96a2   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_96A5: 24 destinos del despachador p00:4093 (call en p04:96A2, el
;   indice en A): 96D5, 96F0, 96D5, 96D5, 9722, 9722, 970D, 9722, 9793, 9793,
;   9722, 970D, 976E, 976E, 98B1, 982B, 982B, 982B, 982B, 982B, 982B, 982B,
;   982B, 982A; lo leen p04:96A2 (48 bytes)
;   0x96a5..0x96d5  (48 bytes)
DATA_tabla_96A5:
	defw 096d5h,096f0h,096d5h,096d5h,09722h,09722h,0970dh,09722h	; 96a5
	defw 09793h,09793h,09722h,0970dh,0976eh,0976eh,098b1h,0982bh	; 96b5
	defw 0982bh,0982bh,0982bh,0982bh,0982bh,0982bh,0982bh,0982ah	; 96c5

; ======================================================================
; CODIGO 0x96d5..0x9903  (558 bytes)
; ======================================================================


L_96D5:
	ld a,(iy+005h)		;96d5   ; el doble: mira 8 a la izquierda y en su sitio
	sub 008h		;96d8   ; 8 a la izquierda...
	ld h,a			;96da
	ld l,(iy+003h)		;96db   ; lee la y del disparo
	call L_96FA		;96de   ; ...si toca, se acaba
	ld a,(iy+000h)		;96e1   ; lee el tipo del disparo (0: libre)
	or a			;96e4   ; acabado: nada mas
	ret z			;96e5
	ld h,(iy+005h)		;96e6   ; y en su sitio
	ld l,(iy+003h)		;96e9   ; lee la y del disparo
	call L_96FA		;96ec
	ret			;96ef
L_96F0:
	ld h,(iy+005h)		;96f0   ; el sencillo: en su sitio
	ld l,(iy+003h)		;96f3   ; lee la y del disparo
	call L_96FA		;96f6
	ret			;96f9
L_96FA:
	call L_98AB		;96fa   ; si toca decorado (p04:98AB)...
	ret nc			;96fd
	ld (iy+000h),000h		;96fe   ; ...se acaba, y con jefe le hace dano (p04:999D); si no, rompe el decorado (p04:993D)
	ld a,(0e440h)		;9702   ; lee el jefe en curso (0: ninguno)
	or a			;9705
	jp nz,L_999D		;9706
	call L_993D		;9709   ; el decorado que se rompe: en la fase 2 y en la 8
	ret			;970c
L_970D:
	call L_9722		;970d   ; el laser: su largo contra el decorado, desde su punta
	ld a,(iy+000h)		;9710   ; lee el tipo del disparo (0: libre)
	or a			;9713
	ret z			;9714
	ld h,(iy+005h)		;9715   ; y desde su punta (y + 8)
	ld a,(iy+003h)		;9718   ; lee la y del disparo
	add a,008h		;971b
	ld l,a			;971d
	call L_9728		;971e   ; cada caracter del laser: decorado?
	ret			;9721
L_9722:
	ld h,(iy+005h)		;9722   ; lee la x del disparo
	ld l,(iy+003h)		;9725   ; lee la y del disparo
L_9728:
	call 04a46h		;9728   ; cada caracter del laser: decorado?
	ld a,(iy+00ah)		;972b   ; su largo
	or a			;972e
	ret z			;972f
	ld b,a			;9730   ; caracter a caracter
L_9731:
	call L_976A		;9731   ; el caracter de HL es decorado (>= C)? C
	jr nc,L_9741		;9734   ; decorado: p04:9745 (o lo rompe)
	ld a,(0e440h)		;9736   ; rompible: lo rompe y sigue
	or a			;9739
	jr nz,L_9745		;973a
	call L_993D		;973c   ; el decorado que se rompe: en la fase 2 y en la 8
	jr nc,L_9745		;973f
L_9741:
	inc hl			;9741   ; el siguiente
	djnz L_9731		;9742
	ret			;9744
L_9745:
	ld a,(0e440h)		;9745   ; con jefe, le hace dano
	or a			;9748
	call nz,L_999D		;9749   ; el jefe tocado: el sonido 0x28 (una vez por cuadro, 0xE409), salvo con el bit 7 de 0xEC12
	ld a,(iy+00ah)		;974c   ; el laser se recorta donde toca
	inc b			;974f   ; el largo hasta donde toca...
	sub b			;9750
	ld (iy+00ah),a		;9751
	jp c,L_99B0		;9754   ; ...a 0, se acaba
	jp z,L_99B0		;9757
	ld a,(iy+000h)		;975a   ; y pasa a menguar (paso 1 o 2)
	sub 00bh		;975d   ; 0x0B-0x0C al paso 1, los demas al 2
	cp 002h		;975f
	ld a,001h		;9761
	jr c,L_9766		;9763
	inc a			;9765
L_9766:
	ld (iy+001h),a		;9766
	ret			;9769
L_976A:
	ld a,(hl)			;976a   ; el caracter de HL es decorado (>= C)? C
	cp c			;976b
	ccf			;976c
	ret			;976d
L_976E:
	ld h,(iy+005h)		;976e   ; el laser hacia atras igual
	ld l,(iy+003h)		;9771   ; lee la y del disparo
	call 04a46h		;9774   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld a,(iy+00ah)		;9777
	or a			;977a
	ret z			;977b
	ld b,a			;977c   ; caracter a caracter
L_977D:
	call L_976A		;977d   ; el caracter de HL es decorado (>= C)? C
	jr nc,L_978F		;9780
	ld a,(0e440h)		;9782   ; lee el jefe en curso (0: ninguno)
	or a			;9785
	jp nz,L_99B0		;9786   ; con jefe, se acaba
	call L_993D		;9789   ; el decorado que se rompe: en la fase 2 y en la 8
	jp nc,L_99B0		;978c   ; lo que no rompe lo acaba
L_978F:
	inc hl			;978f   ; el siguiente
	djnz L_977D		;9790
	ret			;9792
L_9793:
	ld a,(iy+010h)		;9793   ; el rayo vertical: hacia abajo, cada fila de su largo
	or a			;9796   ; parado: nada
	ret nz			;9797
	ld h,(iy+005h)		;9798   ; lee la x del disparo
	ld l,(iy+003h)		;979b   ; lee la y del disparo
	call 04a46h		;979e   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld (0ef80h),hl		;97a1   ; su sitio, en 0xEF80
	ld a,(iy+00ah)		;97a4   ; sin largo, la caja
	or a			;97a7
	jr z,L_9814		;97a8
	ld b,a			;97aa
	exx			;97ab   ; C' cuenta lo que rompe
	ld c,000h		;97ac
	exx			;97ae
L_97AF:
	call L_976A		;97af   ; el caracter de HL es decorado (>= C)? C
	jr nc,L_97C4		;97b2
	ld a,(0e440h)		;97b4   ; lee el jefe en curso (0: ninguno)
	or a			;97b7
	jp nz,L_981E		;97b8   ; con jefe, dano
	call L_993D		;97bb   ; el decorado que se rompe: en la fase 2 y en la 8
	jp nc,L_9821		;97be   ; lo que no rompe lo para
	exx			;97c1
	inc c			;97c2
	exx			;97c3
L_97C4:
	ld a,040h		;97c4   ; la fila de abajo
	call 04089h		;97c6   ; suma_a_hl: HL = HL + A
	djnz L_97AF		;97c9
	ld a,(iy+000h)		;97cb   ; el tipo 0x0A se para en el primer decorado que no rompe
	cp 00ah		;97ce
	jr nz,L_97D9		;97d0
	exx			;97d2
	ld a,c			;97d3
	exx			;97d4
	or a			;97d5
	jp nz,L_99B0		;97d6
L_97D9:
	ld a,(0e420h)		;97d9   ; con scroll, la columna de al lado tambien
	or a			;97dc
	jr z,L_9814		;97dd
	ld hl,(0ef80h)		;97df   ; desde una columna antes
	dec hl			;97e2
	ld b,(iy+00ah)		;97e3
	exx			;97e6
	ld c,000h		;97e7
	exx			;97e9
L_97EA:
	call L_976A		;97ea   ; el caracter de HL es decorado (>= C)? C
	jr nc,L_97FF		;97ed
	ld a,(0e440h)		;97ef   ; lee el jefe en curso (0: ninguno)
	or a			;97f2
	jp nz,L_981E		;97f3
	call L_993D		;97f6   ; el decorado que se rompe: en la fase 2 y en la 8
	jp nc,L_9821		;97f9
	exx			;97fc
	inc c			;97fd
	exx			;97fe
L_97FF:
	ld a,040h		;97ff   ; la fila de abajo
	call 04089h		;9801   ; suma_a_hl: HL = HL + A
	djnz L_97EA		;9804
	ld a,(iy+000h)		;9806   ; lee el tipo del disparo (0: libre)
	cp 00ah		;9809
	jr nz,L_9814		;980b
	exx			;980d
	ld a,c			;980e
	exx			;980f
	or a			;9810
	jp nz,L_99B0		;9811
L_9814:
	ld a,(iy+00ah)		;9814   ; la caja segun el largo
	add a,a			;9817
	add a,a			;9818
	add a,a			;9819
	ld (iy+00dh),a		;981a   ; guarda el alto del disparo para los choques
	ret			;981d
L_981E:
	call L_999D		;981e   ; con jefe, dano; y el rayo se queda 4 cuadros (IY+10/11)
L_9821:
	ld (iy+010h),001h		;9821   ; parado (IY+10 = 1) 4 cuadros
	ld (iy+011h),004h		;9825   ; la vida del disparo = 0x04
	ret			;9829
L_982A:
	ret			;982a
L_982B:
	ld a,(0e440h)		;982b   ; lo que rompen los disparos: con jefe aparte; en la fase 1 y la 7...
	or a			;982e   ; con jefe: p04:986B
	jp nz,L_986B		;982f
	ld a,(0e361h)		;9832   ; ...la fase 1 (el sol: p04:9864) y la 7 (los caracteres 0xE0-0xE2)
	dec a			;9835
	jr z,L_9864		;9836
	cp 006h		;9838
	jr z,L_983D		;983a
	ret			;983c
L_983D:
	ld a,(iy+009h)		;983d   ; IY+9 a 0: el de abajo (y + 8)...
	or a			;9840
	jr nz,L_984D		;9841
	ld h,(iy+005h)		;9843   ; lee la x del disparo
	ld a,(iy+003h)		;9846   ; lee la y del disparo
	add a,008h		;9849
	jr L_9857		;984b
L_984D:
	ld h,(iy+005h)		;984d   ; ...si no, el de arriba (y - 8)
	ld a,(iy+003h)		;9850   ; lee la y del disparo
	sub 008h		;9853
	ccf			;9855
	ret nc			;9856
L_9857:
	ld l,a			;9857
	call 04a46h		;9858   ; los caracteres 0xE0-0xE2 lo paran
	ld a,(hl)			;985b
	sub 0e0h		;985c
	cp 003h		;985e
	ret nc			;9860
	jp L_98A5		;9861
L_9864:
	call L_9881		;9864   ; lo que toca: se acaba y el sonido 0x2F
	ret nc			;9867
	jp 058ddh		;9868   ; sonido_2F: pide el sonido 0x2F
L_986B:
	ld a,(0e440h)		;986b   ; con los jefes 0x0F y 0x10, el disparo le hace dano
	or a			;986e
	ret z			;986f
	sub 00dh		;9870   ; los jefes 0x0F y 0x10
	cp 002h		;9872
	ret c			;9874
	cp 003h		;9875
	ret nc			;9877
	call L_9881		;9878   ; el caracter delante del disparo (segun su sentido, IY+9)
	ret nc			;987b
	call L_999D		;987c   ; el jefe tocado: el sonido 0x28 (una vez por cuadro, 0xE409), salvo con el bit 7 de 0xEC12
	scf			;987f
	ret			;9880
L_9881:
	ld a,(iy+009h)		;9881   ; el caracter delante del disparo (segun su sentido, IY+9)
	or a			;9884
	jr nz,L_9896		;9885
	ld h,(iy+005h)		;9887   ; hacia abajo: y + 8
	ld a,(iy+003h)		;988a   ; lee la y del disparo
	add a,008h		;988d
	ld l,a			;988f
	call L_98AB		;9890   ; el caracter de HL es decorado? (>= C: C)
	ret nc			;9893
	jr L_98A5		;9894
L_9896:
	ld h,(iy+005h)		;9896   ; hacia arriba: y - 8
	ld a,(iy+003h)		;9899   ; lee la y del disparo
	sub 008h		;989c
	ld l,a			;989e
	ccf			;989f
	ret nc			;98a0
	call L_98AB		;98a1   ; el caracter de HL es decorado? (>= C: C)
	ret nc			;98a4
L_98A5:
	ld (iy+000h),000h		;98a5   ; el disparo se acaba (C)
	scf			;98a9
	ret			;98aa
L_98AB:
	call 04a46h		;98ab   ; el caracter de HL es decorado? (>= C: C)
	ld a,(hl)			;98ae
	cp c			;98af
	ccf			;98b0
L_98B1:
	ret			;98b1
L_98B2:
	ld a,(0e440h)		;98b2   ; los jefes 1-4 y 0x0F: la nave contra sus caracteres...
	cp 00fh		;98b5
	jr z,L_98BD		;98b7
	dec a			;98b9
	cp 004h		;98ba
	ret nc			;98bc
L_98BD:
	ld a,(0e604h)		;98bd   ; bajo la nave (+8 en y)
	add a,008h		;98c0
	ld l,a			;98c2
	ld a,(0e606h)		;98c3   ; lee la x de la nave
	ld h,a			;98c6
	and 007h		;98c7   ; entre dos columnas, tambien la de al lado
	cp 004h		;98c9
	push af			;98cb
	call 04a46h		;98cc   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	pop af			;98cf
	jr nc,L_98D8		;98d0
	call L_98E0		;98d2   ; los caracteres que matan de cada jefe (de 0x9903-0x990A)
	jp c,047c5h		;98d5   ; ...la toca: estalla (p00:47C5)
L_98D8:
	inc hl			;98d8
	call L_98E0		;98d9   ; los caracteres que matan de cada jefe (de 0x9903-0x990A)
	ret nc			;98dc
	jp 047c5h		;98dd
L_98E0:
	ld a,(0e440h)		;98e0   ; los caracteres que matan de cada jefe (de 0x9903-0x990A)
	cp 004h		;98e3   ; el 4, el 0x0F y los demas: su rango de caracteres (desde E, D caracteres)
	ld de,(09905h)		;98e5
	jr z,L_98FF		;98e9
	cp 00fh		;98eb
	ld de,(09903h)		;98ed
	jr nz,L_98FF		;98f1
	ld de,(09907h)		;98f3
	call L_98FF		;98f7   ; dentro del rango? C
	ret c			;98fa
	ld de,(09909h)		;98fb
L_98FF:
	ld a,(hl)			;98ff   ; dentro del rango? C
	sub e			;9900
	cp d			;9901
	ret			;9902

; ----------------------------------------------------------------------
; DATOS leido_9903: 2 bytes que lee p04:98ED al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:98ED (2 bytes)
;   0x9903..0x9905  (2 bytes)
DATA_leido_9903:
	defb 07bh,015h	; 9903

; ----------------------------------------------------------------------
; DATOS leido_9905: 2 bytes que lee p04:98E5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:98E5 (2 bytes)
;   0x9905..0x9907  (2 bytes)
DATA_leido_9905:
	defb 0f0h,004h	; 9905

; ----------------------------------------------------------------------
; DATOS leido_9907: 2 bytes que lee p04:98F3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:98F3 (2 bytes)
;   0x9907..0x9909  (2 bytes)
DATA_leido_9907:
	defb 0e0h,002h	; 9907

; ----------------------------------------------------------------------
; DATOS leido_9909: 2 bytes que lee p04:98FB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:98FB (2 bytes)
;   0x9909..0x990b  (2 bytes)
DATA_leido_9909:
	defb 0eeh,002h	; 9909

; ======================================================================
; CODIGO 0x990b..0x9a5c  (337 bytes)
; ======================================================================


L_990B:
	ld a,(0e600h)		;990b   ; la nave contra el decorado (si vive)
	dec a			;990e
	ret m			;990f
	ld a,(0e405h)		;9910   ; el fondo, en C
	ld c,a			;9913
	call L_991B		;9914   ; el caracter bajo la nave (y el de al lado si va entre dos columnas)
	ret nc			;9917
	jp 047c5h		;9918   ; lo toca: estalla
L_991B:
	ld a,(0e604h)		;991b   ; el caracter bajo la nave (y el de al lado si va entre dos columnas)
	add a,008h		;991e
	ld l,a			;9920
	ld a,(0e606h)		;9921   ; la x
	ld h,a			;9924
	and 007h		;9925   ; entre dos columnas, tambien la de al lado
	cp 004h		;9927
	push af			;9929
	call 04a46h		;992a   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
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
	ld a,(0e361h)		;993d   ; el decorado que se rompe: en la fase 2 y en la 8
	cp 002h		;9940
	jr z,L_994A		;9942
	cp 008h		;9944
	jr z,L_9967		;9946
	xor a			;9948
	ret			;9949
L_994A:
	exx			;994a   ; fase 2: segun el scroll, los caracteres 0xFE-0xFF con el sonido 0x23 o 0x24
	ld hl,(0e363h)		;994b   ; antes del scroll 0x120 el sonido 0x23, despues el 0x24
	ld de,00120h		;994e
	rst 20h			;9951
	exx			;9952
	jr nc,L_995E		;9953
	exx			;9955
	ld b,023h		;9956
	exx			;9958
	ld de,0fe02h		;9959   ; los caracteres 0xFE-0xFF
	jr L_9982		;995c
L_995E:
	exx			;995e
	ld b,024h		;995f
	exx			;9961
	ld de,0fe02h		;9962
	jr L_9982		;9965
L_9967:
	exx			;9967   ; fase 8: los 0x1A-0x7F (sonido 0x25) o 0x04-0xBF (0x23)
	ld hl,(0e363h)		;9968   ; lee la posicion del scroll (16 bits)
	ld de,00130h		;996b   ; antes de 0x130: los 0x1A-0x7F con el sonido 0x25...
	rst 20h			;996e
	exx			;996f
	jr nc,L_997B		;9970
	exx			;9972
	ld b,025h		;9973
	exx			;9975
	ld de,0661ah		;9976
	jr L_9982		;9979
L_997B:
	exx			;997b   ; ...despues los 0x04-0xBF con el 0x23
	ld b,023h		;997c
	exx			;997e
	ld de,0bc04h		;997f
L_9982:
	ld a,(hl)			;9982   ; en el rango: se borra y suena (una vez por cuadro, 0xE408)
	sub d			;9983
	cp e			;9984
	ret nc			;9985
	ld (hl),000h		;9986   ; se borra
	call L_998D		;9988
	scf			;998b
	ret			;998c
L_998D:
	ld a,(0e408h)		;998d
	or a			;9990
	ret nz			;9991
	inc a			;9992   ; una vez por cuadro
	ld (0e408h),a		;9993
	exx			;9996
	ld a,b			;9997
	exx			;9998
	call 0589ah		;9999   ; pide_sonido: pide al motor (p10:6003) el sonido A
	ret			;999c
L_999D:
	ld a,(0e409h)		;999d   ; el jefe tocado: el sonido 0x28 (una vez por cuadro, 0xE409), salvo con el bit 7 de 0xEC12
	or a			;99a0
	ret nz			;99a1
	inc a			;99a2
	ld (0e409h),a		;99a3
	ld a,(0ec12h)		;99a6   ; con el jefe vencido (0xEC12 negativo), nada
	rla			;99a9
	ret c			;99aa
	call 05890h		;99ab   ; sonido_28: pide el sonido 0x28
	scf			;99ae
	ret			;99af
L_99B0:
	ld (iy+000h),000h		;99b0   ; el disparo se acaba
	ret			;99b4
L_99B5:
	call L_99BC		;99b5   ; los sprites de la nave y sus opciones a 0xEF00
	call L_99F5		;99b8   ; las dos opciones a 0xEF08
	ret			;99bb
L_99BC:
	ld de,0ef00h		;99bc   ; la nave: con escudo o sin el, sus dos sprites (0xE618)
	ld a,(0e600h)		;99bf   ; lee el estado de la nave (1 normal, 2 y 3 con escudo, 0xFF estalla)
	or a			;99c2
	jr z,L_99E0		;99c3
	jp m,L_99E8		;99c5
	ld hl,0e618h		;99c8   ; los dos de la nave
	call L_99CF		;99cb   ; dos sprites (8 bytes)
	ret			;99ce
L_99CF:
	ldi		;99cf   ; dos sprites (8 bytes)
	ldi		;99d1
	ldi		;99d3
	ldi		;99d5
	ldi		;99d7
	ldi		;99d9
	ldi		;99db
	ldi		;99dd
	ret			;99df
L_99E0:
	ld b,004h		;99e0   ; sin nave, 4 fuera
L_99E2:
	call L_9A8E		;99e2   ; fuera (0xE0)
	djnz L_99E2		;99e5
	ret			;99e7
L_99E8:
	ld hl,0e618h		;99e8   ; estallando: los de 0xE618 y 0xE628
	call L_99CF		;99eb   ; dos sprites (8 bytes)
	ld hl,0e628h		;99ee
	call L_99CF		;99f1   ; dos sprites (8 bytes)
	ret			;99f4
L_99F5:
	ld a,(0e600h)		;99f5   ; las dos opciones a 0xEF08
	or a			;99f8
	ret z			;99f9
	inc a			;99fa
	ret z			;99fb
	ld de,0ef08h		;99fc
	ld hl,0e610h		;99ff   ; la primera...
	call L_9A0C		;9a02   ; la opcion: y, x, dibujo y color
	ld hl,0e620h		;9a05   ; ...y la segunda
	call L_9A0C		;9a08   ; la opcion: y, x, dibujo y color
	ret			;9a0b
L_9A0C:
	ld a,(hl)			;9a0c   ; la opcion: y, x, dibujo y color
	or a			;9a0d
	jr z,$+128		;9a0e   ; sin ella, nada
	ld a,l			;9a10   ; su y (IX+4)...
	add a,004h		;9a11
	ld l,a			;9a13
	ldi		;9a14
	inc l			;9a16
	ldi		;9a17   ; ...su x (IX+6)...
	ld a,l			;9a19
	sub 005h		;9a1a
	ld l,a			;9a1c
	ldi		;9a1d   ; ...su dibujo y su color (IX+2, IX+3)
	ldi		;9a1f
	ret			;9a21
L_9A22:
	call L_9A5F		;9a22   ; los disparos de las opciones y el rayo grande a 0xEF10
	call L_9A29		;9a25   ; el rayo grande (0xE5E0): su sprite bajo la nave, con 3 dibujos de 0x9A5C cada 4 cuadros
	ret			;9a28
L_9A29:
	ld a,(0e5e0h)		;9a29   ; el rayo grande (0xE5E0): su sprite bajo la nave, con 3 dibujos de 0x9A5C cada 4 cuadros
	or a			;9a2c
	ret z			;9a2d
	ld de,0ef10h		;9a2e
	ld a,(0e604h)		;9a31   ; en la y de la nave...
	ld (de),a			;9a34
	inc de			;9a35
	ld a,(0e606h)		;9a36   ; ...y su x + 0x10
	add a,010h		;9a39
	ld (de),a			;9a3b
	inc de			;9a3c
	ld hl,0e64bh		;9a3d
	ld a,(0e303h)		;9a40   ; cada 4 cuadros el dibujo siguiente (0xE64B, de 0 a 2)
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
	ld hl,09a5ch		;9a50   ; de la tabla de 0x9A5C
	call 04a6eh		;9a53   ; lee_byte: A = el byte A de la tabla HL
	ld (de),a			;9a56
	inc de			;9a57
	ld a,00fh		;9a58   ; el color 0x0F
	ld (de),a			;9a5a
	ret			;9a5b

; ----------------------------------------------------------------------
; DATOS tabla_9A5C: tabla que se lee desde HL = 0x9A5C con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p04:9A50 (3 bytes)
;   0x9a5c..0x9a5f  (3 bytes)
DATA_tabla_9A5C:
	defb 024h,028h,02ch	; 9a5c

; ======================================================================
; CODIGO 0x9a5f..0x9ad2  (115 bytes)
; ======================================================================


L_9A5F:
	ld de,0ef10h		;9a5f   ; los disparos de 0xE6A0 de cada opcion, dos por cada una
	ld hl,0e6a0h		;9a62
	exx			;9a65
	ld b,003h		;9a66   ; tres veces...
L_9A68:
	exx			;9a68
	push hl			;9a69
	call L_9A7F		;9a6a   ; los tipos 3-4 y 0x0F-0x17 son sprites; los demas, fuera
	pop hl			;9a6d
	ld bc,00020h		;9a6e   ; ...el segundo, 0x20 mas alla...
	add hl,bc			;9a71
	push hl			;9a72
	call L_9A7F		;9a73   ; los tipos 3-4 y 0x0F-0x17 son sprites; los demas, fuera
	pop hl			;9a76
	ld bc,00040h		;9a77   ; ...y la opcion siguiente, 0x40 mas alla
	add hl,bc			;9a7a
	exx			;9a7b
	djnz L_9A68		;9a7c
	ret			;9a7e
L_9A7F:
	ld a,(hl)			;9a7f   ; los tipos 3-4 y 0x0F-0x17 son sprites; los demas, fuera
	sub 003h		;9a80
	cp 002h		;9a82
	jr c,L_9A96		;9a84
	sub 00ch		;9a86
	jr z,L_9AA3		;9a88
	cp 009h		;9a8a
	jr c,L_9A96		;9a8c
L_9A8E:
	ld a,0e0h		;9a8e   ; fuera (0xE0)
	ld (de),a			;9a90
	inc e			;9a91
	inc e			;9a92
	inc e			;9a93
	inc e			;9a94
	ret			;9a95
L_9A96:
	inc l			;9a96   ; la y (+3) y la x (+5), el dibujo y el color
	inc l			;9a97
	inc l			;9a98
	ldi		;9a99
	inc l			;9a9b
	ldi		;9a9c
	ldi		;9a9e
	ldi		;9aa0
	ret			;9aa2
L_9AA3:
	ld a,l			;9aa3   ; el 0x0F: desde +8 y +9, y +4 y +5
	add a,008h		;9aa4
	ld l,a			;9aa6
	ldi		;9aa7   ; 2 bytes desde +8...
	ldi		;9aa9
	ld a,l			;9aab
	sub 004h		;9aac
	ld l,a			;9aae
	ldi		;9aaf   ; ...y 2 desde +4
	ldi		;9ab1
	ret			;9ab3
L_9AB4:
	ld ix,0e680h		;9ab4   ; los disparos de caracteres en el bufer de 0xCE00
	ld de,0ce00h		;9ab8
	ld b,009h		;9abb   ; los 9
L_9ABD:
	push bc			;9abd
	call L_9ACA		;9abe   ; por su tipo (tabla de detras)
	ld bc,00020h		;9ac1
	add ix,bc		;9ac4
	pop bc			;9ac6
	djnz L_9ABD		;9ac7
	ret			;9ac9
L_9ACA:
	ld a,(ix+000h)		;9aca   ; por su tipo (tabla de detras)
	dec a			;9acd
	ret m			;9ace
	call 04093h		;9acf   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_9AD2: 24 destinos del despachador p00:4093 (call en p04:9ACF, el
;   indice en A): 9B02, 9B02, 9B44, 9B44, 9B08, 9B08, 9B16, 9B08, 9B33, 9B33,
;   9B08, 9B16, 9B08, 9B08, 9B44, 9B44, 9B44, 9B44, 9B44, 9B44, 9B44, 9B44,
;   9B44, 9B44; lo leen p04:9ACF (48 bytes)
;   0x9ad2..0x9b02  (48 bytes)
DATA_tabla_9AD2:
	defw 09b02h,09b02h,09b44h,09b44h,09b08h,09b08h,09b16h,09b08h	; 9ad2
	defw 09b33h,09b33h,09b08h,09b16h,09b08h,09b08h,09b44h,09b44h	; 9ae2
	defw 09b44h,09b44h,09b44h,09b44h,09b44h,09b44h,09b44h,09b44h	; 9af2

; ======================================================================
; CODIGO 0x9b02..0x9b73  (113 bytes)
; ======================================================================


L_9B02:
	call L_9B45		;9b02   ; guarda en 0xCE00 el caracter del bufer donde va el disparo
	ldi		;9b05   ; un caracter
	ret			;9b07
L_9B08:
	call L_9B45		;9b08   ; los de su largo (en horizontal)
	ld a,(ix+00ah)		;9b0b   ; su largo
	or a			;9b0e
	ret z			;9b0f
	ld c,a			;9b10
	ld b,000h		;9b11
	ldir		;9b13
	ret			;9b15
L_9B16:
	call L_9B45		;9b16   ; dos filas de su largo
	ld (0ef80h),hl		;9b19   ; la primera fila...
	ld a,(ix+00ah)		;9b1c
	or a			;9b1f
	ret z			;9b20
	ld c,a			;9b21
	ld b,000h		;9b22
	ldir		;9b24
	ld hl,(0ef80h)		;9b26   ; ...y la de abajo (0x40)
	ld bc,00040h		;9b29
	add hl,bc			;9b2c
	ld c,(ix+00ah)		;9b2d
	ldir		;9b30
	ret			;9b32
L_9B33:
	call L_9B45		;9b33   ; en vertical, una columna de su largo
	ld a,(ix+00ah)		;9b36
	or a			;9b39
	ret z			;9b3a
L_9B3B:
	ldi		;9b3b   ; uno por fila
	ld bc,0003fh		;9b3d
	add hl,bc			;9b40
	dec a			;9b41
	jr nz,L_9B3B		;9b42
L_9B44:
	ret			;9b44
L_9B45:
	ld l,(ix+003h)		;9b45   ; su y...
	ld h,(ix+005h)		;9b48   ; ...y su x
	call 04a46h		;9b4b   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld (ix+00eh),l		;9b4e   ; su sitio en IX+0E/0F
	ld (ix+00fh),h		;9b51
	ret			;9b54
L_9B55:
	ld ix,0e680h		;9b55   ; devuelve al bufer lo guardado en 0xCE00 (el decorado de debajo)
	ld de,0ce00h		;9b59   ; desde 0xCE00
	ld b,009h		;9b5c   ; los 9
L_9B5E:
	push bc			;9b5e
	call L_9B6B		;9b5f   ; por su tipo (tabla de detras)
	ld bc,00020h		;9b62
	add ix,bc		;9b65
	pop bc			;9b67
	djnz L_9B5E		;9b68
	ret			;9b6a
L_9B6B:
	ld a,(ix+000h)		;9b6b   ; por su tipo (tabla de detras)
	dec a			;9b6e
	ret m			;9b6f
	call 04093h		;9b70   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_9B73: 24 destinos del despachador p00:4093 (call en p04:9B70, el
;   indice en A): 9BA3, 9BA3, 9B44, 9B44, 9BAE, 9BAE, 9BC1, 9BAE, 9BE1, 9BE1,
;   9BAE, 9BC1, 9BAE, 9BAE, 9B44, 9B44, 9B44, 9B44, 9B44, 9B44, 9B44, 9B44,
;   9B44, 9BFA; lo leen p04:9B70 (48 bytes)
;   0x9b73..0x9ba3  (48 bytes)
DATA_tabla_9B73:
	defw 09ba3h,09ba3h,09b44h,09b44h,09baeh,09baeh,09bc1h,09baeh	; 9b73
	defw 09be1h,09be1h,09baeh,09bc1h,09baeh,09baeh,09b44h,09b44h	; 9b83
	defw 09b44h,09b44h,09b44h,09b44h,09b44h,09b44h,09b44h,09bfah	; 9b93

; ======================================================================
; CODIGO 0x9ba3..0x9c35  (146 bytes)
; ======================================================================


L_9BA3:
	ex de,hl			;9ba3   ; un caracter
	ld e,(ix+00eh)		;9ba4   ; a su sitio
	ld d,(ix+00fh)		;9ba7
	ldi		;9baa
	ex de,hl			;9bac
	ret			;9bad
L_9BAE:
	ld a,(ix+00ah)		;9bae   ; una fila de su largo
	or a			;9bb1
	ret z			;9bb2
	ld c,a			;9bb3
	ld b,000h		;9bb4
	ex de,hl			;9bb6
	ld e,(ix+00eh)		;9bb7   ; a su sitio
	ld d,(ix+00fh)		;9bba
	ldir		;9bbd
	ex de,hl			;9bbf
	ret			;9bc0
L_9BC1:
	ld a,(ix+00ah)		;9bc1   ; dos filas
	or a			;9bc4
	ret z			;9bc5
	ld c,a			;9bc6
	ld b,000h		;9bc7
	ex de,hl			;9bc9
	ld e,(ix+00eh)		;9bca   ; desde su sitio...
	ld d,(ix+00fh)		;9bcd
	push de			;9bd0
	ldir		;9bd1
	ex de,hl			;9bd3
	pop hl			;9bd4
	ld bc,00040h		;9bd5   ; ...y la fila de abajo
	add hl,bc			;9bd8
	ld c,(ix+00ah)		;9bd9
	ex de,hl			;9bdc
	ldir		;9bdd
	ex de,hl			;9bdf
	ret			;9be0
L_9BE1:
	ld a,(ix+00ah)		;9be1   ; una columna
	or a			;9be4
	ret z			;9be5
	ex de,hl			;9be6
	ld e,(ix+00eh)		;9be7
	ld d,(ix+00fh)		;9bea
L_9BED:
	ldi		;9bed   ; uno por fila (0x40)
	ex de,hl			;9bef
	ld bc,0003fh		;9bf0
	add hl,bc			;9bf3
	ex de,hl			;9bf4
	dec a			;9bf5
	jr nz,L_9BED		;9bf6
	ex de,hl			;9bf8
	ret			;9bf9
L_9BFA:
	ld a,(ix+00ah)		;9bfa   ; borra un rectangulo de IX+0A x IX+10
	or a			;9bfd
	ret z			;9bfe
	ld l,(ix+00eh)		;9bff   ; desde su sitio, IX+10 filas de IX+0A
	ld h,(ix+00fh)		;9c02
	ld c,(ix+010h)		;9c05
	ld de,00040h		;9c08
	xor a			;9c0b
L_9C0C:
	push hl			;9c0c
	ld b,(ix+00ah)		;9c0d
L_9C10:
	ld (hl),a			;9c10   ; la fila a cero
	inc l			;9c11
	djnz L_9C10		;9c12
	pop hl			;9c14
	add hl,de			;9c15   ; la fila siguiente (0x40)
	dec c			;9c16   ; IX+10 filas
	jr nz,L_9C0C		;9c17
	ret			;9c19
L_9C1A:
	ld ix,0e680h		;9c1a   ; pinta los disparos de caracteres en el bufer
	ld b,009h		;9c1e   ; los 9
L_9C20:
	push bc			;9c20
	call L_9C2D		;9c21   ; por su tipo (tabla de detras)
	ld bc,00020h		;9c24
	add ix,bc		;9c27
	pop bc			;9c29
	djnz L_9C20		;9c2a
	ret			;9c2c
L_9C2D:
	ld a,(ix+000h)		;9c2d   ; por su tipo (tabla de detras)
	dec a			;9c30
	ret m			;9c31
	call 04093h		;9c32   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_9C35: 24 destinos del despachador p00:4093 (call en p04:9C32, el
;   indice en A): 9C65, 9C65, 9B44, 9B44, 9C70, 9C70, 9C84, 9C70, 9CFB, 9CC4,
;   9C70, 9CA5, 9C70, 9C70, 9B44, 9B44, 9B44, 9B44, 9B44, 9B44, 9B44, 9B44,
;   9B44, 9D16; lo leen p04:9C32 (48 bytes)
;   0x9c35..0x9c65  (48 bytes)
DATA_tabla_9C35:
	defw 09c65h,09c65h,09b44h,09b44h,09c70h,09c70h,09c84h,09c70h	; 9c35
	defw 09cfbh,09cc4h,09c70h,09ca5h,09c70h,09c70h,09b44h,09b44h	; 9c45
	defw 09b44h,09b44h,09b44h,09b44h,09b44h,09b44h,09b44h,09d16h	; 9c55

; ======================================================================
; CODIGO 0x9c65..0x9d9e  (313 bytes)
; ======================================================================


L_9C65:
	ld l,(ix+00eh)		;9c65   ; un caracter: el dibujo (IX+6)
	ld h,(ix+00fh)		;9c68   ; en su sitio del bufer
	ld a,(ix+006h)		;9c6b
	ld (hl),a			;9c6e
	ret			;9c6f
L_9C70:
	ld a,(ix+00ah)		;9c70   ; una fila del dibujo, de su largo
	or a			;9c73
	ret z			;9c74
	ld b,a			;9c75   ; IX+0A veces
	ld l,(ix+00eh)		;9c76
	ld h,(ix+00fh)		;9c79
	ld a,(ix+006h)		;9c7c
L_9C7F:
	ld (hl),a			;9c7f
	inc l			;9c80
	djnz L_9C7F		;9c81
	ret			;9c83
L_9C84:
	ld a,(ix+00ah)		;9c84   ; el laser de dos filas: los caracteres 0x0A y 0x0B
	or a			;9c87
	ret z			;9c88
	ld b,a			;9c89
	ld c,a			;9c8a
	ld l,(ix+00eh)		;9c8b   ; la fila de arriba con 0x0A...
	ld h,(ix+00fh)		;9c8e
	push hl			;9c91
	ld a,00ah		;9c92
L_9C94:
	ld (hl),a			;9c94
	inc l			;9c95
	djnz L_9C94		;9c96
	pop hl			;9c98
	ld de,00040h		;9c99   ; ...y la de abajo con 0x0B
	add hl,de			;9c9c
	ld b,c			;9c9d
	ld a,00bh		;9c9e
L_9CA0:
	ld (hl),a			;9ca0
	inc l			;9ca1
	djnz L_9CA0		;9ca2
	ret			;9ca4
L_9CA5:
	ld a,(ix+00ah)		;9ca5   ; el de 0x10 en dos filas
	or a			;9ca8
	ret z			;9ca9
	ld b,a			;9caa
	ld c,a			;9cab
	ld l,(ix+00eh)		;9cac   ; las dos filas con 0x10
	ld h,(ix+00fh)		;9caf
	push hl			;9cb2
	ld a,010h		;9cb3
L_9CB5:
	ld (hl),a			;9cb5   ; la primera fila con 0x10
	inc l			;9cb6
	djnz L_9CB5		;9cb7
	pop hl			;9cb9
	ld de,00040h		;9cba   ; la segunda (0x40 mas)
	add hl,de			;9cbd
	ld b,c			;9cbe
L_9CBF:
	ld (hl),a			;9cbf
	inc l			;9cc0
	djnz L_9CBF		;9cc1
	ret			;9cc3
L_9CC4:
	ld a,(ix+010h)		;9cc4   ; el rayo vertical: 0x0D arriba, 0x0E en medio y 0x0F abajo
	or a			;9cc7   ; parado: nada
	ret nz			;9cc8
	ld a,(ix+00ah)		;9cc9
	or a			;9ccc
	ret z			;9ccd
	cp 003h		;9cce   ; de 1 o 2: arriba y abajo
	jr nc,L_9CE1		;9cd0
	ld l,(ix+00eh)		;9cd2
	ld h,(ix+00fh)		;9cd5
	ld (hl),00dh		;9cd8
	ld de,00040h		;9cda
	add hl,de			;9cdd
	ld (hl),00fh		;9cde
	ret			;9ce0
L_9CE1:
	ld l,(ix+00eh)		;9ce1   ; mas largo: arriba, en medio...
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
	add hl,de			;9cf7   ; ...y abajo
	ld (hl),00fh		;9cf8
	ret			;9cfa
L_9CFB:
	ld a,(ix+010h)		;9cfb
	or a			;9cfe   ; parado: nada
	ret nz			;9cff
	ld a,(ix+00ah)		;9d00
	or a			;9d03
	ret z			;9d04
	ld b,a			;9d05   ; una columna del caracter 0x11
	ld l,(ix+00eh)		;9d06
	ld h,(ix+00fh)		;9d09
	ld a,011h		;9d0c
	ld de,00040h		;9d0e   ; una por fila
L_9D11:
	ld (hl),a			;9d11
	add hl,de			;9d12
	djnz L_9D11		;9d13
	ret			;9d15
L_9D16:
	ld a,(ix+00ah)		;9d16   ; un rectangulo del caracter 0x34 (IX+0A x IX+10)
	or a			;9d19
	ret z			;9d1a
	call L_9B45		;9d1b
	ld b,(ix+010h)		;9d1e   ; IX+10 filas de IX+0A
	ld a,034h		;9d21
	ld de,00040h		;9d23
L_9D26:
	push bc			;9d26
	push hl			;9d27
	ld b,(ix+00ah)		;9d28
L_9D2B:
	ld (hl),a			;9d2b   ; la fila con 0x34
	inc l			;9d2c
	djnz L_9D2B		;9d2d
	pop hl			;9d2f
	add hl,de			;9d30   ; la siguiente (0x40)
	pop bc			;9d31
	djnz L_9D26		;9d32   ; IX+10 filas
	ret			;9d34
L_9D35:
	call 041f7h		;9d35   ; la direccion de DE a HL con la tabla de p22:B906 (con el 22 puesto)
	call 041ach		;9d38   ; bancos_22: pone el 22 (y sus copias en 0xF0F1-3)
	call L_9D41		;9d3b
	jp 04213h		;9d3e   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_9D41:
	ld c,000h		;9d41   ; la distancia en x (H - D; bit 0 de C si es negativa)...
	ld a,h			;9d43
	sub d			;9d44
	jr nc,L_9D4B		;9d45
	neg		;9d47
	set 0,c		;9d49
L_9D4B:
	ld h,a			;9d4b
	ld a,l			;9d4c   ; ...y en y (L - E; bit 1)
	sub e			;9d4d
	jr nc,L_9D54		;9d4e
	neg		;9d50
	set 1,c		;9d52
L_9D54:
	ld l,a			;9d54
	rra			;9d55   ; x & 0xF0 + y / 16: el indice de la tabla
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
	ld hl,0b906h		;9d68   ; la velocidad en x, con su signo
	add hl,de			;9d6b
	ld e,(hl)			;9d6c
	inc hl			;9d6d
	ld d,(hl)			;9d6e
	bit 0,c		;9d6f
	call nz,04a75h		;9d71   ; niega_de: DE = -DE
	pop hl			;9d74
	push de			;9d75
	ld a,h			;9d76   ; y la de y, con el indice al reves
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
	call nz,04a75h		;9d92   ; niega_de: DE = -DE
	pop hl			;9d95
	ret			;9d96
L_9D97:
	ld ix,0ec00h		;9d97   ; el jefe: la parte de 0xEC00 por el jefe (tabla de detras)
	call 04093h		;9d9b   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_9D9E: 17 destinos del despachador p00:4093 (call en p04:9D9B, el
;   indice en A): A0F0, 9DC0, A2DA, A3EE, 9DC0, A4F8, A710, B277, B000, 9DC0,
;   AA1D, AC71, AF10, BA95, B575, BD8D, B74F; lo leen p04:9D9B (34 bytes)
;   0x9d9e..0x9dc0  (34 bytes)
DATA_tabla_9D9E:
	defw 0a0f0h,09dc0h,0a2dah,0a3eeh,09dc0h,0a4f8h,0a710h,0b277h	; 9d9e
	defw 0b000h,09dc0h,0aa1dh,0ac71h,0af10h,0ba95h,0b575h,0bd8dh	; 9dae
	defw 0b74fh	; 9dbe

; ======================================================================
; CODIGO 0x9dc0..0x9df2  (50 bytes)
; ======================================================================


L_9DC0:
	ret			;9dc0
L_9DC1:
	ld hl,0e441h		;9dc1   ; el paso siguiente del jefe (0xE441)
	inc (hl)			;9dc4
	ret			;9dc5
L_9DC6:
	ld (ix+012h),a		;9dc6   ; el jefe empieza: IX+12 = A y 10 bytes de HL a su ficha
	push ix		;9dc9   ; la ficha desde la parte
	pop de			;9dcb
	ld bc,0000ah		;9dcc
	ldir		;9dcf
	xor a			;9dd1   ; 0xEC20 = 0, 0xE454 = 1
	ld (0ec20h),a		;9dd2   ; la parte de 0xEC20 apagada y 0xE454 = 1
	inc a			;9dd5
	ld (0e454h),a		;9dd6
	ld a,(0e440h)		;9dd9   ; el caracter de fondo del jefe (tabla de 0x9DF1)
	ld hl,09df1h		;9ddc   ; el caracter de fondo por jefe (tabla de 0x9DF1)
	call 04a6eh		;9ddf   ; lee_byte: A = el byte A de la tabla HL
	ld (0e405h),a		;9de2   ; guarda el caracter del fondo de la fase
	call 05718h		;9de5   ; la paleta de p16:67AE
	ld a,(0e440h)		;9de8   ; los graficos del jefe (p00:50FE), salvo el 0x0E
	cp 00eh		;9deb   ; el 0x0E...
	jr z,$+22		;9ded
	jp 050feh		;9def

; ----------------------------------------------------------------------
; DATOS leido_9DF2: 17 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 3 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p00:4A73 (17
;   bytes)
;   0x9df2..0x9e03  (17 bytes)
DATA_leido_9DF2:
	defb 07bh,07bh,07bh,07bh,05ch,070h,060h,090h,060h,07bh,07bh,064h,093h,080h,075h,060h	; 9df2  {{{{\p`.`{{d..u`
	defb 075h	; 9e02

; ======================================================================
; CODIGO 0x9e03..0x9f00  (253 bytes)
; ======================================================================


L_9E03:
	ld a,(0e455h)		;9e03   ; el 0x0E con 0xE455 = 1, tambien
	dec a			;9e06   ; ...solo con 0xE455 = 1
	jp z,050feh		;9e07
	ret			;9e0a
L_9E0B:
	ld a,(0e440h)		;9e0b   ; la espera del jefe (0xE443): con el 0x0D sin mas...
	cp 00dh		;9e0e   ; el 0x0D: la espera sin mas
	jr z,L_9E2A		;9e10
	sub 00eh		;9e12   ; ...el 0x0E segun 0xE455 y 0xEC21...
	jr nz,L_9E21		;9e14
	ld a,(0e455h)		;9e16   ; el 0x0E con 0xE455 distinto de 1...
	dec a			;9e19
	jr z,L_9E21		;9e1a
	ld a,(0ec21h)		;9e1c   ; ...espera a que 0xEC21 sea 1
	dec a			;9e1f
	ret			;9e20
L_9E21:
	call 06de6h		;9e21   ; ...los demas, cuando no queden enemigos ni balas y la nave viva
	ret nz			;9e24   ; hasta que no queden enemigos ni balas (p01:6DE6)
	ld a,(0e600h)		;9e25   ; lee el estado de la nave (1 normal, 2 y 3 con escudo, 0xFF estalla)
	or a			;9e28   ; y con la nave viva
	ret m			;9e29
L_9E2A:
	ld hl,0e443h		;9e2a   ; la cuenta de 0xE443
	ld a,(hl)			;9e2d   ; la espera: Z al acabar
	and a			;9e2e
	ret z			;9e2f
	dec (hl)			;9e30
	ret			;9e31
L_9E32:
	ld a,(0e445h)		;9e32   ; vencido: 0x30 cuadros y el paso siguiente
	and a			;9e35   ; sin vencer, nada
	ret z			;9e36
	ld hl,00030h		;9e37
	ld (0e443h),hl		;9e3a
	jp L_9DC1		;9e3d
L_9E40:
	xor a			;9e40   ; cada 8 cuadros (0xE456 = 1) va 8 a la izquierda (16 bits en IX+5) y lo compara con C
	ld (0e456h),a		;9e41
	and a			;9e44
	dec (ix+002h)		;9e45   ; cada 8 cuadros...
	ret nz			;9e48
	ld (ix+002h),008h		;9e49
	ld a,001h		;9e4d
	ld (0e456h),a		;9e4f
	ld l,(ix+005h)		;9e52   ; lee la x del jefe (bajo)
	ld h,(ix+006h)		;9e55   ; lee la x del jefe (alto)
	ld de,0fff8h		;9e58   ; ...8 menos en la x...
	add hl,de			;9e5b
	ld (ix+005h),l		;9e5c   ; guarda la x del jefe (bajo)
	ld (ix+006h),h		;9e5f   ; guarda la x del jefe (alto)
	ld e,c			;9e62   ; ...y Z al llegar a C
	ld d,000h		;9e63
	rst 20h			;9e65
	ret			;9e66
L_9E67:
	ld l,(ix+003h)		;9e67   ; la caja del jefe: y + A en IX+0A e IX+0E, x + B en IX+0C, x + C en IX+10
	ld h,(ix+004h)		;9e6a   ; lee la y del jefe (alto)
	ld d,000h		;9e6d   ; la y + A...
	ld e,a			;9e6f
	add hl,de			;9e70
	ld (ix+00ah),l		;9e71   ; ...en IX+0A y en IX+0E
	ld (ix+00bh),h		;9e74
	ld (ix+00eh),l		;9e77
	ld (ix+00fh),h		;9e7a
	ld l,(ix+005h)		;9e7d   ; lee la x del jefe (bajo)
	ld h,(ix+006h)		;9e80   ; lee la x del jefe (alto)
	ld e,b			;9e83   ; la x + B en IX+0C...
	push hl			;9e84
	add hl,de			;9e85
	ld (ix+00ch),l		;9e86
	ld (ix+00dh),h		;9e89
	pop hl			;9e8c
	ld e,c			;9e8d   ; ...y la x + C en IX+10
	add hl,de			;9e8e
	ld (ix+010h),l		;9e8f
	ld (ix+011h),h		;9e92
	ret			;9e95
L_9E96:
	ld a,(ix+012h)		;9e96   ; IX+8 = cuantas veces cabe B en IX+12
L_9E99:
	sub b			;9e99   ; las vidas - B...
	jr c,L_9EA2		;9e9a
	jp m,L_9EA2		;9e9c
	inc c			;9e9f   ; ...cuantas veces cabe (C)
	jr L_9E99		;9ea0
L_9EA2:
	ld (ix+008h),c		;9ea2   ; guarda el segundo dibujo del jefe
	ret			;9ea5
L_9EA6:
	ld a,(ix+004h)		;9ea6   ; hacia donde va (IX+15): fuera por arriba o por abajo, hacia dentro...
	and a			;9ea9   ; dentro de la pantalla: p04:9EB4
	jr z,L_9EB4		;9eaa
	ld a,002h		;9eac   ; por arriba (negativo): abajo (2); por abajo: arriba (1)
	jp m,L_9EDF		;9eae
	dec a			;9eb1
	jr L_9EDF		;9eb2
L_9EB4:
	ld a,(0e606h)		;9eb4   ; con la nave a la derecha (x desde 0x80) y el jefe a la izquierda (x por debajo de 0x60): a la derecha (4)
	cp 080h		;9eb7
	jr c,L_9EC4		;9eb9
	ld a,(ix+005h)		;9ebb   ; lee la x del jefe (bajo)
	cp 060h		;9ebe
	ld a,004h		;9ec0
	jr c,L_9EDF		;9ec2
L_9EC4:
	ld a,(0e440h)		;9ec4   ; si no, segun este por encima o por debajo de la nave (con el margen de 0x9F0D por jefe)
	dec a			;9ec7
	ld hl,09f0dh		;9ec8
	call 04089h		;9ecb   ; suma_a_hl: HL = HL + A
	ld c,(hl)			;9ece
	ld a,(ix+003h)		;9ecf   ; lee la y del jefe (bajo)
	add a,c			;9ed2
	jr c,L_9EDD		;9ed3
	ld hl,0e604h		;9ed5   ; apunta a la y de la nave (el primer byte de su sprite, p01:797C)
	cp (hl)			;9ed8
	ld a,002h		;9ed9   ; por encima: abajo (2)
	jr c,L_9EDF		;9edb
L_9EDD:
	ld a,001h		;9edd   ; por debajo: arriba (1)
L_9EDF:
	ld (ix+015h),a		;9edf   ; y la espera hasta cambiar (azar)
	ld (ix+002h),0ffh		;9ee2
	cp 003h		;9ee6   ; los pasos: 0x0C-0x0F en vertical, 0x0E-0x11 en horizontal
	ld c,00ch		;9ee8
	jr c,L_9EEE		;9eea
	ld c,00eh		;9eec
L_9EEE:
	ld a,r		;9eee
	and 003h		;9ef0
	add a,c			;9ef2
	ld (ix+016h),a		;9ef3
	ld a,(0e389h)		;9ef6   ; la velocidad: 0x40 + 2 x la dificultad
	add a,a			;9ef9
	add a,040h		;9efa
	ld (ix+017h),a		;9efc
	ret			;9eff

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f00..0x9f0d  (13 bytes)
DATA_9F00:
	defb 03ah,006h,0e6h,0ddh,0beh,005h,03eh,003h,038h,0d5h,03ch,018h,0d2h	; 9f00  :.....>.8.<..

; ----------------------------------------------------------------------
; DATOS tabla_9F0D: tabla que se lee desde HL = 0x9F0D con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p04:9EC8 (2 bytes)
;   0x9f0d..0x9f0f  (2 bytes)
DATA_tabla_9F0D:
	defb 028h,030h	; 9f0d

; ----------------------------------------------------------------------
; DATOS leido_9F0F: 1 bytes que lee p04:9ECE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p04:9ECE (1 bytes)
;   0x9f0f..0x9f10  (1 bytes)
DATA_leido_9F0F:
	defb 040h	; 9f0f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f10..0x9f11  (1 bytes)
DATA_9F10:
	defb 040h	; 9f10

; ======================================================================
; CODIGO 0x9f11..0x9fff  (238 bytes)
; ======================================================================


L_9F11:
	ld a,(ix+017h)		;9f11   ; el jefe se mueve: la cuenta + la velocidad; cada vuelta...
	add a,(ix+002h)		;9f14   ; la cuenta + la velocidad (IX+17)
	ld (ix+002h),a		;9f17
	ret nc			;9f1a
	dec (ix+016h)		;9f1b   ; ...un paso menos (al acabar, C)...
	jp z,L_9FA5		;9f1e   ; al acabar los pasos: C
	ld a,(ix+015h)		;9f21   ; ...y 8 hacia donde va (IX+15: 1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	and a			;9f24   ; sin direccion, nada
	ret z			;9f25
	dec a			;9f26
	jr z,L_9F71		;9f27
	dec a			;9f29
	jr z,L_9F48		;9f2a
	dec a			;9f2c
	jr z,L_9F3A		;9f2d
	ld a,(ix+005h)		;9f2f   ; a la derecha, hasta 0xB0
	add a,008h		;9f32   ; 8 a la derecha, hasta 0xB0
	cp 0b0h		;9f34
	jr nc,L_9FA5		;9f36
	jr L_9F43		;9f38
L_9F3A:
	ld a,(ix+005h)		;9f3a   ; a la izquierda, hasta 0x19
	sub 008h		;9f3d   ; 8 a la izquierda, hasta 0x19
	cp 019h		;9f3f
	jr c,L_9FA5		;9f41
L_9F43:
	ld (ix+005h),a		;9f43   ; guarda la x del jefe (bajo)
	and a			;9f46
	ret			;9f47
L_9F48:
	ld hl,(0ec03h)		;9f48   ; abajo, hasta su tope (0x68 los jefes 3, 0x90 el 4 y el 0x0F, 0x80 los demas)
	ld de,00008h		;9f4b   ; 8 abajo...
	add hl,de			;9f4e
	ld a,h			;9f4f
	and a			;9f50
	jr nz,L_9F6C		;9f51
	ld a,(0e440h)		;9f53   ; lee el jefe en curso (0: ninguno)
	ld de,00068h		;9f56   ; ...el tope: 0x68 con el 3, 0x90 con el 4 y el 0x0F, 0x80 los demas
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
	ld (0ec03h),hl		;9f6c   ; la y nueva
	and a			;9f6f
	ret			;9f70
L_9F71:
	ld hl,(0ec03h)		;9f71   ; arriba, hasta su tope (0xE0, 0xE8, 0xF8 o 0xC0)
	ld de,0fff8h		;9f74
	add hl,de			;9f77
	ld (0ec03h),hl		;9f78
	ld a,h			;9f7b
	and a			;9f7c
	ret p			;9f7d
	ld a,(0e440h)		;9f7e   ; lee el jefe en curso (0: ninguno)
	ld b,0e0h		;9f81
	cp 003h		;9f83
	jr z,L_9F99		;9f85
	ld b,0e8h		;9f87
	cp 00fh		;9f89
	jr z,L_9F99		;9f8b
	cp 004h		;9f8d
	jr z,L_9F99		;9f8f
	ld b,0f8h		;9f91   ; el tope: 0xF8 con el 4, 0xC0 los demas (0xE0 y 0xE8 antes)
	cp 004h		;9f93
	jr z,L_9F99		;9f95
	ld b,0c0h		;9f97
L_9F99:
	ld a,l			;9f99
	cp b			;9f9a
	ret nc			;9f9b
L_9F9C:
	ld a,(ix+015h)		;9f9c   ; al tope, da la vuelta
	xor 003h		;9f9f
	ld (ix+015h),a		;9fa1   ; guarda hacia donde va el jefe (1 arriba, 2 abajo, 3 izquierda, 4 derecha)
	ret			;9fa4
L_9FA5:
	scf			;9fa5   ; C: se acabo el paso
	ret			;9fa6
L_9FA7:
	ld a,(ix+015h)		;9fa7   ; lo mismo con la posicion de 16 bits (IX+3 e IX+5), sin pasar de +-0x30/0x28
	and a			;9faa
	ret z			;9fab
	dec a			;9fac
	jr z,L_9FE1		;9fad
	dec a			;9faf
	jr z,L_9FF5		;9fb0
	dec a			;9fb2
	jr z,L_9FC7		;9fb3
	ld l,(ix+005h)		;9fb5   ; a la derecha, hasta 0x30 mas alla
	ld h,(ix+006h)		;9fb8   ; lee la x del jefe (alto)
	ld de,00008h		;9fbb
	add hl,de			;9fbe
	ld de,00030h		;9fbf
	rst 20h			;9fc2
	jr z,L_9FA5		;9fc3
	jr L_9FD9		;9fc5
L_9FC7:
	ld l,(ix+005h)		;9fc7   ; a la izquierda, hasta 0x30 menos
	ld h,(ix+006h)		;9fca   ; lee la x del jefe (alto)
	ld de,00008h		;9fcd
	or a			;9fd0
	sbc hl,de		;9fd1
	ld de,0ffd0h		;9fd3
	rst 20h			;9fd6
	jr z,L_9FA5		;9fd7
L_9FD9:
	ld (ix+005h),l		;9fd9   ; guarda la x del jefe (bajo)
	ld (ix+006h),h		;9fdc   ; guarda la x del jefe (alto)
	or a			;9fdf
	ret			;9fe0
L_9FE1:
	ld l,(ix+003h)		;9fe1   ; arriba, hasta 0x28 menos
	ld h,(ix+004h)		;9fe4   ; lee la y del jefe (alto)
	ld de,00008h		;9fe7
	or a			;9fea
	sbc hl,de		;9feb
	ld de,0ffd8h		;9fed
	rst 20h			;9ff0
	jr z,L_9FA5		;9ff1
	jr $+18		;9ff3
L_9FF5:
	ld l,(ix+003h)		;9ff5   ; abajo...
	ld h,(ix+004h)		;9ff8   ; lee la y del jefe (alto)
	ld de,00008h		;9ffb
	add hl,de			;9ffe

; ----------------------------------------------------------------------
; DATOS partida_9FFF: los 1 primeros bytes de una instruccion de 3 (11 30 00)
;   que sigue en el banco 5: el trazador de un solo banco no puede verla
;   entera (tools/bancos.py); lo leen p04:9FFF (1 bytes)
;   0x9fff..0xa000  (1 bytes)
DATA_partida_9FFF:
	defb 011h	; 9fff

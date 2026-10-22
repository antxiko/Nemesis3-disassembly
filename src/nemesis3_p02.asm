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
	ld (ix+000h),000h		;8000   ; el objeto de IX se acaba
	ret			;8004
L_8005:
	ld a,(0e44fh)		;8005   ; las explosiones grandes en el bufer: guarda lo que tapan (en 0xEC80)
	or a			;8008
	ret nz			;8009
	ld ix,0e4b2h		;800a   ; apunta a las explosiones grandes (4 de 8 bytes)
	ld iy,0ec80h		;800e   ; lo de debajo de cada una, 16 bytes en 0xEC80...
	ld b,004h		;8012
L_8014:
	push bc			;8014
	call L_8025		;8015   ; ...(p02:8025)
	ld bc,00008h		;8018
	add ix,bc		;801b
	ld c,010h		;801d
	add iy,bc		;801f
	pop bc			;8021
	djnz L_8014		;8022
	ret			;8024
L_8025:
	ld a,(ix+000h)		;8025   ; en uso: su sitio en el bufer (IX+2, IX+3)...
	or a			;8028
	ret z			;8029
	ld l,(ix+002h)		;802a
	ld h,(ix+003h)		;802d
	call 04a46h		;8030   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld (ix+004h),l		;8033   ; ...en IX+4, IX+5
	ld (ix+005h),h		;8036
	push iy		;8039   ; 4 filas de 4 caracteres del bufer a IY
	pop de			;803b
	ld a,004h		;803c
L_803E:
	ld bc,00004h		;803e   ; una fila: 4 caracteres del bufer a IY
	ldir		;8041
	ld c,03ch		;8043   ; la fila siguiente del bufer (0x40 por fila, 4 ya pasados)
	add hl,bc			;8045
	dec a			;8046   ; las 4 filas
	jr nz,L_803E		;8047
	ret			;8049
L_804A:
	ld a,(0e44fh)		;804a   ; y lo devuelve al bufer (p02:806A)
	or a			;804d
	ret nz			;804e
	ld ix,0e4b2h		;804f   ; apunta a las explosiones grandes (4 de 8 bytes)
	ld iy,0ec80h		;8053
	ld b,004h		;8057
L_8059:
	push bc			;8059   ; cada explosion grande vuelve al bufer (p02:806A)
	call L_806A		;805a
	ld bc,00008h		;805d   ; la siguiente: 8 bytes mas en IX
	add ix,bc		;8060
	ld c,010h		;8062   ; y 0x10 mas en lo guardado (IY: 4 filas de 4)
	add iy,bc		;8064
	pop bc			;8066
	djnz L_8059		;8067
	ret			;8069
L_806A:
	ld a,(ix+000h)		;806a
	or a			;806d
	ret z			;806e
	ld e,(ix+004h)		;806f   ; del sitio de IX+4 y lo guardado en IY...
	ld d,(ix+005h)		;8072
	push iy		;8075
	pop hl			;8077
	ld a,004h		;8078   ; ...4 filas de 4
L_807A:
	ld bc,00004h		;807a   ; una fila: 4 caracteres de lo guardado al bufer
	ldir		;807d
	ld c,03ch		;807f   ; la fila siguiente del bufer (0x40 por fila, 4 ya pasados)
	ex de,hl			;8081
	add hl,bc			;8082
	ex de,hl			;8083
	dec a			;8084   ; las 4 filas
	jr nz,L_807A		;8085
	ret			;8087
L_8088:
	ld a,(0e361h)		;8088   ; las entradas secretas de la fase al empezar, salvo en la fase 4
	cp 004h		;808b
	ret z			;808d
	call L_80B1		;808e   ; la siguiente (p02:80B1)
	jr z,L_8088		;8091
	ret c			;8093
	ld hl,0e7f8h		;8094   ; ya pasada: la siguiente (0xE7F8)
	inc (hl)			;8097
	jp L_8088		;8098
L_809B:
	ld a,(0e361h)		;809b   ; las entradas secretas segun el scroll, a la derecha
	cp 004h		;809e
	ret z			;80a0
	ld a,(0e420h)		;80a1   ; lee 1 si este cuadro hay scroll
	or a			;80a4
	ret z			;80a5
	ld a,0f8h		;80a6
	ld (0e428h),a		;80a8   ; guarda la x de lo que aparece (la columna nueva)
L_80AB:
	call L_80B1		;80ab   ; la entrada 0xE7F8 de la lista de la fase (p02:80ED): todavia no, NZ
	jr z,L_80AB		;80ae
	ret			;80b0
L_80B1:
	call L_80ED		;80b1   ; la entrada 0xE7F8 de la lista de la fase (p02:80ED): todavia no, NZ
	ret nz			;80b4
	ld hl,0e7f8h		;80b5   ; ahora: la siguiente...
	inc (hl)			;80b8
	call L_80BE		;80b9   ; ...y sale (p02:80BE)
	xor a			;80bc
	ret			;80bd
L_80BE:
	ld a,c			;80be   ; solo si su numero (bits 0-3 de C) es el de 0xE381
	and 00fh		;80bf
	ld hl,0e381h		;80c1
	cp (hl)			;80c4
	ret nz			;80c5
	ld a,(0e428h)		;80c6   ; x la de la columna nueva, y la de B
	ld d,a			;80c9
	ld e,b			;80ca
	ld a,c			;80cb   ; el tipo: bits 4-7 de C
	rra			;80cc
	rra			;80cd
	rra			;80ce
	rra			;80cf
	and 00fh		;80d0
	call L_80D6		;80d2   ; si ya se ha cogido (0xE38B + tipo), no sale
	ret			;80d5
L_80D6:
	ld c,a			;80d6   ; si ya se ha cogido (0xE38B + tipo), no sale
	ld hl,0e38bh		;80d7
	add a,l			;80da
	ld l,a			;80db
	ld a,(hl)			;80dc
	or a			;80dd
	ret nz			;80de
	ld hl,0e7e0h		;80df   ; ni si ya hay otra (0xE7E0)
	ld a,(hl)			;80e2
	or a			;80e3
	ret nz			;80e4
	ld (hl),c			;80e5   ; tipo, y, x y B en 0xE7E0
	inc l			;80e6
	ld (hl),e			;80e7
	inc l			;80e8
	ld (hl),d			;80e9
	inc l			;80ea
	ld (hl),b			;80eb
	ret			;80ec
L_80ED:
	call 041efh		;80ed   ; con el 19, la entrada 0xE7F8 de la lista de la fase (p19:A3C8 + 2 x fase), 4 bytes
	ld a,(0e361h)		;80f0   ; lee la fase (1 a 11)
	ld hl,0a3c8h		;80f3
	call 04a5ah		;80f6   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(0e7f8h)		;80f9
	add a,a			;80fc
	add a,a			;80fd
	call 04089h		;80fe   ; suma_a_hl: HL = HL + A
	ld e,(hl)			;8101   ; la posicion del scroll
	inc hl			;8102
	ld d,(hl)			;8103
	inc hl			;8104
	ld c,(hl)			;8105   ; C y B
	inc hl			;8106
	ld b,(hl)			;8107
	call 04148h		;8108   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld hl,(0e363h)		;810b   ; comparada con el scroll (Z: ahora)
	rst 20h			;810e
	ret			;810f
L_8110:
	ld a,(0e361h)		;8110   ; la entrada secreta se mueve con el scroll (8 a la izquierda)
	cp 004h		;8113
	ret z			;8115
	ld a,(0e420h)		;8116   ; lee 1 si este cuadro hay scroll
	or a			;8119
	ret z			;811a
	ld hl,0e7e0h		;811b   ; apunta a la entrada secreta: su tipo (0: ninguna), su y, su x y B
	ld a,(hl)			;811e
	or a			;811f
	ret z			;8120
	inc l			;8121
	inc l			;8122
	ld a,(hl)			;8123
	sub 008h		;8124
	ld (hl),a			;8126
	ret nc			;8127
	dec l			;8128   ; y se acaba al salir por la izquierda
	dec l			;8129
	ld (hl),000h		;812a
	ret			;812c
L_812D:
	ld a,(0e600h)		;812d   ; la nave la coge? (si vive y hay entrada)
	inc a			;8130
	ret z			;8131
	ld a,(0e7e0h)		;8132   ; lee la entrada secreta: su tipo (0: ninguna), su y, su x y B
	or a			;8135
	ret z			;8136
	ld de,(0e7e1h)		;8137   ; su y y su x
	ld a,(0e604h)		;813b   ; la y de la nave + 6, contra la de la entrada, +-4
	add a,006h		;813e
	sub e			;8140
	add a,004h		;8141
	cp 009h		;8143
	ret nc			;8145
	ld a,(0e606h)		;8146   ; la x + 5, +-6
	add a,005h		;8149
	sub d			;814b
	add a,004h		;814c
	cp 00dh		;814e
	ret nc			;8150
	ld a,(0e7e0h)		;8151   ; cogida: 0xE31E = el tipo (al estado 9)
	ld (0e31eh),a		;8154   ; guarda el tipo de la entrada secreta cogida (al estado 9)
	ld hl,0e38bh		;8157   ; y queda apuntada (0xE38B + tipo = 1)
	call 04089h		;815a   ; suma_a_hl: HL = HL + A
	ld (hl),001h		;815d
	xor a			;815f   ; la entrada se acaba
	ld h,a			;8160
	ld l,a			;8161
	ld (0e7e0h),a		;8162   ; guarda la entrada secreta: su tipo (0: ninguna), su y, su x y B
	ld (0e7e4h),hl		;8165   ; guarda el paso del estado 9 (la entrada secreta) y el byte siguiente (16 bits)
	ret			;8168
L_8169:
	ld a,(0e7e0h)		;8169   ; guarda en 0xE7F6 el caracter del bufer donde esta la entrada
	or a			;816c
	ret z			;816d
	ld hl,(0e7e1h)		;816e
	call 04a46h		;8171   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld de,0e7f6h		;8174
	ldi		;8177
	ret			;8179
L_817A:
	ld a,(0e7e0h)		;817a   ; y lo devuelve
	or a			;817d
	ret z			;817e
	ld hl,(0e7e1h)		;817f
	call 04a46h		;8182   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld de,0e7f6h		;8185
	ex de,hl			;8188
	ldi		;8189
	ret			;818b
L_818C:
	ld a,(0e39ch)		;818c   ; con 0xE39C o 0xE397, la entrada se ve: el caracter 0x35 cada 4 cuadros
	or a			;818f
	jr nz,L_8197		;8190
	ld a,(0e397h)		;8192   ; lee 1 si se cogio la entrada secreta 0x0C (las entradas se ven)
	or a			;8195
	ret z			;8196
L_8197:
	ld a,(0e7e0h)		;8197   ; lee la entrada secreta: su tipo (0: ninguna), su y, su x y B
	or a			;819a
	ret z			;819b
	ld hl,(0e7e1h)		;819c
	call 04a46h		;819f   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld a,(0e303h)		;81a2   ; lee la cuenta de cuadros del juego
	and 003h		;81a5
	ret nz			;81a7
	ld (hl),035h		;81a8
	ret			;81aa
L_81AB:
	ld a,(0e4b1h)		;81ab   ; las piezas en el bufer: borra lo que pintaron (p02:81C2)
	and a			;81ae
	ret z			;81af
	ld b,a			;81b0
	ld ix,0ed00h		;81b1   ; apunta a las piezas (8 de 0x20)
L_81B5:
	push bc			;81b5
	call L_81C2		;81b6   ; en uso: el tipo 6 va aparte (p03:A4D7)
	ld bc,00020h		;81b9
	add ix,bc		;81bc
	pop bc			;81be
	djnz L_81B5		;81bf
	ret			;81c1
L_81C2:
	ld a,(ix+000h)		;81c2   ; en uso: el tipo 6 va aparte (p03:A4D7)
	or a			;81c5
	ret z			;81c6
	cp 006h		;81c7
	jp z,0a4d7h		;81c9
	ld a,(ix+009h)		;81cc   ; con ancho (IX+9) y alto (IX+0A)...
	or a			;81cf
	ret z			;81d0
	ld a,(ix+00ah)		;81d1
	or a			;81d4
	ret z			;81d5
	ld a,(ix+012h)		;81d6   ; ...que se pintan (bit 1 de IX+12)...
	bit 1,a		;81d9
	ret z			;81db
	rla			;81dc
	jr c,L_81E4		;81dd
	ld a,(ix+006h)		;81df
	and a			;81e2
	ret z			;81e3
L_81E4:
	call L_8281		;81e4   ; ...se borra su rectangulo del bufer
	ld de,00040h		;81e7
	ld c,(ix+009h)		;81ea
	xor a			;81ed
L_81EE:
	ld b,(ix+00ah)		;81ee
	push hl			;81f1
L_81F2:
	ld (hl),a			;81f2   ; la fila a cero: IX+0A caracteres
	inc hl			;81f3
	djnz L_81F2		;81f4
	pop hl			;81f6   ; la fila siguiente del bufer (0x40)
	add hl,de			;81f7
	dec c			;81f8   ; IX+09 filas
	jr nz,L_81EE		;81f9
	ret			;81fb
L_81FC:
	ld a,(0e4b1h)		;81fc   ; las piezas en el bufer: las pinta (p02:8213)
	and a			;81ff
	ret z			;8200
	ld b,a			;8201
	ld ix,0ed00h		;8202   ; apunta a las piezas (8 de 0x20)
L_8206:
	push bc			;8206
	call L_8213		;8207   ; en uso y con el bit 0 de IX+12
	ld bc,00020h		;820a
	add ix,bc		;820d
	pop bc			;820f
	djnz L_8206		;8210
	ret			;8212
L_8213:
	ld a,(ix+000h)		;8213   ; en uso y con el bit 0 de IX+12
	and a			;8216
	ret z			;8217
	ld a,(ix+012h)		;8218
	rra			;821b
	ret nc			;821c
	bit 2,a		;821d   ; con el bit 2: aparte (p02:8264)
	jr nz,L_8264		;821f
L_8221:
	ld a,(ix+007h)		;8221   ; el dibujo IX+7: su direccion en p08:B834 + 2 x dibujo
	ld (0e34fh),a		;8224
	ld l,a			;8227
	ld h,000h		;8228
	add hl,hl			;822a
	ld de,0b834h		;822b
	add hl,de			;822e
	call 0417bh		;822f   ; bancos_8: pone el 8 (y sus copias en 0xF0F1-3)
	ld e,(hl)			;8232
	inc hl			;8233
	ld d,(hl)			;8234
	call L_8281		;8235   ; su sitio en el bufer (IX+4, IX+6); con el bit 6 de IX+12, una fila mas arriba
	ex de,hl			;8238
	ld a,(ix+009h)		;8239   ; IX+9 filas de IX+0A caracteres al bufer
L_823C:
	push de			;823c
	ld c,(ix+00ah)		;823d
	ld b,000h		;8240
	ldir		;8242
	pop de			;8244
	ld c,040h		;8245   ; la fila siguiente del bufer (0x40)
	ex de,hl			;8247
	add hl,bc			;8248
	ex de,hl			;8249
	dec a			;824a
	jr nz,L_823C		;824b
	call 04148h		;824d   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(ix+000h)		;8250   ; el tipo 6: p03:A36B
	cp 006h		;8253
	jp z,0a36bh		;8255
	cp 005h		;8258   ; el tipo 5: con el 19, p19:AE73
	ret nz			;825a
	call 041efh		;825b   ; bancos_19: pone el 19 (y sus copias en 0xF0F1-3)
	call 0ae73h		;825e   ; la de B = 1, con 5 o mas por crecer, el caracter 0xA8 en la fila de abajo (p19:AE73)
	jp 04148h		;8261   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_8264:
	ld a,(ix+000h)		;8264   ; los de dibujo propio: 0x2F, 0x1E, 0x2E, 0x0D y 0x30
	cp 02fh		;8267
	jp z,L_8A9C		;8269   ; 0x2F: p02:8A9C
	cp 01eh		;826c
	jp z,L_8299		;826e   ; 0x1E: p02:8299
	cp 02eh		;8271
	jp z,L_889C		;8273   ; 0x2E: 4 filas de 0x88C4 (p02:889C)
	cp 00dh		;8276
	jp z,0bd2ah		;8278   ; 0x0D: en el banco 3 (p03:BD2A)
	cp 030h		;827b
	jp z,0bb5bh		;827d   ; 0x30: en el banco 3 (p03:BB5B)
	ret			;8280
L_8281:
	ld l,(ix+004h)		;8281   ; su sitio en el bufer (IX+4, IX+6); con el bit 6 de IX+12, una fila mas arriba
	ld h,(ix+006h)		;8284
L_8287:
	call 04a46h		;8287   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	bit 6,(ix+012h)		;828a   ; mira el bit 6 de las marcas de la pieza
	ret z			;828e
	ld bc,0ffe0h		;828f
	add hl,bc			;8292
	ret			;8293
L_8294:
	ld (ix+000h),000h		;8294   ; el tipo de la pieza (0: libre) = 0x00
	ret			;8298
L_8299:
	call 0417bh		;8299   ; el tipo 0x1E: dos trozos del dibujo IX+7 (con el 8)...
	ld l,(ix+007h)		;829c
	ld b,000h		;829f
	call L_82BB		;82a1   ; una fila del dibujo L (p08:B834 + 2 x L), desde IX+1C, al bufer en x + B
	bit 0,(ix+00bh)		;82a4   ; ...el segundo 8 a la derecha o a la izquierda (bit 0 de IX+0B)...
	ld b,008h		;82a8
	jr z,L_82AE		;82aa
	ld b,0f8h		;82ac
L_82AE:
	ld a,(ix+007h)		;82ae   ; ...con el dibujo IX+7 + 6
	add a,006h		;82b1
	ld l,a			;82b3
	call L_82BB		;82b4   ; una fila del dibujo L (p08:B834 + 2 x L), desde IX+1C, al bufer en x + B
	call 04148h		;82b7   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ret			;82ba
L_82BB:
	ld h,000h		;82bb   ; una fila del dibujo L (p08:B834 + 2 x L), desde IX+1C, al bufer en x + B
	add hl,hl			;82bd
	ld de,0b834h		;82be
	add hl,de			;82c1
	ld a,(hl)			;82c2
	inc hl			;82c3
	ld h,(hl)			;82c4
	ld l,a			;82c5
	ld a,(ix+01ch)		;82c6
	call 04089h		;82c9   ; suma_a_hl: HL = HL + A
	ex de,hl			;82cc
	ld h,(ix+006h)		;82cd
	ld a,(ix+004h)		;82d0
	add a,b			;82d3
	ld l,a			;82d4
	call 04a46h		;82d5   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ex de,hl			;82d8
	ld c,(ix+00ah)		;82d9
	ld b,000h		;82dc
	ldir		;82de
	ret			;82e0
L_82E1:
	ld de,0cf00h		;82e1   ; guarda en 0xCF00 lo que tapan los enemigos de caracteres
	ld ix,0e800h		;82e4   ; apunta a los enemigos (12 de 0x40)
	ld b,00ch		;82e8
L_82EA:
	push bc			;82ea
	call L_82F7		;82eb   ; los de caracteres (bit 6 de IX+0B)
	ld bc,00040h		;82ee
	add ix,bc		;82f1
	pop bc			;82f3
	djnz L_82EA		;82f4
	ret			;82f6
L_82F7:
	ld a,(ix+000h)		;82f7   ; los de caracteres (bit 6 de IX+0B)
	and a			;82fa
	ret z			;82fb
	bit 6,(ix+00bh)		;82fc
	ret z			;8300
	ld h,(ix+006h)		;8301   ; su sitio en el bufer, en IX+11/IX+12
	ld l,(ix+004h)		;8304
	call 04a46h		;8307   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld (ix+011h),l		;830a
	ld (ix+012h),h		;830d
	ld b,(ix+013h)		;8310   ; IX+13 filas de IX+14
	ld c,(ix+014h)		;8313
L_8316:
	push bc			;8316   ; una fila: IX+14 caracteres del bufer a DE
	push hl			;8317
	ld b,000h		;8318
	ldir		;831a
	pop hl			;831c
	ld bc,00040h		;831d   ; la fila siguiente del bufer (0x40)
	add hl,bc			;8320
	pop bc			;8321
	djnz L_8316		;8322   ; IX+13 filas
	ret			;8324
L_8325:
	call 04173h		;8325   ; los caracteres que cambian solos, con el 7 en 0xA000
	call L_8331		;8328   ; cada 8 cuadros, 3 bytes del dibujo de sprite 0x58 (0x1AC1) giran entre 4 de p07:BD5B
	call L_835A		;832b   ; los dibujos que cambian de la fase (sin jefe ni aparicion poco a poco)
	jp 04148h		;832e   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_8331:
	ld a,(0e303h)		;8331   ; cada 8 cuadros, 3 bytes del dibujo de sprite 0x58 (0x1AC1) giran entre 4 de p07:BD5B
	and 007h		;8334
	ret nz			;8336
	ld hl,01ac1h		;8337
	call 04ab6h		;833a   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
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
	call 04089h		;834f   ; suma_a_hl: HL = HL + A
	ld b,003h		;8352
L_8354:
	outi		;8354
	jp nz,L_8354		;8356
	ret			;8359
L_835A:
	ld a,(0e361h)		;835a   ; los dibujos que cambian de la fase (sin jefe ni aparicion poco a poco)
	cp 004h		;835d
	ret z			;835f
	ld a,(0e440h)		;8360   ; lee el jefe en curso (0: ninguno)
	or a			;8363
	ret nz			;8364
	ld a,(0e518h)		;8365   ; lee la aparicion poco a poco en marcha (1 o 2)
	or a			;8368
	ret nz			;8369
	ld a,(0e361h)		;836a   ; la lista de la fase (p07:B1F5 + 2 x fase)
	ld hl,0b1f5h		;836d
	call 04a5ah		;8370   ; lee_palabra: HL = la palabra A de la tabla HL
L_8373:
	inc hl			;8373   ; busca el tramo del scroll: palabras de posicion...
	inc hl			;8374
	ld e,(hl)			;8375
	inc hl			;8376
	ld d,(hl)			;8377
	push hl			;8378
	ld hl,(0e363h)		;8379   ; lee la posicion del scroll (16 bits)
	rst 20h			;837c
	pop hl			;837d
	jr c,L_8384		;837e
	inc hl			;8380
	jp L_8373		;8381
L_8384:
	dec hl			;8384   ; ...el anterior al primero que pasa
	dec hl			;8385
	dec hl			;8386
	ld e,(hl)			;8387   ; su tabla de animacion: la espera...
	inc hl			;8388
	ld d,(hl)			;8389
	ex de,hl			;838a
	ld a,(hl)			;838b
	or a			;838c
	ret z			;838d
	exx			;838e   ; ...cuenta en 0xE538
	ld hl,0e538h		;838f
	inc (hl)			;8392
	cp (hl)			;8393
	exx			;8394
	ret nc			;8395
	exx			;8396
	ld (hl),000h		;8397
	exx			;8399
	inc hl			;839a   ; cuantos pasos, y el paso de 0xE539
	ld a,(0e539h)		;839b
	inc a			;839e
	cp (hl)			;839f
	jr c,L_83A3		;83a0
	xor a			;83a2
L_83A3:
	ld (0e539h),a		;83a3
	inc hl			;83a6   ; el paso: su lista de dibujos (10 bytes cada uno, 0 acaba)
	call 04a5ah		;83a7   ; lee_palabra: HL = la palabra A de la tabla HL
L_83AA:
	ld a,(hl)			;83aa
	or a			;83ab
	ret z			;83ac
	push hl			;83ad
	call L_83B9		;83ae   ; un dibujo: el caracter, los tercios (bits 0-2) y si va en dibujos o en colores (bit 3)
	pop hl			;83b1
	ld bc,0000ah		;83b2
	add hl,bc			;83b5
	jp L_83AA		;83b6
L_83B9:
	ld a,(hl)			;83b9   ; un dibujo: el caracter, los tercios (bits 0-2) y si va en dibujos o en colores (bit 3)
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
	ld a,(00007h)		;83c9   ; el puerto del VDP
	ld c,a			;83cc
	ld a,(de)			;83cd
	inc de			;83ce
	exx			;83cf
	ld b,003h		;83d0
	ld e,a			;83d2   ; cada tercio marcado...
L_83D3:
	rr e		;83d3
	exx			;83d5
	jr nc,L_83E7		;83d6
	call 00053h		;83d8   ; BIOS SETWRT - Enables VDP to write | ...8 bytes a la VRAM
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
	ld a,h			;83e7   ; el tercio anterior (0x800 menos)
	sub 008h		;83e8
	ld h,a			;83ea
	exx			;83eb
	djnz L_83D3		;83ec
	ret			;83ee
L_83EF:
	call 057eah		;83ef   ; el logo de Konami: el sonido 1 y la paleta de p16:67AE
	call 05718h		;83f2   ; paleta_de_la_fase: la paleta de p16:67AE
	ld hl,00000h		;83f5   ; 0xE30E y 0xE30F a cero
	ld (0e30eh),hl		;83f8
	ld de,0a737h		;83fb   ; los graficos de p22:A737 (RLE con direccion)
	call 04b36h		;83fe   ; rle_con_direccion: descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ld hl,00a00h		;8401   ; 0x3F0 colores a cero desde 0x0A00
	ld bc,003f0h		;8404
	xor a			;8407
	call 00056h		;8408   ; BIOS FILVRM - Fills VRAM with value
	ld hl,03907h		;840b   ; el logo en la pantalla: 6 filas de 21 caracteres desde el 0x40, en 0x3907
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
	ld a,(0e30fh)		;8423   ; la animacion del logo: hasta el paso 6 (0xE30F)
	cp 006h		;8426
	ld c,a			;8428
	ret z			;8429
	ld a,(0e30eh)		;842a   ; al empezar cada paso, el dibujo de ese paso al bufer (p02:846F)
	and 007h		;842d
	ld a,c			;842f
	push af			;8430
	call z,L_846F		;8431   ; el dibujo del paso A (p02:847B) en RLE al bufer de 0xC400
	pop af			;8434
	ld hl,08487h		;8435   ; la columna de cada cuadro (tabla p02:8487)
	call 04a5ah		;8438   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;843b
	ld hl,0e30eh		;843c   ; 0xE30E: la columna (0-7)...
	ld a,(hl)			;843f
	and 007h		;8440
	ld c,a			;8442
	cp 007h		;8443
	jr nz,L_8449		;8445
	inc hl			;8447   ; ...y al acabar, el paso siguiente
	inc (hl)			;8448
L_8449:
	inc a			;8449
	and 007h		;844a
	ld (0e30eh),a		;844c
	ld a,c			;844f
	call 0408eh		;8450   ; suma_a_de: DE = DE + A
	ld a,c			;8453
	ld hl,0c400h		;8454   ; del bufer de 0xC400...
	call 04089h		;8457   ; suma_a_hl: HL = HL + A
	ex de,hl			;845a
	ld b,015h		;845b   ; ...21 caracteres de 8 en 8 a la VRAM
L_845D:
	ld a,(de)			;845d
	call 0004dh		;845e   ; BIOS WRTVRM - Writes data in VRAM
	ld a,008h		;8461
	call 0408eh		;8463   ; suma_a_de: DE = DE + A
	ld a,008h		;8466
	call 04089h		;8468   ; suma_a_hl: HL = HL + A
	djnz L_845D		;846b
	inc b			;846d
	ret			;846e
L_846F:
	ld hl,0847bh		;846f   ; el dibujo del paso A (p02:847B) en RLE al bufer de 0xC400
	call 04a5ah		;8472   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,0c400h		;8475   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	jp 055adh		;8478   ; rle_a_ram: descomprime a la RAM de DE el RLE de HL

; ----------------------------------------------------------------------
; DATOS tabla_847B: tabla que se lee desde HL = 0x847B con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:846F (12 bytes)
;   0x847b..0x8487  (12 bytes)
DATA_tabla_847B:
	defb 0b6h,0a8h,0bbh,0a8h,0c0h,0a8h,0c7h,0a8h,0ceh,0a8h,0d3h,0a8h	; 847b  ............

; ----------------------------------------------------------------------
; DATOS tabla_8487: tabla que se lee desde HL = 0x8487 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:8435 (12 bytes)
;   0x8487..0x8493  (12 bytes)
DATA_tabla_8487:
	defb 000h,00ah,0a8h,00ah,050h,00bh,0f8h,00bh,0a0h,00ch,048h,00dh	; 8487  ....P.....H.

; ======================================================================
; CODIGO 0x8493..0x863f  (428 bytes)
; ======================================================================


L_8493:
	ld hl,0cf00h		;8493   ; devuelve al bufer lo que tapaban los enemigos de caracteres
	ld ix,0e800h		;8496   ; apunta a los enemigos (12 de 0x40)
	ld b,00ch		;849a
L_849C:
	push bc			;849c
	call L_84A9		;849d   ; los 0x38, 0x39 y 0x3B aparte; el 0x49 a p01:7A44
	ld bc,00040h		;84a0
	add ix,bc		;84a3
	pop bc			;84a5
	djnz L_849C		;84a6
	ret			;84a8
L_84A9:
	ld a,(ix+000h)		;84a9   ; los 0x38, 0x39 y 0x3B aparte; el 0x49 a p01:7A44
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
	bit 6,(ix+00bh)		;84c2   ; los de caracteres...
	ret z			;84c6
	ld e,(ix+011h)		;84c7   ; ...IX+13 filas de IX+14 desde su sitio
	ld d,(ix+012h)		;84ca
	ld b,(ix+013h)		;84cd
	ld c,(ix+014h)		;84d0
	ld a,(0e440h)		;84d3   ; con el jefe 0x0D, a cero
	cp 00dh		;84d6
	jr z,L_84EC		;84d8
L_84DA:
	push bc			;84da   ; una fila: IX+14 caracteres de HL al bufer
	push de			;84db
	ld b,000h		;84dc
	ldir		;84de
	pop de			;84e0
	ld a,040h		;84e1   ; la fila siguiente del bufer (DE + 0x40)
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
	ld (hl),000h		;84f3   ; una fila a cero
	inc hl			;84f5
	djnz L_84F3		;84f6
	pop hl			;84f8
	ld de,00040h		;84f9   ; la fila siguiente del bufer (0x40)
	add hl,de			;84fc
	pop bc			;84fd
	dec c			;84fe   ; IX+13 filas
	jr nz,L_84F1		;84ff
	ret			;8501
L_8502:
	push hl			;8502   ; los 0x38, 0x39 y 0x3B: con el 5, p05:A27F
	call 04163h		;8503   ; bancos_5: pone el 5 (y sus copias en 0xF0F1-3)
	call 0a27fh		;8506   ; borra del bufer sus IX+13 filas de IX+14 caracteres (p05:A27F)
	call 04148h		;8509   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	pop hl			;850c
	ret			;850d
L_850E:
	ld ix,0eb00h		;850e   ; las balas se mueven (p01:758F) y se acaban fuera de la pantalla
	ld b,00ah		;8512
L_8514:
	ld a,(ix+000h)		;8514   ; cada bala en uso se mueve (p01:758F)
	and a			;8517
	jr z,L_852A		;8518
	call 0758fh		;851a
	jr nc,L_8526		;851d   ; sin acarreo: se acaba
	ld a,(ix+006h)		;851f   ; con la x en 0xF0 o mas, tambien
	cp 0f0h		;8522
	jr c,L_852A		;8524
L_8526:
	ld (ix+000h),000h		;8526   ; la bala se acaba
L_852A:
	ld de,00010h		;852a
	add ix,de		;852d
	djnz L_8514		;852f
	ret			;8531
L_8532:
	ld ix,0eb00h		;8532   ; las balas se acaban contra el decorado (p02:854F)
	ld b,00ah		;8536
L_8538:
	ld a,(ix+000h)		;8538
	and a			;853b
	jr z,L_8547		;853c
	call L_854F		;853e   ; el caracter del bufer donde esta la bala: distinto del fondo (0xE405)?
	jr nc,L_8547		;8541
	ld (ix+000h),000h		;8543
L_8547:
	ld de,00010h		;8547
	add ix,de		;854a
	djnz L_8538		;854c
	ret			;854e
L_854F:
	ld l,(ix+004h)		;854f   ; el caracter del bufer donde esta la bala: distinto del fondo (0xE405)?
	ld h,(ix+006h)		;8552
	call 04a46h		;8555   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld a,(hl)			;8558
	ld a,(0e405h)		;8559   ; lee el caracter del fondo de la fase
	cp (hl)			;855c
	ret			;855d
L_855E:
	ld a,e			;855e   ; una bala hacia la nave desde DE (8 mas abajo)
	add a,008h		;855f
	ld e,a			;8561
	ld a,(0e389h)		;8562   ; la velocidad: 0x50 + 2 x la dificultad, con tope 0x60
	add a,a			;8565
	add a,050h		;8566
	cp 060h		;8568
	jr c,L_856E		;856a
	ld a,060h		;856c
L_856E:
	ld (0e46eh),a		;856e
	push de			;8571   ; la direccion hacia la nave (p01:639A)
	call 0639ah		;8572
	pop de			;8575
	ld a,(0e479h)		;8576   ; muy cerca de la nave (0xE479), no
	and a			;8579
	ret nz			;857a
	ld a,(0e464h)		;857b   ; esperando (0xE464), no
	and a			;857e
	ret nz			;857f
L_8580:
	ld hl,0eb00h		;8580   ; una bala libre de las 10 de 0xEB00
	ld b,00ah		;8583
L_8585:
	ld a,(hl)			;8585   ; la primera libre (el primer byte a 0)
	and a			;8586
	jr z,L_8593		;8587
	ld a,010h		;8589   ; la siguiente: 0x10 bytes mas
	add a,l			;858b
	ld l,a			;858c
	jr nc,L_8590		;858d
	inc h			;858f
L_8590:
	djnz L_8585		;8590
	ret			;8592
L_8593:
	ld a,001h		;8593   ; 0xE407 = 1 (el sonido de la bala)
	ld (0e407h),a		;8595
	ld (hl),a			;8598   ; en uso
	inc l			;8599
	inc l			;859a
	inc l			;859b
	xor a			;859c
	ld (hl),a			;859d
	inc l			;859e
	ld (hl),e			;859f   ; la y y la x
	inc l			;85a0
	ld (hl),a			;85a1
	inc l			;85a2
	ld (hl),d			;85a3
	inc l			;85a4
	ld de,(0e472h)		;85a5   ; la velocidad hacia la nave
	ld (hl),e			;85a9
	inc l			;85aa
	ld (hl),d			;85ab
	ld de,(0e474h)		;85ac   ; lee la velocidad en x hacia la nave (16 bits; IX+9 de quien la usa)
	inc l			;85b0
	ld (hl),e			;85b1
	inc l			;85b2
	ld (hl),d			;85b3
	inc l			;85b4
	ld (hl),058h		;85b5   ; el dibujo (0x58) y el color (9)
	inc l			;85b7
	ld (hl),009h		;85b8
	ret			;85ba
L_85BB:
	ld a,(0e600h)		;85bb   ; la fase 3 (sin jefe, pasado el scroll 0x180): la nave toca la pieza 0x0C?
	inc a			;85be
	ret z			;85bf
	ld a,(0e361h)		;85c0   ; lee la fase (1 a 11)
	cp 003h		;85c3
	ret nz			;85c5
	ld a,(0e440h)		;85c6   ; lee el jefe en curso (0: ninguno)
	or a			;85c9
	ret nz			;85ca
	ld hl,(0e363h)		;85cb   ; lee la posicion del scroll (16 bits)
	ld de,00180h		;85ce
	or a			;85d1
	sbc hl,de		;85d2
	ret c			;85d4
	ld a,(0e600h)		;85d5   ; lee el estado de la nave (1 normal, 2 y 3 con escudo, 0xFF estalla)
	inc a			;85d8
	ret z			;85d9
	ld a,(0e604h)		;85da   ; la caja de la nave: y + 4, x + 2, 6 x 8
	add a,004h		;85dd
	ld e,a			;85df
	ld a,(0e606h)		;85e0   ; lee la x de la nave
	add a,002h		;85e3
	ld d,a			;85e5
	ld hl,00806h		;85e6
	call L_85F4		;85e9   ; las piezas del tipo 0x0C (sin IX+1D) en la caja: dx 0x1C, de 8 de lado
	ret nc			;85ec
	ld hl,00001h		;85ed   ; si: la secuencia 1 (0xE31F)
	ld (0e31fh),hl		;85f0   ; guarda la secuencia en marcha (p01:6274) y el byte siguiente (16 bits)
	ret			;85f3
L_85F4:
	ld ix,0ed00h		;85f4   ; las piezas del tipo 0x0C (sin IX+1D) en la caja: dx 0x1C, de 8 de lado
	ld b,008h		;85f8
	exx			;85fa
	ld de,00020h		;85fb
	exx			;85fe
L_85FF:
	ld a,(ix+000h)		;85ff   ; lee el tipo de la pieza (0: libre)
	cp 00ch		;8602
	jr nz,L_8637		;8604
	ld a,(ix+01dh)		;8606
	or a			;8609
	jr nz,L_8637		;860a
	ld a,(ix+004h)		;860c   ; lee la y de la pieza
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
	ld a,(ix+006h)		;8622   ; lee la x de la pieza: con 0xE0 o mas, fuera
	cp 0e0h		;8625
	ret nc			;8627
	add a,01ch		;8628   ; la x + 0x1C contra D: a menos de 8, dentro (C)
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
	exx			;8637   ; la pieza siguiente (0x20 bytes)
	add ix,de		;8638
	exx			;863a
	djnz L_85FF		;863b
	xor a			;863d   ; ninguna: NC
	ret			;863e

; ----------------------------------------------------------------------
; DATOS leido_863F: 5 bytes que leen p00:4B07, p00:4B09, p00:4B0C al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4B07, p00:4B09, p00:4B0C
;   (5 bytes)
;   0x863f..0x8644  (5 bytes)
DATA_leido_863F:
	defb 0e6h,03ah,041h,04bh,0ffh	; 863f

; ----------------------------------------------------------------------
; DATOS texto_8644: texto a la VRAM: direccion, letras ('A' = 0x12), 0xFE y
;   otra direccion, 0xFF acaba (p00:4B04); lo leen p00:499F (5 bytes)
;   0x8644..0x8649  (5 bytes)
DATA_texto_8644:
	defb 0e6h,03ah,042h,04bh,0ffh	; 8644

; ----------------------------------------------------------------------
; DATOS letras_8649: letras a la VRAM desde la direccion que ya trae HL, 0xFF
;   acaba (p00:4B0C); lo leen p00:4AA6 (3 bytes)
;   0x8649..0x864c  (3 bytes)
DATA_letras_8649:
	defb 00ch,00dh,0ffh	; 8649

; ----------------------------------------------------------------------
; DATOS texto_864C: texto a la VRAM: direccion, letras ('A' = 0x12), 0xFE y
;   otra direccion, 0xFF acaba (p00:4B04); se solapan 2 bloques: (texto_8659
;   8659-8668); lo leen p00:4513, p00:4582 (28 bytes)
;   0x864c..0x8668  (28 bytes)
DATA_texto_864C:
	defb 00bh,039h,018h,012h,01eh,016h,000h,000h,020h,027h,016h,023h,0feh,08ah,039h,014h	; 864c  .9...... '.#..9.
	defb 020h,01fh,025h,01ah,01fh,026h,016h,000h,000h,017h,006h,0ffh	; 865c   .%..&......

; ----------------------------------------------------------------------
; DATOS texto_8668: texto a la VRAM: direccion, letras ('A' = 0x12), 0xFE y
;   otra direccion, 0xFF acaba (p00:4B04); lo leen p00:4790, p00:4493 (11
;   bytes)
;   0x8668..0x8673  (11 bytes)
DATA_texto_8668:
	defb 04ch,039h,021h,01dh,012h,02ah,016h,023h,000h,002h,0ffh	; 8668  L9!..*.#...

; ----------------------------------------------------------------------
; DATOS texto_8673: texto a la VRAM: direccion, letras ('A' = 0x12), 0xFE y
;   otra direccion, 0xFF acaba (p00:4B04); lo leen p00:46CD (19 bytes)
;   0x8673..0x8686  (19 bytes)
DATA_texto_8673:
	defb 04ah,039h,016h,029h,025h,016h,01fh,015h,000h,021h,01dh,012h,02ah,0feh,08fh,039h	; 8673  J9.)%....!..*..9
	defb 017h,006h,0ffh	; 8683

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8686..0x8689  (3 bytes)
DATA_8686:
	defb 0cdh,0adh,086h	; 8686

; ======================================================================
; CODIGO 0x8689..0x86ad  (36 bytes)
; ======================================================================


L_8689:
	ld (ix+032h),08fh		;8689
	ld a,(ix+00ch)		;868d
	ld (ix+002h),a		;8690   ; guarda la cuenta del enemigo
	ld (ix+00ch),000h		;8693
	ld a,010h		;8697
	ld (ix+010h),a		;8699   ; guarda las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll)
	ld a,001h		;869c
	ld (ix+013h),a		;869e
	ld (ix+014h),a		;86a1
	ld a,(ix+006h)		;86a4   ; lee la x del enemigo
	and 0f8h		;86a7
	ld (ix+006h),a		;86a9   ; guarda la x del enemigo
	ret			;86ac

; ----------------------------------------------------------------------
; DATOS sin identificar  0x86ad..0x86b9  (12 bytes)
DATA_86AD:
	defb 0ddh,077h,032h,0ddh,07eh,004h,0e6h,0f8h,0ddh,077h,004h,0c9h	; 86ad  .w2.~....w..

; ======================================================================
; CODIGO 0x86b9..0x86bf  (6 bytes)
; ======================================================================


L_86B9:
	ld a,(ix+001h)		;86b9   ; por el paso IX+1 (tabla de detras)
	call 04093h		;86bc   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_86BF: 4 destinos del despachador p00:4093 (call en p02:86BC, el
;   indice en A): 86C7, 872D, 8744, 874C; lo leen p02:86BC (8 bytes)
;   0x86bf..0x86c7  (8 bytes)
DATA_tabla_86BF:
	defw 086c7h,0872dh,08744h,0874ch	; 86bf  -> L_86C7 L_872D L_8744 L_874C

; ======================================================================
; CODIGO 0x86c7..0x8729  (98 bytes)
; ======================================================================


L_86C7:
	ld a,(ix+006h)		;86c7   ; lee la x del enemigo
	sub 008h		;86ca
	ld (ix+006h),a		;86cc   ; guarda la x del enemigo
	jr z,$+112		;86cf
	ld a,(0e440h)		;86d1   ; lee el jefe en curso (0: ninguno)
	or a			;86d4
	jr z,L_86FF		;86d5
	cp 005h		;86d7
	jr z,L_8704		;86d9
	ld hl,l8728h		;86db
	ld a,(ix+002h)		;86de   ; lee la cuenta del enemigo
	call 04a6eh		;86e1   ; lee_byte: A = el byte A de la tabla HL
	ld a,(0ec03h)		;86e4
	add a,(hl)			;86e7
	ld (ix+004h),a		;86e8   ; guarda la y del enemigo
	cp 0b0h		;86eb
	jp nc,075d1h		;86ed
	ld a,(ix+000h)		;86f0   ; lee el tipo del enemigo (0: libre)
	cp 039h		;86f3
	jr z,L_86FF		;86f5
	ld a,(ix+004h)		;86f7   ; lee la y del enemigo
	and 0f8h		;86fa
	ld (ix+004h),a		;86fc   ; guarda la y del enemigo
L_86FF:
	call L_8765		;86ff
	jr c,L_871C		;8702
L_8704:
	inc (ix+014h)		;8704
	ld a,(ix+014h)		;8707
	cp (ix+01fh)		;870a
	jr c,L_8712		;870d
	inc (ix+001h)		;870f   ; suma 1 a el paso del enemigo
L_8712:
	ld a,(ix+014h)		;8712
	add a,a			;8715
	add a,a			;8716
	add a,a			;8717
	ld (ix+00fh),a		;8718   ; guarda el ancho del enemigo para los choques
	ret			;871b
L_871C:
	ld a,(ix+006h)		;871c   ; lee la x del enemigo
	add a,008h		;871f
	ld (ix+006h),a		;8721   ; guarda la x del enemigo
	ld (ix+001h),003h		;8724   ; el paso del enemigo = 0x03
L_8728:
	ret			;8728

; ----------------------------------------------------------------------
; DATOS leido_8729: 4 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (4 bytes)
;   0x8729..0x872d  (4 bytes)
DATA_leido_8729:
	defb 010h,02eh,050h,06eh	; 8729

; ======================================================================
; CODIGO 0x872d..0x879d  (112 bytes)
; ======================================================================


L_872D:
	ld a,(ix+006h)		;872d   ; lee la x del enemigo
	sub 008h		;8730
	ld (ix+006h),a		;8732   ; guarda la x del enemigo
	cp 008h		;8735
	jr c,L_873F		;8737
	call L_8765		;8739
	jr c,$-32		;873c
	ret			;873e
L_873F:
	ld (ix+001h),002h		;873f   ; el paso del enemigo = 0x02
	ret			;8743
L_8744:
	dec (ix+014h)		;8744
	jr nz,$-53		;8747
	jp 075d1h		;8749
L_874C:
	dec (ix+014h)		;874c
	jp z,075d1h		;874f
	call L_8712		;8752
	ld a,(0e420h)		;8755   ; lee 1 si este cuadro hay scroll
	or a			;8758
	ret z			;8759
	ld a,(ix+006h)		;875a   ; lee la x del enemigo
	sub 008h		;875d
	ld (ix+006h),a		;875f   ; guarda la x del enemigo
	ret nz			;8762
	jr L_873F		;8763
L_8765:
	ld a,(0e440h)		;8765   ; lee el jefe en curso (0: ninguno)
	or a			;8768
	ret nz			;8769
	jp 07fb7h		;876a
L_876D:
	ld (ix+00dh),080h		;876d   ; como se toca la pieza (bit 7: no se toca) = 0x80
	ld (ix+008h),004h		;8771   ; las vidas de la pieza = 0x04
	ld a,(ix+004h)		;8775   ; lee la y de la pieza
	cp 060h		;8778
	ld b,091h		;877a
	jr nc,L_8780		;877c
	ld b,092h		;877e
L_8780:
	ld (ix+007h),b		;8780   ; el dibujo (IX+7)
	ld (ix+009h),001h		;8783   ; 1 x 4 caracteres
	ld (ix+00ah),004h		;8787   ; las columnas de la pieza = 0x04
	ld (ix+002h),010h		;878b   ; la espera (IX+2) y 3 pasos (IX+14)
	ld (ix+014h),003h		;878f
	ret			;8793
L_8794:
	call L_881C		;8794   ; visible? (p02:881C) y por el paso IX+1 (tabla de detras)
	ld a,(ix+001h)		;8797   ; lee el paso de la pieza
	call 04093h		;879a   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_879D: 4 destinos del despachador p00:4093 (call en p02:879A, el
;   indice en A): 87A5, 87B1, 87D9, 87FE; lo leen p02:879A (8 bytes)
;   0x879d..0x87a5  (8 bytes)
DATA_tabla_879D:
	defw 087a5h,087b1h,087d9h,087feh	; 879d  -> L_87A5 L_87B1 L_87D9 L_87FE

; ======================================================================
; CODIGO 0x87a5..0x8869  (196 bytes)
; ======================================================================


L_87A5:
	dec (ix+002h)		;87a5   ; paso 0: espera y al siguiente
	ret nz			;87a8
	ld (ix+002h),008h		;87a9   ; la cuenta de la pieza = 0x08
	inc (ix+001h)		;87ad   ; suma 1 a el paso de la pieza
	ret			;87b0
L_87B1:
	dec (ix+002h)		;87b1   ; paso 1: cada 8 cuadros, una fila mas (IX+9)
	ret nz			;87b4
	ld (ix+002h),008h		;87b5   ; la cuenta de la pieza = 0x08
	inc (ix+009h)		;87b9   ; suma 1 a las filas de la pieza
	ld a,(ix+004h)		;87bc   ; por abajo (y desde 0x60) sube 8...
	cp 060h		;87bf
	jr c,L_87CA		;87c1
	add a,0f8h		;87c3
	ld (ix+004h),a		;87c5   ; guarda la y de la pieza
	jr L_87CD		;87c8
L_87CA:
	inc (ix+007h)		;87ca   ; ...por arriba, el dibujo siguiente
L_87CD:
	dec (ix+014h)		;87cd   ; tres veces y al paso siguiente
	ret nz			;87d0
	ld (ix+002h),010h		;87d1   ; la cuenta de la pieza = 0x10
	inc (ix+001h)		;87d5   ; suma 1 a el paso de la pieza
	ret			;87d8
L_87D9:
	dec (ix+002h)		;87d9   ; paso 2: espera, el dibujo 0x27 o 0x26 segun el lado
	ret nz			;87dc
	ld a,(ix+004h)		;87dd   ; lee la y de la pieza
	cp 060h		;87e0
	ld a,027h		;87e2
	jr c,L_87E8		;87e4
	ld a,026h		;87e6
L_87E8:
	ld (ix+007h),a		;87e8   ; guarda el dibujo de la pieza
	ld (ix+002h),050h		;87eb   ; 0x50 cuadros, 8 veces, 4 puntos
	ld (ix+014h),008h		;87ef
	ld (ix+00ch),004h		;87f3
	call L_9C87		;87f7   ; p02:9C87
	inc (ix+001h)		;87fa   ; suma 1 a el paso de la pieza
	ret			;87fd
L_87FE:
	call L_9E32		;87fe   ; paso 3: p02:9E32 y al acabar la espera...
	dec (ix+002h)		;8801   ; resta 1 a la cuenta de la pieza
	ret nz			;8804
	ld a,(ix+004h)		;8805   ; ...el dibujo 0x95 o 0x91 y vuelta al paso 2
	cp 060h		;8808
	ld a,095h		;880a
	jr c,L_8810		;880c
	ld a,091h		;880e
L_8810:
	ld (ix+007h),a		;8810   ; guarda el dibujo de la pieza
	ld (ix+002h),00ch		;8813   ; la cuenta de la pieza = 0x0C
	ld (ix+001h),002h		;8817   ; el paso de la pieza = 0x02
	ret			;881b
L_881C:
	ld a,(ix+006h)		;881c   ; con la x por debajo de 0xE0 se puede tocar (IX+0D bit 7 a 0)
	cp 0e0h		;881f
	ret nc			;8821
	res 7,(ix+00dh)		;8822   ; pone a cero el bit 7 de como se toca la pieza (bit 7: no se toca)
	ret			;8826
L_8827:
	ld a,(ix+004h)		;8827   ; junto al borde de su lado (y 0 arriba o 0xA8 abajo)
	cp 040h		;882a
	ld b,000h		;882c
	jr c,L_8832		;882e
	ld b,0a8h		;8830
L_8832:
	ld (ix+004h),b		;8832
	ld (ix+007h),08eh		;8835   ; el dibujo 0x8E, 1 x 4
	ld (ix+009h),001h		;8839
	ld (ix+00ah),004h		;883d
	jp L_8221		;8841   ; al bufer (p02:8221)
L_8844:
	ld (ix+009h),004h		;8844   ; 4 x 1 caracteres, sin tocar (IX+0D 0x80), 4 cuadros
	ld (ix+00ah),001h		;8848   ; las columnas de la pieza = 0x01
	ld (ix+012h),08fh		;884c   ; las marcas de la pieza = 0x8F
	ld (ix+00dh),080h		;8850   ; como se toca la pieza (bit 7: no se toca) = 0x80
	ld (ix+014h),004h		;8854
	ld (ix+007h),000h		;8858   ; el dibujo de la pieza = 0x00
	call 05905h		;885c   ; el sonido 0x37
	ret			;885f
L_8860:
	call L_8883		;8860   ; cambia de dibujo cada 4 cuadros (p02:8883) y por el paso
	ld a,(ix+001h)		;8863   ; lee el paso de la pieza
	call 04093h		;8866   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8869: 2 destinos del despachador p00:4093 (call en p02:8866, el
;   indice en A): 886D, 8894; lo leen p02:8866 (4 bytes)
;   0x8869..0x886d  (4 bytes)
DATA_tabla_8869:
	defw 0886dh,08894h	; 8869  -> L_886D L_8894

; ======================================================================
; CODIGO 0x886d..0x88c4  (87 bytes)
; ======================================================================


L_886D:
	inc (ix+00ah)		;886d   ; paso 0: crece (IX+0A + 1) y va 8 a la izquierda hasta la x 8
	ld a,(ix+006h)		;8870   ; lee la x de la pieza
	sub 008h		;8873
	ld (ix+006h),a		;8875   ; guarda la x de la pieza
	cp 008h		;8878
	ret nc			;887a
	ld (ix+006h),001h		;887b   ; la x de la pieza = 0x01
	inc (ix+001h)		;887f   ; suma 1 a el paso de la pieza
	ret			;8882
L_8883:
	dec (ix+014h)		;8883   ; cada 4 cuadros, el dibujo par o impar
	ret nz			;8886
	ld (ix+014h),004h		;8887
	ld a,001h		;888b
	xor (ix+007h)		;888d   ; XOR con el dibujo de la pieza
	ld (ix+007h),a		;8890   ; guarda el dibujo de la pieza
	ret			;8893
L_8894:
	dec (ix+00ah)		;8894   ; paso 1: decrece y se acaba
	ret nz			;8897
	call L_8294		;8898
	ret			;889b
L_889C:
	ld h,(ix+006h)		;889c   ; su dibujo en el bufer: 4 filas de IX+0A caracteres de 0x88C4 (o 0x88C5)
	ld l,(ix+004h)		;889f
	call 04a46h		;88a2   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld b,004h		;88a5
L_88A7:
	push hl			;88a7   ; una fila: IX+0A caracteres de 0x88C4 (de 0x88C5 con IX+07)
	push bc			;88a8
	ld c,(ix+00ah)		;88a9
	ld b,000h		;88ac
	ld de,088c4h		;88ae
	ld a,(ix+007h)		;88b1
	or a			;88b4
	jr z,L_88B8		;88b5
	inc de			;88b7
L_88B8:
	ex de,hl			;88b8   ; copiados al bufer
	ldir		;88b9
	pop bc			;88bb
	pop hl			;88bc
	ld de,00040h		;88bd   ; la fila siguiente del bufer (0x40)
	add hl,de			;88c0
	djnz L_88A7		;88c1   ; las 4 filas
	ret			;88c3

; ----------------------------------------------------------------------
; DATOS leido_88C4: 33 bytes que lee p02:88B9 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p02:88B9 (33 bytes)
;   0x88c4..0x88e5  (33 bytes)
DATA_leido_88C4:
	defb 0e0h,0e1h,0e2h,0e0h,0e1h,0e2h,0e0h,0e1h,0e1h,0e2h,0e0h,0e1h,0e2h,0e0h,0e1h,0e2h	; 88c4  ................
	defb 0e2h,0e0h,0e1h,0e2h,0e0h,0e1h,0e2h,0e0h,0e0h,0e1h,0e2h,0e0h,0e1h,0e2h,0e0h,0e1h	; 88d4  ................
	defb 0e0h	; 88e4

; ======================================================================
; CODIGO 0x88e5..0x891f  (58 bytes)
; ======================================================================


L_88E5:
	ld a,008h		;88e5   ; el sitio del centro (y + 8, x + 8) para p01:7FBD
	add a,(ix+006h)		;88e7   ; le suma la x del enemigo
	ld h,a			;88ea
	ld a,008h		;88eb
	add a,(ix+004h)		;88ed   ; le suma la y del enemigo
	ld l,a			;88f0
	jp 07fbdh		;88f1
L_88F4:
	ld a,(ix+004h)		;88f4   ; sale de su lado: de abajo (y desde 0x60) o de arriba
	cp 060h		;88f7
	ld a,001h		;88f9
	ld b,0a8h		;88fb
	jr nc,L_8902		;88fd
	xor a			;88ff
	ld b,0bch		;8900
L_8902:
	ld (ix+01fh),a		;8902   ; el lado (IX+1F) y su dibujo final (IX+24)
	ld (ix+024h),b		;8905
	ld (ix+010h),018h		;8908   ; IX+10 = 0x18, espera 2, el dibujo 0x8C, un sprite
	ld (ix+002h),002h		;890c   ; la cuenta del enemigo = 0x02
	ld (ix+030h),08ch		;8910   ; el dibujo del primer sprite del enemigo = 0x8C
	ld (ix+00bh),001h		;8914   ; los sprites del enemigo (bits 0-5; bit 6 de caracteres, bit 7 con sprites) = 0x01
	ret			;8918
L_8919:
	ld a,(ix+001h)		;8919   ; por el paso IX+1 (tabla de detras)
	call 04093h		;891c   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_891F: 9 destinos del despachador p00:4093 (call en p02:891C, el
;   indice en A): 895D, 8939, 894D, 8979, 897F, 89B9, 89DC, 8939, 8A08; lo
;   leen p02:891C (18 bytes)
;   0x891f..0x8931  (18 bytes)
DATA_tabla_891F:
	defw 0895dh,08939h,0894dh,08979h,0897fh,089b9h,089dch,08939h	; 891f
	defw 08a08h	; 892f  -> L_8A08

; ======================================================================
; CODIGO 0x8931..0x8a46  (277 bytes)
; ======================================================================


L_8931:
	ld (ix+002h),002h		;8931   ; la espera 2 y al paso siguiente
L_8935:
	inc (ix+001h)		;8935   ; suma 1 a el paso del enemigo
	ret			;8938
L_8939:
	ld a,(ix+030h)		;8939   ; parpadea entre los dibujos 0x8C y 0x90
	and 00fh		;893c
	ld a,090h		;893e
	jr nz,L_8944		;8940
	ld a,08ch		;8942
L_8944:
	ld (ix+030h),a		;8944   ; guarda el dibujo del primer sprite del enemigo
	dec (ix+002h)		;8947   ; resta 1 a la cuenta del enemigo
	ret nz			;894a
	jr L_8935		;894b
L_894D:
	ld a,(ix+024h)		;894d   ; el dibujo final, color 0x0B
	ld (ix+030h),a		;8950   ; guarda el dibujo del primer sprite del enemigo
	ld (ix+031h),00bh		;8953   ; el color del primer sprite del enemigo = 0x0B
	ld (ix+010h),00bh		;8957   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x0B
	jr L_8931		;895b
L_895D:
	ld a,(ix+006h)		;895d   ; espera a que la nave este a 0x20 de el en x
	cp 020h		;8960
	jr c,L_896F		;8962
	ld b,a			;8964
	ld a,(0e606h)		;8965   ; lee la x de la nave
	sub 020h		;8968
	jr nc,L_896D		;896a
	xor a			;896c
L_896D:
	cp b			;896d
	ret c			;896e
L_896F:
	ld (ix+00bh),081h		;896f   ; se ve (IX+0B = 0x81)
	ld (ix+002h),004h		;8973   ; la cuenta del enemigo = 0x04
	jr L_8935		;8977
L_8979:
	ld (ix+031h),00bh		;8979   ; el color del primer sprite del enemigo = 0x0B
	jr L_8931		;897d
L_897F:
	dec (ix+002h)		;897f   ; sale disparado: la velocidad hacia su lado...
	ret nz			;8982
	ld (ix+002h),004h		;8983   ; la cuenta del enemigo = 0x04
	call L_89FF		;8987   ; el dibujo siguiente (IX+30 + 4)
	ld (ix+002h),00fh		;898a   ; la cuenta del enemigo = 0x0F
	ld (ix+010h),007h		;898e   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x07
	ld a,(ix+01fh)		;8992
	or a			;8995
	ld hl,0fbc0h		;8996
	jr nz,L_899E		;8999
	ld hl,00440h		;899b
L_899E:
	ld de,00200h		;899e
	call 078d7h		;89a1
	ld a,(ix+01fh)		;89a4   ; ...y una aceleracion contraria
	or a			;89a7
	ld de,00030h		;89a8
	jr nz,L_89B0		;89ab
	ld de,0ffd0h		;89ad
L_89B0:
	ld hl,00000h		;89b0
	call 07f0ah		;89b3
	jp L_8935		;89b6
L_89B9:
	call L_89E9		;89b9   ; vuela: acelera y se mueve
	call 07f1ch		;89bc   ; la velocidad en y += la aceleracion (p01:7F1C)
	call 07f2fh		;89bf   ; la velocidad en x += la aceleracion (p01:7F2F)
	ld a,(ix+004h)		;89c2   ; hasta el borde o hasta tocar el decorado
	cp 008h		;89c5
	jr c,L_89D1		;89c7
	cp 098h		;89c9
	jr nc,L_89D1		;89cb
	call L_88E5		;89cd   ; el sitio del centro (y + 8, x + 8) para p01:7FBD
	ret nc			;89d0
L_89D1:
	ld (ix+002h),004h		;89d1   ; la cuenta del enemigo = 0x04
	ld (ix+010h),00bh		;89d5   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x0B
	jp L_8935		;89d9
L_89DC:
	dec (ix+002h)		;89dc   ; se para y vuelve a esperar a la nave
	ret nz			;89df
	call L_89FF		;89e0   ; el dibujo siguiente (IX+30 + 4)
	ld (ix+010h),018h		;89e3   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x18
	jr L_896F		;89e7
L_89E9:
	ld a,(ix+030h)		;89e9   ; lee el dibujo del primer sprite del enemigo
	cp 0b4h		;89ec
	ret z			;89ee
	cp 0c8h		;89ef
	ret z			;89f1
	ld a,(ix+002h)		;89f2   ; lee la cuenta del enemigo
	or a			;89f5
	ret z			;89f6
	dec (ix+002h)		;89f7   ; resta 1 a la cuenta del enemigo
	ret nz			;89fa
	ld (ix+002h),004h		;89fb   ; la cuenta del enemigo = 0x04
L_89FF:
	ld a,(ix+030h)		;89ff   ; el dibujo siguiente (IX+30 + 4)
	add a,004h		;8a02
	ld (ix+030h),a		;8a04   ; guarda el dibujo del primer sprite del enemigo
	ret			;8a07
L_8A08:
	ld (ix+00bh),000h		;8a08   ; se acaba y se quita
	call 075d1h		;8a0c   ; se quita el enemigo: uno menos (0xE462) (p01:75D1)
	ret			;8a0f
L_8A10:
	ld (ix+00dh),080h		;8a10   ; un muro que crece: sin tocar (IX+0D 0x80), IX+12 = 0x8A
	ld (ix+012h),08ah		;8a14   ; las marcas de la pieza = 0x8A
L_8A18:
	ld a,(ix+00bh)		;8a18   ; su tamano y dibujo por IX+0B: 4 x 0x8E, 2 x 0x8A u 8 x 0x8A
	or a			;8a1b
	ld bc,0048eh		;8a1c
	jr z,L_8A2A		;8a1f
	ld bc,0028ah		;8a21
	dec a			;8a24
	jr z,L_8A2A		;8a25
	ld bc,0088ah		;8a27
L_8A2A:
	ld (ix+00ah),b		;8a2a   ; alto (IX+0A) y dibujo (IX+7)
	ld (ix+007h),c		;8a2d   ; guarda el dibujo de la pieza
	ld (ix+009h),001h		;8a30   ; una fila, 0x13 pasos
	ld (ix+014h),013h		;8a34
	ld a,b			;8a38   ; la espera: alto x 8
	add a,a			;8a39
	add a,a			;8a3a
	add a,a			;8a3b
	ld (ix+002h),a		;8a3c   ; guarda la cuenta de la pieza
	ret			;8a3f
L_8A40:
	ld a,(ix+001h)		;8a40   ; por el paso IX+1 (tabla de detras)
	call 04093h		;8a43   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8A46: 3 destinos del despachador p00:4093 (call en p02:8A43, el
;   indice en A): 8A4C, 8A5E, 8A75; lo leen p02:8A43 (6 bytes)
;   0x8a46..0x8a4c  (6 bytes)
DATA_tabla_8A46:
	defw 08a4ch,08a5eh,08a75h	; 8a46  -> L_8A4C L_8A5E L_8A75

; ======================================================================
; CODIGO 0x8a4c..0x8af0  (164 bytes)
; ======================================================================


L_8A4C:
	dec (ix+002h)		;8a4c   ; paso 0: espera, se pinta (bit 0 de IX+12) y el sonido 0x37
	ret nz			;8a4f
	set 0,(ix+012h)		;8a50   ; pone a uno el bit 0 de las marcas de la pieza
	ld (ix+002h),001h		;8a54   ; la cuenta de la pieza = 0x01
	inc (ix+001h)		;8a58   ; suma 1 a el paso de la pieza
	jp 05905h		;8a5b   ; sonido_37: pide el sonido 0x37
L_8A5E:
	dec (ix+002h)		;8a5e   ; paso 1: crece una fila por cuadro (IX+9), 0x13 veces
	ret nz			;8a61
	ld (ix+002h),001h		;8a62   ; la cuenta de la pieza = 0x01
	inc (ix+009h)		;8a66   ; suma 1 a las filas de la pieza
	dec (ix+014h)		;8a69
	ret nz			;8a6c
	ld (ix+014h),013h		;8a6d
	inc (ix+001h)		;8a71   ; suma 1 a el paso de la pieza
	ret			;8a74
L_8A75:
	dec (ix+002h)		;8a75   ; paso 2: baja 8 y mengua
	ret nz			;8a78
	ld (ix+002h),001h		;8a79   ; la cuenta de la pieza = 0x01
	ld a,008h		;8a7d
	add a,(ix+004h)		;8a7f   ; le suma la y de la pieza
	ld (ix+004h),a		;8a82   ; guarda la y de la pieza
	dec (ix+009h)		;8a85   ; resta 1 a las filas de la pieza
	dec (ix+014h)		;8a88
	ret nz			;8a8b
	ld (ix+004h),008h		;8a8c   ; acabado: vuelve a empezar desde la y 8
	res 0,(ix+012h)		;8a90   ; pone a cero el bit 0 de las marcas de la pieza
	call L_8A18		;8a94   ; su tamano y dibujo por IX+0B: 4 x 0x8E, 2 x 0x8A u 8 x 0x8A
	ld (ix+001h),000h		;8a97   ; el paso de la pieza = 0x00
	ret			;8a9b
L_8A9C:
	ld a,(ix+009h)		;8a9c   ; su dibujo en el bufer: IX+9 filas
	or a			;8a9f
	ret z			;8aa0
	ld h,(ix+006h)		;8aa1
	ld l,(ix+004h)		;8aa4
	bit 6,(ix+012h)		;8aa7   ; con el bit 6 de IX+12, una fila mas arriba
	push af			;8aab
	call z,04a46h		;8aac   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	pop af			;8aaf
	call nz,L_8281		;8ab0   ; su sitio en el bufer (IX+4, IX+6); con el bit 6 de IX+12, una fila mas arriba
	ex de,hl			;8ab3
	ld b,(ix+009h)		;8ab4
	ld a,(ix+001h)		;8ab7   ; en el paso 2, o con las columnas pares...
	cp 002h		;8aba
	jr z,L_8AC2		;8abc
	ld a,b			;8abe
	rra			;8abf
	jr c,L_8AD0		;8ac0
L_8AC2:
	ld a,(ix+00bh)		;8ac2   ; ...el borde (p02:8AF0 + 2 x IX+0B)...
	ld hl,08af0h		;8ac5
	call 04a5ah		;8ac8   ; lee_palabra: HL = la palabra A de la tabla HL
	call L_8ADF		;8acb   ; una fila de IX+0A caracteres al bufer y a la siguiente (0x40)
	dec b			;8ace
	ret z			;8acf
L_8AD0:
	ld a,(ix+00bh)		;8ad0   ; ...y el resto (p02:8AF6)
	ld hl,08af6h		;8ad3
	call 04a5ah		;8ad6   ; lee_palabra: HL = la palabra A de la tabla HL
	call L_8ADF		;8ad9   ; una fila de IX+0A caracteres al bufer y a la siguiente (0x40)
	djnz L_8AC2		;8adc
	ret			;8ade
L_8ADF:
	push de			;8adf   ; una fila de IX+0A caracteres al bufer y a la siguiente (0x40)
	push bc			;8ae0
	ld c,(ix+00ah)		;8ae1   ; IX+0A caracteres
	ld b,000h		;8ae4
	ldir		;8ae6
	pop bc			;8ae8
	pop de			;8ae9
	ld hl,00040h		;8aea   ; DE a la fila siguiente (+0x40)
	add hl,de			;8aed
	ex de,hl			;8aee
	ret			;8aef

; ----------------------------------------------------------------------
; DATOS tabla_8AF0: tabla que se lee desde HL = 0x8AF0 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:8AC5 (6 bytes)
;   0x8af0..0x8af6  (6 bytes)
DATA_tabla_8AF0:
	defb 0fch,08ah,004h,08bh,008h,08bh	; 8af0

; ----------------------------------------------------------------------
; DATOS tabla_8AF6: tabla que se lee desde HL = 0x8AF6 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:8AD3 (6 bytes)
;   0x8af6..0x8afc  (6 bytes)
DATA_tabla_8AF6:
	defb 000h,08bh,006h,08bh,010h,08bh	; 8af6

; ----------------------------------------------------------------------
; DATOS leido_8AFC: 12 bytes que lee p02:8AE6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p02:8AE6 (12 bytes)
;   0x8afc..0x8b08  (12 bytes)
DATA_leido_8AFC:
	defb 0d0h,0d1h,0d2h,0d3h,0d4h,0d5h,0d6h,0d7h,0d0h,0d3h,0d4h,0d7h	; 8afc  ............

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8b08..0x8b18  (16 bytes)
DATA_8B08:
	defb 0d0h,0d1h,0d2h,0d1h,0d2h,0d1h,0d2h,0d3h,0d4h,0d5h,0d6h,0d5h,0d6h,0d5h,0d6h,0d7h	; 8b08  ................

; ======================================================================
; CODIGO 0x8b18..0x8b35  (29 bytes)
; ======================================================================


L_8B18:
	ld de,0fe80h		;8b18   ; la velocidad en x a -0x180 y en y a cero
	call 078b3h		;8b1b   ; la velocidad en x (IX+9) (p01:78B3)
	call 078cdh		;8b1e
	ld a,(ix+01fh)		;8b21   ; con IX+1F = 0x0F, el color 8
	cp 00fh		;8b24
	ret nz			;8b26
	ld (ix+031h),008h		;8b27   ; el color del primer sprite del enemigo = 0x08
	ret			;8b2b
L_8B2C:
	call L_8B70		;8b2c   ; la animacion (p02:8B70) y por el paso IX+1
	ld a,(ix+001h)		;8b2f   ; lee el paso del enemigo
	call 04093h		;8b32   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8B35: 4 destinos del despachador p00:4093 (call en p02:8B32, el
;   indice en A): 8B3D, 8B59, 8B6F, 8B6F; lo leen p02:8B32 (8 bytes)
;   0x8b35..0x8b3d  (8 bytes)
DATA_tabla_8B35:
	defw 08b3dh,08b59h,08b6fh,08b6fh	; 8b35  -> L_8B3D L_8B59 L_8B6F L_8B6F

; ======================================================================
; CODIGO 0x8b3d..0x8b7a  (61 bytes)
; ======================================================================


L_8B3D:
	ld a,(0e606h)		;8b3d   ; paso 0: espera a que la nave se acerque en x (a 0x20)
	add a,040h		;8b40
	cp (ix+006h)		;8b42   ; compara con la x del enemigo
	ret c			;8b45
	sub 020h		;8b46
	cp (ix+006h)		;8b48   ; compara con la x del enemigo
	ret c			;8b4b
	inc (ix+001h)		;8b4c   ; va hacia la nave (p01:7865 con el paso 0x28) 8 cuadros
L_8B4F:
	ld a,028h		;8b4f
	call 07865h		;8b51   ; apunta a la nave: la velocidad en y en IX+7 y en x en IX+9 (p01:7865)
	ld (ix+002h),008h		;8b54   ; la cuenta del enemigo = 0x08
	ret			;8b58
L_8B59:
	dec (ix+002h)		;8b59   ; paso 1: cada 8 cuadros apunta otra vez (p01:7865); si la x de la nave + 0x20 queda por debajo de la suya, p02:8B18 y al paso 0
	jr z,L_8B4F		;8b5c
	ld a,(0e606h)		;8b5e   ; lee la x de la nave
	add a,020h		;8b61
	cp (ix+006h)		;8b63   ; compara con la x del enemigo
	ret nc			;8b66
	call L_8B18		;8b67   ; la velocidad en x a -0x180 y en y a cero
	ld (ix+001h),000h		;8b6a   ; el paso del enemigo = 0x00
	ret			;8b6e
L_8B6F:
	ret			;8b6f
L_8B70:
	ld bc,00702h		;8b70   ; cada 2 cuadros, el dibujo siguiente de los 7 de 0x8B7A
	ld hl,08b7ah		;8b73
	call 07f7ch		;8b76   ; cada B cuadros, el dibujo siguiente de los C de la tabla HL (IX+26) en IX+30 y IX+32 (p01:7F7C)
	ret			;8b79

; ----------------------------------------------------------------------
; DATOS leido_8B7A: 2 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (2 bytes)
;   0x8b7a..0x8b7c  (2 bytes)
DATA_leido_8B7A:
	defb 0a0h,0a4h	; 8b7a

; ======================================================================
; CODIGO 0x8b7c..0x8ba3  (39 bytes)
; ======================================================================


L_8B7C:
	ld (ix+001h),000h		;8b7c   ; empieza a la derecha (x 0xF0), parado 0x28 cuadros
	ld (ix+010h),00fh		;8b80   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x0F
	ld (ix+002h),028h		;8b84   ; la cuenta del enemigo = 0x28
	ld (ix+006h),0f0h		;8b88   ; la x del enemigo = 0xF0
	ld a,(ix+00ch)		;8b8c   ; con IX+0C, el color 8
	or a			;8b8f
	jr z,L_8B96		;8b90
	ld (ix+031h),008h		;8b92   ; el color del primer sprite del enemigo = 0x08
L_8B96:
	call 078c8h		;8b96
L_8B99:
	ret			;8b99
L_8B9A:
	call L_8B70		;8b9a   ; la animacion y por el paso IX+1
	ld a,(ix+001h)		;8b9d   ; lee el paso del enemigo
	call 04093h		;8ba0   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8BA3: 4 destinos del despachador p00:4093 (call en p02:8BA0, el
;   indice en A): 8BAB, 8BC1, 8BD6, 8BDB; lo leen p02:8BA0 (8 bytes)
;   0x8ba3..0x8bab  (8 bytes)
DATA_tabla_8BA3:
	defw 08babh,08bc1h,08bd6h,08bdbh	; 8ba3  -> L_8BAB L_8BC1 L_8BD6 L_8BDB

; ======================================================================
; CODIGO 0x8bab..0x8be7  (60 bytes)
; ======================================================================


L_8BAB:
	call 078c8h		;8bab   ; paso 0: quieto hasta que acabe la espera
	dec (ix+002h)		;8bae   ; resta 1 a la cuenta del enemigo
	ret nz			;8bb1
	res 3,(ix+010h)		;8bb2   ; ya no va con el scroll (bit 3 de IX+10) y 0x20 cuadros
	ld (ix+002h),020h		;8bb6   ; la cuenta del enemigo = 0x20
	call L_8BDC		;8bba   ; un movimiento al azar (p02:8BDC)
L_8BBD:
	inc (ix+001h)		;8bbd   ; suma 1 a el paso del enemigo
	ret			;8bc0
L_8BC1:
	dec (ix+002h)		;8bc1   ; paso 1: espera; con la x por debajo de 0x80 vuelve atras
	ret nz			;8bc4
	ld a,(ix+006h)		;8bc5   ; lee la x del enemigo
	cp 080h		;8bc8
	jr nc,L_8BCE		;8bca
	jr L_8BBD		;8bcc
L_8BCE:
	ld (ix+002h),001h		;8bce   ; la cuenta del enemigo = 0x01
	dec (ix+001h)		;8bd2   ; resta 1 a el paso del enemigo
	ret			;8bd5
L_8BD6:
	call L_8B4F		;8bd6   ; paso 2: hacia la nave
	jr L_8BBD		;8bd9
L_8BDB:
	ret			;8bdb
L_8BDC:
	call 0565ah		;8bdc   ; una de las 8 velocidades de 0x8BE7, al azar
	and 007h		;8bdf
	ld hl,08be7h		;8be1
	jp 06e40h		;8be4

; ----------------------------------------------------------------------
; DATOS leido_8BE7: 32 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (32 bytes)
;   0x8be7..0x8c07  (32 bytes)
DATA_leido_8BE7:
	defb 080h,0feh,000h,0ffh,080h,0feh,000h,001h,080h,0ffh,000h,0ffh,080h,0ffh,000h,001h	; 8be7  ................
	defb 080h,000h,000h,0ffh,080h,000h,000h,001h,080h,000h,000h,000h,080h,0feh,000h,000h	; 8bf7  ................

; ======================================================================
; CODIGO 0x8c07..0x8c52  (75 bytes)
; ======================================================================


L_8C07:
	ld (ix+008h),005h		;8c07   ; 5 vidas, 0x20 cuadros, sin tocar, 4 puntos
	ld (ix+002h),020h		;8c0b   ; la cuenta de la pieza = 0x20
	ld (ix+00dh),080h		;8c0f   ; como se toca la pieza (bit 7: no se toca) = 0x80
	ld (ix+00ch),004h		;8c13
	ld (ix+012h),001h		;8c17   ; las marcas de la pieza = 0x01
	ld (ix+018h),008h		;8c1b
	ld hl,0e364h		;8c1f   ; el dibujo: 0x60, o 0x7A con el scroll alto (0xE364)...
	ld d,060h		;8c22
	ld a,(hl)			;8c24
	or a			;8c25
	jr z,L_8C2A		;8c26
	ld d,07ah		;8c28
L_8C2A:
	ld a,(ix+000h)		;8c2a   ; ...+8 si no es el 0x26...
	cp 026h		;8c2d
	ld b,000h		;8c2f
	jr z,L_8C35		;8c31
	ld b,008h		;8c33
L_8C35:
	ld a,(ix+00bh)		;8c35   ; ...+2 x IX+0B
	ld c,a			;8c38
	add a,a			;8c39
	add a,d			;8c3a
	add a,b			;8c3b
	ld (ix+007h),a		;8c3c   ; guarda el dibujo de la pieza
	ld a,c			;8c3f   ; y su tamano de la tabla de 0x8C52
	add a,a			;8c40
	ld hl,08c52h		;8c41
	call 04089h		;8c44   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;8c47
	inc hl			;8c48
	ld h,(hl)			;8c49
	ld l,a			;8c4a
	ld (ix+009h),l		;8c4b   ; guarda las filas de la pieza
	ld (ix+00ah),h		;8c4e   ; guarda las columnas de la pieza
	ret			;8c51

; ----------------------------------------------------------------------
; DATOS tabla_8C52: tabla que se lee desde HL = 0x8C52 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:8C41 (1 bytes)
;   0x8c52..0x8c53  (1 bytes)
DATA_tabla_8C52:
	defb 005h	; 8c52

; ----------------------------------------------------------------------
; DATOS leido_8C53: 5 bytes que leen p02:8C49, p02:8C47 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p02:8C49, p02:8C47 (5 bytes)
;   0x8c53..0x8c58  (5 bytes)
DATA_leido_8C53:
	defb 007h,005h,007h,002h,008h	; 8c53

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8c58..0x8c5a  (2 bytes)
DATA_8C58:
	defb 002h,008h	; 8c58

; ======================================================================
; CODIGO 0x8c5a..0x8c75  (27 bytes)
; ======================================================================


L_8C5A:
	add a,(ix+007h)		;8c5a   ; el dibujo + A; con la x desde 0xC0...
L_8C5D:
	ld (ix+007h),a		;8c5d   ; guarda el dibujo de la pieza
	ld b,a			;8c60
	ld a,(ix+006h)		;8c61   ; lee la x de la pieza
	cp 0c0h		;8c64
	ret nc			;8c66
	ld a,b			;8c67   ; ...las vidas segun el dibujo (tabla de 0x8C75)
	sub 060h		;8c68
	ld hl,08c75h		;8c6a
	call 04089h		;8c6d   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;8c70
	ld (ix+00dh),a		;8c71   ; guarda como se toca la pieza (bit 7: no se toca)
	ret			;8c74

; ----------------------------------------------------------------------
; DATOS tabla_8C75: tabla que se lee desde HL = 0x8C75 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:8C6A (42 bytes)
;   0x8c75..0x8c9f  (42 bytes)
DATA_tabla_8C75:
	defb 080h,001h,080h,002h,080h,005h,080h,006h,080h,003h,080h,004h,080h,007h,080h,008h	; 8c75  ................
	defb 080h,001h,080h,080h,002h,080h,003h,080h,080h,004h,080h,001h,080h,002h,080h,005h	; 8c85  ................
	defb 080h,006h,080h,003h,080h,004h,080h,007h,080h,008h	; 8c95  ..........

; ======================================================================
; CODIGO 0x8c9f..0x8ca5  (6 bytes)
; ======================================================================


L_8C9F:
	ld a,(ix+001h)		;8c9f   ; por el paso IX+1 (tabla de detras)
	call 04093h		;8ca2   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8CA5: 3 destinos del despachador p00:4093 (call en p02:8CA2, el
;   indice en A): 8CAB, 8CC0, 8D70; lo leen p02:8CA2 (6 bytes)
;   0x8ca5..0x8cab  (6 bytes)
DATA_tabla_8CA5:
	defw 08cabh,08cc0h,08d70h	; 8ca5  -> L_8CAB L_8CC0 L_8D70

; ======================================================================
; CODIGO 0x8cab..0x8d1e  (115 bytes)
; ======================================================================


L_8CAB:
	dec (ix+002h)		;8cab   ; paso 0: espera 0x30 cuadros, abre (dibujo + 1)
	ret nz			;8cae
	ld (ix+002h),030h		;8caf   ; la cuenta de la pieza = 0x30
	ld a,001h		;8cb3
	call L_8C5A		;8cb5
	xor a			;8cb8   ; 0xE482 = 0
	ld (0e482h),a		;8cb9
	inc (ix+001h)		;8cbc   ; suma 1 a el paso de la pieza
	ret			;8cbf
L_8CC0:
	ld a,(ix+000h)		;8cc0   ; paso 1: el 0x27 espera a IX+14
	cp 027h		;8cc3
	jr nz,L_8CCC		;8cc5
	ld a,(ix+014h)		;8cc7
	or a			;8cca
	ret nz			;8ccb
L_8CCC:
	dec (ix+002h)		;8ccc   ; al acabar la espera, cierra (dibujo - 1) y vuelta al paso 0
	jr nz,L_8CE7		;8ccf
	ld a,0ffh		;8cd1
	call L_8C5A		;8cd3
L_8CD6:
	ld (ix+002h),020h		;8cd6   ; la cuenta de la pieza = 0x20
	ld (ix+018h),008h		;8cda
	ld (ix+00ch),004h		;8cde
	ld (ix+001h),000h		;8ce2   ; el paso de la pieza = 0x00
	ret			;8ce6
L_8CE7:
	ld a,(ix+00ch)		;8ce7   ; mientras le queden disparos (IX+0C), cada 8 cuadros...
	or a			;8cea
	ret z			;8ceb
	dec (ix+018h)		;8cec
	ret nz			;8cef
	ld (ix+018h),008h		;8cf0
	dec (ix+00ch)		;8cf4
	ld a,(ix+006h)		;8cf7   ; ...(si se ve) dispara desde la boca de su dibujo (tabla de 0x8D1E)
	cp 0c8h		;8cfa
	ret nc			;8cfc
	ld a,(ix+007h)		;8cfd   ; lee el dibujo de la pieza
	sub 061h		;8d00
	add a,a			;8d02
	ld hl,08d1eh		;8d03
	call 04089h		;8d06   ; suma_a_hl: HL = HL + A
	ld c,(hl)			;8d09
	inc hl			;8d0a
	ld b,(hl)			;8d0b
	ld a,(ix+006h)		;8d0c   ; lee la x de la pieza
	add a,b			;8d0f
	ld d,a			;8d10
	ld a,(ix+004h)		;8d11   ; lee la y de la pieza
	add a,c			;8d14
	ld e,a			;8d15
	ld c,000h		;8d16
	ld a,024h		;8d18   ; una bala 0x24
	call 07647h		;8d1a   ; una aparicion en una ficha libre, guardando IX (p01:7647)
	ret			;8d1d

; ----------------------------------------------------------------------
; DATOS tabla_8D1E: tabla que se lee desde HL = 0x8D1E con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:8D03 (1 bytes)
;   0x8d1e..0x8d1f  (1 bytes)
DATA_tabla_8D1E:
	defb 010h	; 8d1e

; ----------------------------------------------------------------------
; DATOS leido_8D1F: 69 bytes que leen p02:8D0B, p02:8D09 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 44 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p02:8D0B, p02:8D09 (69 bytes)
;   0x8d1f..0x8d64  (69 bytes)
DATA_leido_8D1F:
	defb 000h,000h,000h,010h,028h,000h,000h,0f8h,008h,000h,000h,0f8h,028h,000h,000h,00ch	; 8d1f  ....(.......(...
	defb 000h,000h,000h,00ch,028h,000h,000h,010h,004h,000h,000h,010h,030h,000h,000h,010h	; 8d2f  ....(.......0...
	defb 000h,000h,000h,000h,000h,010h,028h,000h,000h,00ch,000h,000h,000h,000h,000h,00ch	; 8d3f  ......(.........
	defb 028h,000h,000h,010h,000h,000h,000h,010h,028h,000h,000h,0f8h,008h,000h,000h,0f8h	; 8d4f  (.......(.......
	defb 028h,000h,000h,00ch,000h	; 8d5f

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8d64..0x8d70  (12 bytes)
DATA_8D64:
	defb 000h,000h,00ch,028h,000h,000h,010h,004h,000h,000h,010h,030h	; 8d64  ...(.......0

; ======================================================================
; CODIGO 0x8d70..0x8dd4  (100 bytes)
; ======================================================================


L_8D70:
	dec (ix+002h)		;8d70   ; espera, cierra y vuelve al paso anterior
	ret nz			;8d73
	ld (ix+002h),020h		;8d74   ; la cuenta de la pieza = 0x20
	ld a,0ffh		;8d78
	call L_8C5A		;8d7a
	dec (ix+001h)		;8d7d   ; resta 1 a el paso de la pieza
	ret			;8d80
L_8D81:
	ld a,070h		;8d81   ; hacia la nave con el paso 0x70
	call 07865h		;8d83   ; apunta a la nave: la velocidad en y en IX+7 y en x en IX+9 (p01:7865)
L_8D86:
	ret			;8d86
L_8D87:
	ld hl,0e4d1h		;8d87   ; 0xE4D1 + 1
	inc (hl)			;8d8a
	ld (ix+008h),005h		;8d8b   ; 5 vidas, sin tocar, 5 x 7 caracteres, se pinta
	ld (ix+00dh),080h		;8d8f   ; como se toca la pieza (bit 7: no se toca) = 0x80
	ld (ix+009h),005h		;8d93   ; las filas de la pieza = 0x05
	ld (ix+00ah),007h		;8d97   ; las columnas de la pieza = 0x07
	ld (ix+012h),001h		;8d9b   ; las marcas de la pieza = 0x01
	ld (ix+016h),000h		;8d9f
	ld (ix+017h),000h		;8da3
	ld (ix+014h),000h		;8da7
	ld (ix+002h),020h		;8dab   ; 0x20 cuadros, 4 disparos
	ld (ix+018h),008h		;8daf
	ld (ix+00ch),004h		;8db3
	ld a,(ix+00bh)		;8db7   ; el dibujo 0x70 o 0x75 segun IX+0B
	or a			;8dba
	ld a,070h		;8dbb
	jr z,L_8DC1		;8dbd
	ld a,075h		;8dbf
L_8DC1:
	ld (ix+007h),a		;8dc1   ; guarda el dibujo de la pieza
	ret			;8dc4
L_8DC5:
	call L_8C9F		;8dc5   ; abre y cierra (p02:8C9F) y, si se ve, por su paso IX+14
	ld a,(ix+006h)		;8dc8   ; lee la x de la pieza
	cp 0c8h		;8dcb
	ret nc			;8dcd
	ld a,(ix+014h)		;8dce
	call 04093h		;8dd1   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8DD4: 2 destinos del despachador p00:4093 (call en p02:8DD1, el
;   indice en A): 8DD8, 8E08; lo leen p02:8DD1 (4 bytes)
;   0x8dd4..0x8dd8  (4 bytes)
DATA_tabla_8DD4:
	defw 08dd8h,08e08h	; 8dd4  -> L_8DD8 L_8E08

; ======================================================================
; CODIGO 0x8dd8..0x8e26  (78 bytes)
; ======================================================================


L_8DD8:
	ld a,(0e606h)		;8dd8   ; paso 0: espera a que la nave pase su x (+0x18), por un lado o por el otro segun IX+17
	ld c,a			;8ddb
	ld a,(ix+006h)		;8ddc   ; lee la x de la pieza
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
	call L_8CD6		;8df0   ; entonces cierra, 4 cuadros...
	ld (ix+015h),004h		;8df3
	ld a,(ix+00bh)		;8df7   ; ...el dibujo 0x72 o 0x77
	or a			;8dfa
	ld a,072h		;8dfb
	jr z,L_8E01		;8dfd
	ld a,077h		;8dff
L_8E01:
	call L_8C5D		;8e01
	inc (ix+014h)		;8e04
	ret			;8e07
L_8E08:
	dec (ix+015h)		;8e08   ; paso 1: al acabar, gira (dibujo +1 o -2) y cambia de lado
	ret nz			;8e0b
	ld a,(ix+017h)		;8e0c
	or a			;8e0f
	ld b,001h		;8e10
	jr z,L_8E16		;8e12
	ld b,0feh		;8e14
L_8E16:
	ld a,b			;8e16   ; el dibujo + 1 o - 2 (p02:8C5A)
	call L_8C5A		;8e17
	ld a,001h		;8e1a   ; IX+17 cambia: de 0 a 1 o de 1 a 0
	xor (ix+017h)		;8e1c
	ld (ix+017h),a		;8e1f
	dec (ix+014h)		;8e22   ; uno menos en IX+14
	ret			;8e25

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8e26..0x8e29  (3 bytes)
DATA_8E26:
	defb 001h,030h,030h	; 8e26

; ======================================================================
; CODIGO 0x8e29..0x8e7a  (81 bytes)
; ======================================================================


L_8E29:
	ld a,(0e604h)		;8e29   ; la nave dentro de C en y y B en x? IX+16 = 1
	sub (ix+004h)		;8e2c   ; le resta la y de la pieza
	jr nc,L_8E33		;8e2f
	neg		;8e31
L_8E33:
	cp c			;8e33
	jr nc,L_8E47		;8e34
	ld a,(0e606h)		;8e36   ; lee la x de la nave
	sub (ix+006h)		;8e39   ; le resta la x de la pieza
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
	ld hl,0e4d1h		;8e4c   ; 0xE4D1 + 1
	inc (hl)			;8e4f
	ld (ix+008h),005h		;8e50   ; 5 vidas, 0x20 cuadros, no se toca (IX+0D 0xFF), 4 disparos, 2 x 8 caracteres
	ld (ix+002h),020h		;8e54   ; la cuenta de la pieza = 0x20
	ld (ix+00dh),0ffh		;8e58   ; como se toca la pieza (bit 7: no se toca) = 0xFF
	ld (ix+00ch),004h		;8e5c
	ld (ix+009h),002h		;8e60   ; las filas de la pieza = 0x02
	ld (ix+00ah),008h		;8e64   ; las columnas de la pieza = 0x08
	ld (ix+012h),001h		;8e68   ; las marcas de la pieza = 0x01
	ld a,(ix+00bh)		;8e6c   ; el dibujo de 0x8E7A + IX+0B
	ld hl,08e7ah		;8e6f
	call 04089h		;8e72   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;8e75
	call L_8C5D		;8e76
	ret			;8e79

; ----------------------------------------------------------------------
; DATOS tabla_8E7A: tabla que se lee desde HL = 0x8E7A con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:8E6F (1 bytes)
;   0x8e7a..0x8e7b  (1 bytes)
DATA_tabla_8E7A:
	defb 07eh	; 8e7a

; ----------------------------------------------------------------------
; DATOS leido_8E7B: 3 bytes que lee p02:8E75 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p02:8E75 (3
;   bytes)
;   0x8e7b..0x8e7e  (3 bytes)
DATA_leido_8E7B:
	defb 080h,086h,088h	; 8e7b

; ======================================================================
; CODIGO 0x8e7e..0x8e84  (6 bytes)
; ======================================================================


L_8E7E:
	ld a,(ix+001h)		;8e7e   ; por el paso IX+1 (tabla de detras)
	call 04093h		;8e81   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8E84: 2 destinos del despachador p00:4093 (call en p02:8E81, el
;   indice en A): 8E88, 8EC8; lo leen p02:8E81 (4 bytes)
;   0x8e84..0x8e88  (4 bytes)
DATA_tabla_8E84:
	defw 08e88h,08ec8h	; 8e84  -> L_8E88 L_8EC8

; ======================================================================
; CODIGO 0x8e88..0x8ec0  (56 bytes)
; ======================================================================


L_8E88:
	ld a,(ix+006h)		;8e88   ; paso 0: si se ve (x por debajo de 0xC8) y la nave esta cerca (0x80 en y, 0x30 en x)...
	cp 0c8h		;8e8b
	ret nc			;8e8d
	ld bc,03080h		;8e8e
	call L_8E29		;8e91   ; la nave dentro de C en y y B en x? IX+16 = 1
	ret nc			;8e94
	ld (ix+002h),020h		;8e95   ; ...abre y dispara (p02:8EC0, la bala 0x25)
	ld a,001h		;8e99
	call L_8C5A		;8e9b
	inc (ix+001h)		;8e9e   ; suma 1 a el paso de la pieza
	ld a,(ix+00bh)		;8ea1   ; lee el B de la pieza
	add a,a			;8ea4
	ld hl,08ec0h		;8ea5
	call 04089h		;8ea8   ; suma_a_hl: HL = HL + A
	ld b,(hl)			;8eab
	inc hl			;8eac
	ld c,(hl)			;8ead
	ld a,(ix+006h)		;8eae   ; lee la x de la pieza
	add a,b			;8eb1
	ld d,a			;8eb2
	ld a,(ix+004h)		;8eb3   ; lee la y de la pieza
	add a,c			;8eb6
	ld e,a			;8eb7
	ld c,000h		;8eb8
	ld a,025h		;8eba
	call 07647h		;8ebc   ; una aparicion en una ficha libre, guardando IX (p01:7647)
	ret			;8ebf

; ----------------------------------------------------------------------
; DATOS tabla_8EC0: tabla que se lee desde HL = 0x8EC0 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:8EA5 (2 bytes)
;   0x8ec0..0x8ec2  (2 bytes)
DATA_tabla_8EC0:
	defb 00ch,0f8h	; 8ec0

; ----------------------------------------------------------------------
; DATOS leido_8EC2: 6 bytes que leen p02:8EAB, p02:8EAD al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 2 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p02:8EAB, p02:8EAD (6 bytes)
;   0x8ec2..0x8ec8  (6 bytes)
DATA_leido_8EC2:
	defb 02ch,0f8h,000h,010h,02ch,010h	; 8ec2

; ======================================================================
; CODIGO 0x8ec8..0x8fdd  (277 bytes)
; ======================================================================


L_8EC8:
	dec (ix+002h)		;8ec8   ; paso 1: espera, cierra y vuelve
	ret nz			;8ecb
	ld a,0ffh		;8ecc
	call L_8C5A		;8ece
	dec (ix+001h)		;8ed1   ; resta 1 a el paso de la pieza
	ret			;8ed4
L_8ED5:
	ld a,(ix+004h)		;8ed5   ; sale de su lado: IX+1F = 0 o 2
	cp 060h		;8ed8
	ld a,002h		;8eda
	jr c,L_8EDF		;8edc
	xor a			;8ede
L_8EDF:
	ld (ix+01fh),a		;8edf
	ld (ix+032h),0c2h		;8ee2   ; el caracter 0xC2, 1 x 1
	ld (ix+013h),001h		;8ee6
	ld (ix+014h),001h		;8eea
	ld (ix+010h),011h		;8eee   ; IX+10 = 0x11, 4 cuadros
	ld (ix+002h),004h		;8ef2   ; la cuenta del enemigo = 0x04
	ld (ix+024h),002h		;8ef6
	call 05912h		;8efa   ; el sonido 0x3A
L_8EFD:
	ret			;8efd
L_8EFE:
	call L_8F6F		;8efe   ; la animacion (p02:8F6F); si choca con el decorado (p02:8F55), se quita
	call L_8F55		;8f01   ; los caracteres del bufer bajo ella: alguno es decorado (mayor que el fondo)? C
	jp c,075d1h		;8f04
	dec (ix+002h)		;8f07   ; cada 4 cuadros avanza 8 hacia su lado
	ret nz			;8f0a
	ld (ix+002h),004h		;8f0b   ; la cuenta del enemigo = 0x04
	ld a,(ix+01fh)		;8f0f
	cp 002h		;8f12
	ld b,008h		;8f14
	jr nc,L_8F1A		;8f16
	ld b,0f8h		;8f18
L_8F1A:
	ld a,(ix+004h)		;8f1a   ; lee la y del enemigo
	add a,b			;8f1d
	ld (ix+004h),a		;8f1e   ; guarda la y del enemigo
	sub 0b0h		;8f21   ; fuera por los lados: se quita
	cp 040h		;8f23
	jp c,075d1h		;8f25
	ld a,(ix+006h)		;8f28   ; va 8 a la izquierda y crece dos columnas (IX+14 + 2, caja + 16)
	cp 008h		;8f2b
	jr c,L_8F45		;8f2d
	add a,0f8h		;8f2f
	ld (ix+006h),a		;8f31   ; guarda la x del enemigo
	ld a,(ix+014h)		;8f34
	add a,002h		;8f37
	ld (ix+014h),a		;8f39
	ld a,(ix+00fh)		;8f3c   ; lee el ancho del enemigo para los choques
	add a,010h		;8f3f
	ld (ix+00fh),a		;8f41   ; guarda el ancho del enemigo para los choques
	ret			;8f44
L_8F45:
	add a,c			;8f45   ; a la izquierda del todo: ...
	ld (ix+004h),a		;8f46   ; guarda la y del enemigo
	dec (ix+014h)		;8f49
	ld a,(ix+00fh)		;8f4c   ; lee el ancho del enemigo para los choques
	add a,008h		;8f4f
	ld (ix+00fh),a		;8f51   ; guarda el ancho del enemigo para los choques
	ret			;8f54
L_8F55:
	ld h,(ix+006h)		;8f55   ; los caracteres del bufer bajo ella: alguno es decorado (mayor que el fondo)? C
	ld l,(ix+004h)		;8f58   ; lee la y del enemigo
	call 04a46h		;8f5b   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld b,(ix+014h)		;8f5e
	ld a,(0e405h)		;8f61   ; lee el caracter del fondo de la fase
L_8F64:
	cp (hl)			;8f64
	ret c			;8f65
	inc hl			;8f66
	djnz L_8F64		;8f67
	ld a,(ix+006h)		;8f69   ; lee la x del enemigo
	cp 008h		;8f6c
	ret			;8f6e
L_8F6F:
	dec (ix+024h)		;8f6f   ; cada 2 cuadros cambia entre los caracteres 0xC2 y 0xC3
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
	bit 1,(ix+00bh)		;8f83   ; lo que deja en el decorado al morir: el dibujo 0x5D o 0x5F, 2 x 8
	ld hl,00802h		;8f87
	ld a,05dh		;8f8a
	jr z,L_8FB1		;8f8c
	ld a,05fh		;8f8e
	jr L_8FB1		;8f90
L_8F92:
	bit 0,(ix+00bh)		;8f92   ; 0xA2 o 0xA4, 5 x 8
	ld a,0a2h		;8f96
	ld hl,00805h		;8f98
	jr z,L_8FB0		;8f9b
	ld a,0a4h		;8f9d
	jr L_8FB0		;8f9f
L_8FA1:
	bit 1,(ix+00bh)		;8fa1   ; 0x5C o 0x5D, 5 x 8 (o 2 x 8)
	ld a,05ch		;8fa5
	ld hl,00805h		;8fa7
	jr z,L_8FB0		;8faa
	ld a,05dh		;8fac
	ld l,002h		;8fae
L_8FB0:
	add a,c			;8fb0   ; + C
L_8FB1:
	ld (ix+007h),a		;8fb1   ; al bufer (p02:8221) y el sonido 0x22
	ld (ix+009h),l		;8fb4
	ld (ix+00ah),h		;8fb7
	call L_8221		;8fba   ; el dibujo IX+7: su direccion en p08:B834 + 2 x dibujo
	jp 05880h		;8fbd   ; sonido_22: pide el sonido 0x22
L_8FC0:
	ld (ix+002h),002h		;8fc0   ; una explosion: 2 cuadros, IX+10 = 8, el color 0x0F
	ld (ix+01ch),000h		;8fc4
	ld (ix+010h),008h		;8fc8   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x08
	ld (ix+031h),00fh		;8fcc   ; el color del primer sprite del enemigo = 0x0F
	ret			;8fd0
L_8FD1:
	ld (ix+002h),002h		;8fd1   ; la cuenta del enemigo = 0x02
	xor a			;8fd5
	ld (ix+01ch),a		;8fd6
	ld (ix+010h),a		;8fd9   ; guarda las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll)
	ret			;8fdc

; ----------------------------------------------------------------------
; DATOS leido_8FDD: 6 bytes que leen p02:9013, p02:9018, p02:901D al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p02:9013, p02:9018, p02:901D
;   (6 bytes)
;   0x8fdd..0x8fe3  (6 bytes)
DATA_leido_8FDD:
	defb 004h,060h,005h,002h,0f8h,00fh	; 8fdd

; ----------------------------------------------------------------------
; DATOS tabla_8FE3: tabla que se lee desde HL = 0x8FE3 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:900A (1 bytes)
;   0x8fe3..0x8fe4  (1 bytes)
DATA_tabla_8FE3:
	defb 002h	; 8fe3

; ----------------------------------------------------------------------
; DATOS leido_8FE4: 11 bytes que leen p02:9018, p02:901D, p02:9013 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p02:9018, p02:901D, p02:9013
;   (11 bytes)
;   0x8fe4..0x8fef  (11 bytes)
DATA_leido_8FE4:
	defb 0fch,007h,004h,0ech,008h,002h,0f0h,00fh,002h,0f4h,00fh	; 8fe4  ...........

; ======================================================================
; CODIGO 0x8fef..0x9179  (394 bytes)
; ======================================================================


L_8FEF:
	ld b,000h		;8fef   ; la animacion de la explosion (B = 0 o 1: dos tablas, 0x8FDA o 0x8FE3)
	jr L_8FF5		;8ff1
L_8FF3:
	ld b,001h		;8ff3
L_8FF5:
	dec (ix+002h)		;8ff5   ; resta 1 a la cuenta del enemigo
	ret nz			;8ff8
	inc (ix+01ch)		;8ff9   ; el cuadro siguiente: 4 en total
	ld a,(ix+01ch)		;8ffc
	cp 004h		;8fff
	jr nc,L_9022		;9001
	rr b		;9003   ; de 3 en 3: la espera, el dibujo y el color
	ld hl,08fdah		;9005
	jr nc,L_900D		;9008
	ld hl,08fe3h		;900a
L_900D:
	ld b,a			;900d
	add a,a			;900e
	add a,b			;900f
	call 04089h		;9010   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;9013
	ld (ix+002h),a		;9014   ; guarda la cuenta del enemigo
	inc hl			;9017
	ld a,(hl)			;9018
	ld (ix+030h),a		;9019   ; guarda el dibujo del primer sprite del enemigo
	inc hl			;901c
	ld a,(hl)			;901d
	ld (ix+031h),a		;901e   ; guarda el color del primer sprite del enemigo
	ret			;9021
L_9022:
	xor a			;9022   ; acabada: se quita
	ld (ix+016h),a		;9023
	call 075d1h		;9026   ; se quita el enemigo: uno menos (0xE462) (p01:75D1)
	ld a,(ix+00ch)		;9029   ; si llevaba premio (IX+0C), una capsula (0x3D + premio, o la 0x47)
	or a			;902c
	ret z			;902d
	add a,03dh		;902e
	ld c,a			;9030
	ld a,(ix+004h)		;9031   ; lee la y del enemigo
	and 0f8h		;9034
	ld e,a			;9036
	ld a,(ix+006h)		;9037   ; lee la x del enemigo
	and 0f8h		;903a
	ld d,a			;903c
	ld a,(ix+01fh)		;903d
	or a			;9040
	jr z,L_9045		;9041
	ld c,047h		;9043
L_9045:
	ld a,c			;9045
	ld bc,00000h		;9046
	call 0763ch		;9049   ; una aparicion en la ficha de IX (p01:763C)
	ret			;904c
L_904D:
	ld a,(0000bh)		;904d
	rla			;9050
	ld b,080h		;9051
	jr c,L_9057		;9053
	ld b,000h		;9055
L_9057:
	ld a,(ix+004h)		;9057   ; lee la y del enemigo
	cp 060h		;905a
	jr nc,L_9060		;905c
	set 5,b		;905e
L_9060:
	ld (ix+01fh),b		;9060
	ld a,005h		;9063
	jr L_9069		;9065
L_9067:
	ld a,009h		;9067   ; IX+10 = 9, 2 x 2
L_9069:
	ld (ix+010h),a		;9069   ; guarda las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll)
	ld a,002h		;906c
	ld (ix+013h),a		;906e
	ld (ix+014h),a		;9071
	ret			;9074
L_9075:
	call 0711bh		;9075   ; todas las apariciones de esta posicion del scroll (p01:711B)
	jr z,L_9075		;9078
	ret c			;907a
	ld hl,0e468h		;907b   ; apunta a la aparicion siguiente de la lista de la fase
	inc (hl)			;907e
	jr L_9075		;907f
L_9081:
	ld (ix+013h),002h		;9081   ; una torreta: 2 x 2, IX+10 = 0x0B
	ld (ix+014h),002h		;9085
	ld (ix+010h),00bh		;9089   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x0B
	call L_9094		;908d   ; el lado (p02:90AB), la cadencia (p02:9120) y su desfase con la aparicion
	ld b,000h		;9090
	jr L_90C1		;9092
L_9094:
	call L_90AB		;9094   ; el lado (p02:90AB), la cadencia (p02:9120) y su desfase con la aparicion
	ld (ix+027h),000h		;9097
	call L_9120		;909b   ; la cadencia: la de la dificultad (tabla de 0x9179; en la primera vuelta, como mucho la 2)
L_909E:
	sra a		;909e
	ld c,a			;90a0
	ld a,(0e468h)		;90a1   ; lee la aparicion siguiente de la lista de la fase
	and 003h		;90a4
	add a,c			;90a6
	ld (ix+015h),a		;90a7
	ret			;90aa
L_90AB:
	ld c,(ix+01fh)		;90ab   ; el lado de IX+1F: bit 5 (2) y bit 6 (o 1)
	xor a			;90ae
	bit 5,c		;90af
	jr z,L_90B5		;90b1
	ld a,002h		;90b3
L_90B5:
	bit 6,c		;90b5
	jr nz,L_90BA		;90b7
	inc a			;90b9
L_90BA:
	ld (ix+026h),a		;90ba
	ret			;90bd
L_90BE:
	call 0b348h		;90be   ; p05:B348 y...
L_90C1:
	ld a,(0e361h)		;90c1   ; ...el caracter segun la fase y el lado (tabla de 0x9185)
	call L_90DA		;90c4   ; con el jefe 0x11, la fase 11
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
	ld c,a			;90da   ; con el jefe 0x11, la fase 11
	ld a,(0e440h)		;90db   ; lee el jefe en curso (0: ninguno)
	cp 011h		;90de
	ld a,c			;90e0
	ret nz			;90e1
	ld a,00bh		;90e2
	ret			;90e4
L_90E5:
	dec (ix+015h)		;90e5   ; cada 4 cuadros mira a la nave
	ld a,(ix+015h)		;90e8
	and 003h		;90eb
	ret nz			;90ed
	call L_90BE		;90ee
	ld a,(0e477h)		;90f1   ; si la nave esta en su lado (0xE477)...
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
	ld a,(ix+015h)		;9106   ; ...y toca disparar...
	and a			;9109
	ret nz			;910a
	ld hl,0e407h		;910b   ; ...y no se ha disparado ya este cuadro (0xE407)...
	ld a,(hl)			;910e
	and a			;910f
	jr z,L_9117		;9110
	ld (ix+015h),001h		;9112
	ret			;9116
L_9117:
	ld e,(ix+004h)		;9117   ; ...dispara
	ld d,(ix+006h)		;911a   ; lee la x del enemigo
	call L_855E		;911d   ; una bala hacia la nave desde DE (8 mas abajo)
L_9120:
	ld hl,09179h		;9120   ; la cadencia: la de la dificultad (tabla de 0x9179; en la primera vuelta, como mucho la 2)
	ld a,(0e366h)		;9123   ; lee las vueltas (fases acabadas)
	dec a			;9126
	ld a,(0e389h)		;9127   ; lee la dificultad de la fase (0 a 0x0F)
	jr nz,L_9132		;912a
	cp 002h		;912c
	jr c,L_9132		;912e
	ld a,002h		;9130
L_9132:
	call 04089h		;9132   ; suma_a_hl: HL = HL + A
	ld c,(hl)			;9135
	inc (ix+027h)		;9136   ; cada 4 disparos, el doble
	ld a,(ix+027h)		;9139
	and 003h		;913c
	jr nz,L_9142		;913e
	sla c		;9140
L_9142:
	ld a,(0e600h)		;9142   ; con escudo, 4 menos
	cp 002h		;9145
	ld a,c			;9147
	jr nz,L_914C		;9148
	sub 004h		;914a
L_914C:
	ld c,a			;914c
	ld a,(0e366h)		;914d   ; menos las vueltas / 4, con un minimo de 12
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
	ld a,(0e361h)		;9161   ; en la fase 7, 8 menos, con un minimo de 4
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
	ld (ix+015h),c		;9175   ; en IX+15
	ret			;9178

; ----------------------------------------------------------------------
; DATOS resto_9179: lo apuntan con el banco puesto p02:9120 (0x9179); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p02:9120 (1 bytes)
;   0x9179..0x917a  (1 bytes)
DATA_resto_9179:
	defb 050h	; 9179

; ----------------------------------------------------------------------
; DATOS leido_917A: 9 bytes que lee p02:9135 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p02:9135 (9
;   bytes)
;   0x917a..0x9183  (9 bytes)
DATA_leido_917A:
	defb 040h,030h,028h,024h,022h,020h,01eh,01ch,01ah	; 917a  @0($" ...

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9183..0x9185  (2 bytes)
DATA_9183:
	defb 018h,016h	; 9183

; ----------------------------------------------------------------------
; DATOS tabla_9185: tabla que se lee desde HL = 0x9185 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:90CC (9 bytes)
;   0x9185..0x918e  (9 bytes)
DATA_tabla_9185:
	defb 014h,012h,010h,00ch,000h,000h,000h,000h,002h	; 9185  .........

; ----------------------------------------------------------------------
; DATOS leido_918E: 39 bytes que lee p02:90D4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 17 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p02:90D4 (39 bytes)
;   0x918e..0x91b5  (39 bytes)
DATA_leido_918E:
	defb 002h,005h,005h,067h,064h,061h,05eh,000h,000h,000h,000h,05bh,058h,055h,052h,000h	; 918e  ...gda^....[XUR.
	defb 000h,000h,000h,030h,033h,036h,039h,000h,000h,000h,000h,077h,074h,071h,06eh,084h	; 919e  ...0369....wtqn.
	defb 08ah,087h,08dh,084h,084h,061h,061h	; 91ae

; ----------------------------------------------------------------------
; DATOS sin identificar  0x91b5..0x91b9  (4 bytes)
DATA_91B5:
	defb 0ddh,035h,015h,0c0h	; 91b5

; ======================================================================
; CODIGO 0x91b9..0x920b  (82 bytes)
; ======================================================================


L_91B9:
	ld hl,0e407h		;91b9   ; ya se ha disparado este cuadro: lo deja para el siguiente
	ld a,(hl)			;91bc
	and a			;91bd
	jr z,L_91C5		;91be
	ld (ix+015h),001h		;91c0
	ret			;91c4
L_91C5:
	ld e,(ix+004h)		;91c5   ; dispara desde su sitio
	ld d,(ix+006h)		;91c8   ; lee la x del enemigo
	call L_855E		;91cb   ; una bala hacia la nave desde DE (8 mas abajo)
	call 07844h		;91ce   ; y la cadencia siguiente
	ld (ix+015h),a		;91d1
	ret			;91d4
L_91D5:
	call 07844h		;91d5   ; un enemigo de oleada: la velocidad, y el lado en IX+25 (abajo si y desde 0x60)
L_91D8:
	ld b,000h		;91d8
	ld a,(ix+004h)		;91da   ; lee la y del enemigo
	cp 060h		;91dd
	jr c,L_91E2		;91df
	inc b			;91e1
L_91E2:
	ld (ix+025h),b		;91e2
	ld a,(0e506h)		;91e5   ; su oleada (IX+17)
	ld (ix+017h),a		;91e8
	ld (ix+013h),002h		;91eb   ; 2 x 2, parado en y...
	ld (ix+014h),002h		;91ef
	call 078c8h		;91f3   ; ...y hacia la izquierda (-0x400 en x)
L_91F6:
	ld de,0fc00h		;91f6
	call 078b3h		;91f9   ; la velocidad en x (IX+9) (p01:78B3)
L_91FC:
	ld a,(0e361h)		;91fc   ; el caracter de la fase (tabla de 0x920B)
	dec a			;91ff
	ld hl,0920bh		;9200
	call 04089h		;9203   ; suma_a_hl: HL = HL + A
L_9206:
	ld a,(hl)			;9206
	ld (ix+032h),a		;9207
	ret			;920a

; ----------------------------------------------------------------------
; DATOS tabla_920B: tabla que se lee desde HL = 0x920B con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:9200 (2 bytes)
;   0x920b..0x920d  (2 bytes)
DATA_tabla_920B:
	defb 000h,009h	; 920b

; ----------------------------------------------------------------------
; DATOS leido_920D: 7 bytes que lee p02:9206 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 4 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p02:9206 (7
;   bytes)
;   0x920d..0x9214  (7 bytes)
DATA_leido_920D:
	defb 012h,000h,000h,000h,06ah,000h,06ch	; 920d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9214..0x9215  (1 bytes)
DATA_9214:
	defb 000h	; 9214

; ======================================================================
; CODIGO 0x9215..0x9221  (12 bytes)
; ======================================================================


L_9215:
	call L_92EF		;9215   ; dispara a veces (p02:92EF), la animacion (p02:92CB) y por el paso IX+1
	call L_92CB		;9218   ; la animacion de la fase (tabla de 0x92D9 + 2 x fase): 7 dibujos, cada 4 cuadros
	ld a,(ix+001h)		;921b   ; lee el paso del enemigo
	call 04093h		;921e   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_9221: 5 destinos del despachador p00:4093 (call en p02:921E, el
;   indice en A): 922B, 925C, 9275, 929F, 92CA; lo leen p02:921E (10 bytes)
;   0x9221..0x922b  (10 bytes)
DATA_tabla_9221:
	defw 0922bh,0925ch,09275h,0929fh,092cah	; 9221

; ======================================================================
; CODIGO 0x922b..0x92db  (176 bytes)
; ======================================================================


L_922B:
	ld a,(ix+006h)		;922b   ; paso 0: hasta la x 0x10 (0x0C con IX+25)...
	cp 010h		;922e
	ret nc			;9230
	ld a,(ix+025h)		;9231
	or a			;9234
	ld a,00ch		;9235
	jr nz,L_923B		;9237
	ld a,010h		;9239
L_923B:
	ld (ix+006h),a		;923b   ; guarda la x del enemigo
	ld a,(ix+004h)		;923e   ; ...y gira hacia su lado
	and 0f8h		;9241
	ld (ix+004h),a		;9243   ; guarda la y del enemigo
	inc (ix+001h)		;9246   ; suma 1 a el paso del enemigo
	ld de,00400h		;9249
	ld a,(ix+025h)		;924c
	and a			;924f
	call nz,04a75h		;9250   ; niega_de: DE = -DE
	call 078ach		;9253   ; la velocidad en y (IX+7, 16 bits) (p01:78AC)
	ld de,00400h		;9256
	jp 078b3h		;9259
L_925C:
	ld a,(ix+006h)		;925c   ; paso 1: al llegar a la x 0x50, a la rejilla y otra vez a la derecha (+0x400 en x)
	cp 050h		;925f
	ret c			;9261
	ld (ix+006h),050h		;9262   ; la x del enemigo = 0x50
	call L_92B9		;9266
	inc (ix+001h)		;9269   ; suma 1 a el paso del enemigo
	call 078c8h		;926c
	ld de,00400h		;926f
	jp 078b3h		;9272
L_9275:
	ld a,(ix+006h)		;9275   ; paso 2: hasta la x 0xA0, y se vuelve
	cp 0a0h		;9278
	ret c			;927a
	ld (ix+006h),0a0h		;927b   ; la x del enemigo = 0xA0
	ld a,(ix+025h)		;927f
	or a			;9282
	jr z,L_9289		;9283
	ld (ix+004h),04ch		;9285   ; la y del enemigo = 0x4C
L_9289:
	inc (ix+001h)		;9289   ; suma 1 a el paso del enemigo
	ld de,0fc00h		;928c
	ld a,(ix+025h)		;928f
	and a			;9292
	call nz,04a75h		;9293   ; niega_de: DE = -DE
	call 078ach		;9296   ; la velocidad en y (IX+7, 16 bits) (p01:78AC)
	ld de,0fc00h		;9299
	jp 078b3h		;929c
L_929F:
	ld a,(ix+006h)		;929f   ; paso 3: hacia la izquierda hasta la x 0x60
	cp 060h		;92a2
	ret nc			;92a4
	ld (ix+006h),060h		;92a5   ; la x del enemigo = 0x60
	call L_92B9		;92a9
	call 078c8h		;92ac
	ld de,00400h		;92af
	call 078b3h		;92b2   ; la velocidad en x (IX+9) (p01:78B3)
	inc (ix+001h)		;92b5   ; suma 1 a el paso del enemigo
	ret			;92b8
L_92B9:
	ld a,(ix+004h)		;92b9   ; y y x en multiplos de 8
	and 0f8h		;92bc
	ld (ix+004h),a		;92be   ; guarda la y del enemigo
	ld a,(ix+006h)		;92c1   ; lee la x del enemigo
	and 0f8h		;92c4
	ld (ix+006h),a		;92c6   ; guarda la x del enemigo
	ret			;92c9
L_92CA:
	ret			;92ca
L_92CB:
	ld a,(0e361h)		;92cb   ; la animacion de la fase (tabla de 0x92D9 + 2 x fase): 7 dibujos, cada 4 cuadros
	add a,a			;92ce
	ld hl,092d9h		;92cf
	call 04089h		;92d2   ; suma_a_hl: HL = HL + A
	ld bc,00702h		;92d5
	jp 07f7ch		;92d8

; ----------------------------------------------------------------------
; DATOS sin identificar  0x92db..0x92df  (4 bytes)
DATA_92DB:
	defb 000h,001h,009h,00ah	; 92db

; ----------------------------------------------------------------------
; DATOS leido_92DF: 14 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 8 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p00:4A73 (14
;   bytes)
;   0x92df..0x92ed  (14 bytes)
DATA_leido_92DF:
	defb 012h,013h,009h,00ah,009h,00ah,009h,00ah,06ah,06bh,000h,000h,06ch,06dh	; 92df  ........jk..lm

; ----------------------------------------------------------------------
; DATOS sin identificar  0x92ed..0x92ef  (2 bytes)
DATA_92ED:
	defb 000h,000h	; 92ed

; ======================================================================
; CODIGO 0x92ef..0x954c  (605 bytes)
; ======================================================================


L_92EF:
	ld a,(0e36ah)		;92ef   ; con 0xE36A, dispara cada IX+15 cuadros
	or a			;92f2
	ret z			;92f3
	dec (ix+015h)		;92f4
	ret nz			;92f7
	call 07844h		;92f8   ; la velocidad: la de la dificultad (tabla de 0x7855) + algo al azar (registro R) (p01:7844)
	jp 06e1dh		;92fb
L_92FE:
	ld a,(ix+004h)		;92fe   ; un enemigo que va y viene: hacia el centro desde su lado
	cp 050h		;9301
	ld de,0ffc0h		;9303
	ld bc,0008ch		;9306
	jr c,L_9311		;9309
	ld de,00040h		;930b
	ld bc,00170h		;930e
L_9311:
	ld (ix+027h),b		;9311   ; IX+27 el lado, IX+30 el dibujo
	ld (ix+030h),c		;9314   ; guarda el dibujo del primer sprite del enemigo
	call 07ef3h		;9317   ; la aceleracion
L_931A:
	ld (ix+025h),00ah		;931a   ; 0x0A en IX+25
	call L_9446		;931e
L_9321:
	call 078cdh		;9321
L_9324:
	ld de,00200h		;9324
	call 078b3h		;9327   ; la velocidad en x (IX+9) (p01:78B3)
L_932A:
	ld a,r		;932a   ; una espera al azar (0x2D-0x4C cuadros)
	and 01fh		;932c
	add a,02dh		;932e
	ld (ix+002h),a		;9330   ; guarda la cuenta del enemigo
	ret			;9333
L_9334:
	call L_95B0		;9334   ; si se ve (p02:95B0), por su paso
	ret nc			;9337
	ld a,(ix+001h)		;9338   ; lee el paso del enemigo
	dec a			;933b
	jr z,L_9378		;933c
	dec a			;933e
	jp z,L_93A7		;933f
	jp p,L_93BC		;9342
	ld a,(0e361h)		;9345   ; paso 0: salvo en la fase 9, se va al pasar el tiempo (p01:7F5B)
	cp 009h		;9348
	jr z,L_9351		;934a
	call 07f5bh		;934c   ; cada 32 cuadros, IX+25 menos: al acabar, C (p01:7F5B)
	jr c,L_93AE		;934f
L_9351:
	dec (ix+002h)		;9351   ; la espera; mientras, se mueve
	jr z,L_9362		;9354
	call L_9446		;9356
	call L_9530		;9359   ; la animacion segun la direccion (tabla de 0x954C)
	call L_957A		;935c   ; si va con el bit 0 de IX+1F y con la x por debajo de 0x20: alguna opcion de la nave lo toca? (C)
	jr c,L_93D1		;935f   ; si toca el decorado, rebota (p02:93D1)
	ret			;9361
L_9362:
	ld (ix+001h),001h		;9362   ; al acabar: paso 1, 0x5A cuadros
	ld (ix+002h),05ah		;9366   ; la cuenta del enemigo = 0x5A
	call L_9554		;936a   ; el dibujo mirando hacia la nave: 0x78/0x6C por un lado, 0x90/0x84 por el otro
	call L_9442		;936d   ; se pega al decorado (IX+29 = 1) o no (0)
	call L_94E4		;9370   ; la cadencia: 0x3C - 2 x la dificultad
	ld (ix+010h),00bh		;9373   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x0B
	ret			;9377
L_9378:
	call 07f5bh		;9378   ; paso 1: se va al pasar el tiempo...
	jr c,L_93AE		;937b
	dec (ix+002h)		;937d   ; resta 1 a la cuenta del enemigo
	jr z,L_938B		;9380
	call L_957A		;9382   ; si va con el bit 0 de IX+1F y con la x por debajo de 0x20: alguna opcion de la nave lo toca? (C)
	jr c,L_93D1		;9385
	call L_94F0		;9387
	ret			;938a
L_938B:
	ld a,(0e606h)		;938b   ; al acabar, hacia la x de la nave
	cp (ix+006h)		;938e   ; compara con la x del enemigo
	ld de,00200h		;9391
	jr nc,L_9399		;9394
	ld de,0fe00h		;9396
L_9399:
	call 078b3h		;9399   ; la velocidad en x (IX+9) (p01:78B3)
L_939C:
	ld (ix+010h),007h		;939c   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x07
	ld (ix+001h),000h		;93a0   ; el paso del enemigo = 0x00
	jp L_932A		;93a4
L_93A7:
	call L_9530		;93a7   ; paso 2: se va
	call L_9446		;93aa
	ret			;93ad
L_93AE:
	ld (ix+010h),007h		;93ae   ; se va: paso 2 hacia la izquierda (-0x200 en x)
	ld (ix+001h),002h		;93b2   ; el paso del enemigo = 0x02
	ld de,0fe00h		;93b6
	jp 078b3h		;93b9
L_93BC:
	call 07f1ch		;93bc   ; paso 3: rebota
	call L_93F1		;93bf   ; choca con el decorado por delante o por detras, segun su lado
	ret nc			;93c2
	call L_9431		;93c3
	call 078cdh		;93c6
	ld a,(ix+02ah)		;93c9
	or a			;93cc
	jr z,L_938B		;93cd
	jr L_9362		;93cf
L_93D1:
	ld a,(ix+001h)		;93d1   ; rebota contra el decorado: guarda el paso y va al 3
	ld (ix+02ah),a		;93d4
	ld (ix+001h),003h		;93d7   ; el paso del enemigo = 0x03
	ld (ix+010h),007h		;93db   ; las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll) = 0x07
	bit 0,(ix+027h)		;93df
	ld de,0fc00h		;93e3
	jr nz,L_93EB		;93e6
	ld de,00400h		;93e8
L_93EB:
	call 078ach		;93eb   ; la velocidad en y (IX+7, 16 bits) (p01:78AC)
	jp 078d2h		;93ee
L_93F1:
	bit 0,(ix+027h)		;93f1   ; choca con el decorado por delante o por detras, segun su lado
	jr nz,L_9401		;93f5
	call L_9413		;93f7
	call c,078ddh		;93fa   ; la velocidad en y, al reves (p01:78DD)
	call L_940B		;93fd
	ret			;9400
L_9401:
	call L_940B		;9401
	call c,078ddh		;9404   ; la velocidad en y, al reves (p01:78DD)
	call L_9413		;9407
	ret			;940a
L_940B:
	ld h,(ix+006h)		;940b   ; el caracter del bufer donde esta...
	ld l,(ix+004h)		;940e   ; lee la y del enemigo
	jr L_941C		;9411
L_9413:
	ld h,(ix+006h)		;9413   ; ...o 16 mas abajo
	ld a,(ix+004h)		;9416   ; lee la y del enemigo
	add a,010h		;9419
	ld l,a			;941b
L_941C:
	call 04a46h		;941c   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld (0e47fh),hl		;941f   ; en 0xE47F
L_9422:
	ld a,(0e405h)		;9422   ; decorado (mayor o igual que el fondo) aqui o en el de al lado? C
	dec a			;9425
	ld c,a			;9426
	cp (hl)			;9427
	ret c			;9428
	inc hl			;9429   ; y el de al lado, si no pasa del borde de 32 columnas
	ld a,l			;942a
	and 01fh		;942b
	ret z			;942d
	ld a,c			;942e   ; con el mismo limite: decorado? C
	cp (hl)			;942f
	ret			;9430
L_9431:
	bit 0,(ix+027h)		;9431   ; y en multiplo de 8, hacia su lado
	ld a,(ix+004h)		;9435   ; lee la y del enemigo
	jr nz,L_943C		;9438
	add a,008h		;943a
L_943C:
	and 0f8h		;943c
	ld (ix+004h),a		;943e   ; guarda la y del enemigo
	ret			;9441
L_9442:
	ld a,001h		;9442   ; se pega al decorado (IX+29 = 1) o no (0)
	jr L_9447		;9444
L_9446:
	xor a			;9446
L_9447:
	ld (ix+029h),a		;9447
	ld a,(0e440h)		;944a   ; con el jefe 0x0D, aparte (p02:94D6)
	sub 00dh		;944d
	jp z,L_94D6		;944f
	ld a,(ix+004h)		;9452   ; guarda la y (IX+28)
	ld (ix+028h),a		;9455
	bit 0,(ix+027h)		;9458
	jr z,L_94A1		;945c
L_945E:
	call L_9413		;945e   ; con el bit 0 de IX+27: el bufer (p02:9413)
	jr nc,L_948D		;9461
L_9463:
	ld hl,(0e47fh)		;9463
	ld bc,0ffc0h		;9466
	add hl,bc			;9469
	ld (0e47fh),hl		;946a
	call L_9422		;946d   ; decorado (mayor o igual que el fondo) aqui o en el de al lado? C
	ret nc			;9470
	ld a,(ix+004h)		;9471   ; retrocede de 8 en 8 hasta encontrarlo...
	sub 008h		;9474
	ld (ix+004h),a		;9476   ; guarda la y del enemigo
	cp 010h		;9479
	jr nc,L_9463		;947b
L_947D:
	call 078edh		;947d   ; ...y si no, da la vuelta
	ld (ix+025h),005h		;9480
	ld a,(ix+028h)		;9484
	ld (ix+004h),a		;9487   ; guarda la y del enemigo
	jp L_939C		;948a
L_948D:
	ld a,(ix+004h)		;948d   ; abajo del todo (y 0xA0) se quita; si no, baja 8
	cp 0a0h		;9490
	jp nc,075d1h		;9492
	add a,008h		;9495
	ld (ix+004h),a		;9497   ; guarda la y del enemigo
	ld a,(ix+029h)		;949a
	or a			;949d
	jr nz,L_945E		;949e
	ret			;94a0
L_94A1:
	call L_940B		;94a1   ; sin el: baja 8 cada vez hasta la y 0x80 (p02:940B)
	jr nc,L_94B4		;94a4
	ld a,(ix+004h)		;94a6   ; lee la y del enemigo
	add a,008h		;94a9
	ld (ix+004h),a		;94ab   ; guarda la y del enemigo
	cp 080h		;94ae
	jr c,L_94A1		;94b0
	jr L_947D		;94b2
L_94B4:
	ld hl,(0e47fh)		;94b4
	ld bc,0ffc0h		;94b7
	add hl,bc			;94ba
	ld (0e47fh),hl		;94bb
	call L_9422		;94be   ; decorado (mayor o igual que el fondo) aqui o en el de al lado? C
	ret c			;94c1
	ld a,(ix+004h)		;94c2   ; lee la y del enemigo
	cp 009h		;94c5
	call c,075d1h		;94c7   ; se quita el enemigo: uno menos (0xE462) (p01:75D1)
	sub 008h		;94ca
	ld (ix+004h),a		;94cc   ; guarda la y del enemigo
	ld a,(ix+029h)		;94cf
	or a			;94d2
	jr nz,L_94B4		;94d3
	ret			;94d5
L_94D6:
	call 0b5a1h		;94d6   ; con el jefe 0x0D: p05:B5A1 y, pasado el scroll 0x21C, a la izquierda (-0x200 en x)
	ld de,0021ch		;94d9
	rst 20h			;94dc
	ld de,0fe00h		;94dd
	jp nc,078b3h		;94e0
	ret			;94e3
L_94E4:
	ld a,(0e389h)		;94e4   ; la cadencia: 0x3C - 2 x la dificultad
	add a,a			;94e7
	sub 03ch		;94e8
	neg		;94ea
	ld (ix+015h),a		;94ec
	ret			;94ef
L_94F0:
	dec (ix+015h)		;94f0   ; al acabar la cuenta...
	ret nz			;94f3
	call L_94E4		;94f4   ; la cadencia: 0x3C - 2 x la dificultad
	call L_9554		;94f7   ; el dibujo mirando hacia la nave: 0x78/0x6C por un lado, 0x90/0x84 por el otro
	bit 0,(ix+027h)		;94fa   ; ...si la nave esta delante...
	jr z,L_9509		;94fe
	ld a,(0e604h)		;9500   ; lee la y de la nave (el primer byte de su sprite, p01:797C)
	cp (ix+004h)		;9503   ; compara con la y del enemigo
	ret nc			;9506
	jr L_9510		;9507
L_9509:
	ld a,(0e604h)		;9509   ; lee la y de la nave (el primer byte de su sprite, p01:797C)
	cp (ix+004h)		;950c   ; compara con la y del enemigo
	ret c			;950f
L_9510:
	ld e,(ix+004h)		;9510   ; lee la y del enemigo
	ld d,(ix+006h)		;9513   ; lee la x del enemigo
	call 063ffh		;9516   ; ...y en un angulo de menos de 0x30 (0xE477)...
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
	jp L_91B9		;952d   ; ...dispara
L_9530:
	ld a,(ix+00ah)		;9530   ; la animacion segun la direccion (tabla de 0x954C)
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
; DATOS leido_954C: 8 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (8 bytes)
;   0x954c..0x9554  (8 bytes)
DATA_leido_954C:
	defb 088h,08ch,07ch,080h,070h,074h,064h,068h	; 954c  ..|.ptdh

; ======================================================================
; CODIGO 0x9554..0x9687  (307 bytes)
; ======================================================================


L_9554:
	bit 0,(ix+027h)		;9554   ; el dibujo mirando hacia la nave: 0x78/0x6C por un lado, 0x90/0x84 por el otro
	jr z,L_956A		;9558
	ld b,078h		;955a
	ld a,(0e606h)		;955c   ; lee la x de la nave
	cp (ix+006h)		;955f   ; compara con la x del enemigo
	jr nc,L_9566		;9562
	ld b,06ch		;9564
L_9566:
	ld (ix+030h),b		;9566   ; guarda el dibujo del primer sprite del enemigo
	ret			;9569
L_956A:
	ld b,090h		;956a
	ld a,(0e606h)		;956c   ; lee la x de la nave
	cp (ix+006h)		;956f   ; compara con la x del enemigo
	jr nc,L_9576		;9572
	ld b,084h		;9574
L_9576:
	ld (ix+030h),b		;9576   ; guarda el dibujo del primer sprite del enemigo
	ret			;9579
L_957A:
	or a			;957a   ; si va con el bit 0 de IX+1F y con la x por debajo de 0x20: alguna opcion de la nave lo toca? (C)
	bit 0,(ix+01fh)		;957b
	ret nz			;957f
	ld a,(ix+006h)		;9580   ; lee la x del enemigo
	sub 020h		;9583
	ccf			;9585
	ret nc			;9586
	ld b,003h		;9587   ; las 3 opciones de 0xE6C0 (0x60 bytes)
	ld hl,0e6c0h		;9589
	ld de,00060h		;958c
L_958F:
	push hl			;958f
	ld a,(hl)			;9590
	or a			;9591
	jr z,L_95A9		;9592
	ld a,(ix+004h)		;9594   ; lee la y del enemigo
	inc hl			;9597
	inc hl			;9598
	inc hl			;9599
	sub (hl)			;959a
	add a,010h		;959b
	cp 018h		;959d
	jr nc,L_95A9		;959f
	ld a,(ix+006h)		;95a1   ; lee la x del enemigo
	inc hl			;95a4
	inc hl			;95a5
	sub (hl)			;95a6
	cp 021h		;95a7
L_95A9:
	pop hl			;95a9   ; C: esta opcion lo toca
	ret c			;95aa
	add hl,de			;95ab   ; la opcion siguiente (0x60 bytes)
	djnz L_958F		;95ac
	or a			;95ae   ; ninguna lo toca: NC
	ret			;95af
L_95B0:
	ld a,(0e361h)		;95b0   ; en la fase 9, solo si esta sobre los caracteres 0x92-0x9E (las burbujas): si no, p05:A8A1
	sub 009h		;95b3
	scf			;95b5
	ret nz			;95b6
	ld a,(ix+004h)		;95b7   ; lee la y del enemigo
	add a,008h		;95ba
	ld l,a			;95bc
	ld a,(ix+006h)		;95bd   ; lee la x del enemigo
	add a,008h		;95c0
	ld h,a			;95c2
	call 04a46h		;95c3   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	call L_95CC		;95c6   ; el caracter del bufer por debajo de 0x92: C
	jr nc,L_95D4		;95c9
	inc hl			;95cb
L_95CC:
	ld a,(hl)			;95cc   ; el caracter del bufer por debajo de 0x92: C
	sub 092h		;95cd
	ret c			;95cf
	sub 00dh		;95d0   ; por encima de 0x9E: C; entre 0x92 y 0x9E, NC
	ccf			;95d2
	ret c			;95d3
L_95D4:
	call 0a8a1h		;95d4
	or a			;95d7
	ret			;95d8
L_95D9:
	call L_9081		;95d9   ; una torreta que dispara rafagas: como p02:9081, con 2 cuadros
L_95DC:
	call L_964C		;95dc
L_95DF:
	ld a,002h		;95df
	ld (ix+002h),a		;95e1   ; guarda la cuenta del enemigo
	ret			;95e4
L_95E5:
	ld a,(ix+001h)		;95e5   ; paso 0: si se ve, mira a la nave cada 8 cuadros...
	dec a			;95e8
	jr z,L_961B		;95e9
	ld a,(ix+006h)		;95eb   ; lee la x del enemigo
	sub 030h		;95ee
	ret c			;95f0
	call L_9643		;95f1   ; cada 8 cuadros, el caracter mirando a la nave
	dec (ix+002h)		;95f4   ; ...y cada 4 lanza hasta 3 disparos (p02:9665)
	ret nz			;95f7
	ld (ix+002h),004h		;95f8   ; la cuenta del enemigo = 0x04
	ld (ix+027h),003h		;95fc
	call L_9665		;9600   ; un disparo de la torreta: desde su boca (tabla de 0x9687 por la direccion IX+1C)
	ret nc			;9603
	dec (ix+027h)		;9604
	ld (ix+002h),020h		;9607   ; lanzado: paso 1, el caracter + 0x7C (disparando)
	ld (ix+015h),008h		;960b
	inc (ix+001h)		;960f   ; suma 1 a el paso del enemigo
	ld a,07ch		;9612
	add a,(ix+032h)		;9614
	ld (ix+032h),a		;9617
	ret			;961a
L_961B:
	dec (ix+002h)		;961b   ; paso 1: cada 8 cuadros los que queden...
	jr z,L_9634		;961e
	dec (ix+015h)		;9620
	ret nz			;9623
	ld (ix+015h),008h		;9624
	ld a,(ix+027h)		;9628
	or a			;962b
	ret z			;962c
	call L_9665		;962d   ; un disparo de la torreta: desde su boca (tabla de 0x9687 por la direccion IX+1C)
	dec (ix+027h)		;9630
	ret			;9633
L_9634:
	call L_9659		;9634   ; ...y vuelta al paso 0 con el caracter normal
	dec (ix+001h)		;9637   ; resta 1 a el paso del enemigo
	ld a,(ix+032h)		;963a
	sub 07ch		;963d
	ld (ix+032h),a		;963f
	ret			;9642
L_9643:
	ld a,(0e303h)		;9643   ; cada 8 cuadros, el caracter mirando a la nave
	and 007h		;9646
	ret nz			;9648
	call L_90BE		;9649
L_964C:
	ld a,b			;964c
	add a,a			;964d
	bit 1,(ix+026h)		;964e
	jr z,L_9655		;9652
	inc a			;9654
L_9655:
	ld (ix+01ch),a		;9655
	ret			;9658
L_9659:
	ld a,(0e389h)		;9659   ; la cadencia: 0x50 - 2 x la dificultad
	add a,a			;965c
	sub 050h		;965d
	neg		;965f
	ld (ix+002h),a		;9661   ; guarda la cuenta del enemigo
	ret			;9664
L_9665:
	ld a,(ix+01ch)		;9665   ; un disparo de la torreta: desde su boca (tabla de 0x9687 por la direccion IX+1C)
	ld b,a			;9668
	ld hl,09687h		;9669
	call 04a5ah		;966c   ; lee_palabra: HL = la palabra A de la tabla HL
	ld a,(ix+004h)		;966f   ; lee la y del enemigo
	add a,l			;9672
	ld e,a			;9673
	ld a,(ix+006h)		;9674   ; lee la x del enemigo
	add a,h			;9677
	ld d,a			;9678
	ld a,(ix+027h)		;9679   ; C segun los que quedan
	dec a			;967c
	ld c,000h		;967d
	jr z,L_9682		;967f
	inc c			;9681
L_9682:
	ld a,001h		;9682   ; la bala 1
	jp 07647h		;9684

; ----------------------------------------------------------------------
; DATOS tabla_9687: tabla que se lee desde HL = 0x9687 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:9669 (12 bytes)
;   0x9687..0x9693  (12 bytes)
DATA_tabla_9687:
	defb 0f0h,0f0h,010h,0f0h,0f0h,000h,010h,000h,0f0h,010h,010h,010h	; 9687  ............

; ======================================================================
; CODIGO 0x9693..0x96cf  (60 bytes)
; ======================================================================


L_9693:
	ld (ix+002h),020h		;9693   ; 0x20 cuadros, IX+2F a cero, y un movimiento de 0x96CF segun IX+1F
	ld (ix+02fh),000h		;9697
	ld a,(ix+01fh)		;969b
	jr L_96C0		;969e
L_96A0:
	ld bc,00306h		;96a0   ; la animacion (6 dibujos de 0x96EF cada 8 cuadros)
	ld hl,096efh		;96a3
	call 07f7ch		;96a6   ; cada B cuadros, el dibujo siguiente de los C de la tabla HL (IX+26) en IX+30 y IX+32 (p01:7F7C)
	ld a,(ix+001h)		;96a9   ; lee el paso del enemigo
	or a			;96ac
	ret nz			;96ad
	dec (ix+02fh)		;96ae   ; en el paso 0, al acabar IX+2F...
	jr z,L_96C6		;96b1
	dec (ix+002h)		;96b3   ; ...si no, cada 0x10 cuadros otro movimiento al azar
	ret nz			;96b6
	ld (ix+002h),010h		;96b7   ; la cuenta del enemigo = 0x10
	call 0565ah		;96bb   ; mezcla el azar de 0xE406 con la cuenta de cuadros x 3 (p00:565A)
	and 007h		;96be
L_96C0:
	ld hl,096cfh		;96c0
	jp 06e40h		;96c3
L_96C6:
	inc (ix+001h)		;96c6   ; se va hacia la izquierda (-0x180 en x)
	ld de,0fe80h		;96c9
	jp 078b3h		;96cc

; ----------------------------------------------------------------------
; DATOS leido_96CF: 32 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (32 bytes)
;   0x96cf..0x96ef  (32 bytes)
DATA_leido_96CF:
	defb 000h,0feh,080h,0feh,000h,0feh,080h,001h,080h,0ffh,080h,0feh,080h,0ffh,080h,001h	; 96cf  ................
	defb 000h,001h,080h,0feh,000h,001h,080h,001h,000h,001h,000h,000h,000h,0feh,000h,000h	; 96df  ................

; ----------------------------------------------------------------------
; DATOS leido_96EF: 6 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (6 bytes)
;   0x96ef..0x96f5  (6 bytes)
DATA_leido_96EF:
	defb 0a0h,0a4h,0a8h,0ach,0b0h,0b4h	; 96ef

; ======================================================================
; CODIGO 0x96f5..0x971d  (40 bytes)
; ======================================================================


L_96F5:
	ld (ix+008h),010h		;96f5   ; 0x10 vidas, 6 x 8 caracteres, sin tocar, dibujo 0 o 4 segun IX+0B
	ld (ix+009h),006h		;96f9   ; las filas de la pieza = 0x06
	ld (ix+00ah),008h		;96fd   ; las columnas de la pieza = 0x08
	ld (ix+012h),000h		;9701   ; las marcas de la pieza = 0x00
	ld (ix+00dh),080h		;9705   ; como se toca la pieza (bit 7: no se toca) = 0x80
	ld a,(ix+00bh)		;9709   ; lee el B de la pieza
	or a			;970c
	ld a,004h		;970d
	jr nz,L_9713		;970f
	ld a,000h		;9711
L_9713:
	ld (ix+007h),a		;9713   ; guarda el dibujo de la pieza
	ret			;9716
L_9717:
	ld a,(ix+001h)		;9717   ; por el paso IX+1 (tabla de detras)
	call 04093h		;971a   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_971D: 2 destinos del despachador p00:4093 (call en p02:971A, el
;   indice en A): 9721, 973B; lo leen p02:971A (4 bytes)
;   0x971d..0x9721  (4 bytes)
DATA_tabla_971D:
	defw 09721h,0973bh	; 971d  -> L_9721 L_973B

; ======================================================================
; CODIGO 0x9721..0x976f  (78 bytes)
; ======================================================================


L_9721:
	ld a,(ix+006h)		;9721   ; paso 0: al pasar la x 0x80 se abre (se pinta, 4 pasos de 0x10)
	cp 080h		;9724
	ret nc			;9726
	ld (ix+002h),080h		;9727   ; la cuenta de la pieza = 0x80
	ld (ix+012h),003h		;972b   ; las marcas de la pieza = 0x03
	ld (ix+014h),004h		;972f
	ld (ix+002h),010h		;9733   ; la cuenta de la pieza = 0x10
	inc (ix+001h)		;9737   ; suma 1 a el paso de la pieza
	ret			;973a
L_973B:
	dec (ix+002h)		;973b   ; paso 1: cada 0x10 cuadros el dibujo siguiente, 4 veces
	ret nz			;973e
	dec (ix+014h)		;973f
	jr nz,L_9745		;9742
	ret			;9744
L_9745:
	ld (ix+002h),010h		;9745   ; la cuenta de la pieza = 0x10
	inc (ix+007h)		;9749   ; suma 1 a el dibujo de la pieza
	ret			;974c
L_974D:
	ld a,(0e49ah)		;974d   ; con 0xE49A se quita; si no, a la izquierda (-0x400 en x) con el color 0x0D
	or a			;9750
	jp nz,075d1h		;9751
	ld (ix+002h),010h		;9754   ; la cuenta del enemigo = 0x10
	ld (ix+031h),00dh		;9758   ; el color del primer sprite del enemigo = 0x0D
	ld de,0fc00h		;975c
	ld hl,00000h		;975f
	call 078d7h		;9762
L_9765:
	ret			;9765
L_9766:
	call L_9827		;9766   ; la animacion (p02:9827) y por el paso IX+1
	ld a,(ix+001h)		;9769   ; lee el paso del enemigo
	call 04093h		;976c   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_976F: 4 destinos del despachador p00:4093 (call en p02:976C, el
;   indice en A): 9777, 97F1, 981A, 9786; lo leen p02:976C (8 bytes)
;   0x976f..0x9777  (8 bytes)
DATA_tabla_976F:
	defw 09777h,097f1h,0981ah,09786h	; 976f  -> L_9777 L_97F1 L_981A L_9786

; ======================================================================
; CODIGO 0x9777..0x9831  (186 bytes)
; ======================================================================


L_9777:
	call L_97AA		;9777   ; paso 0: con la nave a la izquierda o a menos de 0x10...
	jr c,L_9787		;977a
	ld de,00000h		;977c   ; ...se para y al paso 3
	call 078ach		;977f   ; la velocidad en y (IX+7, 16 bits) (p01:78AC)
	ld (ix+001h),003h		;9782   ; el paso del enemigo = 0x03
L_9786:
	ret			;9786
L_9787:
	call L_97B3		;9787   ; cerca de la nave en x e y? (p02:97B3)
	jr c,L_9798		;978a
	dec (ix+002h)		;978c   ; si no, cada 5 cuadros se acerca en y (p02:97CF)
	ret nz			;978f
	call L_97CF		;9790   ; hacia la y de la nave: 0, +0x100 o -0x100
	ld (ix+002h),005h		;9793   ; la cuenta del enemigo = 0x05
	ret			;9797
L_9798:
	call 078c8h		;9798   ; la coge: se para, el sonido 0x31, 0xE49A = 1...
	call 058e5h		;979b   ; sonido_31: pide el sonido 0x31
	ld a,001h		;979e
	ld (0e49ah),a		;97a0
	call L_9833		;97a3   ; ...y los demas del tipo 0x18 se quitan
L_97A6:
	inc (ix+001h)		;97a6   ; suma 1 a el paso del enemigo
	ret			;97a9
L_97AA:
	ld a,(0e606h)		;97aa   ; la x de la nave - 0x10 - la suya
	sub 010h		;97ad
	sub (ix+006h)		;97af   ; le resta la x del enemigo
	ret			;97b2
L_97B3:
	ld a,(0e606h)		;97b3   ; a menos de 0x20 en x y de 8 en y? (C)
	sub (ix+006h)		;97b6   ; le resta la x del enemigo
	jr nc,L_97CD		;97b9
	neg		;97bb
	cp 020h		;97bd
	ret nc			;97bf
	ld a,(0e604h)		;97c0   ; lee la y de la nave (el primer byte de su sprite, p01:797C)
	sub (ix+004h)		;97c3   ; le resta la y del enemigo
	jr nc,L_97CA		;97c6
	neg		;97c8
L_97CA:
	cp 008h		;97ca
	ret			;97cc
L_97CD:
	xor a			;97cd
	ret			;97ce
L_97CF:
	ld a,(0e604h)		;97cf   ; hacia la y de la nave: 0, +0x100 o -0x100
	sub (ix+004h)		;97d2   ; le resta la y del enemigo
	jr nc,L_97D9		;97d5
	neg		;97d7
L_97D9:
	cp 008h		;97d9
	ld de,00000h		;97db
	jr c,L_97EE		;97de
	ld a,(0e604h)		;97e0   ; lee la y de la nave (el primer byte de su sprite, p01:797C)
	cp (ix+004h)		;97e3   ; compara con la y del enemigo
	ld de,00100h		;97e6
	jr nc,L_97EE		;97e9
	ld de,0ff00h		;97eb
L_97EE:
	jp 078ach		;97ee
L_97F1:
	ld a,(0e604h)		;97f1   ; paso 1: pegado a la nave, 0x18 a su derecha
	ld (ix+004h),a		;97f4   ; guarda la y del enemigo
	ld a,(0e606h)		;97f7   ; lee la x de la nave
	add a,018h		;97fa
	ld (ix+006h),a		;97fc   ; guarda la x del enemigo
	ld hl,(0e363h)		;97ff   ; al llegar el scroll a 0x180, a la derecha (+0x800 en x)
	ld de,00180h		;9802
	rst 20h			;9805
	ret nz			;9806
	ld a,(ix+006h)		;9807   ; lee la x del enemigo
	cp 0f0h		;980a
	jp nc,075d1h		;980c
	ld de,00800h		;980f
	ld hl,00000h		;9812
	call 078d7h		;9815
	jr L_97A6		;9818
L_981A:
	ld a,(ix+006h)		;981a   ; paso 2: al salir por la derecha (x 0xF0) se quita (0xE49A = 0)
	cp 0f0h		;981d
	ret c			;981f
	xor a			;9820
	ld (0e49ah),a		;9821
	jp 075d1h		;9824
L_9827:
	ld bc,00702h		;9827   ; la animacion: 7 dibujos de 0x9831, cada 4 cuadros
	ld hl,09831h		;982a
	call 07f7ch		;982d   ; cada B cuadros, el dibujo siguiente de los C de la tabla HL (IX+26) en IX+30 y IX+32 (p01:7F7C)
	ret			;9830

; ----------------------------------------------------------------------
; DATOS leido_9831: 2 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (2 bytes)
;   0x9831..0x9833  (2 bytes)
DATA_leido_9831:
	defb 0a0h,0a4h	; 9831

; ======================================================================
; CODIGO 0x9833..0x9942  (271 bytes)
; ======================================================================


L_9833:
	ld hl,0e800h		;9833   ; quita los demas enemigos del tipo 0x18
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
	ld (ix+000h),a		;9845   ; guarda el tipo del enemigo (0: libre)
	ret			;9848
L_9849:
	bit 0,(ix+00bh)		;9849   ; el dibujo 0xF6 o 0xFB, 6 x 4, sin tocar, 0x28 vidas
	ld a,0f6h		;984d
	jr z,L_9853		;984f
	ld a,0fbh		;9851
L_9853:
	ld (ix+007h),a		;9853   ; guarda el dibujo de la pieza
	ld (ix+009h),006h		;9856   ; las filas de la pieza = 0x06
	ld (ix+00ah),004h		;985a   ; las columnas de la pieza = 0x04
	ld (ix+00dh),080h		;985e   ; como se toca la pieza (bit 7: no se toca) = 0x80
	ld (ix+012h),003h		;9862   ; las marcas de la pieza = 0x03
	ld (ix+008h),028h		;9866   ; las vidas de la pieza = 0x28
	ret			;986a
L_986B:
	ld a,(ix+001h)		;986b   ; paso 0: al entrar en la pantalla, sus vidas: 0x26 o 0x27
	dec a			;986e
	jr z,L_9887		;986f
	ld a,(ix+006h)		;9871   ; lee la x de la pieza
	cp 0e0h		;9874
	ret nc			;9876
	bit 0,(ix+00bh)		;9877   ; mira el bit 0 de el B de la pieza
	ld a,026h		;987b
	jr z,L_9880		;987d
	inc a			;987f
L_9880:
	ld (ix+00dh),a		;9880   ; guarda como se toca la pieza (bit 7: no se toca)
	inc (ix+001h)		;9883   ; suma 1 a el paso de la pieza
	ret			;9886
L_9887:
	call L_98F1		;9887   ; paso 1: el dibujo segun lo danado (p02:98F1 y 98E6)
	ld a,004h		;988a   ; con 4 (lo mas danado): p02:98AB
	cp b			;988c
	jr z,L_98AB		;988d
	ld c,b			;988f
	call L_98E6		;9890   ; el otro dibujo (p02:98E6)
	ld a,b			;9893
	cp 004h		;9894
	jr z,L_98B1		;9896
	cp c			;9898   ; se queda el mayor de los dos
	jr nc,L_989C		;9899
	ld a,c			;989b
L_989C:
	bit 0,(ix+00bh)		;989c   ; mira el bit 0 de el B de la pieza
	ld b,0f6h		;98a0
	jr z,L_98A6		;98a2
	ld b,0fbh		;98a4
L_98A6:
	add a,b			;98a6
	ld (ix+007h),a		;98a7   ; guarda el dibujo de la pieza
	ret			;98aa
L_98AB:
	ld (ix+01ah),000h		;98ab   ; destruido del todo (4): ...
	jr L_98B5		;98af
L_98B1:
	ld (ix+01ah),001h		;98b1
L_98B5:
	push ix		;98b5   ; una explosion grande en su sitio
	ld d,(ix+006h)		;98b7   ; lee la x de la pieza
	ld e,(ix+004h)		;98ba   ; lee la y de la pieza
	call 0678dh		;98bd   ; una explosion grande en DE (E la y, D la x): dentro de la pantalla (p01:678D)
	pop ix		;98c0
	ret nc			;98c2
	call L_98D5		;98c3   ; su dibujo roto, se quita y el sonido 0x20
	call L_8294		;98c6
	call 05878h		;98c9   ; sonido_20: pide el sonido 0x20
	bit 0,(ix+01ah)		;98cc
	ret z			;98d0
	call L_9901		;98d1   ; al romperse dispara en abanico: desde y + 0x14, x + 0x20
	ret			;98d4
L_98D5:
	bit 0,(ix+00bh)		;98d5   ; el dibujo roto: 0xFF o 0xFA
	ld a,0ffh		;98d9
	jr nz,L_98DF		;98db
	ld a,0fah		;98dd
L_98DF:
	ld (ix+007h),a		;98df
	call L_8221		;98e2   ; el dibujo IX+7: su direccion en p08:B834 + 2 x dibujo
	ret			;98e5
L_98E6:
	dec (ix+002h)		;98e6   ; resta 1 a la cuenta de la pieza
	ld de,09008h		;98e9
	ld a,(ix+002h)		;98ec   ; lee la cuenta de la pieza
	jr L_98F7		;98ef
L_98F1:
	ld de,02002h		;98f1   ; cuanto esta danado: 0-4 segun sus vidas (escalones de 0x20 y de 2)
	ld a,(ix+008h)		;98f4   ; lee las vidas de la pieza
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
	ld a,(ix+004h)		;9901   ; al romperse dispara en abanico: desde y + 0x14, x + 0x20
	add a,014h		;9904
	ld e,a			;9906
	ld a,(ix+006h)		;9907
	add a,020h		;990a
	ld d,a			;990c
	ld (0ef82h),de		;990d
	ld a,(0e389h)		;9911   ; la velocidad: 0x40 + 4 x la dificultad
	add a,a			;9914
	add a,a			;9915
	add a,040h		;9916
	ld (0ef84h),a		;9918
	ld b,007h		;991b   ; 7 balas
L_991D:
	push bc			;991d
	call L_992F		;991e   ; la velocidad de cada una (tabla de 0x9941), con tope 0xFF
	call L_9949		;9921   ; la direccion de cada una (tabla de 0x9950)
	ld de,(0ef82h)		;9924
	call L_8580		;9928   ; una bala libre de las 10 de 0xEB00
	pop bc			;992b
	djnz L_991D		;992c
	ret			;992e
L_992F:
	ld e,b			;992f   ; la velocidad de cada una (tabla de 0x9941), con tope 0xFF
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
; DATOS leido_9942: 7 bytes que lee p02:9939 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p02:9939 (7 bytes)
;   0x9942..0x9949  (7 bytes)
DATA_leido_9942:
	defb 020h,020h,038h,038h,02ch,02ch,020h	; 9942

; ======================================================================
; CODIGO 0x9949..0x9951  (8 bytes)
; ======================================================================


L_9949:
	ld hl,09950h		;9949   ; la direccion de cada una (tabla de 0x9950)
	ld a,b			;994c
	ld c,007h		;994d
	jr $+17		;994f

; ----------------------------------------------------------------------
; DATOS leido_9951: 12 bytes que lee p02:998A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p02:998A (12 bytes)
;   0x9951..0x995d  (12 bytes)
DATA_leido_9951:
	defb 0e8h,018h,0f0h,010h,0f8h,008h,000h,0f0h,0f8h,000h,008h,010h	; 9951  ............

; ======================================================================
; CODIGO 0x995d..0x9ae2  (389 bytes)
; ======================================================================


L_995D:
	ld a,(ix+01fh)		;995d   ; apuntando a la nave en la de enmedio (IX+1F = C)
L_9960:
	cp c			;9960
	call z,L_9971		;9961
	call L_9983		;9964   ; la direccion + la desviacion, en el cuadrante que toque
	ld (0e476h),a		;9967   ; guarda la direccion hacia la nave (0 a 0x3F)
	ld e,a			;996a
	ld (0e470h),hl		;996b
	jp 063c7h		;996e
L_9971:
	push af			;9971
	push hl			;9972
	ld de,(0ef82h)		;9973
	call 063ffh		;9977   ; la distancia a la nave (0xE604 la y, 0xE606 la x) (p01:63FF)
	ld a,(0e477h)		;997a
	ld (0e490h),a		;997d
	pop hl			;9980
	pop af			;9981
	ret			;9982
L_9983:
	ld e,a			;9983   ; la direccion + la desviacion, en el cuadrante que toque
	ld d,000h		;9984
	add hl,de			;9986
	ld a,(0e490h)		;9987
	add a,(hl)			;998a
	cp 040h		;998b   ; menos de 0x40: p02:99AB
	jr c,L_99AB		;998d
	cp 080h		;998f   ; de 0x40 a 0x7F: p02:99A3
	jr c,L_99A3		;9991
	cp 0c0h		;9993   ; de 0x80 a 0xBF: p02:999D
	jr c,L_999D		;9995
	neg		;9997   ; 0xC0 o mas: A al reves y HL = 1
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
L_99AF:
	call 07844h		;99af   ; a la izquierda (-0x300 en x) y, segun su y (0x60), hacia el centro
L_99B2:
	ld a,(ix+004h)		;99b2   ; lee la y del enemigo
	ld (ix+027h),a		;99b5
	ld de,0fd00h		;99b8
	call 078b3h		;99bb   ; la velocidad en x (IX+9) (p01:78B3)
L_99BE:
	ld a,(ix+004h)		;99be   ; lee la y del enemigo
	cp 060h		;99c1
	ld de,00800h		;99c3
	ld hl,0ff00h		;99c6
	jr c,L_99D1		;99c9
	ld de,0f800h		;99cb
	ld hl,00100h		;99ce
L_99D1:
	call L_99D8		;99d1   ; la velocidad en y y la aceleracion
L_99D4:
	ex de,hl			;99d4
	jp 07f10h		;99d5
L_99D8:
	call 078ach		;99d8   ; la velocidad en y y la aceleracion
	ex de,hl			;99db
	jp 07ef3h		;99dc
L_99DF:
	call L_92EF		;99df   ; dispara, acelera hasta el tope y frena
	call 07f1ch		;99e2   ; la velocidad en y += la aceleracion (p01:7F1C)
	call 07f42h		;99e5   ; |velocidad en y| contra la maxima (p01:7F42)
	call z,07eeah		;99e8   ; la aceleracion en y (IX+18), al reves (p01:7EEA)
	ld a,(ix+027h)		;99eb   ; al volver a su y y con la x hasta 0x48: el dibujo 0xDC y la velocidad en x al reves
	cp (ix+004h)		;99ee   ; compara con la y del enemigo
	ret nz			;99f1
	ld a,048h		;99f2
	cp (ix+006h)		;99f4   ; compara con la x del enemigo
	ret c			;99f7
	ld (ix+030h),0dch		;99f8   ; el dibujo del primer sprite del enemigo = 0xDC
	jp 078edh		;99fc
L_99FF:
	bit 0,(ix+00bh)		;99ff   ; el dibujo 0x4C o 0x4E, 2 x 3, sin tocar, 0x40 cuadros
	ld a,04ch		;9a03
	jr z,L_9A09		;9a05
	ld a,04eh		;9a07
L_9A09:
	ld (ix+007h),a		;9a09   ; guarda el dibujo de la pieza
	ld (ix+009h),002h		;9a0c   ; las filas de la pieza = 0x02
	ld (ix+00ah),003h		;9a10   ; las columnas de la pieza = 0x03
	ld (ix+00dh),080h		;9a14   ; como se toca la pieza (bit 7: no se toca) = 0x80
	ld (ix+012h),001h		;9a18   ; las marcas de la pieza = 0x01
	ld (ix+002h),040h		;9a1c   ; la cuenta de la pieza = 0x40
	ret			;9a20
L_9A21:
	ld a,(ix+001h)		;9a21   ; paso 0: espera, abre (dibujo + 1) y suelta uno (p02:9A45)
	dec a			;9a24
	jr z,L_9A3A		;9a25
	ret p			;9a27
	dec (ix+002h)		;9a28   ; resta 1 a la cuenta de la pieza
	ret nz			;9a2b
	ld (ix+002h),020h		;9a2c   ; la cuenta de la pieza = 0x20
	inc (ix+007h)		;9a30   ; suma 1 a el dibujo de la pieza
	inc (ix+001h)		;9a33   ; suma 1 a el paso de la pieza
	call L_9A45		;9a36   ; suelta un 0x34 por su lado (y - 8 o + 0x10, x + 8)
	ret			;9a39
L_9A3A:
	dec (ix+002h)		;9a3a   ; paso 1: espera y cierra
	ret nz			;9a3d
	dec (ix+007h)		;9a3e   ; resta 1 a el dibujo de la pieza
	inc (ix+001h)		;9a41   ; suma 1 a el paso de la pieza
	ret			;9a44
L_9A45:
	bit 0,(ix+00bh)		;9a45   ; suelta un 0x34 por su lado (y - 8 o + 0x10, x + 8)
	ld a,0f8h		;9a49
	jr z,L_9A4F		;9a4b
	ld a,010h		;9a4d
L_9A4F:
	add a,(ix+004h)		;9a4f   ; le suma la y de la pieza
	ld e,a			;9a52
	ld a,(ix+006h)		;9a53   ; lee la x de la pieza
	add a,008h		;9a56
	ld d,a			;9a58
	ld bc,00000h		;9a59
	ld a,034h		;9a5c
	jp 07647h		;9a5e
L_9A61:
	call L_9A71		;9a61   ; apunta a la y 0x50 y a la x de la nave (entre 0x40 y 0xC0)
	ld h,050h		;9a64
	ld (ix+02eh),h		;9a66
	ld (ix+02fh),l		;9a69
	ld a,0c0h		;9a6c
	jp 07888h		;9a6e
L_9A71:
	ld l,0c0h		;9a71   ; la x de la nave + 0x30 en L, entre 0x40 y 0xC0
	ld a,(0e606h)		;9a73   ; lee la x de la nave
	add a,030h		;9a76
	ret c			;9a78   ; si pasa de 0xFF, 0xC0
	cp l			;9a79
	ret nc			;9a7a
	ld l,040h		;9a7b   ; por debajo de 0x40, 0x40
	cp l			;9a7d
	ret c			;9a7e
	ld l,a			;9a7f
	ret			;9a80
L_9A81:
	call L_9A8B		;9a81   ; al llegar se quita en 6 explosiones
	ret nc			;9a84
	call L_9AA5		;9a85   ; 6 explosiones 0x35 en su sitio
	jp 075d1h		;9a88
L_9A8B:
	ld b,010h		;9a8b   ; a menos de 0x10 de su destino (IX+2E, IX+2F)? C
	ld a,(ix+004h)		;9a8d   ; lee la y del enemigo
	sub (ix+02eh)		;9a90
	jr nc,L_9A97		;9a93
	neg		;9a95
L_9A97:
	cp b			;9a97
	ret nc			;9a98
	ld a,(ix+006h)		;9a99   ; lee la x del enemigo
	sub (ix+02fh)		;9a9c
	jr nc,L_9AA3		;9a9f
	neg		;9aa1
L_9AA3:
	cp b			;9aa3
	ret			;9aa4
L_9AA5:
	ld bc,00600h		;9aa5   ; 6 explosiones 0x35 en su sitio
L_9AA8:
	push bc			;9aa8
	ld e,(ix+004h)		;9aa9   ; lee la y del enemigo
	ld d,(ix+006h)		;9aac   ; lee la x del enemigo
	ld a,035h		;9aaf
	call 07647h		;9ab1   ; una aparicion en una ficha libre, guardando IX (p01:7647)
	pop bc			;9ab4
	djnz L_9AA8		;9ab5
	ret			;9ab7
L_9AB8:
	ld (ix+010h),014h		;9ab8   ; IX+10 = 0x14, 4 cuadros...
	ld (ix+01ch),000h		;9abc
	ld (ix+01dh),004h		;9ac0
	ld (ix+002h),003h		;9ac4   ; la cuenta del enemigo = 0x03
	ld de,00000h		;9ac8   ; ...parado, con la velocidad de la tabla de 0x9AE0 segun IX+1F
	call 07f03h		;9acb
L_9ACE:
	call 07ef3h		;9ace
L_9AD1:
	ld a,(ix+01fh)		;9ad1
	ld hl,09ae0h		;9ad4
	call 04a5ah		;9ad7   ; lee_palabra: HL = la palabra A de la tabla HL
L_9ADA:
	ld d,h			;9ada
	ld e,000h		;9adb
	ld h,l			;9add
	ld l,e			;9ade
	jp 078d7h		;9adf

; ----------------------------------------------------------------------
; DATOS leido_9AE2: 12 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (12 bytes)
;   0x9ae2..0x9aee  (12 bytes)
DATA_leido_9AE2:
	defb 003h,0fch,004h,000h,003h,004h,0fdh,0fch,0fch,000h,0fdh,004h	; 9ae2  ............

; ======================================================================
; CODIGO 0x9aee..0x9bc9  (219 bytes)
; ======================================================================


L_9AEE:
	call 07f1ch		;9aee   ; acelera, se mueve, rebota y se quita al salir
	call 07f2fh		;9af1   ; la velocidad en x += la aceleracion (p01:7F2F)
	call L_9B04		;9af4   ; rebota en x (IX+0A) entre 2 y 7 (o se para) segun su tipo
	call L_9B5B		;9af7   ; cada 6 cuadros, aceleracion en y al azar (+-0x200)
	call L_9B9E		;9afa   ; el caracter del bufer donde esta: decorado (entre el fondo y 0xFC)? C
	jp c,075d1h		;9afd
	call L_9B72		;9b00
	ret			;9b03
L_9B04:
	ld a,(ix+01fh)		;9b04   ; rebota en x (IX+0A) entre 2 y 7 (o se para) segun su tipo
	cp 003h		;9b07
	jr c,L_9B0D		;9b09
	sub 003h		;9b0b
L_9B0D:
	dec a			;9b0d   ; 1: p02:9B1D; 2: p02:9B2C
	jr z,L_9B1D		;9b0e
	dec a			;9b10
	jr z,L_9B2C		;9b11
	ld a,(ix+00ah)		;9b13   ; si no, IX+0A entre 2 y 7 (p02:9B4D)
	call L_9B4D		;9b16   ; 7 o mas: rebota (la aceleracion IX+1A al reves, p01:7EFA)
	ld (ix+00ah),b		;9b19
	ret			;9b1c
L_9B1D:
	ld a,(ix+00ah)		;9b1d   ; con IX+0A negativa: se mira en positivo...
	neg		;9b20
	call L_9B4D		;9b22   ; 7 o mas: rebota (la aceleracion IX+1A al reves, p01:7EFA)
	ld a,b			;9b25
	neg		;9b26   ; ...y vuelve a negativa
	ld (ix+00ah),a		;9b28
	ret			;9b2b
L_9B2C:
	ld a,(ix+00ah)		;9b2c
	bit 7,a		;9b2f
	jr nz,L_9B40		;9b31
	cp 004h		;9b33
	ret c			;9b35
	ld de,00400h		;9b36
	call 078b3h		;9b39   ; la velocidad en x (IX+9) (p01:78B3)
	call 07efah		;9b3c   ; la aceleracion en x (IX+1A), al reves (p01:7EFA)
	ret			;9b3f
L_9B40:
	cp 0fdh		;9b40
	ret nc			;9b42
	ld de,0fc00h		;9b43
	call 078b3h		;9b46   ; la velocidad en x (IX+9) (p01:78B3)
	call 07efah		;9b49   ; la aceleracion en x (IX+1A), al reves (p01:7EFA)
	ret			;9b4c
L_9B4D:
	ld b,007h		;9b4d   ; 7 o mas: rebota (la aceleracion IX+1A al reves, p01:7EFA)
	cp b			;9b4f
	jp nc,07efah		;9b50
	ld b,002h		;9b53   ; menos de 2: rebota igual
	cp b			;9b55
	jp c,07efah		;9b56
	ld b,a			;9b59   ; si no, B = A
	ret			;9b5a
L_9B5B:
	dec (ix+002h)		;9b5b   ; cada 6 cuadros, aceleracion en y al azar (+-0x200)
	ret nz			;9b5e
	ld (ix+002h),006h		;9b5f   ; la cuenta del enemigo = 0x06
	ld a,r		;9b63
	bit 6,a		;9b65
	ld de,00200h		;9b67
	jr nz,L_9B6F		;9b6a
	ld de,0fe00h		;9b6c
L_9B6F:
	jp 07f03h		;9b6f
L_9B72:
	call L_9B90		;9b72   ; con IX+1F = 1, cada 4 cuadros, el sonido 0x32
	bit 0,(ix+01ch)		;9b75
	ld de,0fd08h		;9b79
	jr z,L_9B81		;9b7c
	ld de,0fe04h		;9b7e
L_9B81:
	ld (hl),d			;9b81
	dec (ix+01dh)		;9b82   ; cada IX+1D cuadros...
	ret nz			;9b85
	ld (ix+01dh),e		;9b86
	call L_9B90		;9b89   ; ...el sonido (p02:9B90) y el paso siguiente
	inc (ix+01ch)		;9b8c
	ret			;9b8f
L_9B90:
	ld a,(ix+01fh)		;9b90   ; con IX+1F = 1, cada 4 cuadros, el sonido 0x32
	dec a			;9b93
	ret nz			;9b94
	ld a,(0e303h)		;9b95   ; lee la cuenta de cuadros del juego
	and 003h		;9b98
	ret nz			;9b9a
	jp 058e9h		;9b9b   ; sonido_32: pide el sonido 0x32
L_9B9E:
	ld h,(ix+006h)		;9b9e   ; el caracter del bufer donde esta: decorado (entre el fondo y 0xFC)? C
	ld l,(ix+004h)		;9ba1   ; lee la y del enemigo
	call 04a46h		;9ba4   ; sitio_en_bufer: la direccion del bufer de 0xC400 de la posicion HL (L la y, H la x)
	ld a,(0e405h)		;9ba7   ; lee el caracter del fondo de la fase
	ld c,a			;9baa
	ld a,(hl)			;9bab
	cp 0fdh		;9bac
	ret nc			;9bae
	cp c			;9baf
	ccf			;9bb0
	ret			;9bb1
L_9BB2:
	ld hl,0e499h		;9bb2   ; uno de los 4 movimientos de 0x9BC9 por turnos (0xE499)
	ld a,(hl)			;9bb5
	inc (hl)			;9bb6
	and 003h		;9bb7
	ld hl,09bc9h		;9bb9
	call 06e40h		;9bbc   ; la entrada A (de 4 bytes) de la tabla HL: DE y HL, y p01:78D7 (p01:6E40)
L_9BBF:
	ld a,r		;9bbf   ; y a veces (azar) el dibujo 0xA8
	bit 5,a		;9bc1
	ret z			;9bc3
	ld (ix+030h),0a8h		;9bc4   ; el dibujo del primer sprite del enemigo = 0xA8
	ret			;9bc8

; ----------------------------------------------------------------------
; DATOS leido_9BC9: 16 bytes que leen p01:6E46, p01:6E48, p01:6E4A, p01:6E4C
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:6E46, p01:6E48, p01:6E4A, p01:6E4C (16 bytes)
;   0x9bc9..0x9bd9  (16 bytes)
DATA_leido_9BC9:
	defb 000h,000h,000h,006h,000h,0ffh,080h,005h,000h,0feh,000h,005h,000h,0fdh,080h,004h	; 9bc9  ................

; ======================================================================
; CODIGO 0x9bd9..0x9c14  (59 bytes)
; ======================================================================


L_9BD9:
	ret			;9bd9
L_9BDA:
	xor a			;9bda   ; IX+14 y IX+0C a cero, IX+1F = 1, 2 cuadros
	ld (ix+014h),a		;9bdb
	ld (ix+00ch),a		;9bde
	inc a			;9be1
	ld (ix+01fh),a		;9be2
	ld (ix+002h),002h		;9be5   ; la cuenta de la pieza = 0x02
	ld bc,09604h		;9be9   ; y p05:B12E con BC = 0x9604
	jp 0b12eh		;9bec
L_9BEF:
	call L_9C20		;9bef   ; la animacion; si sale de la pantalla...
	call L_9C41		;9bf2   ; fuera de la pantalla (x por debajo de 0x20 o desde 0xC0): el borde vuelve a 0xE0 y NC
	ret nc			;9bf5
	dec (ix+01fh)		;9bf6   ; ...cuenta IX+1F...
	jr nz,$+82		;9bf9
	ld a,(ix+00ch)		;9bfb   ; ...y a cada vuelta otra cuenta de 0x9C14, el sonido 0x35 y el borde a 0xEF (un destello)
	inc (ix+00ch)		;9bfe
	and 007h		;9c01
	ld hl,09c14h		;9c03
	call 04a6eh		;9c06   ; lee_byte: A = el byte A de la tabla HL
	ld (ix+01fh),a		;9c09
	call 058f5h		;9c0c   ; sonido_35: pide el sonido 0x35
	ld b,0efh		;9c0f
	jp 04c40h		;9c11   ; color_del_borde: B al registro 7 del VDP

; ----------------------------------------------------------------------
; DATOS tabla_9C14: tabla que se lee desde HL = 0x9C14 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:9C03 (8 bytes)
;   0x9c14..0x9c1c  (8 bytes)
DATA_tabla_9C14:
	defb 020h,010h,030h,018h,024h,010h,030h,010h	; 9c14   .0.$.0.

; ----------------------------------------------------------------------
; DATOS leido_9C1C: 4 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (4 bytes)
;   0x9c1c..0x9c20  (4 bytes)
DATA_leido_9C1C:
	defb 096h,097h,098h,099h	; 9c1c

; ======================================================================
; CODIGO 0x9c20..0x9ca0  (128 bytes)
; ======================================================================


L_9C20:
	ld bc,00204h		;9c20   ; cada 2 cuadros, el dibujo siguiente de los 4 de 0x9C1C
	ld hl,09c1ch		;9c23
L_9C26:
	dec (ix+002h)		;9c26   ; resta 1 a la cuenta de la pieza
	ret nz			;9c29
	ld (ix+002h),b		;9c2a   ; guarda la cuenta de la pieza
	inc (ix+014h)		;9c2d
	ld a,(ix+014h)		;9c30
	cp c			;9c33
	jr c,L_9C3A		;9c34
	xor a			;9c36
	ld (ix+014h),a		;9c37
L_9C3A:
	call 04a6eh		;9c3a   ; lee_byte: A = el byte A de la tabla HL
	ld (ix+007h),a		;9c3d   ; guarda el dibujo de la pieza
	ret			;9c40
L_9C41:
	ld a,(ix+006h)		;9c41   ; fuera de la pantalla (x por debajo de 0x20 o desde 0xC0): el borde vuelve a 0xE0 y NC
	cp 020h		;9c44
	jr c,L_9C4B		;9c46
	cp 0c0h		;9c48
	ret c			;9c4a
L_9C4B:
	ld b,0e0h		;9c4b
	call 04c40h		;9c4d   ; color_del_borde: B al registro 7 del VDP
	or a			;9c50
	ret			;9c51
L_9C52:
	call L_9C87		;9c52   ; 4 x 4, sin tocar, 4 vidas, 4 disparos, 8 pasos; el dibujo 0x18 o 0x19 segun el lado
	ld (ix+009h),004h		;9c55   ; las filas de la pieza = 0x04
	ld (ix+00ah),004h		;9c59   ; las columnas de la pieza = 0x04
	ld (ix+002h),020h		;9c5d   ; la cuenta de la pieza = 0x20
	ld (ix+00dh),080h		;9c61   ; como se toca la pieza (bit 7: no se toca) = 0x80
	ld (ix+00eh),000h		;9c65
	ld (ix+008h),004h		;9c69   ; las vidas de la pieza = 0x04
	ld (ix+00ch),004h		;9c6d
	ld (ix+014h),008h		;9c71
	ld (ix+015h),0ffh		;9c75
	ld a,(ix+004h)		;9c79   ; lee la y de la pieza
	cp 060h		;9c7c
	ld a,018h		;9c7e
	jr c,L_9C83		;9c80
	inc a			;9c82
L_9C83:
	ld (ix+007h),a		;9c83   ; guarda el dibujo de la pieza
	ret			;9c86
L_9C87:
	ld a,(ix+004h)		;9c87   ; a cero la cuenta de su lado (0xE482 arriba, 0xE492 abajo)
	cp 060h		;9c8a
	ld hl,0e482h		;9c8c
	jr c,L_9C94		;9c8f
	ld hl,0e492h		;9c91
L_9C94:
	ld (hl),000h		;9c94
	ret			;9c96
L_9C97:
	call L_9DAC		;9c97   ; visible? y por el paso IX+1 (tabla de detras)
	ld a,(ix+001h)		;9c9a   ; lee el paso de la pieza
	call 04093h		;9c9d   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_9CA0: 5 destinos del despachador p00:4093 (call en p02:9C9D, el
;   indice en A): 9CAA, 9CC1, 9CED, 9CFE, 9D44; lo leen p02:9C9D (10 bytes)
;   0x9ca0..0x9caa  (10 bytes)
DATA_tabla_9CA0:
	defw 09caah,09cc1h,09cedh,09cfeh,09d44h	; 9ca0

; ======================================================================
; CODIGO 0x9caa..0x9ce9  (63 bytes)
; ======================================================================


L_9CAA:
	dec (ix+002h)		;9caa   ; paso 0: espera; sin IX+0B, 0x50 cuadros y al 1; con el, al 2
	ret nz			;9cad
	ld a,(ix+00bh)		;9cae   ; lee el B de la pieza
	or a			;9cb1
	jr nz,L_9CBC		;9cb2
	ld (ix+002h),050h		;9cb4   ; la cuenta de la pieza = 0x50
	inc (ix+001h)		;9cb8   ; suma 1 a el paso de la pieza
	ret			;9cbb
L_9CBC:
	ld (ix+001h),002h		;9cbc   ; el paso de la pieza = 0x02
	ret			;9cc0
L_9CC1:
	ld d,(ix+006h)		;9cc1   ; paso 1: suelta un 0x29 y vuelve al 0
	ld e,(ix+004h)		;9cc4   ; lee la y de la pieza
	ld a,029h		;9cc7
	ld c,000h		;9cc9
	call 07647h		;9ccb   ; una aparicion en una ficha libre, guardando IX (p01:7647)
	dec (ix+001h)		;9cce   ; resta 1 a el paso de la pieza
	ld (ix+002h),050h		;9cd1   ; la cuenta de la pieza = 0x50
	ret			;9cd5
L_9CD6:
	xor a			;9cd6   ; la animacion: 7 dibujos de 0x9CE9 o 0x9CEB segun IX+24
	or (ix+024h)		;9cd7
	ld hl,09ce9h		;9cda
	jr z,L_9CE2		;9cdd
	ld hl,09cebh		;9cdf
L_9CE2:
	ld bc,00702h		;9ce2
	call 07f7ch		;9ce5   ; cada B cuadros, el dibujo siguiente de los C de la tabla HL (IX+26) en IX+30 y IX+32 (p01:7F7C)
	ret			;9ce8

; ----------------------------------------------------------------------
; DATOS leido_9CE9: 4 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (4 bytes)
;   0x9ce9..0x9ced  (4 bytes)
DATA_leido_9CE9:
	defb 094h,098h,0f0h,0f4h	; 9ce9

; ======================================================================
; CODIGO 0x9ced..0x9da8  (187 bytes)
; ======================================================================


L_9CED:
	ld hl,0e303h		;9ced   ; paso 2: una vez de cada 16 (azar), al 3
	ld a,r		;9cf0
	add a,(hl)			;9cf2
	and 00fh		;9cf3
	ret nz			;9cf5
	ld (ix+002h),003h		;9cf6   ; la cuenta de la pieza = 0x03
	inc (ix+001h)		;9cfa   ; suma 1 a el paso de la pieza
	ret			;9cfd
L_9CFE:
	dec (ix+002h)		;9cfe   ; paso 3: dispara 6 veces seguidas (0x31) por su lado
	ret nz			;9d01
	ld a,(ix+006h)		;9d02   ; lee la x de la pieza
	cp 010h		;9d05
	jr c,L_9D37		;9d07
	add a,008h		;9d09
	ld d,a			;9d0b
	ld a,(ix+004h)		;9d0c   ; lee la y de la pieza
	cp 060h		;9d0f
	ld b,010h		;9d11
	jr c,L_9D17		;9d13
	ld b,000h		;9d15
L_9D17:
	add a,b			;9d17   ; la y + 0x10 si esta arriba (menos de 0x60), en E
	ld e,a			;9d18
	inc (ix+015h)		;9d19   ; una mas en IX+15: con 6, p02:9D37
	ld a,(ix+015h)		;9d1c
	cp 006h		;9d1f
	jr nc,L_9D37		;9d21
	ld b,a			;9d23
	ld c,000h		;9d24
	ld a,r		;9d26   ; C = 0 o 1 al azar (bit 5 de R)
	bit 5,a		;9d28
	jr z,L_9D2E		;9d2a
	ld c,001h		;9d2c
L_9D2E:
	ld a,031h		;9d2e
	call 07647h		;9d30   ; una aparicion en una ficha libre, guardando IX (p01:7647)
	inc (ix+001h)		;9d33   ; suma 1 a el paso de la pieza
	ret			;9d36
L_9D37:
	ld (ix+015h),0ffh		;9d37   ; y vuelve al 0 con 0x20 cuadros
	ld (ix+001h),000h		;9d3b   ; el paso de la pieza = 0x00
	ld (ix+002h),020h		;9d3f   ; la cuenta de la pieza = 0x20
	ret			;9d43
L_9D44:
	ld (ix+002h),003h		;9d44   ; la cuenta de la pieza = 0x03
	ld (ix+001h),003h		;9d48   ; el paso de la pieza = 0x03
	ret			;9d4c
L_9D4D:
	ld a,(ix+004h)		;9d4d   ; se pinta en el decorado: 0x0E arriba o 0x2C abajo, 6 x 4
	cp 060h		;9d50
	ld bc,00ef0h		;9d52
	jr c,L_9D5A		;9d55
	ld bc,02c00h		;9d57
L_9D5A:
	add a,c			;9d5a   ; IX+4: 0x10 mas arriba, o igual abajo
	ld (ix+007h),b		;9d5b   ; el dibujo en IX+7 (0x0E o 0x2C)
	ld (ix+009h),006h		;9d5e   ; 6 filas de 4 columnas
	ld (ix+00ah),004h		;9d62
	ld (ix+004h),a		;9d66
	jp L_8221		;9d69   ; y se pinta (p02:8221)
L_9D6C:
	ld a,(0e606h)		;9d6c   ; hacia la nave en x (+-0x200)
	cp (ix+006h)		;9d6f   ; compara con la x del enemigo
	ld de,00200h		;9d72
	jr nc,L_9D7A		;9d75
	ld de,0fe00h		;9d77
L_9D7A:
	ld a,(00004h)		;9d7a   ; la y de 0x0004, que es la BIOS (0xBF): por el resto deberia ser IX+4; siempre sube
	cp 060h		;9d7d
	ld hl,00600h		;9d7f   ; con la y "menor de 0x60" bajaria (+0x600 en y)...
	jr c,L_9D87		;9d82
	ld hl,0fa00h		;9d84   ; ...pero con 0xBF siempre sube (-0x600)
L_9D87:
	call 078d7h		;9d87
L_9D8A:
	ret			;9d8a
L_9D8B:
	call 04857h		;9d8b   ; el dibujo segun las dos velocidades (tabla de 0x9DA8)
	ld c,000h		;9d8e
	ld a,(ix+00ah)		;9d90
	rla			;9d93
	rl c		;9d94
	ld a,(ix+008h)		;9d96
	rla			;9d99
	rl c		;9d9a
	ld a,c			;9d9c
	ld hl,09da8h		;9d9d
	call 04089h		;9da0   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;9da3
	ld (ix+030h),a		;9da4   ; guarda el dibujo del primer sprite del enemigo
	ret			;9da7

; ----------------------------------------------------------------------
; DATOS tabla_9DA8: tabla que se lee desde HL = 0x9DA8 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:9D9D (4 bytes)
;   0x9da8..0x9dac  (4 bytes)
DATA_tabla_9DA8:
	defb 0bch,0cch,0b8h,0c8h	; 9da8

; ======================================================================
; CODIGO 0x9dac..0x9df6  (74 bytes)
; ======================================================================


L_9DAC:
	ld a,(ix+006h)		;9dac   ; con la x por debajo de 0xE0 se puede tocar
	cp 0e0h		;9daf
	ret nc			;9db1
	res 7,(ix+00dh)		;9db2   ; pone a cero el bit 7 de como se toca la pieza (bit 7: no se toca)
	ret			;9db6
L_9DB7:
	call L_9C87		;9db7   ; 4 x 4, sin tocar, 8 vidas, 4 disparos, 6 pasos
	ld (ix+009h),004h		;9dba   ; las filas de la pieza = 0x04
	ld (ix+00ah),004h		;9dbe   ; las columnas de la pieza = 0x04
	ld (ix+002h),020h		;9dc2   ; la cuenta de la pieza = 0x20
	ld (ix+00dh),080h		;9dc6   ; como se toca la pieza (bit 7: no se toca) = 0x80
	ld (ix+008h),008h		;9dca   ; las vidas de la pieza = 0x08
	ld (ix+00ch),004h		;9dce
	ld (ix+014h),006h		;9dd2
L_9DD6:
	ld a,(0e361h)		;9dd6   ; el dibujo: 0x1A en la fase 9; si no, 0x5A o 0x58
	cp 009h		;9dd9
	ld a,01ah		;9ddb
	jr z,L_9DE9		;9ddd
	ld a,(ix+00bh)		;9ddf   ; lee el B de la pieza
	or a			;9de2
	ld a,05ah		;9de3
	jr z,L_9DE9		;9de5
	ld a,058h		;9de7
L_9DE9:
	ld (ix+007h),a		;9de9   ; guarda el dibujo de la pieza
	ret			;9dec
L_9DED:
	call L_9DAC		;9ded   ; visible? y por el paso IX+1 (tabla de detras)
	ld a,(ix+001h)		;9df0   ; lee el paso de la pieza
	call 04093h		;9df3   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_9DF6: 4 destinos del despachador p00:4093 (call en p02:9DF3, el
;   indice en A): 9DFE, 9E11, 9E1C, 9E5F; lo leen p02:9DF3 (8 bytes)
;   0x9df6..0x9dfe  (8 bytes)
DATA_tabla_9DF6:
	defw 09dfeh,09e11h,09e1ch,09e5fh	; 9df6  -> L_9DFE L_9E11 L_9E1C L_9E5F

; ======================================================================
; CODIGO 0x9dfe..0x9e6e  (112 bytes)
; ======================================================================


L_9DFE:
	dec (ix+002h)		;9dfe   ; paso 0: espera 0x28, abre (dibujo + 1) y al paso 1
	ret nz			;9e01
	ld (ix+002h),028h		;9e02   ; la cuenta de la pieza = 0x28
	inc (ix+007h)		;9e06   ; suma 1 a el dibujo de la pieza
	xor a			;9e09
	ld (0e482h),a		;9e0a   ; 0xE482 = 0
L_9E0D:
	inc (ix+001h)		;9e0d   ; suma 1 a el paso de la pieza
	ret			;9e10
L_9E11:
	dec (ix+002h)		;9e11   ; paso 1: dispara mientras espera
	jr nz,L_9E32		;9e14
	ld (ix+002h),028h		;9e16   ; la cuenta de la pieza = 0x28
	jr L_9E0D		;9e1a
L_9E1C:
	dec (ix+002h)		;9e1c   ; paso 2: cierra, 6 disparos mas y al siguiente
	jr nz,L_9E32		;9e1f
	dec (ix+007h)		;9e21   ; resta 1 a el dibujo de la pieza
	ld (ix+002h),020h		;9e24   ; la cuenta de la pieza = 0x20
	ld (ix+014h),006h		;9e28
	ld (ix+00ch),004h		;9e2c
	jr L_9E0D		;9e30
L_9E32:
	ld a,(ix+00ch)		;9e32   ; los disparos que quedan (IX+0C), uno cada 6 cuadros
	or a			;9e35
	ret z			;9e36
	dec (ix+014h)		;9e37
	ret nz			;9e3a
	ld (ix+014h),006h		;9e3b
	dec (ix+00ch)		;9e3f
	ld a,(ix+004h)		;9e42   ; por su lado (y + 0x18 si esta arriba)
	cp 060h		;9e45
	ld bc,00118h		;9e47
	jr c,L_9E4F		;9e4a
	ld bc,00000h		;9e4c
L_9E4F:
	add a,c			;9e4f
	ld e,a			;9e50
	ld a,(ix+006h)		;9e51   ; lee la x de la pieza
	add a,008h		;9e54
	ld d,a			;9e56
	ld c,000h		;9e57
	ld a,00ch		;9e59   ; la bala 0x0C
	call 07647h		;9e5b   ; una aparicion en una ficha libre, guardando IX (p01:7647)
	ret			;9e5e
L_9E5F:
	dec (ix+002h)		;9e5f   ; paso 3: espera y vuelta al 0
	ret nz			;9e62
	ld (ix+002h),020h		;9e63   ; la cuenta de la pieza = 0x20
	ld (ix+001h),000h		;9e67   ; el paso de la pieza = 0x00
	jp L_9DD6		;9e6b

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9e6e..0x9e6f  (1 bytes)
DATA_9E6E:
	defb 0c9h	; 9e6e

; ======================================================================
; CODIGO 0x9e6f..0x9f1c  (173 bytes)
; ======================================================================


L_9E6F:
	ld a,(0e606h)		;9e6f   ; mira a la nave en x (IX+24) y avanza hacia su lado (+-0x400)
	cp (ix+006h)		;9e72   ; compara con la x del enemigo
	ld a,001h		;9e75
	jr nc,L_9E7A		;9e77
	dec a			;9e79
L_9E7A:
	ld (ix+024h),a		;9e7a   ; IX+24: 1 si la nave esta a la derecha, 0 si no
	ld a,(ix+01fh)		;9e7d   ; con IX+1F, +0x400; sin el, -0x400
	or a			;9e80
	ld de,00400h		;9e81
	jr nz,L_9E89		;9e84
	ld de,0fc00h		;9e86
L_9E89:
	call 078ach		;9e89   ; la velocidad en y (IX+7, 16 bits) (p01:78AC)
L_9E8C:
	ld de,00000h		;9e8c
	call 078b3h		;9e8f   ; la velocidad en x (IX+9) (p01:78B3)
L_9E92:
	ret			;9e92
L_9E93:
	call L_9CD6		;9e93   ; la animacion; en el paso 0...
	ld a,(ix+001h)		;9e96   ; lee el paso del enemigo
	or a			;9e99
	ret nz			;9e9a
	ld a,(ix+01fh)		;9e9b   ; ...espera a que la nave (o el anterior de su lado, 0xE482/0xE492) pase por delante
	or a			;9e9e
	jr nz,L_9EB7		;9e9f
	ld hl,0e482h		;9ea1
	ld a,(hl)			;9ea4
	or a			;9ea5
	jr z,L_9EAE		;9ea6
	cp (ix+004h)		;9ea8   ; compara con la y del enemigo
	ret c			;9eab
	jr L_9ECC		;9eac
L_9EAE:
	ld a,(0e604h)		;9eae   ; lee la y de la nave (el primer byte de su sprite, p01:797C)
	cp (ix+004h)		;9eb1   ; compara con la y del enemigo
	ret c			;9eb4
	jr L_9ECB		;9eb5
L_9EB7:
	ld hl,0e492h		;9eb7
	ld a,(hl)			;9eba
	or a			;9ebb
	jr z,L_9EC4		;9ebc
	cp (ix+004h)		;9ebe   ; compara con la y del enemigo
	ret nc			;9ec1
	jr L_9ECC		;9ec2
L_9EC4:
	ld a,(0e604h)		;9ec4   ; lee la y de la nave (el primer byte de su sprite, p01:797C)
	cp (ix+004h)		;9ec7   ; compara con la y del enemigo
	ret nc			;9eca
L_9ECB:
	ld (hl),a			;9ecb   ; apunta su x en la cuenta de su lado
L_9ECC:
	ld de,00000h		;9ecc   ; se para en y y va hacia la nave en x (+-0x600)
	call 078ach		;9ecf   ; la velocidad en y (IX+7, 16 bits) (p01:78AC)
	ld a,(0e606h)		;9ed2   ; lee la x de la nave
	cp (ix+006h)		;9ed5   ; compara con la x del enemigo
	ld b,001h		;9ed8
	ld de,00600h		;9eda
	jr nc,L_9EE3		;9edd
	dec b			;9edf
	ld de,0fa00h		;9ee0
L_9EE3:
	ld (ix+024h),b		;9ee3
	call 078b3h		;9ee6   ; la velocidad en x (IX+9) (p01:78B3)
	inc (ix+001h)		;9ee9   ; suma 1 a el paso del enemigo
	ret			;9eec
L_9EED:
	ld (ix+010h),00fh		;9eed   ; IX+10 = 0x0F, quieto, 1 cuadro
	call 078c8h		;9ef1
L_9EF4:
	ld (ix+001h),000h		;9ef4   ; el paso del enemigo = 0x00
	ld (ix+002h),001h		;9ef8   ; la cuenta del enemigo = 0x01
	ld b,000h		;9efc   ; el lado: IX+24
	ld a,(ix+004h)		;9efe   ; lee la y del enemigo
	cp 060h		;9f01
	jr c,L_9F06		;9f03
	inc b			;9f05
L_9F06:
	ld (ix+024h),b		;9f06
	call L_9F2F		;9f09   ; el dibujo 0xB0 o 0xC0
L_9F0C:
	ld a,0b0h		;9f0c
	jr nz,L_9F12		;9f0e
	add a,010h		;9f10
L_9F12:
	ld (ix+030h),a		;9f12   ; guarda el dibujo del primer sprite del enemigo
	ret			;9f15
L_9F16:
	ld a,(ix+001h)		;9f16   ; por el paso IX+1 (tabla de detras)
	call 04093h		;9f19   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_9F1C: 4 destinos del despachador p00:4093 (call en p02:9F19, el
;   indice en A): 9F34, 9F52, 9F71, 9F8D; lo leen p02:9F19 (8 bytes)
;   0x9f1c..0x9f24  (8 bytes)
DATA_tabla_9F1C:
	defw 09f34h,09f52h,09f71h,09f8dh	; 9f1c  -> L_9F34 L_9F52 L_9F71 L_9F8D

; ======================================================================
; CODIGO 0x9f24..0x9f2b  (7 bytes)
; ======================================================================


L_9F24:
	ld (ix+002h),a		;9f24   ; la espera A y al paso siguiente
	inc (ix+001h)		;9f27   ; suma 1 a el paso del enemigo
	ret			;9f2a

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9f2b..0x9f2f  (4 bytes)
DATA_9F2B:
	defb 0ddh,035h,002h,0c9h	; 9f2b

; ======================================================================
; CODIGO 0x9f2f..0x9f4c  (29 bytes)
; ======================================================================


L_9F2F:
	ld a,(ix+024h)		;9f2f   ; su lado (IX+24)
	or a			;9f32
	ret			;9f33
L_9F34:
	call 078c8h		;9f34   ; paso 0: se para, 4 vidas, y la espera de 0x9F4C segun IX+1F
	ld (ix+008h),004h		;9f37
	call L_9F2F		;9f3b   ; su lado (IX+24)
	call nz,078ddh		;9f3e   ; la velocidad en y, al reves (p01:78DD)
	ld a,(ix+01fh)		;9f41
	ld hl,09f4ch		;9f44
	call 04a6eh		;9f47   ; lee_byte: A = el byte A de la tabla HL
	jr $-38		;9f4a

; ----------------------------------------------------------------------
; DATOS tabla_9F4C: tabla que se lee desde HL = 0x9F4C con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:9F44 (6 bytes)
;   0x9f4c..0x9f52  (6 bytes)
DATA_tabla_9F4C:
	defb 018h,014h,010h,00ch,008h,004h	; 9f4c

; ======================================================================
; CODIGO 0x9f52..0x9fcc  (122 bytes)
; ======================================================================


L_9F52:
	dec (ix+002h)		;9f52   ; paso 1: deja de ir con el scroll y cambia de dibujo
	ret nz			;9f55
	call 078c8h		;9f56
	res 3,(ix+010h)		;9f59   ; pone a cero el bit 3 de las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll)
	ld a,(ix+030h)		;9f5d   ; lee el dibujo del primer sprite del enemigo
	add a,008h		;9f60
	bit 0,(ix+01fh)		;9f62
	jr z,L_9F6A		;9f66
	add a,004h		;9f68
L_9F6A:
	ld (ix+030h),a		;9f6a   ; guarda el dibujo del primer sprite del enemigo
	ld a,004h		;9f6d
	jr $-75		;9f6f
L_9F71:
	dec (ix+002h)		;9f71   ; paso 2: el dibujo 0xB4, 4 de alto
	ret nz			;9f74
	ld (ix+030h),0b4h		;9f75   ; el dibujo del primer sprite del enemigo = 0xB4
	call 078c8h		;9f79
	ld (ix+00ah),004h		;9f7c
	bit 0,(ix+01fh)		;9f80
	call nz,078edh		;9f84   ; la velocidad en x, al reves (p01:78ED)
	res 4,(ix+010h)		;9f87   ; pone a cero el bit 4 de las marcas del enemigo (bit 2 con velocidad, bit 3 va con el scroll)
	jr $-103		;9f8b
L_9F8D:
	ret			;9f8d
L_9F8E:
	ld (ix+025h),0c0h		;9f8e   ; 0xC0 en IX+25 y hacia el centro en x (+-0x200)
	ld de,00200h		;9f92
	ld a,(ix+006h)		;9f95   ; lee la x del enemigo
	sub 078h		;9f98
	call nc,04a75h		;9f9a   ; niega_de: DE = -DE
	call 078b3h		;9f9d   ; la velocidad en x (IX+9) (p01:78B3)
L_9FA0:
	ld a,(ix+004h)		;9fa0   ; el lado (y por debajo de 0x58)
	sub 058h		;9fa3
	ld b,000h		;9fa5
	jr nc,L_9FAA		;9fa7
	inc b			;9fa9
L_9FAA:
	ld (ix+01fh),b		;9faa
L_9FAD:
	ld (ix+02fh),000h		;9fad
	bit 0,(ix+01fh)		;9fb1   ; y en diagonal hacia el otro lado
	ld de,00800h		;9fb5
	ld hl,0ff00h		;9fb8
	jr nz,L_9FC3		;9fbb
	ld de,0f800h		;9fbd
	ld hl,00100h		;9fc0
L_9FC3:
	jp L_99D8		;9fc3
L_9FC6:
	ld a,(ix+001h)		;9fc6   ; por el paso IX+1 (tabla de detras)
	call 04093h		;9fc9   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_9FCC: 4 destinos del despachador p00:4093 (call en p02:9FC9, el
;   indice en A): 9FD4, A018, 9FD9, A018; lo leen p02:9FC9 (8 bytes)
;   0x9fcc..0x9fd4  (8 bytes)
DATA_tabla_9FCC:
	defw 09fd4h,0a018h,09fd9h,0a018h	; 9fcc  -> L_9FD4 0xa018 L_9FD9 0xa018

; ======================================================================
; CODIGO 0x9fd4..0x9fff  (43 bytes)
; ======================================================================


L_9FD4:
	call 07f5bh		;9fd4   ; se va al pasar el tiempo; si no, acelera y choca con el decorado
	jr c,$+55		;9fd7
L_9FD9:
	call 07f1ch		;9fd9   ; la velocidad en y += la aceleracion (p01:7F1C)
	call L_9FE6		;9fdc   ; el decorado por delante o por detras: IX+1F el lado libre
	call 0a025h		;9fdf   ; el dibujo segun la direccion (tabla de 0xA0B9) (p03:A025)
	call 0a058h		;9fe2   ; dispara una vez (IX+2F) con los dibujos 0xB4 o 0xC4: 4 balas en abanico (p03:A058)
	ret			;9fe5
L_9FE6:
	call L_940B		;9fe6   ; el decorado por delante o por detras: IX+1F el lado libre
	ld a,001h		;9fe9
	jr c,L_9FF2		;9feb
	call L_9413		;9fed
	ret nc			;9ff0
	xor a			;9ff1
L_9FF2:
	ld (ix+01fh),a		;9ff2
	or a			;9ff5
	ld a,(ix+004h)		;9ff6   ; lee la y del enemigo
	jr z,L_9FFD		;9ff9
	add a,008h		;9ffb
L_9FFD:
	and 0f8h		;9ffd

; ----------------------------------------------------------------------
; DATOS partida_9FFF: los 1 primeros bytes de una instruccion de 3 (DD 77 04)
;   que sigue en el banco 3: el trazador de un solo banco no puede verla
;   entera (tools/bancos.py); lo leen p02:9FFF (1 bytes)
;   0x9fff..0xa000  (1 bytes)
DATA_partida_9FFF:
	defb 0ddh	; 9fff

; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 00 (se ejecuta en 0x4000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x04000


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
l5cf4h:	equ 0x05cf4

; ----------------------------------------------------------------------
; DATOS resto_4000: lo apuntan con el banco puesto p00:4C20 (0x4000), p01:6DAC
;   (0x4010), p01:6DB6 (0x4011), p19:A9B8 (0x402A); el tamano es lo que hay
;   hasta lo siguiente, no sale de recorrerlo; lo leen p00:4C20, p01:6DAC,
;   p01:6DB6, p19:A9B8 (46 bytes)
;   0x4000..0x402e  (46 bytes)
DATA_resto_4000:
	defb 041h,042h,09dh,040h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; 4000  AB.@............
	defb 043h,044h,007h,064h,0b8h,000h,0e3h,004h,061h,0e3h,008h,060h,0e3h,002h,0e3h,000h	; 4010  CD.d....a..`....
	defb 000h,000h,000h,000h,000h,000h,000h,000h,080h,000h,000h,002h,0ffh,0ffh	; 4020  ..............

; ======================================================================
; CODIGO 0x402e..0x42a2  (628 bytes)
; ======================================================================


interrupcion:		; la interrupcion: el sonido (10-11-12) y el cuadro del juego
	call 0013eh		;402e   ; BIOS RDVDP - Reads VDP status register | la interrupcion (H.KEYI): primero se lee el estado del VDP, que la da por atendida
	ld hl,(0e333h)		;4031   ; una cuenta de cuadros en 0xE333
	inc hl			;4034
	ld (0e333h),hl		;4035   ; sube y se guarda
	ld hl,(0e339h)		;4038   ; otra cuenta de cuadros en 0xE339
	inc hl			;403b
	ld (0e339h),hl		;403c   ; sube y se guarda
	di			;403f   ; sin interrupciones mientras se mira la marca
	ld hl,0e306h		;4040   ; 0xE306: el sonido ya esta en marcha?
	ld a,(hl)			;4043   ; lee la marca
	and a			;4044   ; 0 = libre
	ld (hl),001h		;4045   ; la marca a 1 mientras suena
	jp nz,L_4084		;4047   ; si ya estaba, no se vuelve a entrar: fuera
	ld a,00ah		;404a   ; los bancos 10-11-12 sin tocar sus copias: el sonido
	ld (07000h),a		;404c   ; el 10 en 0x6000
	inc a			;404f
	ld (09000h),a		;4050   ; el 11 en 0x8000
	inc a			;4053
	ld (0b000h),a		;4054   ; el 12 en 0xA000
	call 06006h		;4057   ; p10:6006: el sonido de este cuadro
	xor a			;405a   ; se acabo el sonido de este cuadro
	ld (0e306h),a		;405b   ; la marca de sonido a 0
	di			;405e   ; sin interrupciones para devolver los bancos
	ld a,(0f0f1h)		;405f   ; lo que habia en 0x6000, segun su copia 0xF0F1
	ld (07000h),a		;4062   ; el mapper: pone en 0x6000 el banco de A
	ld a,(0f0f2h)		;4065   ; lo de 0x8000 (0xF0F2)
	ld (09000h),a		;4068   ; el mapper: pone en 0x8000 el banco de A
	ld a,(0f0f3h)		;406b   ; lo de 0xA000 (0xF0F3)
	ld (0b000h),a		;406e   ; el mapper: pone en 0xA000 el banco de A
	ld hl,0e305h		;4071   ; 0xE305: el cuadro del juego ya esta en marcha?
	ld a,(hl)			;4074   ; lee la marca
	and a			;4075   ; 0 = libre
	jr nz,L_4084		;4076   ; si no, solo el sonido
	inc (hl)			;4078   ; la marca a 1
	ei			;4079   ; con interrupciones: el cuadro puede durar mas de una
	call lee_mandos		;407a   ; p00:4C45: lee el teclado y el mando
	call cuadro_del_juego		;407d   ; p00:428A: el cuadro del juego
	xor a			;4080   ; el cuadro ha acabado
	ld (0e305h),a		;4081   ; la marca del cuadro a 0
L_4084:
	call 0013eh		;4084   ; BIOS RDVDP - Reads VDP status register | vuelve leyendo el estado del VDP
	ei			;4087
	ret			;4088
suma_a_hl:		; HL = HL + A
	add a,l			;4089   ; L + A
	ld l,a			;408a   ; en L
	ret nc			;408b   ; sin acarreo, ya esta
	inc h			;408c   ; con acarreo, H + 1
	ret			;408d
suma_a_de:		; DE = DE + A
	add a,e			;408e   ; E + A
	ld e,a			;408f   ; en E
	ret nc			;4090   ; sin acarreo, ya esta
	inc d			;4091   ; con acarreo, D + 1
	ret			;4092
despacha:		; salta a la palabra A de la tabla que va detras del call
	pop hl			;4093   ; el despachador: HL = la tabla que va detras del call (su direccion de vuelta)
L_4094:
	add a,a			;4094   ; A x 2: la palabra A
	call suma_a_hl		;4095   ; + la tabla
	ld a,(hl)			;4098   ; la palabra, byte bajo
	inc hl			;4099   ; byte alto
	ld h,(hl)			;409a
	ld l,a			;409b   ; en HL
	jp (hl)			;409c   ; y alli se salta
init:		; el arranque del cartucho (INIT)
	di			;409d   ; INIT: lo llama la BIOS al encender, sin interrupciones
	im 1		;409e   ; modo de interrupcion 1 (salta a 0x0038)
	ld sp,0f0d0h		;40a0   ; la pila, bajo la pila de bancos de 0xF0D0
	call cartucho_en_8000		;40a3   ; p00:4109: el cartucho tambien en 0x8000-0xBFFF (ENASLT)
	call ranura_del_cartucho		;40a6   ; p00:4129: la ranura del cartucho, en 0xF0F8
	ld hl,0e000h		;40a9   ; 0xE000-0xEFFF a cero: la RAM del juego
	ld de,0e001h		;40ac
	ld bc,00fffh		;40af
	ld (hl),000h		;40b2
	ldir		;40b4
	ld hl,0c400h		;40b6   ; 0xC400-0xCFFF a cero
	ld de,0c401h		;40b9
	ld bc,00bffh		;40bc
	ld (hl),000h		;40bf
	ldir		;40c1
	ld a,001h		;40c3   ; 0xE33B a 1
	ld (0e33bh),a		;40c5   ; guarda la fase de la proxima demostracion (1 a 3)
	ld hl,0f0f0h		;40c8   ; el reparto de encendido con sus copias en 0xF0F0-0xF0F3
	xor a			;40cb
	ld (05000h),a		;40cc   ; el 0 en 0x4000 (no se vuelve a tocar)
	ld (hl),a			;40cf
	inc a			;40d0
	ld (07000h),a		;40d1   ; el 1 en 0x6000
	inc hl			;40d4
	ld (hl),a			;40d5
	inc a			;40d6
	ld (09000h),a		;40d7   ; el 2 en 0x8000
	inc hl			;40da
	ld (hl),a			;40db
	inc a			;40dc
	ld (0b000h),a		;40dd   ; el 3 en 0xA000
	inc hl			;40e0
	ld (hl),a			;40e1
	ld hl,0f0d2h		;40e2   ; la pila de bancos empieza en 0xF0D2
	ld (0f0d0h),hl		;40e5   ; guarda el puntero de la pila de repartos y el byte siguiente (16 bits)
	di			;40e8   ; sin interrupciones
	call arranca_sonido_y_vdp		;40e9   ; p00:4BFA: arranca el sonido y pone el VDP
	call 06d76h		;40ec
	ld a,0c3h		;40ef   ; el gancho H.KEYI (0xFD9A): jp 0x402E, la interrupcion
	ld (0fd9ah),a		;40f1
	ld hl,interrupcion		;40f4
	ld (0fd9bh),hl		;40f7
	ld a,0c9h		;40fa   ; H.TIMI (0xFD9F) a ret
	ld (0fd9fh),a		;40fc
	xor a			;40ff   ; 0xF3DB = 0: sin el clic de las teclas
	ld (0f3dbh),a		;4100
	call 0013eh		;4103   ; BIOS RDVDP - Reads VDP status register | lee el estado del VDP
	ei			;4106   ; con interrupciones
L_4107:
	jr L_4107		;4107   ; y aqui se queda: todo el juego corre en la interrupcion
cartucho_en_8000:		; pone el cartucho tambien en 0x8000-0xBFFF (ENASLT)
	call 00138h		;4109   ; BIOS RSLREG - Reads the primary slot register | RSLREG: la ranura primaria de cada pagina
	rrca			;410c   ; la de la pagina 1 (0x4000)...
	rrca			;410d
	and 003h		;410e   ; ...a los bits 0-1
	ld c,a			;4110
	ld b,000h		;4111
	ld hl,0fcc1h		;4113   ; EXPTBL: si esa ranura esta expandida
	add hl,bc			;4116
	ld a,(hl)			;4117
	and 080h		;4118   ; bit 7
	or c			;411a
	ld c,a			;411b
	inc hl			;411c   ; la tabla SLTTBL, cuatro mas alla
	inc hl			;411d
	inc hl			;411e
	inc hl			;411f
	ld a,(hl)			;4120   ; la subranura de la pagina 1
	and 00ch		;4121
	or c			;4123
	ld h,080h		;4124   ; H = 0x80: la pagina 2 (0x8000)
	jp 00024h		;4126   ; BIOS ENASLT - Switches to specified slot and page definitively | ENASLT: el cartucho tambien en 0x8000
ranura_del_cartucho:		; la ranura del cartucho, en 0xF0F8
	call 00138h		;4129   ; BIOS RSLREG - Reads the primary slot register | la misma ranura (primaria y subranura de la pagina 1)...
	rrca			;412c
	rrca			;412d
	and 003h		;412e
	ld c,a			;4130
	ld b,000h		;4131
	ld hl,0fcc1h		;4133
	add hl,bc			;4136
	or (hl)			;4137
	ld c,a			;4138
	inc hl			;4139
	inc hl			;413a
	inc hl			;413b
	inc hl			;413c
	ld a,(hl)			;413d
	and 00ch		;413e
	or c			;4140
	ld (0f0f8h),a		;4141   ; ...y se guarda en 0xF0F8
	ret			;4144
guarda_y_bancos_1_2_3:		; guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call guarda_reparto		;4145   ; guarda el reparto en la pila y pone 1-2-3
bancos_1_2_3:		; pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	push af			;4148   ; pone 1-2-3 (sin guardar)
	ld a,001h		;4149
	call pon_tres_bancos		;414b   ; pon_tres_bancos: pone A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000
	pop af			;414e
	ret			;414f
bancos_3:		; pone el 3 (y sus copias en 0xF0F1-3)
	push af			;4150   ; el 3 en 0xA000
	ld a,003h		;4151
	call pon_a000		;4153   ; pon_a000: pone A en 0xA000
	pop af			;4156
	ret			;4157
guarda_y_bancos_4_5:		; guarda el reparto en la pila y pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call guarda_reparto		;4158   ; guarda el reparto y pone el 4 y el 5 en 0x8000 y 0xA000
bancos_4_5:		; pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	push af			;415b   ; el 4 y el 5 (sin guardar)
	ld a,004h		;415c
	call pon_8000_a000		;415e   ; pon_8000_a000: pone A y A+1 en 0x8000 y 0xA000
	pop af			;4161
	ret			;4162
bancos_5:		; pone el 5 (y sus copias en 0xF0F1-3)
	push af			;4163   ; el 5 en 0xA000
	ld a,005h		;4164
	call pon_a000		;4166   ; pon_a000: pone A en 0xA000
	pop af			;4169
	ret			;416a
bancos_6_7:		; pone los bancos 6-7 (y sus copias en 0xF0F1-3)
	push af			;416b   ; el 6 y el 7 en 0x8000 y 0xA000
	ld a,006h		;416c
	call pon_8000_a000		;416e   ; pon_8000_a000: pone A y A+1 en 0x8000 y 0xA000
	pop af			;4171
	ret			;4172
bancos_7:		; pone el 7 (y sus copias en 0xF0F1-3)
	push af			;4173   ; el 7 en 0xA000
	ld a,007h		;4174
	call pon_a000		;4176   ; pon_a000: pone A en 0xA000
	pop af			;4179
	ret			;417a
bancos_8:		; pone el 8 (y sus copias en 0xF0F1-3)
	push af			;417b   ; el 8 en 0xA000
	ld a,008h		;417c
	call pon_a000		;417e   ; pon_a000: pone A en 0xA000
	pop af			;4181
	ret			;4182
guarda_y_bancos_16_17_18:		; guarda el reparto en la pila y pone los bancos 16-17-18 (y sus copias en 0xF0F1-3)
	call guarda_reparto		;4183   ; guarda el reparto y pone 16-17-18
bancos_16_17_18:		; pone los bancos 16-17-18 (y sus copias en 0xF0F1-3)
	push af			;4186   ; 16-17-18 (sin guardar)
	ld a,010h		;4187
	call pon_tres_bancos		;4189   ; pon_tres_bancos: pone A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000
	pop af			;418c
	ret			;418d
guarda_y_bancos_14_15:		; guarda el reparto en la pila y pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	call guarda_reparto		;418e   ; guarda el reparto y pone el 14 y el 15 en 0x6000 y 0x8000
bancos_14_15:		; pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	push af			;4191   ; el 14 y el 15 (sin guardar)
	ld a,00eh		;4192
	call pon_6000_8000		;4194   ; pon_6000_8000: pone A y A+1 en 0x6000 y 0x8000
	pop af			;4197
	ret			;4198
bancos_15:		; pone el 15 (y sus copias en 0xF0F1-3)
	push af			;4199   ; el 15 en 0x8000
	ld a,00fh		;419a
	call pon_8000		;419c   ; pon_8000: pone A en 0x8000
	pop af			;419f
	ret			;41a0
guarda_y_bancos_20_21_22:		; guarda el reparto en la pila y pone los bancos 20-21-22 (y sus copias en 0xF0F1-3)
	call guarda_reparto		;41a1   ; guarda el reparto y pone 20-21-22
bancos_20_21_22:		; pone los bancos 20-21-22 (y sus copias en 0xF0F1-3)
	push af			;41a4   ; 20-21-22 (sin guardar)
	ld a,014h		;41a5
	call pon_tres_bancos		;41a7   ; pon_tres_bancos: pone A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000
	pop af			;41aa
	ret			;41ab
bancos_22:		; pone el 22 (y sus copias en 0xF0F1-3)
	push af			;41ac   ; el 22 en 0xA000
	ld a,016h		;41ad
	call pon_a000		;41af   ; pon_a000: pone A en 0xA000
	pop af			;41b2
	ret			;41b3
bancos_23_24_25:		; pone los bancos 23-24-25 (y sus copias en 0xF0F1-3)
	push af			;41b4   ; 23-24-25
	ld a,017h		;41b5
	call pon_tres_bancos		;41b7   ; pon_tres_bancos: pone A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000
	pop af			;41ba
	ret			;41bb
guarda_y_bancos_26_27_28:		; guarda el reparto en la pila y pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	call guarda_reparto		;41bc   ; guarda el reparto y pone 26-27-28
bancos_26_27_28:		; pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	push af			;41bf   ; 26-27-28 (sin guardar)
	ld a,01ah		;41c0
	call pon_tres_bancos		;41c2   ; pon_tres_bancos: pone A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000
	pop af			;41c5
	ret			;41c6
bancos_26:		; pone el 26 (y sus copias en 0xF0F1-3)
	push af			;41c7   ; el 26 en 0x6000
	ld a,01ah		;41c8
	call pon_6000		;41ca   ; pon_6000: pone A en 0x6000
	pop af			;41cd
	ret			;41ce
bancos_26_28:		; pone los bancos 26-28 (y sus copias en 0xF0F1-3)
	push af			;41cf   ; el 26 en 0x6000 y el 28 en 0xA000
	ld a,01ah		;41d0
	call pon_6000		;41d2   ; pon_6000: pone A en 0x6000
	ld a,01ch		;41d5
	call pon_a000		;41d7   ; pon_a000: pone A en 0xA000
	pop af			;41da
	ret			;41db
bancos_30_31:		; pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	push af			;41dc   ; el 30 y el 31 en 0x8000 y 0xA000
	ld a,01eh		;41dd
	call pon_8000_a000		;41df   ; pon_8000_a000: pone A y A+1 en 0x8000 y 0xA000
	pop af			;41e2
	ret			;41e3
bancos_29:		; pone el 29 (y sus copias en 0xF0F1-3)
	push af			;41e4   ; el 29 en 0xA000
	ld a,01dh		;41e5
	call pon_a000		;41e7   ; pon_a000: pone A en 0xA000
	pop af			;41ea
	ret			;41eb
guarda_y_bancos_19:		; guarda el reparto en la pila y pone el 19 (y sus copias en 0xF0F1-3)
	call guarda_reparto		;41ec   ; guarda el reparto y pone el 19 en 0xA000
bancos_19:		; pone el 19 (y sus copias en 0xF0F1-3)
	push af			;41ef   ; el 19 en 0xA000 (sin guardar)
	ld a,013h		;41f0
	call pon_a000		;41f2   ; pon_a000: pone A en 0xA000
	pop af			;41f5
	ret			;41f6
guarda_reparto:		; guarda las tres copias del mapper en la pila de 0xF0D0
	di			;41f7   ; guarda el reparto: las tres copias 0xF0F1-3 en la pila de 0xF0D0
	push hl			;41f8
	push af			;41f9
	ld hl,(0f0d0h)		;41fa   ; el puntero de la pila
	ld a,(0f0f1h)		;41fd   ; la copia de 0x6000
	ld (hl),a			;4200
	inc hl			;4201
	ld a,(0f0f2h)		;4202   ; la de 0x8000
	ld (hl),a			;4205
	inc hl			;4206
	ld a,(0f0f3h)		;4207   ; la de 0xA000
	ld (hl),a			;420a
	inc hl			;420b
	ld (0f0d0h),hl		;420c   ; el puntero, tres bytes mas arriba
	pop af			;420f
	pop hl			;4210
	ei			;4211
	ret			;4212
devuelve_reparto:		; saca de la pila el ultimo reparto y lo vuelve a poner
	di			;4213   ; saca de la pila el ultimo reparto guardado y lo vuelve a poner
	push hl			;4214
	push af			;4215
	ld hl,(0f0d0h)		;4216   ; el puntero de la pila
	dec hl			;4219   ; el de 0xA000, el ultimo que se metio
	ld a,(hl)			;421a
	ld (0f0f3h),a		;421b   ; en su copia...
	ld (0b000h),a		;421e   ; ...y en el mapper
	dec hl			;4221   ; el de 0x8000
	ld a,(hl)			;4222
	ld (0f0f2h),a		;4223   ; guarda la copia del banco de 0x8000
	ld (09000h),a		;4226   ; el mapper: pone en 0x8000 el banco de A
	dec hl			;4229   ; el de 0x6000
	ld a,(hl)			;422a
	ld (0f0f1h),a		;422b   ; guarda la copia del banco de 0x6000
	ld (07000h),a		;422e   ; el mapper: pone en 0x6000 el banco de A
	ld (0f0d0h),hl		;4231   ; el puntero, tres bytes mas abajo
	pop af			;4234
	pop hl			;4235
	ei			;4236
	ret			;4237
pon_tres_bancos:		; pone A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000
	di			;4238   ; pone A, A+1 y A+2 en 0x6000, 0x8000 y 0xA000, con sus copias
	ld (07000h),a		;4239   ; el mapper: pone en 0x6000 el banco de A
	ld (0f0f1h),a		;423c   ; guarda la copia del banco de 0x6000
	inc a			;423f
	ld (09000h),a		;4240   ; el mapper: pone en 0x8000 el banco de A
	ld (0f0f2h),a		;4243   ; guarda la copia del banco de 0x8000
	inc a			;4246
	ld (0b000h),a		;4247   ; el mapper: pone en 0xA000 el banco de A
	ld (0f0f3h),a		;424a   ; guarda la copia del banco de 0xA000
	ei			;424d
	ret			;424e
pon_6000_8000:		; pone A y A+1 en 0x6000 y 0x8000
	di			;424f   ; pone A y A+1 en 0x6000 y 0x8000
	ld (07000h),a		;4250   ; el mapper: pone en 0x6000 el banco de A
	ld (0f0f1h),a		;4253   ; guarda la copia del banco de 0x6000
	inc a			;4256
	ld (09000h),a		;4257   ; el mapper: pone en 0x8000 el banco de A
	ld (0f0f2h),a		;425a   ; guarda la copia del banco de 0x8000
	ei			;425d
	ret			;425e
pon_8000_a000:		; pone A y A+1 en 0x8000 y 0xA000
	di			;425f   ; pone A y A+1 en 0x8000 y 0xA000
	ld (09000h),a		;4260   ; el mapper: pone en 0x8000 el banco de A
	ld (0f0f2h),a		;4263   ; guarda la copia del banco de 0x8000
	inc a			;4266
	ld (0b000h),a		;4267   ; el mapper: pone en 0xA000 el banco de A
	ld (0f0f3h),a		;426a   ; guarda la copia del banco de 0xA000
	ei			;426d
	ret			;426e
pon_6000:		; pone A en 0x6000
	di			;426f   ; pone A en 0x6000
	ld (07000h),a		;4270   ; el mapper: pone en 0x6000 el banco de A
	ld (0f0f1h),a		;4273   ; guarda la copia del banco de 0x6000
	ei			;4276
	ret			;4277
pon_8000:		; pone A en 0x8000
	di			;4278   ; pone A en 0x8000
	ld (09000h),a		;4279   ; el mapper: pone en 0x8000 el banco de A
	ld (0f0f2h),a		;427c   ; guarda la copia del banco de 0x8000
	ei			;427f
	ret			;4280
pon_a000:		; pone A en 0xA000
	di			;4281   ; pone A en 0xA000
	ld (0b000h),a		;4282   ; el mapper: pone en 0xA000 el banco de A
	ld (0f0f3h),a		;4285   ; guarda la copia del banco de 0xA000
	ei			;4288
	ret			;4289
cuadro_del_juego:		; el cuadro del juego: lo del estado de 0xE300
	ld hl,0e303h		;428a   ; el cuadro del juego: 0xE303 cuenta los cuadros
	inc (hl)			;428d
	call por_estado		;428e   ; p00:429A: lo del estado en curso
	ld a,(0e300h)		;4291   ; en los estados 0-2 (logo, titulo, historia)...
	cp 003h		;4294
	call c,L_472D		;4296   ; ...p00:472D
	ret			;4299
por_estado:		; salta a lo del estado 0xE300 con el paso 0xE301 en B
	ld bc,(0e300h)		;429a   ; B = el paso (0xE301) y C = el estado (0xE300)
	ld a,c			;429e
	call despacha		;429f   ; por el estado: 0 logo, 1 titulo, 2 historia, 3 eleccion de nave, 4 empieza la fase, 5 se juega, 6 muerte, 7 fin de la partida, 8-10

; ----------------------------------------------------------------------
; DATOS tabla_42A2: 11 destinos del despachador p00:4093 (call en p00:429F, el
;   indice en A): 42B8, 42EE, 434B, 439A, 4458, 44A1, 44C7, 4505, 4585, 461C,
;   469E; lo leen p00:429F (22 bytes)
;   0x42a2..0x42b8  (22 bytes)
DATA_tabla_42A2:
	defw 042b8h,042eeh,0434bh,0439ah,04458h,044a1h,044c7h,04505h	; 42a2
	defw 04585h,0461ch,0469eh	; 42b2  -> L_4585 L_461C L_469E

; ======================================================================
; CODIGO 0x42b8..0x434f  (151 bytes)
; ======================================================================


L_42B8:
	dec b			;42b8   ; estado 0 (el logo): el paso 1 va aparte
	jr z,L_42DB		;42b9
	call pon_vdp		;42bb   ; lo de antes de pintar: el VDP, la pantalla en blanco...
	call pantalla_en_blanco		;42be   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call carga_fuente		;42c1   ; la fuente en los tres tercios
	call bancos_22		;42c4   ; el 22 en 0xA000
	call 083efh		;42c7   ; p02:83EF
	call bancos_1_2_3		;42ca   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	push ix		;42cd   ; la SUB-ROM de MSX2, rutina 0x0141 (en un MSX1 no hay)
	ld ix,00141h		;42cf
	call 0015fh		;42d3   ; BIOS EXTROM - Calls a routine in SUB-ROM. Most common way
	pop ix		;42d6
	jp L_433A		;42d8   ; al paso siguiente
L_42DB:
	ld a,(0e303h)		;42db   ; paso 1: cada dos cuadros
	rra			;42de
	ret nc			;42df
	call bancos_22		;42e0   ; el 22 en 0xA000 y p02:8423
	call 08423h		;42e3
	call bancos_1_2_3		;42e6   ; 1-2-3 otra vez
	ret nz			;42e9   ; mientras no acabe, sigue
	xor a			;42ea   ; y al estado siguiente (el titulo) con el temporizador a 0
	jp L_44F9		;42eb
L_42EE:
	dec b			;42ee   ; estado 1 (el titulo): pasos 1 y 2 aparte
	jr z,L_4311		;42ef
	dec b			;42f1
	jr z,L_431B		;42f2
	ld hl,0e304h		;42f4   ; paso 0: espera el temporizador
	dec (hl)			;42f7
	ret nz			;42f8
	call bancos_30_31		;42f9   ; los bancos 30-31 y p30:8003
	call 08003h		;42fc
	call bancos_1_2_3		;42ff   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_5636		;4302   ; p00:5636
	ld a,002h		;4305   ; con Z, al paso 2
	jp z,L_4501		;4307
	call L_433F		;430a   ; con NZ, los textos de 1 PLAYER / 2 PLAYERS
	xor a			;430d   ; y al paso 1 con el temporizador a 0
	jp L_4337		;430e
L_4311:
	ld hl,0e304h		;4311   ; paso 1: el temporizador...
	dec (hl)			;4314
	jp nz,L_4A85		;4315   ; ...mientras no acabe, parpadea la eleccion (p00:4A85)
	jp L_44F7		;4318   ; al acabar, al estado siguiente (la historia)
L_431B:
	call bancos_30_31		;431b   ; paso 2: los bancos 30-31 y p30:8006
	call 08006h		;431e
	call bancos_1_2_3		;4321   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e32bh)		;4324   ; 0xE32B: mientras no sea 0, sigue
	or a			;4327
	ret nz			;4328
	call L_433F		;4329   ; los textos de 1 PLAYER / 2 PLAYERS
	xor a			;432c   ; el temporizador a 0
	ld (0e304h),a		;432d   ; guarda el temporizador del estado
	ld a,001h		;4330   ; y al paso 1
	jp L_4501		;4332
L_4335:
	ld a,020h		;4335   ; el temporizador a 0x20...
L_4337:
	ld (0e304h),a		;4337   ; ...o a A
L_433A:
	ld hl,0e301h		;433a   ; y al paso siguiente
	inc (hl)			;433d
	ret			;433e
L_433F:
	call L_551F		;433f   ; la fuente de la tabla de nombres (p00:551F)...
	ld de,0479ch		;4342   ; ...y 1 PLAYER y 2 PLAYERS
	call escribe_texto		;4345   ; escribe_texto: escribe en la VRAM el texto de DE (direccion y letras)
	jp escribe_texto		;4348   ; escribe_texto: escribe en la VRAM el texto de DE (direccion y letras)
L_434B:
	ld a,b			;434b   ; estado 2 (la historia): por el paso
	call despacha		;434c   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_434F: 4 destinos del despachador p00:4093 (call en p00:434C, el
;   indice en A): 4357, 4371, 4382, 438F; lo leen p00:434C (8 bytes)
;   0x434f..0x4357  (8 bytes)
DATA_tabla_434F:
	defw 04357h,04371h,04382h,0438fh	; 434f  -> L_4357 L_4371 L_4382 L_438F

; ======================================================================
; CODIGO 0x4357..0x439e  (71 bytes)
; ======================================================================


L_4357:
	call pantalla_en_blanco		;4357   ; paso 0: la pantalla en blanco
	call L_5718		;435a
	call L_5959		;435d
	call L_5648		;4360
	ld a,001h		;4363   ; 0xE32E = 1: la historia en marcha
	ld (0e32eh),a		;4365
	ld hl,00000h		;4368   ; 0xE32F = 0
	ld (0e32fh),hl		;436b
	jp L_433A		;436e
L_4371:
	call bancos_30_31		;4371   ; paso 1: los bancos 30-31 y p30:8000, la historia
	call 08000h		;4374
	call bancos_1_2_3		;4377   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e32eh)		;437a   ; hasta que 0xE32E vuelva a 0
	or a			;437d
	ret nz			;437e
	jp L_4335		;437f   ; y al paso siguiente
L_4382:
	call L_48CF		;4382   ; paso 2: la cortinilla...
	ret p			;4385   ; ...hasta que acabe
	call L_488D		;4386   ; la partida a cero (p00:488D)
	call L_5D43		;4389   ; p00:5D43
	jp L_4335		;438c
L_438F:
	call L_5D73		;438f   ; paso 3: p00:5D73
	ld a,(0e31ah)		;4392   ; hasta que 0xE31A vuelva a 0
	or a			;4395
	ret nz			;4396
	jp L_4566		;4397   ; y vuelve al logo (p00:4566)
L_439A:
	ld a,b			;439a   ; estado 3 (la eleccion de nave): por el paso
	call despacha		;439b   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_439E: 10 destinos del despachador p00:4093 (call en p00:439B, el
;   indice en A): 43B2, 43BA, 43D6, 43EE, 43F7, 43FD, 440D, 4436, 444A, 4450;
;   lo leen p00:439B (20 bytes)
;   0x439e..0x43b2  (20 bytes)
DATA_tabla_439E:
	defw 043b2h,043bah,043d6h,043eeh,043f7h,043fdh,0440dh,04436h	; 439e
	defw 0444ah,04450h	; 43ae  -> L_444A L_4450

; ======================================================================
; CODIGO 0x43b2..0x4589  (471 bytes)
; ======================================================================


L_43B2:
	call orden_83_y_sonido_43		;43b2   ; paso 0: p00:592B y el temporizador a 0x50
	ld a,050h		;43b5
	jp L_4337		;43b7
L_43BA:
	ld hl,0e304h		;43ba   ; paso 1: el temporizador
	dec (hl)			;43bd
	jp z,L_433A		;43be
	ld a,(0e302h)		;43c1   ; 1 o 2 jugadores (bit 5 de 0xE302)
	bit 5,a		;43c4
	ld de,0479ch		;43c6   ; el texto de 1 PLAYER...
	jr z,L_43CE		;43c9
	ld de,047a7h		;43cb   ; ...o el de 2 PLAYERS
L_43CE:
	bit 2,(hl)		;43ce   ; cada 4 cuadros...
	jp z,escribe_texto		;43d0   ; ...se escribe...
	jp borra_texto		;43d3   ; ...o se borra: parpadea
L_43D6:
	ld a,(0f0f7h)		;43d6   ; paso 2: 0xF0F7 vale 0xFF?
	inc a			;43d9
	ld a,004h		;43da   ; entonces, al paso 4
	jp z,L_4501		;43dc
	ld a,(0e336h)		;43df   ; 0xE336 (la fila 1, bit 5, leida en p00:4767) a 0?
	or a			;43e2
	ld a,004h		;43e3   ; entonces, al paso 4
	jp z,L_4501		;43e5
	call 0bde2h		;43e8   ; p03:BDE2 (la pantalla de HINT)
	jp L_433A		;43eb
L_43EE:
	ld a,(0e308h)		;43ee   ; paso 3: espera el disparo o el boton 2 (0xE308 bits 4-5)
	and 030h		;43f1
	ret z			;43f3
	jp L_433A		;43f4   ; y al paso siguiente
L_43F7:
	call L_4895		;43f7   ; paso 4: borra la partida desde 0xE355 (p00:4895)
	jp L_433A		;43fa
L_43FD:
	call sonido_48		;43fd   ; paso 5: p00:580A
	ld hl,00000h		;4400   ; 0xE31B = 0
	ld (0e31bh),hl		;4403
	xor a			;4406
	ld (0e324h),a		;4407   ; 0xE324 = 0
	jp L_433A		;440a
L_440D:
	call bancos_26_27_28		;440d   ; paso 6: los bancos 26-27-28 y p26:6000, la eleccion
	call 06000h		;4410
	call bancos_1_2_3		;4413   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e31bh)		;4416   ; hasta que 0xE31B sea 0xFF
	inc a			;4419
	ret nz			;441a
	ld hl,00000h		;441b   ; 0xE31B a 0 otra vez
	ld (0e31bh),hl		;441e
	ld a,(0e302h)		;4421   ; con un jugador...
	bit 5,a		;4424
	ld a,008h		;4426   ; ...al paso 8
	jp z,L_4501		;4428
	ld a,001h		;442b   ; con dos, 0xE324 = 1: ahora elige el segundo
	ld (0e324h),a		;442d
	call L_44E9		;4430   ; cambia las fichas de los dos jugadores (p00:44E9)
	jp L_433A		;4433
L_4436:
	call bancos_26_27_28		;4436   ; paso 7: la eleccion del segundo jugador, igual
	call 06000h		;4439
	call bancos_1_2_3		;443c   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e31bh)		;443f
	inc a			;4442
	ret nz			;4443
	call L_44E9		;4444   ; y vuelve a cambiar las fichas
	jp L_433A		;4447
L_444A:
	call L_578B		;444a   ; paso 8: p00:578B
	jp L_433A		;444d
L_4450:
	ld hl,0e402h		;4450   ; paso 9: el temporizador de 0xE402
	dec (hl)			;4453
	ret nz			;4454
	jp L_44F7		;4455   ; al acabar, al estado siguiente (empieza la fase)
L_4458:
	dec b			;4458   ; estado 4 (empieza la fase): el paso 1 va aparte
	jr z,L_448B		;4459
	call L_48CF		;445b   ; paso 0: la cortinilla, hasta que acabe
	ret p			;445e
	ld hl,0e360h		;445f   ; una vida menos (BCD)
	ld a,(hl)			;4462
	sub 001h		;4463
	daa			;4465
	ld (hl),a			;4466
	call carga_fuente		;4467   ; la fuente
	call L_4FB9		;446a   ; los graficos de la nave (p00:4FB9)
	call L_498A		;446d   ; el marcador (p00:498A)
	call bancos_4_5		;4470   ; los bancos 4-5 y p04:9511
	call 09511h		;4473
	call bancos_1_2_3		;4476   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e302h)		;4479   ; con un jugador...
	and 020h		;447c
	ld a,010h		;447e   ; ...espera 0x10 cuadros
	jp z,L_4337		;4480
	call L_4786		;4483   ; con dos, PLAYER 1 o 2 (p00:4786)...
	ld a,078h		;4486   ; ...y espera 0x78
	jp L_4337		;4488
L_448B:
	ld hl,0e304h		;448b   ; paso 1: el temporizador
	dec (hl)			;448e
	ret nz			;448f
	ld de,08668h		;4490   ; borra el texto de PLAYER
	call borra_texto		;4493   ; borra_texto: borra en la VRAM el texto de DE
	call L_5C0E		;4496   ; prepara la fase (p00:5C0E)
	ld a,001h		;4499   ; 0xE31A = 1: la nave en la fase
	ld (0e31ah),a		;449b   ; guarda 1 mientras la nave esta en la fase
	jp L_44FC		;449e   ; y al estado siguiente (se juega)
L_44A1:
	call L_59EC		;44a1   ; estado 5 (se juega): el cuadro de la fase (p00:59EC)
	ld a,(0e30dh)		;44a4   ; 0xE30D distinto de 0...
	and a			;44a7
	ld a,008h		;44a8   ; ...al estado 8
	jp nz,L_4567		;44aa
	ld a,(0e31eh)		;44ad   ; 0xE31E...
	or a			;44b0
	ld a,009h		;44b1   ; ...al estado 9
	jp nz,L_4567		;44b3
	ld a,(0e328h)		;44b6   ; 0xE328...
	or a			;44b9
	ld a,00ah		;44ba   ; ...al estado 10
	jp nz,L_4567		;44bc
	ld a,(0e31ah)		;44bf   ; mientras la nave siga en la fase, sigue
	or a			;44c2
	ret nz			;44c3
	jp L_44F7		;44c4   ; si no, al estado siguiente (la muerte)
L_44C7:
	dec b			;44c7   ; estado 6 (la muerte): el paso 1 va aparte
	jr z,L_44F4		;44c8
	call sonido_01		;44ca   ; p00:57EA
	ld a,(0e360h)		;44cd   ; sin vidas...
	or a			;44d0
	jp z,L_433A		;44d1   ; ...al paso 1
	ld a,(0e3b0h)		;44d4   ; con dos jugadores (0xE3B0 lleva las vidas del otro)...
	or a			;44d7
	jr z,L_44E4		;44d8
L_44DA:
	call L_44E9		;44da   ; ...se cambian las fichas...
	ld hl,0e302h		;44dd   ; ...y el jugador (bit 7 de 0xE302)
	ld a,(hl)			;44e0
	xor 080h		;44e1
	ld (hl),a			;44e3
L_44E4:
	ld a,004h		;44e4   ; y vuelve a empezar la fase (estado 4)
	jp L_4567		;44e6
L_44E9:
	ld hl,0e360h		;44e9   ; cambia las fichas de los dos jugadores: 0x50 bytes de 0xE360 con los de 0xE3B0
	ld de,0e3b0h		;44ec   ; apunta a la ficha del otro jugador (0x50 bytes)
	ld b,050h		;44ef
	jp L_4A3C		;44f1
L_44F4:
	call orden_83_y_sonido_3D		;44f4   ; paso 1: p00:581E
L_44F7:
	ld a,020h		;44f7   ; el temporizador a 0x20...
L_44F9:
	ld (0e304h),a		;44f9   ; ...o a A
L_44FC:
	ld hl,0e300h		;44fc   ; el estado siguiente...
	inc (hl)			;44ff
L_4500:
	xor a			;4500   ; ...desde el paso 0...
L_4501:
	ld (0e301h),a		;4501   ; ...o desde el paso A
	ret			;4504
L_4505:
	ld a,b			;4505   ; estado 7 (fin de la partida): paso 0 o los demas
	and a			;4506
	jr nz,L_4526		;4507
	call L_48CF		;4509   ; la cortinilla, hasta que acabe
	ret p			;450c
	call carga_fuente		;450d   ; la fuente
	ld de,0864ch		;4510   ; GAME OVER y CONTINUE F5
	call escribe_texto		;4513   ; escribe_texto: escribe en la VRAM el texto de DE (direccion y letras)
	call L_4786		;4516   ; PLAYER 1 o 2
	xor a			;4519   ; 0xE36C = 0: sin continuar
	ld (0e36ch),a		;451a   ; guarda 1 si se continua (F5)
	ld hl,001d8h		;451d   ; 0x1D8 cuadros para pulsar F5
	ld (0e40ch),hl		;4520
	jp L_433A		;4523   ; y al paso siguiente
L_4526:
	call L_4572		;4526   ; pasos 1 y mas: mira la F5 (p00:4572)
	ld hl,(0e40ch)		;4529   ; los cuadros que quedan
	dec hl			;452c
	ld (0e40ch),hl		;452d
	ld a,l			;4530
	or h			;4531
	ret nz			;4532
	ld a,(0e36ch)		;4533   ; se acabo: si se pulso F5...
	and a			;4536
	jr z,L_4553		;4537
	call sonido_01		;4539   ; sonido_01: pide el sonido 0x01
	ld hl,0e355h		;453c
	ld a,(0e302h)		;453f   ; lee el modo (bit 5: dos jugadores; bit 6: se juega de verdad; bit 7: el segundo jugador)
	and 080h		;4542
	jr z,L_4548		;4544
	ld l,05ah		;4546
L_4548:
	xor a			;4548
	ld (hl),a			;4549
	inc l			;454a
	ld (hl),a			;454b
	inc l			;454c
	ld (hl),a			;454d
	ld a,003h		;454e
	ld (0e360h),a		;4550   ; guarda las vidas (BCD)
L_4553:
	ld a,(0e3b0h)		;4553   ; lee la ficha del otro jugador (0x50 bytes)
	or a			;4556
	jr nz,L_44DA		;4557
	ld a,(0e36ch)		;4559   ; lee 1 si se continua (F5)
	and a			;455c
	jr nz,L_44E4		;455d
L_455F:
	ld hl,0e302h		;455f   ; apunta a el modo (bit 5: dos jugadores; bit 6: se juega de verdad; bit 7: el segundo jugador)
	ld a,(hl)			;4562
	and 0bfh		;4563
	ld (hl),a			;4565
L_4566:
	xor a			;4566
L_4567:
	ld (0e300h),a		;4567   ; guarda el estado del juego (0 logo, 1 titulo, 2 historia, 3 nave, 4 empieza la fase, 5 se juega, 6 muerte, 7 fin)
	ld a,020h		;456a
	ld (0e304h),a		;456c   ; guarda el temporizador del estado
	jp L_4500		;456f
L_4572:
	ld a,007h		;4572   ; la fila 7 del teclado
	call 00141h		;4574   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	bit 1,a		;4577   ; bit 1: la F5
	ret nz			;4579   ; sin pulsar, fuera
	ld a,001h		;457a   ; pulsada: 0xE36C = 1 (continuar)
	ld (0e36ch),a		;457c   ; guarda 1 si se continua (F5)
	ld de,08659h		;457f   ; y borra CONTINUE F5
	jp borra_texto		;4582   ; borra_texto: borra en la VRAM el texto de DE
L_4585:
	ld a,b			;4585
	call despacha		;4586   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_4589: 3 destinos del despachador p00:4093 (call en p00:4586, el
;   indice en A): 458F, 45F0, 460C; lo leen p00:4586 (6 bytes)
;   0x4589..0x458f  (6 bytes)
DATA_tabla_4589:
	defw 0458fh,045f0h,0460ch	; 4589  -> L_458F L_45F0 L_460C

; ======================================================================
; CODIGO 0x458f..0x4620  (145 bytes)
; ======================================================================


L_458F:
	call L_5677		;458f
	xor a			;4592
	ld (0e37dh),a		;4593
	ld a,(0e361h)		;4596   ; lee la fase (1 a 11)
	cp 00bh		;4599
	ld a,00ah		;459b
	jp z,L_4567		;459d
	ld a,(0e398h)		;45a0
	or a			;45a3
	jr nz,L_45E3		;45a4
	ld a,(0e361h)		;45a6   ; lee la fase (1 a 11)
	cp 009h		;45a9
	jr z,L_45E3		;45ab
	sub 003h		;45ad
	cp 002h		;45af
	jr c,L_45CA		;45b1
L_45B3:
	ld a,(0e361h)		;45b3   ; lee la fase (1 a 11)
	cp 003h		;45b6
	jr nz,L_45BE		;45b8
	xor a			;45ba
	ld (0e37ch),a		;45bb   ; guarda el jefe de la fase 4 (0 a 3)
L_45BE:
	xor a			;45be
	ld (0e30dh),a		;45bf   ; guarda 1: fase superada (al estado 8)
	call L_5612		;45c2
	ld a,005h		;45c5
	jp L_4567		;45c7
L_45CA:
	inc a			;45ca
	ld (0e321h),a		;45cb
	ld hl,00000h		;45ce
	ld (0e322h),hl		;45d1
	call pantalla_en_blanco		;45d4   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call L_5648		;45d7
	call L_5959		;45da
	call sonido_01		;45dd   ; sonido_01: pide el sonido 0x01
	jp L_433A		;45e0
L_45E3:
	ld a,001h		;45e3
	ld (0e398h),a		;45e5
	ld (0e327h),a		;45e8
	ld a,002h		;45eb
	jp L_4501		;45ed
L_45F0:
	call bancos_26_27_28		;45f0   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	call 06006h		;45f3
	call bancos_1_2_3		;45f6   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e321h)		;45f9
	or a			;45fc
	ret nz			;45fd
L_45FE:
	call L_4FB9		;45fe
	call L_467C		;4601
	call L_5683		;4604
	call L_5648		;4607
	jr L_45B3		;460a
L_460C:
	call bancos_26_27_28		;460c   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	call 06009h		;460f
	call bancos_1_2_3		;4612   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e327h)		;4615
	or a			;4618
	ret nz			;4619
	jr L_45FE		;461a
L_461C:
	ld a,b			;461c
	call despacha		;461d   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_4620: 4 destinos del despachador p00:4093 (call en p00:461D, el
;   indice en A): 4628, 463A, 468B, 4696; lo leen p00:461D (8 bytes)
;   0x4620..0x4628  (8 bytes)
DATA_tabla_4620:
	defw 04628h,0463ah,0468bh,04696h	; 4620  -> L_4628 L_463A L_468B L_4696

; ======================================================================
; CODIGO 0x4628..0x479c  (372 bytes)
; ======================================================================


L_4628:
	ld a,(0e31eh)		;4628
	ld (0e338h),a		;462b
	ld hl,00000h		;462e
	ld (0e7e4h),hl		;4631
	call L_5677		;4634
	jp L_433A		;4637
L_463A:
	call bancos_26_27_28		;463a   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	call 06003h		;463d
	call bancos_1_2_3		;4640   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e31eh)		;4643
	or a			;4646
	ret nz			;4647
	call L_4FB9		;4648
	call L_467C		;464b
	call L_4F7C		;464e
	call L_51C2		;4651
	ld a,(0e361h)		;4654   ; lee la fase (1 a 11)
	cp 004h		;4657
	jr nz,L_4663		;4659
	call L_50FE		;465b
	ld a,001h		;465e
	ld (0e443h),a		;4660
L_4663:
	call L_505D		;4663
	ld a,(0e338h)		;4666
	cp 008h		;4669
	call nc,L_5683		;466b
	call L_5DB8		;466e
	call L_5AC6		;4671
	ld a,078h		;4674
	ld (0e304h),a		;4676   ; guarda el temporizador del estado
	jp L_433A		;4679
L_467C:
	call bancos_4_5		;467c   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 0954eh		;467f
	call bancos_1_2_3		;4682   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e43ch)		;4685
	jp L_4F52		;4688
L_468B:
	ld hl,0e304h		;468b   ; apunta a el temporizador del estado
	dec (hl)			;468e
	ret nz			;468f
	call sonido_01		;4690   ; sonido_01: pide el sonido 0x01
	jp L_433A		;4693
L_4696:
	call L_573C		;4696
	ld a,005h		;4699
	jp L_4567		;469b
L_469E:
	dec b			;469e
	jr z,L_46B6		;469f
	dec b			;46a1
	jr z,L_46DA		;46a2
	ld hl,00000h		;46a4
	ld (0e329h),hl		;46a7
	call L_5677		;46aa
	call L_5959		;46ad
	call L_5648		;46b0
	jp L_433A		;46b3
L_46B6:
	call bancos_26_27_28		;46b6   ; bancos_26_27_28: pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	call 0600ch		;46b9
	call bancos_1_2_3		;46bc   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	ld a,(0e328h)		;46bf   ; lee 1: el final del juego (al estado 10)
	or a			;46c2
	ret nz			;46c3
	call pantalla_en_blanco		;46c4   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call carga_fuente		;46c7   ; carga_fuente: carga la fuente en los tres tercios (bancos 20-22)
	ld de,08673h		;46ca
	call escribe_texto		;46cd   ; escribe_texto: escribe en la VRAM el texto de DE (direccion y letras)
	call L_433A		;46d0
	ld hl,00258h		;46d3
	ld (0e40ch),hl		;46d6
	ret			;46d9
L_46DA:
	ld hl,(0e40ch)		;46da
	dec hl			;46dd
	ld (0e40ch),hl		;46de
	ld a,l			;46e1
	or h			;46e2
	jr z,L_471F		;46e3
	ld a,(0e310h)		;46e5   ; lee lo recien pulsado (teclas de funcion)
	bit 4,a		;46e8
	ret z			;46ea
	ld hl,0e36ah		;46eb
	inc (hl)			;46ee
	ld hl,0e38ch		;46ef
	ld de,0e38dh		;46f2
	ld bc,0000bh		;46f5
	ld (hl),000h		;46f8
	ldir		;46fa
	call pantalla_en_blanco		;46fc   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call L_4FB9		;46ff
	call bancos_4_5		;4702   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 09517h		;4705
	call bancos_1_2_3		;4708   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_5683		;470b
	ld a,001h		;470e
	ld (0e37dh),a		;4710
	call L_5612		;4713
	xor a			;4716
	ld (0e30dh),a		;4717   ; guarda 1: fase superada (al estado 8)
	ld a,005h		;471a
	jp L_4567		;471c
L_471F:
	xor a			;471f
	ld (0e360h),a		;4720   ; guarda las vidas (BCD)
	ld a,(0e3b0h)		;4723   ; lee la ficha del otro jugador (0x50 bytes)
	or a			;4726
	jp nz,L_44DA		;4727
	jp L_455F		;472a
L_472D:
	call mando_y_cursores		;472d   ; mando_y_cursores: el mando 1, M/N, espacio y cursores en un byte
	ld hl,0e318h		;4730
	call L_4C56		;4733
	or a			;4736
	ret z			;4737
	ld hl,0e304h		;4738   ; apunta a el temporizador del estado
	ld (hl),000h		;473b
	ld hl,0e300h		;473d   ; apunta a el estado del juego (0 logo, 1 titulo, 2 historia, 3 nave, 4 empieza la fase, 5 se juega, 6 muerte, 7 fin)
	ld de,0e319h		;4740
	ld b,(hl)			;4743
	djnz L_4773		;4744
	and 030h		;4746
	jr z,L_4781		;4748
	ld a,(0e301h)		;474a   ; lee el paso dentro del estado
	or a			;474d
	jr z,L_4773		;474e
	dec a			;4750
	ret nz			;4751
	ld a,(de)			;4752
	or a			;4753
	ld a,040h		;4754
	jr z,L_475A		;4756
	ld a,060h		;4758
L_475A:
	ld (0e302h),a		;475a   ; guarda el modo (bit 5: dos jugadores; bit 6: se juega de verdad; bit 7: el segundo jugador)
	ld (hl),003h		;475d
	inc hl			;475f
	ld c,000h		;4760
	ld (hl),c			;4762
	dec c			;4763
	call L_4A8F		;4764
	ld a,001h		;4767
	call 00141h		;4769   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;476c
	and 020h		;476d
	ld (0e336h),a		;476f
	ret			;4772
L_4773:
	ld hl,00001h		;4773
	ld (0e300h),hl		;4776   ; guarda el estado del juego (0 logo, 1 titulo, 2 historia, 3 nave, 4 empieza la fase, 5 se juega, 6 muerte, 7 fin) y el byte siguiente (16 bits)
	ld a,001h		;4779
	ld (0e304h),a		;477b   ; guarda el temporizador del estado
	jp sonido_01		;477e   ; sonido_01: pide el sonido 0x01
L_4781:
	ld a,(de)			;4781
	xor 001h		;4782
	ld (de),a			;4784
	ret			;4785
L_4786:
	ld a,(0e302h)		;4786   ; con dos jugadores...
	bit 5,a		;4789
	ret z			;478b
	push af			;478c
	ld de,08668h		;478d   ; ...el texto PLAYER 1
	call escribe_texto		;4790   ; escribe_texto: escribe en la VRAM el texto de DE (direccion y letras)
	pop af			;4793
	or a			;4794   ; y si es el segundo...
	ret p			;4795
	ld a,003h		;4796   ; ...un 2 (0x03) encima del 1
	dec hl			;4798
	jp 0004dh		;4799   ; BIOS WRTVRM - Writes data in VRAM

; ----------------------------------------------------------------------
; DATOS texto_479C: texto a la VRAM: direccion, letras ('A' = 0x12), 0xFE y
;   otra direccion, 0xFF acaba (p00:4B04); lo leen p00:4345 (11 bytes)
;   0x479c..0x47a7  (11 bytes)
DATA_texto_479C:
	defb 06dh,03ah,002h,000h,021h,01dh,012h,02ah,016h,023h,0ffh	; 479c  m:..!..*.#.

; ----------------------------------------------------------------------
; DATOS texto_47A7: texto a la VRAM: direccion, letras ('A' = 0x12), 0xFE y
;   otra direccion, 0xFF acaba (p00:4B04); lo leen p00:43D0, p00:43D3 (12
;   bytes)
;   0x47a7..0x47b3  (12 bytes)
DATA_texto_47A7:
	defb 0adh,03ah,003h,000h,021h,01dh,012h,02ah,016h,023h,024h,0ffh	; 47a7  .:..!..*.#$.

; ======================================================================
; CODIGO 0x47b3..0x4806  (83 bytes)
; ======================================================================


L_47B3:
	call guarda_y_bancos_1_2_3		;47b3   ; los puentes: guardan el reparto, ponen el de la rutina, la llaman y lo devuelven
	call L_5FFE		;47b6
	jp devuelve_reparto		;47b9   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_47BC:
	call guarda_y_bancos_1_2_3		;47bc   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 0600bh		;47bf
	jp devuelve_reparto		;47c2   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_47C5:
	call guarda_y_bancos_1_2_3		;47c5   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 06944h		;47c8
	jp devuelve_reparto		;47cb   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_47CE:
	call guarda_y_bancos_1_2_3		;47ce   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_5AC6		;47d1
	jp devuelve_reparto		;47d4   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_47D7:
	push bc			;47d7
	call guarda_y_bancos_4_5		;47d8   ; guarda_y_bancos_4_5: guarda el reparto en la pila y pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 08091h		;47db
	pop bc			;47de
	call 08064h		;47df
	call 099b5h		;47e2
	jp devuelve_reparto		;47e5   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_47E8:
	call guarda_y_bancos_4_5		;47e8   ; guarda_y_bancos_4_5: guarda el reparto en la pila y pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 0957dh		;47eb
	call 095b6h		;47ee
	jp devuelve_reparto		;47f1   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_47F4:
	call guarda_y_bancos_4_5		;47f4   ; guarda_y_bancos_4_5: guarda el reparto en la pila y pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 094bdh		;47f7
	jp devuelve_reparto		;47fa   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_47FD:
	call guarda_y_bancos_1_2_3		;47fd   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 0638bh		;4800
	jp devuelve_reparto		;4803   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4806..0x4818  (18 bytes)
DATA_4806:
	defb 0cdh,0bch,041h,0cdh,012h,060h,0c3h,013h,042h,0cdh,0bch,041h,0cdh,015h,060h,0c3h	; 4806  ..A..`..B..A..`.
	defb 013h,042h	; 4816

; ======================================================================
; CODIGO 0x4818..0x48cd  (181 bytes)
; ======================================================================


L_4818:
	call guarda_y_bancos_26_27_28		;4818   ; guarda_y_bancos_26_27_28: guarda el reparto en la pila y pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	call 06018h		;481b
	jp devuelve_reparto		;481e   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4821:
	call guarda_y_bancos_26_27_28		;4821   ; guarda_y_bancos_26_27_28: guarda el reparto en la pila y pone los bancos 26-27-28 (y sus copias en 0xF0F1-3)
	call 0601bh		;4824
	jp devuelve_reparto		;4827   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_482A:
	call guarda_y_bancos_1_2_3		;482a   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 0a66ah		;482d
	jp devuelve_reparto		;4830   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4833:
	call guarda_y_bancos_1_2_3		;4833   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 07c18h		;4836
	jp devuelve_reparto		;4839   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_483C:
	call guarda_y_bancos_1_2_3		;483c   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 0640bh		;483f
	jp devuelve_reparto		;4842   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4845:
	call guarda_y_bancos_1_2_3		;4845   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 0639fh		;4848
	jp devuelve_reparto		;484b   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_484E:
	call guarda_y_bancos_1_2_3		;484e   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_4851:
	call 06ba9h		;4851
L_4854:
	jp devuelve_reparto		;4854   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4857:
	call guarda_y_bancos_19		;4857   ; guarda_y_bancos_19: guarda el reparto en la pila y pone el 19 (y sus copias en 0xF0F1-3)
	call 0b28ah		;485a
	jp devuelve_reparto		;485d   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4860:
	call guarda_y_bancos_1_2_3		;4860   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 08221h		;4863
	jp devuelve_reparto		;4866   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4869:
	call guarda_y_bancos_1_2_3		;4869   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 07d6fh		;486c
	jp devuelve_reparto		;486f   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4872:
	call guarda_y_bancos_19		;4872   ; guarda_y_bancos_19: guarda el reparto en la pila y pone el 19 (y sus copias en 0xF0F1-3)
	call 0b1b4h		;4875
	jp devuelve_reparto		;4878   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_487B:
	call guarda_y_bancos_1_2_3		;487b   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_487E:
	call 07844h		;487e
L_4881:
	jp devuelve_reparto		;4881   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4884:
	call guarda_y_bancos_1_2_3		;4884   ; guarda_y_bancos_1_2_3: guarda el reparto en la pila y pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_4887:
	call 092efh		;4887
L_488A:
	jp devuelve_reparto		;488a   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_488D:
	ld hl,0e360h		;488d   ; la partida a cero: 0xE360-0xEFFF...
	ld bc,00c9fh		;4890
	jr L_489B		;4893
L_4895:
	ld hl,0e355h		;4895   ; ...o desde 0xE355
	ld bc,00caah		;4898
L_489B:
	ld e,l			;489b   ; a cero
	ld d,h			;489c
	inc de			;489d
	ld (hl),000h		;489e
	ldir		;48a0
	xor a			;48a2
	ld (0e30dh),a		;48a3   ; 0xE30D = 0
	ld hl,048cdh		;48a6   ; las vidas y la fase de 0x48CD (2 y 1)
	ld de,0e360h		;48a9   ; apunta a las vidas (BCD)
	ld bc,00002h		;48ac
	ldir		;48af
	ld hl,00010h		;48b1   ; el primer tope de vida de mas: 0x0010 en 0xE367 (BCD)
	ld (0e367h),hl		;48b4   ; guarda los puntos de la proxima vida de mas (BCD) y el byte siguiente (16 bits)
	xor a			;48b7
	ld (0e369h),a		;48b8   ; 0xE369 = 0
	ld a,(0e302h)		;48bb   ; con dos jugadores...
	and 020h		;48be
	ret z			;48c0
	ld hl,0e360h		;48c1   ; ...la ficha del segundo igual
	ld de,0e3b0h		;48c4   ; apunta a la ficha del otro jugador (0x50 bytes)
	ld bc,00050h		;48c7
	ldir		;48ca
	ret			;48cc

; ----------------------------------------------------------------------
; DATOS leido_48CD: 2 bytes que lee p00:48AF al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:48AF (2 bytes)
;   0x48cd..0x48cf  (2 bytes)
DATA_leido_48CD:
	defb 003h,001h	; 48cd

; ======================================================================
; CODIGO 0x48cf..0x49a7  (216 bytes)
; ======================================================================


L_48CF:
	ld hl,0e304h		;48cf   ; la cortinilla: una columna por cuadro (el temporizador de 0xE304)
	dec (hl)			;48d2   ; al acabar, vuelve con el signo (M)
	ret m			;48d3
	ld a,(hl)			;48d4   ; la columna: 0x3800 + (0x1F - cuenta)
	ld h,038h		;48d5
	xor 01fh		;48d7
	ld l,a			;48d9
	ld b,016h		;48da   ; 0x16 filas...
	ld a,(0e300h)		;48dc   ; lee el estado del juego (0 logo, 1 titulo, 2 historia, 3 nave, 4 empieza la fase, 5 se juega, 6 muerte, 7 fin)
	cp 002h		;48df
	jr nz,L_48E5		;48e1
	ld b,018h		;48e3   ; ...o 0x18 en la historia
L_48E5:
	xor a			;48e5   ; a cero
	ld de,00020h		;48e6
L_48E9:
	call 0004dh		;48e9   ; BIOS WRTVRM - Writes data in VRAM | a la VRAM
	add hl,de			;48ec   ; la fila siguiente
	djnz L_48E9		;48ed
L_48EF:
	ld hl,03b00h		;48ef   ; y los sprites fuera (0xD0 en el primero)
	ld a,0d0h		;48f2
	call 0004dh		;48f4   ; BIOS WRTVRM - Writes data in VRAM
	xor a			;48f7   ; vuelve con P (A = 0): no ha acabado
	ret			;48f8
L_48F9:
	ld a,(0e302h)		;48f9   ; suma DE (BCD) a los puntos: sin jugador, nada
	add a,a			;48fc
	ret p			;48fd
	ld hl,0e356h		;48fe   ; los puntos del jugador 1 (0xE356)...
	jr nc,L_4905		;4901
	ld l,05bh		;4903   ; ...o del 2 (0xE35B)
L_4905:
	ld a,(hl)			;4905   ; la cifra baja + E
	add a,e			;4906
	daa			;4907
	ld (hl),a			;4908
	inc l			;4909   ; la siguiente + D
	ld a,(hl)			;490a
	adc a,d			;490b
	daa			;490c
	ld (hl),a			;490d
	inc hl			;490e   ; y el acarreo hacia arriba
	ld a,(hl)			;490f
	adc a,000h		;4910
	daa			;4912
	ld (hl),a			;4913
	inc hl			;4914
	ld a,(hl)			;4915
	adc a,000h		;4916
	daa			;4918
	ld (hl),a			;4919
	jr nc,L_492F		;491a   ; sin pasarse, sigue
	ld a,099h		;491c   ; pasado: todo a 99
	ld (hl),a			;491e
	dec l			;491f
	ld (hl),a			;4920
	dec l			;4921
	ld (hl),a			;4922
	dec l			;4923
	ld (hl),a			;4924
	ld hl,09999h		;4925   ; y el record tambien a 999999
	ld (0e351h),hl		;4928
	ld (0e353h),hl		;492b
	ret			;492e
L_492F:
	ex de,hl			;492f   ; la vida de mas: los puntos contra los de 0xE367-0xE369
	ld hl,0e369h		;4930
	ld a,(de)			;4933
	cp (hl)			;4934
	jr c,L_4957		;4935
	dec e			;4937
	dec l			;4938
	ld a,(de)			;4939
	cp (hl)			;493a
	jr c,L_4957		;493b
	dec e			;493d
	dec l			;493e
	ld a,(de)			;493f
	cp (hl)			;4940
	jr c,L_4957		;4941
	ld a,(hl)			;4943   ; alcanzado: el siguiente, 0x10 mas
	add a,010h		;4944
	daa			;4946
	ld (hl),a			;4947
	inc l			;4948
	ld a,(hl)			;4949
	adc a,000h		;494a
	daa			;494c
	ld (hl),a			;494d
	inc l			;494e
	ld a,(hl)			;494f
	adc a,000h		;4950
	daa			;4952
	ld (hl),a			;4953
	call L_497B		;4954   ; y una vida de mas
L_4957:
	ld a,(0e302h)		;4957   ; el record: los puntos del jugador...
	add a,a			;495a
	ld hl,0e359h		;495b
	jr nc,L_4962		;495e
	ld l,05eh		;4960
L_4962:
	ld b,004h		;4962
	ld de,0e354h		;4964   ; ...contra el record de 0xE354
	ld c,l			;4967
L_4968:
	ld a,(de)			;4968
	sub (hl)			;4969
	jr c,L_4972		;496a   ; menores, fuera
	ret nz			;496c
	dec l			;496d
	dec e			;496e
	djnz L_4968		;496f
	ret			;4971
L_4972:
	ld l,c			;4972   ; mayores: copia los puntos al record
	ld bc,00004h		;4973
	ld e,054h		;4976
	lddr		;4978
	ret			;497a
L_497B:
	ld hl,0e360h		;497b   ; una vida de mas: 0xE360 + 1 (BCD)
	ld a,(hl)			;497e
	add a,001h		;497f
	daa			;4981
	ret c			;4982   ; con 99 no sube
	ld (hl),a			;4983
	call sonido_1D		;4984   ; el sonido de la vida (p00:586C)
	jp L_49F6		;4987   ; y pinta las vidas
L_498A:
	ld de,049a7h		;498a   ; el marcador: los graficos de 0x49A7 en 0x3AC0
	ld hl,03ac0h		;498d
	call rle_a_vram		;4990   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ld a,(0e302h)		;4993   ; 1P o 2P
	ld de,0863fh		;4996
	add a,a			;4999
	jr nc,L_499F		;499a
	ld de,08644h		;499c
L_499F:
	call escribe_texto		;499f   ; a la VRAM
	call L_49F6		;49a2   ; las vidas
	jr $+47		;49a5

; ----------------------------------------------------------------------
; DATOS rle_49A7: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; se solapan 2 bloques: (rle_vram_49A7 49A7-49CD); lo leen
;   p00:4990, p00:4B3C (38 bytes)
;   0x49a7..0x49cd  (38 bytes)
DATA_rle_49A7:
	defb 002h,04eh,010h,000h,08ch,04eh,058h,04fh,050h,051h,052h,053h,054h,055h,056h,057h	; 49a7  .N...NXOPQRSTUVW
	defb 058h,004h,04eh,087h,04ah,000h,000h,04eh,000h,04bh,04eh,009h,000h,083h,04eh,04ch	; 49b7  X.N.J..N.KN...NL
	defb 04dh,009h,000h,002h,04eh,000h	; 49c7

; ======================================================================
; CODIGO 0x49cd..0x4a1e  (81 bytes)
; ======================================================================


L_49CD:
	ld a,(0e303h)		;49cd   ; cada 8 cuadros pinta los puntos
	dec a			;49d0
	and 007h		;49d1
	ret nz			;49d3
L_49D4:
	ld de,0e354h		;49d4   ; el record (0xE354) en 0x3AF5
	ld hl,03af5h		;49d7
	call L_49EB		;49da
	ld a,(0e302h)		;49dd   ; y los del jugador en 0x3AE9
	ld hl,03ae9h		;49e0
	ld de,0e359h		;49e3
	add a,a			;49e6
	jr nc,L_49EB		;49e7
	ld e,05eh		;49e9
L_49EB:
	ld b,005h		;49eb   ; cinco pares de cifras
	call vram_para_escribir		;49ed   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;49f0
	ld a,c			;49f1
	exx			;49f2
	ld c,a			;49f3
	jr L_4A13		;49f4
L_49F6:
	ld hl,03ae3h		;49f6   ; las vidas (0xE360) en 0x3AE3
	ld de,0e360h		;49f9   ; apunta a las vidas (BCD)
	ld a,(de)			;49fc
	ld b,001h		;49fd
	jr nz,L_4A01		;49ff
L_4A01:
	call vram_para_escribir		;4a01   ; a la VRAM
	exx			;4a04
	ld a,c			;4a05
	exx			;4a06
	ld c,a			;4a07
L_4A08:
	ld a,(de)			;4a08   ; la cifra alta...
	rra			;4a09
	rra			;4a0a
	rra			;4a0b
	rra			;4a0c
	and 00fh		;4a0d
	add a,040h		;4a0f   ; ...+ 0x40: el caracter de la cifra
	out (c),a		;4a11
L_4A13:
	ld a,(de)			;4a13   ; la cifra baja
	and 00fh		;4a14
	add a,040h		;4a16
	out (c),a		;4a18
	dec de			;4a1a   ; el par anterior
	djnz L_4A08		;4a1b
	ret			;4a1d

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4a1e..0x4a3c  (30 bytes)
DATA_4A1E:
	defb 02ah,002h,0e3h,0cbh,06dh,0c8h,07ch,0e6h,00fh,0c0h,04fh,07ch,0e6h,030h,028h,001h	; 4a1e  *...m.|...O|.0(.
	defb 00dh,011h,03fh,086h,0cbh,07dh,028h,003h,011h,044h,086h,0c3h,006h,04bh	; 4a2e  ..?..}(..D...K

; ======================================================================
; CODIGO 0x4a3c..0x4ac2  (134 bytes)
; ======================================================================


L_4A3C:
	ld c,(hl)			;4a3c   ; cambia B bytes de HL con los de DE
	ld a,(de)			;4a3d
	ld (hl),a			;4a3e
	ld a,c			;4a3f
	ld (de),a			;4a40
	inc hl			;4a41
	inc de			;4a42
	djnz L_4A3C		;4a43
	ret			;4a45
L_4A46:
	ld a,l			;4a46   ; la direccion de la tabla de 0xC400 que corresponde a la posicion HL
	rra			;4a47
	rra			;4a48
	rra			;4a49
	or a			;4a4a
	rr h		;4a4b
	rra			;4a4d
	rr h		;4a4e
	rra			;4a50
	rr h		;4a51
	ld l,h			;4a53
	and 007h		;4a54
	add a,0c4h		;4a56
	ld h,a			;4a58
	ret			;4a59
lee_palabra:		; HL = la palabra A de la tabla HL
	add a,a			;4a5a
	add a,l			;4a5b
	ld l,a			;4a5c
	jr nc,L_4A60		;4a5d
	inc h			;4a5f
L_4A60:
	ld a,(hl)			;4a60
	inc hl			;4a61
	ld h,(hl)			;4a62
	ld l,a			;4a63
	ret			;4a64
L_4A65:
	ld l,a			;4a65   ; DE = la palabra A de la tabla DE (A x 2 + DE)
	ld h,000h		;4a66
	add hl,hl			;4a68
	add hl,de			;4a69
	ld e,(hl)			;4a6a   ; byte bajo
	inc hl			;4a6b
	ld d,(hl)			;4a6c   ; byte alto
	ret			;4a6d
L_4A6E:
	add a,l			;4a6e   ; A = el byte A de la tabla HL
	ld l,a			;4a6f
	jr nc,L_4A73		;4a70
	inc h			;4a72
L_4A73:
	ld a,(hl)			;4a73   ; el byte
	ret			;4a74
L_4A75:
	ld a,e			;4a75   ; DE = -DE
	cpl			;4a76
	ld e,a			;4a77
	ld a,d			;4a78
	cpl			;4a79
	ld d,a			;4a7a
	inc de			;4a7b
	ret			;4a7c
L_4A7D:
	ld a,l			;4a7d   ; HL = -HL
	cpl			;4a7e
	ld l,a			;4a7f
	ld a,h			;4a80
	cpl			;4a81
	ld h,a			;4a82
	inc hl			;4a83
	ret			;4a84
L_4A85:
	ld hl,0e304h		;4a85   ; el titulo: la flecha parpadea cada 8 cuadros (bit 3 del temporizador)
	bit 3,(hl)		;4a88
	ld c,0ffh		;4a8a   ; C = 0xFF la pinta...
	jr nz,L_4A8F		;4a8c
	inc c			;4a8e   ; ...C = 0 la borra
L_4A8F:
	ld hl,03a6ah		;4a8f   ; la flecha de 1 PLAYER (0x3A6A) y la de 2 PLAYERS (0x3AAA)
	ld de,03aaah		;4a92
	ld a,(0e319h)		;4a95   ; la eleccion (0xE319): con 2 jugadores, al reves
	or a			;4a98
	jr z,L_4A9C		;4a99
	ex de,hl			;4a9b
L_4A9C:
	push de			;4a9c
	call L_4AA3		;4a9d   ; la marcada, segun C
	pop hl			;4aa0
	ld c,000h		;4aa1   ; y la otra, borrada
L_4AA3:
	ld de,08649h		;4aa3   ; la flecha (p02:8649) en HL
	jp escribe_letras		;4aa6   ; escribe_letras: escribe en la VRAM de HL las letras de DE
pantalla_en_blanco:		; borra la tabla de nombres (0x3800)
	call L_48EF		;4aa9   ; p00:48EF y la tabla de nombres (0x3800, 0x300 bytes) a cero: la pantalla en blanco
	ld hl,03800h		;4aac
	ld bc,00300h		;4aaf
	xor a			;4ab2
	jp 00056h		;4ab3   ; BIOS FILVRM - Fills VRAM with value
vram_para_escribir:		; la VRAM de HL para escribir y en C' el puerto del VDP
	ex af,af'			;4ab6   ; la direccion de VRAM de HL para escribir (SETWRT), y en C' el puerto de datos del VDP (de 0x0007)
	call 00053h		;4ab7   ; BIOS SETWRT - Enables VDP to write
	exx			;4aba
	ld a,(00007h)		;4abb
	ld c,a			;4abe
	exx			;4abf
	ex af,af'			;4ac0
	ret			;4ac1

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4ac2..0x4acc  (10 bytes)
DATA_4AC2:
	defb 0cdh,050h,000h,0d9h,03ah,006h,000h,04fh,0d9h,0c9h	; 4ac2  .P..:..O..

; ======================================================================
; CODIGO 0x4acc..0x4af4  (40 bytes)
; ======================================================================


copia_a_vram:		; LDIRVM con origen DE y destino HL
	ex de,hl			;4acc
	jp 0005ch		;4acd   ; BIOS LDIRVM - Block transfers to VRAM from memory
copia_a_tres_tercios:		; copia lo mismo a los tres tercios de la VRAM
	exx			;4ad0
	ld b,003h		;4ad1
L_4AD3:
	exx			;4ad3
	push bc			;4ad4
	push de			;4ad5
	call copia_a_vram		;4ad6   ; copia_a_vram: LDIRVM con origen DE y destino HL
	ld de,00800h		;4ad9
	add hl,de			;4adc
	pop de			;4add
	pop bc			;4ade
	exx			;4adf
	djnz L_4AD3		;4ae0
	ret			;4ae2
llena_tres_tercios:		; llena lo mismo en los tres tercios de la VRAM
	ld d,003h		;4ae3
L_4AE5:
	push bc			;4ae5
	push de			;4ae6
	call 00056h		;4ae7   ; BIOS FILVRM - Fills VRAM with value
	ld de,00800h		;4aea
	add hl,de			;4aed
	pop de			;4aee
	pop bc			;4aef
	dec d			;4af0
	jr nz,L_4AE5		;4af1
	ret			;4af3

; ----------------------------------------------------------------------
; DATOS sin identificar  0x4af4..0x4b04  (16 bytes)
DATA_4AF4:
	defb 006h,003h,0c5h,0d5h,0cdh,03ch,04bh,011h,000h,008h,019h,0d1h,0c1h,010h,0f3h,0c9h	; 4af4  .....<K.........

; ======================================================================
; CODIGO 0x4b04..0x4c38  (308 bytes)
; ======================================================================


escribe_texto:		; escribe en la VRAM el texto de DE (direccion y letras)
	ld c,0ffh		;4b04   ; texto a la VRAM: DE apunta a la direccion; las letras tal cual (C = 0xFF)
L_4B06:
	ex de,hl			;4b06   ; HL = la direccion de VRAM que trae el texto...
	ld e,(hl)			;4b07
	inc hl			;4b08
	ld d,(hl)			;4b09
	ex de,hl			;4b0a
	inc de			;4b0b   ; ...y DE en la primera letra
escribe_letras:		; escribe en la VRAM de HL las letras de DE
	ld a,(de)			;4b0c   ; la letra
	inc de			;4b0d
	ld b,a			;4b0e   ; 0xFF + 1 = 0: se acabo
	inc b			;4b0f
	ret z			;4b10
	inc b			;4b11   ; 0xFE + 2 = 0: otra direccion
	jr z,L_4B06		;4b12
	and c			;4b14   ; la letra, o 0 si C = 0 (borrar)
	call 0004dh		;4b15   ; BIOS WRTVRM - Writes data in VRAM | a la VRAM
	inc hl			;4b18   ; la casilla siguiente
	jr escribe_letras		;4b19
borra_texto:		; borra en la VRAM el texto de DE
	ld c,000h		;4b1b   ; el mismo texto con C = 0: lo borra
	jr L_4B06		;4b1d
texto_a_ram:		; copia a la RAM el texto de HL
	ld c,0ffh		;4b1f   ; texto a la RAM: HL apunta al destino y luego las letras (C = 0xFF)
L_4B21:
	ld e,(hl)			;4b21   ; DE = el destino
	inc hl			;4b22
	ld d,(hl)			;4b23
	inc hl			;4b24
L_4B25:
	ld a,(hl)			;4b25   ; la letra
	inc hl			;4b26
	ld b,a			;4b27   ; 0xFF: se acabo
	inc b			;4b28
	ret z			;4b29
	inc b			;4b2a   ; 0xFE: otro destino
	jr z,L_4B21		;4b2b
	and c			;4b2d
	ld (de),a			;4b2e   ; a la RAM
	inc de			;4b2f
	jr L_4B25		;4b30
borra_texto_ram:		; borra en la RAM el texto de HL
	ld c,000h		;4b32   ; el mismo texto a la RAM con C = 0: lo borra
	jr L_4B21		;4b34
rle_con_direccion:		; descomprime a la VRAM el RLE de DE, que lleva su direccion delante
	ex de,hl			;4b36   ; RLE con direccion delante: HL = la direccion de VRAM...
	ld e,(hl)			;4b37
	inc hl			;4b38
	ld d,(hl)			;4b39
	ex de,hl			;4b3a
	inc de			;4b3b   ; ...y DE en el primer byte del RLE
rle_a_vram:		; descomprime a la VRAM de HL el RLE de DE
	call vram_para_escribir		;4b3c   ; RLE a la VRAM desde HL: SETWRT
L_4B3F:
	ld a,(de)			;4b3f   ; el byte de control
	and a			;4b40
	ret z			;4b41   ; 0: se acabo
	inc de			;4b42
	ld b,a			;4b43   ; B = el byte
	and 07fh		;4b44   ; sin el bit 7...
	cp b			;4b46   ; ...es igual? (bit 7 a 0)
	jr z,L_4B57		;4b47   ; si: n veces el byte que viene
	and a			;4b49   ; 0x80 a secas...
	jr z,rle_con_direccion		;4b4a   ; ...trae otra direccion de VRAM
	ld b,a			;4b4c   ; 0x81-0xFF: n & 0x7F bytes tal cual
L_4B4D:
	ld a,(de)			;4b4d   ; el byte
	inc de			;4b4e
	exx			;4b4f
	out (c),a		;4b50   ; al VDP
	exx			;4b52
	djnz L_4B4D		;4b53   ; los n
	jr L_4B3F		;4b55
L_4B57:
	ld a,(de)			;4b57   ; el byte que se repite
	inc de			;4b58
L_4B59:
	exx			;4b59
	out (c),a		;4b5a   ; al VDP
	exx			;4b5c
	djnz L_4B59		;4b5d   ; n veces
	jr L_4B3F		;4b5f
L_4B61:
	call L_4B6D		;4b61   ; C tiras de caracteres: da la vuelta a cada byte (espejo) de DE a HL
	ld a,020h		;4b64   ; la tira siguiente, 0x20 mas alla
	call suma_a_de		;4b66   ; suma_a_de: DE = DE + A
	dec c			;4b69
	jr nz,L_4B61		;4b6a
	ret			;4b6c
L_4B6D:
	push de			;4b6d   ; 16 bytes de cada tira
L_4B6E:
	ld b,010h		;4b6e
L_4B70:
	call 0004ah		;4b70   ; BIOS RDVRM - Reads the content of VRAM | lee de la VRAM
	call L_4B89		;4b73   ; le da la vuelta
	ex de,hl			;4b76
	call 0004dh		;4b77   ; BIOS WRTVRM - Writes data in VRAM | y lo escribe en DE
	ex de,hl			;4b7a
	inc e			;4b7b
	inc hl			;4b7c
	djnz L_4B70		;4b7d
	ld a,e			;4b7f
	sub 020h		;4b80
	ld e,a			;4b82
	bit 4,e		;4b83
	jr z,L_4B6E		;4b85
	pop de			;4b87
	ret			;4b88
L_4B89:
	push bc			;4b89   ; A con los bits al reves (espejo)
	ld c,a			;4b8a
	ld b,008h		;4b8b
L_4B8D:
	rr c		;4b8d   ; el bit de abajo de C...
	rla			;4b8f   ; ...entra por abajo en A
	djnz L_4B8D		;4b90
	pop bc			;4b92
	ret			;4b93
L_4B94:
	ld a,(0002dh)		;4b94   ; la paleta de la fase, solo en MSX2: la version de 0x002D
	or a			;4b97
	ret z			;4b98   ; MSX1: nada
	push hl			;4b99   ; guarda los 0x40 bytes de HL en 0xECC0
	ld de,0ecc0h		;4b9a
	ld bc,00040h		;4b9d
	ldir		;4ba0
	pop hl			;4ba2
L_4BA3:
	ld a,(hl)			;4ba3   ; cada color: el numero (0xFF acaba)...
	inc hl			;4ba4
	inc a			;4ba5
	ret z			;4ba6
	dec a			;4ba7
	ld d,(hl)			;4ba8   ; ...rojo y azul en D...
	inc hl			;4ba9
	ld e,(hl)			;4baa   ; ...verde en E
	inc hl			;4bab
	call L_4BB1		;4bac   ; al VDP (p00:4BB1)
	jr L_4BA3		;4baf
L_4BB1:
	push bc			;4bb1   ; un color de la paleta: el puerto de registros (0x0007 + 1)
	push hl			;4bb2
	ld b,a			;4bb3
	ld a,(00007h)		;4bb4
	inc a			;4bb7
	ld c,a			;4bb8
	di			;4bb9
	out (c),b		;4bba   ; el numero de color...
	ld a,090h		;4bbc   ; ...al registro 16
	out (c),a		;4bbe
	inc c			;4bc0   ; el puerto de la paleta (0x9A)
	out (c),d		;4bc1   ; rojo y azul
	push af			;4bc3
	pop af			;4bc4
	out (c),e		;4bc5   ; y verde
	dec c			;4bc7
	ld hl,0f680h		;4bc8   ; y lo mismo en la VRAM, en la tabla de paleta de 0xF680 + 2 x color (p00:4BDB)
	ld a,b			;4bcb
	add a,a			;4bcc
	add a,l			;4bcd
	ld l,a			;4bce
	call L_4BDB		;4bcf
	dec c			;4bd2
	out (c),d		;4bd3
	out (c),e		;4bd5
	pop hl			;4bd7
	pop bc			;4bd8
	ei			;4bd9
	ret			;4bda
L_4BDB:
	push bc			;4bdb   ; la direccion de VRAM de 17 bits de HL para escribir: los bits altos al registro 14
	ld a,(00007h)		;4bdc
	inc a			;4bdf
	ld c,a			;4be0
	ld a,h			;4be1
	rlca			;4be2
	rlca			;4be3
	and 003h		;4be4
	di			;4be6
	out (c),a		;4be7
	ld a,08eh		;4be9   ; 0x8E: registro 14
	out (c),a		;4beb
	ld a,l			;4bed   ; los bits bajos
	out (c),a		;4bee
	ld a,h			;4bf0
	and 03fh		;4bf1
	or 040h		;4bf3   ; + 0x40: para escribir
	out (c),a		;4bf5
	pop bc			;4bf7
	ei			;4bf8
	ret			;4bf9
arranca_sonido_y_vdp:		; arranca el sonido (p10:6000), borra la VRAM y pone el VDP
	ld a,00ah		;4bfa
	ld (07000h),a		;4bfc   ; el mapper: pone en 0x6000 el banco de A
	inc a			;4bff
	ld (09000h),a		;4c00   ; el mapper: pone en 0x8000 el banco de A
	inc a			;4c03
	ld (0b000h),a		;4c04   ; el mapper: pone en 0xA000 el banco de A
	call 06000h		;4c07   ; sonido_arranca: el motor de sonido: lo pone a cero
	di			;4c0a
	ld a,(0f0f1h)		;4c0b   ; lee la copia del banco de 0x6000
	ld (07000h),a		;4c0e   ; el mapper: pone en 0x6000 el banco de A
	ld a,(0f0f2h)		;4c11   ; lee la copia del banco de 0x8000
	ld (09000h),a		;4c14   ; el mapper: pone en 0x8000 el banco de A
	ld a,(0f0f3h)		;4c17   ; lee la copia del banco de 0xA000
	ld (0b000h),a		;4c1a   ; el mapper: pone en 0xA000 el banco de A
	ld hl,00000h		;4c1d
	ld bc,04000h		;4c20
	xor a			;4c23
	call 00056h		;4c24   ; BIOS FILVRM - Fills VRAM with value
pon_vdp:		; los 8 registros del VDP de la tabla 0x4C38
	ld hl,04c38h		;4c27   ; los ocho registros del VDP desde la tabla de 0x4C38
	ld d,008h		;4c2a
	ld c,000h		;4c2c
L_4C2E:
	ld b,(hl)			;4c2e   ; el valor
	call 00047h		;4c2f   ; BIOS WRTVDP - Writes data in the VDP-register | al registro C
	inc hl			;4c32
	inc c			;4c33   ; el registro siguiente
	dec d			;4c34
	jr nz,L_4C2E		;4c35
	ret			;4c37

; ----------------------------------------------------------------------
; DATOS leido_4C38: 8 bytes que lee p00:4C2E al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4C2E (8 bytes)
;   0x4c38..0x4c40  (8 bytes)
DATA_leido_4C38:
	defb 002h,0e2h,00eh,07fh,007h,076h,003h,0efh	; 4c38  .....v..

; ======================================================================
; CODIGO 0x4c40..0x5428  (2024 bytes)
; ======================================================================


color_del_borde:		; B al registro 7 del VDP
	ld c,007h		;4c40   ; B al registro 7: el color del borde
	jp 00047h		;4c42   ; BIOS WRTVDP - Writes data in the VDP-register
lee_mandos:		; lee mando y teclado: lo pulsado y lo recien pulsado
	call mando_y_cursores		;4c45   ; los mandos: lo pulsado (p00:4C5D)...
	call L_4C53		;4c48   ; ...en 0xE309, y lo recien pulsado en 0xE308
	call L_4C99		;4c4b   ; las teclas de funcion y demas (p00:4C99)...
	ld hl,0e311h		;4c4e   ; ...en 0xE311, y lo recien pulsado en 0xE310
	jr L_4C56		;4c51
L_4C53:
	ld hl,0e309h		;4c53   ; HL = lo pulsado del cuadro anterior
L_4C56:
	ld c,(hl)			;4c56   ; lo de antes
	ld (hl),a			;4c57   ; lo de ahora se guarda
	xor c			;4c58   ; lo que cambia...
	and (hl)			;4c59   ; ...y esta pulsado ahora: lo recien pulsado
	dec hl			;4c5a
	ld (hl),a			;4c5b   ; en el byte de antes
	ret			;4c5c
mando_y_cursores:		; el mando 1, M/N, espacio y cursores en un byte
	ld e,08fh		;4c5d   ; el registro 15 del PSG a 0x8F: el puerto del mando 1
	ld a,00fh		;4c5f
	call 00093h		;4c61   ; BIOS WRTPSG - Writes data to PSG-register
	ld a,00eh		;4c64   ; el registro 14: el mando
	di			;4c66
	call 00096h		;4c67   ; BIOS RDPSG - Reads value from PSG-register
	ei			;4c6a
	cpl			;4c6b   ; a 1 lo pulsado
	and 03fh		;4c6c   ; arriba, abajo, izquierda, derecha y los dos botones
	push af			;4c6e
	ld a,004h		;4c6f   ; la fila 4 del teclado
	call 00141h		;4c71   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4c74   ; a 1 lo pulsado
	and 00ch		;4c75   ; M y N
	ld e,a			;4c77   ; en E
	jr z,L_4C7C		;4c78   ; si no, E = 0
	ld e,020h		;4c7a   ; con cualquiera, el bit 5: el boton 2
L_4C7C:
	ld a,008h		;4c7c   ; la fila 8 del teclado: espacio y cursores
	call 00141h		;4c7e   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4c81   ; a 1 lo pulsado
	rrca			;4c82   ; corrida dos bits: la izquierda queda en el bit 2
	rrca			;4c83
	ld b,a			;4c84
	and 004h		;4c85   ; la izquierda...
	or e			;4c87   ; ...con el boton 2
	ld c,a			;4c88
	ld a,b			;4c89
	rrca			;4c8a   ; dos bits mas: la derecha en el 3 y el espacio en el 4
	rrca			;4c8b
	ld b,a			;4c8c
	and 018h		;4c8d   ; la derecha y el espacio (boton 1)
	or c			;4c8f
	ld c,a			;4c90
	ld a,b			;4c91   ; uno mas: arriba en el 0 y abajo en el 1
	rrca			;4c92
	and 003h		;4c93   ; arriba y abajo
	or c			;4c95
	pop bc			;4c96   ; y lo del mando
	or b			;4c97   ; todo junto, con el mismo orden de bits que el mando
	ret			;4c98
L_4C99:
	ld a,006h		;4c99
	call 00141h		;4c9b   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4c9e
	and 0e0h		;4c9f
	ld e,a			;4ca1
	ld a,007h		;4ca2
	call 00141h		;4ca4   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;4ca7
	and 003h		;4ca8
	or e			;4caa
	rlca			;4cab
	rlca			;4cac
	rlca			;4cad
	and 01fh		;4cae
	ret			;4cb0
carga_graficos:		; carga la lista de graficos de IX (RLE a los tercios)
	ld a,(ix+000h)		;4cb1   ; lista de graficos de IX, de 6 en 6: el primer byte dice que tercios de la pantalla y de que banco; 0 acaba
	and a			;4cb4
	ret z			;4cb5
	bit 3,a		;4cb6   ; bit 3: los graficos estan en otro banco
	jr z,L_4CC4		;4cb8
	bit 4,a		;4cba   ; bit 4: cual
	push af			;4cbc
	call z,bancos_16_17_18		;4cbd   ; sin el bit 4: 16-17-18
	pop af			;4cc0
	call nz,bancos_15		;4cc1   ; con el: el 15 en 0x8000
L_4CC4:
	bit 0,(ix+000h)		;4cc4   ; bit 0: el tercio de abajo (0x1000)
	ld de,01000h		;4cc8
	call nz,L_4CE9		;4ccb
	bit 1,(ix+000h)		;4cce   ; bit 1: el del medio (0x0800)
	ld de,00800h		;4cd2
	call nz,L_4CE9		;4cd5
	bit 2,(ix+000h)		;4cd8   ; bit 2: el de arriba (0x0000)
	ld de,00000h		;4cdc
	call nz,L_4CE9		;4cdf
	ld de,00006h		;4ce2   ; la entrada siguiente
	add ix,de		;4ce5
	jr carga_graficos		;4ce7
L_4CE9:
	ld l,(ix+003h)		;4ce9   ; el primer caracter (IX+3)...
	ld h,000h		;4cec
	add hl,hl			;4cee   ; ...por 8: su sitio en la tabla del tercio
	add hl,hl			;4cef
	add hl,hl			;4cf0
	add hl,de			;4cf1
	push hl			;4cf2
	ld de,02000h		;4cf3   ; + 0x2000: los dibujos
	add hl,de			;4cf6
	ld e,(ix+001h)		;4cf7   ; el RLE de los dibujos (IX+1)
	ld d,(ix+002h)		;4cfa
	push ix		;4cfd
	call rle_a_vram		;4cff   ; a la VRAM
	pop ix		;4d02
	pop hl			;4d04
	ld de,00000h		;4d05   ; + 0: los colores
	add hl,de			;4d08
	ld e,(ix+004h)		;4d09   ; el RLE de los colores (IX+4)
	ld d,(ix+005h)		;4d0c
	push ix		;4d0f
	call rle_a_vram		;4d11   ; a la VRAM
	pop ix		;4d14
	ret			;4d16
L_4D17:
	ld a,001h		;4d17   ; la misma copia con espejo, pero con el bufer de 0xCE00 (0xE326 = 1)
	jr L_4D1C		;4d19
copia_con_vuelta:		; copia caracteres de la VRAM dandoles la vuelta (lista IX)
	xor a			;4d1b   ; copias de caracteres con espejo: la lista de IX, de 4 en 4, hasta un 0
L_4D1C:
	ld (0e326h),a		;4d1c   ; 0xE326: que bufer de la RAM se usa
L_4D1F:
	ld a,(ix+000h)		;4d1f   ; el caracter de origen (0 acaba)
	and a			;4d22
	ret z			;4d23
	ld e,(ix+002h)		;4d24   ; el tercer byte: el bit 7, que vuelta se le da...
	xor a			;4d27
	rl e		;4d28
	rla			;4d2a
	ld (0e312h),a		;4d2b   ; ...en 0xE312
	ld l,(ix+003h)		;4d2e   ; el cuarto: cuantos caracteres...
	ld a,l			;4d31
	ld (0e315h),a		;4d32   ; ...en 0xE315
	call L_4D3F		;4d35   ; copia y vuelta
	ld de,00004h		;4d38   ; la entrada siguiente
	add ix,de		;4d3b
	jr L_4D1F		;4d3d
L_4D3F:
	ld h,000h		;4d3f   ; los bytes: cuantos x 8
	add hl,hl			;4d41
	add hl,hl			;4d42
	add hl,hl			;4d43
	ld (0e313h),hl		;4d44
	call L_4E0B		;4d47   ; los dibujos y los colores de la VRAM a la RAM (p00:4E0B)
	ld a,(0e312h)		;4d4a   ; sin el bit 7: vuelta de lado a lado (p00:4D8E)
	and a			;4d4d
	push af			;4d4e
	call z,L_4D8E		;4d4f
	pop af			;4d52
	call nz,L_4D59		;4d53   ; con el: de arriba abajo (p00:4D59)
	jp L_4DA5		;4d56   ; y de vuelta a la VRAM en los tercios que diga (p00:4DA5)
L_4D59:
	call L_4DED		;4d59   ; de arriba abajo: los dibujos...
	ld h,d			;4d5c
	ld l,e			;4d5d
	ld a,007h		;4d5e
	call suma_a_de		;4d60   ; suma_a_de: DE = DE + A
	call L_4D70		;4d63   ; ...dando la vuelta a cada caracter (p00:4D70)
	call L_4DFC		;4d66   ; y los colores igual
	ld h,d			;4d69
	ld l,e			;4d6a
	ld a,007h		;4d6b
	call suma_a_de		;4d6d   ; suma_a_de: DE = DE + A
L_4D70:
	exx			;4d70   ; cada caracter...
	ld a,(0e315h)		;4d71
	ld b,a			;4d74
L_4D75:
	exx			;4d75
	ld b,004h		;4d76   ; ...cambia sus 8 filas de arriba abajo
L_4D78:
	ld c,(hl)			;4d78
	ld a,(de)			;4d79
	ld (hl),a			;4d7a
	ld a,c			;4d7b
	ld (de),a			;4d7c
	inc hl			;4d7d
	dec de			;4d7e
	djnz L_4D78		;4d7f
	inc hl			;4d81
	inc hl			;4d82
	inc hl			;4d83
	inc hl			;4d84
	ld a,00ch		;4d85
	call suma_a_de		;4d87   ; suma_a_de: DE = DE + A
	exx			;4d8a
	djnz L_4D75		;4d8b
	ret			;4d8d
L_4D8E:
	call L_4DED		;4d8e   ; de lado a lado: cada byte con los bits al reves
	ex de,hl			;4d91
	ld de,(0e313h)		;4d92
L_4D96:
	ld b,008h		;4d96
L_4D98:
	rr (hl)		;4d98   ; el bit de abajo del byte...
	adc a,a			;4d9a   ; ...entra por abajo en A
	djnz L_4D98		;4d9b
	ld (hl),a			;4d9d
	inc hl			;4d9e
	dec de			;4d9f
	ld a,d			;4da0
	or e			;4da1
	jr nz,L_4D96		;4da2
	ret			;4da4
L_4DA5:
	bit 3,(ix+002h)		;4da5   ; bit 3 del tercer byte: al tercio de abajo
	ld de,01000h		;4da9
	call nz,L_4DC1		;4dac
	bit 4,(ix+002h)		;4daf   ; bit 4: al del medio
	ld de,00800h		;4db3
	call nz,L_4DC1		;4db6
	bit 5,(ix+002h)		;4db9   ; bit 5: al de arriba
	ld de,00000h		;4dbd
	ret z			;4dc0
L_4DC1:
	push ix		;4dc1   ; el caracter de destino x 8 + el tercio
	ld l,(ix+001h)		;4dc3
	ld h,000h		;4dc6
	add hl,hl			;4dc8
	add hl,hl			;4dc9
	add hl,hl			;4dca
	add hl,de			;4dcb
	push hl			;4dcc
	ld de,02000h		;4dcd   ; los dibujos (+0x2000)
	add hl,de			;4dd0
	call L_4DED		;4dd1
	ld bc,(0e313h)		;4dd4
	call copia_a_vram		;4dd8   ; a la VRAM
	pop hl			;4ddb
	ld de,00000h		;4ddc
	add hl,de			;4ddf
	call L_4DFC		;4de0   ; los colores
	ld bc,(0e313h)		;4de3
	call copia_a_vram		;4de7   ; copia_a_vram: LDIRVM con origen DE y destino HL
	pop ix		;4dea
	ret			;4dec
L_4DED:
	push af			;4ded   ; el bufer de los dibujos: 0xCA00 (o 0xCE00)
	ld de,0ca00h		;4dee   ; apunta a un bufer de trabajo
	ld a,(0e326h)		;4df1
	or a			;4df4
	jr z,L_4DFA		;4df5
	ld de,0ce00h		;4df7
L_4DFA:
	pop af			;4dfa
	ret			;4dfb
L_4DFC:
	push af			;4dfc   ; el de los colores: 0xCC00 (o 0xCF00)
	ld de,0cc00h		;4dfd
	ld a,(0e326h)		;4e00
	or a			;4e03
	jr z,L_4E09		;4e04
	ld de,0cf00h		;4e06
L_4E09:
	pop af			;4e09
	ret			;4e0a
L_4E0B:
	ld bc,(0e313h)		;4e0b   ; de la VRAM a la RAM: el caracter de origen x 8...
	ld l,(ix+000h)		;4e0f
	ld h,000h		;4e12
	add hl,hl			;4e14
	add hl,hl			;4e15
	add hl,hl			;4e16
	push hl			;4e17
	ld de,02000h		;4e18   ; ...en el tercio de arriba...
	bit 2,(ix+002h)		;4e1b
	jr nz,L_4E2B		;4e1f
	ld d,028h		;4e21   ; ...en el del medio (bit 1)...
	bit 1,(ix+002h)		;4e23
	jr nz,L_4E2B		;4e27
	ld d,030h		;4e29   ; ...o en el de abajo
L_4E2B:
	add hl,de			;4e2b
	call L_4DED		;4e2c
	push ix		;4e2f
	call 00059h		;4e31   ; BIOS LDIRMV - Block transfers to memory from VRAM | los dibujos al bufer
	pop ix		;4e34
	pop hl			;4e36
	ld de,00000h		;4e37   ; y los colores
	bit 2,(ix+002h)		;4e3a
	jr nz,L_4E4A		;4e3e
	ld d,008h		;4e40
	bit 1,(ix+002h)		;4e42
	jr nz,L_4E4A		;4e46
	ld d,010h		;4e48
L_4E4A:
	add hl,de			;4e4a
	call L_4DFC		;4e4b
	ld bc,(0e313h)		;4e4e
	push ix		;4e52
	call 00059h		;4e54   ; BIOS LDIRMV - Block transfers to memory from VRAM | al bufer de colores
	pop ix		;4e57
	ret			;4e59
L_4E5A:
	ld a,(ix+000h)		;4e5a   ; sprites copiados con espejo: la lista de IX de 4 en 4, hasta un 0
	dec a			;4e5d   ; 1: espejo de sprite de 16 (p00:4E6E); 2 o mas: tiras de bytes al reves (p00:4EDE)
	ret m			;4e5e
	push af			;4e5f
	call z,L_4E6E		;4e60
	pop af			;4e63
	call nz,L_4EDE		;4e64
	ld bc,00004h		;4e67   ; la entrada siguiente
	add ix,bc		;4e6a
	jr L_4E5A		;4e6c
L_4E6E:
	ld a,(ix+001h)		;4e6e   ; cuantos sprites (0: nada)
	or a			;4e71
	ret z			;4e72
	ld (0ef90h),a		;4e73   ; en 0xEF90
	ld l,(ix+002h)		;4e76   ; el dibujo de origen x 8 + 0x1800 (los dibujos de sprite)
	ld h,000h		;4e79
	add hl,hl			;4e7b
	add hl,hl			;4e7c
	add hl,hl			;4e7d
	ld bc,01800h		;4e7e
	add hl,bc			;4e81
	ld (0ef92h),hl		;4e82
	ld l,(ix+003h)		;4e85   ; el de destino
	ld h,000h		;4e88
	add hl,hl			;4e8a
	add hl,hl			;4e8b
	add hl,hl			;4e8c
	add hl,bc			;4e8d
	ld (0ef94h),hl		;4e8e
L_4E91:
	ld hl,(0ef92h)		;4e91   ; 32 bytes del origen a 0xCA00
	ld de,0ca00h		;4e94   ; apunta a un bufer de trabajo
	ld bc,00020h		;4e97
	call 00059h		;4e9a   ; BIOS LDIRMV - Block transfers to memory from VRAM
	call L_4EC4		;4e9d   ; les da la vuelta (p00:4EC4)
	ld hl,(0ef94h)		;4ea0   ; y al destino
	ld de,0ca20h		;4ea3
	ld bc,00020h		;4ea6
	call copia_a_vram		;4ea9   ; copia_a_vram: LDIRVM con origen DE y destino HL
	ld bc,00020h		;4eac   ; el sprite siguiente de cada lado
	ld hl,(0ef92h)		;4eaf
	add hl,bc			;4eb2
	ld (0ef92h),hl		;4eb3
	ld hl,(0ef94h)		;4eb6
	add hl,bc			;4eb9
	ld (0ef94h),hl		;4eba
	ld hl,0ef90h		;4ebd   ; hasta acabar la cuenta
	dec (hl)			;4ec0
	jr nz,L_4E91		;4ec1
	ret			;4ec3
L_4EC4:
	ld hl,0ca00h		;4ec4   ; un sprite de 16 x 16 de lado a lado: las dos mitades se cambian, fila a fila
	ld de,0ca2fh		;4ec7
	ld b,010h		;4eca
	call L_4ED7		;4ecc
	ld hl,0ca10h		;4ecf
	ld de,0ca3fh		;4ed2
	ld b,010h		;4ed5
L_4ED7:
	ld a,(hl)			;4ed7
	ld (de),a			;4ed8
	inc hl			;4ed9
	dec de			;4eda
	djnz L_4ED7		;4edb
	ret			;4edd
L_4EDE:
	ld a,(ix+001h)		;4ede   ; dos o mas: C tiras con los bytes al reves (p00:4B61)
	or a			;4ee1
	ret z			;4ee2
	ld l,(ix+003h)		;4ee3   ; el destino x 8 + 0x1810
	ld h,000h		;4ee6
	add hl,hl			;4ee8
	add hl,hl			;4ee9
	add hl,hl			;4eea
	ld bc,01810h		;4eeb
	add hl,bc			;4eee
	ex de,hl			;4eef
	ld l,(ix+002h)		;4ef0   ; el origen x 8 + 0x1800
	ld h,000h		;4ef3
	add hl,hl			;4ef5
	add hl,hl			;4ef6
	add hl,hl			;4ef7
	ld bc,01800h		;4ef8
	add hl,bc			;4efb
	ld c,(ix+001h)		;4efc   ; cuantas
	jp L_4B61		;4eff
L_4F02:
	call guarda_y_bancos_20_21_22		;4f02   ; un dibujo de 8 bytes de p20:6018 (indice DE) a un caracter libre del tercio de IX+3
	call L_4F0B		;4f05
	jp devuelve_reparto		;4f08   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4F0B:
	ex de,hl			;4f0b   ; el dibujo DE x 8...
	add hl,hl			;4f0c
	add hl,hl			;4f0d
	add hl,hl			;4f0e
	ld de,06018h		;4f0f   ; ...en la tabla de p20:6018
	add hl,de			;4f12
	push hl			;4f13
	ld a,(ix+003h)		;4f14   ; el tercio (IX+3) x 0x800...
	rlca			;4f17
	rlca			;4f18
	rlca			;4f19
	ld h,a			;4f1a
	ld l,000h		;4f1b
	ld de,02000h		;4f1d   ; ...en los dibujos (0x2000)
	add hl,de			;4f20
	ex de,hl			;4f21
	ld a,(ix+003h)		;4f22   ; el siguiente caracter libre de ese tercio (0xE5C7 + tercio)...
	ld hl,0e5c7h		;4f25   ; apunta a el siguiente caracter libre de cada tercio
	add a,l			;4f28
	ld l,a			;4f29
	ld a,(hl)			;4f2a
	inc (hl)			;4f2b   ; ...y uno mas para la proxima vez
	ld l,a			;4f2c
	ld h,000h		;4f2d
	add hl,hl			;4f2f
	add hl,hl			;4f30
	add hl,hl			;4f31
	add hl,de			;4f32
	ld (0ef80h),hl		;4f33   ; la direccion, en 0xEF80
	call vram_para_escribir		;4f36   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;4f39
	ld b,008h		;4f3a   ; 8 bytes
	pop hl			;4f3c
L_4F3D:
	outi		;4f3d   ; a la VRAM
	jp nz,L_4F3D		;4f3f
	ld de,0e000h		;4f42   ; y sus colores (0xE000 abajo: los colores del mismo caracter)...
	ld hl,(0ef80h)		;4f45
	add hl,de			;4f48
	ld bc,00008h		;4f49
	ld a,(0e5c3h)		;4f4c   ; ...todos del color de 0xE5C3
	jp 00056h		;4f4f   ; BIOS FILVRM - Fills VRAM with value
L_4F52:
	ld hl,03278h		;4f52   ; un bloque de 0x48 bytes de p14:646C (palabra A) a la VRAM de 0x3278
L_4F55:
	ld (0ef80h),hl		;4f55
	ld (0ef82h),a		;4f58
	call guarda_y_bancos_14_15		;4f5b   ; con el 14 y el 15
	call L_4F64		;4f5e
	jp devuelve_reparto		;4f61   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_4F64:
	ld hl,(0ef80h)		;4f64   ; la direccion
	call vram_para_escribir		;4f67   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;4f6a
	ld a,(0ef82h)		;4f6b   ; el bloque A de la tabla de 0x646C
	ld hl,0646ch		;4f6e
	call lee_palabra		;4f71   ; lee_palabra: HL = la palabra A de la tabla HL
	ld b,048h		;4f74   ; 0x48 bytes
L_4F76:
	outi		;4f76
	jp nz,L_4F76		;4f78
	ret			;4f7b
L_4F7C:
	call L_4F82		;4f7c   ; los graficos de la fase y vuelve a 1-2-3
	jp bancos_1_2_3		;4f7f   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_4F82:
	call L_4FD3		;4f82   ; los graficos de la fase: lo de cada parte
	call L_4FAC		;4f85
	call L_4FED		;4f88
	call L_5007		;4f8b
	call L_505D		;4f8e
	call L_5080		;4f91
	call L_508F		;4f94
	call L_506C		;4f97
	call L_509E		;4f9a
	call L_50DC		;4f9d
	call L_50B0		;4fa0
	call L_50E9		;4fa3
	call L_518E		;4fa6
	jp L_519C		;4fa9
L_4FAC:
	call bancos_14_15		;4fac   ; la nave: los graficos de p14:6000 (14 y 15 puestos)
	ld ix,06000h		;4faf
	call carga_graficos		;4fb3   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	jp bancos_1_2_3		;4fb6   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_4FB9:
	call bancos_14_15		;4fb9   ; los graficos de p14:6007
	ld ix,06007h		;4fbc
	call carga_graficos		;4fc0   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	jp bancos_1_2_3		;4fc3   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_4FC6:
	call bancos_14_15		;4fc6   ; los de p14:6013
	ld ix,06013h		;4fc9
	call carga_graficos		;4fcd   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	jp bancos_1_2_3		;4fd0   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_4FD3:
	ld a,(0e518h)		;4fd3   ; los graficos de la fase (tabla p16:5FFE), si 0xE518 es 0
	or a			;4fd6
	ret nz			;4fd7
	call bancos_16_17_18		;4fd8   ; con 16-17-18
	ld a,(0e361h)		;4fdb   ; lee la fase (1 a 11)
	ld hl,05ffeh		;4fde
	call lee_palabra		;4fe1   ; lee_palabra: HL = la palabra A de la tabla HL
	push hl			;4fe4
	pop ix		;4fe5
	call carga_graficos		;4fe7   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	jp bancos_1_2_3		;4fea   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_4FED:
	ld a,(0e518h)		;4fed   ; las copias con espejo de la fase (tabla p16:6014)
	or a			;4ff0
	ret nz			;4ff1
	call bancos_16_17_18		;4ff2   ; bancos_16_17_18: pone los bancos 16-17-18 (y sus copias en 0xF0F1-3)
	ld a,(0e361h)		;4ff5   ; lee la fase (1 a 11)
	ld hl,06014h		;4ff8
	call lee_palabra		;4ffb   ; lee_palabra: HL = la palabra A de la tabla HL
	push hl			;4ffe
	pop ix		;4fff
	call copia_con_vuelta		;5001   ; copia_con_vuelta: copia caracteres de la VRAM dandoles la vuelta (lista IX)
	jp bancos_1_2_3		;5004   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_5007:
	call guarda_y_bancos_14_15		;5007   ; los dibujos de sprite de p14:7055 (RLE) en 0x1800, con los bancos 14 y 15
	ld hl,01800h		;500a   ; 0x1800: los dibujos de los sprites
	ld de,07055h		;500d
	call rle_a_vram		;5010   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	call L_5019		;5013
	jp devuelve_reparto		;5016   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_5019:
	ld hl,01840h		;5019
	ld a,(0e600h)		;501c   ; lee el estado de la nave (1 normal, 2 y 3 con escudo, 0xFF estalla)
	sub 002h		;501f
	jr z,L_502C		;5021
	dec a			;5023
	jr z,L_503D		;5024
	ld de,07082h		;5026
	jp rle_a_vram		;5029   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
L_502C:
	ld a,(0e601h)		;502c   ; lee los golpes que le quedan al escudo
	or a			;502f
	ret z			;5030
	dec a			;5031
	ld de,07166h		;5032
	jr z,L_503A		;5035
	ld de,070cbh		;5037
L_503A:
	jp rle_a_vram		;503a   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
L_503D:
	ld a,(0e601h)		;503d   ; lee los golpes que le quedan al escudo
	or a			;5040
	ret z			;5041
	dec a			;5042
	ld de,072a6h		;5043
	jr z,L_504B		;5046
	ld de,071d1h		;5048
L_504B:
	jp rle_a_vram		;504b   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
L_504E:
	call guarda_y_bancos_14_15		;504e   ; guarda_y_bancos_14_15: guarda el reparto en la pila y pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	ld hl,01800h		;5051
	ld de,07365h		;5054
	call rle_a_vram		;5057   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	jp devuelve_reparto		;505a   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_505D:
	call guarda_y_bancos_14_15		;505d   ; guarda_y_bancos_14_15: guarda el reparto en la pila y pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	ld de,07447h		;5060
	ld hl,019e0h		;5063
	call rle_a_vram		;5066   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	jp devuelve_reparto		;5069   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_506C:
	ld a,(0e5e0h)		;506c
	or a			;506f
	ret z			;5070
L_5071:
	call guarda_y_bancos_14_15		;5071   ; guarda_y_bancos_14_15: guarda el reparto en la pila y pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	ld hl,01920h		;5074
	ld de,07537h		;5077
	call rle_a_vram		;507a   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	jp devuelve_reparto		;507d   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_5080:
	call guarda_y_bancos_14_15		;5080   ; guarda_y_bancos_14_15: guarda el reparto en la pila y pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	ld hl,01920h		;5083
	ld de,074a4h		;5086
	call rle_a_vram		;5089   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	jp devuelve_reparto		;508c   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_508F:
	call guarda_y_bancos_14_15		;508f   ; guarda_y_bancos_14_15: guarda el reparto en la pila y pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	ld hl,01980h		;5092
	ld de,074d8h		;5095
	call rle_a_vram		;5098   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	jp devuelve_reparto		;509b   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_509E:
	call bancos_14_15		;509e   ; bancos_14_15: pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	ld hl,06ed4h		;50a1
	call L_50C2		;50a4
	ld hl,06edbh		;50a7
	call L_50C2		;50aa
	jp bancos_1_2_3		;50ad   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_50B0:
	call bancos_14_15		;50b0   ; bancos_14_15: pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	ld a,(0e361h)		;50b3   ; lee la fase (1 a 11)
	ld hl,06eedh		;50b6
	call lee_palabra		;50b9   ; lee_palabra: HL = la palabra A de la tabla HL
	call L_50C2		;50bc
	jp bancos_1_2_3		;50bf   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_50C2:
	ld a,(hl)			;50c2
	or a			;50c3
	ret z			;50c4
	inc hl			;50c5
	ld e,(hl)			;50c6
	inc hl			;50c7
	ld d,(hl)			;50c8
	inc hl			;50c9
	push hl			;50ca
	ld l,a			;50cb
	ld h,000h		;50cc
	add hl,hl			;50ce
	add hl,hl			;50cf
	add hl,hl			;50d0
	ld bc,01800h		;50d1
	add hl,bc			;50d4
	call rle_a_vram		;50d5   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	pop hl			;50d8
	jp L_50C2		;50d9
L_50DC:
	call bancos_14_15		;50dc   ; bancos_14_15: pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	ld ix,06ee2h		;50df
	call L_4E5A		;50e3
	jp bancos_1_2_3		;50e6   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_50E9:
	call bancos_14_15		;50e9   ; bancos_14_15: pone los bancos 14-15 (y sus copias en 0xF0F1-3)
	ld hl,06faah		;50ec
	ld a,(0e361h)		;50ef   ; lee la fase (1 a 11)
	call lee_palabra		;50f2   ; lee_palabra: HL = la palabra A de la tabla HL
	push hl			;50f5
	pop ix		;50f6
	call L_4E5A		;50f8
	jp bancos_1_2_3		;50fb   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_50FE:
	ld a,(0e440h)		;50fe   ; lee el jefe en curso (0: ninguno)
	cp 00dh		;5101
	ret z			;5103
	push ix		;5104
	call guarda_y_bancos_20_21_22		;5106   ; guarda_y_bancos_20_21_22: guarda el reparto en la pila y pone los bancos 20-21-22 (y sus copias en 0xF0F1-3)
	call L_511B		;5109
	call L_514F		;510c
	call devuelve_reparto		;510f   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
	call L_518E		;5112
	call L_5701		;5115
	pop ix		;5118
	ret			;511a
L_511B:
	ld a,(0e440h)		;511b   ; lee el jefe en curso (0: ninguno)
	ld hl,06b1fh		;511e
	call lee_palabra		;5121   ; lee_palabra: HL = la palabra A de la tabla HL
L_5124:
	ld e,(hl)			;5124
	inc hl			;5125
	ld d,(hl)			;5126
	inc hl			;5127
	push hl			;5128
	push de			;5129
	pop ix		;512a
	call carga_graficos		;512c   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	pop hl			;512f
	ld e,(hl)			;5130
	inc hl			;5131
	ld d,(hl)			;5132
	inc hl			;5133
	push hl			;5134
	push de			;5135
	pop ix		;5136
	call copia_con_vuelta		;5138   ; copia_con_vuelta: copia caracteres de la VRAM dandoles la vuelta (lista IX)
	pop hl			;513b
	ld e,(hl)			;513c
	inc hl			;513d
	ld d,(hl)			;513e
	inc hl			;513f
	push hl			;5140
	ex de,hl			;5141
	call L_50C2		;5142
	pop hl			;5145
	ld e,(hl)			;5146
	inc hl			;5147
	ld d,(hl)			;5148
	push de			;5149
	pop ix		;514a
	jp L_4E5A		;514c
L_514F:
	ld hl,01f60h		;514f
	ld de,06ac8h		;5152
	call rle_a_vram		;5155   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	ret			;5158
L_5159:
	push ix		;5159
	push hl			;515b
	call guarda_y_bancos_20_21_22		;515c   ; guarda_y_bancos_20_21_22: guarda el reparto en la pila y pone los bancos 20-21-22 (y sus copias en 0xF0F1-3)
	ld hl,06bbch		;515f
	call L_5124		;5162
	call devuelve_reparto		;5165   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
	call L_518E		;5168
	pop hl			;516b
	pop ix		;516c
	ret			;516e
L_516F:
	push ix		;516f
	push hl			;5171
	call guarda_y_bancos_20_21_22		;5172   ; guarda_y_bancos_20_21_22: guarda el reparto en la pila y pone los bancos 20-21-22 (y sus copias en 0xF0F1-3)
	bit 0,(ix+01ch)		;5175
	ld hl,06b7bh		;5179
	jr z,L_5181		;517c
	ld hl,06b83h		;517e
L_5181:
	call L_5124		;5181
	call devuelve_reparto		;5184   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
	call L_518E		;5187
	pop hl			;518a
	pop ix		;518b
	ret			;518d
L_518E:
	ld hl,0ca00h		;518e   ; apunta a un bufer de trabajo
	ld de,0ca01h		;5191
	ld bc,003ffh		;5194
	ld (hl),000h		;5197
	ldir		;5199
	ret			;519b
L_519C:
	call bancos_16_17_18		;519c   ; bancos_16_17_18: pone los bancos 16-17-18 (y sus copias en 0xF0F1-3)
	ld a,(0e361h)		;519f   ; lee la fase (1 a 11)
	ld hl,067ddh		;51a2
	call lee_palabra		;51a5   ; lee_palabra: HL = la palabra A de la tabla HL
	call L_4B94		;51a8
	jp bancos_1_2_3		;51ab   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_51AE:
	ld a,(0e361h)		;51ae   ; lee la fase (1 a 11)
	cp 004h		;51b1
	ret z			;51b3
	ld a,(0e420h)		;51b4   ; lee 1 si este cuadro hay scroll
	or a			;51b7
	ret z			;51b8
L_51B9:
	call bancos_16_17_18		;51b9   ; bancos_16_17_18: pone los bancos 16-17-18 (y sus copias en 0xF0F1-3)
	call L_51EE		;51bc
	jp bancos_1_2_3		;51bf   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_51C2:
	ld a,(0e361h)		;51c2   ; lee la fase (1 a 11)
	cp 004h		;51c5
	ret z			;51c7
	ld hl,(0e363h)		;51c8   ; lee la posicion del scroll (16 bits)
	push hl			;51cb
	inc hl			;51cc
	ld (0e40eh),hl		;51cd
	ld hl,00020h		;51d0
	ld (0e363h),hl		;51d3   ; guarda la posicion del scroll (16 bits)
L_51D6:
	call L_51B9		;51d6
	ld hl,(0e363h)		;51d9   ; lee la posicion del scroll (16 bits)
	inc hl			;51dc
	ld (0e363h),hl		;51dd   ; guarda la posicion del scroll (16 bits)
	ld de,(0e40eh)		;51e0
	or a			;51e4
	sbc hl,de		;51e5
	jr c,L_51D6		;51e7
	pop hl			;51e9
	ld (0e363h),hl		;51ea   ; guarda la posicion del scroll (16 bits)
	ret			;51ed
L_51EE:
	ld a,(0e361h)		;51ee   ; lee la fase (1 a 11)
	ld hl,0602ah		;51f1
	call lee_palabra		;51f4   ; lee_palabra: HL = la palabra A de la tabla HL
L_51F7:
	ld e,(hl)			;51f7
	inc hl			;51f8
	ld d,(hl)			;51f9
	inc hl			;51fa
	ld b,h			;51fb
	ld c,l			;51fc
	ld hl,(0e363h)		;51fd   ; lee la posicion del scroll (16 bits)
	or a			;5200
	sbc hl,de		;5201
	ret c			;5203
	jr z,L_5210		;5204
	ld h,b			;5206
	ld l,c			;5207
	inc hl			;5208
	inc hl			;5209
	inc hl			;520a
	inc hl			;520b
	inc hl			;520c
	jp L_51F7		;520d
L_5210:
	ld a,001h		;5210
	ld (0e31dh),a		;5212
	ld h,b			;5215
	ld l,c			;5216
	ld e,(hl)			;5217
	inc hl			;5218
	ld d,(hl)			;5219
	inc hl			;521a
	push hl			;521b
	push de			;521c
	pop ix		;521d
	call carga_graficos		;521f   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	pop hl			;5222
	ld e,(hl)			;5223
	inc hl			;5224
	ld d,(hl)			;5225
	inc hl			;5226
	push hl			;5227
	push de			;5228
	pop ix		;5229
	call copia_con_vuelta		;522b   ; copia_con_vuelta: copia caracteres de la VRAM dandoles la vuelta (lista IX)
	pop hl			;522e
	ld a,(hl)			;522f
	ld (0e405h),a		;5230   ; guarda el caracter del fondo de la fase
	jp L_5D00		;5233
L_5236:
	xor a			;5236   ; la pantalla entera al empezar la fase: 32 columnas del mapa hacia atras desde el scroll
	ld (0e428h),a		;5237   ; 0xE428 = 0 (la x de la columna, de 8 en 8)
	ld hl,(0e363h)		;523a   ; guarda el scroll...
	push hl			;523d
	ld de,0001fh		;523e   ; ...y empieza 0x1F columnas antes
	sbc hl,de		;5241
	ld (0e363h),hl		;5243   ; guarda la posicion del scroll (16 bits)
	ld hl,0c400h		;5246   ; la primera columna del bufer de 0xC400
	ld (0e429h),hl		;5249   ; guarda la columna del bufer de 0xC400 que se pinta y el byte siguiente (16 bits)
	ld b,020h		;524c   ; 32 columnas
L_524E:
	push bc			;524e
	call L_533C		;524f   ; la columna del mapa (p00:5345 con 23-24-25)
	call L_5272		;5252   ; y lo que sale en ella (p00:5272)
	ld hl,(0e429h)		;5255   ; la columna siguiente del bufer
	inc hl			;5258
	ld (0e429h),hl		;5259   ; guarda la columna del bufer de 0xC400 que se pinta y el byte siguiente (16 bits)
	ld hl,0e428h		;525c   ; la x, 8 puntos mas
	ld a,(hl)			;525f
	add a,008h		;5260
	ld (hl),a			;5262
	ld hl,(0e363h)		;5263   ; y el scroll, uno mas
	inc hl			;5266
	ld (0e363h),hl		;5267   ; guarda la posicion del scroll (16 bits)
	pop bc			;526a
	djnz L_524E		;526b
	pop hl			;526d   ; deja el scroll como estaba
	ld (0e363h),hl		;526e   ; guarda la posicion del scroll (16 bits)
	ret			;5271
L_5272:
	call 09075h		;5272   ; lo que sale en la columna: p02:9075, p01:7B98, p01:7163 y p02:8088
	call 07b98h		;5275
	call 07163h		;5278
	jp 08088h		;527b
L_527E:
	ld a,001h		;527e   ; 0xE427 = 1: el scroll llega al final de la fase
	ld (0e427h),a		;5280   ; guarda 1 al llegar al final del scroll
	ret			;5283
L_5284:
	ld a,(0e361h)		;5284   ; la fase 9 a partir del scroll 0x1C0, y la 11, avanzan cada dos cuadros (vuelve con C)
	cp 009h		;5287
	jr z,L_5291		;5289
	cp 00bh		;528b
	jr z,L_529A		;528d
	or a			;528f
	ret			;5290
L_5291:
	ld de,(0e363h)		;5291   ; el scroll contra 0x1C0
	ld hl,001c0h		;5295
	rst 20h			;5298
	ret nc			;5299
L_529A:
	ld a,(0e303h)		;529a   ; el bit 0 de la cuenta de cuadros al acarreo
	rra			;529d
	ret			;529e
L_529F:
	xor a			;529f   ; el scroll de cada cuadro: 0xE420 y 0xE427 a 0
	ld (0e420h),a		;52a0   ; guarda 1 si este cuadro hay scroll
	ld (0e427h),a		;52a3   ; guarda 1 al llegar al final del scroll
	ld a,(0e361h)		;52a6   ; la fase 4 va aparte (p00:52F6)
	cp 004h		;52a9
	jr z,L_52F6		;52ab
	ld de,(0e425h)		;52ad   ; al final de la fase (0xE425)...
	ld hl,(0e363h)		;52b1   ; lee la posicion del scroll (16 bits)
	rst 20h			;52b4
	jr nc,L_527E		;52b5   ; ...se para
	push hl			;52b7
	call L_5284		;52b8   ; las fases que van mas despacio
	pop hl			;52bb
	ret c			;52bc
	ld de,0e362h		;52bd   ; la velocidad: 0xE362 se rota...
	ld a,(de)			;52c0
	rlca			;52c1
	ld (de),a			;52c2
	and 001h		;52c3   ; ...y con el bit 0 a 1 se avanza
	ret z			;52c5
	inc hl			;52c6   ; el scroll, uno mas
	ld (0e363h),hl		;52c7   ; guarda la posicion del scroll (16 bits)
	ld a,001h		;52ca   ; 0xE420 = 1: este cuadro hay scroll
	ld (0e420h),a		;52cc   ; guarda 1 si este cuadro hay scroll
	call L_52DB		;52cf   ; el bufer de 0xC400, una columna a la izquierda
	ld hl,0c41fh		;52d2   ; y la columna nueva, la de la derecha (0xC41F)...
	ld (0e429h),hl		;52d5   ; guarda la columna del bufer de 0xC400 que se pinta y el byte siguiente (16 bits)
	jp L_533C		;52d8   ; ...con el mapa
L_52DB:
	ld hl,0c401h		;52db   ; 22 filas del bufer...
	ld de,0c400h		;52de   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld b,016h		;52e1
L_52E3:
	push bc			;52e3
	ld bc,0001fh		;52e4   ; ...cada una 31 bytes a la izquierda
	ldir		;52e7
	ld bc,00021h		;52e9   ; la fila siguiente (0x40 bytes)
	add hl,bc			;52ec
	ld a,021h		;52ed
	call suma_a_de		;52ef   ; suma_a_de: DE = DE + A
	pop bc			;52f2
	djnz L_52E3		;52f3
	ret			;52f5
L_52F6:
	ld a,(0e303h)		;52f6   ; la fase 4: avanza cada 8 cuadros
	and 007h		;52f9
	jr nz,L_5309		;52fb
	ld a,001h		;52fd
	ld (0e420h),a		;52ff   ; guarda 1 si este cuadro hay scroll
	ld hl,(0e363h)		;5302   ; lee la posicion del scroll (16 bits)
	inc hl			;5305
	ld (0e363h),hl		;5306   ; guarda la posicion del scroll (16 bits)
L_5309:
	ld hl,(0e53bh)		;5309   ; y otra posicion de scroll que va hacia atras (0xE53B)
	dec hl			;530c
	ld (0e53bh),hl		;530d
	ld hl,(0e363h)		;5310   ; se pinta el bufer entero con ese scroll
	push hl			;5313
	ld hl,(0e53bh)		;5314
	ld (0e363h),hl		;5317   ; guarda la posicion del scroll (16 bits)
	ld hl,0c400h		;531a   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld (0e429h),hl		;531d   ; guarda la columna del bufer de 0xC400 que se pinta y el byte siguiente (16 bits)
	ld b,020h		;5320   ; 32 columnas
L_5322:
	push bc			;5322
	call L_5404		;5323   ; la columna (p00:5404)
	ld hl,(0e429h)		;5326   ; lee la columna del bufer de 0xC400 que se pinta y el byte siguiente (16 bits)
	inc hl			;5329
	ld (0e429h),hl		;532a   ; guarda la columna del bufer de 0xC400 que se pinta y el byte siguiente (16 bits)
	ld hl,(0e363h)		;532d   ; lee la posicion del scroll (16 bits)
	inc hl			;5330
	ld (0e363h),hl		;5331   ; guarda la posicion del scroll (16 bits)
	pop bc			;5334
	djnz L_5322		;5335
	pop hl			;5337
	ld (0e363h),hl		;5338   ; guarda la posicion del scroll (16 bits)
	ret			;533b
L_533C:
	call bancos_23_24_25		;533c   ; la columna del mapa con los bancos 23-24-25
	call L_5345		;533f
	jp bancos_1_2_3		;5342   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_5345:
	ld hl,(0e363h)		;5345   ; la columna del mapa en el bufer, si el scroll esta entre 0xE421 y 0xE423
	ld de,(0e423h)		;5348
	rst 20h			;534c
	jp nc,L_5404		;534d   ; fuera: columna vacia (p00:5404)
	ld de,(0e421h)		;5350
	and a			;5354
	sbc hl,de		;5355
	jp c,L_5404		;5357
	ex de,hl			;535a
	ld hl,0946fh		;535b   ; el mapa de la fase (p24:946F + 2 x fase)
	ld a,(0e361h)		;535e   ; lee la fase (1 a 11)
	call lee_palabra		;5361   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;5364
	ld a,l			;5365   ; el scroll / 2, par...
	srl h		;5366
	rra			;5368
	and 0feh		;5369
	ld l,a			;536b
	ld c,l			;536c   ; ...x 3: 6 bytes por cada 4 pasos de scroll
	ld b,h			;536d
	add hl,hl			;536e
	add hl,bc			;536f
	add hl,de			;5370
	ld (0e42bh),hl		;5371   ; la columna, en 0xE42B
	ld hl,(0e429h)		;5374   ; la columna del bufer
	ld b,006h		;5377   ; 6 bloques
L_5379:
	push bc			;5379
	push hl			;537a
	ld a,(0e361h)		;537b   ; los bloques de la fase (p23:5FFE + 2 x fase)
	ld hl,05ffeh		;537e
	call lee_palabra		;5381   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;5384
	ld hl,(0e42bh)		;5385   ; el bloque
	ld a,(hl)			;5388
	inc hl			;5389
	ld (0e42bh),hl		;538a   ; guarda la columna del mapa que se lee y el byte siguiente (16 bits)
	sub 004h		;538d   ; 0-3: los comunes de p23:6021
	jr nc,L_539A		;538f
	add a,004h		;5391
	ld c,a			;5393
	ld de,06021h		;5394
	ld a,c			;5397
	jr L_53CE		;5398
L_539A:
	ld c,a			;539a   ; 4 y mas: los de la fase
	ld a,(0e361h)		;539b   ; los de 16 bytes de la fase (p23:6015 + fase)
	ld hl,06015h		;539e
	call suma_a_hl		;53a1   ; suma_a_hl: HL = HL + A
	ld a,c			;53a4
	cp (hl)			;53a5
	jr c,L_53CE		;53a6   ; de los primeros...
	sub (hl)			;53a8   ; ...o de los de 8 bytes, detras de ellos
	ld l,(hl)			;53a9
	ld h,000h		;53aa
	add hl,hl			;53ac
	call suma_a_hl		;53ad   ; suma_a_hl: HL = HL + A
	add hl,hl			;53b0
	add hl,hl			;53b1
	add hl,hl			;53b2
	add hl,de			;53b3
	ld de,0eba0h		;53b4   ; el bloque de 8 a 0xEBA0...
	ld bc,00008h		;53b7
	ldir		;53ba
	ld hl,0eba8h		;53bc   ; ...completado con 8 ceros
	ld de,0eba9h		;53bf
	ld bc,00007h		;53c2
	ld (hl),000h		;53c5
	ldir		;53c7
	ld de,0eba0h		;53c9
	jr L_53D7		;53cc
L_53CE:
	ld l,a			;53ce   ; de 16 bytes: bloque x 16
	ld h,000h		;53cf
	add hl,hl			;53d1
	add hl,hl			;53d2
	add hl,hl			;53d3
	add hl,hl			;53d4
	add hl,de			;53d5
	ex de,hl			;53d6
L_53D7:
	ld a,(0e363h)		;53d7   ; la columna de dentro del bloque (scroll & 3)
	and 003h		;53da
	call suma_a_de		;53dc   ; suma_a_de: DE = DE + A
	pop hl			;53df
	dec b			;53e0
	ld bc,00040h		;53e1   ; de 0x40 en 0x40: una fila del bufer
	jr z,L_53F4		;53e4   ; el ultimo bloque solo lleva dos filas
	ld a,(de)			;53e6   ; las cuatro filas del bloque, una de cada 4 bytes
	ld (hl),a			;53e7
	add hl,bc			;53e8
	inc de			;53e9
	inc de			;53ea
	inc de			;53eb
	inc de			;53ec
	ld a,(de)			;53ed
	ld (hl),a			;53ee
	add hl,bc			;53ef
	inc de			;53f0
	inc de			;53f1
	inc de			;53f2
	inc de			;53f3
L_53F4:
	ld a,(de)			;53f4
	ld (hl),a			;53f5
	add hl,bc			;53f6
	inc de			;53f7
	inc de			;53f8
	inc de			;53f9
	inc de			;53fa
	ld a,(de)			;53fb
	ld (hl),a			;53fc
	add hl,bc			;53fd
	pop bc			;53fe   ; el bloque siguiente
	dec b			;53ff
	jp nz,L_5379		;5400
	ret			;5403
L_5404:
	ld a,(0e363h)		;5404   ; una columna sin mapa: la de las estrellas de 0x5428 (scroll & 0x1F)
	and 01fh		;5407
	ld hl,05428h		;5409
	call suma_a_hl		;540c   ; suma_a_hl: HL = HL + A
	ld c,(hl)			;540f   ; cada cuantas filas sale una estrella
	ld a,c			;5410
	ex af,af'			;5411
	ld b,016h		;5412   ; 22 filas
	ld de,00040h		;5414
	ld hl,(0e429h)		;5417   ; lee la columna del bufer de 0xC400 que se pinta y el byte siguiente (16 bits)
L_541A:
	xor a			;541a   ; vacio...
	dec c			;541b
	jr nz,L_5423		;541c
	ex af,af'			;541e   ; ...o una estrella: el caracter 0x1E o el 0x1F
	and 001h		;541f
	add a,01eh		;5421
L_5423:
	ld (hl),a			;5423   ; al bufer
	add hl,de			;5424
	djnz L_541A		;5425
	ret			;5427

; ----------------------------------------------------------------------
; DATOS leido_5428: 32 bytes que lee p00:540F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:540F (32 bytes)
;   0x5428..0x5448  (32 bytes)
DATA_leido_5428:
	defb 002h,00fh,005h,013h,00ah,001h,00dh,006h,011h,008h,00bh,002h,010h,007h,00dh,005h	; 5428  ................
	defb 012h,00ch,002h,012h,009h,00eh,014h,011h,002h,005h,00dh,00ah,013h,006h,00fh,009h	; 5438  ................

; ======================================================================
; CODIGO 0x5448..0x5473  (43 bytes)
; ======================================================================


L_5448:
	ld a,(0e303h)		;5448   ; las estrellas parpadean: dos mascaras de 0x5473 segun la cuenta de cuadros
	and 006h		;544b
	ld hl,05473h		;544d
	ld e,a			;5450
	ld d,000h		;5451
	add hl,de			;5453
	ld c,(hl)			;5454
	inc hl			;5455
	ld b,(hl)			;5456
	ld hl,020f2h		;5457   ; el dibujo del caracter 0x1E
	call L_5461		;545a
	ld c,b			;545d
	ld hl,020fbh		;545e   ; y el del 0x1F
L_5461:
	ld a,(0e362h)		;5461   ; la mascara con 0xE362
	and c			;5464
	call 0004dh		;5465   ; BIOS WRTVRM - Writes data in VRAM | en los tres tercios
	ld de,00800h		;5468
	add hl,de			;546b
	call 0004dh		;546c   ; BIOS WRTVRM - Writes data in VRAM
	add hl,de			;546f
	jp 0004dh		;5470   ; BIOS WRTVRM - Writes data in VRAM

; ----------------------------------------------------------------------
; DATOS tabla_5473: tabla que se lee desde HL = 0x5473 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p00:544D (1 bytes)
;   0x5473..0x5474  (1 bytes)
DATA_tabla_5473:
	defb 0ffh	; 5473

; ----------------------------------------------------------------------
; DATOS leido_5474: 7 bytes que leen p00:5456, p00:5454 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:5456, p00:5454 (7 bytes)
;   0x5474..0x547b  (7 bytes)
DATA_leido_5474:
	defb 000h,0ffh,0ffh,000h,0ffh,0ffh,0ffh	; 5474

; ======================================================================
; CODIGO 0x547b..0x559b  (288 bytes)
; ======================================================================


L_547B:
	ld a,(0e440h)		;547b   ; las estrellas del bufer al empezar (salvo con 0xE440 = 7, 0x0E o 0x10)
	cp 007h		;547e
	ret z			;5480
	cp 00eh		;5481
	ret z			;5483
	cp 010h		;5484
	ret z			;5486
	ld ix,05428h		;5487   ; la tabla de estrellas de 0x5428 desde el scroll
	ld a,(0e363h)		;548b   ; lee la posicion del scroll (16 bits)
	sub 01fh		;548e
	and 01fh		;5490
	ld e,a			;5492
	ld d,000h		;5493
	add ix,de		;5495
	sub 020h		;5497
	neg		;5499
	ld c,a			;549b
	ld de,0c400h		;549c   ; el bufer de 0xC400
	ld b,020h		;549f   ; 32 columnas
L_54A1:
	push de			;54a1
	ld a,(ix+000h)		;54a2   ; la fila de la estrella en esta columna...
	ld l,a			;54a5
	dec l			;54a6
	ld h,000h		;54a7
	add hl,hl			;54a9   ; ...x 0x40
	add hl,hl			;54aa
	add hl,hl			;54ab
	add hl,hl			;54ac
	add hl,hl			;54ad
	add hl,hl			;54ae
	add hl,de			;54af
	and 001h		;54b0   ; el caracter 0x1E o 0x1F
	add a,01eh		;54b2
	ld (hl),a			;54b4   ; al bufer
	dec c			;54b5   ; al acabar la tabla, vuelve a empezar
	jr nz,L_54BC		;54b6
	ld ix,05428h		;54b8
L_54BC:
	pop de			;54bc
	inc de			;54bd
	inc ix		;54be
	djnz L_54A1		;54c0
	ret			;54c2
carga_fuente:		; carga la fuente en los tres tercios (bancos 20-22)
	call guarda_y_bancos_20_21_22		;54c3   ; guarda_y_bancos_20_21_22: guarda el reparto en la pila y pone los bancos 20-21-22 (y sus copias en 0xF0F1-3)
	call L_54CC		;54c6
	jp devuelve_reparto		;54c9   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_54CC:
	ld de,06020h		;54cc
	ld hl,02008h		;54cf
	ld bc,00050h		;54d2
	call copia_a_tres_tercios		;54d5   ; copia_a_tres_tercios: copia lo mismo a los tres tercios de la VRAM
	ld de,06070h		;54d8
	ld hl,02090h		;54db
	ld bc,000d0h		;54de
	call copia_a_tres_tercios		;54e1   ; copia_a_tres_tercios: copia lo mismo a los tres tercios de la VRAM
	ld de,06000h		;54e4
	ld hl,02058h		;54e7
	ld bc,00018h		;54ea
	call copia_a_tres_tercios		;54ed   ; copia_a_tres_tercios: copia lo mismo a los tres tercios de la VRAM
	ld de,06190h		;54f0
	ld hl,02088h		;54f3
	ld bc,00008h		;54f6
	call copia_a_tres_tercios		;54f9   ; copia_a_tres_tercios: copia lo mismo a los tres tercios de la VRAM
	ld de,06148h		;54fc
	ld hl,02070h		;54ff
	ld bc,00008h		;5502
	call copia_a_tres_tercios		;5505   ; copia_a_tres_tercios: copia lo mismo a los tres tercios de la VRAM
	ld de,06178h		;5508
	ld hl,02160h		;550b
	ld bc,00010h		;550e
	call copia_a_tres_tercios		;5511   ; copia_a_tres_tercios: copia lo mismo a los tres tercios de la VRAM
	ld a,0f0h		;5514
	ld hl,00008h		;5516
	ld bc,00168h		;5519
	jp llena_tres_tercios		;551c   ; llena_tres_tercios: llena lo mismo en los tres tercios de la VRAM
L_551F:
	call guarda_y_bancos_20_21_22		;551f   ; guarda_y_bancos_20_21_22: guarda el reparto en la pila y pone los bancos 20-21-22 (y sus copias en 0xF0F1-3)
	call L_5528		;5522
	jp devuelve_reparto		;5525   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_5528:
	ld hl,06020h		;5528   ; la fuente en el tercio de abajo (de p20, sin pasar por los tres tercios)
	ld de,03008h		;552b
	ld bc,00050h		;552e
	call 0005ch		;5531   ; BIOS LDIRVM - Block transfers to VRAM from memory
	ld hl,06070h		;5534
	ld de,03090h		;5537
	ld bc,000d0h		;553a
	call 0005ch		;553d   ; BIOS LDIRVM - Block transfers to VRAM from memory
	ld hl,06000h		;5540
	ld de,03058h		;5543
	ld bc,00018h		;5546
	call 0005ch		;5549   ; BIOS LDIRVM - Block transfers to VRAM from memory
	ld hl,06190h		;554c
	ld de,03088h		;554f
	ld bc,00008h		;5552
	call 0005ch		;5555   ; BIOS LDIRVM - Block transfers to VRAM from memory
	ld a,0f0h		;5558   ; y su color, 0xF0 (blanco sobre transparente)
	ld hl,01008h		;555a
	ld bc,00158h		;555d
	jp 00056h		;5560   ; BIOS FILVRM - Fills VRAM with value
L_5563:
	call bancos_20_21_22		;5563   ; los caracteres de 0x559B en 0x3200 (bancos 20-21-22)
	ld de,0559bh		;5566
	ld hl,03200h		;5569
	call L_557D		;556c
	ld a,0f0h		;556f   ; y su color
	ld hl,01200h		;5571
	ld bc,00068h		;5574
	call 00056h		;5577   ; BIOS FILVRM - Fills VRAM with value
	jp bancos_1_2_3		;557a   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_557D:
	push de			;557d   ; caracteres de 8 bytes de p20:6068 a la VRAM de HL, segun la lista de DE (0xFF acaba)
	call vram_para_escribir		;557e   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;5581
	pop hl			;5582
L_5583:
	ld a,(hl)			;5583   ; el numero (0xFF + 1 = 0: se acabo)
	inc hl			;5584
	inc a			;5585
	ret z			;5586
	add a,a			;5587   ; x 8...
	add a,a			;5588
	add a,a			;5589
	ld de,06068h		;558a   ; ...en la tabla de 0x6068
	call suma_a_de		;558d   ; suma_a_de: DE = DE + A
	ld b,008h		;5590   ; 8 bytes al VDP
L_5592:
	ld a,(de)			;5592
	inc de			;5593
	out (c),a		;5594
	djnz L_5592		;5596
	jp L_5583		;5598

; ----------------------------------------------------------------------
; DATOS resto_559B: lo apuntan con el banco puesto p00:5566 (0x559B); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p00:5566 (14 bytes)
;   0x559b..0x55a9  (14 bytes)
DATA_resto_559B:
	defb 012h,000h,015h,004h,002h,00eh,00ch,00fh,00bh,013h,005h,008h,003h,0ffh	; 559b  ..............

; ======================================================================
; CODIGO 0x55a9..0x55c9  (32 bytes)
; ======================================================================


rle_a_ram_con_destino:		; descomprime a la RAM el RLE de HL, con su destino delante
	ld e,(hl)			;55a9
	inc hl			;55aa
	ld d,(hl)			;55ab
	inc hl			;55ac
rle_a_ram:		; descomprime a la RAM de DE el RLE de HL
	ld a,(hl)			;55ad
	and a			;55ae
	ret z			;55af
	inc hl			;55b0
	ld b,a			;55b1
	and 07fh		;55b2
	cp b			;55b4
	jr z,L_55C1		;55b5
	and a			;55b7
	jr z,rle_a_ram_con_destino		;55b8
	ld c,a			;55ba
	ld b,000h		;55bb
	ldir		;55bd
	jr rle_a_ram		;55bf
L_55C1:
	ld a,(hl)			;55c1
	inc hl			;55c2
L_55C3:
	ld (de),a			;55c3
	inc de			;55c4
	djnz L_55C3		;55c5
	jr rle_a_ram		;55c7

; ----------------------------------------------------------------------
; DATOS sin identificar  0x55c9..0x55cd  (4 bytes)
rle2_con_destino:		; descomprime a la RAM el segundo formato de HL, con su destino delante
	defb 05eh,023h,056h,023h	; 55c9

; ======================================================================
; CODIGO 0x55cd..0x5656  (137 bytes)
; ======================================================================


rle2_a_ram:		; descomprime a la RAM de DE el segundo formato de HL
	ld a,(hl)			;55cd
	and a			;55ce
	ret z			;55cf
	inc hl			;55d0
	ld b,a			;55d1
	res 7,b		;55d2
	res 6,b		;55d4
	and 0c0h		;55d6
	jr z,L_55E9		;55d8
	cp 040h		;55da
	jr z,L_55F1		;55dc
	cp 080h		;55de
	jr z,L_55FA		;55e0
	ld c,b			;55e2
	ld b,000h		;55e3
	ldir		;55e5
	jr rle2_a_ram		;55e7
L_55E9:
	ld a,(hl)			;55e9
	inc hl			;55ea
L_55EB:
	ld (de),a			;55eb
	inc de			;55ec
	djnz L_55EB		;55ed
	jr rle2_a_ram		;55ef
L_55F1:
	ld a,(hl)			;55f1
	inc hl			;55f2
L_55F3:
	ld (de),a			;55f3
	inc a			;55f4
	inc de			;55f5
	djnz L_55F3		;55f6
	jr rle2_a_ram		;55f8
L_55FA:
	ld a,(hl)			;55fa
	inc hl			;55fb
L_55FC:
	ld (de),a			;55fc
	dec a			;55fd
	inc de			;55fe
	djnz L_55FC		;55ff
	jr rle2_a_ram		;5601
L_5603:
	ld a,(0e37dh)		;5603   ; la fase siguiente: si 0xE37D no es 0, la de A
	or a			;5606
	ret nz			;5607
	ld a,(0e361h)		;5608   ; la de 0xE361 + 1...
	inc a			;560b
	cp 00ch		;560c   ; ...y despues de la 11, la 1
	ret c			;560e
	ld a,001h		;560f
	ret			;5611
L_5612:
	ld hl,0e366h		;5612   ; la fase acabada: 0xE366 cuenta las vueltas (sin pasar de 0xFF)
	inc (hl)			;5615
	jr nz,L_5619		;5616
	dec (hl)			;5618
L_5619:
	ld de,00080h		;5619   ; 0x80 a la dificultad (p00:5692)
	call L_5692		;561c
	call L_5603		;561f   ; la fase siguiente
	ld (0e361h),a		;5622   ; guarda la fase (1 a 11)
	xor a			;5625   ; 0xE37D = 0
	ld (0e37dh),a		;5626
	call sonido_01		;5629   ; p00:57EA
	xor a			;562c   ; 0xE365 y 0xE442 a 0
	ld (0e365h),a		;562d   ; guarda el paso del final de la fase
	ld (0e442h),a		;5630   ; guarda 1 al vencer al jefe
	jp L_5BA5		;5633
L_5636:
	ld a,(0002bh)		;5636   ; el juego de caracteres de la BIOS (0x002B & 0x0F: 0 = japones)
	and 00fh		;5639
	ret			;563b
L_563C:
	ld b,008h		;563c   ; HL = H x E (multiplica)
	ld l,000h		;563e
	ld d,l			;5640
L_5641:
	add hl,hl			;5641
	jr nc,L_5645		;5642
	add hl,de			;5644
L_5645:
	djnz L_5641		;5645
	ret			;5647
L_5648:
	ld hl,0ef00h		;5648   ; los atributos de sprite de la RAM (0xEF00, 0x80 bytes) a 0xE0: fuera de la pantalla
	ld de,0ef01h		;564b
	ld bc,0007fh		;564e
	ld (hl),0e0h		;5651
	ldir		;5653
	ret			;5655

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5656..0x565a  (4 bytes)
DATA_5656:
	defb 0edh,05fh,018h,003h	; 5656

; ======================================================================
; CODIGO 0x565a..0x568f  (53 bytes)
; ======================================================================


L_565A:
	ld a,(0e303h)		;565a   ; mezcla el azar de 0xE406 con la cuenta de cuadros x 3
	ld b,a			;565d
	add a,a			;565e
	add a,b			;565f
	ld b,a			;5660
	ld a,(0e406h)		;5661   ; lee el azar
	add a,b			;5664
	ld (0e406h),a		;5665   ; guarda el azar
	ret			;5668
L_5669:
	ld hl,0c400h		;5669   ; el bufer de 0xC400 a cero (0x580 bytes)
	ld de,0c401h		;566c
	ld bc,0057fh		;566f
	ld (hl),000h		;5672
	ldir		;5674
	ret			;5676
L_5677:
	ld hl,03ac0h		;5677   ; guarda en 0xE7A0 las dos filas del marcador (0x3AC0)
	ld de,0e7a0h		;567a
	ld bc,00040h		;567d
	jp 00059h		;5680   ; BIOS LDIRMV - Block transfers to memory from VRAM
L_5683:
	ld hl,0e7a0h		;5683   ; y las devuelve
	ld de,03ac0h		;5686
	ld bc,00040h		;5689
	jp 0005ch		;568c   ; BIOS LDIRVM - Block transfers to VRAM from memory

; ----------------------------------------------------------------------
; DATOS sin identificar  0x568f..0x5692  (3 bytes)
DATA_568F:
	defb 011h,000h,001h	; 568f

; ======================================================================
; CODIGO 0x5692..0x5794  (258 bytes)
; ======================================================================


L_5692:
	ld a,(0e39dh)		;5692   ; la dificultad (0xE388) sube DE, segun 0xE39D: igual, el doble o la mitad
	or a			;5695
	jr z,L_56A4		;5696
	dec a			;5698   ; 0xE39D = 1: el doble
	jr z,L_56A1		;5699
	srl d		;569b   ; 2 o mas: la mitad
	rr e		;569d
	jr L_56A4		;569f
L_56A1:
	ex de,hl			;56a1
	add hl,hl			;56a2
	ex de,hl			;56a3
L_56A4:
	ld hl,(0e388h)		;56a4   ; la suma
	add hl,de			;56a7
	ld a,(0e39dh)		;56a8   ; con tope 0x0F00 (o 0x0C00 con 0xE39D >= 2)
	cp 002h		;56ab
	ld c,00fh		;56ad
	jr c,L_56B3		;56af
	ld c,00ch		;56b1
L_56B3:
	ld a,h			;56b3
	cp c			;56b4
	jr c,L_56B8		;56b5
	ld h,c			;56b7
L_56B8:
	ld (0e388h),hl		;56b8   ; guarda la dificultad (16 bits, tope 0x0F00)
	ret			;56bb
L_56BC:
	ld a,(0e440h)		;56bc   ; la paleta que cambia de la fase (solo sin jefe, 0xE440 = 0)
	or a			;56bf
	ret nz			;56c0
	call bancos_16_17_18		;56c1   ; bancos_16_17_18: pone los bancos 16-17-18 (y sus copias en 0xF0F1-3)
	ld a,(0e361h)		;56c4   ; cuantas paletas tiene la fase (p16:6D5C + fase)
	ld hl,06d5ch		;56c7
	call suma_a_hl		;56ca   ; suma_a_hl: HL = HL + A
	ld a,(hl)			;56cd
	or a			;56ce
	jr z,L_56FE		;56cf   ; ninguna: fuera
	ld b,a			;56d1
	ld a,(0e303h)		;56d2   ; una cada 4 cuadros
	and 003h		;56d5
	jr nz,L_56FE		;56d7
	ld hl,0e39fh		;56d9   ; la siguiente (0xE39F), y vuelta a la primera
	inc (hl)			;56dc
	ld a,(hl)			;56dd
	cp b			;56de
	jr c,L_56E3		;56df
	xor a			;56e1
	ld (hl),a			;56e2
L_56E3:
	ld b,a			;56e3
	ld a,(0e361h)		;56e4   ; la tabla de la fase (p16:6CDA + 2 x fase)
	ld hl,06cdah		;56e7
	add a,a			;56ea
	call suma_a_hl		;56eb   ; suma_a_hl: HL = HL + A
	ld e,(hl)			;56ee
	inc hl			;56ef
	ld d,(hl)			;56f0
	ex de,hl			;56f1
	ld a,b			;56f2   ; la paleta numero 0xE39F
	add a,a			;56f3
	call suma_a_hl		;56f4   ; suma_a_hl: HL = HL + A
	ld e,(hl)			;56f7
	inc hl			;56f8
	ld d,(hl)			;56f9
	ex de,hl			;56fa
	call L_4B94		;56fb   ; al VDP (solo en MSX2)
L_56FE:
	jp bancos_1_2_3		;56fe   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_5701:
	ld a,(0e440h)		;5701   ; la paleta del jefe (p16:69CC + 2 x 0xE440)
	ld hl,069cch		;5704
	jr L_570C		;5707
L_5709:
	ld hl,06b74h		;5709   ; la paleta de p16:6B74 + 2 x A
L_570C:
	call guarda_y_bancos_16_17_18		;570c   ; con 16-17-18
	call lee_palabra		;570f   ; lee_palabra: HL = la palabra A de la tabla HL
	call L_4B94		;5712
	jp devuelve_reparto		;5715   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_5718:
	call guarda_y_bancos_16_17_18		;5718   ; la paleta de p16:67AE
	ld hl,067aeh		;571b
	call L_4B94		;571e
	jp devuelve_reparto		;5721   ; devuelve_reparto: saca de la pila el ultimo reparto y lo vuelve a poner
L_5724:
	ld hl,00000h		;5724   ; la cuenta de 0xE333 a cero
	ld (0e333h),hl		;5727   ; guarda una cuenta de cuadros (16 bits)
	ret			;572a
L_572B:
	ld hl,(0e333h)		;572b   ; la cuenta de 0xE333 contra DE
	rst 20h			;572e
	ret			;572f
L_5730:
	ld hl,00000h		;5730   ; la cuenta de 0xE339 a cero
	ld (0e339h),hl		;5733   ; guarda otra cuenta de cuadros (16 bits)
	ret			;5736
L_5737:
	ld hl,(0e339h)		;5737   ; la cuenta de 0xE339 contra DE
	rst 20h			;573a
	ret			;573b
L_573C:
	ld a,(0e600h)		;573c   ; lee el estado de la nave (1 normal, 2 y 3 con escudo, 0xFF estalla)
	and a			;573f
	ret m			;5740
	ld a,(0e445h)		;5741   ; lee el jefe vencido (1, o 2 en la fase 4)
	and a			;5744
	ret nz			;5745
	ld a,(0e44fh)		;5746
	or a			;5749
	ret nz			;574a
	ld a,(0e60dh)		;574b
	or a			;574e
	ret nz			;574f
	ld hl,0e402h		;5750   ; apunta a un temporizador
	ld a,(hl)			;5753
	and a			;5754
	jr z,L_5759		;5755
	dec (hl)			;5757
	ret			;5758
L_5759:
	ld a,(0e361h)		;5759   ; lee la fase (1 a 11)
	cp 004h		;575c
	ret z			;575e
	ld hl,05792h		;575f
	call lee_palabra		;5762   ; lee_palabra: HL = la palabra A de la tabla HL
	ld c,l			;5765
	ld b,h			;5766
	ld hl,(0e363h)		;5767   ; lee la posicion del scroll (16 bits)
L_576A:
	ld a,(bc)			;576a
	ex af,af'			;576b
	inc bc			;576c
	ld a,(bc)			;576d
	ld e,a			;576e
	inc bc			;576f
	ld a,(bc)			;5770
	ld d,a			;5771
	rst 20h			;5772
	jr z,L_578B		;5773
	jr c,L_577A		;5775
	inc bc			;5777
	jr L_576A		;5778
L_577A:
	ex af,af'			;577a
	ld hl,0e1c0h		;577b
	cp (hl)			;577e
	ret z			;577f
	push af			;5780
	call orden_sonido_83		;5781   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call sonido_02		;5784   ; sonido_02: pide el sonido 0x02
	pop af			;5787
	jp pide_sonido		;5788   ; pide_sonido: pide al motor (p10:6003) el sonido A
L_578B:
	call orden_sonido_84		;578b   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	ld a,03ch		;578e
	ld (0e402h),a		;5790   ; guarda un temporizador
	ret			;5793

; ----------------------------------------------------------------------
; DATOS leido_5794: 22 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 2 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p00:4A60, p00:4A62 (22 bytes)
;   0x5794..0x57aa  (22 bytes)
DATA_leido_5794:
	defb 0aah,057h,0aeh,057h,0b2h,057h,0bch,057h,0bch,057h,0c3h,057h,0cah,057h,0d1h,057h	; 5794  .W.W.W.W.W.W.W.W
	defb 0d8h,057h,0e2h,057h,0e6h,057h	; 57a4

; ----------------------------------------------------------------------
; DATOS leido_57AA: 63 bytes que leen p00:576A, p00:576D, p00:5770 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido, con 5 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p00:576A, p00:576D, p00:5770 (63 bytes)
;   0x57aa..0x57e9  (63 bytes)
DATA_leido_57AA:
	defb 006h,068h,001h,005h,007h,088h,001h,005h,004h,080h,000h,008h,088h,001h,005h,0d8h	; 57aa  .h..............
	defb 001h,001h,004h,080h,000h,00ch,0e8h,001h,005h,004h,060h,000h,044h,088h,001h,005h	; 57ba  ..........`.D...
	defb 004h,060h,000h,045h,088h,001h,005h,004h,060h,000h,046h,0f8h,001h,005h,004h,040h	; 57ca  .`.E....`.F....@
	defb 000h,00dh,0b0h,001h,005h,03ch,002h,001h,047h,040h,002h,005h,00eh,09dh,000h	; 57da  .....<..G@.....

; ----------------------------------------------------------------------
; DATOS sin identificar  0x57e9..0x57ea  (1 bytes)
DATA_57E9:
	defb 001h	; 57e9

; ======================================================================
; CODIGO 0x57ea..0x57f2  (8 bytes)
; ======================================================================


sonido_01:		; pide el sonido 0x01
	ld a,001h		;57ea   ; el sonido 0x01
	jr $+57		;57ec
sonido_02:		; pide el sonido 0x02
	ld a,002h		;57ee   ; el sonido 0x02
	jr $+53		;57f0

; ----------------------------------------------------------------------
; DATOS sin identificar  0x57f2..0x57f6  (4 bytes)
DATA_57F2:
	defb 03eh,003h,018h,02fh	; 57f2	el sonido 0x03

; ======================================================================
; CODIGO 0x57f6..0x5898  (162 bytes)
; ======================================================================


sonido_09:		; pide el sonido 0x09
	ld a,009h		;57f6   ; el sonido 0x09
	jr L_5825		;57f8
sonido_0A:		; pide el sonido 0x0A
	ld a,00ah		;57fa   ; el sonido 0x0A
	jr L_5825		;57fc
sonido_0B:		; pide el sonido 0x0B
	ld a,00bh		;57fe   ; el sonido 0x0B
	jr L_5825		;5800
sonido_3E:		; pide el sonido 0x3E
	ld a,03eh		;5802   ; el sonido 0x3E
	jr L_5825		;5804
sonido_4A:		; pide el sonido 0x4A
	ld a,04ah		;5806   ; el sonido 0x4A
	jr L_5825		;5808
sonido_48:		; pide el sonido 0x48
	ld a,048h		;580a   ; el sonido 0x48
	jr L_5825		;580c
sonido_3F:		; pide el sonido 0x3F
	ld a,03fh		;580e   ; el sonido 0x3F
	jr L_5825		;5810
sonido_40:		; pide el sonido 0x40
	ld a,040h		;5812   ; el sonido 0x40
	jr L_5825		;5814
sonido_41:		; pide el sonido 0x41
	ld a,041h		;5816   ; el sonido 0x41
	jr L_5825		;5818
sonido_49:		; pide el sonido 0x49
	ld a,049h		;581a   ; el sonido 0x49
	jr L_5825		;581c
orden_83_y_sonido_3D:		; manda la orden 0x83 al motor y pide el sonido 0x3D
	ld a,083h		;581e   ; la orden 0x83 al motor de sonido
	call pide_sonido		;5820   ; pide_sonido: pide al motor (p10:6003) el sonido A
	ld a,03dh		;5823   ; el sonido 0x3D
L_5825:
	jr $+117		;5825
sonido_42:		; pide el sonido 0x42
	ld a,042h		;5827   ; el sonido 0x42
	jr $+113		;5829
sonido_0F:		; pide el sonido 0x0F
	ld a,00fh		;582b   ; el sonido 0x0F
	jr $+109		;582d
sonido_10:		; pide el sonido 0x10
	ld a,010h		;582f   ; el sonido 0x10
	jr $+105		;5831
sonido_11:		; pide el sonido 0x11
	ld a,011h		;5833   ; el sonido 0x11
	jr $+101		;5835
sonido_12:		; pide el sonido 0x12
	ld a,012h		;5837   ; el sonido 0x12
	jr $+97		;5839
sonido_13:		; pide el sonido 0x13
	ld a,013h		;583b   ; el sonido 0x13
	jr $+93		;583d
sonido_14:		; pide el sonido 0x14
	ld a,014h		;583f   ; el sonido 0x14
	jr $+89		;5841
sonido_15:		; pide el sonido 0x15
	ld a,015h		;5843   ; el sonido 0x15
	jr $+85		;5845
sonido_16:		; pide el sonido 0x16
	ld a,016h		;5847   ; el sonido 0x16
	jr $+81		;5849
sonido_17:		; pide el sonido 0x17
	ld a,017h		;584b   ; el sonido 0x17
	jr $+77		;584d
sonido_18:		; pide el sonido 0x18
	ld a,018h		;584f   ; el sonido 0x18
	jr $+73		;5851
sonido_19:		; pide el sonido 0x19
	ld a,019h		;5853   ; el sonido 0x19
	jr $+69		;5855
sonido_1A:		; pide el sonido 0x1A
	ld a,01ah		;5857   ; el sonido 0x1A
	jr $+65		;5859
sonido_1B:		; pide el sonido 0x1B
	ld a,01bh		;585b   ; el sonido 0x1B
	jr $+61		;585d
sonido_1C:		; pide el sonido 0x1C
	ld a,01ch		;585f   ; el sonido 0x1C
	jr $+57		;5861
orden_83_y_sonido_4B:		; manda la orden 0x83 al motor y pide el sonido 0x4B
	ld a,083h		;5863   ; la orden 0x83 al motor de sonido
	call pide_sonido		;5865   ; pide_sonido: pide al motor (p10:6003) el sonido A
	ld a,04bh		;5868   ; el sonido 0x4B
	jr $+48		;586a
sonido_1D:		; pide el sonido 0x1D
	ld a,01dh		;586c   ; el sonido 0x1D
	jr $+44		;586e
sonido_1E:		; pide el sonido 0x1E
	ld a,01eh		;5870   ; el sonido 0x1E
	jr $+40		;5872
sonido_1F:		; pide el sonido 0x1F
	ld a,01fh		;5874   ; el sonido 0x1F
	jr $+36		;5876
sonido_20:		; pide el sonido 0x20
	ld a,020h		;5878   ; el sonido 0x20
	jr $+32		;587a
sonido_21:		; pide el sonido 0x21
	ld a,021h		;587c   ; el sonido 0x21
	jr $+28		;587e
sonido_22:		; pide el sonido 0x22
	ld a,022h		;5880   ; el sonido 0x22
	jr $+24		;5882
sonido_26:		; pide el sonido 0x26
	ld a,026h		;5884   ; el sonido 0x26
	jr $+20		;5886
sonido_4C:		; pide el sonido 0x4C
	ld a,04ch		;5888   ; el sonido 0x4C
	jr $+16		;588a
sonido_27:		; pide el sonido 0x27
	ld a,027h		;588c   ; el sonido 0x27
	jr $+12		;588e
sonido_28:		; pide el sonido 0x28
	ld a,028h		;5890   ; el sonido 0x28
	jr $+8		;5892
sonido_29:		; pide el sonido 0x29
	ld a,029h		;5894   ; el sonido 0x29
	jr $+4		;5896

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5898..0x589a  (2 bytes)
DATA_5898:
	defb 03eh,02ah	; 5898	el sonido 0x2A

; ======================================================================
; CODIGO 0x589a..0x5916  (124 bytes)
; ======================================================================


pide_sonido:		; pide al motor (p10:6003) el sonido A
	di			;589a   ; pide el sonido A al motor (p10:6003), con los bancos 10-11-12 y todo guardado
	push hl			;589b
	push de			;589c
	push bc			;589d
	push ix		;589e
	push af			;58a0
	ld a,00ah		;58a1   ; los bancos 10-11-12: el motor de sonido
	ld (07000h),a		;58a3   ; el mapper: pone en 0x6000 el banco de A
	inc a			;58a6
	ld (09000h),a		;58a7   ; el mapper: pone en 0x8000 el banco de A
	inc a			;58aa
	ld (0b000h),a		;58ab   ; el mapper: pone en 0xA000 el banco de A
	pop af			;58ae
	push af			;58af
	call 06003h		;58b0   ; p10:6003
	ld a,(0f0f1h)		;58b3   ; devuelve los bancos de las copias
	ld (07000h),a		;58b6   ; el mapper: pone en 0x6000 el banco de A
	ld a,(0f0f2h)		;58b9   ; lee la copia del banco de 0x8000
	ld (09000h),a		;58bc   ; el mapper: pone en 0x8000 el banco de A
	ld a,(0f0f3h)		;58bf   ; lee la copia del banco de 0xA000
	ld (0b000h),a		;58c2   ; el mapper: pone en 0xA000 el banco de A
	pop af			;58c5
	pop ix		;58c6
	pop bc			;58c8
	pop de			;58c9
	pop hl			;58ca
	ei			;58cb
	ret			;58cc
sonido_2B:		; pide el sonido 0x2B
	ld a,02bh		;58cd   ; el sonido 0x2B
	jr pide_sonido		;58cf
sonido_2C:		; pide el sonido 0x2C
	ld a,02ch		;58d1   ; el sonido 0x2C
	jr pide_sonido		;58d3
sonido_2D:		; pide el sonido 0x2D
	ld a,02dh		;58d5   ; el sonido 0x2D
	jr pide_sonido		;58d7
sonido_2E:		; pide el sonido 0x2E
	ld a,02eh		;58d9   ; el sonido 0x2E
	jr pide_sonido		;58db
sonido_2F:		; pide el sonido 0x2F
	ld a,02fh		;58dd   ; el sonido 0x2F
	jr pide_sonido		;58df
sonido_30:		; pide el sonido 0x30
	ld a,030h		;58e1   ; el sonido 0x30
	jr pide_sonido		;58e3
sonido_31:		; pide el sonido 0x31
	ld a,031h		;58e5   ; el sonido 0x31
	jr pide_sonido		;58e7
sonido_32:		; pide el sonido 0x32
	ld a,032h		;58e9   ; el sonido 0x32
	jr pide_sonido		;58eb
sonido_33:		; pide el sonido 0x33
	ld a,033h		;58ed   ; el sonido 0x33
	jr pide_sonido		;58ef
sonido_34:		; pide el sonido 0x34
	ld a,034h		;58f1   ; el sonido 0x34
	jr pide_sonido		;58f3
sonido_35:		; pide el sonido 0x35
	ld a,035h		;58f5   ; el sonido 0x35
	jr pide_sonido		;58f7
sonido_36:		; pide el sonido 0x36
	ld a,036h		;58f9   ; el sonido 0x36
	jr pide_sonido		;58fb
sonido_4D:		; pide el sonido 0x4D
	ld a,04dh		;58fd   ; el sonido 0x4D
	jr pide_sonido		;58ff
sonido_4E:		; pide el sonido 0x4E
	ld a,04eh		;5901   ; el sonido 0x4E
	jr pide_sonido		;5903
sonido_37:		; pide el sonido 0x37
	ld a,037h		;5905   ; el sonido 0x37
	jr pide_sonido		;5907
sonido_38:		; pide el sonido 0x38
	ld a,038h		;5909   ; el sonido 0x38
L_590B:
	jp pide_sonido		;590b   ; pide_sonido: pide al motor (p10:6003) el sonido A
sonido_39:		; pide el sonido 0x39
	ld a,039h		;590e   ; el sonido 0x39
	jr L_590B		;5910
sonido_3A:		; pide el sonido 0x3A
	ld a,03ah		;5912   ; el sonido 0x3A
	jr L_590B		;5914

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5916..0x591a  (4 bytes)
DATA_5916:
	defb 03eh,03bh,018h,0f1h	; 5916	el sonido 0x3B

; ======================================================================
; CODIGO 0x591a..0x5955  (59 bytes)
; ======================================================================


sonido_52:		; pide el sonido 0x52
	ld a,052h		;591a   ; el sonido 0x52
	jr $-17		;591c
orden_83_y_sonido_51:		; manda la orden 0x83 al motor y pide el sonido 0x51
	ld a,083h		;591e   ; la orden 0x83 al motor de sonido
	call L_590B		;5920
	ld a,051h		;5923   ; el sonido 0x51
	jr $-26		;5925
sonido_3C:		; pide el sonido 0x3C
	ld a,03ch		;5927   ; el sonido 0x3C
	jr $-30		;5929
orden_83_y_sonido_43:		; manda la orden 0x83 al motor y pide el sonido 0x43
	ld a,083h		;592b   ; la orden 0x83 al motor de sonido
	call L_590B		;592d
	ld a,043h		;5930   ; el sonido 0x43
	jr $-39		;5932
sonido_4F:		; pide el sonido 0x4F
	ld a,04fh		;5934   ; el sonido 0x4F
	jr $-43		;5936
orden_83_y_sonido_50:		; manda la orden 0x83 al motor y pide el sonido 0x50
	ld a,083h		;5938   ; la orden 0x83 al motor de sonido
	call L_590B		;593a
	ld a,050h		;593d   ; el sonido 0x50
	jr $-52		;593f
sonido_53:		; pide el sonido 0x53
	ld a,053h		;5941   ; el sonido 0x53
	jr $-56		;5943
orden_sonido_81:		; manda la orden 0x81 al motor de sonido
	ld a,081h		;5945   ; la orden 0x81 al motor de sonido
	jr $-60		;5947
orden_sonido_82:		; manda la orden 0x82 al motor de sonido
	ld a,082h		;5949   ; la orden 0x82 al motor de sonido
	jr $-64		;594b
orden_sonido_83:		; manda la orden 0x83 al motor de sonido
	ld a,083h		;594d   ; la orden 0x83 al motor de sonido
	jr $-68		;594f
orden_sonido_84:		; manda la orden 0x84 al motor de sonido
	ld a,084h		;5951   ; la orden 0x84 al motor de sonido
	jr $-72		;5953

; ----------------------------------------------------------------------
; DATOS sin identificar  0x5955..0x5959  (4 bytes)
DATA_5955:
	defb 03eh,085h,018h,0b2h	; 5955

; ======================================================================
; CODIGO 0x5959..0x5ca5  (844 bytes)
; ======================================================================


L_5959:
	ld hl,0ca00h		;5959   ; el bufer de 0xCA00 a cero (0x300 bytes: una pantalla de nombres)
	ld de,0ca01h		;595c
	ld bc,002ffh		;595f
	ld (hl),000h		;5962
	ldir		;5964
	ret			;5966
L_5967:
	ld hl,03800h		;5967   ; el bufer de 0xCA00 a la tabla de nombres (0x3800): 0x2C0 bytes, sin las dos filas del marcador
	call vram_para_escribir		;596a   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;596d
	ld hl,0ca00h		;596e   ; apunta a un bufer de trabajo
	ld b,000h		;5971   ; 256...
L_5973:
	outi		;5973
	jp nz,L_5973		;5975
L_5978:
	outi		;5978   ; ...256...
	jp nz,L_5978		;597a
	ld b,0c0h		;597d   ; ...y 0xC0
L_597F:
	outi		;597f
	jp nz,L_597F		;5981
	ret			;5984
L_5985:
	ld hl,03800h		;5985   ; lo mismo, la pantalla entera (0x300 bytes)
	call vram_para_escribir		;5988   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;598b
	ld hl,0ca00h		;598c   ; apunta a un bufer de trabajo
	ld b,000h		;598f
L_5991:
	outi		;5991
	jp nz,L_5991		;5993
L_5996:
	outi		;5996
	jp nz,L_5996		;5998
L_599B:
	outi		;599b
	jp nz,L_599B		;599d
	ret			;59a0
L_59A1:
	ld a,b			;59a1   ; copia un rectangulo de HL a DE: B filas de C bytes, con filas de 0x20
	exx			;59a2
	ld b,a			;59a3
	exx			;59a4
	ld b,000h		;59a5
	ld (0ef80h),bc		;59a7   ; C y la fila de destino, guardadas
	ld (0ef82h),de		;59ab
L_59AF:
	ld bc,(0ef80h)		;59af
	ldir		;59b3   ; una fila
	ex de,hl			;59b5
	ld hl,(0ef82h)		;59b6   ; la fila siguiente del destino (+0x20)
	ld bc,00020h		;59b9
	add hl,bc			;59bc
	ld (0ef82h),hl		;59bd
	ex de,hl			;59c0
	exx			;59c1
	dec b			;59c2   ; hasta B filas
	exx			;59c3
	jr nz,L_59AF		;59c4
	ret			;59c6
L_59C7:
	ld a,b			;59c7   ; borra un rectangulo de DE: B filas de C bytes, con filas de 0x20
	exx			;59c8
	ld b,a			;59c9
	exx			;59ca
	ld (0ef80h),bc		;59cb
	ex de,hl			;59cf
	ld (0ef82h),hl		;59d0
	ld de,00020h		;59d3
L_59D6:
	ld a,(0ef80h)		;59d6
	ld b,a			;59d9
	xor a			;59da   ; a cero
L_59DB:
	ld (hl),a			;59db
	inc hl			;59dc
	djnz L_59DB		;59dd
	ld hl,(0ef82h)		;59df   ; la fila siguiente (+0x20)
	add hl,de			;59e2
	ld (0ef82h),hl		;59e3
	exx			;59e6
	dec b			;59e7
	exx			;59e8
	jr nz,L_59D6		;59e9
	ret			;59eb
L_59EC:
	ld a,(0e31fh)		;59ec   ; el cuadro de la fase: con 0xE31F...
	or a			;59ef
	jp nz,06274h		;59f0   ; ...p01:6274
	ld a,(0e413h)		;59f3   ; con 0xE413, p00:5B8F
	or a			;59f6
	jp nz,L_5B8F		;59f7
	xor a			;59fa   ; 0xE407, 0xE408, 0xE409 y 0xE411 a cero
	ld (0e407h),a		;59fb
	ld (0e408h),a		;59fe
	ld (0e409h),a		;5a01
	ld (0e411h),a		;5a04
	call L_5DB8		;5a07   ; p00:5DB8
	ld a,(0e600h)		;5a0a   ; la nave estallando (0xFF)...
	inc a			;5a0d
	jr z,L_5A1C		;5a0e
	ld a,(0e44fh)		;5a10   ; ...o 0xE44F: se salta p00:5B38
	or a			;5a13
	jr nz,L_5A1C		;5a14
	call L_5B38		;5a16   ; p00:5B38: si da NZ, p01:6C1E
	jp nz,06c1eh		;5a19
L_5A1C:
	call 060f2h		;5a1c   ; p01:60F2
	ld a,(0e30dh)		;5a1f   ; con 0xE30D, nada mas
	and a			;5a22
	ret nz			;5a23
	call L_573C		;5a24   ; p00:573C
	call bancos_4_5		;5a27   ; lo del banco 4: p04:8000
	call 08000h		;5a2a
	call bancos_1_2_3		;5a2d   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_529F		;5a30   ; el scroll (p00:529F)
	call L_51AE		;5a33   ; los cambios de graficos a mitad de la fase (p00:51AE)
	call bancos_4_5		;5a36   ; lo del banco 4: p04:8036, 92D8, 8516, 86B9 y 8781
	call 08036h		;5a39
	call 092d8h		;5a3c
	call 08516h		;5a3f
	call 086b9h		;5a42
	call 08781h		;5a45
	call bancos_1_2_3		;5a48   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 0744ah		;5a4b   ; y lo de p01 y p02 con 1-2-3
	call 0850eh		;5a4e
	call 06f3eh		;5a51
	call 07a4dh		;5a54
	call 07a63h		;5a57
	call 07baah		;5a5a
	call 07fc5h		;5a5d
	call 08110h		;5a60
	call 0809bh		;5a63
	call 0812dh		;5a66
	call 07d40h		;5a69
	call 06b1ch		;5a6c
	call 064b9h		;5a6f
	call 07a4dh		;5a72
	call 065f4h		;5a75
	call 06878h		;5a78
	call 06817h		;5a7b
	call 06901h		;5a7e
	call 067c5h		;5a81
	call 06a86h		;5a84
	call 085bbh		;5a87
	call 07a4dh		;5a8a
	call L_5B20		;5a8d
	call L_5ADE		;5a90
	call L_5AE7		;5a93
	call bancos_4_5		;5a96   ; otra vez el banco 4: p04:990B, 9686, 86B3 y 9AB4
	call 0990bh		;5a99
	call 09686h		;5a9c
	call 086b3h		;5a9f
	call 09ab4h		;5aa2
	call bancos_1_2_3		;5aa5   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 08532h		;5aa8
	call L_5AED		;5aab
	call bancos_4_5		;5aae   ; p04:98B2
	call 098b2h		;5ab1
	call bancos_1_2_3		;5ab4   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 08325h		;5ab7
	call L_5448		;5aba   ; las estrellas parpadean
	call L_5DFB		;5abd
	call L_5B08		;5ac0
	jp L_49CD		;5ac3   ; y los puntos en el marcador (p00:49CD)
L_5AC6:
	call L_5ADE		;5ac6
	call L_5AE7		;5ac9
	call bancos_4_5		;5acc   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 09ab4h		;5acf
	call bancos_1_2_3		;5ad2   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_5AED		;5ad5
	call L_5DFB		;5ad8
	jp L_5B08		;5adb
L_5ADE:
	call 08005h		;5ade
	call 082e1h		;5ae1
	jp 08169h		;5ae4
L_5AE7:
	call 081fch		;5ae7
	jp 07d4eh		;5aea
L_5AED:
	call 0818ch		;5aed
	call 06efah		;5af0
	call 07935h		;5af3
	call 078fdh		;5af6
	call bancos_4_5		;5af9   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 099b5h		;5afc
	call 09a22h		;5aff
	call 09c1ah		;5b02
	jp bancos_1_2_3		;5b05   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_5B08:
	call bancos_4_5		;5b08   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 09b55h		;5b0b
	call bancos_1_2_3		;5b0e   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call 0817ah		;5b11
	call 08493h		;5b14
	call 0804ah		;5b17
	call 07e2fh		;5b1a
	jp 081abh		;5b1d
L_5B20:
	ld a,(0e440h)		;5b20   ; lee el jefe en curso (0: ninguno)
	or a			;5b23
	ret nz			;5b24
	ld a,(0e361h)		;5b25   ; lee la fase (1 a 11)
	cp 002h		;5b28
	jr z,L_5B2F		;5b2a
	cp 008h		;5b2c
	ret nz			;5b2e
L_5B2F:
	call bancos_4_5		;5b2f   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 09686h		;5b32
	jp bancos_1_2_3		;5b35   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_5B38:
	ld a,(0e302h)		;5b38   ; la pausa: solo jugando de verdad (bit 6 de 0xE302)
	and 040h		;5b3b
	ret z			;5b3d
	ld a,(0e310h)		;5b3e   ; la F1 recien pulsada (bit 0 de 0xE310)...
	dec a			;5b41
	jr nz,L_5B87		;5b42
	ld a,(0e311h)		;5b44   ; ...y pulsada (0xE311)
	dec a			;5b47
	jr nz,L_5B87		;5b48
	ld hl,0e325h		;5b4a   ; 0xE325 cambia: pausa o no
	ld a,(hl)			;5b4d
	inc a			;5b4e
	and 001h		;5b4f
	ld (hl),a			;5b51
	jr nz,L_5B6F		;5b52   ; se acaba la pausa:
	ld a,(0e403h)		;5b54   ; si el marcador estaba cambiado (0xE403)...
	and a			;5b57
	jr z,L_5B6A		;5b58
	ld hl,03ae0h		;5b5a   ; ...borra la fila de 0x3AE0
	ld bc,00020h		;5b5d
	xor a			;5b60
	call 00056h		;5b61   ; BIOS FILVRM - Fills VRAM with value
	call L_4FC6		;5b64   ; los graficos de p14:6013
	call L_5683		;5b67   ; y vuelve el marcador guardado
L_5B6A:
	call orden_sonido_81		;5b6a   ; la orden 0x81 al sonido
	xor a			;5b6d   ; vuelve con Z: sigue el juego
	ret			;5b6e
L_5B6F:
	call L_5677		;5b6f   ; empieza la pausa: guarda el marcador
	ld hl,03c00h		;5b72   ; 0xE403 = 0x3C00
	ld (0e403h),hl		;5b75   ; guarda el marcador cambiado (pausa, mensajes) y el byte siguiente (16 bits)
	call bancos_19		;5b78   ; con el 19 en 0xA000, p19:B3AF
	call 0b3afh		;5b7b
	call bancos_1_2_3		;5b7e   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call orden_sonido_82		;5b81   ; la orden 0x82 al sonido
	or 0ffh		;5b84   ; vuelve con NZ: en pausa
	ret			;5b86
L_5B87:
	ld a,(0e325h)		;5b87   ; sin la F1: en pausa, NZ
	and a			;5b8a
	ret z			;5b8b
	or 0ffh		;5b8c
	ret			;5b8e
L_5B8F:
	call bancos_16_17_18		;5b8f   ; con 0xE413: los bancos 16-17-18 y p00:5EEC
	call L_5EEC		;5b92
	call bancos_1_2_3		;5b95   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_5DFB		;5b98   ; p00:5DFB
	ld a,(0e518h)		;5b9b   ; cuando 0xE518 vuelve a 0...
	or a			;5b9e
	ret nz			;5b9f
	xor a			;5ba0   ; ...0xE413 a 0
	ld (0e413h),a		;5ba1
	ret			;5ba4
L_5BA5:
	ld hl,0e440h		;5ba5   ; la fase nueva: 0xE440-0xE5FF a cero
	ld de,0e441h		;5ba8
	ld bc,001bfh		;5bab
	ld (hl),000h		;5bae
	ldir		;5bb0
	ld hl,0e7e0h		;5bb2   ; 0xE7E0-0xEEFF a cero
	ld de,0e7e1h		;5bb5
	ld bc,0071fh		;5bb8
	ld (hl),000h		;5bbb
	ldir		;5bbd
	ld hl,0c400h		;5bbf   ; el bufer de 0xC400 (0xC00 bytes) a cero
	ld de,0c401h		;5bc2
	ld bc,00bffh		;5bc5
	ld (hl),000h		;5bc8
	ldir		;5bca
	ld hl,00020h		;5bcc   ; el scroll en 0x20
	ld (0e363h),hl		;5bcf   ; guarda la posicion del scroll (16 bits)
	call L_5C59		;5bd2   ; p00:5C59
	ld a,(0e361h)		;5bd5   ; la fase 11...
	cp 00bh		;5bd8
	call z,L_5BFD		;5bda   ; ...p00:5BFD
	call L_4F7C		;5bdd   ; los graficos de la fase
	call L_5236		;5be0   ; y la pantalla entera
	ld a,(0e361h)		;5be3   ; en la fase 4...
	cp 004h		;5be6
	jr z,L_5BF0		;5be8
	cp 00bh		;5bea   ; ...y en la 11 (con los sprites fuera)...
	ret nz			;5bec
	call L_5648		;5bed
L_5BF0:
	ld a,04ah		;5bf0   ; ...la nave en y 0x4A, x 0x50
	ld (0e604h),a		;5bf2   ; guarda la y de la nave (el primer byte de su sprite, p01:797C)
	ld a,050h		;5bf5
	ld (0e606h),a		;5bf7   ; guarda la x de la nave
	jp L_5CB4		;5bfa
L_5BFD:
	ld a,001h		;5bfd   ; la fase 11: 0xE413 = 1
	ld (0e413h),a		;5bff
	call bancos_16_17_18		;5c02   ; con 16-17-18, p00:5ED4 con la lista de 0x5EC9
	ld hl,05ec9h		;5c05
	call L_5ED4		;5c08
	jp bancos_1_2_3		;5c0b   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_5C0E:
	ld b,0e0h		;5c0e   ; prepara la fase: el borde a 0xE0
	call color_del_borde		;5c10   ; color_del_borde: B al registro 7 del VDP
	ld hl,0e400h		;5c13   ; 0xE400-0xEFFF a cero
	ld de,0e401h		;5c16
	ld bc,00bffh		;5c19
	ld (hl),000h		;5c1c
	ldir		;5c1e
	ld hl,0c400h		;5c20   ; el bufer de 0xC400 a cero
	ld de,0c401h		;5c23
	ld bc,00bffh		;5c26
	ld (hl),000h		;5c29
	ldir		;5c2b
	call L_5648		;5c2d   ; los sprites fuera
	call L_5C59		;5c30   ; p00:5C59
	call L_5CC8		;5c33   ; la dificultad de la fase (p00:5CC8)
	call L_4F7C		;5c36   ; los graficos de la fase
	call L_51C2		;5c39   ; los cambios de graficos hasta el scroll de ahora (p00:51C2)
	ld a,(0e302h)		;5c3c   ; sin el bit 6 de 0xE302...
	bit 6,a		;5c3f
	jr nz,L_5C47		;5c41
	xor a			;5c43   ; ...0xE389 a cero
	ld (0e389h),a		;5c44   ; guarda la dificultad de la fase (0 a 0x0F)
L_5C47:
	call L_5C8E		;5c47   ; la ficha de la nave (p00:5C8E)
	call L_5CB4		;5c4a   ; y su estela (p00:5CB4)
	call bancos_4_5		;5c4d   ; p04:9511
	call 09511h		;5c50
	call bancos_1_2_3		;5c53   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	jp L_5236		;5c56   ; y la pantalla entera
L_5C59:
	call L_5CE8		;5c59   ; el byte de 0xE405 de la fase (p00:5CE8)
	call bancos_19		;5c5c   ; con el 19 en 0xA000, p19:A8FB y p19:A957
	call 0a8fbh		;5c5f
	call 0a957h		;5c62
	call bancos_1_2_3		;5c65   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	xor a			;5c68   ; 0xE643, 0xE645 y 0xE365 a cero
	ld l,a			;5c69
	ld h,a			;5c6a
	ld (0e643h),hl		;5c6b
	ld (0e645h),hl		;5c6e
	ld (0e365h),a		;5c71   ; guarda el paso del final de la fase
	ld a,040h		;5c74   ; 0xE464 = 0x40
	ld (0e464h),a		;5c76
	ld hl,0ff00h		;5c79   ; 0xE538 = 0xFF00
	ld (0e538h),hl		;5c7c
	ld a,(0e361h)		;5c7f   ; la velocidad del scroll (0xE362): 0x80 en la fase 4, 1 en las demas
	cp 004h		;5c82
	ld a,080h		;5c84
	jr z,L_5C8A		;5c86
	ld a,001h		;5c88
L_5C8A:
	ld (0e362h),a		;5c8a   ; guarda la velocidad del scroll (se rota: avanza con el bit 0)
	ret			;5c8d
L_5C8E:
	ld hl,05ca5h		;5c8e   ; la ficha de la nave: 12 bytes de 0x5CA5 a 0xE600
	ld de,0e600h		;5c91   ; apunta a el estado de la nave (1 normal, 2 y 3 con escudo, 0xFF estalla)
	ld bc,0000ch		;5c94
	ldir		;5c97
	ld hl,05cb1h		;5c99   ; y 3 de 0x5CB1 a 0xE630
	ld de,0e630h		;5c9c
	ld bc,00003h		;5c9f
	ldir		;5ca2
	ret			;5ca4

; ----------------------------------------------------------------------
; DATOS leido_5CA5: 12 bytes que lee p00:5C97 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:5C97 (12 bytes)
;   0x5ca5..0x5cb1  (12 bytes)
DATA_leido_5CA5:
	defb 001h,000h,000h,000h,04ah,000h,050h,000h,000h,000h,000h,000h	; 5ca5  ....J.P.....

; ----------------------------------------------------------------------
; DATOS leido_5CB1: 3 bytes que lee p00:5CA2 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:5CA2 (3 bytes)
;   0x5cb1..0x5cb4  (3 bytes)
DATA_leido_5CB1:
	defb 001h,001h,000h	; 5cb1

; ======================================================================
; CODIGO 0x5cb4..0x5cf5  (65 bytes)
; ======================================================================


L_5CB4:
	ld de,0e660h		;5cb4   ; la estela de la nave (0xE660): 16 veces su y y su x (0xE604, 0xE606)
	ld a,010h		;5cb7
L_5CB9:
	ld hl,0e604h		;5cb9   ; apunta a la y de la nave (el primer byte de su sprite, p01:797C)
	ldi		;5cbc
	inc l			;5cbe
	ldi		;5cbf
	dec a			;5cc1
	jr nz,L_5CB9		;5cc2
	ld (0e60bh),a		;5cc4   ; 0xE60B = 0
	ret			;5cc7
L_5CC8:
	ld a,(0e36ah)		;5cc8   ; la dificultad: 0xE36A x 4...
	add a,a			;5ccb
	add a,a			;5ccc
	ld b,a			;5ccd
	ld a,(0e361h)		;5cce   ; ...+ la fase - 1...
	dec a			;5cd1
	add a,b			;5cd2
	cp 00fh		;5cd3   ; ...con tope 0x0F...
	jr c,L_5CD9		;5cd5
	ld a,00fh		;5cd7
L_5CD9:
	ld b,a			;5cd9
	ld a,(0e39dh)		;5cda   ; ...y la mitad con 0xE39D = 2
	cp 002h		;5cdd
	ld a,b			;5cdf
	jr nz,L_5CE4		;5ce0
	srl a		;5ce2
L_5CE4:
	ld (0e389h),a		;5ce4   ; en 0xE389
	ret			;5ce7
L_5CE8:
	ld a,(0e361h)		;5ce8   ; un byte por fase de 0x5CF4 + fase (el 0x5CF4 es el ret: la tabla empieza detras)
	ld hl,l5cf4h		;5ceb
	call L_4A6E		;5cee
	ld (0e405h),a		;5cf1   ; guarda el caracter del fondo de la fase
L_5CF4:
	ret			;5cf4

; ----------------------------------------------------------------------
; DATOS leido_5CF5: 11 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p00:4A73 (11
;   bytes)
;   0x5cf5..0x5d00  (11 bytes)
DATA_leido_5CF5:
	defb 05bh,060h,0ffh,060h,090h,05eh,072h,060h,063h,066h,060h	; 5cf5  [`.`.^r`cf`

; ======================================================================
; CODIGO 0x5d00..0x5eb8  (440 bytes)
; ======================================================================


L_5D00:
	xor a			;5d00   ; 0xE31D, 0xE538 y 0xE539 a cero
	ld (0e31dh),a		;5d01
	ld (0e538h),a		;5d04
	ld (0e539h),a		;5d07
	ret			;5d0a
L_5D0B:
	call 06d01h		;5d0b   ; vuelta de la pausa?: p01:6D01; si da NZ, nada
	and a			;5d0e
	ret nz			;5d0f
	call L_4F7C		;5d10   ; los graficos de la fase otra vez
	call L_51C2		;5d13
	ld a,(0e440h)		;5d16   ; y los del jefe, si lo hay
	and a			;5d19
	call nz,L_50FE		;5d1a
	ld hl,0ecc0h		;5d1d   ; la paleta guardada en 0xECC0
	call L_4B94		;5d20
	call bancos_4_5		;5d23   ; bancos_4_5: pone los bancos 4-5 (y sus copias en 0xF0F1-3)
	call 0954eh		;5d26
	call 095b6h		;5d29
	call bancos_1_2_3		;5d2c   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_5683		;5d2f   ; el marcador guardado
	call L_5AED		;5d32
	call L_5AE7		;5d35
	call L_5DFB		;5d38
	call 08325h		;5d3b
	call 06d01h		;5d3e
	xor a			;5d41
	ret			;5d42
L_5D43:
	ld hl,0e33bh		;5d43   ; la demostracion: la fase de 0xE33B (1, 2 o 3)...
	ld a,(hl)			;5d46
	ld (0e361h),a		;5d47   ; guarda la fase (1 a 11)
	inc a			;5d4a   ; ...y la siguiente vez la otra (despues de la 3, la 1)
	cp 004h		;5d4b
	jr c,L_5D51		;5d4d
	ld a,001h		;5d4f
L_5D51:
	ld (hl),a			;5d51
	call L_5C0E		;5d52   ; prepara la fase
	call L_4FB9		;5d55   ; los graficos de la nave
	call L_498A		;5d58   ; el marcador
	call bancos_19		;5d5b   ; con el 19, p19:B4D1 y p19:B51E
	call 0b4d1h		;5d5e
	call 0b51eh		;5d61
	call bancos_1_2_3		;5d64   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	call L_5007		;5d67   ; los dibujos de sprite de p14:7055
	call bancos_4_5		;5d6a   ; p04:9517
	call 09517h		;5d6d
	jp bancos_1_2_3		;5d70   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_5D73:
	ld hl,0e340h		;5d73   ; un cuadro de la demostracion: 0xE340 cuenta los cuadros de cada pulsacion
	dec (hl)			;5d76
	jr z,L_5D87		;5d77
L_5D79:
	ld a,(0e33dh)		;5d79   ; la pulsacion grabada (0xE33D) con el disparo (bit 4)...
	or 010h		;5d7c
	ld (0e309h),a		;5d7e   ; ...como si viniera de los mandos
	ld (0e308h),a		;5d81   ; guarda lo recien pulsado (mando y cursores)
	jp L_59EC		;5d84   ; y el cuadro de la fase
L_5D87:
	inc hl			;5d87   ; la pulsacion siguiente: 0xE342, el numero
	inc hl			;5d88
	ld c,(hl)			;5d89
	inc hl			;5d8a
	ld b,(hl)			;5d8b
	inc bc			;5d8c
	ld (hl),b			;5d8d
	dec hl			;5d8e
	ld (hl),c			;5d8f
	call bancos_19		;5d90   ; la grabacion de la fase (p19:B568 + 2 x fase)
	ld a,(0e361h)		;5d93   ; lee la fase (1 a 11)
	ld hl,0b568h		;5d96
	call lee_palabra		;5d99   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;5d9c
	ld l,c			;5d9d   ; el par numero 0xE342
	ld h,b			;5d9e
	add hl,hl			;5d9f
	add hl,de			;5da0
	ld a,(hl)			;5da1   ; cuantos cuadros
	ld c,a			;5da2
	ld (0e340h),a		;5da3   ; guarda los cuadros que quedan de la pulsacion de la demostracion
	inc hl			;5da6
	ld a,(hl)			;5da7   ; y que se pulsa
	ld (0e33dh),a		;5da8   ; guarda lo que se pulsa en la demostracion
	call bancos_1_2_3		;5dab   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
	inc c			;5dae   ; 0xFF: se acabo
	jr nz,L_5D79		;5daf
	xor a			;5db1   ; la nave fuera de la fase: se acaba la demostracion
	ld (0e31ah),a		;5db2   ; guarda 1 mientras la nave esta en la fase
	jp sonido_01		;5db5   ; sonido_01: pide el sonido 0x01
L_5DB8:
	ld a,(0e600h)		;5db8   ; los sprites a la VRAM (0x3B00): con la nave estallando, tal cual
	or a			;5dbb
	jp m,L_5DE9		;5dbc
	ld hl,03b00h		;5dbf
	call vram_para_escribir		;5dc2   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;5dc5
	ld hl,0e307h		;5dc6   ; si no, cada cuadro empiezan en otro (0xE307 + 0x1C, de 4 en 4)...
	ld a,(hl)			;5dc9
	add a,01ch		;5dca
	and 07ch		;5dcc
	ld (hl),a			;5dce
	ld e,a			;5dcf
	ld d,020h		;5dd0   ; ...32 sprites
L_5DD2:
	ld a,e			;5dd2
	ld hl,0ef00h		;5dd3   ; apunta a los atributos de sprite (32 x 4)
	add a,l			;5dd6
	ld l,a			;5dd7
	ld b,004h		;5dd8
L_5DDA:
	outi		;5dda   ; 4 bytes de cada uno
	jp nz,L_5DDA		;5ddc
	ld a,e			;5ddf   ; el siguiente: 3 mas alla (0x0C bytes)
	add a,00ch		;5de0
	and 07ch		;5de2
	ld e,a			;5de4
	dec d			;5de5
	jr nz,L_5DD2		;5de6
	ret			;5de8
L_5DE9:
	ld hl,03b00h		;5de9   ; los 32 tal cual (0x80 bytes)
	call vram_para_escribir		;5dec   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;5def
	ld hl,0ef00h		;5df0   ; apunta a los atributos de sprite (32 x 4)
	ld b,080h		;5df3
L_5DF5:
	outi		;5df5
	jp nz,L_5DF5		;5df7
	ret			;5dfa
L_5DFB:
	ld hl,03800h		;5dfb   ; el bufer de 0xC400 a la tabla de nombres: 22 filas de 32 (el bufer va de 0x40 en 0x40)
	call vram_para_escribir		;5dfe   ; vram_para_escribir: la VRAM de HL para escribir y en C' el puerto del VDP
	exx			;5e01
	ld hl,0c400h		;5e02   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld de,00020h		;5e05
	ld b,020h		;5e08
L_5E0A:
	outi		;5e0a
	jp nz,L_5E0A		;5e0c
	add hl,de			;5e0f
	ld b,020h		;5e10
L_5E12:
	outi		;5e12
	jp nz,L_5E12		;5e14
	add hl,de			;5e17
	ld b,020h		;5e18
L_5E1A:
	outi		;5e1a
	jp nz,L_5E1A		;5e1c
	add hl,de			;5e1f
	ld b,020h		;5e20
L_5E22:
	outi		;5e22
	jp nz,L_5E22		;5e24
	add hl,de			;5e27
	ld b,020h		;5e28
L_5E2A:
	outi		;5e2a
	jp nz,L_5E2A		;5e2c
	add hl,de			;5e2f
	ld b,020h		;5e30
L_5E32:
	outi		;5e32
	jp nz,L_5E32		;5e34
	add hl,de			;5e37
	ld b,020h		;5e38
L_5E3A:
	outi		;5e3a
	jp nz,L_5E3A		;5e3c
	add hl,de			;5e3f
	ld b,020h		;5e40
L_5E42:
	outi		;5e42
	jp nz,L_5E42		;5e44
	add hl,de			;5e47
	ld b,020h		;5e48
L_5E4A:
	outi		;5e4a
	jp nz,L_5E4A		;5e4c
	add hl,de			;5e4f
	ld b,020h		;5e50
L_5E52:
	outi		;5e52
	jp nz,L_5E52		;5e54
	add hl,de			;5e57
	ld b,020h		;5e58
L_5E5A:
	outi		;5e5a
	jp nz,L_5E5A		;5e5c
	add hl,de			;5e5f
	ld b,020h		;5e60
L_5E62:
	outi		;5e62
	jp nz,L_5E62		;5e64
	add hl,de			;5e67
	ld b,020h		;5e68
L_5E6A:
	outi		;5e6a
	jp nz,L_5E6A		;5e6c
	add hl,de			;5e6f
	ld b,020h		;5e70
L_5E72:
	outi		;5e72
	jp nz,L_5E72		;5e74
	add hl,de			;5e77
	ld b,020h		;5e78
L_5E7A:
	outi		;5e7a
	jp nz,L_5E7A		;5e7c
	add hl,de			;5e7f
	ld b,020h		;5e80
L_5E82:
	outi		;5e82
	jp nz,L_5E82		;5e84
	add hl,de			;5e87
	ld b,020h		;5e88
L_5E8A:
	outi		;5e8a
	jp nz,L_5E8A		;5e8c
	add hl,de			;5e8f
	ld b,020h		;5e90
L_5E92:
	outi		;5e92
	jp nz,L_5E92		;5e94
	add hl,de			;5e97
	ld b,020h		;5e98
L_5E9A:
	outi		;5e9a
	jp nz,L_5E9A		;5e9c
	add hl,de			;5e9f
	ld b,020h		;5ea0
L_5EA2:
	outi		;5ea2
	jp nz,L_5EA2		;5ea4
	add hl,de			;5ea7
	ld b,020h		;5ea8
L_5EAA:
	outi		;5eaa
	jp nz,L_5EAA		;5eac
	add hl,de			;5eaf
	ld b,020h		;5eb0
L_5EB2:
	outi		;5eb2
	jp nz,L_5EB2		;5eb4
	ret			;5eb7

; ----------------------------------------------------------------------
; DATOS leido_5EB8: 1 bytes que lee p01:6020 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6020 (1 bytes)
;   0x5eb8..0x5eb9  (1 bytes)
DATA_leido_5EB8:
	defb 001h	; 5eb8

; ----------------------------------------------------------------------
; DATOS leido_5EB9: 1 bytes que lee p01:60A5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:60A5 (1 bytes)
;   0x5eb9..0x5eba  (1 bytes)
DATA_leido_5EB9:
	defb 07eh	; 5eb9

; ----------------------------------------------------------------------
; DATOS leido_5EBA: 2 bytes que leen p01:6026, p01:6020 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p01:6026, p01:6020 (2 bytes)
;   0x5eba..0x5ebc  (2 bytes)
DATA_leido_5EBA:
	defb 006h,001h	; 5eba

; ----------------------------------------------------------------------
; DATOS leido_5EBC: 1 bytes que lee p01:60A5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:60A5 (1 bytes)
;   0x5ebc..0x5ebd  (1 bytes)
DATA_leido_5EBC:
	defb 037h	; 5ebc

; ----------------------------------------------------------------------
; DATOS leido_5EBD: 2 bytes que leen p01:6026, p01:6020 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p01:6026, p01:6020 (2 bytes)
;   0x5ebd..0x5ebf  (2 bytes)
DATA_leido_5EBD:
	defb 001h,060h	; 5ebd

; ----------------------------------------------------------------------
; DATOS leido_5EBF: 1 bytes que lee p01:60A5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:60A5 (1 bytes)
;   0x5ebf..0x5ec0  (1 bytes)
DATA_leido_5EBF:
	defb 020h	; 5ebf

; ----------------------------------------------------------------------
; DATOS leido_5EC0: 2 bytes que leen p01:6026, p01:6020 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p01:6026, p01:6020 (2 bytes)
;   0x5ec0..0x5ec2  (2 bytes)
DATA_leido_5EC0:
	defb 001h,080h	; 5ec0

; ----------------------------------------------------------------------
; DATOS leido_5EC2: 1 bytes que lee p01:60A5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:60A5 (1 bytes)
;   0x5ec2..0x5ec3  (1 bytes)
DATA_leido_5EC2:
	defb 080h	; 5ec2

; ----------------------------------------------------------------------
; DATOS leido_5EC3: 2 bytes que leen p01:6026, p01:6020 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p01:6026, p01:6020 (2 bytes)
;   0x5ec3..0x5ec5  (2 bytes)
DATA_leido_5EC3:
	defb 007h,000h	; 5ec3

; ----------------------------------------------------------------------
; DATOS leido_5EC5: 4 bytes que lee p00:5EDA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:5EDA (4 bytes)
;   0x5ec5..0x5ec9  (4 bytes)
DATA_leido_5EC5:
	defb 0b0h,061h,008h,062h	; 5ec5

; ----------------------------------------------------------------------
; DATOS resto_5EC9: lo apuntan con el banco puesto p00:5C05 (0x5EC9), p27:8A40
;   (0x5ECD); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p00:5C05, p27:8A40 (11 bytes)
;   0x5ec9..0x5ed4  (11 bytes)
DATA_resto_5EC9:
	defb 058h,067h,095h,067h,001h,07fh,007h,080h,080h,007h,000h	; 5ec9  Xg.g.......

; ======================================================================
; CODIGO 0x5ed4..0x5ffe  (298 bytes)
; ======================================================================


L_5ED4:
	ld de,0e51ch		;5ed4   ; la aparicion poco a poco: las dos listas de HL a 0xE51C
	ld bc,00004h		;5ed7
	ldir		;5eda
	ld hl,00001h		;5edc   ; 0xE518 = 1 (en marcha) y 0xE519 = 0 (el paso)
	ld (0e518h),hl		;5edf   ; guarda la aparicion poco a poco en marcha (1 o 2) y el byte siguiente (16 bits)
	ret			;5ee2
L_5EE3:
	call bancos_16_17_18		;5ee3   ; bancos_16_17_18: pone los bancos 16-17-18 (y sus copias en 0xF0F1-3)
	call L_5EEC		;5ee6
	jp bancos_1_2_3		;5ee9   ; bancos_1_2_3: pone los bancos 1-2-3 (y sus copias en 0xF0F1-3)
L_5EEC:
	ld a,(0e519h)		;5eec   ; la aparicion: por el paso de 0xE519
	dec a			;5eef
	jr z,L_5F15		;5ef0
	dec a			;5ef2
	jr z,L_5F32		;5ef3
	xor a			;5ef5   ; paso 0: los dibujos a cero y los colores a 0xF0
	ld (0e51ah),a		;5ef6
	ld c,000h		;5ef9
	call L_5F47		;5efb
	ld a,001h		;5efe
	ld (0e51ah),a		;5f00
	ld c,0f0h		;5f03
	call L_5F47		;5f05
	call L_5FB9		;5f08   ; y las copias con vuelta
	ld a,001h		;5f0b   ; la mascara de 0xE51B empieza en 1
	ld (0e51bh),a		;5f0d   ; guarda la mascara de la aparicion poco a poco
L_5F10:
	ld hl,0e519h		;5f10   ; al paso siguiente
	inc (hl)			;5f13
	ret			;5f14
L_5F15:
	xor a			;5f15   ; paso 1: los dibujos con la mascara de 0xE51B
	ld (0e51ah),a		;5f16
	ld a,(0e51bh)		;5f19   ; lee la mascara de la aparicion poco a poco
	ld c,a			;5f1c
	call L_5F47		;5f1d
	call L_5FB9		;5f20
	ld hl,0e51bh		;5f23   ; la mascara, un bit mas cada vez (x 8 + 1)
	ld a,(hl)			;5f26
	cp 0ffh		;5f27   ; con 0xFF, al paso siguiente
	jr z,L_5F10		;5f29
	rlca			;5f2b
	rlca			;5f2c
	rlca			;5f2d
	or 001h		;5f2e
	ld (hl),a			;5f30
	ret			;5f31
L_5F32:
	ld a,001h		;5f32   ; paso 2: los colores enteros
	ld (0e51ah),a		;5f34
	ld c,0ffh		;5f37
	call L_5F47		;5f39
	call L_5FB9		;5f3c
	call L_518E		;5f3f   ; el bufer de 0xCA00 a cero
	xor a			;5f42   ; y se acaba (0xE518 = 0)
	ld (0e518h),a		;5f43   ; guarda la aparicion poco a poco en marcha (1 o 2)
	ret			;5f46
L_5F47:
	ld ix,(0e51ch)		;5f47   ; la lista de graficos de 0xE51C, como p00:4CB1 pero con la mascara C
	ld a,(0e328h)		;5f4b   ; lee 1: el final del juego (al estado 10)
	or a			;5f4e
	jr nz,L_5F64		;5f4f
L_5F51:
	ld a,(ix+000h)		;5f51
	and a			;5f54
	ret z			;5f55
	bit 3,a		;5f56
	jr z,L_5F64		;5f58
	bit 4,a		;5f5a
	push af			;5f5c
	call z,bancos_16_17_18		;5f5d   ; bancos_16_17_18: pone los bancos 16-17-18 (y sus copias en 0xF0F1-3)
	pop af			;5f60
	call nz,bancos_15		;5f61   ; bancos_15: pone el 15 (y sus copias en 0xF0F1-3)
L_5F64:
	rra			;5f64
	ld de,01000h		;5f65
	call c,L_5F86		;5f68
	bit 1,(ix+000h)		;5f6b
	ld de,00800h		;5f6f
	call nz,L_5F86		;5f72
	bit 2,(ix+000h)		;5f75
	ld de,00000h		;5f79
	call nz,L_5F86		;5f7c
	ld de,00006h		;5f7f
	add ix,de		;5f82
	jr L_5F51		;5f84
L_5F86:
	ld l,(ix+003h)		;5f86   ; el caracter x 8 + el tercio
	ld h,000h		;5f89
	add hl,hl			;5f8b
	add hl,hl			;5f8c
	add hl,hl			;5f8d
	add hl,de			;5f8e
	ld a,(0e51ah)		;5f8f   ; dibujos (0xE51A = 0) o colores
	dec a			;5f92
	jr z,L_5FA7		;5f93
	ld de,02000h		;5f95
	add hl,de			;5f98
	ld e,(ix+001h)		;5f99
	ld d,(ix+002h)		;5f9c
	push ix		;5f9f
	call L_5FC0		;5fa1
	pop ix		;5fa4
	ret			;5fa6
L_5FA7:
	ld de,00000h		;5fa7
	add hl,de			;5faa
	ld e,(ix+004h)		;5fab
	ld d,(ix+005h)		;5fae
	push ix		;5fb1
	call L_5FC0		;5fb3
	pop ix		;5fb6
	ret			;5fb8
L_5FB9:
	ld ix,(0e51eh)		;5fb9   ; las copias con vuelta de 0xE51E
	jp copia_con_vuelta		;5fbd   ; copia_con_vuelta: copia caracteres de la VRAM dandoles la vuelta (lista IX)
L_5FC0:
	call vram_para_escribir		;5fc0   ; el RLE de p00:4B3C, cada byte con AND C
L_5FC3:
	ld a,(de)			;5fc3
	and a			;5fc4
	ret z			;5fc5
	inc de			;5fc6
	ld b,a			;5fc7
	and 07fh		;5fc8
	cp b			;5fca
	jr z,L_5FE5		;5fcb
	ld b,a			;5fcd
L_5FCE:
	ld a,(de)			;5fce
	and c			;5fcf   ; el byte con la mascara
	inc de			;5fd0
	exx			;5fd1
	out (c),a		;5fd2
	exx			;5fd4
	ld a,(0e51ah)		;5fd5
	and a			;5fd8
	jr nz,L_5FE1		;5fd9
	rrc c		;5fdb   ; en los dibujos la mascara gira tres bits cada byte
	rrc c		;5fdd
	rrc c		;5fdf
L_5FE1:
	djnz L_5FCE		;5fe1
	jr L_5FC3		;5fe3
L_5FE5:
	ld a,(de)			;5fe5
	inc de			;5fe6
L_5FE7:
	and c			;5fe7
	exx			;5fe8
	out (c),a		;5fe9
	exx			;5feb
	ex af,af'			;5fec
	ld a,(0e51ah)		;5fed
	and a			;5ff0
	jr nz,L_5FF9		;5ff1
	rrc c		;5ff3
	rrc c		;5ff5
	rrc c		;5ff7
L_5FF9:
	ex af,af'			;5ff9
	djnz L_5FE7		;5ffa
	jr L_5FC3		;5ffc

; ----------------------------------------------------------------------
; DATOS partida_5FFE: los 2 primeros bytes de una instruccion de 3 (22 1C E5)
;   que sigue en el banco 1: el trazador de un solo banco no puede verla
;   entera (tools/bancos.py); lo leen p00:5FFE (2 bytes)
;   0x5ffe..0x6000  (2 bytes)
L_5FFE:
	defb 022h,01ch	; 5ffe

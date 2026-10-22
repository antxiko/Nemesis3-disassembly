; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 30 (se ejecuta en 0x8000)
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
l841fh:	equ 0x0841f

; ======================================================================
; CODIGO 0x8000..0x8017  (23 bytes)
; ======================================================================


L_8000:
	jp L_8009		;8000   ; las entradas del banco: la historia (p00:4371)
L_8003:
	jp L_8523		;8003   ; el titulo (p00:42F9)
L_8006:
	jp L_8596		;8006   ; el titulo, cada cuadro (p00:431B)
L_8009:
	call 05de9h		;8009   ; la historia, cada cuadro: los sprites y la pantalla a la VRAM; por el paso (0xE32F)
	call 05985h		;800c   ; bufer_a_vram: el bufer de 0xCA00 a la tabla de nombres, la pantalla entera
	ld bc,(0e32fh)		;800f
	ld a,c			;8013
	call 04093h		;8014   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8017: 3 destinos del despachador p00:4093 (call en p30:8014, el
;   indice en A): 802A, 80C6, 815A; lo leen p30:8014 (6 bytes)
;   0x8017..0x801d  (6 bytes)
DATA_tabla_8017:
	defw 0802ah,080c6h,0815ah	; 8017  -> L_802A L_80C6 L_815A

; ======================================================================
; CODIGO 0x801d..0x8035  (24 bytes)
; ======================================================================


historia_paso_siguiente:		; el paso siguiente de la historia (0xE32F)
	ld hl,0e32fh		;801d   ; el paso siguiente (0xE32F), con el subpaso a 0
	inc (hl)			;8020
	inc hl			;8021
	ld (hl),000h		;8022
	ret			;8024
historia_subpaso_siguiente:		; el subpaso siguiente de la historia (0xE330)
	ld hl,0e330h		;8025   ; el subpaso siguiente (0xE330)
	inc (hl)			;8028
	ret			;8029
L_802A:
	push bc			;802a   ; paso 0, las guerras de antes: desde el subpaso 1 las estrellas salen (p28:BC08); por el subpaso
	inc b			;802b
	dec b			;802c
	call nz,estrellas_salen		;802d   ; estrellas_salen: las estrellas salen (p28:BC08)
	pop bc			;8030
	ld a,b			;8031
	call 04093h		;8032   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_8035: 7 destinos del despachador p00:4093 (call en p30:8032, el
;   indice en A): 8043, 8057, 806C, 807D, 808E, 80A2, 80B5; lo leen p30:8032
;   (14 bytes)
;   0x8035..0x8043  (14 bytes)
DATA_tabla_8035:
	defw 08043h,08057h,0806ch,0807dh,0808eh,080a2h,080b5h	; 8035

; ======================================================================
; CODIGO 0x8043..0x80ca  (135 bytes)
; ======================================================================


L_8043:
	xor a			;8043   ; subpaso 0: la paleta 0, las estrellas (p28:BE34 y BBEE), el sonido 0x4A y la cuenta a cero
	call 05709h		;8044   ; paleta: la paleta A de p16:6B74
	call L_84CB		;8047   ; las estrellas del fondo (p28:BE34)
	call L_84D5		;804a   ; que salgan del centro (p28:BBEE)
	call 05806h		;804d   ; sonido_4A: pide el sonido 0x4A
	call 05730h		;8050   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call historia_subpaso_siguiente		;8053   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8056
L_8057:
	ld de,00100h		;8057   ; subpaso 1: a los 0x100 cuadros, la secuencia 0 (p26:6114) y p30:8419
	call 05737h		;805a   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;805d
	call 05730h		;805e   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	xor a			;8061
	call 04818h		;8062   ; secuencia_empieza: empieza la secuencia de dibujos A (p26:6114, con los bancos 26-27-28)
	call historia_colores_empiezan		;8065   ; historia_colores_empiezan: los colores de la secuencia desde el principio
	call historia_subpaso_siguiente		;8068   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;806b
L_806C:
	call 04821h		;806c   ; subpaso 2: la secuencia cada cuadro; mientras siga, p30:83EB
	ld a,(0e5cah)		;806f
	or a			;8072
	jr z,L_8079		;8073
	call historia_colores		;8075   ; historia_colores: los colores de la secuencia, cada 7 cuadros
	ret			;8078
L_8079:
	call historia_subpaso_siguiente		;8079   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;807c
L_807D:
	ld de,00180h		;807d   ; subpaso 3: a los 0x180 cuadros, el bufer a cero
	call 05737h		;8080   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;8083
	call 05730h		;8084   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call 05959h		;8087   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	call historia_subpaso_siguiente		;808a   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;808d
L_808E:
	ld de,00100h		;808e   ; subpaso 4: a los 0x100, la orden 0x84
	call 05737h		;8091   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;8094
	call 05730h		;8095   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call 05951h		;8098   ; orden_sonido_84: manda la orden 0x84 al motor de sonido
	call 05730h		;809b   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call historia_subpaso_siguiente		;809e   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;80a1
L_80A2:
	ld de,00180h		;80a2   ; subpaso 5: a los 0x180, la orden 0x83 y el sonido 1
	call 05737h		;80a5   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;80a8
	call 05730h		;80a9   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call 0594dh		;80ac   ; orden_sonido_83: manda la orden 0x83 al motor de sonido
	call 057eah		;80af   ; sonido_01: pide el sonido 0x01
	jp historia_subpaso_siguiente		;80b2   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
L_80B5:
	ld de,00120h		;80b5   ; subpaso 6: a los 0x120, el sonido 0x3E y al paso 1
	call 05737h		;80b8   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;80bb
	call 05730h		;80bc   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call 05802h		;80bf   ; sonido_3E: pide el sonido 0x3E
	call historia_paso_siguiente		;80c2   ; historia_paso_siguiente: el paso siguiente de la historia (0xE32F)
	ret			;80c5
L_80C6:
	ld a,b			;80c6   ; paso 1, las escenas: por el subpaso, con las estrellas
	call 04093h		;80c7   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_80CA: 6 destinos del despachador p00:4093 (call en p30:80C7, el
;   indice en A): 80D6, 80E1, 8102, 811B, 8132, 8143; lo leen p30:80C7 (12
;   bytes)
;   0x80ca..0x80d6  (12 bytes)
DATA_tabla_80CA:
	defw 080d6h,080e1h,08102h,0811bh,08132h,08143h	; 80ca

; ======================================================================
; CODIGO 0x80d6..0x815e  (136 bytes)
; ======================================================================


L_80D6:
	call estrellas_salen		;80d6   ; subpaso 0: la escena 0 (0xE335)
	xor a			;80d9
	ld (0e335h),a		;80da
	call historia_subpaso_siguiente		;80dd   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;80e0
L_80E1:
	call estrellas_salen		;80e1   ; subpaso 1: al acabar su tiempo (p30:8476), la siguiente (p30:8432), hasta la 0x1F
	call L_8476		;80e4   ; C mientras la cuenta 0xE339 no llegue al tiempo de la escena (tabla de 0x8483)
	ret c			;80e7
	call 05730h		;80e8   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call 05959h		;80eb   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	call 05985h		;80ee   ; bufer_a_vram: el bufer de 0xCA00 a la tabla de nombres, la pantalla entera
	ld hl,0e335h		;80f1
	inc (hl)			;80f4
	ld a,(hl)			;80f5
	cp 01fh		;80f6
	jr nc,L_80FE		;80f8
	call L_8432		;80fa
	ret			;80fd
L_80FE:
	call historia_subpaso_siguiente		;80fe   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8101
L_8102:
	call estrellas_salen		;8102   ; subpaso 2: a los 0xA8 cuadros, la secuencia 1 (la cronologia) y p30:8419
	ld de,000a8h		;8105
	call 05737h		;8108   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;810b
	call 05730h		;810c   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	ld a,001h		;810f
	call 04818h		;8111   ; secuencia_empieza: empieza la secuencia de dibujos A (p26:6114, con los bancos 26-27-28)
	call historia_colores_empiezan		;8114   ; historia_colores_empiezan: los colores de la secuencia desde el principio
	call historia_subpaso_siguiente		;8117   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;811a
L_811B:
	call estrellas_salen		;811b   ; subpaso 3: la secuencia cada cuadro; al acabar, el bufer a cero
	call 04821h		;811e   ; secuencia_cuadro: la secuencia de dibujos, un cuadro (p26:6135)
	ld a,(0e5cah)		;8121
	or a			;8124
	jr z,L_812B		;8125
	call historia_colores		;8127   ; historia_colores: los colores de la secuencia, cada 7 cuadros
	ret			;812a
L_812B:
	call 05959h		;812b   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	call historia_subpaso_siguiente		;812e   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8131
L_8132:
	call estrellas_salen		;8132   ; subpaso 4: 0x240 cuadros
	ld de,00240h		;8135
	call 05737h		;8138   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;813b
	call 05730h		;813c   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call historia_subpaso_siguiente		;813f   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8142
L_8143:
	call L_84DF		;8143   ; subpaso 5: las estrellas entran (p28:BD0F, BDEC); a los 0x100, los sprites fuera y al paso 2
	call L_84E9		;8146   ; a los sprites (p28:BDEC)
	ld de,00100h		;8149
	call 05737h		;814c   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;814f
	call 05730h		;8150   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call 05648h		;8153   ; sprites_fuera: los atributos de sprite de 0xEF00 a 0xE0: fuera de la pantalla
	call historia_paso_siguiente		;8156   ; historia_paso_siguiente: el paso siguiente de la historia (0xE32F)
	ret			;8159
L_815A:
	ld a,b			;815a   ; paso 2, la nave y los suyos: por el subpaso
	call 04093h		;815b   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_815E: 23 destinos del despachador p00:4093 (call en p30:815B, el
;   indice en A): 818C, 81A6, 81AE, 81C3, 81CE, 81EB, 81FA, 8225, 8237, 8267,
;   8284, 82B3, 82C4, 82F1, 8315, 835E, 8366, 8377, 8382, 83AA, 83B2, 83C3,
;   83CE; lo leen p30:815B (46 bytes)
;   0x815e..0x818c  (46 bytes)
DATA_tabla_815E:
	defw 0818ch,081a6h,081aeh,081c3h,081ceh,081ebh,081fah,08225h	; 815e
	defw 08237h,08267h,08284h,082b3h,082c4h,082f1h,08315h,0835eh	; 816e
	defw 08366h,08377h,08382h,083aah,083b2h,083c3h,083ceh	; 817e

; ======================================================================
; CODIGO 0x818c..0x81bf  (51 bytes)
; ======================================================================


L_818C:
	ld a,002h		;818c   ; subpaso 0: la secuencia 2 y la pantalla aparece con pausas (desde el trozo 0 en japones, 0x20 en ingles)
	call 04818h		;818e   ; secuencia_empieza: empieza la secuencia de dibujos A (p26:6114, con los bancos 26-27-28)
	ld hl,0c400h		;8191   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld c,0f0h		;8194
	call 05636h		;8196   ; bios_japonesa: Z si la BIOS es japonesa (0x002B & 0x0F = 0)
	ld a,000h		;8199
	jr z,L_819F		;819b
	ld a,020h		;819d
L_819F:
	call aparece_con_pausas		;819f   ; aparece_con_pausas: la lista HL aparece fila a fila con pausas
	call historia_subpaso_siguiente		;81a2   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;81a5
L_81A6:
	call aparece_con_pausas_cuadro		;81a6   ; subpaso 1: hasta que aparezca
	ret nz			;81a9
	call historia_subpaso_siguiente		;81aa   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;81ad
L_81AE:
	ld de,00414h		;81ae   ; subpaso 2: a los 0x414 cuadros, se borra lo de 0x81BF
	call 05737h		;81b1   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;81b4
	ld hl,081bfh		;81b5
	call borra_fila_a_fila		;81b8   ; borra_fila_a_fila: la lista HL se borra fila a fila
	call historia_subpaso_siguiente		;81bb   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;81be

; ----------------------------------------------------------------------
; DATOS resto_81BF: lo apuntan con el banco puesto p30:81B5 (0x81BF); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p30:81B5 (4 bytes)
;   0x81bf..0x81c3  (4 bytes)
DATA_resto_81BF:
	defb 007h,001h,0ffh,000h	; 81bf

; ======================================================================
; CODIGO 0x81c3..0x8221  (94 bytes)
; ======================================================================


L_81C3:
	call borra_fila_a_fila_cuadro		;81c3   ; subpaso 3: al acabar, el bufer a cero
	ret nz			;81c6
	call 05959h		;81c7   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	call historia_subpaso_siguiente		;81ca   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;81cd
L_81CE:
	ld de,00494h		;81ce   ; subpaso 4: a los 0x494, la secuencia 3 y la pantalla aparece desde el trozo 0x80
	call 05737h		;81d1   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;81d4
	call 05730h		;81d5   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	ld a,003h		;81d8
	call 04818h		;81da   ; secuencia_empieza: empieza la secuencia de dibujos A (p26:6114, con los bancos 26-27-28)
	ld hl,0c400h		;81dd   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld c,0f0h		;81e0
	ld a,080h		;81e2
	call aparece_con_pausas		;81e4   ; aparece_con_pausas: la lista HL aparece fila a fila con pausas
	call historia_subpaso_siguiente		;81e7   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;81ea
L_81EB:
	call aparece_con_pausas_cuadro		;81eb   ; subpaso 5: al acabar, la cuenta 0xE339 a cero (p00:5724) y la nave 0
	ret nz			;81ee
	call 05724h		;81ef   ; cuenta_e333_a_cero: la cuenta de 0xE333 a cero
	xor a			;81f2
	ld (0e380h),a		;81f3   ; guarda la nave elegida (0 a 3)
	call historia_subpaso_siguiente		;81f6   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;81f9
L_81FA:
	ld de,000a8h		;81fa   ; subpaso 6: a los 0xA8 (p00:572B), el plano de la nave (p26:6FB0), su lista con el color de 0x8221 y su dibujo
	call 0572bh		;81fd   ; cuenta_e333_llega: la cuenta de 0xE333 contra DE: C mientras no llega
	ret c			;8200
	call 05724h		;8201   ; cuenta_e333_a_cero: la cuenta de 0xE333 a cero
	call 041cfh		;8204   ; bancos_26_28: pone los bancos 26-28 (y sus copias en 0xF0F1-3)
	call 06fb0h		;8207   ; los colores del plano de la nave 0xE380 (tabla p28:B0FD) en 0x2100 y 0x2900 (p26:6FB0)
	ld a,(0e380h)		;820a   ; lee la nave elegida (0 a 3)
	ld hl,08221h		;820d
	call 04089h		;8210   ; suma_a_hl: HL = HL + A
	ld c,(hl)			;8213
	call 06f89h		;8214
	call 07069h		;8217   ; el dibujo de la nave 0xE380 (tabla de 0x7073, p26:6064) (p26:7069)
	call 041dch		;821a   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	call historia_subpaso_siguiente		;821d   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8220

; ----------------------------------------------------------------------
; DATOS tabla_8221: tabla que se lee desde HL = 0x8221 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p30:820D (4 bytes)
;   0x8221..0x8225  (4 bytes)
DATA_tabla_8221:
	defb 090h,030h,0a0h,050h	; 8221

; ======================================================================
; CODIGO 0x8225..0x825f  (58 bytes)
; ======================================================================


L_8225:
	call 041cfh		;8225   ; subpaso 7: hasta que aparezca
	call 07a3dh		;8228   ; llenado_cuadro: el llenado fila a fila, cada 4 cuadros
	call 041dch		;822b   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ld a,(0e564h)		;822e   ; lee el llenado fila a fila en marcha
	or a			;8231
	ret nz			;8232
	call historia_subpaso_siguiente		;8233   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8236
L_8237:
	ld a,(0e380h)		;8237   ; subpaso 8: a los 0xA8 (0x1A4 con la nave 3), se borra lo de 0x825F (0x8263 con la 3)
	cp 003h		;823a
	ld de,000a8h		;823c
	jr nz,L_8244		;823f
	ld de,001a4h		;8241
L_8244:
	call 0572bh		;8244   ; cuenta_e333_llega: la cuenta de 0xE333 contra DE: C mientras no llega
	ret c			;8247
	call 05724h		;8248   ; cuenta_e333_a_cero: la cuenta de 0xE333 a cero
	ld a,(0e380h)		;824b   ; lee la nave elegida (0 a 3)
	cp 003h		;824e
	ld hl,0825fh		;8250
	jr nz,L_8258		;8253
	ld hl,08263h		;8255
L_8258:
	call borra_fila_a_fila		;8258   ; borra_fila_a_fila: la lista HL se borra fila a fila
	call historia_subpaso_siguiente		;825b   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;825e

; ----------------------------------------------------------------------
; DATOS resto_825F: lo apuntan con el banco puesto p30:8250 (0x825F), p30:8255
;   (0x8263); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p30:8250, p30:8255 (8 bytes)
;   0x825f..0x8267  (8 bytes)
DATA_resto_825F:
	defb 006h,001h,0ffh,000h,007h,001h,0ffh,000h	; 825f  ........

; ======================================================================
; CODIGO 0x8267..0x82ea  (131 bytes)
; ======================================================================


L_8267:
	call borra_fila_a_fila_cuadro		;8267   ; subpaso 9: al acabar, el cuadro a cero y la nave siguiente; las cuatro: el bufer a cero
	ret nz			;826a
	call L_83DD		;826b   ; 0xCA00-0xCBFF a cero
	ld hl,0e380h		;826e   ; apunta a la nave elegida (0 a 3)
	inc (hl)			;8271
	ld a,(hl)			;8272
	cp 004h		;8273
	jr nc,L_827D		;8275
	ld a,006h		;8277
	ld (0e330h),a		;8279
	ret			;827c
L_827D:
	call 05959h		;827d   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	call historia_subpaso_siguiente		;8280   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8283
L_8284:
	ld de,007a8h		;8284   ; subpaso 0x0A: a los 0x7A8, los sprites fuera, el ordenador de a bordo con el contador de 0x6102 y la secuencia 4
	call 05737h		;8287   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;828a
	call 05730h		;828b   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	call 05648h		;828e   ; sprites_fuera: los atributos de sprite de 0xEF00 a 0xE0: fuera de la pantalla
	call 041cfh		;8291   ; bancos_26_28: pone los bancos 26-28 (y sus copias en 0xF0F1-3)
	call 060dfh		;8294   ; ordenador: el ordenador de a bordo (p26:730A) con su animacion cada 8 cuadros
	ld hl,06102h		;8297
	call 060f9h		;829a   ; contador_de_hl: las 6 cifras del contador del ordenador de a bordo, de HL
	call 041dch		;829d   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ld a,004h		;82a0
	call 04818h		;82a2   ; secuencia_empieza: empieza la secuencia de dibujos A (p26:6114, con los bancos 26-27-28)
	ld hl,0c400h		;82a5   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld c,0f0h		;82a8
	ld a,080h		;82aa
	call aparece_con_pausas		;82ac   ; aparece_con_pausas: la lista HL aparece fila a fila con pausas
	call historia_subpaso_siguiente		;82af   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;82b2
L_82B3:
	call 041cfh		;82b3   ; subpaso 0x0B: el ordenador de a bordo hasta que aparezca
	call 07320h		;82b6   ; ordenador_cuadro: el ordenador de a bordo, un cuadro
	call 041dch		;82b9   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	call aparece_con_pausas_cuadro		;82bc   ; aparece_con_pausas_cuadro: lo mismo, un cuadro (NZ mientras siga)
	ret nz			;82bf
	call historia_subpaso_siguiente		;82c0   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;82c3
L_82C4:
	call 041cfh		;82c4   ; subpaso 0x0C: a los 0x2C0, se borra lo de 0x82EA y los sprites de 0x82EE
	call 07320h		;82c7   ; ordenador_cuadro: el ordenador de a bordo, un cuadro
	call 041dch		;82ca   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ld de,002c0h		;82cd
	call 05737h		;82d0   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;82d3
	ld hl,082eah		;82d4
	call borra_fila_a_fila		;82d7   ; borra_fila_a_fila: la lista HL se borra fila a fila
	call 041c7h		;82da   ; bancos_26: pone el 26 (y sus copias en 0xF0F1-3)
	ld hl,082eeh		;82dd
	call 07913h		;82e0   ; borrado_sprites_empieza: empieza a borrar fila a fila los sprites de HL
	call 041dch		;82e3   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	call historia_subpaso_siguiente		;82e6   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;82e9

; ----------------------------------------------------------------------
; DATOS resto_82EA: lo apuntan con el banco puesto p30:82D4 (0x82EA), p30:836D
;   (0x82EA), p30:83B9 (0x82EA), p30:82DD (0x82EE); el tamano es lo que hay
;   hasta lo siguiente, no sale de recorrerlo; lo leen p30:82D4, p30:836D,
;   p30:83B9, p30:82DD (7 bytes)
;   0x82ea..0x82f1  (7 bytes)
DATA_resto_82EA:
	defb 007h,001h,0ffh,000h,000h,030h,0ffh	; 82ea

; ======================================================================
; CODIGO 0x82f1..0x8420  (303 bytes)
; ======================================================================


L_82F1:
	call 041cfh		;82f1   ; subpaso 0x0D: el ordenador de a bordo hasta que se borren; los sprites fuera y el bufer a cero
	call 07320h		;82f4   ; ordenador_cuadro: el ordenador de a bordo, un cuadro
	call 041dch		;82f7   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	call 041c7h		;82fa   ; bancos_26: pone el 26 (y sus copias en 0xF0F1-3)
	call 078ach		;82fd   ; borrado_cuadro: el borrado fila a fila, cada 4 cuadros
	call 0791dh		;8300   ; borrado_sprites_cuadro: el borrado de sprites, cada 4 cuadros
	call 041dch		;8303   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ld a,(0e560h)		;8306   ; lee el borrado fila a fila en marcha
	or a			;8309
	ret nz			;830a
	call 05648h		;830b   ; sprites_fuera: los atributos de sprite de 0xEF00 a 0xE0: fuera de la pantalla
	call 05959h		;830e   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	call historia_subpaso_siguiente		;8311   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8314
L_8315:
	ld de,002f0h		;8315   ; subpaso 0x0E: a los 0x2F0, la paleta 3, los graficos de p22:B40B, el dibujo de p22:B421 (8 x 0x0A en 0xCA8B) y la secuencia 5
	call 05737h		;8318   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;831b
	call 05730h		;831c   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	ld a,003h		;831f
	call 05709h		;8321   ; paleta: la paleta A de p16:6B74
	call 041ach		;8324   ; bancos_22: pone el 22 (y sus copias en 0xF0F1-3)
	ld ix,0b40bh		;8327
	call 04cb1h		;832b   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	inc ix		;832e
	call 04d17h		;8330   ; copia_con_vuelta_ce00: copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)
	ld hl,0b421h		;8333
	ld de,0cd00h		;8336
	call 055cdh		;8339   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	call 041dch		;833c   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ld de,0ca8bh		;833f
	ld hl,0cd00h		;8342
	ld bc,0080ah		;8345
	call 059a1h		;8348   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ld a,005h		;834b
	call 04818h		;834d   ; secuencia_empieza: empieza la secuencia de dibujos A (p26:6114, con los bancos 26-27-28)
	ld hl,0c400h		;8350   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld c,0f0h		;8353
	ld a,080h		;8355
	call aparece_con_pausas		;8357   ; aparece_con_pausas: la lista HL aparece fila a fila con pausas
	call historia_subpaso_siguiente		;835a   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;835d
L_835E:
	call aparece_con_pausas_cuadro		;835e   ; subpaso 0x0F: hasta que aparezca
	ret nz			;8361
	call historia_subpaso_siguiente		;8362   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8365
L_8366:
	ld de,00580h		;8366   ; subpaso 0x10: a los 0x580, se borra
	call 05737h		;8369   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;836c
	ld hl,082eah		;836d
	call borra_fila_a_fila		;8370   ; borra_fila_a_fila: la lista HL se borra fila a fila
	call historia_subpaso_siguiente		;8373   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8376
L_8377:
	call borra_fila_a_fila_cuadro		;8377   ; subpaso 0x11: al acabar, el bufer a cero
	ret nz			;837a
	call 05959h		;837b   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	call historia_subpaso_siguiente		;837e   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;8381
L_8382:
	ld de,005f8h		;8382   ; subpaso 0x12: a los 0x5F8, la paleta 0, la secuencia 6 y la pantalla desde el trozo 0x0D (japones) o 0x2B
	call 05737h		;8385   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;8388
	call 05730h		;8389   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	xor a			;838c
	call 05709h		;838d   ; paleta: la paleta A de p16:6B74
	ld a,006h		;8390
	call 04818h		;8392   ; secuencia_empieza: empieza la secuencia de dibujos A (p26:6114, con los bancos 26-27-28)
	ld hl,0c400h		;8395   ; apunta a el bufer de la pantalla (22 filas de 0x40 bytes)
	ld c,0f0h		;8398
	call 05636h		;839a   ; bios_japonesa: Z si la BIOS es japonesa (0x002B & 0x0F = 0)
	ld a,00dh		;839d
	jr z,L_83A3		;839f
	ld a,02bh		;83a1
L_83A3:
	call aparece_con_pausas		;83a3   ; aparece_con_pausas: la lista HL aparece fila a fila con pausas
	call historia_subpaso_siguiente		;83a6   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;83a9
L_83AA:
	call aparece_con_pausas_cuadro		;83aa   ; subpaso 0x13: hasta que aparezca
	ret nz			;83ad
	call historia_subpaso_siguiente		;83ae   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;83b1
L_83B2:
	ld de,00180h		;83b2   ; subpaso 0x14: a los 0x180, se borra
	call 05737h		;83b5   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;83b8
	ld hl,082eah		;83b9
	call borra_fila_a_fila		;83bc   ; borra_fila_a_fila: la lista HL se borra fila a fila
	call historia_subpaso_siguiente		;83bf   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;83c2
L_83C3:
	call borra_fila_a_fila_cuadro		;83c3   ; subpaso 0x15: al acabar, el bufer a cero
	ret nz			;83c6
	call 05959h		;83c7   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	call historia_subpaso_siguiente		;83ca   ; historia_subpaso_siguiente: el subpaso siguiente de la historia (0xE330)
	ret			;83cd
L_83CE:
	ld de,00230h		;83ce   ; subpaso 0x16: a los 0x230, la cuenta a cero y 0xE32E = 0: la historia acabada
	call 05737h		;83d1   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega
	ret c			;83d4
	call 05730h		;83d5   ; cuenta_e339_a_cero: la cuenta de 0xE339 a cero
	xor a			;83d8
	ld (0e32eh),a		;83d9
	ret			;83dc
L_83DD:
	ld hl,0ca00h		;83dd   ; 0xCA00-0xCBFF a cero
	ld de,0ca01h		;83e0
	ld bc,001ffh		;83e3
	ld (hl),000h		;83e6
	ldir		;83e8
	ret			;83ea
historia_colores:		; los colores de la secuencia, cada 7 cuadros
	ld a,(0e5e8h)		;83eb   ; mientras la secuencia no cambie de dibujo, cada 7 cuadros el color siguiente de 0x841F en 0x0808-0x0A07, hasta el 0x13
	or a			;83ee
	jr nz,historia_colores_empiezan		;83ef
	ld hl,0e5e9h		;83f1
	ld a,(hl)			;83f4
	inc a			;83f5
	ret z			;83f6
	inc hl			;83f7
	dec (hl)			;83f8
	ret nz			;83f9
	ld (hl),007h		;83fa
	dec hl			;83fc
	inc (hl)			;83fd
	ld a,(hl)			;83fe
	cp 013h		;83ff
	jr nc,L_8413		;8401
	ld hl,l841fh		;8403
	call 04a6eh		;8406   ; lee_byte: A = el byte A de la tabla HL
	ld hl,00808h		;8409
	ld bc,00200h		;840c
	call 00056h		;840f   ; BIOS FILVRM - Fills VRAM with value
	ret			;8412
L_8413:
	ld a,0ffh		;8413   ; acabado: 0xE5E9 = 0xFF
	ld (0e5e9h),a		;8415
	ret			;8418
historia_colores_empiezan:		; los colores de la secuencia desde el principio
	ld hl,00700h		;8419   ; los colores desde el principio (0xE5E9 = 0, 7 cuadros)
	ld (0e5e9h),hl		;841c
L_841F:
	ret			;841f

; ----------------------------------------------------------------------
; DATOS leido_8420: 18 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (18 bytes)
;   0x8420..0x8432  (18 bytes)
DATA_leido_8420:
	defb 040h,050h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,050h	; 8420  @P.............P
	defb 040h,000h	; 8430

; ======================================================================
; CODIGO 0x8432..0x8483  (81 bytes)
; ======================================================================


L_8432:
	ld a,(0e335h)		;8432   ; la escena 0xE335: su lista de graficos (tabla de 0x9296) y sus copias...
	ld hl,09296h		;8435
	call 04a5ah		;8438   ; lee_palabra: HL = la palabra A de la tabla HL
	push hl			;843b
	pop ix		;843c
	call 04cb1h		;843e   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	inc ix		;8441
	call 04d17h		;8443   ; copia_con_vuelta_ce00: copia caracteres con espejo usando el bufer de 0xCE00 (lista IX)
	call L_844A		;8446
	ret			;8449
L_844A:
	ld a,(0e335h)		;844a   ; ...su dibujo (tabla de 0x8A4C) en el sitio de la tabla de 0x89D2
	ld hl,08a4ch		;844d
	call 04a5ah		;8450   ; lee_palabra: HL = la palabra A de la tabla HL
	ld de,0cd00h		;8453
	call 055cdh		;8456   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	ld a,(0e335h)		;8459
	call L_8466		;845c   ; la escena A en la tabla de 0x89D2: destino (DE), filas (B) y columnas (C)
	ld hl,0cd00h		;845f
	call 059a1h		;8462   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ret			;8465
L_8466:
	add a,a			;8466   ; la escena A en la tabla de 0x89D2: destino (DE), filas (B) y columnas (C)
	add a,a			;8467
	ld hl,089d2h		;8468
	call 04089h		;846b   ; suma_a_hl: HL = HL + A
	ld e,(hl)			;846e
	inc hl			;846f
	ld d,(hl)			;8470
	inc hl			;8471
	ld b,(hl)			;8472
	inc hl			;8473
	ld c,(hl)			;8474
	ret			;8475
L_8476:
	ld a,(0e335h)		;8476   ; C mientras la cuenta 0xE339 no llegue al tiempo de la escena (tabla de 0x8483)
	ld hl,08483h		;8479
	call 04a5ah		;847c   ; lee_palabra: HL = la palabra A de la tabla HL
	ex de,hl			;847f
	jp 05737h		;8480   ; cuenta_e339_llega: la cuenta de 0xE339 contra DE: C mientras no llega

; ----------------------------------------------------------------------
; DATOS tabla_8483: tabla que se lee desde HL = 0x8483 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p30:8479 (62 bytes)
;   0x8483..0x84c1  (62 bytes)
DATA_tabla_8483:
	defb 000h,000h,04dh,000h,052h,000h,053h,000h,051h,000h,053h,000h,052h,000h,052h,000h	; 8483  ..M.R.S.Q.S.R.R.
	defb 050h,000h,054h,000h,052h,000h,052h,000h,053h,000h,053h,000h,054h,000h,054h,000h	; 8493  P.T.R.R.S.S.T.T.
	defb 054h,000h,054h,000h,054h,000h,054h,000h,052h,000h,052h,000h,050h,000h,053h,000h	; 84a3  T.T.T.T.R.R.P.S.
	defb 054h,000h,053h,000h,052h,000h,055h,000h,053h,000h,054h,000h,054h,000h	; 84b3  T.S.R.U.S.T.T.

; ======================================================================
; CODIGO 0x84c1..0x85a3  (226 bytes)
; ======================================================================


estrellas_salen:		; las estrellas salen (p28:BC08)
	call 041cfh		;84c1   ; las estrellas salen (p28:BC08)
	call 0bc08h		;84c4   ; cada cuadro, saliendo: se mueven, sale otra y a los sprites (p28:BC08)
	call 041dch		;84c7   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ret			;84ca
L_84CB:
	call 041cfh		;84cb   ; las estrellas del fondo (p28:BE34)
	call 0be34h		;84ce   ; el RLE de 0xBE3B, con su direccion (p28:BE34)
	call 041dch		;84d1   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ret			;84d4
L_84D5:
	call 041cfh		;84d5   ; que salgan del centro (p28:BBEE)
	call 0bbeeh		;84d8
	call 041dch		;84db   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ret			;84de
L_84DF:
	call 041cfh		;84df   ; las estrellas entran (p28:BD0F)
	call 0bd0fh		;84e2   ; se mueven: las que salen de la pantalla (y desde 0xC0, x fuera) se quitan (p28:BD0F)
	call 041dch		;84e5   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ret			;84e8
L_84E9:
	call 041cfh		;84e9   ; a los sprites (p28:BDEC)
	call 0bdech		;84ec   ; las estrellas a los sprites desde 0xEF20: las que no tapa nada (IX+0B a 0) (p28:BDEC)
	call 041dch		;84ef   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ret			;84f2
aparece_con_pausas:		; la lista HL aparece fila a fila con pausas
	call 041c7h		;84f3   ; la lista HL aparece con pausas (p26:796B) con los bancos 26-28
	call 0796bh		;84f6   ; llenado_con_pausas: empieza a llenar fila a fila con pausas la lista HL con el byte C
	call 041dch		;84f9   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ret			;84fc
aparece_con_pausas_cuadro:		; lo mismo, un cuadro (NZ mientras siga)
	call 041c7h		;84fd   ; el llenado con pausas (p26:79CF); NZ mientras siga
	call 079cfh		;8500   ; llenado_con_pausas_cuadro: el llenado con pausas, un cuadro
	call 041dch		;8503   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ld a,(0e564h)		;8506   ; lee el llenado fila a fila en marcha
	or a			;8509
	ret			;850a
borra_fila_a_fila:		; la lista HL se borra fila a fila
	call 041c7h		;850b   ; se borra la lista HL fila a fila (p26:78A2)
	call 078a2h		;850e   ; borrado_empieza: empieza a borrar fila a fila la lista HL
	call 041dch		;8511   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ret			;8514
borra_fila_a_fila_cuadro:		; lo mismo, un cuadro (NZ mientras siga)
	call 041c7h		;8515   ; el borrado (p26:78AC); NZ mientras siga
	call 078ach		;8518   ; borrado_cuadro: el borrado fila a fila, cada 4 cuadros
	call 041dch		;851b   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ld a,(0e560h)		;851e   ; lee el borrado fila a fila en marcha
	or a			;8521
	ret			;8522
L_8523:
	ld a,001h		;8523   ; el titulo: 0xE32B = 1, la paleta, el borde negro, la pantalla en blanco y p30:874B
	ld (0e32bh),a		;8525
	call 05718h		;8528   ; paleta_de_la_fase: la paleta de p16:67AE
	ld b,0e0h		;852b
	call 04c40h		;852d   ; color_del_borde: B al registro 7 del VDP
	call 04aa9h		;8530   ; pantalla_en_blanco: borra la tabla de nombres (0x3800)
	call L_874B		;8533   ; los colores y los dibujos a cero (0x1800 bytes cada uno)
	call 05648h		;8536   ; sprites_fuera: los atributos de sprite de 0xEF00 a 0xE0: fuera de la pantalla
	call 05de9h		;8539   ; sprites_a_vram_tal_cual: los 32 sprites a la VRAM (0x3B00) tal cual
	call 05636h		;853c   ; con la BIOS internacional, el titulo de p22:A906 y el dibujo de 0x887A (0x0A x 0x18 en 0xCA84) y 12 bytes de 0x89CA en 0xCA4A
	jr z,L_8575		;853f
	call 041ach		;8541   ; bancos_22: pone el 22 (y sus copias en 0xF0F1-3)
	ld ix,0a906h		;8544
	call 04cb1h		;8548   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	call 041dch		;854b   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	call 05959h		;854e   ; bufer_ca00_a_cero: el bufer de 0xCA00 a cero (0x300 bytes)
	ld hl,0887ah		;8551
	ld de,0e800h		;8554   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;8557   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	ld hl,0e800h		;855a   ; apunta a los enemigos (12 de 0x40)
	ld de,0ca84h		;855d
	ld bc,00a18h		;8560
	call 059a1h		;8563   ; copia_rectangulo: copia B filas de C bytes de HL a DE (filas de 0x20)
	ld hl,089cah		;8566
	ld de,0ca4ah		;8569
	ld bc,0000ch		;856c
	ldir		;856f
	call 05985h		;8571   ; bufer_a_vram: el bufer de 0xCA00 a la tabla de nombres, la pantalla entera
	ret			;8574
L_8575:
	call 041ach		;8575   ; con la japonesa, el de p22:A8D8, sus copias (A8F1), los sprites de p22:AEC6 y p00:5669
	ld ix,0a8d8h		;8578
	call 04cb1h		;857c   ; carga_graficos: carga la lista de graficos de IX (RLE a los tercios)
	ld ix,0a8f1h		;857f
	call 04d1bh		;8583   ; copia_con_vuelta: copia caracteres de la VRAM dandoles la vuelta (lista IX)
	ld hl,01800h		;8586
	ld de,0aec6h		;8589
	call 04b3ch		;858c   ; rle_a_vram: descomprime a la VRAM de HL el RLE de DE
	call 041dch		;858f   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	call 05669h		;8592   ; bufer_c400_a_cero: el bufer de 0xC400 a cero (0x580 bytes)
	ret			;8595
L_8596:
	call 05de9h		;8596   ; el titulo, cada cuadro: los sprites y el bufer a la VRAM; por el paso (0xE32B)
	call 05dfbh		;8599   ; bufer_c400_a_vram: el bufer de 0xC400 a la tabla de nombres (22 filas)
	ld a,(0e32bh)		;859c
	dec a			;859f
	call 04093h		;85a0   ; despacha: salta a la palabra A de la tabla que va detras del call

; ----------------------------------------------------------------------
; DATOS tabla_85A3: 13 destinos del despachador p00:4093 (call en p30:85A0, el
;   indice en A): 85BD, 85D3, 860A, 8649, 866F, 8680, 8690, 86C2, 86D1, 86E0,
;   86EF, 8701, 870F; lo leen p30:85A0 (26 bytes)
;   0x85a3..0x85bd  (26 bytes)
DATA_tabla_85A3:
	defw 085bdh,085d3h,0860ah,08649h,0866fh,08680h,08690h,086c2h	; 85a3
	defw 086d1h,086e0h,086efh,08701h,0870fh	; 85b3

; ======================================================================
; CODIGO 0x85bd..0x866b  (174 bytes)
; ======================================================================


L_85BD:
	ld hl,0c4e0h		;85bd   ; paso 1: las dos mitades del logo en 0xEBB0 (0xC4E0) y 0xEBB2 (0xC535), 0x0C pasos
	ld (0ebb0h),hl		;85c0
	ld hl,0c535h		;85c3
	ld (0ebb2h),hl		;85c6
	ld a,00ch		;85c9
	ld (0e331h),a		;85cb
L_85CE:
	ld hl,0e32bh		;85ce
	inc (hl)			;85d1
	ret			;85d2
L_85D3:
	call L_8791		;85d3   ; paso 2: p30:8791; la mitad de arriba 4 a la izquierda y la de abajo 4 a la derecha...
	ld hl,(0ebb0h)		;85d6
	dec hl			;85d9
	dec hl			;85da
	dec hl			;85db
	dec hl			;85dc
	ld (0ebb0h),hl		;85dd
	ex de,hl			;85e0
	ld hl,088c0h		;85e1
	ld bc,00210h		;85e4
	call L_882F		;85e7   ; copia B filas de C bytes de HL a DE, con filas de 0x40
	ld hl,(0ebb2h)		;85ea
	inc hl			;85ed
	inc hl			;85ee
	inc hl			;85ef
	inc hl			;85f0
	ld (0ebb2h),hl		;85f1
	ex de,hl			;85f4
	ld hl,088e0h		;85f5
	ld bc,00706h		;85f8
	call L_882F		;85fb   ; copia B filas de C bytes de HL a DE, con filas de 0x40
	ld hl,0e331h		;85fe   ; ...cada 6 cuadros: al acabar, al paso 3
	dec (hl)			;8601
	ret nz			;8602
	ld a,006h		;8603
	ld (0e331h),a		;8605
	jr L_85CE		;8608
L_860A:
	call L_8791		;860a   ; paso 3: la de arriba vuelve 4 a la derecha y la de abajo 4 a la izquierda...
	ld hl,(0ebb0h)		;860d
	inc hl			;8610
	inc hl			;8611
	inc hl			;8612
	inc hl			;8613
	ld (0ebb0h),hl		;8614
	ex de,hl			;8617
	ld hl,088c0h		;8618
	ld bc,00210h		;861b
	call L_882F		;861e   ; copia B filas de C bytes de HL a DE, con filas de 0x40
	ld hl,(0ebb2h)		;8621
	dec hl			;8624
	dec hl			;8625
	dec hl			;8626
	dec hl			;8627
	ld (0ebb2h),hl		;8628
	ex de,hl			;862b
	ld hl,088e0h		;862c
	ld bc,00706h		;862f
	call L_882F		;8632   ; copia B filas de C bytes de HL a DE, con filas de 0x40
	ld hl,0e331h		;8635   ; ...al acabar, el caracter 0x0A en 0xC50E, la orden 0x83 y el sonido 0x51, y 0x1E cuadros
	dec (hl)			;8638
	ret nz			;8639
	ld a,00ah		;863a
	ld (0c50eh),a		;863c
	call 0591eh		;863f   ; orden_83_y_sonido_51: manda la orden 0x83 al motor y pide el sonido 0x51
	ld a,01eh		;8642
	ld (0e331h),a		;8644
	jr L_85CE		;8647
L_8649:
	call L_875F		;8649   ; paso 4: el color cambia (p30:875F); al acabar, el dibujo de 0x890A (6 x 6 en 0xC74D), el color 0xF0 y la aparicion de 0x866B
	ld hl,0e331h		;864c
	dec (hl)			;864f
	ret nz			;8650
	ld hl,0890ah		;8651
	ld de,0c74dh		;8654
	ld bc,00606h		;8657
	call L_882F		;865a   ; copia B filas de C bytes de HL a DE, con filas de 0x40
	ld a,0f0h		;865d
	call L_876E		;865f
	ld hl,0866bh		;8662
	call 05ed4h		;8665   ; aparicion_empieza: empieza la aparicion poco a poco de las listas de HL
	jp L_85CE		;8668

; ----------------------------------------------------------------------
; DATOS leido_866B: 4 bytes que lee p00:5EDA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:5EDA (4 bytes)
;   0x866b..0x866f  (4 bytes)
DATA_leido_866B:
	defb 0fah,0a8h,001h,0a9h	; 866b

; ======================================================================
; CODIGO 0x866f..0x86b2  (67 bytes)
; ======================================================================


L_866F:
	call 041ach		;866f   ; paso 5: la aparicion poco a poco (p00:5EEC) hasta acabar
	call 05eech		;8672   ; aparicion_cuadro: la aparicion poco a poco, un cuadro
	call 041dch		;8675   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ld a,(0e518h)		;8678   ; lee la aparicion poco a poco en marcha (1 o 2)
	or a			;867b
	ret nz			;867c
	jp L_85CE		;867d
L_8680:
	xor a			;8680   ; paso 6: la cuenta a 0 y el dibujo de 0x893B en 0xE800
	ld (0ebb4h),a		;8681
	ld hl,0893bh		;8684
	ld de,0e800h		;8687   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;868a   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	jp L_85CE		;868d
L_8690:
	call L_87A6		;8690   ; paso 7: cada 2 cuadros una columna mas de las letras (p30:87A6); al acabar, 0x1520-0x1697 a cero, el dibujo de abajo y lo de 0x86B2 aparece
	ret c			;8693
	ld hl,01520h		;8694
	ld bc,00178h		;8697
	xor a			;869a
	call 00056h		;869b   ; BIOS FILVRM - Fills VRAM with value
	ld hl,0c888h		;869e
	ld (0ebb0h),hl		;86a1
	call L_8805		;86a4   ; el dibujo de abajo (p30:892E en 0xE800): dos bytes en 0xEBB0 + 0x0E y 3 x 0x10 una fila mas abajo
	ld hl,086b2h		;86a7
	ld c,080h		;86aa
	call L_8733		;86ac   ; la lista HL aparece fila a fila con el byte C (p26:7978)
	jp L_85CE		;86af

; ----------------------------------------------------------------------
; DATOS leido_86B2: 1 bytes que lee p26:7988 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p26:7988 (1 bytes)
;   0x86b2..0x86b3  (1 bytes)
DATA_leido_86B2:
	defb 001h	; 86b2

; ----------------------------------------------------------------------
; DATOS leido_86B3: 15 bytes que leen p26:79C1, p26:79B7, p26:7988 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p26:79C1, p26:79B7, p26:7988
;   (15 bytes)
;   0x86b3..0x86c2  (15 bytes)
DATA_leido_86B3:
	defb 0a4h,002h,000h,001h,0a6h,010h,000h,001h,0b6h,00dh,000h,001h,0c3h,010h,000h	; 86b3  ...............

; ======================================================================
; CODIGO 0x86c2..0x8781  (191 bytes)
; ======================================================================


L_86C2:
	call L_873D		;86c2   ; paso 8: al acabar, lo de 0x86B6
	ret nz			;86c5
	ld hl,086b6h		;86c6
	ld c,080h		;86c9
	call L_8733		;86cb   ; la lista HL aparece fila a fila con el byte C (p26:7978)
	jp L_85CE		;86ce
L_86D1:
	call L_873D		;86d1   ; paso 9: lo de 0x86BA
	ret nz			;86d4
	ld hl,086bah		;86d5
	ld c,080h		;86d8
	call L_8733		;86da   ; la lista HL aparece fila a fila con el byte C (p26:7978)
	jp L_85CE		;86dd
L_86E0:
	call L_873D		;86e0   ; paso 0x0A: lo de 0x86BE
	ret nz			;86e3
	ld hl,086beh		;86e4
	ld c,080h		;86e7
	call L_8733		;86e9   ; la lista HL aparece fila a fila con el byte C (p26:7978)
	jp L_85CE		;86ec
L_86EF:
	call L_873D		;86ef   ; paso 0x0B: al acabar, 12 bytes de 0x89CA en 0xC44A
	ret nz			;86f2
	ld hl,089cah		;86f3
	ld de,0c44ah		;86f6
	ld bc,0000ch		;86f9
	ldir		;86fc
	jp L_85CE		;86fe
L_8701:
	ld a,006h		;8701   ; paso 0x0C: 6 pasos desde 0xC888
	ld (0ebb4h),a		;8703
	ld hl,0c888h		;8706
	ld (0ebb0h),hl		;8709
	jp L_85CE		;870c
L_870F:
	ld de,(0ebb0h)		;870f   ; paso 0x0D: el dibujo de abajo sube una fila por cuadro (4 x 0x10); a los 6, el bufer a la VRAM y 0xE32B = 0: acabado
	ld bc,00410h		;8713
	call L_8855		;8716   ; borra B filas de C bytes desde DE, con filas de 0x40
	ld hl,(0ebb0h)		;8719
	ld de,0ffc0h		;871c
	add hl,de			;871f
	ld (0ebb0h),hl		;8720
	call L_8805		;8723   ; el dibujo de abajo (p30:892E en 0xE800): dos bytes en 0xEBB0 + 0x0E y 3 x 0x10 una fila mas abajo
	ld hl,0ebb4h		;8726
	dec (hl)			;8729
	ret nz			;872a
	call 05dfbh		;872b   ; bufer_c400_a_vram: el bufer de 0xC400 a la tabla de nombres (22 filas)
	xor a			;872e
	ld (0e32bh),a		;872f
	ret			;8732
L_8733:
	call 041c7h		;8733   ; la lista HL aparece fila a fila con el byte C (p26:7978)
	call 07978h		;8736   ; llenado_empieza: empieza a llenar fila a fila la lista HL con el byte C
	call 041dch		;8739   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ret			;873c
L_873D:
	call 041c7h		;873d   ; el llenado (p26:7A3D); NZ mientras siga
	call 07a3dh		;8740   ; llenado_cuadro: el llenado fila a fila, cada 4 cuadros
	call 041dch		;8743   ; bancos_30_31: pone los bancos 30-31 (y sus copias en 0xF0F1-3)
	ld a,(0e564h)		;8746   ; lee el llenado fila a fila en marcha
	or a			;8749
	ret			;874a
L_874B:
	xor a			;874b   ; los colores y los dibujos a cero (0x1800 bytes cada uno)
	ld hl,02000h		;874c
	ld bc,01800h		;874f
	call 00056h		;8752   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00000h		;8755
	ld bc,01800h		;8758
	call 00056h		;875b   ; BIOS FILVRM - Fills VRAM with value
	ret			;875e
L_875F:
	ld a,(0e303h)		;875f   ; el color de la cuenta & 0x0F (tabla de 0x8781)...
	and 00fh		;8762
	ld hl,08781h		;8764
	call 04a6eh		;8767   ; lee_byte: A = el byte A de la tabla HL
	call L_876E		;876a
	ret			;876d
L_876E:
	ld hl,00040h		;876e   ; ...en 0x0040-0x016F y 0x0840-0x096F
	ld bc,00130h		;8771
	call 00056h		;8774   ; BIOS FILVRM - Fills VRAM with value
	ld hl,00840h		;8777
	ld bc,00130h		;877a
	call 00056h		;877d   ; BIOS FILVRM - Fills VRAM with value
	ret			;8780

; ----------------------------------------------------------------------
; DATOS tabla_8781: tabla que se lee desde HL = 0x8781 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p30:8764 (16 bytes)
;   0x8781..0x8791  (16 bytes)
DATA_tabla_8781:
	defb 0f0h,0e0h,050h,040h,040h,050h,0e0h,0f0h,0f0h,0e0h,090h,080h,060h,080h,090h,0e0h	; 8781  ..P@@P......`...

; ======================================================================
; CODIGO 0x8791..0x887a  (233 bytes)
; ======================================================================


L_8791:
	ld de,(0ebb0h)		;8791   ; borra las dos mitades: 2 x 0x10 en 0xEBB0 y 7 x 6 en 0xEBB2
	ld bc,00210h		;8795
	call L_8855		;8798   ; borra B filas de C bytes desde DE, con filas de 0x40
	ld de,(0ebb2h)		;879b
	ld bc,00706h		;879f
	call L_8855		;87a2   ; borra B filas de C bytes desde DE, con filas de 0x40
	ret			;87a5
L_87A6:
	ld a,(0e303h)		;87a6   ; cada 2 cuadros (C los otros): la columna 0xEBB4 de las letras de 0xE80D en 0xC5CF...
	and 001h		;87a9
	scf			;87ab
	ret nz			;87ac
	ld a,(0ebb4h)		;87ad
	ld c,a			;87b0
	ld b,000h		;87b1
	ld hl,0c5cfh		;87b3
	or a			;87b6
	sbc hl,bc		;87b7
	ex de,hl			;87b9
	or a			;87ba
	ld hl,0e80dh		;87bb
	sbc hl,bc		;87be
	call L_87F1		;87c0   ; una columna: 6 filas de la tabla (0x1C por fila) al bufer (0x40), sin los 0
	ld a,(0ebb4h)		;87c3   ; ...y la de 0xE80E en 0xC5D0, hacia los lados
	ld b,a			;87c6
	ld hl,0e80eh		;87c7
	call 04089h		;87ca   ; suma_a_hl: HL = HL + A
	ld a,b			;87cd
	ld de,0c5d0h		;87ce
	call 0408eh		;87d1   ; suma_a_de: DE = DE + A
	call L_87F1		;87d4   ; una columna: 6 filas de la tabla (0x1C por fila) al bufer (0x40), sin los 0
	ld a,(0ebb4h)		;87d7   ; en la columna 2, seis sprites de 0x89B2
	cp 002h		;87da
	jr nz,L_87E9		;87dc
	ld hl,089b2h		;87de
	ld de,0ef00h		;87e1   ; apunta a los atributos de sprite (32 x 4)
	ld bc,00018h		;87e4
	ldir		;87e7
L_87E9:
	ld hl,0ebb4h		;87e9   ; la columna siguiente; NC al llegar a la 0x0E
	inc (hl)			;87ec
	ld a,(hl)			;87ed
	cp 00eh		;87ee
	ret			;87f0
L_87F1:
	ld b,006h		;87f1   ; una columna: 6 filas de la tabla (0x1C por fila) al bufer (0x40), sin los 0
L_87F3:
	ld a,(hl)			;87f3
	or a			;87f4
	jr z,L_87F8		;87f5
	ld (de),a			;87f7
L_87F8:
	ld a,01ch		;87f8
	call 04089h		;87fa   ; suma_a_hl: HL = HL + A
	ld a,040h		;87fd
	call 0408eh		;87ff   ; suma_a_de: DE = DE + A
	djnz L_87F3		;8802
	ret			;8804
L_8805:
	ld hl,0892eh		;8805   ; el dibujo de abajo (p30:892E en 0xE800): dos bytes en 0xEBB0 + 0x0E y 3 x 0x10 una fila mas abajo
	ld de,0e800h		;8808   ; apunta a los enemigos (12 de 0x40)
	call 055cdh		;880b   ; rle2_a_ram: descomprime a la RAM de DE el segundo formato de HL
	ld hl,(0ebb0h)		;880e
	ld de,0000eh		;8811
	add hl,de			;8814
	ex de,hl			;8815
	ld hl,0e800h		;8816   ; apunta a los enemigos (12 de 0x40)
	ldi		;8819
	ldi		;881b
	ld hl,(0ebb0h)		;881d
	ld de,00040h		;8820
	add hl,de			;8823
	ex de,hl			;8824
	ld hl,0e802h		;8825
	ld bc,00310h		;8828
	call L_882F		;882b   ; copia B filas de C bytes de HL a DE, con filas de 0x40
	ret			;882e
L_882F:
	ld a,b			;882f   ; copia B filas de C bytes de HL a DE, con filas de 0x40
	exx			;8830
	ld b,a			;8831
	exx			;8832
	ld b,000h		;8833
	ld (0ef80h),bc		;8835
	ld (0ef82h),de		;8839
L_883D:
	ld bc,(0ef80h)		;883d   ; una fila: C bytes
	ldir		;8841
	ex de,hl			;8843
	ld hl,(0ef82h)		;8844   ; la fila siguiente del destino (0x40)
	ld bc,00040h		;8847
	add hl,bc			;884a
	ld (0ef82h),hl		;884b
	ex de,hl			;884e
	exx			;884f   ; B filas
	dec b			;8850
	exx			;8851
	jr nz,L_883D		;8852
	ret			;8854
L_8855:
	ld a,b			;8855   ; borra B filas de C bytes desde DE, con filas de 0x40
	exx			;8856
	ld b,a			;8857
	exx			;8858
	ld (0ef80h),bc		;8859
	ex de,hl			;885d
	ld (0ef82h),hl		;885e
	ld de,00040h		;8861
L_8864:
	ld a,(0ef80h)		;8864
	ld b,a			;8867
	xor a			;8868
L_8869:
	ld (hl),a			;8869   ; la fila a cero
	inc hl			;886a
	djnz L_8869		;886b
	ld hl,(0ef82h)		;886d   ; la fila siguiente (0x40)
	add hl,de			;8870
	ld (0ef82h),hl		;8871
	exx			;8874   ; B filas
	dec b			;8875
	exx			;8876
	jr nz,L_8864		;8877
	ret			;8879

; ----------------------------------------------------------------------
; DATOS rle_ram2_887A: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (70
;   bytes)
;   0x887a..0x88c0  (70 bytes)
DATA_rle_ram2_887A:
	defb 004h,000h,047h,039h,043h,03ch,044h,040h,0c2h,03ah,045h,00ah,000h,045h,008h,042h	; 887a  ..G9C<D@.:E..E.B
	defb 009h,045h,00dh,00ch,000h,044h,012h,0c1h,036h,047h,013h,010h,000h,042h,046h,0c2h	; 888a  .E...D..6G...BF.
	defb 047h,049h,014h,000h,044h,04ah,014h,000h,043h,04eh,0c1h,01ah,014h,000h,042h,01bh	; 889a  GI..DJ..CN....B.
	defb 042h,01ch,022h,000h,04ah,051h,0c1h,054h,046h,05bh,0c1h,053h,042h,061h,0c2h,044h	; 88aa  B.".JQ.TF[.SBa.D
	defb 048h,042h,037h,058h,01eh,000h	; 88ba

; ----------------------------------------------------------------------
; DATOS leido_88C0: 110 bytes que lee p30:8841 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p30:8841 (110 bytes)
;   0x88c0..0x892e  (110 bytes)
DATA_leido_88C0:
	defb 012h,013h,014h,008h,008h,008h,008h,008h,008h,008h,008h,008h,008h,024h,023h,022h	; 88c0  .............$#"
	defb 000h,000h,015h,009h,009h,009h,009h,009h,009h,009h,009h,009h,009h,025h,000h,000h	; 88d0  .............%..
	defb 000h,00bh,000h,000h,000h,000h,00ch,00dh,000h,000h,000h,000h,016h,019h,000h,00eh	; 88e0  ................
	defb 01bh,01ch,016h,019h,000h,00fh,01dh,026h,016h,019h,000h,000h,029h,026h,016h,018h	; 88f0  .......&....)&..
	defb 01ah,01ah,028h,026h,017h,02bh,02bh,02bh,02bh,027h,030h,03dh,03eh,04eh,04dh,040h	; 8900  ..(&.++++'0=>NM@
	defb 031h,033h,03ah,04ah,043h,041h,035h,034h,03ch,04ch,044h,045h,036h,03bh,032h,042h	; 8910  13:JCA54<LDE6.2B
	defb 04bh,046h,000h,039h,037h,047h,049h,000h,000h,000h,038h,048h,000h,000h	; 8920  KF.97GI...8H..

; ----------------------------------------------------------------------
; DATOS rle_ram2_892E: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (13
;   bytes)
;   0x892e..0x893b  (13 bytes)
DATA_rle_ram2_892E:
	defb 052h,0a4h,0c3h,000h,0b6h,000h,045h,0b7h,0c1h,000h,057h,0bch,000h	; 892e  R.....E...W..

; ----------------------------------------------------------------------
; DATOS rle_ram2_893B: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (119
;   bytes)
;   0x893b..0x89b2  (119 bytes)
DATA_rle_ram2_893B:
	defb 004h,000h,0c3h,05bh,05fh,073h,015h,000h,0c1h,06dh,003h,06ah,0c4h,069h,072h,074h	; 893b  ...[_s...m.j.irt
	defb 06ch,002h,06ah,0c7h,06bh,056h,019h,000h,00fh,01dh,026h,002h,000h,044h,084h,044h	; 894b  l.j.kV....&..D.D
	defb 094h,002h,000h,044h,075h,0c2h,05ch,06eh,042h,079h,0c4h,076h,07bh,060h,050h,082h	; 895b  ...Du.\nBy.v{`P.
	defb 071h,0c2h,052h,054h,002h,000h,044h,088h,044h,098h,0c1h,000h,082h,05ah,082h,059h	; 896b  q.RT..D.D....Z.Y
	defb 0c1h,07ch,042h,063h,0cah,05eh,059h,057h,07dh,05dh,06fh,051h,053h,055h,026h,042h	; 897b  .|Bc.^YW}]oQSU&B
	defb 080h,044h,08ch,044h,09ch,0c2h,000h,062h,002h,067h,0c2h,065h,07eh,002h,000h,083h	; 898b  .D.D...b.g.e~...
	defb 068h,0c2h,07fh,061h,042h,010h,002h,02bh,0c1h,027h,042h,082h,044h,090h,044h,0a0h	; 899b  h..aB..+.'B.D.D.
	defb 01ah,000h,042h,0d3h,0c1h,000h,000h	; 89ab

; ----------------------------------------------------------------------
; DATOS leido_89B2: 24 bytes que lee p30:87E7 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p30:87E7 (24 bytes)
;   0x89b2..0x89ca  (24 bytes)
DATA_leido_89B2:
	defb 03bh,070h,000h,008h,03bh,070h,00ch,001h,055h,070h,004h,008h,055h,070h,014h,006h	; 89b2  .p...p..Up..Up..
	defb 04fh,090h,008h,008h,04fh,090h,010h,001h	; 89c2  O...O...

; ----------------------------------------------------------------------
; DATOS leido_89CA: 8 bytes que lee p30:856F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p30:856F (8 bytes)
;   0x89ca..0x89d2  (8 bytes)
DATA_leido_89CA:
	defb 001h,002h,003h,004h,005h,006h,007h,000h	; 89ca  ........

; ----------------------------------------------------------------------
; DATOS tabla_89D2: tabla que se lee desde HL = 0x89D2 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p30:8468 (4 bytes)
;   0x89d2..0x89d6  (4 bytes)
DATA_tabla_89D2:
	defb 0e0h,0e1h,0e2h,0e3h	; 89d2

; ----------------------------------------------------------------------
; DATOS leido_89D6: 118 bytes que leen p30:846E, p30:8470, p30:8472, p30:8474
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p30:846E, p30:8470, p30:8472, p30:8474 (118 bytes)
;   0x89d6..0x8a4c  (118 bytes)
DATA_leido_89D6:
	defb 009h,0cbh,008h,00eh,001h,0cah,008h,00fh,003h,0cbh,008h,00ah,00fh,0cah,008h,010h	; 89d6  ................
	defb 013h,0cch,008h,00ah,003h,0cch,008h,007h,014h,0cbh,008h,00ah,009h,0cah,008h,00bh	; 89e6  ................
	defb 004h,0cch,007h,00fh,002h,0cbh,008h,009h,010h,0cbh,008h,00ch,021h,0cah,006h,009h	; 89f6  ............!...
	defb 006h,0cbh,008h,004h,011h,0cah,008h,009h,008h,0cch,007h,00ah,015h,0cbh,008h,008h	; 8a06  ................
	defb 033h,0cch,006h,00ah,022h,0cah,006h,009h,013h,0cbh,008h,00bh,002h,0cch,008h,00dh	; 8a16  3..."...........
	defb 028h,0cbh,007h,006h,013h,0cah,008h,00bh,009h,0cbh,008h,00dh,00ch,0cah,008h,009h	; 8a26  (...............
	defb 012h,0cch,008h,00ch,002h,0cch,008h,00eh,014h,0cah,008h,00bh,001h,0cah,008h,00bh	; 8a36  ................
	defb 048h,0cbh,004h,010h,02bh,0cbh	; 8a46

; ----------------------------------------------------------------------
; DATOS tabla_8A4C: tabla que se lee desde HL = 0x8A4C con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p30:844D (1 bytes)
;   0x8a4c..0x8a4d  (1 bytes)
DATA_tabla_8A4C:
	defb 006h	; 8a4c

; ----------------------------------------------------------------------
; DATOS leido_8A4D: 1 bytes que lee p30:8474 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p30:8474 (1 bytes)
;   0x8a4d..0x8a4e  (1 bytes)
DATA_leido_8A4D:
	defb 00bh	; 8a4d

; ----------------------------------------------------------------------
; DATOS leido_8A4E: 60 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (60 bytes)
;   0x8a4e..0x8a8a  (60 bytes)
DATA_leido_8A4E:
	defb 0f9h,091h,0d2h,090h,0a1h,091h,031h,091h,00ah,08fh,08ah,08ah,04bh,092h,046h,08fh	; 8a4e  ......1.....K.F.
	defb 0bfh,08ah,027h,08bh,064h,08bh,09ch,08bh,060h,090h,0b8h,08bh,0fdh,08bh,048h,08ch	; 8a5e  ..'.d...`.....H.
	defb 072h,08ch,09bh,08fh,0a1h,08ch,082h,090h,0cah,08fh,0f2h,08ch,03eh,08dh,0a6h,08dh	; 8a6e  r...........>...
	defb 0e3h,08dh,0edh,08fh,036h,08eh,075h,08eh,0bch,08eh,0edh,08eh	; 8a7e  ....6.u.....

; ----------------------------------------------------------------------
; DATOS rle_ram2_8A8A: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (53
;   bytes)
;   0x8a8a..0x8abf  (53 bytes)
DATA_rle_ram2_8A8A:
	defb 002h,000h,0c3h,007h,001h,01bh,002h,000h,043h,008h,0c1h,000h,083h,01eh,043h,00bh	; 8a8a  ........C.....C.
	defb 0c1h,000h,083h,021h,043h,00eh,0c1h,002h,083h,024h,043h,011h,0c1h,003h,083h,027h	; 8a9a  ...!C....$C....'
	defb 043h,014h,0c1h,004h,083h,02ah,043h,017h,0c1h,005h,083h,02dh,002h,000h,0c3h,01ah	; 8aaa  C....*C....-....
	defb 006h,02eh,002h,000h,000h	; 8aba

; ----------------------------------------------------------------------
; DATOS rle_ram2_8ABF: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (104
;   bytes)
;   0x8abf..0x8b27  (104 bytes)
DATA_rle_ram2_8ABF:
	defb 042h,002h,042h,000h,002h,000h,082h,001h,043h,00ch,002h,000h,082h,019h,042h,004h	; 8abf  B.B.....C.....B.
	defb 042h,000h,002h,000h,082h,001h,043h,00fh,002h,000h,082h,01bh,042h,006h,0c1h,000h	; 8acf  B.....C.....B...
	defb 083h,024h,004h,000h,0c1h,012h,002h,000h,082h,01dh,042h,008h,0c1h,000h,083h,027h	; 8adf  .$........B....'
	defb 0c4h,000h,013h,000h,013h,003h,000h,082h,01fh,0c4h,00ah,007h,000h,028h,002h,000h	; 8aef  .............(..
	defb 0c1h,014h,006h,000h,0c7h,01dh,020h,00bh,009h,000h,016h,000h,042h,014h,042h,000h	; 8aff  ...... .....B.B.
	defb 002h,000h,082h,001h,0c8h,01fh,021h,00ah,007h,000h,017h,000h,015h,002h,000h,082h	; 8b0f  ......!.........
	defb 001h,042h,000h,0c3h,000h,01dh,020h,000h	; 8b1f  .B.... .

; ----------------------------------------------------------------------
; DATOS rle_ram2_8B27: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (61
;   bytes)
;   0x8b27..0x8b64  (61 bytes)
DATA_rle_ram2_8B27:
	defb 044h,010h,044h,010h,0c1h,010h,006h,000h,042h,001h,0c1h,000h,042h,003h,004h,004h	; 8b27  D.D.....B...B...
	defb 042h,009h,0c2h,014h,000h,042h,006h,003h,000h,042h,00bh,0c1h,00fh,004h,000h,082h	; 8b37  B....B...B......
	defb 001h,042h,00dh,0c1h,015h,003h,000h,0c1h,008h,003h,000h,0c2h,005h,01ah,042h,000h	; 8b47  .B............B.
	defb 004h,000h,082h,001h,0c1h,000h,044h,016h,044h,016h,0c1h,016h,000h	; 8b57  ......D.D....

; ----------------------------------------------------------------------
; DATOS rle_ram2_8B64: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (56
;   bytes)
;   0x8b64..0x8b9c  (56 bytes)
DATA_rle_ram2_8B64:
	defb 044h,001h,042h,001h,046h,005h,007h,000h,045h,00bh,007h,000h,043h,010h,003h,000h	; 8b64  D.B.F...E...C...
	defb 042h,013h,0c2h,000h,015h,002h,000h,043h,016h,002h,000h,0c1h,019h,006h,000h,043h	; 8b74  B......C.......C
	defb 023h,003h,000h,0c1h,01ah,005h,000h,043h,020h,009h,000h,043h,027h,002h,000h,045h	; 8b84  #......C ..C'..E
	defb 01bh,0c1h,026h,045h,01bh,0c1h,026h,000h	; 8b94  ..&E..&.

; ----------------------------------------------------------------------
; DATOS rle_ram2_8B9C: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (28
;   bytes)
;   0x8b9c..0x8bb8  (28 bytes)
DATA_rle_ram2_8B9C:
	defb 047h,002h,042h,000h,048h,009h,0c2h,000h,017h,002h,000h,046h,011h,0c3h,000h,017h	; 8b9c  G.B.H......F....
	defb 000h,046h,027h,048h,01fh,0c1h,001h,047h,018h,082h,001h,000h	; 8bac  .F'H...G....

; ----------------------------------------------------------------------
; DATOS rle_ram2_8BB8: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (69
;   bytes)
;   0x8bb8..0x8bfd  (69 bytes)
DATA_rle_ram2_8BB8:
	defb 044h,002h,042h,023h,0c1h,01eh,082h,02dh,0c1h,02ah,002h,000h,082h,001h,0c3h,025h	; 8bb8  D.B#...-.*.....%
	defb 01fh,02eh,002h,000h,042h,006h,002h,000h,0c4h,026h,01ah,02fh,001h,042h,006h,002h	; 8bc8  ....B....&./.B..
	defb 000h,045h,008h,002h,000h,047h,00dh,0c1h,000h,042h,014h,0c1h,000h,044h,016h,0c1h	; 8bd8  .E...G...B...D..
	defb 000h,043h,01bh,0c8h,007h,000h,027h,021h,030h,000h,020h,02bh,042h,000h,042h,028h	; 8be8  .C....'!0. +B.B(
	defb 0c1h,022h,082h,032h,000h	; 8bf8

; ----------------------------------------------------------------------
; DATOS rle_ram2_8BFD: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (75
;   bytes)
;   0x8bfd..0x8c48  (75 bytes)
DATA_rle_ram2_8BFD:
	defb 0c1h,001h,043h,003h,0c1h,021h,003h,000h,082h,001h,0c1h,000h,046h,006h,042h,00bh	; 8bfd  ..C..!......F.B.
	defb 0c1h,00bh,082h,001h,0c1h,001h,043h,00dh,042h,00eh,0c2h,020h,00fh,042h,000h,042h	; 8c0d  ......C.B.. .B.B
	defb 010h,042h,011h,002h,012h,042h,013h,0c1h,002h,042h,00bh,0c2h,00bh,022h,042h,000h	; 8c1d  .B...B...B..."B.
	defb 0c1h,000h,042h,015h,0c5h,00dh,00fh,020h,00fh,017h,002h,000h,0c2h,001h,015h,044h	; 8c2d  ..B.... .......D
	defb 018h,0c1h,01ah,042h,01ch,0c4h,01ah,01eh,019h,01fh,000h	; 8c3d  ...B.......

; ----------------------------------------------------------------------
; DATOS rle_ram2_8C48: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (42
;   bytes)
;   0x8c48..0x8c72  (42 bytes)
DATA_rle_ram2_8C48:
	defb 046h,001h,0c2h,000h,007h,046h,00bh,0c2h,000h,008h,046h,01eh,042h,009h,045h,011h	; 8c48  F....F....F.B.E.
	defb 0c1h,000h,042h,019h,046h,001h,042h,026h,002h,000h,043h,016h,002h,000h,0c1h,025h	; 8c58  ..B.F.B&..C....%
	defb 046h,01eh,0c2h,000h,024h,045h,011h,043h,01bh,000h	; 8c68  F...$E.C..

; ----------------------------------------------------------------------
; DATOS rle_ram2_8C72: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (47
;   bytes)
;   0x8c72..0x8ca1  (47 bytes)
DATA_rle_ram2_8C72:
	defb 042h,000h,0c1h,004h,003h,000h,042h,002h,042h,000h,082h,001h,0c1h,000h,045h,004h	; 8c72  B.....B.B.....E.
	defb 082h,001h,043h,009h,0c1h,000h,045h,00ch,0c1h,00fh,04ah,011h,002h,000h,044h,01bh	; 8c82  ..C...E...J...D.
	defb 082h,001h,002h,000h,082h,001h,042h,000h,042h,000h,002h,000h,082h,001h,000h	; 8c92  ......B.B......

; ----------------------------------------------------------------------
; DATOS rle_ram2_8CA1: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (81
;   bytes)
;   0x8ca1..0x8cf2  (81 bytes)
DATA_rle_ram2_8CA1:
	defb 047h,002h,044h,002h,0c3h,000h,009h,00ch,042h,00ah,002h,00dh,0c8h,000h,009h,00ch	; 8ca1  G.D.....B.......
	defb 00ah,001h,013h,00eh,01fh,042h,000h,0cbh,00fh,000h,013h,00eh,01fh,000h,014h,00ch	; 8cb1  .....B..........
	defb 020h,001h,00fh,002h,00dh,0c8h,014h,00ch,020h,001h,013h,00eh,020h,000h,042h,010h	; 8cc1   ....... ... .B.
	defb 0c9h,00dh,013h,00eh,020h,000h,014h,00ch,01fh,012h,003h,000h,0c6h,014h,00ch,01fh	; 8cd1  .... ...........
	defb 000h,01ch,00eh,042h,01dh,0c6h,000h,012h,000h,01ch,00eh,01dh,047h,015h,044h,015h	; 8ce1  ...B........G.D.
	defb 000h	; 8cf1

; ----------------------------------------------------------------------
; DATOS rle_ram2_8CF2: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (76
;   bytes)
;   0x8cf2..0x8d3e  (76 bytes)
DATA_rle_ram2_8CF2:
	defb 044h,002h,042h,002h,082h,005h,0c1h,006h,042h,002h,007h,000h,044h,007h,042h,00fh	; 8cf2  D.B.....B...D.B.
	defb 042h,000h,002h,000h,042h,00bh,0c1h,000h,042h,00dh,0c1h,000h,042h,011h,002h,000h	; 8d02  B...B...B...B...
	defb 082h,001h,042h,000h,005h,000h,082h,001h,0c1h,000h,043h,013h,0c2h,000h,016h,002h	; 8d12  ..B.......C.....
	defb 001h,042h,000h,004h,000h,043h,017h,006h,000h,082h,001h,002h,000h,043h,01ah,0c1h	; 8d22  .B...C.......C..
	defb 01fh,042h,01bh,0c1h,01fh,042h,01dh,042h,01dh,0c1h,01ch,000h	; 8d32  .B...B.B....

; ----------------------------------------------------------------------
; DATOS rle_ram2_8D3E: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (104
;   bytes)
;   0x8d3e..0x8da6  (104 bytes)
DATA_rle_ram2_8D3E:
	defb 0c5h,00ch,01ch,00dh,002h,00eh,003h,000h,0d6h,028h,003h,027h,036h,026h,00fh,001h	; 8d3e  .........(.'6&..
	defb 029h,006h,029h,010h,000h,02ah,00fh,006h,00fh,004h,029h,011h,00bh,012h,007h,042h	; 8d4e  ).)..*....)....B
	defb 013h,0c1h,025h,082h,02eh,0c7h,007h,02ch,006h,02bh,015h,000h,02fh,002h,000h,0c3h	; 8d5e  ..%....,.+../...
	defb 016h,005h,030h,002h,000h,0c5h,015h,007h,02fh,017h,000h,044h,018h,0c1h,006h,083h	; 8d6e  ..0...../..D....
	defb 035h,0c3h,022h,000h,031h,042h,022h,0c1h,03dh,043h,01dh,0c1h,008h,083h,039h,002h	; 8d7e  5.".1B".=C....9.
	defb 000h,0c5h,018h,000h,024h,03eh,000h,042h,020h,0c1h,009h,082h,03bh,007h,000h,0c5h	; 8d8e  ....$>.B .......
	defb 00bh,000h,022h,00ah,03ch,005h,000h,000h	; 8d9e  ..".<...

; ----------------------------------------------------------------------
; DATOS rle_ram2_8DA6: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (61
;   bytes)
;   0x8da6..0x8de3  (61 bytes)
DATA_rle_ram2_8DA6:
	defb 004h,000h,0c4h,002h,000h,003h,000h,042h,003h,003h,000h,042h,002h,042h,008h,002h	; 8da6  .......B...B.B..
	defb 000h,0c1h,001h,042h,005h,002h,000h,042h,00ch,006h,000h,082h,001h,002h,000h,082h	; 8db6  ...B...B........
	defb 001h,005h,000h,042h,00ah,003h,000h,0c4h,004h,000h,007h,000h,042h,00eh,0c1h,000h	; 8dc6  ...B........B...
	defb 042h,008h,007h,000h,042h,00ch,042h,000h,002h,000h,082h,001h,000h	; 8dd6  B...B.B......

; ----------------------------------------------------------------------
; DATOS rle_ram2_8DE3: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (83
;   bytes)
;   0x8de3..0x8e36  (83 bytes)
DATA_rle_ram2_8DE3:
	defb 044h,000h,003h,000h,045h,004h,002h,000h,042h,009h,003h,000h,043h,00bh,0c2h,00ch	; 8de3  D...E...B...C...
	defb 000h,002h,00eh,0c1h,00fh,005h,000h,0c4h,00dh,000h,00fh,009h,082h,00ch,002h,000h	; 8df3  ................
	defb 0c1h,00bh,082h,00dh,002h,000h,0c1h,010h,003h,000h,002h,011h,0c7h,00eh,000h,012h	; 8e03  ................
	defb 000h,013h,00fh,009h,002h,000h,0c1h,009h,003h,000h,0c6h,01ch,000h,014h,00ah,015h	; 8e13  ................
	defb 000h,042h,00ch,007h,000h,0c2h,01ch,000h,047h,015h,0c1h,018h,082h,01ah,0c1h,01bh	; 8e23  .B......G.......
	defb 044h,018h,000h	; 8e33

; ----------------------------------------------------------------------
; DATOS rle_ram2_8E36: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (63
;   bytes)
;   0x8e36..0x8e75  (63 bytes)
DATA_rle_ram2_8E36:
	defb 042h,026h,044h,024h,0c1h,027h,043h,025h,0c1h,024h,043h,008h,002h,000h,0c3h,00bh	; 8e36  B&D$.'C%.$C.....
	defb 000h,00ch,002h,000h,0c1h,00dh,005h,000h,046h,00eh,002h,000h,002h,001h,002h,000h	; 8e46  ........F.......
	defb 044h,014h,006h,000h,045h,018h,005h,000h,0c2h,023h,000h,044h,01dh,006h,000h,042h	; 8e56  D...E....#.D...B
	defb 021h,0c4h,028h,000h,029h,000h,046h,002h,0c3h,004h,002h,004h,042h,002h,000h	; 8e66  !.(.).F.....B..

; ----------------------------------------------------------------------
; DATOS rle_ram2_8E75: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (71
;   bytes)
;   0x8e75..0x8ebc  (71 bytes)
DATA_rle_ram2_8E75:
	defb 044h,002h,043h,002h,044h,002h,042h,000h,002h,000h,082h,001h,003h,000h,044h,006h	; 8e75  D.C.D.B.......D.
	defb 003h,000h,043h,00ah,048h,00ch,004h,000h,042h,014h,044h,002h,0c1h,016h,002h,000h	; 8e85  ..C.H...B.D.....
	defb 082h,001h,043h,017h,042h,019h,002h,000h,082h,001h,042h,01bh,002h,000h,002h,019h	; 8e95  ..C.B.....B.....
	defb 0c1h,01dh,002h,000h,044h,01eh,002h,000h,042h,022h,0c2h,012h,015h,042h,024h,0c1h	; 8ea5  ....D...B"...B$.
	defb 011h,042h,026h,0c2h,012h,024h,000h	; 8eb5

; ----------------------------------------------------------------------
; DATOS rle_ram2_8EBC: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (49
;   bytes)
;   0x8ebc..0x8eed  (49 bytes)
DATA_rle_ram2_8EBC:
	defb 0c1h,000h,042h,002h,003h,000h,003h,004h,082h,001h,043h,006h,003h,000h,0c1h,005h	; 8ebc  ..B.......C.....
	defb 002h,000h,082h,001h,003h,004h,046h,009h,082h,001h,0c1h,005h,004h,000h,003h,004h	; 8ecc  ......F.........
	defb 046h,012h,002h,000h,082h,001h,004h,000h,082h,001h,002h,000h,043h,00fh,002h,000h	; 8edc  F...........C...
	defb 000h	; 8eec

; ----------------------------------------------------------------------
; DATOS rle_ram2_8EED: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (29
;   bytes)
;   0x8eed..0x8f0a  (29 bytes)
DATA_rle_ram2_8EED:
	defb 004h,000h,042h,001h,008h,000h,044h,003h,007h,000h,044h,007h,005h,000h,049h,00bh	; 8eed  ..B...D...D...I.
	defb 0c1h,000h,050h,014h,0c1h,000h,042h,024h,0c1h,000h,042h,026h,000h	; 8efd  ..P...B$..B&.

; ----------------------------------------------------------------------
; DATOS rle_ram2_8F0A: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (60
;   bytes)
;   0x8f0a..0x8f46  (60 bytes)
DATA_rle_ram2_8F0A:
	defb 04ah,011h,044h,002h,0c3h,001h,021h,001h,043h,01bh,042h,002h,002h,002h,0c1h,005h	; 8f0a  J.D...!.C.B.....
	defb 042h,021h,043h,01eh,042h,002h,042h,002h,0c2h,021h,023h,044h,00dh,042h,002h,0c3h	; 8f1a  B!C.B.B..!#D.B..
	defb 002h,021h,001h,042h,021h,043h,031h,042h,004h,0c5h,021h,001h,021h,001h,021h,043h	; 8f2a  .!.B!C1B..!.!.!C
	defb 02eh,04ah,024h,045h,006h,0c1h,009h,042h,007h,042h,00bh,000h	; 8f3a  .J$E...B.B..

; ----------------------------------------------------------------------
; DATOS rle_ram2_8F46: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (85
;   bytes)
;   0x8f46..0x8f9b  (85 bytes)
DATA_rle_ram2_8F46:
	defb 042h,001h,0c2h,001h,004h,003h,000h,0c2h,005h,002h,042h,006h,008h,000h,0c1h,008h	; 8f46  B.........B.....
	defb 042h,006h,003h,000h,0c3h,013h,009h,015h,045h,00ah,003h,000h,0c1h,003h,042h,006h	; 8f56  B.......E.....B.
	defb 0c1h,006h,005h,000h,0c2h,013h,009h,082h,007h,0c3h,014h,00fh,016h,003h,000h,0c6h	; 8f66  ................
	defb 00fh,012h,00fh,012h,00fh,016h,042h,006h,0c4h,011h,007h,011h,002h,082h,007h,082h	; 8f76  ......B.........
	defb 007h,082h,007h,082h,007h,082h,007h,0c8h,006h,014h,00fh,016h,006h,014h,00fh,016h	; 8f86  ................
	defb 042h,006h,0c1h,006h,000h	; 8f96

; ----------------------------------------------------------------------
; DATOS rle_ram2_8F9B: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (47
;   bytes)
;   0x8f9b..0x8fca  (47 bytes)
DATA_rle_ram2_8F9B:
	defb 004h,000h,0c4h,002h,015h,002h,015h,042h,000h,042h,000h,0c1h,000h,044h,003h,0c1h	; 8f9b  .......B.B...D..
	defb 000h,042h,010h,002h,000h,0c1h,007h,004h,000h,082h,001h,0c1h,001h,045h,008h,004h	; 8fab  .B...........E..
	defb 000h,043h,00dh,0c2h,00fh,014h,042h,000h,004h,000h,042h,012h,082h,001h,000h	; 8fbb  .C....B...B....

; ----------------------------------------------------------------------
; DATOS rle_ram2_8FCA: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (35
;   bytes)
;   0x8fca..0x8fed  (35 bytes)
DATA_rle_ram2_8FCA:
	defb 003h,000h,002h,001h,0c3h,002h,000h,003h,082h,001h,003h,000h,044h,004h,0c1h,000h	; 8fca  ............D...
	defb 049h,008h,0c2h,001h,011h,003h,000h,042h,012h,082h,001h,002h,000h,0c4h,015h,001h	; 8fda  I......B........
	defb 014h,000h,000h	; 8fea

; ----------------------------------------------------------------------
; DATOS rle_ram2_8FED: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (115
;   bytes)
;   0x8fed..0x9060  (115 bytes)
DATA_rle_ram2_8FED:
	defb 042h,019h,082h,026h,0c1h,002h,003h,000h,0c9h,003h,01bh,027h,004h,01bh,027h,000h	; 8fed  B..&.......'..'.
	defb 010h,01ch,042h,000h,003h,000h,0c1h,001h,042h,005h,0c3h,000h,011h,01dh,002h,000h	; 8ffd  ..B.....B.......
	defb 043h,007h,003h,009h,0c1h,000h,042h,00ah,0c4h,000h,010h,01ch,000h,042h,00eh,0c1h	; 900d  C.....B......B..
	defb 00ch,005h,000h,0c2h,010h,01ch,004h,000h,042h,005h,002h,000h,082h,001h,003h,000h	; 901d  ........B.......
	defb 082h,001h,0c3h,014h,020h,015h,042h,00ah,0c1h,021h,004h,000h,042h,00eh,002h,000h	; 902d  .... .B..!..B...
	defb 0c2h,012h,01eh,042h,028h,082h,02ch,0c2h,000h,00ch,002h,000h,0c2h,028h,02bh,002h	; 903d  ...B(.,......(+.
	defb 000h,0c2h,013h,01fh,042h,016h,082h,023h,003h,00dh,0c7h,018h,02ah,02dh,024h,018h	; 904d  ....B..#....*-$.
	defb 02ah,02dh,000h	; 905d

; ----------------------------------------------------------------------
; DATOS rle_ram2_9060: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (34
;   bytes)
;   0x9060..0x9082  (34 bytes)
DATA_rle_ram2_9060:
	defb 002h,000h,0c1h,002h,042h,000h,0c1h,000h,042h,003h,042h,000h,0c1h,000h,046h,005h	; 9060  ....B...B.B...F.
	defb 0c1h,000h,042h,00bh,082h,001h,0c4h,000h,005h,000h,00dh,082h,00fh,082h,001h,002h	; 9070  ..B.............
	defb 000h,000h	; 9080

; ----------------------------------------------------------------------
; DATOS rle_ram2_9082: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (80
;   bytes)
;   0x9082..0x90d2  (80 bytes)
DATA_rle_ram2_9082:
	defb 044h,002h,0c3h,00dh,012h,00dh,044h,002h,0c3h,012h,00dh,000h,042h,006h,042h,000h	; 9082  D.....D.....B.B.
	defb 003h,000h,042h,006h,0c3h,000h,00eh,013h,00bh,000h,0c2h,00fh,014h,082h,001h,0c2h	; 9092  ..B.............
	defb 010h,015h,043h,008h,006h,00ah,007h,000h,0c2h,00eh,013h,004h,000h,082h,001h,004h	; 90a2  ..C.............
	defb 000h,0c3h,001h,00fh,014h,002h,000h,082h,001h,008h,000h,0c3h,011h,000h,011h,002h	; 90b2  ................
	defb 000h,042h,00bh,042h,00bh,042h,00bh,042h,00bh,042h,00bh,042h,00bh,0c1h,00bh,000h	; 90c2  .B.B.B.B.B.B....

; ----------------------------------------------------------------------
; DATOS rle_ram2_90D2: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (95
;   bytes)
;   0x90d2..0x9131  (95 bytes)
DATA_rle_ram2_90D2:
	defb 042h,002h,043h,002h,002h,000h,082h,001h,006h,000h,0c1h,001h,043h,006h,042h,008h	; 90d2  B.C.........C.B.
	defb 002h,000h,043h,00ah,003h,000h,0c3h,001h,005h,000h,042h,00dh,002h,000h,047h,00fh	; 90e2  ..C.......B...G.
	defb 0c3h,00dh,000h,034h,04ch,016h,0c2h,017h,022h,002h,000h,045h,023h,0c1h,025h,043h	; 90f2  ...4L..."..E#.%C
	defb 028h,083h,037h,0c1h,02bh,003h,000h,082h,001h,002h,000h,044h,02ch,0c1h,038h,042h	; 9102  (.7.+......D,.8B
	defb 000h,002h,000h,082h,001h,003h,000h,0c2h,030h,000h,042h,031h,002h,000h,0c1h,030h	; 9112  ........0.B1...0
	defb 007h,000h,0c1h,033h,042h,002h,042h,002h,042h,002h,0c3h,002h,004h,000h,000h	; 9122  ...3B.B.B......

; ----------------------------------------------------------------------
; DATOS rle_ram2_9131: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (112
;   bytes)
;   0x9131..0x91a1  (112 bytes)
DATA_rle_ram2_9131:
	defb 042h,002h,042h,002h,042h,002h,042h,002h,042h,002h,042h,002h,042h,002h,042h,002h	; 9131  B.B.B.B.B.B.B.B.
	defb 042h,000h,0c1h,000h,042h,004h,004h,000h,042h,006h,042h,007h,003h,000h,082h,001h	; 9141  B...B...B.B.....
	defb 0c2h,000h,009h,002h,000h,082h,001h,042h,00ah,002h,00ah,042h,000h,0c2h,000h,00ch	; 9151  .......B...B....
	defb 002h,000h,0c2h,009h,00dh,005h,000h,0c1h,00ch,00ch,000h,082h,001h,004h,000h,0c1h	; 9161  ................
	defb 00ch,002h,000h,002h,001h,042h,000h,042h,00fh,082h,001h,042h,000h,002h,000h,042h	; 9171  .....B.B...B...B
	defb 00fh,042h,000h,0c1h,000h,042h,018h,0c1h,000h,043h,011h,042h,018h,042h,018h,0c1h	; 9181  .B...B...C.B.B..
	defb 000h,043h,011h,044h,018h,044h,014h,042h,01ah,042h,01ah,044h,014h,042h,01ah,000h	; 9191  .C.D.D.B.B.D.B..

; ----------------------------------------------------------------------
; DATOS rle_ram2_91A1: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (88
;   bytes)
;   0x91a1..0x91f9  (88 bytes)
DATA_rle_ram2_91A1:
	defb 0c1h,017h,043h,003h,042h,004h,082h,004h,042h,004h,0c2h,000h,007h,082h,001h,042h	; 91a1  ..C.B...B......B
	defb 008h,0c2h,000h,007h,002h,000h,042h,00eh,082h,01ah,082h,01ah,042h,000h,042h,000h	; 91b1  ......B.....B.B.
	defb 043h,010h,042h,015h,0c1h,016h,042h,000h,002h,000h,042h,00ch,0c1h,013h,003h,000h	; 91c1  C.B...B...B.....
	defb 0c1h,01fh,042h,000h,002h,000h,0c1h,014h,042h,000h,0c1h,000h,042h,00ah,0c1h,01eh	; 91d1  ..B.....B...B...
	defb 002h,000h,082h,001h,0c3h,000h,006h,001h,043h,01bh,0c2h,020h,002h,042h,017h,042h	; 91e1  ........C.. .B.B
	defb 017h,042h,017h,042h,017h,042h,017h,000h	; 91f1  .B.B.B..

; ----------------------------------------------------------------------
; DATOS rle_ram2_91F9: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (82
;   bytes)
;   0x91f9..0x924b  (82 bytes)
DATA_rle_ram2_91F9:
	defb 0c1h,03dh,082h,001h,042h,003h,0c1h,03fh,042h,005h,0c1h,04bh,045h,007h,046h,040h	; 91f9  .=..B..?B..KE.F@
	defb 042h,00ch,086h,051h,0c1h,002h,044h,046h,044h,00eh,084h,055h,002h,001h,0c2h,000h	; 9209  B..Q..DFD..U....
	defb 002h,002h,04ah,044h,012h,0c2h,056h,03dh,042h,000h,003h,000h,043h,016h,0c1h,001h	; 9219  ..JD..V=B...C...
	defb 047h,019h,0c2h,002h,000h,043h,020h,0c1h,000h,046h,023h,0c3h,03dh,000h,03eh,04ah	; 9229  G....C ..F#.=.>J
	defb 029h,0c1h,000h,042h,033h,0c3h,000h,017h,035h,082h,001h,042h,001h,0c1h,000h,047h	; 9239  )..B3...5..B...G
	defb 036h,000h	; 9249

; ----------------------------------------------------------------------
; DATOS rle_ram2_924B: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (77
;   bytes)
;   0x924b..0x9298  (77 bytes)
DATA_rle_ram2_924B:
	defb 044h,002h,042h,007h,0c1h,006h,042h,009h,0c1h,005h,082h,001h,002h,000h,042h,00bh	; 924b  D.B...B.......B.
	defb 0c1h,000h,042h,00dh,003h,000h,082h,001h,042h,00fh,082h,001h,0c1h,011h,005h,000h	; 925b  ..B.....B.......
	defb 042h,012h,0c1h,000h,042h,00bh,005h,000h,0c1h,014h,002h,000h,042h,00fh,003h,000h	; 926b  B...B.......B...
	defb 002h,015h,042h,016h,0c1h,000h,042h,012h,0c1h,001h,045h,01ah,042h,01dh,0c1h,018h	; 927b  ..B...B...E.B...
	defb 042h,01dh,082h,01ah,082h,01ah,082h,01ah,082h,01ah,082h,01ah,000h	; 928b  B............

; ----------------------------------------------------------------------
; DATOS leido_9298: 60 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (60 bytes)
;   0x9298..0x92d4  (60 bytes)
DATA_leido_9298:
	defb 0d4h,092h,0e0h,092h,0f4h,092h,004h,093h,00ch,093h,018h,093h,024h,093h,030h,093h	; 9298  ............$.0.
	defb 03ch,093h,048h,093h,054h,093h,064h,093h,070h,093h,078h,093h,084h,093h,090h,093h	; 92a8  <.H.T.d.p.x.....
	defb 09ch,093h,0a4h,093h,0b0h,093h,0c0h,093h,0cch,093h,0dch,093h,0e8h,093h,0f4h,093h	; 92b8  ................
	defb 000h,094h,00ch,094h,020h,094h,030h,094h,038h,094h,044h,094h	; 92c8  .... .0.8.D.

; ----------------------------------------------------------------------
; DATOS leido_92D4: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x92d4..0x92d5  (1 bytes)
DATA_leido_92D4:
	defb 002h	; 92d4

; ----------------------------------------------------------------------
; DATOS leido_92D5: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x92d5..0x92da  (5 bytes)
DATA_leido_92D5:
	defb 04ch,094h,001h,082h,096h	; 92d5

; ----------------------------------------------------------------------
; DATOS leido_92DA: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x92da..0x92db  (1 bytes)
DATA_leido_92DA:
	defb 000h	; 92da

; ----------------------------------------------------------------------
; DATOS leido_92DB: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x92db..0x92dc  (1 bytes)
DATA_leido_92DB:
	defb 03fh	; 92db

; ----------------------------------------------------------------------
; DATOS leido_92DC: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x92dc..0x92dd  (1 bytes)
DATA_leido_92DC:
	defb 04bh	; 92dc

; ----------------------------------------------------------------------
; DATOS leido_92DD: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x92dd..0x92e0  (3 bytes)
DATA_leido_92DD:
	defb 012h,00ch,000h	; 92dd

; ----------------------------------------------------------------------
; DATOS leido_92E0: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x92e0..0x92e1  (1 bytes)
DATA_leido_92E0:
	defb 004h	; 92e0

; ----------------------------------------------------------------------
; DATOS leido_92E1: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x92e1..0x92e6  (5 bytes)
DATA_leido_92E1:
	defb 029h,098h,001h,0a4h,099h	; 92e1

; ----------------------------------------------------------------------
; DATOS leido_92E6: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x92e6..0x92e7  (1 bytes)
DATA_leido_92E6:
	defb 000h	; 92e6

; ----------------------------------------------------------------------
; DATOS leido_92E7: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x92e7..0x92e8  (1 bytes)
DATA_leido_92E7:
	defb 004h	; 92e7

; ----------------------------------------------------------------------
; DATOS leido_92E8: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x92e8..0x92e9  (1 bytes)
DATA_leido_92E8:
	defb 033h	; 92e8

; ----------------------------------------------------------------------
; DATOS leido_92E9: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x92e9..0x92ec  (3 bytes)
DATA_leido_92E9:
	defb 024h,002h,023h	; 92e9

; ----------------------------------------------------------------------
; DATOS leido_92EC: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x92ec..0x92ed  (1 bytes)
DATA_leido_92EC:
	defb 035h	; 92ec

; ----------------------------------------------------------------------
; DATOS leido_92ED: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x92ed..0x92f0  (3 bytes)
DATA_leido_92ED:
	defb 024h,003h,02ch	; 92ed

; ----------------------------------------------------------------------
; DATOS leido_92F0: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x92f0..0x92f1  (1 bytes)
DATA_leido_92F0:
	defb 038h	; 92f0

; ----------------------------------------------------------------------
; DATOS leido_92F1: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x92f1..0x92f4  (3 bytes)
DATA_leido_92F1:
	defb 024h,001h,000h	; 92f1

; ----------------------------------------------------------------------
; DATOS leido_92F4: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x92f4..0x92f5  (1 bytes)
DATA_leido_92F4:
	defb 002h	; 92f4

; ----------------------------------------------------------------------
; DATOS leido_92F5: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x92f5..0x92fa  (5 bytes)
DATA_leido_92F5:
	defb 081h,09ah,001h,02fh,09bh	; 92f5

; ----------------------------------------------------------------------
; DATOS leido_92FA: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x92fa..0x92fb  (1 bytes)
DATA_leido_92FA:
	defb 000h	; 92fa

; ----------------------------------------------------------------------
; DATOS leido_92FB: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x92fb..0x92fc  (1 bytes)
DATA_leido_92FB:
	defb 00eh	; 92fb

; ----------------------------------------------------------------------
; DATOS leido_92FC: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x92fc..0x92fd  (1 bytes)
DATA_leido_92FC:
	defb 019h	; 92fc

; ----------------------------------------------------------------------
; DATOS leido_92FD: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x92fd..0x9300  (3 bytes)
DATA_leido_92FD:
	defb 012h,002h,010h	; 92fd

; ----------------------------------------------------------------------
; DATOS leido_9300: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9300..0x9301  (1 bytes)
DATA_leido_9300:
	defb 01bh	; 9300

; ----------------------------------------------------------------------
; DATOS leido_9301: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9301..0x9304  (3 bytes)
DATA_leido_9301:
	defb 092h,006h,000h	; 9301

; ----------------------------------------------------------------------
; DATOS leido_9304: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9304..0x9305  (1 bytes)
DATA_leido_9304:
	defb 004h	; 9304

; ----------------------------------------------------------------------
; DATOS leido_9305: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9305..0x930a  (5 bytes)
DATA_leido_9305:
	defb 08ah,09bh,001h,04ah,09ch	; 9305

; ----------------------------------------------------------------------
; DATOS leido_930A: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x930a..0x930b  (1 bytes)
DATA_leido_930A:
	defb 000h	; 930a

; ----------------------------------------------------------------------
; DATOS leido_930B: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x930b..0x930c  (1 bytes)
DATA_leido_930B:
	defb 000h	; 930b

; ----------------------------------------------------------------------
; DATOS leido_930C: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x930c..0x930d  (1 bytes)
DATA_leido_930C:
	defb 001h	; 930c

; ----------------------------------------------------------------------
; DATOS leido_930D: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x930d..0x9312  (5 bytes)
DATA_leido_930D:
	defb 09bh,09ch,001h,0b5h,09dh	; 930d

; ----------------------------------------------------------------------
; DATOS leido_9312: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9312..0x9313  (1 bytes)
DATA_leido_9312:
	defb 000h	; 9312

; ----------------------------------------------------------------------
; DATOS leido_9313: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x9313..0x9314  (1 bytes)
DATA_leido_9313:
	defb 011h	; 9313

; ----------------------------------------------------------------------
; DATOS leido_9314: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9314..0x9315  (1 bytes)
DATA_leido_9314:
	defb 024h	; 9314

; ----------------------------------------------------------------------
; DATOS leido_9315: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9315..0x9318  (3 bytes)
DATA_leido_9315:
	defb 089h,010h,000h	; 9315

; ----------------------------------------------------------------------
; DATOS leido_9318: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9318..0x9319  (1 bytes)
DATA_leido_9318:
	defb 001h	; 9318

; ----------------------------------------------------------------------
; DATOS leido_9319: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9319..0x931e  (5 bytes)
DATA_leido_9319:
	defb 0a7h,09eh,001h,05fh,09fh	; 9319

; ----------------------------------------------------------------------
; DATOS leido_931E: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x931e..0x931f  (1 bytes)
DATA_leido_931E:
	defb 000h	; 931e

; ----------------------------------------------------------------------
; DATOS leido_931F: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x931f..0x9320  (1 bytes)
DATA_leido_931F:
	defb 007h	; 931f

; ----------------------------------------------------------------------
; DATOS leido_9320: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9320..0x9321  (1 bytes)
DATA_leido_9320:
	defb 01bh	; 9320

; ----------------------------------------------------------------------
; DATOS leido_9321: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9321..0x9324  (3 bytes)
DATA_leido_9321:
	defb 009h,014h,000h	; 9321

; ----------------------------------------------------------------------
; DATOS leido_9324: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9324..0x9325  (1 bytes)
DATA_leido_9324:
	defb 002h	; 9324

; ----------------------------------------------------------------------
; DATOS leido_9325: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9325..0x932a  (5 bytes)
DATA_leido_9325:
	defb 0cdh,09fh,001h,088h,0a0h	; 9325

; ----------------------------------------------------------------------
; DATOS leido_932A: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x932a..0x932b  (1 bytes)
DATA_leido_932A:
	defb 000h	; 932a

; ----------------------------------------------------------------------
; DATOS leido_932B: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x932b..0x932c  (1 bytes)
DATA_leido_932B:
	defb 002h	; 932b

; ----------------------------------------------------------------------
; DATOS leido_932C: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x932c..0x932d  (1 bytes)
DATA_leido_932C:
	defb 01ah	; 932c

; ----------------------------------------------------------------------
; DATOS leido_932D: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x932d..0x9330  (3 bytes)
DATA_leido_932D:
	defb 092h,005h,000h	; 932d

; ----------------------------------------------------------------------
; DATOS leido_9330: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9330..0x9331  (1 bytes)
DATA_leido_9330:
	defb 004h	; 9330

; ----------------------------------------------------------------------
; DATOS leido_9331: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9331..0x9336  (5 bytes)
DATA_leido_9331:
	defb 019h,0a1h,001h,0a8h,0a1h	; 9331

; ----------------------------------------------------------------------
; DATOS leido_9336: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9336..0x9337  (1 bytes)
DATA_leido_9336:
	defb 000h	; 9336

; ----------------------------------------------------------------------
; DATOS leido_9337: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x9337..0x9338  (1 bytes)
DATA_leido_9337:
	defb 012h	; 9337

; ----------------------------------------------------------------------
; DATOS leido_9338: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9338..0x9339  (1 bytes)
DATA_leido_9338:
	defb 014h	; 9338

; ----------------------------------------------------------------------
; DATOS leido_9339: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9339..0x933c  (3 bytes)
DATA_leido_9339:
	defb 024h,002h,000h	; 9339

; ----------------------------------------------------------------------
; DATOS leido_933C: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x933c..0x933d  (1 bytes)
DATA_leido_933C:
	defb 001h	; 933c

; ----------------------------------------------------------------------
; DATOS leido_933D: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x933d..0x9342  (5 bytes)
DATA_leido_933D:
	defb 035h,0a2h,001h,0e0h,0a2h	; 933d

; ----------------------------------------------------------------------
; DATOS leido_9342: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9342..0x9343  (1 bytes)
DATA_leido_9342:
	defb 000h	; 9342

; ----------------------------------------------------------------------
; DATOS leido_9343: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x9343..0x9344  (1 bytes)
DATA_leido_9343:
	defb 002h	; 9343

; ----------------------------------------------------------------------
; DATOS leido_9344: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9344..0x9345  (1 bytes)
DATA_leido_9344:
	defb 018h	; 9344

; ----------------------------------------------------------------------
; DATOS leido_9345: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9345..0x9348  (3 bytes)
DATA_leido_9345:
	defb 009h,011h,000h	; 9345

; ----------------------------------------------------------------------
; DATOS leido_9348: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9348..0x9349  (1 bytes)
DATA_leido_9348:
	defb 002h	; 9348

; ----------------------------------------------------------------------
; DATOS leido_9349: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9349..0x934e  (5 bytes)
DATA_leido_9349:
	defb 064h,0a3h,001h,0f5h,0a3h	; 9349

; ----------------------------------------------------------------------
; DATOS leido_934E: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x934e..0x934f  (1 bytes)
DATA_leido_934E:
	defb 000h	; 934e

; ----------------------------------------------------------------------
; DATOS leido_934F: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x934f..0x9350  (1 bytes)
DATA_leido_934F:
	defb 00fh	; 934f

; ----------------------------------------------------------------------
; DATOS leido_9350: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9350..0x9351  (1 bytes)
DATA_leido_9350:
	defb 015h	; 9350

; ----------------------------------------------------------------------
; DATOS leido_9351: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9351..0x9354  (3 bytes)
DATA_leido_9351:
	defb 092h,006h,000h	; 9351

; ----------------------------------------------------------------------
; DATOS leido_9354: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9354..0x9355  (1 bytes)
DATA_leido_9354:
	defb 002h	; 9354

; ----------------------------------------------------------------------
; DATOS leido_9355: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9355..0x935a  (5 bytes)
DATA_leido_9355:
	defb 038h,0a4h,001h,057h,0a5h	; 9355

; ----------------------------------------------------------------------
; DATOS leido_935A: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x935a..0x935b  (1 bytes)
DATA_leido_935A:
	defb 000h	; 935a

; ----------------------------------------------------------------------
; DATOS leido_935B: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x935b..0x935c  (1 bytes)
DATA_leido_935B:
	defb 01fh	; 935b

; ----------------------------------------------------------------------
; DATOS leido_935C: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x935c..0x935d  (1 bytes)
DATA_leido_935C:
	defb 026h	; 935c

; ----------------------------------------------------------------------
; DATOS leido_935D: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x935d..0x9360  (3 bytes)
DATA_leido_935D:
	defb 012h,001h,023h	; 935d

; ----------------------------------------------------------------------
; DATOS leido_9360: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9360..0x9361  (1 bytes)
DATA_leido_9360:
	defb 027h	; 9360

; ----------------------------------------------------------------------
; DATOS leido_9361: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9361..0x9364  (3 bytes)
DATA_leido_9361:
	defb 092h,003h,000h	; 9361

; ----------------------------------------------------------------------
; DATOS leido_9364: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9364..0x9365  (1 bytes)
DATA_leido_9364:
	defb 004h	; 9364

; ----------------------------------------------------------------------
; DATOS leido_9365: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9365..0x936a  (5 bytes)
DATA_leido_9365:
	defb 03eh,0a6h,001h,0e0h,0a6h	; 9365

; ----------------------------------------------------------------------
; DATOS leido_936A: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x936a..0x936b  (1 bytes)
DATA_leido_936A:
	defb 000h	; 936a

; ----------------------------------------------------------------------
; DATOS leido_936B: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x936b..0x936c  (1 bytes)
DATA_leido_936B:
	defb 002h	; 936b

; ----------------------------------------------------------------------
; DATOS leido_936C: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x936c..0x936d  (1 bytes)
DATA_leido_936C:
	defb 018h	; 936c

; ----------------------------------------------------------------------
; DATOS leido_936D: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x936d..0x9370  (3 bytes)
DATA_leido_936D:
	defb 0a4h,015h,000h	; 936d

; ----------------------------------------------------------------------
; DATOS leido_9370: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9370..0x9371  (1 bytes)
DATA_leido_9370:
	defb 002h	; 9370

; ----------------------------------------------------------------------
; DATOS leido_9371: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9371..0x9376  (5 bytes)
DATA_leido_9371:
	defb 033h,0a7h,001h,09bh,0a7h	; 9371

; ----------------------------------------------------------------------
; DATOS leido_9376: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9376..0x9377  (1 bytes)
DATA_leido_9376:
	defb 000h	; 9376

; ----------------------------------------------------------------------
; DATOS leido_9377: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x9377..0x9378  (1 bytes)
DATA_leido_9377:
	defb 000h	; 9377

; ----------------------------------------------------------------------
; DATOS leido_9378: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9378..0x9379  (1 bytes)
DATA_leido_9378:
	defb 004h	; 9378

; ----------------------------------------------------------------------
; DATOS leido_9379: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9379..0x937e  (5 bytes)
DATA_leido_9379:
	defb 0e2h,0a7h,001h,026h,0a9h	; 9379

; ----------------------------------------------------------------------
; DATOS leido_937E: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x937e..0x937f  (1 bytes)
DATA_leido_937E:
	defb 000h	; 937e

; ----------------------------------------------------------------------
; DATOS leido_937F: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x937f..0x9380  (1 bytes)
DATA_leido_937F:
	defb 023h	; 937f

; ----------------------------------------------------------------------
; DATOS leido_9380: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9380..0x9381  (1 bytes)
DATA_leido_9380:
	defb 02ch	; 9380

; ----------------------------------------------------------------------
; DATOS leido_9381: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9381..0x9384  (3 bytes)
DATA_leido_9381:
	defb 024h,007h,000h	; 9381

; ----------------------------------------------------------------------
; DATOS leido_9384: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9384..0x9385  (1 bytes)
DATA_leido_9384:
	defb 001h	; 9384

; ----------------------------------------------------------------------
; DATOS leido_9385: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9385..0x938a  (5 bytes)
DATA_leido_9385:
	defb 016h,0aah,001h,0feh,0aah	; 9385

; ----------------------------------------------------------------------
; DATOS leido_938A: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x938a..0x938b  (1 bytes)
DATA_leido_938A:
	defb 000h	; 938a

; ----------------------------------------------------------------------
; DATOS leido_938B: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x938b..0x938c  (1 bytes)
DATA_leido_938B:
	defb 002h	; 938b

; ----------------------------------------------------------------------
; DATOS leido_938C: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x938c..0x938d  (1 bytes)
DATA_leido_938C:
	defb 021h	; 938c

; ----------------------------------------------------------------------
; DATOS leido_938D: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x938d..0x9390  (3 bytes)
DATA_leido_938D:
	defb 009h,002h,000h	; 938d

; ----------------------------------------------------------------------
; DATOS leido_9390: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9390..0x9391  (1 bytes)
DATA_leido_9390:
	defb 002h	; 9390

; ----------------------------------------------------------------------
; DATOS leido_9391: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9391..0x9396  (5 bytes)
DATA_leido_9391:
	defb 0b5h,0abh,001h,093h,0ach	; 9391

; ----------------------------------------------------------------------
; DATOS leido_9396: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9396..0x9397  (1 bytes)
DATA_leido_9396:
	defb 000h	; 9396

; ----------------------------------------------------------------------
; DATOS leido_9397: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x9397..0x9398  (1 bytes)
DATA_leido_9397:
	defb 001h	; 9397

; ----------------------------------------------------------------------
; DATOS leido_9398: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9398..0x9399  (1 bytes)
DATA_leido_9398:
	defb 01eh	; 9398

; ----------------------------------------------------------------------
; DATOS leido_9399: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9399..0x939c  (3 bytes)
DATA_leido_9399:
	defb 092h,00ah,000h	; 9399

; ----------------------------------------------------------------------
; DATOS leido_939C: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x939c..0x939d  (1 bytes)
DATA_leido_939C:
	defb 001h	; 939c

; ----------------------------------------------------------------------
; DATOS leido_939D: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x939d..0x93a2  (5 bytes)
DATA_leido_939D:
	defb 070h,0adh,001h,049h,0aeh	; 939d

; ----------------------------------------------------------------------
; DATOS leido_93A2: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93a2..0x93a3  (1 bytes)
DATA_leido_93A2:
	defb 000h	; 93a2

; ----------------------------------------------------------------------
; DATOS leido_93A3: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x93a3..0x93a4  (1 bytes)
DATA_leido_93A3:
	defb 000h	; 93a3

; ----------------------------------------------------------------------
; DATOS leido_93A4: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93a4..0x93a5  (1 bytes)
DATA_leido_93A4:
	defb 004h	; 93a4

; ----------------------------------------------------------------------
; DATOS leido_93A5: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x93a5..0x93aa  (5 bytes)
DATA_leido_93A5:
	defb 0beh,0aeh,001h,04fh,0afh	; 93a5

; ----------------------------------------------------------------------
; DATOS leido_93AA: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93aa..0x93ab  (1 bytes)
DATA_leido_93AA:
	defb 000h	; 93aa

; ----------------------------------------------------------------------
; DATOS leido_93AB: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x93ab..0x93ac  (1 bytes)
DATA_leido_93AB:
	defb 002h	; 93ab

; ----------------------------------------------------------------------
; DATOS leido_93AC: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x93ac..0x93ad  (1 bytes)
DATA_leido_93AC:
	defb 015h	; 93ac

; ----------------------------------------------------------------------
; DATOS leido_93AD: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x93ad..0x93b0  (3 bytes)
DATA_leido_93AD:
	defb 024h,001h,000h	; 93ad

; ----------------------------------------------------------------------
; DATOS leido_93B0: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93b0..0x93b1  (1 bytes)
DATA_leido_93B0:
	defb 002h	; 93b0

; ----------------------------------------------------------------------
; DATOS leido_93B1: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x93b1..0x93b6  (5 bytes)
DATA_leido_93B1:
	defb 0b6h,0afh,001h,053h,0b0h	; 93b1

; ----------------------------------------------------------------------
; DATOS leido_93B6: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93b6..0x93b7  (1 bytes)
DATA_leido_93B6:
	defb 000h	; 93b6

; ----------------------------------------------------------------------
; DATOS leido_93B7: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x93b7..0x93b8  (1 bytes)
DATA_leido_93B7:
	defb 002h	; 93b7

; ----------------------------------------------------------------------
; DATOS leido_93B8: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x93b8..0x93b9  (1 bytes)
DATA_leido_93B8:
	defb 015h	; 93b8

; ----------------------------------------------------------------------
; DATOS leido_93B9: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x93b9..0x93bc  (3 bytes)
DATA_leido_93B9:
	defb 092h,00ah,013h	; 93b9

; ----------------------------------------------------------------------
; DATOS leido_93BC: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x93bc..0x93bd  (1 bytes)
DATA_leido_93BC:
	defb 01fh	; 93bc

; ----------------------------------------------------------------------
; DATOS leido_93BD: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x93bd..0x93c0  (3 bytes)
DATA_leido_93BD:
	defb 012h,002h,000h	; 93bd

; ----------------------------------------------------------------------
; DATOS leido_93C0: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93c0..0x93c1  (1 bytes)
DATA_leido_93C0:
	defb 001h	; 93c0

; ----------------------------------------------------------------------
; DATOS leido_93C1: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x93c1..0x93c6  (5 bytes)
DATA_leido_93C1:
	defb 092h,0b0h,001h,00bh,0b1h	; 93c1

; ----------------------------------------------------------------------
; DATOS leido_93C6: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93c6..0x93c7  (1 bytes)
DATA_leido_93C6:
	defb 000h	; 93c6

; ----------------------------------------------------------------------
; DATOS leido_93C7: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x93c7..0x93c8  (1 bytes)
DATA_leido_93C7:
	defb 00dh	; 93c7

; ----------------------------------------------------------------------
; DATOS leido_93C8: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x93c8..0x93c9  (1 bytes)
DATA_leido_93C8:
	defb 012h	; 93c8

; ----------------------------------------------------------------------
; DATOS leido_93C9: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x93c9..0x93cc  (3 bytes)
DATA_leido_93C9:
	defb 009h,004h,000h	; 93c9

; ----------------------------------------------------------------------
; DATOS leido_93CC: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93cc..0x93cd  (1 bytes)
DATA_leido_93CC:
	defb 002h	; 93cc

; ----------------------------------------------------------------------
; DATOS leido_93CD: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x93cd..0x93d2  (5 bytes)
DATA_leido_93CD:
	defb 047h,0b1h,001h,0e5h,0b1h	; 93cd

; ----------------------------------------------------------------------
; DATOS leido_93D2: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93d2..0x93d3  (1 bytes)
DATA_leido_93D2:
	defb 000h	; 93d2

; ----------------------------------------------------------------------
; DATOS leido_93D3: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x93d3..0x93d4  (1 bytes)
DATA_leido_93D3:
	defb 002h	; 93d3

; ----------------------------------------------------------------------
; DATOS leido_93D4: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x93d4..0x93d5  (1 bytes)
DATA_leido_93D4:
	defb 015h	; 93d4

; ----------------------------------------------------------------------
; DATOS leido_93D5: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x93d5..0x93d8  (3 bytes)
DATA_leido_93D5:
	defb 012h,001h,015h	; 93d5

; ----------------------------------------------------------------------
; DATOS leido_93D8: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x93d8..0x93d9  (1 bytes)
DATA_leido_93D8:
	defb 015h	; 93d8

; ----------------------------------------------------------------------
; DATOS leido_93D9: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x93d9..0x93dc  (3 bytes)
DATA_leido_93D9:
	defb 092h,001h,000h	; 93d9

; ----------------------------------------------------------------------
; DATOS leido_93DC: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93dc..0x93dd  (1 bytes)
DATA_leido_93DC:
	defb 004h	; 93dc

; ----------------------------------------------------------------------
; DATOS leido_93DD: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x93dd..0x93e2  (5 bytes)
DATA_leido_93DD:
	defb 045h,0b2h,001h,000h,0b3h	; 93dd

; ----------------------------------------------------------------------
; DATOS leido_93E2: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93e2..0x93e3  (1 bytes)
DATA_leido_93E2:
	defb 000h	; 93e2

; ----------------------------------------------------------------------
; DATOS leido_93E3: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x93e3..0x93e4  (1 bytes)
DATA_leido_93E3:
	defb 002h	; 93e3

; ----------------------------------------------------------------------
; DATOS leido_93E4: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x93e4..0x93e5  (1 bytes)
DATA_leido_93E4:
	defb 01bh	; 93e4

; ----------------------------------------------------------------------
; DATOS leido_93E5: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x93e5..0x93e8  (3 bytes)
DATA_leido_93E5:
	defb 0a4h,005h,000h	; 93e5

; ----------------------------------------------------------------------
; DATOS leido_93E8: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93e8..0x93e9  (1 bytes)
DATA_leido_93E8:
	defb 002h	; 93e8

; ----------------------------------------------------------------------
; DATOS leido_93E9: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x93e9..0x93ee  (5 bytes)
DATA_leido_93E9:
	defb 066h,0b3h,001h,083h,0b4h	; 93e9

; ----------------------------------------------------------------------
; DATOS leido_93EE: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93ee..0x93ef  (1 bytes)
DATA_leido_93EE:
	defb 000h	; 93ee

; ----------------------------------------------------------------------
; DATOS leido_93EF: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x93ef..0x93f0  (1 bytes)
DATA_leido_93EF:
	defb 00ch	; 93ef

; ----------------------------------------------------------------------
; DATOS leido_93F0: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x93f0..0x93f1  (1 bytes)
DATA_leido_93F0:
	defb 026h	; 93f0

; ----------------------------------------------------------------------
; DATOS leido_93F1: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x93f1..0x93f4  (3 bytes)
DATA_leido_93F1:
	defb 012h,019h,000h	; 93f1

; ----------------------------------------------------------------------
; DATOS leido_93F4: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93f4..0x93f5  (1 bytes)
DATA_leido_93F4:
	defb 004h	; 93f4

; ----------------------------------------------------------------------
; DATOS leido_93F5: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x93f5..0x93fa  (5 bytes)
DATA_leido_93F5:
	defb 082h,0b5h,001h,0d5h,0b5h	; 93f5

; ----------------------------------------------------------------------
; DATOS leido_93FA: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x93fa..0x93fb  (1 bytes)
DATA_leido_93FA:
	defb 000h	; 93fa

; ----------------------------------------------------------------------
; DATOS leido_93FB: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x93fb..0x93fc  (1 bytes)
DATA_leido_93FB:
	defb 008h	; 93fb

; ----------------------------------------------------------------------
; DATOS leido_93FC: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x93fc..0x93fd  (1 bytes)
DATA_leido_93FC:
	defb 00ch	; 93fc

; ----------------------------------------------------------------------
; DATOS leido_93FD: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x93fd..0x9400  (3 bytes)
DATA_leido_93FD:
	defb 0a4h,004h,000h	; 93fd

; ----------------------------------------------------------------------
; DATOS leido_9400: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9400..0x9401  (1 bytes)
DATA_leido_9400:
	defb 001h	; 9400

; ----------------------------------------------------------------------
; DATOS leido_9401: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9401..0x9406  (5 bytes)
DATA_leido_9401:
	defb 002h,0b6h,001h,0cdh,0b6h	; 9401

; ----------------------------------------------------------------------
; DATOS leido_9406: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9406..0x9407  (1 bytes)
DATA_leido_9406:
	defb 000h	; 9406

; ----------------------------------------------------------------------
; DATOS leido_9407: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x9407..0x9408  (1 bytes)
DATA_leido_9407:
	defb 00fh	; 9407

; ----------------------------------------------------------------------
; DATOS leido_9408: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9408..0x9409  (1 bytes)
DATA_leido_9408:
	defb 01ch	; 9408

; ----------------------------------------------------------------------
; DATOS leido_9409: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9409..0x940c  (3 bytes)
DATA_leido_9409:
	defb 009h,001h,000h	; 9409

; ----------------------------------------------------------------------
; DATOS leido_940C: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x940c..0x940d  (1 bytes)
DATA_leido_940C:
	defb 001h	; 940c

; ----------------------------------------------------------------------
; DATOS leido_940D: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x940d..0x9412  (5 bytes)
DATA_leido_940D:
	defb 048h,0b7h,001h,010h,0b8h	; 940d

; ----------------------------------------------------------------------
; DATOS leido_9412: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9412..0x9413  (1 bytes)
DATA_leido_9412:
	defb 000h	; 9412

; ----------------------------------------------------------------------
; DATOS leido_9413: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x9413..0x9414  (1 bytes)
DATA_leido_9413:
	defb 010h	; 9413

; ----------------------------------------------------------------------
; DATOS leido_9414: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9414..0x9415  (1 bytes)
DATA_leido_9414:
	defb 01ch	; 9414

; ----------------------------------------------------------------------
; DATOS leido_9415: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9415..0x9418  (3 bytes)
DATA_leido_9415:
	defb 009h,00ch,019h	; 9415

; ----------------------------------------------------------------------
; DATOS leido_9418: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9418..0x9419  (1 bytes)
DATA_leido_9418:
	defb 028h	; 9418

; ----------------------------------------------------------------------
; DATOS leido_9419: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9419..0x941c  (3 bytes)
DATA_leido_9419:
	defb 089h,003h,028h	; 9419

; ----------------------------------------------------------------------
; DATOS leido_941C: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x941c..0x941d  (1 bytes)
DATA_leido_941C:
	defb 02bh	; 941c

; ----------------------------------------------------------------------
; DATOS leido_941D: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x941d..0x9420  (3 bytes)
DATA_leido_941D:
	defb 009h,003h,000h	; 941d

; ----------------------------------------------------------------------
; DATOS leido_9420: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9420..0x9421  (1 bytes)
DATA_leido_9420:
	defb 004h	; 9420

; ----------------------------------------------------------------------
; DATOS leido_9421: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9421..0x9426  (5 bytes)
DATA_leido_9421:
	defb 0a9h,0b8h,001h,0b2h,0b9h	; 9421

; ----------------------------------------------------------------------
; DATOS leido_9426: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9426..0x9427  (1 bytes)
DATA_leido_9426:
	defb 000h	; 9426

; ----------------------------------------------------------------------
; DATOS leido_9427: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x9427..0x9428  (1 bytes)
DATA_leido_9427:
	defb 004h	; 9427

; ----------------------------------------------------------------------
; DATOS leido_9428: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9428..0x9429  (1 bytes)
DATA_leido_9428:
	defb 024h	; 9428

; ----------------------------------------------------------------------
; DATOS leido_9429: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9429..0x942c  (3 bytes)
DATA_leido_9429:
	defb 0a4h,004h,00ch	; 9429

; ----------------------------------------------------------------------
; DATOS leido_942C: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x942c..0x942d  (1 bytes)
DATA_leido_942C:
	defb 028h	; 942c

; ----------------------------------------------------------------------
; DATOS leido_942D: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x942d..0x9430  (3 bytes)
DATA_leido_942D:
	defb 0a4h,002h,000h	; 942d

; ----------------------------------------------------------------------
; DATOS leido_9430: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9430..0x9431  (1 bytes)
DATA_leido_9430:
	defb 004h	; 9430

; ----------------------------------------------------------------------
; DATOS leido_9431: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9431..0x9436  (5 bytes)
DATA_leido_9431:
	defb 02bh,0bah,001h,04fh,0bbh	; 9431

; ----------------------------------------------------------------------
; DATOS leido_9436: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9436..0x9437  (1 bytes)
DATA_leido_9436:
	defb 000h	; 9436

; ----------------------------------------------------------------------
; DATOS leido_9437: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x9437..0x9438  (1 bytes)
DATA_leido_9437:
	defb 000h	; 9437

; ----------------------------------------------------------------------
; DATOS leido_9438: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9438..0x9439  (1 bytes)
DATA_leido_9438:
	defb 002h	; 9438

; ----------------------------------------------------------------------
; DATOS leido_9439: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9439..0x943e  (5 bytes)
DATA_leido_9439:
	defb 036h,0bch,001h,099h,0bch	; 9439

; ----------------------------------------------------------------------
; DATOS leido_943E: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x943e..0x943f  (1 bytes)
DATA_leido_943E:
	defb 000h	; 943e

; ----------------------------------------------------------------------
; DATOS leido_943F: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x943f..0x9440  (1 bytes)
DATA_leido_943F:
	defb 006h	; 943f

; ----------------------------------------------------------------------
; DATOS leido_9440: 1 bytes que lee p00:4DC3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4DC3 (1 bytes)
;   0x9440..0x9441  (1 bytes)
DATA_leido_9440:
	defb 00fh	; 9440

; ----------------------------------------------------------------------
; DATOS leido_9441: 3 bytes que leen p00:4D24, p00:4D2E, p00:4D1F al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4D24, p00:4D2E, p00:4D1F
;   (3 bytes)
;   0x9441..0x9444  (3 bytes)
DATA_leido_9441:
	defb 092h,009h,000h	; 9441

; ----------------------------------------------------------------------
; DATOS leido_9444: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x9444..0x9445  (1 bytes)
DATA_leido_9444:
	defb 002h	; 9444

; ----------------------------------------------------------------------
; DATOS leido_9445: 5 bytes que leen p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09,
;   p00:4D0C al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4CF7, p00:4CFA, p00:4CE9, p00:4D09, p00:4D0C (5 bytes)
;   0x9445..0x944a  (5 bytes)
DATA_leido_9445:
	defb 0deh,0bch,001h,008h,0beh	; 9445

; ----------------------------------------------------------------------
; DATOS leido_944A: 1 bytes que lee p00:4CB1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4CB1 (1 bytes)
;   0x944a..0x944b  (1 bytes)
DATA_leido_944A:
	defb 000h	; 944a

; ----------------------------------------------------------------------
; DATOS leido_944B: 1 bytes que lee p00:4D1F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4D1F (1 bytes)
;   0x944b..0x944c  (1 bytes)
DATA_leido_944B:
	defb 000h	; 944b

; ----------------------------------------------------------------------
; DATOS rle_vram_944C: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (566
;   bytes)
;   0x944c..0x9682  (566 bytes)
DATA_rle_vram_944C:
	defb 003h,000h,084h,020h,001h,000h,004h,003h,000h,083h,040h,000h,002h,003h,000h,085h	; 944c  ... ......@.....
	defb 01fh,07fh,01fh,00fh,002h,003h,000h,083h,0feh,0f0h,0c0h,003h,000h,0a4h,001h,017h	; 945c  ................
	defb 001h,003h,001h,02bh,036h,0f8h,061h,00ch,080h,0c0h,080h,0d4h,06ch,0e0h,086h,030h	; 946c  ...+6.a.....l..0
	defb 004h,02eh,01fh,03ch,03fh,004h,080h,0e8h,000h,040h,0c0h,0e0h,080h,009h,017h,009h	; 947c  ...<?....@......
	defb 003h,01fh,003h,000h,086h,020h,0d0h,020h,0c3h,00eh,07fh,005h,000h,085h,0c3h,00eh	; 948c  ..... . ........
	defb 038h,003h,00fh,003h,000h,0b4h,0f0h,01fh,0c8h,004h,058h,072h,0f8h,074h,00fh,0f8h	; 949c  8.........Xr.t..
	defb 013h,038h,0ffh,03fh,0bfh,0f8h,026h,044h,083h,0c1h,02bh,0d4h,011h,0fbh,01fh,007h	; 94ac  .8.?..&D..+.....
	defb 01fh,0e0h,0f0h,080h,0f8h,0e7h,0f8h,0e0h,0f8h,03fh,00fh,03fh,003h,03fh,064h,022h	; 94bc  .........?.?.?d"
	defb 0c1h,083h,0d4h,02bh,0e0h,003h,07dh,0fch,07ch,003h,004h,000h,093h,0dfh,018h,007h	; 94cc  ...+..}.|.......
	defb 03fh,00fh,00fh,000h,000h,0e3h,047h,043h,0deh,021h,030h,030h,059h,037h,02fh,00fh	; 94dc  ?.....GC.!00Y7/.
	defb 005h,0a0h,085h,008h,00ch,006h,003h,003h,003h,000h,090h,006h,01fh,077h,0efh,047h	; 94ec  .............w.G
	defb 00eh,01ch,078h,000h,041h,082h,020h,08ch,038h,062h,0c4h,004h,000h,08eh,001h,006h	; 94fc  ..x.A. .8b......
	defb 01fh,07fh,05bh,069h,04dh,0b1h,0cdh,099h,022h,0fch,0a0h,0a0h,003h,01fh,083h,0a7h	; 950c  ..[iM...".......
	defb 0abh,0edh,003h,000h,085h,0fch,0c3h,03ch,0cfh,0c0h,004h,000h,0a8h,0f1h,01fh,0fch	; 951c  .......<........
	defb 0f1h,000h,000h,007h,03fh,0c7h,0f8h,01fh,0e0h,00fh,07ah,0e4h,0d8h,0b0h,0a0h,040h	; 952c  ....?.....z....@
	defb 080h,03ch,07eh,0f3h,0e0h,07ch,07eh,03ch,000h,000h,004h,00ah,01fh,07ch,0c0h,080h	; 953c  .<~..|~<.....|..
	defb 003h,008h,030h,060h,080h,003h,000h,0aeh,0f0h,000h,001h,007h,00fh,03ch,072h,0fdh	; 954c  ..0`.........<r.
	defb 0e0h,0e5h,0cbh,0e7h,03fh,0f4h,068h,0c0h,082h,0c0h,080h,0ffh,0f8h,0ffh,0e0h,01fh	; 955c  ....?.h.........
	defb 00fh,072h,057h,0a8h,0abh,0ach,069h,093h,003h,0feh,060h,008h,0b2h,00ah,0e2h,0e0h	; 956c  .rW...i...`.....
	defb 0f0h,00bh,022h,08ch,090h,0a0h,003h,000h,092h,01ah,038h,0cfh,007h,01fh,03fh,03fh	; 957c  ..".......8...??
	defb 07fh,026h,07fh,0f8h,0e0h,0e0h,0c0h,0c7h,0c0h,007h,003h,006h,000h,085h,0ffh,087h	; 958c  .&..............
	defb 07bh,00dh,003h,003h,000h,08ch,0e6h,0d9h,0b7h,06ch,050h,0c0h,000h,000h,0fch,0e7h	; 959c  {........lP.....
	defb 01ch,0f0h,004h,000h,084h,018h,06bh,014h,003h,004h,000h,002h,01fh,003h,03fh,003h	; 95ac  ......k.......?.
	defb 01fh,002h,087h,0a2h,0c7h,0c3h,0c3h,0c1h,0c0h,0c0h,0f8h,0f8h,0fch,0fch,0feh,0feh	; 95bc  ................
	defb 03ch,07fh,030h,048h,090h,060h,007h,003h,001h,00fh,018h,03ch,00eh,0deh,0ffh,0ffh	; 95cc  <.0H.`.....<....
	defb 0feh,0feh,0fch,0f8h,0f8h,0f0h,004h,000h,003h,00fh,003h,007h,082h,003h,002h,004h	; 95dc  ................
	defb 0c0h,08eh,040h,0c0h,040h,080h,02fh,01fh,00fh,007h,003h,001h,000h,000h,080h,080h	; 95ec  ..@.@./.........
	defb 003h,0c0h,0abh,060h,0e0h,050h,003h,00fh,01fh,00fh,000h,000h,008h,000h,0fch,0f8h	; 95fc  ...`.P..........
	defb 0f0h,0e0h,000h,001h,000h,008h,000h,000h,010h,000h,000h,01fh,07fh,01eh,000h,004h	; 960c  ................
	defb 004h,01eh,004h,004h,000h,000h,070h,0fch,0feh,01eh,07fh,07fh,03fh,01eh,004h,000h	; 961c  ......p.....?...
	defb 084h,020h,040h,063h,0ach,006h,000h,0aeh,004h,003h,000h,000h,003h,006h,03fh,0fah	; 962c  . @c..........?.
	defb 03fh,0c0h,000h,000h,080h,0c1h,04fh,0bfh,066h,099h,003h,000h,003h,007h,0f8h,0c7h	; 963c  ?.....O.f.......
	defb 0c0h,0bfh,061h,03fh,08fh,080h,00fh,0c7h,06ch,007h,0cfh,033h,0f9h,0cch,03fh,039h	; 964c  ..a?....l..3..?9
	defb 07ch,010h,038h,00fh,07fh,007h,004h,000h,09ah,0ffh,0e0h,0ffh,00fh,0fch,01fh,001h	; 965c  |.8.............
	defb 000h,059h,003h,003h,0fch,03eh,0fch,0fch,00fh,092h,024h,001h,0f0h,0f0h,007h,00fh	; 966c  .Y...>....$.....
	defb 002h,0fch,00fh,006h,000h,000h	; 967c

; ----------------------------------------------------------------------
; DATOS rle_vram_9682: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (423
;   bytes)
;   0x9682..0x9829  (423 bytes)
DATA_rle_vram_9682:
	defb 004h,060h,081h,050h,003h,040h,004h,0a0h,004h,050h,081h,096h,00dh,060h,0a3h,020h	; 9682  .`.P.@...P...`.
	defb 030h,020h,030h,020h,030h,020h,032h,020h,084h,0c0h,020h,0c0h,020h,0c0h,0c2h,0c0h	; 9692  0 0 0 2 .. . ...
	defb 084h,020h,0c0h,070h,0f7h,070h,050h,020h,030h,060h,060h,0c0h,070h,040h,070h,020h	; 96a2  . .p.pP 0``.p@p
	defb 070h,096h,004h,090h,085h,070h,020h,070h,096h,096h,006h,060h,004h,096h,002h,090h	; 96b2  p....p p...`....
	defb 092h,000h,090h,030h,030h,080h,082h,083h,082h,092h,083h,030h,030h,080h,032h,030h	; 96c2  ...00......00.20
	defb 020h,020h,032h,004h,0c2h,094h,030h,0c0h,020h,020h,032h,043h,083h,0c2h,042h,042h	; 96d2    2...0.  2C..BB
	defb 020h,020h,032h,043h,083h,0c2h,042h,0c2h,0fch,0fch,004h,0c2h,086h,030h,0c0h,0fch	; 96e2    2C..B......0..
	defb 0c7h,0c0h,020h,006h,0c0h,003h,030h,082h,020h,092h,003h,020h,08ch,0c7h,0fch,0fch	; 96f2  .. ...0. .. ....
	defb 0c7h,0f0h,0fch,0f0h,040h,0c5h,0c4h,0c4h,050h,008h,040h,004h,050h,002h,040h,081h	; 9702  ....@...P.@.P.@.
	defb 050h,005h,040h,006h,050h,002h,040h,005h,070h,003h,0f0h,007h,040h,086h,070h,040h	; 9712  P.@.P.@.p...@.p@
	defb 040h,074h,054h,054h,003h,040h,004h,070h,003h,050h,081h,085h,005h,070h,002h,050h	; 9722  @tTT.@.p.P...p.P
	defb 081h,040h,003h,0f0h,085h,0e0h,070h,050h,040h,040h,003h,0f0h,005h,0e0h,002h,090h	; 9732  .@....pP@@......
	defb 085h,096h,098h,086h,080h,060h,003h,040h,002h,050h,084h,040h,050h,050h,0f0h,003h	; 9742  .....`.@.P.@PP..
	defb 040h,004h,050h,008h,0f0h,094h,0f4h,0f7h,075h,075h,070h,075h,075h,054h,040h,075h	; 9752  @.P.....uupuuT@u
	defb 075h,050h,054h,040h,070h,040h,0a4h,040h,040h,070h,004h,040h,081h,0a0h,003h,040h	; 9762  uPT@p@.@@p.@...@
	defb 002h,070h,083h,040h,0a0h,0a0h,009h,040h,081h,050h,004h,040h,002h,050h,084h,040h	; 9772  .p.@...@.P.@.P.@
	defb 050h,040h,050h,003h,040h,082h,054h,0f0h,007h,0e0h,002h,0f0h,006h,0e0h,003h,0f0h	; 9782  P@P.@.T.........
	defb 005h,0e0h,010h,040h,006h,0a0h,082h,0b0h,0f0h,005h,0a0h,083h,0b0h,0f0h,0b0h,004h	; 9792  ...@............
	defb 0a0h,084h,0b0h,0f0h,0fbh,0f0h,004h,040h,004h,080h,004h,090h,004h,080h,081h,050h	; 97a2  .......@.......P
	defb 007h,040h,002h,0f0h,006h,0b0h,004h,0f0h,014h,0b0h,003h,080h,003h,060h,081h,0f0h	; 97b2  .@...........`..
	defb 003h,080h,003h,060h,081h,020h,003h,0f0h,004h,0d0h,088h,060h,090h,096h,090h,040h	; 97c2  ...`. .....`...@
	defb 070h,0f0h,070h,003h,040h,085h,080h,090h,090h,098h,080h,003h,060h,008h,020h,007h	; 97d2  p.p.@.......`. .
	defb 060h,081h,0f0h,004h,030h,003h,020h,081h,0f2h,003h,030h,088h,020h,030h,020h,040h	; 97e2  `...0. ...0. 0 @
	defb 020h,030h,030h,070h,003h,0c3h,08ah,032h,030h,0c3h,0c5h,030h,0c3h,043h,0c4h,032h	; 97f2   00p...20..0.C.2
	defb 032h,004h,020h,086h,0c0h,083h,032h,0c2h,042h,042h,006h,0c0h,084h,020h,043h,040h	; 9802  2. ...2.BB... C@
	defb 042h,004h,0c0h,002h,0c2h,08eh,0c3h,043h,040h,0c0h,0c2h,0c0h,0c2h,0c3h,0c2h,030h	; 9812  B......C@......0
	defb 0c3h,0c0h,082h,082h,008h,0c0h,000h	; 9822

; ----------------------------------------------------------------------
; DATOS rle_vram_9829: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (379
;   bytes)
;   0x9829..0x99a4  (379 bytes)
DATA_rle_vram_9829:
	defb 002h,000h,081h,040h,005h,000h,084h,098h,03dh,0d8h,0c3h,004h,000h,084h,086h,0b6h	; 9829  ...@....=.......
	defb 039h,054h,004h,000h,084h,080h,0b0h,038h,050h,007h,000h,083h,00eh,01fh,00eh,004h	; 9839  9T.....8P.......
	defb 000h,08eh,0c0h,078h,03fh,03ch,060h,000h,000h,040h,0a0h,040h,080h,040h,0a0h,040h	; 9849  ...x?<`..@.@.@.@
	defb 004h,000h,081h,0ffh,003h,000h,0a0h,010h,086h,029h,054h,03eh,018h,041h,014h,000h	; 9859  .........)T>.A..
	defb 000h,001h,001h,003h,003h,007h,007h,080h,091h,0a0h,0b4h,070h,0d8h,0dch,0d8h,000h	; 9869  ...........p....
	defb 000h,080h,0c0h,040h,060h,0e0h,0b0h,006h,000h,002h,001h,006h,000h,002h,011h,004h	; 9879  ...@`...........
	defb 000h,0ach,001h,003h,027h,0f7h,000h,000h,010h,0b8h,080h,043h,0efh,0dfh,00fh,01fh	; 9889  ....'......C....
	defb 03fh,07fh,0feh,0feh,0fdh,0ffh,098h,0b8h,0b8h,038h,078h,0e8h,0c4h,0c2h,0d0h,0d8h	; 9899  ?........8x.....
	defb 06ch,066h,0b3h,0b9h,09fh,0cdh,000h,000h,040h,0e0h,0f0h,0f8h,0ach,0c1h,005h,000h	; 98a9  lf......@.......
	defb 083h,040h,0c0h,0a0h,005h,000h,083h,005h,00eh,004h,003h,003h,0a0h,006h,001h,06dh	; 98b9  .@.............m
	defb 0ddh,008h,0bbh,0bbh,0b7h,06ah,011h,0efh,09eh,01eh,000h,080h,080h,087h,07fh,0ffh	; 98c9  .....j..........
	defb 0deh,039h,002h,007h,06fh,0f7h,0ffh,0ffh,07ch,099h,071h,028h,09fh,003h,0ffh,0fch	; 98d9  .9..o...|.q(....
	defb 0e1h,0ceh,0eeh,09ch,063h,006h,002h,0ffh,0d6h,039h,0ffh,0f0h,0fch,0f8h,0e0h,0feh	; 98e9  ....c....9......
	defb 010h,0cch,080h,0ffh,0feh,0f6h,07bh,059h,00ch,0c4h,0ceh,0f6h,0fbh,0ffh,02fh,011h	; 98f9  ......{Y....../.
	defb 031h,07bh,0f3h,079h,03ch,0d7h,0b9h,0c4h,0cdh,0ech,0a0h,050h,00ch,01ch,00ah,04ch	; 9909  1{.y<......P...L
	defb 09eh,00ch,000h,080h,080h,040h,000h,080h,0bdh,018h,0c0h,0cdh,022h,015h,00ah,008h	; 9919  .....@......"...
	defb 000h,000h,084h,0ceh,000h,0a6h,088h,036h,011h,000h,003h,0b3h,000h,066h,0a1h,014h	; 9929  .......6.....f..
	defb 022h,000h,0e3h,0cch,000h,024h,035h,090h,088h,000h,021h,073h,000h,026h,032h,093h	; 9939  "....$5...!s.&2.
	defb 089h,002h,0e3h,0cch,000h,092h,00ch,00eh,044h,044h,021h,073h,000h,044h,062h,02ah	; 9949  ........DD!s.Db*
	defb 031h,011h,003h,0b3h,000h,020h,02ah,091h,091h,010h,0e3h,0cch,006h,000h,083h,008h	; 9959  1.... *.........
	defb 005h,002h,005h,000h,08dh,025h,021h,008h,005h,002h,002h,000h,000h,005h,044h,022h	; 9969  .....%!.......D"
	defb 02ah,010h,003h,000h,083h,044h,020h,0a0h,006h,000h,087h,008h,00ch,01ch,018h,01ah	; 9979  *....D .........
	defb 020h,008h,003h,000h,095h,004h,006h,00ch,00dh,002h,000h,000h,044h,0cch,0ech,0deh	; 9989   ...........D...
	defb 04ah,044h,000h,020h,020h,072h,066h,0f7h,06eh,012h,000h	; 9999  JD.  rf.n..

; ----------------------------------------------------------------------
; DATOS rle_vram_99A4: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (221
;   bytes)
;   0x99a4..0x9a81  (221 bytes)
DATA_rle_vram_99A4:
	defb 00ah,0f0h,081h,070h,005h,050h,083h,0f0h,070h,050h,005h,070h,002h,0f0h,081h,050h	; 99a4  ...p.P..pP.p...P
	defb 005h,070h,008h,090h,003h,0f0h,081h,070h,00ch,0f0h,008h,070h,008h,080h,00ah,0f0h	; 99b4  .p.....p...p....
	defb 006h,0f4h,008h,040h,017h,0f0h,081h,074h,003h,0f0h,005h,0f4h,003h,0f0h,004h,0f4h	; 99c4  ...@...t........
	defb 081h,0f0h,008h,0f4h,008h,040h,004h,0f0h,081h,070h,003h,040h,006h,0f0h,082h,070h	; 99d4  .....@...p.@...p
	defb 040h,006h,0f0h,082h,070h,050h,004h,0f0h,084h,060h,0f0h,070h,050h,004h,0f0h,084h	; 99e4  @...pP...`.pP...
	defb 060h,0f0h,070h,050h,005h,0f0h,081h,070h,005h,0f0h,081h,074h,003h,070h,081h,0f0h	; 99f4  `.pP...p...t.p..
	defb 003h,074h,003h,070h,082h,0f0h,070h,005h,0f7h,085h,070h,0f7h,070h,0f0h,0f7h,003h	; 9a04  .t.p..p...p.p...
	defb 074h,084h,040h,0f0h,0f0h,074h,005h,040h,082h,070h,050h,006h,040h,082h,0f0h,070h	; 9a14  t.@..t.@.pP.@..p
	defb 006h,040h,002h,0f0h,002h,040h,086h,050h,040h,040h,0f0h,070h,070h,005h,0f0h,085h	; 9a24  .@...@.P@@.pp...
	defb 060h,0f0h,070h,070h,050h,003h,040h,004h,050h,005h,040h,002h,050h,082h,070h,050h	; 9a34  `.ppP.@.P.@.P.pP
	defb 006h,040h,082h,070h,050h,003h,040h,004h,050h,005h,040h,084h,050h,040h,070h,050h	; 9a44  .@.pP.@.P.@.P@pP
	defb 006h,040h,081h,050h,005h,040h,002h,050h,083h,070h,050h,050h,005h,040h,081h,070h	; 9a54  .@.P.@.P.pPP.@.p
	defb 007h,050h,008h,040h,002h,050h,003h,040h,004h,050h,00fh,040h,007h,0f0h,081h,060h	; 9a64  .P.@.P.@.P.@...`
	defb 007h,0f0h,081h,060h,007h,0f0h,081h,060h,007h,0f0h,081h,060h,000h	; 9a74  ...`...`...`.

; ----------------------------------------------------------------------
; DATOS rle_vram_9A81: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (174
;   bytes)
;   0x9a81..0x9b2f  (174 bytes)
DATA_rle_vram_9A81:
	defb 002h,000h,081h,020h,007h,000h,092h,050h,028h,014h,054h,054h,0a8h,067h,016h,038h	; 9a81  ... ...P(.TT.g.8
	defb 056h,0b0h,0d8h,068h,028h,018h,056h,0efh,046h,004h,000h,084h,067h,016h,038h,056h	; 9a91  V..h(.V.F...g.8V
	defb 008h,000h,087h,005h,00ah,00ah,007h,028h,050h,0a0h,006h,000h,086h,0c0h,078h,0bfh	; 9aa1  .......(P.....x.
	defb 0bfh,01fh,060h,003h,000h,09ch,004h,00ah,0e4h,004h,00ah,004h,001h,001h,003h,001h	; 9ab1  ..`.............
	defb 007h,002h,000h,000h,03fh,077h,0efh,0feh,0fdh,053h,016h,061h,000h,001h,002h,007h	; 9ac1  ....?w...S.a....
	defb 001h,003h,003h,001h,097h,086h,073h,0fdh,0feh,0efh,077h,03fh,000h,000h,00eh,011h	; 9ad1  ......s...w?....
	defb 00eh,012h,08dh,05dh,000h,000h,031h,066h,0a8h,016h,00bh,05dh,003h,000h,09fh,004h	; 9ae1  ...]..1f...]....
	defb 003h,001h,000h,000h,076h,08eh,005h,000h,02dh,07bh,02ah,000h,06ch,0a6h,09bh,06dh	; 9af1  ....v...-{*.l..m
	defb 0b5h,05ah,0eah,074h,0b5h,0dah,048h,008h,008h,010h,000h,000h,0feh,03ch,006h,000h	; 9b01  .Z.t..H......<..
	defb 084h,08ch,040h,020h,000h,004h,080h,083h,08ch,040h,020h,006h,000h,08fh,046h,0efh	; 9b11  ..@ .....@ ...F.
	defb 056h,018h,06ah,070h,06ch,000h,056h,038h,016h,067h,06fh,02fh,096h,000h	; 9b21  V.jpl.V8.go/..

; ----------------------------------------------------------------------
; DATOS rle_vram_9B2F: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (91
;   bytes)
;   0x9b2f..0x9b8a  (91 bytes)
DATA_rle_vram_9B2F:
	defb 010h,0f0h,081h,0e0h,008h,0f0h,081h,0e0h,006h,0f0h,081h,0e0h,02ah,0f0h,081h,0e0h	; 9b2f  ............*...
	defb 006h,0f0h,002h,0e0h,081h,0f0h,006h,0e0h,082h,0f0h,0e0h,004h,0f0h,002h,0e0h,083h	; 9b3f  ................
	defb 0f0h,0e0h,0e0h,005h,0f0h,081h,0e0h,008h,0f0h,002h,0e0h,006h,0f0h,081h,0e0h,003h	; 9b4f  ................
	defb 0f0h,081h,0e0h,003h,0f0h,002h,0e0h,002h,0f0h,002h,0e0h,003h,0f0h,084h,0e0h,0f0h	; 9b5f  ................
	defb 0e0h,0e0h,010h,0f0h,003h,0e0h,005h,0f0h,007h,0e0h,003h,0f0h,085h,0e0h,0f0h,0f0h	; 9b6f  ................
	defb 0e0h,0e0h,003h,0f0h,085h,0e0h,0f0h,0f0h,0e0h,0e0h,000h	; 9b7f  ...........

; ----------------------------------------------------------------------
; DATOS rle_vram_9B8A: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (192
;   bytes)
;   0x9b8a..0x9c4a  (192 bytes)
DATA_rle_vram_9B8A:
	defb 082h,000h,010h,006h,000h,084h,0c3h,0b8h,0dch,0d8h,004h,000h,084h,01fh,07dh,0fch	; 9b8a  ..............}.
	defb 033h,005h,000h,08eh,00ch,007h,003h,005h,005h,003h,004h,000h,000h,080h,0f8h,0ffh	; 9b9a  3...............
	defb 0fch,0c0h,004h,000h,081h,007h,003h,000h,081h,048h,003h,000h,081h,0ffh,003h,000h	; 9baa  .........H......
	defb 081h,0ffh,003h,000h,081h,0ffh,003h,000h,081h,0e0h,003h,000h,083h,03ch,07eh,03ch	; 9bba  .............<~<
	defb 009h,000h,089h,0ffh,021h,00ch,09ch,03ah,058h,005h,022h,0ffh,004h,000h,094h,078h	; 9bca  ....!..:X."....x
	defb 0ech,0fch,078h,010h,000h,032h,04ch,00ch,024h,076h,028h,020h,010h,008h,024h,04ch	; 9bda  ..x..2L.$v( ..$L
	defb 020h,082h,028h,005h,000h,083h,001h,003h,007h,005h,000h,093h,080h,0e0h,0f0h,01fh	; 9bea   .(.............
	defb 03fh,03fh,07fh,07fh,004h,004h,008h,0f8h,0fch,0fch,0feh,0a8h,0a4h,0b4h,092h,005h	; 9bfa  ??..............
	defb 000h,0a3h,080h,0c0h,0e0h,001h,003h,007h,007h,00fh,09fh,00ah,002h,028h,048h,0d8h	; 9c0a  .............(H.
	defb 090h,030h,070h,06ah,0f4h,01bh,009h,0c0h,0e2h,0eah,0b9h,098h,001h,0e0h,0f0h,0f0h	; 9c1a  .0pj............
	defb 0f8h,0f8h,003h,03bh,09ah,006h,000h,082h,044h,065h,006h,000h,092h,092h,0bah,0efh	; 9c2a  ........De......
	defb 012h,036h,06fh,045h,07eh,00eh,03ch,048h,059h,0fbh,0deh,096h,07dh,0f5h,079h,000h	; 9c3a  .6oE~.<HY...}.y.

; ----------------------------------------------------------------------
; DATOS rle_vram_9C4A: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (81
;   bytes)
;   0x9c4a..0x9c9b  (81 bytes)
DATA_rle_vram_9C4A:
	defb 008h,0f0h,004h,096h,004h,090h,003h,096h,005h,060h,010h,0f0h,007h,070h,081h,087h	; 9c4a  .........`...p..
	defb 010h,070h,008h,090h,008h,070h,007h,080h,081h,070h,008h,060h,008h,080h,003h,0b0h	; 9c5a  .p...p...p.`....
	defb 005h,080h,008h,090h,008h,060h,005h,090h,003h,0b9h,004h,060h,004h,096h,008h,060h	; 9c6a  .....`.....`...`
	defb 006h,090h,005h,0b9h,002h,0b8h,003h,0b6h,008h,096h,005h,060h,003h,096h,011h,020h	; 9c7a  ...........`...
	defb 002h,0c2h,002h,0c0h,083h,060h,096h,096h,003h,0c2h,002h,0c0h,083h,060h,096h,096h	; 9c8a  .....`.......`..
	defb 000h	; 9c9a

; ----------------------------------------------------------------------
; DATOS rle_vram_9C9B: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (282
;   bytes)
;   0x9c9b..0x9db5  (282 bytes)
DATA_rle_vram_9C9B:
	defb 003h,000h,09dh,020h,000h,004h,000h,000h,049h,0e0h,049h,012h,049h,0c3h,049h,092h	; 9c9b  ... ....I.I.I.I.
	defb 024h,070h,024h,04ah,024h,00ch,024h,089h,040h,0e0h,040h,012h,049h,0c3h,049h,092h	; 9cab  $p$J$.$.@.@.I.I.
	defb 003h,000h,0f2h,040h,020h,0f0h,020h,080h,0f9h,060h,086h,076h,078h,030h,0f8h,0e6h	; 9cbb  ...@ . ..`.vx0..
	defb 002h,050h,0e6h,06fh,046h,010h,01eh,061h,043h,0f0h,061h,0fch,0e3h,099h,06ch,020h	; 9ccb  .P.oF..aC.a...l
	defb 0f7h,063h,008h,07fh,0a3h,098h,093h,032h,0ffh,018h,098h,0feh,0f5h,0c8h,08dh,069h	; 9cdb  .c.....2.......i
	defb 01ah,0bch,019h,003h,007h,068h,003h,088h,04eh,0ceh,010h,0b9h,012h,007h,03fh,0c9h	; 9ceb  .....h..N.....?.
	defb 08ah,017h,02ah,017h,00bh,02ah,017h,00ah,02fh,009h,0a2h,077h,022h,0ffh,004h,027h	; 9cfb  ..*..*../..w"..'
	defb 080h,024h,072h,027h,04ah,01ch,0ech,041h,0fah,0d4h,0fah,00ch,02ch,0feh,0e8h,0fch	; 9d0b  .$r'J..A....,...
	defb 0fbh,061h,073h,089h,058h,004h,020h,080h,0b7h,0ebh,044h,022h,080h,008h,000h,000h	; 9d1b  .as.X. ...D"....
	defb 010h,043h,00fh,003h,040h,003h,000h,0ffh,0e3h,097h,0dfh,003h,082h,044h,0a0h,008h	; 9d2b  .C..@........D..
	defb 05bh,001h,007h,030h,018h,00ch,014h,001h,0efh,0c6h,0c6h,031h,010h,020h,006h,008h	; 9d3b  [..0.......1. ..
	defb 057h,002h,0cch,024h,002h,01fh,043h,009h,027h,042h,0e7h,067h,042h,025h,017h,042h	; 9d4b  W..$..C.'B.gB%.B
	defb 097h,042h,0f0h,048h,044h,00ah,080h,051h,064h,0e2h,092h,045h,021h,008h,0f8h,0f6h	; 9d5b  .B.HD..Qd..E!...
	defb 001h,007h,020h,002h,008h,000h,002h,000h,00ah,0c3h,014h,06eh,022h,071h,024h,034h	; 9d6b  .. ........n"q$4
	defb 0c8h,002h,030h,020h,000h,004h,040h,000h,020h,001h,012h,00ch,004h,013h,02fh,09ah	; 9d7b  ..0 ..@. ...../.
	defb 0d2h,047h,022h,027h,022h,014h,02ah,0fch,000h,000h,008h,000h,010h,084h,0e1h,0f4h	; 9d8b  .G"'".*.........
	defb 000h,000h,008h,000h,000h,040h,004h,000h,000h,044h,000h,010h,019h,040h,004h,020h	; 9d9b  .....@...D...@.
	defb 010h,004h,000h,001h,004h,000h,002h,081h,000h,000h	; 9dab  ..........

; ----------------------------------------------------------------------
; DATOS rle_vram_9DB5: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (242
;   bytes)
;   0x9db5..0x9ea7  (242 bytes)
DATA_rle_vram_9DB5:
	defb 005h,050h,003h,070h,098h,030h,072h,020h,020h,070h,072h,020h,020h,030h,072h,020h	; 9db5  .P.p.0r  pr  0r
	defb 070h,070h,072h,020h,020h,030h,070h,020h,020h,070h,072h,020h,020h,005h,070h,003h	; 9dc5  ppr  0p  pr  .p.
	defb 020h,002h,0b8h,081h,0f9h,003h,0b9h,002h,090h,002h,0b9h,081h,0f9h,003h,0b9h,002h	; 9dd5   ...............
	defb 090h,083h,0b9h,0f9h,0b9h,005h,090h,083h,0f9h,0b9h,0b9h,005h,090h,083h,080h,0f8h	; 9de5  ................
	defb 0b9h,005h,090h,084h,0b9h,0f9h,0b9h,0b9h,003h,090h,082h,050h,0f9h,005h,0b9h,002h	; 9df5  ...........P....
	defb 090h,002h,070h,0a1h,050h,0f0h,0b0h,050h,070h,070h,084h,0b8h,0f9h,0b8h,0f8h,090h	; 9e05  ..p.P..Ppp......
	defb 0b8h,084h,0b8h,0f9h,0b8h,0f8h,0b8h,0b8h,0f9h,0b8h,040h,090h,090h,0b8h,0b8h,090h	; 9e15  ..........@.....
	defb 090h,040h,0a8h,0f8h,085h,003h,080h,002h,050h,085h,0a8h,085h,084h,080h,080h,003h	; 9e25  .@......P.......
	defb 050h,084h,0a9h,085h,040h,060h,004h,070h,084h,0a9h,085h,050h,040h,003h,060h,085h	; 9e35  P...@`.p...P@.`.
	defb 050h,0a9h,0f6h,065h,064h,003h,060h,08eh,050h,0a9h,0f9h,065h,064h,060h,080h,050h	; 9e45  P..ed.`.P..ed`.P
	defb 050h,0a8h,0f8h,085h,085h,084h,003h,040h,082h,0a9h,0f8h,004h,085h,084h,054h,084h	; 9e55  P......@......T.
	defb 0f9h,0a8h,004h,085h,002h,084h,081h,0a8h,004h,085h,084h,084h,040h,040h,064h,003h	; 9e65  ............@@d.
	defb 040h,081h,070h,003h,040h,081h,084h,003h,040h,002h,0b5h,085h,0f5h,050h,040h,040h	; 9e75  @.p.@...@....P@@
	defb 070h,006h,040h,08fh,070h,0f0h,0a0h,040h,080h,040h,084h,070h,070h,0f0h,0f0h,074h	; 9e85  p.@.p..@.@.pp..t
	defb 074h,075h,085h,00eh,040h,081h,050h,004h,040h,081h,070h,006h,040h,004h,050h,002h	; 9e95  tu..@.P.@.p.@.P.
	defb 040h,000h	; 9ea5

; ----------------------------------------------------------------------
; DATOS rle_vram_9EA7: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (184
;   bytes)
;   0x9ea7..0x9f5f  (184 bytes)
DATA_rle_vram_9EA7:
	defb 005h,000h,081h,0ffh,004h,000h,0a1h,008h,020h,08ah,020h,054h,0eah,07eh,0ffh,0f7h	; 9ea7  ........ . T.~..
	defb 0ffh,042h,024h,0bdh,0efh,0bdh,0c3h,081h,018h,018h,03ch,018h,081h,0c3h,0ffh,018h	; 9eb7  .B$.......<.....
	defb 042h,0bdh,06ah,014h,024h,0c3h,000h,0ffh,00ah,000h,083h,001h,00ch,070h,006h,000h	; 9ec7  B.j.$........p..
	defb 08eh,001h,002h,001h,006h,019h,000h,04ch,09ch,018h,040h,088h,003h,00ch,010h,003h	; 9ed7  .......L..@.....
	defb 020h,088h,010h,004h,008h,008h,012h,010h,020h,022h,003h,000h,08eh,067h,080h,040h	; 9ee7   ....... "...g.@
	defb 020h,024h,018h,010h,010h,0a0h,040h,040h,021h,022h,01ch,004h,040h,004h,080h,090h	; 9ef7   $....@@!"..@...
	defb 020h,040h,020h,030h,0c8h,008h,004h,002h,020h,040h,0c0h,030h,008h,004h,006h,000h	; 9f07   @ 0.... @.0....
	defb 004h,080h,003h,040h,003h,000h,08eh,0e0h,01ch,002h,005h,010h,001h,048h,003h,025h	; 9f17  ...@.........H.%
	defb 09bh,07fh,002h,001h,006h,003h,020h,002h,010h,002h,008h,093h,004h,00bh,007h,013h	; 9f27  ...... .........
	defb 007h,009h,003h,001h,024h,00bh,007h,015h,02fh,01fh,027h,00bh,002h,002h,001h,006h	; 9f37  ....$.../.'.....
	defb 000h,093h,018h,006h,080h,040h,020h,018h,006h,001h,005h,07fh,08fh,015h,002h,047h	; 9f47  .....@ ........G
	defb 098h,080h,070h,00eh,001h,005h,000h,000h	; 9f57  ..p.....

; ----------------------------------------------------------------------
; DATOS rle_vram_9F5F: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (110
;   bytes)
;   0x9f5f..0x9fcd  (110 bytes)
DATA_rle_vram_9F5F:
	defb 008h,0f0h,00ch,080h,005h,0a9h,002h,0a0h,084h,0f0h,050h,070h,0f0h,003h,0b0h,082h	; 9f5f  ..........Pp....
	defb 0b9h,0a9h,003h,090h,083h,020h,0c0h,0c0h,006h,090h,015h,0f0h,002h,0a0h,002h,0f0h	; 9f6f  ..... ..........
	defb 004h,0c0h,003h,020h,008h,0f0h,003h,0c0h,002h,020h,002h,0c0h,081h,020h,006h,0c0h	; 9f7f  ... ..... ... ..
	defb 002h,020h,002h,0f0h,006h,0b0h,002h,020h,002h,0c0h,002h,020h,005h,0c0h,002h,020h	; 9f8f  . ..... ... ...
	defb 003h,0c0h,004h,0b0h,004h,0a0h,003h,020h,002h,0c0h,008h,080h,003h,0a8h,007h,0a0h	; 9f9f  ....... ........
	defb 081h,090h,005h,080h,002h,090h,081h,020h,004h,0a8h,081h,0b8h,003h,0b9h,008h,090h	; 9faf  ....... ........
	defb 002h,0c0h,006h,090h,081h,0b9h,004h,090h,082h,0c0h,020h,009h,090h,000h	; 9fbf  .......... ...

; ----------------------------------------------------------------------
; DATOS rle_vram_9FCD: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0 (sigue en el banco 31,
;   en 0xA000); lo leen p00:4B3C (51 bytes)
;   0x9fcd..0xa000  (51 bytes)
DATA_rle_vram_9FCD:
	defb 002h,000h,081h,010h,005h,000h,002h,0f7h,093h,06bh,05ch,01ch,0dbh,0e7h,042h,0fbh	; 9fcd  .........k\...B.
	defb 077h,00fh,0d6h,0b8h,0d0h,000h,000h,0aeh,0aeh,035h,058h,080h,003h,000h,083h,0f7h	; 9fdd  w........5X.....
	defb 06bh,08ch,005h,000h,083h,0ach,071h,0ach,005h,000h,084h,0ach,071h,0ach,000h,003h	; 9fed  k.....q.....q...
	defb 001h,099h,000h	; 9ffd

; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 08 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS dibujo_A000: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (48 bytes)
;   0xa000..0xa030  (48 bytes)
DATA_dibujo_A000:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a000  ................
	defb 000h,000h,000h,000h,000h,0deh,0dfh,0e0h,000h,000h,000h,000h,0e1h,0e2h,0e3h,000h	; a010  ................
	defb 069h,067h,063h,06dh,0ddh,000h,000h,000h,06ah,063h,06dh,06eh,05eh,000h,000h,000h	; a020  igcm....jcmn^...

; ----------------------------------------------------------------------
; DATOS dibujo_A030: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (48 bytes)
;   0xa030..0xa060  (48 bytes)
DATA_dibujo_A030:
	defb 000h,000h,000h,0e4h,0e5h,000h,000h,000h,000h,000h,000h,0e6h,0e7h,000h,000h,000h	; a030  ................
	defb 000h,000h,000h,0e8h,0e9h,000h,000h,000h,000h,000h,000h,0eah,000h,000h,000h,000h	; a040  ................
	defb 069h,067h,063h,06dh,000h,000h,000h,000h,06ah,063h,06dh,06eh,05eh,000h,000h,000h	; a050  igcm....jcmn^...

; ----------------------------------------------------------------------
; DATOS dibujo_A060: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (48 bytes)
;   0xa060..0xa090  (48 bytes)
DATA_dibujo_A060:
	defb 000h,0ebh,0ech,000h,000h,000h,000h,000h,000h,0edh,0eeh,000h,000h,000h,000h,000h	; a060  ................
	defb 000h,0efh,0f0h,0f1h,000h,000h,000h,000h,000h,000h,0f2h,0f3h,000h,000h,000h,000h	; a070  ................
	defb 069h,067h,063h,06dh,000h,000h,000h,000h,06ah,063h,06dh,06eh,05eh,000h,000h,000h	; a080  igcm....jcmn^...

; ----------------------------------------------------------------------
; DATOS dibujo_A090: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (48 bytes)
;   0xa090..0xa0c0  (48 bytes)
DATA_dibujo_A090:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a090  ................
	defb 05ah,0f5h,0f6h,05bh,000h,000h,000h,000h,0f8h,0f9h,0fah,0fbh,000h,000h,000h,000h	; a0a0  Z..[............
	defb 069h,067h,063h,06dh,000h,000h,000h,000h,06ah,063h,06dh,06eh,05eh,000h,000h,000h	; a0b0  igcm....jcmn^...

; ----------------------------------------------------------------------
; DATOS dibujo_A0C0: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (48 bytes)
;   0xa0c0..0xa0f0  (48 bytes)
DATA_dibujo_A0C0:
	defb 069h,06dh,06eh,064h,05eh,000h,000h,000h,062h,063h,06bh,067h,0ddh,000h,000h,000h	; a0c0  imnd^...bckg....
	defb 000h,000h,000h,000h,0e1h,0e2h,0e3h,000h,000h,000h,000h,000h,000h,0deh,0dfh,0e0h	; a0d0  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a0e0  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A0F0: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (48 bytes)
;   0xa0f0..0xa120  (48 bytes)
DATA_dibujo_A0F0:
	defb 069h,06dh,06eh,064h,05eh,000h,000h,000h,062h,063h,06bh,067h,000h,000h,000h,000h	; a0f0  imnd^...bckg....
	defb 000h,000h,000h,0eah,000h,000h,000h,000h,000h,000h,000h,0e8h,0e9h,000h,000h,000h	; a100  ................
	defb 000h,000h,000h,0e6h,0e7h,000h,000h,000h,000h,000h,000h,0e4h,0e5h,000h,000h,000h	; a110  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A120: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (48 bytes)
;   0xa120..0xa150  (48 bytes)
DATA_dibujo_A120:
	defb 069h,06dh,06eh,064h,05eh,000h,000h,000h,062h,063h,06bh,067h,000h,000h,000h,000h	; a120  imnd^...bckg....
	defb 000h,000h,0f2h,0f3h,000h,000h,000h,000h,000h,0efh,0f0h,0f1h,000h,000h,000h,000h	; a130  ................
	defb 000h,0edh,0eeh,000h,000h,000h,000h,000h,000h,0ebh,0ech,000h,000h,000h,000h,000h	; a140  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A150: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (48 bytes)
;   0xa150..0xa180  (48 bytes)
DATA_dibujo_A150:
	defb 069h,06dh,06eh,064h,05eh,000h,000h,000h,062h,063h,06bh,067h,000h,000h,000h,000h	; a150  imnd^...bckg....
	defb 0f8h,0f9h,0fah,0fbh,000h,000h,000h,000h,05ah,0f5h,0f6h,05bh,000h,000h,000h,000h	; a160  ........Z..[....
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a170  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A180: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (32 bytes)
;   0xa180..0xa1a0  (32 bytes)
DATA_dibujo_A180:
	defb 080h,08ch,0d9h,0beh,0b3h,0dah,09ch,090h,086h,081h,0dbh,0a5h,0dch,0a6h,091h,096h	; a180  ................
	defb 000h,088h,0c3h,0bfh,0a7h,0b7h,098h,000h,000h,085h,0b0h,0aeh,0adh,0afh,095h,000h	; a190  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A1A0: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (32 bytes)
;   0xa1a0..0xa1c0  (32 bytes)
DATA_dibujo_A1A0:
	defb 000h,085h,0b0h,0aeh,0adh,0afh,095h,000h,000h,088h,0c3h,0bfh,0a7h,0b7h,098h,000h	; a1a0  ................
	defb 086h,081h,0dbh,0a5h,0dch,0a6h,091h,096h,080h,08ch,0d9h,0beh,0b3h,0dah,09ch,090h	; a1b0  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A1C0: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xa1c0..0xa1c4  (4 bytes)
DATA_dibujo_A1C0:
	defb 086h,086h,0a1h,08ah	; a1c0

; ----------------------------------------------------------------------
; DATOS dibujo_A1C4: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xa1c4..0xa1c8  (4 bytes)
DATA_dibujo_A1C4:
	defb 01ah,01bh,01ch,01dh	; a1c4

; ----------------------------------------------------------------------
; DATOS dibujo_A1C8: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (9 bytes)
;   0xa1c8..0xa1d1  (9 bytes)
DATA_dibujo_A1C8:
	defb 0a6h,0a0h,0ach,0a7h,0a1h,0adh,0a8h,0a2h,0aeh	; a1c8  .........

; ----------------------------------------------------------------------
; DATOS dibujo_A1D1: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (9 bytes)
;   0xa1d1..0xa1da  (9 bytes)
DATA_dibujo_A1D1:
	defb 0a9h,0a3h,0afh,0aah,0a4h,0b0h,0abh,0a5h,0b1h	; a1d1  .........

; ----------------------------------------------------------------------
; DATOS dibujo_A1DA: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xa1da..0xa1f2  (24 bytes)
DATA_dibujo_A1DA:
	defb 060h,061h,060h,061h,05ch,05dh,000h,000h,000h,05bh,05ah,000h,000h,05dh,000h,000h	; a1da  `a`a\]...[Z..]..
	defb 000h,000h,05ah,000h,05ch,05dh,05ch,000h	; a1ea  ..Z.\]\.

; ----------------------------------------------------------------------
; DATOS dibujo_A1F2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xa1f2..0xa1fa  (8 bytes)
DATA_dibujo_A1F2:
	defb 0a8h,0a9h,0d5h,0d4h,0b4h,0b5h,0e1h,0e0h	; a1f2  ........

; ----------------------------------------------------------------------
; DATOS dibujo_A1FA: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xa1fa..0xa202  (8 bytes)
DATA_dibujo_A1FA:
	defb 0c8h,0c9h,0f5h,0f4h,0cah,0cbh,0f7h,0f6h	; a1fa  ........

; ----------------------------------------------------------------------
; DATOS dibujo_A202: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xa202..0xa21a  (24 bytes)
DATA_dibujo_A202:
	defb 09ah,0a8h,09dh,0deh,0a9h,0dbh,08fh,099h,0a1h,0a4h,0c8h,0c6h,097h,098h,0a3h,0a2h	; a202  ................
	defb 0d9h,0d8h,000h,095h,095h,095h,0d6h,000h	; a212  ........

; ----------------------------------------------------------------------
; DATOS dibujo_A21A: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xa21a..0xa232  (24 bytes)
DATA_dibujo_A21A:
	defb 000h,05eh,05eh,05eh,0cch,000h,060h,061h,06ch,06bh,0cfh,0ceh,0f4h,062h,06ah,06dh	; a21a  .^^^..`alk...bjm
	defb 0cbh,0f7h,063h,071h,066h,0d4h,072h,0d1h	; a22a  ..cqf.r.

; ----------------------------------------------------------------------
; DATOS dibujo_A232: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (32 bytes)
;   0xa232..0xa252  (32 bytes)
DATA_dibujo_A232:
	defb 000h,000h,09ch,09eh,0dfh,0ddh,000h,000h,000h,000h,096h,0f8h,0f8h,0d7h,000h,000h	; a232  ................
	defb 09ch,064h,064h,070h,070h,0d2h,0d2h,0ddh,090h,091h,092h,0f5h,0c9h,0c9h,0c8h,0c7h	; a242  .ddpp...........

; ----------------------------------------------------------------------
; DATOS dibujo_A252: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (32 bytes)
;   0xa252..0xa272  (32 bytes)
DATA_dibujo_A252:
	defb 093h,094h,0f6h,0cbh,0f6h,0cbh,0cbh,0cah,065h,09bh,09bh,0a7h,0a7h,0dch,0dch,0d3h	; a252  ........e.......
	defb 000h,000h,05fh,0f8h,0f8h,0cdh,000h,000h,000h,000h,065h,067h,0d5h,0d3h,000h,000h	; a262  .._.......eg....

; ----------------------------------------------------------------------
; DATOS dibujo_A272: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa272..0xa282  (16 bytes)
DATA_dibujo_A272:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,05bh,000h,000h,000h,05ah,05ah,05ch,000h	; a272  ........[...ZZ\.

; ----------------------------------------------------------------------
; DATOS dibujo_A282: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa282..0xa292  (16 bytes)
DATA_dibujo_A282:
	defb 05ah,05bh,05ah,000h,05bh,05ah,000h,000h,05ah,05ch,000h,000h,000h,000h,000h,000h	; a282  Z[Z.[Z..Z\......

; ----------------------------------------------------------------------
; DATOS dibujo_A292: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa292..0xa2a2  (16 bytes)
DATA_dibujo_A292:
	defb 072h,071h,071h,070h,073h,06ch,06dh,073h,086h,06ch,06dh,086h,085h,084h,084h,083h	; a292  rqqpslms.lm.....

; ----------------------------------------------------------------------
; DATOS dibujo_A2A2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa2a2..0xa2b2  (16 bytes)
DATA_dibujo_A2A2:
	defb 0b6h,0b5h,073h,099h,0ddh,0deh,0deh,0ceh,087h,0d2h,0d3h,097h,08bh,084h,094h,09bh	; a2a2  ..s.............

; ----------------------------------------------------------------------
; DATOS dibujo_A2B2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa2b2..0xa2c2  (16 bytes)
DATA_dibujo_A2B2:
	defb 08bh,084h,094h,09bh,087h,0d2h,0d3h,097h,0ddh,0deh,0deh,0ceh,0b6h,0b5h,073h,099h	; a2b2  ..............s.

; ----------------------------------------------------------------------
; DATOS dibujo_A2C2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa2c2..0xa2d2  (16 bytes)
DATA_dibujo_A2C2:
	defb 0d6h,0d7h,0e7h,0e6h,0d4h,0d5h,0e5h,0d4h,0d2h,0d3h,0e3h,0e2h,0d0h,0d1h,0e1h,0e0h	; a2c2  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A2D2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa2d2..0xa2e2  (16 bytes)
DATA_dibujo_A2D2:
	defb 0d6h,0d7h,0e7h,0e6h,0d0h,0d1h,0e1h,0e0h,0d9h,000h,000h,0e9h,0d8h,000h,000h,0e8h	; a2d2  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A2E2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xa2e2..0xa2ea  (8 bytes)
DATA_dibujo_A2E2:
	defb 0a4h,0a8h,0a7h,0a6h,0a5h,0b5h,0b4h,0b3h	; a2e2  ........

; ----------------------------------------------------------------------
; DATOS dibujo_A2EA: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xa2ea..0xa2f2  (8 bytes)
DATA_dibujo_A2EA:
	defb 0a5h,0a8h,0a7h,0a6h,0a4h,0b5h,0b4h,0b3h	; a2ea  ........

; ----------------------------------------------------------------------
; DATOS dibujo_A2F2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (64 bytes)
;   0xa2f2..0xa332  (64 bytes)
DATA_dibujo_A2F2:
	defb 000h,000h,062h,062h,063h,064h,000h,000h,000h,062h,063h,065h,066h,067h,064h,000h	; a2f2  ..bbcd...bcefgd.
	defb 068h,069h,06ah,06bh,06ch,06dh,06eh,000h,06fh,070h,071h,072h,073h,074h,075h,000h	; a302  hijklmn.opqrstu.
	defb 06fh,076h,077h,078h,079h,07ah,075h,07bh,06fh,076h,07ch,07dh,07eh,07fh,080h,081h	; a312  ovwxyzu{ov|}~...
	defb 000h,082h,083h,084h,085h,086h,087h,000h,000h,000h,088h,088h,088h,000h,000h,000h	; a322  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A332: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (64 bytes)
;   0xa332..0xa372  (64 bytes)
DATA_dibujo_A332:
	defb 000h,000h,096h,096h,096h,000h,000h,000h,000h,0a9h,09dh,09dh,097h,090h,089h,000h	; a332  ................
	defb 0afh,0aah,0a3h,09eh,098h,091h,08ah,089h,0afh,0abh,0a4h,09fh,099h,092h,08ch,089h	; a342  ................
	defb 0afh,0ach,0a5h,0a0h,09ah,093h,08dh,08ah,000h,0adh,0a6h,0a1h,09bh,094h,08eh,08bh	; a352  ................
	defb 000h,0aeh,0a7h,09ch,09ch,095h,08bh,000h,000h,000h,0a8h,0a2h,000h,000h,000h,000h	; a362  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A372: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (64 bytes)
;   0xa372..0xa3b2  (64 bytes)
DATA_dibujo_A372:
	defb 000h,000h,000h,0d6h,0d6h,0d6h,000h,000h,000h,0d5h,0d4h,0d3h,0d2h,0d1h,0d0h,000h	; a372  ................
	defb 0cfh,0ceh,0cdh,0cch,0cbh,0cah,0c4h,0bdh,0c9h,0c3h,0c8h,0c7h,0c6h,0c5h,0c4h,0bdh	; a382  ................
	defb 000h,0c3h,0c2h,0c1h,0c0h,0bfh,0beh,0bdh,000h,0bch,0bbh,0bah,0b9h,0b8h,0b7h,0b6h	; a392  ................
	defb 000h,0b2h,0b5h,0b4h,0b3h,0b1h,0b0h,000h,000h,000h,0b2h,0b1h,0b0h,0b0h,000h,000h	; a3a2  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A3B2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (64 bytes)
;   0xa3b2..0xa3f2  (64 bytes)
DATA_dibujo_A3B2:
	defb 000h,000h,000h,000h,0f0h,0f6h,000h,000h,000h,0d9h,0e3h,0eah,0eah,0f5h,0fch,000h	; a3b2  ................
	defb 0d9h,0dch,0e2h,0e9h,0efh,0f4h,0fbh,000h,0d8h,0dbh,0e1h,0e8h,0eeh,0f3h,0fah,0fdh	; a3c2  ................
	defb 0d7h,0dah,0e0h,0e7h,0edh,0f2h,0f9h,0fdh,0d7h,0d8h,0dfh,0e6h,0ech,0f1h,0f8h,0fdh	; a3d2  ................
	defb 000h,0d7h,0deh,0e5h,0ebh,0ebh,0f7h,000h,000h,000h,0ddh,0e4h,0e4h,0e4h,000h,000h	; a3e2  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A3F2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (64 bytes)
;   0xa3f2..0xa432  (64 bytes)
DATA_dibujo_A3F2:
	defb 000h,000h,06dh,06eh,06fh,06fh,000h,000h,000h,06dh,06ah,06bh,06ch,06eh,06fh,000h	; a3f2  ..mnoo...mjklno.
	defb 000h,063h,064h,065h,066h,067h,068h,069h,000h,07ah,07bh,07ch,07dh,07eh,07fh,062h	; a402  .cdefghi.z{|}~.b
	defb 074h,07ah,075h,076h,077h,078h,079h,062h,087h,088h,070h,071h,072h,073h,079h,062h	; a412  tzuvwxyb..pqrsyb
	defb 000h,081h,082h,083h,084h,085h,086h,000h,000h,000h,000h,080h,080h,080h,000h,000h	; a422  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A432: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (64 bytes)
;   0xa432..0xa472  (64 bytes)
DATA_dibujo_A432:
	defb 000h,000h,089h,099h,099h,099h,000h,000h,000h,08fh,09fh,098h,092h,092h,0a6h,000h	; a432  ................
	defb 08fh,08eh,09eh,097h,091h,0ach,0a5h,0a0h,08fh,08ch,09dh,096h,090h,0abh,0a4h,0a0h	; a442  ................
	defb 08eh,08bh,09ch,095h,0afh,0aah,0a3h,0a0h,08dh,08ah,09bh,094h,0aeh,0a9h,0a2h,000h	; a452  ................
	defb 000h,08dh,09ah,093h,093h,0a8h,0a1h,000h,000h,000h,000h,000h,0adh,0a7h,000h,000h	; a462  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A472: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (64 bytes)
;   0xa472..0xa4b2  (64 bytes)
DATA_dibujo_A472:
	defb 000h,000h,0ceh,0ceh,0ceh,000h,000h,000h,000h,0d4h,0d3h,0d2h,0d1h,0d0h,0cfh,000h	; a472  ................
	defb 0b0h,0c7h,0c1h,0c0h,0bfh,0beh,0d6h,0d5h,0b0h,0c7h,0c6h,0c5h,0c4h,0c3h,0c8h,0c2h	; a482  ................
	defb 0b0h,0cdh,0cch,0cbh,0cah,0c9h,0c8h,000h,0b7h,0b6h,0b5h,0b4h,0b3h,0b2h,0b1h,000h	; a492  ................
	defb 000h,0bdh,0bch,0bah,0b9h,0b8h,0bbh,000h,000h,000h,0bdh,0bdh,0bch,0bbh,000h,000h	; a4a2  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A4B2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (64 bytes)
;   0xa4b2..0xa4f2  (64 bytes)
DATA_dibujo_A4B2:
	defb 000h,000h,0f5h,0fbh,000h,000h,000h,000h,000h,0efh,0f6h,0e1h,0e1h,0e8h,0dbh,000h	; a4b2  ................
	defb 000h,0f0h,0f7h,0fch,0e2h,0e9h,0d8h,0dbh,0eeh,0f1h,0f8h,0fdh,0e3h,0eah,0d9h,0dch	; a4c2  ................
	defb 0eeh,0f2h,0f9h,0deh,0e4h,0ebh,0dah,0ddh,0eeh,0f3h,0fah,0dfh,0e5h,0ech,0dch,0ddh	; a4d2  ................
	defb 000h,0f4h,0e0h,0e0h,0e6h,0edh,0ddh,000h,000h,000h,0e7h,0e7h,0e7h,000h,000h,000h	; a4e2  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A4F2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa4f2..0xa502  (16 bytes)
DATA_dibujo_A4F2:
	defb 0f9h,000h,000h,0feh,0ech,0f8h,0fdh,0edh,0eeh,0efh,0f0h,0f1h,0f2h,0f3h,0f4h,0f5h	; a4f2  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A502: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa502..0xa512  (16 bytes)
DATA_dibujo_A502:
	defb 0f2h,0f3h,0f4h,0f5h,0eeh,0efh,0f0h,0f1h,0ech,0f8h,0fdh,0edh,0f9h,000h,000h,0feh	; a502  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A512: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (160 bytes)
;   0xa512..0xa5b2  (160 bytes)
DATA_dibujo_A512:
	defb 000h,000h,000h,000h,074h,075h,076h,077h,078h,000h,000h,000h,0f2h,0f2h,0f2h,0f2h	; a512  ....tuvwx.......
	defb 000h,000h,000h,000h,079h,07ah,07bh,07ch,07dh,07eh,07fh,080h,0eeh,0f2h,0eeh,0eeh	; a522  ....yz{|}~......
	defb 0f3h,0f3h,0f3h,0f3h,0eeh,0f2h,000h,000h,081h,082h,083h,084h,085h,086h,087h,088h	; a532  ................
	defb 0efh,0f3h,0efh,0efh,0f3h,0f3h,0f3h,0f3h,0efh,0f3h,0f2h,000h,0b8h,0b9h,0bah,0bbh	; a542  ................
	defb 0bch,0bdh,0beh,0bfh,0f0h,0f3h,0f0h,0f0h,0f3h,0f3h,0f3h,0f3h,0f0h,0f3h,0f3h,0f2h	; a552  ................
	defb 0b0h,0b1h,0b2h,0b3h,0b4h,0b5h,0b6h,0b7h,0f1h,0f0h,0f1h,0f1h,0f2h,0eeh,0f2h,0f1h	; a562  ................
	defb 0f0h,0f3h,0f3h,0f3h,000h,000h,000h,000h,0abh,0ach,0adh,0aeh,0afh,0e4h,0f1h,0f1h	; a572  ................
	defb 0f3h,0f3h,0f3h,0f3h,0f0h,0f3h,0f3h,000h,000h,000h,000h,000h,000h,0e0h,0e1h,0e5h	; a582  ................
	defb 0e2h,0e3h,0e3h,0f1h,0f1h,0f3h,0f3h,0f3h,0f3h,0f3h,000h,000h,000h,000h,000h,000h	; a592  ................
	defb 0e6h,0e7h,0e8h,0e9h,0eah,0ebh,0ech,0edh,000h,0e4h,0f1h,0f1h,000h,000h,000h,000h	; a5a2  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A5B2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (160 bytes)
;   0xa5b2..0xa652  (160 bytes)
DATA_dibujo_A5B2:
	defb 000h,000h,000h,000h,074h,075h,076h,077h,078h,000h,000h,000h,0f2h,0f2h,0f2h,0f2h	; a5b2  ....tuvwx.......
	defb 000h,000h,000h,000h,000h,089h,07bh,08eh,07dh,07eh,07fh,080h,0eeh,0f2h,0eeh,0eeh	; a5c2  ......{.}~......
	defb 0f3h,0f3h,0f3h,0f3h,0eeh,0f2h,000h,000h,08ah,08bh,08ch,08dh,085h,086h,087h,088h	; a5d2  ................
	defb 0efh,0f3h,0efh,0efh,0f3h,0f3h,0f3h,0f3h,0efh,0f3h,0f2h,000h,0c1h,0c2h,0c3h,0c4h	; a5e2  ................
	defb 0bch,0bdh,0beh,0bfh,0f0h,0f3h,0f0h,0f0h,0f3h,0f3h,0f3h,0f3h,0f0h,0f3h,0f3h,0f2h	; a5f2  ................
	defb 000h,0c0h,0b2h,0c5h,0b4h,0b5h,0b6h,0b7h,0f1h,0f0h,0f1h,0f1h,0f2h,0eeh,0f2h,0f1h	; a602  ................
	defb 0f0h,0f3h,0f3h,0f3h,000h,000h,000h,000h,0abh,0ach,0adh,0aeh,0afh,0e4h,0f1h,0f1h	; a612  ................
	defb 0f3h,0f3h,0f3h,0f3h,0f0h,0f3h,0f3h,000h,000h,000h,000h,000h,000h,0e0h,0e1h,0e5h	; a622  ................
	defb 0e2h,0e3h,0e3h,0f1h,0f1h,0f3h,0f3h,0f3h,0f3h,0f3h,000h,000h,000h,000h,000h,000h	; a632  ................
	defb 0e6h,0e7h,0e8h,0e9h,0eah,0ebh,0ech,0edh,000h,0e4h,0f1h,0f1h,000h,000h,000h,000h	; a642  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A652: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (160 bytes)
;   0xa652..0xa6f2  (160 bytes)
DATA_dibujo_A652:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a652  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a662  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a672  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a682  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a692  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a6a2  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a6b2  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0e0h,0e1h,0e5h	; a6c2  ................
	defb 0e2h,0e3h,0e3h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a6d2  ................
	defb 0e6h,0e7h,0e8h,0e9h,0eah,0ebh,0ech,0edh,000h,000h,000h,000h,000h,000h,000h,000h	; a6e2  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A6F2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xa6f2..0xa70a  (24 bytes)
DATA_dibujo_A6F2:
	defb 000h,000h,05ah,05bh,05ch,05dh,000h,000h,05ah,000h,000h,05bh,000h,05dh,05ch,000h	; a6f2  ..Z[\]..Z..[.]\.
	defb 05ah,05bh,000h,05bh,071h,070h,071h,070h	; a702  Z[.[qpqp

; ----------------------------------------------------------------------
; DATOS dibujo_A70A: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xa70a..0xa712  (8 bytes)
DATA_dibujo_A70A:
	defb 098h,099h,09dh,09ch,09ah,09bh,09fh,09eh	; a70a  ........

; ----------------------------------------------------------------------
; DATOS dibujo_A712: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (1 bytes)
;   0xa712..0xa713  (1 bytes)
DATA_dibujo_A712:
	defb 063h	; a712

; ----------------------------------------------------------------------
; DATOS dibujo_A713: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (36 bytes)
;   0xa713..0xa737  (36 bytes)
DATA_dibujo_A713:
	defb 0f9h,0fah,0feh,0fdh,0feh,0fdh,0fdh,0feh,0fdh,0feh,0feh,0fdh,0feh,0fdh,0fdh,0feh	; a713  ................
	defb 0fdh,0feh,0feh,0fdh,0feh,0fdh,0fdh,0feh,0fdh,0feh,0feh,0fdh,0feh,0fdh,0fdh,0feh	; a723  ................
	defb 0fdh,0feh,0feh,0fdh	; a733

; ----------------------------------------------------------------------
; DATOS dibujo_A737: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa737..0xa739  (2 bytes)
DATA_dibujo_A737:
	defb 0fdh,0feh	; a737

; ----------------------------------------------------------------------
; DATOS dibujo_A739: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa739..0xa73b  (2 bytes)
DATA_dibujo_A739:
	defb 0feh,0fdh	; a739

; ----------------------------------------------------------------------
; DATOS dibujo_A73B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa73b..0xa73d  (2 bytes)
DATA_dibujo_A73B:
	defb 0fdh,0feh	; a73b

; ----------------------------------------------------------------------
; DATOS dibujo_A73D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa73d..0xa73f  (2 bytes)
DATA_dibujo_A73D:
	defb 0feh,0fdh	; a73d

; ----------------------------------------------------------------------
; DATOS dibujo_A73F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa73f..0xa741  (2 bytes)
DATA_dibujo_A73F:
	defb 0fdh,0feh	; a73f

; ----------------------------------------------------------------------
; DATOS dibujo_A741: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa741..0xa743  (2 bytes)
DATA_dibujo_A741:
	defb 0feh,0fdh	; a741

; ----------------------------------------------------------------------
; DATOS dibujo_A743: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa743..0xa745  (2 bytes)
DATA_dibujo_A743:
	defb 0fdh,0feh	; a743

; ----------------------------------------------------------------------
; DATOS dibujo_A745: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa745..0xa747  (2 bytes)
DATA_dibujo_A745:
	defb 0feh,0fdh	; a745

; ----------------------------------------------------------------------
; DATOS dibujo_A747: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa747..0xa749  (2 bytes)
DATA_dibujo_A747:
	defb 0fdh,0feh	; a747

; ----------------------------------------------------------------------
; DATOS dibujo_A749: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa749..0xa74b  (2 bytes)
DATA_dibujo_A749:
	defb 0feh,0fdh	; a749

; ----------------------------------------------------------------------
; DATOS dibujo_A74B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa74b..0xa74d  (2 bytes)
DATA_dibujo_A74B:
	defb 0fdh,0feh	; a74b

; ----------------------------------------------------------------------
; DATOS dibujo_A74D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa74d..0xa74f  (2 bytes)
DATA_dibujo_A74D:
	defb 0feh,0fdh	; a74d

; ----------------------------------------------------------------------
; DATOS dibujo_A74F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa74f..0xa751  (2 bytes)
DATA_dibujo_A74F:
	defb 0fdh,0feh	; a74f

; ----------------------------------------------------------------------
; DATOS dibujo_A751: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (2 bytes)
;   0xa751..0xa753  (2 bytes)
DATA_dibujo_A751:
	defb 0feh,0fdh	; a751

; ----------------------------------------------------------------------
; DATOS dibujo_A753: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xa753..0xa757  (4 bytes)
DATA_dibujo_A753:
	defb 0fdh,0feh,0fbh,0fch	; a753

; ----------------------------------------------------------------------
; DATOS dibujo_A757: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xa757..0xa76f  (24 bytes)
DATA_dibujo_A757:
	defb 0d3h,0deh,0dfh,0eeh,0edh,0e2h,0d6h,0e0h,0e1h,0f0h,0efh,0e5h,0d7h,0d8h,0d9h,0e8h	; a757  ................
	defb 0e7h,0e6h,0dah,0dbh,0dch,0ebh,0eah,0e9h	; a767  ........

; ----------------------------------------------------------------------
; DATOS dibujo_A76F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xa76f..0xa787  (24 bytes)
DATA_dibujo_A76F:
	defb 0d3h,0d4h,0d5h,0e4h,0e3h,0e2h,0d6h,0ddh,0d0h,0d1h,0ech,0e5h,0d7h,0d8h,0d9h,0e8h	; a76f  ................
	defb 0e7h,0e6h,0dah,0dbh,0dch,0ebh,0eah,0e9h	; a77f  ........

; ----------------------------------------------------------------------
; DATOS dibujo_A787: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xa787..0xa79f  (24 bytes)
DATA_dibujo_A787:
	defb 0d3h,0d4h,0d5h,0e4h,0e3h,0e2h,0d6h,0ddh,0d0h,0d1h,0ech,0e5h,0d2h,0d8h,0d9h,0e8h	; a787  ................
	defb 0e7h,0e6h,000h,0dbh,0dch,0ebh,0eah,0e9h	; a797  ........

; ----------------------------------------------------------------------
; DATOS dibujo_A79F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa79f..0xa7af  (16 bytes)
DATA_dibujo_A79F:
	defb 05fh,000h,000h,061h,000h,000h,000h,000h,000h,000h,000h,000h,000h,060h,062h,000h	; a79f  _..a.........`b.

; ----------------------------------------------------------------------
; DATOS dibujo_A7AF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa7af..0xa7bf  (16 bytes)
DATA_dibujo_A7AF:
	defb 0b0h,000h,000h,0b7h,000h,000h,000h,000h,000h,000h,000h,000h,000h,0b1h,0b8h,000h	; a7af  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A7BF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa7bf..0xa7cf  (16 bytes)
DATA_dibujo_A7BF:
	defb 0b2h,000h,000h,0b9h,05fh,000h,000h,061h,000h,060h,062h,000h,000h,0b3h,0bah,000h	; a7bf  ...._..a.`b.....

; ----------------------------------------------------------------------
; DATOS dibujo_A7CF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa7cf..0xa7df  (16 bytes)
DATA_dibujo_A7CF:
	defb 0b4h,000h,000h,0bbh,0b0h,000h,000h,0b7h,000h,0b1h,0b8h,000h,000h,0b5h,0bch,000h	; a7cf  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A7DF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa7df..0xa7ef  (16 bytes)
DATA_dibujo_A7DF:
	defb 0b6h,000h,000h,0bdh,0b2h,060h,062h,0b9h,05fh,0b3h,0bah,061h,000h,0b3h,0bah,000h	; a7df  .....`b._..a....

; ----------------------------------------------------------------------
; DATOS dibujo_A7EF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa7ef..0xa7ff  (16 bytes)
DATA_dibujo_A7EF:
	defb 0b4h,000h,000h,0bbh,0b4h,0b1h,0b8h,0bbh,0b0h,0b6h,0bdh,0b7h,000h,0b6h,0bdh,000h	; a7ef  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A7FF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa7ff..0xa80f  (16 bytes)
DATA_dibujo_A7FF:
	defb 0b4h,060h,062h,0bbh,0b4h,0b3h,0bah,0bbh,0b4h,0b3h,0bah,0bbh,05fh,0b3h,0bah,061h	; a7ff  .`b........._..a

; ----------------------------------------------------------------------
; DATOS dibujo_A80F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xa80f..0xa81f  (16 bytes)
DATA_dibujo_A80F:
	defb 0b4h,0b1h,0b8h,0bbh,0b4h,0b6h,0bdh,0bbh,0b4h,0b6h,0bdh,0bbh,0b0h,0b6h,0bdh,0b7h	; a80f  ................

; ----------------------------------------------------------------------
; DATOS dibujo_A81F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xa81f..0xa827  (8 bytes)
DATA_dibujo_A81F:
	defb 06eh,06ch,086h,06fh,0b3h,084h,084h,085h	; a81f  nl.o....

; ----------------------------------------------------------------------
; DATOS dibujo_A827: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xa827..0xa82f  (8 bytes)
DATA_dibujo_A827:
	defb 070h,071h,071h,072h,06eh,073h,06dh,06fh	; a827  pqqrnsmo

; ----------------------------------------------------------------------
; DATOS dibujo_A82F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (196 bytes)
;   0xa82f..0xa8f3  (196 bytes)
DATA_dibujo_A82F:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a82f  ................
	defb 000h,000h,0e8h,0e9h,0eah,0ebh,0ech,0edh,000h,000h,000h,000h,000h,000h,000h,0f8h	; a83f  ................
	defb 0f9h,0fah,0fbh,0fch,0fdh,0feh,0ffh,000h,000h,000h,000h,000h,045h,04eh,046h,047h	; a84f  ............ENFG
	defb 048h,049h,04ah,04bh,04ch,04dh,000h,000h,000h,0e2h,0e8h,046h,047h,048h,049h,04ah	; a85f  HIJKLM.....FGHIJ
	defb 04bh,04ch,04dh,0ebh,0e5h,000h,000h,0e3h,0e9h,04eh,04fh,050h,051h,052h,053h,0d6h	; a86f  KLM......NOPQRS.
	defb 0d7h,0ech,0e6h,000h,000h,0e4h,0eah,0d8h,0d9h,0dah,0dbh,0dch,0ddh,0deh,0dfh,0e0h	; a87f  ................
	defb 0e7h,000h,000h,0f7h,0fdh,04eh,04fh,050h,051h,052h,053h,0d6h,0d7h,0e0h,0fah,000h	; a88f  .....NOPQRS.....
	defb 000h,0f6h,0fch,0d8h,0d9h,0dah,0dbh,0dch,0ddh,0deh,0dfh,0ffh,0f9h,000h,000h,0f5h	; a89f  ................
	defb 0fbh,04fh,0e1h,0edh,0eeh,0efh,0f0h,0f1h,0f2h,0feh,0f3h,000h,000h,000h,045h,0d9h	; a8af  .O............E.
	defb 046h,047h,048h,049h,04ah,04bh,04ch,054h,000h,000h,000h,000h,000h,03dh,03eh,03fh	; a8bf  FGHIJKLT.....=>?
	defb 041h,040h,042h,043h,044h,000h,000h,000h,000h,000h,000h,000h,0f0h,0f1h,0f2h,0f3h	; a8cf  A@BCD...........
	defb 0f4h,0f5h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a8df  ................
	defb 000h,000h,000h,000h	; a8ef

; ----------------------------------------------------------------------
; DATOS dibujo_A8F3: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xa8f3..0xa8f9  (6 bytes)
DATA_dibujo_A8F3:
	defb 000h,000h,000h,07ah,07bh,07fh	; a8f3

; ----------------------------------------------------------------------
; DATOS dibujo_A8F9: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xa8f9..0xa8ff  (6 bytes)
DATA_dibujo_A8F9:
	defb 07ch,07dh,07eh,06eh,065h,06eh	; a8f9

; ----------------------------------------------------------------------
; DATOS dibujo_A8FF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xa8ff..0xa905  (6 bytes)
DATA_dibujo_A8FF:
	defb 07ah,07bh,07fh,000h,000h,000h	; a8ff

; ----------------------------------------------------------------------
; DATOS dibujo_A905: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xa905..0xa90b  (6 bytes)
DATA_dibujo_A905:
	defb 06eh,065h,06eh,07ch,07dh,07eh	; a905

; ----------------------------------------------------------------------
; DATOS dibujo_A90B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (39 bytes)
;   0xa90b..0xa932  (39 bytes)
DATA_dibujo_A90B:
	defb 000h,06eh,0dah,03dh,03eh,03fh,041h,040h,042h,043h,044h,0cbh,06fh,000h,000h,067h	; a90b  .n.=>?A@BCD.o..g
	defb 0cch,0f0h,0f1h,0f2h,0f3h,0f4h,0f5h,0dbh,06ch,000h,000h,000h,000h,068h,0cfh,0d1h	; a91b  ........l....h..
	defb 0d0h,069h,0d1h,0d2h,000h,000h,000h	; a92b

; ----------------------------------------------------------------------
; DATOS dibujo_A932: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (39 bytes)
;   0xa932..0xa959  (39 bytes)
DATA_dibujo_A932:
	defb 000h,079h,0dah,03dh,03eh,03fh,041h,040h,042h,043h,044h,0cbh,078h,000h,000h,076h	; a932  .y.=>?A@BCD.x..v
	defb 0dch,0f0h,0f1h,0f2h,0f3h,0f4h,0f5h,0cdh,071h,000h,000h,000h,000h,0c3h,0c2h,073h	; a942  ........q......s
	defb 0c1h,0c2h,0c0h,072h,000h,000h,000h	; a952

; ----------------------------------------------------------------------
; DATOS dibujo_A959: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (39 bytes)
;   0xa959..0xa980  (39 bytes)
DATA_dibujo_A959:
	defb 000h,07ah,0dah,03dh,03eh,03fh,041h,040h,042h,043h,044h,0cbh,0cah,09eh,000h,0c9h	; a959  .z.=>?A@BCD.....
	defb 0dch,0f0h,0f1h,0f2h,0f3h,0f4h,0f5h,0cdh,0c8h,077h,000h,09dh,000h,0c7h,0c6h,0c4h	; a969  .........w......
	defb 0a0h,0a0h,0c5h,0c4h,0bfh,000h,000h	; a979

; ----------------------------------------------------------------------
; DATOS dibujo_A980: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (39 bytes)
;   0xa980..0xa9a7  (39 bytes)
DATA_dibujo_A980:
	defb 09fh,0d9h,0dah,03dh,03eh,03fh,041h,040h,042h,043h,044h,0cbh,070h,09eh,06dh,0d7h	; a980  ...=>?A@BCD.p.m.
	defb 0dch,0f0h,0f1h,0f2h,0f3h,0f4h,0f5h,0cdh,0d8h,000h,000h,000h,000h,0ceh,0d3h,0d4h	; a990  ................
	defb 0a0h,0a0h,0d3h,0d5h,0d6h,000h,000h	; a9a0

; ----------------------------------------------------------------------
; DATOS dibujo_A9A7: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (39 bytes)
;   0xa9a7..0xa9ce  (39 bytes)
DATA_dibujo_A9A7:
	defb 000h,000h,05ah,0b1h,0b3h,0b2h,05bh,0b3h,0b4h,000h,000h,000h,000h,000h,059h,0aeh	; a9a7  ..Z...[.......Y.
	defb 0e8h,0e9h,0eah,0ebh,0ech,0edh,0bdh,05eh,000h,000h,060h,0bch,0f8h,0f9h,0fah,0fbh	; a9b7  .......^..`.....
	defb 0fch,0fdh,0feh,0ffh,0adh,061h,000h	; a9c7

; ----------------------------------------------------------------------
; DATOS dibujo_A9CE: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (39 bytes)
;   0xa9ce..0xa9f5  (39 bytes)
DATA_dibujo_A9CE:
	defb 000h,000h,000h,0a5h,0a4h,065h,0a3h,0a4h,0a2h,064h,000h,000h,000h,000h,068h,0beh	; a9ce  .....e...d....h.
	defb 0e8h,0e9h,0eah,0ebh,0ech,0edh,0afh,063h,000h,000h,06bh,0bch,0f8h,0f9h,0fah,0fbh	; a9de  .......c..k.....
	defb 0fch,0fdh,0feh,0ffh,0adh,06ah,000h	; a9ee

; ----------------------------------------------------------------------
; DATOS dibujo_A9F5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (39 bytes)
;   0xa9f5..0xaa1c  (39 bytes)
DATA_dibujo_A9F5:
	defb 000h,000h,0b0h,0b5h,0b6h,0a0h,0a0h,0b5h,0b7h,0b8h,000h,09dh,000h,05fh,0b9h,0beh	; a9f5  ............._..
	defb 0e8h,0e9h,0eah,0ebh,0ech,0edh,0afh,0bah,000h,09eh,0bbh,0bch,0f8h,0f9h,0fah,0fbh	; aa05  ................
	defb 0fch,0fdh,0feh,0ffh,0adh,062h,000h	; aa15

; ----------------------------------------------------------------------
; DATOS dibujo_AA1C: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (39 bytes)
;   0xaa1c..0xaa43  (39 bytes)
DATA_dibujo_AA1C:
	defb 000h,000h,0a9h,0a8h,0a6h,0a0h,0a0h,0a7h,0a6h,0a1h,000h,000h,000h,000h,0abh,0beh	; aa1c  ................
	defb 0e8h,0e9h,0eah,0ebh,0ech,0edh,0afh,0aah,069h,09eh,06ch,0bch,0f8h,0f9h,0fah,0fbh	; aa2c  ........i.l.....
	defb 0fch,0fdh,0feh,0ffh,0adh,0ach,09fh	; aa3c

; ----------------------------------------------------------------------
; DATOS dibujo_AA43: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaa43..0xaa53  (16 bytes)
DATA_dibujo_AA43:
	defb 0aeh,0afh,0c2h,0c1h,0bbh,0b0h,0c3h,0c7h,0cbh,0b1h,0c4h,0bfh,0beh,0b2h,0c5h,0cah	; aa43  ................

; ----------------------------------------------------------------------
; DATOS dibujo_AA53: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaa53..0xaa63  (16 bytes)
DATA_dibujo_AA53:
	defb 0aeh,000h,000h,0c1h,0bbh,0adh,0c0h,0c7h,0cbh,0b1h,0c4h,0bfh,0beh,0b2h,0c5h,0cah	; aa53  ................

; ----------------------------------------------------------------------
; DATOS dibujo_AA63: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaa63..0xaa73  (16 bytes)
DATA_dibujo_AA63:
	defb 0b1h,0bfh,0cbh,0c4h,0c5h,0beh,0cah,0b2h,0aeh,0bdh,0c9h,0c1h,0bbh,0bch,0c8h,0c7h	; aa63  ................

; ----------------------------------------------------------------------
; DATOS dibujo_AA73: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaa73..0xaa83  (16 bytes)
DATA_dibujo_AA73:
	defb 0b1h,0bfh,0cbh,0c4h,0c5h,0beh,0cah,0b2h,0aeh,0bah,0c6h,0c1h,0bbh,000h,000h,0c7h	; aa73  ................

; ----------------------------------------------------------------------
; DATOS dibujo_AA83: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (40 bytes)
;   0xaa83..0xaaab  (40 bytes)
DATA_dibujo_AA83:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aa83  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,086h,087h,088h,087h,0fbh,0fdh,088h,000h	; aa93  ................
	defb 0fah,0fbh,0fbh,0fch,0fdh,0fah,0fah,089h	; aaa3  ........

; ----------------------------------------------------------------------
; DATOS dibujo_AAAB: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaaab..0xaabb  (16 bytes)
DATA_dibujo_AAAB:
	defb 086h,000h,000h,087h,088h,000h,000h,000h,0fah,0fch,0fdh,0fah,0fah,08eh,0fah,089h	; aaab  ................

; ----------------------------------------------------------------------
; DATOS dibujo_AABB: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (40 bytes)
;   0xaabb..0xaae3  (40 bytes)
DATA_dibujo_AABB:
	defb 0ffh,0feh,0feh,0fdh,0fch,0ffh,0ffh,08dh,08dh,08bh,08ch,08bh,0feh,0fch,08ch,000h	; aabb  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; aacb  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; aadb  ........

; ----------------------------------------------------------------------
; DATOS dibujo_AAE3: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaae3..0xaaf3  (16 bytes)
DATA_dibujo_AAE3:
	defb 0ffh,0fdh,0fch,0ffh,0ffh,08fh,0ffh,08dh,08ah,000h,000h,08bh,08ch,000h,000h,000h	; aae3  ................

; ----------------------------------------------------------------------
; DATOS dibujo_AAF3: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xaaf3..0xab16  (35 bytes)
DATA_dibujo_AAF3:
	defb 000h,000h,000h,000h,072h,0e2h,073h,000h,074h,0e3h,0e4h,0e5h,0e6h,0e7h,000h,075h	; aaf3  ....r.s.t......u
	defb 0e8h,0e9h,0e6h,0e7h,076h,077h,0eah,0e9h,0e6h,0e7h,076h,000h,0ebh,0ech,0ech,0edh	; ab03  ....vw....v.....
	defb 078h,000h,000h	; ab13

; ----------------------------------------------------------------------
; DATOS dibujo_AB16: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xab16..0xab39  (35 bytes)
DATA_dibujo_AB16:
	defb 000h,000h,000h,000h,072h,0e2h,073h,000h,074h,0e3h,0e4h,0e5h,0e6h,0e7h,000h,07bh	; ab16  ....r.s.t......{
	defb 0e8h,0e9h,0e6h,0e7h,076h,079h,07ah,0e9h,0e6h,0e7h,076h,000h,0ebh,0ech,0ech,0edh	; ab26  ....vyz...v.....
	defb 078h,000h,000h	; ab36

; ----------------------------------------------------------------------
; DATOS dibujo_AB39: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xab39..0xab5c  (35 bytes)
DATA_dibujo_AB39:
	defb 07dh,0eeh,07ch,000h,000h,000h,000h,0f3h,0f2h,0f1h,0f0h,0efh,07eh,000h,080h,0f3h	; ab39  }.|.........~...
	defb 0f2h,0f5h,0f4h,07fh,000h,000h,080h,0f3h,0f2h,0f5h,0f6h,081h,000h,000h,082h,0f9h	; ab49  ................
	defb 0f8h,0f8h,0f7h	; ab59

; ----------------------------------------------------------------------
; DATOS dibujo_AB5C: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xab5c..0xab7f  (35 bytes)
DATA_dibujo_AB5C:
	defb 07dh,0eeh,07ch,000h,000h,000h,000h,0f3h,0f2h,0f1h,0f0h,0efh,07eh,000h,080h,0f3h	; ab5c  }.|.........~...
	defb 0f2h,0f5h,0f4h,085h,000h,000h,080h,0f3h,0f2h,0f5h,084h,083h,000h,000h,082h,0f9h	; ab6c  ................
	defb 0f8h,0f8h,0f7h	; ab7c

; ----------------------------------------------------------------------
; DATOS dibujo_AB7F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xab7f..0xab8f  (16 bytes)
DATA_dibujo_AB7F:
	defb 060h,061h,062h,063h,063h,064h,065h,000h,0d0h,0d1h,0d2h,0d3h,0d3h,0d4h,0d5h,066h	; ab7f  `abccde........f

; ----------------------------------------------------------------------
; DATOS dibujo_AB8F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xab8f..0xab9f  (16 bytes)
DATA_dibujo_AB8F:
	defb 060h,067h,068h,0d6h,063h,064h,065h,000h,0d0h,0d7h,0d8h,0d3h,0d3h,0d4h,0d5h,066h	; ab8f  `gh.cde........f

; ----------------------------------------------------------------------
; DATOS dibujo_AB9F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xab9f..0xabaf  (16 bytes)
DATA_dibujo_AB9F:
	defb 000h,06eh,06dh,06ch,0dfh,06bh,06ah,069h,06fh,0deh,0ddh,0dch,0dch,0dbh,0dah,0d9h	; ab9f  .nml.kjio.......

; ----------------------------------------------------------------------
; DATOS dibujo_ABAF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xabaf..0xabbf  (16 bytes)
DATA_dibujo_ABAF:
	defb 000h,06eh,06dh,06ch,0dfh,071h,070h,069h,06fh,0deh,0ddh,0dch,0dch,0e1h,0e0h,0d9h	; abaf  .nml.qpio.......

; ----------------------------------------------------------------------
; DATOS dibujo_ABBF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xabbf..0xabe2  (35 bytes)
DATA_dibujo_ABBF:
	defb 0ebh,0ech,0ech,0edh,078h,000h,000h,077h,0eah,0e9h,0e6h,0e7h,076h,000h,000h,075h	; abbf  ....x..w....v..u
	defb 0e8h,0e9h,0e6h,0e7h,076h,000h,074h,0e3h,0e4h,0e5h,0e6h,0e7h,000h,000h,000h,000h	; abcf  ....v.t.........
	defb 072h,0e2h,073h	; abdf

; ----------------------------------------------------------------------
; DATOS dibujo_ABE2: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xabe2..0xac05  (35 bytes)
DATA_dibujo_ABE2:
	defb 0ebh,0ech,0ech,0edh,078h,000h,000h,079h,07ah,0e9h,0e6h,0e7h,076h,000h,000h,07bh	; abe2  ....x..yz...v..{
	defb 0e8h,0e9h,0e6h,0e7h,076h,000h,074h,0e3h,0e4h,0e5h,0e6h,0e7h,000h,000h,000h,000h	; abf2  ....v.t.........
	defb 072h,0e2h,073h	; ac02

; ----------------------------------------------------------------------
; DATOS dibujo_AC05: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xac05..0xac28  (35 bytes)
DATA_dibujo_AC05:
	defb 000h,000h,082h,0f9h,0f8h,0f8h,0f7h,000h,080h,0f3h,0f2h,0f5h,0f6h,081h,080h,0f3h	; ac05  ................
	defb 0f2h,0f5h,0f4h,07fh,000h,0f3h,0f2h,0f1h,0f0h,0efh,07eh,000h,07dh,0eeh,07ch,000h	; ac15  ..........~.}.|.
	defb 000h,000h,000h	; ac25

; ----------------------------------------------------------------------
; DATOS dibujo_AC28: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xac28..0xac4b  (35 bytes)
DATA_dibujo_AC28:
	defb 000h,000h,082h,0f9h,0f8h,0f8h,0f7h,000h,080h,0f3h,0f2h,0f5h,084h,083h,080h,0f3h	; ac28  ................
	defb 0f2h,0f5h,0f4h,085h,000h,0f3h,0f2h,0f1h,0f0h,0efh,07eh,000h,07dh,0eeh,07ch,000h	; ac38  ..........~.}.|.
	defb 000h,000h,000h	; ac48

; ----------------------------------------------------------------------
; DATOS dibujo_AC4B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xac4b..0xac5b  (16 bytes)
DATA_dibujo_AC4B:
	defb 0b0h,0b1h,0b2h,0b3h,0b3h,0b4h,0b5h,046h,040h,041h,042h,0b6h,043h,044h,045h,000h	; ac4b  .......F@AB.CDE.

; ----------------------------------------------------------------------
; DATOS dibujo_AC5B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xac5b..0xac6b  (16 bytes)
DATA_dibujo_AC5B:
	defb 0b0h,0b7h,0b8h,0b3h,0b3h,0b4h,0b5h,046h,040h,047h,048h,0b6h,043h,044h,045h,000h	; ac5b  .......F@GH.CDE.

; ----------------------------------------------------------------------
; DATOS dibujo_AC6B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xac6b..0xac7b  (16 bytes)
DATA_dibujo_AC6B:
	defb 04fh,0beh,0bdh,0bch,0bch,0bbh,0bah,0b9h,000h,04eh,04dh,04ch,0bfh,04bh,04ah,049h	; ac6b  O........NML.KJI

; ----------------------------------------------------------------------
; DATOS dibujo_AC7B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xac7b..0xac8b  (16 bytes)
DATA_dibujo_AC7B:
	defb 04fh,0beh,0bdh,0bch,0bch,0c1h,0c0h,0b9h,000h,04eh,04dh,04ch,0bfh,051h,050h,049h	; ac7b  O........NML.QPI

; ----------------------------------------------------------------------
; DATOS dibujo_AC8B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xac8b..0xacae  (35 bytes)
DATA_dibujo_AC8B:
	defb 000h,000h,000h,000h,070h,0d0h,071h,000h,072h,0d1h,0d2h,0d3h,0d4h,0d5h,000h,073h	; ac8b  ....p.q.r......s
	defb 0d6h,0d4h,0d4h,0d5h,074h,075h,0d7h,0d8h,0d4h,0d9h,0dah,000h,0dbh,0d5h,0d9h,0d9h	; ac9b  ....tu..........
	defb 0dch,000h,000h	; acab

; ----------------------------------------------------------------------
; DATOS dibujo_ACAE: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xacae..0xacd1  (35 bytes)
DATA_dibujo_ACAE:
	defb 000h,000h,000h,000h,070h,0d0h,071h,000h,072h,0d1h,0d2h,0d3h,0d4h,0d5h,000h,073h	; acae  ....p.q.r......s
	defb 0d6h,0d4h,0d4h,0d5h,074h,076h,077h,0ddh,0d4h,0d9h,0dah,000h,0dbh,0d5h,0d9h,0d9h	; acbe  ....tvw.........
	defb 0dch,000h,000h	; acce

; ----------------------------------------------------------------------
; DATOS dibujo_ACD1: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xacd1..0xacf4  (35 bytes)
DATA_dibujo_ACD1:
	defb 000h,06ah,0c2h,0c3h,06bh,000h,000h,000h,0c4h,0c5h,0c6h,0c7h,000h,000h,000h,0c8h	; acd1  .j..k...........
	defb 0c9h,0cah,0cbh,000h,000h,000h,0cch,0cdh,0ceh,0cfh,000h,000h,000h,06ch,06dh,06eh	; ace1  .............lmn
	defb 06fh,000h,000h	; acf1

; ----------------------------------------------------------------------
; DATOS dibujo_ACF4: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xacf4..0xad17  (35 bytes)
DATA_dibujo_ACF4:
	defb 059h,0deh,033h,000h,000h,000h,000h,0e3h,0e2h,0e1h,0e0h,0dfh,05ah,000h,05ch,0e3h	; acf4  Y.3.........Z.\.
	defb 0e2h,0e2h,0e4h,05bh,000h,000h,0e8h,0e7h,0e2h,0e6h,0e5h,05dh,000h,000h,0eah,0e7h	; ad04  ...[.......]....
	defb 0e7h,0e3h,0e9h	; ad14

; ----------------------------------------------------------------------
; DATOS dibujo_AD17: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xad17..0xad3a  (35 bytes)
DATA_dibujo_AD17:
	defb 059h,0deh,033h,000h,000h,000h,000h,0e3h,0e2h,0e1h,0e0h,0dfh,05ah,000h,05ch,0e3h	; ad17  Y.3.........Z.\.
	defb 0e2h,0e2h,0e4h,05bh,000h,000h,0e8h,0e7h,0e2h,0ebh,05fh,05eh,000h,000h,0eah,0e7h	; ad27  ...[......_^....
	defb 0e7h,0e3h,0e9h	; ad37

; ----------------------------------------------------------------------
; DATOS dibujo_AD3A: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xad3a..0xad5d  (35 bytes)
DATA_dibujo_AD3A:
	defb 083h,07dh,081h,081h,084h,000h,000h,045h,07fh,080h,07ch,081h,082h,000h,000h,043h	; ad3a  .}.....E..|....C
	defb 07eh,07ch,07ch,07dh,044h,000h,042h,079h,07ah,07bh,07ch,07dh,000h,000h,000h,000h	; ad4a  ~||}D.Byz{|}....
	defb 040h,078h,041h	; ad5a

; ----------------------------------------------------------------------
; DATOS dibujo_AD5D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xad5d..0xad80  (35 bytes)
DATA_dibujo_AD5D:
	defb 083h,07dh,081h,081h,084h,000h,000h,046h,047h,085h,07ch,081h,082h,000h,000h,043h	; ad5d  .}.....FG.|....C
	defb 07eh,07ch,07ch,07dh,044h,000h,042h,079h,07ah,07bh,07ch,07dh,000h,000h,000h,000h	; ad6d  ~||}D.Byz{|}....
	defb 040h,078h,041h	; ad7d

; ----------------------------------------------------------------------
; DATOS dibujo_AD80: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xad80..0xada3  (35 bytes)
DATA_dibujo_AD80:
	defb 000h,04ah,04bh,04ch,04dh,000h,000h,000h,0beh,0bfh,0c0h,0c1h,000h,000h,000h,0bah	; ad80  .JKLM...........
	defb 0bbh,0bch,0bdh,000h,000h,000h,0b6h,0b7h,0b8h,0b9h,000h,000h,000h,048h,0b4h,0b5h	; ad90  .............H..
	defb 049h,000h,000h	; ada0

; ----------------------------------------------------------------------
; DATOS dibujo_ADA3: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xada3..0xadc6  (35 bytes)
DATA_dibujo_ADA3:
	defb 000h,000h,0b2h,08fh,08fh,08bh,0b1h,000h,0b2h,08fh,08ah,08eh,08dh,055h,0b0h,08bh	; ada3  .............U..
	defb 08ah,08ah,08ch,053h,000h,08bh,08ah,089h,088h,087h,052h,000h,051h,086h,050h,000h	; adb3  ...S......R.Q.P.
	defb 000h,000h,000h	; adc3

; ----------------------------------------------------------------------
; DATOS dibujo_ADC6: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xadc6..0xade9  (35 bytes)
DATA_dibujo_ADC6:
	defb 000h,000h,0b2h,08fh,08fh,08bh,0b1h,000h,0b2h,08fh,08ah,0b3h,057h,056h,0b0h,08bh	; adc6  ............WV..
	defb 08ah,08ah,08ch,053h,000h,08bh,08ah,089h,088h,087h,052h,000h,051h,086h,050h,000h	; add6  ...S......R.Q.P.
	defb 000h,000h,000h	; ade6

; ----------------------------------------------------------------------
; DATOS dibujo_ADE9: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xade9..0xae0c  (35 bytes)
DATA_dibujo_ADE9:
	defb 000h,000h,000h,000h,074h,0d6h,075h,000h,076h,0d7h,0d8h,0d9h,0dah,0dbh,000h,077h	; ade9  ....t.u.v......w
	defb 0dch,0ddh,0deh,0dbh,078h,079h,0dfh,0e0h,0e1h,0e2h,0e3h,000h,0e4h,0dbh,0e2h,0e2h	; adf9  ....xy..........
	defb 0e5h,000h,000h	; ae09

; ----------------------------------------------------------------------
; DATOS dibujo_AE0C: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xae0c..0xae2f  (35 bytes)
DATA_dibujo_AE0C:
	defb 000h,000h,000h,000h,074h,0d6h,075h,000h,076h,0d7h,0d8h,0d9h,0dah,0dbh,000h,07ah	; ae0c  ....t.u.v......z
	defb 0dch,0ddh,0deh,0dbh,078h,07bh,07ch,0e6h,0e1h,0e2h,0e3h,000h,0e7h,0dbh,0e2h,0e2h	; ae1c  ....x{|.........
	defb 0e5h,000h,000h	; ae2c

; ----------------------------------------------------------------------
; DATOS dibujo_AE2F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xae2f..0xae52  (35 bytes)
DATA_dibujo_AE2F:
	defb 07eh,0e8h,07dh,000h,000h,000h,000h,0edh,0ech,0ebh,0eah,0e9h,07fh,000h,081h,0edh	; ae2f  ~.}.............
	defb 0f0h,0efh,0eeh,080h,000h,000h,0f5h,0f4h,0f3h,0f2h,0f1h,082h,000h,000h,0f7h,0f4h	; ae3f  ................
	defb 0f4h,0edh,0f6h	; ae4f

; ----------------------------------------------------------------------
; DATOS dibujo_AE52: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xae52..0xae75  (35 bytes)
DATA_dibujo_AE52:
	defb 07eh,0e8h,07dh,000h,000h,000h,000h,0edh,0ech,0ebh,0eah,0e9h,07fh,000h,081h,0edh	; ae52  ~.}.............
	defb 0f0h,0efh,0eeh,083h,000h,000h,0f5h,0f4h,0f3h,0f8h,085h,084h,000h,000h,0f7h,0f4h	; ae62  ................
	defb 0f4h,0edh,0f6h	; ae72

; ----------------------------------------------------------------------
; DATOS dibujo_AE75: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xae75..0xae85  (16 bytes)
DATA_dibujo_AE75:
	defb 060h,061h,062h,0c4h,063h,064h,065h,000h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0cbh,066h	; ae75  `ab.cde........f

; ----------------------------------------------------------------------
; DATOS dibujo_AE85: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xae85..0xae95  (16 bytes)
DATA_dibujo_AE85:
	defb 067h,068h,069h,0c4h,063h,064h,065h,000h,0cch,0c6h,0c7h,0c8h,0c9h,0cah,0cbh,066h	; ae85  ghi.cde........f

; ----------------------------------------------------------------------
; DATOS dibujo_AE95: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xae95..0xaea5  (16 bytes)
DATA_dibujo_AE95:
	defb 000h,06fh,06eh,06dh,0cdh,06ch,06bh,06ah,070h,0d4h,0d3h,0d2h,0d1h,0d0h,0cfh,0ceh	; ae95  .onm.lkjp.......

; ----------------------------------------------------------------------
; DATOS dibujo_AEA5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaea5..0xaeb5  (16 bytes)
DATA_dibujo_AEA5:
	defb 000h,06fh,06eh,06dh,0cdh,06ch,072h,071h,070h,0d4h,0d3h,0d2h,0d1h,0d0h,0cfh,0d5h	; aea5  .onm.lrqp.......

; ----------------------------------------------------------------------
; DATOS dibujo_AEB5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xaeb5..0xaed8  (35 bytes)
DATA_dibujo_AEB5:
	defb 0e4h,0dbh,0e2h,0e2h,0e5h,000h,000h,079h,0dfh,0e0h,0e1h,0e2h,0e3h,000h,000h,077h	; aeb5  .......y.......w
	defb 0dch,0ddh,0deh,0dbh,078h,000h,076h,0d7h,0d8h,0d9h,0dah,0dbh,000h,000h,000h,000h	; aec5  ....x.v.........
	defb 074h,0d6h,075h	; aed5

; ----------------------------------------------------------------------
; DATOS dibujo_AED8: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xaed8..0xaefb  (35 bytes)
DATA_dibujo_AED8:
	defb 0e7h,0dbh,0e2h,0e2h,0e5h,000h,000h,07bh,07ch,0e6h,0e1h,0e2h,0e3h,000h,000h,07ah	; aed8  .......{|......z
	defb 0dch,0ddh,0deh,0dbh,078h,000h,076h,0d7h,0d8h,0d9h,0dah,0dbh,000h,000h,000h,000h	; aee8  ....x.v.........
	defb 074h,0d6h,075h	; aef8

; ----------------------------------------------------------------------
; DATOS dibujo_AEFB: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xaefb..0xaf1e  (35 bytes)
DATA_dibujo_AEFB:
	defb 000h,000h,0f7h,0f4h,0f4h,0edh,0f6h,000h,0f5h,0f4h,0f3h,0f2h,0f1h,082h,081h,0edh	; aefb  ................
	defb 0f0h,0efh,0eeh,080h,000h,0edh,0ech,0ebh,0eah,0e9h,07fh,000h,07eh,0e8h,07dh,000h	; af0b  ............~.}.
	defb 000h,000h,000h	; af1b

; ----------------------------------------------------------------------
; DATOS dibujo_AF1E: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (35 bytes)
;   0xaf1e..0xaf41  (35 bytes)
DATA_dibujo_AF1E:
	defb 000h,000h,0f7h,0f4h,0f4h,0edh,0f9h,000h,0f5h,0f4h,0f3h,0f8h,085h,084h,081h,0edh	; af1e  ................
	defb 0f0h,0efh,0eeh,083h,000h,0edh,0ech,0ebh,0eah,0e9h,07fh,000h,07eh,0e8h,07dh,000h	; af2e  ............~.}.
	defb 000h,000h,000h	; af3e

; ----------------------------------------------------------------------
; DATOS dibujo_AF41: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaf41..0xaf51  (16 bytes)
DATA_dibujo_AF41:
	defb 0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0cbh,066h,060h,061h,062h,0c4h,063h,064h,065h,000h	; af41  .......f`ab.cde.

; ----------------------------------------------------------------------
; DATOS dibujo_AF51: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaf51..0xaf61  (16 bytes)
DATA_dibujo_AF51:
	defb 0cch,0c6h,0c7h,0c8h,0c9h,0cah,0cbh,066h,067h,068h,069h,0c4h,063h,064h,065h,000h	; af51  .......fghi.cde.

; ----------------------------------------------------------------------
; DATOS dibujo_AF61: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaf61..0xaf71  (16 bytes)
DATA_dibujo_AF61:
	defb 070h,0d4h,0d3h,0d2h,0d1h,0d0h,0cfh,0ceh,000h,06fh,06eh,06dh,0cdh,06ch,06bh,06ah	; af61  p........onm.lkj

; ----------------------------------------------------------------------
; DATOS dibujo_AF71: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaf71..0xaf81  (16 bytes)
DATA_dibujo_AF71:
	defb 070h,0d4h,0d3h,0d2h,0d1h,0d0h,0cfh,0d5h,000h,06fh,06eh,06dh,0cdh,073h,072h,071h	; af71  p........onm.srq

; ----------------------------------------------------------------------
; DATOS dibujo_AF81: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (12 bytes)
;   0xaf81..0xaf8d  (12 bytes)
DATA_dibujo_AF81:
	defb 000h,072h,0e8h,073h,0e9h,0eah,074h,0ebh,0ech,0edh,0eeh,075h	; af81  .r.s..t....u

; ----------------------------------------------------------------------
; DATOS dibujo_AF8D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (12 bytes)
;   0xaf8d..0xaf99  (12 bytes)
DATA_dibujo_AF8D:
	defb 000h,072h,0e8h,073h,0e9h,0eah,076h,0efh,0f0h,0f1h,0eeh,077h	; af8d  .r.s..v....w

; ----------------------------------------------------------------------
; DATOS dibujo_AF99: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (12 bytes)
;   0xaf99..0xafa5  (12 bytes)
DATA_dibujo_AF99:
	defb 0f2h,078h,000h,0f4h,0f3h,079h,0f6h,0f5h,07ah,07bh,0f8h,0f7h	; af99  .x...y..z{..

; ----------------------------------------------------------------------
; DATOS dibujo_AFA5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (12 bytes)
;   0xafa5..0xafb1  (12 bytes)
DATA_dibujo_AFA5:
	defb 0f2h,078h,000h,0f4h,0f3h,079h,0fah,0f9h,07ch,07dh,0f8h,0fbh	; afa5  .x...y..|}..

; ----------------------------------------------------------------------
; DATOS dibujo_AFB1: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xafb1..0xafb5  (4 bytes)
DATA_dibujo_AFB1:
	defb 070h,071h,071h,064h	; afb1

; ----------------------------------------------------------------------
; DATOS dibujo_AFB5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xafb5..0xafc5  (16 bytes)
DATA_dibujo_AFB5:
	defb 0f6h,0f7h,0fch,0fbh,0ech,0f8h,0fdh,0edh,0eeh,0efh,0f0h,0f1h,0f2h,0f3h,0f4h,0f5h	; afb5  ................

; ----------------------------------------------------------------------
; DATOS dibujo_AFC5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xafc5..0xafc9  (4 bytes)
DATA_dibujo_AFC5:
	defb 0f2h,0f3h,0f4h,0f5h	; afc5

; ----------------------------------------------------------------------
; DATOS dibujo_AFC9: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xafc9..0xafcd  (4 bytes)
DATA_dibujo_AFC9:
	defb 0eeh,0efh,0f0h,0f1h	; afc9

; ----------------------------------------------------------------------
; DATOS dibujo_AFCD: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xafcd..0xafd1  (4 bytes)
DATA_dibujo_AFCD:
	defb 0ech,0f8h,0fdh,0edh	; afcd

; ----------------------------------------------------------------------
; DATOS dibujo_AFD1: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xafd1..0xafd5  (4 bytes)
DATA_dibujo_AFD1:
	defb 0f6h,0f7h,0fch,0fbh	; afd1

; ----------------------------------------------------------------------
; DATOS dibujo_AFD5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xafd5..0xafe5  (16 bytes)
DATA_dibujo_AFD5:
	defb 000h,050h,054h,000h,051h,040h,041h,055h,053h,042h,043h,057h,000h,052h,056h,000h	; afd5  .PT.Q@AUSBCW.RV.

; ----------------------------------------------------------------------
; DATOS dibujo_AFE5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xafe5..0xaff5  (16 bytes)
DATA_dibujo_AFE5:
	defb 000h,000h,000h,000h,000h,044h,045h,000h,000h,046h,047h,000h,000h,000h,000h,000h	; afe5  .....DE..FG.....

; ----------------------------------------------------------------------
; DATOS dibujo_AFF5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xaff5..0xb005  (16 bytes)
DATA_dibujo_AFF5:
	defb 000h,050h,054h,000h,051h,048h,049h,055h,053h,04ah,04bh,057h,000h,052h,056h,000h	; aff5  .PT.QHIUSJKW.RV.

; ----------------------------------------------------------------------
; DATOS dibujo_B005: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb005..0xb015  (16 bytes)
DATA_dibujo_B005:
	defb 000h,000h,000h,000h,000h,04ch,04dh,000h,000h,04eh,04fh,000h,000h,000h,000h,000h	; b005  .....LM..NO.....

; ----------------------------------------------------------------------
; DATOS dibujo_B015: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (19 bytes)
;   0xb015..0xb028  (19 bytes)
DATA_dibujo_B015:
	defb 06fh,072h,072h,073h,077h,08bh,08ch,076h,077h,08bh,08ch,076h,077h,08bh,08ch,076h	; b015  orrsw..vw..vw..v
	defb 07ah,07bh,068h	; b025

; ----------------------------------------------------------------------
; DATOS dibujo_B028: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (19 bytes)
;   0xb028..0xb03b  (19 bytes)
DATA_dibujo_B028:
	defb 086h,08bh,08bh,08ch,075h,07ah,07bh,074h,075h,07ah,07bh,074h,075h,07ah,07bh,074h	; b028  ....uz{tuz{tuz{t
	defb 078h,079h,07fh	; b038

; ----------------------------------------------------------------------
; DATOS dibujo_B03B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (19 bytes)
;   0xb03b..0xb04e  (19 bytes)
DATA_dibujo_B03B:
	defb 07ah,07ah,07bh,076h,073h,078h,079h,072h,073h,078h,079h,072h,073h,078h,079h,072h	; b03b  zz{vsxyrsxyrsxyr
	defb 076h,077h,089h	; b04b

; ----------------------------------------------------------------------
; DATOS dibujo_B04E: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (19 bytes)
;   0xb04e..0xb061  (19 bytes)
DATA_dibujo_B04E:
	defb 078h,078h,079h,074h,08ch,072h,073h,08bh,08ch,072h,073h,08bh,08ch,072h,073h,08bh	; b04e  xxyt.rs..rs..rs.
	defb 074h,075h,068h	; b05e

; ----------------------------------------------------------------------
; DATOS dibujo_B061: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (76 bytes)
;   0xb061..0xb0ad  (76 bytes)
DATA_dibujo_B061:
	defb 000h,08ah,07ah,07bh,072h,073h,076h,077h,072h,076h,077h,07bh,072h,076h,077h,07bh	; b061  ..z{rsvwrvw{rvw{
	defb 076h,07ah,07eh,000h,06eh,078h,079h,08bh,08ch,074h,07ah,08bh,074h,075h,078h,08bh	; b071  vz~.nxy..tz.tux.
	defb 074h,075h,078h,07ah,078h,079h,000h,000h,000h,000h,000h,06ch,08ah,078h,079h,07ah	; b081  tuxzxy.....l.xyz
	defb 07bh,074h,079h,07ah,07bh,074h,078h,079h,000h,000h,000h,000h,000h,000h,000h,000h	; b091  {tyz{txy........
	defb 06ch,06eh,078h,079h,07dh,06eh,078h,079h,07dh,084h,066h,000h	; b0a1  lnxy}nxy}.f.

; ----------------------------------------------------------------------
; DATOS dibujo_B0AD: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (210 bytes)
;   0xb0ad..0xb17f  (210 bytes)
DATA_dibujo_B0AD:
	defb 000h,000h,000h,000h,06ch,078h,078h,07dh,089h,000h,000h,000h,000h,000h,000h,000h	; b0ad  ....lxx}........
	defb 000h,000h,06eh,074h,075h,07ah,078h,079h,068h,000h,000h,000h,000h,000h,000h,000h	; b0bd  ..ntuzxyh.......
	defb 078h,078h,079h,074h,075h,07ah,07bh,078h,079h,000h,000h,000h,000h,000h,084h,07ah	; b0cd  xxytuz{xy......z
	defb 07ah,07bh,076h,078h,078h,079h,07ah,078h,079h,000h,000h,000h,08ah,076h,08bh,08ch	; b0dd  z{vxxyzxy....v..
	defb 08bh,08ch,07ah,07ah,07bh,089h,078h,079h,089h,000h,000h,07ch,07eh,072h,073h,076h	; b0ed  ..zz{.xy...|~rsv
	defb 073h,08bh,08ch,074h,075h,07ah,07bh,07ch,000h,000h,078h,078h,080h,079h,08ch,080h	; b0fd  s..tuz{|..xx.y..
	defb 072h,073h,076h,08bh,08ch,074h,088h,000h,000h,07ah,07ah,07bh,072h,073h,078h,079h	; b10d  rsv..t...zz{rsxy
	defb 08bh,08ch,072h,073h,076h,068h,000h,000h,078h,08ah,078h,079h,07ah,07bh,074h,075h	; b11d  ..rsvh..x.xyz{tu
	defb 08bh,08ch,08bh,08ch,089h,000h,000h,07ah,078h,07ah,07bh,072h,074h,075h,077h,072h	; b12d  .......zxz{rtuwr
	defb 078h,072h,073h,07fh,000h,000h,06fh,07ah,07bh,08bh,08ch,076h,08bh,08ch,075h,07ah	; b13d  xrs...oz{..v..uz
	defb 07bh,078h,079h,000h,000h,08ah,078h,075h,072h,078h,079h,072h,073h,077h,08bh,072h	; b14d  {xy...xurxyrsw.r
	defb 07bh,07bh,069h,000h,078h,079h,078h,079h,07ah,07bh,074h,075h,08bh,08ch,078h,079h	; b15d  {{i.xyxyz{tu..xy
	defb 074h,075h,067h,07ah,078h,07ah,07bh,072h,074h,075h,077h,072h,078h,07ah,07bh,076h	; b16d  tugzxz{rtuwrxz{v
	defb 077h,089h	; b17d

; ----------------------------------------------------------------------
; DATOS dibujo_B17F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (112 bytes)
;   0xb17f..0xb1ef  (112 bytes)
DATA_dibujo_B17F:
	defb 000h,06eh,078h,079h,078h,079h,069h,000h,000h,078h,07ah,07bh,07ah,08bh,08ch,000h	; b17f  .nxyxyi..xz{z...
	defb 000h,07ah,07bh,08bh,08ch,072h,073h,000h,000h,07ah,07bh,072h,073h,080h,079h,000h	; b18f  .z{..rs..z{rs.y.
	defb 000h,086h,08bh,08ch,074h,07ah,07bh,000h,000h,06fh,072h,073h,076h,074h,078h,079h	; b19f  ....tz{..orsvtxy
	defb 000h,078h,079h,08bh,08ch,076h,077h,07bh,000h,07ah,07bh,072h,073h,077h,078h,079h	; b1af  .xy..vw{.z{rswxy
	defb 000h,086h,078h,079h,08bh,08ch,07ah,07bh,000h,078h,07ah,07bh,072h,073h,080h,068h	; b1bf  ..xy..z{.xz{rs.h
	defb 065h,07ah,07bh,08bh,074h,075h,078h,08bh,078h,079h,075h,072h,076h,077h,078h,079h	; b1cf  ez{.tux.xyurvwxy
	defb 086h,07bh,078h,079h,08bh,08ch,07ah,07bh,084h,078h,07ah,07bh,072h,073h,080h,068h	; b1df  .{xy..z{.xz{rs.h

; ----------------------------------------------------------------------
; DATOS dibujo_B1EF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (224 bytes)
;   0xb1ef..0xb2cf  (224 bytes)
DATA_dibujo_B1EF:
	defb 000h,000h,000h,06ch,08ah,078h,078h,089h,000h,000h,000h,000h,000h,000h,000h,000h	; b1ef  ...l.xx.........
	defb 000h,000h,06ch,078h,08bh,07ah,07ah,078h,06ah,000h,000h,000h,000h,000h,000h,000h	; b1ff  ..lx.zzxj.......
	defb 000h,06ch,078h,078h,072h,074h,075h,07ah,066h,000h,000h,000h,000h,000h,000h,000h	; b20f  .lxxrtuzf.......
	defb 06ch,084h,07ah,07ah,08ch,076h,078h,080h,089h,000h,000h,000h,000h,000h,000h,000h	; b21f  l.zz.vx.........
	defb 08ah,076h,08bh,08ch,08bh,08ch,074h,075h,08bh,08ch,074h,075h,078h,079h,069h,000h	; b22f  .v....tu..tuxyi.
	defb 086h,07eh,072h,073h,072h,074h,075h,077h,072h,074h,075h,077h,07ah,080h,07eh,000h	; b23f  .~rsrtuwrtuwz.~.
	defb 078h,079h,074h,075h,08ch,076h,077h,074h,08ch,076h,077h,074h,08bh,078h,079h,000h	; b24f  xytu.vwt.vwt.xy.
	defb 07ah,07bh,076h,077h,073h,07ah,07bh,076h,073h,07ah,07bh,076h,072h,07ah,088h,000h	; b25f  z{vwsz{vsz{vrz..
	defb 08ah,076h,08bh,08ch,08bh,08ch,074h,075h,08bh,08ch,074h,075h,078h,079h,069h,000h	; b26f  .v....tu..tuxyi.
	defb 086h,07eh,072h,073h,072h,074h,075h,077h,072h,074h,075h,077h,07ah,080h,07eh,000h	; b27f  .~rsrtuwrtuwz.~.
	defb 078h,079h,074h,075h,08ch,076h,077h,074h,08ch,076h,077h,074h,08bh,078h,079h,068h	; b28f  xytu.vwt.vwt.xyh
	defb 07ah,07bh,076h,077h,073h,07ah,07bh,076h,073h,07ah,07bh,076h,072h,07ah,07bh,089h	; b29f  z{vwsz{vsz{vrz{.
	defb 08ah,076h,08bh,08ch,08bh,08ch,074h,075h,08bh,08ch,074h,075h,078h,079h,078h,079h	; b2af  .v....tu..tuxyxy
	defb 086h,07eh,072h,073h,072h,074h,075h,077h,072h,074h,075h,077h,07ah,07bh,07ah,07bh	; b2bf  .~rsrtuwrtuwz{z{

; ----------------------------------------------------------------------
; DATOS dibujo_B2CF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (40 bytes)
;   0xb2cf..0xb2f7  (40 bytes)
DATA_dibujo_B2CF:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b2cf  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,060h,061h,062h,061h,0fbh,0fdh,062h,000h	; b2df  ........`aba..b.
	defb 0fah,0fbh,0fbh,0fch,0fdh,0fah,0fah,063h	; b2ef  .......c

; ----------------------------------------------------------------------
; DATOS dibujo_B2F7: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb2f7..0xb307  (16 bytes)
DATA_dibujo_B2F7:
	defb 060h,000h,000h,061h,062h,000h,000h,000h,0fah,0fch,0fdh,0fah,0fah,068h,0fah,063h	; b2f7  `..ab........h.c

; ----------------------------------------------------------------------
; DATOS dibujo_B307: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (40 bytes)
;   0xb307..0xb32f  (40 bytes)
DATA_dibujo_B307:
	defb 0ffh,0feh,0feh,0fdh,0fch,0ffh,0ffh,067h,067h,065h,066h,065h,0feh,0fch,066h,000h	; b307  .......ggefe..f.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b317  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; b327  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B32F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb32f..0xb33f  (16 bytes)
DATA_dibujo_B32F:
	defb 0ffh,0fdh,0fch,0ffh,0ffh,069h,0ffh,067h,064h,000h,000h,065h,066h,000h,000h,000h	; b32f  .....i.gd..ef...

; ----------------------------------------------------------------------
; DATOS dibujo_B33F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb33f..0xb34f  (16 bytes)
DATA_dibujo_B33F:
	defb 05bh,000h,000h,05dh,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,05eh,000h	; b33f  [..].........\^.

; ----------------------------------------------------------------------
; DATOS dibujo_B34F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb34f..0xb35f  (16 bytes)
DATA_dibujo_B34F:
	defb 092h,000h,000h,099h,000h,000h,000h,000h,000h,000h,000h,000h,000h,093h,09ah,000h	; b34f  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B35F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb35f..0xb36f  (16 bytes)
DATA_dibujo_B35F:
	defb 094h,000h,000h,09bh,05bh,000h,000h,05dh,000h,05ch,05eh,000h,000h,095h,09ch,000h	; b35f  ....[..].\^.....

; ----------------------------------------------------------------------
; DATOS dibujo_B36F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb36f..0xb37f  (16 bytes)
DATA_dibujo_B36F:
	defb 096h,000h,000h,09dh,092h,000h,000h,099h,000h,093h,09ah,000h,000h,097h,09eh,000h	; b36f  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B37F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb37f..0xb38f  (16 bytes)
DATA_dibujo_B37F:
	defb 098h,000h,000h,09fh,094h,05ch,05eh,09bh,05bh,097h,09eh,05dh,000h,097h,09eh,000h	; b37f  .....\^.[..]....

; ----------------------------------------------------------------------
; DATOS dibujo_B38F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb38f..0xb39f  (16 bytes)
DATA_dibujo_B38F:
	defb 098h,000h,000h,09fh,098h,093h,09ah,09fh,092h,097h,09eh,099h,000h,097h,09eh,000h	; b38f  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B39F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb39f..0xb3af  (16 bytes)
DATA_dibujo_B39F:
	defb 098h,05ch,05eh,09fh,098h,097h,09eh,09fh,094h,097h,09eh,09bh,05bh,097h,09eh,05dh	; b39f  .\^.........[..]

; ----------------------------------------------------------------------
; DATOS dibujo_B3AF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb3af..0xb3bf  (16 bytes)
DATA_dibujo_B3AF:
	defb 098h,093h,09ah,09fh,098h,097h,09eh,09fh,098h,097h,09eh,09fh,092h,097h,09eh,099h	; b3af  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B3BF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb3bf..0xb3cf  (16 bytes)
DATA_dibujo_B3BF:
	defb 0c0h,0c1h,0c2h,0c3h,0c4h,0c5h,0c6h,0c7h,0d0h,0d1h,0d9h,0d8h,0d4h,0d5h,0ddh,0dch	; b3bf  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B3CF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb3cf..0xb3df  (16 bytes)
DATA_dibujo_B3CF:
	defb 0c8h,0c9h,0cah,0cbh,0cch,0cdh,0ceh,0cfh,0d2h,0d3h,0dbh,0dah,0d6h,0d7h,0dfh,0deh	; b3cf  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B3DF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb3df..0xb3ef  (16 bytes)
DATA_dibujo_B3DF:
	defb 0e4h,0e5h,0edh,0ech,0e0h,0e1h,0e9h,0e8h,0e7h,0e6h,0e5h,0e4h,0e3h,0e2h,0e1h,0e0h	; b3df  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B3EF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb3ef..0xb3ff  (16 bytes)
DATA_dibujo_B3EF:
	defb 0e6h,0e7h,0efh,0eeh,0e2h,0e3h,0ebh,0eah,0efh,0eeh,0edh,0ech,0ebh,0eah,0e9h,0e8h	; b3ef  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B3FF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb3ff..0xb40f  (16 bytes)
DATA_dibujo_B3FF:
	defb 0e4h,0e5h,0edh,0ech,0e0h,0e1h,0e9h,0e8h,0c7h,0c6h,0c5h,0c4h,0c3h,0c2h,0c1h,0c0h	; b3ff  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B40F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb40f..0xb41f  (16 bytes)
DATA_dibujo_B40F:
	defb 0e6h,0e7h,0efh,0eeh,0e2h,0e3h,0ebh,0eah,0cfh,0ceh,0cdh,0cch,0cbh,0cah,0c9h,0c8h	; b40f  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B41F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb41f..0xb425  (6 bytes)
DATA_dibujo_B41F:
	defb 06dh,06eh,0f8h,0f9h,06fh,070h	; b41f

; ----------------------------------------------------------------------
; DATOS dibujo_B425: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb425..0xb43d  (24 bytes)
DATA_dibujo_B425:
	defb 0f8h,0f9h,06fh,070h,0f8h,0f9h,06fh,070h,0f8h,0f9h,06fh,070h,0f8h,0f9h,06fh,070h	; b425  ..op..op..op..op
	defb 0f8h,0f9h,06fh,070h,0f8h,0f9h,071h,072h	; b435  ..op..qr

; ----------------------------------------------------------------------
; DATOS dibujo_B43D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb43d..0xb443  (6 bytes)
DATA_dibujo_B43D:
	defb 073h,074h,0fch,0fdh,075h,076h	; b43d

; ----------------------------------------------------------------------
; DATOS dibujo_B443: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb443..0xb45b  (24 bytes)
DATA_dibujo_B443:
	defb 0fch,0fdh,075h,076h,0fch,0fdh,075h,076h,0fch,0fdh,075h,076h,0fch,0fdh,075h,076h	; b443  ..uv..uv..uv..uv
	defb 0fch,0fdh,075h,076h,0fch,0fdh,077h,078h	; b453  ..uv..wx

; ----------------------------------------------------------------------
; DATOS dibujo_B45B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb45b..0xb461  (6 bytes)
DATA_dibujo_B45B:
	defb 079h,07ah,0f8h,0f9h,07bh,07ch	; b45b

; ----------------------------------------------------------------------
; DATOS dibujo_B461: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb461..0xb479  (24 bytes)
DATA_dibujo_B461:
	defb 0f8h,0f9h,07bh,07ch,0f8h,0f9h,07bh,07ch,0f8h,0f9h,07bh,07ch,0f8h,0f9h,07bh,07ch	; b461  ..{|..{|..{|..{|
	defb 0f8h,0f9h,07bh,07ch,0f8h,0f9h,0c0h,0c1h	; b471  ..{|....

; ----------------------------------------------------------------------
; DATOS dibujo_B479: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb479..0xb47f  (6 bytes)
DATA_dibujo_B479:
	defb 0c2h,0c3h,0fch,0fdh,0c4h,0c5h	; b479

; ----------------------------------------------------------------------
; DATOS dibujo_B47F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb47f..0xb497  (24 bytes)
DATA_dibujo_B47F:
	defb 0fch,0fdh,0c4h,0c5h,0fch,0fdh,0c4h,0c5h,0fch,0fdh,0c4h,0c5h,0fch,0fdh,0c4h,0c5h	; b47f  ................
	defb 0fch,0fdh,0c4h,0c5h,0fch,0fdh,0c6h,0c7h	; b48f  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B497: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb497..0xb49d  (6 bytes)
DATA_dibujo_B497:
	defb 0c8h,0c9h,0f8h,0f9h,0cah,0cbh	; b497

; ----------------------------------------------------------------------
; DATOS dibujo_B49D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb49d..0xb4b5  (24 bytes)
DATA_dibujo_B49D:
	defb 0f8h,0f9h,0cah,0cbh,0f8h,0f9h,0cah,0cbh,0f8h,0f9h,0cah,0cbh,0f8h,0f9h,0cah,0cbh	; b49d  ................
	defb 0f8h,0f9h,0cah,0cbh,0f8h,0f9h,0cch,0cdh	; b4ad  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B4B5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb4b5..0xb4bb  (6 bytes)
DATA_dibujo_B4B5:
	defb 0ceh,0cfh,0fch,0fdh,0d0h,0d1h	; b4b5

; ----------------------------------------------------------------------
; DATOS dibujo_B4BB: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb4bb..0xb4d3  (24 bytes)
DATA_dibujo_B4BB:
	defb 0fch,0fdh,0d0h,0d1h,0fch,0fdh,0d0h,0d1h,0fch,0fdh,0d0h,0d1h,0fch,0fdh,0d0h,0d1h	; b4bb  ................
	defb 0fch,0fdh,0d0h,0d1h,0fch,0fdh,0d2h,0d3h	; b4cb  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B4D3: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb4d3..0xb4d9  (6 bytes)
DATA_dibujo_B4D3:
	defb 0d4h,0d5h,0fah,0fbh,0d6h,0d7h	; b4d3

; ----------------------------------------------------------------------
; DATOS dibujo_B4D9: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb4d9..0xb4f1  (24 bytes)
DATA_dibujo_B4D9:
	defb 0fah,0fbh,0d6h,0d7h,0fah,0fbh,0d6h,0d7h,0fah,0fbh,0d6h,0d7h,0fah,0fbh,0d6h,0d7h	; b4d9  ................
	defb 0fah,0fbh,0d6h,0d7h,0fah,0fbh,0d8h,0d9h	; b4e9  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B4F1: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb4f1..0xb4f7  (6 bytes)
DATA_dibujo_B4F1:
	defb 0dah,0dbh,0feh,0ffh,0dch,0ddh	; b4f1

; ----------------------------------------------------------------------
; DATOS dibujo_B4F7: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb4f7..0xb50f  (24 bytes)
DATA_dibujo_B4F7:
	defb 0feh,0ffh,0dch,0ddh,0feh,0ffh,0dch,0ddh,0feh,0ffh,0dch,0ddh,0feh,0ffh,0dch,0ddh	; b4f7  ................
	defb 0feh,0ffh,0dch,0ddh,0feh,0ffh,0deh,0dfh	; b507  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B50F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb50f..0xb515  (6 bytes)
DATA_dibujo_B50F:
	defb 0e0h,0e1h,0fah,0fbh,0e2h,0e3h	; b50f

; ----------------------------------------------------------------------
; DATOS dibujo_B515: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb515..0xb52d  (24 bytes)
DATA_dibujo_B515:
	defb 0fah,0fbh,0e2h,0e3h,0fah,0fbh,0e2h,0e3h,0fah,0fbh,0e2h,0e3h,0fah,0fbh,0e2h,0e3h	; b515  ................
	defb 0fah,0fbh,0e2h,0e3h,0fah,0fbh,0e4h,0e5h	; b525  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B52D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb52d..0xb533  (6 bytes)
DATA_dibujo_B52D:
	defb 0e6h,0e7h,0feh,0ffh,0e8h,0e9h	; b52d

; ----------------------------------------------------------------------
; DATOS dibujo_B533: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb533..0xb54b  (24 bytes)
DATA_dibujo_B533:
	defb 0feh,0ffh,0e8h,0e9h,0feh,0ffh,0e8h,0e9h,0feh,0ffh,0e8h,0e9h,0feh,0ffh,0e8h,0e9h	; b533  ................
	defb 0feh,0ffh,0e8h,0e9h,0feh,0ffh,0eah,0ebh	; b543  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B54B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb54b..0xb551  (6 bytes)
DATA_dibujo_B54B:
	defb 0ech,0edh,0fah,0fbh,0eeh,0efh	; b54b

; ----------------------------------------------------------------------
; DATOS dibujo_B551: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb551..0xb569  (24 bytes)
DATA_dibujo_B551:
	defb 0fah,0fbh,0eeh,0efh,0fah,0fbh,0eeh,0efh,0fah,0fbh,0eeh,0efh,0fah,0fbh,0eeh,0efh	; b551  ................
	defb 0fah,0fbh,0eeh,0efh,0fah,0fbh,0f0h,0f1h	; b561  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B569: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb569..0xb56f  (6 bytes)
DATA_dibujo_B569:
	defb 0f2h,0f3h,0feh,0ffh,0f4h,0f5h	; b569

; ----------------------------------------------------------------------
; DATOS dibujo_B56F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb56f..0xb587  (24 bytes)
DATA_dibujo_B56F:
	defb 0feh,0ffh,0f4h,0f5h,0feh,0ffh,0f4h,0f5h,0feh,0ffh,0f4h,0f5h,0feh,0ffh,0f4h,0f5h	; b56f  ................
	defb 0feh,0ffh,0f4h,0f5h,0feh,0ffh,0f6h,0f7h	; b57f  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B587: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb587..0xb58d  (6 bytes)
DATA_dibujo_B587:
	defb 0b0h,0b1h,0f8h,0f9h,0b2h,0b3h	; b587

; ----------------------------------------------------------------------
; DATOS dibujo_B58D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb58d..0xb5a5  (24 bytes)
DATA_dibujo_B58D:
	defb 0f8h,0f9h,0b2h,0b3h,0f8h,0f9h,0b2h,0b3h,0f8h,0f9h,0b2h,0b3h,0f8h,0f9h,0b2h,0b3h	; b58d  ................
	defb 0f8h,0f9h,0b2h,0b3h,0f8h,0f9h,0b4h,0b5h	; b59d  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B5A5: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb5a5..0xb5ab  (6 bytes)
DATA_dibujo_B5A5:
	defb 0b6h,0b7h,0fch,0fdh,0b8h,0b9h	; b5a5

; ----------------------------------------------------------------------
; DATOS dibujo_B5AB: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb5ab..0xb5c3  (24 bytes)
DATA_dibujo_B5AB:
	defb 0fch,0fdh,0b8h,0b9h,0fch,0fdh,0b8h,0b9h,0fch,0fdh,0b8h,0b9h,0fch,0fdh,0b8h,0b9h	; b5ab  ................
	defb 0fch,0fdh,0b8h,0b9h,0fch,0fdh,0bah,0bbh	; b5bb  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B5C3: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb5c3..0xb5c9  (6 bytes)
DATA_dibujo_B5C3:
	defb 0bch,0bdh,0f8h,0f9h,0beh,0bfh	; b5c3

; ----------------------------------------------------------------------
; DATOS dibujo_B5C9: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb5c9..0xb5e1  (24 bytes)
DATA_dibujo_B5C9:
	defb 0f8h,0f9h,0beh,0bfh,0f8h,0f9h,0beh,0bfh,0f8h,0f9h,0beh,0bfh,0f8h,0f9h,0beh,0bfh	; b5c9  ................
	defb 0f8h,0f9h,0beh,0bfh,0f8h,0f9h,0c0h,0c1h	; b5d9  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B5E1: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb5e1..0xb5e7  (6 bytes)
DATA_dibujo_B5E1:
	defb 0c2h,0c3h,0fch,0fdh,0c4h,0c5h	; b5e1

; ----------------------------------------------------------------------
; DATOS dibujo_B5E7: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb5e7..0xb5ff  (24 bytes)
DATA_dibujo_B5E7:
	defb 0fch,0fdh,0c4h,0c5h,0fch,0fdh,0c4h,0c5h,0fch,0fdh,0c4h,0c5h,0fch,0fdh,0c4h,0c5h	; b5e7  ................
	defb 0fch,0fdh,0c4h,0c5h,0fch,0fdh,0c6h,0c7h	; b5f7  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B5FF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb5ff..0xb605  (6 bytes)
DATA_dibujo_B5FF:
	defb 0c8h,0c9h,0f8h,0f9h,0cah,0cbh	; b5ff

; ----------------------------------------------------------------------
; DATOS dibujo_B605: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb605..0xb61d  (24 bytes)
DATA_dibujo_B605:
	defb 0f8h,0f9h,0cah,0cbh,0f8h,0f9h,0cah,0cbh,0f8h,0f9h,0cah,0cbh,0f8h,0f9h,0cah,0cbh	; b605  ................
	defb 0f8h,0f9h,0cah,0cbh,0f8h,0f9h,0cch,0cdh	; b615  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B61D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb61d..0xb623  (6 bytes)
DATA_dibujo_B61D:
	defb 0ceh,0cfh,0fch,0fdh,0d0h,0d1h	; b61d

; ----------------------------------------------------------------------
; DATOS dibujo_B623: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb623..0xb63b  (24 bytes)
DATA_dibujo_B623:
	defb 0fch,0fdh,0d0h,0d1h,0fch,0fdh,0d0h,0d1h,0fch,0fdh,0d0h,0d1h,0fch,0fdh,0d0h,0d1h	; b623  ................
	defb 0fch,0fdh,0d0h,0d1h,0fch,0fdh,0d2h,0d3h	; b633  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B63B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb63b..0xb641  (6 bytes)
DATA_dibujo_B63B:
	defb 0d4h,0d5h,0fah,0fbh,0d6h,0d7h	; b63b

; ----------------------------------------------------------------------
; DATOS dibujo_B641: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb641..0xb659  (24 bytes)
DATA_dibujo_B641:
	defb 0fah,0fbh,0d6h,0d7h,0fah,0fbh,0d6h,0d7h,0fah,0fbh,0d6h,0d7h,0fah,0fbh,0d6h,0d7h	; b641  ................
	defb 0fah,0fbh,0d6h,0d7h,0fah,0fbh,0d8h,0d9h	; b651  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B659: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb659..0xb65f  (6 bytes)
DATA_dibujo_B659:
	defb 0dah,0dbh,0feh,0ffh,0dch,0ddh	; b659

; ----------------------------------------------------------------------
; DATOS dibujo_B65F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb65f..0xb677  (24 bytes)
DATA_dibujo_B65F:
	defb 0feh,0ffh,0dch,0ddh,0feh,0ffh,0dch,0ddh,0feh,0ffh,0dch,0ddh,0feh,0ffh,0dch,0ddh	; b65f  ................
	defb 0feh,0ffh,0dch,0ddh,0feh,0ffh,0deh,0dfh	; b66f  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B677: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb677..0xb67d  (6 bytes)
DATA_dibujo_B677:
	defb 0e0h,0e1h,0fah,0fbh,0e2h,0e3h	; b677

; ----------------------------------------------------------------------
; DATOS dibujo_B67D: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb67d..0xb695  (24 bytes)
DATA_dibujo_B67D:
	defb 0fah,0fbh,0e2h,0e3h,0fah,0fbh,0e2h,0e3h,0fah,0fbh,0e2h,0e3h,0fah,0fbh,0e2h,0e3h	; b67d  ................
	defb 0fah,0fbh,0e2h,0e3h,0fah,0fbh,0e4h,0e5h	; b68d  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B695: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb695..0xb69b  (6 bytes)
DATA_dibujo_B695:
	defb 0e6h,0e7h,0feh,0ffh,0e8h,0e9h	; b695

; ----------------------------------------------------------------------
; DATOS dibujo_B69B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb69b..0xb6b3  (24 bytes)
DATA_dibujo_B69B:
	defb 0feh,0ffh,0e8h,0e9h,0feh,0ffh,0e8h,0e9h,0feh,0ffh,0e8h,0e9h,0feh,0ffh,0e8h,0e9h	; b69b  ................
	defb 0feh,0ffh,0e8h,0e9h,0feh,0ffh,0eah,0ebh	; b6ab  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B6B3: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb6b3..0xb6b9  (6 bytes)
DATA_dibujo_B6B3:
	defb 0ech,0edh,0fah,0fbh,0eeh,0efh	; b6b3

; ----------------------------------------------------------------------
; DATOS dibujo_B6B9: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb6b9..0xb6d1  (24 bytes)
DATA_dibujo_B6B9:
	defb 0fah,0fbh,0eeh,0efh,0fah,0fbh,0eeh,0efh,0fah,0fbh,0eeh,0efh,0fah,0fbh,0eeh,0efh	; b6b9  ................
	defb 0fah,0fbh,0eeh,0efh,0fah,0fbh,0f0h,0f1h	; b6c9  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B6D1: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb6d1..0xb6d7  (6 bytes)
DATA_dibujo_B6D1:
	defb 0f2h,0f3h,0feh,0ffh,0f4h,0f5h	; b6d1

; ----------------------------------------------------------------------
; DATOS dibujo_B6D7: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb6d7..0xb6ef  (24 bytes)
DATA_dibujo_B6D7:
	defb 0feh,0ffh,0f4h,0f5h,0feh,0ffh,0f4h,0f5h,0feh,0ffh,0f4h,0f5h,0feh,0ffh,0f4h,0f5h	; b6d7  ................
	defb 0feh,0ffh,0f4h,0f5h,0feh,0ffh,0f6h,0f7h	; b6e7  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B6EF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xb6ef..0xb6f7  (8 bytes)
DATA_dibujo_B6EF:
	defb 05bh,000h,000h,05dh,000h,05ch,05eh,000h	; b6ef  [..].\^.

; ----------------------------------------------------------------------
; DATOS dibujo_B6F7: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xb6f7..0xb6ff  (8 bytes)
DATA_dibujo_B6F7:
	defb 092h,000h,000h,099h,000h,093h,09ah,000h	; b6f7  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B6FF: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xb6ff..0xb707  (8 bytes)
DATA_dibujo_B6FF:
	defb 094h,05ch,05eh,09bh,05bh,095h,09dh,05dh	; b6ff  .\^.[..]

; ----------------------------------------------------------------------
; DATOS dibujo_B707: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (8 bytes)
;   0xb707..0xb70f  (8 bytes)
DATA_dibujo_B707:
	defb 096h,093h,09ah,09dh,092h,097h,09eh,099h	; b707  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B70F: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xb70f..0xb713  (4 bytes)
DATA_dibujo_B70F:
	defb 0d4h,0d6h,0d5h,0d7h	; b70f

; ----------------------------------------------------------------------
; DATOS dibujo_B713: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xb713..0xb717  (4 bytes)
DATA_dibujo_B713:
	defb 0f7h,0f5h,0f6h,0f4h	; b713

; ----------------------------------------------------------------------
; DATOS dibujo_B717: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (9 bytes)
;   0xb717..0xb720  (9 bytes)
DATA_dibujo_B717:
	defb 0c5h,0cdh,0c6h,0d8h,0d2h,0d9h,0dbh,0cch,0dah	; b717  .........

; ----------------------------------------------------------------------
; DATOS dibujo_B720: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (9 bytes)
;   0xb720..0xb729  (9 bytes)
DATA_dibujo_B720:
	defb 0fah,0ech,0fbh,0f9h,0f2h,0f8h,0e6h,0edh,0e5h	; b720  .........

; ----------------------------------------------------------------------
; DATOS dibujo_B729: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb729..0xb739  (16 bytes)
DATA_dibujo_B729:
	defb 0c0h,0c1h,0cbh,0c2h,0c7h,0d0h,0ceh,0c9h,0cah,0d1h,0cfh,0dch,0c3h,0d3h,0c8h,0c4h	; b729  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B739: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (16 bytes)
;   0xb739..0xb749  (16 bytes)
DATA_dibujo_B739:
	defb 0e4h,0e8h,0f3h,0e3h,0fch,0efh,0f1h,0eah,0e9h,0eeh,0f0h,0e7h,0e2h,0ebh,0e1h,0e0h	; b739  ................

; ----------------------------------------------------------------------
; DATOS dibujo_B749: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (1 bytes)
;   0xb749..0xb74a  (1 bytes)
DATA_dibujo_B749:
	defb 0aeh	; b749

; ----------------------------------------------------------------------
; DATOS dibujo_B74A: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (1 bytes)
;   0xb74a..0xb74b  (1 bytes)
DATA_dibujo_B74A:
	defb 0adh	; b74a

; ----------------------------------------------------------------------
; DATOS dibujo_B74B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (5 bytes)
;   0xb74b..0xb750  (5 bytes)
DATA_dibujo_B74B:
	defb 0abh,0afh,0aeh,0adh,0abh	; b74b

; ----------------------------------------------------------------------
; DATOS dibujo_B750: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (6 bytes)
;   0xb750..0xb756  (6 bytes)
DATA_dibujo_B750:
	defb 0ach,0aah,0a9h,0ach,0aah,0a9h	; b750

; ----------------------------------------------------------------------
; DATOS dibujo_B756: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (5 bytes)
;   0xb756..0xb75b  (5 bytes)
DATA_dibujo_B756:
	defb 0ach,0a9h,0ach,0aah,0a9h	; b756

; ----------------------------------------------------------------------
; DATOS dibujo_B75B: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (1 bytes)
;   0xb75b..0xb75c  (1 bytes)
DATA_dibujo_B75B:
	defb 010h	; b75b

; ----------------------------------------------------------------------
; DATOS dibujo_B75C: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb75c..0xb774  (24 bytes)
DATA_dibujo_B75C:
	defb 0b7h,0b8h,0b9h,0bah,0bbh,0bch,0bdh,0beh,0bfh,0c0h,0c1h,0c2h,0d5h,0c3h,0c4h,0d9h	; b75c  ................
	defb 000h,0c5h,0c6h,000h,0d7h,0d8h,0dch,0dbh	; b76c  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B774: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb774..0xb78c  (24 bytes)
DATA_dibujo_B774:
	defb 0b7h,0b8h,0b9h,0bah,0bbh,0cch,0cdh,0beh,0bfh,0d0h,0c1h,0c2h,0d5h,0c3h,0c4h,0d9h	; b774  ................
	defb 000h,0c5h,0c6h,000h,0d7h,0d8h,0dch,0dbh	; b784  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B78C: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb78c..0xb7a4  (24 bytes)
DATA_dibujo_B78C:
	defb 0b7h,0c8h,0b9h,0bah,0cbh,0cch,0cdh,0beh,0cfh,0d0h,0d1h,0c3h,0d5h,0d3h,0c4h,0d9h	; b78c  ................
	defb 000h,0c5h,0c6h,000h,0d7h,0d8h,0dch,0dbh	; b79c  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B7A4: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (20 bytes)
;   0xb7a4..0xb7b8  (20 bytes)
DATA_dibujo_B7A4:
	defb 0c7h,0c8h,0c9h,0cah,0cbh,0cch,0cdh,0ceh,0cfh,0d0h,0d1h,0d2h,0d6h,0d3h,0d4h,0dah	; b7a4  ................
	defb 000h,0c5h,0c6h,000h	; b7b4

; ----------------------------------------------------------------------
; DATOS dibujo_B7B8: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (4 bytes)
;   0xb7b8..0xb7bc  (4 bytes)
DATA_dibujo_B7B8:
	defb 0d7h,0d8h,0dch,0dbh	; b7b8

; ----------------------------------------------------------------------
; DATOS dibujo_B7BC: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb7bc..0xb7d4  (24 bytes)
DATA_dibujo_B7BC:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; b7bc  ................
	defb 000h,000h,000h,000h,0d7h,0d8h,0dch,0dbh	; b7cc  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B7D4: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb7d4..0xb7ec  (24 bytes)
DATA_dibujo_B7D4:
	defb 0d7h,0d8h,0dch,0dbh,000h,0c5h,0c6h,000h,0d5h,0c3h,0c4h,0d9h,0bfh,0c0h,0c1h,0c2h	; b7d4  ................
	defb 0bbh,0bch,0bdh,0beh,0b7h,0b8h,0b9h,0bah	; b7e4  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B7EC: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb7ec..0xb804  (24 bytes)
DATA_dibujo_B7EC:
	defb 0d7h,0d8h,0dch,0dbh,000h,0c5h,0c6h,000h,0d5h,0c3h,0c4h,0d9h,0bfh,0d0h,0c1h,0c2h	; b7ec  ................
	defb 0bbh,0cch,0cdh,0beh,0b7h,0b8h,0b9h,0bah	; b7fc  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B804: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb804..0xb81c  (24 bytes)
DATA_dibujo_B804:
	defb 0d7h,0d8h,0dch,0dbh,000h,0c5h,0c6h,000h,0d5h,0d3h,0c4h,0d9h,0cfh,0d0h,0d1h,0c3h	; b804  ................
	defb 0cbh,0cch,0cdh,0beh,0b7h,0c8h,0b9h,0bah	; b814  ........

; ----------------------------------------------------------------------
; DATOS dibujo_B81C: un dibujo de las piezas (p02:8221: 0xB834 + 2 x IX+7):
;   caracteres en filas, hasta el dibujo siguiente (el tamano lo da la ficha);
;   lo leen p02:8242 (24 bytes)
;   0xb81c..0xb834  (24 bytes)
DATA_dibujo_B81C:
	defb 0d7h,0d8h,0dch,0dbh,000h,0c5h,0c6h,000h,0d6h,0d3h,0d4h,0dah,0cfh,0d0h,0d1h,0d2h	; b81c  ................
	defb 0cbh,0cch,0cdh,0ceh,0c7h,0c8h,0c9h,0cah	; b82c  ........

; ----------------------------------------------------------------------
; DATOS tabla_B834: un puntero por dibujo de las piezas (p02:8221: 0xB834 + 2
;   x IX+7) (256); lo leen p02:8232, p02:82C2 (512 bytes)
;   0xb834..0xba34  (512 bytes)
DATA_tabla_B834:
	defw 0a000h,0a030h,0a060h,0a090h,0a0c0h,0a0f0h,0a120h,0a150h	; b834
	defw 0a180h,0a1a0h,0a1c0h,0a1c4h,0a1c8h,0a1d1h,0a1dah,0a1f2h	; b844
	defw 0a1fah,0a202h,0a21ah,0a232h,0a252h,0a272h,0a282h,0a292h	; b854
	defw 0a2a2h,0a2b2h,0a2c2h,0a2d2h,0a2e2h,0a2eah,0a2f2h,0a332h	; b864
	defw 0a372h,0a3b2h,0a3f2h,0a432h,0a472h,0a4b2h,0a4f2h,0a502h	; b874
	defw 0a757h,0a512h,0a5b2h,0a652h,0a6f2h,0a70ah,0a712h,0a713h	; b884
	defw 0a737h,0a739h,0a73bh,0a73dh,0a73fh,0a741h,0a743h,0a745h	; b894
	defw 0a747h,0a749h,0a74bh,0a74dh,0a74fh,0a751h,0a753h,0a76fh	; b8a4
	defw 0a787h,0a79fh,0a7afh,0a7bfh,0a7cfh,0a7dfh,0a7efh,0a7ffh	; b8b4
	defw 0a80fh,0a81fh,0a827h,0a82fh,0a8f3h,0a8f9h,0a8ffh,0a905h	; b8c4
	defw 0a90bh,0a932h,0a959h,0a980h,0a9a7h,0a9ceh,0a9f5h,0aa1ch	; b8d4
	defw 0aa43h,0aa53h,0aa63h,0aa73h,0aa83h,0aaabh,0aabbh,0aae3h	; b8e4
	defw 0aaf3h,0ab16h,0ab39h,0ab5ch,0ab7fh,0ab8fh,0ab9fh,0abafh	; b8f4
	defw 0abbfh,0abe2h,0ac05h,0ac28h,0ac4bh,0ac5bh,0ac6bh,0ac7bh	; b904
	defw 0ac8bh,0acaeh,0acd1h,0acf4h,0ad17h,0ad3ah,0ad5dh,0ad80h	; b914
	defw 0ada3h,0adc6h,0ade9h,0ae0ch,0ae2fh,0ae52h,0ae75h,0ae85h	; b924
	defw 0ae95h,0aea5h,0aeb5h,0aed8h,0aefbh,0af1eh,0af41h,0af51h	; b934
	defw 0af61h,0af71h,0af81h,0af8dh,0af99h,0afa5h,0afb1h,0afb5h	; b944
	defw 0afb5h,0afb5h,0afd1h,0afcdh,0afc9h,0afc5h,0afd5h,0afe5h	; b954
	defw 0aff5h,0b005h,0b061h,0b04eh,0b03bh,0b028h,0b015h,0b0adh	; b964
	defw 0b17fh,0b1efh,0b2cfh,0b2f7h,0b307h,0b32fh,0b33fh,0b34fh	; b974
	defw 0b35fh,0b36fh,0b37fh,0b38fh,0b39fh,0b3afh,0b3bfh,0b3cfh	; b984
	defw 0b3dfh,0b3efh,0b3ffh,0b40fh,0b41fh,0b43dh,0b45bh,0b479h	; b994
	defw 0b497h,0b4b5h,0b4d3h,0b4f1h,0b50fh,0b52dh,0b54bh,0b569h	; b9a4
	defw 0b425h,0b443h,0b461h,0b47fh,0b49dh,0b4bbh,0b4d9h,0b4f7h	; b9b4
	defw 0b515h,0b533h,0b551h,0b56fh,0b6efh,0b6f7h,0b6ffh,0b707h	; b9c4
	defw 0b587h,0b5a5h,0b5c3h,0b5e1h,0b5ffh,0b61dh,0b63bh,0b659h	; b9d4
	defw 0b677h,0b695h,0b6b3h,0b6d1h,0b58dh,0b5abh,0b5c9h,0b5e7h	; b9e4
	defw 0b605h,0b623h,0b641h,0b65fh,0b67dh,0b69bh,0b6b9h,0b6d7h	; b9f4
	defw 0b70fh,0b713h,0b717h,0b720h,0b729h,0b739h,0b749h,0b750h	; ba04
	defw 0b756h,0b74bh,0b74ah,0b75bh,0b75ch,0b75ch,0b75ch,0b774h	; ba14
	defw 0b78ch,0b7a4h,0b7bch,0b7d4h,0b7ech,0b804h,0b81ch,0b7b8h	; ba24

; ----------------------------------------------------------------------
; DATOS leido_BA34: 6 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (6 bytes)
;   0xba34..0xba3a  (6 bytes)
DATA_leido_BA34:
	defb 03ah,0bah,04ah,0bah,05ah,0bah	; ba34

; ----------------------------------------------------------------------
; DATOS leido_BA3A: 48 bytes que lee p01:6F30 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6F30 (48 bytes)
;   0xba3a..0xba6a  (48 bytes)
DATA_leido_BA3A:
	defb 000h,000h,000h,000h,000h,030h,031h,000h,000h,032h,02ch,000h,000h,000h,000h,000h	; ba3a  .....01..2,.....
	defb 000h,02eh,021h,02fh,000h,024h,025h,026h,000h,027h,028h,029h,000h,02ah,02bh,02ch	; ba4a  ..!/.$%&.'().*+,
	defb 020h,021h,022h,023h,024h,025h,025h,026h,027h,025h,028h,029h,02ah,02bh,02ch,02dh	; ba5a   !"#$%%&'%()*+,-

; ----------------------------------------------------------------------
; DATOS dibujo_BA6A: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba6a..0xba6e  (4 bytes)
DATA_dibujo_BA6A:
	defb 0f8h,0f9h,0fah,0fbh	; ba6a

; ----------------------------------------------------------------------
; DATOS dibujo_BA6E: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba6e..0xba72  (4 bytes)
DATA_dibujo_BA6E:
	defb 0fch,0fdh,0feh,0ffh	; ba6e

; ----------------------------------------------------------------------
; DATOS dibujo_BA72: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba72..0xba76  (4 bytes)
DATA_dibujo_BA72:
	defb 088h,089h,08ah,08bh	; ba72

; ----------------------------------------------------------------------
; DATOS dibujo_BA76: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba76..0xba7a  (4 bytes)
DATA_dibujo_BA76:
	defb 090h,091h,092h,093h	; ba76

; ----------------------------------------------------------------------
; DATOS dibujo_BA7A: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba7a..0xba7e  (4 bytes)
DATA_dibujo_BA7A:
	defb 095h,094h,097h,096h	; ba7a

; ----------------------------------------------------------------------
; DATOS dibujo_BA7E: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba7e..0xba82  (4 bytes)
DATA_dibujo_BA7E:
	defb 08ah,08bh,088h,089h	; ba7e

; ----------------------------------------------------------------------
; DATOS dibujo_BA82: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba82..0xba86  (4 bytes)
DATA_dibujo_BA82:
	defb 092h,093h,090h,091h	; ba82

; ----------------------------------------------------------------------
; DATOS dibujo_BA86: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba86..0xba8a  (4 bytes)
DATA_dibujo_BA86:
	defb 097h,096h,095h,094h	; ba86

; ----------------------------------------------------------------------
; DATOS dibujo_BA8A: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba8a..0xba8e  (4 bytes)
DATA_dibujo_BA8A:
	defb 01ah,01bh,01ch,01dh	; ba8a

; ----------------------------------------------------------------------
; DATOS dibujo_BA8E: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba8e..0xba92  (4 bytes)
DATA_dibujo_BA8E:
	defb 080h,081h,082h,083h	; ba8e

; ----------------------------------------------------------------------
; DATOS dibujo_BA92: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xba92..0xba96  (4 bytes)
DATA_dibujo_BA92:
	defb 084h,085h,086h,087h	; ba92

; ----------------------------------------------------------------------
; DATOS dibujo_BA96: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xba96..0xba9e  (8 bytes)
DATA_dibujo_BA96:
	defb 000h,000h,0f0h,0f1h,0f2h,0f3h,000h,000h	; ba96  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BA9E: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xba9e..0xbaa6  (8 bytes)
DATA_dibujo_BA9E:
	defb 0f0h,0f1h,000h,000h,000h,000h,0f2h,0f3h	; ba9e  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BAA6: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (32 bytes)
;   0xbaa6..0xbac6  (32 bytes)
DATA_dibujo_BAA6:
	defb 08ah,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h	; baa6  .fffffffffffffff
	defb 066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h,066h	; bab6  ffffffffffffffff

; ----------------------------------------------------------------------
; DATOS dibujo_BAC6: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (32 bytes)
;   0xbac6..0xbae6  (32 bytes)
DATA_dibujo_BAC6:
	defb 0bah,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h	; bac6  .ggggggggggggggg
	defb 067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h,067h	; bad6  gggggggggggggggg

; ----------------------------------------------------------------------
; DATOS dibujo_BAE6: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbae6..0xbaea  (4 bytes)
DATA_dibujo_BAE6:
	defb 05ah,05bh,05ch,05dh	; bae6

; ----------------------------------------------------------------------
; DATOS dibujo_BAEA: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbaea..0xbaee  (4 bytes)
DATA_dibujo_BAEA:
	defb 05eh,05fh,060h,061h	; baea

; ----------------------------------------------------------------------
; DATOS dibujo_BAEE: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (32 bytes)
;   0xbaee..0xbb0e  (32 bytes)
DATA_dibujo_BAEE:
	defb 005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h	; baee  ................
	defb 005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h,005h	; bafe  ................

; ----------------------------------------------------------------------
; DATOS dibujo_BB0E: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb0e..0xbb10  (2 bytes)
DATA_dibujo_BB0E:
	defb 0c4h,0c5h	; bb0e

; ----------------------------------------------------------------------
; DATOS dibujo_BB10: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb10..0xbb12  (2 bytes)
DATA_dibujo_BB10:
	defb 0c6h,0c7h	; bb10

; ----------------------------------------------------------------------
; DATOS dibujo_BB12: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb12..0xbb14  (2 bytes)
DATA_dibujo_BB12:
	defb 0cah,0cbh	; bb12

; ----------------------------------------------------------------------
; DATOS dibujo_BB14: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb14..0xbb16  (2 bytes)
DATA_dibujo_BB14:
	defb 0c8h,0c9h	; bb14

; ----------------------------------------------------------------------
; DATOS dibujo_BB16: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb16..0xbb18  (2 bytes)
DATA_dibujo_BB16:
	defb 090h,091h	; bb16

; ----------------------------------------------------------------------
; DATOS dibujo_BB18: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb18..0xbb1a  (2 bytes)
DATA_dibujo_BB18:
	defb 0aeh,0afh	; bb18

; ----------------------------------------------------------------------
; DATOS dibujo_BB1A: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb1a..0xbb1e  (4 bytes)
DATA_dibujo_BB1A:
	defb 012h,013h,014h,015h	; bb1a

; ----------------------------------------------------------------------
; DATOS dibujo_BB1E: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb1e..0xbb22  (4 bytes)
DATA_dibujo_BB1E:
	defb 016h,017h,018h,019h	; bb1e

; ----------------------------------------------------------------------
; DATOS dibujo_BB22: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (1 bytes)
;   0xbb22..0xbb23  (1 bytes)
DATA_dibujo_BB22:
	defb 06bh	; bb22

; ----------------------------------------------------------------------
; DATOS dibujo_BB23: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb23..0xbb27  (4 bytes)
DATA_dibujo_BB23:
	defb 06ch,06dh,06eh,06fh	; bb23

; ----------------------------------------------------------------------
; DATOS dibujo_BB27: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (9 bytes)
;   0xbb27..0xbb30  (9 bytes)
DATA_dibujo_BB27:
	defb 06ch,06ah,06dh,06ah,06ah,06ah,06eh,06ah,06fh	; bb27  ljmjjjnjo

; ----------------------------------------------------------------------
; DATOS dibujo_BB30: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb30..0xbb34  (4 bytes)
DATA_dibujo_BB30:
	defb 090h,091h,092h,093h	; bb30

; ----------------------------------------------------------------------
; DATOS dibujo_BB34: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb34..0xbb38  (4 bytes)
DATA_dibujo_BB34:
	defb 090h,091h,094h,095h	; bb34

; ----------------------------------------------------------------------
; DATOS dibujo_BB38: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb38..0xbb3c  (4 bytes)
DATA_dibujo_BB38:
	defb 090h,091h,096h,097h	; bb38

; ----------------------------------------------------------------------
; DATOS dibujo_BB3C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb3c..0xbb40  (4 bytes)
DATA_dibujo_BB3C:
	defb 098h,099h,09ah,09bh	; bb3c

; ----------------------------------------------------------------------
; DATOS dibujo_BB40: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb40..0xbb44  (4 bytes)
DATA_dibujo_BB40:
	defb 098h,099h,09ch,09dh	; bb40

; ----------------------------------------------------------------------
; DATOS dibujo_BB44: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb44..0xbb48  (4 bytes)
DATA_dibujo_BB44:
	defb 098h,099h,09eh,09fh	; bb44

; ----------------------------------------------------------------------
; DATOS dibujo_BB48: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb48..0xbb4c  (4 bytes)
DATA_dibujo_BB48:
	defb 092h,093h,090h,091h	; bb48

; ----------------------------------------------------------------------
; DATOS dibujo_BB4C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb4c..0xbb50  (4 bytes)
DATA_dibujo_BB4C:
	defb 094h,095h,090h,091h	; bb4c

; ----------------------------------------------------------------------
; DATOS dibujo_BB50: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb50..0xbb54  (4 bytes)
DATA_dibujo_BB50:
	defb 096h,097h,090h,091h	; bb50

; ----------------------------------------------------------------------
; DATOS dibujo_BB54: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb54..0xbb58  (4 bytes)
DATA_dibujo_BB54:
	defb 09ah,09bh,098h,099h	; bb54

; ----------------------------------------------------------------------
; DATOS dibujo_BB58: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb58..0xbb5c  (4 bytes)
DATA_dibujo_BB58:
	defb 09ch,09dh,098h,099h	; bb58

; ----------------------------------------------------------------------
; DATOS dibujo_BB5C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb5c..0xbb60  (4 bytes)
DATA_dibujo_BB5C:
	defb 09eh,09fh,098h,099h	; bb5c

; ----------------------------------------------------------------------
; DATOS dibujo_BB60: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb60..0xbb64  (4 bytes)
DATA_dibujo_BB60:
	defb 08eh,08fh,090h,091h	; bb60

; ----------------------------------------------------------------------
; DATOS dibujo_BB64: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb64..0xbb68  (4 bytes)
DATA_dibujo_BB64:
	defb 092h,093h,090h,091h	; bb64

; ----------------------------------------------------------------------
; DATOS dibujo_BB68: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb68..0xbb6c  (4 bytes)
DATA_dibujo_BB68:
	defb 095h,094h,090h,091h	; bb68

; ----------------------------------------------------------------------
; DATOS dibujo_BB6C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb6c..0xbb70  (4 bytes)
DATA_dibujo_BB6C:
	defb 0c0h,0c1h,0c2h,0c3h	; bb6c

; ----------------------------------------------------------------------
; DATOS dibujo_BB70: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb70..0xbb74  (4 bytes)
DATA_dibujo_BB70:
	defb 0c4h,0c5h,0c2h,0c3h	; bb70

; ----------------------------------------------------------------------
; DATOS dibujo_BB74: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb74..0xbb78  (4 bytes)
DATA_dibujo_BB74:
	defb 0c7h,0c6h,0c2h,0c3h	; bb74

; ----------------------------------------------------------------------
; DATOS dibujo_BB78: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb78..0xbb7c  (4 bytes)
DATA_dibujo_BB78:
	defb 098h,099h,096h,097h	; bb78

; ----------------------------------------------------------------------
; DATOS dibujo_BB7C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb7c..0xbb7e  (2 bytes)
DATA_dibujo_BB7C:
	defb 098h,099h	; bb7c

; ----------------------------------------------------------------------
; DATOS dibujo_BB7E: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb7e..0xbb80  (2 bytes)
DATA_dibujo_BB7E:
	defb 09ah,09bh	; bb7e

; ----------------------------------------------------------------------
; DATOS dibujo_BB80: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb80..0xbb84  (4 bytes)
DATA_dibujo_BB80:
	defb 098h,099h,09dh,09ch	; bb80

; ----------------------------------------------------------------------
; DATOS dibujo_BB84: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb84..0xbb88  (4 bytes)
DATA_dibujo_BB84:
	defb 0cah,0cbh,0c8h,0c9h	; bb84

; ----------------------------------------------------------------------
; DATOS dibujo_BB88: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb88..0xbb8a  (2 bytes)
DATA_dibujo_BB88:
	defb 0cah,0cbh	; bb88

; ----------------------------------------------------------------------
; DATOS dibujo_BB8A: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (2 bytes)
;   0xbb8a..0xbb8c  (2 bytes)
DATA_dibujo_BB8A:
	defb 0cch,0cdh	; bb8a

; ----------------------------------------------------------------------
; DATOS dibujo_BB8C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb8c..0xbb90  (4 bytes)
DATA_dibujo_BB8C:
	defb 0cah,0cbh,0cfh,0ceh	; bb8c

; ----------------------------------------------------------------------
; DATOS dibujo_BB90: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb90..0xbb94  (4 bytes)
DATA_dibujo_BB90:
	defb 0c0h,0c6h,0c1h,0c7h	; bb90

; ----------------------------------------------------------------------
; DATOS dibujo_BB94: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb94..0xbb98  (4 bytes)
DATA_dibujo_BB94:
	defb 0c9h,0cbh,0c8h,0cah	; bb94

; ----------------------------------------------------------------------
; DATOS dibujo_BB98: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbb98..0xbb9c  (4 bytes)
DATA_dibujo_BB98:
	defb 0c2h,0c3h,0c4h,0c5h	; bb98

; ----------------------------------------------------------------------
; DATOS dibujo_BB9C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (16 bytes)
;   0xbb9c..0xbbac  (16 bytes)
DATA_dibujo_BB9C:
	defb 0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch	; bb9c  ................

; ----------------------------------------------------------------------
; DATOS dibujo_BBAC: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (16 bytes)
;   0xbbac..0xbbbc  (16 bytes)
DATA_dibujo_BBAC:
	defb 0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh	; bbac  ................

; ----------------------------------------------------------------------
; DATOS dibujo_BBBC: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xbbbc..0xbbc4  (8 bytes)
DATA_dibujo_BBBC:
	defb 0d0h,0b2h,0b0h,000h,000h,000h,000h,000h	; bbbc  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BBC4: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xbbc4..0xbbcc  (8 bytes)
DATA_dibujo_BBC4:
	defb 000h,0b4h,0b0h,000h,0d1h,0d2h,000h,000h	; bbc4  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BBCC: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbbcc..0xbbd0  (4 bytes)
DATA_dibujo_BBCC:
	defb 000h,0bah,0bbh,000h	; bbcc

; ----------------------------------------------------------------------
; DATOS dibujo_BBD0: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbbd0..0xbbd4  (4 bytes)
DATA_dibujo_BBD0:
	defb 000h,0b8h,0b9h,000h	; bbd0

; ----------------------------------------------------------------------
; DATOS dibujo_BBD4: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xbbd4..0xbbdc  (8 bytes)
DATA_dibujo_BBD4:
	defb 000h,0b1h,0b5h,000h,000h,000h,0d5h,0d4h	; bbd4  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BBDC: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xbbdc..0xbbe4  (8 bytes)
DATA_dibujo_BBDC:
	defb 000h,0b1h,0b3h,0d3h,000h,000h,000h,000h	; bbdc  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BBE4: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xbbe4..0xbbec  (8 bytes)
DATA_dibujo_BBE4:
	defb 000h,000h,000h,000h,0e0h,0c2h,0c0h,000h	; bbe4  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BBEC: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xbbec..0xbbf4  (8 bytes)
DATA_dibujo_BBEC:
	defb 0e1h,0e2h,000h,000h,000h,0c4h,0c0h,000h	; bbec  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BBF4: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xbbf4..0xbbfc  (8 bytes)
DATA_dibujo_BBF4:
	defb 000h,0c8h,0c9h,000h,000h,0cah,0cbh,000h	; bbf4  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BBFC: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xbbfc..0xbc04  (8 bytes)
DATA_dibujo_BBFC:
	defb 000h,000h,0e5h,0e4h,000h,0c1h,0c5h,000h	; bbfc  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BC04: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (8 bytes)
;   0xbc04..0xbc0c  (8 bytes)
DATA_dibujo_BC04:
	defb 000h,000h,000h,000h,000h,0c1h,0c3h,0e3h	; bc04  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BC0C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc0c..0xbc10  (4 bytes)
DATA_dibujo_BC0C:
	defb 0a0h,0a1h,0a2h,0a3h	; bc0c

; ----------------------------------------------------------------------
; DATOS dibujo_BC10: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc10..0xbc14  (4 bytes)
DATA_dibujo_BC10:
	defb 0a0h,0a1h,0a4h,0a5h	; bc10

; ----------------------------------------------------------------------
; DATOS dibujo_BC14: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc14..0xbc18  (4 bytes)
DATA_dibujo_BC14:
	defb 0a0h,0a1h,0a6h,0a7h	; bc14

; ----------------------------------------------------------------------
; DATOS dibujo_BC18: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc18..0xbc1c  (4 bytes)
DATA_dibujo_BC18:
	defb 0a8h,0a9h,0aah,0abh	; bc18

; ----------------------------------------------------------------------
; DATOS dibujo_BC1C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc1c..0xbc20  (4 bytes)
DATA_dibujo_BC1C:
	defb 0a8h,0a9h,0ach,0adh	; bc1c

; ----------------------------------------------------------------------
; DATOS dibujo_BC20: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc20..0xbc24  (4 bytes)
DATA_dibujo_BC20:
	defb 0a8h,0a9h,0aeh,0afh	; bc20

; ----------------------------------------------------------------------
; DATOS dibujo_BC24: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc24..0xbc28  (4 bytes)
DATA_dibujo_BC24:
	defb 092h,093h,090h,091h	; bc24

; ----------------------------------------------------------------------
; DATOS dibujo_BC28: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc28..0xbc2c  (4 bytes)
DATA_dibujo_BC28:
	defb 094h,095h,090h,091h	; bc28

; ----------------------------------------------------------------------
; DATOS dibujo_BC2C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc2c..0xbc30  (4 bytes)
DATA_dibujo_BC2C:
	defb 096h,097h,090h,091h	; bc2c

; ----------------------------------------------------------------------
; DATOS dibujo_BC30: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc30..0xbc34  (4 bytes)
DATA_dibujo_BC30:
	defb 09ah,09bh,098h,099h	; bc30

; ----------------------------------------------------------------------
; DATOS dibujo_BC34: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc34..0xbc38  (4 bytes)
DATA_dibujo_BC34:
	defb 09ch,09dh,098h,099h	; bc34

; ----------------------------------------------------------------------
; DATOS dibujo_BC38: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc38..0xbc3c  (4 bytes)
DATA_dibujo_BC38:
	defb 09eh,09fh,098h,099h	; bc38

; ----------------------------------------------------------------------
; DATOS dibujo_BC3C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc3c..0xbc40  (4 bytes)
DATA_dibujo_BC3C:
	defb 0f0h,0f1h,0f2h,0f3h	; bc3c

; ----------------------------------------------------------------------
; DATOS dibujo_BC40: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc40..0xbc44  (4 bytes)
DATA_dibujo_BC40:
	defb 0f0h,0f1h,0f4h,0f5h	; bc40

; ----------------------------------------------------------------------
; DATOS dibujo_BC44: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc44..0xbc48  (4 bytes)
DATA_dibujo_BC44:
	defb 0f0h,0f1h,0f6h,0f7h	; bc44

; ----------------------------------------------------------------------
; DATOS dibujo_BC48: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc48..0xbc4c  (4 bytes)
DATA_dibujo_BC48:
	defb 0f8h,0f9h,0fah,0fbh	; bc48

; ----------------------------------------------------------------------
; DATOS dibujo_BC4C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc4c..0xbc50  (4 bytes)
DATA_dibujo_BC4C:
	defb 0f8h,0f9h,0fch,0fdh	; bc4c

; ----------------------------------------------------------------------
; DATOS dibujo_BC50: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc50..0xbc54  (4 bytes)
DATA_dibujo_BC50:
	defb 0f8h,0f9h,0feh,0ffh	; bc50

; ----------------------------------------------------------------------
; DATOS dibujo_BC54: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc54..0xbc58  (4 bytes)
DATA_dibujo_BC54:
	defb 0e2h,0e3h,0e0h,0e1h	; bc54

; ----------------------------------------------------------------------
; DATOS dibujo_BC58: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc58..0xbc5c  (4 bytes)
DATA_dibujo_BC58:
	defb 0e4h,0e5h,0e0h,0e1h	; bc58

; ----------------------------------------------------------------------
; DATOS dibujo_BC5C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc5c..0xbc60  (4 bytes)
DATA_dibujo_BC5C:
	defb 0e6h,0e7h,0e0h,0e1h	; bc5c

; ----------------------------------------------------------------------
; DATOS dibujo_BC60: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc60..0xbc64  (4 bytes)
DATA_dibujo_BC60:
	defb 0eah,0ebh,0e8h,0e9h	; bc60

; ----------------------------------------------------------------------
; DATOS dibujo_BC64: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc64..0xbc68  (4 bytes)
DATA_dibujo_BC64:
	defb 0ech,0edh,0e8h,0e9h	; bc64

; ----------------------------------------------------------------------
; DATOS dibujo_BC68: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc68..0xbc6c  (4 bytes)
DATA_dibujo_BC68:
	defb 0eeh,0efh,0e8h,0e9h	; bc68

; ----------------------------------------------------------------------
; DATOS dibujo_BC6C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc6c..0xbc70  (4 bytes)
DATA_dibujo_BC6C:
	defb 0e4h,0e5h,0e6h,0e7h	; bc6c

; ----------------------------------------------------------------------
; DATOS dibujo_BC70: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc70..0xbc74  (4 bytes)
DATA_dibujo_BC70:
	defb 0e8h,0e9h,0eah,0ebh	; bc70

; ----------------------------------------------------------------------
; DATOS dibujo_BC74: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc74..0xbc78  (4 bytes)
DATA_dibujo_BC74:
	defb 065h,066h,067h,068h	; bc74

; ----------------------------------------------------------------------
; DATOS dibujo_BC78: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc78..0xbc7c  (4 bytes)
DATA_dibujo_BC78:
	defb 069h,06ah,06bh,06ch	; bc78

; ----------------------------------------------------------------------
; DATOS dibujo_BC7C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc7c..0xbc80  (4 bytes)
DATA_dibujo_BC7C:
	defb 0b0h,0b1h,0b2h,0b3h	; bc7c

; ----------------------------------------------------------------------
; DATOS dibujo_BC80: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc80..0xbc84  (4 bytes)
DATA_dibujo_BC80:
	defb 0b0h,0b1h,0b4h,0b5h	; bc80

; ----------------------------------------------------------------------
; DATOS dibujo_BC84: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc84..0xbc88  (4 bytes)
DATA_dibujo_BC84:
	defb 0b0h,0b1h,0b6h,0b7h	; bc84

; ----------------------------------------------------------------------
; DATOS dibujo_BC88: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc88..0xbc8c  (4 bytes)
DATA_dibujo_BC88:
	defb 0b8h,0b9h,0bah,0bbh	; bc88

; ----------------------------------------------------------------------
; DATOS dibujo_BC8C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc8c..0xbc90  (4 bytes)
DATA_dibujo_BC8C:
	defb 0b8h,0b9h,0bch,0bdh	; bc8c

; ----------------------------------------------------------------------
; DATOS dibujo_BC90: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc90..0xbc94  (4 bytes)
DATA_dibujo_BC90:
	defb 0b8h,0b9h,0beh,0bfh	; bc90

; ----------------------------------------------------------------------
; DATOS dibujo_BC94: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc94..0xbc98  (4 bytes)
DATA_dibujo_BC94:
	defb 06fh,070h,06dh,06eh	; bc94

; ----------------------------------------------------------------------
; DATOS dibujo_BC98: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc98..0xbc9c  (4 bytes)
DATA_dibujo_BC98:
	defb 071h,072h,06dh,06eh	; bc98

; ----------------------------------------------------------------------
; DATOS dibujo_BC9C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbc9c..0xbca0  (4 bytes)
DATA_dibujo_BC9C:
	defb 073h,074h,06dh,06eh	; bc9c

; ----------------------------------------------------------------------
; DATOS dibujo_BCA0: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbca0..0xbca4  (4 bytes)
DATA_dibujo_BCA0:
	defb 077h,078h,075h,076h	; bca0

; ----------------------------------------------------------------------
; DATOS dibujo_BCA4: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbca4..0xbca8  (4 bytes)
DATA_dibujo_BCA4:
	defb 079h,07ah,075h,076h	; bca4

; ----------------------------------------------------------------------
; DATOS dibujo_BCA8: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbca8..0xbcac  (4 bytes)
DATA_dibujo_BCA8:
	defb 07bh,07ch,075h,076h	; bca8

; ----------------------------------------------------------------------
; DATOS dibujo_BCAC: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (24 bytes)
;   0xbcac..0xbcc4  (24 bytes)
DATA_dibujo_BCAC:
	defb 0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch	; bcac  ................
	defb 0cch,0cch,0cch,0cch,0cch,0cch,0cch,0cch	; bcbc  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BCC4: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (24 bytes)
;   0xbcc4..0xbcdc  (24 bytes)
DATA_dibujo_BCC4:
	defb 0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh	; bcc4  ................
	defb 0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh,0cdh	; bcd4  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BCDC: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (24 bytes)
;   0xbcdc..0xbcf4  (24 bytes)
DATA_dibujo_BCDC:
	defb 0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh	; bcdc  ................
	defb 0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh,0ceh	; bcec  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BCF4: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (24 bytes)
;   0xbcf4..0xbd0c  (24 bytes)
DATA_dibujo_BCF4:
	defb 0cfh,0cfh,0cfh,0cfh,0cfh,0cfh,0cfh,0cfh,008h,008h,008h,008h,008h,008h,008h,008h	; bcf4  ................
	defb 008h,008h,008h,008h,008h,008h,008h,008h	; bd04  ........

; ----------------------------------------------------------------------
; DATOS dibujo_BD0C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd0c..0xbd10  (4 bytes)
DATA_dibujo_BD0C:
	defb 08ch,08dh,08eh,08fh	; bd0c

; ----------------------------------------------------------------------
; DATOS dibujo_BD10: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd10..0xbd14  (4 bytes)
DATA_dibujo_BD10:
	defb 099h,098h,09bh,09ah	; bd10

; ----------------------------------------------------------------------
; DATOS dibujo_BD14: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd14..0xbd18  (4 bytes)
DATA_dibujo_BD14:
	defb 08eh,08fh,08ch,08dh	; bd14

; ----------------------------------------------------------------------
; DATOS dibujo_BD18: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd18..0xbd1c  (4 bytes)
DATA_dibujo_BD18:
	defb 09bh,09ah,099h,098h	; bd18

; ----------------------------------------------------------------------
; DATOS dibujo_BD1C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd1c..0xbd20  (4 bytes)
DATA_dibujo_BD1C:
	defb 0f2h,0f3h,0f0h,0f1h	; bd1c

; ----------------------------------------------------------------------
; DATOS dibujo_BD20: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd20..0xbd24  (4 bytes)
DATA_dibujo_BD20:
	defb 0f4h,0f5h,0f0h,0f1h	; bd20

; ----------------------------------------------------------------------
; DATOS dibujo_BD24: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd24..0xbd28  (4 bytes)
DATA_dibujo_BD24:
	defb 0f6h,0f7h,0f0h,0f1h	; bd24

; ----------------------------------------------------------------------
; DATOS dibujo_BD28: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd28..0xbd2c  (4 bytes)
DATA_dibujo_BD28:
	defb 0f8h,0f9h,0fah,0fbh	; bd28

; ----------------------------------------------------------------------
; DATOS dibujo_BD2C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd2c..0xbd30  (4 bytes)
DATA_dibujo_BD2C:
	defb 0f8h,0f9h,0fch,0fdh	; bd2c

; ----------------------------------------------------------------------
; DATOS dibujo_BD30: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd30..0xbd34  (4 bytes)
DATA_dibujo_BD30:
	defb 0f8h,0f9h,0feh,0ffh	; bd30

; ----------------------------------------------------------------------
; DATOS dibujo_BD34: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd34..0xbd38  (4 bytes)
DATA_dibujo_BD34:
	defb 0e2h,0e3h,0e0h,0e1h	; bd34

; ----------------------------------------------------------------------
; DATOS dibujo_BD38: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd38..0xbd3c  (4 bytes)
DATA_dibujo_BD38:
	defb 0e4h,0e5h,0e0h,0e1h	; bd38

; ----------------------------------------------------------------------
; DATOS dibujo_BD3C: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd3c..0xbd40  (4 bytes)
DATA_dibujo_BD3C:
	defb 0e6h,0e7h,0e0h,0e1h	; bd3c

; ----------------------------------------------------------------------
; DATOS dibujo_BD40: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd40..0xbd44  (4 bytes)
DATA_dibujo_BD40:
	defb 0e8h,0e9h,0eah,0ebh	; bd40

; ----------------------------------------------------------------------
; DATOS dibujo_BD44: un dibujo de los enemigos de caracteres (p01:79F9: 0xBD4C
;   + 2 x IX+32): caracteres en filas, hasta el dibujo siguiente (el tamano lo
;   da la ficha); lo leen p01:7A2A (4 bytes)
;   0xbd44..0xbd48  (4 bytes)
DATA_dibujo_BD44:
	defb 0e8h,0e9h,0ech,0edh	; bd44

; ----------------------------------------------------------------------
; DATOS leido_BD48: 4 bytes que lee p01:7A2A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:7A2A (4 bytes)
;   0xbd48..0xbd4c  (4 bytes)
DATA_leido_BD48:
	defb 0e8h,0e9h,0eeh,0efh	; bd48

; ----------------------------------------------------------------------
; DATOS tabla_BD4C: un puntero por dibujo de los enemigos de caracteres
;   (p01:79F9: 0xBD4C + 2 x IX+32) (144); lo leen p00:4A6A (288 bytes)
;   0xbd4c..0xbe6c  (288 bytes)
DATA_tabla_BD4C:
	defw 0ba6ah,0ba6eh,0ba72h,0ba76h,0ba7ah,0ba7eh,0ba82h,0ba86h	; bd4c
	defw 0ba8ah,0ba8eh,0ba92h,0ba96h,0ba9eh,0baa6h,0baa6h,0baa6h	; bd5c
	defw 0bac6h,0bae6h,0bae6h,0baeah,0baeeh,0bb0eh,0bb0eh,0bb0eh	; bd6c
	defw 0bb0eh,0bb10h,0bb12h,0bb14h,0bb16h,0bb18h,0bb1ah,0bb1eh	; bd7c
	defw 0bb22h,0bb23h,0bb27h,0bbd0h,0bb30h,0bb34h,0bb38h,0bb3ch	; bd8c
	defw 0bb40h,0bb44h,0bb48h,0bb4ch,0bb50h,0bb54h,0bb58h,0bb5ch	; bd9c
	defw 0bb60h,0bb64h,0bb68h,0bb6ch,0bb70h,0bb74h,0bb78h,0bb7ch	; bdac
	defw 0bb80h,0bb84h,0bb88h,0bb8ch,0bb7eh,0bb8ah,0bb90h,0bb90h	; bdbc
	defw 0bb90h,0bb90h,0bb90h,0bb94h,0bb98h,0bb98h,0bb9ch,0bbach	; bdcc
	defw 0bbbch,0bbc4h,0bbcch,0bbd4h,0bbdch,0bbe4h,0bbech,0bbf4h	; bddc
	defw 0bbfch,0bc04h,0bc0ch,0bc10h,0bc14h,0bc18h,0bc1ch,0bc20h	; bdec
	defw 0bc24h,0bc28h,0bc2ch,0bc30h,0bc34h,0bc38h,0bc3ch,0bc40h	; bdfc
	defw 0bc44h,0bc48h,0bc4ch,0bc50h,0bc54h,0bc58h,0bc5ch,0bc60h	; be0c
	defw 0bc64h,0bc68h,0bc6ch,0bc70h,0bc74h,0bc78h,0bc7ch,0bc80h	; be1c
	defw 0bc84h,0bc88h,0bc8ch,0bc90h,0bc94h,0bc98h,0bc9ch,0bca0h	; be2c
	defw 0bca4h,0bca8h,0bcach,0bcc4h,0bcdch,0bcf4h,0bd0ch,0ba76h	; be3c
	defw 0bd10h,0bd14h,0ba82h,0bd18h,0bd1ch,0bd20h,0bd24h,0bd28h	; be4c
	defw 0bd2ch,0bd30h,0bd34h,0bd38h,0bd3ch,0bd40h,0bd44h,0bd48h	; be5c

; ----------------------------------------------------------------------
; DATOS relleno_ff: 404 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (404 bytes)
;   0xbe6c..0xc000  (404 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be6c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be7c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be8c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be9c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beac  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bebc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; becc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bedc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beec  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; befc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf0c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf1c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf2c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf3c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf4c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf5c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf6c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf7c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfac  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfbc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfcc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfdc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfec  ................
	defb 0ffh,0ffh,0ffh,0ffh	; bffc

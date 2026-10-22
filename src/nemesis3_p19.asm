; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 19 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; Direcciones que solo aparecen como VALOR -en un `ld`, no en
; un salto-: son punteros que el codigo se pasa o numeros que
; casualmente coinciden con una direccion. No hay nada que
; trazar en ellas; el equ existe para que el listado ensamble.
; ----------------------------------------------------------------------
la90fh:	equ 0x0a90f
lb556h:	equ 0x0b556

; ----------------------------------------------------------------------
; DATOS leido_A000: 22 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 2 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p00:4A60, p00:4A62 (22 bytes)
;   0xa000..0xa016  (22 bytes)
DATA_leido_A000:
	defb 07ah,0a2h,07ah,0a2h,016h,0a0h,07ah,0a2h,07ah,0a2h,07ah,0a2h,068h,0a0h,0b2h,0a0h	; a000  z.z...z.z.z.h...
	defb 018h,0a1h,072h,0a2h,07ah,0a2h	; a010

; ----------------------------------------------------------------------
; DATOS leido_A016: 614 bytes que leen p01:71CE, p01:71D0, p01:71E3, p01:71E5
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p01:71CE, p01:71D0, p01:71E3, p01:71E5 (614 bytes)
;   0xa016..0xa27c  (614 bytes)
DATA_leido_A016:
	defb 010h,041h,018h,038h,010h,041h,02bh,0a0h,012h,041h,018h,048h,012h,041h,02bh,000h	; a016  .A.8.A+..A.H.A+.
	defb 014h,041h,018h,060h,014h,041h,02bh,0a0h,016h,041h,018h,030h,018h,041h,018h,020h	; a026  .A.`.A+..A.0.A.
	defb 01ah,041h,02bh,0a0h,01ah,041h,018h,040h,01ch,041h,02bh,000h,01ch,041h,018h,020h	; a036  .A+..A.@.A+..A.
	defb 01eh,041h,02bh,000h,01eh,041h,018h,090h,024h,001h,00eh,098h,028h,005h,00eh,010h	; a046  .A+..A..$...(...
	defb 034h,001h,00eh,098h,038h,005h,00eh,010h,044h,001h,00eh,098h,048h,005h,00eh,010h	; a056  4...8...D...H...
	defb 0ffh,0ffh,070h,000h,030h,098h,078h,000h,030h,008h,07ch,000h,030h,098h,08eh,000h	; a066  ..p.0.x.0.|.0...
	defb 030h,008h,098h,000h,030h,098h,0f4h,000h,02eh,008h,0f4h,000h,02eh,098h,006h,001h	; a076  0...0...........
	defb 02eh,008h,02bh,001h,02eh,098h,032h,001h,02eh,008h,032h,001h,02eh,098h,040h,001h	; a086  ..+...2...2...@.
	defb 02eh,098h,044h,001h,02eh,008h,04ch,001h,02eh,098h,04eh,001h,02eh,008h,058h,001h	; a096  ..D...L...N...X.
	defb 02eh,098h,05eh,001h,02eh,098h,065h,001h,02eh,008h,0ffh,0ffh,06dh,040h,005h,060h	; a0a6  ..^...e.....m@.`
	defb 06eh,000h,005h,050h,06fh,000h,005h,070h,070h,000h,005h,060h,071h,040h,005h,048h	; a0b6  n..Po..pp..`q@.H
	defb 07bh,040h,005h,050h,07ch,000h,005h,030h,07ch,000h,005h,040h,07eh,040h,005h,050h	; a0c6  {@.P|..0|..@~@.P
	defb 089h,000h,005h,060h,08ch,040h,005h,070h,08dh,040h,005h,068h,092h,000h,005h,020h	; a0d6  ...`.@.p.@.h...
	defb 094h,040h,005h,020h,094h,040h,005h,030h,094h,000h,005h,020h,09ah,040h,005h,060h	; a0e6  .@. .@.0... .@.`
	defb 0a0h,000h,005h,070h,0a2h,040h,005h,068h,0a6h,040h,005h,058h,0a8h,000h,005h,070h	; a0f6  ...p.@.h.@.X...p
	defb 0aah,000h,005h,048h,0b2h,040h,005h,048h,0b3h,000h,005h,060h,0b3h,040h,005h,070h	; a106  ...H.@.H...`.@.p
	defb 0ffh,0ffh,068h,004h,019h,030h,068h,048h,019h,070h,06bh,04ch,019h,030h,06bh,000h	; a116  ..h..0hH.pkL.0k.
	defb 019h,070h,06eh,004h,019h,030h,06eh,048h,019h,070h,071h,04ch,019h,030h,071h,000h	; a126  .pn..0nH.pqL.0q.
	defb 019h,070h,074h,004h,019h,030h,074h,048h,019h,070h,077h,04ch,019h,030h,077h,000h	; a136  .pt..0tH.pwL.0w.
	defb 019h,070h,07ah,004h,019h,030h,07ah,048h,019h,070h,07dh,04ch,019h,030h,07dh,000h	; a146  .pz..0zH.p}L.0}.
	defb 019h,070h,080h,004h,019h,030h,080h,048h,019h,070h,0a0h,000h,01ah,010h,0a0h,000h	; a156  .p...0.H.p......
	defb 01ah,0a0h,0a2h,000h,01ah,010h,0a2h,000h,01ah,0a0h,0a4h,000h,01ah,010h,0a4h,000h	; a166  ................
	defb 01ah,0a0h,0a6h,000h,01ah,010h,0a6h,000h,01ah,0a0h,0a8h,000h,01ah,010h,0a8h,000h	; a176  ................
	defb 01ah,0a0h,0aah,000h,01ah,010h,0aah,000h,01ah,0a0h,0ach,000h,01ah,010h,0ach,000h	; a186  ................
	defb 01ah,0a0h,0aeh,000h,01ah,010h,0aeh,000h,01ah,0a0h,0b0h,000h,01ah,020h,0b0h,000h	; a196  ............. ..
	defb 01ah,090h,0b2h,000h,01ah,020h,0b2h,000h,01ah,090h,0b4h,000h,01ah,020h,0b4h,000h	; a1a6  ..... ....... ..
	defb 01ah,090h,0b6h,000h,01ah,020h,0b6h,000h,01ah,090h,0b8h,000h,01ah,020h,0b8h,000h	; a1b6  ..... ....... ..
	defb 01ah,090h,0bah,000h,01ah,020h,0bah,000h,01ah,090h,0bch,000h,01ah,020h,0bch,000h	; a1c6  ..... ....... ..
	defb 01ah,090h,0beh,000h,01ah,020h,0beh,000h,01ah,090h,0c0h,000h,01ah,030h,0c0h,000h	; a1d6  ..... .......0..
	defb 01ah,080h,0c2h,000h,01ah,030h,0c2h,000h,01ah,080h,0c4h,000h,01ah,030h,0c4h,000h	; a1e6  .....0.......0..
	defb 01ah,080h,0c6h,000h,01ah,030h,0c6h,000h,01ah,080h,0c8h,000h,01ah,030h,0c8h,000h	; a1f6  .....0.......0..
	defb 01ah,080h,0cah,000h,01ah,030h,0cah,000h,01ah,080h,0cch,000h,01ah,030h,0cch,000h	; a206  .....0.......0..
	defb 01ah,080h,0ceh,000h,01ah,030h,0ceh,000h,01ah,080h,0d0h,000h,01ah,040h,0d0h,000h	; a216  .....0.......@..
	defb 01ah,070h,0d2h,000h,01ah,040h,0d2h,000h,01ah,070h,0d4h,000h,01ah,040h,0d4h,000h	; a226  .p...@...p...@..
	defb 01ah,070h,0d6h,000h,01ah,040h,0d6h,000h,01ah,070h,0d8h,000h,01ah,040h,0d8h,000h	; a236  .p...@...p...@..
	defb 01ah,070h,0dah,000h,01ah,040h,0dah,000h,01ah,070h,0dch,000h,01ah,040h,0dch,000h	; a246  .p...@...p...@..
	defb 01ah,070h,0deh,000h,01ah,040h,0deh,000h,01ah,070h,0e4h,008h,022h,028h,0e4h,00ch	; a256  .p...@...p.."(..
	defb 022h,078h,0eeh,004h,022h,010h,0f0h,000h,022h,090h,0ffh,0ffh,0a0h,001h,026h,080h	; a266  "x.."...".....&.
	defb 0a8h,005h,026h,040h,0ffh,0ffh	; a276

; ----------------------------------------------------------------------
; DATOS leido_A27C: 22 bytes que leen p00:4A6A, p00:4A6C al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 2 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p00:4A6A, p00:4A6C (22 bytes)
;   0xa27c..0xa292  (22 bytes)
DATA_leido_A27C:
	defb 092h,0a2h,0a2h,0a2h,0b2h,0a2h,0c4h,0a2h,0d4h,0a2h,0e4h,0a2h,0f3h,0a2h,003h,0a3h	; a27c  ................
	defb 013h,0a3h,028h,0a3h,042h,0a3h	; a28c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa292..0xa293  (1 bytes)
DATA_A292:
	defb 070h	; a292

; ----------------------------------------------------------------------
; DATOS leido_A293: 178 bytes que lee p01:6FE7 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 57 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p01:6FE7 (178 bytes)
;   0xa293..0xa345  (178 bytes)
DATA_leido_A293:
	defb 070h,070h,070h,000h,000h,070h,070h,070h,000h,077h,000h,000h,000h,000h,000h,000h	; a293  ppp..ppp.w......
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a2a3  ................
	defb 000h,000h,022h,021h,013h,031h,013h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a2b3  .."!.1..........
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a2c3  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a2d3  ................
	defb 000h,000h,000h,000h,060h,060h,000h,000h,060h,000h,000h,060h,000h,000h,000h,000h	; a2e3  ....``..`..`....
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a2f3  ................
	defb 000h,000h,000h,0b0h,0b0h,000h,000h,000h,000h,00ah,0aah,000h,000h,000h,088h,088h	; a303  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,0c0h,00ch,0c0h,00ch,00ch,0cch,0cch	; a313  ................
	defb 0cch,000h,000h,000h,000h,000h,000h,000h,010h,001h,000h,000h,000h,000h,000h,000h	; a323  ................
	defb 000h,000h,000h,000h,010h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a333  ................
	defb 000h,000h	; a343

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa345..0xa34b  (6 bytes)
DATA_A345:
	defb 000h,000h,06ah,0a3h,06ah,0a3h	; a345

; ----------------------------------------------------------------------
; DATOS leido_A34B: 14 bytes que leen p00:4A6A, p00:4A6C al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 2 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p00:4A6A, p00:4A6C (14 bytes)
;   0xa34b..0xa359  (14 bytes)
DATA_leido_A34B:
	defb 059h,0a3h,06ah,0a3h,07ah,0a3h,08ah,0a3h,09ah,0a3h,0aah,0a3h,0bah,0a3h	; a34b  Y.j.z.........

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa359..0xa35a  (1 bytes)
DATA_A359:
	defb 013h	; a359

; ----------------------------------------------------------------------
; DATOS leido_A35A: 110 bytes que lee p01:6FE7 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 31 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p01:6FE7 (110 bytes)
;   0xa35a..0xa3c8  (110 bytes)
DATA_leido_A35A:
	defb 013h,013h,000h,000h,000h,000h,000h,000h,000h,014h,014h,000h,000h,000h,000h,000h	; a35a  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a36a  ................
	defb 014h,015h,014h,015h,000h,000h,000h,014h,014h,000h,000h,014h,000h,000h,000h,000h	; a37a  ................
	defb 015h,015h,015h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a38a  ................
	defb 013h,013h,013h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a39a  ................
	defb 016h,016h,016h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a3aa  ................
	defb 013h,013h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; a3ba  ..............

; ----------------------------------------------------------------------
; DATOS tabla_A3C8: tabla que se lee desde HL = 0xA3C8 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:80F3 (24 bytes)
;   0xa3c8..0xa3e0  (24 bytes)
DATA_tabla_A3C8:
	defb 000h,000h,0f0h,0a3h,0e0h,0a3h,0f2h,0a3h,0f0h,0a3h,004h,0a4h,026h,0a4h,038h,0a4h	; a3c8  ............&.8.
	defb 05ah,0a4h,06ch,0a4h,07eh,0a4h,0f0h,0a3h	; a3d8  Z.l.~...

; ----------------------------------------------------------------------
; DATOS leido_A3E0: 178 bytes que leen p02:8101, p02:8103, p02:8105, p02:8107
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido, con 10 sin leer
;   entre lecturas de la misma rutina: entradas de la misma tabla que las
;   partidas no han pedido); lo leen p02:8101, p02:8103, p02:8105, p02:8107
;   (178 bytes)
;   0xa3e0..0xa492  (178 bytes)
DATA_leido_A3E0:
	defb 091h,000h,010h,002h,091h,000h,012h,002h,09dh,000h,011h,0ach,09dh,000h,013h,0ach	; a3e0  ................
	defb 0ffh,0ffh,085h,001h,020h,030h,099h,001h,021h,090h,0adh,001h,022h,088h,0b3h,001h	; a3f0  .... 0..!..."...
	defb 023h,028h,0ffh,0ffh,0a9h,000h,033h,028h,0b5h,000h,032h,090h,0d4h,000h,030h,030h	; a400  #(....3(..2...00
	defb 0d4h,000h,031h,058h,089h,001h,080h,090h,089h,001h,081h,090h,0beh,001h,082h,090h	; a410  ..1X............
	defb 0beh,001h,083h,090h,0ffh,0ffh,0b1h,000h,040h,098h,0bdh,000h,041h,010h,0d1h,000h	; a420  ........@...A...
	defb 042h,098h,0f5h,000h,043h,010h,0ffh,0ffh,0c3h,000h,090h,090h,0c3h,000h,091h,090h	; a430  B...C...........
	defb 0c3h,000h,092h,090h,0c3h,000h,093h,090h,0f9h,000h,050h,003h,00dh,001h,051h,0abh	; a440  ..........P...Q.
	defb 02dh,001h,052h,003h,039h,001h,053h,0abh,0ffh,0ffh,0c6h,000h,0a0h,002h,0c6h,000h	; a450  -.R.9.S.........
	defb 0a2h,002h,0deh,000h,0a1h,0a0h,0deh,000h,0a3h,0a0h,0ffh,0ffh,075h,001h,0c0h,050h	; a460  ............u..P
	defb 075h,001h,0c1h,050h,075h,001h,0c2h,050h,075h,001h,0c3h,050h,0ffh,0ffh,076h,000h	; a470  u..Pu..Pu..P..v.
	defb 0b0h,050h,07dh,000h,0b1h,050h,009h,001h,0b2h,020h,015h,001h,0b3h,020h,0ffh,0ffh	; a480  .P}..P... ... ..
	defb 081h,001h	; a490

; ----------------------------------------------------------------------
; DATOS leido_A492: 2 bytes que leen p01:76F4, p01:76F9 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p01:76F4, p01:76F9 (2 bytes)
;   0xa492..0xa494  (2 bytes)
DATA_leido_A492:
	defb 010h,010h	; a492

; ----------------------------------------------------------------------
; DATOS leido_A494: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa494..0xa497  (3 bytes)
DATA_leido_A494:
	defb 0a0h,00bh,000h	; a494

; ----------------------------------------------------------------------
; DATOS leido_A497: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa497..0xa498  (1 bytes)
DATA_leido_A497:
	defb 081h	; a497

; ----------------------------------------------------------------------
; DATOS leido_A498: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa498..0xa49b  (3 bytes)
DATA_leido_A498:
	defb 001h,005h,010h	; a498

; ----------------------------------------------------------------------
; DATOS leido_A49B: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa49b..0xa49e  (3 bytes)
DATA_leido_A49B:
	defb 000h,000h,000h	; a49b

; ----------------------------------------------------------------------
; DATOS leido_A49E: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa49e..0xa49f  (1 bytes)
DATA_leido_A49E:
	defb 081h	; a49e

; ----------------------------------------------------------------------
; DATOS leido_A49F: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa49f..0xa4a2  (3 bytes)
DATA_leido_A49F:
	defb 001h,010h,010h	; a49f

; ----------------------------------------------------------------------
; DATOS leido_A4A2: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4a2..0xa4a5  (3 bytes)
DATA_leido_A4A2:
	defb 0d4h,00dh,000h	; a4a2

; ----------------------------------------------------------------------
; DATOS leido_A4A5: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4a5..0xa4a6  (1 bytes)
DATA_leido_A4A5:
	defb 081h	; a4a5

; ----------------------------------------------------------------------
; DATOS leido_A4A6: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4a6..0xa4a9  (3 bytes)
DATA_leido_A4A6:
	defb 001h,010h,010h	; a4a6

; ----------------------------------------------------------------------
; DATOS leido_A4A9: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4a9..0xa4ac  (3 bytes)
DATA_leido_A4A9:
	defb 000h,00fh,000h	; a4a9

; ----------------------------------------------------------------------
; DATOS leido_A4AC: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4ac..0xa4ad  (1 bytes)
DATA_leido_A4AC:
	defb 081h	; a4ac

; ----------------------------------------------------------------------
; DATOS leido_A4AD: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4ad..0xa4b0  (3 bytes)
DATA_leido_A4AD:
	defb 001h,010h,010h	; a4ad

; ----------------------------------------------------------------------
; DATOS leido_A4B0: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4b0..0xa4b3  (3 bytes)
DATA_leido_A4B0:
	defb 0a0h,003h,000h	; a4b0

; ----------------------------------------------------------------------
; DATOS leido_A4B3: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4b3..0xa4b4  (1 bytes)
DATA_leido_A4B3:
	defb 082h	; a4b3

; ----------------------------------------------------------------------
; DATOS leido_A4B4: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4b4..0xa4b7  (3 bytes)
DATA_leido_A4B4:
	defb 001h,010h,010h	; a4b4

; ----------------------------------------------------------------------
; DATOS leido_A4B7: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4b7..0xa4ba  (3 bytes)
DATA_leido_A4B7:
	defb 0c4h,008h,000h	; a4b7

; ----------------------------------------------------------------------
; DATOS leido_A4BA: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4ba..0xa4bb  (1 bytes)
DATA_leido_A4BA:
	defb 081h	; a4ba

; ----------------------------------------------------------------------
; DATOS leido_A4BB: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4bb..0xa4be  (3 bytes)
DATA_leido_A4BB:
	defb 001h,00ch,00ch	; a4bb

; ----------------------------------------------------------------------
; DATOS leido_A4BE: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4be..0xa4c1  (3 bytes)
DATA_leido_A4BE:
	defb 0ach,006h,000h	; a4be

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa4c1..0xa4c8  (7 bytes)
DATA_A4C1:
	defb 081h,001h,010h,00ch,000h,00fh,000h	; a4c1

; ----------------------------------------------------------------------
; DATOS leido_A4C8: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4c8..0xa4c9  (1 bytes)
DATA_leido_A4C8:
	defb 081h	; a4c8

; ----------------------------------------------------------------------
; DATOS leido_A4C9: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4c9..0xa4cc  (3 bytes)
DATA_leido_A4C9:
	defb 001h,006h,006h	; a4c9

; ----------------------------------------------------------------------
; DATOS leido_A4CC: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4cc..0xa4cf  (3 bytes)
DATA_leido_A4CC:
	defb 0c0h,008h,000h	; a4cc

; ----------------------------------------------------------------------
; DATOS leido_A4CF: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4cf..0xa4d0  (1 bytes)
DATA_leido_A4CF:
	defb 081h	; a4cf

; ----------------------------------------------------------------------
; DATOS leido_A4D0: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4d0..0xa4d3  (3 bytes)
DATA_leido_A4D0:
	defb 001h,010h,010h	; a4d0

; ----------------------------------------------------------------------
; DATOS leido_A4D3: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4d3..0xa4d6  (3 bytes)
DATA_leido_A4D3:
	defb 064h,00bh,000h	; a4d3

; ----------------------------------------------------------------------
; DATOS leido_A4D6: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4d6..0xa4d7  (1 bytes)
DATA_leido_A4D6:
	defb 081h	; a4d6

; ----------------------------------------------------------------------
; DATOS leido_A4D7: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4d7..0xa4da  (3 bytes)
DATA_leido_A4D7:
	defb 001h,00ah,00ah	; a4d7

; ----------------------------------------------------------------------
; DATOS leido_A4DA: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4da..0xa4dd  (3 bytes)
DATA_leido_A4DA:
	defb 0a0h,005h,000h	; a4da

; ----------------------------------------------------------------------
; DATOS leido_A4DD: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4dd..0xa4de  (1 bytes)
DATA_leido_A4DD:
	defb 081h	; a4dd

; ----------------------------------------------------------------------
; DATOS leido_A4DE: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4de..0xa4e1  (3 bytes)
DATA_leido_A4DE:
	defb 001h,010h,010h	; a4de

; ----------------------------------------------------------------------
; DATOS leido_A4E1: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4e1..0xa4e4  (3 bytes)
DATA_leido_A4E1:
	defb 0f0h,00fh,000h	; a4e1

; ----------------------------------------------------------------------
; DATOS leido_A4E4: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4e4..0xa4e5  (1 bytes)
DATA_leido_A4E4:
	defb 0c0h	; a4e4

; ----------------------------------------------------------------------
; DATOS leido_A4E5: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4e5..0xa4e8  (3 bytes)
DATA_leido_A4E5:
	defb 001h,010h,010h	; a4e5

; ----------------------------------------------------------------------
; DATOS leido_A4E8: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4e8..0xa4eb  (3 bytes)
DATA_leido_A4E8:
	defb 000h,000h,000h	; a4e8

; ----------------------------------------------------------------------
; DATOS leido_A4EB: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4eb..0xa4ec  (1 bytes)
DATA_leido_A4EB:
	defb 0c0h	; a4eb

; ----------------------------------------------------------------------
; DATOS leido_A4EC: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4ec..0xa4ef  (3 bytes)
DATA_leido_A4EC:
	defb 001h,008h,020h	; a4ec

; ----------------------------------------------------------------------
; DATOS leido_A4EF: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4ef..0xa4f2  (3 bytes)
DATA_leido_A4EF:
	defb 000h,000h,04fh	; a4ef

; ----------------------------------------------------------------------
; DATOS leido_A4F2: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4f2..0xa4f3  (1 bytes)
DATA_leido_A4F2:
	defb 081h	; a4f2

; ----------------------------------------------------------------------
; DATOS leido_A4F3: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4f3..0xa4f6  (3 bytes)
DATA_leido_A4F3:
	defb 001h,010h,010h	; a4f3

; ----------------------------------------------------------------------
; DATOS leido_A4F6: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4f6..0xa4f9  (3 bytes)
DATA_leido_A4F6:
	defb 0a0h,003h,000h	; a4f6

; ----------------------------------------------------------------------
; DATOS leido_A4F9: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa4f9..0xa4fa  (1 bytes)
DATA_leido_A4F9:
	defb 081h	; a4f9

; ----------------------------------------------------------------------
; DATOS leido_A4FA: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa4fa..0xa4fd  (3 bytes)
DATA_leido_A4FA:
	defb 001h,010h,010h	; a4fa

; ----------------------------------------------------------------------
; DATOS leido_A4FD: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa4fd..0xa500  (3 bytes)
DATA_leido_A4FD:
	defb 0ach,00ah,000h	; a4fd

; ----------------------------------------------------------------------
; DATOS leido_A500: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa500..0xa501  (1 bytes)
DATA_leido_A500:
	defb 081h	; a500

; ----------------------------------------------------------------------
; DATOS leido_A501: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa501..0xa504  (3 bytes)
DATA_leido_A501:
	defb 001h,010h,010h	; a501

; ----------------------------------------------------------------------
; DATOS leido_A504: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa504..0xa507  (3 bytes)
DATA_leido_A504:
	defb 0a0h,005h,000h	; a504

; ----------------------------------------------------------------------
; DATOS leido_A507: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa507..0xa508  (1 bytes)
DATA_leido_A507:
	defb 0c0h	; a507

; ----------------------------------------------------------------------
; DATOS leido_A508: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa508..0xa50b  (3 bytes)
DATA_leido_A508:
	defb 07fh,008h,008h	; a508

; ----------------------------------------------------------------------
; DATOS leido_A50B: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa50b..0xa50e  (3 bytes)
DATA_leido_A50B:
	defb 000h,000h,020h	; a50b

; ----------------------------------------------------------------------
; DATOS leido_A50E: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa50e..0xa50f  (1 bytes)
DATA_leido_A50E:
	defb 0c7h	; a50e

; ----------------------------------------------------------------------
; DATOS leido_A50F: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa50f..0xa512  (3 bytes)
DATA_leido_A50F:
	defb 001h,010h,010h	; a50f

; ----------------------------------------------------------------------
; DATOS leido_A512: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa512..0xa515  (3 bytes)
DATA_leido_A512:
	defb 000h,00fh,000h	; a512

; ----------------------------------------------------------------------
; DATOS leido_A515: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa515..0xa516  (1 bytes)
DATA_leido_A515:
	defb 081h	; a515

; ----------------------------------------------------------------------
; DATOS leido_A516: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa516..0xa519  (3 bytes)
DATA_leido_A516:
	defb 001h,010h,010h	; a516

; ----------------------------------------------------------------------
; DATOS leido_A519: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa519..0xa51c  (3 bytes)
DATA_leido_A519:
	defb 0d8h,00dh,000h	; a519

; ----------------------------------------------------------------------
; DATOS leido_A51C: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa51c..0xa51d  (1 bytes)
DATA_leido_A51C:
	defb 081h	; a51c

; ----------------------------------------------------------------------
; DATOS leido_A51D: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa51d..0xa520  (3 bytes)
DATA_leido_A51D:
	defb 001h,010h,010h	; a51d

; ----------------------------------------------------------------------
; DATOS leido_A520: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa520..0xa523  (3 bytes)
DATA_leido_A520:
	defb 0a0h,005h,000h	; a520

; ----------------------------------------------------------------------
; DATOS leido_A523: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa523..0xa524  (1 bytes)
DATA_leido_A523:
	defb 081h	; a523

; ----------------------------------------------------------------------
; DATOS leido_A524: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa524..0xa527  (3 bytes)
DATA_leido_A524:
	defb 001h,010h,010h	; a524

; ----------------------------------------------------------------------
; DATOS leido_A527: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa527..0xa52a  (3 bytes)
DATA_leido_A527:
	defb 09ch,00fh,000h	; a527

; ----------------------------------------------------------------------
; DATOS leido_A52A: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa52a..0xa52b  (1 bytes)
DATA_leido_A52A:
	defb 081h	; a52a

; ----------------------------------------------------------------------
; DATOS leido_A52B: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa52b..0xa52e  (3 bytes)
DATA_leido_A52B:
	defb 001h,010h,010h	; a52b

; ----------------------------------------------------------------------
; DATOS leido_A52E: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa52e..0xa531  (3 bytes)
DATA_leido_A52E:
	defb 0bch,008h,000h	; a52e

; ----------------------------------------------------------------------
; DATOS leido_A531: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa531..0xa532  (1 bytes)
DATA_leido_A531:
	defb 081h	; a531

; ----------------------------------------------------------------------
; DATOS leido_A532: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa532..0xa535  (3 bytes)
DATA_leido_A532:
	defb 003h,010h,010h	; a532

; ----------------------------------------------------------------------
; DATOS leido_A535: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa535..0xa538  (3 bytes)
DATA_leido_A535:
	defb 0a0h,00dh,000h	; a535

; ----------------------------------------------------------------------
; DATOS leido_A538: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa538..0xa539  (1 bytes)
DATA_leido_A538:
	defb 0c0h	; a538

; ----------------------------------------------------------------------
; DATOS leido_A539: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa539..0xa53c  (3 bytes)
DATA_leido_A539:
	defb 001h,010h,010h	; a539

; ----------------------------------------------------------------------
; DATOS leido_A53C: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa53c..0xa53f  (3 bytes)
DATA_leido_A53C:
	defb 000h,000h,000h	; a53c

; ----------------------------------------------------------------------
; DATOS leido_A53F: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa53f..0xa540  (1 bytes)
DATA_leido_A53F:
	defb 001h	; a53f

; ----------------------------------------------------------------------
; DATOS leido_A540: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa540..0xa543  (3 bytes)
DATA_leido_A540:
	defb 001h,010h,010h	; a540

; ----------------------------------------------------------------------
; DATOS leido_A543: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa543..0xa546  (3 bytes)
DATA_leido_A543:
	defb 0a8h,00ch,000h	; a543

; ----------------------------------------------------------------------
; DATOS leido_A546: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa546..0xa547  (1 bytes)
DATA_leido_A546:
	defb 0c0h	; a546

; ----------------------------------------------------------------------
; DATOS leido_A547: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa547..0xa54a  (3 bytes)
DATA_leido_A547:
	defb 001h,008h,008h	; a547

; ----------------------------------------------------------------------
; DATOS leido_A54A: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa54a..0xa54d  (3 bytes)
DATA_leido_A54A:
	defb 000h,000h,000h	; a54a

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa54d..0xa554  (7 bytes)
DATA_A54D:
	defb 081h,001h,010h,010h,0e0h,004h,000h	; a54d

; ----------------------------------------------------------------------
; DATOS leido_A554: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa554..0xa555  (1 bytes)
DATA_leido_A554:
	defb 081h	; a554

; ----------------------------------------------------------------------
; DATOS leido_A555: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa555..0xa558  (3 bytes)
DATA_leido_A555:
	defb 001h,010h,010h	; a555

; ----------------------------------------------------------------------
; DATOS leido_A558: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa558..0xa55b  (3 bytes)
DATA_leido_A558:
	defb 064h,008h,000h	; a558

; ----------------------------------------------------------------------
; DATOS leido_A55B: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa55b..0xa55c  (1 bytes)
DATA_leido_A55B:
	defb 081h	; a55b

; ----------------------------------------------------------------------
; DATOS leido_A55C: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa55c..0xa55f  (3 bytes)
DATA_leido_A55C:
	defb 001h,010h,010h	; a55c

; ----------------------------------------------------------------------
; DATOS leido_A55F: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa55f..0xa562  (3 bytes)
DATA_leido_A55F:
	defb 084h,009h,000h	; a55f

; ----------------------------------------------------------------------
; DATOS leido_A562: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa562..0xa563  (1 bytes)
DATA_leido_A562:
	defb 081h	; a562

; ----------------------------------------------------------------------
; DATOS leido_A563: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa563..0xa566  (3 bytes)
DATA_leido_A563:
	defb 001h,010h,010h	; a563

; ----------------------------------------------------------------------
; DATOS leido_A566: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa566..0xa569  (3 bytes)
DATA_leido_A566:
	defb 088h,008h,000h	; a566

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa569..0xa570  (7 bytes)
DATA_A569:
	defb 0c0h,0ffh,010h,010h,000h,000h,008h	; a569

; ----------------------------------------------------------------------
; DATOS leido_A570: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa570..0xa571  (1 bytes)
DATA_leido_A570:
	defb 081h	; a570

; ----------------------------------------------------------------------
; DATOS leido_A571: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa571..0xa574  (3 bytes)
DATA_leido_A571:
	defb 001h,010h,010h	; a571

; ----------------------------------------------------------------------
; DATOS leido_A574: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa574..0xa577  (3 bytes)
DATA_leido_A574:
	defb 0b0h,00fh,000h	; a574

; ----------------------------------------------------------------------
; DATOS leido_A577: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa577..0xa578  (1 bytes)
DATA_leido_A577:
	defb 0c0h	; a577

; ----------------------------------------------------------------------
; DATOS leido_A578: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa578..0xa57b  (3 bytes)
DATA_leido_A578:
	defb 001h,010h,010h	; a578

; ----------------------------------------------------------------------
; DATOS leido_A57B: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa57b..0xa57e  (3 bytes)
DATA_leido_A57B:
	defb 000h,000h,000h	; a57b

; ----------------------------------------------------------------------
; DATOS leido_A57E: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa57e..0xa57f  (1 bytes)
DATA_leido_A57E:
	defb 081h	; a57e

; ----------------------------------------------------------------------
; DATOS leido_A57F: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa57f..0xa582  (3 bytes)
DATA_leido_A57F:
	defb 001h,010h,010h	; a57f

; ----------------------------------------------------------------------
; DATOS leido_A582: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa582..0xa585  (3 bytes)
DATA_leido_A582:
	defb 0a0h,00ch,000h	; a582

; ----------------------------------------------------------------------
; DATOS leido_A585: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa585..0xa586  (1 bytes)
DATA_leido_A585:
	defb 081h	; a585

; ----------------------------------------------------------------------
; DATOS leido_A586: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa586..0xa589  (3 bytes)
DATA_leido_A586:
	defb 001h,00ch,00ch	; a586

; ----------------------------------------------------------------------
; DATOS leido_A589: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa589..0xa58c  (3 bytes)
DATA_leido_A589:
	defb 0ach,00ch,000h	; a589

; ----------------------------------------------------------------------
; DATOS leido_A58C: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa58c..0xa58d  (1 bytes)
DATA_leido_A58C:
	defb 0c0h	; a58c

; ----------------------------------------------------------------------
; DATOS leido_A58D: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa58d..0xa590  (3 bytes)
DATA_leido_A58D:
	defb 001h,008h,008h	; a58d

; ----------------------------------------------------------------------
; DATOS leido_A590: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa590..0xa593  (3 bytes)
DATA_leido_A590:
	defb 000h,000h,014h	; a590

; ----------------------------------------------------------------------
; DATOS leido_A593: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa593..0xa594  (1 bytes)
DATA_leido_A593:
	defb 084h	; a593

; ----------------------------------------------------------------------
; DATOS leido_A594: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa594..0xa597  (3 bytes)
DATA_leido_A594:
	defb 008h,010h,010h	; a594

; ----------------------------------------------------------------------
; DATOS leido_A597: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa597..0xa59a  (3 bytes)
DATA_leido_A597:
	defb 0d0h,005h,000h	; a597

; ----------------------------------------------------------------------
; DATOS leido_A59A: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa59a..0xa59b  (1 bytes)
DATA_leido_A59A:
	defb 081h	; a59a

; ----------------------------------------------------------------------
; DATOS leido_A59B: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa59b..0xa59e  (3 bytes)
DATA_leido_A59B:
	defb 0ffh,010h,010h	; a59b

; ----------------------------------------------------------------------
; DATOS leido_A59E: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa59e..0xa5a1  (3 bytes)
DATA_leido_A59E:
	defb 0b4h,00fh,000h	; a59e

; ----------------------------------------------------------------------
; DATOS leido_A5A1: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5a1..0xa5a2  (1 bytes)
DATA_leido_A5A1:
	defb 0c0h	; a5a1

; ----------------------------------------------------------------------
; DATOS leido_A5A2: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5a2..0xa5a5  (3 bytes)
DATA_leido_A5A2:
	defb 005h,010h,010h	; a5a2

; ----------------------------------------------------------------------
; DATOS leido_A5A5: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5a5..0xa5a8  (3 bytes)
DATA_leido_A5A5:
	defb 000h,000h,000h	; a5a5

; ----------------------------------------------------------------------
; DATOS leido_A5A8: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5a8..0xa5a9  (1 bytes)
DATA_leido_A5A8:
	defb 081h	; a5a8

; ----------------------------------------------------------------------
; DATOS leido_A5A9: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5a9..0xa5ac  (3 bytes)
DATA_leido_A5A9:
	defb 001h,010h,010h	; a5a9

; ----------------------------------------------------------------------
; DATOS leido_A5AC: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5ac..0xa5af  (3 bytes)
DATA_leido_A5AC:
	defb 0c4h,003h,000h	; a5ac

; ----------------------------------------------------------------------
; DATOS leido_A5AF: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5af..0xa5b0  (1 bytes)
DATA_leido_A5AF:
	defb 082h	; a5af

; ----------------------------------------------------------------------
; DATOS leido_A5B0: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5b0..0xa5b3  (3 bytes)
DATA_leido_A5B0:
	defb 001h,010h,010h	; a5b0

; ----------------------------------------------------------------------
; DATOS leido_A5B3: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5b3..0xa5b6  (3 bytes)
DATA_leido_A5B3:
	defb 0e0h,005h,000h	; a5b3

; ----------------------------------------------------------------------
; DATOS leido_A5B6: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5b6..0xa5b7  (1 bytes)
DATA_leido_A5B6:
	defb 081h	; a5b6

; ----------------------------------------------------------------------
; DATOS leido_A5B7: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5b7..0xa5ba  (3 bytes)
DATA_leido_A5B7:
	defb 001h,010h,010h	; a5b7

; ----------------------------------------------------------------------
; DATOS leido_A5BA: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5ba..0xa5bd  (3 bytes)
DATA_leido_A5BA:
	defb 0f0h,00fh,000h	; a5ba

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa5bd..0xa5c4  (7 bytes)
DATA_A5BD:
	defb 081h,001h,010h,010h,064h,00fh,000h	; a5bd

; ----------------------------------------------------------------------
; DATOS leido_A5C4: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5c4..0xa5c5  (1 bytes)
DATA_leido_A5C4:
	defb 081h	; a5c4

; ----------------------------------------------------------------------
; DATOS leido_A5C5: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5c5..0xa5c8  (3 bytes)
DATA_leido_A5C5:
	defb 001h,008h,010h	; a5c5

; ----------------------------------------------------------------------
; DATOS leido_A5C8: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5c8..0xa5cb  (3 bytes)
DATA_leido_A5C8:
	defb 000h,000h,000h	; a5c8

; ----------------------------------------------------------------------
; DATOS leido_A5CB: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5cb..0xa5cc  (1 bytes)
DATA_leido_A5CB:
	defb 081h	; a5cb

; ----------------------------------------------------------------------
; DATOS leido_A5CC: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5cc..0xa5cf  (3 bytes)
DATA_leido_A5CC:
	defb 001h,010h,010h	; a5cc

; ----------------------------------------------------------------------
; DATOS leido_A5CF: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5cf..0xa5d2  (3 bytes)
DATA_leido_A5CF:
	defb 08ch,00bh,000h	; a5cf

; ----------------------------------------------------------------------
; DATOS leido_A5D2: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5d2..0xa5d3  (1 bytes)
DATA_leido_A5D2:
	defb 001h	; a5d2

; ----------------------------------------------------------------------
; DATOS leido_A5D3: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5d3..0xa5d6  (3 bytes)
DATA_leido_A5D3:
	defb 001h,010h,010h	; a5d3

; ----------------------------------------------------------------------
; DATOS leido_A5D6: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5d6..0xa5d9  (3 bytes)
DATA_leido_A5D6:
	defb 08ch,00bh,000h	; a5d6

; ----------------------------------------------------------------------
; DATOS leido_A5D9: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5d9..0xa5da  (1 bytes)
DATA_leido_A5D9:
	defb 081h	; a5d9

; ----------------------------------------------------------------------
; DATOS leido_A5DA: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5da..0xa5dd  (3 bytes)
DATA_leido_A5DA:
	defb 001h,010h,010h	; a5da

; ----------------------------------------------------------------------
; DATOS leido_A5DD: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5dd..0xa5e0  (3 bytes)
DATA_leido_A5DD:
	defb 000h,002h,000h	; a5dd

; ----------------------------------------------------------------------
; DATOS leido_A5E0: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5e0..0xa5e1  (1 bytes)
DATA_leido_A5E0:
	defb 081h	; a5e0

; ----------------------------------------------------------------------
; DATOS leido_A5E1: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5e1..0xa5e4  (3 bytes)
DATA_leido_A5E1:
	defb 001h,010h,010h	; a5e1

; ----------------------------------------------------------------------
; DATOS leido_A5E4: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5e4..0xa5e7  (3 bytes)
DATA_leido_A5E4:
	defb 0e0h,003h,000h	; a5e4

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa5e7..0xa5f5  (14 bytes)
DATA_A5E7:
	defb 081h,001h,010h,010h,0f0h,003h,000h,0c0h,07fh,008h,008h,000h,000h,000h	; a5e7  ..............

; ----------------------------------------------------------------------
; DATOS leido_A5F5: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5f5..0xa5f6  (1 bytes)
DATA_leido_A5F5:
	defb 081h	; a5f5

; ----------------------------------------------------------------------
; DATOS leido_A5F6: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5f6..0xa5f9  (3 bytes)
DATA_leido_A5F6:
	defb 020h,008h,008h	; a5f6

; ----------------------------------------------------------------------
; DATOS leido_A5F9: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa5f9..0xa5fc  (3 bytes)
DATA_leido_A5F9:
	defb 0d0h,009h,000h	; a5f9

; ----------------------------------------------------------------------
; DATOS leido_A5FC: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa5fc..0xa5fd  (1 bytes)
DATA_leido_A5FC:
	defb 000h	; a5fc

; ----------------------------------------------------------------------
; DATOS leido_A5FD: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa5fd..0xa600  (3 bytes)
DATA_leido_A5FD:
	defb 020h,008h,008h	; a5fd

; ----------------------------------------------------------------------
; DATOS leido_A600: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa600..0xa603  (3 bytes)
DATA_leido_A600:
	defb 000h,00fh,000h	; a600

; ----------------------------------------------------------------------
; DATOS leido_A603: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa603..0xa604  (1 bytes)
DATA_leido_A603:
	defb 081h	; a603

; ----------------------------------------------------------------------
; DATOS leido_A604: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa604..0xa607  (3 bytes)
DATA_leido_A604:
	defb 001h,004h,004h	; a604

; ----------------------------------------------------------------------
; DATOS leido_A607: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa607..0xa60a  (3 bytes)
DATA_leido_A607:
	defb 09ch,00bh,000h	; a607

; ----------------------------------------------------------------------
; DATOS leido_A60A: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa60a..0xa60b  (1 bytes)
DATA_leido_A60A:
	defb 081h	; a60a

; ----------------------------------------------------------------------
; DATOS leido_A60B: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa60b..0xa60e  (3 bytes)
DATA_leido_A60B:
	defb 001h,010h,010h	; a60b

; ----------------------------------------------------------------------
; DATOS leido_A60E: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa60e..0xa611  (3 bytes)
DATA_leido_A60E:
	defb 0ech,008h,000h	; a60e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa611..0xa61f  (14 bytes)
DATA_A611:
	defb 0c0h,0ffh,020h,008h,000h,000h,000h,0c0h,0ffh,010h,010h,000h,00fh,000h	; a611  .. ...........

; ----------------------------------------------------------------------
; DATOS leido_A61F: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa61f..0xa620  (1 bytes)
DATA_leido_A61F:
	defb 084h	; a61f

; ----------------------------------------------------------------------
; DATOS leido_A620: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa620..0xa623  (3 bytes)
DATA_leido_A620:
	defb 0ffh,008h,010h	; a620

; ----------------------------------------------------------------------
; DATOS leido_A623: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa623..0xa626  (3 bytes)
DATA_leido_A623:
	defb 0d0h,002h,000h	; a623

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa626..0xa634  (14 bytes)
DATA_A626:
	defb 0c0h,0ffh,010h,010h,000h,00fh,000h,0c0h,0ffh,008h,010h,000h,000h,000h	; a626  ..............

; ----------------------------------------------------------------------
; DATOS leido_A634: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa634..0xa635  (1 bytes)
DATA_leido_A634:
	defb 081h	; a634

; ----------------------------------------------------------------------
; DATOS leido_A635: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa635..0xa638  (3 bytes)
DATA_leido_A635:
	defb 000h,010h,010h	; a635

; ----------------------------------------------------------------------
; DATOS leido_A638: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa638..0xa63b  (3 bytes)
DATA_leido_A638:
	defb 05ch,00fh,000h	; a638

; ----------------------------------------------------------------------
; DATOS leido_A63B: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa63b..0xa63c  (1 bytes)
DATA_leido_A63B:
	defb 0c0h	; a63b

; ----------------------------------------------------------------------
; DATOS leido_A63C: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa63c..0xa63f  (3 bytes)
DATA_leido_A63C:
	defb 001h,010h,010h	; a63c

; ----------------------------------------------------------------------
; DATOS leido_A63F: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa63f..0xa642  (3 bytes)
DATA_leido_A63F:
	defb 000h,000h,01eh	; a63f

; ----------------------------------------------------------------------
; DATOS leido_A642: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa642..0xa643  (1 bytes)
DATA_leido_A642:
	defb 0c0h	; a642

; ----------------------------------------------------------------------
; DATOS leido_A643: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa643..0xa646  (3 bytes)
DATA_leido_A643:
	defb 001h,010h,010h	; a643

; ----------------------------------------------------------------------
; DATOS leido_A646: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa646..0xa649  (3 bytes)
DATA_leido_A646:
	defb 000h,000h,01fh	; a646

; ----------------------------------------------------------------------
; DATOS leido_A649: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa649..0xa64a  (1 bytes)
DATA_leido_A649:
	defb 081h	; a649

; ----------------------------------------------------------------------
; DATOS leido_A64A: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa64a..0xa64d  (3 bytes)
DATA_leido_A64A:
	defb 020h,008h,008h	; a64a

; ----------------------------------------------------------------------
; DATOS leido_A64D: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa64d..0xa650  (3 bytes)
DATA_leido_A64D:
	defb 0dch,009h,000h	; a64d

; ----------------------------------------------------------------------
; DATOS leido_A650: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa650..0xa651  (1 bytes)
DATA_leido_A650:
	defb 081h	; a650

; ----------------------------------------------------------------------
; DATOS leido_A651: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa651..0xa654  (3 bytes)
DATA_leido_A651:
	defb 002h,010h,010h	; a651

; ----------------------------------------------------------------------
; DATOS leido_A654: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa654..0xa657  (3 bytes)
DATA_leido_A654:
	defb 0d0h,00fh,000h	; a654

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa657..0xa665  (14 bytes)
DATA_A657:
	defb 0c0h,0ffh,008h,008h,000h,000h,000h,081h,001h,010h,010h,0c0h,00fh,000h	; a657  ..............

; ----------------------------------------------------------------------
; DATOS leido_A665: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa665..0xa666  (1 bytes)
DATA_leido_A665:
	defb 081h	; a665

; ----------------------------------------------------------------------
; DATOS leido_A666: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa666..0xa669  (3 bytes)
DATA_leido_A666:
	defb 000h,010h,010h	; a666

; ----------------------------------------------------------------------
; DATOS leido_A669: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa669..0xa66c  (3 bytes)
DATA_leido_A669:
	defb 0ech,00fh,000h	; a669

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa66c..0xa673  (7 bytes)
DATA_A66C:
	defb 081h,001h,004h,004h,0c0h,00fh,000h	; a66c

; ----------------------------------------------------------------------
; DATOS leido_A673: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa673..0xa674  (1 bytes)
DATA_leido_A673:
	defb 081h	; a673

; ----------------------------------------------------------------------
; DATOS leido_A674: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa674..0xa677  (3 bytes)
DATA_leido_A674:
	defb 001h,010h,010h	; a674

; ----------------------------------------------------------------------
; DATOS leido_A677: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa677..0xa67a  (3 bytes)
DATA_leido_A677:
	defb 098h,00fh,000h	; a677

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa67a..0xa681  (7 bytes)
DATA_A67A:
	defb 0c0h,001h,010h,010h,000h,000h,01eh	; a67a

; ----------------------------------------------------------------------
; DATOS leido_A681: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa681..0xa682  (1 bytes)
DATA_leido_A681:
	defb 0c0h	; a681

; ----------------------------------------------------------------------
; DATOS leido_A682: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa682..0xa685  (3 bytes)
DATA_leido_A682:
	defb 001h,008h,008h	; a682

; ----------------------------------------------------------------------
; DATOS leido_A685: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa685..0xa688  (3 bytes)
DATA_leido_A685:
	defb 000h,000h,000h	; a685

; ----------------------------------------------------------------------
; DATOS leido_A688: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa688..0xa689  (1 bytes)
DATA_leido_A688:
	defb 0c0h	; a688

; ----------------------------------------------------------------------
; DATOS leido_A689: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa689..0xa68c  (3 bytes)
DATA_leido_A689:
	defb 000h,008h,008h	; a689

; ----------------------------------------------------------------------
; DATOS leido_A68C: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa68c..0xa68f  (3 bytes)
DATA_leido_A68C:
	defb 000h,000h,000h	; a68c

; ----------------------------------------------------------------------
; DATOS leido_A68F: 1 bytes que lee p01:76A1 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:76A1 (1 bytes)
;   0xa68f..0xa690  (1 bytes)
DATA_leido_A68F:
	defb 0c0h	; a68f

; ----------------------------------------------------------------------
; DATOS leido_A690: 3 bytes que leen p01:76EF, p01:76F4, p01:76F9 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:76EF, p01:76F4, p01:76F9
;   (3 bytes)
;   0xa690..0xa693  (3 bytes)
DATA_leido_A690:
	defb 001h,010h,010h	; a690

; ----------------------------------------------------------------------
; DATOS leido_A693: 3 bytes que leen p01:7736, p01:773B, p01:7740 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7736, p01:773B, p01:7740
;   (3 bytes)
;   0xa693..0xa696  (3 bytes)
DATA_leido_A693:
	defb 000h,000h,000h	; a693

; ----------------------------------------------------------------------
; DATOS tabla_A696: tabla que se lee desde HL = 0xA696 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p01:7C77 (22 bytes)
;   0xa696..0xa6ac  (22 bytes)
DATA_tabla_A696:
	defb 0ach,0a6h,0e1h,0a6h,00ah,0a7h,02bh,0a7h,02dh,0a7h,095h,0a7h,0dch,0a7h,017h,0a8h	; a696  ......+.-.......
	defb 05bh,0a8h,099h,0a8h,02bh,0a7h	; a6a6

; ----------------------------------------------------------------------
; DATOS leido_A6AC: 591 bytes que leen p01:7C86, p01:7C88, p01:7C8E al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido, con 15 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p01:7C86, p01:7C88, p01:7C8E (591 bytes)
;   0xa6ac..0xa8fb  (591 bytes)
DATA_leido_A6AC:
	defb 041h,020h,006h,059h,000h,046h,059h,098h,086h,071h,020h,006h,091h,020h,006h,0a1h	; a6ac  A .Y.FY..q .. ..
	defb 000h,046h,0a1h,098h,086h,0b1h,020h,006h,0c1h,000h,046h,0c1h,098h,086h,0e9h,020h	; a6bc  .F.... ...F....
	defb 006h,011h,021h,006h,021h,001h,046h,021h,099h,086h,031h,021h,006h,041h,001h,046h	; a6cc  ..!.!.F!..1!.A.F
	defb 041h,099h,086h,0ffh,0ffh,070h,070h,004h,078h,010h,044h,080h,010h,044h,088h,070h	; a6dc  A....pp.x.D..D.p
	defb 004h,08ch,000h,041h,094h,010h,044h,098h,080h,001h,0a0h,070h,004h,0b8h,010h,044h	; a6ec  ...A..D....p...D
	defb 01eh,081h,007h,044h,089h,002h,054h,011h,042h,06ch,089h,002h,0ffh,0ffh,021h,030h	; a6fc  ...D..T.Bl....!0
	defb 00bh,05ch,040h,00fh,081h,011h,00ch,081h,061h,00ch,08bh,039h,00ch,095h,001h,00ch	; a70c  .\@.....a..9....
	defb 095h,071h,00ch,0a0h,039h,00ch,0aah,069h,00ch,0afh,009h,00ch,0b4h,059h,00ch,0ffh	; a71c  .q..9..i.....Y..
	defb 0ffh,084h,080h,026h,08ah,018h,026h,096h,080h,026h,0a2h,018h,026h,0a4h,048h,09ch	; a72c  ...&..&..&..&.H.
	defb 0aah,018h,066h,0aeh,080h,026h,0b7h,080h,066h,0cch,018h,026h,0cch,048h,01ch,0d0h	; a73c  ..f..&..f..&.H..
	defb 098h,0a6h,0d6h,018h,066h,0d6h,048h,05ch,004h,081h,027h,00ch,019h,027h,01ch,059h	; a74c  ....f.H\..'..'.Y
	defb 027h,024h,009h,067h,02ah,081h,027h,03ah,011h,027h,03ah,049h,067h,03eh,081h,027h	; a75c  '$.g*.':.':Ig>.'
	defb 04ch,009h,067h,052h,081h,027h,058h,031h,027h,082h,081h,026h,08ah,009h,0e8h,08ah	; a76c  L.gR.'X1'..&....
	defb 081h,066h,09eh,099h,068h,0a0h,009h,01ch,0b7h,081h,026h,0bch,009h,0e8h,0c0h,081h	; a77c  .f..h.....&.....
	defb 066h,0d6h,009h,01ch,0d6h,099h,068h,0ffh,0ffh,064h,010h,060h,084h,080h,020h,090h	; a78c  f.....h..d.`.. .
	defb 010h,060h,0b0h,080h,023h,0bch,010h,023h,0d0h,080h,023h,0d8h,010h,064h,0dbh,080h	; a79c  .`..#..#..#..d..
	defb 024h,0e0h,010h,064h,0e2h,080h,024h,0e4h,010h,064h,0e8h,010h,064h,0ebh,080h,024h	; a7ac  $..d..$..d..d..$
	defb 0f4h,010h,063h,0fch,080h,063h,00ch,041h,021h,00ch,061h,061h,020h,041h,021h,020h	; a7bc  ..c..c.A!.aa A!
	defb 061h,061h,037h,041h,003h,043h,041h,043h,04fh,041h,003h,068h,041h,022h,0ffh,0ffh	; a7cc  aa7A.CACOA.hA"..
	defb 092h,008h,06fh,0ach,008h,02fh,0b8h,008h,02fh,0c2h,090h,037h,0e0h,080h,005h,0e0h	; a7dc  ..o../../..7....
	defb 000h,0c5h,0f8h,008h,02dh,000h,0a1h,045h,00ch,0a1h,02dh,010h,001h,0c5h,018h,081h	; a7ec  ....-..E..-.....
	defb 085h,02ch,009h,02dh,038h,0a1h,02dh,040h,021h,02eh,048h,061h,02eh,060h,041h,02eh	; a7fc  .,.-8.-@!.Ha.`A.
	defb 070h,079h,02eh,078h,051h,02eh,07eh,071h,02eh,0ffh,0ffh,0c0h,000h,02ah,0ceh,048h	; a80c  py.xQ.~q.....*.H
	defb 015h,0d0h,068h,015h,0d4h,080h,015h,0d8h,080h,02ah,0deh,030h,015h,0deh,060h,015h	; a81c  ..h......*.0..`.
	defb 004h,031h,050h,010h,061h,050h,018h,031h,050h,020h,061h,050h,064h,031h,050h,069h	; a82c  .1P.aP.1P aPd1Pi
	defb 081h,097h,078h,031h,050h,07dh,081h,097h,084h,061h,050h,092h,081h,097h,094h,011h	; a83c  ..x1P}...aP.....
	defb 017h,0a2h,011h,017h,0a2h,081h,097h,0aah,031h,057h,0aah,061h,017h,0ffh,0ffh,040h	; a84c  ........1W.a...@
	defb 040h,01dh,064h,028h,05eh,064h,080h,01eh,080h,030h,01fh,080h,048h,01dh,080h,070h	; a85c  @.d(^d...0..H..p
	defb 01fh,084h,028h,0deh,084h,080h,09eh,0e0h,050h,02bh,0f0h,010h,012h,0fah,080h,00eh	; a86c  ..(.....P+......
	defb 0fch,010h,012h,00ch,011h,012h,016h,081h,00eh,018h,011h,012h,01ch,051h,02ch,084h	; a87c  .............Q,.
	defb 041h,01dh,090h,041h,01dh,09ch,041h,01dh,01ch,052h,0abh,0ffh,0ffh,094h,080h,052h	; a88c  A..A..A..R.....R
	defb 09ch,010h,012h,0a4h,0a0h,074h,0a8h,000h,034h,0ach,0a0h,074h,0b0h,000h,034h,0b4h	; a89c  .....t..4..t..4.
	defb 0a0h,074h,0b8h,000h,034h,0bch,0a0h,074h,0c0h,000h,034h,0c4h,0a0h,074h,0c8h,000h	; a8ac  .t..4..t..4..t..
	defb 034h,0cch,0a0h,074h,0d0h,000h,034h,0d4h,0a0h,074h,0d8h,000h,034h,0dch,0a0h,074h	; a8bc  4..t..4..t..4..t
	defb 0f0h,090h,01ah,008h,021h,05ah,014h,091h,01ah,01ch,021h,05ah,02ah,021h,00dh,03eh	; a8cc  ....!Z....!Z*!.>
	defb 011h,04dh,052h,021h,08dh,0cah,021h,030h,0dch,021h,070h,0eah,009h,030h,0eah,031h	; a8dc  .MR!..!0.!p..0.1
	defb 030h,018h,022h,036h,02ch,042h,06bh,03ch,022h,06bh,03ch,062h,06bh,0ffh,0ffh	; a8ec  0."6,Bk<"k<bk..

; ======================================================================
; CODIGO 0xa8fb..0xa915  (26 bytes)
; ======================================================================


L_A8FB:
	xor a			;a8fb
	ld (0e427h),a		;a8fc
	ld a,(0e361h)		;a8ff
	add a,a			;a902
	ld c,a			;a903
	add a,a			;a904
	add a,c			;a905
	ld hl,la90fh		;a906
	call 04089h		;a909
	ld de,0e421h		;a90c
L_A90F:
	ld bc,00006h		;a90f
	ldir		;a912
	ret			;a914

; ----------------------------------------------------------------------
; DATOS leido_A915: 66 bytes que lee p19:A912 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 6 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p19:A912 (66
;   bytes)
;   0xa915..0xa957  (66 bytes)
DATA_leido_A915:
	defb 0ffh,0ffh,0ffh,0ffh,06fh,001h,020h,000h,080h,001h,09dh,001h,080h,000h,060h,001h	; a915  ....o. .......`.
	defb 0dfh,001h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,080h,000h,0e0h,001h,0ffh,001h,060h,000h	; a925  ..............`.
	defb 080h,001h,09fh,001h,060h,000h,0a0h,001h,09fh,001h,060h,000h,000h,002h,01fh,002h	; a935  ....`.....`.....
	defb 040h,000h,020h,002h,03fh,002h,020h,000h,040h,002h,05fh,002h,000h,000h,080h,000h	; a945  @. .?. .@._.....
	defb 05fh,000h	; a955

; ======================================================================
; CODIGO 0xa957..0xa976  (31 bytes)
; ======================================================================


L_A957:
	ld a,(0e31fh)		;a957
	or a			;a95a
	ret nz			;a95b
	ld a,(0e361h)		;a95c
	cp 004h		;a95f
	ret z			;a961
	ld hl,L_A972+2		;a962
	call 04a5ah		;a965
	ld de,(0e363h)		;a968
	rst 20h			;a96c
	jr c,L_A972		;a96d
	ld hl,00020h		;a96f
L_A972:
	ld (0e363h),hl		;a972
	ret			;a975

; ----------------------------------------------------------------------
; DATOS leido_A976: 22 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 2 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p00:4A60, p00:4A62 (22 bytes)
;   0xa976..0xa98c  (22 bytes)
DATA_leido_A976:
	defb 0f0h,000h,0c0h,000h,018h,001h,0ffh,0ffh,0f8h,000h,0d8h,000h,0ddh,000h,000h,001h	; a976  ................
	defb 040h,001h,0fdh,000h,020h,000h	; a986

; ======================================================================
; CODIGO 0xa98c..0xa9ac  (32 bytes)
; ======================================================================


L_A98C:
	ld (ix+008h),008h		;a98c
	ld (ix+009h),004h		;a990
	ld (ix+00ah),006h		;a994
	ld (ix+00eh),003h		;a998
	ld de,03f80h		;a99c
L_A99F:
	ld (ix+007h),d		;a99f
	ld (ix+00dh),e		;a9a2
	ret			;a9a5
L_A9A6:
	ld a,(ix+001h)		;a9a6
	call 04093h		;a9a9

; ----------------------------------------------------------------------
; DATOS tabla_A9AC: 4 destinos del despachador p00:4093 (call en p19:A9A9, el
;   indice en A): A9B4, A9C2, A9D0, A9F1; lo leen p19:A9A9 (8 bytes)
;   0xa9ac..0xa9b4  (8 bytes)
DATA_tabla_A9AC:
	defw 0a9b4h,0a9c2h,0a9d0h,0a9f1h	; a9ac  -> L_A9B4 L_A9C2 L_A9D0 L_A9F1

; ======================================================================
; CODIGO 0xa9b4..0xaa31  (125 bytes)
; ======================================================================


L_A9B4:
	call L_AA0C		;a9b4
	ret nc			;a9b7
	ld de,0402ah		;a9b8
	call L_A99F		;a9bb
	inc (ix+001h)		;a9be
	ret			;a9c1
L_A9C2:
	call L_AA16		;a9c2
	ret nc			;a9c5
	ld (hl),000h		;a9c6
	ld (ix+002h),00ch		;a9c8
	inc (ix+001h)		;a9cc
	ret			;a9cf
L_A9D0:
	ld a,(ix+002h)		;a9d0
	dec a			;a9d3
	jr z,L_A9E3		;a9d4
	ld (ix+002h),a		;a9d6
	cp 004h		;a9d9
	ret nz			;a9db
	ld de,03f80h		;a9dc
	call L_A99F		;a9df
	ret			;a9e2
L_A9E3:
	ld de,0282bh		;a9e3
	call L_A99F		;a9e6
	ld (ix+002h),021h		;a9e9
	inc (ix+001h)		;a9ed
	ret			;a9f0
L_A9F1:
	ld a,(ix+002h)		;a9f1
	dec a			;a9f4
	jr z,L_AA01		;a9f5
	ld (ix+002h),a		;a9f7
	and 007h		;a9fa
	ret nz			;a9fc
	call L_AA20		;a9fd
	ret			;aa00
L_AA01:
	ld de,03f80h		;aa01
	call L_A99F		;aa04
	ld (ix+001h),000h		;aa07
	ret			;aa0b
L_AA0C:
	ld de,0e008h		;aa0c
	ld bc,01018h		;aa0f
	call L_AADA		;aa12
	ret			;aa15
L_AA16:
	ld de,0f818h		;aa16
	ld bc,01008h		;aa19
	call L_AADA		;aa1c
	ret			;aa1f
L_AA20:
	ld a,(ix+006h)		;aa20
	add a,014h		;aa23
	ld d,a			;aa25
	ld e,(ix+004h)		;aa26
	ld c,000h		;aa29
	ld a,008h		;aa2b
	call 0764fh		;aa2d
	ret			;aa30

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa31..0xaada  (169 bytes)
DATA_AA31:
	defb 0ddh,036h,01eh,006h,0cdh,08ah,0aah,0ddh,036h,002h,008h,0c9h,0ddh,035h,002h,0c0h	; aa31  .6......6....5..
	defb 0ddh,036h,002h,008h,0cdh,04ch,0aah,0cdh,08ah,0aah,0c9h,0cdh,073h,0aah,0ddh,046h	; aa41  .6...L......s..F
	defb 01eh,048h,0b8h,0c8h,038h,002h,0cbh,0d8h,0c6h,004h,0b8h,028h,00eh,030h,008h,079h	; aa51  .H..8......(.0.y
	defb 03ch,0e6h,007h,0ddh,077h,01eh,0c9h,079h,03dh,018h,0f6h,079h,0feh,004h,030h,0f7h	; aa61  <...w..y=..y..0.
	defb 018h,0edh,0ddh,05eh,004h,0ddh,056h,006h,0cdh,0ffh,063h,03ah,077h,0e4h,0c6h,010h	; aa71  ...^..V...c:w...
	defb 007h,007h,007h,0e6h,007h,0ddh,077h,02fh,0c9h,0ddh,07eh,01eh,047h,087h,087h,0c6h	; aa81  ......w/..~.G...
	defb 0c0h,0ddh,077h,030h,078h,021h,0cah,0aah,0cdh,05ah,04ah,0ddh,075h,00eh,0ddh,074h	; aa91  ..w0x!...ZJ.u..t
	defb 00fh,078h,021h,0aah,0aah,0cdh,040h,06eh,0c9h,000h,002h,000h,000h,000h,002h,000h	; aaa1  .x!...@n........
	defb 002h,000h,000h,000h,002h,000h,0feh,000h,002h,000h,0feh,000h,000h,000h,0feh,000h	; aab1  ................
	defb 0feh,000h,000h,000h,0feh,000h,002h,000h,0feh,007h,010h,00eh,00eh,010h,007h,00eh	; aac1  ................
	defb 00eh,007h,010h,00eh,00eh,010h,007h,00eh,00eh	; aad1  .........

; ======================================================================
; CODIGO 0xaada..0xac16  (316 bytes)
; ======================================================================


L_AADA:
	ld a,(ix+006h)		;aada
	add a,d			;aadd
	ld d,a			;aade
	ld a,(ix+004h)		;aadf
	add a,e			;aae2
	ld e,a			;aae3
	exx			;aae4
	ld hl,0e6c0h		;aae5
	ld de,00060h		;aae8
	ld b,003h		;aaeb
L_AAED:
	push hl			;aaed
	exx			;aaee
	pop hl			;aaef
	call L_AAFA		;aaf0
	exx			;aaf3
	ret c			;aaf4
	add hl,de			;aaf5
	djnz L_AAED		;aaf6
	or a			;aaf8
	ret			;aaf9
L_AAFA:
	ld a,(hl)			;aafa
	or a			;aafb
	ret z			;aafc
	inc l			;aafd
	inc l			;aafe
	inc l			;aaff
	ld a,(hl)			;ab00
	sub e			;ab01
	ccf			;ab02
	ret nc			;ab03
	sub c			;ab04
	ret nc			;ab05
	inc l			;ab06
	inc l			;ab07
	ld a,(hl)			;ab08
	sub d			;ab09
	ccf			;ab0a
	ret nc			;ab0b
	sub b			;ab0c
	ret			;ab0d
L_AB0E:
	ld (ix+007h),02fh		;ab0e
	ld (ix+009h),004h		;ab12
	ld (ix+00ah),002h		;ab16
	ld (ix+00dh),080h		;ab1a
	ld (ix+002h),004h		;ab1e
	ld (ix+01eh),001h		;ab22
	ld a,(ix+009h)		;ab26
	add a,a			;ab29
	add a,a			;ab2a
	add a,a			;ab2b
	add a,(ix+004h)		;ab2c
	ld (ix+01fh),a		;ab2f
	jr L_AB71		;ab32
L_AB34:
	call L_AB3E		;ab34
	call L_AB71		;ab37
	call L_ABA2		;ab3a
L_AB3D:
	ret			;ab3d
L_AB3E:
	dec (ix+002h)		;ab3e
	ret nz			;ab41
	ld (ix+002h),004h		;ab42
	call L_AB8E		;ab46
	bit 0,(ix+00bh)		;ab49
	jr nz,L_AB60		;ab4d
	bit 0,(ix+01eh)		;ab4f
	ld a,008h		;ab53
	jr z,L_AB59		;ab55
	ld a,0f8h		;ab57
L_AB59:
	add a,(ix+004h)		;ab59
	ld (ix+004h),a		;ab5c
	ret			;ab5f
L_AB60:
	bit 0,(ix+01eh)		;ab60
	ld a,0f8h		;ab64
	jr z,L_AB6A		;ab66
	ld a,008h		;ab68
L_AB6A:
	add a,(ix+01fh)		;ab6a
	ld (ix+01fh),a		;ab6d
	ret			;ab70
L_AB71:
	ld a,(ix+01fh)		;ab71
	sub (ix+004h)		;ab74
	rrca			;ab77
	rrca			;ab78
	rrca			;ab79
	and 01fh		;ab7a
	inc a			;ab7c
	ld (ix+009h),a		;ab7d
	bit 0,(ix+00bh)		;ab80
	ret z			;ab84
	ld a,040h		;ab85
	sub (ix+009h)		;ab87
	ld (ix+007h),a		;ab8a
	ret			;ab8d
L_AB8E:
	ld a,(ix+009h)		;ab8e
	sub 005h		;ab91
	jr c,L_AB9D		;ab93
	sub 00ah		;ab95
	ret c			;ab97
	ld (ix+01eh),000h		;ab98
	ret			;ab9c
L_AB9D:
	ld (ix+01eh),001h		;ab9d
	ret			;aba1
L_ABA2:
	ld hl,0e4a0h		;aba2
	ld a,(hl)			;aba5
	add a,a			;aba6
	add a,(hl)			;aba7
	ld hl,000d8h		;aba8
	call 04089h		;abab
L_ABAE:
	ld de,(0e363h)		;abae
	rst 20h			;abb2
	ret nz			;abb3
	ld hl,0e4a0h		;abb4
	inc (hl)			;abb7
	jp 058f1h		;abb8
L_ABBB:
	ld a,(ix+004h)		;abbb
	sub 040h		;abbe
	ld a,015h		;abc0
	jr c,L_ABC5		;abc2
	inc a			;abc4
L_ABC5:
	ld (ix+007h),a		;abc5
	ld (ix+008h),004h		;abc8
	ld a,004h		;abcc
	ld (ix+009h),a		;abce
	ld (ix+00ah),a		;abd1
	ld (ix+012h),000h		;abd4
	ld (ix+00dh),080h		;abd8
	ret			;abdc
L_ABDD:
	ld b,080h		;abdd
	ld a,(ix+006h)		;abdf
	cp 0e0h		;abe2
	jr nc,L_ABEC		;abe4
	cp 020h		;abe6
	jr c,L_ABEC		;abe8
	ld b,000h		;abea
L_ABEC:
	ld (ix+00dh),b		;abec
	ret			;abef
L_ABF0:
	ld (ix+012h),081h		;abf0
	ld (ix+008h),010h		;abf4
	ld (ix+009h),002h		;abf8
	ld (ix+00ah),004h		;abfc
	ld (ix+002h),004h		;ac00
	ld (ix+007h),00fh		;ac04
	ld (ix+00dh),080h		;ac08
	ret			;ac0c
L_AC0D:
	call L_AC3E		;ac0d
	ld a,(ix+001h)		;ac10
	call 04093h		;ac13

; ----------------------------------------------------------------------
; DATOS tabla_AC16: 2 destinos del despachador p00:4093 (call en p19:AC13, el
;   indice en A): AC1A, AC4E; lo leen p19:AC13 (4 bytes)
;   0xac16..0xac1a  (4 bytes)
DATA_tabla_AC16:
	defw 0ac1ah,0ac4eh	; ac16  -> L_AC1A L_AC4E

; ======================================================================
; CODIGO 0xac1a..0xac84  (106 bytes)
; ======================================================================


L_AC1A:
	dec (ix+002h)		;ac1a
	ret nz			;ac1d
	ld (ix+002h),004h		;ac1e
	inc (ix+007h)		;ac22
	bit 6,(ix+012h)		;ac25
	jr nz,L_AC3A		;ac29
	ld e,(ix+004h)		;ac2b
	ld a,(ix+006h)		;ac2e
	ld d,a			;ac31
	ld bc,00000h		;ac32
	ld a,003h		;ac35
	call 0764fh		;ac37
L_AC3A:
	inc (ix+001h)		;ac3a
	ret			;ac3d
L_AC3E:
	ld a,(ix+00dh)		;ac3e
	rla			;ac41
	ret nc			;ac42
	ld a,(ix+006h)		;ac43
	cp 0e0h		;ac46
	ret nc			;ac48
	ld (ix+00dh),000h		;ac49
	ret			;ac4d
L_AC4E:
	dec (ix+002h)		;ac4e
	ret nz			;ac51
	ld (ix+002h),004h		;ac52
	dec (ix+007h)		;ac56
	dec (ix+001h)		;ac59
	ret			;ac5c
L_AC5D:
	call 078c8h		;ac5d
L_AC60:
	call 07ee1h		;ac60
L_AC63:
	ld a,r		;ac63
	and 007h		;ac65
	add a,a			;ac67
	add a,a			;ac68
	ld hl,0ac84h		;ac69
	call 04089h		;ac6c
L_AC6F:
	ld c,(hl)			;ac6f
	inc hl			;ac70
	ld b,(hl)			;ac71
	inc hl			;ac72
	ld e,(hl)			;ac73
	inc hl			;ac74
	ld d,(hl)			;ac75
	ld h,b			;ac76
	ld l,c			;ac77
	call 078d7h		;ac78
L_AC7B:
	ld de,000c0h		;ac7b
	call 07ef3h		;ac7e
L_AC81:
	jp 05894h		;ac81

; ----------------------------------------------------------------------
; DATOS tabla_AC84: tabla que se lee desde HL = 0xAC84 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:AC69 (1 bytes)
;   0xac84..0xac85  (1 bytes)
DATA_tabla_AC84:
	defb 080h	; ac84

; ----------------------------------------------------------------------
; DATOS leido_AC85: 3 bytes que leen p19:AC71, p19:AC73, p19:AC75 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p19:AC71, p19:AC73, p19:AC75
;   (3 bytes)
;   0xac85..0xac88  (3 bytes)
DATA_leido_AC85:
	defb 0efh,000h,0feh	; ac85

; ----------------------------------------------------------------------
; DATOS sin identificar  0xac88..0xaca4  (28 bytes)
DATA_AC88:
	defb 080h,0f5h,000h,001h,080h,0f3h,000h,004h,000h,0f5h,000h,0fdh,080h,0f1h,000h,005h	; ac88  ................
	defb 080h,0f2h,000h,004h,000h,0f6h,000h,0ffh,000h,0f4h,000h,0feh	; ac98  ............

; ======================================================================
; CODIGO 0xaca4..0xacb7  (19 bytes)
; ======================================================================


L_ACA4:
	call L_ACAE		;aca4
L_ACA7:
	call 07f1ch		;aca7
L_ACAA:
	call 07f2fh		;acaa
L_ACAD:
	ret			;acad
L_ACAE:
	ld hl,0acb7h		;acae
	ld bc,00702h		;acb1
	jp 07f7ch		;acb4

; ----------------------------------------------------------------------
; DATOS leido_ACB7: 2 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (2 bytes)
;   0xacb7..0xacb9  (2 bytes)
DATA_leido_ACB7:
	defb 0d4h,0d8h	; acb7

; ======================================================================
; CODIGO 0xacb9..0xad21  (104 bytes)
; ======================================================================


L_ACB9:
	ld (ix+007h),02dh		;acb9
	call 04860h		;acbd
	ret			;acc0
L_ACC1:
	call 0487bh		;acc1
L_ACC4:
	ld (ix+010h),007h		;acc4
	ld (ix+006h),0b0h		;acc8
	ld (ix+001h),000h		;accc
	ld (ix+002h),001h		;acd0
	call 078c8h		;acd4
L_ACD7:
	ld b,000h		;acd7
	ld a,(ix+004h)		;acd9
	cp 050h		;acdc
	ld (ix+004h),000h		;acde
	jr c,L_ACE9		;ace2
	inc b			;ace4
	ld (ix+004h),0a0h		;ace5
L_ACE9:
	ld (ix+024h),b		;ace9
	ret			;acec
L_ACED:
	call 04884h		;aced
L_ACF0:
	call L_AD73		;acf0
	call L_AD08		;acf3
	ret nz			;acf6
	ld a,(ix+001h)		;acf7
	cp 015h		;acfa
	ret nc			;acfc
	call L_AD36		;acfd
	call L_AD0C		;ad00
	call nz,078ddh		;ad03
L_AD06:
	jr L_AD11		;ad06
L_AD08:
	dec (ix+002h)		;ad08
	ret			;ad0b
L_AD0C:
	ld a,(ix+024h)		;ad0c
	or a			;ad0f
	ret			;ad10
L_AD11:
	ld a,(ix+001h)		;ad11
	ld hl,0ad21h		;ad14
	call 04a6eh		;ad17
L_AD1A:
	ld (ix+002h),a		;ad1a
	inc (ix+001h)		;ad1d
	ret			;ad20

; ----------------------------------------------------------------------
; DATOS tabla_AD21: tabla que se lee desde HL = 0xAD21 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:AD14 (21 bytes)
;   0xad21..0xad36  (21 bytes)
DATA_tabla_AD21:
	defb 001h,01ch,004h,002h,004h,00ch,004h,002h,004h,006h,004h,002h,004h,006h,004h,002h	; ad21  ................
	defb 004h,006h,004h,002h,0ffh	; ad31

; ======================================================================
; CODIGO 0xad36..0xad49  (19 bytes)
; ======================================================================


L_AD36:
	call 078c8h		;ad36
L_AD39:
	ld a,(ix+001h)		;ad39
	ld hl,0ad49h		;ad3c
	call 04a5ah		;ad3f
L_AD42:
	ld (ix+00ah),h		;ad42
	ld (ix+008h),l		;ad45
	ret			;ad48

; ----------------------------------------------------------------------
; DATOS tabla_AD49: tabla que se lee desde HL = 0xAD49 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:AD3C (42 bytes)
;   0xad49..0xad73  (42 bytes)
DATA_tabla_AD49:
	defb 000h,000h,004h,000h,004h,0feh,004h,0fch,002h,0fch,000h,0fch,0feh,0fch,0fch,0fch	; ad49  ................
	defb 0fch,0feh,0fch,000h,0fch,002h,0fch,004h,0feh,004h,000h,004h,002h,004h,004h,004h	; ad59  ................
	defb 004h,002h,004h,000h,004h,0feh,004h,0fch,002h,0fch	; ad69  ..........

; ======================================================================
; CODIGO 0xad73..0xadd6  (99 bytes)
; ======================================================================


L_AD73:
	ld a,(0e303h)		;ad73
	and 007h		;ad76
	ret nz			;ad78
	bit 2,(ix+030h)		;ad79
	ld a,0a4h		;ad7d
	jr z,L_AD83		;ad7f
	ld a,0a0h		;ad81
L_AD83:
	ld (ix+030h),a		;ad83
	ret			;ad86
L_AD87:
	ld (ix+010h),007h		;ad87
	ld (ix+006h),040h		;ad8b
	ld (ix+001h),000h		;ad8f
	ld (ix+002h),001h		;ad93
	call 078c8h		;ad97
L_AD9A:
	ld b,000h		;ad9a
	ld a,(ix+004h)		;ad9c
	cp 060h		;ad9f
	jr c,L_ADA4		;ada1
	inc b			;ada3
L_ADA4:
	ld (ix+024h),b		;ada4
	ret			;ada7
L_ADA8:
	call L_ADBD		;ada8
	ret nz			;adab
	ld a,(ix+001h)		;adac
	cp 010h		;adaf
	ret nc			;adb1
	call L_ADDE		;adb2
	call L_ADC1		;adb5
	call nz,078ddh		;adb8
L_ADBB:
	jr L_ADC6		;adbb
L_ADBD:
	dec (ix+002h)		;adbd
	ret			;adc0
L_ADC1:
	ld a,(ix+024h)		;adc1
	or a			;adc4
	ret			;adc5
L_ADC6:
	ld a,(ix+001h)		;adc6
	ld hl,0add6h		;adc9
	call 04a6eh		;adcc
L_ADCF:
	ld (ix+002h),a		;adcf
	inc (ix+001h)		;add2
	ret			;add5

; ----------------------------------------------------------------------
; DATOS tabla_ADD6: tabla que se lee desde HL = 0xADD6 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:ADC9 (8 bytes)
;   0xadd6..0xadde  (8 bytes)
DATA_tabla_ADD6:
	defb 001h,01ch,00ah,004h,00ch,004h,00ah,0ffh	; add6  ........

; ======================================================================
; CODIGO 0xadde..0xadf1  (19 bytes)
; ======================================================================


L_ADDE:
	call 078c8h		;adde
L_ADE1:
	ld a,(ix+001h)		;ade1
	ld hl,0adf1h		;ade4
	call 04a5ah		;ade7
L_ADEA:
	ld (ix+00ah),h		;adea
	ld (ix+008h),l		;aded
	ret			;adf0

; ----------------------------------------------------------------------
; DATOS tabla_ADF1: tabla que se lee desde HL = 0xADF1 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:ADE4 (16 bytes)
;   0xadf1..0xae01  (16 bytes)
DATA_tabla_ADF1:
	defb 000h,000h,004h,004h,000h,004h,0fch,004h,0fch,000h,0fch,0fch,000h,0fch,002h,0fch	; adf1  ................

; ======================================================================
; CODIGO 0xae01..0xae35  (52 bytes)
; ======================================================================


L_AE01:
	ld (ix+01fh),009h		;ae01
	ld (ix+012h),001h		;ae05
	ld (ix+00dh),080h		;ae09
	ld a,(ix+00bh)		;ae0d
	ld b,a			;ae10
	ld hl,0ae35h		;ae11
	call 04a5ah		;ae14
L_AE17:
	ld (ix+007h),l		;ae17
	ld (ix+00ch),h		;ae1a
	ld a,b			;ae1d
	ld hl,0ae3dh		;ae1e
	call 04a5ah		;ae21
L_AE24:
	ld (ix+009h),l		;ae24
	ld (ix+00ah),h		;ae27
	ld a,b			;ae2a
	ld hl,0ae45h		;ae2b
	call 04a6eh		;ae2e
L_AE31:
	ld (ix+002h),a		;ae31
	ret			;ae34

; ----------------------------------------------------------------------
; DATOS tabla_AE35: tabla que se lee desde HL = 0xAE35 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:AE11 (8 bytes)
;   0xae35..0xae3d  (8 bytes)
DATA_tabla_AE35:
	defb 09fh,008h,0a0h,00ch,0a1h,008h,09ah,004h	; ae35  ........

; ----------------------------------------------------------------------
; DATOS tabla_AE3D: tabla que se lee desde HL = 0xAE3D con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:AE1E (8 bytes)
;   0xae3d..0xae45  (8 bytes)
DATA_tabla_AE3D:
	defb 006h,00fh,002h,008h,006h,010h,004h,013h	; ae3d  ........

; ----------------------------------------------------------------------
; DATOS tabla_AE45: tabla que se lee desde HL = 0xAE45 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:AE2B (4 bytes)
;   0xae45..0xae49  (4 bytes)
DATA_tabla_AE45:
	defb 080h,070h,060h,050h	; ae45

; ======================================================================
; CODIGO 0xae49..0xaec3  (122 bytes)
; ======================================================================


L_AE49:
	call L_AE89		;ae49
	dec (ix+002h)		;ae4c
	ret nz			;ae4f
	ld (ix+002h),008h		;ae50
	ld a,(ix+00ch)		;ae54
	or a			;ae57
	ret z			;ae58
	dec (ix+00ch)		;ae59
	inc (ix+009h)		;ae5c
	ld a,(ix+00bh)		;ae5f
	cp 003h		;ae62
	jr z,L_AE6F		;ae64
	ld a,(ix+004h)		;ae66
	sub 008h		;ae69
	ld (ix+004h),a		;ae6b
	ret			;ae6e
L_AE6F:
	inc (ix+007h)		;ae6f
	ret			;ae72
L_AE73:
	ld a,(ix+00bh)		;ae73
	dec a			;ae76
	ret nz			;ae77
	ld a,(ix+00ch)		;ae78
	sub 005h		;ae7b
	ret c			;ae7d
	ld h,(ix+006h)		;ae7e
	ld l,0a8h		;ae81
	call 04a46h		;ae83
	ld (hl),0a8h		;ae86
	ret			;ae88
L_AE89:
	ld a,(ix+00ch)		;ae89
	or a			;ae8c
	ret z			;ae8d
	dec (ix+01fh)		;ae8e
	ret nz			;ae91
	ld (ix+01fh),009h		;ae92
	jp 05927h		;ae96
L_AE99:
	ld (ix+009h),004h		;ae99
	ld (ix+00ah),004h		;ae9d
	ld (ix+002h),030h		;aea1
	ld (ix+00dh),080h		;aea5
	ld (ix+008h),008h		;aea9
	ld (ix+00ch),004h		;aead
	ld (ix+014h),008h		;aeb1
	ld a,(ix+00bh)		;aeb5
	ld hl,0aec3h		;aeb8
	call 04089h		;aebb
L_AEBE:
	ld a,(hl)			;aebe
	ld (ix+007h),a		;aebf
	ret			;aec2

; ----------------------------------------------------------------------
; DATOS tabla_AEC3: tabla que se lee desde HL = 0xAEC3 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:AEB8 (3 bytes)
;   0xaec3..0xaec6  (3 bytes)
DATA_tabla_AEC3:
	defb 0aeh,0b0h,0b2h	; aec3

; ======================================================================
; CODIGO 0xaec6..0xaeda  (20 bytes)
; ======================================================================


L_AEC6:
	ld a,(ix+006h)		;aec6
	cp 0e0h		;aec9
	ret nc			;aecb
	res 7,(ix+00dh)		;aecc
	ret			;aed0
L_AED1:
	call L_AEC6		;aed1
	ld a,(ix+001h)		;aed4
	call 04093h		;aed7

; ----------------------------------------------------------------------
; DATOS tabla_AEDA: 3 destinos del despachador p00:4093 (call en p19:AED7, el
;   indice en A): AEE0, AEF3, AF4A; lo leen p19:AED7 (6 bytes)
;   0xaeda..0xaee0  (6 bytes)
DATA_tabla_AEDA:
	defw 0aee0h,0aef3h,0af4ah	; aeda  -> L_AEE0 L_AEF3 L_AF4A

; ======================================================================
; CODIGO 0xaee0..0xaf91  (177 bytes)
; ======================================================================


L_AEE0:
	dec (ix+002h)		;aee0
	ret nz			;aee3
	ld (ix+002h),028h		;aee4
	inc (ix+007h)		;aee8
	xor a			;aeeb
	ld (0e482h),a		;aeec
L_AEEF:
	inc (ix+001h)		;aeef
	ret			;aef2
L_AEF3:
	ld a,(ix+006h)		;aef3
	cp 020h		;aef6
	jr c,L_AEFF		;aef8
	dec (ix+002h)		;aefa
	jr nz,L_AF10		;aefd
L_AEFF:
	dec (ix+007h)		;aeff
	ld (ix+002h),030h		;af02
	ld (ix+014h),008h		;af06
	ld (ix+00ch),004h		;af0a
	jr L_AEEF		;af0e
L_AF10:
	ld a,(ix+00ch)		;af10
	or a			;af13
	ret z			;af14
	dec (ix+014h)		;af15
	ret nz			;af18
	ld (ix+014h),008h		;af19
	dec (ix+00ch)		;af1d
	ld a,(ix+004h)		;af20
	cp 060h		;af23
	ld b,001h		;af25
	jr c,L_AF2B		;af27
	ld b,000h		;af29
L_AF2B:
	ld a,(ix+007h)		;af2b
	cp 0afh		;af2e
	ld c,0f8h		;af30
	jr nz,L_AF36		;af32
	ld c,018h		;af34
L_AF36:
	ld d,(ix+006h)		;af36
	ld a,(ix+004h)		;af39
	add a,c			;af3c
	ld e,a			;af3d
	ld a,(0e363h)		;af3e
	and 001h		;af41
	ld c,a			;af43
	ld a,010h		;af44
	call 0764fh		;af46
L_AF49:
	ret			;af49
L_AF4A:
	dec (ix+002h)		;af4a
	ret nz			;af4d
	ld (ix+002h),030h		;af4e
	ld (ix+001h),000h		;af52
	ret			;af56
L_AF57:
	ld a,(ix+004h)		;af57
	cp 060h		;af5a
	ld de,00300h		;af5c
	jr c,L_AF64		;af5f
	ld de,0fd00h		;af61
L_AF64:
	call 078ach		;af64
L_AF67:
	ld a,(0e606h)		;af67
	cp (ix+006h)		;af6a
	ld de,00300h		;af6d
	jr nc,L_AF75		;af70
	ld de,0fd00h		;af72
L_AF75:
	call 078b3h		;af75
L_AF78:
	ret			;af78
L_AF79:
	call L_AF7F		;af79
L_AF7C:
	jp 04857h		;af7c
L_AF7F:
	ld hl,0af93h		;af7f
	ld a,(ix+00ah)		;af82
	rla			;af85
	jr nc,L_AF8B		;af86
	ld hl,0af91h		;af88
L_AF8B:
	ld bc,00302h		;af8b
	jp 07f7ch		;af8e

; ----------------------------------------------------------------------
; DATOS leido_AF91: 4 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (4 bytes)
;   0xaf91..0xaf95  (4 bytes)
DATA_leido_AF91:
	defb 0ach,0b0h,0f0h,0f4h	; af91

; ======================================================================
; CODIGO 0xaf95..0xafdc  (71 bytes)
; ======================================================================


L_AF95:
	call 058cdh		;af95
L_AF98:
	ld a,(ix+006h)		;af98
	sub 020h		;af9b
	ld (ix+029h),a		;af9d
	ld a,0e0h		;afa0
	ld (ix+034h),a		;afa2
	ld (ix+038h),a		;afa5
	ld (ix+03ch),a		;afa8
	ld (ix+024h),008h		;afab
	xor a			;afaf
	ld (0e453h),a		;afb0
	inc a			;afb3
	ld (ix+010h),a		;afb4
	ld (ix+025h),a		;afb7
	inc a			;afba
	ld (ix+02bh),a		;afbb
	ld (ix+02ch),a		;afbe
L_AFC1:
	inc (ix+02bh)		;afc1
	ld a,(ix+02bh)		;afc4
	and 00fh		;afc7
	ld hl,0afdch		;afc9
	call 04a6eh		;afcc
	ld (ix+031h),a		;afcf
	ld (ix+037h),a		;afd2
	ld (ix+03bh),a		;afd5
	ld (ix+03fh),a		;afd8
	ret			;afdb

; ----------------------------------------------------------------------
; DATOS tabla_AFDC: tabla que se lee desde HL = 0xAFDC con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:AFC9 (16 bytes)
;   0xafdc..0xafec  (16 bytes)
DATA_tabla_AFDC:
	defb 008h,00ah,005h,003h,002h,007h,005h,00fh,00dh,00bh,00dh,00bh,005h,009h,00ah,00dh	; afdc  ................

; ======================================================================
; CODIGO 0xafec..0xb003  (23 bytes)
; ======================================================================


L_AFEC:
	call L_AFC1		;afec
	dec (ix+02ch)		;afef
	ret nz			;aff2
	ld (ix+02ch),002h		;aff3
	ld a,(ix+001h)		;aff7
	or a			;affa
	jr nz,L_B000		;affb
	dec (ix+02ch)		;affd
L_B000:
	call 04093h		;b000

; ----------------------------------------------------------------------
; DATOS tabla_B003: 4 destinos del despachador p00:4093 (call en p19:B000, el
;   indice en A): B00B, B03E, B04D, B064; lo leen p19:B000 (8 bytes)
;   0xb003..0xb00b  (8 bytes)
DATA_tabla_B003:
	defw 0b00bh,0b03eh,0b04dh,0b064h	; b003  -> L_B00B L_B03E L_B04D L_B064

; ======================================================================
; CODIGO 0xb00b..0xb0dd  (210 bytes)
; ======================================================================


L_B00B:
	dec (ix+024h)		;b00b
	jr z,L_B024		;b00e
	bit 0,(ix+024h)		;b010
	ret z			;b014
	ld a,(ix+030h)		;b015
	add a,004h		;b018
	cp 0e4h		;b01a
	jr nz,L_B020		;b01c
	ld a,0d0h		;b01e
L_B020:
	ld (ix+030h),a		;b020
	ret			;b023
L_B024:
	ld a,(ix+006h)		;b024
	sub 010h		;b027
	ld (ix+006h),a		;b029
	ld a,(ix+004h)		;b02c
	ld (ix+02ah),a		;b02f
	call L_B09D		;b032
	ld b,001h		;b035
	call L_B0E7		;b037
L_B03A:
	inc (ix+001h)		;b03a
	ret			;b03d
L_B03E:
	call L_B057		;b03e
	ld a,(ix+025h)		;b041
	inc a			;b044
	cp 004h		;b045
	jr z,L_B03A		;b047
	ld (ix+025h),a		;b049
	ret			;b04c
L_B04D:
	ld a,(ix+03dh)		;b04d
	cp 009h		;b050
	jr c,L_B03A		;b052
	call L_B072		;b054
L_B057:
	call L_B109		;b057
	push af			;b05a
	call L_B12E		;b05b
	pop af			;b05e
	ld b,001h		;b05f
	jp L_B0E7		;b061
L_B064:
	call L_B072		;b064
	dec (ix+025h)		;b067
	jp m,075d1h		;b06a
	ld (ix+03ch),0e0h		;b06d
	ret			;b071
L_B072:
	ld a,(ix+034h)		;b072
	ld (ix+004h),a		;b075
	ld a,(ix+035h)		;b078
	ld (ix+006h),a		;b07b
	ld a,(ix+036h)		;b07e
	ld (ix+030h),a		;b081
	ld a,(ix+037h)		;b084
	ld (ix+031h),a		;b087
	push ix		;b08a
	pop de			;b08c
	ld a,034h		;b08d
	call 0408eh		;b08f
	ld h,d			;b092
	ld a,e			;b093
	add a,004h		;b094
	ld l,a			;b096
	ld bc,00008h		;b097
	ldir		;b09a
	ret			;b09c
L_B09D:
	ld hl,0e453h		;b09d
	inc (hl)			;b0a0
	ld a,(hl)			;b0a1
	and 003h		;b0a2
	jr z,L_B0D6		;b0a4
	ld bc,00500h		;b0a6
	ld hl,0b0ddh		;b0a9
	ld a,(0e604h)		;b0ac
	sub (ix+004h)		;b0af
	jr c,L_B0B9		;b0b2
	ld de,00005h		;b0b4
	ld c,e			;b0b7
	add hl,de			;b0b8
L_B0B9:
	cp (hl)			;b0b9
	jr c,L_B0C1		;b0ba
	inc c			;b0bc
	inc hl			;b0bd
	djnz L_B0B9		;b0be
	dec c			;b0c0
L_B0C1:
	ld a,c			;b0c1
L_B0C2:
	add a,a			;b0c2
	add a,a			;b0c3
	add a,a			;b0c4
	ld hl,0b162h		;b0c5
	call 04a6eh		;b0c8
	inc hl			;b0cb
	ld (ix+026h),h		;b0cc
	ld (ix+027h),l		;b0cf
	ld (ix+030h),a		;b0d2
	ret			;b0d5
L_B0D6:
	call 07fadh		;b0d6
	and 007h		;b0d9
	jr L_B0C2		;b0db

; ----------------------------------------------------------------------
; DATOS leido_B0DD: 2 bytes que lee p19:B0B9 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p19:B0B9 (2 bytes)
;   0xb0dd..0xb0df  (2 bytes)
DATA_leido_B0DD:
	defb 0dbh,0e7h	; b0dd

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb0df..0xb0e7  (8 bytes)
DATA_B0DF:
	defb 0ech,0f6h,0ffh,004h,008h,00dh,018h,028h	; b0df  .......(

; ======================================================================
; CODIGO 0xb0e7..0xb0ff  (24 bytes)
; ======================================================================


L_B0E7:
	sub 0d0h		;b0e7
	rra			;b0e9
	rra			;b0ea
	and 03fh		;b0eb
	djnz L_B0F9		;b0ed
	ld hl,0b0ffh		;b0ef
	call 04a6eh		;b0f2
	ld (ix+028h),a		;b0f5
	ret			;b0f8
L_B0F9:
	ld hl,0b104h		;b0f9
	jp 04a6eh		;b0fc

; ----------------------------------------------------------------------
; DATOS tabla_B0FF: tabla que se lee desde HL = 0xB0FF con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:B0EF (5 bytes)
;   0xb0ff..0xb104  (5 bytes)
DATA_tabla_B0FF:
	defb 001h,006h,00ah,00ah,00eh	; b0ff

; ----------------------------------------------------------------------
; DATOS tabla_B104: tabla que se lee desde HL = 0xB104 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:B0F9 (5 bytes)
;   0xb104..0xb109  (5 bytes)
DATA_tabla_B104:
	defb 006h,007h,000h,00fh,004h	; b104

; ======================================================================
; CODIGO 0xb109..0xb12b  (34 bytes)
; ======================================================================


L_B109:
	ld a,(ix+025h)		;b109
	dec a			;b10c
	ld hl,0b12bh		;b10d
	call 04a6eh		;b110
	inc a			;b113
	inc a			;b114
	push ix		;b115
	pop de			;b117
	call 0408eh		;b118
	ld h,(ix+026h)		;b11b
	ld l,(ix+027h)		;b11e
	ld a,(hl)			;b121
	ldi		;b122
	ld (ix+026h),h		;b124
	ld (ix+027h),l		;b127
	ret			;b12a

; ----------------------------------------------------------------------
; DATOS tabla_B12B: tabla que se lee desde HL = 0xB12B con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:B10D (3 bytes)
;   0xb12b..0xb12e  (3 bytes)
DATA_tabla_B12B:
	defb 034h,038h,03ch	; b12b

; ======================================================================
; CODIGO 0xb12e..0xb162  (52 bytes)
; ======================================================================


L_B12E:
	ld b,000h		;b12e
	call L_B0E7		;b130
	ld b,a			;b133
	ld a,(ix+02ah)		;b134
	add a,(ix+028h)		;b137
	sub b			;b13a
	cp 0d0h		;b13b
	jr c,L_B141		;b13d
	ld a,0e0h		;b13f
L_B141:
	ld (ix+02ah),a		;b141
	ld c,a			;b144
	push ix		;b145
	pop hl			;b147
	ld de,0b12bh		;b148
	ld a,(ix+025h)		;b14b
	dec a			;b14e
	call 0408eh		;b14f
	ld a,(de)			;b152
	call 04089h		;b153
	ld (hl),c			;b156
	inc l			;b157
	ld a,(ix+029h)		;b158
	ld (hl),a			;b15b
	add a,0f0h		;b15c
	ld (ix+029h),a		;b15e
	ret			;b161

; ----------------------------------------------------------------------
; DATOS tabla_B162: tabla que se lee desde HL = 0xB162 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:B0C5 (8 bytes)
;   0xb162..0xb16a  (8 bytes)
DATA_tabla_B162:
	defb 0dch,0d0h,0dch,0d0h,0d0h,0dch,0d0h,0dch	; b162  ........

; ----------------------------------------------------------------------
; DATOS leido_B16A: 1 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (1 bytes)
;   0xb16a..0xb16b  (1 bytes)
DATA_leido_B16A:
	defb 0dch	; b16a

; ----------------------------------------------------------------------
; DATOS leido_B16B: 8 bytes que lee p19:B121 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p19:B121 (8 bytes)
;   0xb16b..0xb173  (8 bytes)
DATA_leido_B16B:
	defb 0d0h,0dch,0d4h,0d0h,0dch,0dch,0d0h,0dch	; b16b  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb173..0xb1b4  (65 bytes)
DATA_B173:
	defb 0d4h,0dch,0d0h,0dch,0dch,0d0h,0d4h,0d0h,0dch,0d0h,0d8h,0dch,0d4h,0d0h,0dch,0d0h	; b173  ................
	defb 0dch,0d8h,0dch,0e0h,0d0h,0d8h,0dch,0dch,0e0h,0d4h,0dch,0d0h,0d8h,0e0h,0d0h,0d8h	; b183  ................
	defb 0dch,0d0h,0e0h,0e0h,0d0h,0d8h,0dch,0d0h,0d8h,0e0h,0d4h,0dch,0d8h,0e0h,0d0h,0e0h	; b193  ................
	defb 0d0h,0dch,0d8h,0e0h,0d8h,0e0h,0d8h,0d8h,0e0h,0e0h,0d8h,0d4h,0d8h,0e0h,0d8h,0d8h	; b1a3  ................
	defb 0dch	; b1b3

; ======================================================================
; CODIGO 0xb1b4..0xb21e  (106 bytes)
; ======================================================================


L_B1B4:
	ld de,0f000h		;b1b4
	ld b,001h		;b1b7
L_B1B9:
	push bc			;b1b9
	ld a,(ix+005h)		;b1ba
	add a,d			;b1bd
	ld d,a			;b1be
	ld a,(ix+003h)		;b1bf
	add a,e			;b1c2
	ld e,a			;b1c3
	ld bc,00000h		;b1c4
	ld a,03ah		;b1c7
	call 0764fh		;b1c9
	pop bc			;b1cc
	ld e,040h		;b1cd
	djnz L_B1B9		;b1cf
	ret			;b1d1
L_B1D2:
	ld a,(0e604h)		;b1d2
	ld (0ef80h),a		;b1d5
	ld a,(0e606h)		;b1d8
	ld (0ef81h),a		;b1db
	ld a,(0e389h)		;b1de
	add a,a			;b1e1
	add a,080h		;b1e2
	ld (0e46eh),a		;b1e4
	ld e,(ix+004h)		;b1e7
	ld d,(ix+006h)		;b1ea
	call 0640bh		;b1ed
L_B1F0:
	call 0639dh		;b1f0
L_B1F3:
	call 0786eh		;b1f3
L_B1F6:
	ret			;b1f6
L_B1F7:
	call L_B215		;b1f7
L_B1FA:
	ld a,(ix+006h)		;b1fa
	sub 008h		;b1fd
	ld h,a			;b1ff
	ld l,(ix+004h)		;b200
	call 07fbdh		;b203
L_B206:
	ret nc			;b206
	inc hl			;b207
	ld a,r		;b208
	and 003h		;b20a
	add a,0bch		;b20c
	ld (hl),a			;b20e
	call 075d1h		;b20f
L_B212:
	jp 058edh		;b212
L_B215:
	ld hl,0b21eh		;b215
	ld bc,00704h		;b218
	jp 07f7ch		;b21b

; ----------------------------------------------------------------------
; DATOS leido_B21E: 4 bytes que lee p00:4A73 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4A73 (4 bytes)
;   0xb21e..0xb222  (4 bytes)
DATA_leido_B21E:
	defb 0c0h,0c4h,0c8h,0cch	; b21e

; ======================================================================
; CODIGO 0xb222..0xb41f  (509 bytes)
; ======================================================================


L_B222:
	ld (ix+02eh),004h		;b222
	ld (ix+02fh),000h		;b226
	ld (ix+010h),007h		;b22a
	ld de,0fc00h		;b22e
	ld hl,00400h		;b231
	call 078d7h		;b234
L_B237:
	ld a,(ix+030h)		;b237
	ld (ix+036h),a		;b23a
	ld (ix+03ah),a		;b23d
	ld (ix+03eh),a		;b240
	ld a,00fh		;b243
	ld (ix+037h),a		;b245
	ld (ix+03bh),a		;b248
	ld (ix+03fh),a		;b24b
	ld a,0e0h		;b24e
	ld (ix+034h),a		;b250
	ld (ix+038h),a		;b253
	ld (ix+03ch),a		;b256
	ld a,(ix+01fh)		;b259
	or a			;b25c
	ld hl,0ebc0h		;b25d
	jr z,L_B265		;b260
	ld hl,0ebd2h		;b262
L_B265:
	ld e,(ix+004h)		;b265
	ld d,(ix+006h)		;b268
	ld b,009h		;b26b
L_B26D:
	ld (hl),e			;b26d
	inc hl			;b26e
	ld (hl),d			;b26f
	inc hl			;b270
	djnz L_B26D		;b271
	ret			;b273
L_B274:
	call L_B395		;b274
	call L_B324		;b277
	ld a,(ix+001h)		;b27a
	dec a			;b27d
	jr z,L_B28A		;b27e
	ld a,(ix+006h)		;b280
	cp 0f0h		;b283
	ret nc			;b285
	inc (ix+001h)		;b286
	ret			;b289
L_B28A:
	ld c,000h		;b28a
	ld a,(ix+004h)		;b28c
	cp 004h		;b28f
	jr c,L_B2F0		;b291
	cp 0a0h		;b293
	jr nc,L_B2F0		;b295
	ld l,a			;b297
	inc c			;b298
	ld a,(0e363h)		;b299
	cp 0d0h		;b29c
	ld a,(ix+006h)		;b29e
	jr nc,L_B2AB		;b2a1
	cp 004h		;b2a3
	jr c,L_B2F0		;b2a5
	cp 0f0h		;b2a7
	jr nc,L_B2F0		;b2a9
L_B2AB:
	ld h,a			;b2ab
	call 04a46h		;b2ac
L_B2AF:
	ld (ix+02ch),l		;b2af
	ld (ix+02dh),h		;b2b2
	ld a,(0e405h)		;b2b5
	ld c,000h		;b2b8
	bit 7,(ix+008h)		;b2ba
	jr z,L_B2C6		;b2be
	inc hl			;b2c0
	cp (hl)			;b2c1
	jr c,L_B2F0		;b2c2
	jr L_B2CD		;b2c4
L_B2C6:
	ld de,00081h		;b2c6
	add hl,de			;b2c9
	cp (hl)			;b2ca
	jr c,L_B2F0		;b2cb
L_B2CD:
	inc c			;b2cd
	bit 7,(ix+00ah)		;b2ce
	jr z,L_B2E2		;b2d2
	ld l,(ix+02ch)		;b2d4
	ld h,(ix+02dh)		;b2d7
	ld de,00040h		;b2da
	add hl,de			;b2dd
	cp (hl)			;b2de
	jr c,L_B2F0		;b2df
	ret			;b2e1
L_B2E2:
	ld l,(ix+02ch)		;b2e2
	ld h,(ix+02dh)		;b2e5
	ld de,00042h		;b2e8
	add hl,de			;b2eb
	cp (hl)			;b2ec
	jr c,L_B2F0		;b2ed
	ret			;b2ef
L_B2F0:
	ld a,c			;b2f0
	or a			;b2f1
	jr z,L_B30C		;b2f2
	bit 7,(ix+00ah)		;b2f4
	ld a,0fch		;b2f8
	jr z,L_B2FE		;b2fa
	ld a,004h		;b2fc
L_B2FE:
	add a,(ix+006h)		;b2fe
	ld (ix+006h),a		;b301
	ld (ix+005h),000h		;b304
	call 078edh		;b308
L_B30B:
	ret			;b30b
L_B30C:
	bit 7,(ix+008h)		;b30c
	ld a,0fch		;b310
	jr z,L_B316		;b312
	ld a,004h		;b314
L_B316:
	add a,(ix+004h)		;b316
	ld (ix+004h),a		;b319
	ld (ix+003h),000h		;b31c
	call 078ddh		;b320
L_B323:
	ret			;b323
L_B324:
	ld a,(ix+01fh)		;b324
	or a			;b327
	ld hl,0ebceh		;b328
	jr z,L_B330		;b32b
	ld hl,0ebe0h		;b32d
L_B330:
	ld b,008h		;b330
L_B332:
	ld e,(hl)			;b332
	inc hl			;b333
	ld d,(hl)			;b334
	inc hl			;b335
	ld (hl),e			;b336
	inc hl			;b337
	ld (hl),d			;b338
	dec l			;b339
	dec l			;b33a
	dec l			;b33b
	dec l			;b33c
	dec l			;b33d
	djnz L_B332		;b33e
	ld a,(ix+01fh)		;b340
	or a			;b343
	ld hl,0ebc0h		;b344
	jr z,L_B34C		;b347
	ld hl,0ebd2h		;b349
L_B34C:
	ld e,(ix+004h)		;b34c
	ld d,(ix+006h)		;b34f
	ld (hl),e			;b352
	inc hl			;b353
	ld (hl),d			;b354
	ld a,(ix+01fh)		;b355
	or a			;b358
	ld hl,0ebc4h		;b359
	jr z,L_B361		;b35c
	ld hl,0ebd6h		;b35e
L_B361:
	ld e,(hl)			;b361
	inc hl			;b362
	ld d,(hl)			;b363
	ld (ix+034h),e		;b364
	ld (ix+035h),d		;b367
	ld a,(ix+01fh)		;b36a
	or a			;b36d
	ld hl,0ebcah		;b36e
	jr z,L_B376		;b371
	ld hl,0ebdch		;b373
L_B376:
	ld e,(hl)			;b376
	inc hl			;b377
	ld d,(hl)			;b378
	ld (ix+038h),e		;b379
	ld (ix+039h),d		;b37c
	ld a,(ix+01fh)		;b37f
	or a			;b382
	ld hl,0ebd0h		;b383
	jr z,L_B38B		;b386
	ld hl,0ebe2h		;b388
L_B38B:
	ld e,(hl)			;b38b
	inc hl			;b38c
	ld d,(hl)			;b38d
	ld (ix+03ch),e		;b38e
	ld (ix+03dh),d		;b391
	ret			;b394
L_B395:
	ld a,(0e303h)		;b395
	bit 1,a		;b398
	ld bc,0050bh		;b39a
	jr z,L_B3A2		;b39d
	ld bc,0070eh		;b39f
L_B3A2:
	ld (ix+031h),b		;b3a2
	ld (ix+037h),c		;b3a5
	ld (ix+03bh),c		;b3a8
	ld (ix+03fh),c		;b3ab
	ret			;b3ae
L_B3AF:
	push hl			;b3af
	push bc			;b3b0
	ld hl,00000h		;b3b1
	ld (0e520h),hl		;b3b4
	ld hl,0e522h		;b3b7
	ld b,008h		;b3ba
L_B3BC:
	ld (hl),000h		;b3bc
	inc hl			;b3be
	djnz L_B3BC		;b3bf
	pop bc			;b3c1
	pop hl			;b3c2
	ret			;b3c3
L_B3C4:
	ld a,(0e39ah)		;b3c4
	and a			;b3c7
	ret nz			;b3c8
	ld a,(0e600h)		;b3c9
	dec a			;b3cc
	ret m			;b3cd
	call L_B461		;b3ce
	and a			;b3d1
	ret z			;b3d2
	ld hl,0e521h		;b3d3
	cp (hl)			;b3d6
	ret z			;b3d7
	ld (hl),a			;b3d8
	ld c,a			;b3d9
	cp 00dh		;b3da
	jr z,L_B3EE		;b3dc
	ld hl,0e520h		;b3de
	ld a,(hl)			;b3e1
	cp 008h		;b3e2
	ret nc			;b3e4
	inc (hl)			;b3e5
	ld hl,0e522h		;b3e6
	call 04089h		;b3e9
	ld (hl),c			;b3ec
	ret			;b3ed
L_B3EE:
	ld hl,L_B3AF		;b3ee
	push hl			;b3f1
	ld bc,00400h		;b3f2
L_B3F5:
	push bc			;b3f5
	call L_B400		;b3f6
	pop bc			;b3f9
	jr nc,L_B416		;b3fa
	inc c			;b3fc
	djnz L_B3F5		;b3fd
	ret			;b3ff
L_B400:
	ld hl,0b443h		;b400
	ld a,c			;b403
	call 04a5ah		;b404
	ex de,hl			;b407
	ld hl,0e522h		;b408
L_B40B:
	ld a,(de)			;b40b
	cp 00dh		;b40c
	ret z			;b40e
	cp (hl)			;b40f
	inc de			;b410
	inc hl			;b411
	jr z,L_B40B		;b412
	scf			;b414
	ret			;b415
L_B416:
	ld a,001h		;b416
	ld (0e39ah),a		;b418
	ld a,c			;b41b
	call 04093h		;b41c

; ----------------------------------------------------------------------
; DATOS tabla_B41F: 4 destinos del despachador p00:4093 (call en p19:B41C, el
;   indice en A): B427, B42D, B433, B439; lo leen p19:B41C (8 bytes)
;   0xb41f..0xb427  (8 bytes)
DATA_tabla_B41F:
	defw 0b427h,0b42dh,0b433h,0b439h	; b41f  -> L_B427 L_B42D L_B433 L_B439

; ======================================================================
; CODIGO 0xb427..0xb443  (28 bytes)
; ======================================================================


L_B427:
	ld a,001h		;b427
	ld (0e39ch),a		;b429
	ret			;b42c
L_B42D:
	ld a,001h		;b42d
	ld (0e39eh),a		;b42f
	ret			;b432
L_B433:
	ld a,002h		;b433
	ld (0e39dh),a		;b435
	ret			;b438
L_B439:
	xor a			;b439
	ld (0e39bh),a		;b43a
	ld a,001h		;b43d
	ld (0e39dh),a		;b43f
	ret			;b442

; ----------------------------------------------------------------------
; DATOS tabla_B443: tabla que se lee desde HL = 0xB443 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:B400 (30 bytes)
;   0xb443..0xb461  (30 bytes)
DATA_tabla_B443:
	defb 04bh,0b4h,050h,0b4h,057h,0b4h,05ch,0b4h,046h,049h,04eh,044h,00dh,045h,058h,050h	; b443  K.P.W.\.FIND.EXP
	defb 041h,04eh,044h,00dh,047h,04fh,04fh,044h,00dh,048h,041h,052h,044h,00dh	; b453  AND.GOOD.HARD.

; ======================================================================
; CODIGO 0xb461..0xb489  (40 bytes)
; ======================================================================


L_B461:
	ld b,008h		;b461
	ld e,000h		;b463
L_B465:
	ld a,e			;b465
	call 00141h		;b466   ; BIOS SNSMAT - Returns the value of the specified line from the keyboard matrix
	cpl			;b469
	and a			;b46a
	jr nz,L_B475		;b46b
	inc e			;b46d
	djnz L_B465		;b46e
	xor a			;b470
	ld (0e521h),a		;b471
	ret			;b474
L_B475:
	ld b,a			;b475
	ld a,e			;b476
	add a,a			;b477
	add a,a			;b478
	add a,a			;b479
	ld hl,0b489h		;b47a
	call 04089h		;b47d
	ld a,b			;b480
L_B481:
	rra			;b481
	jr c,L_B487		;b482
	inc hl			;b484
	jr L_B481		;b485
L_B487:
	ld a,(hl)			;b487
	ret			;b488

; ----------------------------------------------------------------------
; DATOS tabla_B489: tabla que se lee desde HL = 0xB489 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p19:B47A (72 bytes)
;   0xb489..0xb4d1  (72 bytes)
DATA_tabla_B489:
	defb 030h,031h,032h,033h,034h,035h,036h,037h,038h,039h,02dh,05eh,009h,040h,05bh,03bh	; b489  0123456789-^.@[.
	defb 03ah,05dh,02ch,02eh,02fh,05fh,041h,042h,043h,044h,045h,046h,047h,048h,049h,04ah	; b499  :],./_ABCDEFGHIJ
	defb 04bh,04ch,04dh,04eh,04fh,050h,051h,052h,053h,054h,055h,056h,057h,058h,059h,05ah	; b4a9  KLMNOPQRSTUVWXYZ
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,000h,00dh	; b4b9  ................
	defb 000h,000h,000h,000h,000h,000h,000h,000h	; b4c9  ........

; ======================================================================
; CODIGO 0xb4d1..0xb512  (65 bytes)
; ======================================================================


L_B4D1:
	xor a			;b4d1
	ld (0e309h),a		;b4d2
	ld (0e33ch),a		;b4d5
	inc a			;b4d8
	ld (0e31ah),a		;b4d9
	call L_B4FE		;b4dc
	ld hl,00001h		;b4df
	ld (0e340h),hl		;b4e2
	xor a			;b4e5
	ld r,a		;b4e6
	ld (0e303h),a		;b4e8
	ld (0e342h),a		;b4eb
	ld (0e343h),a		;b4ee
	ld (0e36ah),a		;b4f1
	ld (0e430h),a		;b4f4
	ld hl,00020h		;b4f7
	ld (0e363h),hl		;b4fa
	ret			;b4fd
L_B4FE:
	ld a,(0e361h)		;b4fe
	add a,a			;b501
	add a,a			;b502
	ld hl,0b50eh		;b503
	call 04089h		;b506
	ld de,0e37eh		;b509
	ld bc,00004h		;b50c
	ldir		;b50f
	ret			;b511

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb512..0xb51e  (12 bytes)
DATA_B512:
	defb 000h,001h,001h,000h,001h,001h,002h,000h,002h,001h,003h,000h	; b512  ............

; ======================================================================
; CODIGO 0xb51e..0xb559  (59 bytes)
; ======================================================================


L_B51E:
	xor a			;b51e
	ld (0e36fh),a		;b51f
	inc a			;b522
	ld (0e610h),a		;b523
	inc a			;b526
	ld (0e620h),a		;b527
	ld (0e608h),a		;b52a
	inc a			;b52d
	ld (0e600h),a		;b52e
	ld (0e602h),a		;b531
	ld a,07fh		;b534
	ld (0e601h),a		;b536
	ld a,(0e361h)		;b539
	ld b,a			;b53c
	add a,a			;b53d
	add a,b			;b53e
	ld hl,lb556h		;b53f
	call 04089h		;b542
	ld de,0e630h		;b545
	ld bc,00003h		;b548
	ldir		;b54b
	ld hl,0b562h		;b54d
	ld de,0e434h		;b550
	ld bc,00008h		;b553
L_B556:
	ldir		;b556
	ret			;b558

; ----------------------------------------------------------------------
; DATOS resto_B559: lo apuntan con el banco puesto p19:B54D (0xB562); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p19:B54D (15 bytes)
;   0xb559..0xb568  (15 bytes)
DATA_resto_B559:
	defb 005h,000h,011h,00ah,000h,012h,00ah,000h,010h,003h,0ffh,000h,000h,0ffh,0ffh	; b559  ...............

; ----------------------------------------------------------------------
; DATOS tabla_B568: tabla que se lee desde HL = 0xB568 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p00:5D96 (572 bytes)
;   0xb568..0xb7a4  (572 bytes)
DATA_tabla_B568:
	defb 0ffh,0ffh,070h,0b5h,0ddh,0b5h,07ah,0b6h,012h,000h,008h,004h,003h,006h,010h,002h	; b568  ..p...z.........
	defb 02eh,000h,01eh,001h,046h,000h,001h,002h,007h,00ah,014h,002h,003h,006h,003h,004h	; b578  ....F...........
	defb 03eh,000h,019h,001h,005h,008h,001h,00ah,01bh,002h,018h,000h,004h,002h,0a0h,000h	; b588  >...............
	defb 007h,008h,009h,009h,00ah,001h,009h,005h,052h,000h,00eh,008h,002h,00ah,00bh,002h	; b598  ........R.......
	defb 00fh,000h,010h,002h,09ah,000h,002h,008h,00ch,009h,00dh,001h,006h,005h,003h,004h	; b5a8  ................
	defb 009h,002h,001h,006h,009h,004h,019h,000h,005h,004h,012h,000h,009h,004h,001h,005h	; b5b8  ................
	defb 00dh,001h,016h,000h,007h,006h,018h,002h,00bh,00ah,008h,000h,007h,004h,027h,000h	; b5c8  ..............'.
	defb 006h,004h,004h,005h,0ffh,026h,000h,006h,004h,003h,005h,008h,001h,026h,000h,016h	; b5d8  .....&.......&..
	defb 002h,00eh,000h,013h,001h,04ch,000h,002h,001h,004h,008h,006h,00ah,00bh,002h,063h	; b5e8  .....L.........c
	defb 000h,002h,008h,009h,001h,077h,000h,002h,008h,006h,00ah,004h,002h,038h,000h,007h	; b5f8  .....w.......8..
	defb 001h,007h,005h,003h,004h,058h,000h,007h,002h,008h,000h,009h,008h,008h,00ah,002h	; b608  .....X..........
	defb 002h,018h,000h,004h,004h,021h,000h,008h,004h,011h,000h,00eh,001h,014h,000h,004h	; b618  .....!..........
	defb 004h,00bh,000h,005h,002h,00fh,000h,003h,004h,006h,000h,001h,004h,001h,000h,005h	; b628  ................
	defb 002h,005h,000h,005h,008h,008h,00ah,004h,008h,004h,001h,006h,005h,00fh,004h,014h	; b638  ................
	defb 000h,003h,002h,009h,00ah,001h,008h,002h,000h,005h,008h,001h,009h,005h,001h,005h	; b648  ................
	defb 005h,001h,001h,00eh,000h,006h,001h,008h,000h,002h,001h,008h,000h,00ch,004h,009h	; b658  ................
	defb 005h,001h,004h,001h,000h,001h,004h,001h,006h,001h,002h,005h,000h,00ch,00ah,004h	; b668  ................
	defb 002h,0ffh,06bh,000h,00fh,002h,030h,000h,01dh,001h,019h,000h,022h,002h,023h,000h	; b678  ..k...0.....".#.
	defb 024h,001h,01eh,000h,023h,002h,01eh,000h,024h,001h,018h,000h,025h,002h,024h,000h	; b688  $...#...$...%.$.
	defb 00ch,008h,009h,000h,005h,004h,002h,005h,015h,001h,01ah,000h,006h,00ah,00eh,000h	; b698  ................
	defb 005h,008h,00fh,000h,00ah,004h,006h,000h,004h,008h,016h,000h,007h,004h,020h,000h	; b6a8  .............. .
	defb 005h,004h,003h,000h,001h,008h,005h,00ah,001h,008h,007h,009h,001h,001h,00bh,000h	; b6b8  ................
	defb 005h,008h,010h,000h,003h,00ah,002h,000h,00fh,004h,01bh,000h,001h,008h,003h,00ah	; b6c8  ................
	defb 003h,008h,006h,009h,001h,001h,006h,005h,00ch,004h,02dh,000h,006h,002h,020h,000h	; b6d8  ..........-... .
	defb 005h,004h,001h,000h,009h,008h,00eh,000h,005h,004h,056h,000h,003h,002h,017h,000h	; b6e8  ..........V.....
	defb 006h,008h,010h,000h,013h,004h,004h,000h,004h,004h,00ch,000h,008h,008h,00dh,000h	; b6f8  ................
	defb 003h,008h,015h,000h,006h,001h,00ch,000h,003h,004h,018h,000h,004h,001h,004h,000h	; b708  ................
	defb 004h,008h,005h,00ah,001h,002h,003h,000h,005h,002h,004h,000h,004h,002h,005h,000h	; b718  ................
	defb 001h,002h,002h,00ah,004h,002h,003h,000h,018h,002h,001h,00ah,001h,000h,004h,001h	; b728  ................
	defb 006h,000h,004h,001h,005h,000h,002h,001h,005h,008h,003h,009h,004h,008h,002h,000h	; b738  ................
	defb 007h,002h,004h,000h,001h,002h,004h,006h,002h,000h,004h,002h,002h,000h,001h,002h	; b748  ................
	defb 002h,006h,001h,002h,009h,000h,007h,00ah,006h,000h,003h,00ah,001h,002h,007h,000h	; b758  ................
	defb 004h,002h,00dh,000h,004h,002h,008h,000h,004h,002h,006h,000h,001h,002h,003h,00ah	; b768  ................
	defb 001h,002h,002h,000h,003h,002h,006h,000h,009h,00ah,002h,002h,004h,000h,004h,002h	; b778  ................
	defb 004h,000h,00fh,002h,005h,000h,005h,002h,039h,000h,003h,008h,002h,009h,004h,001h	; b788  ........9.......
	defb 001h,005h,002h,004h,008h,006h,003h,004h,01ah,000h,003h,004h	; b798  ............

; ----------------------------------------------------------------------
; DATOS relleno_ff: 2140 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (2140 bytes)
;   0xb7a4..0xc000  (2140 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b7a4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b7b4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b7c4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b7d4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b7e4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b7f4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b804  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b814  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b824  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b834  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b844  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b854  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b864  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b874  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b884  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b894  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b8a4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b8b4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b8c4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b8d4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b8e4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b8f4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b904  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b914  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b924  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b934  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b944  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b954  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b964  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b974  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b984  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b994  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b9a4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b9b4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b9c4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b9d4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b9e4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b9f4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba04  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba14  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba24  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba34  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba44  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba54  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba64  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba74  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba84  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; ba94  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; baa4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bab4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bac4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bad4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bae4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; baf4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb04  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb14  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb24  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb34  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb44  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb54  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb64  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb74  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb84  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bb94  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bba4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bbb4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bbc4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bbd4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bbe4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bbf4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc04  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc14  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc24  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc34  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc44  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc54  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc64  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc74  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc84  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bc94  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bca4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bcb4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bcc4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bcd4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bce4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bcf4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd04  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd14  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd24  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd34  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd44  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd54  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd64  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd74  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd84  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd94  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bda4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdb4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdc4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdd4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bde4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdf4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be04  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be14  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be24  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be34  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be44  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be54  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be64  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be74  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be84  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be94  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bea4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beb4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bec4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bed4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bee4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bef4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf04  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf14  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf24  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf34  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf44  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf54  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf64  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf74  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf84  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf94  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfa4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe4  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff4  ............

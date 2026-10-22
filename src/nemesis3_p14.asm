; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 14 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; DATOS graficos_6000: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FB3 (7 bytes)
;   0x6000..0x6007  (7 bytes)
DATA_graficos_6000:
	defb 007h,01ah,060h,001h,079h,061h	; 6000
	defb 000h	; 6006

; ----------------------------------------------------------------------
; DATOS graficos_6007: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; se solapan 2 bloques: (graficos_6013 6013-601A); lo leen p00:4FC0,
;   p00:4FCD (19 bytes)
;   0x6007..0x601a  (19 bytes)
DATA_graficos_6007:
	defb 001h,0f9h,062h,038h,0d4h,063h	; 6007
	defb 001h,0a3h,063h,04eh,040h,064h	; 600d
	defb 001h,033h,063h,040h,005h,064h	; 6013
	defb 000h	; 6019

; ----------------------------------------------------------------------
; DATOS rle_601A: los dibujos de una entrada de la lista de graficos de
;   14:6000, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_601A
;   601A-6179); lo leen p00:4CFF, p00:4B3C (351 bytes)
;   0x601a..0x6179  (351 bytes)
DATA_rle_601A:
	defb 082h,0b0h,020h,008h,000h,082h,0b0h,020h,008h,000h,082h,0b0h,020h,008h,000h,084h	; 601a  .. .... .... ...
	defb 0b0h,020h,055h,0aah,008h,000h,082h,055h,0aah,008h,000h,082h,055h,0aah,008h,000h	; 602a  . U....U....U...
	defb 091h,055h,0aah,099h,099h,0cch,0cch,066h,066h,033h,033h,004h,006h,006h,005h,009h	; 603a  .U.....ff33.....
	defb 088h,088h,003h,048h,002h,028h,002h,030h,002h,010h,089h,012h,044h,002h,0deh,07bh	; 604a  ...H.(.0....D..{
	defb 040h,022h,048h,060h,016h,090h,09dh,060h,055h,0eeh,0ddh,0bbh,0bbh,0ddh,0eeh,055h	; 605a  @"H`...`U......U
	defb 034h,018h,02ch,018h,034h,018h,02ch,018h,0ffh,00ah,02ah,06ah,048h,001h,001h,003h	; 606a  4.,.4.,...*jH...
	defb 000h,0f8h,08ah,003h,003h,0f8h,08ah,0f0h,003h,001h,001h,048h,06ah,02ah,00ah,0ffh	; 607a  ...........Hj*..
	defb 0f0h,003h,0f8h,090h,003h,08ah,0f8h,000h,0ffh,00ah,02ah,06ah,048h,001h,001h,003h	; 608a  ..........*jH...
	defb 000h,0f8h,08ah,003h,003h,0f8h,08ah,0f0h,003h,001h,001h,048h,06ah,02ah,00ah,000h	; 609a  ...........Hj*..
	defb 0f0h,003h,0f8h,0a3h,003h,08ah,0f8h,000h,00ah,02ah,07bh,0cah,07ah,0fbh,000h,007h	; 60aa  .........*{.z...
	defb 0f0h,0fch,08eh,0ffh,0a9h,0afh,000h,01fh,000h,0fbh,07ah,0cah,07bh,02ah,00ah,000h	; 60ba  ..........z.{*..
	defb 000h,0afh,0a9h,0ffh,08eh,0fch,0f0h,003h,000h,081h,020h,008h,000h,081h,002h,004h	; 60ca  .......... .....
	defb 000h,0a1h,040h,030h,020h,008h,006h,007h,003h,003h,000h,018h,030h,0ffh,01ch,0e2h	; 60da  ..@0 .......0...
	defb 0e1h,0ffh,000h,001h,00fh,01ch,078h,0f8h,051h,0ffh,000h,0c0h,020h,010h,000h,00ch	; 60ea  ......x.Q... ...
	defb 0c4h,0f0h,00fh,005h,01fh,09bh,00fh,007h,039h,03fh,03fh,07fh,03fh,01fh,03eh,081h	; 60fa  ........9??.?.>.
	defb 0f0h,0f8h,084h,0c4h,0e8h,0c0h,0b8h,0fch,003h,007h,00fh,01fh,01fh,05fh,0cfh,006h	; 610a  ............._..
	defb 039h,003h,03fh,091h,0c0h,01ch,03eh,000h,0fch,0feh,0e0h,00ch,09ch,03ch,098h,080h	; 611a  9.?...>......<..
	defb 000h,071h,063h,003h,001h,003h,000h,095h,082h,03ch,07ch,07eh,0f8h,0fch,030h,071h	; 612a  .qc......<|~..0q
	defb 0b8h,028h,0eeh,0fch,0feh,0feh,0fch,0f8h,007h,003h,060h,0e0h,0c0h,006h,000h,083h	; 613a  .(........`.....
	defb 018h,03ch,018h,007h,000h,09bh,010h,066h,0c4h,0c1h,0c3h,00fh,01fh,03fh,03fh,01fh	; 614a  .<.....f.....??.
	defb 007h,080h,0c0h,0c6h,0c6h,080h,0e0h,0f1h,0f9h,01fh,01fh,03fh,03fh,01fh,0bfh,0bfh	; 615a  ...........??...
	defb 01eh,008h,000h,008h,0ffh,088h,099h,066h,0c3h,0a5h,08dh,0c3h,066h,099h,000h	; 616a  .......f....f..

; ----------------------------------------------------------------------
; DATOS rle_6179: los colores de una entrada de la lista de graficos de
;   14:6000, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6179
;   6179-62F9); lo leen p00:4D11, p00:4B3C (384 bytes)
;   0x6179..0x62f9  (384 bytes)
DATA_rle_6179:
	defb 082h,0f0h,040h,009h,0f0h,081h,040h,009h,0f0h,081h,040h,009h,0f0h,085h,040h,074h	; 6179  ..@...@...@...@t
	defb 054h,040h,050h,006h,0f0h,084h,074h,054h,040h,050h,006h,0f0h,087h,074h,054h,040h	; 6189  T@P...tT@P...tT@
	defb 050h,040h,050h,070h,003h,0f0h,089h,074h,054h,040h,050h,070h,0f0h,0f0h,070h,050h	; 6199  P@Pp...tT@Pp..pP
	defb 004h,040h,002h,050h,002h,070h,002h,0f0h,002h,070h,002h,050h,003h,040h,090h,0a4h	; 61a9  .@.P.p...p.P.@..
	defb 0b5h,0d7h,0f8h,0f8h,0d7h,0b5h,0a4h,070h,070h,050h,050h,040h,040h,050h,050h,003h	; 61b9  .......ppPP@@PP.
	defb 070h,002h,0f0h,003h,070h,002h,050h,002h,040h,002h,050h,002h,070h,002h,080h,090h	; 61c9  p...p.P.@.P.p...
	defb 098h,0bah,0a9h,098h,080h,080h,050h,0f0h,070h,0f0h,050h,0f0h,040h,0f0h,000h,0f0h	; 61d9  ......P.p.P.@...
	defb 003h,0e0h,08eh,060h,086h,098h,080h,0f0h,0e0h,0e0h,060h,086h,098h,0a9h,098h,086h	; 61e9  ...`......`.....
	defb 060h,003h,0e0h,08bh,0f0h,000h,0a9h,098h,086h,060h,0e0h,0e0h,0f0h,050h,000h,004h	; 61f9  `........`...P..
	defb 0e0h,084h,040h,054h,075h,050h,003h,0e0h,087h,040h,054h,074h,0f7h,075h,054h,040h	; 6209  ..@TuP...@Tt.uT@
	defb 004h,0e0h,085h,0f0h,0f7h,074h,054h,040h,003h,0e0h,08bh,0f0h,050h,0f0h,0e0h,0e0h	; 6219  .....tT@....P...
	defb 050h,040h,040h,098h,050h,0f0h,003h,0e0h,002h,050h,087h,0a9h,040h,040h,050h,0e0h	; 6229  P@@.P....P..@@P.
	defb 0e0h,0f0h,004h,050h,003h,0e0h,086h,0f0h,050h,050h,080h,0f0h,0b0h,005h,0f0h,0b2h	; 6239  ...P....PP......
	defb 080h,090h,0b0h,070h,090h,080h,0f0h,0f0h,0b0h,0a0h,090h,0a0h,0a0h,090h,090h,0a0h	; 6249  ...p............
	defb 0f0h,0a0h,090h,000h,0a0h,0b0h,0a0h,099h,0f0h,0a0h,090h,090h,0a0h,0b9h,0a9h,099h	; 6259  ................
	defb 0f0h,0f0h,0a0h,090h,0f0h,090h,0a0h,090h,090h,0a0h,0f0h,0f0h,0b0h,0a0h,0a0h,090h	; 6269  ................
	defb 0a9h,0b9h,003h,0fbh,089h,0f9h,0a9h,0a9h,0f0h,0a0h,0b0h,0a0h,090h,090h,003h,0a0h	; 6279  ................
	defb 002h,0f0h,002h,0b0h,0b0h,0a0h,090h,090h,0a9h,0b9h,0fbh,0fbh,0b9h,0a9h,0f9h,0a9h	; 6289  ................
	defb 0f0h,0b0h,0bah,0a9h,0a9h,090h,090h,0a0h,0b0h,090h,0a0h,0a0h,0b0h,0a0h,090h,0f0h	; 6299  ................
	defb 0bah,0b9h,0f9h,0f9h,0fbh,0a9h,0a9h,090h,0a0h,0a9h,090h,0a0h,0f0h,0f0h,0a0h,090h	; 62a9  ................
	defb 0a0h,090h,0b0h,0a0h,090h,007h,0f0h,086h,0a0h,090h,0f0h,0f0h,0a0h,090h,003h,0f0h	; 62b9  ................
	defb 002h,090h,002h,0a0h,097h,090h,0b0h,0f0h,0b0h,0a0h,090h,090h,0a0h,090h,0b0h,090h	; 62c9  ................
	defb 0a0h,090h,0f0h,0b0h,090h,0a0h,0b0h,0f0h,0b0h,0a0h,090h,090h,008h,000h,090h,0b0h	; 62d9  ................
	defb 0f0h,0b0h,0f0h,0b0h,0f0h,0b0h,0f0h,0f0h,0e0h,0ech,0f7h,0f7h,0ech,0e0h,0f0h,000h	; 62e9  ................

; ----------------------------------------------------------------------
; DATOS rle_62F9: los dibujos de una entrada de la lista de graficos de
;   14:6007, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_62F9
;   62F9-6333); lo leen p00:4CFF, p00:4B3C (58 bytes)
;   0x62f9..0x6333  (58 bytes)
DATA_rle_62F9:
	defb 082h,0ffh,000h,005h,07fh,083h,000h,0ffh,000h,005h,0feh,083h,000h,0ffh,000h,005h	; 62f9  ................
	defb 01fh,083h,000h,0ffh,000h,005h,0f8h,0a1h,000h,0ffh,000h,070h,04ch,043h,04ch,070h	; 6309  ...........pLCLp
	defb 000h,0ffh,000h,00eh,032h,0c2h,032h,00eh,000h,0ffh,000h,070h,04ch,043h,04ch,070h	; 6319  ....2.2....pLCLp
	defb 000h,0ffh,000h,00eh,032h,0c2h,032h,00eh,000h,000h	; 6329  ....2.2...

; ----------------------------------------------------------------------
; DATOS rle_6333: los dibujos de una entrada de la lista de graficos de
;   14:6007, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6333
;   6333-63A3); lo leen p00:4CFF, p00:4B3C (112 bytes)
;   0x6333..0x63a3  (112 bytes)
DATA_rle_6333:
	defb 083h,0ffh,000h,0fch,003h,0cch,086h,0fch,0ffh,0ffh,000h,030h,070h,003h,030h,002h	; 6333  ...........0p.0.
	defb 0ffh,091h,000h,0fch,00ch,0fch,0c0h,0fch,0ffh,0ffh,000h,0fch,00ch,0fch,00ch,0fch	; 6343  ................
	defb 0ffh,0ffh,000h,003h,0d8h,0c5h,0fch,018h,0ffh,0ffh,000h,0fch,0c0h,0fch,00ch,0fch	; 6353  ................
	defb 0ffh,0ffh,000h,0fch,0c0h,0fch,0c4h,0fch,0ffh,0ffh,000h,0fch,0cch,0cch,00ch,00ch	; 6363  ................
	defb 0ffh,0ffh,000h,0fch,0cch,0fch,0cch,0fch,0ffh,0ffh,000h,0fch,0cch,0fch,00ch,00ch	; 6373  ................
	defb 0ffh,0ffh,000h,008h,008h,01ch,036h,000h,0ffh,0ffh,000h,0fch,0cch,0fch,0c0h,0c0h	; 6383  ......6.........
	defb 0ffh,0ffh,000h,019h,019h,01fh,019h,019h,0ffh,0ffh,000h,005h,098h,081h,0ffh,000h	; 6393  ................

; ----------------------------------------------------------------------
; DATOS rle_63A3: los dibujos de una entrada de la lista de graficos de
;   14:6007, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_63A3
;   63A3-63D4); lo leen p00:4CFF, p00:4B3C (49 bytes)
;   0x63a3..0x63d4  (49 bytes)
DATA_rle_63A3:
	defb 081h,0ffh,003h,0fdh,085h,0f5h,0fdh,081h,0ffh,0ffh,007h,000h,081h,0ffh,007h,000h	; 63a3  ................
	defb 081h,0ffh,007h,000h,081h,0ffh,007h,000h,081h,0ffh,007h,000h,081h,0ffh,007h,000h	; 63b3  ................
	defb 081h,0ffh,007h,000h,081h,0ffh,007h,000h,081h,0ffh,007h,000h,081h,0ffh,007h,000h	; 63c3  ................
	defb 000h	; 63d3

; ----------------------------------------------------------------------
; DATOS rle_63D4: los colores de una entrada de la lista de graficos de
;   14:6007, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_63D4
;   63D4-6405); lo leen p00:4D11, p00:4B3C (49 bytes)
;   0x63d4..0x6405  (49 bytes)
DATA_rle_63D4:
	defb 083h,0e0h,000h,0c0h,003h,020h,085h,0c0h,000h,0e0h,000h,0c0h,003h,020h,093h,0c0h	; 63d4  ..... ....... ..
	defb 000h,0e0h,000h,086h,098h,0a9h,098h,086h,010h,0e0h,000h,086h,098h,0a9h,098h,086h	; 63e4  ................
	defb 000h,0e0h,007h,0c0h,081h,0e0h,007h,0c0h,081h,0e0h,007h,080h,081h,0e0h,007h,080h	; 63f4  ................
	defb 000h	; 6404

; ----------------------------------------------------------------------
; DATOS rle_6405: los colores de una entrada de la lista de graficos de
;   14:6007, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6405
;   6405-6440); lo leen p00:4D11, p00:4B3C (59 bytes)
;   0x6405..0x6440  (59 bytes)
DATA_rle_6405:
	defb 081h,0e0h,006h,050h,002h,0e0h,006h,050h,002h,0e0h,006h,050h,002h,0e0h,006h,050h	; 6405  ...P...P...P...P
	defb 002h,0e0h,006h,050h,002h,0e0h,006h,050h,002h,0e0h,006h,050h,002h,0e0h,006h,050h	; 6415  ...P...P...P...P
	defb 002h,0e0h,006h,050h,002h,0e0h,006h,050h,002h,0e0h,006h,0f0h,002h,0e0h,006h,050h	; 6425  ...P...P.......P
	defb 002h,0e0h,006h,080h,002h,0e0h,006h,080h,081h,0e0h,000h	; 6435  ...........

; ----------------------------------------------------------------------
; DATOS rle_6440: los colores de una entrada de la lista de graficos de
;   14:6007, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6440
;   6440-646C); lo leen p00:4D11, p00:4B3C (44 bytes)
;   0x6440..0x646c  (44 bytes)
DATA_rle_6440:
	defb 082h,0e0h,0f0h,007h,0e0h,007h,0a0h,081h,0e0h,007h,0a0h,081h,0e0h,007h,0a0h,081h	; 6440  ................
	defb 0e0h,007h,0a0h,081h,0e0h,007h,0a0h,081h,0e0h,007h,0a0h,081h,0e0h,007h,0a0h,081h	; 6450  ................
	defb 0e0h,007h,0a0h,081h,0e0h,007h,0a0h,081h,0e0h,007h,0a0h,000h	; 6460  ............

; ----------------------------------------------------------------------
; DATOS tabla_646C: tabla que se lee desde HL = 0x646C con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p00:4F6E (72 bytes)
;   0x646c..0x64b4  (72 bytes)
DATA_tabla_646C:
	defb 0b4h,064h,0fch,064h,044h,065h,08ch,065h,0d4h,065h,01ch,066h,064h,066h,0ach,066h	; 646c  .d.dDe.e.e.fdf.f
	defb 0f4h,066h,03ch,067h,084h,067h,0cch,067h,014h,068h,05ch,068h,0a4h,068h,0ech,068h	; 647c  .f<g.g.g.h\h.h.h
	defb 034h,069h,07ch,069h,0c4h,069h,00ch,06ah,054h,06ah,09ch,06ah,0e4h,06ah,02ch,06bh	; 648c  4i|i.i.jTj.j.j,k
	defb 074h,06bh,0bch,06bh,004h,06ch,04ch,06ch,094h,06ch,0dch,06ch,024h,06dh,06ch,06dh	; 649c  tk.k.lLl.l.l$mlm
	defb 0b4h,06dh,0fch,06dh,044h,06eh,08ch,06eh	; 64ac  .m.mDn.n

; ----------------------------------------------------------------------
; DATOS leido_64B4: 144 bytes que lee p00:4F76 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4F76 (144 bytes)
;   0x64b4..0x6544  (144 bytes)
DATA_leido_64B4:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 64b4  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,0f4h,086h,0f5h,084h,0f4h,000h	; 64c4  ................
	defb 0ffh,000h,05eh,0d2h,05eh,050h,050h,000h,0ffh,000h,0fah,021h,020h,020h,020h,000h	; 64d4  ..^.^PP....!   .
	defb 0ffh,000h,020h,040h,080h,080h,080h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 64e4  .. @............
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 64f4  ................
	defb 0ffh,000h,01eh,010h,01eh,002h,01eh,000h,0ffh,000h,0f7h,094h,0f7h,084h,087h,000h	; 6504  ................
	defb 0ffh,000h,0bdh,021h,0bdh,021h,0bdh,000h,0ffh,000h,0c1h,021h,021h,021h,0c1h,000h	; 6514  ...!.!.....!!!..
	defb 0ffh,000h,02fh,029h,02fh,028h,0e8h,000h,0ffh,000h,00ah,01fh,00ah,01fh,00ah,000h	; 6524  ../)/(..........
	defb 0ffh,000h,018h,008h,008h,008h,008h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6534  ................

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6544..0x66f4  (432 bytes)
DATA_6544:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,01eh,010h,01eh,002h,01eh,000h	; 6544  ................
	defb 0ffh,000h,0f7h,094h,0f7h,084h,087h,000h,0ffh,000h,0bdh,021h,0bdh,021h,0bdh,000h	; 6554  ...........!.!..
	defb 0ffh,000h,0c1h,021h,021h,021h,0c1h,000h,0ffh,000h,02fh,029h,02fh,028h,0e8h,000h	; 6564  ...!!!..../)/(..
	defb 0ffh,000h,00ah,01fh,00ah,01fh,00ah,000h,0ffh,000h,03ch,004h,03ch,020h,03ch,000h	; 6574  ..........<.< <.
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6584  ................
	defb 0ffh,000h,01eh,010h,01eh,002h,01eh,000h,0ffh,000h,0f7h,094h,0f7h,084h,087h,000h	; 6594  ................
	defb 0ffh,000h,0bdh,021h,0bdh,021h,0bdh,000h,0ffh,000h,0c1h,021h,021h,021h,0c1h,000h	; 65a4  ...!.!.....!!!..
	defb 0ffh,000h,02fh,029h,02fh,028h,0e8h,000h,0ffh,000h,00ah,01fh,00ah,01fh,00ah,000h	; 65b4  ../)/(..........
	defb 0ffh,000h,03ch,004h,01ch,004h,03ch,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 65c4  ..<...<.........
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,01eh,010h,01eh,002h,01eh,000h	; 65d4  ................
	defb 0ffh,000h,0f7h,094h,0f7h,084h,087h,000h,0ffh,000h,0bdh,021h,0bdh,021h,0bdh,000h	; 65e4  ...........!.!..
	defb 0ffh,000h,0c1h,021h,021h,021h,0c1h,000h,0ffh,000h,02fh,029h,02fh,028h,0e8h,000h	; 65f4  ...!!!..../)/(..
	defb 0ffh,000h,00ah,01fh,00ah,01fh,00ah,000h,0ffh,000h,038h,028h,028h,03ch,008h,000h	; 6604  ..........8((<..
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6614  ................
	defb 0ffh,000h,01eh,010h,01eh,002h,01eh,000h,0ffh,000h,0f7h,094h,0f7h,084h,087h,000h	; 6624  ................
	defb 0ffh,000h,0bdh,021h,0bdh,021h,0bdh,000h,0ffh,000h,0c1h,021h,021h,021h,0c1h,000h	; 6634  ...!.!.....!!!..
	defb 0ffh,000h,02fh,029h,02fh,028h,0e8h,000h,0ffh,000h,00ah,01fh,00ah,01fh,00ah,000h	; 6644  ../)/(..........
	defb 0ffh,000h,03ch,020h,03ch,004h,03ch,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6654  ..< <.<.........
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,01eh,010h,01eh,002h,01eh,000h	; 6664  ................
	defb 0ffh,000h,0f7h,094h,0f7h,084h,087h,000h,0ffh,000h,0bdh,021h,0bdh,021h,0bdh,000h	; 6674  ...........!.!..
	defb 0ffh,000h,0c1h,021h,021h,021h,0c1h,000h,0ffh,000h,02fh,029h,02fh,028h,0e8h,000h	; 6684  ...!!!..../)/(..
	defb 0ffh,000h,00ah,01fh,00ah,01fh,00ah,000h,0ffh,000h,03ch,020h,03ch,024h,03ch,000h	; 6694  ..........< <$<.
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 66a4  ................
	defb 0ffh,000h,01eh,010h,01eh,002h,01eh,000h,0ffh,000h,0f7h,094h,0f7h,084h,087h,000h	; 66b4  ................
	defb 0ffh,000h,0bdh,021h,0bdh,021h,0bdh,000h,0ffh,000h,0c1h,021h,021h,021h,0c1h,000h	; 66c4  ...!.!.....!!!..
	defb 0ffh,000h,02fh,029h,02fh,028h,0e8h,000h,0ffh,000h,00ah,01fh,00ah,01fh,00ah,000h	; 66d4  ../)/(..........
	defb 0ffh,000h,03ch,024h,004h,004h,004h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 66e4  ..<$............

; ----------------------------------------------------------------------
; DATOS leido_66F4: 72 bytes que lee p00:4F76 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4F76 (72 bytes)
;   0x66f4..0x673c  (72 bytes)
DATA_leido_66F4:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,022h,036h,02ah,022h,022h,000h	; 66f4  .........."6*"".
	defb 0ffh,000h,094h,094h,094h,094h,0f7h,000h,0ffh,000h,07dh,011h,011h,011h,091h,000h	; 6704  ..........}.....
	defb 0ffh,000h,03dh,025h,03dh,021h,021h,000h,0ffh,000h,00fh,008h,00fh,008h,0efh,000h	; 6714  ..=%=!!.........
	defb 0ffh,000h,005h,00fh,005h,00fh,005h,000h,0ffh,000h,00ch,084h,004h,084h,004h,000h	; 6724  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h	; 6734  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0x673c..0x6784  (72 bytes)
DATA_673C:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,022h,036h,02ah,022h,022h,000h	; 673c  .........."6*"".
	defb 0ffh,000h,094h,094h,094h,094h,0f7h,000h,0ffh,000h,07dh,011h,011h,011h,091h,000h	; 674c  ..........}.....
	defb 0ffh,000h,03dh,025h,03dh,021h,021h,000h,0ffh,000h,00fh,008h,00fh,008h,0efh,000h	; 675c  ..=%=!!.........
	defb 0ffh,000h,005h,00fh,005h,00fh,005h,000h,0ffh,000h,03ch,004h,03ch,020h,03ch,000h	; 676c  ..........<.< <.
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h	; 677c  ........

; ----------------------------------------------------------------------
; DATOS leido_6784: 72 bytes que lee p00:4F76 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4F76 (72 bytes)
;   0x6784..0x67cc  (72 bytes)
DATA_leido_6784:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6784  ................
	defb 0ffh,000h,003h,002h,003h,000h,003h,000h,0ffh,000h,0d2h,012h,0deh,052h,0d2h,000h	; 6794  .............R..
	defb 0ffh,000h,04fh,048h,04fh,048h,04fh,000h,0ffh,000h,043h,042h,042h,042h,07bh,000h	; 67a4  ..OHOHO...CBBB{.
	defb 0ffh,000h,080h,040h,040h,040h,080h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 67b4  ...@@@..........
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h	; 67c4  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0x67cc..0x6814  (72 bytes)
DATA_67CC:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,01eh,010h,01eh,010h,010h,000h	; 67cc  ................
	defb 0ffh,000h,0f7h,094h,097h,095h,0f4h,000h,0ffh,000h,0bdh,0a1h,0a1h,021h,0bdh,000h	; 67dc  .............!..
	defb 0ffh,000h,0e1h,001h,0e1h,001h,0e1h,000h,0ffh,000h,0e4h,004h,0e4h,004h,004h,000h	; 67ec  ................
	defb 0ffh,000h,0f4h,084h,0f4h,084h,0f7h,000h,0ffh,000h,038h,024h,024h,024h,0b8h,000h	; 67fc  ..........8$$$..
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h	; 680c  ........

; ----------------------------------------------------------------------
; DATOS leido_6814: 72 bytes que lee p00:4F76 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4F76 (72 bytes)
;   0x6814..0x685c  (72 bytes)
DATA_leido_6814:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6814  ................
	defb 0ffh,000h,011h,01bh,015h,011h,011h,000h,0ffh,000h,027h,024h,027h,020h,027h,000h	; 6824  ..........'$' '.
	defb 0ffh,000h,0bch,020h,0bch,084h,0bch,000h,0ffh,000h,090h,090h,090h,090h,09eh,000h	; 6834  ... ............
	defb 0ffh,000h,0f0h,080h,0f0h,080h,0f0h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6844  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h	; 6854  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0x685c..0x6ae4  (648 bytes)
DATA_685C:
	defb 0ffh,000h,001h,001h,001h,001h,001h,000h,0ffh,000h,02fh,029h,0e9h,029h,02fh,000h	; 685c  ........../).)/.
	defb 0ffh,000h,055h,055h,055h,055h,07dh,000h,0ffh,000h,021h,041h,081h,041h,021h,000h	; 686c  ..UUUU}...!A.A!.
	defb 0ffh,000h,012h,0b2h,052h,012h,012h,000h,0ffh,000h,07bh,042h,07bh,008h,07bh,000h	; 687c  ....R.....{B{.{.
	defb 0ffh,000h,0c9h,009h,0c9h,049h,0c9h,000h,0ffh,000h,00fh,008h,00fh,008h,0efh,000h	; 688c  .....I..........
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,00fh,009h,00fh,008h,008h,000h	; 689c  ................
	defb 0ffh,000h,04bh,04ah,07ah,04ah,04bh,000h,0ffh,000h,0ddh,049h,049h,049h,0c9h,000h	; 68ac  ..KJzJK....III..
	defb 0ffh,000h,0e9h,02dh,02bh,029h,0e9h,000h,0ffh,000h,008h,00dh,00ah,008h,008h,000h	; 68bc  ...-+)..........
	defb 0ffh,000h,093h,092h,093h,090h,093h,000h,0ffh,000h,0deh,010h,0deh,042h,0deh,000h	; 68cc  .............B..
	defb 0ffh,000h,048h,048h,048h,048h,04fh,000h,0ffh,000h,078h,040h,078h,040h,078h,000h	; 68dc  ..HHHHO...x@x@x.
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,03dh,025h,03dh,021h,021h,000h	; 68ec  ..........=%=!!.
	defb 0ffh,000h,02fh,029h,0e9h,029h,02fh,000h,0ffh,000h,077h,024h,024h,024h,027h,000h	; 68fc  ../).)/...w$$$'.
	defb 0ffh,000h,0a4h,0b4h,0ach,0a4h,0a4h,000h,0ffh,000h,025h,025h,03dh,025h,025h,000h	; 690c  ..........%%=%%.
	defb 0ffh,000h,0eah,02ah,02ah,02ah,0efh,000h,0ffh,000h,0a4h,0a8h,0b0h,0a8h,0a4h,000h	; 691c  ...***..........
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,012h,01ah,016h,012h,012h,000h	; 692c  ................
	defb 0ffh,000h,0f7h,094h,0f7h,094h,094h,000h,0ffh,000h,0bdh,0a5h,0bdh,025h,025h,000h	; 693c  .............%%.
	defb 0ffh,000h,008h,00dh,00ah,008h,0e8h,000h,0ffh,000h,084h,086h,085h,084h,084h,000h	; 694c  ................
	defb 0ffh,000h,049h,0c9h,049h,048h,049h,000h,0ffh,000h,0efh,008h,0efh,021h,0efh,000h	; 695c  ..I.IHI......!..
	defb 0ffh,000h,024h,024h,024h,024h,027h,000h,0ffh,000h,03ch,020h,03ch,020h,0bch,000h	; 696c  ..$$$$'...< < ..
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,04bh,06ah,05bh,04ah,04ah,000h	; 697c  ..........Kj[JJ.
	defb 0ffh,000h,0deh,052h,0deh,050h,050h,000h,0ffh,000h,0f4h,094h,0f4h,094h,097h,000h	; 698c  ...R.PP.........
	defb 0ffh,000h,022h,036h,02ah,022h,0a2h,000h,0ffh,000h,012h,012h,01eh,012h,012h,000h	; 699c  .."6*"..........
	defb 0ffh,000h,0f5h,095h,095h,095h,0f7h,000h,0ffh,000h,052h,054h,058h,054h,0d2h,000h	; 69ac  ..........RTXT..
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,001h,000h,000h,001h,000h	; 69bc  ................
	defb 0ffh,000h,0cah,02ah,04ah,08ah,0efh,000h,0ffh,000h,0bdh,0a4h,0bch,0a4h,0a4h,000h	; 69cc  ...*J...........
	defb 0ffh,000h,010h,0a0h,040h,040h,040h,000h,0ffh,000h,089h,0d9h,0a9h,089h,089h,000h	; 69dc  ....@@@.........
	defb 0ffh,000h,03dh,021h,03dh,004h,03dh,000h,0ffh,000h,0e4h,004h,0e4h,024h,0e4h,000h	; 69ec  ..=!=.=......$..
	defb 0ffh,000h,087h,084h,087h,084h,0f7h,000h,0ffh,000h,080h,000h,080h,000h,080h,000h	; 69fc  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,001h,002h,000h,001h,003h,000h	; 6a0c  ................
	defb 0ffh,000h,095h,055h,095h,015h,0dfh,000h,0ffh,000h,07ah,049h,078h,048h,048h,000h	; 6a1c  ...U......zIxHH.
	defb 0ffh,000h,021h,041h,081h,081h,081h,000h,0ffh,000h,02fh,029h,0e9h,029h,02fh,000h	; 6a2c  ..!A....../).)/.
	defb 0ffh,000h,055h,055h,055h,055h,07dh,000h,0ffh,000h,020h,040h,080h,040h,020h,000h	; 6a3c  ..UUUU}... @.@ .
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,007h,004h,005h,004h,007h,000h	; 6a4c  ................
	defb 0ffh,000h,0a5h,025h,0a5h,0a5h,0bdh,000h,0ffh,000h,073h,04ah,04bh,04ah,07bh,000h	; 6a5c  ...%......sJKJ{.
	defb 0ffh,000h,0dch,012h,0d2h,012h,0deh,000h,0ffh,000h,011h,01bh,015h,011h,011h,000h	; 6a6c  ................
	defb 0ffh,000h,027h,024h,027h,020h,027h,000h,0ffh,000h,0bch,020h,0bch,084h,0bch,000h	; 6a7c  ..'$' '.... ....
	defb 0ffh,000h,090h,090h,090h,090h,09eh,000h,0ffh,000h,0f0h,080h,0f0h,080h,0f0h,000h	; 6a8c  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6a9c  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,039h,025h,039h,025h,03dh,000h	; 6aac  ..........9%9%=.
	defb 0ffh,000h,0efh,009h,0efh,009h,0e9h,000h,0ffh,000h,044h,06ch,054h,044h,044h,000h	; 6abc  ..........DlTDD.
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6acc  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h	; 6adc  ........

; ----------------------------------------------------------------------
; DATOS leido_6AE4: 144 bytes que lee p00:4F76 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4F76 (144 bytes)
;   0x6ae4..0x6b74  (144 bytes)
DATA_leido_6AE4:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,003h,000h,000h,000h,000h,000h	; 6ae4  ................
	defb 0ffh,000h,0efh,089h,08fh,089h,089h,000h,0ffh,000h,024h,024h,024h,024h,027h,000h	; 6af4  ..........$$$$'.
	defb 0ffh,000h,007h,004h,007h,004h,087h,000h,0ffh,000h,03dh,0a1h,03dh,0a1h,0bdh,000h	; 6b04  ..........=.=...
	defb 0ffh,000h,0e8h,02dh,0eah,028h,028h,000h,0ffh,000h,080h,080h,080h,080h,080h,000h	; 6b14  ...-.((.........
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6b24  ................
	defb 0ffh,000h,001h,001h,001h,001h,001h,000h,0ffh,000h,02fh,029h,02fh,028h,0e8h,000h	; 6b34  ........../)/(..
	defb 0ffh,000h,00eh,009h,009h,009h,00fh,000h,0ffh,000h,07ah,04ah,04ah,04ah,07bh,000h	; 6b44  ..........zJJJ{.
	defb 0ffh,000h,05ch,052h,05ch,052h,0deh,000h,0ffh,000h,087h,084h,087h,084h,0f7h,000h	; 6b54  ..\R\R..........
	defb 0ffh,000h,080h,000h,080h,000h,080h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6b64  ................

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6b74..0x6c4c  (216 bytes)
DATA_6B74:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,039h,025h,025h,025h,03dh,000h	; 6b74  ..........9%%%=.
	defb 0ffh,000h,0eah,02ah,02ah,02ah,0efh,000h,0ffh,000h,0a4h,0b4h,0ach,0a4h,0a4h,000h	; 6b84  ...***..........
	defb 0ffh,000h,039h,025h,025h,025h,03dh,000h,0ffh,000h,0e9h,029h,029h,029h,0efh,000h	; 6b94  ..9%%%=....)))..
	defb 0ffh,000h,072h,04ah,072h,04ah,07bh,000h,0ffh,000h,01eh,010h,01eh,010h,0deh,000h	; 6ba4  ..rJrJ{.........
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6bb4  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,012h,012h,012h,012h,01eh,000h	; 6bc4  ................
	defb 0ffh,000h,0f0h,090h,0f0h,080h,080h,000h,0ffh,000h,087h,084h,087h,084h,0f4h,000h	; 6bd4  ................
	defb 0ffh,000h,0bdh,0a1h,0bdh,085h,0bdh,000h,0ffh,000h,0efh,009h,0efh,00ah,0e9h,000h	; 6be4  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6bf4  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,00eh,009h,009h,009h,00fh,000h	; 6c04  ................
	defb 0ffh,000h,07ah,04ah,04ah,04ah,07bh,000h,0ffh,000h,0a9h,0adh,0abh,0a9h,0e9h,000h	; 6c14  ..zJJJ{.........
	defb 0ffh,000h,008h,008h,008h,008h,00fh,000h,0ffh,000h,07bh,04ah,07bh,048h,04bh,000h	; 6c24  ..........{J{HK.
	defb 0ffh,000h,0deh,010h,0deh,050h,0deh,000h,0ffh,000h,0f0h,090h,0f0h,0a0h,090h,000h	; 6c34  .....P..........
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h	; 6c44  ........

; ----------------------------------------------------------------------
; DATOS leido_6C4C: 72 bytes que lee p00:4F76 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4F76 (72 bytes)
;   0x6c4c..0x6c94  (72 bytes)
DATA_leido_6C4C:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6c4c  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,043h,042h,043h,042h,07ah,000h	; 6c5c  ..........CBCBz.
	defb 0ffh,000h,0deh,050h,0deh,042h,05eh,000h,0ffh,000h,0f7h,084h,0f7h,085h,0f4h,000h	; 6c6c  ...P.B^.........
	defb 0ffh,000h,080h,080h,080h,000h,080h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6c7c  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h	; 6c8c  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6c94..0x6ed4  (576 bytes)
DATA_6C94:
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,08bh,0dah,0abh,08ah,08bh,000h	; 6c94  ................
	defb 0ffh,000h,0ddh,009h,0c9h,009h,0c9h,000h,0ffh,000h,0efh,009h,0e9h,009h,0efh,000h	; 6ca4  ................
	defb 0ffh,000h,078h,048h,078h,050h,048h,000h,0ffh,000h,043h,042h,043h,042h,07ah,000h	; 6cb4  ..xHxPH...CBCBz.
	defb 0ffh,000h,0deh,050h,0deh,042h,05eh,000h,0ffh,000h,0f7h,084h,0f7h,085h,0f4h,000h	; 6cc4  ...P.B^.........
	defb 0ffh,000h,080h,080h,080h,000h,080h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6cd4  ................
	defb 0ffh,000h,03dh,021h,03dh,005h,03dh,000h,0ffh,000h,0efh,009h,00fh,00ah,0e9h,000h	; 6ce4  ..=!=.=.........
	defb 0ffh,000h,07ah,042h,07ah,042h,07bh,000h,0ffh,000h,0a1h,0a1h,0a1h,0a1h,0e1h,000h	; 6cf4  ..zBzB{.........
	defb 0ffh,000h,00fh,009h,00fh,009h,0e9h,000h,0ffh,000h,07bh,042h,07bh,00ah,07bh,000h	; 6d04  ..........{B{.{.
	defb 0ffh,000h,0deh,012h,0deh,014h,0d2h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6d14  ................
	defb 0ffh,000h,003h,000h,000h,000h,000h,000h,0ffh,000h,0eah,08ah,08ah,08ah,08fh,000h	; 6d24  ................
	defb 0ffh,000h,0a9h,0adh,0abh,0a9h,0a9h,000h,0ffh,000h,04ah,052h,062h,052h,04bh,000h	; 6d34  ..........JRbRK.
	defb 0ffh,000h,01eh,010h,01eh,010h,0deh,000h,0ffh,000h,010h,010h,010h,010h,01eh,000h	; 6d44  ................
	defb 0ffh,000h,0f7h,094h,0f7h,090h,097h,000h,0ffh,000h,0bdh,021h,0bdh,0a1h,0bdh,000h	; 6d54  ...........!....
	defb 0ffh,000h,0e0h,020h,0e0h,040h,020h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6d64  ... .@ .........
	defb 0ffh,000h,03dh,021h,03dh,021h,021h,000h,0ffh,000h,07bh,04ah,07bh,052h,04bh,000h	; 6d74  ..=!=!!...{J{RK.
	defb 0ffh,000h,0c3h,002h,0c3h,002h,0c3h,000h,0ffh,000h,090h,050h,090h,050h,0deh,000h	; 6d84  ...........P.P..
	defb 0ffh,000h,0f7h,094h,0f7h,090h,097h,000h,0ffh,000h,0bbh,012h,093h,092h,093h,000h	; 6d94  ................
	defb 0ffh,000h,0deh,012h,0deh,014h,0d2h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6da4  ................
	defb 0ffh,000h,01eh,010h,01eh,010h,01eh,000h,0ffh,000h,097h,092h,062h,092h,092h,000h	; 6db4  ............b...
	defb 0ffh,000h,07ah,043h,07ah,042h,07ah,000h,0ffh,000h,05ch,052h,0d2h,052h,05ch,000h	; 6dc4  ..zCzBz...\R.R\.
	defb 0ffh,000h,01ch,012h,01ch,012h,01eh,000h,0ffh,000h,087h,084h,087h,084h,0f4h,000h	; 6dd4  ................
	defb 0ffh,000h,0bdh,0a0h,0bch,084h,0bch,000h,0ffh,000h,0deh,090h,09eh,090h,09eh,000h	; 6de4  ................
	defb 0ffh,000h,0f0h,090h,0f0h,0a0h,090h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6df4  ................
	defb 0ffh,000h,097h,094h,097h,064h,067h,000h,0ffh,000h,0bdh,020h,0a0h,020h,0bch,000h	; 6e04  .....dg.... . ..
	defb 0ffh,000h,0deh,092h,092h,092h,09eh,000h,0ffh,000h,0f0h,090h,0f0h,0a0h,090h,000h	; 6e14  ................
	defb 0ffh,000h,087h,084h,087h,084h,0f4h,000h,0ffh,000h,0bdh,0a1h,0bdh,085h,0bdh,000h	; 6e24  ................
	defb 0ffh,000h,0efh,009h,0efh,00ah,0e9h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h	; 6e34  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,0f2h,092h,0f2h,0a2h,092h,000h	; 6e44  ................
	defb 0ffh,000h,07bh,04ah,07bh,042h,042h,000h,0ffh,000h,0d0h,050h,0d0h,010h,01eh,000h	; 6e54  ..{J{BB....P....
	defb 0ffh,000h,0f0h,080h,0f0h,080h,0f0h,000h,0ffh,000h,087h,084h,087h,084h,0f4h,000h	; 6e64  ................
	defb 0ffh,000h,0bdh,0a1h,0bdh,085h,0bdh,000h,0ffh,000h,0efh,009h,0efh,00ah,0e9h,000h	; 6e74  ................
	defb 0ffh,000h,000h,000h,000h,000h,000h,000h,0ffh,000h,00fh,008h,00bh,009h,00fh,000h	; 6e84  ................
	defb 0ffh,000h,07ah,04ah,07ah,04ah,04bh,000h,0ffh,000h,01eh,012h,01eh,012h,0d2h,000h	; 6e94  ..zJzJK.........
	defb 0ffh,000h,0f7h,081h,081h,081h,0f1h,000h,0ffh,000h,0d7h,014h,014h,014h,017h,000h	; 6ea4  ................
	defb 0ffh,000h,084h,004h,004h,004h,087h,000h,0ffh,000h,03dh,025h,03dh,024h,0a5h,000h	; 6eb4  ..........=%=$..
	defb 0ffh,000h,0efh,008h,0efh,028h,0efh,000h,0ffh,000h,078h,048h,078h,050h,048h,000h	; 6ec4  .....(....xHxPH.

; ----------------------------------------------------------------------
; DATOS leido_6ED4: 14 bytes que leen p00:50C2, p00:50C6, p00:50C8 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:50C2, p00:50C6, p00:50C8
;   (14 bytes)
;   0x6ed4..0x6ee2  (14 bytes)
DATA_leido_6ED4:
	defb 05ch,070h,080h,0f8h,0b0h,080h,000h,064h,076h,075h,09ch,02ch,07fh,000h	; 6ed4  \p.....dvu.,..

; ----------------------------------------------------------------------
; DATOS leido_6EE2: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x6ee2..0x6ee3  (1 bytes)
DATA_leido_6EE2:
	defb 002h	; 6ee2

; ----------------------------------------------------------------------
; DATOS leido_6EE3: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x6ee3..0x6ee6  (3 bytes)
DATA_leido_6EE3:
	defb 003h,064h,070h	; 6ee3

; ----------------------------------------------------------------------
; DATOS leido_6EE6: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x6ee6..0x6eeb  (5 bytes)
DATA_leido_6EE6:
	defb 001h,003h,064h,07ch,002h	; 6ee6

; ----------------------------------------------------------------------
; DATOS leido_6EEB: 2 bytes que leen p00:4EDE, p00:4EF0 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0 (2 bytes)
;   0x6eeb..0x6eed  (2 bytes)
DATA_leido_6EEB:
	defb 003h,07ch	; 6eeb

; ----------------------------------------------------------------------
; DATOS tabla_6EED: tabla que se lee desde HL = 0x6EED con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p00:50B6 (1 bytes)
;   0x6eed..0x6eee  (1 bytes)
DATA_tabla_6EED:
	defb 088h	; 6eed

; ----------------------------------------------------------------------
; DATOS leido_6EEE: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x6eee..0x6eef  (1 bytes)
DATA_leido_6EEE:
	defb 000h	; 6eee

; ----------------------------------------------------------------------
; DATOS leido_6EEF: 22 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 2 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p00:4A60, p00:4A62 (22 bytes)
;   0x6eef..0x6f05  (22 bytes)
DATA_leido_6EEF:
	defb 005h,06fh,00fh,06fh,01ch,06fh,032h,06fh,036h,06fh,046h,06fh,065h,06fh,072h,06fh	; 6eef  .o.o.o2o6oFoeoro
	defb 082h,06fh,092h,06fh,0a8h,06fh	; 6eff

; ----------------------------------------------------------------------
; DATOS leido_6F05: 165 bytes que leen p00:50C2, p00:50C6, p00:50C8 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido, con 4 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p00:50C2, p00:50C6, p00:50C8 (165 bytes)
;   0x6f05..0x6faa  (165 bytes)
DATA_leido_6F05:
	defb 0c4h,00eh,07eh,0bch,001h,07dh,0d4h,083h,07eh,000h,0a0h,013h,076h,0d0h,0c4h,076h	; 6f05  ..~..}..~...v..v
	defb 0d4h,0ceh,076h,0dch,058h,07ch,000h,0a0h,00fh,077h,0d8h,04ch,077h,0a8h,0edh,07fh	; 6f15  ..v.X|...w.Lw...
	defb 0b0h,06eh,077h,0e0h,0bfh,07ch,098h,064h,07ch,09ch,023h,07dh,000h,0e0h,0d0h,077h	; 6f25  .nw..|.d|.#}...w
	defb 000h,0a0h,02eh,078h,0d8h,04ch,077h,0ach,070h,078h,0b0h,08dh,078h,0c0h,0cfh,078h	; 6f35  ...x.Lw.px..x..x
	defb 000h,064h,067h,07dh,084h,0d7h,078h,088h,0f9h,078h,090h,0a1h,07dh,0a0h,02eh,078h	; 6f45  .dg}..x..x..}..x
	defb 0d8h,04ch,077h,0b0h,004h,079h,0d4h,070h,07fh,0e0h,090h,07fh,0ech,0c0h,07dh,000h	; 6f55  .Lw..y.p......}.
	defb 08ch,0ddh,07eh,0a8h,066h,079h,094h,0e6h,079h,0e0h,01ah,07ah,000h,0a0h,05ch,07ah	; 6f65  ..~.fy..y..z..\z
	defb 0ach,02eh,080h,0b4h,0cah,07ah,0c0h,09dh,07ah,0d0h,000h,07bh,000h,064h,04eh,07bh	; 6f75  .....z..z..{.dN{
	defb 094h,00fh,077h,0a8h,0adh,07bh,0c0h,02fh,07dh,0e0h,0d0h,077h,000h,0a0h,0eah,07bh	; 6f85  ..w..{./}..w...{
	defb 0b0h,015h,07fh,0d0h,04eh,07fh,0d8h,036h,07ch,094h,0d5h,075h,09ch,023h,07dh,0e0h	; 6f95  ....N..6|..u.#}.
	defb 0d0h,077h,000h,0a0h,070h	; 6fa5

; ----------------------------------------------------------------------
; DATOS tabla_6FAA: tabla que se lee desde HL = 0x6FAA con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p00:50EC (1 bytes)
;   0x6faa..0x6fab  (1 bytes)
DATA_tabla_6FAA:
	defb 078h	; 6faa

; ----------------------------------------------------------------------
; DATOS leido_6FAB: 1 bytes que lee p00:50C2 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:50C2 (1 bytes)
;   0x6fab..0x6fac  (1 bytes)
DATA_leido_6FAB:
	defb 000h	; 6fab

; ----------------------------------------------------------------------
; DATOS leido_6FAC: 22 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 2 sin leer entre lecturas de la misma
;   rutina: entradas de la misma tabla que las partidas no han pedido); lo
;   leen p00:4A60, p00:4A62 (22 bytes)
;   0x6fac..0x6fc2  (22 bytes)
DATA_leido_6FAC:
	defb 0c2h,06fh,0cfh,06fh,0d0h,06fh,0e1h,06fh,0e2h,06fh,0ebh,06fh,004h,070h,015h,070h	; 6fac  .o.o.o.o.o.o.p.p
	defb 022h,070h,04bh,070h,054h,070h	; 6fbc

; ----------------------------------------------------------------------
; DATOS leido_6FC2: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x6fc2..0x6fc7  (5 bytes)
DATA_leido_6FC2:
	defb 001h,001h,0a4h,0ach,002h	; 6fc2

; ----------------------------------------------------------------------
; DATOS leido_6FC7: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x6fc7..0x6fca  (3 bytes)
DATA_leido_6FC7:
	defb 001h,0bch,0c0h	; 6fc7

; ----------------------------------------------------------------------
; DATOS leido_6FCA: 7 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (7 bytes)
;   0x6fca..0x6fd1  (7 bytes)
DATA_leido_6FCA:
	defb 001h,001h,0c0h,0c0h,000h,000h,002h	; 6fca

; ----------------------------------------------------------------------
; DATOS leido_6FD1: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x6fd1..0x6fd4  (3 bytes)
DATA_leido_6FD1:
	defb 001h,0b8h,0bch	; 6fd1

; ----------------------------------------------------------------------
; DATOS leido_6FD4: 9 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (9 bytes)
;   0x6fd4..0x6fdd  (9 bytes)
DATA_leido_6FD4:
	defb 001h,004h,0b0h,0c0h,001h,001h,0e0h,0e8h,002h	; 6fd4  .........

; ----------------------------------------------------------------------
; DATOS leido_6FDD: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x6fdd..0x6fe0  (3 bytes)
DATA_leido_6FDD:
	defb 001h,0d8h,0dch	; 6fdd

; ----------------------------------------------------------------------
; DATOS leido_6FE0: 3 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p00:4E5A (3
;   bytes)
;   0x6fe0..0x6fe3  (3 bytes)
DATA_leido_6FE0:
	defb 000h,000h,002h	; 6fe0

; ----------------------------------------------------------------------
; DATOS leido_6FE3: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x6fe3..0x6fe6  (3 bytes)
DATA_leido_6FE3:
	defb 002h,0b0h,0b8h	; 6fe3

; ----------------------------------------------------------------------
; DATOS leido_6FE6: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x6fe6..0x6fe7  (1 bytes)
DATA_leido_6FE6:
	defb 002h	; 6fe6

; ----------------------------------------------------------------------
; DATOS leido_6FE7: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x6fe7..0x6fea  (3 bytes)
DATA_leido_6FE7:
	defb 001h,0d8h,0dch	; 6fe7

; ----------------------------------------------------------------------
; DATOS leido_6FEA: 2 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (2 bytes)
;   0x6fea..0x6fec  (2 bytes)
DATA_leido_6FEA:
	defb 000h,002h	; 6fea

; ----------------------------------------------------------------------
; DATOS leido_6FEC: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x6fec..0x6fef  (3 bytes)
DATA_leido_6FEC:
	defb 001h,0b8h,0bch	; 6fec

; ----------------------------------------------------------------------
; DATOS leido_6FEF: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x6fef..0x6ff4  (5 bytes)
DATA_leido_6FEF:
	defb 001h,004h,0b0h,0c0h,002h	; 6fef

; ----------------------------------------------------------------------
; DATOS leido_6FF4: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x6ff4..0x6ff7  (3 bytes)
DATA_leido_6FF4:
	defb 001h,0d8h,0dch	; 6ff4

; ----------------------------------------------------------------------
; DATOS leido_6FF7: 9 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (9 bytes)
;   0x6ff7..0x7000  (9 bytes)
DATA_leido_6FF7:
	defb 001h,003h,064h,070h,001h,001h,094h,098h,001h	; 6ff7  ..dp.....

; ----------------------------------------------------------------------
; DATOS leido_7000: 13 bytes que leen p00:4E6E, p00:4E76, p00:4E85, p00:4E5A
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E6E, p00:4E76, p00:4E85, p00:4E5A (13 bytes)
;   0x7000..0x700d  (13 bytes)
DATA_leido_7000:
	defb 001h,0f0h,0f4h,000h,001h,005h,0a8h,0bch,001h,002h,0e0h,0e8h,002h	; 7000  .............

; ----------------------------------------------------------------------
; DATOS leido_700D: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x700d..0x7010  (3 bytes)
DATA_leido_700D:
	defb 002h,094h,0f0h	; 700d

; ----------------------------------------------------------------------
; DATOS leido_7010: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x7010..0x7011  (1 bytes)
DATA_leido_7010:
	defb 002h	; 7010

; ----------------------------------------------------------------------
; DATOS leido_7011: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7011..0x7014  (3 bytes)
DATA_leido_7011:
	defb 001h,0d8h,0dch	; 7011

; ----------------------------------------------------------------------
; DATOS leido_7014: 2 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (2 bytes)
;   0x7014..0x7016  (2 bytes)
DATA_leido_7014:
	defb 000h,002h	; 7014

; ----------------------------------------------------------------------
; DATOS leido_7016: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7016..0x7019  (3 bytes)
DATA_leido_7016:
	defb 002h,0ach,0f0h	; 7016

; ----------------------------------------------------------------------
; DATOS leido_7019: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x7019..0x701a  (1 bytes)
DATA_leido_7019:
	defb 002h	; 7019

; ----------------------------------------------------------------------
; DATOS leido_701A: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x701a..0x701d  (3 bytes)
DATA_leido_701A:
	defb 001h,0b8h,0bch	; 701a

; ----------------------------------------------------------------------
; DATOS leido_701D: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x701d..0x701e  (1 bytes)
DATA_leido_701D:
	defb 002h	; 701d

; ----------------------------------------------------------------------
; DATOS leido_701E: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x701e..0x7021  (3 bytes)
DATA_leido_701E:
	defb 001h,0b4h,0b8h	; 701e

; ----------------------------------------------------------------------
; DATOS leido_7021: 2 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (2 bytes)
;   0x7021..0x7023  (2 bytes)
DATA_leido_7021:
	defb 000h,002h	; 7021

; ----------------------------------------------------------------------
; DATOS leido_7023: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7023..0x7026  (3 bytes)
DATA_leido_7023:
	defb 003h,064h,070h	; 7023

; ----------------------------------------------------------------------
; DATOS leido_7026: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x7026..0x702b  (5 bytes)
DATA_leido_7026:
	defb 001h,003h,064h,07ch,002h	; 7026

; ----------------------------------------------------------------------
; DATOS leido_702B: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x702b..0x702e  (3 bytes)
DATA_leido_702B:
	defb 003h,07ch,088h	; 702b

; ----------------------------------------------------------------------
; DATOS leido_702E: 5 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (5 bytes)
;   0x702e..0x7033  (5 bytes)
DATA_leido_702E:
	defb 001h,002h,0a8h,0b0h,002h	; 702e

; ----------------------------------------------------------------------
; DATOS leido_7033: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7033..0x7036  (3 bytes)
DATA_leido_7033:
	defb 001h,0c0h,0d0h	; 7033

; ----------------------------------------------------------------------
; DATOS leido_7036: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x7036..0x7037  (1 bytes)
DATA_leido_7036:
	defb 002h	; 7036

; ----------------------------------------------------------------------
; DATOS leido_7037: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7037..0x703a  (3 bytes)
DATA_leido_7037:
	defb 001h,0c4h,0cch	; 7037

; ----------------------------------------------------------------------
; DATOS leido_703A: 13 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (13 bytes)
;   0x703a..0x7047  (13 bytes)
DATA_leido_703A:
	defb 001h,001h,0c4h,0dch,001h,001h,0c8h,0d8h,001h,001h,0cch,0d4h,002h	; 703a  .............

; ----------------------------------------------------------------------
; DATOS leido_7047: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7047..0x704a  (3 bytes)
DATA_leido_7047:
	defb 002h,094h,0f0h	; 7047

; ----------------------------------------------------------------------
; DATOS leido_704A: 6 bytes que leen p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 al
;   jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p00:4E5A, p00:4E6E, p00:4E76, p00:4E85 (6 bytes)
;   0x704a..0x7050  (6 bytes)
DATA_leido_704A:
	defb 000h,001h,001h,0a8h,0ach,002h	; 704a

; ----------------------------------------------------------------------
; DATOS leido_7050: 3 bytes que leen p00:4EDE, p00:4EF0, p00:4EE3 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:4EDE, p00:4EF0, p00:4EE3
;   (3 bytes)
;   0x7050..0x7053  (3 bytes)
DATA_leido_7050:
	defb 002h,094h,0f0h	; 7050

; ----------------------------------------------------------------------
; DATOS leido_7053: 2 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (2 bytes)
;   0x7053..0x7055  (2 bytes)
DATA_leido_7053:
	defb 000h,000h	; 7053

; ----------------------------------------------------------------------
; DATOS rle_7055: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; se solapan 2 bloques: (rle_vram_7055 7055-7082); lo leen
;   p00:5010, p00:4B3C (45 bytes)
;   0x7055..0x7082  (45 bytes)
DATA_rle_7055:
	defb 002h,000h,08ch,003h,083h,067h,038h,0dfh,04fh,000h,00fh,00fh,00eh,00ch,008h,006h	; 7055  .....g8.O.......
	defb 000h,086h,0c0h,000h,09fh,0c0h,03fh,0c0h,009h,000h,088h,040h,030h,01ch,00fh,0dfh	; 7065  ......?....@0...
	defb 050h,00fh,00ch,00bh,000h,084h,0e0h,0ffh,030h,0c0h,006h,000h,000h	; 7075  P.......0....

; ----------------------------------------------------------------------
; DATOS rle_7082: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; se solapan 2 bloques: (rle_vram_7082 7082-70CB); lo leen
;   p00:5029, p00:4B3C (73 bytes)
;   0x7082..0x70cb  (73 bytes)
DATA_rle_7082:
	defb 088h,000h,008h,004h,002h,081h,060h,030h,0c0h,004h,000h,081h,001h,008h,000h,087h	; 7082  ......`0........
	defb 0c0h,07fh,000h,000h,020h,040h,080h,009h,000h,084h,007h,020h,030h,00fh,00ch,000h	; 7092  .... @..... 0...
	defb 084h,080h,060h,030h,0c0h,00eh,000h,082h,020h,02fh,00dh,000h,083h,018h,000h,0c0h	; 70a2  ..`0.... /......
	defb 009h,000h,08ah,008h,00ch,00eh,00fh,000h,03fh,07fh,000h,007h,003h,009h,000h,086h	; 70b2  ........?.......
	defb 030h,000h,0e0h,0ffh,000h,080h,005h,000h,000h	; 70c2  0........

; ----------------------------------------------------------------------
; DATOS rle_70CB: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; lo leen p00:503A (155 bytes)
;   0x70cb..0x7166  (155 bytes)
DATA_rle_70CB:
	defb 08dh,000h,008h,004h,00eh,087h,06fh,030h,0dfh,05fh,000h,007h,003h,001h,008h,000h	; 70cb  ......o0._......
	defb 087h,0c0h,07fh,0e0h,0dfh,000h,0c0h,080h,00ah,000h,082h,060h,030h,008h,000h,08fh	; 70db  ...........`0...
	defb 010h,038h,054h,0eeh,054h,038h,010h,000h,010h,038h,054h,0eeh,054h,038h,010h,007h	; 70eb  .8T.T8...8T.T8..
	defb 000h,082h,060h,030h,009h,000h,085h,054h,028h,054h,028h,054h,003h,000h,085h,054h	; 70fb  ..`0...T(T(T...T
	defb 028h,054h,028h,054h,008h,000h,081h,018h,009h,000h,08fh,010h,038h,054h,0eeh,054h	; 710b  (T(T........8T.T
	defb 038h,010h,000h,010h,038h,054h,0eeh,054h,038h,010h,007h,000h,081h,018h,00ah,000h	; 711b  8...8T.T8.......
	defb 085h,054h,028h,054h,028h,054h,003h,000h,085h,054h,028h,054h,028h,054h,007h,000h	; 712b  .T(T(T...T(T(T..
	defb 081h,030h,00ah,000h,08fh,010h,038h,054h,0eeh,054h,038h,010h,000h,010h,038h,054h	; 713b  .0....8T.T8...8T
	defb 0eeh,054h,038h,010h,006h,000h,081h,030h,00bh,000h,085h,054h,028h,054h,028h,054h	; 714b  .T8....0...T(T(T
	defb 003h,000h,087h,054h,028h,054h,028h,054h,000h,000h,000h	; 715b  ...T(T(T...

; ----------------------------------------------------------------------
; DATOS resto_7166: lo apuntan con el banco puesto p00:5032 (0x7166); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p00:5032 (107 bytes)
;   0x7166..0x71d1  (107 bytes)
DATA_resto_7166:
	defb 08dh,000h,008h,004h,00eh,087h,06fh,030h,0dfh,05fh,000h,007h,003h,001h,008h,000h	; 7166  ......o0._......
	defb 087h,0c0h,07fh,0e0h,0dfh,000h,0c0h,080h,00ah,000h,082h,060h,030h,00ch,000h,087h	; 7176  ...........`0...
	defb 010h,038h,054h,0eeh,054h,038h,010h,00bh,000h,082h,060h,030h,00dh,000h,085h,054h	; 7186  .8T.T8....`0...T
	defb 028h,054h,028h,054h,00ch,000h,081h,018h,00dh,000h,087h,010h,038h,054h,0eeh,054h	; 7196  (T(T........8T.T
	defb 038h,010h,00bh,000h,081h,018h,00eh,000h,085h,054h,028h,054h,028h,054h,00bh,000h	; 71a6  8........T(T(T..
	defb 081h,030h,00eh,000h,087h,010h,038h,054h,0eeh,054h,038h,010h,00ah,000h,081h,030h	; 71b6  .0....8T.T8....0
	defb 00fh,000h,085h,054h,028h,054h,028h,054h,006h,000h,000h	; 71c6  ...T(T(T...

; ----------------------------------------------------------------------
; DATOS rle_71D1: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; lo leen p00:504B (213 bytes)
;   0x71d1..0x72a6  (213 bytes)
DATA_rle_71D1:
	defb 089h,000h,008h,004h,00ah,085h,06ah,035h,0aah,050h,003h,000h,081h,001h,008h,000h	; 71d1  ......j5.P......
	defb 087h,0c0h,07fh,000h,01eh,020h,040h,080h,004h,000h,09eh,0b8h,05fh,0bch,07ch,018h	; 71e1  ..... @....._.|.
	defb 080h,000h,080h,070h,0b0h,0f0h,071h,0b3h,027h,05fh,000h,000h,080h,0e0h,0f0h,03ch	; 71f1  ...p..q.'_.....<
	defb 03eh,000h,00fh,000h,03fh,0feh,0fch,0f0h,0c0h,004h,000h,083h,048h,034h,008h,003h	; 7201  >...?.......H4..
	defb 000h,086h,050h,020h,050h,021h,013h,007h,004h,000h,08bh,080h,060h,038h,03eh,000h	; 7211  ..P P!......`8>.
	defb 00fh,000h,03eh,0fch,0f8h,0e0h,003h,000h,09fh,02eh,0dfh,067h,0bfh,04fh,0a3h,070h	; 7221  ..>........g.O.p
	defb 020h,0a5h,030h,0f3h,03fh,0ffh,027h,0dfh,02eh,000h,080h,0e0h,0f8h,0fch,0feh,007h	; 7231   .0.?.'.........
	defb 000h,04fh,03fh,0feh,0fch,0f8h,0e0h,080h,003h,000h,08ch,027h,01bh,007h,063h,090h	; 7241  .O?........'..c.
	defb 020h,005h,090h,023h,017h,02fh,007h,004h,000h,08ch,080h,0e0h,0f8h,0fch,006h,000h	; 7251   ..#./..........
	defb 04fh,03eh,0fch,0f8h,0e0h,080h,004h,000h,08eh,05bh,0b5h,06ah,085h,04ah,000h,08dh	; 7261  O>.......[.j.J..
	defb 06ah,0b8h,07ch,0aeh,0dfh,02fh,0d8h,003h,000h,08bh,0f0h,0fch,01fh,080h,0afh,061h	; 7271  j.|../.........a
	defb 09fh,03eh,07ch,0f8h,0e0h,004h,000h,08ch,09bh,025h,05ah,085h,04ah,000h,08dh,04ah	; 7281  .>|......%Z.J..J
	defb 028h,0bch,00eh,02bh,005h,000h,08dh,0e0h,0f8h,01eh,080h,0afh,061h,09eh,03ch,078h	; 7291  (..+........a.<x
	defb 0e0h,080h,000h,000h,000h	; 72a1

; ----------------------------------------------------------------------
; DATOS resto_72A6: lo apuntan con el banco puesto p00:5043 (0x72A6); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p00:5043 (191 bytes)
;   0x72a6..0x7365  (191 bytes)
DATA_resto_72A6:
	defb 089h,000h,008h,004h,00ah,085h,06ah,035h,0aah,050h,003h,000h,081h,001h,008h,000h	; 72a6  ......j5.P......
	defb 087h,0c0h,07fh,000h,01eh,020h,040h,080h,004h,000h,08eh,040h,034h,06ch,03ch,018h	; 72b6  ..... @....@4l<.
	defb 000h,000h,080h,070h,0b0h,050h,0b1h,073h,017h,004h,000h,08bh,080h,0e0h,038h,03eh	; 72c6  ...p.P.s......8>
	defb 000h,00fh,000h,03eh,0fch,0f8h,0e0h,005h,000h,083h,008h,004h,008h,003h,000h,086h	; 72d6  ...>............
	defb 040h,020h,050h,001h,013h,004h,005h,000h,08ah,040h,030h,03ch,000h,00fh,000h,03ch	; 72e6  @ P......@0<...<
	defb 0f8h,0e0h,080h,005h,000h,08ch,01eh,0a7h,04fh,0a3h,070h,020h,0a5h,070h,093h,07fh	; 72f6  ........O.p .p..
	defb 0cfh,03eh,005h,000h,08ah,0c0h,0f0h,0fch,007h,000h,04fh,03eh,0f8h,0f0h,0c0h,006h	; 7306  .>........O>....
	defb 000h,08ah,036h,00fh,023h,070h,000h,005h,070h,0a3h,03fh,05ch,007h,000h,088h,0c0h	; 7316  ..6.#p..p.?\....
	defb 0f8h,006h,000h,04eh,03ch,0f0h,0c0h,006h,000h,08dh,038h,0d4h,03ah,095h,04ah,002h	; 7326  ...N<.....8.:.J.
	defb 085h,068h,0bch,07eh,0d6h,02eh,0f0h,005h,000h,089h,0e0h,018h,080h,0afh,040h,01eh	; 7336  .h.~..........@.
	defb 038h,060h,080h,005h,000h,08bh,00ah,055h,02ah,095h,04ah,002h,005h,0a8h,034h,04ah	; 7346  8`.....U*.J...4J
	defb 016h,007h,000h,088h,0c0h,010h,080h,0afh,040h,01ch,030h,040h,004h,000h,000h	; 7356  ........@.0@...

; ----------------------------------------------------------------------
; DATOS rle_7365: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; se solapan 2 bloques: (rle_vram_7365 7365-7447); lo leen
;   p00:5057, p00:4B3C (226 bytes)
;   0x7365..0x7447  (226 bytes)
DATA_rle_7365:
	defb 012h,000h,08ch,003h,00ch,013h,016h,02ch,028h,000h,02ch,016h,013h,00ch,003h,004h	; 7365  .......,(.,.....
	defb 000h,08ch,0c0h,030h,0c8h,068h,034h,014h,000h,034h,068h,0c8h,030h,0c0h,01ah,000h	; 7375  ...0.h4..4h.0...
	defb 081h,002h,00ch,000h,086h,001h,003h,007h,0ffh,003h,001h,00ah,000h,086h,080h,0c0h	; 7385  ................
	defb 0e0h,0feh,0c0h,080h,00dh,000h,081h,0c0h,017h,000h,0a0h,003h,00ch,033h,02eh,058h	; 7395  .............3.X
	defb 050h,080h,000h,000h,080h,050h,058h,02eh,013h,00ch,003h,0c0h,030h,0cch,074h,01ah	; 73a5  P....PX.....0.t.
	defb 00ah,001h,000h,000h,001h,00ah,01ah,074h,0c8h,030h,0c0h,017h,000h,082h,001h,0dfh	; 73b5  .......t.0......
	defb 00ah,000h,08ah,001h,007h,00fh,03fh,0ffh,0ffh,07fh,00fh,007h,001h,006h,000h,08ah	; 73c5  ......?.........
	defb 080h,0e0h,0f0h,0fch,0ffh,0ffh,0feh,0f0h,0e0h,080h,00bh,000h,081h,0f7h,017h,000h	; 73d5  ................
	defb 09eh,006h,008h,023h,00ch,013h,016h,0ach,0a8h,020h,0ach,016h,053h,00ch,021h,000h	; 73e5  ...#..... ..S.!.
	defb 000h,080h,010h,0c4h,032h,0c8h,061h,034h,010h,000h,034h,060h,0c8h,000h,040h,01ah	; 73f5  ....2.a4..4`..@.
	defb 000h,081h,086h,00ch,000h,086h,001h,003h,007h,017h,003h,001h,00ah,000h,086h,080h	; 7405  ................
	defb 0c0h,0e0h,0eah,0c0h,080h,00dh,000h,081h,0c1h,009h,000h,087h,003h,00ch,01bh,014h	; 7415  ................
	defb 020h,000h,028h,003h,000h,082h,008h,002h,004h,000h,08ch,040h,010h,040h,000h,010h	; 7425   .(........@.@..
	defb 004h,002h,004h,000h,008h,000h,080h,00ah,000h,081h,010h,00fh,000h,081h,008h,007h	; 7435  ................
	defb 000h,000h	; 7445

; ----------------------------------------------------------------------
; DATOS rle_7447: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; se solapan 2 bloques: (rle_vram_7447 7447-74A4); lo leen
;   p00:5066, p00:4B3C (93 bytes)
;   0x7447..0x74a4  (93 bytes)
DATA_rle_7447:
	defb 003h,000h,083h,007h,01fh,07fh,004h,0ffh,083h,07fh,01fh,007h,006h,000h,083h,0e0h	; 7447  ................
	defb 0f8h,0feh,004h,0ffh,083h,0feh,0f8h,0e0h,007h,000h,088h,007h,01fh,03fh,07fh,07fh	; 7457  .............?..
	defb 03fh,01fh,007h,008h,000h,088h,0e0h,0f8h,0fch,0feh,0feh,0fch,0f8h,0e0h,004h,000h	; 7467  ?...............
	defb 086h,040h,080h,030h,038h,01ch,00ch,01ah,000h,002h,0bfh,01eh,000h,086h,003h,007h	; 7477  .@.08...........
	defb 00eh,00ch,020h,010h,01ah,000h,084h,010h,060h,020h,080h,01ch,000h,084h,080h,020h	; 7487  .. .....` .....
	defb 060h,010h,01ch,000h,085h,020h,070h,0b8h,050h,020h,01bh,000h,000h	; 7497  `.... p.P ...

; ----------------------------------------------------------------------
; DATOS rle_74A4: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; se solapan 2 bloques: (rle_vram_74A4 74A4-74D8); lo leen
;   p00:5089, p00:4B3C (52 bytes)
;   0x74a4..0x74d8  (52 bytes)
DATA_rle_74A4:
	defb 08ah,000h,001h,007h,00fh,02fh,056h,0b8h,034h,048h,010h,006h,000h,083h,040h,080h	; 74a4  ...../V.4H....@.
	defb 080h,00dh,000h,085h,070h,02fh,0ffh,02fh,070h,00ch,000h,083h,080h,0f0h,080h,00ch	; 74b4  ....p/./p.......
	defb 000h,089h,010h,048h,034h,0b8h,056h,02fh,00fh,007h,001h,00eh,000h,002h,080h,081h	; 74c4  ...H4.V/........
	defb 040h,006h,000h,000h	; 74d4

; ----------------------------------------------------------------------
; DATOS rle_74D8: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; se solapan 2 bloques: (rle_vram_74D8 74D8-7537); lo leen
;   p00:5098, p00:4B3C (95 bytes)
;   0x74d8..0x7537  (95 bytes)
DATA_rle_74D8:
	defb 0c0h,0c4h,0c0h,020h,00eh,01fh,07bh,015h,01bh,0bfh,01fh,007h,07bh,0bfh,0feh,06fh	; 74d8  ... ..{.....{..o
	defb 006h,002h,086h,060h,0d4h,0eeh,0feh,0f4h,0f0h,02bh,0f4h,0ffh,0dah,07ah,0f0h,0f6h	; 74e8  ...`.....+...z..
	defb 070h,080h,048h,000h,006h,00fh,08bh,01fh,03dh,03eh,03fh,01fh,03ah,035h,01eh,004h	; 74f8  p.H.....=>?.:5..
	defb 010h,001h,000h,000h,044h,0e2h,0f0h,0f0h,0e0h,080h,0f2h,076h,0d0h,078h,0f0h,0e6h	; 7508  ....D......v.x..
	defb 003h,003h,000h,08ch,006h,008h,000h,009h,034h,030h,007h,06fh,07eh,027h,00fh,024h	; 7518  ........40.o~'.$
	defb 006h,000h,08bh,0c8h,0e4h,0f0h,018h,050h,070h,084h,020h,070h,020h,000h,000h	; 7528  .......Pp. p ..

; ----------------------------------------------------------------------
; DATOS rle_7537: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; lo leen p00:507A (63 bytes)
;   0x7537..0x7576  (63 bytes)
DATA_rle_7537:
	defb 010h,000h,083h,010h,038h,010h,003h,000h,083h,002h,007h,002h,004h,000h,094h,006h	; 7537  ....8...........
	defb 00eh,004h,000h,000h,022h,070h,020h,000h,008h,01ch,008h,000h,020h,070h,020h,002h	; 7547  ...."p ..... p .
	defb 000h,000h,040h,005h,000h,082h,002h,040h,006h,000h,081h,010h,003h,000h,082h,004h	; 7557  ..@....@........
	defb 010h,003h,000h,081h,011h,003h,000h,084h,010h,000h,000h,002h,011h,000h,000h	; 7567  ...............

; ----------------------------------------------------------------------
; DATOS rle_vram_7576: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (95
;   bytes)
;   0x7576..0x75d5  (95 bytes)
DATA_rle_vram_7576:
	defb 089h,000h,003h,001h,00ch,0f6h,016h,004h,00bh,007h,005h,000h,09eh,005h,00bh,000h	; 7576  ................
	defb 0d0h,00ch,0e0h,0ceh,03fh,0ffh,0c3h,03ch,0c2h,038h,01eh,025h,003h,0eeh,0b0h,003h	; 7586  ....?..<.8.%....
	defb 001h,00ch,0f6h,016h,00ch,00bh,007h,000h,000h,07bh,0edh,003h,000h,09bh,001h,0d0h	; 7596  .........{......
	defb 00ch,0e0h,0ceh,03fh,0ffh,0c3h,03ch,0c2h,018h,076h,0a3h,001h,00ch,0f6h,0d8h,040h	; 75a6  ...?..<..v.....@
	defb 021h,014h,00eh,00ah,00eh,004h,009h,007h,001h,004h,000h,092h,005h,00bh,000h,0e0h	; 75b6  !...............
	defb 098h,04eh,0e3h,09dh,07eh,0ffh,0c3h,0bch,042h,018h,02eh,005h,0ebh,0b4h,000h	; 75c6  .N..~...B......

; ----------------------------------------------------------------------
; DATOS rle_vram_75D5: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (62
;   bytes)
;   0x75d5..0x7613  (62 bytes)
DATA_rle_vram_75D5:
	defb 0a0h,000h,002h,015h,039h,07fh,07fh,098h,0c2h,0c2h,098h,07fh,07fh,039h,015h,002h	; 75d5  ....9........9..
	defb 000h,028h,07ah,07fh,0e0h,0d0h,090h,024h,0aeh,0aeh,024h,090h,0d0h,0e0h,07fh,07ah	; 75e5  .(z....$..$....z
	defb 028h,004h,000h,08ah,015h,07fh,03ch,0c2h,0dch,03fh,079h,076h,017h,001h,006h,000h	; 75f5  (.....<..?yv....
	defb 08ch,0fch,0cbh,034h,0aeh,064h,090h,0ffh,0feh,06ch,050h,000h,000h,000h	; 7605  ...4.d...lP...

; ----------------------------------------------------------------------
; DATOS rle_vram_7613: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (177
;   bytes)
;   0x7613..0x76c4  (177 bytes)
DATA_rle_vram_7613:
	defb 002h,000h,0c9h,006h,009h,008h,008h,070h,0c0h,0c0h,060h,032h,020h,043h,086h,09ch	; 7613  .......p..`2 C..
	defb 070h,01ch,026h,046h,08ch,018h,00eh,003h,033h,066h,04ch,018h,008h,088h,0e4h,03ch	; 7623  p.&F....3fL....<
	defb 018h,002h,007h,009h,018h,010h,030h,021h,041h,0c1h,0c0h,042h,060h,021h,013h,01eh	; 7633  ......0!A..B`!..
	defb 00ch,000h,000h,080h,080h,0e0h,030h,010h,0b0h,020h,060h,030h,030h,0e0h,080h,000h	; 7643  ......0.. `00...
	defb 000h,00eh,013h,030h,064h,0c2h,080h,0c2h,040h,031h,01bh,00eh,007h,000h,002h,080h	; 7653  ...0d...@1......
	defb 003h,040h,002h,080h,007h,000h,08bh,07bh,04eh,040h,066h,0c0h,080h,0c0h,060h,037h	; 7663  .@.....{N@f...`7
	defb 01ch,008h,005h,000h,002h,0c0h,084h,070h,018h,098h,030h,003h,020h,082h,0e0h,040h	; 7673  .......p..0. ..@
	defb 005h,000h,08dh,003h,007h,008h,078h,0f0h,0c2h,064h,044h,060h,030h,013h,01fh,00ch	; 7683  ......x..dD`0...
	defb 004h,000h,08ch,08ch,0f6h,006h,08ch,004h,006h,003h,003h,00eh,01ch,0b0h,0e0h,005h	; 7693  ................
	defb 000h,09eh,006h,00fh,008h,018h,030h,020h,020h,064h,0c1h,08dh,0feh,063h,000h,000h	; 76a3  ......0  d...c..
	defb 00ch,01eh,072h,086h,00ch,004h,004h,006h,006h,00eh,09ch,098h,010h,030h,0e0h,000h	; 76b3  ..r..........0..
	defb 000h	; 76c3

; ----------------------------------------------------------------------
; DATOS rle_vram_76C4: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (10
;   bytes)
;   0x76c4..0x76ce  (10 bytes)
DATA_rle_vram_76C4:
	defb 086h,030h,078h,0fch,0fch,078h,030h,01ah,000h,000h	; 76c4  .0x..x0...

; ----------------------------------------------------------------------
; DATOS rle_vram_76CE: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (65
;   bytes)
;   0x76ce..0x770f  (65 bytes)
DATA_rle_vram_76CE:
	defb 002h,000h,08ch,004h,00ah,011h,008h,012h,021h,02bh,020h,014h,010h,013h,00ch,004h	; 76ce  ........!+ .....
	defb 000h,0aeh,040h,0a0h,020h,020h,090h,08ch,0c4h,088h,010h,008h,0c8h,030h,000h,000h	; 76de  ..@.  .......0..
	defb 018h,024h,04bh,040h,024h,027h,043h,0a7h,08fh,047h,042h,02ah,040h,051h,026h,018h	; 76ee  .$K@$'C..GB*@Q&.
	defb 078h,084h,022h,002h,02ah,064h,0c4h,0c2h,0e1h,0e5h,071h,011h,042h,08ah,064h,018h	; 76fe  x.".*d....q.B.d.
	defb 000h	; 770e

; ----------------------------------------------------------------------
; DATOS rle_vram_770F: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (61
;   bytes)
;   0x770f..0x774c  (61 bytes)
DATA_rle_vram_770F:
	defb 0a0h,000h,007h,00fh,0f7h,01ah,00ch,025h,0abh,0abh,025h,00ch,01ah,0f7h,00fh,007h	; 770f  .......%..%.....
	defb 000h,03dh,0e8h,090h,068h,0f0h,0e4h,014h,055h,055h,014h,0e4h,0f0h,068h,090h,0e8h	; 771f  .=..h...UU...h..
	defb 03dh,003h,000h,089h,002h,0f8h,005h,02bh,0abh,001h,01ah,0f7h,003h,007h,000h,08ah	; 772f  =......+........
	defb 0f8h,007h,050h,054h,0b5h,0f8h,0fch,040h,0f0h,07fh,003h,000h,000h	; 773f  ..PT...@.....

; ----------------------------------------------------------------------
; DATOS rle_vram_774C: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (34
;   bytes)
;   0x774c..0x776e  (34 bytes)
DATA_rle_vram_774C:
	defb 0a0h,000h,007h,00bh,003h,036h,061h,0deh,03dh,03dh,0deh,061h,036h,003h,00bh,007h	; 774c  .....6a.==.a6...
	defb 000h,0e8h,053h,086h,0ech,008h,0f0h,068h,0deh,0deh,068h,0f0h,008h,0ech,086h,053h	; 775c  ..S....h..h....S
	defb 0e8h,000h	; 776c

; ----------------------------------------------------------------------
; DATOS rle_vram_776E: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (98
;   bytes)
;   0x776e..0x77d0  (98 bytes)
DATA_rle_vram_776E:
	defb 0e0h,00ah,016h,017h,026h,037h,076h,06dh,06dh,076h,037h,026h,017h,00ah,004h,00eh	; 776e  ....&7vmmv7&....
	defb 034h,050h,068h,0e8h,064h,0ech,06eh,0b6h,0b6h,06eh,0ech,064h,0e8h,050h,020h,070h	; 777e  4Ph.d.n..n.d.P p
	defb 02ch,007h,01fh,0c1h,073h,001h,03fh,07eh,015h,015h,07eh,03fh,001h,073h,0c1h,01fh	; 778e  ,...s.?~..~?.s..
	defb 007h,0e0h,0f8h,084h,0ceh,083h,0fdh,07eh,0a8h,0a8h,07eh,0fdh,083h,0ceh,084h,0f8h	; 779e  .......~..~.....
	defb 0e0h,003h,00eh,01dh,01ah,035h,02bh,007h,06fh,0ddh,0dah,015h,083h,087h,000h,003h	; 77ae  .....5+.o.......
	defb 01bh,09ch,038h,075h,0fbh,09fh,06eh,06ch,099h,0f5h,0ebh,0d6h,0aeh,01ch,0b0h,080h	; 77be  ..8u..nl........
	defb 000h,000h	; 77ce

; ----------------------------------------------------------------------
; DATOS rle_vram_77D0: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (94
;   bytes)
;   0x77d0..0x782e  (94 bytes)
DATA_rle_vram_77D0:
	defb 006h,000h,084h,001h,003h,003h,001h,00ch,000h,084h,080h,0c0h,0c0h,080h,00bh,000h	; 77d0  ................
	defb 086h,002h,004h,001h,001h,004h,002h,00ah,000h,086h,040h,020h,080h,080h,020h,040h	; 77e0  ..........@ .. @
	defb 008h,000h,08ah,006h,008h,012h,014h,001h,001h,014h,012h,008h,006h,006h,000h,08ah	; 77f0  ................
	defb 060h,010h,048h,028h,080h,080h,028h,048h,010h,060h,003h,000h,0a0h,00ah,03ah,070h	; 7800  `.H(..(H.`....:p
	defb 066h,0c8h,010h,0d1h,003h,003h,0d1h,010h,0c8h,066h,070h,03ah,00ah,050h,05ch,00eh	; 7810  f........fp:.P\.
	defb 066h,013h,008h,08bh,0c0h,0c0h,08bh,008h,013h,066h,00eh,05ch,050h,000h	; 7820  f........f.\P.

; ----------------------------------------------------------------------
; DATOS rle_vram_782E: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (66
;   bytes)
;   0x782e..0x7870  (66 bytes)
DATA_rle_vram_782E:
	defb 0c0h,001h,004h,00fh,03fh,018h,057h,00fh,0afh,0afh,00fh,057h,018h,03fh,00fh,004h	; 782e  ....?.W....W.?..
	defb 001h,07ch,023h,080h,068h,0f4h,040h,088h,0aah,0aah,088h,040h,0f4h,068h,080h,023h	; 783e  .|#.h.@....@.h.#
	defb 07ch,001h,004h,00fh,03fh,018h,057h,00fh,0afh,0afh,00fh,057h,018h,03fh,00fh,004h	; 784e  |...?.W....W.?..
	defb 001h,060h,038h,084h,062h,0f9h,044h,090h,0d4h,0d4h,090h,044h,0f9h,062h,084h,038h	; 785e  .`8.b.D....D.b.8
	defb 060h,000h	; 786e

; ----------------------------------------------------------------------
; DATOS rle_vram_7870: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (29
;   bytes)
;   0x7870..0x788d  (29 bytes)
DATA_rle_vram_7870:
	defb 08ch,00fh,039h,060h,040h,0c0h,080h,080h,0c0h,040h,060h,039h,00fh,005h,000h,08ah	; 7870  ..9`@....@`9....
	defb 0c0h,060h,020h,030h,010h,010h,030h,020h,060h,0c0h,005h,000h,000h	; 7880  .` 0..0 `....

; ----------------------------------------------------------------------
; DATOS rle_vram_788D: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (66
;   bytes)
;   0x788d..0x78cf  (66 bytes)
DATA_rle_vram_788D:
	defb 002h,000h,002h,001h,0a6h,007h,01eh,00dh,00bh,03fh,03fh,07fh,07fh,0ffh,0ffh,00ah	; 788d  .........??.....
	defb 015h,01ch,07eh,0fdh,01eh,03dh,07ah,0f5h,0eeh,0eeh,0dch,0cch,0d0h,0a8h,090h,020h	; 789d  ..~..=z........
	defb 050h,000h,000h,001h,001h,007h,01eh,00dh,00bh,03fh,00fh,003h,007h,093h,04fh,07eh	; 78ad  P........?....O~
	defb 0f9h,01ch,07eh,0fdh,01eh,03dh,07ah,0f5h,0eeh,0eeh,0dch,0cch,0d0h,0a8h,090h,020h	; 78bd  ..~..=z........
	defb 050h,000h	; 78cd

; ----------------------------------------------------------------------
; DATOS rle_vram_78CF: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (8
;   bytes)
;   0x78cf..0x78d7  (8 bytes)
DATA_rle_vram_78CF:
	defb 084h,060h,090h,090h,060h,01ch,000h,000h	; 78cf  .`..`...

; ----------------------------------------------------------------------
; DATOS rle_vram_78D7: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (34
;   bytes)
;   0x78d7..0x78f9  (34 bytes)
DATA_rle_vram_78D7:
	defb 0a0h,003h,00eh,01dh,02fh,03fh,057h,05fh,02dh,05eh,033h,05ah,03dh,017h,015h,00ah	; 78d7  ..../?W_-^3Z=...
	defb 001h,080h,0f0h,0cch,0f6h,0f6h,07eh,0b9h,03ah,0f5h,0fah,0eah,0a6h,0cah,054h,0a8h	; 78e7  ......~.:.....T.
	defb 040h,000h	; 78f7

; ----------------------------------------------------------------------
; DATOS rle_vram_78F9: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (11
;   bytes)
;   0x78f9..0x7904  (11 bytes)
DATA_rle_vram_78F9:
	defb 087h,000h,038h,07ch,07eh,05eh,066h,03ch,019h,000h,000h	; 78f9  ..8|~^f<...

; ----------------------------------------------------------------------
; DATOS rle_vram_7904: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (98
;   bytes)
;   0x7904..0x7966  (98 bytes)
DATA_rle_vram_7904:
	defb 0e0h,001h,003h,007h,004h,013h,016h,035h,035h,036h,033h,014h,017h,003h,019h,008h	; 7904  .......5563.....
	defb 034h,080h,0c0h,0e0h,020h,0c8h,068h,0ach,0ach,06ch,0cch,028h,0e8h,0c0h,098h,010h	; 7914  4... .h..l.(....
	defb 02ch,003h,00fh,022h,071h,0c4h,01bh,036h,075h,075h,036h,01bh,0c4h,071h,022h,00fh	; 7924  ,.."q..6uu6..q".
	defb 003h,0c0h,0f0h,044h,08eh,023h,0d8h,06ch,0aeh,0aeh,06ch,0d8h,023h,08eh,044h,0f0h	; 7934  ...D.#.l..l.#.D.
	defb 0c0h,000h,002h,01ch,038h,075h,069h,052h,08dh,005h,056h,0bbh,0bch,03eh,09ch,082h	; 7944  ....8uiR..V..>..
	defb 06ch,060h,080h,038h,07ch,03ch,0ddh,069h,0a2h,0b0h,042h,094h,0ach,05ch,038h,070h	; 7954  l`.8|<.i..B..\8p
	defb 080h,000h	; 7964

; ----------------------------------------------------------------------
; DATOS rle_vram_7966: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (128
;   bytes)
;   0x7966..0x79e6  (128 bytes)
DATA_rle_vram_7966:
	defb 009h,000h,087h,001h,003h,007h,00fh,01fh,03fh,03fh,007h,000h,0a2h,03eh,0ffh,0fbh	; 7966  ........??...>..
	defb 0f5h,0eah,0f4h,0e0h,0c0h,080h,000h,000h,001h,003h,007h,00fh,01fh,03fh,03fh,07fh	; 7976  .............??.
	defb 07eh,0fch,0f4h,0a8h,0d8h,070h,03eh,0f5h,0fbh,0f5h,0fah,0f4h,0e0h,0c0h,080h,007h	; 7986  ~....p>.........
	defb 000h,08dh,003h,00fh,01fh,03fh,03fh,07fh,07eh,07ch,0f8h,0e8h,0e8h,0d8h,070h,003h	; 7996  .....??.~|....p.
	defb 000h,08ch,0c0h,0e0h,0f0h,0f8h,0fch,0deh,02fh,017h,00bh,005h,00bh,006h,004h,000h	; 79a6  ......../.......
	defb 089h,07ch,0dfh,0bfh,0dfh,077h,03fh,007h,003h,001h,009h,000h,08eh,080h,0c0h,0e0h	; 79b6  .|...w?.........
	defb 0f0h,0f8h,0fch,0fch,0feh,07eh,03fh,02bh,015h,01bh,00eh,008h,000h,088h,07ch,0dfh	; 79c6  .....~?+......|.
	defb 0bfh,0dfh,077h,03fh,007h,003h,00ah,000h,086h,080h,0c0h,0e0h,0f0h,0f8h,0fch,000h	; 79d6  ..w?............

; ----------------------------------------------------------------------
; DATOS rle_vram_79E6: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (52
;   bytes)
;   0x79e6..0x7a1a  (52 bytes)
DATA_rle_vram_79E6:
	defb 005h,000h,085h,005h,01ah,06fh,0f7h,03ah,00bh,000h,085h,040h,0e0h,0d8h,027h,0fch	; 79e6  .....o.:...@..'.
	defb 006h,000h,0a0h,002h,01bh,033h,037h,06fh,098h,065h,055h,055h,065h,098h,06fh,037h	; 79f6  .....37o.eUUe.o7
	defb 037h,01bh,002h,0e0h,03dh,0c0h,0dch,09ah,0b1h,010h,068h,068h,010h,0b1h,09ah,0dch	; 7a06  7...=.....hh....
	defb 0c0h,03dh,0e0h,000h	; 7a16

; ----------------------------------------------------------------------
; DATOS rle_vram_7A1A: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (66
;   bytes)
;   0x7a1a..0x7a5c  (66 bytes)
DATA_rle_vram_7A1A:
	defb 0c0h,003h,00ch,01fh,02fh,077h,078h,087h,07ch,000h,01ch,007h,010h,01bh,00ch,06bh	; 7a1a  ..../wx.|......k
	defb 0f1h,0c0h,030h,0f8h,0f4h,0eeh,01eh,0e1h,03eh,000h,038h,0e0h,008h,0d8h,030h,0d6h	; 7a2a  ..0.....>.8...0.
	defb 08fh,000h,000h,003h,00ch,01fh,02fh,077h,078h,087h,07ch,000h,027h,030h,01bh,068h	; 7a3a  ....../wx.|.'0.h
	defb 0f3h,000h,000h,0c0h,030h,0f8h,0f4h,0eeh,01eh,0e1h,03eh,000h,0e4h,00ch,0d8h,016h	; 7a4a  ....0.....>.....
	defb 0cfh,000h	; 7a5a

; ----------------------------------------------------------------------
; DATOS rle_vram_7A5C: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (65
;   bytes)
;   0x7a5c..0x7a9d  (65 bytes)
DATA_rle_vram_7A5C:
	defb 002h,000h,08ch,010h,03dh,037h,013h,010h,03ah,030h,062h,078h,02dh,00fh,006h,004h	; 7a5c  ....=7..:0bx-...
	defb 000h,0aeh,060h,0f0h,090h,010h,0d8h,0cch,01ch,030h,030h,090h,0d8h,078h,030h,000h	; 7a6c  ..`......00..x0.
	defb 060h,0f0h,098h,08eh,047h,022h,030h,011h,014h,060h,0cah,0f8h,044h,005h,00bh,00ch	; 7a7c  `...G"0..`..D...
	defb 008h,01ch,03ch,068h,0c8h,010h,0b0h,09eh,007h,00eh,018h,090h,0c8h,0a4h,016h,00ch	; 7a8c  ..<h............
	defb 000h	; 7a9c

; ----------------------------------------------------------------------
; DATOS rle_vram_7A9D: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (45
;   bytes)
;   0x7a9d..0x7aca  (45 bytes)
DATA_rle_vram_7A9D:
	defb 088h,00ch,01eh,01eh,06ch,0f6h,0ffh,06fh,006h,018h,000h,088h,030h,078h,078h,036h	; 7a9d  ....l..o....0xx6
	defb 06fh,0ffh,0f6h,060h,018h,000h,088h,060h,0f6h,0ffh,06fh,036h,078h,078h,030h,018h	; 7aad  o..`...`..o6xx0.
	defb 000h,088h,006h,06fh,0ffh,0f6h,06ch,01eh,01eh,00ch,018h,000h,000h	; 7abd  ...o..l......

; ----------------------------------------------------------------------
; DATOS rle_vram_7ACA: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (54
;   bytes)
;   0x7aca..0x7b00  (54 bytes)
DATA_rle_vram_7ACA:
	defb 006h,000h,094h,003h,001h,000h,00fh,004h,002h,03fh,010h,008h,0fch,03fh,010h,008h	; 7aca  .........?...?..
	defb 0fch,040h,020h,0f0h,000h,080h,0c0h,008h,000h,084h,003h,00fh,01fh,01fh,004h,03fh	; 7ada  .@ ............?
	defb 002h,01fh,082h,00fh,003h,004h,000h,084h,0c0h,0f0h,0f8h,0f8h,004h,0fch,002h,0f8h	; 7aea  ................
	defb 084h,0f0h,0c0h,000h,000h,000h	; 7afa

; ----------------------------------------------------------------------
; DATOS rle_vram_7B00: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (78
;   bytes)
;   0x7b00..0x7b4e  (78 bytes)
DATA_rle_vram_7B00:
	defb 08ah,007h,00fh,01eh,07dh,0fch,0feh,07fh,01fh,00fh,007h,006h,000h,08ah,080h,0c0h	; 7b00  ....}...........
	defb 060h,038h,03ch,07ch,0f8h,0e0h,0c0h,080h,006h,000h,08eh,00ch,01eh,01eh,03fh,07fh	; 7b10  `8<|..........?.
	defb 0ffh,0f9h,0f2h,0f0h,079h,03fh,01eh,01eh,00ch,006h,000h,081h,080h,004h,0c0h,081h	; 7b20  ....y?..........
	defb 080h,006h,000h,08ah,030h,078h,078h,0d8h,08ch,0dfh,07fh,00fh,00fh,006h,016h,000h	; 7b30  ....0xx.........
	defb 08ah,060h,0f0h,0f0h,0f8h,07eh,03bh,011h,01bh,00eh,004h,016h,000h,000h	; 7b40  .`...~........

; ----------------------------------------------------------------------
; DATOS rle_vram_7B4E: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (95
;   bytes)
;   0x7b4e..0x7bad  (95 bytes)
DATA_rle_vram_7B4E:
	defb 08dh,001h,00eh,017h,00ah,01dh,0ech,01dh,00bh,004h,000h,000h,03ah,0edh,003h,000h	; 7b4e  ............:...
	defb 09ah,0f0h,07ch,09eh,029h,09eh,07fh,087h,07ah,0c4h,010h,074h,0a6h,0c3h,002h,014h	; 7b5e  ..|.)...z..t....
	defb 078h,000h,001h,00eh,017h,00ah,01dh,0ech,01dh,00bh,004h,005h,000h,09ch,003h,000h	; 7b6e  x...............
	defb 0f0h,07ch,0a6h,029h,09eh,07fh,087h,03ah,0c4h,018h,00ch,001h,016h,0e8h,0b0h,000h	; 7b7e  .|.)...:........
	defb 040h,063h,037h,01dh,00eh,00eh,004h,00bh,007h,001h,004h,000h,091h,003h,000h,000h	; 7b8e  @c7.............
	defb 060h,0b8h,0dch,06ch,0a6h,05ah,07eh,0c7h,03bh,0c6h,018h,006h,0ech,0b0h,000h	; 7b9e  `..l.Z~........

; ----------------------------------------------------------------------
; DATOS rle_vram_7BAD: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (61
;   bytes)
;   0x7bad..0x7bea  (61 bytes)
DATA_rle_vram_7BAD:
	defb 003h,000h,096h,001h,003h,007h,00fh,01fh,03eh,07dh,06ah,074h,068h,050h,020h,000h	; 7bad  ........>}jthP .
	defb 000h,07ch,0bah,0d4h,0a8h,0d0h,0a0h,040h,080h,007h,000h,0a0h,001h,003h,007h,00fh	; 7bbd  .|.....@........
	defb 017h,03bh,07dh,0eeh,077h,07fh,037h,03bh,01dh,01eh,00dh,00ah,000h,0c0h,070h,0bch	; 7bcd  ..}.w.7.......p.
	defb 0dfh,0eeh,0d5h,0eah,0f4h,0e8h,0d0h,0a0h,040h,080h,000h,000h,000h	; 7bdd  ........@....

; ----------------------------------------------------------------------
; DATOS rle_vram_7BEA: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (76
;   bytes)
;   0x7bea..0x7c36  (76 bytes)
DATA_rle_vram_7BEA:
	defb 083h,003h,007h,007h,00ah,00fh,002h,007h,084h,003h,0c0h,0e0h,0e0h,00ah,0f0h,002h	; 7bea  ................
	defb 0e0h,086h,0c0h,007h,01fh,03fh,07fh,07fh,006h,0ffh,002h,07fh,088h,03fh,01fh,007h	; 7bfa  .....?.......?..
	defb 0e0h,0f8h,0fch,0feh,0feh,006h,0ffh,002h,0feh,087h,0fch,0f8h,0e0h,001h,003h,007h	; 7c0a  ................
	defb 007h,004h,00fh,082h,01fh,07fh,003h,0ffh,087h,07fh,01fh,007h,080h,0c0h,0e0h,0e0h	; 7c1a  ................
	defb 004h,0f0h,082h,0f8h,0feh,003h,0ffh,083h,0feh,0f8h,0e0h,000h	; 7c2a  ............

; ----------------------------------------------------------------------
; DATOS rle_vram_7C36: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (34
;   bytes)
;   0x7c36..0x7c58  (34 bytes)
DATA_rle_vram_7C36:
	defb 0a0h,085h,04bh,038h,025h,06eh,09fh,04eh,0d5h,0d5h,04eh,09fh,06eh,025h,038h,04bh	; 7c36  ..K8%n.N..N.n%8K
	defb 085h,0a1h,0d2h,01ch,0a4h,076h,0f9h,072h,0abh,0abh,072h,0f9h,076h,0a4h,01ch,0d2h	; 7c46  .....v.r..r.v...
	defb 0a1h,000h	; 7c56

; ----------------------------------------------------------------------
; DATOS rle_vram_7C58: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (12
;   bytes)
;   0x7c58..0x7c64  (12 bytes)
DATA_rle_vram_7C58:
	defb 083h,000h,03ch,07eh,003h,0ffh,082h,07eh,03ch,018h,000h,000h	; 7c58  ..<~...~<...

; ----------------------------------------------------------------------
; DATOS rle_vram_7C64: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (11
;   bytes)
;   0x7c64..0x7c6f  (11 bytes)
DATA_rle_vram_7C64:
	defb 002h,010h,085h,038h,0feh,038h,010h,010h,019h,000h,000h	; 7c64  ...8.8.....

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7c6f..0x7cbf  (80 bytes)
DATA_7C6F:
	defb 005h,000h,086h,005h,01bh,037h,0b7h,01bh,005h,00ah,000h,086h,080h,08eh,0afh,0afh	; 7c6f  .....7..........
	defb 08eh,080h,008h,000h,08ah,003h,00ch,01fh,0e0h,01fh,0e0h,01fh,038h,017h,007h,006h	; 7c7f  ............8...
	defb 000h,08ah,088h,02ch,08fh,020h,0dah,060h,08fh,02eh,0a8h,080h,003h,000h,0a0h,003h	; 7c8f  ...,. .`........
	defb 00fh,013h,01ch,03fh,000h,0e0h,00bh,00bh,0e0h,000h,03fh,01ch,013h,00fh,003h,080h	; 7c9f  ...?......?.....
	defb 08ch,0aeh,021h,08fh,000h,060h,0dah,0dah,060h,000h,08fh,021h,0aeh,08ch,080h,000h	; 7caf  ..!..`..`..!....

; ----------------------------------------------------------------------
; DATOS rle_vram_7CBF: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (66
;   bytes)
;   0x7cbf..0x7d01  (66 bytes)
DATA_rle_vram_7CBF:
	defb 0c0h,001h,018h,006h,05bh,050h,023h,036h,095h,055h,058h,03bh,07dh,03eh,030h,007h	; 7cbf  ....[P#6.UX.}>0.
	defb 003h,000h,0d0h,03ch,0fch,078h,09ah,02bh,0b3h,077h,0ebh,0e9h,099h,071h,080h,0c0h	; 7ccf  ...<.x.+.w...q..
	defb 0f8h,00ch,01eh,0efh,01eh,079h,096h,06dh,0cbh,0cbh,06dh,096h,079h,01eh,0efh,01eh	; 7cdf  .....y.m..m.y...
	defb 00ch,0f0h,07ch,086h,071h,0c8h,0f0h,06ch,076h,076h,06ch,0f0h,0c8h,071h,086h,07ch	; 7cef  ..|.q..lvvl..q.|
	defb 0f0h,000h	; 7cff

; ----------------------------------------------------------------------
; DATOS rle_vram_7D01: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (34
;   bytes)
;   0x7d01..0x7d23  (34 bytes)
DATA_rle_vram_7D01:
	defb 0a0h,001h,01bh,039h,03ah,057h,06fh,00fh,02fh,067h,060h,076h,032h,038h,011h,00bh	; 7d01  ...9:Wo./g`v28..
	defb 001h,0c0h,0f0h,0b8h,050h,0a4h,0c4h,0ceh,0aeh,01eh,0deh,0eeh,054h,020h,078h,0f0h	; 7d11  ....P.......T x.
	defb 080h,000h	; 7d21

; ----------------------------------------------------------------------
; DATOS rle_vram_7D23: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (12
;   bytes)
;   0x7d23..0x7d2f  (12 bytes)
DATA_rle_vram_7D23:
	defb 088h,008h,01ch,058h,0e6h,067h,01ah,038h,010h,018h,000h,000h	; 7d23  ...X.g.8....

; ----------------------------------------------------------------------
; DATOS rle_vram_7D2F: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (56
;   bytes)
;   0x7d2f..0x7d67  (56 bytes)
DATA_rle_vram_7D2F:
	defb 087h,0fch,008h,057h,0ffh,057h,008h,0fch,00bh,000h,083h,0feh,0ffh,0feh,00bh,000h	; 7d2f  ...W.W..........
	defb 08ah,004h,006h,02bh,019h,03eh,0cdh,06bh,037h,013h,001h,009h,000h,093h,080h,000h	; 7d3f  ...+.>.k7.......
	defb 000h,080h,0c0h,0e0h,0f0h,0f8h,078h,038h,004h,000h,000h,092h,0bah,092h,0bah,0d6h	; 7d4f  ......x8........
	defb 0bah,009h,038h,081h,010h,010h,000h,000h	; 7d5f  ..8.....

; ----------------------------------------------------------------------
; DATOS rle_vram_7D67: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (58
;   bytes)
;   0x7d67..0x7da1  (58 bytes)
DATA_rle_vram_7D67:
	defb 08eh,080h,040h,060h,030h,038h,01ch,01eh,00fh,00fh,007h,007h,003h,003h,001h,00ah	; 7d67  ..@`08..........
	defb 000h,082h,080h,0c0h,003h,0e0h,083h,0c0h,000h,000h,004h,020h,005h,070h,006h,0f8h	; 7d77  ........... .p..
	defb 081h,070h,013h,000h,092h,001h,003h,007h,00fh,01eh,03eh,07ch,0fch,0f8h,0f8h,070h	; 7d87  .p........>|...p
	defb 000h,000h,020h,040h,0c0h,080h,080h,00bh,000h,000h	; 7d97  .. @......

; ----------------------------------------------------------------------
; DATOS rle_vram_7DA1: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (31
;   bytes)
;   0x7da1..0x7dc0  (31 bytes)
DATA_rle_vram_7DA1:
	defb 084h,000h,00fh,0ffh,00fh,00ch,000h,081h,03eh,003h,0ffh,081h,03eh,00eh,000h,084h	; 7da1  ........>...>...
	defb 003h,00fh,03fh,0f0h,009h,000h,085h,00ch,03eh,0feh,0feh,0f0h,00bh,000h,000h	; 7db1  ..?.....>......

; ----------------------------------------------------------------------
; DATOS rle_vram_7DC0: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (44
;   bytes)
;   0x7dc0..0x7dec  (44 bytes)
DATA_rle_vram_7DC0:
	defb 082h,01eh,07fh,003h,0ffh,082h,07fh,01eh,00ah,000h,085h,0e0h,0ffh,0fch,0f0h,0c0h	; 7dc0  ................
	defb 00ah,000h,08bh,070h,0fch,0feh,0feh,0ffh,07fh,07fh,03fh,00fh,007h,001h,00bh,000h	; 7dd0  ...p......?.....
	defb 002h,080h,088h,0c0h,0e0h,0a0h,0d0h,060h,010h,008h,000h,000h	; 7de0  .......`....

; ----------------------------------------------------------------------
; DATOS sin identificar  0x7dec..0x7e0e  (34 bytes)
DATA_7DEC:
	defb 0a0h,000h,001h,006h,00fh,03fh,000h,016h,016h,03fh,008h,07fh,0bbh,0ffh,000h,073h	; 7dec  .....?...?.....s
	defb 021h,000h,080h,060h,0f0h,0fch,000h,068h,068h,0fch,010h,0feh,0ddh,0ffh,000h,0ceh	; 7dfc  !..`...hh.......
	defb 084h,000h	; 7e0c

; ----------------------------------------------------------------------
; DATOS rle_vram_7E0E: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (117
;   bytes)
;   0x7e0e..0x7e83  (117 bytes)
DATA_rle_vram_7E0E:
	defb 004h,000h,099h,001h,009h,033h,0ffh,03fh,00fh,003h,001h,001h,002h,000h,000h,015h	; 7e0e  .....3.?........
	defb 07bh,0eeh,0fbh,0feh,0fdh,0feh,0fah,0feh,0f4h,0f8h,03eh,007h,003h,000h,08eh,008h	; 7e1e  {.........>.....
	defb 030h,0feh,03fh,01fh,01fh,03fh,03fh,07fh,06fh,0ffh,0b5h,06fh,015h,005h,000h,085h	; 7e2e  0.?..??.o..o....
	defb 080h,0e0h,0f8h,0feh,0e7h,003h,0c0h,081h,080h,004h,000h,089h,040h,000h,008h,001h	; 7e3e  ............@...
	defb 003h,00ah,001h,004h,001h,003h,000h,081h,001h,003h,000h,08dh,006h,03ch,0f8h,0f6h	; 7e4e  .............<..
	defb 0fch,0b9h,02eh,07ch,038h,072h,0bch,070h,042h,008h,000h,08ah,004h,008h,01ah,064h	; 7e5e  ...|8r.pB......d
	defb 00fh,03bh,086h,008h,001h,022h,006h,000h,08bh,080h,000h,052h,084h,054h,0f9h,0f0h	; 7e6e  .....".....R.T..
	defb 0c0h,080h,000h,010h,000h	; 7e7e

; ----------------------------------------------------------------------
; DATOS rle_vram_7E83: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (90
;   bytes)
;   0x7e83..0x7edd  (90 bytes)
DATA_rle_vram_7E83:
	defb 08ah,000h,008h,033h,0ffh,03fh,00fh,003h,001h,001h,002h,006h,000h,089h,010h,068h	; 7e83  ...3.?.........h
	defb 0f0h,0bch,0ebh,0f0h,0f8h,03eh,007h,007h,000h,089h,008h,030h,0ffh,03fh,00fh,01fh	; 7e93  .....>.....0.?..
	defb 01fh,0bbh,016h,009h,000h,087h,080h,0e0h,0f0h,0f8h,0feh,087h,080h,008h,000h,087h	; 7ea3  ................
	defb 008h,000h,02eh,097h,00fh,043h,014h,008h,000h,089h,010h,040h,008h,000h,0e0h,0fch	; 7eb3  .....C.....@....
	defb 0f0h,084h,020h,007h,000h,088h,021h,002h,01fh,075h,00ah,040h,000h,004h,009h,000h	; 7ec3  .. ...!..u.@....
	defb 086h,022h,048h,0f0h,064h,000h,080h,009h,000h,000h	; 7ed3  ."H.d.....

; ----------------------------------------------------------------------
; DATOS rle_vram_7EDD: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (56
;   bytes)
;   0x7edd..0x7f15  (56 bytes)
DATA_rle_vram_7EDD:
	defb 004h,000h,088h,004h,000h,000h,001h,010h,000h,000h,002h,008h,000h,081h,040h,004h	; 7edd  ..............@.
	defb 000h,083h,020h,000h,040h,005h,000h,09fh,004h,000h,000h,021h,008h,000h,000h,004h	; 7eed  .. .@......!....
	defb 000h,020h,004h,000h,002h,010h,000h,000h,008h,000h,040h,000h,000h,010h,080h,000h	; 7efd  . ........@.....
	defb 008h,000h,000h,040h,010h,000h,000h,000h	; 7f0d  ...@....

; ----------------------------------------------------------------------
; DATOS rle_vram_7F15: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (23
;   bytes)
;   0x7f15..0x7f2c  (23 bytes)
DATA_rle_vram_7F15:
	defb 004h,000h,082h,003h,007h,004h,00fh,082h,007h,003h,008h,000h,082h,0c0h,0e0h,004h	; 7f15  ................
	defb 0f0h,082h,0e0h,0c0h,004h,000h,000h	; 7f25

; ----------------------------------------------------------------------
; DATOS rle_vram_7F2C: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (34
;   bytes)
;   0x7f2c..0x7f4e  (34 bytes)
DATA_rle_vram_7F2C:
	defb 0a0h,080h,040h,060h,030h,033h,02eh,00fh,016h,019h,00bh,001h,012h,039h,031h,040h	; 7f2c  ..@`03.......91@
	defb 081h,001h,002h,006h,00ch,0cch,074h,0f0h,068h,098h,0d0h,080h,048h,09ch,08ch,002h	; 7f3c  ......t.h...H...
	defb 081h,000h	; 7f4c

; ----------------------------------------------------------------------
; DATOS rle_vram_7F4E: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (34
;   bytes)
;   0x7f4e..0x7f70  (34 bytes)
DATA_rle_vram_7F4E:
	defb 0a0h,030h,041h,0a0h,095h,00dh,01eh,004h,058h,059h,004h,01eh,00dh,095h,0a0h,041h	; 7f4e  .0A.....XY.....A
	defb 030h,00ch,082h,005h,0a9h,0b0h,078h,020h,09ah,0dah,0a0h,078h,0b0h,0a9h,005h,082h	; 7f5e  0.....x ...x....
	defb 00ch,000h	; 7f6e

; ----------------------------------------------------------------------
; DATOS rle_vram_7F70: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (32
;   bytes)
;   0x7f70..0x7f90  (32 bytes)
DATA_rle_vram_7F70:
	defb 092h,000h,003h,001h,000h,001h,001h,043h,06eh,0feh,043h,001h,001h,000h,001h,003h	; 7f70  .......Cn.C.....
	defb 000h,080h,0c0h,004h,080h,084h,0c2h,076h,07fh,0c2h,004h,080h,082h,0c0h,080h,000h	; 7f80  .......v........

; ----------------------------------------------------------------------
; DATOS rle_vram_7F90: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (93
;   bytes)
;   0x7f90..0x7fed  (93 bytes)
DATA_rle_vram_7F90:
	defb 0b0h,000h,010h,030h,078h,00ch,00eh,007h,002h,002h,007h,00eh,01ch,070h,030h,010h	; 7f90  ...0x........p0.
	defb 000h,000h,008h,00ch,01eh,030h,070h,0e0h,040h,040h,0e0h,070h,038h,00eh,00ch,008h	; 7fa0  .....0p.@@.p8...
	defb 000h,001h,000h,000h,001h,000h,004h,000h,091h,001h,000h,004h,000h,001h,000h,000h	; 7fb0  ................
	defb 001h,005h,000h,086h,020h,000h,089h,080h,000h,020h,006h,000h,09fh,040h,000h,000h	; 7fc0  .... .... ...@..
	defb 011h,000h,000h,009h,009h,000h,000h,001h,008h,000h,040h,000h,000h,002h,000h,000h	; 7fd0  ..........@.....
	defb 088h,000h,000h,090h,090h,000h,000h,080h,010h,000h,002h,000h,000h	; 7fe0  .............

; ----------------------------------------------------------------------
; DATOS rle_vram_7FED: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0 (sigue en el banco 15,
;   en 0x8000); lo leen p00:4B3C (19 bytes)
;   0x7fed..0x8000  (19 bytes)
DATA_rle_vram_7FED:
	defb 0bdh,00fh,017h,017h,03bh,07eh,07dh,0fdh,0fah,0dch,05eh,067h,026h,017h,01ah,00eh	; 7fed  .....~}...^g&...
	defb 007h,000h,080h	; 7ffd

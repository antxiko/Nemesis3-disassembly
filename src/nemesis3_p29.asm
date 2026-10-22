; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 29 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS rle_A000: graficos comprimidos a la VRAM con su direccion delante
;   (p00:4B36): direccion y el RLE de p00:4B3C; lo leen p26:7E03 (252 bytes)
;   0xa000..0xa0fc  (252 bytes)
DATA_rle_A000:
	defb 018h,026h,081h,03fh,003h,022h,081h,01fh,003h,012h,085h,0fch,023h,022h,022h,0ffh	; a000  .&.?."......#"".
	defb 003h,022h,085h,000h,0e0h,03eh,023h,0ffh,003h,022h,003h,000h,085h,0c0h,0f0h,02ch	; a010  ."...>#..".....,
	defb 023h,022h,007h,000h,082h,080h,01fh,003h,012h,081h,01fh,003h,012h,081h,0ffh,003h	; a020  #"..............
	defb 022h,081h,0ffh,003h,022h,085h,0c0h,020h,030h,028h,0f8h,003h,028h,004h,000h,084h	; a030  "...".. 0(..(...
	defb 003h,01ch,060h,080h,004h,000h,084h,0fch,043h,040h,040h,005h,000h,083h,080h,060h	; a040  ..`.....C@@....`
	defb 010h,005h,000h,083h,001h,006h,009h,004h,000h,084h,03fh,0ceh,095h,024h,004h,000h	; a050  ..........?..$..
	defb 085h,0c0h,078h,026h,091h,01fh,003h,012h,085h,01fh,012h,012h,022h,0f8h,003h,028h	; a060  ..x&........"..(
	defb 081h,0f8h,003h,028h,0a0h,001h,002h,004h,008h,008h,010h,010h,011h,001h,006h,018h	; a070  ...(............
	defb 020h,041h,086h,088h,010h,0f8h,046h,041h,040h,0f8h,046h,041h,042h,008h,00ch,092h	; a080   A....FA@.FAB...
	defb 061h,061h,090h,010h,088h,005h,000h,003h,081h,08ah,012h,022h,044h,084h,088h,008h	; a090  aa........."D...
	defb 008h,010h,024h,024h,004h,044h,002h,084h,091h,08fh,088h,044h,047h,042h,042h,022h	; a0a0  ..$$.D.....DGBB"
	defb 021h,080h,040h,020h,0f0h,010h,008h,008h,0f8h,03fh,003h,022h,081h,03fh,003h,022h	; a0b0  !.@ .....?.".?."
	defb 081h,021h,006h,022h,083h,021h,010h,021h,004h,022h,08eh,021h,010h,0f4h,048h,004h	; a0c0  .!.".!.!.".!..H.
	defb 00fh,004h,004h,008h,0f4h,088h,044h,044h,0ffh,003h,044h,081h,088h,003h,042h,081h	; a0d0  ......DD..D...B.
	defb 0c3h,004h,042h,003h,010h,081h,0ffh,004h,010h,003h,084h,081h,0ffh,004h,084h,003h	; a0e0  ..B.............
	defb 021h,081h,0ffh,004h,021h,003h,004h,081h,0fch,004h,004h,000h	; a0f0  !...!.......

; ----------------------------------------------------------------------
; DATOS rle_A0FC: graficos comprimidos a la VRAM con su direccion delante
;   (p00:4B36): direccion y el RLE de p00:4B3C; lo leen p26:7E09 (9 bytes)
;   0xa0fc..0xa105  (9 bytes)
DATA_rle_A0FC:
	defb 018h,006h,07fh,0e0h,07fh,0e0h,01ah,0e0h,000h	; a0fc  .........

; ----------------------------------------------------------------------
; DATOS rle_A105: graficos comprimidos a la VRAM con su direccion delante
;   (p00:4B36): direccion y el RLE de p00:4B3C; lo leen p26:7E0F (165 bytes)
;   0xa105..0xa1aa  (165 bytes)
DATA_rle_A105:
	defb 090h,02eh,081h,03fh,003h,022h,081h,03fh,003h,022h,081h,0ffh,003h,022h,081h,0ffh	; a105  ...?.".?."..."..
	defb 003h,022h,081h,0f8h,003h,028h,0a4h,0f8h,028h,028h,030h,011h,010h,010h,008h,008h	; a115  ."...(..((0.....
	defb 004h,002h,001h,010h,088h,086h,041h,020h,018h,006h,001h,002h,001h,006h,0f8h,000h	; a125  ......A ........
	defb 001h,006h,0f8h,088h,010h,090h,061h,061h,092h,00ch,008h,003h,081h,005h,000h,08ah	; a135  ......aa........
	defb 010h,008h,008h,088h,084h,044h,022h,012h,084h,084h,004h,044h,002h,024h,088h,021h	; a145  .....D"....D.$.!
	defb 022h,042h,042h,044h,044h,088h,088h,003h,008h,002h,010h,089h,020h,040h,080h,0f0h	; a155  "BBDD....... @..
	defb 020h,020h,040h,0c0h,040h,003h,080h,083h,060h,01ch,003h,006h,000h,082h,003h,0fch	; a165    @.@...`.......
	defb 004h,000h,083h,010h,060h,080h,005h,000h,083h,009h,006h,001h,005h,000h,084h,024h	; a175  ....`..........$
	defb 095h,0ceh,03fh,004h,000h,084h,091h,026h,078h,0c0h,004h,000h,081h,03fh,003h,022h	; a185  ..?....&x....?."
	defb 081h,03fh,003h,000h,081h,0ffh,003h,022h,081h,0ffh,003h,000h,085h,080h,040h,040h	; a195  .?....."......@@
	defb 020h,0e0h,003h,000h,000h	; a1a5

; ----------------------------------------------------------------------
; DATOS rle_A1AA: graficos comprimidos a la VRAM con su direccion delante
;   (p00:4B36): direccion y el RLE de p00:4B3C; lo leen p26:7E15 (7 bytes)
;   0xa1aa..0xa1b1  (7 bytes)
DATA_rle_A1AA:
	defb 090h,00eh,07fh,0e0h,031h,0e0h,000h	; a1aa

; ----------------------------------------------------------------------
; DATOS rle_A1B1: los dibujos de una entrada de la lista de graficos de
;   26:7E23, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A1B1
;   A1B1-A1D3); lo leen p00:4CFF, p00:4B3C (34 bytes)
;   0xa1b1..0xa1d3  (34 bytes)
DATA_rle_A1B1:
	defb 0a0h,0efh,03dh,0d7h,0fah,0edh,05fh,0feh,0d5h,07dh,0f7h,0bfh,0d7h,07fh,0f7h,0bdh	; a1b1  ..=..._..}......
	defb 0ebh,0bbh,0fah,0fdh,0afh,0f7h,0ech,0f7h,0beh,0d7h,0dfh,06ah,0ffh,0bah,0ffh,0dbh	; a1c1  ...........j....
	defb 07fh,000h	; a1d1

; ----------------------------------------------------------------------
; DATOS rle_A1D3: los colores de una entrada de la lista de graficos de
;   26:7E23, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A1D3
;   A1D3-A1D6); lo leen p00:4D11, p00:4B3C (3 bytes)
;   0xa1d3..0xa1d6  (3 bytes)
DATA_rle_A1D3:
	defb 020h,0e0h,000h	; a1d3

; ----------------------------------------------------------------------
; DATOS graficos_A1D6: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:8469 (79 bytes)
;   0xa1d6..0xa225  (79 bytes)
DATA_graficos_A1D6:
	defb 004h,056h,0a2h,050h,05bh,0a2h	; a1d6
	defb 004h,060h,0a2h,056h,0abh,0a2h	; a1dc
	defb 004h,0c8h,0a2h,067h,0d2h,0a2h	; a1e2
	defb 004h,0d5h,0a2h,069h,0e7h,0a2h	; a1e8
	defb 004h,0f4h,0a2h,076h,097h,0a3h	; a1ee
	defb 004h,0e2h,0a3h,090h,0ach,0a4h	; a1f4
	defb 004h,01dh,0a5h,0d0h,054h,0a5h	; a1fa
	defb 004h,073h,0a5h,0e0h,0cbh,0a5h	; a200
	defb 002h,0ech,0a5h,098h,004h,0a6h	; a206
	defb 002h,00fh,0a6h,0a0h,0d1h,0a6h	; a20c
	defb 002h,017h,0a7h,0bch,039h,0a7h	; a212
	defb 002h,059h,0a7h,0e0h,09ch,0a7h	; a218
	defb 002h,0b5h,0a7h,0f6h,005h,0a8h	; a21e
	defb 000h	; a224

; ----------------------------------------------------------------------
; DATOS copias_A225: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B): de 4 en 4 (origen, destino, tercios y vuelta, cuantos) y un 0;
;   lo leen p27:8470 (49 bytes)
;   0xa225..0xa256  (49 bytes)
DATA_copias_A225:
	defb 050h,053h,024h,003h	; a225
	defb 050h,080h,094h,003h	; a229
	defb 053h,083h,094h,003h	; a22d
	defb 059h,060h,024h,007h	; a231
	defb 067h,068h,024h,001h	; a235
	defb 090h,0b0h,024h,01dh	; a239
	defb 0e0h,0f0h,024h,00ch	; a23d
	defb 056h,086h,094h,00ah	; a241
	defb 089h,090h,012h,007h	; a245
	defb 098h,09bh,012h,003h	; a249
	defb 0a0h,0c0h,012h,01ah	; a24d
	defb 0f6h,0f0h,012h,006h	; a251
	defb 000h	; a255

; ----------------------------------------------------------------------
; DATOS rle_A256: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (5 bytes)
;   0xa256..0xa25b  (5 bytes)
DATA_rle_A256:
	defb 008h,00fh,010h,03dh,000h	; a256

; ----------------------------------------------------------------------
; DATOS rle_A25B: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (5 bytes)
;   0xa25b..0xa260  (5 bytes)
DATA_rle_A25B:
	defb 010h,0f0h,008h,0e0h,000h	; a25b

; ----------------------------------------------------------------------
; DATOS rle_A260: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (75 bytes)
;   0xa260..0xa2ab  (75 bytes)
DATA_rle_A260:
	defb 002h,000h,006h,0ffh,081h,000h,003h,0ffh,084h,000h,0ffh,000h,000h,004h,0ffh,082h	; a260  ................
	defb 000h,0ffh,003h,000h,087h,03fh,0dfh,0dfh,0e0h,0cfh,0b0h,060h,003h,000h,098h,001h	; a270  .....?.....`....
	defb 003h,007h,00fh,01fh,03eh,07dh,0fbh,0f6h,0ech,0d8h,0b1h,063h,0c7h,08bh,01bh,03dh	; a280  ....>}.....c...=
	defb 07ch,0fah,0f6h,0ech,026h,039h,03ch,005h,03dh,090h,0c7h,08fh,01fh,026h,039h,03ch	; a290  |...&9<.=....&9<
	defb 03dh,03dh,0d8h,0b0h,060h,0c0h,080h,001h,003h,007h,000h	; a2a0  ==..`......

; ----------------------------------------------------------------------
; DATOS rle_A2AB: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (29 bytes)
;   0xa2ab..0xa2c8  (29 bytes)
DATA_rle_A2AB:
	defb 004h,0f0h,002h,070h,002h,050h,004h,0f0h,004h,0e0h,002h,0f0h,006h,0e0h,005h,0f0h	; a2ab  ...p.P..........
	defb 081h,0e0h,024h,0f0h,006h,0e0h,081h,0f0h,004h,0e0h,003h,0f0h,000h	; a2bb  ..$..........

; ----------------------------------------------------------------------
; DATOS rle_A2C8: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (10 bytes)
;   0xa2c8..0xa2d2  (10 bytes)
DATA_rle_A2C8:
	defb 088h,0cdh,09ah,034h,068h,0d0h,0a0h,040h,080h,000h	; a2c8  ...4h..@..

; ----------------------------------------------------------------------
; DATOS rle_A2D2: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (3 bytes)
;   0xa2d2..0xa2d5  (3 bytes)
DATA_rle_A2D2:
	defb 008h,0e0h,000h	; a2d2

; ----------------------------------------------------------------------
; DATOS rle_A2D5: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (18 bytes)
;   0xa2d5..0xa2e7  (18 bytes)
DATA_rle_A2D5:
	defb 002h,000h,08eh,03fh,07fh,0fch,0e0h,0feh,0f8h,000h,000h,0fch,0feh,003h,001h,03fh	; a2d5  ...?...........?
	defb 007h,000h	; a2e5

; ----------------------------------------------------------------------
; DATOS rle_A2E7: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (13 bytes)
;   0xa2e7..0xa2f4  (13 bytes)
DATA_rle_A2E7:
	defb 004h,0f0h,002h,0f7h,002h,0f5h,004h,0f0h,002h,0f7h,002h,075h,000h	; a2e7  ...........u.

; ----------------------------------------------------------------------
; DATOS rle_A2F4: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (163 bytes)
;   0xa2f4..0xa397  (163 bytes)
DATA_rle_A2F4:
	defb 0ffh,03eh,07ch,078h,000h,000h,0ffh,0ffh,000h,000h,0ffh,0ffh,000h,000h,07eh,0e1h	; a2f4  .>|x..........~.
	defb 0c3h,000h,0ffh,0ffh,000h,000h,0feh,0e0h,080h,07fh,07fh,0ffh,000h,000h,0ffh,0ffh	; a304  ................
	defb 000h,000h,0ffh,000h,0ffh,000h,0feh,0fch,0f8h,081h,003h,007h,00fh,01fh,01fh,07fh	; a314  ................
	defb 0fdh,0d8h,090h,030h,071h,062h,0c0h,0a8h,0f0h,0fdh,0fbh,0f7h,0e7h,0efh,08fh,01fh	; a324  ...0qb..........
	defb 03fh,0e1h,0c7h,007h,00fh,01fh,01fh,07eh,0fch,0f0h,0e0h,0c0h,080h,0e0h,0c0h,087h	; a334  ?......~........
	defb 038h,007h,001h,003h,007h,00fh,01fh,01fh,03eh,0f0h,0e1h,0c3h,087h,00eh,000h,0ffh	; a344  8.......>.......
	defb 000h,000h,0ffh,000h,0ffh,000h,01ch,038h,070h,0e1h,0c3h,087h,00eh,01ch,000h,0ffh	; a354  .......8p.......
	defb 000h,0cfh,087h,08fh,08fh,007h,01fh,003h,007h,03fh,01fh,07fh,000h,000h,0ffh,0ffh	; a364  .........?......
	defb 002h,000h,002h,0ffh,002h,000h,09bh,07fh,0fah,0fch,023h,047h,08fh,01eh,03ch,07ch	; a374  ..........#G..<|
	defb 078h,0f0h,0f8h,0f0h,0e0h,000h,000h,0ffh,0ffh,000h,000h,0ffh,0ffh,000h,000h,006h	; a384  x...............
	defb 00fh,013h,000h	; a394

; ----------------------------------------------------------------------
; DATOS rle_A397: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (75 bytes)
;   0xa397..0xa3e2  (75 bytes)
DATA_rle_A397:
	defb 003h,0f5h,003h,0e0h,004h,0f0h,003h,0e0h,003h,0f7h,002h,0f0h,003h,0e0h,083h,0f0h	; a397  ................
	defb 0f7h,0f7h,003h,0f5h,003h,0e0h,004h,0f0h,003h,0e0h,022h,0f7h,005h,0f5h,005h,075h	; a3a7  .........."....u
	defb 006h,0f5h,006h,0f7h,004h,0e0h,081h,0f0h,003h,0e0h,008h,0f7h,003h,0e0h,003h,0f5h	; a3b7  ................
	defb 008h,075h,003h,0e0h,004h,0f0h,003h,0e0h,081h,0f0h,003h,0f7h,003h,0f5h,081h,0f7h	; a3c7  .u..............
	defb 006h,0f5h,003h,0e0h,004h,0f0h,003h,0e0h,003h,0f7h,000h	; a3d7  ...........

; ----------------------------------------------------------------------
; DATOS rle_A3E2: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (202 bytes)
;   0xa3e2..0xa4ac  (202 bytes)
DATA_rle_A3E2:
	defb 003h,000h,003h,004h,002h,006h,002h,040h,090h,04fh,01fh,05fh,0dfh,0dfh,081h,00eh	; a3e2  .......@.O._....
	defb 01ch,019h,015h,00dh,01dh,01dh,03dh,014h,02ah,00ch,07eh,097h,054h,02ah,0ffh,055h	; a3f2  ......=.*.~.T*.U
	defb 0aah,055h,000h,000h,0ffh,0ffh,0fdh,0f9h,0f1h,0e1h,0d1h,0b1h,071h,0f1h,0ffh,000h	; a402  .U..........q...
	defb 000h,054h,02ah,003h,07eh,083h,0ffh,055h,0aah,005h,0ffh,088h,0feh,054h,0aah,054h	; a412  .T*.~..U.....T.T
	defb 000h,000h,0ffh,0ffh,008h,0feh,088h,03dh,065h,045h,025h,065h,0cdh,099h,034h,003h	; a422  .......=eE%e..4.
	defb 000h,095h,001h,003h,007h,00fh,01fh,05ch,05ch,058h,050h,000h,060h,083h,007h,00ch	; a432  .......\\XP.`...
	defb 018h,031h,063h,0c6h,08ch,018h,031h,009h,033h,087h,031h,098h,0cch,066h,033h,019h	; a442  .1c...1.3.1..f3.
	defb 00ch,008h,05ch,090h,068h,0d1h,0a6h,04dh,00bh,04ah,04ah,00ah,063h,063h,021h,090h	; a452  ..\.h..M.JJ.cc!.
	defb 0c0h,0e0h,0f2h,0f3h,003h,0f1h,086h,0e1h,0c3h,086h,00ch,019h,001h,006h,003h,0b9h	; a462  ................
	defb 002h,032h,064h,0c8h,090h,020h,001h,063h,063h,043h,048h,00ch,00eh,046h,04bh,04ch	; a472  .2d.. .ccCH..FKL
	defb 04eh,063h,063h,003h,0fbh,0abh,003h,063h,063h,0eah,00ah,04ah,04ah,00ah,0ebh,00dh	; a482  Ncc....cc..JJ...
	defb 046h,005h,00ch,012h,006h,016h,036h,036h,076h,006h,060h,04fh,050h,017h,017h,050h	; a492  F.....66v.`OP..P
	defb 04fh,00ch,06ch,06eh,06eh,066h,06ah,06ch,06eh,000h	; a4a2  O.lnnfjln.

; ----------------------------------------------------------------------
; DATOS rle_A4AC: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (113 bytes)
;   0xa4ac..0xa51d  (113 bytes)
DATA_rle_A4AC:
	defb 004h,0f0h,08eh,070h,050h,040h,070h,070h,050h,040h,050h,0f0h,070h,050h,040h,050h	; a4ac  ...pP@ppP@P.pP@P
	defb 050h,004h,0e0h,002h,0f0h,002h,060h,002h,0e0h,008h,0f0h,002h,0e0h,008h,060h,081h	; a4bc  P.....`.......`.
	defb 0f0h,006h,0e0h,004h,0f0h,004h,060h,002h,0e0h,002h,0f0h,002h,0feh,004h,0e0h,007h	; a4cc  ......`.........
	defb 060h,082h,0f0h,0e0h,003h,0f0h,004h,0e0h,081h,060h,03ch,0f0h,083h,0e0h,0f0h,0f0h	; a4dc  `........`<.....
	defb 01eh,0e0h,004h,0f0h,004h,0e0h,003h,0f0h,002h,0e0h,002h,0f0h,081h,0e0h,003h,0f0h	; a4ec  ................
	defb 002h,0e0h,002h,0f0h,002h,0e0h,002h,0f0h,093h,070h,050h,040h,060h,0e0h,0f0h,0f0h	; a4fc  .........pP@`...
	defb 0e0h,060h,0e0h,0f0h,0e0h,070h,050h,0e0h,0f0h,060h,0e0h,0e0h,004h,0f0h,081h,0e0h	; a50c  .`...pP..`......
	defb 000h	; a51c

; ----------------------------------------------------------------------
; DATOS rle_A51D: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (55 bytes)
;   0xa51d..0xa554  (55 bytes)
DATA_rle_A51D:
	defb 008h,080h,008h,001h,008h,080h,008h,001h,008h,080h,008h,001h,08bh,0e1h,0e6h,0cch	; a51d  ................
	defb 0c0h,080h,080h,098h,098h,007h,003h,003h,005h,001h,08bh,0e1h,0e6h,0cch,0c0h,080h	; a52d  ................
	defb 080h,098h,098h,007h,003h,003h,005h,001h,08bh,0e1h,0e6h,0cch,0c0h,080h,080h,098h	; a53d  ................
	defb 098h,007h,003h,003h,005h,001h,000h	; a54d

; ----------------------------------------------------------------------
; DATOS rle_A554: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (31 bytes)
;   0xa554..0xa573  (31 bytes)
DATA_rle_A554:
	defb 010h,074h,004h,070h,004h,074h,004h,070h,004h,074h,010h,070h,005h,0f4h,00bh,074h	; a554  .t.p.t.p.t.p...t
	defb 004h,0f0h,081h,0f4h,003h,074h,004h,070h,004h,074h,005h,0f0h,00bh,070h,000h	; a564  .....t.p.t...p.

; ----------------------------------------------------------------------
; DATOS rle_A573: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (88 bytes)
;   0xa573..0xa5cb  (88 bytes)
DATA_rle_A573:
	defb 002h,07fh,091h,070h,02fh,01fh,01fh,03ch,073h,0ffh,0ffh,01fh,0c3h,0f3h,0ffh,0feh	; a573  ...p/..<s.......
	defb 01dh,0d0h,090h,0a0h,00dh,0ffh,0b8h,04fh,001h,01eh,03fh,07ch,063h,05fh,03fh,0fah	; a583  .......O..?|c_?.
	defb 0fch,01eh,0e4h,004h,0c4h,0f2h,0f8h,0ffh,0ffh,001h,001h,003h,007h,006h,006h,090h	; a593  ................
	defb 090h,064h,0eeh,0feh,01fh,007h,0fbh,07fh,07fh,0ffh,0f8h,0e3h,0e7h,058h,040h,0fch	; a5a3  .d...........X@.
	defb 0feh,0feh,03fh,0edh,0f6h,0ffh,07ch,027h,02fh,06fh,06fh,06eh,027h,037h,017h,003h	; a5b3  ..?...|'/oon'7..
	defb 0ffh,085h,06fh,003h,00bh,0ffh,0ffh,000h	; a5c3  ..o.....

; ----------------------------------------------------------------------
; DATOS rle_A5CB: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (33 bytes)
;   0xa5cb..0xa5ec  (33 bytes)
DATA_rle_A5CB:
	defb 008h,054h,002h,050h,003h,054h,081h,050h,005h,054h,00dh,040h,010h,054h,002h,040h	; a5cb  .T.P.T.P.T.@.T.@
	defb 010h,054h,081h,050h,00bh,054h,081h,050h,009h,054h,003h,050h,003h,054h,002h,050h	; a5db  .T.P.T.P.T.P.T.P
	defb 000h	; a5eb

; ----------------------------------------------------------------------
; DATOS rle_A5EC: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (24 bytes)
;   0xa5ec..0xa604  (24 bytes)
DATA_rle_A5EC:
	defb 083h,000h,028h,02ch,005h,02fh,090h,01fh,00fh,007h,003h,081h,0e0h,0f0h,0fch,0f0h	; a5ec  ..(,./..........
	defb 0fch,080h,0c0h,07fh,03fh,000h,000h,000h	; a5fc  ....?...

; ----------------------------------------------------------------------
; DATOS rle_A604: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (11 bytes)
;   0xa604..0xa60f  (11 bytes)
DATA_rle_A604:
	defb 008h,0e0h,008h,0f0h,002h,075h,002h,0f7h,004h,0f0h,000h	; a604  .....u.....

; ----------------------------------------------------------------------
; DATOS rle_A60F: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (194 bytes)
;   0xa60f..0xa6d1  (194 bytes)
DATA_rle_A60F:
	defb 0a9h,03eh,01eh,040h,0aeh,091h,0aeh,0b1h,0aeh,010h,049h,027h,012h,008h,015h,01ah	; a60f  .>.@......I'....
	defb 00ch,0b1h,0aeh,011h,04fh,082h,030h,07bh,0ceh,033h,031h,0b3h,011h,013h,001h,003h	; a61f  ....O.0{.31.....
	defb 001h,0ffh,0ffh,000h,000h,055h,0aah,055h,0ffh,0ffh,004h,000h,08ah,0aah,055h,0ffh	; a62f  .....U.U......U.
	defb 000h,0ffh,000h,000h,054h,0aah,054h,009h,0feh,0a0h,046h,04bh,04ch,04eh,046h,04bh	; a63f  ....T.T...FKLNFK
	defb 04ch,04eh,01eh,06eh,06eh,036h,016h,01ah,04ah,04ch,098h,0c8h,0e0h,070h,030h,010h	; a64f  LN.nn6..JL...p0.
	defb 048h,020h,087h,0c3h,0e0h,0f0h,0f8h,0f8h,078h,038h,006h,0feh,002h,07eh,094h,00fh	; a65f  H ......x8...~..
	defb 007h,0e7h,0e3h,0f3h,0f1h,0f9h,0f8h,0beh,0beh,0deh,0deh,0eeh,0eeh,0f6h,0f6h,0fch	; a66f  ................
	defb 0fch,0feh,0feh,004h,0ffh,0a8h,0fah,07ah,07ch,03ch,03eh,01eh,09eh,08eh,0ffh,0ffh	; a67f  .......z|<>.....
	defb 001h,001h,0feh,0feh,0ffh,00fh,064h,066h,072h,072h,078h,078h,07eh,07eh,09ch,0ceh	; a68f  ......dfrrxx~~..
	defb 0e6h,0f2h,0fah,0fah,078h,038h,046h,04bh,04ch,04eh,046h,09bh,0ach,036h,004h,0f3h	; a69f  ....x8FKLNF..6..
	defb 083h,0f1h,0f0h,0f2h,005h,0f3h,087h,0f1h,0f0h,0f2h,0f3h,006h,003h,001h,005h,000h	; a6af  ................
	defb 083h,06eh,06ah,064h,003h,0cfh,08ah,06ah,075h,03ah,05dh,02bh,015h,02bh,011h,009h	; a6bf  .njd...ju:]+.+..
	defb 001h,000h	; a6cf

; ----------------------------------------------------------------------
; DATOS rle_A6D1: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (70 bytes)
;   0xa6d1..0xa717  (70 bytes)
DATA_rle_A6D1:
	defb 002h,060h,003h,0e0h,082h,0f0h,080h,006h,0f0h,003h,0e0h,092h,080h,0f0h,080h,0e0h	; a6d1  .`..............
	defb 0e0h,070h,050h,040h,0e0h,050h,0e0h,070h,0e0h,0f0h,0e0h,0f0h,0e0h,0f0h,007h,060h	; a6e1  .pP@.P.p.......`
	defb 009h,0feh,007h,060h,006h,0e0h,04ch,0f0h,081h,0feh,009h,0f0h,004h,0e0h,008h,0f0h	; a6f1  ...`..L.........
	defb 01ah,0e0h,005h,000h,090h,0e0h,0f0h,0e0h,0f0h,0e0h,060h,0f0h,0e0h,060h,040h,0f0h	; a701  ..........`..`@.
	defb 0e0h,0e0h,050h,070h,0f0h,000h	; a711

; ----------------------------------------------------------------------
; DATOS rle_A717: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (34 bytes)
;   0xa717..0xa739  (34 bytes)
DATA_rle_A717:
	defb 083h,06eh,06ah,064h,003h,0cfh,085h,06ah,075h,076h,056h,026h,003h,0f3h,092h,056h	; a717  .njd...juvV&...V
	defb 0aeh,03ah,05dh,02bh,015h,02bh,011h,009h,001h,05ch,0bah,0d4h,0a8h,0d4h,088h,090h	; a727  .:]+.+...\......
	defb 080h,000h	; a737

; ----------------------------------------------------------------------
; DATOS rle_A739: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (32 bytes)
;   0xa739..0xa759  (32 bytes)
DATA_rle_A739:
	defb 082h,0e0h,0f0h,003h,0e0h,083h,060h,0e0h,0e0h,005h,0f0h,085h,060h,0f0h,0f0h,060h	; a739  ......`.....`..`
	defb 040h,003h,0e0h,085h,050h,070h,0f0h,060h,040h,003h,0f0h,083h,050h,070h,0f0h,000h	; a749  @...Pp.`@...Pp..

; ----------------------------------------------------------------------
; DATOS rle_A759: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (67 bytes)
;   0xa759..0xa79c  (67 bytes)
DATA_rle_A759:
	defb 008h,080h,081h,009h,005h,019h,002h,009h,008h,080h,081h,009h,005h,019h,002h,009h	; a759  ................
	defb 008h,080h,081h,009h,005h,019h,002h,009h,005h,080h,002h,0c0h,089h,0e0h,001h,001h	; a769  ................
	defb 019h,019h,011h,023h,003h,007h,005h,080h,002h,0c0h,089h,0e0h,001h,001h,019h,019h	; a779  ...#............
	defb 011h,023h,003h,007h,005h,080h,002h,0c0h,089h,0e0h,001h,001h,019h,019h,011h,023h	; a789  .#.............#
	defb 003h,007h,000h	; a799

; ----------------------------------------------------------------------
; DATOS rle_A79C: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (25 bytes)
;   0xa79c..0xa7b5  (25 bytes)
DATA_rle_A79C:
	defb 010h,074h,004h,070h,004h,074h,004h,070h,004h,074h,010h,070h,010h,074h,004h,070h	; a79c  .t.p.t.p.t.p.t.p
	defb 004h,074h,004h,070h,004h,074h,010h,070h,000h	; a7ac  .t.p.t.p.

; ----------------------------------------------------------------------
; DATOS rle_A7B5: los dibujos de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4CFF (80 bytes)
;   0xa7b5..0xa805  (80 bytes)
DATA_rle_A7B5:
	defb 0aah,0f2h,0f8h,0fch,0feh,03eh,0c2h,073h,079h,000h,0f1h,0ffh,07fh,0bch,0d1h,0ceh	; a7b5  .....>.sy.......
	defb 0efh,0e0h,0c0h,0c0h,080h,080h,000h,006h,006h,0ffh,07fh,0ffh,0ffh,03fh,0ffh,07eh	; a7c5  .............?.~
	defb 0fdh,09dh,0ceh,0eeh,0aah,096h,0b0h,0b4h,036h,0efh,0e7h,005h,0f7h,0a1h,0ffh,05eh	; a7d5  ........6......^
	defb 04fh,06fh,067h,033h,0b9h,0bch,0dch,0cfh,031h,0ffh,0fch,0fdh,0fbh,0f3h,02fh,0f3h	; a7e5  Oog3....1...../.
	defb 08ch,0ffh,03eh,0fdh,0fbh,0e7h,0cfh,00eh,00eh,04fh,0deh,0ddh,0bfh,0bfh,07fh,000h	; a7f5  ..>......O......

; ----------------------------------------------------------------------
; DATOS rle_A805: los colores de una entrada de la lista de graficos de
;   29:A1D6, en RLE (p00:4B3C); lo leen p00:4D11 (3 bytes)
;   0xa805..0xa808  (3 bytes)
DATA_rle_A805:
	defb 050h,054h,000h	; a805

; ----------------------------------------------------------------------
; DATOS graficos_A808: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:84CE (19 bytes)
;   0xa808..0xa81b  (19 bytes)
DATA_graficos_A808:
	defb 004h,024h,0a8h,070h,007h,0a9h	; a808
	defb 002h,09bh,0a9h,0a0h,009h,0aah	; a80e
	defb 002h,05dh,0aah,0c0h,09fh,0aah	; a814
	defb 000h	; a81a

; ----------------------------------------------------------------------
; DATOS copias_A81B: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B): de 4 en 4 (origen, destino, tercios y vuelta, cuantos) y un 0;
;   lo leen p27:84D5 (9 bytes)
;   0xa81b..0xa824  (9 bytes)
DATA_copias_A81B:
	defb 070h,090h,024h,01dh	; a81b
	defb 0a0h,0b0h,012h,00eh	; a81f
	defb 000h	; a823

; ----------------------------------------------------------------------
; DATOS rle_A824: los dibujos de una entrada de la lista de graficos de
;   29:A808, en RLE (p00:4B3C); lo leen p00:4CFF (227 bytes)
;   0xa824..0xa907  (227 bytes)
DATA_rle_A824:
	defb 002h,07fh,0a1h,070h,02fh,01fh,01fh,03ch,073h,0ffh,0f0h,01fh,0c3h,0f3h,0f0h,0feh	; a824  ...p/..<s.......
	defb 01dh,0fah,0fch,01eh,0e4h,034h,0cch,0f2h,0f8h,07fh,07fh,0ffh,0f8h,0e3h,0e7h,058h	; a834  .....4.........X
	defb 040h,0d0h,090h,0a0h,005h,000h,0c4h,04fh,001h,01eh,03fh,07ch,063h,05fh,03fh,08ch	; a844  @......O..?|c_?.
	defb 0e6h,0fah,03dh,0ech,0f6h,0feh,07dh,07fh,07fh,070h,02fh,01fh,01fh,03ch,073h,0fah	; a854  ..=...}..p/..<s.
	defb 0fch,01eh,0e4h,004h,0c4h,0f2h,0f8h,07fh,07fh,0ffh,0f8h,0e3h,0e7h,058h,040h,08ch	; a864  .............X@.
	defb 0e6h,0fah,03dh,0edh,0f6h,0ffh,07ch,0ffh,0f0h,01fh,0c3h,0f3h,0ffh,0feh,01dh,04fh	; a874  ..=...|........O
	defb 001h,01eh,03fh,07ch,063h,05fh,03fh,0d0h,090h,0a0h,000h,004h,0ffh,004h,000h,004h	; a884  ..?|c_?.........
	defb 0ffh,002h,000h,002h,001h,0ech,003h,007h,006h,006h,090h,090h,064h,0eeh,0feh,01fh	; a894  ............d...
	defb 007h,0fbh,027h,02fh,06fh,06fh,06eh,027h,037h,017h,0f3h,0fdh,0fdh,06fh,003h,00bh	; a8a4  ..'/oon'7....o..
	defb 0ffh,0ffh,000h,000h,001h,001h,003h,007h,006h,006h,090h,090h,064h,0eeh,0feh,01fh	; a8b4  ............d...
	defb 007h,0fbh,027h,02fh,06fh,06fh,06eh,027h,037h,017h,0f3h,0fdh,0fdh,077h,003h,02bh	; a8c4  ..'/oon'7....w.+
	defb 00eh,030h,027h,02fh,06fh,06eh,06eh,027h,037h,017h,0f3h,0fdh,087h,003h,003h,08bh	; a8d4  .0'/onn'7.......
	defb 00eh,030h,027h,02fh,06fh,06eh,06eh,027h,037h,017h,0f3h,0fdh,087h,003h,007h,08fh	; a8e4  .0'/onn'7.......
	defb 08eh,060h,027h,02fh,06fh,06fh,06eh,027h,037h,017h,0f3h,0fdh,0fdh,067h,003h,00bh	; a8f4  .`'/oon'7....g..
	defb 00eh,060h,000h	; a904

; ----------------------------------------------------------------------
; DATOS rle_A907: los colores de una entrada de la lista de graficos de
;   29:A808, en RLE (p00:4B3C); lo leen p00:4D11 (148 bytes)
;   0xa907..0xa99b  (148 bytes)
DATA_rle_A907:
	defb 009h,0f0h,081h,0feh,003h,0e0h,081h,0feh,006h,0e0h,083h,0f0h,0e0h,0e0h,006h,0f0h	; a907  ................
	defb 002h,0e0h,081h,0f0h,008h,0e0h,003h,0f0h,003h,0e0h,003h,0f0h,082h,0e0h,0f0h,005h	; a917  ................
	defb 0e0h,004h,0f0h,004h,054h,004h,0e0h,004h,054h,004h,0f0h,004h,054h,084h,0f0h,0e0h	; a927  ....T...T...T...
	defb 0f0h,0e0h,004h,054h,084h,0f0h,0feh,0e0h,0e0h,004h,054h,003h,0f0h,081h,0e0h,004h	; a937  ...T......T.....
	defb 054h,004h,0e0h,00ch,040h,004h,090h,004h,054h,004h,090h,004h,054h,081h,090h,003h	; a947  T...@...T...T...
	defb 0a0h,004h,054h,003h,0b9h,081h,0b0h,004h,054h,00eh,090h,002h,0b0h,081h,090h,007h	; a957  ..T.....T.......
	defb 0a0h,089h,0a9h,0b9h,0b9h,0b0h,090h,090h,0b9h,0fbh,090h,007h,0a0h,002h,0b9h,002h	; a967  ................
	defb 0b0h,088h,090h,0b0h,0b9h,0fbh,090h,0a0h,0a0h,0b0h,004h,0a0h,08ch,0a9h,0b9h,0b0h	; a977  ................
	defb 0b0h,090h,090h,0b9h,0fbh,090h,0a0h,0a0h,0b0h,004h,0a0h,003h,0b9h,085h,0a0h,090h	; a987  ................
	defb 090h,0b9h,0fbh,000h	; a997

; ----------------------------------------------------------------------
; DATOS rle_A99B: los dibujos de una entrada de la lista de graficos de
;   29:A808, en RLE (p00:4B3C); lo leen p00:4CFF (110 bytes)
;   0xa99b..0xaa09  (110 bytes)
DATA_rle_A99B:
	defb 092h,000h,08eh,0fdh,0f8h,031h,003h,073h,0f7h,039h,073h,077h,055h,069h,00dh,02dh	; a99b  .....1.s.9swUi.-
	defb 06ch,0f7h,0e7h,005h,0efh,0a3h,03fh,000h,08eh,0fdh,0f8h,031h,003h,073h,0f7h,039h	; a9ab  l.....?....1.s.9
	defb 073h,077h,055h,069h,00dh,02dh,06ch,04fh,01fh,03fh,070h,060h,043h,0ceh,09ch,04fh	; a9bb  swUi.-lO.?p`C..O
	defb 01fh,03fh,070h,060h,043h,0ceh,09ch,0f7h,0e7h,005h,0efh,09ah,0ffh,007h,003h,003h	; a9cb  .?p`C...........
	defb 001h,001h,000h,048h,05ch,0ffh,0feh,0fch,0ffh,0fch,0ffh,07eh,0bfh,007h,003h,003h	; a9db  ...H\......~....
	defb 001h,001h,018h,05ch,05ch,0ffh,003h,0feh,002h,0fch,092h,07eh,0bfh,007h,003h,003h	; a9eb  ...\\......~....
	defb 001h,001h,018h,05ch,05ch,0feh,0ffh,0fch,0f8h,0fch,0fch,07eh,0bfh,000h	; a9fb  ...\\......~..

; ----------------------------------------------------------------------
; DATOS rle_AA09: los colores de una entrada de la lista de graficos de
;   29:A808, en RLE (p00:4B3C); lo leen p00:4D11 (84 bytes)
;   0xaa09..0xaa5d  (84 bytes)
DATA_rle_AA09:
	defb 003h,0e0h,081h,0f0h,006h,0e0h,081h,0f0h,006h,0e0h,087h,0f0h,0e0h,0f0h,0e0h,0e0h	; aa09  ................
	defb 0f0h,0feh,003h,0e0h,081h,0f0h,004h,054h,002h,0e0h,082h,0f0h,0e0h,004h,054h,005h	; aa19  .......T......T.
	defb 0f0h,002h,0e0h,005h,0f0h,004h,054h,084h,0e0h,0f0h,0e0h,0f0h,004h,054h,004h,0a0h	; aa29  ......T......T..
	defb 004h,054h,002h,0b0h,086h,0b9h,0b0h,054h,050h,054h,054h,005h,0a0h,003h,0e0h,002h	; aa39  .T.....TPTT.....
	defb 0b0h,084h,0b9h,0a0h,0a0h,0a9h,007h,0a0h,003h,0e0h,002h,0b0h,086h,0b9h,0b0h,0a0h	; aa49  ................
	defb 0a9h,0a0h,0a0h,000h	; aa59

; ----------------------------------------------------------------------
; DATOS rle_AA5D: los dibujos de una entrada de la lista de graficos de
;   29:A808, en RLE (p00:4B3C); lo leen p00:4CFF (66 bytes)
;   0xaa5d..0xaa9f  (66 bytes)
DATA_rle_AA5D:
	defb 0c0h,05eh,04fh,06fh,067h,033h,0b9h,0bch,0dch,0cfh,031h,0e0h,0fch,0fdh,0fbh,0f3h	; aa5d  .^Oog3....1.....
	defb 02fh,0f3h,08ch,00fh,03eh,0fdh,0fbh,0e7h,0cfh,03eh,02eh,04fh,0deh,0ddh,0bfh,0bfh	; aa6d  /...>....>.O....
	defb 07fh,0cfh,031h,0f0h,0ffh,0fdh,0fbh,0f3h,02fh,03eh,02eh,04fh,0deh,0ddh,0bfh,0bfh	; aa7d  ..1...../>.O....
	defb 07fh,05eh,04fh,06fh,067h,033h,0b9h,0bch,0dch,0f3h,08ch,00fh,0feh,0fdh,0fbh,0e7h	; aa8d  .^Oog3..........
	defb 0cfh,000h	; aa9d

; ----------------------------------------------------------------------
; DATOS rle_AA9F: los colores de una entrada de la lista de graficos de
;   29:A808, en RLE (p00:4B3C); lo leen p00:4D11 (47 bytes)
;   0xaa9f..0xaace  (47 bytes)
DATA_rle_AA9F:
	defb 004h,0e0h,004h,054h,002h,0a0h,082h,0eah,0e0h,004h,054h,002h,0a0h,082h,0eah,0e0h	; aa9f  ...T......T.....
	defb 004h,054h,004h,0e0h,004h,054h,002h,0a0h,081h,0eah,003h,0e0h,081h,0f0h,005h,0e0h	; aaaf  .T...T..........
	defb 002h,0f0h,006h,0e0h,004h,0f0h,002h,0a0h,081h,0eah,003h,0e0h,002h,0f0h,000h	; aabf  ...............

; ----------------------------------------------------------------------
; DATOS graficos_AACE: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:8CE4 (7 bytes)
;   0xaace..0xaad5  (7 bytes)
DATA_graficos_AACE:
	defb 006h,0d5h,0aah,080h,091h,0abh	; aace
	defb 000h	; aad4

; ----------------------------------------------------------------------
; DATOS rle_AAD5: los dibujos de una entrada de la lista de graficos de
;   29:AACE, en RLE (p00:4B3C); lo leen p00:4CFF (188 bytes)
;   0xaad5..0xab91  (188 bytes)
DATA_rle_AAD5:
	defb 081h,000h,003h,01fh,003h,01ch,082h,01fh,000h,003h,0f9h,003h,001h,08ah,0f9h,000h	; aad5  ................
	defb 0c0h,0c0h,0e1h,0e1h,0f3h,0f3h,0ffh,000h,007h,0e7h,081h,000h,003h,0feh,003h,000h	; aae5  ................
	defb 082h,0feh,000h,003h,07fh,003h,070h,084h,07fh,000h,081h,0c3h,005h,0e7h,081h,000h	; aaf5  ......p.........
	defb 003h,0feh,003h,000h,082h,07eh,000h,003h,0e7h,003h,007h,08dh,0e7h,000h,00eh,00eh	; ab05  .....~..........
	defb 08eh,08eh,0ceh,0ceh,0eeh,000h,01fh,03fh,07fh,004h,070h,081h,000h,003h,0e7h,003h	; ab15  .......?..p.....
	defb 007h,082h,003h,000h,004h,007h,084h,08fh,0dfh,0feh,000h,007h,01ch,002h,01fh,003h	; ab25  ................
	defb 01ch,003h,01fh,002h,0f9h,003h,001h,003h,0f9h,085h,0ffh,0deh,0deh,0cch,0cch,003h	; ab35  ................
	defb 0c0h,008h,0e7h,002h,0feh,003h,000h,003h,0feh,002h,07fh,002h,073h,002h,071h,002h	; ab45  ............s.q.
	defb 070h,08ah,0c7h,087h,087h,0c7h,0c7h,0e7h,0e3h,0f1h,07eh,07eh,003h,00eh,003h,0feh	; ab55  p.........~~....
	defb 002h,07fh,003h,070h,003h,07fh,002h,0e7h,003h,007h,003h,0e7h,088h,06eh,07eh,03eh	; ab65  ...p.........n~>
	defb 03eh,01eh,01eh,00eh,00eh,005h,070h,084h,07fh,03fh,01fh,001h,004h,000h,003h,0e0h	; ab75  >.....p..?......
	defb 082h,0fch,0f8h,006h,070h,003h,01ch,002h,000h,003h,01ch,000h	; ab85  ....p.......

; ----------------------------------------------------------------------
; DATOS rle_AB91: los colores de una entrada de la lista de graficos de
;   29:AACE, en RLE (p00:4B3C); lo leen p00:4D11 (9 bytes)
;   0xab91..0xab9a  (9 bytes)
DATA_rle_AB91:
	defb 07fh,080h,013h,080h,003h,000h,053h,080h,000h	; ab91  ......S..

; ----------------------------------------------------------------------
; DATOS graficos_AB9A: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:8A86 (37 bytes)
;   0xab9a..0xabbf  (37 bytes)
DATA_graficos_AB9A:
	defb 006h,0e6h,0abh,040h,059h,0ach	; ab9a
	defb 004h,0bah,0ach,060h,0dfh,0ach	; aba0
	defb 004h,0f8h,0ach,066h,078h,0adh	; aba6
	defb 004h,0cch,0adh,090h,032h,0afh	; abac
	defb 002h,0f8h,0afh,060h,058h,0b1h	; abb2
	defb 002h,0f4h,0b1h,0d0h,026h,0b2h	; abb8
	defb 000h	; abbe

; ----------------------------------------------------------------------
; DATOS graficos_ABBF: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:8895 (13 bytes)
;   0xabbf..0xabcc  (13 bytes)
DATA_graficos_ABBF:
	defb 001h,033h,0b2h,060h,039h,0b2h	; abbf
	defb 001h,03ch,0b2h,070h,0e2h,0b2h	; abc5
	defb 000h	; abcb

; ----------------------------------------------------------------------
; DATOS copias_ABCC: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B): de 4 en 4 (origen, destino, tercios y vuelta, cuantos) y un 0;
;   lo leen p27:8A8D (13 bytes)
;   0xabcc..0xabd9  (13 bytes)
DATA_copias_ABCC:
	defb 090h,090h,094h,010h	; abcc
	defb 0a0h,0a0h,094h,01eh	; abd0
	defb 0d0h,0e0h,092h,006h	; abd4
	defb 000h	; abd8

; ----------------------------------------------------------------------
; DATOS copias_ABD9: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B): de 4 en 4 (origen, destino, tercios y vuelta, cuantos) y un 0;
;   lo leen p27:889C (13 bytes)
;   0xabd9..0xabe6  (13 bytes)
DATA_copias_ABD9:
	defb 060h,062h,009h,001h	; abd9
	defb 060h,063h,089h,001h	; abdd
	defb 062h,061h,089h,001h	; abe1
	defb 000h	; abe5

; ----------------------------------------------------------------------
; DATOS rle_ABE6: los dibujos de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4CFF (115 bytes)
;   0xabe6..0xac59  (115 bytes)
DATA_rle_ABE6:
	defb 008h,0ffh,08ch,0e2h,078h,01ch,0f8h,098h,0ffh,040h,080h,070h,0fch,004h,002h,004h	; abe6  ....x....@.p....
	defb 0ffh,0e0h,030h,0c1h,043h,0e7h,026h,07fh,003h,0ffh,0ffh,040h,020h,030h,020h,010h	; abf6  ..0.C.&....@ 0 .
	defb 084h,014h,0dch,0f7h,085h,0f8h,0c1h,0ffh,0efh,0f9h,0ffh,017h,0fch,07bh,0f0h,0fch	; ac06  .............{..
	defb 0ffh,0f8h,03ch,00fh,0fch,0ffh,006h,07fh,00fh,03eh,02fh,0f0h,034h,00fh,01eh,00fh	; ac16  ..<......>/.4...
	defb 03fh,00eh,040h,0ffh,078h,0cbh,001h,023h,03fh,004h,041h,0f0h,0f9h,03fh,0fah,0b7h	; ac26  ?.@.x..#?.A..?..
	defb 0dfh,0e4h,0bdh,0f0h,07fh,007h,070h,0efh,007h,0ffh,0d1h,0e0h,0ffh,0fbh,0e0h,0ffh	; ac36  ......p.........
	defb 0e8h,0ffh,007h,03fh,0ffh,0c8h,0b7h,0fch,0b0h,0e0h,0fch,087h,081h,00fh,0f0h,0fdh	; ac46  ...?............
	defb 01fh,002h,000h	; ac56

; ----------------------------------------------------------------------
; DATOS rle_AC59: los colores de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4D11 (97 bytes)
;   0xac59..0xacba  (97 bytes)
DATA_rle_AC59:
	defb 008h,040h,005h,054h,081h,040h,006h,054h,004h,040h,007h,054h,002h,040h,082h,074h	; ac59  .@.T.@.T.@.T.@.t
	defb 054h,005h,074h,003h,0f7h,002h,0f5h,08bh,0f0h,0f7h,0f7h,0f0h,0f7h,0f5h,075h,0f7h	; ac69  T.t...........u.
	defb 0f4h,050h,074h,003h,075h,081h,070h,003h,075h,084h,054h,075h,074h,074h,003h,075h	; ac79  .Pt.u.p.u.Tutt.u
	defb 003h,054h,081h,040h,003h,074h,002h,075h,08ch,074h,054h,074h,074h,075h,074h,054h	; ac89  .T.@.t.u.tTttutT
	defb 074h,074h,0f4h,0f7h,074h,004h,075h,08dh,070h,0f7h,075h,070h,075h,075h,070h,075h	; ac99  tt..t.u.p.upuupu
	defb 070h,054h,074h,070h,074h,004h,054h,088h,0f5h,054h,074h,075h,075h,054h,054h,0f5h	; aca9  pTtpt.T..TtuuTT.
	defb 000h	; acb9

; ----------------------------------------------------------------------
; DATOS rle_ACBA: los dibujos de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4CFF (37 bytes)
;   0xacba..0xacdf  (37 bytes)
DATA_rle_ACBA:
	defb 006h,000h,08ch,01eh,07fh,07fh,0e4h,05ah,0c6h,06ah,07fh,07fh,01eh,080h,080h,003h	; acba  .......Z.j......
	defb 0c0h,002h,080h,002h,000h,087h,038h,074h,0d2h,0eah,0f6h,06ch,038h,004h,000h,084h	; acca  ......8t...l8...
	defb 060h,0f0h,0d0h,060h,000h	; acda

; ----------------------------------------------------------------------
; DATOS rle_ACDF: los colores de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4D11 (25 bytes)
;   0xacdf..0xacf8  (25 bytes)
DATA_rle_ACDF:
	defb 006h,000h,087h,090h,080h,090h,098h,098h,086h,086h,00bh,060h,005h,090h,002h,080h	; acdf  ...........`....
	defb 081h,060h,005h,090h,083h,080h,090h,080h,000h	; acef  .`.......

; ----------------------------------------------------------------------
; DATOS rle_ACF8: los dibujos de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4CFF (128 bytes)
;   0xacf8..0xad78  (128 bytes)
DATA_rle_ACF8:
	defb 083h,000h,0f0h,0fch,005h,0ffh,0a6h,0e8h,0f0h,0f8h,0f4h,0f8h,0f4h,0f8h,0f4h,0f0h	; acf8  ................
	defb 0f8h,0fch,0feh,0dfh,06fh,0dbh,0bfh,0ebh,0f4h,008h,0f0h,097h,0f6h,0dfh,0f8h,0ffh	; ad08  ....o...........
	defb 0c7h,0a0h,07dh,01eh,008h,008h,0c0h,0f2h,010h,0bch,0c0h,02ch,080h,003h,0ffh,0a7h	; ad18  ..}........,....
	defb 00eh,0f7h,0e0h,0f8h,084h,03fh,003h,0ffh,0a0h,0ffh,0f0h,080h,008h,082h,050h,0ffh	; ad28  .....?........P.
	defb 0fbh,0d9h,0f1h,082h,0f1h,004h,0f1h,0e0h,0c2h,028h,0fah,03ch,0f0h,08fh,00dh,0ffh	; ad38  .........(.<....
	defb 003h,0f8h,007h,01fh,0ffh,03eh,0fch,006h,000h,082h,080h,0e0h,005h,000h,085h,080h	; ad48  .....>..........
	defb 0c0h,0e0h,0d0h,0fch,006h,0ffh,002h,000h,096h,001h,00fh,03fh,0feh,0d6h,083h,003h	; ad58  ...........?....
	defb 03fh,0fch,001h,09fh,0cfh,0fbh,009h,000h,000h,080h,0f0h,0fch,0bfh,07fh,0c4h,000h	; ad68  ?...............

; ----------------------------------------------------------------------
; DATOS rle_AD78: los colores de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4D11 (84 bytes)
;   0xad78..0xadcc  (84 bytes)
DATA_rle_AD78:
	defb 010h,040h,004h,050h,00ch,054h,081h,040h,006h,054h,002h,074h,005h,054h,003h,040h	; ad78  .@.P.T.@.T.t.T.@
	defb 002h,074h,08ah,075h,054h,075h,075h,074h,040h,074h,040h,054h,054h,003h,074h,081h	; ad88  .t.uTuut@t@TT.t.
	defb 0f0h,004h,0f7h,081h,0f5h,003h,0f7h,08fh,0f5h,0f7h,0f4h,0f5h,0f7h,0f7h,075h,040h	; ad98  ..............u@
	defb 054h,075h,054h,054h,050h,054h,075h,00fh,050h,082h,040h,050h,007h,040h,005h,0f0h	; ada8  TuTTPTu.P.@P.@..
	defb 08bh,0f7h,0f5h,0f7h,070h,0f0h,0f5h,0f7h,0f7h,0f5h,075h,0f7h,004h,050h,084h,070h	; adb8  ....p.....u..P.p
	defb 054h,074h,075h,000h	; adc8

; ----------------------------------------------------------------------
; DATOS rle_ADCC: los dibujos de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4CFF (358 bytes)
;   0xadcc..0xaf32  (358 bytes)
DATA_rle_ADCC:
	defb 006h,000h,081h,001h,003h,007h,002h,00fh,003h,01fh,081h,03fh,004h,000h,084h,001h	; adcc  ...........?....
	defb 003h,007h,00fh,005h,000h,002h,001h,083h,003h,03fh,03fh,004h,07fh,002h,0dfh,0d2h	; addc  .........??.....
	defb 01fh,03fh,07fh,07fh,0feh,0ffh,0efh,0c7h,06bh,0fch,018h,0c0h,0f7h,0c5h,07fh,0ffh	; adec  .?......k.......
	defb 0ffh,02fh,0ffh,003h,04fh,07fh,0f0h,00fh,0f0h,0fch,0bfh,047h,0e0h,0fch,088h,0f0h	; adfc  ./..O......G....
	defb 01fh,03fh,07fh,0e4h,0f7h,05fh,09eh,0c7h,082h,0ech,098h,0bdh,05ch,0f0h,0e2h,0feh	; ae0c  .?..._......\...
	defb 07fh,01fh,0dfh,0efh,014h,0bfh,0fbh,03fh,078h,0fdh,0fbh,0e0h,07dh,0e0h,0ffh,092h	; ae1c  .......?x...}...
	defb 063h,09ch,001h,0e0h,0bch,01ch,0ech,0bfh,0f1h,070h,038h,0ceh,01fh,002h,00fh,078h	; ae2c  c........p8....x
	defb 0c8h,060h,003h,0ffh,0e3h,0c0h,078h,07fh,0ceh,000h,0a0h,0cch,0eeh,0feh,008h,0e0h	; ae3c  .`....x.........
	defb 040h,000h,00dh,02bh,000h,0dch,0c0h,000h,0ffh,0fdh,0f4h,080h,0f8h,0b8h,0a0h,0e0h	; ae4c  @..+............
	defb 0d8h,0ffh,000h,0e0h,0feh,0d0h,034h,002h,0feh,05fh,0edh,000h,000h,0eah,000h,0f9h	; ae5c  ......4.._......
	defb 0dfh,0ffh,0c3h,0f0h,081h,0feh,0d0h,0e0h,0ffh,090h,0d8h,0dch,0c0h,0ddh,0c0h,0ffh	; ae6c  ................
	defb 0f0h,0f8h,0fch,0fch,0feh,0feh,0ffh,0ffh,0eah,0d5h,0fah,0f5h,0feh,0fdh,0feh,0fdh	; ae7c  ................
	defb 000h,000h,080h,040h,0a0h,040h,0a0h,050h,080h,0c0h,080h,0c0h,0e0h,0d0h,0e0h,0f0h	; ae8c  ...@.@.P........
	defb 0a8h,054h,0a8h,054h,0aah,0d4h,0aah,0d4h,003h,000h,085h,080h,0a0h,0d0h,0e8h,0f0h	; ae9c  .T.T............
	defb 004h,000h,084h,0c0h,060h,0d8h,0a4h,004h,0ffh,0b4h,080h,0f0h,07ch,000h,000h,0f8h	; aeac  ....`.......|...
	defb 03fh,001h,0fbh,0b8h,0b3h,05fh,0ffh,03bh,07fh,0ddh,0ffh,0e0h,0ddh,0fdh,0c0h,0fch	; aebc  ?...._..........
	defb 0d0h,024h,004h,06fh,07fh,0f7h,013h,0c0h,0c7h,0ffh,027h,0fah,0e5h,0b8h,01fh,0f8h	; aecc  .$.o......'.....
	defb 0feh,03fh,007h,0ffh,0feh,06fh,000h,000h,001h,003h,007h,00fh,01fh,03fh,003h,000h	; aedc  .?...o.......?..
	defb 08ah,001h,003h,003h,007h,00fh,00fh,01fh,01fh,03fh,03fh,003h,07fh,098h,03fh,07fh	; aeec  .........??...?.
	defb 0fbh,0f6h,0ffh,0f6h,0fah,0f0h,0edh,0b4h,0f1h,0e8h,0f0h,0aeh,0e0h,0a0h,0fbh,0d0h	; aefc  ................
	defb 0f8h,0e0h,03fh,0dfh,03fh,0e1h,004h,000h,09ch,001h,003h,007h,01fh,000h,003h,00fh	; af0c  ..?.?...........
	defb 07fh,0f4h,0ech,0a0h,0f8h,03fh,0fch,0e0h,080h,0c1h,0ffh,0f8h,080h,00fh,07fh,0f0h	; af1c  .....?..........
	defb 0e0h,0c0h,0e8h,0fch,0c0h,000h	; af2c

; ----------------------------------------------------------------------
; DATOS rle_AF32: los colores de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4D11 (198 bytes)
;   0xaf32..0xaff8  (198 bytes)
DATA_rle_AF32:
	defb 026h,0f0h,002h,0fbh,004h,0f0h,082h,0f7h,0f0h,004h,0f7h,002h,0f5h,088h,0f4h,0f5h	; af32  &...............
	defb 0f5h,0f0h,0f0h,0f5h,0f0h,0f7h,003h,0f5h,085h,0f7h,0f5h,075h,0f5h,0f5h,003h,0f7h	; af42  ...........u....
	defb 081h,0f5h,003h,0f0h,09fh,0f5h,0f4h,0f7h,0f5h,0f7h,075h,0f5h,0f7h,074h,0f7h,075h	; af52  ..........u..t.u
	defb 0f5h,0f4h,0f4h,0f5h,075h,0f4h,0f5h,054h,074h,074h,0f5h,0f4h,0f4h,0f5h,054h,0f5h	; af62  ....u..Ttt....T.
	defb 050h,0f5h,075h,075h,003h,074h,081h,054h,007h,075h,005h,054h,003h,040h,005h,074h	; af72  P.uu.t.T.u.T.@.t
	defb 003h,054h,084h,075h,074h,054h,054h,004h,074h,015h,054h,005h,075h,004h,054h,084h	; af82  .T.utTT.t.T.u.T.
	defb 075h,054h,074h,054h,004h,075h,084h,074h,075h,054h,075h,03dh,040h,005h,074h,087h	; af92  uTtT.u.tuTu=@.t.
	defb 0f7h,074h,075h,054h,054h,075h,054h,003h,074h,002h,054h,085h,0f7h,0f5h,0f5h,050h	; afa2  .tuTTuT.t.T....P
	defb 070h,003h,075h,002h,074h,002h,075h,089h,054h,074h,070h,0f7h,0f4h,0f4h,0f5h,075h	; afb2  p.u.t.u.Ttp....u
	defb 054h,003h,075h,003h,054h,003h,070h,005h,050h,012h,070h,006h,075h,090h,074h,075h	; afc2  T.u.T.p.P.p.u.tu
	defb 074h,075h,074h,074h,075h,075h,074h,075h,0f5h,0f7h,0f4h,074h,054h,075h,005h,0f0h	; afd2  tuttuutu...tTu..
	defb 004h,070h,084h,0f0h,070h,070h,074h,003h,075h,084h,0f0h,074h,075h,075h,004h,054h	; afe2  .p..ppt.u..tuu.T
	defb 082h,070h,050h,006h,054h,000h	; aff2

; ----------------------------------------------------------------------
; DATOS rle_AFF8: los dibujos de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4CFF (352 bytes)
;   0xaff8..0xb158  (352 bytes)
DATA_rle_AFF8:
	defb 002h,018h,084h,000h,003h,00eh,00fh,003h,01fh,084h,01ah,00dh,00eh,003h,003h,000h	; aff8  ................
	defb 002h,0e0h,082h,0c0h,080h,004h,000h,0b1h,09bh,027h,055h,0a2h,001h,016h,0d8h,0cfh	; b008  .........'U.....
	defb 07fh,0ffh,0b9h,094h,0a8h,0d1h,0c6h,0e0h,0fbh,0ebh,0f5h,0dbh,063h,0a7h,05fh,05fh	; b018  ............c.__
	defb 09bh,027h,055h,0a2h,001h,016h,0d9h,0cfh,0fdh,0feh,0fdh,0feh,0f5h,0fah,0d5h,0eah	; b028  .'U.............
	defb 0cah,0d7h,0a9h,097h,0abh,0d3h,0c7h,0e0h,0e0h,003h,080h,094h,0d0h,0feh,0fch,0f0h	; b038  ................
	defb 0feh,0fbh,0f5h,0abh,0ffh,0ffh,0fch,0d0h,0f0h,0f0h,0fch,09fh,067h,0fbh,0feh,01fh	; b048  ............g...
	defb 003h,000h,091h,0e0h,0b0h,080h,006h,0b8h,002h,034h,0d0h,0feh,0e0h,000h,0ffh,0d8h	; b058  .........4......
	defb 070h,0fch,004h,002h,005h,000h,09eh,0f7h,0f6h,03fh,050h,0e0h,000h,000h,0ffh,0fdh	; b068  p........?P.....
	defb 0f4h,080h,0f8h,0b8h,0a0h,0e0h,008h,084h,0d0h,020h,0ffh,0fch,0f0h,000h,0a8h,0d8h	; b078  ......... ......
	defb 030h,0f0h,0c0h,000h,008h,004h,000h,0f6h,0c0h,0b0h,050h,0a8h,0d8h,0feh,00fh,001h	; b088  0.........P.....
	defb 0ffh,001h,007h,03fh,0f8h,070h,0f0h,0c0h,080h,060h,0a0h,040h,040h,0fbh,0bfh,07dh	; b098  ...?.p...`.@@..}
	defb 0f1h,0e7h,0b0h,0e9h,000h,000h,001h,083h,02ch,0c0h,0bch,010h,0f2h,001h,001h,000h	; b0a8  ........,.......
	defb 003h,002h,006h,004h,000h,0c4h,078h,0b8h,0fch,0f0h,080h,000h,000h,040h,0c0h,0d4h	; b0b8  ......x......@..
	defb 0e0h,0efh,0f0h,070h,0aeh,03ch,0cfh,0fch,0ffh,0a6h,0ffh,08fh,0c1h,0f4h,0efh,01fh	; b0c8  ...p.<..........
	defb 01fh,03ch,0f7h,03bh,0d0h,0f1h,004h,0f1h,082h,0f1h,0d9h,0fbh,0ffh,0bfh,07dh,0e2h	; b0d8  .<............}.
	defb 0dfh,047h,07fh,0f4h,0ffh,0bfh,07dh,0e2h,0dfh,047h,07fh,0f4h,0ffh,009h,0fbh,0cfh	; b0e8  .G....}..G......
	defb 09fh,001h,0fch,03fh,003h,003h,0d6h,0f0h,03fh,00fh,001h,000h,000h,050h,003h,0e8h	; b0f8  ...?....?....P..
	defb 081h,050h,003h,000h,083h,004h,00eh,004h,005h,000h,0bah,03ch,07eh,070h,078h,083h	; b108  .P.........<~px.
	defb 024h,07eh,03ch,0e1h,097h,00dh,0e7h,08fh,0beh,03eh,0dfh,00dh,08fh,0f0h,03ch,0fah	; b118  $~<......>....<.
	defb 028h,0c2h,07fh,0f0h,03ch,08fh,0a0h,0c6h,00fh,07fh,09fh,00fh,0f8h,0ebh,0fah,05fh	; b128  (...<.........._
	defb 0e0h,0b8h,007h,003h,03fh,084h,0f8h,0e0h,0f7h,00eh,0ffh,0f4h,0f8h,0f4h,0f8h,0f4h	; b138  ....?...........
	defb 0f8h,0f0h,0e8h,0e0h,080h,007h,000h,087h,001h,083h,02ch,0c0h,0bch,010h,0f2h,000h	; b148  ..........,.....

; ----------------------------------------------------------------------
; DATOS rle_B158: los colores de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4D11 (156 bytes)
;   0xb158..0xb1f4  (156 bytes)
DATA_rle_B158:
	defb 086h,090h,080h,080h,0f0h,070h,070h,005h,050h,01ch,040h,081h,054h,01fh,040h,004h	; b158  .....pp.P.@.T.@.
	defb 054h,082h,074h,054h,00ah,040h,081h,050h,034h,054h,009h,040h,007h,070h,002h,040h	; b168  T.tT.@.P4T.@.p.@
	defb 002h,050h,08ah,075h,074h,054h,040h,074h,074h,054h,074h,074h,054h,003h,074h,006h	; b178  .P.utT@ttTttT.t.
	defb 054h,083h,074h,054h,074h,009h,054h,00bh,074h,083h,054h,040h,040h,003h,050h,012h	; b188  T.tTt.T.t.T@@.P.
	defb 075h,086h,074h,075h,074h,075h,074h,074h,011h,0f7h,002h,0f5h,006h,0f7h,002h,075h	; b198  u.tututt.......u
	defb 002h,0f7h,086h,0f5h,0f0h,070h,0f7h,075h,0f7h,006h,0f0h,002h,070h,005h,040h,081h	; b1a8  .....p.u....p.@.
	defb 0f0h,007h,070h,002h,0f0h,084h,0f7h,0f5h,075h,0f5h,003h,040h,08dh,050h,070h,050h	; b1b8  ..p.....u..@.PpP
	defb 070h,050h,050h,054h,075h,0f7h,0f7h,0f5h,0f4h,0f7h,003h,075h,002h,0f5h,082h,0f7h	; b1c8  pPPTu......u....
	defb 075h,003h,0f7h,08fh,0f5h,054h,0f4h,0f4h,054h,0f5h,054h,074h,074h,075h,075h,054h	; b1d8  u....T..T.TttuuT
	defb 075h,074h,074h,00bh,040h,006h,000h,007h,054h,081h,074h,000h	; b1e8  utt.@...T.t.

; ----------------------------------------------------------------------
; DATOS rle_B1F4: los dibujos de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4CFF (50 bytes)
;   0xb1f4..0xb226  (50 bytes)
DATA_rle_B1F4:
	defb 089h,0dfh,0bfh,0dfh,0bfh,0dfh,0bfh,0dfh,0bfh,07fh,003h,040h,0a4h,060h,0e0h,0e0h	; b1f4  ...........@.`..
	defb 0f0h,03fh,07fh,07fh,020h,040h,040h,0c0h,0c0h,0aah,0d5h,0eah,0d5h,0eah,0d5h,0eah	; b204  .?.. @@.........
	defb 0d5h,0fah,0fch,0fah,0fch,0fah,0fch,0fah,0fch,0e8h,0f4h,0fah,0f4h,0fah,0fdh,0fah	; b214  ................
	defb 0fdh,000h	; b224

; ----------------------------------------------------------------------
; DATOS rle_B226: los colores de una entrada de la lista de graficos de
;   29:AB9A, en RLE (p00:4B3C); lo leen p00:4D11 (13 bytes)
;   0xb226..0xb233  (13 bytes)
DATA_rle_B226:
	defb 008h,0fbh,081h,070h,007h,0f7h,003h,050h,005h,075h,018h,040h,000h	; b226  ...p...P.u.@.

; ----------------------------------------------------------------------
; DATOS rle_B233: los dibujos de una entrada de la lista de graficos de
;   29:ABBF, en RLE (p00:4B3C); lo leen p00:4CFF (6 bytes)
;   0xb233..0xb239  (6 bytes)
DATA_rle_B233:
	defb 082h,007h,001h,006h,000h,000h	; b233

; ----------------------------------------------------------------------
; DATOS rle_B239: los colores de una entrada de la lista de graficos de
;   29:ABBF, en RLE (p00:4B3C); lo leen p00:4D11 (3 bytes)
;   0xb239..0xb23c  (3 bytes)
DATA_rle_B239:
	defb 008h,0f0h,000h	; b239

; ----------------------------------------------------------------------
; DATOS rle_B23C: los dibujos de una entrada de la lista de graficos de
;   29:ABBF, en RLE (p00:4B3C); lo leen p00:4CFF (166 bytes)
;   0xb23c..0xb2e2  (166 bytes)
DATA_rle_B23C:
	defb 082h,0ffh,000h,003h,0bfh,002h,0b8h,083h,0b9h,0ffh,000h,003h,0ffh,002h,000h,002h	; b23c  ................
	defb 0ffh,081h,001h,003h,0f9h,002h,001h,081h,0fdh,008h,0b9h,081h,003h,003h,001h,086h	; b24c  ................
	defb 000h,020h,020h,060h,0b9h,0b8h,003h,0bfh,002h,0b8h,082h,0b9h,0a0h,006h,020h,084h	; b25c  .  `.......... .
	defb 0a0h,060h,020h,020h,005h,000h,005h,0b9h,002h,081h,002h,0ffh,081h,030h,013h,017h	; b26c  .`  .........0..
	defb 085h,010h,030h,07fh,0fch,030h,014h,020h,084h,030h,0fch,0ffh,080h,003h,0bfh,003h	; b27c  ..0..0. .0......
	defb 0b8h,089h,0e0h,020h,090h,0d0h,0c8h,0e8h,064h,074h,0b8h,007h,0b9h,088h,032h,03ah	; b28c  ... ....dt....2:
	defb 019h,09dh,08ch,0ceh,046h,067h,004h,000h,002h,080h,002h,040h,094h,023h,033h,011h	; b29c  ....Fg.....@.#3.
	defb 019h,008h,00ch,004h,006h,020h,0a0h,090h,0d0h,0c8h,0e8h,064h,074h,002h,003h,001h	; b2ac  ..... .....dt...
	defb 001h,004h,000h,08ah,023h,033h,011h,019h,008h,00ch,004h,007h,0ffh,081h,006h,0b9h	; b2bc  ....#3..........
	defb 08bh,039h,0b9h,0b9h,0f9h,0f9h,001h,001h,0ffh,000h,000h,01eh,003h,03dh,082h,021h	; b2cc  .9...........=.!
	defb 01eh,006h,0b9h,002h,039h,000h	; b2dc

; ----------------------------------------------------------------------
; DATOS rle_B2E2: los colores de una entrada de la lista de graficos de
;   29:ABBF, en RLE (p00:4B3C); lo leen p00:4D11 (5 bytes)
;   0xb2e2..0xb2e7  (5 bytes)
DATA_rle_B2E2:
	defb 07fh,0f0h,061h,0f0h,000h	; b2e2

; ----------------------------------------------------------------------
; DATOS resto_B2E7: lo apuntan con el banco puesto p27:88A9 (0xB41C), p27:84AA
;   (0xB467); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p27:88A9, p27:84AA (1097 bytes)
;   0xb2e7..0xb730  (1097 bytes)
DATA_resto_B2E7:
	defb 0efh,0b2h,0f8h,0b2h,018h,0b3h,068h,0b3h,00fh,0cbh,002h,002h,000h,060h,073h,061h	; b2e7  ......h......`sa
	defb 072h,0aeh,0cah,007h,004h,001h,082h,000h,064h,006h,000h,090h,0b4h,0bdh,073h,0ach	; b2f7  r.......d.....s.
	defb 0d2h,070h,041h,0d5h,0e2h,06bh,043h,0e5h,0b4h,0bdh,06ah,0ach,003h,000h,081h,083h	; b307  .pA..kC...j.....
	defb 000h,04ch,0cah,00ch,008h,001h,005h,000h,081h,063h,013h,000h,0beh,0bah,0bbh,0bch	; b317  .L.......c......
	defb 06bh,066h,0adh,000h,0b5h,0b7h,0a6h,0a3h,042h,06ah,0a8h,0a9h,0b6h,0b8h,069h,0a1h	; b327  kf......Bj....i.
	defb 049h,0aeh,040h,0abh,0d1h,047h,07ch,076h,06fh,06eh,040h,0d3h,0e1h,07bh,07ah,06dh	; b337  I.@..G|von@..{zm
	defb 06fh,06dh,040h,0e3h,0b6h,0b8h,0a4h,049h,0a1h,0aeh,065h,0abh,0b5h,0b7h,0a6h,076h	; b347  om@....I..e....v
	defb 044h,068h,0a8h,0a9h,000h,0bah,0bbh,0bch,08ch,071h,0adh,007h,000h,082h,082h,000h	; b357  Dh.......q......
	defb 000h,02ah,0cah,00fh,00eh,001h,00ch,000h,081h,060h,00dh,000h,08ch,061h,062h,000h	; b367  .*.......`...ab.
	defb 000h,090h,074h,075h,096h,0b0h,0b1h,076h,071h,005h,000h,08ah,092h,099h,06fh,097h	; b377  ..tu...vq.....o.
	defb 09ch,0afh,09dh,09eh,068h,072h,003h,000h,08bh,093h,095h,09ah,09bh,04bh,04ch,0a4h	; b387  ....hr.......KL.
	defb 0b3h,0a0h,041h,0a7h,003h,000h,0dfh,091h,06eh,098h,0b2h,0b9h,0a5h,0a2h,09fh,06ah	; b397  ..A.....n......j
	defb 043h,06dh,0aah,000h,000h,094h,045h,046h,04eh,047h,04ah,04dh,048h,06ch,070h,044h	; b3a7  Cm....EFNGJMHlpD
	defb 067h,000h,000h,0d0h,07fh,087h,088h,07ch,04dh,048h,089h,085h,074h,075h,0d4h,000h	; b3b7  g......|MH..tu..
	defb 000h,0e0h,07eh,087h,088h,07ch,076h,06bh,064h,063h,041h,06ch,0e4h,000h,000h,094h	; b3c7  ..~..|vkdcAl....
	defb 045h,046h,04eh,047h,04ah,04dh,048h,089h,09fh,065h,08ah,000h,000h,091h,07dh,098h	; b3d7  EFNGJMH..e....}.
	defb 0b2h,0b9h,0a5h,0a2h,09fh,066h,066h,078h,0aah,000h,000h,093h,095h,09ah,09bh,04bh	; b3e7  .....ffx.......K
	defb 04ch,0a4h,0b3h,0a0h,068h,0a7h,004h,000h,08ah,092h,099h,086h,097h,09ch,0afh,09dh	; b3f7  L...h...........
	defb 09eh,069h,062h,005h,000h,088h,090h,081h,080h,096h,0b0h,0b1h,079h,08bh,00dh,000h	; b407  .ib.........y...
	defb 081h,084h,004h,000h,000h,060h,070h,071h,071h,072h,000h,079h,07ch,060h,07fh,080h	; b417  .....`pqqr.y|`..
	defb 060h,088h,062h,000h,000h,073h,000h,000h,074h,000h,07ah,07dh,000h,081h,082h,083h	; b427  `.b..s..t.z}....
	defb 073h,000h,000h,000h,075h,071h,071h,076h,000h,07ah,07dh,000h,073h,084h,085h,073h	; b437  s...uqqv.z}.s..s
	defb 000h,000h,000h,073h,000h,000h,077h,000h,07ah,07dh,000h,073h,086h,082h,08bh,000h	; b447  ...s..w.z}.s....
	defb 000h,063h,078h,061h,000h,000h,000h,07bh,07eh,063h,078h,061h,087h,089h,061h,08ah	; b457  .cxa...{~cxa..a.
	defb 07fh,0b4h,08eh,0b4h,0bfh,0b4h,032h,0b5h,0b4h,0b5h,0dfh,0b5h,00eh,0b6h,045h,0b6h	; b467  ......2.......E.
	defb 07ch,0b6h,0b3h,0b6h,0eah,0b6h,00dh,0b7h,0afh,0cah,005h,002h,000h,0aah,0cah,0abh	; b477  |...............
	defb 0cbh,0ach,0cch,0b8h,0d8h,0b9h,0d9h,04eh,0cah,00bh,004h,000h,090h,091h,0b1h,0b0h	; b487  .......N........
	defb 092h,093h,0b3h,0b2h,09bh,094h,0b4h,0bbh,0a2h,07ah,082h,0c2h,0a9h,081h,083h,0c9h	; b497  .........z......
	defb 0a7h,097h,0b7h,0c7h,0a8h,0a9h,0c9h,0c8h,0b4h,0b2h,0d2h,0d4h,0aah,0a0h,0c0h,0cah	; b4a7  ................
	defb 0a1h,0a2h,0c2h,0c1h,0b7h,0a3h,0c3h,0d7h,04bh,0cah,00bh,00ah,000h,000h,096h,0a1h	; b4b7  ........K.......
	defb 098h,09ah,0bah,0b8h,0c1h,0b6h,000h,0a5h,0a4h,09dh,095h,099h,0b9h,0b5h,0bdh,0c4h	; b4c7  ................
	defb 0c5h,000h,0a6h,09eh,086h,089h,077h,078h,0beh,0c6h,000h,000h,0a8h,09fh,07ch,087h	; b4d7  ......wx......|.
	defb 084h,07bh,0bfh,0c8h,000h,000h,0a8h,09fh,07eh,07fh,080h,07dh,0bfh,0c8h,000h,000h	; b4e7  .{......~..}....
	defb 0a3h,0a0h,088h,085h,076h,079h,0c0h,0c3h,000h,000h,0b5h,0abh,0a4h,0a6h,0c6h,0c4h	; b4f7  ....vy..........
	defb 0cbh,0d5h,000h,000h,0b5h,0b3h,0a5h,0a7h,0c7h,0c5h,0d3h,0d5h,000h,000h,0b5h,0b3h	; b507  ................
	defb 0b1h,0ach,0cch,0d1h,0d3h,0d5h,000h,000h,0b5h,0b3h,0adh,0aeh,0ceh,0cdh,0d3h,0d5h	; b517  ................
	defb 000h,000h,0b5h,0b3h,0afh,0b0h,0d0h,0cfh,0d3h,0d5h,000h,048h,0cah,00bh,010h,002h	; b527  ...........H....
	defb 0c1h,067h,082h,05ah,00ah,057h,042h,060h,0c1h,068h,043h,05ah,00ah,058h,083h,063h	; b537  .g.Z.WB`.hCZ.X.c
	defb 043h,05dh,0c1h,069h,008h,056h,0c1h,06ah,083h,066h,042h,051h,0c2h,050h,0d6h,044h	; b547  C].i.V.j.fBQ.P.D
	defb 0e0h,084h,0f3h,0c2h,0d7h,053h,082h,055h,042h,051h,0c2h,050h,0d0h,044h,0e4h,084h	; b557  .....S.UBQ.P.D..
	defb 0f7h,0c2h,0d1h,053h,082h,055h,042h,051h,0c2h,050h,0d0h,044h,0e8h,084h,0fbh,0c2h	; b567  ...S.UBQ.P.D....
	defb 0d1h,053h,082h,055h,042h,081h,0c2h,080h,0e0h,044h,0f0h,084h,0f9h,0c2h,0e1h,083h	; b577  .S.UB....D......
	defb 082h,085h,042h,081h,0c2h,080h,0e6h,042h,0f4h,044h,0fch,082h,0fbh,0c2h,0e7h,083h	; b587  ..B....B.D......
	defb 082h,085h,043h,08dh,0c1h,09ah,008h,086h,0c1h,09dh,083h,096h,043h,08ah,00ah,088h	; b597  ..C.........C...
	defb 083h,093h,042h,098h,0c1h,089h,00ah,087h,0c1h,090h,082h,09ch,000h,0abh,0cah,005h	; b5a7  ..B.............
	defb 00ah,002h,0c1h,0d6h,044h,0e0h,084h,0f3h,0c2h,0d7h,0d0h,044h,0e4h,084h,0f7h,082h	; b5b7  ....D......D....
	defb 0d1h,044h,0e8h,084h,0fbh,0c2h,0d1h,0e0h,044h,0f0h,084h,0f9h,0c2h,0e1h,0e6h,042h	; b5c7  .D......D......B
	defb 0f4h,044h,0fch,082h,0fbh,0c1h,0e7h,000h,0abh,0cah,005h,00ah,002h,0c1h,0d8h,042h	; b5d7  .D.............B
	defb 077h,042h,07dh,082h,09eh,0c4h,09bh,097h,0d9h,0d0h,044h,0e4h,084h,0f7h,082h,0d1h	; b5e7  wB}.......D.....
	defb 044h,0e8h,084h,0fbh,0c2h,0d1h,0e0h,044h,0f0h,084h,0f9h,0c2h,0e1h,0e6h,042h,0f4h	; b5f7  D......D......B.
	defb 044h,0fch,082h,0fbh,0c1h,0e7h,000h,0abh,0cah,005h,00ah,000h,0dah,070h,071h,074h	; b607  D............pqt
	defb 000h,000h,094h,091h,090h,0dbh,0d2h,07ch,078h,07fh,080h,0a0h,09fh,098h,09ch,0d3h	; b617  .......|x.......
	defb 0d0h,0e8h,0e9h,0eah,0ebh,0fbh,0fah,0f9h,0f8h,0d1h,0e0h,0f0h,0f1h,0f2h,0f3h,0f9h	; b627  ................
	defb 0f8h,0f7h,0f6h,0e1h,0e6h,0f4h,0f5h,0fch,0fdh,0feh,0ffh,0fbh,0fah,0e7h,0abh,0cah	; b637  ................
	defb 005h,00ah,000h,0dah,070h,071h,074h,000h,000h,094h,091h,090h,0dbh,0d4h,075h,072h	; b647  ....pqt.......ur
	defb 083h,084h,0a4h,0a3h,092h,095h,0d5h,0d2h,079h,07ah,081h,082h,0a2h,0a1h,09ah,099h	; b657  ........yz......
	defb 0d3h,0e0h,0f0h,0f1h,0f2h,0f3h,0f9h,0f8h,0f7h,0f6h,0e1h,0e6h,0f4h,0f5h,0fch,0fdh	; b667  ................
	defb 0feh,0ffh,0fbh,0fah,0e7h,0abh,0cah,005h,00ah,000h,0dah,070h,071h,074h,000h,000h	; b677  ...........pqt..
	defb 094h,091h,090h,0dbh,0d4h,075h,072h,083h,084h,0a4h,0a3h,092h,095h,0d5h,0d4h,073h	; b687  .....ur........s
	defb 076h,085h,086h,0a6h,0a5h,096h,093h,0d5h,0e2h,0a6h,0a3h,0a8h,0a9h,0b9h,0b8h,0b3h	; b697  v...............
	defb 0b6h,0e3h,0e6h,0f4h,0f5h,0fch,0fdh,0feh,0ffh,0fbh,0fah,0e7h,0abh,0cah,005h,00ah	; b6a7  ................
	defb 000h,0dah,070h,071h,074h,000h,000h,094h,091h,090h,0dbh,0d4h,075h,072h,083h,084h	; b6b7  ..pqt.......ur..
	defb 0a4h,0a3h,092h,095h,0d5h,0d4h,073h,076h,087h,088h,0a8h,0a7h,096h,093h,0d5h,0e4h	; b6c7  ......sv........
	defb 0a5h,0a0h,0aah,0abh,0bbh,0bah,0b0h,0b5h,0e5h,0e8h,0a4h,0a7h,0c0h,0c1h,0c2h,0c3h	; b6d7  ................
	defb 0b7h,0b4h,0e9h,0ebh,0cah,003h,00ah,000h,0d4h,073h,076h,089h,08ah,0aah,0a9h,096h	; b6e7  .........sv.....
	defb 093h,0d5h,0e4h,0a5h,0a0h,0ach,0adh,0bdh,0bch,0b0h,0b5h,0e5h,0eah,0a1h,0a2h,0c6h	; b6f7  ................
	defb 0c4h,0c7h,0c5h,0b2h,0b1h,0ebh,0ebh,0cah,003h,00ah,000h,0d4h,073h,076h,08bh,08ch	; b707  ............sv..
	defb 0ach,0abh,096h,093h,0d5h,0e4h,0a5h,0a0h,0ach,0adh,0bdh,0bch,0b0h,0b5h,0e5h,0eah	; b717  ................
	defb 0a1h,0a2h,0c6h,0c4h,0c7h,0c5h,0b2h,0b1h,0ebh	; b727  .........

; ----------------------------------------------------------------------
; DATOS rle_B730: graficos comprimidos a la VRAM con su direccion delante
;   (p00:4B36): direccion y el RLE de p00:4B3C; lo leen p27:8113 (136 bytes)
;   0xb730..0xb7b8  (136 bytes)
DATA_rle_B730:
	defb 080h,022h,007h,000h,089h,001h,000h,004h,00eh,000h,03fh,07fh,0ffh,0ffh,005h,000h	; b730  ."........?.....
	defb 08fh,080h,0c0h,0e0h,003h,003h,007h,0f7h,003h,007h,003h,003h,0edh,0f9h,0f3h,0e1h	; b740  ................
	defb 003h,0f3h,084h,033h,0f8h,0fdh,0feh,005h,0ffh,098h,000h,0c0h,0e0h,070h,0b8h,0dch	; b750  ...3.........p..
	defb 0eeh,0e6h,003h,001h,000h,001h,003h,006h,00ch,000h,003h,003h,0ffh,03fh,08fh,013h	; b760  .............?..
	defb 038h,060h,003h,0ffh,08dh,03fh,00fh,003h,000h,03eh,0dah,0dch,0beh,0bfh,07fh,07fh	; b770  8`...?...>......
	defb 0ffh,07fh,003h,000h,086h,0c0h,080h,000h,000h,070h,0c0h,007h,000h,083h,00dh,001h	; b780  .........p......
	defb 001h,005h,000h,088h,01fh,007h,001h,07fh,01fh,007h,001h,000h,003h,078h,085h,0fah	; b790  .............x..
	defb 0fbh,0cbh,0cbh,04bh,005h,000h,003h,080h,004h,04bh,08ch,07bh,030h,078h,030h,083h	; b7a0  ...K.....K.{0x0.
	defb 087h,0afh,0afh,06eh,05eh,05eh,03ch,000h	; b7b0  ...n^^<.

; ----------------------------------------------------------------------
; DATOS rle_B7B8: graficos comprimidos a la VRAM con su direccion delante
;   (p00:4B36): direccion y el RLE de p00:4B3C; lo leen p27:8119 (68 bytes)
;   0xb7b8..0xb7fc  (68 bytes)
DATA_rle_B7B8:
	defb 080h,002h,00ah,070h,081h,050h,011h,070h,081h,075h,003h,050h,083h,070h,075h,070h	; b7b8  ...p.P.p.u.P.pup
	defb 005h,075h,010h,070h,003h,050h,087h,040h,050h,070h,070h,050h,075h,075h,003h,050h	; b7c8  .u.p.P.@PppPuu.P
	defb 082h,040h,050h,004h,070h,003h,075h,009h,070h,081h,075h,010h,070h,008h,050h,003h	; b7d8  .@P.p.u.p.u.p.P.
	defb 075h,005h,050h,003h,070h,005h,050h,008h,070h,003h,050h,003h,040h,081h,050h,008h	; b7e8  u.P.p.P.p.P.@.P.
	defb 070h,081h,050h,000h	; b7f8

; ----------------------------------------------------------------------
; DATOS rle_B7FC: graficos comprimidos a la VRAM con su direccion delante
;   (p00:4B36): direccion y el RLE de p00:4B3C; lo leen p27:811F (81 bytes)
;   0xb7fc..0xb84d  (81 bytes)
DATA_rle_B7FC:
	defb 000h,02ch,004h,000h,081h,003h,003h,000h,093h,003h,00ch,031h,0c3h,007h,00fh,01fh	; b7fc  .,.........1....
	defb 01eh,000h,0e8h,0e8h,0ech,0cch,08ch,00ch,00ch,07dh,0fdh,0f8h,003h,00ch,002h,006h	; b80c  .........}......
	defb 081h,00ch,007h,000h,002h,00ch,002h,004h,004h,000h,09bh,006h,002h,002h,07fh,000h	; b81c  ................
	defb 03fh,03fh,017h,000h,003h,002h,002h,003h,002h,004h,008h,0f5h,084h,004h,044h,04ch	; b82c  ??............DL
	defb 0d4h,054h,050h,010h,020h,040h,005h,000h,085h,050h,010h,010h,020h,020h,003h,000h	; b83c  .TP. @...P..  ..
	defb 000h	; b84c

; ----------------------------------------------------------------------
; DATOS rle_B84D: graficos comprimidos a la VRAM con su direccion delante
;   (p00:4B36): direccion y el RLE de p00:4B3C; lo leen p27:8125 (49 bytes)
;   0xb84d..0xb87e  (49 bytes)
DATA_rle_B84D:
	defb 000h,00ch,008h,050h,081h,040h,006h,050h,083h,070h,050h,040h,006h,050h,083h,040h	; b84d  ...P.@.P.pP@.P.@
	defb 070h,050h,005h,065h,008h,070h,008h,050h,003h,065h,003h,040h,083h,050h,040h,040h	; b85d  pP.e.p.P.e.@.P@@
	defb 003h,050h,005h,040h,003h,050h,003h,040h,002h,050h,007h,070h,003h,050h,005h,070h	; b86d  .P.@.P.@.P.p.P.p
	defb 000h	; b87d

; ----------------------------------------------------------------------
; DATOS rle_ram2_B87E: datos comprimidos a la RAM (p00:55CD): 0 acaba; bits
;   7-6 del byte de control, con n en los bits 5-0: 00 repite n veces el byte
;   de detras, 01 n seguidos subiendo desde el de detras, 10 bajando, 11 copia
;   los n de detras; empieza donde la campana de tools/cobertura.py lee su
;   primer byte de control y se recorre hasta su 0; lo leen p00:55CD (57
;   bytes)
;   0xb87e..0xb8b7  (57 bytes)
DATA_rle_ram2_B87E:
	defb 043h,050h,006h,000h,083h,072h,044h,053h,004h,000h,084h,076h,045h,057h,002h,000h	; b87e  CP...rDS...vEW..
	defb 085h,07bh,0c1h,000h,045h,05ch,085h,080h,005h,000h,042h,061h,082h,082h,006h,000h	; b88e  .{..E\....Ba....
	defb 044h,080h,084h,093h,005h,000h,043h,084h,083h,096h,007h,000h,042h,087h,082h,098h	; b89e  D.....C.....B...
	defb 008h,000h,042h,089h,082h,09ah,004h,000h,000h	; b8ae  ..B......

; ----------------------------------------------------------------------
; DATOS resto_B8B7: lo apuntan con el banco puesto p27:8A0A (0xB8B7); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p27:8A0A (4 bytes)
;   0xb8b7..0xb8bb  (4 bytes)
DATA_resto_B8B7:
	defb 0bbh,0b8h,0c8h,0b8h	; b8b7

; ----------------------------------------------------------------------
; DATOS graficos_B8BB: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:8DE0 (13 bytes)
;   0xb8bb..0xb8c8  (13 bytes)
DATA_graficos_B8BB:
	defb 004h,0cdh,0b8h,050h,04bh,0b9h	; b8bb
	defb 002h,096h,0b9h,080h,032h,0bbh	; b8c1
	defb 000h	; b8c7

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb8c8..0xb8cd  (5 bytes)
DATA_B8C8:
	defb 098h,0b4h,012h,01ch,000h	; b8c8

; ----------------------------------------------------------------------
; DATOS rle_B8CD: los dibujos de una entrada de la lista de graficos de
;   29:B8BB, en RLE (p00:4B3C); lo leen p00:4CFF (126 bytes)
;   0xb8cd..0xb94b  (126 bytes)
DATA_rle_B8CD:
	defb 003h,000h,095h,003h,00fh,01fh,03fh,07fh,000h,01fh,0ffh,080h,017h,048h,0dch,0b0h	; b8cd  ......?......H..
	defb 000h,0f8h,011h,0bfh,05fh,03eh,03bh,00dh,003h,000h,085h,0c0h,0f0h,0f8h,0fch,0feh	; b8dd  ...._>..........
	defb 003h,000h,003h,001h,002h,003h,0a0h,080h,000h,0efh,0deh,09fh,0bfh,0afh,01fh,0c4h	; b8ed  ................
	defb 0e6h,0f3h,0f8h,0f0h,0b8h,0b0h,0c4h,0a3h,067h,0cfh,01fh,02fh,01dh,00dh,0a3h,0feh	; b8fd  ........g../....
	defb 05fh,0efh,0d7h,063h,0b7h,07bh,0b5h,003h,000h,003h,080h,002h,0c0h,002h,003h,003h	; b90d  _..c.{..........
	defb 047h,002h,067h,0a9h,027h,0bfh,0feh,0fdh,07fh,03fh,07fh,0fbh,0d5h,0e6h,0f3h,0f8h	; b91d  G.g.'....?......
	defb 0dfh,0d8h,0e4h,0f6h,0e3h,067h,0cfh,01fh,0fbh,01bh,0a7h,06bh,0c7h,07bh,0f5h,079h	; b92d  .....g.....k.{.y
	defb 0b5h,07fh,0b7h,057h,0afh,0c0h,0c2h,0e2h,0e2h,0e6h,0e6h,0e4h,0ech,000h	; b93d  ...W..........

; ----------------------------------------------------------------------
; DATOS rle_B94B: los colores de una entrada de la lista de graficos de
;   29:B8BB, en RLE (p00:4B3C); lo leen p00:4D11 (75 bytes)
;   0xb94b..0xb996  (75 bytes)
DATA_rle_B94B:
	defb 005h,030h,004h,020h,089h,030h,020h,032h,0c2h,0c2h,020h,0c0h,020h,020h,004h,0c2h	; b94b  .0. .0 2.. .  ..
	defb 00ah,0c0h,005h,030h,002h,020h,083h,030h,002h,002h,006h,02ch,086h,0c0h,020h,030h	; b95b  ...0. .0...,.. 0
	defb 020h,0c2h,020h,006h,0c0h,081h,0c2h,004h,0c0h,007h,0c2h,008h,0c0h,002h,020h,089h	; b96b   . ........... .
	defb 030h,020h,030h,030h,020h,030h,02ch,023h,023h,005h,02ch,082h,020h,030h,003h,020h	; b97b  0 00 0,##.,. 0.
	defb 083h,0c0h,020h,030h,008h,0c0h,008h,0c2h,008h,0c0h,000h	; b98b  .. 0.......

; ----------------------------------------------------------------------
; DATOS rle_B996: los dibujos de una entrada de la lista de graficos de
;   29:B8BB, en RLE (p00:4B3C); lo leen p00:4CFF (412 bytes)
;   0xb996..0xbb32  (412 bytes)
DATA_rle_B996:
	defb 0b2h,027h,016h,017h,047h,042h,011h,022h,005h,07fh,0a3h,074h,0eah,035h,0d1h,004h	; b996  .'..GB."...t.5..
	defb 00dh,0f8h,00fh,0bfh,0dfh,0dfh,0efh,075h,012h,01fh,0f0h,0fdh,0fbh,0ech,0fbh,0f6h	; b9a6  .......u........
	defb 0a8h,05fh,0f7h,0fdh,00eh,0a3h,08bh,020h,0b0h,0ech,0c8h,0a2h,042h,0aah,042h,094h	; b9b6  ._..... ....B.B.
	defb 004h,012h,017h,004h,003h,002h,001h,0ffh,006h,003h,0d0h,0feh,08dh,0eeh,054h,083h	; b9c6  ..............T.
	defb 020h,0c0h,001h,0a1h,0d3h,0e3h,0a3h,087h,004h,003h,080h,094h,0cbh,0d5h,0ebh,0c1h	; b9d6   ...............
	defb 060h,0c0h,003h,03fh,0ffh,0abh,051h,083h,00ch,088h,0c0h,080h,0c0h,080h,080h,000h	; b9e6  `..?..Q.........
	defb 0e7h,07dh,0f2h,0f8h,0f0h,0f5h,075h,07ah,007h,00bh,017h,013h,087h,0e7h,0f3h,0f9h	; b9f6  .}....uz........
	defb 0e1h,0e8h,0f4h,0e8h,0e1h,0e2h,0c7h,08eh,0feh,0f8h,055h,02fh,057h,0a7h,0d6h,06eh	; ba06  ..........U/W..n
	defb 03eh,0cfh,0f0h,0fch,0dfh,0e7h,0f8h,0fah,03ch,0f3h,00fh,03fh,0fbh,0e7h,01fh,0afh	; ba16  >.......<..?....
	defb 0d7h,0e2h,03fh,01fh,007h,000h,080h,0e0h,05fh,02bh,0feh,0f8h,0e0h,000h,001h,007h	; ba26  ..?....._+......
	defb 00ch,083h,080h,0c0h,0e0h,0f8h,0dfh,0e7h,030h,0c1h,001h,003h,007h,01fh,0fbh,0e7h	; ba36  ........0.......
	defb 0f1h,0fah,07dh,03fh,01fh,007h,080h,08ch,0e0h,057h,0afh,05eh,0fch,0f8h,0e0h,001h	; ba46  ..}?.....W.^....
	defb 007h,000h,001h,001h,003h,000h,002h,002h,090h,03bh,03fh,09fh,09fh,08fh,0c7h,0c1h	; ba56  ..........?.....
	defb 0e1h,03bh,03fh,09fh,09fh,08fh,0c7h,0c3h,0e1h,006h,000h,082h,001h,003h,003h,000h	; ba66  ..?.............
	defb 0a0h,01ch,07fh,0e0h,0f0h,0c0h,000h,000h,001h,007h,0cfh,09eh,03ch,07ch,00eh,078h	; ba76  ............<|.x
	defb 0e0h,080h,004h,030h,060h,0c0h,000h,00eh,01fh,01eh,03ch,07ch,0fch,0feh,007h,00fh	; ba86  ...0`.....<|....
	defb 09fh,003h,03fh,092h,01fh,00fh,0c0h,0c1h,0e1h,0e1h,0f0h,0f8h,0fch,0feh,0fch,0ech	; ba96  ..?.............
	defb 0eeh,0eeh,0f7h,077h,03bh,01dh,005h,000h,083h,080h,0c0h,0e0h,003h,002h,0cdh,006h	; baa6  ...w............
	defb 007h,006h,00eh,00eh,0f0h,0c0h,080h,080h,0f8h,0c0h,0feh,0ffh,007h,081h,0e0h,0f8h	; bab6  ................
	defb 01fh,006h,07fh,0bfh,0c7h,0c3h,07fh,01fh,00fh,0c1h,0f0h,0fch,006h,083h,0c0h,0f0h	; bac6  ................
	defb 0f8h,0feh,07fh,00fh,0f0h,078h,0bch,01eh,00fh,003h,081h,0c0h,007h,003h,001h,000h	; bad6  .....x..........
	defb 000h,0c0h,0e0h,078h,060h,070h,0b8h,0fch,07eh,01fh,007h,000h,0ffh,03fh,01fh,007h	; bae6  ...x`p..~....?..
	defb 001h,000h,0c0h,0f0h,0efh,0f3h,0f8h,0feh,0ffh,0ffh,01fh,003h,003h,0ffh,097h,00fh	; baf6  ................
	defb 0c3h,0f0h,0feh,0ffh,000h,0c0h,0fch,0ffh,0ffh,01fh,000h,0e0h,070h,00ch,000h,0c0h	; bb06  ............p...
	defb 0f8h,0ffh,03fh,001h,01eh,007h,003h,000h,087h,080h,0f8h,0ffh,000h,000h,0c0h,028h	; bb16  ..?............(
	defb 003h,000h,081h,040h,004h,000h,084h,003h,005h,00bh,009h,000h	; bb26  ...@........

; ----------------------------------------------------------------------
; DATOS rle_BB32: los colores de una entrada de la lista de graficos de
;   29:B8BB, en RLE (p00:4B3C); lo leen p00:4D11 (193 bytes)
;   0xbb32..0xbbf3  (193 bytes)
DATA_rle_BB32:
	defb 005h,020h,003h,0c0h,002h,0c2h,002h,032h,086h,0c2h,0c0h,060h,080h,020h,0c3h,007h	; bb32  . .....2...`. ..
	defb 0c0h,08fh,0c2h,0c0h,0c0h,0c2h,0c2h,0c0h,0c0h,0c2h,0c0h,0c0h,0c2h,0c2h,0c0h,060h	; bb42  ...............`
	defb 080h,010h,0c0h,08ah,090h,0a0h,0c0h,0c0h,0c2h,032h,032h,0c2h,080h,090h,004h,0c0h	; bb52  .........22.....
	defb 002h,020h,082h,080h,090h,006h,0c0h,082h,090h,0a0h,003h,0c0h,083h,0c2h,0c3h,0c2h	; bb62  . ..............
	defb 008h,0c0h,081h,0c2h,007h,0c0h,002h,020h,082h,030h,020h,015h,0c0h,084h,020h,0c0h	; bb72  ....... .0 ... .
	defb 0c0h,020h,00bh,0c0h,002h,0c2h,084h,020h,0c0h,0c0h,000h,003h,0c0h,081h,0c2h,003h	; bb82  . ..... ........
	defb 0c0h,084h,000h,0c0h,0c0h,020h,006h,0c0h,081h,020h,00ah,0c0h,002h,020h,00fh,0c0h	; bb92  ..... ... ... ..
	defb 003h,000h,012h,0c0h,00dh,090h,083h,098h,090h,080h,007h,090h,081h,080h,003h,090h	; bba2  ................
	defb 081h,080h,004h,060h,009h,090h,013h,080h,004h,060h,006h,080h,002h,060h,084h,020h	; bbb2  ...`.....`...`.
	defb 0c0h,020h,020h,004h,0c0h,004h,098h,002h,086h,002h,060h,004h,080h,002h,086h,002h	; bbc2  .  .......`.....
	defb 060h,002h,086h,008h,060h,081h,080h,00ch,060h,081h,080h,005h,0c0h,003h,060h,008h	; bbd2  `...`...`.....`.
	defb 0c0h,005h,060h,003h,080h,018h,060h,003h,080h,011h,060h,00ah,080h,082h,090h,0a0h	; bbe2  ..`...`...`.....
	defb 000h	; bbf2

; ----------------------------------------------------------------------
; DATOS rle_BBF3: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; lo leen p27:8A07, p27:8DEE (32 bytes)
;   0xbbf3..0xbc13  (32 bytes)
DATA_rle_BBF3:
	defb 083h,004h,006h,003h,004h,000h,083h,004h,006h,003h,003h,000h,086h,004h,006h,003h	; bbf3  ................
	defb 0a0h,060h,0c0h,004h,000h,083h,0a0h,060h,0c0h,003h,000h,083h,0a0h,060h,0c0h,000h	; bc03  .`.....`.....`..

; ----------------------------------------------------------------------
; DATOS resto_BC13: lo apuntan con el banco puesto p27:8E24 (0xBC13); el
;   tamano es lo que hay hasta lo siguiente, no sale de recorrerlo; lo leen
;   p27:8E24 (55 bytes)
;   0xbc13..0xbc4a  (55 bytes)
DATA_resto_BC13:
	defb 006h,000h,044h,050h,00bh,000h,046h,054h,00ah,000h,046h,05ah,00ah,000h,046h,080h	; bc13  ..DP..FT..FZ..F.
	defb 00ah,000h,046h,086h,006h,000h,044h,09bh,0c1h,098h,044h,08ch,0c1h,0b4h,084h,0bah	; bc23  ..F...D...D.....
	defb 0c1h,000h,046h,09fh,0c1h,099h,042h,090h,0c1h,0b5h,086h,0c0h,047h,0a5h,042h,092h	; bc33  ..F...B.....G.B.
	defb 087h,0c7h,048h,0ach,088h,0cfh,000h	; bc43

; ----------------------------------------------------------------------
; DATOS rle_BC4A: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; lo leen p27:8A9D (259 bytes)
;   0xbc4a..0xbd4d  (259 bytes)
DATA_rle_BC4A:
	defb 007h,000h,082h,006h,002h,00ch,000h,08ah,060h,0c0h,000h,000h,001h,0a7h,01eh,004h	; bc4a  ........`.......
	defb 000h,001h,003h,000h,097h,002h,0c0h,010h,03fh,01fh,038h,067h,09eh,078h,0e0h,002h	; bc5a  ........?.8g.x..
	defb 00eh,01eh,006h,006h,03ch,038h,070h,0e0h,0c0h,080h,060h,040h,007h,000h,08ah,010h	; bc6a  ....<8p...`@....
	defb 018h,01ch,01eh,01fh,01fh,05fh,0dfh,0dch,090h,008h,000h,08dh,003h,006h,000h,080h	; bc7a  ....._..........
	defb 080h,000h,001h,003h,00eh,03ch,0f8h,0e0h,0c0h,00dh,000h,084h,018h,019h,0e3h,017h	; bc8a  .....<..........
	defb 008h,000h,088h,006h,00ch,0f8h,070h,0f0h,0e0h,0c7h,0d0h,007h,000h,002h,004h,002h	; bc9a  ......p.........
	defb 006h,002h,007h,081h,006h,00ah,000h,002h,030h,085h,000h,086h,00eh,01ch,008h,00fh	; bcaa  ........0.......
	defb 000h,081h,001h,00ch,000h,085h,028h,03ch,07ch,0bbh,044h,01dh,000h,087h,004h,01fh	; bcba  ......(<|.D.....
	defb 00ah,020h,0f8h,0f0h,040h,01ch,000h,085h,010h,054h,0eeh,028h,010h,01bh,000h,002h	; bcca  . ..@....T.(....
	defb 002h,087h,003h,023h,033h,0f1h,030h,012h,001h,00ah,000h,088h,020h,030h,014h,090h	; bcda  ...#3.0..... 0..
	defb 080h,0e0h,060h,020h,009h,000h,084h,00ch,00eh,00bh,009h,00bh,000h,085h,010h,0c8h	; bcea  ..` ............
	defb 0e8h,028h,028h,008h,000h,007h,001h,002h,000h,097h,008h,006h,031h,038h,00eh,0f7h	; bcfa  .((.........18..
	defb 001h,000h,000h,080h,080h,0c8h,0ceh,0e3h,071h,010h,000h,000h,080h,040h,000h,080h	; bd0a  ........q....@..
	defb 0c0h,003h,000h,084h,001h,000h,002h,001h,00ch,000h,002h,080h,08bh,000h,080h,0c0h	; bd1a  ................
	defb 000h,000h,0c0h,060h,090h,0fch,03eh,007h,007h,000h,088h,008h,01eh,01fh,0c7h,021h	; bd2a  ...`..>........!
	defb 018h,006h,001h,005h,000h,08ch,018h,004h,012h,021h,03ah,09ch,0feh,0ffh,0feh,01eh	; bd3a  .........!:.....
	defb 007h,001h,000h	; bd4a

; ----------------------------------------------------------------------
; DATOS graficos_BD4D: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:8E53 (13 bytes)
;   0xbd4d..0xbd5a  (13 bytes)
DATA_graficos_BD4D:
	defb 004h,05ah,0bdh,063h,07ch,0bdh	; bd4d
	defb 002h,09ch,0bdh,08bh,0b6h,0bdh	; bd53
	defb 000h	; bd59

; ----------------------------------------------------------------------
; DATOS rle_BD5A: los dibujos de una entrada de la lista de graficos de
;   29:BD4D, en RLE (p00:4B3C); lo leen p00:4CFF (34 bytes)
;   0xbd5a..0xbd7c  (34 bytes)
DATA_rle_BD5A:
	defb 006h,000h,083h,030h,03ch,00fh,003h,02fh,08ch,025h,000h,07fh,07fh,000h,0c0h,0f0h	; bd5a  ...0<../.%......
	defb 0fch,055h,01fh,067h,078h,005h,000h,083h,0f8h,001h,007h,005h,000h,002h,080h,081h	; bd6a  .U.gx...........
	defb 0e0h,000h	; bd7a

; ----------------------------------------------------------------------
; DATOS rle_BD7C: los colores de una entrada de la lista de graficos de
;   29:BD4D, en RLE (p00:4B3C); lo leen p00:4D11 (32 bytes)
;   0xbd7c..0xbd9c  (32 bytes)
DATA_rle_BD7C:
	defb 007h,0f0h,081h,070h,003h,050h,002h,040h,083h,050h,0f5h,074h,003h,050h,002h,040h	; bd7c  ...p.P.@.P.t.P.@
	defb 083h,0f0h,070h,070h,005h,0f0h,083h,0f9h,087h,050h,006h,0a0h,082h,080h,070h,000h	; bd8c  ..pp.....P....p.

; ----------------------------------------------------------------------
; DATOS rle_BD9C: los dibujos de una entrada de la lista de graficos de
;   29:BD4D, en RLE (p00:4B3C); lo leen p00:4CFF (26 bytes)
;   0xbd9c..0xbdb6  (26 bytes)
DATA_rle_BD9C:
	defb 08ch,07fh,0e3h,0ffh,07fh,000h,018h,030h,000h,07fh,07fh,078h,060h,004h,000h,082h	; bd9c  .......0...x`...
	defb 0b8h,0bfh,006h,000h,082h,03ch,0cfh,006h,000h,000h	; bdac  .....<....

; ----------------------------------------------------------------------
; DATOS rle_BDB6: los colores de una entrada de la lista de graficos de
;   29:BD4D, en RLE (p00:4B3C); lo leen p00:4D11 (20 bytes)
;   0xbdb6..0xbdca  (20 bytes)
DATA_rle_BDB6:
	defb 002h,050h,004h,040h,084h,050h,040h,050h,050h,006h,040h,081h,050h,007h,040h,081h	; bdb6  .P.@.P@PP.@.P.@.
	defb 050h,007h,040h,000h	; bdc6

; ----------------------------------------------------------------------
; DATOS rle_BDCA: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; lo leen p27:8E5C (314 bytes)
;   0xbdca..0xbf04  (314 bytes)
DATA_rle_BDCA:
	defb 084h,007h,03fh,01fh,007h,007h,000h,08bh,03fh,0ffh,07fh,03fh,007h,000h,0e0h,0f8h	; bdca  ..?.....?..?....
	defb 0fch,000h,001h,005h,000h,084h,0feh,0fch,0f8h,0e0h,016h,000h,086h,00fh,07fh,0ffh	; bdda  ................
	defb 03fh,00fh,003h,00ah,000h,082h,0e0h,0fch,005h,0ffh,00ch,000h,088h,0c0h,0e0h,0f0h	; bdea  ?...............
	defb 0f8h,03ch,03ch,01eh,002h,005h,000h,084h,003h,007h,003h,001h,00ah,000h,082h,007h	; bdfa  .<<.............
	defb 01fh,004h,0ffh,082h,07fh,00fh,008h,000h,006h,0ffh,082h,0fch,0e0h,008h,000h,085h	; be0a  ................
	defb 0fch,0f8h,0f0h,0e0h,0c0h,00ch,000h,086h,003h,001h,000h,010h,030h,030h,003h,070h	; be1a  ............00.p
	defb 003h,0c0h,002h,000h,081h,01fh,003h,0ffh,084h,07fh,01fh,007h,001h,008h,000h,081h	; be2a  ................
	defb 0feh,007h,0ffh,082h,07fh,01fh,007h,000h,083h,0e0h,0f8h,0feh,006h,0ffh,002h,007h	; be3a  ................
	defb 081h,003h,007h,000h,08ah,080h,0c0h,0e0h,0f0h,0f0h,0f8h,0f8h,0fch,0fch,07ch,010h	; be4a  ..............|.
	defb 000h,08ch,0e0h,0c0h,0c0h,040h,040h,078h,030h,031h,01fh,00fh,007h,003h,008h,000h	; be5a  .....@@x01......
	defb 082h,003h,07fh,007h,0ffh,081h,01fh,005h,000h,00ah,0ffh,081h,0feh,005h,000h,007h	; be6a  ................
	defb 0ffh,083h,0feh,0f8h,0e0h,003h,000h,08ah,01ch,004h,004h,0f8h,0f8h,0f0h,0f0h,0e0h	; be7a  ................
	defb 0c0h,080h,019h,000h,087h,001h,003h,004h,00ch,01ch,03ch,03ch,003h,07ch,003h,0f0h	; be8a  ..........<<.|..
	defb 089h,003h,01fh,07fh,0ffh,0ffh,07fh,01fh,007h,001h,007h,000h,009h,0ffh,083h,07fh	; be9a  ................
	defb 01fh,007h,005h,000h,082h,0e0h,0fch,009h,0ffh,002h,001h,006h,000h,086h,0c0h,0e0h	; beaa  ................
	defb 0f0h,0f8h,0fch,0feh,005h,0ffh,081h,01fh,00ch,000h,003h,080h,08eh,0c0h,0f8h,0f0h	; beba  ................
	defb 0f0h,070h,070h,07eh,03ch,03ch,01fh,00fh,007h,003h,001h,008h,000h,083h,01fh,03fh	; beca  .pp~<<.........?
	defb 07fh,005h,0ffh,083h,07fh,01fh,003h,003h,000h,081h,03fh,00ch,0ffh,003h,000h,00ah	; beda  ..........?.....
	defb 0ffh,086h,0fch,0e0h,000h,007h,001h,001h,003h,0ffh,086h,0feh,0fch,0f8h,0f0h,0e0h	; beea  ................
	defb 0c0h,004h,000h,081h,0c0h,003h,080h,00ch,000h,000h	; befa  ..........

; ----------------------------------------------------------------------
; DATOS rle_BF04: los dibujos de una entrada de la lista de graficos de
;   29:BFB8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BF04
;   BF04-BF43); lo leen p00:4CFF, p00:4B3C (63 bytes)
;   0xbf04..0xbf43  (63 bytes)
DATA_rle_BF04:
	defb 088h,080h,040h,020h,010h,008h,004h,002h,001h,005h,000h,083h,01fh,07fh,0ffh,005h	; bf04  ..@ ............
	defb 000h,003h,0ffh,088h,080h,040h,020h,010h,00ch,00eh,004h,001h,006h,000h,08ah,0fch	; bf14  .....@ .........
	defb 07fh,000h,001h,007h,00fh,01fh,01ch,0d8h,0d9h,006h,003h,092h,001h,004h,07fh,07ch	; bf24  ...............|
	defb 060h,06fh,060h,07ch,07fh,07fh,0d9h,098h,019h,05bh,018h,09ah,0dah,0d8h,000h	; bf34  `o`|.....[.....

; ----------------------------------------------------------------------
; DATOS rle_BF43: los colores de una entrada de la lista de graficos de
;   29:BFB8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BF43
;   BF43-BF6C); lo leen p00:4D11, p00:4B3C (41 bytes)
;   0xbf43..0xbf6c  (41 bytes)
DATA_rle_BF43:
	defb 081h,070h,007h,050h,006h,070h,082h,050h,040h,006h,070h,081h,050h,005h,040h,083h	; bf43  .p.P.p.P@.p.P.@.
	defb 050h,040h,040h,007h,070h,08ch,075h,054h,050h,040h,050h,070h,050h,050h,040h,040h	; bf53  P@@.p.uTP@PpPP@@
	defb 050h,050h,005h,040h,081h,070h,010h,040h,000h	; bf63  PP.@.p.@.

; ----------------------------------------------------------------------
; DATOS rle_BF6C: los dibujos de una entrada de la lista de graficos de
;   29:BFB8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BF6C
;   BF6C-BF9F); lo leen p00:4CFF, p00:4B3C (51 bytes)
;   0xbf6c..0xbf9f  (51 bytes)
DATA_rle_BF6C:
	defb 006h,000h,088h,001h,002h,00eh,00ch,010h,020h,040h,080h,006h,000h,094h,001h,007h	; bf6c  ........ @......
	defb 00fh,01fh,01bh,07ch,07ch,01fh,0ffh,01fh,00ch,00ch,004h,008h,010h,020h,040h,080h	; bf7c  ...||........ @.
	defb 000h,000h,003h,01fh,08dh,00fh,007h,001h,000h,000h,00ch,006h,006h,002h,003h,001h	; bf8c  ................
	defb 03fh,003h,000h	; bf9c

; ----------------------------------------------------------------------
; DATOS rle_BF9F: los colores de una entrada de la lista de graficos de
;   29:BFB8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BF9F
;   BF9F-BFB8); lo leen p00:4D11, p00:4B3C (25 bytes)
;   0xbf9f..0xbfb8  (25 bytes)
DATA_rle_BF9F:
	defb 00ah,040h,00fh,050h,087h,070h,050h,040h,050h,075h,097h,085h,005h,040h,081h,070h	; bf9f  .@.P.pP@Pu...@.p
	defb 00ah,040h,081h,085h,005h,064h,002h,040h,000h	; bfaf  .@...d.@.

; ----------------------------------------------------------------------
; DATOS graficos_BFB8: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p27:807F (13 bytes)
;   0xbfb8..0xbfc5  (13 bytes)
DATA_graficos_BFB8:
	defb 004h,004h,0bfh,043h,043h,0bfh	; bfb8
	defb 002h,06ch,0bfh,07eh,09fh,0bfh	; bfbe
	defb 000h	; bfc4

; ----------------------------------------------------------------------
; DATOS copias_BFC5: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B): de 4 en 4 (origen, destino, tercios y vuelta, cuantos) y un 0;
;   lo leen p27:8086 (9 bytes)
;   0xbfc5..0xbfce  (9 bytes)
DATA_copias_BFC5:
	defb 043h,04ch,024h,009h	; bfc5
	defb 07eh,085h,012h,007h	; bfc9
	defb 000h	; bfcd

; ----------------------------------------------------------------------
; DATOS leido_BFCE: 40 bytes que lee p00:59B3 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:59B3 (40 bytes)
;   0xbfce..0xbff6  (40 bytes)
DATA_leido_BFCE:
	defb 043h,000h,044h,045h,04eh,04dh,000h,04ch,000h,046h,047h,048h,051h,050h,04fh,000h	; bfce  C.DENM.L.FGHQPO.
	defb 000h,049h,04ah,04bh,054h,053h,052h,000h,07eh,07fh,080h,081h,088h,087h,086h,085h	; bfde  .IJKTSR.~.......
	defb 082h,000h,083h,084h,08bh,08ah,000h,089h	; bfee  ........

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbff6..0xc000  (10 bytes)
DATA_BFF6:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff6  ..........

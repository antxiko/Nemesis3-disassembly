; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 07 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS rle_ram_9F6D_cola: datos comprimidos a la RAM (p00:55AD, el mismo
;   formato que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0
;   (sigue del banco 6); se solapan 2 bloques: (rle_ram_A000 A000-A08E); lo
;   leen p00:55AD (142 bytes)
;   0xa000..0xa08e  (142 bytes)
DATA_rle_ram_9F6D_cola:
	defb 085h,0c2h,0ceh,0cfh,0d0h,0c2h,00fh,000h,08bh,0bch,000h,000h,0e8h,0fdh,0feh,0ffh	; a000  ................
	defb 0e8h,000h,000h,0bch,00bh,000h,08ch,0bbh,0beh,0b0h,0c0h,0b2h,0adh,0c3h,0adh,0b2h	; a010  ................
	defb 0dah,0b0h,0beh,00bh,000h,08dh,0bah,0b3h,0b4h,0bdh,0bfh,000h,0c4h,000h,0d9h,0d8h	; a020  ................
	defb 0b4h,0b3h,0d7h,00ah,000h,083h,0b9h,0cdh,074h,003h,000h,081h,0c5h,003h,000h,083h	; a030  ........t.......
	defb 06fh,0cdh,0d6h,00ah,000h,083h,0b8h,0b0h,075h,003h,000h,081h,0c6h,003h,000h,083h	; a040  o.......u.......
	defb 070h,0b1h,0d5h,00ah,000h,082h,0b6h,0b7h,004h,000h,081h,0c7h,003h,000h,083h,071h	; a050  p..............q
	defb 0b0h,0d4h,00ah,000h,082h,08dh,0dch,004h,000h,081h,0c8h,004h,000h,082h,0d3h,0d2h	; a060  ................
	defb 00bh,000h,081h,060h,003h,000h,083h,064h,0c9h,065h,003h,000h,082h,07bh,0dbh,010h	; a070  ...`...d.e...{..
	defb 000h,081h,0cah,005h,000h,081h,079h,010h,000h,081h,0cbh,00bh,000h,000h	; a080  ......y.......

; ----------------------------------------------------------------------
; DATOS rle_ram_A08E: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (283 bytes)
;   0xa08e..0xa1a9  (283 bytes)
DATA_rle_ram_A08E:
	defb 087h,014h,016h,000h,000h,07eh,0ddh,07fh,006h,000h,081h,0f0h,004h,000h,083h,091h	; a08e  .....~..........
	defb 0f3h,090h,006h,000h,082h,0deh,0dfh,006h,000h,081h,0efh,004h,000h,082h,0f5h,0f4h	; a09e  ................
	defb 007h,000h,083h,0e0h,0b0h,084h,004h,000h,088h,080h,0eeh,081h,000h,000h,08ah,0b0h	; a0ae  ................
	defb 0f6h,007h,000h,083h,0b9h,0b1h,083h,005h,000h,081h,0edh,003h,000h,083h,089h,0b1h	; a0be  ................
	defb 0d5h,007h,000h,083h,0e1h,0f2h,082h,005h,000h,081h,0c7h,003h,000h,083h,088h,0f2h	; a0ce  ................
	defb 0f7h,007h,000h,082h,0e2h,0e4h,006h,000h,081h,0ech,004h,000h,082h,0e4h,0f8h,008h	; a0de  ................
	defb 000h,08dh,0b3h,0aeh,0bdh,0b4h,0e5h,000h,000h,0ebh,000h,0f9h,0d8h,0b4h,0b3h,009h	; a0ee  ................
	defb 000h,08dh,0e3h,085h,086h,0afh,06eh,000h,000h,0eah,000h,000h,077h,0afh,0e3h,00ch	; a0fe  ......n.....w...
	defb 000h,089h,0b0h,0e6h,0b2h,0adh,0e9h,0adh,0b2h,0fah,0b0h,00fh,000h,085h,0c2h,0ceh	; a10e  ................
	defb 0cfh,0d0h,0c2h,00eh,000h,088h,0bch,000h,000h,0e8h,0bch,0feh,0ffh,0e8h,00eh,000h	; a11e  ................
	defb 08ah,0beh,0b0h,0c0h,0bbh,0beh,0b0h,0adh,0b2h,0dah,0b0h,00bh,000h,08eh,0bbh,0b3h	; a12e  ................
	defb 0b4h,0bdh,0bah,0b3h,0e5h,000h,000h,077h,0afh,073h,072h,0bch,008h,000h,086h,0bah	; a13e  .......w.sr.....
	defb 0cdh,066h,000h,0b9h,0cdh,003h,000h,085h,0d9h,0b4h,0d8h,0aeh,0b3h,008h,000h,087h	; a14e  .f..............
	defb 0b9h,0b1h,067h,000h,0b8h,0b0h,074h,006h,000h,082h,0beh,0d7h,007h,000h,087h,0b8h	; a15e  ..g...t.........
	defb 0b0h,068h,000h,0b6h,0b7h,075h,005h,000h,083h,06fh,0cdh,0d6h,007h,000h,086h,0b6h	; a16e  .h...u...o......
	defb 0b7h,000h,000h,08dh,0dch,006h,000h,083h,070h,0b1h,0d5h,007h,000h,082h,0cch,063h	; a17e  ........p......c
	defb 003h,000h,081h,060h,006h,000h,083h,071h,0b0h,0d4h,007h,000h,081h,061h,00ch,000h	; a18e  ...`...q.....a..
	defb 082h,0d3h,0d2h,014h,000h,084h,07bh,0d1h,07ah,000h,000h	; a19e  ......{.z..

; ----------------------------------------------------------------------
; DATOS rle_ram_A1A9: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (70 bytes)
;   0xa1a9..0xa1ef  (70 bytes)
DATA_rle_ram_A1A9:
	defb 088h,006h,00ch,074h,075h,0b0h,0b1h,076h,077h,006h,000h,082h,0b2h,0b3h,003h,0b4h	; a1a9  ...tu..vw.......
	defb 0a7h,0b5h,08ah,083h,000h,000h,085h,08bh,0b6h,0b7h,0b8h,0b7h,0b8h,0b7h,0dah,0dbh	; a1b9  ................
	defb 0dch,0ddh,0dch,0deh,0b9h,0bah,0bbh,0bch,0bbh,0bdh,0d7h,0d8h,0d9h,0d8h,0d9h,0d8h	; a1c9  ................
	defb 078h,071h,000h,000h,073h,079h,0d3h,0d4h,003h,0d5h,081h,0d6h,006h,000h,086h,086h	; a1d9  xq..sy..........
	defb 087h,0d1h,0d2h,088h,089h,000h	; a1e9

; ----------------------------------------------------------------------
; DATOS rle_ram_A1EF: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (90 bytes)
;   0xa1ef..0xa249  (90 bytes)
DATA_rle_ram_A1EF:
	defb 088h,006h,010h,074h,075h,0b0h,0b1h,076h,077h,006h,000h,086h,074h,075h,0b0h,0b1h	; a1ef  ...tu..vw...tu..
	defb 0b2h,0b3h,003h,0b4h,0b3h,0b5h,08ah,083h,000h,000h,085h,08bh,0b2h,0b3h,0b4h,0b4h	; a1ff  ................
	defb 0b6h,0b7h,0b8h,0b7h,0b8h,0b7h,0dah,0dbh,0dch,0ddh,0dch,0deh,0b6h,0b7h,0b8h,0b7h	; a20f  ................
	defb 0b9h,0bah,0bbh,0bch,0bbh,0bdh,0d7h,0d8h,0d9h,0d8h,0d9h,0d8h,0b9h,0bah,0bbh,0bch	; a21f  ................
	defb 078h,071h,000h,000h,073h,079h,0d3h,0d4h,003h,0d5h,083h,0d6h,078h,071h,008h,000h	; a22f  xq..sy......xq..
	defb 086h,086h,087h,0d1h,0d2h,088h,089h,004h,000h,000h	; a23f  ..........

; ----------------------------------------------------------------------
; DATOS rle_ram_A249: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (70 bytes)
;   0xa249..0xa28f  (70 bytes)
DATA_rle_ram_A249:
	defb 088h,006h,00ch,070h,07ah,07bh,07ch,07dh,072h,006h,000h,08eh,0beh,0bfh,0bfh,0c0h	; a249  ...pz{|}r.......
	defb 0c0h,0beh,090h,091h,07dh,07ch,092h,093h,0c1h,0c1h,003h,0c2h,081h,0c1h,003h,0e4h	; a259  ....}|..........
	defb 002h,0c0h,081h,0e5h,003h,0c3h,002h,0e1h,083h,0c4h,0e2h,0e2h,003h,0e3h,08dh,0e2h	; a269  ................
	defb 07eh,07fh,08fh,08eh,080h,081h,0dfh,0e0h,0e0h,0e1h,0e1h,0dfh,006h,000h,086h,082h	; a279  ~...............
	defb 08ch,080h,08eh,08fh,084h,000h	; a289

; ----------------------------------------------------------------------
; DATOS rle_ram_A28F: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (92 bytes)
;   0xa28f..0xa2eb  (92 bytes)
DATA_rle_ram_A28F:
	defb 088h,006h,010h,070h,07ah,07bh,07ch,07dh,072h,006h,000h,096h,070h,07ah,07bh,07ch	; a28f  ...pz{|}r...pz{|
	defb 0beh,0bfh,0bfh,0c0h,0c0h,0beh,090h,091h,07dh,07ch,092h,093h,0beh,0bfh,0bfh,0c0h	; a29f  ........}|......
	defb 0c1h,0c1h,003h,0c2h,081h,0c1h,003h,0e4h,002h,0c0h,085h,0e5h,0c1h,0c1h,0c2h,0c2h	; a2af  ................
	defb 003h,0c3h,002h,0e1h,083h,0c4h,0e2h,0e2h,003h,0e3h,081h,0e2h,003h,0c3h,091h,0f1h	; a2bf  ................
	defb 07eh,07fh,08fh,08eh,080h,081h,0dfh,0e0h,0e0h,0e1h,0e1h,0dfh,07eh,07fh,08fh,08eh	; a2cf  ~...........~...
	defb 006h,000h,086h,082h,08ch,080h,08eh,08fh,084h,004h,000h,000h	; a2df  ............

; ----------------------------------------------------------------------
; DATOS rle_ram_A2EB: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (57 bytes)
;   0xa2eb..0xa324  (57 bytes)
DATA_rle_ram_A2EB:
	defb 082h,006h,00ch,00ch,000h,0b0h,0c5h,0c6h,0c5h,0c6h,0c5h,0c6h,0c5h,0c6h,0c5h,0c6h	; a2eb  ................
	defb 0c5h,0c6h,0c7h,0c8h,0c7h,0c8h,0c7h,0c8h,0c7h,0c8h,0c7h,0c8h,0c7h,0c8h,0e9h,0e8h	; a2fb  ................
	defb 0e9h,0e8h,0e9h,0e8h,0e9h,0e8h,0e9h,0e8h,0e9h,0e8h,0e7h,0e6h,0e7h,0e6h,0e7h,0e6h	; a30b  ................
	defb 0e7h,0e6h,0e7h,0e6h,0e7h,0e6h,00ch,000h,000h	; a31b  .........

; ----------------------------------------------------------------------
; DATOS rle_ram_A324: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (73 bytes)
;   0xa324..0xa36d  (73 bytes)
DATA_rle_ram_A324:
	defb 082h,006h,010h,010h,000h,0c0h,0c5h,0c6h,0c5h,0c6h,0c5h,0c6h,0c5h,0c6h,0c5h,0c6h	; a324  ................
	defb 0c5h,0c6h,0c5h,0c6h,0c5h,0c6h,0c7h,0c8h,0c7h,0c8h,0c7h,0c8h,0c7h,0c8h,0c7h,0c8h	; a334  ................
	defb 0c7h,0c8h,0c7h,0c8h,0c7h,0c8h,0e9h,0e8h,0e9h,0e8h,0e9h,0e8h,0e9h,0e8h,0e9h,0e8h	; a344  ................
	defb 0e9h,0e8h,0e9h,0e8h,0e9h,0e8h,0e7h,0e6h,0e7h,0e6h,0e7h,0e6h,0e7h,0e6h,0e7h,0e6h	; a354  ................
	defb 0e7h,0e6h,0e7h,0e6h,0e7h,0e6h,010h,000h,000h	; a364  .........

; ----------------------------------------------------------------------
; DATOS rle_ram_A36D: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (69 bytes)
;   0xa36d..0xa3b2  (69 bytes)
DATA_rle_ram_A36D:
	defb 082h,006h,00ch,006h,000h,092h,070h,07ah,07bh,07ch,07dh,072h,090h,091h,07dh,07ch	; a36d  ......pz{|}r..}|
	defb 092h,093h,0beh,0bfh,0bfh,0c0h,0c0h,0beh,003h,0e4h,002h,0c0h,083h,0e5h,0c1h,0c1h	; a37d  ................
	defb 003h,0c2h,083h,0c1h,0e2h,0e2h,003h,0e3h,081h,0e2h,003h,0c3h,002h,0e1h,093h,0c4h	; a38d  ................
	defb 0dfh,0e0h,0e0h,0e1h,0e1h,0dfh,07eh,07fh,08fh,08eh,080h,081h,082h,08ch,080h,08eh	; a39d  ......~.........
	defb 08fh,084h,006h,000h,000h	; a3ad

; ----------------------------------------------------------------------
; DATOS rle_ram_A3B2: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (93 bytes)
;   0xa3b2..0xa40f  (93 bytes)
DATA_rle_ram_A3B2:
	defb 082h,006h,010h,006h,000h,086h,070h,07ah,07bh,07ch,07dh,072h,004h,000h,090h,090h	; a3b2  ......pz{|}r....
	defb 091h,07dh,07ch,092h,093h,0beh,0bfh,0bfh,0c0h,0c0h,0beh,090h,091h,07dh,07ch,003h	; a3c2  .}|..........}|.
	defb 0e4h,002h,0c0h,083h,0e5h,0c1h,0c1h,003h,0c2h,081h,0c1h,003h,0e4h,083h,0c0h,0e2h	; a3d2  ................
	defb 0e2h,003h,0e3h,081h,0e2h,003h,0c3h,002h,0e1h,09bh,0c4h,0e2h,0e2h,0e3h,0e3h,0dfh	; a3e2  ................
	defb 0e0h,0e0h,0e1h,0e1h,0dfh,07eh,07fh,08fh,08eh,080h,081h,0dfh,0e0h,0e0h,0f1h,082h	; a3f2  .....~..........
	defb 08ch,080h,08eh,08fh,084h,006h,000h,084h,082h,08ch,080h,08eh,000h	; a402  .............

; ----------------------------------------------------------------------
; DATOS rle_ram_A40F: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (69 bytes)
;   0xa40f..0xa454  (69 bytes)
DATA_rle_ram_A40F:
	defb 082h,006h,00ch,006h,000h,08eh,074h,075h,0b0h,0b1h,076h,077h,08ah,083h,000h,000h	; a40f  ......tu..vw....
	defb 085h,08bh,0b2h,0b3h,003h,0b4h,09bh,0b5h,0dah,0dbh,0dch,0ddh,0dch,0deh,0b6h,0b7h	; a41f  ................
	defb 0b8h,0b7h,0b8h,0b7h,0d7h,0d8h,0d9h,0d8h,0d9h,0d8h,0b9h,0bah,0bbh,0bch,0bbh,0bdh	; a42f  ................
	defb 0d3h,0d4h,003h,0d5h,08dh,0d6h,078h,071h,000h,000h,073h,079h,086h,087h,0d1h,0d2h	; a43f  ......xq..sy....
	defb 088h,089h,006h,000h,000h	; a44f

; ----------------------------------------------------------------------
; DATOS rle_ram_A454: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (93 bytes)
;   0xa454..0xa4b1  (93 bytes)
DATA_rle_ram_A454:
	defb 082h,006h,010h,006h,000h,086h,074h,075h,0b0h,0b1h,076h,077h,004h,000h,088h,08ah	; a454  ......tu..vw....
	defb 083h,000h,000h,085h,08bh,0b2h,0b3h,003h,0b4h,0a7h,0b5h,08ah,083h,000h,000h,0dah	; a464  ................
	defb 0dbh,0dch,0ddh,0dch,0deh,0b6h,0b7h,0b8h,0b7h,0b8h,0b7h,0dah,0dbh,0dch,0ddh,0d7h	; a474  ................
	defb 0d8h,0d9h,0d8h,0d9h,0d8h,0b9h,0bah,0bbh,0bch,0bbh,0bdh,0d7h,0d8h,0d9h,0d8h,0d3h	; a484  ................
	defb 0d4h,003h,0d5h,091h,0d6h,078h,071h,000h,000h,073h,079h,0d3h,0d4h,0d5h,0d5h,086h	; a494  .....xq..sy.....
	defb 087h,0d1h,0d2h,088h,089h,006h,000h,084h,086h,087h,0d1h,0d2h,000h	; a4a4  .............

; ----------------------------------------------------------------------
; DATOS leido_A4B1: 24 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7DFC, p01:7E01, p01:7E09
;   (24 bytes)
;   0xa4b1..0xa4c9  (24 bytes)
DATA_leido_A4B1:
	defb 005h,002h,000h,000h,0c9h,0cah,0cbh,0cch,0cdh,0ceh,0cfh,0d0h,005h,002h,000h,000h	; a4b1  ................
	defb 0f0h,0f1h,0eeh,0efh,0ech,0edh,0eah,0ebh	; a4c1  ........

; ----------------------------------------------------------------------
; DATOS rle_ram_A4C9: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (135 bytes)
;   0xa4c9..0xa550  (135 bytes)
DATA_rle_ram_A4C9:
	defb 002h,00ch,006h,000h,086h,05fh,060h,0abh,0b1h,09bh,063h,004h,000h,0aeh,059h,05ah	; a4c9  ....._`...c...YZ
	defb 05bh,0afh,0a2h,0a3h,09ah,0bah,059h,05bh,0b1h,0deh,0dfh,0b0h,0a8h,099h,0a4h,0a5h	; a4d9  [.....Y[........
	defb 0b5h,09eh,000h,062h,0abh,0afh,0a2h,0a3h,0b6h,098h,0b3h,098h,0cah,09fh,000h,0ach	; a4e9  ...b............
	defb 0adh,0c4h,0a4h,0a5h,0beh,0bdh,0beh,0bdh,09ah,0b8h,000h,000h,005h,0a6h,087h,0dah	; a4f9  ................
	defb 0dbh,0dch,0ddh,0b4h,000h,000h,005h,0bbh,0a9h,0e8h,0e9h,0eah,0ebh,0c9h,000h,0c1h	; a509  ................
	defb 0c2h,0afh,0a2h,0a3h,0a9h,0a8h,0a9h,0a8h,09ah,0cdh,000h,05ch,0c0h,0c4h,0a4h,0a5h	; a519  ...........\....
	defb 0cbh,098h,0c8h,098h,0b5h,09eh,05fh,061h,0c6h,0ech,0edh,0c5h,0bdh,099h,0a2h,0a3h	; a529  ......_a........
	defb 0cah,09fh,004h,000h,088h,05fh,060h,061h,0c4h,0a4h,0a5h,09ah,0cfh,006h,000h,086h	; a539  ....._`a........
	defb 059h,05ah,0c0h,0c6h,098h,05dh,000h	; a549

; ----------------------------------------------------------------------
; DATOS rle_ram_A550: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (512 bytes)
;   0xa550..0xa750  (512 bytes)
DATA_rle_ram_A550:
	defb 082h,017h,027h,029h,000h,084h,059h,05ah,05bh,0afh,003h,0a7h,084h,0abh,0b5h,0b4h	; a550  ..')..YZ[.......
	defb 09bh,00ch,000h,085h,063h,064h,000h,063h,064h,00bh,000h,08ah,0c3h,0a7h,0a7h,0abh	; a560  ....cd.cd.......
	defb 0c7h,0c8h,0afh,0c9h,0cah,0c9h,009h,000h,08bh,0c3h,0abh,0a7h,0b5h,0bah,0b9h,0abh	; a570  ................
	defb 0bah,0abh,0b5h,09eh,008h,000h,082h,0c3h,0abh,005h,0a7h,082h,0a2h,0a3h,003h,0a7h	; a580  ................
	defb 093h,0aah,0a7h,0a2h,0a3h,0a8h,0a9h,0b4h,0aah,0afh,0a8h,0a9h,0abh,0a9h,0abh,0a9h	; a590  ................
	defb 09ah,09dh,0cah,09fh,008h,000h,081h,0b1h,004h,0a7h,098h,09ch,09dh,0a4h,0a5h,0bdh	; a5a0  ................
	defb 0beh,0bdh,0bfh,0bch,0a4h,0a5h,0bdh,0beh,0c9h,0bfh,0c4h,0afh,0a8h,0a9h,0a8h,0a9h	; a5b0  ................
	defb 0aah,0abh,0b8h,00ah,000h,096h,095h,097h,0a1h,0a0h,0a0h,0beh,0bdh,0beh,0bdh,0beh	; a5c0  ................
	defb 0bdh,0beh,0bdh,0beh,0bdh,0beh,0beh,0bdh,0beh,0bdh,0beh,0c4h,004h,0bch,085h,099h	; a5d0  ................
	defb 09ah,09dh,0b5h,09eh,008h,000h,086h,092h,095h,096h,0a9h,0b1h,067h,004h,000h,095h	; a5e0  ............g...
	defb 05fh,060h,061h,099h,0beh,0bdh,0bdh,0beh,0bdh,0beh,0d6h,0d7h,0d8h,0d9h,098h,098h	; a5f0  _`a.............
	defb 0b0h,09ah,09dh,0cah,09fh,008h,000h,085h,093h,095h,097h,0a1h,0c6h,007h,000h,008h	; a600  ................
	defb 0a6h,089h,0d0h,0d2h,0d4h,0d5h,0b0h,0b1h,0b4h,0c0h,0b8h,00ah,000h,085h,094h,096h	; a610  ................
	defb 0abh,0a9h,0b5h,007h,000h,008h,0bbh,089h,0d1h,0d3h,0e2h,0e3h,0c5h,0c6h,0c9h,0abh	; a620  ................
	defb 0cdh,00ah,000h,085h,093h,095h,0a0h,09ah,0cah,004h,000h,096h,059h,05ah,0afh,0b1h	; a630  ............YZ..
	defb 0a8h,0a9h,0a8h,0a8h,0a9h,0a8h,0a8h,0e4h,0e5h,0e6h,0e7h,098h,098h,0c5h,09ah,09dh	; a640  ................
	defb 0b5h,09eh,008h,000h,085h,094h,095h,0a1h,09ah,0b5h,005h,000h,08ch,062h,098h,0bdh	; a650  .............b..
	defb 0beh,0bdh,0beh,0bdh,0beh,0bdh,0beh,0bdh,0afh,004h,0a7h,085h,099h,09bh,0c0h,0cah	; a660  ................
	defb 09fh,008h,000h,085h,092h,095h,096h,0bdh,0cah,004h,000h,094h,05fh,060h,0c4h,0c6h	; a670  ............_`..
	defb 0bdh,0beh,0bdh,0beh,0bdh,0beh,0c9h,0bfh,0c4h,0bdh,0beh,0bdh,0beh,0bfh,0bch,0cdh	; a680  ................
	defb 00ah,000h,085h,093h,094h,095h,095h,0b1h,010h,000h,083h,0aeh,0c0h,067h,00fh,000h	; a690  .............g..
	defb 085h,094h,097h,0bdh,0bdh,0c6h,022h,000h,085h,096h,0a0h,0a0h,0beh,0b0h,022h,000h	; a6a0  ......".......".
	defb 086h,0c6h,0beh,0beh,0a2h,0a3h,068h,00ch,000h,083h,0c3h,0abh,068h,005h,000h,085h	; a6b0  ......h.....h...
	defb 0c3h,0a7h,0abh,0b5h,09eh,008h,000h,09fh,0aeh,0c0h,0bch,0a4h,0a5h,0a9h,0afh,0a7h	; a6c0  ................
	defb 0abh,0a7h,0aah,0a9h,0afh,0b1h,0a7h,0a7h,0a9h,0a8h,0a9h,0a8h,0a9h,0afh,0a9h,0a8h	; a6d0  ................
	defb 0a9h,0b0h,0b4h,09ah,09dh,0cah,09fh,009h,000h,09eh,0aeh,0c0h,098h,0a9h,0beh,0c4h	; a6e0  ................
	defb 0bch,0c0h,0bch,0bfh,0bdh,0c4h,0c6h,0bch,0bch,0b1h,0cbh,0cbh,0b1h,0c0h,0c4h,0beh	; a6f0  ................
	defb 0bdh,0beh,0c5h,0c9h,09ah,09dh,0b5h,09eh,008h,000h,089h,05fh,060h,061h,0c5h,0bdh	; a700  ..........._`a..
	defb 0afh,0b6h,0b6h,0c4h,004h,000h,088h,05fh,060h,061h,0c6h,0b6h,0b6h,0c6h,067h,005h	; a710  ......._`a....g.
	defb 000h,085h,0aeh,0bch,0c0h,0cah,09fh,00ah,000h,086h,059h,05ah,0beh,0c4h,0b5h,09eh	; a720  ..........YZ....
	defb 006h,000h,086h,059h,05ah,0beh,0beh,0afh,0cfh,017h,000h,084h,0aeh,0c6h,0cah,09fh	; a730  ...YZ...........
	defb 008h,000h,085h,0aeh,0bah,0c4h,05dh,05eh,022h,000h,082h,065h,066h,03bh,000h,000h	; a740  ......]^"..ef...

; ----------------------------------------------------------------------
; DATOS leido_A750: 188 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7DFC, p01:7E01, p01:7E09
;   (188 bytes)
;   0xa750..0xa80c  (188 bytes)
DATA_leido_A750:
	defb 002h,005h,069h,069h,069h,069h,069h,06ah,06ah,06ah,06ah,06ah,002h,005h,069h,069h	; a750  ..iiiiijjjjj..ii
	defb 069h,069h,090h,06ah,06ah,06ah,06ah,091h,002h,005h,069h,069h,069h,069h,0a6h,06ah	; a760  ii.jjjj...iiii.j
	defb 06ah,06ah,06ah,0bbh,002h,005h,069h,069h,069h,090h,0a6h,06ah,06ah,06ah,091h,0bbh	; a770  jjj...iii..jjj..
	defb 002h,005h,069h,069h,069h,0a6h,0a6h,06ah,06ah,06ah,0bbh,0bbh,002h,005h,069h,069h	; a780  ..iii..jjj....ii
	defb 090h,0a6h,0a6h,06ah,06ah,091h,0bbh,0bbh,002h,005h,069h,069h,0a6h,0a6h,0a6h,06ah	; a790  ...jj.....ii...j
	defb 06ah,0bbh,0bbh,0bbh,002h,005h,069h,090h,0a6h,0a6h,0a6h,06ah,091h,0bbh,0bbh,0bbh	; a7a0  j.....i....j....
	defb 002h,005h,069h,0a6h,0a6h,0a6h,0a6h,06ah,0bbh,0bbh,0bbh,0bbh,002h,005h,090h,0a6h	; a7b0  ..i....j........
	defb 0a6h,0a6h,0a6h,091h,0bbh,0bbh,0bbh,0bbh,002h,005h,0a6h,0a6h,0a6h,0a6h,0a6h,0bbh	; a7c0  ................
	defb 0bbh,0bbh,0bbh,0bbh,001h,007h,08ch,08dh,08eh,08dh,08eh,08fh,075h,001h,005h,08ch	; a7d0  ............u...
	defb 08eh,08dh,08fh,075h,002h,004h,0dah,0dbh,0dch,0ddh,0e8h,0e9h,0eah,0ebh,002h,002h	; a7e0  ...u............
	defb 06bh,06ch,06dh,093h,002h,002h,069h,06ah,092h,093h,002h,002h,085h,086h,092h,093h	; a7f0  klm...ij........
	defb 002h,002h,071h,072h,07bh,07ch,002h,002h,086h,072h,000h,087h	; a800  ..qr{|...r..

; ----------------------------------------------------------------------
; DATOS rle_ram_A80C: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (8 bytes)
;   0xa80c..0xa814  (8 bytes)
DATA_rle_ram_A80C:
	defb 082h,002h,008h,008h,069h,008h,06ah,000h	; a80c  ....i.j.

; ----------------------------------------------------------------------
; DATOS rle_ram_A814: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (12 bytes)
;   0xa814..0xa820  (12 bytes)
DATA_rle_ram_A814:
	defb 082h,002h,008h,007h,069h,081h,090h,007h,06ah,081h,091h,000h	; a814  ....i...j...

; ----------------------------------------------------------------------
; DATOS rle_ram_A820: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (12 bytes)
;   0xa820..0xa82c  (12 bytes)
DATA_rle_ram_A820:
	defb 082h,002h,008h,007h,069h,081h,0a6h,007h,06ah,081h,0bbh,000h	; a820  ....i...j...

; ----------------------------------------------------------------------
; DATOS rle_ram_A82C: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (14 bytes)
;   0xa82c..0xa83a  (14 bytes)
DATA_rle_ram_A82C:
	defb 082h,002h,008h,006h,069h,082h,090h,0a6h,006h,06ah,082h,091h,0bbh,000h	; a82c  ....i....j....

; ----------------------------------------------------------------------
; DATOS rle_ram_A83A: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (12 bytes)
;   0xa83a..0xa846  (12 bytes)
DATA_rle_ram_A83A:
	defb 082h,002h,008h,006h,069h,002h,0a6h,006h,06ah,002h,0bbh,000h	; a83a  ....i...j...

; ----------------------------------------------------------------------
; DATOS rle_ram_A846: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (16 bytes)
;   0xa846..0xa856  (16 bytes)
DATA_rle_ram_A846:
	defb 082h,002h,008h,005h,069h,083h,090h,0a6h,0a6h,005h,06ah,083h,091h,0bbh,0bbh,000h	; a846  ....i.....j.....

; ----------------------------------------------------------------------
; DATOS rle_ram_A856: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (12 bytes)
;   0xa856..0xa862  (12 bytes)
DATA_rle_ram_A856:
	defb 082h,002h,008h,005h,069h,003h,0a6h,005h,06ah,003h,0bbh,000h	; a856  ....i...j...

; ----------------------------------------------------------------------
; DATOS rle_ram_A862: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (16 bytes)
;   0xa862..0xa872  (16 bytes)
DATA_rle_ram_A862:
	defb 082h,002h,008h,004h,069h,081h,090h,003h,0a6h,004h,06ah,081h,091h,003h,0bbh,000h	; a862  ....i.....j.....

; ----------------------------------------------------------------------
; DATOS rle_ram_A872: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (12 bytes)
;   0xa872..0xa87e  (12 bytes)
DATA_rle_ram_A872:
	defb 082h,002h,008h,004h,069h,004h,0a6h,004h,06ah,004h,0bbh,000h	; a872  ....i...j...

; ----------------------------------------------------------------------
; DATOS rle_ram_A87E: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (16 bytes)
;   0xa87e..0xa88e  (16 bytes)
DATA_rle_ram_A87E:
	defb 082h,002h,008h,003h,069h,081h,090h,004h,0a6h,003h,06ah,081h,091h,004h,0bbh,000h	; a87e  ....i.....j.....

; ----------------------------------------------------------------------
; DATOS rle_ram_A88E: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (12 bytes)
;   0xa88e..0xa89a  (12 bytes)
DATA_rle_ram_A88E:
	defb 082h,002h,008h,003h,069h,005h,0a6h,003h,06ah,005h,0bbh,000h	; a88e  ....i...j...

; ----------------------------------------------------------------------
; DATOS rle_ram_A89A: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (15 bytes)
;   0xa89a..0xa8a9  (15 bytes)
DATA_rle_ram_A89A:
	defb 085h,002h,008h,069h,069h,090h,005h,0a6h,002h,06ah,081h,091h,005h,0bbh,000h	; a89a  ...ii....j.....

; ----------------------------------------------------------------------
; DATOS rle_ram_A8A9: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (12 bytes)
;   0xa8a9..0xa8b5  (12 bytes)
DATA_rle_ram_A8A9:
	defb 084h,002h,008h,069h,069h,006h,0a6h,002h,06ah,006h,0bbh,000h	; a8a9  ...ii...j...

; ----------------------------------------------------------------------
; DATOS rle_ram_A8B5: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (13 bytes)
;   0xa8b5..0xa8c2  (13 bytes)
DATA_rle_ram_A8B5:
	defb 084h,002h,008h,069h,090h,006h,0a6h,082h,06ah,091h,006h,0bbh,000h	; a8b5  ...i....j....

; ----------------------------------------------------------------------
; DATOS rle_ram_A8C2: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (11 bytes)
;   0xa8c2..0xa8cd  (11 bytes)
DATA_rle_ram_A8C2:
	defb 083h,002h,008h,069h,007h,0a6h,081h,06ah,007h,0bbh,000h	; a8c2  ...i...j...

; ----------------------------------------------------------------------
; DATOS rle_ram_A8CD: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (11 bytes)
;   0xa8cd..0xa8d8  (11 bytes)
DATA_rle_ram_A8CD:
	defb 083h,002h,008h,090h,007h,0a6h,081h,091h,007h,0bbh,000h	; a8cd  ...........

; ----------------------------------------------------------------------
; DATOS rle_ram_A8D8: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (8 bytes)
;   0xa8d8..0xa8e0  (8 bytes)
DATA_rle_ram_A8D8:
	defb 082h,002h,008h,008h,0a6h,008h,0bbh,000h	; a8d8  ........

; ----------------------------------------------------------------------
; DATOS leido_A8E0: 60 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7DFC, p01:7E01, p01:7E09
;   (60 bytes)
;   0xa8e0..0xa91c  (60 bytes)
DATA_leido_A8E0:
	defb 002h,006h,081h,082h,083h,084h,085h,086h,087h,088h,089h,08ah,08bh,076h,002h,004h	; a8e0  .............v..
	defb 081h,083h,084h,086h,087h,089h,08ah,076h,004h,004h,0d6h,078h,079h,06eh,077h,07bh	; a8f0  .......v...xynw{
	defb 07ch,07ah,07dh,07bh,07ch,080h,071h,07eh,07fh,074h,004h,004h,0d6h,06ch,06dh,06eh	; a900  |z}{|.q~.t...lmn
	defb 06bh,000h,000h,06fh,070h,000h,000h,000h,071h,072h,073h,074h	; a910  k..op...qrst

; ----------------------------------------------------------------------
; DATOS listas_A91C: un puntero por lista de caracteres para el bufer
;   (p03:A37D: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (8 bytes)
;   0xa91c..0xa924  (8 bytes)
DATA_listas_A91C:
	defw 0a924h,0a96fh,0a9bah,0aa0eh	; a91c  -> DATA_caracteres_A924 DATA_caracteres_A96F DATA_caracteres_A9BA DATA_caracteres_AA0E

; ----------------------------------------------------------------------
; DATOS caracteres_A924: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (75 bytes)
;   0xa924..0xa96f  (75 bytes)
DATA_caracteres_A924:
	defb 003h,050h,0b1h,0b3h,0b2h,051h,0b3h,0b4h,038h,04fh,0aeh,006h,0bdh,054h,035h,056h	; a924  .P...Q..8O...T5V
	defb 0bch,008h,0adh,057h,033h,05ah,0aeh,00ah,0bdh,033h,055h,00ch,062h,032h,0a9h,00ch	; a934  ...W3Z...3U.b2..
	defb 0d2h,032h,0aah,00ch,0d1h,032h,0cah,00ch,0bbh,032h,0c9h,00ch,0bch,032h,06dh,00ch	; a944  .2...2...2...2m.
	defb 075h,032h,060h,0b1h,00ah,0c1h,034h,069h,0b2h,008h,0c2h,05ch,035h,06dh,0cch,006h	; a954  u2`...4i...\5m..
	defb 0dbh,072h,037h,06eh,0cfh,0d1h,0d0h,06fh,0d1h,0d2h,000h	; a964  .r7n...o...

; ----------------------------------------------------------------------
; DATOS caracteres_A96F: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (75 bytes)
;   0xa96f..0xa9ba  (75 bytes)
DATA_caracteres_A96F:
	defb 004h,0a5h,0a4h,05dh,0a3h,0a4h,0a2h,05ch,037h,060h,0beh,006h,0afh,05bh,035h,063h	; a96f  ...]...\7`...[5c
	defb 0bch,008h,0adh,062h,034h,0beh,00ah,0afh,066h,032h,056h,00ch,061h,032h,0cch,00ch	; a97f  ...b4...f2V.a2..
	defb 0b9h,032h,0cbh,00ch,0bah,032h,0abh,00ch,0d0h,032h,0ach,00ch,0cfh,032h,06eh,00ch	; a98f  .2...2...2...2n.
	defb 074h,033h,0b0h,00ah,0c0h,06ch,033h,068h,0b2h,008h,0c2h,05dh,035h,079h,0dch,006h	; a99f  t3...l3h...]5y..
	defb 0cdh,074h,038h,0c3h,0c2h,076h,0c1h,0c2h,0c0h,075h,000h	; a9af  .t8..v...u.

; ----------------------------------------------------------------------
; DATOS caracteres_A9BA: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (84 bytes)
;   0xa9ba..0xaa0e  (84 bytes)
DATA_caracteres_A9BA:
	defb 003h,0b0h,0b5h,0b6h,0a0h,0a0h,0b5h,0b7h,0b8h,001h,09dh,034h,055h,0b9h,0beh,006h	; a9ba  ...........4U...
	defb 0afh,0bah,001h,09eh,033h,0bbh,0bch,008h,0adh,058h,033h,0e2h,0beh,00ah,0afh,033h	; a9ca  ....3....X3....3
	defb 0ceh,00ch,0bdh,032h,0d4h,00ch,0d4h,032h,0ceh,00ch,0d4h,032h,0d4h,00ch,0a8h,032h	; a9da  ...2...2...2...2
	defb 0d4h,00ch,0d4h,032h,0cdh,00ch,0a8h,032h,05fh,0b0h,00ah,0c7h,0b4h,033h,05eh,0b2h	; a9ea  ...2...2_....3^.
	defb 008h,0c2h,0afh,035h,0c9h,0dch,006h,0cdh,0c8h,07ah,036h,0c7h,0c6h,0c4h,0a0h,0a0h	; a9fa  ...5.....z6.....
	defb 0c5h,0c4h,0bfh,000h	; aa0a

; ----------------------------------------------------------------------
; DATOS caracteres_AA0E: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (86 bytes)
;   0xaa0e..0xaa64  (86 bytes)
DATA_caracteres_AA0E:
	defb 003h,0a9h,0a8h,0a6h,0a0h,0a0h,0a7h,0a6h,0a1h,037h,0abh,0beh,006h,0afh,0aah,061h	; aa0e  .........7.....a
	defb 034h,064h,0bch,008h,0adh,0ach,09fh,032h,065h,0beh,00ah,0afh,0ddh,032h,0adh,00ch	; aa1e  4d.....2e....2..
	defb 0c8h,032h,0d4h,00ch,0d4h,032h,0d4h,00ch,0c8h,032h,0b8h,00ch,0d4h,032h,0d4h,00ch	; aa2e  .2...2...2...2..
	defb 0d4h,032h,0b8h,00ch,0d3h,032h,0c4h,0b0h,00ah,0c6h,06bh,032h,0a7h,0bfh,0b2h,008h	; aa3e  .2...2....k2....
	defb 0c2h,06ah,033h,09eh,073h,0d7h,0dch,006h,0cdh,0d8h,035h,09dh,001h,0ceh,0d3h,0d4h	; aa4e  .j3.s.....5.....
	defb 0a0h,0a0h,0d3h,0d5h,0d6h,000h	; aa5e

; ----------------------------------------------------------------------
; DATOS listas_AA64: un puntero por lista de caracteres para el bufer
;   (p03:A47F: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (20 bytes)
;   0xaa64..0xaa78  (20 bytes)
DATA_listas_AA64:
	defw 0aa78h,0aa78h,0aa79h,0aa7fh,0aa85h,0aa7fh,0aa93h,0aaa2h	; aa64
	defw 0aab6h,0aac7h	; aa74  -> DATA_caracteres_AAB6 DATA_caracteres_AAC7

; ----------------------------------------------------------------------
; DATOS caracteres_AA78: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (1 bytes)
;   0xaa78..0xaa79  (1 bytes)
DATA_caracteres_AA78:
	defb 000h	; aa78

; ----------------------------------------------------------------------
; DATOS caracteres_AA79: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (6 bytes)
;   0xaa79..0xaa7f  (6 bytes)
DATA_caracteres_AA79:
	defb 040h,040h,002h,052h,053h,000h	; aa79

; ----------------------------------------------------------------------
; DATOS caracteres_AA7F: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (6 bytes)
;   0xaa7f..0xaa85  (6 bytes)
DATA_caracteres_AA7F:
	defb 040h,040h,002h,05fh,05eh,000h	; aa7f

; ----------------------------------------------------------------------
; DATOS caracteres_AA85: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (14 bytes)
;   0xaa85..0xaa93  (14 bytes)
DATA_caracteres_AA85:
	defb 040h,005h,093h,096h,03bh,052h,053h,001h,097h,09bh,03eh,0a0h,09ch,000h	; aa85  @....RS...>...

; ----------------------------------------------------------------------
; DATOS caracteres_AA93: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (15 bytes)
;   0xaa93..0xaaa2  (15 bytes)
DATA_caracteres_AA93:
	defb 040h,004h,093h,09ah,03ch,052h,053h,097h,0a0h,09bh,03dh,0a0h,0a0h,09ch,000h	; aa93  @...<RS...=....

; ----------------------------------------------------------------------
; DATOS caracteres_AAA2: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (20 bytes)
;   0xaaa2..0xaab6  (20 bytes)
DATA_caracteres_AAA2:
	defb 001h,090h,099h,09ah,09ah,03eh,08eh,08dh,098h,03ch,05fh,05eh,08ch,0a0h,096h,03dh	; aaa2  .....>...<_^...=
	defb 0a0h,0a0h,0a1h,000h	; aab2

; ----------------------------------------------------------------------
; DATOS caracteres_AAB6: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (17 bytes)
;   0xaab6..0xaac7  (17 bytes)
DATA_caracteres_AAB6:
	defb 001h,090h,099h,08fh,03ch,095h,092h,002h,091h,03dh,052h,053h,03fh,002h,0b7h,0b8h	; aab6  ....<....=RS?...
	defb 000h	; aac6

; ----------------------------------------------------------------------
; DATOS caracteres_AAC7: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (8 bytes)
;   0xaac7..0xaacf  (8 bytes)
DATA_caracteres_AAC7:
	defb 040h,095h,03fh,094h,001h,05fh,05eh,000h	; aac7  @.?.._^.

; ----------------------------------------------------------------------
; DATOS listas_AACF: un puntero por lista de caracteres para el bufer
;   (p03:A493: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (20 bytes)
;   0xaacf..0xaae3  (20 bytes)
DATA_listas_AACF:
	defw 0aae3h,0aae3h,0aae4h,0aae9h,0aaeeh,0aae9h,0aafah,0ab07h	; aacf
	defw 0ab1ah,0ab28h	; aadf  -> DATA_caracteres_AB1A DATA_caracteres_AB28

; ----------------------------------------------------------------------
; DATOS caracteres_AAE3: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (1 bytes)
;   0xaae3..0xaae4  (1 bytes)
DATA_caracteres_AAE3:
	defb 000h	; aae3

; ----------------------------------------------------------------------
; DATOS caracteres_AAE4: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (5 bytes)
;   0xaae4..0xaae9  (5 bytes)
DATA_caracteres_AAE4:
	defb 040h,003h,078h,077h,000h	; aae4

; ----------------------------------------------------------------------
; DATOS caracteres_AAE9: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (5 bytes)
;   0xaae9..0xaaee  (5 bytes)
DATA_caracteres_AAE9:
	defb 040h,003h,070h,071h,000h	; aae9

; ----------------------------------------------------------------------
; DATOS caracteres_AAEE: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (12 bytes)
;   0xaaee..0xaafa  (12 bytes)
DATA_caracteres_AAEE:
	defb 08bh,0a0h,03eh,08ah,086h,001h,078h,077h,03bh,085h,082h,000h	; aaee  ..>...xw....

; ----------------------------------------------------------------------
; DATOS caracteres_AAFA: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (13 bytes)
;   0xaafa..0xab07  (13 bytes)
DATA_caracteres_AAFA:
	defb 08bh,0a0h,0a0h,03dh,08ah,0a0h,086h,078h,077h,03ch,089h,082h,000h	; aafa  ...=...xw<...

; ----------------------------------------------------------------------
; DATOS caracteres_AB07: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (19 bytes)
;   0xab07..0xab1a  (19 bytes)
DATA_caracteres_AB07:
	defb 0ceh,0a0h,0a0h,03dh,085h,0a0h,07bh,070h,071h,03ch,087h,07ch,07dh,03eh,089h,089h	; ab07  ...=..{pq<.|}>..
	defb 088h,07fh,000h	; ab17

; ----------------------------------------------------------------------
; DATOS caracteres_AB1A: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (14 bytes)
;   0xab1a..0xab28  (14 bytes)
DATA_caracteres_AB1A:
	defb 040h,003h,078h,077h,03dh,080h,002h,081h,084h,03ch,07eh,088h,07fh,000h	; ab1a  @.xw=....<~...

; ----------------------------------------------------------------------
; DATOS caracteres_AB28: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (9 bytes)
;   0xab28..0xab31  (9 bytes)
DATA_caracteres_AB28:
	defb 040h,003h,070h,071h,001h,083h,03fh,084h,000h	; ab28  @.pq..?..

; ----------------------------------------------------------------------
; DATOS sin identificar  0xab31..0xab32  (1 bytes)
DATA_AB31:
	defb 000h	; ab31

; ----------------------------------------------------------------------
; DATOS listas_AB32: un puntero por lista de caracteres para el bufer
;   (p03:A49E: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (20 bytes)
;   0xab32..0xab46  (20 bytes)
DATA_listas_AB32:
	defw 0ab46h,0ab46h,0ab47h,0ab53h,0ab5eh,0ab47h,0ab73h,0ab8bh	; ab32
	defw 0abaeh,0abceh	; ab42  -> DATA_caracteres_ABAE DATA_caracteres_ABCE

; ----------------------------------------------------------------------
; DATOS caracteres_AB46: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (1 bytes)
;   0xab46..0xab47  (1 bytes)
DATA_caracteres_AB46:
	defb 000h	; ab46

; ----------------------------------------------------------------------
; DATOS caracteres_AB47: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (12 bytes)
;   0xab47..0xab53  (12 bytes)
DATA_caracteres_AB47:
	defb 040h,001h,07ah,03fh,079h,03fh,078h,03fh,077h,03fh,076h,000h	; ab47  @.z?y?x?w?v.

; ----------------------------------------------------------------------
; DATOS caracteres_AB53: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (11 bytes)
;   0xab53..0xab5e  (11 bytes)
DATA_caracteres_AB53:
	defb 001h,063h,03fh,064h,03fh,065h,03fh,066h,03fh,067h,000h	; ab53  .c?d?e?f?g.

; ----------------------------------------------------------------------
; DATOS caracteres_AB5E: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (21 bytes)
;   0xab5e..0xab73  (21 bytes)
DATA_caracteres_AB5E:
	defb 001h,063h,03fh,064h,03fh,065h,03fh,066h,03fh,067h,03eh,0d4h,0d5h,0a5h,03dh,0a8h	; ab5e  .c?d?e?f?g>...=.
	defb 080h,0a6h,03dh,06ah,000h	; ab6e

; ----------------------------------------------------------------------
; DATOS caracteres_AB73: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (24 bytes)
;   0xab73..0xab8b  (24 bytes)
DATA_caracteres_AB73:
	defb 001h,063h,03fh,064h,03fh,065h,03fh,066h,03fh,067h,03eh,0d5h,07bh,07ch,07dh,03ch	; ab73  .c?d?e?f?g>.{|}<
	defb 0d4h,0d4h,07eh,07fh,03ch,080h,081h,000h	; ab83  ..~.<...

; ----------------------------------------------------------------------
; DATOS caracteres_AB8B: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (35 bytes)
;   0xab8b..0xabae  (35 bytes)
DATA_caracteres_AB8B:
	defb 040h,001h,07ah,003h,088h,03bh,079h,003h,0a1h,03bh,078h,002h,084h,0a1h,03bh,077h	; ab8b  @.z...y...x....w
	defb 002h,083h,087h,03bh,0d4h,07ch,07dh,085h,086h,03ah,0d4h,0d4h,07eh,080h,07fh,03bh	; ab9b  .....|}..:..~...
	defb 080h,081h,000h	; abab

; ----------------------------------------------------------------------
; DATOS caracteres_ABAE: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (32 bytes)
;   0xabae..0xabce  (32 bytes)
DATA_caracteres_ABAE:
	defb 001h,063h,002h,089h,03ch,064h,002h,08ah,088h,03bh,065h,002h,084h,0a1h,03bh,066h	; abae  .c..<d....e....f
	defb 002h,084h,0a1h,03bh,067h,002h,08bh,087h,03ah,0d3h,003h,08ch,086h,03ah,06bh,000h	; abbe  ....g...:....:k.

; ----------------------------------------------------------------------
; DATOS caracteres_ABCE: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (15 bytes)
;   0xabce..0xabdd  (15 bytes)
DATA_caracteres_ABCE:
	defb 002h,08dh,08eh,089h,03ch,07ah,03fh,079h,03fh,078h,03fh,077h,03fh,076h,000h	; abce  ....<z?y?x?w?v.

; ----------------------------------------------------------------------
; DATOS listas_ABDD: un puntero por lista de caracteres para el bufer
;   (p03:A4A9: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (20 bytes)
;   0xabdd..0xabf1  (20 bytes)
DATA_listas_ABDD:
	defw 0abf1h,0abf1h,0abf2h,0abfdh,0ac09h,0abf2h,0ac18h,0ac2ah	; abdd
	defw 0ac46h,0ac60h	; abed  -> DATA_caracteres_AC46 DATA_caracteres_AC60

; ----------------------------------------------------------------------
; DATOS caracteres_ABF1: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (1 bytes)
;   0xabf1..0xabf2  (1 bytes)
DATA_caracteres_ABF1:
	defb 000h	; abf1

; ----------------------------------------------------------------------
; DATOS caracteres_ABF2: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (11 bytes)
;   0xabf2..0xabfd  (11 bytes)
DATA_caracteres_ABF2:
	defb 004h,057h,03fh,058h,03fh,059h,03fh,05ah,03fh,05bh,000h	; abf2  .W?X?Y?Z?[.

; ----------------------------------------------------------------------
; DATOS caracteres_ABFD: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (12 bytes)
;   0xabfd..0xac09  (12 bytes)
DATA_caracteres_ABFD:
	defb 040h,004h,073h,03fh,072h,03fh,071h,03fh,070h,03fh,06fh,000h	; abfd  @.s?r?q?p?o.

; ----------------------------------------------------------------------
; DATOS caracteres_AC09: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (15 bytes)
;   0xac09..0xac18  (15 bytes)
DATA_caracteres_AC09:
	defb 003h,0a4h,090h,03eh,091h,092h,03fh,072h,03fh,071h,03fh,070h,03fh,06fh,000h	; ac09  ...>..?r?q?p?o.

; ----------------------------------------------------------------------
; DATOS caracteres_AC18: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (18 bytes)
;   0xac18..0xac2a  (18 bytes)
DATA_caracteres_AC18:
	defb 003h,08fh,090h,03dh,08fh,0d4h,0d4h,03dh,091h,091h,092h,03fh,071h,03fh,070h,03fh	; ac18  ...=...=...?q?p?
	defb 06fh,000h	; ac28

; ----------------------------------------------------------------------
; DATOS caracteres_AC2A: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (28 bytes)
;   0xac2a..0xac46  (28 bytes)
DATA_caracteres_AC2A:
	defb 003h,08fh,090h,0d4h,03ch,08fh,0d4h,0d4h,03ch,093h,0d4h,0d4h,0d4h,0d4h,03ah,094h	; ac2a  ....<...<.....:.
	defb 095h,096h,091h,092h,03bh,097h,098h,002h,05bh,03ch,099h,000h	; ac3a  ........[<..

; ----------------------------------------------------------------------
; DATOS caracteres_AC46: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (26 bytes)
;   0xac46..0xac60  (26 bytes)
DATA_caracteres_AC46:
	defb 040h,004h,073h,03ch,09ah,002h,072h,03bh,0a2h,09bh,002h,071h,03bh,097h,0a3h,002h	; ac46  @.s<..r....q....
	defb 070h,03ch,09ch,09dh,001h,06fh,03dh,09eh,09fh,000h	; ac56  p<...o=...

; ----------------------------------------------------------------------
; DATOS caracteres_AC60: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (17 bytes)
;   0xac60..0xac71  (17 bytes)
DATA_caracteres_AC60:
	defb 004h,057h,03fh,058h,03fh,059h,03fh,05ah,03fh,05bh,03dh,09dh,03fh,09eh,09fh,0a0h	; ac60  .W?X?Y?Z?[=.?...
	defb 000h	; ac70

; ----------------------------------------------------------------------
; DATOS listas_AC71: un puntero por lista de caracteres para el bufer
;   (p03:A4B7: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (20 bytes)
;   0xac71..0xac85  (20 bytes)
DATA_listas_AC71:
	defw 0ac85h,0ac85h,0ac86h,0ac8bh,0ac90h,0ac8bh,0ac9ch,0aca9h	; ac71
	defw 0acbch,0accah	; ac81  -> DATA_caracteres_ACBC DATA_caracteres_ACCA

; ----------------------------------------------------------------------
; DATOS caracteres_AC85: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (1 bytes)
;   0xac85..0xac86  (1 bytes)
DATA_caracteres_AC85:
	defb 000h	; ac85

; ----------------------------------------------------------------------
; DATOS caracteres_AC86: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (5 bytes)
;   0xac86..0xac8b  (5 bytes)
DATA_caracteres_AC86:
	defb 040h,003h,075h,074h,000h	; ac86

; ----------------------------------------------------------------------
; DATOS caracteres_AC8B: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (5 bytes)
;   0xac8b..0xac90  (5 bytes)
DATA_caracteres_AC8B:
	defb 040h,003h,06ah,06bh,000h	; ac8b

; ----------------------------------------------------------------------
; DATOS caracteres_AC90: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (12 bytes)
;   0xac90..0xac9c  (12 bytes)
DATA_caracteres_AC90:
	defb 08bh,0a0h,03eh,08ah,086h,001h,075h,074h,03bh,085h,082h,000h	; ac90  ..>...ut....

; ----------------------------------------------------------------------
; DATOS caracteres_AC9C: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (13 bytes)
;   0xac9c..0xaca9  (13 bytes)
DATA_caracteres_AC9C:
	defb 08bh,0a0h,0a0h,03dh,08ah,0a0h,086h,075h,074h,03ch,089h,082h,000h	; ac9c  ...=...ut<...

; ----------------------------------------------------------------------
; DATOS caracteres_ACA9: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (19 bytes)
;   0xaca9..0xacbc  (19 bytes)
DATA_caracteres_ACA9:
	defb 0ceh,0a0h,0a0h,03dh,085h,0a0h,07bh,06ah,06bh,03ch,087h,07ch,07dh,03eh,089h,089h	; aca9  ...=..{jk<.|}>..
	defb 088h,07fh,000h	; acb9

; ----------------------------------------------------------------------
; DATOS caracteres_ACBC: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (14 bytes)
;   0xacbc..0xacca  (14 bytes)
DATA_caracteres_ACBC:
	defb 040h,003h,075h,074h,03dh,080h,002h,081h,084h,03ch,07eh,088h,07fh,000h	; acbc  @.ut=....<~...

; ----------------------------------------------------------------------
; DATOS caracteres_ACCA: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (9 bytes)
;   0xacca..0xacd3  (9 bytes)
DATA_caracteres_ACCA:
	defb 040h,003h,06ah,06bh,001h,083h,03fh,084h,000h	; acca  @.jk..?..

; ----------------------------------------------------------------------
; DATOS sin identificar  0xacd3..0xacd4  (1 bytes)
DATA_ACD3:
	defb 000h	; acd3

; ----------------------------------------------------------------------
; DATOS listas_ACD4: un puntero por lista de caracteres para el bufer
;   (p03:A4C5: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (20 bytes)
;   0xacd4..0xace8  (20 bytes)
DATA_listas_ACD4:
	defw 0ace8h,0ace8h,0ace9h,0acefh,0acf5h,0acefh,0ad03h,0ad12h	; acd4
	defw 0ad26h,0ad37h	; ace4  -> DATA_caracteres_AD26 DATA_caracteres_AD37

; ----------------------------------------------------------------------
; DATOS caracteres_ACE8: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (1 bytes)
;   0xace8..0xace9  (1 bytes)
DATA_caracteres_ACE8:
	defb 000h	; ace8

; ----------------------------------------------------------------------
; DATOS caracteres_ACE9: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (6 bytes)
;   0xace9..0xacef  (6 bytes)
DATA_caracteres_ACE9:
	defb 040h,040h,002h,05ch,05dh,000h	; ace9

; ----------------------------------------------------------------------
; DATOS caracteres_ACEF: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (6 bytes)
;   0xacef..0xacf5  (6 bytes)
DATA_caracteres_ACEF:
	defb 040h,040h,002h,067h,066h,000h	; acef

; ----------------------------------------------------------------------
; DATOS caracteres_ACF5: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (14 bytes)
;   0xacf5..0xad03  (14 bytes)
DATA_caracteres_ACF5:
	defb 040h,005h,093h,096h,03bh,05ch,05dh,001h,097h,09bh,03eh,0a0h,09ch,000h	; acf5  @....\]...>...

; ----------------------------------------------------------------------
; DATOS caracteres_AD03: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (15 bytes)
;   0xad03..0xad12  (15 bytes)
DATA_caracteres_AD03:
	defb 040h,004h,093h,09ah,03ch,05ch,05dh,097h,0a0h,09bh,03dh,0a0h,0a0h,09ch,000h	; ad03  @...<\]...=....

; ----------------------------------------------------------------------
; DATOS caracteres_AD12: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (20 bytes)
;   0xad12..0xad26  (20 bytes)
DATA_caracteres_AD12:
	defb 001h,090h,099h,09ah,09ah,03eh,08eh,08dh,098h,03ch,067h,066h,08ch,0a0h,096h,03dh	; ad12  .....>...<gf...=
	defb 0a0h,0a0h,0a1h,000h	; ad22

; ----------------------------------------------------------------------
; DATOS caracteres_AD26: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (17 bytes)
;   0xad26..0xad37  (17 bytes)
DATA_caracteres_AD26:
	defb 001h,090h,099h,08fh,03ch,095h,092h,002h,091h,03dh,05ch,05dh,03fh,002h,0b7h,0b8h	; ad26  ....<....=\]?...
	defb 000h	; ad36

; ----------------------------------------------------------------------
; DATOS caracteres_AD37: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (8 bytes)
;   0xad37..0xad3f  (8 bytes)
DATA_caracteres_AD37:
	defb 040h,095h,03fh,094h,001h,067h,066h,000h	; ad37  @.?..gf.

; ----------------------------------------------------------------------
; DATOS listas_AD3F: un puntero por lista de caracteres para el bufer
;   (p03:BB61: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (22 bytes)
;   0xad3f..0xad55  (22 bytes)
DATA_listas_AD3F:
	defw 0ad55h,0ad6eh,0ad88h,0ada0h,0adb6h,0adcdh,0add8h,0adeeh	; ad3f
	defw 0ae05h,0ae1dh,0ae37h	; ad4f  -> DATA_caracteres_AE05 DATA_caracteres_AE1D DATA_caracteres_AE37

; ----------------------------------------------------------------------
; DATOS caracteres_AD55: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (25 bytes)
;   0xad55..0xad6e  (25 bytes)
DATA_caracteres_AD55:
	defb 002h,0c2h,03fh,0dch,0ddh,03fh,0d1h,0cbh,03fh,0cch,0c3h,0cbh,03eh,0c4h,0cch,0c5h	; ad55  ..?..?..?...>...
	defb 03fh,0c6h,0d1h,03fh,0d6h,0d7h,03fh,0d1h,000h	; ad65  ?..?..?..

; ----------------------------------------------------------------------
; DATOS caracteres_AD6E: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (26 bytes)
;   0xad6e..0xad88  (26 bytes)
DATA_caracteres_AD6E:
	defb 001h,0c0h,03fh,0c1h,0c5h,0cfh,03eh,0c6h,0d0h,0c5h,0c9h,0cfh,03dh,0c6h,0cah,0d0h	; ad6e  ..?...>.....=...
	defb 0c7h,03fh,0c8h,0d1h,03fh,0d6h,0d7h,03fh,0d1h,000h	; ad7e  .?..?..?..

; ----------------------------------------------------------------------
; DATOS caracteres_AD88: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (24 bytes)
;   0xad88..0xada0  (24 bytes)
DATA_caracteres_AD88:
	defb 001h,0c0h,003h,0cfh,03bh,0c1h,0d1h,0c5h,0c3h,0d0h,0d1h,0c7h,03bh,0c6h,0c4h,002h	; ad88  ................
	defb 0c8h,0d1h,03fh,0d6h,0d7h,03fh,0d1h,000h	; ad98  ..?..?..

; ----------------------------------------------------------------------
; DATOS caracteres_ADA0: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (22 bytes)
;   0xada0..0xadb6  (22 bytes)
DATA_caracteres_ADA0:
	defb 0beh,0cbh,0cfh,0cdh,0c7h,0c5h,0c7h,0cdh,038h,0bfh,0cch,0d0h,0ceh,0c8h,0c6h,0c8h	; ada0  ........8.......
	defb 0ceh,0c7h,03fh,0c8h,0d1h,000h	; adb0

; ----------------------------------------------------------------------
; DATOS caracteres_ADB6: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (23 bytes)
;   0xadb6..0xadcd  (23 bytes)
DATA_caracteres_ADB6:
	defb 004h,0cfh,0cfh,03ah,0c0h,0cdh,0c9h,0c3h,0d0h,0d0h,0d1h,0c5h,0c9h,037h,0c1h,0ceh	; adb6  ...:.........7..
	defb 0cah,0c4h,003h,0c6h,0cah,0d1h,000h	; adc6

; ----------------------------------------------------------------------
; DATOS caracteres_ADCD: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (11 bytes)
;   0xadcd..0xadd8  (11 bytes)
DATA_caracteres_ADCD:
	defb 0c2h,0d1h,0d1h,0d1h,0d1h,0d1h,0d1h,0d1h,0d1h,0d1h,000h	; adcd  ...........

; ----------------------------------------------------------------------
; DATOS caracteres_ADD8: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (22 bytes)
;   0xadd8..0xadee  (22 bytes)
DATA_caracteres_ADD8:
	defb 0beh,0c5h,0c9h,0cfh,003h,0cdh,0c9h,0d1h,036h,0bfh,0c6h,0cah,0d0h,0c3h,0c3h,0d1h	; add8  ........6.......
	defb 0ceh,0cah,03bh,0c4h,0c4h,000h	; ade8

; ----------------------------------------------------------------------
; DATOS caracteres_ADEE: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (23 bytes)
;   0xadee..0xae05  (23 bytes)
DATA_caracteres_ADEE:
	defb 008h,0cbh,0d1h,036h,0c0h,0c7h,0c3h,0c5h,0cbh,0cdh,0cbh,0c5h,0cch,037h,0c1h,0c8h	; adee  ...6.........7..
	defb 0c4h,0c6h,0cch,0ceh,0cch,0c6h,000h	; adfe

; ----------------------------------------------------------------------
; DATOS caracteres_AE05: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (24 bytes)
;   0xae05..0xae1d  (24 bytes)
DATA_caracteres_AE05:
	defb 009h,0d1h,03eh,0d6h,0d7h,039h,0cdh,0cfh,002h,0cbh,0d1h,038h,0beh,0d1h,0ceh,0d0h	; ae05  ..>..9.....8....
	defb 0c3h,0d1h,0cch,039h,0bfh,003h,0c4h,000h	; ae15  ...9....

; ----------------------------------------------------------------------
; DATOS caracteres_AE1D: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (26 bytes)
;   0xae1d..0xae37  (26 bytes)
DATA_caracteres_AE1D:
	defb 009h,0d1h,03eh,0d6h,0d7h,03dh,0cbh,0d1h,03bh,0cdh,0c9h,0c3h,0cch,03ah,0cdh,0c3h	; ae1d  ..>..=.......:..
	defb 0ceh,0cah,0c4h,03ah,0beh,0ceh,0c4h,03dh,0bfh,000h	; ae2d  ...:...=..

; ----------------------------------------------------------------------
; DATOS caracteres_AE37: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (25 bytes)
;   0xae37..0xae50  (25 bytes)
DATA_caracteres_AE37:
	defb 009h,0d1h,03eh,0d6h,0d7h,03dh,0cdh,0d1h,03ch,0cfh,0c7h,0ceh,03ch,0c7h,0d0h,0c8h	; ae37  ..>..=..<...<...
	defb 03ch,0d1h,0c8h,03dh,0dch,0ddh,03eh,0c2h,000h	; ae47  <..=..>..

; ----------------------------------------------------------------------
; DATOS leido_AE50: 22 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (22 bytes)
;   0xae50..0xae66  (22 bytes)
DATA_leido_AE50:
	defb 066h,0aeh,07fh,0aeh,099h,0aeh,0b1h,0aeh,0c8h,0aeh,0dfh,0aeh,0eah,0aeh,000h,0afh	; ae50  f...............
	defb 016h,0afh,02dh,0afh,046h,0afh	; ae60

; ----------------------------------------------------------------------
; DATOS leido_AE66: 248 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (248 bytes)
;   0xae66..0xaf5e  (248 bytes)
DATA_leido_AE66:
	defb 007h,0c2h,03eh,0d4h,0d5h,03dh,0c9h,0d1h,03ch,0cbh,0c3h,0cah,03ch,0c5h,0cch,0c4h	; ae66  ..>..=..<...<...
	defb 03ch,0d1h,0c6h,03dh,0dah,0dbh,03eh,0d1h,000h,008h,0c0h,03dh,0cfh,0c5h,0c1h,03ah	; ae76  <..=..>....=...:
	defb 0cfh,0c9h,0c5h,0d0h,0c6h,03ah,0c7h,0d0h,0cah,0c6h,03bh,0d1h,0c8h,03dh,0dah,0dbh	; ae86  .....:.......=..
	defb 03eh,0d1h,000h,004h,0cfh,003h,0c0h,039h,0c7h,0d1h,0d0h,0c3h,0c5h,0d1h,0c1h,038h	; ae96  >......9.......8
	defb 0d1h,0c8h,002h,0c4h,0c6h,039h,0dah,0dbh,03eh,0d1h,000h,002h,0cdh,0c7h,0c5h,0c7h	; aea6  .....9..>.......
	defb 0cdh,0cfh,0cbh,0beh,037h,0c7h,0ceh,0c8h,0c6h,0c8h,0ceh,0d0h,0cch,0bfh,036h,0d1h	; aeb6  ....7.........6.
	defb 0c8h,000h,004h,0cfh,0cfh,03bh,0c9h,0c5h,0d1h,0d0h,0d0h,0c3h,0c9h,0cdh,0c0h,036h	; aec6  ...............6
	defb 0d1h,0cah,0c6h,003h,0c4h,0cah,0ceh,0c1h,000h,0d1h,0d1h,0d1h,0d1h,0d1h,0d1h,0d1h	; aed6  ................
	defb 0d1h,0d1h,0c2h,000h,0d1h,0c9h,0cdh,003h,0cfh,0c9h,0c5h,0beh,037h,0cah,0ceh,0d1h	; aee6  ............7...
	defb 0c3h,0c3h,0d0h,0cah,0c6h,0bfh,03ah,0c4h,0c4h,000h,0d1h,0cbh,03fh,0cch,0c5h,0cbh	; aef6  ......:.....?...
	defb 0cdh,0cbh,0c5h,0c3h,0c7h,0c0h,038h,0c6h,0cch,0ceh,0cch,0c6h,0c4h,0c8h,0c1h,000h	; af06  ......8.........
	defb 0d1h,03fh,0dah,0dbh,03fh,0d1h,0cbh,002h,0cfh,0cdh,03bh,0cch,0d1h,0c3h,0d0h,0ceh	; af16  .?..?...........
	defb 0d1h,0beh,03bh,0c4h,003h,0bfh,000h,0d1h,03fh,0dah,0dbh,03fh,0d1h,0cbh,03fh,0cch	; af26  ........?..?..?.
	defb 0c3h,0c9h,0cdh,03dh,0c4h,0cah,0ceh,0c3h,0cdh,03eh,0c4h,0ceh,0beh,03fh,0bfh,000h	; af36  ...=.....>...?..
	defb 0d1h,03fh,0dah,0dbh,03fh,0d1h,0cdh,03fh,0ceh,0c7h,0cdh,03eh,0c8h,0ceh,0c7h,03fh	; af46  .?..?..?...>...?
	defb 0c8h,0d1h,03fh,0d6h,0d7h,03fh,0c2h,000h	; af56  ..?..?..

; ----------------------------------------------------------------------
; DATOS listas_AF5E: un puntero por lista de caracteres para el bufer
;   (p03:BD34: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (18 bytes)
;   0xaf5e..0xaf70  (18 bytes)
DATA_listas_AF5E:
	defw 0af70h,0af88h,0afa3h,0afc0h,0afdfh,0b000h,0b01fh,0b03ch	; af5e
	defw 0b057h	; af6e  -> DATA_caracteres_B057

; ----------------------------------------------------------------------
; DATOS caracteres_AF70: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (24 bytes)
;   0xaf70..0xaf88  (24 bytes)
DATA_caracteres_AF70:
	defb 0aah,0abh,0aah,03fh,0ach,03fh,0aah,0abh,0aah,03fh,0ach,03fh,0aah,0abh,0aah,03fh	; af70  ...?.?...?.?...?
	defb 0ach,03fh,0aah,0abh,066h,03fh,0a9h,000h	; af80  .?..f?..

; ----------------------------------------------------------------------
; DATOS caracteres_AF88: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (27 bytes)
;   0xaf88..0xafa3  (27 bytes)
DATA_caracteres_AF88:
	defb 002h,0aah,0abh,0aah,03fh,0ach,03fh,0aah,0abh,0aah,03fh,0ach,03fh,0aah,0abh,0aah	; af88  ....?.?...?.?...
	defb 03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h	; af98  ?.?.?.?f?..

; ----------------------------------------------------------------------
; DATOS caracteres_AFA3: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (29 bytes)
;   0xafa3..0xafc0  (29 bytes)
DATA_caracteres_AFA3:
	defb 004h,0aah,0abh,0aah,03fh,0ach,03fh,0aah,0abh,0aah,03fh,0ach,03fh,0aah,03fh,0ach	; afa3  ....?.?...?.?.?.
	defb 03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h	; afb3  ?.?.?.?.?f?..

; ----------------------------------------------------------------------
; DATOS caracteres_AFC0: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (31 bytes)
;   0xafc0..0xafdf  (31 bytes)
DATA_caracteres_AFC0:
	defb 006h,0aah,0abh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah	; afc0  ....?.?.?.?.?.?.
	defb 03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h	; afd0  ?.?.?.?.?.?f?..

; ----------------------------------------------------------------------
; DATOS caracteres_AFDF: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (33 bytes)
;   0xafdf..0xb000  (33 bytes)
DATA_caracteres_AFDF:
	defb 008h,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach	; afdf  ..?.?.?.?.?.?.?.
	defb 03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h	; afef  ?.?.?.?.?.?.?f?.
	defb 000h	; afff

; ----------------------------------------------------------------------
; DATOS caracteres_B000: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (31 bytes)
;   0xb000..0xb01f  (31 bytes)
DATA_caracteres_B000:
	defb 008h,0aah,0abh,0aah,03dh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah	; b000  ....=.?.?.?.?.?.
	defb 03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h	; b010  ?.?.?.?.?.?f?..

; ----------------------------------------------------------------------
; DATOS caracteres_B01F: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (29 bytes)
;   0xb01f..0xb03c  (29 bytes)
DATA_caracteres_B01F:
	defb 00ah,0aah,0abh,0aah,03dh,0ach,03dh,0aah,0abh,0aah,03dh,0ach,03fh,0aah,03fh,0ach	; b01f  ....=.=...=.?.?.
	defb 03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h	; b02f  ?.?.?.?.?f?..

; ----------------------------------------------------------------------
; DATOS caracteres_B03C: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (27 bytes)
;   0xb03c..0xb057  (27 bytes)
DATA_caracteres_B03C:
	defb 00ch,0aah,0abh,0aah,03dh,0ach,03dh,0aah,0abh,0aah,03dh,0ach,03dh,0aah,0abh,0aah	; b03c  ....=.=...=.=...
	defb 03dh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h	; b04c  =.?.?.?f?..

; ----------------------------------------------------------------------
; DATOS caracteres_B057: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (25 bytes)
;   0xb057..0xb070  (25 bytes)
DATA_caracteres_B057:
	defb 00eh,0aah,0abh,0aah,03dh,0ach,03dh,0aah,0abh,0aah,03dh,0ach,03dh,0aah,0abh,0aah	; b057  ....=.=...=.=...
	defb 03dh,0ach,03dh,0aah,0abh,066h,03dh,0a9h,000h	; b067  =.=..f=..

; ----------------------------------------------------------------------
; DATOS listas_B070: un puntero por lista de caracteres para el bufer
;   (p03:BD39: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (18 bytes)
;   0xb070..0xb082  (18 bytes)
DATA_listas_B070:
	defw 0b082h,0b09bh,0b0b6h,0b0d3h,0b0f2h,0b113h,0b132h,0b14fh	; b070
	defw 0b16ah	; b080  -> DATA_caracteres_B16A

; ----------------------------------------------------------------------
; DATOS caracteres_B082: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (25 bytes)
;   0xb082..0xb09b  (25 bytes)
DATA_caracteres_B082:
	defb 008h,0b6h,03dh,0b7h,0b8h,066h,03dh,0b9h,03dh,0b7h,0b8h,0b7h,03dh,0b9h,03dh,0b7h	; b082  ..=..f=.=...=.=.
	defb 0b8h,0b7h,03dh,0b9h,03dh,0b7h,0b8h,0b7h,000h	; b092  ..=.=....

; ----------------------------------------------------------------------
; DATOS caracteres_B09B: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (27 bytes)
;   0xb09b..0xb0b6  (27 bytes)
DATA_caracteres_B09B:
	defb 008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03dh,0b7h,0b8h,0b7h,03dh,0b9h	; b09b  ..?f?.?.?.=...=.
	defb 03dh,0b7h,0b8h,0b7h,03dh,0b9h,03dh,0b7h,0b8h,0b7h,000h	; b0ab  =...=.=....

; ----------------------------------------------------------------------
; DATOS caracteres_B0B6: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (29 bytes)
;   0xb0b6..0xb0d3  (29 bytes)
DATA_caracteres_B0B6:
	defb 008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h	; b0b6  ..?f?.?.?.?.?.?.
	defb 03fh,0b9h,03dh,0b7h,0b8h,0b7h,03dh,0b9h,03dh,0b7h,0b8h,0b7h,000h	; b0c6  ?.=...=.=....

; ----------------------------------------------------------------------
; DATOS caracteres_B0D3: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (31 bytes)
;   0xb0d3..0xb0f2  (31 bytes)
DATA_caracteres_B0D3:
	defb 008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h	; b0d3  ..?f?.?.?.?.?.?.
	defb 03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03dh,0b7h,0b8h,0b7h,000h	; b0e3  ?.?.?.?.?.=....

; ----------------------------------------------------------------------
; DATOS caracteres_B0F2: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (33 bytes)
;   0xb0f2..0xb113  (33 bytes)
DATA_caracteres_B0F2:
	defb 008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h	; b0f2  ..?f?.?.?.?.?.?.
	defb 03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h	; b102  ?.?.?.?.?.?.?.?.
	defb 000h	; b112

; ----------------------------------------------------------------------
; DATOS caracteres_B113: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (31 bytes)
;   0xb113..0xb132  (31 bytes)
DATA_caracteres_B113:
	defb 008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h	; b113  ..?f?.?.?.?.?.?.
	defb 03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,000h	; b123  ?.?.?.?.?.?....

; ----------------------------------------------------------------------
; DATOS caracteres_B132: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (29 bytes)
;   0xb132..0xb14f  (29 bytes)
DATA_caracteres_B132:
	defb 008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h	; b132  ..?f?.?.?.?.?.?.
	defb 03fh,0b9h,03fh,0b7h,0b8h,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,000h	; b142  ?.?...?.?....

; ----------------------------------------------------------------------
; DATOS caracteres_B14F: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (27 bytes)
;   0xb14f..0xb16a  (27 bytes)
DATA_caracteres_B14F:
	defb 008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,03fh,0b9h	; b14f  ..?f?.?.?.?...?.
	defb 03fh,0b7h,0b8h,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,000h	; b15f  ?...?.?....

; ----------------------------------------------------------------------
; DATOS caracteres_B16A: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (25 bytes)
;   0xb16a..0xb183  (25 bytes)
DATA_caracteres_B16A:
	defb 008h,0b6h,03fh,066h,0b8h,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,03fh,0b9h,03fh,0b7h	; b16a  ..?f..?.?...?.?.
	defb 0b8h,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,000h	; b17a  ..?.?....

; ----------------------------------------------------------------------
; DATOS listas_B183: un puntero por lista de caracteres para el bufer
;   (p01:7D65: la lista A, p01:6EDA); acaba donde empieza la primera; lo leen
;   p00:4A60 (2 bytes)
;   0xb183..0xb185  (2 bytes)
DATA_listas_B183:
	defw 0b185h	; b183  -> DATA_caracteres_B185

; ----------------------------------------------------------------------
; DATOS caracteres_B185: una lista de caracteres para el bufer (p01:6EE8): 0
;   acaba, por debajo de 0x41 salta tantos, desde 0x41 un caracter; lo leen
;   p01:6EEA (114 bytes)
;   0xb185..0xb1f7  (114 bytes)
DATA_caracteres_B185:
	defb 09eh,09fh,09eh,0a0h,0a1h,0a5h,03ah,0a0h,0a1h,0a0h,0a1h,09eh,09fh,03ah,09eh,09fh	; b185  ......:......:..
	defb 09eh,09fh,0a0h,0a1h,03ah,0a0h,0a1h,0a0h,09eh,0a2h,0a3h,03ah,09eh,09fh,09eh,0a0h	; b195  ....:......:....
	defb 0a1h,0a5h,03ah,0a0h,0a1h,0a0h,0a1h,09eh,09fh,03ch,09eh,09fh,0a0h,0a1h,03ch,0a0h	; b1a5  ..:......<....<.
	defb 09eh,0a2h,0a3h,03ch,09eh,0a0h,0a1h,0a5h,03ch,0a0h,0a1h,09eh,09fh,03ch,09eh,09fh	; b1b5  ...<....<....<..
	defb 0a0h,0a1h,03ch,0a0h,09eh,0a2h,0a3h,03ah,09eh,09fh,09eh,0a0h,0a1h,0a5h,03ah,0a0h	; b1c5  ..<....:......:.
	defb 0a1h,0a0h,0a1h,09eh,09fh,03ah,09eh,09fh,09eh,09fh,0a0h,0a1h,03ah,0a0h,0a1h,0a0h	; b1d5  .....:......:...
	defb 09eh,0a2h,0a3h,03ah,09eh,09fh,09eh,0a0h,0a1h,0a5h,03ah,0a0h,0a1h,0a0h,0a1h,09eh	; b1e5  ...:......:.....
	defb 09fh,000h	; b1f5

; ----------------------------------------------------------------------
; DATOS animaciones_por_fase: un puntero por fase a su lista de animaciones de
;   caracteres (p02:836D: 0xB1F5 + 2 x fase); lo leen p02:8370 (22 bytes)
;   0xb1f7..0xb20d  (22 bytes)
DATA_animaciones_por_fase:
	defw 0b20dh,0b212h,0b328h,0b20dh,0b20dh,0b53ah,0b61fh,0b785h	; b1f7
	defw 0bc07h,0bcc3h,0b20dh	; b207  -> DATA_animaciones_BC07 DATA_animaciones_BCC3 DATA_animaciones_B20D

; ----------------------------------------------------------------------
; DATOS animaciones_B20D: una lista de animaciones de caracteres por tramos de
;   scroll: [animacion][scroll] hasta un scroll 0xFFFF (p02:8373); lo leen
;   p02:8375 (4 bytes)
;   0xb20d..0xb211  (4 bytes)
DATA_animaciones_B20D:
	defw 0b211h,0ffffh	; b20d  -> DATA_animacion_B211 0xffff

; ----------------------------------------------------------------------
; DATOS animacion_B211: una animacion vacia: la espera 0 (p02:838B, nada); lo
;   leen p02:838B (1 bytes)
;   0xb211..0xb212  (1 bytes)
DATA_animacion_B211:
	defb 000h	; b211

; ----------------------------------------------------------------------
; DATOS animaciones_B212: una lista de animaciones de caracteres por tramos de
;   scroll: [animacion][scroll] hasta un scroll 0xFFFF (p02:8373); lo leen
;   p02:8375 (12 bytes)
;   0xb212..0xb21e  (12 bytes)
DATA_animaciones_B212:
	defw 0b211h,00080h,0b21eh,00100h,0b211h,0ffffh	; b212

; ----------------------------------------------------------------------
; DATOS animacion_B21E: una animacion de caracteres: la espera, cuantos pasos
;   (8) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (18 bytes)
;   0xb21e..0xb230  (18 bytes)
DATA_animacion_B21E:
	defb 003h,008h,030h,0b2h,04fh,0b2h,06eh,0b2h,08dh,0b2h,0ach,0b2h,0cbh,0b2h,0eah,0b2h	; b21e  ..0.O.n.........
	defb 009h,0b3h	; b22e

; ----------------------------------------------------------------------
; DATOS paso_B230: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xb230..0xb24f  (31 bytes)
DATA_paso_B230:
	defb 0feh,007h,081h,042h,05ah,018h,05ah,042h,081h,081h	; b230  ...BZ.ZB..
	defb 0ffh,007h,083h,06ch,010h,038h,038h,010h,06ch,083h	; b23a  ...l.88.l.
	defb 0fdh,007h,083h,06ch,010h,038h,038h,010h,06ch,083h	; b244  ...l.88.l.
	defb 000h	; b24e

; ----------------------------------------------------------------------
; DATOS paso_B24F: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xb24f..0xb26e  (31 bytes)
DATA_paso_B24F:
	defb 0feh,00fh,060h,060h,060h,080h,060h,060h,060h,060h	; b24f  ..```.````
	defb 0ffh,00fh,060h,060h,080h,090h,090h,080h,060h,060h	; b259  ..``....``
	defb 0fdh,00fh,0e0h,0e0h,0e0h,0e0h,0f0h,0e0h,0e0h,0e0h	; b263  ..........
	defb 000h	; b26d

; ----------------------------------------------------------------------
; DATOS paso_B26E: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xb26e..0xb28d  (31 bytes)
DATA_paso_B26E:
	defb 0feh,007h,0c1h,036h,008h,01ch,01ch,008h,036h,0c1h	; b26e  ...6....6.
	defb 0ffh,007h,081h,042h,05ah,018h,05ah,042h,081h,081h	; b278  ...BZ.ZB..
	defb 0fdh,007h,081h,042h,05ah,018h,05ah,042h,081h,081h	; b282  ...BZ.ZB..
	defb 000h	; b28c

; ----------------------------------------------------------------------
; DATOS paso_B28D: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xb28d..0xb2ac  (31 bytes)
DATA_paso_B28D:
	defb 0feh,00fh,060h,060h,080h,080h,080h,060h,060h,060h	; b28d  ..``...```
	defb 0ffh,00fh,060h,060h,060h,090h,060h,060h,060h,060h	; b297  ..```.````
	defb 0fdh,00fh,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h	; b2a1  ..........
	defb 000h	; b2ab

; ----------------------------------------------------------------------
; DATOS paso_B2AC: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xb2ac..0xb2cb  (31 bytes)
DATA_paso_B2AC:
	defb 0feh,007h,081h,081h,042h,05ah,018h,05ah,042h,081h	; b2ac  ....BZ.ZB.
	defb 0feh,007h,0c1h,036h,008h,01ch,01ch,008h,036h,0c1h	; b2b6  ...6....6.
	defb 0fdh,007h,083h,06ch,010h,038h,038h,010h,06ch,083h	; b2c0  ...l.88.l.
	defb 000h	; b2ca

; ----------------------------------------------------------------------
; DATOS paso_B2CB: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xb2cb..0xb2ea  (31 bytes)
DATA_paso_B2CB:
	defb 0feh,00fh,060h,060h,080h,090h,090h,080h,060h,060h	; b2cb  ..``....``
	defb 0ffh,00fh,060h,060h,080h,080h,080h,080h,060h,060h	; b2d5  ..``....``
	defb 0fdh,00fh,0e0h,0e0h,0f0h,0f0h,0f0h,0e0h,0e0h,0e0h	; b2df  ..........
	defb 000h	; b2e9

; ----------------------------------------------------------------------
; DATOS paso_B2EA: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xb2ea..0xb309  (31 bytes)
DATA_paso_B2EA:
	defb 0feh,007h,083h,06ch,010h,038h,038h,010h,06ch,083h	; b2ea  ...l.88.l.
	defb 0ffh,007h,0c1h,036h,008h,01ch,01ch,008h,036h,0c1h	; b2f4  ...6....6.
	defb 0fdh,007h,081h,042h,05ah,018h,05ah,042h,081h,081h	; b2fe  ...BZ.ZB..
	defb 000h	; b308

; ----------------------------------------------------------------------
; DATOS paso_B309: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xb309..0xb328  (31 bytes)
DATA_paso_B309:
	defb 0feh,00fh,060h,060h,060h,060h,080h,060h,060h,060h	; b309  ..````.```
	defb 0ffh,00fh,060h,060h,080h,090h,090h,080h,060h,060h	; b313  ..``....``
	defb 0fdh,00fh,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h	; b31d  ..........
	defb 000h	; b327

; ----------------------------------------------------------------------
; DATOS animaciones_B328: una lista de animaciones de caracteres por tramos de
;   scroll: [animacion][scroll] hasta un scroll 0xFFFF (p02:8373); lo leen
;   p02:8375 (12 bytes)
;   0xb328..0xb334  (12 bytes)
DATA_animaciones_B328:
	defw 0b211h,00080h,0b334h,00180h,0b211h,0ffffh	; b328

; ----------------------------------------------------------------------
; DATOS animacion_B334: una animacion de caracteres: la espera, cuantos pasos
;   (12) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (26 bytes)
;   0xb334..0xb34e  (26 bytes)
DATA_animacion_B334:
	defb 002h,00ch,04eh,0b3h,077h,0b3h,0a0h,0b3h,0c9h,0b3h,0f2h,0b3h,01bh,0b4h,044h,0b4h	; b334  ..N.w.........D.
	defb 06dh,0b4h,096h,0b4h,0bfh,0b4h,0e8h,0b4h,011h,0b5h	; b344  m.........

; ----------------------------------------------------------------------
; DATOS paso_B34E: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb34e..0xb377  (41 bytes)
DATA_paso_B34E:
	defb 059h,007h,000h,000h,000h,000h,088h,0aah,022h,000h	; b34e  Y.......".
	defb 05ah,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b358  Z.........
	defb 05bh,007h,000h,022h,0aah,088h,000h,000h,000h,000h	; b362  [.."......
	defb 05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b36c  \.........
	defb 000h	; b376

; ----------------------------------------------------------------------
; DATOS paso_B377: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb377..0xb3a0  (41 bytes)
DATA_paso_B377:
	defb 059h,007h,000h,000h,000h,088h,0aah,022h,000h,000h	; b377  Y......"..
	defb 05ah,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b381  Z.........
	defb 05bh,007h,000h,000h,022h,0aah,088h,000h,000h,000h	; b38b  [...".....
	defb 05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b395  \.........
	defb 000h	; b39f

; ----------------------------------------------------------------------
; DATOS paso_B3A0: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb3a0..0xb3c9  (41 bytes)
DATA_paso_B3A0:
	defb 059h,007h,000h,000h,088h,0aah,022h,000h,000h,000h	; b3a0  Y....."...
	defb 05ah,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b3aa  Z.........
	defb 05bh,007h,000h,000h,000h,022h,0aah,088h,000h,000h	; b3b4  [...."....
	defb 05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b3be  \.........
	defb 000h	; b3c8

; ----------------------------------------------------------------------
; DATOS paso_B3C9: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb3c9..0xb3f2  (41 bytes)
DATA_paso_B3C9:
	defb 059h,007h,000h,088h,0aah,022h,000h,000h,000h,000h	; b3c9  Y...."....
	defb 05ah,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b3d3  Z.........
	defb 05bh,007h,000h,000h,000h,000h,022h,0aah,088h,000h	; b3dd  [....."...
	defb 05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b3e7  \.........
	defb 000h	; b3f1

; ----------------------------------------------------------------------
; DATOS paso_B3F2: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb3f2..0xb41b  (41 bytes)
DATA_paso_B3F2:
	defb 059h,007h,088h,0aah,022h,000h,000h,000h,000h,000h	; b3f2  Y...".....
	defb 05ah,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b3fc  Z.........
	defb 05bh,007h,000h,000h,000h,000h,000h,022h,0aah,088h	; b406  [......"..
	defb 05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b410  \.........
	defb 000h	; b41a

; ----------------------------------------------------------------------
; DATOS paso_B41B: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb41b..0xb444  (41 bytes)
DATA_paso_B41B:
	defb 059h,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b41b  Y.........
	defb 05ah,007h,000h,000h,000h,000h,000h,088h,0aah,022h	; b425  Z........"
	defb 05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b42f  [.........
	defb 05ch,007h,022h,0aah,088h,000h,000h,000h,000h,000h	; b439  \.".......
	defb 000h	; b443

; ----------------------------------------------------------------------
; DATOS paso_B444: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb444..0xb46d  (41 bytes)
DATA_paso_B444:
	defb 059h,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b444  Y.........
	defb 05ah,007h,000h,000h,000h,000h,088h,0aah,022h,000h	; b44e  Z.......".
	defb 05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b458  [.........
	defb 05ch,007h,000h,022h,0aah,088h,000h,000h,000h,000h	; b462  \.."......
	defb 000h	; b46c

; ----------------------------------------------------------------------
; DATOS paso_B46D: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb46d..0xb496  (41 bytes)
DATA_paso_B46D:
	defb 059h,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b46d  Y.........
	defb 05ah,007h,000h,000h,000h,088h,0aah,022h,000h,000h	; b477  Z......"..
	defb 05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b481  [.........
	defb 05ch,007h,000h,000h,022h,0aah,088h,000h,000h,000h	; b48b  \...".....
	defb 000h	; b495

; ----------------------------------------------------------------------
; DATOS paso_B496: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb496..0xb4bf  (41 bytes)
DATA_paso_B496:
	defb 059h,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b496  Y.........
	defb 05ah,007h,000h,000h,088h,0aah,022h,000h,000h,000h	; b4a0  Z....."...
	defb 05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b4aa  [.........
	defb 05ch,007h,000h,000h,000h,022h,0aah,088h,000h,000h	; b4b4  \...."....
	defb 000h	; b4be

; ----------------------------------------------------------------------
; DATOS paso_B4BF: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb4bf..0xb4e8  (41 bytes)
DATA_paso_B4BF:
	defb 059h,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b4bf  Y.........
	defb 05ah,007h,000h,088h,0aah,022h,000h,000h,000h,000h	; b4c9  Z...."....
	defb 05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b4d3  [.........
	defb 05ch,007h,000h,000h,000h,000h,022h,0aah,088h,000h	; b4dd  \....."...
	defb 000h	; b4e7

; ----------------------------------------------------------------------
; DATOS paso_B4E8: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb4e8..0xb511  (41 bytes)
DATA_paso_B4E8:
	defb 059h,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b4e8  Y.........
	defb 05ah,007h,088h,0aah,022h,000h,000h,000h,000h,000h	; b4f2  Z...".....
	defb 05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b4fc  [.........
	defb 05ch,007h,000h,000h,000h,000h,000h,022h,0aah,088h	; b506  \......"..
	defb 000h	; b510

; ----------------------------------------------------------------------
; DATOS paso_B511: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb511..0xb53a  (41 bytes)
DATA_paso_B511:
	defb 059h,007h,000h,000h,000h,000h,000h,088h,0aah,022h	; b511  Y........"
	defb 05ah,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b51b  Z.........
	defb 05bh,007h,022h,0aah,088h,000h,000h,000h,000h,000h	; b525  [.".......
	defb 05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b52f  \.........
	defb 000h	; b539

; ----------------------------------------------------------------------
; DATOS animaciones_B53A: una lista de animaciones de caracteres por tramos de
;   scroll: [animacion][scroll] hasta un scroll 0xFFFF (p02:8373); lo leen
;   p02:8375 (12 bytes)
;   0xb53a..0xb546  (12 bytes)
DATA_animaciones_B53A:
	defw 0b211h,00060h,0b546h,001a0h,0b211h,0ffffh	; b53a

; ----------------------------------------------------------------------
; DATOS animacion_B546: una animacion de caracteres: la espera, cuantos pasos
;   (5) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (12 bytes)
;   0xb546..0xb552  (12 bytes)
DATA_animacion_B546:
	defb 008h,005h,052h,0b5h,07bh,0b5h,0a4h,0b5h,0cdh,0b5h,0f6h,0b5h	; b546  ..R.{.......

; ----------------------------------------------------------------------
; DATOS paso_B552: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb552..0xb57b  (41 bytes)
DATA_paso_B552:
	defb 05ah,00fh,060h,060h,060h,060h,080h,060h,060h,060h	; b552  Z.````.```
	defb 05bh,00fh,060h,060h,080h,060h,060h,060h,060h,060h	; b55c  [.``.`````
	defb 05ch,00fh,060h,060h,080h,060h,060h,060h,060h,060h	; b566  \.``.`````
	defb 05dh,00fh,080h,060h,060h,060h,060h,060h,060h,060h	; b570  ]..```````
	defb 000h	; b57a

; ----------------------------------------------------------------------
; DATOS paso_B57B: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb57b..0xb5a4  (41 bytes)
DATA_paso_B57B:
	defb 05ah,00fh,060h,060h,060h,060h,060h,060h,080h,060h	; b57b  Z.``````.`
	defb 05bh,00fh,060h,060h,060h,060h,080h,060h,060h,060h	; b585  [.````.```
	defb 05ch,00fh,060h,060h,060h,060h,080h,060h,060h,060h	; b58f  \.````.```
	defb 05dh,00fh,060h,060h,080h,060h,060h,060h,060h,060h	; b599  ].``.`````
	defb 000h	; b5a3

; ----------------------------------------------------------------------
; DATOS paso_B5A4: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb5a4..0xb5cd  (41 bytes)
DATA_paso_B5A4:
	defb 05ah,00fh,060h,060h,060h,060h,060h,060h,060h,060h	; b5a4  Z.````````
	defb 05bh,00fh,060h,060h,060h,060h,060h,060h,060h,080h	; b5ae  [.```````.
	defb 05ch,00fh,080h,060h,060h,060h,060h,060h,060h,080h	; b5b8  \..``````.
	defb 05dh,00fh,060h,060h,060h,060h,080h,060h,060h,060h	; b5c2  ].````.```
	defb 000h	; b5cc

; ----------------------------------------------------------------------
; DATOS paso_B5CD: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb5cd..0xb5f6  (41 bytes)
DATA_paso_B5CD:
	defb 05ah,00fh,060h,060h,080h,060h,060h,060h,060h,060h	; b5cd  Z.``.`````
	defb 05bh,00fh,080h,060h,060h,060h,060h,060h,060h,060h	; b5d7  [..```````
	defb 05ch,00fh,060h,060h,060h,080h,060h,060h,060h,060h	; b5e1  \.```.````
	defb 05dh,00fh,060h,060h,080h,060h,060h,060h,060h,060h	; b5eb  ].``.`````
	defb 000h	; b5f5

; ----------------------------------------------------------------------
; DATOS paso_B5F6: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb5f6..0xb61f  (41 bytes)
DATA_paso_B5F6:
	defb 05ah,00fh,060h,060h,060h,060h,080h,060h,060h,060h	; b5f6  Z.````.```
	defb 05bh,00fh,060h,060h,080h,060h,060h,060h,060h,060h	; b600  [.``.`````
	defb 05ch,00fh,060h,060h,080h,060h,060h,060h,060h,060h	; b60a  \.``.`````
	defb 05dh,00fh,080h,060h,060h,060h,060h,060h,060h,060h	; b614  ]..```````
	defb 000h	; b61e

; ----------------------------------------------------------------------
; DATOS animaciones_B61F: una lista de animaciones de caracteres por tramos de
;   scroll: [animacion][scroll] hasta un scroll 0xFFFF (p02:8373); lo leen
;   p02:8375 (12 bytes)
;   0xb61f..0xb62b  (12 bytes)
DATA_animaciones_B61F:
	defw 0b211h,00060h,0b62bh,00180h,0b211h,0ffffh	; b61f

; ----------------------------------------------------------------------
; DATOS animacion_B62B: una animacion de caracteres: la espera, cuantos pasos
;   (8) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (18 bytes)
;   0xb62b..0xb63d  (18 bytes)
DATA_animacion_B62B:
	defb 003h,008h,03dh,0b6h,066h,0b6h,08fh,0b6h,0b8h,0b6h,0e1h,0b6h,00ah,0b7h,033h,0b7h	; b62b  ..=.f.........3.
	defb 05ch,0b7h	; b63b

; ----------------------------------------------------------------------
; DATOS paso_B63D: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb63d..0xb666  (41 bytes)
DATA_paso_B63D:
	defb 05ch,003h,000h,000h,001h,001h,020h,000h,048h,080h	; b63d  \..... .H.
	defb 05ch,004h,080h,048h,000h,020h,001h,001h,000h,000h	; b647  \..H. ....
	defb 060h,003h,000h,000h,001h,001h,020h,000h,048h,080h	; b651  `..... .H.
	defb 060h,004h,080h,048h,000h,020h,001h,001h,000h,000h	; b65b  `..H. ....
	defb 000h	; b665

; ----------------------------------------------------------------------
; DATOS paso_B666: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb666..0xb68f  (41 bytes)
DATA_paso_B666:
	defb 05ch,00bh,000h,000h,060h,060h,0a0h,000h,0a0h,060h	; b666  \...``...`
	defb 05ch,00ch,060h,0a0h,000h,0a0h,060h,060h,000h,000h	; b670  \.`...``..
	defb 060h,00bh,000h,000h,050h,050h,0a0h,000h,0a0h,050h	; b67a  `...PP...P
	defb 060h,00ch,050h,0a0h,000h,0a0h,050h,050h,000h,000h	; b684  `.P...PP..
	defb 000h	; b68e

; ----------------------------------------------------------------------
; DATOS paso_B68F: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb68f..0xb6b8  (41 bytes)
DATA_paso_B68F:
	defb 05ch,003h,008h,001h,001h,001h,010h,000h,020h,080h	; b68f  \....... .
	defb 05ch,004h,080h,020h,000h,010h,001h,001h,001h,008h	; b699  \.. ......
	defb 060h,003h,008h,001h,001h,001h,010h,000h,020h,080h	; b6a3  `....... .
	defb 060h,004h,080h,020h,000h,010h,001h,001h,001h,008h	; b6ad  `.. ......
	defb 000h	; b6b7

; ----------------------------------------------------------------------
; DATOS paso_B6B8: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb6b8..0xb6e1  (41 bytes)
DATA_paso_B6B8:
	defb 05ch,00bh,0a0h,0a0h,060h,060h,0a0h,000h,060h,060h	; b6b8  \...``..``
	defb 05ch,00ch,060h,060h,000h,0a0h,060h,060h,0a0h,0a0h	; b6c2  \.``..``..
	defb 060h,00bh,0a0h,0a0h,050h,050h,0a0h,000h,050h,050h	; b6cc  `...PP..PP
	defb 060h,00ch,050h,050h,0a0h,000h,050h,050h,0a0h,0a0h	; b6d6  `.PP..PP..
	defb 000h	; b6e0

; ----------------------------------------------------------------------
; DATOS paso_B6E1: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb6e1..0xb70a  (41 bytes)
DATA_paso_B6E1:
	defb 05ch,003h,002h,000h,001h,001h,002h,000h,020h,080h	; b6e1  \....... .
	defb 05ch,004h,080h,020h,000h,002h,001h,001h,000h,002h	; b6eb  \.. ......
	defb 060h,003h,002h,000h,001h,001h,002h,000h,020h,080h	; b6f5  `....... .
	defb 060h,004h,080h,020h,000h,002h,001h,001h,000h,002h	; b6ff  `.. ......
	defb 000h	; b709

; ----------------------------------------------------------------------
; DATOS paso_B70A: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb70a..0xb733  (41 bytes)
DATA_paso_B70A:
	defb 05ch,00bh,0a0h,000h,060h,060h,060h,000h,060h,060h	; b70a  \...```.``
	defb 05ch,00ch,060h,060h,000h,060h,060h,060h,000h,0a0h	; b714  \.``.```..
	defb 060h,00bh,0a0h,000h,050h,050h,050h,000h,050h,050h	; b71e  `...PPP.PP
	defb 060h,00ch,050h,050h,000h,050h,050h,050h,000h,0a0h	; b728  `.PP.PPP..
	defb 000h	; b732

; ----------------------------------------------------------------------
; DATOS paso_B733: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb733..0xb75c  (41 bytes)
DATA_paso_B733:
	defb 05ch,003h,000h,000h,001h,001h,002h,000h,020h,080h	; b733  \....... .
	defb 05ch,004h,080h,020h,000h,002h,001h,001h,000h,000h	; b73d  \.. ......
	defb 060h,003h,000h,000h,001h,001h,002h,000h,020h,080h	; b747  `....... .
	defb 060h,004h,080h,020h,000h,002h,001h,001h,000h,000h	; b751  `.. ......
	defb 000h	; b75b

; ----------------------------------------------------------------------
; DATOS paso_B75C: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (41 bytes)
;   0xb75c..0xb785  (41 bytes)
DATA_paso_B75C:
	defb 05ch,00bh,000h,000h,060h,060h,060h,000h,060h,060h	; b75c  \...```.``
	defb 05ch,00ch,060h,060h,000h,060h,060h,060h,000h,000h	; b766  \.``.```..
	defb 060h,00bh,000h,000h,050h,050h,050h,000h,050h,050h	; b770  `...PPP.PP
	defb 060h,00ch,050h,050h,000h,050h,050h,050h,000h,000h	; b77a  `.PP.PPP..
	defb 000h	; b784

; ----------------------------------------------------------------------
; DATOS animaciones_B785: una lista de animaciones de caracteres por tramos de
;   scroll: [animacion][scroll] hasta un scroll 0xFFFF (p02:8373); lo leen
;   p02:8375 (20 bytes)
;   0xb785..0xb799  (20 bytes)
DATA_animaciones_B785:
	defw 0b211h,00060h,0b799h,00100h,0b897h,00180h,0bae1h,00220h	; b785
	defw 0b211h,0ffffh	; b795  -> DATA_animacion_B211 0xffff

; ----------------------------------------------------------------------
; DATOS animacion_B799: una animacion de caracteres: la espera, cuantos pasos
;   (4) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (10 bytes)
;   0xb799..0xb7a3  (10 bytes)
DATA_animacion_B799:
	defb 006h,004h,0a3h,0b7h,0e0h,0b7h,01dh,0b8h,05ah,0b8h	; b799  ........Z.

; ----------------------------------------------------------------------
; DATOS paso_B7A3: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (61 bytes)
;   0xb7a3..0xb7e0  (61 bytes)
DATA_paso_B7A3:
	defb 05ah,007h,040h,000h,002h,000h,008h,000h,040h,000h	; b7a3  Z.@.....@.
	defb 05bh,007h,000h,020h,002h,000h,008h,040h,000h,008h	; b7ad  [.. ...@..
	defb 05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b7b7  \.........
	defb 05dh,007h,000h,000h,000h,000h,006h,009h,009h,006h	; b7c1  ].........
	defb 05eh,007h,000h,000h,030h,048h,048h,030h,000h,000h	; b7cb  ^...0HH0..
	defb 05fh,007h,010h,028h,010h,000h,000h,000h,000h,000h	; b7d5  _..(......
	defb 000h	; b7df

; ----------------------------------------------------------------------
; DATOS paso_B7E0: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (61 bytes)
;   0xb7e0..0xb81d  (61 bytes)
DATA_paso_B7E0:
	defb 05ah,007h,000h,000h,000h,004h,000h,020h,000h,000h	; b7e0  Z...... ..
	defb 05bh,007h,010h,000h,002h,000h,000h,040h,004h,000h	; b7ea  [......@..
	defb 05ch,007h,000h,000h,002h,040h,000h,000h,010h,000h	; b7f4  \....@....
	defb 05dh,007h,000h,000h,060h,090h,090h,060h,000h,000h	; b7fe  ]...`..`..
	defb 05eh,007h,000h,000h,00ch,012h,012h,00ch,000h,000h	; b808  ^.........
	defb 05fh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b812  _.........
	defb 000h	; b81c

; ----------------------------------------------------------------------
; DATOS paso_B81D: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (61 bytes)
;   0xb81d..0xb85a  (61 bytes)
DATA_paso_B81D:
	defb 05ah,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b81d  Z.........
	defb 05bh,007h,000h,008h,000h,000h,000h,010h,000h,000h	; b827  [.........
	defb 05ch,007h,000h,008h,000h,000h,000h,040h,000h,000h	; b831  \......@..
	defb 05dh,007h,006h,009h,009h,006h,000h,000h,000h,000h	; b83b  ].........
	defb 05eh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b845  ^.........
	defb 05fh,007h,000h,000h,000h,000h,020h,050h,020h,000h	; b84f  _..... P .
	defb 000h	; b859

; ----------------------------------------------------------------------
; DATOS paso_B85A: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (61 bytes)
;   0xb85a..0xb897  (61 bytes)
DATA_paso_B85A:
	defb 05ah,007h,020h,002h,000h,010h,000h,040h,000h,002h	; b85a  Z. ....@..
	defb 05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b864  [.........
	defb 05ch,007h,000h,000h,000h,000h,010h,000h,000h,000h	; b86e  \.........
	defb 05dh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b878  ].........
	defb 05eh,007h,000h,000h,000h,000h,00ch,012h,012h,00ch	; b882  ^.........
	defb 05fh,007h,000h,000h,008h,014h,008h,000h,000h,000h	; b88c  _.........
	defb 000h	; b896

; ----------------------------------------------------------------------
; DATOS animacion_B897: una animacion de caracteres: la espera, cuantos pasos
;   (8) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (18 bytes)
;   0xb897..0xb8a9  (18 bytes)
DATA_animacion_B897:
	defb 002h,008h,0a9h,0b8h,0f0h,0b8h,037h,0b9h,07eh,0b9h,0c5h,0b9h,00ch,0bah,053h,0bah	; b897  ......7.~.....S.
	defb 09ah,0bah	; b8a7

; ----------------------------------------------------------------------
; DATOS paso_B8A9: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xb8a9..0xb8f0  (71 bytes)
DATA_paso_B8A9:
	defb 05dh,007h,000h,000h,000h,000h,006h,009h,009h,006h	; b8a9  ].........
	defb 05eh,007h,000h,000h,030h,048h,048h,030h,000h,000h	; b8b3  ^...0HH0..
	defb 05fh,007h,010h,028h,010h,000h,000h,000h,000h,000h	; b8bd  _..(......
	defb 0bch,007h,030h,078h,078h,036h,06fh,007h,0f6h,060h	; b8c7  ..0xx6o..`
	defb 0bdh,007h,006h,06fh,0e0h,0f6h,06ch,01eh,01eh,00ch	; b8d1  ...o..l...
	defb 0beh,007h,060h,0f6h,007h,06fh,036h,078h,078h,030h	; b8db  ..`..o6xx0
	defb 0bfh,007h,00ch,01eh,01eh,06ch,0f6h,0e0h,06fh,006h	; b8e5  .....l..o.
	defb 000h	; b8ef

; ----------------------------------------------------------------------
; DATOS paso_B8F0: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xb8f0..0xb937  (71 bytes)
DATA_paso_B8F0:
	defb 05dh,007h,000h,000h,060h,090h,090h,060h,000h,000h	; b8f0  ]...`..`..
	defb 05eh,007h,000h,000h,00ch,012h,012h,00ch,000h,000h	; b8fa  ^.........
	defb 05fh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b904  _.........
	defb 0bch,00fh,090h,080h,080h,060h,080h,086h,060h,060h	; b90e  .....`..``
	defb 0bdh,00fh,060h,060h,086h,080h,060h,080h,080h,090h	; b918  ..``..`...
	defb 0beh,00fh,060h,060h,086h,080h,060h,080h,080h,090h	; b922  ..``..`...
	defb 0bfh,00fh,090h,080h,080h,060h,080h,086h,060h,060h	; b92c  .....`..``
	defb 000h	; b936

; ----------------------------------------------------------------------
; DATOS paso_B937: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xb937..0xb97e  (71 bytes)
DATA_paso_B937:
	defb 05dh,007h,006h,009h,009h,006h,000h,000h,000h,000h	; b937  ].........
	defb 05eh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b941  ^.........
	defb 05fh,007h,000h,000h,000h,000h,020h,050h,020h,000h	; b94b  _..... P .
	defb 0bch,007h,006h,06fh,0e0h,0f6h,06ch,01eh,01eh,00ch	; b955  ...o..l...
	defb 0bdh,007h,060h,0f6h,007h,06fh,036h,078h,078h,030h	; b95f  ..`..o6xx0
	defb 0beh,007h,00ch,01eh,01eh,06ch,0f6h,0e0h,06fh,006h	; b969  .....l..o.
	defb 0bfh,007h,030h,078h,078h,036h,06fh,007h,0f6h,060h	; b973  ..0xx6o..`
	defb 000h	; b97d

; ----------------------------------------------------------------------
; DATOS paso_B97E: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xb97e..0xb9c5  (71 bytes)
DATA_paso_B97E:
	defb 05dh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b97e  ].........
	defb 05eh,007h,000h,000h,000h,000h,00ch,012h,012h,00ch	; b988  ^.........
	defb 05fh,007h,000h,000h,008h,014h,008h,000h,000h,000h	; b992  _.........
	defb 0bch,00fh,060h,060h,086h,080h,060h,080h,080h,090h	; b99c  ..``..`...
	defb 0bdh,00fh,060h,060h,086h,080h,060h,080h,080h,090h	; b9a6  ..``..`...
	defb 0beh,00fh,090h,080h,080h,060h,080h,086h,060h,060h	; b9b0  .....`..``
	defb 0bfh,00fh,090h,080h,080h,060h,080h,086h,060h,060h	; b9ba  .....`..``
	defb 000h	; b9c4

; ----------------------------------------------------------------------
; DATOS paso_B9C5: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xb9c5..0xba0c  (71 bytes)
DATA_paso_B9C5:
	defb 05dh,007h,000h,000h,000h,000h,006h,009h,009h,006h	; b9c5  ].........
	defb 05eh,007h,000h,000h,030h,048h,048h,030h,000h,000h	; b9cf  ^...0HH0..
	defb 05fh,007h,010h,028h,010h,000h,000h,000h,000h,000h	; b9d9  _..(......
	defb 0bch,007h,060h,0f6h,007h,06fh,036h,078h,078h,030h	; b9e3  ..`..o6xx0
	defb 0bdh,007h,00ch,01eh,01eh,06ch,0f6h,0e0h,06fh,006h	; b9ed  .....l..o.
	defb 0beh,007h,030h,078h,078h,036h,06fh,007h,0f6h,060h	; b9f7  ..0xx6o..`
	defb 0bfh,007h,006h,06fh,0e0h,0f6h,06ch,01eh,01eh,00ch	; ba01  ...o..l...
	defb 000h	; ba0b

; ----------------------------------------------------------------------
; DATOS paso_BA0C: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xba0c..0xba53  (71 bytes)
DATA_paso_BA0C:
	defb 05dh,007h,000h,000h,060h,090h,090h,060h,000h,000h	; ba0c  ]...`..`..
	defb 05eh,007h,000h,000h,00ch,012h,012h,00ch,000h,000h	; ba16  ^.........
	defb 05fh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; ba20  _.........
	defb 0bch,00fh,060h,060h,086h,080h,060h,080h,080h,090h	; ba2a  ..``..`...
	defb 0bdh,00fh,090h,080h,080h,060h,080h,086h,060h,060h	; ba34  .....`..``
	defb 0beh,00fh,090h,080h,080h,060h,080h,086h,060h,060h	; ba3e  .....`..``
	defb 0bfh,00fh,060h,060h,086h,080h,060h,080h,080h,090h	; ba48  ..``..`...
	defb 000h	; ba52

; ----------------------------------------------------------------------
; DATOS paso_BA53: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xba53..0xba9a  (71 bytes)
DATA_paso_BA53:
	defb 05dh,007h,006h,009h,009h,006h,000h,000h,000h,000h	; ba53  ].........
	defb 05eh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; ba5d  ^.........
	defb 05fh,007h,000h,000h,000h,000h,020h,050h,020h,000h	; ba67  _..... P .
	defb 0bch,007h,00ch,01eh,01eh,06ch,0f6h,0e0h,06fh,006h	; ba71  .....l..o.
	defb 0bdh,007h,030h,078h,078h,036h,06fh,007h,0f6h,060h	; ba7b  ..0xx6o..`
	defb 0beh,007h,006h,06fh,0e0h,0f6h,06ch,01eh,01eh,00ch	; ba85  ...o..l...
	defb 0bfh,007h,060h,0f6h,007h,06fh,036h,078h,078h,030h	; ba8f  ..`..o6xx0
	defb 000h	; ba99

; ----------------------------------------------------------------------
; DATOS paso_BA9A: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xba9a..0xbae1  (71 bytes)
DATA_paso_BA9A:
	defb 05dh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; ba9a  ].........
	defb 05eh,007h,000h,000h,000h,000h,00ch,012h,012h,00ch	; baa4  ^.........
	defb 05fh,007h,000h,000h,008h,014h,008h,000h,000h,000h	; baae  _.........
	defb 0bch,00fh,090h,080h,080h,060h,080h,086h,060h,060h	; bab8  .....`..``
	defb 0bdh,00fh,090h,080h,080h,060h,080h,086h,060h,060h	; bac2  .....`..``
	defb 0beh,00fh,060h,060h,086h,080h,060h,080h,080h,090h	; bacc  ..``..`...
	defb 0bfh,00fh,060h,060h,086h,080h,060h,080h,080h,090h	; bad6  ..``..`...
	defb 000h	; bae0

; ----------------------------------------------------------------------
; DATOS animacion_BAE1: una animacion de caracteres: la espera, cuantos pasos
;   (4) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (10 bytes)
;   0xbae1..0xbaeb  (10 bytes)
DATA_animacion_BAE1:
	defb 004h,004h,0ebh,0bah,032h,0bbh,079h,0bbh,0c0h,0bbh	; bae1  ....2.y...

; ----------------------------------------------------------------------
; DATOS paso_BAEB: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xbaeb..0xbb32  (71 bytes)
DATA_paso_BAEB:
	defb 05dh,007h,000h,000h,000h,000h,006h,009h,009h,006h	; baeb  ].........
	defb 05eh,007h,000h,000h,030h,048h,048h,030h,000h,000h	; baf5  ^...0HH0..
	defb 05fh,007h,010h,028h,010h,000h,000h,000h,000h,000h	; baff  _..(......
	defb 060h,007h,000h,000h,060h,070h,03ch,01fh,01fh,00fh	; bb09  `...`p<...
	defb 061h,007h,000h,000h,006h,00eh,03ch,0f8h,0f8h,070h	; bb13  a.....<..p
	defb 062h,007h,030h,070h,0f0h,0f8h,0f8h,03ch,00eh,006h	; bb1d  b.0p...<..
	defb 063h,007h,00eh,00ch,00eh,01fh,01fh,03ch,070h,060h	; bb27  c......<p`
	defb 000h	; bb31

; ----------------------------------------------------------------------
; DATOS paso_BB32: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xbb32..0xbb79  (71 bytes)
DATA_paso_BB32:
	defb 05dh,007h,000h,000h,060h,090h,090h,060h,000h,000h	; bb32  ]...`..`..
	defb 05eh,007h,000h,000h,00ch,012h,012h,00ch,000h,000h	; bb3c  ^.........
	defb 05fh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; bb46  _.........
	defb 060h,00fh,0e0h,0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h	; bb50  `.........
	defb 061h,00fh,0e0h,0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h	; bb5a  a.........
	defb 062h,00fh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h	; bb64  b.........
	defb 063h,00fh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h	; bb6e  c.........
	defb 000h	; bb78

; ----------------------------------------------------------------------
; DATOS paso_BB79: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xbb79..0xbbc0  (71 bytes)
DATA_paso_BB79:
	defb 05dh,007h,006h,009h,009h,006h,000h,000h,000h,000h	; bb79  ].........
	defb 05eh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; bb83  ^.........
	defb 05fh,007h,000h,000h,000h,000h,020h,050h,020h,000h	; bb8d  _..... P .
	defb 060h,007h,0c0h,0e0h,070h,03ch,01fh,01bh,00ch,00ch	; bb97  `...p<....
	defb 061h,007h,003h,007h,00eh,03ch,0f8h,0d8h,070h,030h	; bba1  a....<..p0
	defb 062h,007h,030h,030h,0d8h,0f8h,03ch,00eh,007h,003h	; bbab  b.00..<...
	defb 063h,007h,00ch,00eh,01bh,01fh,03ch,070h,0e0h,0c0h	; bbb5  c.....<p..
	defb 000h	; bbbf

; ----------------------------------------------------------------------
; DATOS paso_BBC0: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (71 bytes)
;   0xbbc0..0xbc07  (71 bytes)
DATA_paso_BBC0:
	defb 05dh,007h,000h,000h,000h,000h,000h,000h,000h,000h	; bbc0  ].........
	defb 05eh,007h,000h,000h,000h,000h,00ch,012h,012h,00ch	; bbca  ^.........
	defb 05fh,007h,000h,000h,008h,014h,008h,000h,000h,000h	; bbd4  _.........
	defb 060h,00fh,0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h	; bbde  `.........
	defb 061h,00fh,0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h	; bbe8  a.........
	defb 062h,00fh,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h,0e0h	; bbf2  b.........
	defb 063h,00fh,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h,0e0h	; bbfc  c.........
	defb 000h	; bc06

; ----------------------------------------------------------------------
; DATOS animaciones_BC07: una lista de animaciones de caracteres por tramos de
;   scroll: [animacion][scroll] hasta un scroll 0xFFFF (p02:8373); lo leen
;   p02:8375 (16 bytes)
;   0xbc07..0xbc17  (16 bytes)
DATA_animaciones_BC07:
	defw 0b211h,00040h,0bc17h,001c0h,0bc7ch,00220h,0b211h,0ffffh	; bc07

; ----------------------------------------------------------------------
; DATOS animacion_BC17: una animacion de caracteres: la espera, cuantos pasos
;   (3) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (8 bytes)
;   0xbc17..0xbc1f  (8 bytes)
DATA_animacion_BC17:
	defb 008h,003h,01fh,0bch,03eh,0bch,05dh,0bch	; bc17  ....>.].

; ----------------------------------------------------------------------
; DATOS paso_BC1F: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xbc1f..0xbc3e  (31 bytes)
DATA_paso_BC1F:
	defb 060h,007h,000h,00ah,000h,000h,0f8h,000h,000h,000h	; bc1f  `.........
	defb 061h,007h,000h,00ah,000h,000h,01fh,000h,000h,000h	; bc29  a.........
	defb 062h,00fh,050h,050h,050h,050h,040h,050h,050h,050h	; bc33  b.PPPP@PPP
	defb 000h	; bc3d

; ----------------------------------------------------------------------
; DATOS paso_BC3E: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xbc3e..0xbc5d  (31 bytes)
DATA_paso_BC3E:
	defb 060h,007h,000h,00ah,000h,000h,0ffh,000h,000h,000h	; bc3e  `.........
	defb 061h,007h,000h,00ah,000h,000h,0f8h,000h,000h,000h	; bc48  a.........
	defb 062h,00fh,050h,050h,050h,050h,040h,050h,050h,050h	; bc52  b.PPPP@PPP
	defb 000h	; bc5c

; ----------------------------------------------------------------------
; DATOS paso_BC5D: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (31 bytes)
;   0xbc5d..0xbc7c  (31 bytes)
DATA_paso_BC5D:
	defb 060h,007h,000h,00ah,000h,000h,01fh,000h,000h,000h	; bc5d  `.........
	defb 061h,007h,000h,00ah,000h,000h,0ffh,000h,000h,000h	; bc67  a.........
	defb 062h,00fh,050h,040h,040h,040h,040h,040h,040h,040h	; bc71  b.P@@@@@@@
	defb 000h	; bc7b

; ----------------------------------------------------------------------
; DATOS animacion_BC7C: una animacion de caracteres: la espera, cuantos pasos
;   (3) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (8 bytes)
;   0xbc7c..0xbc84  (8 bytes)
DATA_animacion_BC7C:
	defb 008h,003h,084h,0bch,099h,0bch,0aeh,0bch	; bc7c  ........

; ----------------------------------------------------------------------
; DATOS paso_BC84: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (21 bytes)
;   0xbc84..0xbc99  (21 bytes)
DATA_paso_BC84:
	defb 05ah,007h,000h,00ah,000h,000h,0f8h,000h,000h,000h	; bc84  Z.........
	defb 059h,007h,000h,00ah,000h,000h,01fh,000h,000h,000h	; bc8e  Y.........
	defb 000h	; bc98

; ----------------------------------------------------------------------
; DATOS paso_BC99: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (21 bytes)
;   0xbc99..0xbcae  (21 bytes)
DATA_paso_BC99:
	defb 05ah,007h,000h,00ah,000h,000h,0ffh,000h,000h,000h	; bc99  Z.........
	defb 059h,007h,000h,00ah,000h,000h,0f8h,000h,000h,000h	; bca3  Y.........
	defb 000h	; bcad

; ----------------------------------------------------------------------
; DATOS paso_BCAE: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (21 bytes)
;   0xbcae..0xbcc3  (21 bytes)
DATA_paso_BCAE:
	defb 05ah,007h,000h,00ah,000h,000h,01fh,000h,000h,000h	; bcae  Z.........
	defb 059h,007h,000h,00ah,000h,000h,0ffh,000h,000h,000h	; bcb8  Y.........
	defb 000h	; bcc2

; ----------------------------------------------------------------------
; DATOS animaciones_BCC3: una lista de animaciones de caracteres por tramos de
;   scroll: [animacion][scroll] hasta un scroll 0xFFFF (p02:8373); lo leen
;   p02:8375 (12 bytes)
;   0xbcc3..0xbccf  (12 bytes)
DATA_animaciones_BCC3:
	defw 0b211h,00020h,0bccfh,00260h,0b211h,0ffffh	; bcc3

; ----------------------------------------------------------------------
; DATOS animacion_BCCF: una animacion de caracteres: la espera, cuantos pasos
;   (6) y una palabra por paso (p02:838B); lo leen p02:838B, p02:839F,
;   p00:4A60 (14 bytes)
;   0xbccf..0xbcdd  (14 bytes)
DATA_animacion_BCCF:
	defb 006h,006h,0ddh,0bch,0f2h,0bch,007h,0bdh,01ch,0bdh,031h,0bdh,046h,0bdh	; bccf  ..........1.F.

; ----------------------------------------------------------------------
; DATOS paso_BCDD: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (21 bytes)
;   0xbcdd..0xbcf2  (21 bytes)
DATA_paso_BCDD:
	defb 063h,00fh,040h,040h,040h,040h,040h,040h,080h,040h	; bcdd  c.@@@@@@.@
	defb 064h,00fh,000h,000h,050h,045h,045h,050h,000h,000h	; bce7  d...PEEP..
	defb 000h	; bcf1

; ----------------------------------------------------------------------
; DATOS paso_BCF2: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (21 bytes)
;   0xbcf2..0xbd07  (21 bytes)
DATA_paso_BCF2:
	defb 063h,00fh,040h,040h,040h,040h,040h,040h,090h,040h	; bcf2  c.@@@@@@.@
	defb 064h,00fh,000h,000h,050h,095h,095h,050h,000h,000h	; bcfc  d...P..P..
	defb 000h	; bd06

; ----------------------------------------------------------------------
; DATOS paso_BD07: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (21 bytes)
;   0xbd07..0xbd1c  (21 bytes)
DATA_paso_BD07:
	defb 063h,00fh,040h,040h,040h,040h,040h,040h,0b0h,040h	; bd07  c.@@@@@@.@
	defb 064h,00fh,000h,000h,050h,0b5h,0b5h,050h,000h,000h	; bd11  d...P..P..
	defb 000h	; bd1b

; ----------------------------------------------------------------------
; DATOS paso_BD1C: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (21 bytes)
;   0xbd1c..0xbd31  (21 bytes)
DATA_paso_BD1C:
	defb 063h,00fh,040h,040h,040h,040h,040h,040h,090h,040h	; bd1c  c.@@@@@@.@
	defb 064h,00fh,000h,000h,050h,095h,095h,050h,000h,000h	; bd26  d...P..P..
	defb 000h	; bd30

; ----------------------------------------------------------------------
; DATOS paso_BD31: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (21 bytes)
;   0xbd31..0xbd46  (21 bytes)
DATA_paso_BD31:
	defb 063h,00fh,040h,040h,040h,040h,040h,040h,080h,040h	; bd31  c.@@@@@@.@
	defb 064h,00fh,000h,000h,050h,045h,045h,050h,000h,000h	; bd3b  d...PEEP..
	defb 000h	; bd45

; ----------------------------------------------------------------------
; DATOS paso_BD46: un paso de animacion: fichas de 10 bytes (caracter, tercios
;   y si son colores, 8 bytes) hasta un 0 (p02:83AA); lo leen p02:83AA,
;   p02:83B9 (21 bytes)
;   0xbd46..0xbd5b  (21 bytes)
DATA_paso_BD46:
	defb 063h,00fh,040h,040h,040h,040h,040h,040h,040h,040h	; bd46  c.@@@@@@@@
	defb 064h,00fh,000h,000h,000h,040h,040h,000h,000h,000h	; bd50  d....@@...
	defb 000h	; bd5a

; ----------------------------------------------------------------------
; DATOS tabla_BD5B: tabla que se lee desde HL = 0xBD5B con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:834C (12 bytes)
;   0xbd5b..0xbd67  (12 bytes)
DATA_tabla_BD5B:
	defb 070h,0b8h,050h,050h,0b8h,070h,050h,0e8h,070h,070h,0e8h,050h	; bd5b  p.PP.pP.pp.P

; ----------------------------------------------------------------------
; DATOS relleno_ff: 665 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (665 bytes)
;   0xbd67..0xc000  (665 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd67  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd77  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd87  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bd97  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bda7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdb7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdc7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdd7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bde7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bdf7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be07  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be17  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be27  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be37  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be47  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be57  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be67  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be77  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be87  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be97  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bea7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beb7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bec7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bed7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bee7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bef7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf07  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf17  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf27  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf37  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf47  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf57  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf67  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf77  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf87  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf97  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfa7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff7  .........

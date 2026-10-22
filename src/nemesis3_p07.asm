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
; DATOS sin identificar  0xa80c..0xa8d8  (204 bytes)
DATA_A80C:
	defb 082h,002h,008h,008h,069h,008h,06ah,000h,082h,002h,008h,007h,069h,081h,090h,007h	; a80c  ....i.j.....i...
	defb 06ah,081h,091h,000h,082h,002h,008h,007h,069h,081h,0a6h,007h,06ah,081h,0bbh,000h	; a81c  j.......i...j...
	defb 082h,002h,008h,006h,069h,082h,090h,0a6h,006h,06ah,082h,091h,0bbh,000h,082h,002h	; a82c  ....i....j......
	defb 008h,006h,069h,002h,0a6h,006h,06ah,002h,0bbh,000h,082h,002h,008h,005h,069h,083h	; a83c  ..i...j.......i.
	defb 090h,0a6h,0a6h,005h,06ah,083h,091h,0bbh,0bbh,000h,082h,002h,008h,005h,069h,003h	; a84c  ....j.........i.
	defb 0a6h,005h,06ah,003h,0bbh,000h,082h,002h,008h,004h,069h,081h,090h,003h,0a6h,004h	; a85c  ..j.......i.....
	defb 06ah,081h,091h,003h,0bbh,000h,082h,002h,008h,004h,069h,004h,0a6h,004h,06ah,004h	; a86c  j.........i...j.
	defb 0bbh,000h,082h,002h,008h,003h,069h,081h,090h,004h,0a6h,003h,06ah,081h,091h,004h	; a87c  ......i.....j...
	defb 0bbh,000h,082h,002h,008h,003h,069h,005h,0a6h,003h,06ah,005h,0bbh,000h,085h,002h	; a88c  ......i...j.....
	defb 008h,069h,069h,090h,005h,0a6h,002h,06ah,081h,091h,005h,0bbh,000h,084h,002h,008h	; a89c  .ii....j........
	defb 069h,069h,006h,0a6h,002h,06ah,006h,0bbh,000h,084h,002h,008h,069h,090h,006h,0a6h	; a8ac  ii...j......i...
	defb 082h,06ah,091h,006h,0bbh,000h,083h,002h,008h,069h,007h,0a6h,081h,06ah,007h,0bbh	; a8bc  .j.......i...j..
	defb 000h,083h,002h,008h,090h,007h,0a6h,081h,091h,007h,0bbh,000h	; a8cc  ............

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
; DATOS leido_A8E0: 24 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7DFC, p01:7E01, p01:7E09
;   (24 bytes)
;   0xa8e0..0xa8f8  (24 bytes)
DATA_leido_A8E0:
	defb 002h,006h,081h,082h,083h,084h,085h,086h,087h,088h,089h,08ah,08bh,076h,002h,004h	; a8e0  .............v..
	defb 081h,083h,084h,086h,087h,089h,08ah,076h	; a8f0  .......v

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa8f8..0xa91c  (36 bytes)
DATA_A8F8:
	defb 004h,004h,0d6h,078h,079h,06eh,077h,07bh,07ch,07ah,07dh,07bh,07ch,080h,071h,07eh	; a8f8  ...xynw{|z}{|.q~
	defb 07fh,074h,004h,004h,0d6h,06ch,06dh,06eh,06bh,000h,000h,06fh,070h,000h,000h,000h	; a908  .t...lmnk..op...
	defb 071h,072h,073h,074h	; a918

; ----------------------------------------------------------------------
; DATOS leido_A91C: 8 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (8 bytes)
;   0xa91c..0xa924  (8 bytes)
DATA_leido_A91C:
	defb 024h,0a9h,06fh,0a9h,0bah,0a9h,00eh,0aah	; a91c  $.o.....

; ----------------------------------------------------------------------
; DATOS leido_A924: 320 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (320 bytes)
;   0xa924..0xaa64  (320 bytes)
DATA_leido_A924:
	defb 003h,050h,0b1h,0b3h,0b2h,051h,0b3h,0b4h,038h,04fh,0aeh,006h,0bdh,054h,035h,056h	; a924  .P...Q..8O...T5V
	defb 0bch,008h,0adh,057h,033h,05ah,0aeh,00ah,0bdh,033h,055h,00ch,062h,032h,0a9h,00ch	; a934  ...W3Z...3U.b2..
	defb 0d2h,032h,0aah,00ch,0d1h,032h,0cah,00ch,0bbh,032h,0c9h,00ch,0bch,032h,06dh,00ch	; a944  .2...2...2...2m.
	defb 075h,032h,060h,0b1h,00ah,0c1h,034h,069h,0b2h,008h,0c2h,05ch,035h,06dh,0cch,006h	; a954  u2`...4i...\5m..
	defb 0dbh,072h,037h,06eh,0cfh,0d1h,0d0h,06fh,0d1h,0d2h,000h,004h,0a5h,0a4h,05dh,0a3h	; a964  .r7n...o......].
	defb 0a4h,0a2h,05ch,037h,060h,0beh,006h,0afh,05bh,035h,063h,0bch,008h,0adh,062h,034h	; a974  ..\7`...[5c...b4
	defb 0beh,00ah,0afh,066h,032h,056h,00ch,061h,032h,0cch,00ch,0b9h,032h,0cbh,00ch,0bah	; a984  ...f2V.a2...2...
	defb 032h,0abh,00ch,0d0h,032h,0ach,00ch,0cfh,032h,06eh,00ch,074h,033h,0b0h,00ah,0c0h	; a994  2...2...2n.t3...
	defb 06ch,033h,068h,0b2h,008h,0c2h,05dh,035h,079h,0dch,006h,0cdh,074h,038h,0c3h,0c2h	; a9a4  l3h...]5y...t8..
	defb 076h,0c1h,0c2h,0c0h,075h,000h,003h,0b0h,0b5h,0b6h,0a0h,0a0h,0b5h,0b7h,0b8h,001h	; a9b4  v...u...........
	defb 09dh,034h,055h,0b9h,0beh,006h,0afh,0bah,001h,09eh,033h,0bbh,0bch,008h,0adh,058h	; a9c4  .4U.......3....X
	defb 033h,0e2h,0beh,00ah,0afh,033h,0ceh,00ch,0bdh,032h,0d4h,00ch,0d4h,032h,0ceh,00ch	; a9d4  3....3...2...2..
	defb 0d4h,032h,0d4h,00ch,0a8h,032h,0d4h,00ch,0d4h,032h,0cdh,00ch,0a8h,032h,05fh,0b0h	; a9e4  .2...2...2...2_.
	defb 00ah,0c7h,0b4h,033h,05eh,0b2h,008h,0c2h,0afh,035h,0c9h,0dch,006h,0cdh,0c8h,07ah	; a9f4  ...3^....5.....z
	defb 036h,0c7h,0c6h,0c4h,0a0h,0a0h,0c5h,0c4h,0bfh,000h,003h,0a9h,0a8h,0a6h,0a0h,0a0h	; aa04  6...............
	defb 0a7h,0a6h,0a1h,037h,0abh,0beh,006h,0afh,0aah,061h,034h,064h,0bch,008h,0adh,0ach	; aa14  ...7.....a4d....
	defb 09fh,032h,065h,0beh,00ah,0afh,0ddh,032h,0adh,00ch,0c8h,032h,0d4h,00ch,0d4h,032h	; aa24  .2e....2...2...2
	defb 0d4h,00ch,0c8h,032h,0b8h,00ch,0d4h,032h,0d4h,00ch,0d4h,032h,0b8h,00ch,0d3h,032h	; aa34  ...2...2...2...2
	defb 0c4h,0b0h,00ah,0c6h,06bh,032h,0a7h,0bfh,0b2h,008h,0c2h,06ah,033h,09eh,073h,0d7h	; aa44  ....k2.....j3.s.
	defb 0dch,006h,0cdh,0d8h,035h,09dh,001h,0ceh,0d3h,0d4h,0a0h,0a0h,0d3h,0d5h,0d6h,000h	; aa54  ....5...........

; ----------------------------------------------------------------------
; DATOS leido_AA64: 20 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (20 bytes)
;   0xaa64..0xaa78  (20 bytes)
DATA_leido_AA64:
	defb 078h,0aah,078h,0aah,079h,0aah,07fh,0aah,085h,0aah,07fh,0aah,093h,0aah,0a2h,0aah	; aa64  x.x.y...........
	defb 0b6h,0aah,0c7h,0aah	; aa74

; ----------------------------------------------------------------------
; DATOS leido_AA78: 87 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (87 bytes)
;   0xaa78..0xaacf  (87 bytes)
DATA_leido_AA78:
	defb 000h,040h,040h,002h,052h,053h,000h,040h,040h,002h,05fh,05eh,000h,040h,005h,093h	; aa78  .@@.RS.@@._^.@..
	defb 096h,03bh,052h,053h,001h,097h,09bh,03eh,0a0h,09ch,000h,040h,004h,093h,09ah,03ch	; aa88  ..RS...>...@...<
	defb 052h,053h,097h,0a0h,09bh,03dh,0a0h,0a0h,09ch,000h,001h,090h,099h,09ah,09ah,03eh	; aa98  RS...=.........>
	defb 08eh,08dh,098h,03ch,05fh,05eh,08ch,0a0h,096h,03dh,0a0h,0a0h,0a1h,000h,001h,090h	; aaa8  ...<_^...=......
	defb 099h,08fh,03ch,095h,092h,002h,091h,03dh,052h,053h,03fh,002h,0b7h,0b8h,000h,040h	; aab8  ..<....=RS?....@
	defb 095h,03fh,094h,001h,05fh,05eh,000h	; aac8

; ----------------------------------------------------------------------
; DATOS leido_AACF: 20 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (20 bytes)
;   0xaacf..0xaae3  (20 bytes)
DATA_leido_AACF:
	defb 0e3h,0aah,0e3h,0aah,0e4h,0aah,0e9h,0aah,0eeh,0aah,0e9h,0aah,0fah,0aah,007h,0abh	; aacf  ................
	defb 01ah,0abh,028h,0abh	; aadf

; ----------------------------------------------------------------------
; DATOS leido_AAE3: 78 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (78 bytes)
;   0xaae3..0xab31  (78 bytes)
DATA_leido_AAE3:
	defb 000h,040h,003h,078h,077h,000h,040h,003h,070h,071h,000h,08bh,0a0h,03eh,08ah,086h	; aae3  .@.xw.@.pq...>..
	defb 001h,078h,077h,03bh,085h,082h,000h,08bh,0a0h,0a0h,03dh,08ah,0a0h,086h,078h,077h	; aaf3  .xw.......=...xw
	defb 03ch,089h,082h,000h,0ceh,0a0h,0a0h,03dh,085h,0a0h,07bh,070h,071h,03ch,087h,07ch	; ab03  <......=..{pq<.|
	defb 07dh,03eh,089h,089h,088h,07fh,000h,040h,003h,078h,077h,03dh,080h,002h,081h,084h	; ab13  }>.....@.xw=....
	defb 03ch,07eh,088h,07fh,000h,040h,003h,070h,071h,001h,083h,03fh,084h,000h	; ab23  <~...@.pq..?..

; ----------------------------------------------------------------------
; DATOS sin identificar  0xab31..0xab32  (1 bytes)
DATA_AB31:
	defb 000h	; ab31

; ----------------------------------------------------------------------
; DATOS leido_AB32: 20 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (20 bytes)
;   0xab32..0xab46  (20 bytes)
DATA_leido_AB32:
	defb 046h,0abh,046h,0abh,047h,0abh,053h,0abh,05eh,0abh,047h,0abh,073h,0abh,08bh,0abh	; ab32  F.F.G.S.^.G.s...
	defb 0aeh,0abh,0ceh,0abh	; ab42

; ----------------------------------------------------------------------
; DATOS leido_AB46: 151 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (151 bytes)
;   0xab46..0xabdd  (151 bytes)
DATA_leido_AB46:
	defb 000h,040h,001h,07ah,03fh,079h,03fh,078h,03fh,077h,03fh,076h,000h,001h,063h,03fh	; ab46  .@.z?y?x?w?v..c?
	defb 064h,03fh,065h,03fh,066h,03fh,067h,000h,001h,063h,03fh,064h,03fh,065h,03fh,066h	; ab56  d?e?f?g..c?d?e?f
	defb 03fh,067h,03eh,0d4h,0d5h,0a5h,03dh,0a8h,080h,0a6h,03dh,06ah,000h,001h,063h,03fh	; ab66  ?g>...=...=j..c?
	defb 064h,03fh,065h,03fh,066h,03fh,067h,03eh,0d5h,07bh,07ch,07dh,03ch,0d4h,0d4h,07eh	; ab76  d?e?f?g>.{|}<..~
	defb 07fh,03ch,080h,081h,000h,040h,001h,07ah,003h,088h,03bh,079h,003h,0a1h,03bh,078h	; ab86  .<...@.z...y...x
	defb 002h,084h,0a1h,03bh,077h,002h,083h,087h,03bh,0d4h,07ch,07dh,085h,086h,03ah,0d4h	; ab96  ....w.....|}..:.
	defb 0d4h,07eh,080h,07fh,03bh,080h,081h,000h,001h,063h,002h,089h,03ch,064h,002h,08ah	; aba6  .~.......c..<d..
	defb 088h,03bh,065h,002h,084h,0a1h,03bh,066h,002h,084h,0a1h,03bh,067h,002h,08bh,087h	; abb6  ..e....f....g...
	defb 03ah,0d3h,003h,08ch,086h,03ah,06bh,000h,002h,08dh,08eh,089h,03ch,07ah,03fh,079h	; abc6  :....:k.....<z?y
	defb 03fh,078h,03fh,077h,03fh,076h,000h	; abd6

; ----------------------------------------------------------------------
; DATOS leido_ABDD: 20 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (20 bytes)
;   0xabdd..0xabf1  (20 bytes)
DATA_leido_ABDD:
	defb 0f1h,0abh,0f1h,0abh,0f2h,0abh,0fdh,0abh,009h,0ach,0f2h,0abh,018h,0ach,02ah,0ach	; abdd  ..............*.
	defb 046h,0ach,060h,0ach	; abed

; ----------------------------------------------------------------------
; DATOS leido_ABF1: 128 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (128 bytes)
;   0xabf1..0xac71  (128 bytes)
DATA_leido_ABF1:
	defb 000h,004h,057h,03fh,058h,03fh,059h,03fh,05ah,03fh,05bh,000h,040h,004h,073h,03fh	; abf1  ..W?X?Y?Z?[.@.s?
	defb 072h,03fh,071h,03fh,070h,03fh,06fh,000h,003h,0a4h,090h,03eh,091h,092h,03fh,072h	; ac01  r?q?p?o....>..?r
	defb 03fh,071h,03fh,070h,03fh,06fh,000h,003h,08fh,090h,03dh,08fh,0d4h,0d4h,03dh,091h	; ac11  ?q?p?o....=...=.
	defb 091h,092h,03fh,071h,03fh,070h,03fh,06fh,000h,003h,08fh,090h,0d4h,03ch,08fh,0d4h	; ac21  ..?q?p?o.....<..
	defb 0d4h,03ch,093h,0d4h,0d4h,0d4h,0d4h,03ah,094h,095h,096h,091h,092h,03bh,097h,098h	; ac31  .<.....:........
	defb 002h,05bh,03ch,099h,000h,040h,004h,073h,03ch,09ah,002h,072h,03bh,0a2h,09bh,002h	; ac41  .[<..@.s<..r....
	defb 071h,03bh,097h,0a3h,002h,070h,03ch,09ch,09dh,001h,06fh,03dh,09eh,09fh,000h,004h	; ac51  q....p<...o=....
	defb 057h,03fh,058h,03fh,059h,03fh,05ah,03fh,05bh,03dh,09dh,03fh,09eh,09fh,0a0h,000h	; ac61  W?X?Y?Z?[=.?....

; ----------------------------------------------------------------------
; DATOS leido_AC71: 20 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (20 bytes)
;   0xac71..0xac85  (20 bytes)
DATA_leido_AC71:
	defb 085h,0ach,085h,0ach,086h,0ach,08bh,0ach,090h,0ach,08bh,0ach,09ch,0ach,0a9h,0ach	; ac71  ................
	defb 0bch,0ach,0cah,0ach	; ac81

; ----------------------------------------------------------------------
; DATOS leido_AC85: 78 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (78 bytes)
;   0xac85..0xacd3  (78 bytes)
DATA_leido_AC85:
	defb 000h,040h,003h,075h,074h,000h,040h,003h,06ah,06bh,000h,08bh,0a0h,03eh,08ah,086h	; ac85  .@.ut.@.jk...>..
	defb 001h,075h,074h,03bh,085h,082h,000h,08bh,0a0h,0a0h,03dh,08ah,0a0h,086h,075h,074h	; ac95  .ut.......=...ut
	defb 03ch,089h,082h,000h,0ceh,0a0h,0a0h,03dh,085h,0a0h,07bh,06ah,06bh,03ch,087h,07ch	; aca5  <......=..{jk<.|
	defb 07dh,03eh,089h,089h,088h,07fh,000h,040h,003h,075h,074h,03dh,080h,002h,081h,084h	; acb5  }>.....@.ut=....
	defb 03ch,07eh,088h,07fh,000h,040h,003h,06ah,06bh,001h,083h,03fh,084h,000h	; acc5  <~...@.jk..?..

; ----------------------------------------------------------------------
; DATOS sin identificar  0xacd3..0xacd4  (1 bytes)
DATA_ACD3:
	defb 000h	; acd3

; ----------------------------------------------------------------------
; DATOS leido_ACD4: 20 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (20 bytes)
;   0xacd4..0xace8  (20 bytes)
DATA_leido_ACD4:
	defb 0e8h,0ach,0e8h,0ach,0e9h,0ach,0efh,0ach,0f5h,0ach,0efh,0ach,003h,0adh,012h,0adh	; acd4  ................
	defb 026h,0adh,037h,0adh	; ace4

; ----------------------------------------------------------------------
; DATOS leido_ACE8: 87 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (87 bytes)
;   0xace8..0xad3f  (87 bytes)
DATA_leido_ACE8:
	defb 000h,040h,040h,002h,05ch,05dh,000h,040h,040h,002h,067h,066h,000h,040h,005h,093h	; ace8  .@@.\].@@.gf.@..
	defb 096h,03bh,05ch,05dh,001h,097h,09bh,03eh,0a0h,09ch,000h,040h,004h,093h,09ah,03ch	; acf8  ..\]...>...@...<
	defb 05ch,05dh,097h,0a0h,09bh,03dh,0a0h,0a0h,09ch,000h,001h,090h,099h,09ah,09ah,03eh	; ad08  \]...=.........>
	defb 08eh,08dh,098h,03ch,067h,066h,08ch,0a0h,096h,03dh,0a0h,0a0h,0a1h,000h,001h,090h	; ad18  ...<gf...=......
	defb 099h,08fh,03ch,095h,092h,002h,091h,03dh,05ch,05dh,03fh,002h,0b7h,0b8h,000h,040h	; ad28  ..<....=\]?....@
	defb 095h,03fh,094h,001h,067h,066h,000h	; ad38

; ----------------------------------------------------------------------
; DATOS leido_AD3F: 22 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (22 bytes)
;   0xad3f..0xad55  (22 bytes)
DATA_leido_AD3F:
	defb 055h,0adh,06eh,0adh,088h,0adh,0a0h,0adh,0b6h,0adh,0cdh,0adh,0d8h,0adh,0eeh,0adh	; ad3f  U.n.............
	defb 005h,0aeh,01dh,0aeh,037h,0aeh	; ad4f

; ----------------------------------------------------------------------
; DATOS leido_AD55: 251 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (251 bytes)
;   0xad55..0xae50  (251 bytes)
DATA_leido_AD55:
	defb 002h,0c2h,03fh,0dch,0ddh,03fh,0d1h,0cbh,03fh,0cch,0c3h,0cbh,03eh,0c4h,0cch,0c5h	; ad55  ..?..?..?...>...
	defb 03fh,0c6h,0d1h,03fh,0d6h,0d7h,03fh,0d1h,000h,001h,0c0h,03fh,0c1h,0c5h,0cfh,03eh	; ad65  ?..?..?....?...>
	defb 0c6h,0d0h,0c5h,0c9h,0cfh,03dh,0c6h,0cah,0d0h,0c7h,03fh,0c8h,0d1h,03fh,0d6h,0d7h	; ad75  .....=....?..?..
	defb 03fh,0d1h,000h,001h,0c0h,003h,0cfh,03bh,0c1h,0d1h,0c5h,0c3h,0d0h,0d1h,0c7h,03bh	; ad85  ?...............
	defb 0c6h,0c4h,002h,0c8h,0d1h,03fh,0d6h,0d7h,03fh,0d1h,000h,0beh,0cbh,0cfh,0cdh,0c7h	; ad95  .....?..?.......
	defb 0c5h,0c7h,0cdh,038h,0bfh,0cch,0d0h,0ceh,0c8h,0c6h,0c8h,0ceh,0c7h,03fh,0c8h,0d1h	; ada5  ...8.........?..
	defb 000h,004h,0cfh,0cfh,03ah,0c0h,0cdh,0c9h,0c3h,0d0h,0d0h,0d1h,0c5h,0c9h,037h,0c1h	; adb5  ....:.........7.
	defb 0ceh,0cah,0c4h,003h,0c6h,0cah,0d1h,000h,0c2h,0d1h,0d1h,0d1h,0d1h,0d1h,0d1h,0d1h	; adc5  ................
	defb 0d1h,0d1h,000h,0beh,0c5h,0c9h,0cfh,003h,0cdh,0c9h,0d1h,036h,0bfh,0c6h,0cah,0d0h	; add5  ...........6....
	defb 0c3h,0c3h,0d1h,0ceh,0cah,03bh,0c4h,0c4h,000h,008h,0cbh,0d1h,036h,0c0h,0c7h,0c3h	; ade5  ............6...
	defb 0c5h,0cbh,0cdh,0cbh,0c5h,0cch,037h,0c1h,0c8h,0c4h,0c6h,0cch,0ceh,0cch,0c6h,000h	; adf5  ......7.........
	defb 009h,0d1h,03eh,0d6h,0d7h,039h,0cdh,0cfh,002h,0cbh,0d1h,038h,0beh,0d1h,0ceh,0d0h	; ae05  ..>..9.....8....
	defb 0c3h,0d1h,0cch,039h,0bfh,003h,0c4h,000h,009h,0d1h,03eh,0d6h,0d7h,03dh,0cbh,0d1h	; ae15  ...9......>..=..
	defb 03bh,0cdh,0c9h,0c3h,0cch,03ah,0cdh,0c3h,0ceh,0cah,0c4h,03ah,0beh,0ceh,0c4h,03dh	; ae25  .....:.....:...=
	defb 0bfh,000h,009h,0d1h,03eh,0d6h,0d7h,03dh,0cdh,0d1h,03ch,0cfh,0c7h,0ceh,03ch,0c7h	; ae35  ....>..=..<...<.
	defb 0d0h,0c8h,03ch,0d1h,0c8h,03dh,0dch,0ddh,03eh,0c2h,000h	; ae45  ..<..=..>..

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
; DATOS sin identificar  0xaf5e..0xaf64  (6 bytes)
DATA_AF5E:
	defb 070h,0afh,088h,0afh,0a3h,0afh	; af5e

; ----------------------------------------------------------------------
; DATOS leido_AF64: 6 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (6 bytes)
;   0xaf64..0xaf6a  (6 bytes)
DATA_leido_AF64:
	defb 0c0h,0afh,0dfh,0afh,000h,0b0h	; af64

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaf6a..0xafc0  (86 bytes)
DATA_AF6A:
	defb 01fh,0b0h,03ch,0b0h,057h,0b0h,0aah,0abh,0aah,03fh,0ach,03fh,0aah,0abh,0aah,03fh	; af6a  ..<.W....?.?...?
	defb 0ach,03fh,0aah,0abh,0aah,03fh,0ach,03fh,0aah,0abh,066h,03fh,0a9h,000h,002h,0aah	; af7a  .?...?.?..f?....
	defb 0abh,0aah,03fh,0ach,03fh,0aah,0abh,0aah,03fh,0ach,03fh,0aah,0abh,0aah,03fh,0ach	; af8a  ..?.?...?.?...?.
	defb 03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h,004h,0aah,0abh,0aah,03fh,0ach,03fh	; af9a  ?.?.?f?......?.?
	defb 0aah,0abh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh	; afaa  ...?.?.?.?.?.?.?
	defb 0ach,03fh,066h,03fh,0a9h,000h	; afba

; ----------------------------------------------------------------------
; DATOS leido_AFC0: 95 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (95 bytes)
;   0xafc0..0xb01f  (95 bytes)
DATA_leido_AFC0:
	defb 006h,0aah,0abh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah	; afc0  ....?.?.?.?.?.?.
	defb 03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h,008h	; afd0  ?.?.?.?.?.?f?...
	defb 0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh	; afe0  .?.?.?.?.?.?.?.?
	defb 0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h	; aff0  .?.?.?.?.?.?f?..
	defb 008h,0aah,0abh,0aah,03dh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah	; b000  ....=.?.?.?.?.?.
	defb 03fh,0ach,03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h	; b010  ?.?.?.?.?.?f?..

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb01f..0xb072  (83 bytes)
DATA_B01F:
	defb 00ah,0aah,0abh,0aah,03dh,0ach,03dh,0aah,0abh,0aah,03dh,0ach,03fh,0aah,03fh,0ach	; b01f  ....=.=...=.?.?.
	defb 03fh,0aah,03fh,0ach,03fh,0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h,00ch,0aah,0abh	; b02f  ?.?.?.?.?f?.....
	defb 0aah,03dh,0ach,03dh,0aah,0abh,0aah,03dh,0ach,03dh,0aah,0abh,0aah,03dh,0ach,03fh	; b03f  .=.=...=.=...=.?
	defb 0aah,03fh,0ach,03fh,066h,03fh,0a9h,000h,00eh,0aah,0abh,0aah,03dh,0ach,03dh,0aah	; b04f  .?.?f?......=.=.
	defb 0abh,0aah,03dh,0ach,03dh,0aah,0abh,0aah,03dh,0ach,03dh,0aah,0abh,066h,03dh,0a9h	; b05f  ..=.=...=.=..f=.
	defb 000h,082h,0b0h	; b06f

; ----------------------------------------------------------------------
; DATOS leido_B072: 12 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (12 bytes)
;   0xb072..0xb07e  (12 bytes)
DATA_leido_B072:
	defb 09bh,0b0h,0b6h,0b0h,0d3h,0b0h,0f2h,0b0h,013h,0b1h,032h,0b1h	; b072  ..........2.

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb07e..0xb09b  (29 bytes)
DATA_B07E:
	defb 04fh,0b1h,06ah,0b1h,008h,0b6h,03dh,0b7h,0b8h,066h,03dh,0b9h,03dh,0b7h,0b8h,0b7h	; b07e  O.j...=..f=.=...
	defb 03dh,0b9h,03dh,0b7h,0b8h,0b7h,03dh,0b9h,03dh,0b7h,0b8h,0b7h,000h	; b08e  =.=...=.=....

; ----------------------------------------------------------------------
; DATOS leido_B09B: 180 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (180 bytes)
;   0xb09b..0xb14f  (180 bytes)
DATA_leido_B09B:
	defb 008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03dh,0b7h,0b8h,0b7h,03dh,0b9h	; b09b  ..?f?.?.?.=...=.
	defb 03dh,0b7h,0b8h,0b7h,03dh,0b9h,03dh,0b7h,0b8h,0b7h,000h,008h,0b6h,03fh,066h,03fh	; b0ab  =...=.=......?f?
	defb 0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03dh,0b7h,0b8h	; b0bb  .?.?.?.?.?.?.=..
	defb 0b7h,03dh,0b9h,03dh,0b7h,0b8h,0b7h,000h,008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h	; b0cb  .=.=......?f?.?.
	defb 03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h	; b0db  ?.?.?.?.?.?.?.?.
	defb 03fh,0b9h,03dh,0b7h,0b8h,0b7h,000h,008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh	; b0eb  ?.=......?f?.?.?
	defb 0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh	; b0fb  .?.?.?.?.?.?.?.?
	defb 0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,000h,008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h	; b10b  .?.?.?....?f?.?.
	defb 03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h	; b11b  ?.?.?.?.?.?.?.?.
	defb 03fh,0b9h,03fh,0b7h,0b8h,0b7h,000h,008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh	; b12b  ?.?......?f?.?.?
	defb 0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,03fh,0b9h,03fh	; b13b  .?.?.?.?.?...?.?
	defb 0b7h,0b8h,0b7h,000h	; b14b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb14f..0xb183  (52 bytes)
DATA_B14F:
	defb 008h,0b6h,03fh,066h,03fh,0b9h,03fh,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,03fh,0b9h	; b14f  ..?f?.?.?.?...?.
	defb 03fh,0b7h,0b8h,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,000h,008h,0b6h,03fh,066h,0b8h	; b15f  ?...?.?......?f.
	defb 0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,03fh,0b9h,03fh,0b7h,0b8h,0b7h,03fh,0b9h,03fh	; b16f  .?.?...?.?...?.?
	defb 0b7h,0b8h,0b7h,000h	; b17f

; ----------------------------------------------------------------------
; DATOS leido_B183: 2 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (2 bytes)
;   0xb183..0xb185  (2 bytes)
DATA_leido_B183:
	defb 085h,0b1h	; b183

; ----------------------------------------------------------------------
; DATOS leido_B185: 112 bytes que lee p01:6EEA al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6EEA (112 bytes)
;   0xb185..0xb1f5  (112 bytes)
DATA_leido_B185:
	defb 09eh,09fh,09eh,0a0h,0a1h,0a5h,03ah,0a0h,0a1h,0a0h,0a1h,09eh,09fh,03ah,09eh,09fh	; b185  ......:......:..
	defb 09eh,09fh,0a0h,0a1h,03ah,0a0h,0a1h,0a0h,09eh,0a2h,0a3h,03ah,09eh,09fh,09eh,0a0h	; b195  ....:......:....
	defb 0a1h,0a5h,03ah,0a0h,0a1h,0a0h,0a1h,09eh,09fh,03ch,09eh,09fh,0a0h,0a1h,03ch,0a0h	; b1a5  ..:......<....<.
	defb 09eh,0a2h,0a3h,03ch,09eh,0a0h,0a1h,0a5h,03ch,0a0h,0a1h,09eh,09fh,03ch,09eh,09fh	; b1b5  ...<....<....<..
	defb 0a0h,0a1h,03ch,0a0h,09eh,0a2h,0a3h,03ah,09eh,09fh,09eh,0a0h,0a1h,0a5h,03ah,0a0h	; b1c5  ..<....:......:.
	defb 0a1h,0a0h,0a1h,09eh,09fh,03ah,09eh,09fh,09eh,09fh,0a0h,0a1h,03ah,0a0h,0a1h,0a0h	; b1d5  .....:......:...
	defb 09eh,0a2h,0a3h,03ah,09eh,09fh,09eh,0a0h,0a1h,0a5h,03ah,0a0h,0a1h,0a0h,0a1h,09eh	; b1e5  ...:......:.....

; ----------------------------------------------------------------------
; DATOS tabla_B1F5: tabla que se lee desde HL = 0xB1F5 con un indice
;   (p00:4A5A, p00:4089, add hl,de...); va de su base hasta lo siguiente que
;   hay (otra tabla, otro bloque, codigo, un puntero de otra instruccion o un
;   byte que lee otra al jugar): el tamano no sale de recorrerla, el indice lo
;   da quien llama; lo leen p02:836D (24 bytes)
;   0xb1f5..0xb20d  (24 bytes)
DATA_tabla_B1F5:
	defb 09fh,000h,00dh,0b2h,012h,0b2h,028h,0b3h,00dh,0b2h,00dh,0b2h,03ah,0b5h,01fh,0b6h	; b1f5  ......(.....:...
	defb 085h,0b7h,007h,0bch,0c3h,0bch,00dh,0b2h	; b205  ........

; ----------------------------------------------------------------------
; DATOS leido_B20D: 19 bytes que leen p02:8387, p02:8389, p02:8375, p02:8377,
;   p02:838B, p02:839F al jugar (medido ejecutando el cartucho,
;   tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido); lo leen p02:8387, p02:8389, p02:8375, p02:8377, p02:838B,
;   p02:839F (19 bytes)
;   0xb20d..0xb220  (19 bytes)
DATA_leido_B20D:
	defb 011h,0b2h,0ffh,0ffh,000h,011h,0b2h,080h,000h,01eh,0b2h,000h,001h,011h,0b2h,0ffh	; b20d  ................
	defb 0ffh,003h,008h	; b21d

; ----------------------------------------------------------------------
; DATOS leido_B220: 16 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (16 bytes)
;   0xb220..0xb230  (16 bytes)
DATA_leido_B220:
	defb 030h,0b2h,04fh,0b2h,06eh,0b2h,08dh,0b2h,0ach,0b2h,0cbh,0b2h,0eah,0b2h,009h,0b3h	; b220  0.O.n...........

; ----------------------------------------------------------------------
; DATOS leido_B230: 262 bytes que leen p02:83AA, p02:83BB, p02:83E0, p02:8387,
;   p02:8389, p02:8375 al jugar (medido ejecutando el cartucho,
;   tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido); lo leen p02:83AA, p02:83BB, p02:83E0, p02:8387, p02:8389,
;   p02:8375, p02:8377, p02:838B (262 bytes)
;   0xb230..0xb336  (262 bytes)
DATA_leido_B230:
	defb 0feh,007h,081h,042h,05ah,018h,05ah,042h,081h,081h,0ffh,007h,083h,06ch,010h,038h	; b230  ...BZ.ZB.....l.8
	defb 038h,010h,06ch,083h,0fdh,007h,083h,06ch,010h,038h,038h,010h,06ch,083h,000h,0feh	; b240  8.l....l.88.l...
	defb 00fh,060h,060h,060h,080h,060h,060h,060h,060h,0ffh,00fh,060h,060h,080h,090h,090h	; b250  .```.````..``...
	defb 080h,060h,060h,0fdh,00fh,0e0h,0e0h,0e0h,0e0h,0f0h,0e0h,0e0h,0e0h,000h,0feh,007h	; b260  .``.............
	defb 0c1h,036h,008h,01ch,01ch,008h,036h,0c1h,0ffh,007h,081h,042h,05ah,018h,05ah,042h	; b270  .6....6....BZ.ZB
	defb 081h,081h,0fdh,007h,081h,042h,05ah,018h,05ah,042h,081h,081h,000h,0feh,00fh,060h	; b280  .....BZ.ZB.....`
	defb 060h,080h,080h,080h,060h,060h,060h,0ffh,00fh,060h,060h,060h,090h,060h,060h,060h	; b290  `...```..```.```
	defb 060h,0fdh,00fh,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h,000h,0feh,007h,081h,081h	; b2a0  `...............
	defb 042h,05ah,018h,05ah,042h,081h,0feh,007h,0c1h,036h,008h,01ch,01ch,008h,036h,0c1h	; b2b0  BZ.ZB....6....6.
	defb 0fdh,007h,083h,06ch,010h,038h,038h,010h,06ch,083h,000h,0feh,00fh,060h,060h,080h	; b2c0  ...l.88.l....``.
	defb 090h,090h,080h,060h,060h,0ffh,00fh,060h,060h,080h,080h,080h,080h,060h,060h,0fdh	; b2d0  ...``..``....``.
	defb 00fh,0e0h,0e0h,0f0h,0f0h,0f0h,0e0h,0e0h,0e0h,000h,0feh,007h,083h,06ch,010h,038h	; b2e0  .............l.8
	defb 038h,010h,06ch,083h,0ffh,007h,0c1h,036h,008h,01ch,01ch,008h,036h,0c1h,0fdh,007h	; b2f0  8.l....6....6...
	defb 081h,042h,05ah,018h,05ah,042h,081h,081h,000h,0feh,00fh,060h,060h,060h,060h,080h	; b300  .BZ.ZB.....````.
	defb 060h,060h,060h,0ffh,00fh,060h,060h,080h,090h,090h,080h,060h,060h,0fdh,00fh,0e0h	; b310  ```..``....``...
	defb 0e0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h,000h,011h,0b2h,080h,000h,034h,0b3h,080h,001h	; b320  ............4...
	defb 011h,0b2h,0ffh,0ffh,002h,00ch	; b330

; ----------------------------------------------------------------------
; DATOS leido_B336: 24 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (24 bytes)
;   0xb336..0xb34e  (24 bytes)
DATA_leido_B336:
	defb 04eh,0b3h,077h,0b3h,0a0h,0b3h,0c9h,0b3h,0f2h,0b3h,01bh,0b4h,044h,0b4h,06dh,0b4h	; b336  N.w.........D.m.
	defb 096h,0b4h,0bfh,0b4h,0e8h,0b4h,011h,0b5h	; b346  ........

; ----------------------------------------------------------------------
; DATOS leido_B34E: 506 bytes que leen p02:83AA, p02:83BB, p02:83E0, p02:8387,
;   p02:8389, p02:8375 al jugar (medido ejecutando el cartucho,
;   tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido, con 4 sin leer entre lecturas de la misma rutina: entradas de la
;   misma tabla que las partidas no han pedido); lo leen p02:83AA, p02:83BB,
;   p02:83E0, p02:8387, p02:8389, p02:8375, p02:8377, p02:838B (506 bytes)
;   0xb34e..0xb548  (506 bytes)
DATA_leido_B34E:
	defb 059h,007h,000h,000h,000h,000h,088h,0aah,022h,000h,05ah,007h,000h,000h,000h,000h	; b34e  Y.......".Z.....
	defb 000h,000h,000h,000h,05bh,007h,000h,022h,0aah,088h,000h,000h,000h,000h,05ch,007h	; b35e  ....[.."......\.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,059h,007h,000h,000h,000h,088h,0aah	; b36e  .........Y......
	defb 022h,000h,000h,05ah,007h,000h,000h,000h,000h,000h,000h,000h,000h,05bh,007h,000h	; b37e  "..Z.........[..
	defb 000h,022h,0aah,088h,000h,000h,000h,05ch,007h,000h,000h,000h,000h,000h,000h,000h	; b38e  .".....\........
	defb 000h,000h,059h,007h,000h,000h,088h,0aah,022h,000h,000h,000h,05ah,007h,000h,000h	; b39e  ..Y....."...Z...
	defb 000h,000h,000h,000h,000h,000h,05bh,007h,000h,000h,000h,022h,0aah,088h,000h,000h	; b3ae  ......[...."....
	defb 05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h,000h,059h,007h,000h,088h,0aah	; b3be  \..........Y....
	defb 022h,000h,000h,000h,000h,05ah,007h,000h,000h,000h,000h,000h,000h,000h,000h,05bh	; b3ce  "....Z.........[
	defb 007h,000h,000h,000h,000h,022h,0aah,088h,000h,05ch,007h,000h,000h,000h,000h,000h	; b3de  ....."...\......
	defb 000h,000h,000h,000h,059h,007h,088h,0aah,022h,000h,000h,000h,000h,000h,05ah,007h	; b3ee  ....Y...".....Z.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,05bh,007h,000h,000h,000h,000h,000h,022h	; b3fe  ........[......"
	defb 0aah,088h,05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h,000h,059h,007h,000h	; b40e  ..\..........Y..
	defb 000h,000h,000h,000h,000h,000h,000h,05ah,007h,000h,000h,000h,000h,000h,088h,0aah	; b41e  .......Z........
	defb 022h,05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,007h,022h,0aah,088h	; b42e  "[.........\."..
	defb 000h,000h,000h,000h,000h,000h,059h,007h,000h,000h,000h,000h,000h,000h,000h,000h	; b43e  ......Y.........
	defb 05ah,007h,000h,000h,000h,000h,088h,0aah,022h,000h,05bh,007h,000h,000h,000h,000h	; b44e  Z.......".[.....
	defb 000h,000h,000h,000h,05ch,007h,000h,022h,0aah,088h,000h,000h,000h,000h,000h,059h	; b45e  ....\..".......Y
	defb 007h,000h,000h,000h,000h,000h,000h,000h,000h,05ah,007h,000h,000h,000h,088h,0aah	; b46e  .........Z......
	defb 022h,000h,000h,05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,007h,000h	; b47e  "..[.........\..
	defb 000h,022h,0aah,088h,000h,000h,000h,000h,059h,007h,000h,000h,000h,000h,000h,000h	; b48e  ."......Y.......
	defb 000h,000h,05ah,007h,000h,000h,088h,0aah,022h,000h,000h,000h,05bh,007h,000h,000h	; b49e  ..Z....."...[...
	defb 000h,000h,000h,000h,000h,000h,05ch,007h,000h,000h,000h,022h,0aah,088h,000h,000h	; b4ae  ......\...."....
	defb 000h,059h,007h,000h,000h,000h,000h,000h,000h,000h,000h,05ah,007h,000h,088h,0aah	; b4be  .Y.........Z....
	defb 022h,000h,000h,000h,000h,05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05ch	; b4ce  "....[.........\
	defb 007h,000h,000h,000h,000h,022h,0aah,088h,000h,000h,059h,007h,000h,000h,000h,000h	; b4de  ....."....Y.....
	defb 000h,000h,000h,000h,05ah,007h,088h,0aah,022h,000h,000h,000h,000h,000h,05bh,007h	; b4ee  ....Z...".....[.
	defb 000h,000h,000h,000h,000h,000h,000h,000h,05ch,007h,000h,000h,000h,000h,000h,022h	; b4fe  ........\......"
	defb 0aah,088h,000h,059h,007h,000h,000h,000h,000h,000h,088h,0aah,022h,05ah,007h,000h	; b50e  ...Y........"Z..
	defb 000h,000h,000h,000h,000h,000h,000h,05bh,007h,022h,0aah,088h,000h,000h,000h,000h	; b51e  .......[."......
	defb 000h,05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h,000h,011h,0b2h,060h,000h	; b52e  .\............`.
	defb 046h,0b5h,0a0h,001h,011h,0b2h,0ffh,0ffh,008h,005h	; b53e  F.........

; ----------------------------------------------------------------------
; DATOS leido_B548: 10 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (10 bytes)
;   0xb548..0xb552  (10 bytes)
DATA_leido_B548:
	defb 052h,0b5h,07bh,0b5h,0a4h,0b5h,0cdh,0b5h,0f6h,0b5h	; b548  R.{.......

; ----------------------------------------------------------------------
; DATOS leido_B552: 219 bytes que leen p02:83AA, p02:83BB, p02:83E0, p02:8387,
;   p02:8389, p02:8375 al jugar (medido ejecutando el cartucho,
;   tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido); lo leen p02:83AA, p02:83BB, p02:83E0, p02:8387, p02:8389,
;   p02:8375, p02:8377, p02:838B (219 bytes)
;   0xb552..0xb62d  (219 bytes)
DATA_leido_B552:
	defb 05ah,00fh,060h,060h,060h,060h,080h,060h,060h,060h,05bh,00fh,060h,060h,080h,060h	; b552  Z.````.```[.``.`
	defb 060h,060h,060h,060h,05ch,00fh,060h,060h,080h,060h,060h,060h,060h,060h,05dh,00fh	; b562  ````\.``.`````].
	defb 080h,060h,060h,060h,060h,060h,060h,060h,000h,05ah,00fh,060h,060h,060h,060h,060h	; b572  .```````.Z.`````
	defb 060h,080h,060h,05bh,00fh,060h,060h,060h,060h,080h,060h,060h,060h,05ch,00fh,060h	; b582  `.`[.````.```\.`
	defb 060h,060h,060h,080h,060h,060h,060h,05dh,00fh,060h,060h,080h,060h,060h,060h,060h	; b592  ```.```].``.````
	defb 060h,000h,05ah,00fh,060h,060h,060h,060h,060h,060h,060h,060h,05bh,00fh,060h,060h	; b5a2  `.Z.````````[.``
	defb 060h,060h,060h,060h,060h,080h,05ch,00fh,080h,060h,060h,060h,060h,060h,060h,080h	; b5b2  `````.\..``````.
	defb 05dh,00fh,060h,060h,060h,060h,080h,060h,060h,060h,000h,05ah,00fh,060h,060h,080h	; b5c2  ].````.```.Z.``.
	defb 060h,060h,060h,060h,060h,05bh,00fh,080h,060h,060h,060h,060h,060h,060h,060h,05ch	; b5d2  `````[..```````\
	defb 00fh,060h,060h,060h,080h,060h,060h,060h,060h,05dh,00fh,060h,060h,080h,060h,060h	; b5e2  .```.````].``.``
	defb 060h,060h,060h,000h,05ah,00fh,060h,060h,060h,060h,080h,060h,060h,060h,05bh,00fh	; b5f2  ```.Z.````.```[.
	defb 060h,060h,080h,060h,060h,060h,060h,060h,05ch,00fh,060h,060h,080h,060h,060h,060h	; b602  ``.`````\.``.```
	defb 060h,060h,05dh,00fh,080h,060h,060h,060h,060h,060h,060h,060h,000h,011h,0b2h,060h	; b612  ``]..```````...`
	defb 000h,02bh,0b6h,080h,001h,011h,0b2h,0ffh,0ffh,003h,008h	; b622  .+.........

; ----------------------------------------------------------------------
; DATOS leido_B62D: 16 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (16 bytes)
;   0xb62d..0xb63d  (16 bytes)
DATA_leido_B62D:
	defb 03dh,0b6h,066h,0b6h,08fh,0b6h,0b8h,0b6h,0e1h,0b6h,00ah,0b7h,033h,0b7h,05ch,0b7h	; b62d  =.f.........3.\.

; ----------------------------------------------------------------------
; DATOS leido_B63D: 350 bytes que leen p02:83AA, p02:83BB, p02:83E0, p02:8387,
;   p02:8389, p02:8375 al jugar (medido ejecutando el cartucho,
;   tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido, con 4 sin leer entre lecturas de la misma rutina: entradas de la
;   misma tabla que las partidas no han pedido); lo leen p02:83AA, p02:83BB,
;   p02:83E0, p02:8387, p02:8389, p02:8375, p02:8377, p02:838B (350 bytes)
;   0xb63d..0xb79b  (350 bytes)
DATA_leido_B63D:
	defb 05ch,003h,000h,000h,001h,001h,020h,000h,048h,080h,05ch,004h,080h,048h,000h,020h	; b63d  \..... .H.\..H.
	defb 001h,001h,000h,000h,060h,003h,000h,000h,001h,001h,020h,000h,048h,080h,060h,004h	; b64d  ....`..... .H.`.
	defb 080h,048h,000h,020h,001h,001h,000h,000h,000h,05ch,00bh,000h,000h,060h,060h,0a0h	; b65d  .H. .....\...``.
	defb 000h,0a0h,060h,05ch,00ch,060h,0a0h,000h,0a0h,060h,060h,000h,000h,060h,00bh,000h	; b66d  ..`\.`...``..`..
	defb 000h,050h,050h,0a0h,000h,0a0h,050h,060h,00ch,050h,0a0h,000h,0a0h,050h,050h,000h	; b67d  .PP...P`.P...PP.
	defb 000h,000h,05ch,003h,008h,001h,001h,001h,010h,000h,020h,080h,05ch,004h,080h,020h	; b68d  ..\....... .\..
	defb 000h,010h,001h,001h,001h,008h,060h,003h,008h,001h,001h,001h,010h,000h,020h,080h	; b69d  ......`....... .
	defb 060h,004h,080h,020h,000h,010h,001h,001h,001h,008h,000h,05ch,00bh,0a0h,0a0h,060h	; b6ad  `.. .......\...`
	defb 060h,0a0h,000h,060h,060h,05ch,00ch,060h,060h,000h,0a0h,060h,060h,0a0h,0a0h,060h	; b6bd  `..``\.``..``..`
	defb 00bh,0a0h,0a0h,050h,050h,0a0h,000h,050h,050h,060h,00ch,050h,050h,0a0h,000h,050h	; b6cd  ...PP..PP`.PP..P
	defb 050h,0a0h,0a0h,000h,05ch,003h,002h,000h,001h,001h,002h,000h,020h,080h,05ch,004h	; b6dd  P...\....... .\.
	defb 080h,020h,000h,002h,001h,001h,000h,002h,060h,003h,002h,000h,001h,001h,002h,000h	; b6ed  . ......`.......
	defb 020h,080h,060h,004h,080h,020h,000h,002h,001h,001h,000h,002h,000h,05ch,00bh,0a0h	; b6fd   .`.. .......\..
	defb 000h,060h,060h,060h,000h,060h,060h,05ch,00ch,060h,060h,000h,060h,060h,060h,000h	; b70d  .```.``\.``.```.
	defb 0a0h,060h,00bh,0a0h,000h,050h,050h,050h,000h,050h,050h,060h,00ch,050h,050h,000h	; b71d  .`...PPP.PP`.PP.
	defb 050h,050h,050h,000h,0a0h,000h,05ch,003h,000h,000h,001h,001h,002h,000h,020h,080h	; b72d  PPP...\....... .
	defb 05ch,004h,080h,020h,000h,002h,001h,001h,000h,000h,060h,003h,000h,000h,001h,001h	; b73d  \.. ......`.....
	defb 002h,000h,020h,080h,060h,004h,080h,020h,000h,002h,001h,001h,000h,000h,000h,05ch	; b74d  .. .`.. .......\
	defb 00bh,000h,000h,060h,060h,060h,000h,060h,060h,05ch,00ch,060h,060h,000h,060h,060h	; b75d  ...```.``\.``.``
	defb 060h,000h,000h,060h,00bh,000h,000h,050h,050h,050h,000h,050h,050h,060h,00ch,050h	; b76d  `..`...PPP.PP`.P
	defb 050h,000h,050h,050h,050h,000h,000h,000h,011h,0b2h,060h,000h,099h,0b7h,000h,001h	; b77d  P.PPP.....`.....
	defb 097h,0b8h,080h,001h,0e1h,0bah,020h,002h,011h,0b2h,0ffh,0ffh,006h,004h	; b78d  ...... .......

; ----------------------------------------------------------------------
; DATOS leido_B79B: 8 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (8 bytes)
;   0xb79b..0xb7a3  (8 bytes)
DATA_leido_B79B:
	defb 0a3h,0b7h,0e0h,0b7h,01dh,0b8h,05ah,0b8h	; b79b  ......Z.

; ----------------------------------------------------------------------
; DATOS leido_B7A3: 246 bytes que leen p02:83AA, p02:83BB, p02:83E0, p02:838B,
;   p02:839F al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p02:83AA, p02:83BB, p02:83E0, p02:838B, p02:839F (246 bytes)
;   0xb7a3..0xb899  (246 bytes)
DATA_leido_B7A3:
	defb 05ah,007h,040h,000h,002h,000h,008h,000h,040h,000h,05bh,007h,000h,020h,002h,000h	; b7a3  Z.@.....@.[.. ..
	defb 008h,040h,000h,008h,05ch,007h,000h,000h,000h,000h,000h,000h,000h,000h,05dh,007h	; b7b3  .@..\.........].
	defb 000h,000h,000h,000h,006h,009h,009h,006h,05eh,007h,000h,000h,030h,048h,048h,030h	; b7c3  ........^...0HH0
	defb 000h,000h,05fh,007h,010h,028h,010h,000h,000h,000h,000h,000h,000h,05ah,007h,000h	; b7d3  .._..(.......Z..
	defb 000h,000h,004h,000h,020h,000h,000h,05bh,007h,010h,000h,002h,000h,000h,040h,004h	; b7e3  .... ..[......@.
	defb 000h,05ch,007h,000h,000h,002h,040h,000h,000h,010h,000h,05dh,007h,000h,000h,060h	; b7f3  .\....@....]...`
	defb 090h,090h,060h,000h,000h,05eh,007h,000h,000h,00ch,012h,012h,00ch,000h,000h,05fh	; b803  ..`..^........._
	defb 007h,000h,000h,000h,000h,000h,000h,000h,000h,000h,05ah,007h,000h,000h,000h,000h	; b813  ..........Z.....
	defb 000h,000h,000h,000h,05bh,007h,000h,008h,000h,000h,000h,010h,000h,000h,05ch,007h	; b823  ....[.........\.
	defb 000h,008h,000h,000h,000h,040h,000h,000h,05dh,007h,006h,009h,009h,006h,000h,000h	; b833  .....@..].......
	defb 000h,000h,05eh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05fh,007h,000h,000h	; b843  ..^........._...
	defb 000h,000h,020h,050h,020h,000h,000h,05ah,007h,020h,002h,000h,010h,000h,040h,000h	; b853  .. P ..Z. ....@.
	defb 002h,05bh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05ch,007h,000h,000h,000h	; b863  .[.........\....
	defb 000h,010h,000h,000h,000h,05dh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05eh	; b873  .....].........^
	defb 007h,000h,000h,000h,000h,00ch,012h,012h,00ch,05fh,007h,000h,000h,008h,014h,008h	; b883  ........._......
	defb 000h,000h,000h,000h,002h,008h	; b893

; ----------------------------------------------------------------------
; DATOS leido_B899: 16 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (16 bytes)
;   0xb899..0xb8a9  (16 bytes)
DATA_leido_B899:
	defb 0a9h,0b8h,0f0h,0b8h,037h,0b9h,07eh,0b9h,0c5h,0b9h,00ch,0bah,053h,0bah,09ah,0bah	; b899  ....7.~.....S...

; ----------------------------------------------------------------------
; DATOS leido_B8A9: 570 bytes que leen p02:83AA, p02:83BB, p02:83E0, p02:838B,
;   p02:839F al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p02:83AA, p02:83BB, p02:83E0, p02:838B, p02:839F (570 bytes)
;   0xb8a9..0xbae3  (570 bytes)
DATA_leido_B8A9:
	defb 05dh,007h,000h,000h,000h,000h,006h,009h,009h,006h,05eh,007h,000h,000h,030h,048h	; b8a9  ].........^...0H
	defb 048h,030h,000h,000h,05fh,007h,010h,028h,010h,000h,000h,000h,000h,000h,0bch,007h	; b8b9  H0.._..(........
	defb 030h,078h,078h,036h,06fh,007h,0f6h,060h,0bdh,007h,006h,06fh,0e0h,0f6h,06ch,01eh	; b8c9  0xx6o..`...o..l.
	defb 01eh,00ch,0beh,007h,060h,0f6h,007h,06fh,036h,078h,078h,030h,0bfh,007h,00ch,01eh	; b8d9  ....`..o6xx0....
	defb 01eh,06ch,0f6h,0e0h,06fh,006h,000h,05dh,007h,000h,000h,060h,090h,090h,060h,000h	; b8e9  .l..o..]...`..`.
	defb 000h,05eh,007h,000h,000h,00ch,012h,012h,00ch,000h,000h,05fh,007h,000h,000h,000h	; b8f9  .^........._....
	defb 000h,000h,000h,000h,000h,0bch,00fh,090h,080h,080h,060h,080h,086h,060h,060h,0bdh	; b909  ..........`..``.
	defb 00fh,060h,060h,086h,080h,060h,080h,080h,090h,0beh,00fh,060h,060h,086h,080h,060h	; b919  .``..`.....``..`
	defb 080h,080h,090h,0bfh,00fh,090h,080h,080h,060h,080h,086h,060h,060h,000h,05dh,007h	; b929  ........`..``.].
	defb 006h,009h,009h,006h,000h,000h,000h,000h,05eh,007h,000h,000h,000h,000h,000h,000h	; b939  ........^.......
	defb 000h,000h,05fh,007h,000h,000h,000h,000h,020h,050h,020h,000h,0bch,007h,006h,06fh	; b949  .._..... P ....o
	defb 0e0h,0f6h,06ch,01eh,01eh,00ch,0bdh,007h,060h,0f6h,007h,06fh,036h,078h,078h,030h	; b959  ..l.....`..o6xx0
	defb 0beh,007h,00ch,01eh,01eh,06ch,0f6h,0e0h,06fh,006h,0bfh,007h,030h,078h,078h,036h	; b969  .....l..o...0xx6
	defb 06fh,007h,0f6h,060h,000h,05dh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05eh	; b979  o..`.].........^
	defb 007h,000h,000h,000h,000h,00ch,012h,012h,00ch,05fh,007h,000h,000h,008h,014h,008h	; b989  ........._......
	defb 000h,000h,000h,0bch,00fh,060h,060h,086h,080h,060h,080h,080h,090h,0bdh,00fh,060h	; b999  .....``..`.....`
	defb 060h,086h,080h,060h,080h,080h,090h,0beh,00fh,090h,080h,080h,060h,080h,086h,060h	; b9a9  `..`........`..`
	defb 060h,0bfh,00fh,090h,080h,080h,060h,080h,086h,060h,060h,000h,05dh,007h,000h,000h	; b9b9  `.....`..``.]...
	defb 000h,000h,006h,009h,009h,006h,05eh,007h,000h,000h,030h,048h,048h,030h,000h,000h	; b9c9  ......^...0HH0..
	defb 05fh,007h,010h,028h,010h,000h,000h,000h,000h,000h,0bch,007h,060h,0f6h,007h,06fh	; b9d9  _..(........`..o
	defb 036h,078h,078h,030h,0bdh,007h,00ch,01eh,01eh,06ch,0f6h,0e0h,06fh,006h,0beh,007h	; b9e9  6xx0.....l..o...
	defb 030h,078h,078h,036h,06fh,007h,0f6h,060h,0bfh,007h,006h,06fh,0e0h,0f6h,06ch,01eh	; b9f9  0xx6o..`...o..l.
	defb 01eh,00ch,000h,05dh,007h,000h,000h,060h,090h,090h,060h,000h,000h,05eh,007h,000h	; ba09  ...]...`..`..^..
	defb 000h,00ch,012h,012h,00ch,000h,000h,05fh,007h,000h,000h,000h,000h,000h,000h,000h	; ba19  ......._........
	defb 000h,0bch,00fh,060h,060h,086h,080h,060h,080h,080h,090h,0bdh,00fh,090h,080h,080h	; ba29  ...``..`........
	defb 060h,080h,086h,060h,060h,0beh,00fh,090h,080h,080h,060h,080h,086h,060h,060h,0bfh	; ba39  `..``.....`..``.
	defb 00fh,060h,060h,086h,080h,060h,080h,080h,090h,000h,05dh,007h,006h,009h,009h,006h	; ba49  .``..`....].....
	defb 000h,000h,000h,000h,05eh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05fh,007h	; ba59  ....^........._.
	defb 000h,000h,000h,000h,020h,050h,020h,000h,0bch,007h,00ch,01eh,01eh,06ch,0f6h,0e0h	; ba69  .... P ......l..
	defb 06fh,006h,0bdh,007h,030h,078h,078h,036h,06fh,007h,0f6h,060h,0beh,007h,006h,06fh	; ba79  o...0xx6o..`...o
	defb 0e0h,0f6h,06ch,01eh,01eh,00ch,0bfh,007h,060h,0f6h,007h,06fh,036h,078h,078h,030h	; ba89  ..l.....`..o6xx0
	defb 000h,05dh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05eh,007h,000h,000h,000h	; ba99  .].........^....
	defb 000h,00ch,012h,012h,00ch,05fh,007h,000h,000h,008h,014h,008h,000h,000h,000h,0bch	; baa9  ....._..........
	defb 00fh,090h,080h,080h,060h,080h,086h,060h,060h,0bdh,00fh,090h,080h,080h,060h,080h	; bab9  ....`..``.....`.
	defb 086h,060h,060h,0beh,00fh,060h,060h,086h,080h,060h,080h,080h,090h,0bfh,00fh,060h	; bac9  .``..``..`.....`
	defb 060h,086h,080h,060h,080h,080h,090h,000h,004h,004h	; bad9  `..`......

; ----------------------------------------------------------------------
; DATOS leido_BAE3: 8 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (8 bytes)
;   0xbae3..0xbaeb  (8 bytes)
DATA_leido_BAE3:
	defb 0ebh,0bah,032h,0bbh,079h,0bbh,0c0h,0bbh	; bae3  ..2.y...

; ----------------------------------------------------------------------
; DATOS leido_BAEB: 302 bytes que leen p02:83AA, p02:83BB, p02:83E0, p02:8387,
;   p02:8389, p02:8375 al jugar (medido ejecutando el cartucho,
;   tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido); lo leen p02:83AA, p02:83BB, p02:83E0, p02:8387, p02:8389,
;   p02:8375, p02:8377, p02:838B (302 bytes)
;   0xbaeb..0xbc19  (302 bytes)
DATA_leido_BAEB:
	defb 05dh,007h,000h,000h,000h,000h,006h,009h,009h,006h,05eh,007h,000h,000h,030h,048h	; baeb  ].........^...0H
	defb 048h,030h,000h,000h,05fh,007h,010h,028h,010h,000h,000h,000h,000h,000h,060h,007h	; bafb  H0.._..(......`.
	defb 000h,000h,060h,070h,03ch,01fh,01fh,00fh,061h,007h,000h,000h,006h,00eh,03ch,0f8h	; bb0b  ..`p<...a.....<.
	defb 0f8h,070h,062h,007h,030h,070h,0f0h,0f8h,0f8h,03ch,00eh,006h,063h,007h,00eh,00ch	; bb1b  .pb.0p...<..c...
	defb 00eh,01fh,01fh,03ch,070h,060h,000h,05dh,007h,000h,000h,060h,090h,090h,060h,000h	; bb2b  ...<p`.]...`..`.
	defb 000h,05eh,007h,000h,000h,00ch,012h,012h,00ch,000h,000h,05fh,007h,000h,000h,000h	; bb3b  .^........._....
	defb 000h,000h,000h,000h,000h,060h,00fh,0e0h,0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,061h	; bb4b  .....`.........a
	defb 00fh,0e0h,0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,062h,00fh,0f0h,0f0h,0f0h,0f0h,0f0h	; bb5b  .........b......
	defb 0f0h,0e0h,0e0h,063h,00fh,0f0h,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h,000h,05dh,007h	; bb6b  ...c..........].
	defb 006h,009h,009h,006h,000h,000h,000h,000h,05eh,007h,000h,000h,000h,000h,000h,000h	; bb7b  ........^.......
	defb 000h,000h,05fh,007h,000h,000h,000h,000h,020h,050h,020h,000h,060h,007h,0c0h,0e0h	; bb8b  .._..... P .`...
	defb 070h,03ch,01fh,01bh,00ch,00ch,061h,007h,003h,007h,00eh,03ch,0f8h,0d8h,070h,030h	; bb9b  p<....a....<..p0
	defb 062h,007h,030h,030h,0d8h,0f8h,03ch,00eh,007h,003h,063h,007h,00ch,00eh,01bh,01fh	; bbab  b.00..<...c.....
	defb 03ch,070h,0e0h,0c0h,000h,05dh,007h,000h,000h,000h,000h,000h,000h,000h,000h,05eh	; bbbb  <p...].........^
	defb 007h,000h,000h,000h,000h,00ch,012h,012h,00ch,05fh,007h,000h,000h,008h,014h,008h	; bbcb  ........._......
	defb 000h,000h,000h,060h,00fh,0e0h,0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,061h,00fh,0e0h	; bbdb  ...`.........a..
	defb 0e0h,0e0h,0f0h,0f0h,0f0h,0f0h,0f0h,062h,00fh,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h	; bbeb  .......b........
	defb 0e0h,063h,00fh,0f0h,0f0h,0f0h,0f0h,0f0h,0e0h,0e0h,0e0h,000h,011h,0b2h,040h,000h	; bbfb  .c............@.
	defb 017h,0bch,0c0h,001h,07ch,0bch,020h,002h,011h,0b2h,0ffh,0ffh,008h,003h	; bc0b  ....|. .......

; ----------------------------------------------------------------------
; DATOS leido_BC19: 6 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (6 bytes)
;   0xbc19..0xbc1f  (6 bytes)
DATA_leido_BC19:
	defb 01fh,0bch,03eh,0bch,05dh,0bch	; bc19

; ----------------------------------------------------------------------
; DATOS leido_BC1F: 94 bytes que leen p02:83AA, p02:83BB, p02:83E0, p02:838B
;   al jugar (medido ejecutando el cartucho, tools/cobertura.py y
;   tools/lee_sonidos.py; el tamano es lo que se lee seguido); lo leen
;   p02:83AA, p02:83BB, p02:83E0, p02:838B (94 bytes)
;   0xbc1f..0xbc7d  (94 bytes)
DATA_leido_BC1F:
	defb 060h,007h,000h,00ah,000h,000h,0f8h,000h,000h,000h,061h,007h,000h,00ah,000h,000h	; bc1f  `.........a.....
	defb 01fh,000h,000h,000h,062h,00fh,050h,050h,050h,050h,040h,050h,050h,050h,000h,060h	; bc2f  ....b.PPPP@PPP.`
	defb 007h,000h,00ah,000h,000h,0ffh,000h,000h,000h,061h,007h,000h,00ah,000h,000h,0f8h	; bc3f  .........a......
	defb 000h,000h,000h,062h,00fh,050h,050h,050h,050h,040h,050h,050h,050h,000h,060h,007h	; bc4f  ...b.PPPP@PPP.`.
	defb 000h,00ah,000h,000h,01fh,000h,000h,000h,061h,007h,000h,00ah,000h,000h,0ffh,000h	; bc5f  ........a.......
	defb 000h,000h,062h,00fh,050h,040h,040h,040h,040h,040h,040h,040h,000h,008h	; bc6f  ..b.P@@@@@@@..

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbc7d..0xbcc5  (72 bytes)
DATA_BC7D:
	defb 003h,084h,0bch,099h,0bch,0aeh,0bch,05ah,007h,000h,00ah,000h,000h,0f8h,000h,000h	; bc7d  .......Z........
	defb 000h,059h,007h,000h,00ah,000h,000h,01fh,000h,000h,000h,000h,05ah,007h,000h,00ah	; bc8d  .Y..........Z...
	defb 000h,000h,0ffh,000h,000h,000h,059h,007h,000h,00ah,000h,000h,0f8h,000h,000h,000h	; bc9d  ......Y.........
	defb 000h,05ah,007h,000h,00ah,000h,000h,01fh,000h,000h,000h,059h,007h,000h,00ah,000h	; bcad  .Z.........Y....
	defb 000h,0ffh,000h,000h,000h,000h,011h,0b2h	; bcbd  ........

; ----------------------------------------------------------------------
; DATOS leido_BCC5: 12 bytes que leen p02:8375, p02:8377, p02:8387, p02:8389,
;   p02:838B, p02:839F al jugar (medido ejecutando el cartucho,
;   tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que se lee
;   seguido, con 4 sin leer entre lecturas de la misma rutina: entradas de la
;   misma tabla que las partidas no han pedido); lo leen p02:8375, p02:8377,
;   p02:8387, p02:8389, p02:838B, p02:839F (12 bytes)
;   0xbcc5..0xbcd1  (12 bytes)
DATA_leido_BCC5:
	defb 020h,000h,0cfh,0bch,060h,002h,011h,0b2h,0ffh,0ffh,006h,006h	; bcc5   ...`.......

; ----------------------------------------------------------------------
; DATOS leido_BCD1: 12 bytes que leen p00:4A60, p00:4A62 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p00:4A60, p00:4A62 (12 bytes)
;   0xbcd1..0xbcdd  (12 bytes)
DATA_leido_BCD1:
	defb 0ddh,0bch,0f2h,0bch,007h,0bdh,01ch,0bdh,031h,0bdh,046h,0bdh	; bcd1  ........1.F.

; ----------------------------------------------------------------------
; DATOS leido_BCDD: 126 bytes que leen p02:83AA, p02:83BB, p02:83E0 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p02:83AA, p02:83BB, p02:83E0
;   (126 bytes)
;   0xbcdd..0xbd5b  (126 bytes)
DATA_leido_BCDD:
	defb 063h,00fh,040h,040h,040h,040h,040h,040h,080h,040h,064h,00fh,000h,000h,050h,045h	; bcdd  c.@@@@@@.@d...PE
	defb 045h,050h,000h,000h,000h,063h,00fh,040h,040h,040h,040h,040h,040h,090h,040h,064h	; bced  EP...c.@@@@@@.@d
	defb 00fh,000h,000h,050h,095h,095h,050h,000h,000h,000h,063h,00fh,040h,040h,040h,040h	; bcfd  ...P..P...c.@@@@
	defb 040h,040h,0b0h,040h,064h,00fh,000h,000h,050h,0b5h,0b5h,050h,000h,000h,000h,063h	; bd0d  @@.@d...P..P...c
	defb 00fh,040h,040h,040h,040h,040h,040h,090h,040h,064h,00fh,000h,000h,050h,095h,095h	; bd1d  .@@@@@@.@d...P..
	defb 050h,000h,000h,000h,063h,00fh,040h,040h,040h,040h,040h,040h,080h,040h,064h,00fh	; bd2d  P...c.@@@@@@.@d.
	defb 000h,000h,050h,045h,045h,050h,000h,000h,000h,063h,00fh,040h,040h,040h,040h,040h	; bd3d  ..PEEP...c.@@@@@
	defb 040h,040h,040h,064h,00fh,000h,000h,000h,040h,040h,000h,000h,000h,000h	; bd4d  @@@d....@@....

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

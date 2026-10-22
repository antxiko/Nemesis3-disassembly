; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 31 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS rle_vram_9FCD_cola: graficos comprimidos a la VRAM (p00:4B3C): 0
;   acaba, n < 0x80 repite el byte de detras, 0x80 y una direccion nueva,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0
;   (sigue del banco 30); lo leen p00:4B3C (136 bytes)
;   0xa000..0xa088  (136 bytes)
DATA_rle_vram_9FCD_cola:
	defb 0f7h,06bh,08ch,057h,003h,017h,003h,0abh,0f7h,06bh,08ch,000h,00dh,003h,007h,003h	; a000  .k.W.....k......
	defb 0ach,071h,0ach,000h,098h,0bch,03eh,07eh,003h,000h,09dh,001h,000h,001h,001h,000h	; a010  .q....>~........
	defb 0d6h,0afh,05fh,08dh,002h,0deh,03ah,0fch,003h,003h,001h,001h,000h,000h,001h,001h	; a020  .._...:.........
	defb 03fh,02ah,015h,0bfh,053h,08ch,05eh,08ah,004h,001h,09fh,002h,003h,002h,002h,0fch	; a030  ?*..S.^.........
	defb 0fch,078h,028h,090h,070h,060h,0e0h,045h,0dfh,01fh,0efh,0f2h,011h,02ah,0f8h,004h	; a040  .x(.p`.E.....*..
	defb 005h,005h,003h,00ah,00eh,01ch,018h,0c0h,0c0h,080h,005h,000h,083h,030h,060h,080h	; a050  .............0`.
	defb 009h,000h,0a4h,01eh,03fh,03fh,01eh,000h,002h,01fh,007h,003h,00fh,002h,001h,000h	; a060  ....??..........
	defb 000h,080h,0f8h,0e0h,080h,000h,080h,030h,060h,080h,000h,023h,055h,06bh,0f7h,098h	; a070  .......0`..#Uk..
	defb 0bdh,03ch,0dbh,0e7h,0e9h,0eeh,0deh,000h	; a080  .<......

; ----------------------------------------------------------------------
; DATOS rle_vram_A088: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (145
;   bytes)
;   0xa088..0xa119  (145 bytes)
DATA_rle_vram_A088:
	defb 008h,0f0h,08ah,060h,080h,090h,060h,080h,060h,090h,090h,060h,080h,006h,090h,084h	; a088  ...`..`.`..`....
	defb 060h,090h,090h,080h,004h,090h,082h,060h,080h,006h,090h,081h,080h,007h,090h,081h	; a098  `......`........
	defb 080h,003h,090h,081h,0a0h,003h,080h,08bh,060h,080h,090h,0a0h,0a9h,0a8h,0a9h,098h	; a0a8  ........`.......
	defb 060h,080h,090h,004h,080h,082h,090h,080h,003h,090h,003h,0a0h,081h,0b0h,004h,090h	; a0b8  `...............
	defb 004h,080h,08bh,090h,0a0h,0a0h,0a9h,0a9h,090h,0a0h,0a0h,090h,080h,080h,005h,090h	; a0c8  ................
	defb 088h,0b9h,0a9h,0a9h,090h,090h,0a0h,0a0h,0a9h,008h,090h,003h,0b0h,081h,090h,003h	; a0d8  ................
	defb 0a0h,092h,090h,0a9h,090h,090h,080h,080h,0a9h,0a9h,0a0h,090h,090h,0a0h,090h,090h	; a0e8  ................
	defb 0a0h,090h,0a0h,080h,007h,0a0h,008h,0b0h,008h,090h,004h,0f0h,082h,050h,040h,00ah	; a0f8  .............P@.
	defb 0f0h,003h,0b0h,003h,090h,08ah,080h,060h,090h,080h,080h,060h,090h,090h,080h,060h	; a108  .......`...`...`
	defb 000h	; a118

; ----------------------------------------------------------------------
; DATOS rle_vram_A119: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (143
;   bytes)
;   0xa119..0xa1a8  (143 bytes)
DATA_rle_vram_A119:
	defb 0b8h,057h,0a7h,050h,0ach,000h,0ddh,000h,01fh,0c2h,0f0h,000h,0feh,000h,0bbh,000h	; a119  .W.P............
	defb 01fh,010h,03ch,001h,03ch,011h,010h,013h,011h,052h,052h,014h,052h,014h,050h,010h	; a129  ..<.<....RR.R.P.
	defb 0f0h,0a0h,0f0h,0a0h,00fh,000h,017h,010h,01fh,05ah,0ffh,024h,0a5h,05ah,0ffh,024h	; a139  .........Z.$.Z.$
	defb 000h,0c3h,042h,0cbh,042h,0cbh,042h,0cbh,042h,008h,001h,004h,000h,08ah,038h,000h	; a149  ..B.B.B.B.....8.
	defb 0feh,06ch,000h,004h,003h,005h,005h,003h,004h,000h,086h,0c0h,0fch,0e0h,000h,000h	; a159  .l..............
	defb 01fh,004h,001h,003h,000h,0b1h,0ffh,06eh,010h,067h,000h,0f0h,000h,000h,0ffh,080h	; a169  .......n.g......
	defb 024h,0e0h,024h,0c0h,000h,000h,0ffh,03ch,099h,066h,07eh,099h,066h,07eh,099h,000h	; a179  $.$....<.f~.f~..
	defb 005h,042h,005h,042h,005h,042h,005h,0dbh,03ch,0c3h,0bdh,042h,0c3h,042h,0e7h,002h	; a189  .B.B.B..<..B.B..
	defb 005h,002h,005h,002h,005h,002h,005h,004h,000h,084h,01fh,010h,013h,017h,000h	; a199  ...............

; ----------------------------------------------------------------------
; DATOS rle_vram_A1A8: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (141
;   bytes)
;   0xa1a8..0xa235  (141 bytes)
DATA_rle_vram_A1A8:
	defb 084h,0c0h,020h,0c0h,020h,003h,0c0h,083h,0c2h,0c0h,030h,003h,0c0h,086h,020h,0c0h	; a1a8  .. . .....0... .
	defb 0c2h,0c0h,030h,090h,003h,0c0h,0a4h,020h,0c0h,020h,020h,0c0h,0c0h,020h,020h,0c0h	; a1b8  ..0.... .  ..  .
	defb 030h,060h,062h,060h,0c6h,0c0h,0c0h,020h,030h,0f0h,080h,0f8h,060h,0f0h,080h,0f8h	; a1c8  0`b`... 0...`...
	defb 0f0h,060h,086h,060h,086h,060h,086h,060h,086h,0c0h,0c0h,003h,020h,002h,0c0h,081h	; a1d8  .`.`.`.`.... ...
	defb 020h,004h,0c0h,084h,0c2h,0c0h,020h,0c0h,00ah,0f0h,081h,070h,004h,0f0h,081h,070h	; a1e8   ..... ....p...p
	defb 003h,0c0h,004h,020h,0b1h,070h,0c0h,030h,020h,0c0h,0c8h,0c0h,0c0h,070h,086h,060h	; a1f8  ... .p.0 ....p.`
	defb 086h,080h,086h,080h,080h,070h,076h,090h,0a0h,080h,090h,0a0h,080h,090h,090h,098h	; a208  .....pv.........
	defb 0a0h,098h,0a0h,098h,0a0h,096h,080h,080h,087h,060h,060h,086h,060h,060h,0a0h,098h	; a218  .........``.``..
	defb 0a0h,098h,0a0h,098h,0a0h,096h,005h,030h,083h,0c0h,030h,0c0h,000h	; a228  .......0..0..

; ----------------------------------------------------------------------
; DATOS rle_vram_A235: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (171
;   bytes)
;   0xa235..0xa2e0  (171 bytes)
DATA_rle_vram_A235:
	defb 002h,000h,086h,02ah,000h,000h,02ah,000h,000h,006h,0e3h,082h,0e0h,0e3h,006h,0c0h	; a235  ...*..*.........
	defb 0dch,000h,0e8h,0e0h,003h,000h,0b6h,0ffh,019h,0ffh,000h,0a0h,0e8h,000h,0e8h,0e8h	; a245  ................
	defb 090h,0e0h,000h,067h,000h,0e0h,0e3h,0eah,000h,0f1h,012h,068h,080h,000h,0f8h,0a8h	; a255  ...g.......h....
	defb 0a8h,0f0h,008h,012h,0f1h,000h,0fah,0fbh,0f0h,0c0h,01ah,008h,0f0h,0a8h,0a8h,0f8h	; a265  ................
	defb 000h,080h,068h,020h,09ah,000h,077h,0dfh,009h,0b6h,048h,048h,0b6h,009h,0dfh,077h	; a275  ..h ..w...HH...w
	defb 000h,09ah,020h,000h,000h,007h,00fh,01fh,03ch,038h,01eh,000h,000h,083h,0e7h,079h	; a285  .. .....<8.....y
	defb 07eh,0bfh,05fh,03eh,087h,0d5h,016h,009h,07fh,0afh,047h,00bh,001h,006h,000h,092h	; a295  ~._>......G.....
	defb 0aah,00ah,0fah,07fh,07bh,033h,024h,000h,0a8h,067h,0e2h,0b0h,0f0h,070h,030h,070h	; a2a5  ....{3$..g...p0p
	defb 0b0h,020h,006h,000h,088h,03ch,076h,0c3h,0c5h,085h,0d9h,062h,03ch,003h,000h,002h	; a2b5  . ...<v....b<...
	defb 040h,082h,000h,040h,003h,000h,081h,060h,004h,0f0h,081h,060h,005h,000h,08bh,042h	; a2c5  @..@...`...`...B
	defb 0a5h,042h,018h,018h,024h,018h,0a5h,0a5h,05ah,024h,000h	; a2d5  .B..$...Z$.

; ----------------------------------------------------------------------
; DATOS rle_vram_A2E0: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (132
;   bytes)
;   0xa2e0..0xa364  (132 bytes)
DATA_rle_vram_A2E0:
	defb 008h,0c0h,083h,050h,070h,050h,003h,040h,081h,0f0h,004h,070h,099h,050h,070h,050h	; a2e0  ...PpP.@...p.PpP
	defb 070h,070h,040h,050h,050h,075h,050h,050h,040h,000h,020h,050h,050h,070h,050h,050h	; a2f0  pp@PPuPP@. PPpPP
	defb 040h,040h,074h,070h,070h,0f0h,003h,040h,081h,070h,003h,050h,092h,040h,050h,070h	; a300  @@tpp..@.p.P.@Pp
	defb 040h,070h,070h,040h,070h,070h,0f0h,050h,040h,040h,070h,040h,070h,050h,040h,006h	; a310  @pp@pp.P@@p@pP@.
	defb 050h,08ah,074h,040h,050h,050h,020h,020h,050h,050h,040h,074h,003h,050h,003h,080h	; a320  P.t@PP  PP@t.P..
	defb 003h,090h,082h,0a0h,090h,004h,080h,004h,090h,085h,080h,098h,090h,0a9h,0a9h,003h	; a330  ................
	defb 090h,081h,080h,007h,090h,082h,080h,0a8h,004h,090h,002h,0a0h,002h,080h,082h,090h	; a340  ................
	defb 080h,004h,090h,081h,080h,00fh,0a0h,008h,0b0h,008h,050h,009h,0f0h,004h,050h,083h	; a350  ..........P...P.
	defb 0f5h,0f0h,050h,000h	; a360

; ----------------------------------------------------------------------
; DATOS rle_vram_A364: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (145
;   bytes)
;   0xa364..0xa3f5  (145 bytes)
DATA_rle_vram_A364:
	defb 002h,000h,081h,004h,005h,000h,08dh,018h,050h,0e4h,0d9h,0ebh,034h,05eh,01ch,000h	; a364  ........P...4^..
	defb 000h,01eh,03fh,01eh,006h,000h,081h,0ffh,004h,000h,085h,01fh,00fh,007h,003h,003h	; a374  ..?.............
	defb 004h,000h,097h,0c0h,070h,03eh,0bfh,0b8h,060h,000h,000h,020h,050h,020h,080h,020h	; a384  ....p>..`.. P .
	defb 050h,020h,000h,008h,010h,004h,012h,020h,008h,004h,005h,000h,002h,002h,004h,000h	; a394  P ..... ........
	defb 002h,003h,095h,007h,00fh,01fh,000h,00bh,00bh,000h,000h,001h,001h,003h,03fh,03fh	; a3a4  ..............??
	defb 07fh,0fbh,0d6h,0eeh,0bdh,07bh,003h,001h,003h,000h,002h,002h,095h,000h,07bh,0bdh	; a3b4  .....{........{.
	defb 0eeh,0d6h,0fbh,07fh,03fh,03fh,08eh,087h,0c0h,076h,03bh,09dh,009h,009h,0c3h,0b8h	; a3c4  ....??...v......
	defb 0dch,0d8h,004h,000h,084h,01fh,07dh,0fch,033h,004h,000h,084h,0f1h,0bch,0deh,0c7h	; a3d4  ......}.3.......
	defb 004h,000h,084h,0e7h,0f1h,01dh,031h,006h,000h,086h,0c0h,0e0h,0f0h,0f8h,0fch,0feh	; a3e4  ......1.........
	defb 000h	; a3f4

; ----------------------------------------------------------------------
; DATOS rle_vram_A3F5: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (67
;   bytes)
;   0xa3f5..0xa438  (67 bytes)
DATA_rle_vram_A3F5:
	defb 008h,0f0h,008h,0c0h,008h,090h,008h,070h,008h,090h,010h,0f0h,008h,0b0h,006h,070h	; a3f5  .......p.......p
	defb 002h,050h,005h,090h,086h,097h,094h,090h,090h,070h,040h,006h,090h,082h,095h,094h	; a405  .P.......p@.....
	defb 005h,096h,005h,090h,083h,070h,050h,050h,005h,096h,083h,095h,094h,090h,00ch,096h	; a415  .....pPP........
	defb 004h,090h,003h,096h,005h,060h,004h,096h,004h,090h,003h,096h,005h,060h,003h,090h	; a425  .....`.......`..
	defb 005h,060h,000h	; a435

; ----------------------------------------------------------------------
; DATOS rle_vram_A438: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (287
;   bytes)
;   0xa438..0xa557  (287 bytes)
DATA_rle_vram_A438:
	defb 084h,0e3h,07fh,080h,066h,004h,000h,084h,0bch,005h,073h,0fah,004h,000h,084h,099h	; a438  ....f.....s.....
	defb 055h,0c2h,03ch,004h,000h,084h,098h,0a4h,07eh,066h,004h,000h,084h,003h,006h,07fh	; a448  U.<.....~f......
	defb 01dh,004h,000h,0d0h,06ch,0dah,0feh,0a6h,000h,001h,003h,017h,0e3h,07fh,080h,066h	; a458  ....l..........f
	defb 000h,0bdh,07eh,0c3h,0bch,004h,073h,0fah,000h,000h,0e0h,000h,099h,055h,0c2h,03ch	; a468  ..~...s......U.<
	defb 000h,012h,00eh,002h,098h,0a4h,07eh,066h,000h,048h,070h,040h,038h,017h,038h,010h	; a478  ......~f.Hp@8.8.
	defb 007h,00ah,002h,006h,099h,0a5h,024h,019h,0e7h,022h,022h,066h,0f0h,0f0h,000h,040h	; a488  ......$..""f...@
	defb 0e0h,030h,020h,060h,004h,013h,016h,009h,034h,00bh,000h,000h,020h,0c8h,068h,090h	; a498  .0 `....4... .h.
	defb 02ch,0d0h,000h,000h,003h,006h,085h,002h,00ah,007h,002h,000h,003h,066h,002h,022h	; a4a8  ,............f."
	defb 083h,0ffh,041h,03eh,003h,060h,09ah,020h,030h,0e0h,040h,000h,000h,002h,01fh,007h	; a4b8  ..A>.`. 0.@.....
	defb 003h,00fh,002h,001h,002h,005h,082h,0f8h,0e2h,085h,002h,080h,000h,000h,062h,0ffh	; a4c8  ..............b.
	defb 062h,006h,000h,002h,005h,003h,000h,090h,0f4h,02ah,016h,0e9h,0e9h,016h,02ah,0f4h	; a4d8  b........*....*.
	defb 010h,0f0h,010h,000h,000h,010h,0f0h,010h,005h,000h,0e3h,01eh,03fh,01eh,000h,078h	; a4e8  ............?..x
	defb 0fch,078h,000h,01eh,03fh,01eh,07fh,0fdh,082h,005h,0f3h,068h,06ah,068h,0ffh,003h	; a4f8  .x..?......hjh..
	defb 0aah,054h,0ffh,000h,016h,016h,0cfh,0bfh,070h,0e6h,0c9h,009h,046h,031h,07dh,055h	; a508  .T......p...F1}U
	defb 0ddh,048h,013h,026h,076h,026h,0f4h,06fh,044h,01fh,01fh,061h,060h,01ch,01eh,01fh	; a518  .H.&v&.oD..a`...
	defb 035h,011h,011h,075h,01fh,01eh,005h,002h,087h,0e2h,087h,0e2h,087h,002h,000h,050h	; a528  5..u...........P
	defb 070h,000h,000h,070h,050h,000h,004h,00eh,004h,001h,007h,020h,077h,020h,001h,03ch	; a538  p..pP...... w .<
	defb 07eh,03ch,099h,024h,024h,05ah,0e0h,000h,000h,0f0h,0f0h,000h,0a0h,0a0h,000h	; a548  ~<.$$Z.........

; ----------------------------------------------------------------------
; DATOS rle_vram_A557: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (231
;   bytes)
;   0xa557..0xa63e  (231 bytes)
DATA_rle_vram_A557:
	defb 084h,020h,0c0h,0c0h,0c2h,004h,0c0h,083h,020h,0c0h,0c0h,005h,020h,083h,0c0h,042h	; a557  . ...... ... ..B
	defb 0c0h,005h,090h,084h,030h,020h,020h,0c2h,004h,0c0h,083h,030h,0c0h,030h,005h,020h	; a567  ....0  ....0.0.
	defb 093h,0c0h,020h,0c0h,0c2h,0c0h,0c0h,020h,0f0h,020h,0c0h,0c0h,0c2h,0c0h,0c0h,020h	; a577  .. .... . .....
	defb 030h,020h,0c0h,0c0h,005h,020h,084h,0c0h,042h,0c0h,090h,004h,0a0h,084h,030h,020h	; a587  0 ... ..B.....0
	defb 020h,0c2h,004h,0a0h,086h,020h,0c0h,020h,0c0h,020h,0c0h,005h,020h,083h,0c0h,0c9h	; a597   .... . . .. ...
	defb 0c0h,003h,020h,003h,0c0h,084h,020h,0c0h,020h,020h,010h,0a0h,082h,030h,020h,003h	; a5a7  .. ... .  ...0 .
	defb 0c0h,003h,020h,082h,030h,020h,003h,0c0h,002h,020h,083h,0c0h,030h,020h,003h,0c0h	; a5b7  .. .0 ... ..0 ..
	defb 003h,020h,004h,0f0h,082h,050h,040h,012h,0f0h,004h,020h,004h,0c0h,08ah,032h,0c0h	; a5c7  . ...P@... ...2.
	defb 020h,020h,0c0h,020h,0c0h,032h,020h,030h,004h,020h,082h,030h,020h,010h,070h,08ch	; a5d7    . .2 0. .0 .p.
	defb 030h,0c0h,020h,020h,030h,0c0h,020h,0c0h,020h,0c2h,0c0h,0c0h,003h,020h,0a8h,0c0h	; a5e7  0.  0. . .... ..
	defb 0f0h,0c0h,020h,030h,0c0h,020h,020h,0c0h,090h,042h,0c0h,020h,020h,0c0h,020h,0c0h	; a5f7  .. 0.  ..B.  . .
	defb 030h,0c0h,020h,020h,0c0h,0f0h,020h,0c0h,020h,0c0h,0c0h,020h,020h,0c0h,0c0h,020h	; a607  0.  .. . ..  ..
	defb 0c0h,0c0h,020h,0c0h,020h,0c0h,020h,003h,0c0h,004h,020h,002h,0c0h,091h,020h,030h	; a617  .. . . ... ... 0
	defb 0c0h,0f0h,020h,0c0h,020h,0c0h,0c0h,030h,020h,092h,0c0h,020h,020h,0c0h,0c0h,003h	; a627  .. . ..0 ..  ...
	defb 020h,084h,0c0h,020h,020h,0c0h,000h	; a637

; ----------------------------------------------------------------------
; DATOS rle_vram_A63E: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (162
;   bytes)
;   0xa63e..0xa6e0  (162 bytes)
DATA_rle_vram_A63E:
	defb 005h,000h,081h,010h,005h,000h,085h,090h,0fch,08fh,072h,08ch,005h,000h,0a3h,067h	; a63e  ..........r....g
	defb 0fdh,029h,003h,00eh,03bh,068h,0d4h,0b6h,0e7h,0dch,026h,0efh,01fh,0b0h,0c0h,080h	; a64e  .)...h....&.....
	defb 00ch,033h,0d5h,059h,0b3h,03eh,0d7h,02dh,053h,0ceh,0c0h,0e0h,07ch,04fh,099h,0cfh	; a65e  .3.Y.>.-S...|O..
	defb 077h,01bh,005h,000h,085h,0c0h,020h,0f8h,0deh,009h,006h,000h,083h,09ch,0fbh,034h	; a66e  w..... ........4
	defb 005h,000h,093h,060h,0c0h,00ch,003h,000h,060h,060h,000h,0ceh,03bh,056h,092h,020h	; a67e  ...`....``...V.
	defb 0c0h,000h,000h,0b0h,020h,040h,005h,000h,082h,005h,003h,006h,000h,088h,0f4h,024h	; a68e  .... @.........$
	defb 06dh,077h,02eh,01fh,07fh,0f3h,004h,000h,084h,080h,0e0h,030h,0fch,004h,000h,0a9h	; a69e  mw.........0....
	defb 018h,006h,011h,00eh,000h,000h,003h,004h,009h,056h,0abh,0d5h,007h,01fh,039h,0f3h	; a6ae  .........V....9.
	defb 09eh,03ch,0ffh,0fch,0c1h,0a7h,0feh,0fch,0fch,0afh,057h,017h,0feh,0fbh,07dh,07fh	; a6be  .<........W...}.
	defb 0feh,0feh,0c7h,003h,000h,000h,080h,0c0h,0c0h,003h,0e0h,005h,000h,002h,006h,081h	; a6ce  ................
	defb 000h,000h	; a6de

; ----------------------------------------------------------------------
; DATOS rle_vram_A6E0: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (83
;   bytes)
;   0xa6e0..0xa733  (83 bytes)
DATA_rle_vram_A6E0:
	defb 00dh,0f0h,083h,0f5h,075h,075h,006h,0f0h,082h,0f5h,075h,003h,0f0h,088h,0f5h,075h	; a6e0  ....uu....u....u
	defb 075h,0f5h,0f0h,075h,0f7h,0f7h,005h,0f0h,083h,0f7h,075h,0f5h,008h,0f0h,084h,0f7h	; a6f0  u..u......u.....
	defb 075h,0f7h,0f7h,011h,0f0h,082h,075h,0f5h,00bh,0f0h,003h,0b0h,019h,0f0h,082h,075h	; a700  u.....u........u
	defb 0e7h,003h,0e0h,002h,0f0h,007h,0e0h,008h,0f0h,081h,0e0h,00eh,0f0h,090h,0e0h,0f0h	; a710  ................
	defb 0e0h,0e0h,0f0h,0f0h,0e0h,0f0h,0e0h,0e4h,0f0h,0f0h,0e0h,0f0h,0e0h,0e0h,00ah,0f0h	; a720  ................
	defb 008h,0b0h,000h	; a730

; ----------------------------------------------------------------------
; DATOS rle_vram_A733: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (104
;   bytes)
;   0xa733..0xa79b  (104 bytes)
DATA_rle_vram_A733:
	defb 082h,000h,004h,009h,000h,0a3h,060h,0f6h,00fh,06dh,006h,001h,003h,003h,001h,000h	; a733  ......`..m......
	defb 001h,001h,000h,080h,0c0h,040h,080h,0c0h,0e0h,0a0h,0c0h,060h,0f0h,0d0h,060h,018h	; a743  .....@.....`..`.
	defb 03ch,034h,018h,080h,070h,03fh,05fh,05fh,030h,005h,000h,081h,0e0h,006h,000h,002h	; a753  <4..p?__0.......
	defb 001h,004h,003h,092h,038h,0feh,072h,00ch,040h,0ech,004h,020h,00eh,01fh,00eh,000h	; a763  ....8.r.@.. ....
	defb 000h,038h,07ch,038h,003h,001h,006h,000h,097h,070h,068h,0feh,058h,018h,03ch,034h	; a773  .8|8.....ph.X.<4
	defb 018h,000h,004h,008h,002h,011h,020h,008h,004h,000h,030h,078h,068h,030h,080h,080h	; a783  ...... ...0xh0..
	defb 005h,000h,084h,063h,0f7h,0d6h,063h,000h	; a793  ...c..c.

; ----------------------------------------------------------------------
; DATOS rle_vram_A79B: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (71
;   bytes)
;   0xa79b..0xa7e2  (71 bytes)
DATA_rle_vram_A79B:
	defb 008h,0f0h,005h,050h,085h,054h,040h,040h,090h,090h,003h,060h,082h,050h,040h,003h	; a79b  ...P.T@@...`.P@.
	defb 090h,002h,060h,002h,050h,002h,040h,002h,050h,002h,040h,002h,050h,002h,040h,010h	; a7ab  ..`.P.@.P.@.P.@.
	defb 0f0h,005h,060h,08bh,080h,060h,080h,060h,060h,086h,098h,0f8h,098h,0f9h,0f9h,008h	; a7bb  ..`..`.``.......
	defb 090h,008h,060h,084h,098h,086h,060h,060h,003h,050h,081h,040h,008h,0b0h,003h,090h	; a7cb  ..`...``.P.@....
	defb 002h,060h,009h,050h,002h,040h,000h	; a7db

; ----------------------------------------------------------------------
; DATOS rle_vram_A7E2: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (324
;   bytes)
;   0xa7e2..0xa926  (324 bytes)
DATA_rle_vram_A7E2:
	defb 082h,000h,042h,004h,000h,08dh,042h,000h,0f5h,09dh,0f9h,095h,0f9h,09fh,06fh,000h	; a7e2  ..B...B.......o.
	defb 0e8h,0e5h,0e2h,003h,0a0h,085h,000h,040h,000h,0ceh,0b5h,005h,000h,083h,048h,085h	; a7f2  .......@......H.
	defb 002h,007h,000h,083h,078h,0fch,078h,007h,000h,081h,0ffh,003h,000h,0a0h,005h,00fh	; a802  ....x.x.........
	defb 001h,000h,003h,000h,007h,00ch,007h,0b8h,0f7h,000h,000h,08ch,003h,09ch,0aah,031h	; a812  ...............1
	defb 0c0h,008h,014h,06bh,000h,03eh,0e0h,0ach,043h,07ch,007h,000h,0e0h,01eh,003h,000h	; a822  ...k.>..C|......
	defb 0a5h,080h,0c0h,000h,000h,040h,000h,000h,003h,004h,01ah,022h,004h,018h,000h,001h	; a832  .....@....."....
	defb 086h,078h,004h,004h,008h,010h,010h,003h,010h,00ch,007h,000h,003h,000h,061h,0fah	; a842  .x............a.
	defb 061h,09ch,003h,08ch,000h,000h,003h,07fh,0a0h,03eh,000h,0ebh,014h,008h,061h,03ch	; a852  a........>....a<
	defb 061h,01eh,0e0h,000h,007h,07ch,000h,0c0h,000h,040h,000h,000h,0c0h,080h,00ch,003h	; a862  a....|...@......
	defb 00ch,010h,010h,068h,088h,090h,020h,020h,0c0h,005h,000h,083h,001h,00fh,005h,005h	; a872  ...h..  ........
	defb 000h,0a6h,0f7h,0b8h,007h,000h,000h,020h,015h,01ah,0c0h,031h,08ah,0eah,011h,000h	; a882  ....... ...1....
	defb 07eh,0dbh,043h,0bch,0e0h,080h,000h,004h,0a8h,058h,055h,014h,089h,000h,05ah,044h	; a892  ~.C......XU...ZD
	defb 011h,0eah,007h,008h,090h,068h,008h,010h,003h,000h,087h,080h,060h,03eh,03fh,0ffh	; a8a2  .....h......`>?.
	defb 034h,00eh,004h,000h,0d4h,0e0h,087h,000h,000h,0a5h,0dbh,0dbh,066h,042h,099h,066h	; a8b2  4...........fB.f
	defb 099h,052h,0a5h,0a5h,052h,055h,095h,0aah,02ah,000h,09eh,061h,09ch,0feh,063h,09ch	; a8c2  .R..RU..*..a..c.
	defb 065h,000h,0a5h,052h,055h,0abh,0aah,05ah,055h,022h,056h,059h,0b4h,018h,05ch,018h	; a8d2  e..RU..ZU"VY..\.
	defb 0c3h,000h,0ceh,0b5h,002h,001h,000h,001h,002h,07fh,0b6h,0eah,0afh,006h,0d0h,0d3h	; a8e2  ................
	defb 0c6h,090h,060h,002h,060h,00ah,004h,062h,062h,0f5h,005h,06eh,00ch,00ah,011h,024h	; a8f2  ..`.`..bb..n...$
	defb 000h,006h,032h,000h,078h,030h,030h,005h,030h,003h,000h,08fh,002h,001h,000h,001h	; a902  ..2.x00.0.......
	defb 002h,001h,004h,030h,001h,0b4h,08bh,0d0h,0d4h,09eh,06dh,007h,000h,083h,080h,040h	; a912  ...0......m....@
	defb 000h,004h,040h,000h	; a922

; ----------------------------------------------------------------------
; DATOS rle_vram_A926: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (240
;   bytes)
;   0xa926..0xaa16  (240 bytes)
DATA_rle_vram_A926:
	defb 008h,0f0h,086h,020h,0c0h,020h,0c0h,020h,030h,003h,0c0h,082h,020h,030h,007h,0c0h	; a926  ... . . 0... 0..
	defb 006h,020h,082h,0c0h,020h,006h,030h,004h,090h,004h,080h,009h,070h,08ah,050h,040h	; a936  . .. .0.....p.P@
	defb 0f0h,0f0h,070h,070h,050h,070h,070h,040h,003h,0f0h,082h,050h,040h,003h,070h,088h	; a946  ..ppPpp@...P@.p.
	defb 0b0h,0a0h,020h,020h,0c0h,0f0h,070h,070h,003h,040h,009h,0f0h,081h,020h,010h,0a0h	; a956  ..  ..pp.@... ..
	defb 085h,020h,050h,020h,050h,070h,003h,0f0h,085h,050h,070h,050h,040h,050h,003h,0f0h	; a966  . P Pp...PpP@P..
	defb 08bh,020h,0f0h,020h,0c0h,020h,020h,0a0h,0b0h,050h,070h,050h,003h,0f0h,002h,040h	; a976  . . .  ..PpP...@
	defb 003h,0f0h,081h,020h,004h,0f0h,010h,0a0h,082h,040h,050h,006h,070h,081h,040h,004h	; a986  ... .....@P.p.@.
	defb 070h,003h,020h,002h,040h,083h,070h,0f0h,0f0h,003h,020h,002h,070h,002h,0f0h,004h	; a996  p. .@.p... .p...
	defb 020h,002h,060h,081h,0c2h,003h,020h,002h,0f0h,008h,0a0h,003h,0f0h,081h,070h,009h	; a9a6   .`... .......p.
	defb 0f0h,003h,070h,002h,0c0h,081h,020h,003h,0c0h,085h,0c2h,030h,060h,080h,060h,003h	; a9b6  ..p... ....0`.`.
	defb 080h,092h,060h,080h,030h,030h,020h,030h,020h,0c0h,020h,0c0h,0c0h,0c2h,080h,060h	; a9c6  ..`.00 0 . ....`
	defb 080h,080h,060h,080h,004h,060h,082h,030h,0c2h,003h,0c0h,082h,020h,030h,005h,020h	; a9d6  ..`..`.0.... 0.
	defb 003h,0c0h,091h,020h,030h,0c0h,020h,0c0h,0c0h,020h,060h,020h,060h,060h,020h,0c0h	; a9e6  ... 0. .. ` `` .
	defb 030h,0c0h,0c0h,030h,004h,020h,003h,0c0h,084h,030h,0c0h,0c0h,060h,009h,020h,002h	; a9f6  0..0. ...0..`. .
	defb 060h,087h,020h,060h,0c0h,020h,0c0h,0c0h,020h,007h,030h,004h,020h,004h,0c0h,000h	; aa06  `. `. .. .0. ...

; ----------------------------------------------------------------------
; DATOS rle_vram_AA16: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (232
;   bytes)
;   0xaa16..0xaafe  (232 bytes)
DATA_rle_vram_AA16:
	defb 003h,000h,081h,008h,00ah,000h,09fh,001h,003h,000h,007h,00eh,00eh,000h,00fh,005h	; aa16  ................
	defb 005h,000h,06ch,0ebh,097h,000h,0e7h,015h,045h,000h,078h,0f6h,06eh,000h,0ffh,055h	; aa26  ..l.....E.x.n..U
	defb 054h,005h,007h,003h,007h,003h,003h,000h,085h,049h,010h,0a7h,0f7h,062h,003h,000h	; aa36  T........I...b..
	defb 002h,055h,096h,0f7h,0efh,077h,000h,001h,003h,055h,055h,067h,06fh,09eh,000h,0bah	; aa46  .U...w...UUgo...
	defb 0bdh,050h,050h,070h,078h,0f0h,000h,079h,0e0h,006h,000h,082h,0bah,0bdh,006h,000h	; aa56  .PPpx..y........
	defb 085h,079h,0ffh,003h,000h,007h,004h,002h,098h,003h,074h,000h,0f3h,0a9h,0a2h,0abh	; aa66  .y........t.....
	defb 0aah,0f7h,074h,000h,0f3h,0a9h,0a4h,0a9h,0a9h,0f7h,000h,000h,0e0h,03ch,01fh,01fh	; aa76  ..t..........<..
	defb 060h,004h,000h,083h,01eh,0c0h,01eh,006h,000h,081h,0ffh,004h,000h,08fh,005h,002h	; aa86  `...............
	defb 001h,001h,000h,001h,001h,000h,07dh,0f2h,0fch,0fch,0d8h,034h,0fch,006h,001h,082h	; aa96  ......}....4....
	defb 000h,001h,005h,0fch,08ch,03ch,0dch,0e8h,0e0h,000h,0f0h,050h,040h,050h,003h,0b3h	; aaa6  .....<.....P@P..
	defb 0d4h,004h,0fch,0abh,0f8h,0fch,000h,007h,000h,000h,0f8h,050h,0ffh,072h,0ffh,0e7h	; aab6  ...........P.r..
	defb 080h,000h,0ffh,055h,0ffh,0fbh,060h,079h,000h,00fh,0fah,055h,03fh,0eeh,010h,063h	; aac6  ...U..`y...U?..c
	defb 003h,007h,0fbh,055h,0efh,09fh,07fh,040h,055h,054h,0ffh,055h,0feh,0e9h,0ffh,003h	; aad6  ...U...@UT.U....
	defb 000h,095h,0e1h,051h,0ffh,0ebh,07fh,0ech,0feh,000h,03fh,015h,0ffh,07eh,0ffh,0e7h	; aae6  ...Q......?..~..
	defb 000h,0ffh,055h,045h,055h,055h,03eh,000h	; aaf6  ..UEUU>.

; ----------------------------------------------------------------------
; DATOS rle_vram_AAFE: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (183
;   bytes)
;   0xaafe..0xabb5  (183 bytes)
DATA_rle_vram_AAFE:
	defb 013h,0f0h,002h,050h,082h,0f0h,040h,004h,0f0h,002h,050h,082h,0f0h,040h,004h,0f0h	; aafe  ...P..@...P..@..
	defb 088h,050h,0f0h,0f0h,040h,0f0h,0f0h,040h,0e0h,007h,0f0h,081h,0e0h,006h,0f0h,082h	; ab0e  .P..@..@........
	defb 040h,0e0h,006h,0f0h,082h,040h,0e0h,004h,0f0h,083h,0e0h,0f0h,040h,005h,0f0h,081h	; ab1e  @....@......@...
	defb 0feh,007h,0f0h,081h,0e0h,008h,0f0h,097h,050h,0f0h,0f0h,040h,0f0h,0f0h,040h,0f0h	; ab2e  ........P..@..@.
	defb 050h,0f0h,0f0h,040h,0f0h,0f0h,040h,0f0h,050h,0f0h,0f0h,040h,0f0h,0f0h,040h,004h	; ab3e  P..@..@.P..@..@.
	defb 0f0h,081h,070h,004h,0f0h,004h,090h,081h,0f9h,003h,090h,008h,070h,002h,0e0h,002h	; ab4e  ..p.........p...
	defb 0f0h,003h,050h,081h,0f0h,003h,0e0h,084h,0f0h,050h,0f0h,050h,009h,0f0h,081h,0e0h	; ab5e  ..P......P.P....
	defb 005h,0f0h,002h,0e0h,084h,050h,0f0h,0f0h,050h,003h,0f0h,081h,050h,003h,0f0h,002h	; ab6e  .....P..P...P...
	defb 0e0h,081h,050h,006h,0f0h,081h,0e0h,007h,0f0h,084h,0e0h,0f0h,0e0h,0feh,004h,0f0h	; ab7e  ..P.............
	defb 08fh,0e0h,0feh,0f0h,0feh,0f0h,0f0h,050h,0f0h,0e0h,0f0h,0e0h,0feh,0f0h,0e0h,0e0h	; ab8e  .......P........
	defb 009h,0f0h,086h,0e0h,0f0h,0f0h,0feh,0f0h,0e0h,004h,0f0h,08ah,0e0h,0f0h,050h,0f0h	; ab9e  ..............P.
	defb 0f0h,050h,0f0h,0f0h,040h,0f0h,000h	; abae

; ----------------------------------------------------------------------
; DATOS rle_vram_ABB5: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (222
;   bytes)
;   0xabb5..0xac93  (222 bytes)
DATA_rle_vram_ABB5:
	defb 005h,000h,0abh,001h,00fh,010h,000h,000h,003h,00fh,090h,034h,080h,003h,028h,028h	; abb5  ...........4..((
	defb 07ch,07fh,080h,01bh,03fh,0feh,0d8h,000h,00fh,0ffh,005h,065h,01fh,0edh,0f0h,0feh	; abc5  |...?......e....
	defb 070h,001h,001h,01eh,020h,0f1h,000h,0c0h,0f0h,0a0h,0a0h,0f0h,0c0h,000h,003h,003h	; abd5  p... ...........
	defb 084h,000h,003h,003h,000h,005h,003h,0ceh,001h,003h,002h,080h,003h,00eh,01bh,02dh	; abe5  ...............-
	defb 06eh,096h,03ah,090h,007h,023h,05bh,023h,0dfh,0c0h,00ch,0ffh,006h,001h,01fh,00fh	; abf5  n.:..#[#........
	defb 00fh,01fh,001h,006h,086h,030h,0aeh,088h,088h,0aeh,030h,086h,0dbh,06ch,0fdh,0b5h	; ac05  .....0....0..l..
	defb 0b5h,0fdh,06ch,0dbh,00fh,050h,055h,00fh,00fh,055h,050h,00fh,080h,007h,04fh,05fh	; ac15  ..l..PU..UP...O_
	defb 05fh,04fh,007h,080h,060h,000h,080h,0c0h,0c0h,080h,000h,060h,000h,001h,006h,00fh	; ac25  _O..`......`....
	defb 00fh,006h,001h,000h,00eh,009h,004h,0b7h,09bh,008h,00eh,0d8h,000h,0fch,0feh,0f5h	; ac35  ................
	defb 0ffh,000h,0d8h,03fh,081h,0d1h,0d8h,0d8h,0d1h,001h,03fh,0fdh,01ch,006h,080h,080h	; ac45  ...?......?.....
	defb 006h,01ch,0fdh,00ah,006h,015h,0a1h,00ah,080h,01ch,03eh,07fh,07fh,03eh,01ch,080h	; ac55  ..........>..>..
	defb 012h,01bh,03ch,044h,03ch,03ch,01bh,012h,080h,03eh,07fh,07eh,01ch,07fh,03eh,080h	; ac65  ..<D<<...>.~..>.
	defb 0bah,038h,012h,086h,086h,012h,038h,0bah,005h,000h,090h,00ah,000h,01eh,000h,001h	; ac75  .8....8.........
	defb 007h,0afh,0abh,060h,0cah,0cah,00fh,007h,078h,0fdh,082h,003h,028h,000h	; ac85  ...`....x...(.

; ----------------------------------------------------------------------
; DATOS rle_vram_AC93: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (221
;   bytes)
;   0xac93..0xad70  (221 bytes)
DATA_rle_vram_AC93:
	defb 007h,040h,081h,060h,003h,040h,087h,050h,064h,040h,040h,070h,080h,0a0h,003h,040h	; ac93  .@.`.@.Pd@@p...@
	defb 0b7h,070h,050h,075h,040h,040h,070h,040h,080h,0a0h,075h,075h,050h,070h,040h,087h	; aca3  .pPu@@p@..uuPp@.
	defb 085h,040h,085h,040h,070h,070h,040h,070h,070h,040h,070h,070h,040h,070h,080h,080h	; acb3  .@.@pp@pp@pp@p..
	defb 040h,050h,050h,070h,040h,050h,050h,070h,070h,050h,040h,080h,050h,040h,050h,070h	; acc3  @PPp@PPppP@.P@Pp
	defb 040h,040h,070h,085h,040h,087h,050h,070h,006h,040h,084h,050h,0b0h,0b0h,050h,003h	; acd3  @@p.@.Pp.@.P..P.
	defb 040h,086h,094h,050h,085h,085h,050h,094h,003h,040h,09ch,050h,070h,070h,050h,040h	; ace3  @..P..P..@.PppP@
	defb 040h,050h,080h,0a0h,087h,087h,0a0h,080h,050h,040h,080h,090h,0f0h,0a0h,090h,080h	; acf3  @P......P@......
	defb 070h,080h,080h,090h,0e0h,0a0h,090h,003h,080h,087h,040h,050h,040h,040h,050h,040h	; ad03  p.........@P@@P@
	defb 000h,003h,040h,002h,075h,004h,040h,084h,000h,040h,070h,050h,003h,040h,0a6h,050h	; ad13  ..@.u.@..@pP.@.P
	defb 040h,040h,070h,050h,040h,040h,050h,074h,054h,070h,040h,040h,070h,054h,074h,050h	; ad23  @@pP@@PtTp@@pTtP
	defb 040h,020h,0a0h,0a0h,020h,040h,050h,050h,040h,050h,0f0h,070h,050h,040h,050h,040h	; ad33  @ .. @PP@P.pP@P@
	defb 040h,050h,080h,070h,050h,003h,040h,08fh,090h,0b0h,0fbh,0fah,0a0h,090h,040h,075h	; ad43  @P.pP.@.......@u
	defb 070h,040h,0f0h,0f0h,040h,070h,075h,006h,090h,002h,040h,002h,070h,08eh,040h,094h	; ad53  p@..@pu...@.p.@.
	defb 074h,090h,040h,070h,070h,095h,094h,040h,040h,084h,097h,0a4h,000h	; ad63  t.@pp..@@....

; ----------------------------------------------------------------------
; DATOS rle_vram_AD70: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (217
;   bytes)
;   0xad70..0xae49  (217 bytes)
DATA_rle_vram_AD70:
	defb 002h,000h,081h,008h,009h,000h,084h,007h,003h,009h,030h,003h,000h,0adh,0f0h,0f8h	; ad70  ..........0.....
	defb 0fch,0feh,0feh,000h,000h,00ch,012h,021h,021h,012h,00ch,030h,048h,084h,084h,048h	; ad80  .......!!..0H..H
	defb 032h,001h,021h,001h,00fh,005h,002h,003h,007h,007h,003h,0edh,09fh,07eh,07dh,0fbh	; ad90  2.!..........~}.
	defb 0f6h,0ech,0dch,0feh,0fch,0f8h,0f8h,0f0h,0e0h,0c0h,080h,004h,000h,0ach,060h,068h	; ada0  ..............`h
	defb 01ch,000h,00eh,007h,003h,005h,001h,003h,000h,0c0h,000h,0c0h,0f8h,0ffh,0f8h,080h	; adb0  ................
	defb 000h,000h,012h,00ch,000h,000h,001h,003h,007h,073h,003h,003h,007h,08fh,0fch,07ch	; adc0  .........s.....|
	defb 082h,0d7h,0cch,0feh,0d0h,0a0h,0c0h,0d8h,02ch,075h,005h,000h,083h,018h,0bdh,0d9h	; add0  ........,u......
	defb 005h,000h,087h,080h,0c3h,0e7h,038h,011h,003h,001h,004h,000h,085h,060h,080h,0ddh	; ade0  ......8......`..
	defb 0bbh,01dh,004h,000h,0a1h,03bh,0d7h,0e7h,0c1h,018h,01fh,0feh,000h,00eh,0dfh,0dfh	; adf0  ................
	defb 0a6h,07fh,0bfh,0c0h,0e0h,0ddh,03bh,07dh,05eh,080h,09ch,07fh,03eh,0dch,0e0h,0fch	; ae00  .......}^...>...
	defb 0b8h,0d0h,0e0h,0f0h,0f1h,060h,006h,000h,083h,0d6h,08fh,006h,005h,000h,093h,003h	; ae10  .....`..........
	defb 000h,003h,001h,000h,000h,001h,000h,000h,03eh,0fch,078h,0fch,00eh,0b4h,038h,0feh	; ae20  ........>.x...8.
	defb 07ch,01dh,005h,000h,08ch,07fh,09fh,0e7h,03fh,00eh,002h,000h,000h,0ffh,0ffh,0eeh	; ae30  |.......?.......
	defb 044h,004h,000h,082h,0e0h,080h,006h,000h,000h	; ae40  D........

; ----------------------------------------------------------------------
; DATOS rle_vram_AE49: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (117
;   bytes)
;   0xae49..0xaebe  (117 bytes)
DATA_rle_vram_AE49:
	defb 008h,0f0h,006h,050h,081h,040h,009h,050h,010h,090h,003h,050h,081h,040h,005h,050h	; ae49  ...P.@.P...P.@.P
	defb 007h,054h,008h,040h,006h,090h,002h,080h,007h,0f0h,081h,090h,008h,0f0h,004h,090h	; ae59  .T.@............
	defb 081h,040h,003h,090h,004h,050h,085h,054h,040h,090h,090h,054h,004h,040h,002h,090h	; ae69  .@...P.T@..T.@..
	defb 006h,080h,083h,090h,080h,080h,007h,090h,081h,080h,00ah,090h,002h,080h,006h,090h	; ae79  ................
	defb 002h,080h,089h,094h,054h,054h,050h,090h,090h,080h,080h,090h,003h,054h,002h,090h	; ae89  ....TTP......T..
	defb 002h,080h,081h,094h,003h,054h,083h,080h,090h,090h,005h,040h,081h,080h,011h,090h	; ae99  .....T.....@....
	defb 081h,060h,003h,080h,081h,0f0h,004h,060h,085h,080h,090h,090h,0b0h,0f0h,009h,050h	; aea9  .`.....`.......P
	defb 002h,054h,015h,050h,000h	; aeb9

; ----------------------------------------------------------------------
; DATOS rle_vram_AEBE: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (145
;   bytes)
;   0xaebe..0xaf4f  (145 bytes)
DATA_rle_vram_AEBE:
	defb 081h,001h,00ah,000h,0a6h,009h,004h,00bh,00bh,004h,009h,000h,003h,007h,003h,000h	; aebe  ................
	defb 00fh,017h,090h,003h,0c0h,023h,0c7h,000h,0e3h,097h,009h,0c0h,003h,0c7h,0e3h,000h	; aece  .....#..........
	defb 0c7h,02fh,090h,000h,0c0h,020h,0c0h,000h,0f0h,0c8h,00fh,003h,000h,084h,099h,042h	; aede  ./... .........B
	defb 0bdh,0bdh,007h,000h,099h,01fh,042h,099h,000h,07fh,0fch,07fh,000h,0c3h,066h,066h	; aeee  ......B.......ff
	defb 000h,000h,083h,007h,000h,0c3h,066h,066h,000h,003h,0c7h,0e3h,000h,0c3h,003h,000h	; aefe  ......ff........
	defb 0afh,0f0h,0c8h,0f0h,000h,0c3h,01fh,000h,000h,099h,042h,0bdh,0bdh,042h,027h,0c3h	; af0e  ..........B..B'.
	defb 000h,01ch,032h,01ch,000h,000h,027h,0c3h,000h,03ch,072h,03ch,000h,0c3h,000h,030h	; af1e  ..2...'..<r<...0
	defb 01eh,01fh,02fh,02eh,010h,000h,004h,00ah,004h,0f0h,0c4h,00ah,004h,000h,067h,0c3h	; af2e  ../...........g.
	defb 006h,000h,082h,027h,0c2h,006h,000h,088h,027h,0c3h,000h,03ch,072h,03ch,000h,000h	; af3e  ...'....'..<r<..
	defb 000h	; af4e

; ----------------------------------------------------------------------
; DATOS rle_vram_AF4F: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (103
;   bytes)
;   0xaf4f..0xafb6  (103 bytes)
DATA_rle_vram_AF4F:
	defb 00ch,0f0h,084h,0e0h,090h,080h,0e0h,004h,0f0h,081h,050h,007h,0f0h,081h,050h,007h	; af4f  ..........P...P.
	defb 0f0h,081h,050h,007h,0f0h,081h,050h,003h,0f0h,081h,050h,004h,0f0h,083h,0e0h,090h	; af5f  ..P...P...P.....
	defb 080h,008h,0f0h,081h,0e0h,004h,0f0h,085h,050h,0f0h,0f0h,090h,090h,003h,0f0h,085h	; af6f  ........P.......
	defb 050h,0f0h,0f0h,090h,090h,003h,0f0h,081h,050h,007h,0f0h,084h,050h,0f0h,0f0h,050h	; af7f  P.......P...P..P
	defb 003h,0f0h,086h,0e0h,090h,080h,0e0h,0f0h,050h,003h,0f0h,081h,050h,003h,0f0h,081h	; af8f  ........P...P...
	defb 050h,003h,0f0h,081h,050h,013h,0f0h,007h,050h,081h,0f0h,007h,050h,082h,0f0h,050h	; af9f  P...P...P...P..P
	defb 003h,0f0h,083h,050h,0f0h,0f0h,000h	; afaf

; ----------------------------------------------------------------------
; DATOS rle_vram_AFB6: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (157
;   bytes)
;   0xafb6..0xb053  (157 bytes)
DATA_rle_vram_AFB6:
	defb 002h,000h,081h,020h,005h,000h,0adh,007h,07fh,017h,02dh,081h,024h,008h,00ah,037h	; afb6  ... ......-.$..7
	defb 0dfh,06bh,025h,019h,004h,07fh,0bfh,077h,0fbh,03ch,0efh,0b1h,0bch,05fh,0d8h,0beh	; afc6  .k%....w.<..._..
	defb 0efh,0b0h,0cch,0feh,0fah,0fdh,0f8h,0f0h,0ffh,0b2h,004h,04dh,010h,084h,000h,0efh	; afd6  ...........M....
	defb 032h,004h,020h,048h,003h,000h,084h,036h,042h,009h,0e0h,004h,000h,090h,01fh,03fh	; afe6  2. H...6B......?
	defb 09fh,03fh,01fh,04fh,02fh,09fh,0f4h,0fah,0fch,0e0h,0f8h,0fch,0f8h,0f9h,003h,000h	; aff6  .?.O/...........
	defb 082h,020h,040h,003h,000h,088h,03ah,038h,07ah,0bch,03eh,05eh,01dh,07eh,004h,000h	; b006  . @...:8z.>^.~..
	defb 081h,0ffh,003h,000h,08ch,0f1h,05ch,0f1h,01ch,0aah,07eh,075h,058h,000h,01eh,03fh	; b016  ......\...~uX..?
	defb 01eh,004h,000h,095h,080h,070h,03eh,05fh,05fh,038h,040h,000h,00ah,011h,005h,0e2h	; b026  .....p>__8@.....
	defb 081h,004h,011h,00ah,099h,042h,018h,042h,099h,003h,000h,090h,05fh,04fh,01fh,02fh	; b036  .....B.B...._O./
	defb 09fh,00fh,05fh,00fh,01fh,02bh,017h,027h,013h,047h,01fh,007h,000h	; b046  .._..+.'.G...

; ----------------------------------------------------------------------
; DATOS rle_vram_B053: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (63
;   bytes)
;   0xb053..0xb092  (63 bytes)
DATA_rle_vram_B053:
	defb 008h,0f0h,081h,0a8h,007h,080h,081h,0fah,005h,0a9h,002h,090h,003h,0fah,005h,0a9h	; b053  ................
	defb 081h,0fah,003h,0a9h,004h,090h,081h,0a8h,017h,080h,005h,090h,088h,080h,090h,080h	; b063  ................
	defb 090h,080h,080h,098h,090h,00bh,080h,008h,0a9h,008h,070h,008h,0a9h,008h,090h,002h	; b073  ..........p.....
	defb 0f0h,081h,070h,00fh,0f0h,081h,080h,005h,0f0h,082h,080h,090h,00eh,080h,000h	; b083  ..p............

; ----------------------------------------------------------------------
; DATOS rle_vram_B092: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (121
;   bytes)
;   0xb092..0xb10b  (121 bytes)
DATA_rle_vram_B092:
	defb 004h,000h,081h,004h,003h,000h,0c0h,002h,00ah,09fh,00fh,007h,007h,003h,001h,0f4h	; b092  ................
	defb 06ah,070h,030h,098h,0d8h,048h,028h,001h,098h,0b9h,0eah,0e2h,0c0h,009h,01bh,09ah	; b0a2  jp0..H(.........
	defb 03bh,003h,0f0h,0e0h,0c0h,0c0h,080h,008h,004h,07fh,07fh,03fh,00fh,007h,003h,092h	; b0b2  ...........?....
	defb 0b4h,0fch,0f8h,0f8h,0f0h,0e0h,080h,020h,018h,01fh,02fh,02fh,01fh,030h,000h,000h	; b0c2  ....... ..//.0..
	defb 002h,005h,0e2h,0fch,002h,005h,002h,004h,000h,081h,0ffh,007h,000h,084h,0d8h,0dch	; b0d2  ................
	defb 0b8h,0c3h,004h,000h,099h,033h,0fch,07dh,01fh,03ch,00eh,07eh,045h,0efh,032h,06eh	; b0e2  .....3.}.<.~E.2n
	defb 044h,000h,000h,003h,004h,00bh,00fh,031h,079h,067h,001h,003h,008h,001h,005h,000h	; b0f2  D......1yg......
	defb 083h,01eh,03fh,01eh,00ah,000h,081h,02eh,000h	; b102  ..?......

; ----------------------------------------------------------------------
; DATOS rle_vram_B10B: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (60
;   bytes)
;   0xb10b..0xb147  (60 bytes)
DATA_rle_vram_B10B:
	defb 008h,0f0h,002h,0b9h,006h,090h,003h,0b6h,002h,0b8h,003h,0b9h,00bh,096h,005h,060h	; b10b  ...............`
	defb 002h,0b9h,006h,090h,002h,096h,006h,060h,010h,0f0h,008h,070h,004h,090h,004h,096h	; b11b  .......`...p....
	defb 005h,060h,005h,096h,086h,060h,0c0h,0c0h,0c2h,020h,020h,003h,0f0h,083h,0e0h,060h	; b12b  .`...`...  ....`
	defb 0f0h,003h,0e0h,002h,0f0h,005h,0e0h,008h,090h,008h,0b0h,000h	; b13b  ............

; ----------------------------------------------------------------------
; DATOS rle_vram_B147: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (158
;   bytes)
;   0xb147..0xb1e5  (158 bytes)
DATA_rle_vram_B147:
	defb 08fh,03ch,05eh,04ch,006h,050h,024h,07eh,034h,024h,06dh,06dh,0fbh,020h,07eh,03ch	; b147  .<^L.P$~4$mm. ~<
	defb 004h,000h,09dh,03ch,05eh,04ch,006h,050h,024h,07eh,034h,000h,001h,005h,01dh,06eh	; b157  ...<^L.P$~4....n
	defb 000h,003h,01ch,0e3h,09bh,067h,0cfh,0cfh,0e0h,0f8h,0fch,073h,024h,08fh,0bbh,077h	; b167  .....g.....s$..w
	defb 003h,000h,0bah,0c0h,0fch,05eh,0bfh,0bbh,000h,000h,002h,007h,00ah,005h,001h,007h	; b177  .....^..........
	defb 0f1h,0e3h,04bh,037h,0b7h,0d3h,0b8h,080h,0bdh,07eh,06fh,077h,0b3h,0fbh,0f3h,065h	; b187  ..K7.....~ow...e
	defb 04fh,077h,07fh,0bfh,0d1h,0eeh,0dfh,0aah,07dh,0f3h,0dfh,0e7h,0f9h,04ah,0b7h,05bh	; b197  Ow......}....J.[
	defb 080h,0c0h,0e0h,0d0h,0e0h,0d0h,0a0h,080h,009h,004h,000h,009h,007h,003h,000h,09ch	; b1a7  ................
	defb 0c0h,0e0h,0c0h,0c0h,080h,0c6h,039h,005h,0aah,0bbh,07bh,074h,03ch,05eh,04ch,006h	; b1b7  ......9...{t<^L.
	defb 0e4h,0deh,0a8h,055h,0a2h,045h,01eh,07ah,050h,024h,07eh,03ch,004h,000h,08ch,00fh	; b1c7  ...U.E.zP$~<....
	defb 08dh,020h,07ah,01dh,006h,001h,000h,068h,03ch,016h,00bh,004h,000h,000h	; b1d7  . z....h<.....

; ----------------------------------------------------------------------
; DATOS rle_vram_B1E5: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (96
;   bytes)
;   0xb1e5..0xb245  (96 bytes)
DATA_rle_vram_B1E5:
	defb 002h,040h,08bh,0f5h,075h,075h,0f5h,040h,040h,0f0h,0b0h,0a0h,090h,0f9h,003h,080h	; b1e5  .@..uu.@@.......
	defb 005h,040h,087h,0f5h,075h,075h,0f5h,040h,040h,000h,009h,060h,085h,090h,060h,090h	; b1f5  .@..uu.@@..`..`.
	defb 060h,090h,015h,060h,08dh,0f0h,080h,080h,060h,090h,080h,060h,060h,0f6h,060h,060h	; b205  `..`....`..``.``
	defb 080h,080h,004h,060h,082h,090h,080h,005h,060h,081h,096h,004h,060h,081h,090h,00ah	; b215  ...`....`...`...
	defb 060h,081h,080h,008h,0f0h,002h,0f8h,002h,0f6h,081h,0f0h,007h,060h,002h,040h,083h	; b225  `...........`.@.
	defb 0f5h,075h,080h,004h,060h,085h,090h,060h,060h,075h,0f5h,006h,040h,010h,060h,000h	; b235  .u..`..``u..@.`.

; ----------------------------------------------------------------------
; DATOS rle_vram_B245: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (187
;   bytes)
;   0xb245..0xb300  (187 bytes)
DATA_rle_vram_B245:
	defb 002h,000h,098h,024h,000h,000h,024h,000h,000h,03dh,0c0h,0adh,0edh,0c0h,000h,0ffh	; b245  ...$..$..=......
	defb 07eh,02fh,0c0h,0afh,0efh,0cfh,000h,0ffh,07eh,0d5h,000h,003h,0ffh,093h,000h,0ffh	; b255  ~/......~.......
	defb 07eh,0ddh,000h,0ddh,0c1h,0ddh,01ch,0ffh,07eh,0e9h,000h,0fdh,0fdh,0feh,000h,0ffh	; b265  ~.......~.......
	defb 07eh,006h,000h,082h,00dh,0dah,004h,000h,084h,00ch,0dah,0ach,0c1h,004h,000h,091h	; b275  ~...............
	defb 002h,006h,0cch,0aeh,007h,005h,005h,035h,0b5h,035h,0b5h,0b5h,00dh,01ah,06ch,0d0h	; b285  .......5.5....l.
	defb 060h,003h,000h,082h,0ach,0c0h,006h,000h,083h,0cch,006h,002h,005h,000h,085h,0b5h	; b295  `...............
	defb 035h,0b5h,034h,007h,004h,000h,093h,070h,03eh,05fh,05fh,03eh,060h,000h,000h,004h	; b2a5  5.4....p>__>`...
	defb 00ah,084h,0f0h,004h,00ah,004h,000h,01eh,03fh,01eh,005h,000h,08fh,004h,035h,068h	; b2b5  ........?.....5h
	defb 02ah,054h,000h,000h,060h,0d0h,060h,00ch,01ah,00dh,003h,001h,005h,000h,083h,08ch	; b2c5  *T..`.`.........
	defb 05ah,08dh,006h,000h,082h,0c0h,0a0h,003h,000h,089h,007h,004h,005h,005h,035h,0c0h	; b2d5  Z.............5.
	defb 018h,034h,019h,004h,000h,08ah,002h,006h,0cch,0aeh,0cch,006h,002h,000h,0b5h,035h	; b2e5  .4.............5
	defb 003h,0b5h,083h,035h,0b5h,035h,005h,005h,003h,007h,000h	; b2f5  ...5.5.....

; ----------------------------------------------------------------------
; DATOS rle_vram_B300: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (102
;   bytes)
;   0xb300..0xb366  (102 bytes)
DATA_rle_vram_B300:
	defb 008h,0f0h,003h,040h,002h,070h,002h,040h,081h,075h,003h,040h,085h,070h,050h,040h	; b300  ...@.p.@.u.@.pP@
	defb 040h,075h,003h,040h,085h,070h,050h,040h,040h,075h,003h,040h,085h,070h,050h,070h	; b310  @u.@.pP@@u.@.pPp
	defb 040h,075h,003h,040h,085h,070h,050h,040h,040h,075h,010h,030h,006h,0f0h,002h,030h	; b320  @u.@.pP@@u.0...0
	defb 084h,050h,040h,050h,070h,003h,0f0h,081h,070h,011h,030h,002h,0f0h,005h,030h,081h	; b330  .P@Pp...p.0...0.
	defb 0f0h,003h,070h,004h,050h,010h,0f0h,008h,090h,008h,080h,018h,030h,004h,050h,004h	; b340  ..p.P.......0.P.
	defb 070h,008h,030h,002h,0f0h,003h,030h,004h,0f0h,081h,070h,003h,0f0h,006h,070h,085h	; b350  p.0...0...p...p.
	defb 050h,070h,050h,040h,050h,000h	; b360

; ----------------------------------------------------------------------
; DATOS rle_vram_B366: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (285
;   bytes)
;   0xb366..0xb483  (285 bytes)
DATA_rle_vram_B366:
	defb 0c1h,081h,03ch,042h,018h,03ch,03ch,018h,0c3h,081h,03ch,042h,018h,03ch,03ch,018h	; b366  ..<B.<<...<B.<<.
	defb 0c3h,000h,03ch,042h,018h,03ch,03ch,018h,0c3h,081h,03ch,042h,018h,03ch,03ch,018h	; b376  ..<B.<<...<B.<<.
	defb 0c3h,0c3h,03ch,042h,018h,03ch,03ch,018h,0c3h,000h,000h,05ah,03ch,0c3h,05ah,03ch	; b386  ..<B.<<....Z<.Z<
	defb 0c3h,05ah,03ch,0c3h,05ah,03ch,0c3h,000h,000h,05ah,03ch,0c3h,05ah,03ch,0c3h,05ah	; b396  .Z<.Z<...Z<.Z<.Z
	defb 03ch,0c3h,006h,000h,0b1h,066h,018h,024h,018h,0dbh,05ah,024h,05ah,024h,000h,044h	; b3a6  <....f.$..Z$Z$.D
	defb 010h,00dh,020h,052h,038h,094h,000h,010h,008h,05ch,006h,0f9h,095h,06ah,014h,04ah	; b3b6  .. R8....\...j.J
	defb 093h,03ah,060h,09fh,0a9h,056h,004h,01ah,00bh,05ch,006h,0f9h,095h,06ah,095h,0d5h	; b3c6  .:`..V...\...j..
	defb 000h,03fh,0cfh,050h,05fh,04eh,006h,000h,0bfh,008h,005h,009h,00bh,00bh,006h,009h	; b3d6  .?.P_N..........
	defb 00bh,00bh,006h,099h,0d6h,0d9h,066h,091h,0d2h,0d4h,060h,093h,0d2h,0d0h,060h,092h	; b3e6  ......f...`...`.
	defb 0d2h,0d0h,060h,00ch,002h,086h,0abh,0a0h,0c4h,05ah,0b5h,029h,00bh,0ebh,006h,009h	; b3f6  ..`......Z.)....
	defb 02bh,00bh,006h,048h,0aah,0cbh,038h,070h,0a3h,04ch,033h,089h,04fh,049h,000h,05eh	; b406  +..H..8p.L3.OI.^
	defb 028h,014h,02eh,030h,060h,050h,060h,080h,003h,000h,098h,002h,008h,007h,012h,005h	; b416  (..0`P`.........
	defb 036h,02dh,006h,000h,005h,002h,0c0h,0c0h,060h,068h,0f2h,0ceh,01ch,0f9h,004h,0eah	; b426  6-......`h......
	defb 000h,07eh,0c0h,006h,000h,002h,081h,083h,002h,004h,001h,005h,000h,0a8h,02fh,0f8h	; b436  .~............/.
	defb 00fh,0a3h,05ch,03eh,055h,080h,009h,0ebh,06bh,066h,089h,0ebh,04bh,006h,06ah,080h	; b446  ..\>U...kf..K.j.
	defb 066h,046h,080h,000h,001h,000h,0c9h,00bh,06bh,026h,0c9h,0cbh,06bh,026h,012h,02fh	; b456  fF......k&..k&./
	defb 062h,01ch,02eh,010h,003h,002h,005h,000h,08eh,005h,002h,005h,000h,002h,001h,026h	; b466  b..............&
	defb 02dh,03bh,015h,002h,000h,0c3h,081h,003h,000h,082h,042h,081h,000h	; b476  -.........B..

; ----------------------------------------------------------------------
; DATOS rle_vram_B483: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (255
;   bytes)
;   0xb483..0xb582  (255 bytes)
DATA_rle_vram_B483:
	defb 08fh,0f0h,0e0h,050h,0c0h,030h,020h,0c0h,0f0h,0f0h,0e0h,050h,0a0h,0f0h,0a0h,090h	; b483  ...P.0 ....P....
	defb 003h,0f0h,08dh,0e0h,040h,070h,050h,040h,0f0h,0f0h,0e0h,050h,0e0h,0f0h,0e0h,0e0h	; b493  ....@pP@...P....
	defb 003h,0f0h,085h,0e0h,080h,0f0h,090h,080h,004h,0f0h,08ah,080h,040h,0f0h,080h,040h	; b4a3  ............@..@
	defb 0f0h,080h,040h,0f0h,080h,003h,040h,088h,0f0h,080h,040h,0f0h,080h,040h,0f0h,080h	; b4b3  ..@...@...@..@..
	defb 007h,040h,089h,0e0h,0f0h,0e0h,0f0h,0f0h,050h,080h,0e0h,0f0h,008h,090h,003h,0f0h	; b4c3  .@......P.......
	defb 099h,0e0h,050h,0f0h,060h,050h,0f0h,0f0h,060h,050h,0e0h,0f0h,050h,0e0h,0f0h,0f0h	; b4d3  ..P.`P..`P..P...
	defb 060h,050h,0e0h,0f0h,050h,0e0h,0f0h,0e0h,0e0h,0e8h,003h,0f0h,081h,0e0h,007h,080h	; b4e3  `P..P...........
	defb 09ch,050h,0f0h,0f0h,0e0h,050h,0f0h,0f0h,0e0h,050h,0f0h,0f0h,0e0h,050h,0f0h,0f0h	; b4f3  .P...P...P...P..
	defb 0e0h,050h,0f0h,0f0h,0e0h,050h,0f0h,0f0h,0e0h,050h,0f0h,0e0h,0e0h,003h,0f0h,002h	; b503  .P...P...P......
	defb 0e0h,002h,0f0h,095h,0e0h,050h,0f0h,0f0h,0e0h,050h,050h,0f0h,050h,0f0h,0f0h,0e0h	; b513  .....P...PP.P...
	defb 0e0h,050h,0f0h,0f0h,0e0h,0f0h,0f0h,050h,0e0h,003h,0f0h,002h,050h,004h,080h,082h	; b523  .P.....P....P...
	defb 0f0h,080h,003h,0f0h,082h,0e0h,050h,005h,0f0h,087h,050h,0f0h,0e0h,050h,0f0h,0e0h	; b533  ......P...P..P..
	defb 050h,003h,0f0h,081h,050h,00ah,0f0h,081h,080h,006h,0f0h,094h,050h,0f0h,050h,0e0h	; b543  P...P.......P.P.
	defb 0e0h,0f0h,050h,080h,0f0h,0f0h,0e0h,050h,0f0h,0f0h,0e0h,050h,0f0h,0f0h,0e0h,050h	; b553  ..P....P...P...P
	defb 004h,080h,08fh,050h,0f0h,0e0h,050h,0f0h,0f0h,0e0h,050h,0f0h,0e0h,0f0h,0e0h,050h	; b563  ...P..P...P....P
	defb 080h,0e0h,00eh,0f0h,002h,050h,003h,0f0h,081h,050h,004h,080h,081h,0f0h,000h	; b573  .....P...P.....

; ----------------------------------------------------------------------
; DATOS rle_vram_B582: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (83
;   bytes)
;   0xb582..0xb5d5  (83 bytes)
DATA_rle_vram_B582:
	defb 005h,000h,081h,040h,003h,000h,084h,03eh,0ffh,0ffh,03eh,005h,000h,081h,068h,005h	; b582  ...@...>..>...h.
	defb 000h,08fh,018h,06ch,056h,0b8h,0d6h,06ch,028h,000h,000h,00ch,007h,003h,005h,005h	; b592  ...lV..l(.......
	defb 003h,003h,000h,085h,0c0h,0f8h,0ffh,0f8h,080h,003h,000h,0a6h,004h,002h,001h,008h	; b5a2  ................
	defb 004h,002h,003h,00ch,037h,05bh,0edh,08bh,020h,0d5h,040h,038h,0e4h,07fh,09eh,009h	; b5b2  ....7[.. .@8....
	defb 0a2h,0d5h,0b3h,08ch,067h,011h,025h,07bh,020h,0d5h,040h,080h,0e0h,038h,0deh,00ch	; b5c2  ....g.%{ .@..8..
	defb 0aah,0d4h,000h	; b5d2

; ----------------------------------------------------------------------
; DATOS rle_vram_B5D5: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (45
;   bytes)
;   0xb5d5..0xb602  (45 bytes)
DATA_rle_vram_B5D5:
	defb 008h,0f0h,008h,090h,008h,0f0h,008h,0c0h,010h,0f0h,008h,0b0h,002h,040h,09bh,050h	; b5d5  .............@.P
	defb 070h,070h,0e0h,0e0h,0f0h,040h,040h,050h,050h,070h,0e0h,0e0h,0f0h,040h,040h,050h	; b5e5  pp...@@PPp...@@P
	defb 070h,070h,0e0h,0f0h,0f0h,040h,040h,050h,070h,070h,003h,0f0h,000h	; b5f5  pp...@@Ppp...

; ----------------------------------------------------------------------
; DATOS rle_vram_B602: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (203
;   bytes)
;   0xb602..0xb6cd  (203 bytes)
DATA_rle_vram_B602:
	defb 083h,04ch,007h,00bh,005h,000h,089h,006h,051h,004h,080h,006h,00fh,00fh,006h,064h	; b602  .L......Q......d
	defb 007h,000h,095h,00fh,002h,024h,019h,010h,064h,000h,010h,022h,092h,009h,020h,0c2h	; b612  .....$..d..".. .
	defb 000h,010h,000h,058h,04ch,024h,012h,080h,003h,000h,0b0h,09bh,0c9h,064h,032h,088h	; b622  ...XL$.......d2.
	defb 002h,000h,000h,036h,099h,0cch,063h,018h,042h,000h,000h,085h,05dh,03ah,036h,00dh	; b632  ...6..c.B...]:6.
	defb 03eh,052h,081h,030h,078h,078h,030h,060h,0f0h,0f0h,060h,000h,000h,001h,000h,018h	; b642  >R.0xx0`..`.....
	defb 024h,042h,001h,000h,003h,004h,018h,0e4h,004h,008h,008h,003h,000h,085h,08ch,052h	; b652  $B.............R
	defb 021h,042h,084h,004h,000h,090h,066h,011h,033h,066h,006h,00fh,00fh,006h,060h,0f0h	; b662  !B....f.3f....`.
	defb 0f0h,060h,006h,00fh,00fh,006h,004h,000h,081h,0c0h,003h,020h,085h,066h,011h,033h	; b672  .`......... .f.3
	defb 066h,0c0h,003h,020h,084h,027h,058h,084h,084h,004h,000h,088h,006h,00fh,00fh,006h	; b682  f.. .'X.........
	defb 080h,060h,010h,00ch,006h,000h,083h,03eh,07fh,03eh,005h,000h,086h,0f0h,03eh,00fh	; b692  .`.....>.>....>.
	defb 037h,038h,00eh,004h,000h,082h,0f0h,080h,003h,000h,093h,008h,0e2h,089h,066h,0cch	; b6a2  78............f.
	defb 099h,013h,000h,010h,064h,089h,014h,060h,0c9h,036h,010h,044h,022h,02ah,003h,000h	; b6b2  ....d..`.6.D"*..
	defb 089h,047h,090h,048h,06ah,04ch,09ah,024h,009h,033h,000h	; b6c2  .G.HjL.$.3.

; ----------------------------------------------------------------------
; DATOS rle_vram_B6CD: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (123
;   bytes)
;   0xb6cd..0xb748  (123 bytes)
DATA_rle_vram_B6CD:
	defb 00ch,050h,084h,020h,030h,020h,0c0h,010h,050h,002h,054h,006h,050h,002h,054h,006h	; b6cd  .P. 0 ..P.T.P.T.
	defb 050h,003h,054h,005h,050h,003h,054h,005h,050h,086h,0a0h,030h,020h,0c0h,020h,0c0h	; b6dd  P.T.P.T.P..0 . .
	defb 003h,020h,087h,030h,020h,0c0h,020h,030h,020h,0c0h,004h,060h,002h,050h,081h,060h	; b6ed  . .0 . 0 ..`.P.`
	defb 008h,050h,081h,060h,007h,050h,081h,060h,005h,020h,08eh,0c3h,0c2h,0c0h,020h,030h	; b6fd  .P.`.P.`. .... 0
	defb 020h,0c0h,020h,030h,020h,0c0h,020h,030h,020h,005h,0c0h,002h,050h,089h,060h,050h	; b70d   . 0 . 0 ...P.`P
	defb 020h,0c3h,0c2h,0c0h,050h,050h,060h,004h,050h,081h,060h,005h,0c0h,084h,020h,030h	; b71d   ...PP`.P.`... 0
	defb 020h,040h,007h,050h,008h,070h,004h,0f0h,002h,0f5h,081h,050h,009h,0f0h,005h,050h	; b72d   @.P.p.....P...P
	defb 003h,054h,007h,050h,081h,054h,00eh,050h,002h,054h,000h	; b73d  .T.P.T.P.T.

; ----------------------------------------------------------------------
; DATOS rle_vram_B748: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (200
;   bytes)
;   0xb748..0xb810  (200 bytes)
DATA_rle_vram_B748:
	defb 002h,000h,081h,004h,005h,000h,082h,078h,060h,006h,000h,085h,030h,040h,001h,003h	; b748  .......x`...0@..
	defb 004h,004h,000h,083h,081h,0c3h,024h,004h,000h,09eh,06ch,033h,04eh,021h,00ch,053h	; b758  ......$...l3N!.S
	defb 02ah,07dh,0e6h,09eh,06ch,0cah,090h,06ch,0ceh,096h,000h,00eh,01fh,00eh,070h,0f8h	; b768  *}..l..l......p.
	defb 070h,000h,000h,080h,070h,03fh,03ch,060h,006h,000h,081h,0ffh,003h,000h,090h,026h	; b778  p...p?<`.......&
	defb 042h,042h,021h,04ah,056h,02ch,091h,0b8h,01ah,060h,036h,040h,0a6h,069h,012h,004h	; b788  BB!JV,...`6@.i..
	defb 000h,082h,010h,008h,007h,000h,097h,034h,07bh,0b9h,000h,01ah,024h,05dh,020h,056h	; b798  .......4{...$] V
	defb 07fh,05eh,000h,0e8h,004h,0eah,08ch,0d6h,058h,0ech,030h,08fh,060h,01bh,004h,000h	; b7a8  .^......X.0.`...
	defb 0a0h,0d0h,008h,0c8h,024h,055h,0a2h,0e1h,044h,06dh,022h,059h,05eh,02dh,012h,04dh	; b7b8  ....$U..Dm"Y^-.M
	defb 002h,075h,028h,050h,030h,08ah,066h,010h,0bdh,01dh,026h,05bh,031h,04ch,06ah,037h	; b7c8  .u(P0.f...&[1Lj7
	defb 053h,005h,000h,0b3h,008h,007h,003h,000h,097h,082h,06fh,004h,034h,07bh,0b9h,000h	; b7d8  S.........o.4{..
	defb 063h,09ch,022h,008h,0c0h,0e6h,06fh,000h,008h,006h,002h,000h,026h,0cfh,082h,0e4h	; b7e8  c."...o.....&...
	defb 054h,0e4h,000h,067h,059h,083h,008h,047h,0b2h,057h,000h,06eh,005h,0aeh,000h,031h	; b7f8  T..gY..G.W.n...1
	defb 07bh,085h,018h,0edh,036h,0efh,040h,000h	; b808  {...6.@.

; ----------------------------------------------------------------------
; DATOS rle_vram_B810: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (153
;   bytes)
;   0xb810..0xb8a9  (153 bytes)
DATA_rle_vram_B810:
	defb 008h,0f0h,081h,0c0h,007h,070h,083h,0c0h,020h,0c0h,005h,020h,002h,0c0h,007h,020h	; b810  .....p.. .. ...
	defb 085h,030h,0a0h,0f0h,030h,030h,003h,020h,084h,030h,0a0h,0f0h,0a0h,003h,020h,008h	; b820  .0..00. .0.... .
	defb 090h,002h,0f0h,081h,070h,005h,0f0h,008h,070h,085h,020h,0c0h,0c0h,020h,020h,003h	; b830  ....p...p. ..  .
	defb 0c0h,088h,020h,0c0h,030h,020h,0c0h,020h,0c0h,0c0h,008h,0b0h,006h,070h,002h,0c0h	; b840  .. .0 . .....p..
	defb 002h,020h,086h,0c0h,030h,0c0h,020h,030h,030h,003h,020h,002h,0c0h,003h,020h,082h	; b850  . ..0. 00. ... .
	defb 030h,0c0h,00eh,020h,002h,030h,085h,0a0h,0f0h,0a0h,030h,030h,006h,020h,002h,0c0h	; b860  0.. .0....00. ..
	defb 003h,020h,082h,030h,0c0h,00bh,020h,093h,0c0h,020h,020h,0c0h,070h,0c0h,070h,0c0h	; b870  . .0.. ..  .p.p.
	defb 0c0h,070h,070h,0c0h,070h,0c0h,070h,070h,0c0h,020h,020h,003h,0c0h,088h,070h,0c0h	; b880  .pp.p.pp.  ...p.
	defb 0c0h,0c7h,0c0h,0c7h,0c0h,0c0h,003h,020h,081h,0c0h,003h,020h,089h,070h,0c0h,020h	; b890  ....... ... .p.
	defb 020h,0c0h,0c0h,070h,0c0h,070h,003h,0c0h,000h	; b8a0   ..p.p...

; ----------------------------------------------------------------------
; DATOS rle_vram_B8A9: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (265
;   bytes)
;   0xb8a9..0xb9b2  (265 bytes)
DATA_rle_vram_B8A9:
	defb 002h,000h,091h,024h,000h,000h,024h,000h,000h,07eh,0ffh,000h,07fh,0ffh,07fh,000h	; b8a9  ...$..$..~......
	defb 0feh,07eh,0ffh,000h,003h,0bfh,085h,000h,04fh,07eh,0ffh,000h,003h,0f7h,0aah,000h	; b8b9  .~......O~......
	defb 0ebh,07eh,0ffh,000h,0feh,0fdh,0fdh,000h,0e9h,07eh,0ffh,000h,0c0h,0edh,0adh,0c0h	; b8c9  .~.......~......
	defb 03dh,07eh,0ffh,000h,0cfh,0efh,0afh,0c0h,02fh,000h,000h,0e0h,07eh,03fh,05fh,05ch	; b8d9  =~....../...~?_\
	defb 030h,000h,008h,014h,008h,0e0h,088h,014h,008h,004h,000h,09ch,078h,0fch,078h,000h	; b8e9  0...........x.x.
	defb 07eh,03ch,008h,008h,014h,012h,00ah,00ah,00fh,006h,002h,00ch,014h,008h,018h,010h	; b8f9  ~<..............
	defb 01eh,00ch,00ch,014h,018h,018h,070h,0d0h,004h,004h,083h,003h,002h,001h,006h,000h	; b909  ......p.........
	defb 08bh,080h,040h,0f0h,008h,00ch,00ah,005h,007h,002h,005h,005h,006h,000h,08eh,081h	; b919  ..@.............
	defb 046h,000h,001h,002h,002h,005h,01eh,0a4h,048h,0a0h,040h,0c0h,080h,004h,000h,09dh	; b929  F.......H.@.....
	defb 04bh,034h,007h,00fh,03fh,07fh,00eh,09eh,03fh,004h,03eh,01eh,0e5h,0f7h,0f7h,07bh	; b939  K4..?...?.>....{
	defb 0f0h,0f8h,001h,038h,09ch,0beh,07dh,0fah,0d0h,0a0h,020h,020h,040h,003h,080h,004h	; b949  ...8..}...  @...
	defb 001h,004h,000h,098h,08fh,0a7h,07ah,07dh,07bh,039h,01dh,07fh,011h,046h,07bh,0f1h	; b959  ......z}{9...F{.
	defb 0e4h,0deh,0deh,0dfh,0e7h,017h,0f7h,0fbh,0edh,0cdh,0bah,070h,004h,0c0h,003h,080h	; b969  ...........p....
	defb 097h,000h,01fh,007h,005h,00ah,00ah,014h,018h,028h,0efh,017h,006h,01fh,016h,024h	; b979  .........(.....$
	defb 028h,028h,003h,0f8h,0e0h,004h,002h,001h,003h,000h,003h,080h,002h,040h,002h,0a0h	; b989  ((...........@..
	defb 003h,000h,095h,001h,002h,001h,007h,00fh,068h,050h,0e0h,080h,080h,000h,000h,080h	; b999  ........hP......
	defb 004h,002h,001h,000h,004h,002h,001h,000h,000h	; b9a9  .........

; ----------------------------------------------------------------------
; DATOS rle_vram_B9B2: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (121
;   bytes)
;   0xb9b2..0xba2b  (121 bytes)
DATA_rle_vram_B9B2:
	defb 008h,0f0h,085h,075h,040h,040h,050h,070h,003h,040h,085h,075h,040h,040h,050h,075h	; b9b2  ...u@@Pp.@.u@@Pu
	defb 003h,040h,085h,075h,040h,040h,050h,075h,003h,040h,085h,075h,040h,040h,050h,070h	; b9c2  .@.u@@Pu.@.u@@Pp
	defb 003h,040h,085h,075h,040h,040h,070h,070h,003h,040h,085h,075h,040h,040h,050h,070h	; b9d2  .@.u@@pp.@.u@@Pp
	defb 003h,040h,010h,0f0h,008h,090h,082h,080h,090h,006h,0a0h,082h,080h,090h,006h,0a0h	; b9e2  .@..............
	defb 082h,080h,090h,038h,0a0h,004h,060h,002h,096h,081h,060h,007h,096h,002h,090h,081h	; b9f2  ...8..`...`.....
	defb 0a9h,005h,096h,005h,0a0h,081h,090h,00ah,060h,007h,096h,081h,060h,010h,096h,00ah	; ba02  ........`...`...
	defb 060h,006h,0a0h,003h,096h,081h,060h,004h,0a0h,083h,0a6h,060h,060h,013h,0a0h,082h	; ba12  `.....`....``...
	defb 090h,080h,007h,0a0h,081h,080h,008h,0b0h,000h	; ba22  .........

; ----------------------------------------------------------------------
; DATOS rle_vram_BA2B: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (292
;   bytes)
;   0xba2b..0xbb4f  (292 bytes)
DATA_rle_vram_BA2B:
	defb 005h,000h,0b3h,010h,000h,000h,08fh,064h,0f9h,0c7h,00dh,038h,034h,018h,09dh,053h	; ba2b  .......d...84..S
	defb 08eh,0b0h,069h,096h,07bh,00ch,03fh,0e1h,01eh,0f1h,086h,030h,01fh,086h,026h,099h	; ba3b  ..i.{.?....0..&.
	defb 046h,08bh,03bh,0e7h,092h,008h,000h,00ah,001h,00ch,011h,00ch,002h,001h,032h,047h	; ba4b  F.............2G
	defb 083h,030h,0dbh,007h,030h,0c4h,004h,000h,084h,006h,019h,006h,029h,004h,000h,096h	; ba5b  .0..0.......)...
	defb 080h,020h,040h,020h,000h,000h,0c0h,078h,03fh,078h,080h,000h,00eh,01fh,00eh,000h	; ba6b  . @ ...x?x......
	defb 000h,070h,0f8h,070h,000h,0ffh,004h,000h,084h,0ffh,000h,000h,0ffh,004h,000h,085h	; ba7b  .p.p............
	defb 0f0h,000h,003h,005h,002h,005h,000h,098h,056h,01bh,04eh,09bh,06dh,03ah,09ch,062h	; ba8b  ........V.N.m:.b
	defb 008h,0f4h,038h,0d3h,0e4h,08bh,07ch,039h,004h,038h,09eh,02eh,084h,010h,0e7h,0f9h	; ba9b  ..8...|9.8......
	defb 003h,000h,085h,020h,0cch,082h,019h,066h,007h,000h,09dh,0e2h,000h,004h,008h,006h	; baab  ... ...f........
	defb 003h,004h,00eh,00ch,000h,00eh,099h,070h,006h,032h,0e3h,019h,039h,082h,0dch,000h	; babb  .......p.2..9...
	defb 030h,060h,020h,010h,011h,00eh,000h,003h,004h,000h,084h,0a8h,063h,084h,080h,004h	; bacb  0` .........c...
	defb 000h,088h,064h,0d2h,097h,06ah,044h,022h,077h,0aah,004h,000h,098h,080h,040h,0e0h	; badb  ..d..jD"w.....@.
	defb 040h,040h,020h,030h,034h,060h,064h,051h,0d0h,000h,002h,004h,004h,014h,002h,022h	; baeb  @@ 04`dQ......."
	defb 04ch,060h,0d0h,090h,060h,008h,000h,084h,011h,020h,06ah,010h,004h,000h,0c4h,080h	; bafb  L`..`.... j.....
	defb 000h,040h,098h,0ceh,06bh,076h,03dh,09fh,02eh,013h,00fh,026h,0dch,030h,0f4h,0cch	; bb0b  .@..kv=....&.0..
	defb 01ah,0f0h,068h,064h,0d2h,097h,06ah,044h,081h,06eh,031h,060h,0d0h,090h,060h,040h	; bb1b  ..hd..jD.n1`..`@
	defb 011h,063h,09eh,000h,000h,00ch,026h,086h,018h,0e7h,0f9h,026h,01ch,041h,0b7h,04ah	; bb2b  .c....&....&.A.J
	defb 065h,088h,037h,046h,031h,018h,00dh,00eh,026h,09bh,0ech,0fbh,065h,0b8h,0f0h,0c1h	; bb3b  e.7F1...&...e...
	defb 03ah,0cfh,0f2h,000h	; bb4b

; ----------------------------------------------------------------------
; DATOS rle_vram_BB4F: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (231
;   bytes)
;   0xbb4f..0xbc36  (231 bytes)
DATA_rle_vram_BB4F:
	defb 008h,0f0h,002h,020h,002h,0c0h,081h,030h,003h,020h,081h,0c0h,007h,020h,08dh,0c0h	; bb4f  ... ...0. ... ..
	defb 020h,030h,0c0h,020h,0c0h,020h,030h,020h,0c0h,0c0h,020h,020h,006h,0c0h,002h,020h	; bb5f   0. . 0 ..  ...
	defb 002h,0c0h,089h,020h,030h,020h,020h,0c0h,020h,0c0h,0c0h,020h,005h,080h,083h,090h	; bb6f  ... 0  . .. ....
	defb 080h,0b0h,006h,090h,082h,080h,0b0h,003h,0f0h,081h,070h,004h,0f0h,008h,090h,010h	; bb7f  ..........p.....
	defb 070h,082h,080h,090h,006h,0a0h,002h,020h,002h,0c0h,088h,020h,0c0h,020h,030h,020h	; bb8f  p...... ... . 0
	defb 030h,0c0h,0c0h,003h,020h,089h,030h,020h,030h,020h,0c0h,0c0h,020h,020h,0c0h,004h	; bb9f  0... .0 0 ..  ..
	defb 020h,083h,030h,020h,0c0h,009h,020h,002h,030h,002h,020h,08ch,0c0h,020h,020h,0c0h	; bbaf   .0 .. .0. ..  .
	defb 020h,020h,030h,0c0h,020h,020h,030h,0c0h,004h,020h,086h,030h,020h,0c0h,0c0h,020h	; bbbf    0.  0.. .0 ..
	defb 030h,007h,0c0h,081h,020h,006h,0c0h,088h,0a0h,090h,080h,090h,0a0h,090h,080h,090h	; bbcf  0... ...........
	defb 005h,0a0h,085h,090h,080h,090h,0b0h,0b0h,003h,030h,002h,0b0h,003h,030h,004h,020h	; bbdf  .........0...0.
	defb 002h,0b0h,083h,0a0h,090h,080h,005h,090h,006h,030h,007h,020h,084h,000h,020h,030h	; bbef  .........0. .. 0
	defb 030h,008h,020h,082h,030h,020h,005h,0c0h,085h,0a0h,090h,080h,090h,0a0h,003h,020h	; bbff  0. .0 .........
	defb 088h,0a0h,090h,080h,090h,0a0h,020h,020h,0c0h,003h,020h,08ch,030h,020h,020h,0c0h	; bc0f  ......  .. .0  .
	defb 020h,020h,0c0h,030h,030h,020h,0c0h,0c0h,004h,020h,081h,030h,003h,020h,004h,0c0h	; bc1f    .00 ... .0. ..
	defb 002h,020h,083h,0c0h,020h,0c0h,000h	; bc2f

; ----------------------------------------------------------------------
; DATOS rle_vram_BC36: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (99
;   bytes)
;   0xbc36..0xbc99  (99 bytes)
DATA_rle_vram_BC36:
	defb 004h,000h,081h,010h,004h,000h,086h,0c0h,078h,07fh,0bfh,03eh,0e0h,004h,000h,082h	; bc36  ........x..>....
	defb 080h,0e0h,009h,000h,081h,0ffh,006h,000h,083h,03eh,07fh,03eh,004h,000h,094h,006h	; bc46  .........>.>....
	defb 028h,0e0h,029h,000h,000h,022h,05dh,0c9h,0ddh,0ebh,03ch,000h,000h,06ah,06bh,06bh	; bc56  (.).."]...<..jkk
	defb 06ah,094h,03eh,004h,000h,082h,001h,002h,003h,000h,0a7h,003h,01bh,07dh,090h,063h	; bc66  j.>..........}.c
	defb 095h,055h,096h,04dh,0fah,0f0h,00fh,0deh,074h,020h,000h,0ebh,000h,07dh,087h,030h	; bc76  .U.M....t ...}.0
	defb 078h,0fch,0c0h,0b7h,058h,0adh,0c0h,090h,040h,056h,086h,058h,0a0h,050h,0bch,0c0h	; bc86  x...X...@V.X.P..
	defb 0bch,0eeh,000h	; bc96

; ----------------------------------------------------------------------
; DATOS rle_vram_BC99: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (69
;   bytes)
;   0xbc99..0xbcde  (69 bytes)
DATA_rle_vram_BC99:
	defb 018h,0f0h,008h,070h,008h,090h,006h,040h,081h,064h,004h,040h,085h,050h,040h,0e0h	; bc99  ...p...@.d.@.P@.
	defb 040h,075h,003h,040h,085h,0e0h,050h,040h,040h,094h,005h,020h,003h,070h,003h,040h	; bca9  @u.@..P@@.. .p.@
	defb 002h,050h,08bh,040h,070h,0f0h,040h,040h,050h,070h,040h,0e4h,040h,0e0h,003h,0d0h	; bcb9  .P.@p.@@Pp@.@...
	defb 087h,070h,0e0h,060h,080h,090h,040h,080h,003h,040h,084h,0e7h,0e0h,0e0h,020h,005h	; bcc9  .p.`..@..@.... .
	defb 040h,082h,070h,090h,000h	; bcd9

; ----------------------------------------------------------------------
; DATOS rle_vram_BCDE: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (298
;   bytes)
;   0xbcde..0xbe08  (298 bytes)
DATA_rle_vram_BCDE:
	defb 005h,000h,083h,01fh,07fh,0c5h,005h,000h,09bh,0e0h,0f8h,0fch,001h,003h,003h,007h	; bcde  ................
	defb 007h,027h,017h,017h,0c7h,09bh,0c7h,041h,0c7h,09bh,0c7h,061h,0feh,02bh,057h,02dh	; bcee  .'.....A...a.+W-
	defb 017h,02dh,05bh,037h,003h,000h,003h,080h,082h,090h,0b0h,003h,00fh,09ch,007h,003h	; bcfe  .-[7............
	defb 002h,001h,004h,0c7h,09bh,0c7h,083h,0fdh,05ah,028h,037h,05fh,0bfh,0efh,0fbh,0e7h	; bd0e  ........Z(7_....
	defb 090h,060h,00eh,070h,050h,0d0h,0a0h,060h,0c0h,080h,004h,000h,002h,004h,083h,046h	; bd1e  .`.pP..`.......F
	defb 022h,033h,003h,000h,003h,020h,002h,064h,002h,003h,081h,001h,003h,000h,0adh,004h	; bd2e  "3... .d........
	defb 018h,06fh,077h,069h,078h,0f3h,067h,089h,042h,003h,070h,007h,0feh,06ah,0b4h,0a8h	; bd3e  .owix.g.B.p..j..
	defb 0e0h,000h,000h,002h,003h,002h,005h,004h,005h,000h,000h,002h,012h,089h,045h,0a0h	; bd4e  ..............E.
	defb 020h,000h,010h,010h,031h,033h,076h,06eh,01ch,000h,000h,080h,003h,000h,094h,004h	; bd5e   ...13vn........
	defb 018h,010h,00ch,007h,003h,001h,0c0h,070h,03ch,01bh,01dh,00eh,0c4h,0f0h,0f8h,07ch	; bd6e  .......p<......|
	defb 038h,028h,0a8h,005h,001h,0aeh,002h,068h,0c8h,0a8h,058h,028h,0d8h,014h,064h,03fh	; bd7e  8(.....h..X(..d?
	defb 027h,01eh,000h,000h,020h,020h,010h,0c0h,080h,004h,004h,008h,010h,020h,040h,00bh	; bd8e  '...  ....... @.
	defb 009h,00ah,015h,013h,011h,026h,02fh,0c0h,020h,0e0h,020h,0c0h,0e0h,060h,090h,01ch	; bd9e  .....&/. . ..`..
	defb 009h,003h,003h,001h,003h,000h,08ch,070h,0e0h,0c0h,083h,00fh,03eh,07ch,078h,000h	; bdae  .......p....>|x.
	defb 000h,0c0h,080h,003h,000h,086h,008h,01fh,00fh,007h,003h,001h,004h,000h,084h,0c0h	; bdbe  ................
	defb 0e0h,0e0h,0c0h,003h,000h,081h,003h,004h,002h,003h,000h,085h,064h,094h,064h,0fah	; bdce  ............d.d.
	defb 032h,003h,000h,084h,006h,00fh,00fh,006h,004h,000h,085h,026h,059h,046h,05fh,0bfh	; bdde  2..........&YF_.
	defb 003h,000h,085h,020h,0f0h,070h,090h,0e0h,003h,000h,08ch,030h,000h,003h,00fh,01fh	; bdee  ... .p.....0....
	defb 01eh,00ch,000h,030h,0e0h,0c0h,080h,004h,000h,000h	; bdfe  ...0......

; ----------------------------------------------------------------------
; DATOS rle_vram_BE08: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (147
;   bytes)
;   0xbe08..0xbe9b  (147 bytes)
DATA_rle_vram_BE08:
	defb 007h,0c0h,081h,0c2h,00ah,0c0h,08fh,020h,0c0h,0c0h,020h,0c0h,0c0h,020h,030h,020h	; be08  ....... .. .. 0
	defb 032h,020h,030h,020h,032h,0c0h,007h,0c2h,006h,0c0h,082h,030h,020h,003h,0c0h,08ah	; be18  2 0 2......0 ...
	defb 020h,0c0h,090h,090h,0c0h,020h,030h,020h,0c2h,020h,003h,0c0h,002h,0c2h,086h,0c0h	; be28   .... 0 . ......
	defb 020h,0c0h,090h,090h,0c0h,003h,020h,005h,0c0h,00eh,090h,002h,080h,081h,020h,005h	; be38   ..... ....... .
	defb 0c0h,002h,090h,081h,0c0h,003h,020h,004h,0c0h,083h,0c2h,032h,0c2h,005h,0c0h,004h	; be48  ...... ....2....
	defb 090h,081h,080h,007h,090h,003h,080h,005h,090h,004h,080h,00bh,090h,002h,080h,003h	; be58  ................
	defb 090h,00bh,080h,006h,090h,081h,080h,005h,090h,081h,080h,003h,0c0h,002h,000h,003h	; be68  ................
	defb 080h,082h,0c0h,020h,006h,080h,002h,090h,002h,080h,081h,090h,003h,080h,003h,090h	; be78  ... ............
	defb 002h,080h,081h,090h,00dh,080h,081h,090h,004h,080h,008h,090h,040h,080h,002h,090h	; be88  ............@...
	defb 006h,080h,000h	; be98

; ----------------------------------------------------------------------
; DATOS relleno_ff: 357 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (357 bytes)
;   0xbe9b..0xc000  (357 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be9b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beab  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bebb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; becb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bedb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beeb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; befb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf0b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf1b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf2b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf3b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf4b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf5b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf6b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf7b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9b  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfab  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfbb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfcb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfdb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfeb  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh	; bffb

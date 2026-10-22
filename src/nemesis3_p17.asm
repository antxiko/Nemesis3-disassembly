; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 17 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS rle_7F5D_cola: los dibujos de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C) (sigue del banco 16); se solapan 2 bloques:
;   (rle_vram_7F5D_cola 8000-80BD); lo leen p00:4CFF, p00:4B3C (189 bytes)
;   0x8000..0x80bd  (189 bytes)
DATA_rle_7F5D_cola:
	defb 083h,0cfh,0f0h,0fdh,0ffh,077h,01fh,02fh,050h,02ah,0aah,00fh,0f0h,007h,00fh,003h	; 8000  .....w./P*......
	defb 01fh,07fh,080h,0e0h,0fch,0bdh,0fch,0e0h,0fch,0f8h,060h,0ffh,0f8h,083h,0ffh,08fh	; 8010  ..........`.....
	defb 003h,0ffh,099h,081h,04ch,0ffh,07fh,00fh,0ffh,01eh,0ffh,0ffh,041h,0e3h,008h,0ffh	; 8020  ....L.......A...
	defb 07fh,006h,07fh,01ch,0ffh,0ffh,0f0h,0a8h,050h,0ffh,0fch,0c0h,004h,0ffh,088h,0f0h	; 8030  ........P.......
	defb 080h,0ffh,0ffh,01fh,0feh,0e0h,0f8h,004h,0ffh,094h,0f8h,007h,07fh,03fh,0dfh,0e7h	; 8040  .............?..
	defb 0fbh,0fch,0feh,0d4h,077h,067h,0efh,05fh,00fh,0ffh,07fh,007h,0ffh,0ffh,003h,0bfh	; 8050  ....wg._........
	defb 0dbh,07fh,03fh,0ffh,07fh,01fh,007h,0f8h,003h,00fh,03fh,07fh,007h,01fh,03fh,0feh	; 8060  ..?.......?...?.
	defb 0fdh,031h,01ch,0ffh,0f0h,083h,03fh,0ffh,003h,010h,0ffh,08fh,03fh,018h,0ffh,083h	; 8070  .1....?.....?...
	defb 00fh,01ch,0ffh,004h,0f8h,0ffh,0ffh,0e0h,0ffh,0ffh,018h,031h,0c3h,0f8h,0f0h,0fch	; 8080  ...........1....
	defb 0ffh,018h,086h,0c0h,0ffh,0e0h,000h,0fch,0f0h,0e0h,0f8h,0fch,080h,0feh,0f0h,0c0h	; 8090  ................
	defb 080h,0c0h,0feh,0f8h,0d4h,060h,005h,0ffh,0c0h,0ech,0c0h,007h,0fch,002h,004h,0ffh	; 80a0  .....`..........
	defb 0dfh,0bdh,0bbh,07bh,08fh,0e3h,0fch,005h,0efh,0efh,0dfh,0dfh,000h	; 80b0  ...{.........

; ----------------------------------------------------------------------
; DATOS rle_80BD: los colores de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_80BD
;   80BD-81FA); lo leen p00:4D11, p00:4B3C (317 bytes)
;   0x80bd..0x81fa  (317 bytes)
DATA_rle_80BD:
	defb 002h,0d0h,002h,0fdh,002h,0d0h,002h,0fdh,003h,0d0h,002h,0fdh,083h,0d0h,0d8h,0d8h	; 80bd  ................
	defb 005h,0d0h,003h,0fdh,004h,0d0h,086h,0d8h,086h,0d6h,0d6h,0fdh,0d0h,004h,0fdh,002h	; 80cd  ................
	defb 0d8h,002h,0d0h,002h,0fdh,081h,0d0h,008h,0d8h,002h,080h,084h,086h,0d0h,0d8h,0d8h	; 80dd  ................
	defb 003h,086h,08fh,0b6h,096h,0fdh,0d0h,0d0h,0d8h,0b8h,0b9h,098h,080h,0fdh,0fdh,0d0h	; 80ed  ................
	defb 0b6h,0b9h,003h,090h,007h,0d0h,083h,0d8h,0fdh,0d0h,003h,0fdh,002h,0d0h,081h,0fdh	; 80fd  ................
	defb 003h,0d0h,002h,0fdh,002h,0d0h,002h,0d8h,097h,0fdh,0d0h,0fdh,0d0h,0fdh,0fdh,0d0h	; 810d  ................
	defb 0d8h,080h,0d6h,0d8h,0fdh,0d0h,0fdh,0fdh,0d6h,0d6h,0d8h,0d6h,086h,0d6h,0d6h,0fdh	; 811d  ................
	defb 003h,086h,002h,0d6h,002h,086h,003h,0d8h,002h,080h,003h,086h,081h,080h,003h,086h	; 812d  ................
	defb 085h,080h,086h,086h,060h,060h,006h,096h,003h,080h,081h,0b0h,003h,090h,08fh,096h	; 813d  ....``..........
	defb 090h,096h,090h,0b9h,0b9h,098h,086h,060h,0b0h,0b9h,0d8h,0d8h,086h,080h,003h,0c6h	; 814d  .......`........
	defb 083h,0c0h,0d8h,0d8h,003h,086h,002h,060h,083h,0c0h,080h,086h,004h,060h,002h,0c0h	; 815d  .......`.....`..
	defb 002h,0d8h,08eh,080h,086h,060h,060h,0c0h,0c0h,0fdh,0d0h,0d8h,0d8h,086h,086h,060h	; 816d  .....``........`
	defb 060h,003h,0d8h,08fh,080h,086h,086h,060h,060h,080h,080h,086h,086h,060h,060h,0d6h	; 817d  `......``....``.
	defb 0d8h,060h,086h,004h,060h,083h,0d6h,086h,080h,006h,060h,083h,080h,096h,096h,003h	; 818d  .`..`.....`.....
	defb 086h,003h,060h,002h,090h,002h,096h,003h,086h,004h,060h,082h,030h,0d2h,003h,0dch	; 819d  ..`.......`.0...
	defb 002h,0d6h,091h,0d0h,0d8h,0d8h,0fdh,0fdh,0d0h,0d6h,0d8h,0d8h,0d0h,0fdh,0fdh,0d0h	; 81ad  ................
	defb 0d8h,0d8h,0fdh,0d0h,003h,0fdh,08fh,0d0h,0fdh,0d6h,0d0h,0d0h,0fdh,0d0h,0d0h,0fdh	; 81bd  ................
	defb 0fdh,060h,060h,0d6h,0d6h,0d0h,003h,0fdh,004h,060h,081h,086h,003h,0d8h,082h,0fdh	; 81cd  .``......`......
	defb 0dbh,003h,0d9h,08fh,0b9h,098h,098h,0d8h,0b6h,0b9h,090h,0b8h,080h,080h,0b0h,098h	; 81dd  ................
	defb 0b9h,0b9h,090h,004h,096h,084h,090h,080h,090h,0b9h,004h,096h,000h	; 81ed  .............

; ----------------------------------------------------------------------
; DATOS rle_81FA: los dibujos de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_81FA
;   81FA-8213); lo leen p00:4CFF, p00:4B3C (25 bytes)
;   0x81fa..0x8213  (25 bytes)
DATA_rle_81FA:
	defb 003h,000h,08dh,001h,007h,01fh,03fh,0ffh,001h,003h,007h,00fh,01fh,03fh,07fh,018h	; 81fa  ......?......?..
	defb 003h,000h,085h,0c0h,0fch,0ffh,0ffh,080h,000h	; 820a  .........

; ----------------------------------------------------------------------
; DATOS rle_8213: los colores de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8213
;   8213-821C); lo leen p00:4D11, p00:4B3C (9 bytes)
;   0x8213..0x821c  (9 bytes)
DATA_rle_8213:
	defb 00fh,0d0h,081h,0fdh,007h,0d0h,081h,0fdh,000h	; 8213  .........

; ----------------------------------------------------------------------
; DATOS rle_821C: los dibujos de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_821C
;   821C-8239); lo leen p00:4CFF, p00:4B3C (29 bytes)
;   0x821c..0x8239  (29 bytes)
DATA_rle_821C:
	defb 003h,000h,006h,0ffh,097h,018h,00ch,002h,080h,0c0h,022h,011h,0ffh,0dfh,0efh,0f7h	; 821c  ..........".....
	defb 0f3h,0f3h,0f9h,0f9h,0c0h,0f0h,0ffh,0ffh,040h,060h,020h,011h,000h	; 822c  ........@` ..

; ----------------------------------------------------------------------
; DATOS rle_8239: los colores de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8239
;   8239-8246); lo leen p00:4D11, p00:4B3C (13 bytes)
;   0x8239..0x8246  (13 bytes)
DATA_rle_8239:
	defb 009h,0d0h,007h,0fdh,081h,0d0h,007h,0d8h,004h,0d0h,004h,0fdh,000h	; 8239  .............

; ----------------------------------------------------------------------
; DATOS rle_8246: los dibujos de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8246
;   8246-8268); lo leen p00:4CFF, p00:4B3C (34 bytes)
;   0x8246..0x8268  (34 bytes)
DATA_rle_8246:
	defb 098h,018h,03eh,07fh,050h,05dh,06eh,06fh,0fdh,0a1h,008h,0c3h,03ch,03ch,038h,05ah	; 8246  ..>.P]no....<<8Z
	defb 081h,000h,009h,043h,003h,027h,08fh,01fh,07fh,003h,0c3h,085h,0bdh,03ch,018h,081h	; 8256  ...C.'.......<..
	defb 05ah,000h	; 8266

; ----------------------------------------------------------------------
; DATOS rle_8268: los colores de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8268
;   8268-8284); lo leen p00:4D11, p00:4B3C (28 bytes)
;   0x8268..0x8284  (28 bytes)
DATA_rle_8268:
	defb 083h,0a0h,0b0h,030h,004h,0c2h,081h,0c3h,003h,0a0h,082h,0a3h,032h,003h,0c2h,004h	; 8268  ...0........2...
	defb 030h,004h,020h,083h,090h,0a9h,0bah,003h,032h,002h,0c2h,000h	; 8278  0. .....2...

; ----------------------------------------------------------------------
; DATOS rle_8284: los dibujos de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8284
;   8284-82E6); lo leen p00:4CFF, p00:4B3C (98 bytes)
;   0x8284..0x82e6  (98 bytes)
DATA_rle_8284:
	defb 0e0h,000h,020h,018h,03ah,014h,080h,021h,00ch,004h,02eh,004h,048h,000h,024h,009h	; 8284  .. .:..!....H.$.
	defb 000h,000h,004h,031h,010h,002h,000h,020h,004h,038h,07ch,07dh,07ch,029h,09bh,0b5h	; 8294  ...1... .8|}|)..
	defb 061h,046h,04fh,06fh,0a6h,0c2h,0e5h,0f5h,063h,000h,040h,002h,010h,086h,01fh,07eh	; 82a4  aFOo....c.@....~
	defb 06dh,020h,082h,05ch,0bfh,07fh,08ch,07fh,02bh,018h,0bch,0feh,03dh,0c6h,082h,0c3h	; 82b4  m .\....+...=...
	defb 005h,0feh,01bh,00eh,001h,07dh,0f7h,0ebh,0c4h,070h,098h,0dfh,0f6h,0bah,0f6h,069h	; 82c4  .....}...p.....i
	defb 094h,030h,004h,060h,082h,00dh,0beh,06dh,013h,0dah,0feh,070h,0cah,02ch,05eh,0bfh	; 82d4  .0.`...m...p.,^.
	defb 03ch,000h	; 82e4

; ----------------------------------------------------------------------
; DATOS rle_82E6: los colores de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_82E6
;   82E6-8330); lo leen p00:4D11, p00:4B3C (74 bytes)
;   0x82e6..0x8330  (74 bytes)
DATA_rle_82E6:
	defb 018h,0c0h,002h,0a0h,085h,030h,020h,020h,0c0h,0c0h,003h,020h,002h,0c0h,082h,030h	; 82e6  .....0  ... ...0
	defb 020h,004h,0c0h,086h,030h,0c0h,030h,020h,0c0h,020h,003h,030h,002h,020h,086h,0c2h	; 82f6   ...0.0 . .0. ..
	defb 0c0h,0c0h,020h,030h,020h,003h,0c2h,08ch,0c3h,0c2h,032h,0c2h,0c3h,032h,0c3h,0c2h	; 8306  .. 0 .....2..2..
	defb 0c3h,0c3h,032h,0c2h,003h,020h,083h,0c0h,020h,030h,003h,090h,002h,030h,084h,020h	; 8316  ..2.. .. 0...0.
	defb 0c0h,0c0h,0c2h,004h,0c0h,083h,030h,020h,0c2h,000h	; 8326  ......0 ..

; ----------------------------------------------------------------------
; DATOS rle_8330: los dibujos de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8330
;   8330-8352); lo leen p00:4CFF, p00:4B3C (34 bytes)
;   0x8330..0x8352  (34 bytes)
DATA_rle_8330:
	defb 0a0h,088h,0ffh,0ffh,0feh,007h,0feh,0f0h,0a8h,080h,040h,0ffh,007h,0ffh,0a8h,000h	; 8330  ..........@.....
	defb 000h,0c0h,080h,083h,0ceh,0f0h,0edh,0fah,077h,010h,000h,042h,0a8h,0d5h,02ah,0d0h	; 8340  ........w..B..*.
	defb 0edh,000h	; 8350

; ----------------------------------------------------------------------
; DATOS rle_8352: los colores de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8352
;   8352-836F); lo leen p00:4D11, p00:4B3C (29 bytes)
;   0x8352..0x836f  (29 bytes)
DATA_rle_8352:
	defb 08dh,0fdh,0d0h,0d0h,0d8h,098h,096h,090h,060h,0fdh,0fdh,0d0h,096h,090h,004h,060h	; 8352  ........`......`
	defb 006h,090h,081h,096h,003h,090h,085h,080h,060h,060h,090h,090h,000h	; 8362  ........``...

; ----------------------------------------------------------------------
; DATOS rle_836F: los dibujos de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_836F
;   836F-83AE); lo leen p00:4CFF, p00:4B3C (63 bytes)
;   0x836f..0x83ae  (63 bytes)
DATA_rle_836F:
	defb 005h,000h,083h,01ch,03fh,073h,003h,000h,085h,003h,007h,007h,0aeh,06eh,003h,000h	; 836f  ....?s.......n..
	defb 085h,018h,03eh,03fh,06fh,05fh,003h,000h,085h,080h,0e0h,038h,0deh,026h,005h,000h	; 837f  ..>?o_.....8.&..
	defb 083h,00fh,001h,080h,006h,000h,089h,0c0h,0f0h,000h,000h,0c0h,0e0h,0f0h,0f8h,0f8h	; 838f  ................
	defb 005h,000h,002h,060h,082h,020h,0e0h,003h,000h,082h,004h,006h,003h,007h,000h	; 839f  ...`. .........

; ----------------------------------------------------------------------
; DATOS rle_83AE: los dibujos de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_83AE
;   83AE-83F8); lo leen p00:4CFF, p00:4B3C (74 bytes)
;   0x83ae..0x83f8  (74 bytes)
DATA_rle_83AE:
	defb 002h,000h,095h,001h,01eh,063h,083h,001h,000h,000h,080h,060h,0b0h,0f0h,0e8h,0fch	; 83ae  .....c.....`....
	defb 0f6h,000h,000h,001h,003h,002h,000h,001h,004h,000h,08ah,001h,00fh,00bh,007h,065h	; 83be  ...............e
	defb 0f8h,0f0h,0a0h,040h,080h,007h,000h,08ch,003h,00fh,03fh,07fh,0a8h,0d0h,000h,0c0h	; 83ce  ...@......?.....
	defb 05ch,042h,059h,005h,004h,000h,084h,00ch,00fh,013h,07eh,005h,001h,08bh,002h,0fdh	; 83de  \BY.......~.....
	defb 057h,000h,000h,00ch,00bh,005h,002h,003h,001h,000h	; 83ee  W.........

; ----------------------------------------------------------------------
; DATOS rle_83F8: los dibujos de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_83F8
;   83F8-843A); lo leen p00:4CFF, p00:4B3C (66 bytes)
;   0x83f8..0x843a  (66 bytes)
DATA_rle_83F8:
	defb 006h,000h,08ah,00ah,035h,000h,000h,001h,00ch,00bh,005h,057h,01ch,004h,000h,084h	; 83f8  ....5......W....
	defb 060h,088h,02eh,0d9h,004h,000h,086h,080h,050h,0e8h,000h,035h,00ah,006h,000h,08ch	; 8408  `.......P..5....
	defb 01ch,057h,005h,00bh,00ch,001h,000h,000h,0d9h,02eh,088h,060h,005h,000h,083h,0e8h	; 8418  .W.........`....
	defb 050h,080h,007h,000h,08ah,090h,030h,098h,0b1h,000h,000h,0b1h,098h,030h,090h,003h	; 8428  P.....0......0..
	defb 000h,000h	; 8438

; ----------------------------------------------------------------------
; DATOS rle_843A: los dibujos de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_843A
;   843A-8496); lo leen p00:4CFF, p00:4B3C (92 bytes)
;   0x843a..0x8496  (92 bytes)
DATA_rle_843A:
	defb 081h,03ah,006h,07ah,082h,03ah,05ch,006h,05eh,0d1h,05ch,0eah,0eah,00ah,0feh,0feh	; 843a  .:.z.:\.^.\.....
	defb 00ah,0eah,0eah,057h,057h,050h,07fh,07fh,050h,057h,057h,0c5h,049h,012h,024h,07fh	; 844a  ...WWP..PWW.I.$.
	defb 07bh,00bh,07bh,0a3h,092h,048h,024h,0feh,0deh,0d0h,0deh,004h,02eh,062h,0efh,015h	; 845a  {.{..H$......b..
	defb 079h,0dah,06dh,0b1h,0c6h,018h,0b1h,0dah,08ah,063h,02ch,0a5h,09bh,038h,0ceh,0e1h	; 846a  y.m......c,..8..
	defb 0e9h,01ch,0c6h,046h,096h,070h,08eh,0c3h,0b9h,03ah,0d6h,085h,05ah,0d9h,02ch,0c7h	; 847a  ...F.p...:..Z.,.
	defb 0b1h,072h,08bh,056h,009h,062h,0efh,015h,05ah,0ebh,06ch,000h	; 848a  .r.V.b..Z.l.

; ----------------------------------------------------------------------
; DATOS rle_8496: los dibujos de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8496
;   8496-84E0); lo leen p00:4CFF, p00:4B3C (74 bytes)
;   0x8496..0x84e0  (74 bytes)
DATA_rle_8496:
	defb 09fh,07dh,0f3h,0a8h,0d7h,0a9h,076h,03fh,000h,07ch,0afh,0d4h,000h,056h,050h,056h	; 8496  .}....v?.|...VPV
	defb 000h,0ffh,0fdh,0fah,000h,0beh,082h,0bah,00ah,0fch,0fbh,0e7h,0ffh,0ddh,0abh,055h	; 84a6  ...............U
	defb 003h,000h,0a6h,020h,0b0h,0f0h,0e0h,0b1h,000h,07ch,03fh,02fh,057h,02ah,0d5h,0aah	; 84b6  ... .....|?/W*..
	defb 000h,018h,03ch,01bh,035h,01ah,0b5h,03ah,075h,070h,0e8h,0dbh,000h,056h,050h,056h	; 84c6  ..<.5..:up...VPV
	defb 000h,00fh,015h,06fh,001h,0beh,082h,0bah,00ah,000h	; 84d6  ...o......

; ----------------------------------------------------------------------
; DATOS rle_84E0: los dibujos de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_84E0
;   84E0-853C); lo leen p00:4CFF, p00:4B3C (92 bytes)
;   0x84e0..0x853c  (92 bytes)
DATA_rle_84E0:
	defb 084h,007h,03ch,0c3h,07fh,004h,0ffh,002h,000h,0aeh,0ffh,0d2h,0aah,0f5h,06ah,055h	; 84e0  ..<...........jU
	defb 000h,000h,0f8h,0d3h,0afh,057h,05fh,0ffh,000h,000h,050h,084h,0e6h,0bfh,0ffh,0ffh	; 84f0  .....W_...P.....
	defb 0fdh,0b7h,0edh,05ah,0f3h,0b9h,0d6h,06dh,09ah,074h,0c8h,0b4h,0a8h,050h,0fah,0f4h	; 8500  ...Z...m.t...P..
	defb 073h,077h,087h,0abh,05fh,0b7h,05fh,0f7h,008h,0ffh,0a0h,073h,032h,059h,0adh,0f6h	; 8510  sw.._._....s2Y..
	defb 06fh,0d5h,0ffh,0ffh,0fbh,0d6h,0abh,05dh,037h,00dh,000h,0ffh,0ffh,0adh,0dah,057h	; 8520  o......]7......W
	defb 079h,0d6h,000h,0b2h,0ddh,000h,07fh,050h,057h,057h,000h,000h	; 8530  y......PWW..

; ----------------------------------------------------------------------
; DATOS rle_853C: los dibujos de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_853C
;   853C-856E); lo leen p00:4CFF, p00:4B3C (50 bytes)
;   0x853c..0x856e  (50 bytes)
DATA_rle_853C:
	defb 0b0h,05ch,0c6h,0b9h,0deh,09fh,07eh,03fh,000h,0e5h,072h,007h,058h,0a6h,077h,0e8h	; 853c  .\....~?..r.X.w.
	defb 0c3h,0c5h,098h,0b3h,0ffh,052h,040h,054h,000h,000h,054h,040h,052h,0ffh,0b3h,098h	; 854c  .....R@T..T@R...
	defb 0c5h,0c3h,0e8h,077h,0a6h,058h,007h,072h,0e5h,000h,03fh,07eh,09fh,0deh,0b9h,0c6h	; 855c  ...w.X.r..?~....
	defb 05ch,000h	; 856c

; ----------------------------------------------------------------------
; DATOS rle_856E: los colores de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_856E
;   856E-8598); lo leen p00:4D11, p00:4B3C (42 bytes)
;   0x856e..0x8598  (42 bytes)
DATA_rle_856E:
	defb 006h,0f0h,002h,0e0h,004h,0f0h,004h,0e0h,004h,0f0h,004h,0e0h,003h,0f0h,003h,0e0h	; 856e  ................
	defb 002h,0e5h,006h,0f0h,002h,0e0h,002h,0f0h,004h,0e0h,084h,0f0h,0e0h,0f0h,0f0h,006h	; 857e  ................
	defb 0e0h,004h,0f0h,004h,0e0h,003h,0f0h,005h,0e0h,000h	; 858e  ..........

; ----------------------------------------------------------------------
; DATOS rle_8598: los colores de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8598
;   8598-85C7); lo leen p00:4D11, p00:4B3C (47 bytes)
;   0x8598..0x85c7  (47 bytes)
DATA_rle_8598:
	defb 081h,0f0h,007h,0e0h,081h,0f0h,007h,0e0h,002h,0f0h,003h,0e0h,083h,0f0h,0e0h,0f0h	; 8598  ................
	defb 004h,050h,004h,0e0h,005h,050h,003h,0f0h,002h,050h,081h,0f0h,005h,0e0h,002h,050h	; 85a8  .P...P...P.....P
	defb 083h,0f0h,0e0h,050h,003h,0e0h,004h,0f0h,00ch,0e0h,002h,0f0h,006h,0e0h,000h	; 85b8  ...P...........

; ----------------------------------------------------------------------
; DATOS rle_85C7: los colores de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_85C7
;   85C7-85FD); lo leen p00:4D11, p00:4B3C (54 bytes)
;   0x85c7..0x85fd  (54 bytes)
DATA_rle_85C7:
	defb 006h,0f0h,002h,0e0h,002h,0f0h,006h,0e0h,004h,0f0h,003h,0e0h,081h,050h,004h,0f0h	; 85c7  .............P..
	defb 003h,0e0h,083h,0f0h,0e0h,0e0h,006h,0f0h,006h,0e0h,002h,0f0h,081h,050h,003h,0e0h	; 85d7  .............P..
	defb 005h,0f0h,003h,0e0h,085h,0f0h,0e0h,0e0h,0f0h,0f0h,005h,0e0h,084h,0e4h,0f0h,0f0h	; 85e7  ................
	defb 0e4h,003h,0e0h,003h,0f0h,000h	; 85f7

; ----------------------------------------------------------------------
; DATOS rle_85FD: los colores de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_85FD
;   85FD-865D); lo leen p00:4D11, p00:4B3C (96 bytes)
;   0x85fd..0x865d  (96 bytes)
DATA_rle_85FD:
	defb 092h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,0e0h,050h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,0e0h	; 85fd  .P......PP......
	defb 050h,050h,0e0h,004h,0f0h,084h,0e0h,050h,050h,0e0h,004h,0f0h,083h,0e0h,050h,0e0h	; 860d  PP.....PP.....P.
	defb 003h,0f0h,085h,0a0h,090h,080h,060h,0e0h,003h,0f0h,086h,0a0h,090h,080h,060h,0f0h	; 861d  ......`.......`.
	defb 0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h,0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h	; 862d  ................
	defb 0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h,0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h	; 863d  ................
	defb 0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h,0f0h,003h,0b0h,002h,0a0h,081h,0b0h,000h	; 864d  ................

; ----------------------------------------------------------------------
; DATOS rle_865D: los colores de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_865D
;   865D-8699); lo leen p00:4D11, p00:4B3C (60 bytes)
;   0x865d..0x8699  (60 bytes)
DATA_rle_865D:
	defb 082h,0e0h,0e4h,003h,0e5h,08eh,0e4h,0e0h,0f0h,0e4h,0e5h,0e5h,0f0h,0f0h,0e0h,050h	; 865d  ...............P
	defb 0f0h,0eeh,0e5h,0e5h,005h,0e0h,087h,0e4h,0e0h,0e0h,0eeh,0e5h,0e5h,0e4h,003h,0f0h	; 866d  ................
	defb 004h,0e0h,084h,0e4h,0f0h,0e0h,0e0h,004h,0e5h,083h,0e4h,050h,0f0h,005h,0e0h,002h	; 867d  ...........P....
	defb 0e5h,003h,0e0h,002h,0f0h,083h,0e0h,050h,0f0h,008h,0e0h,000h	; 868d  .......P....

; ----------------------------------------------------------------------
; DATOS rle_8699: los colores de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8699
;   8699-86E2); lo leen p00:4D11, p00:4B3C (73 bytes)
;   0x8699..0x86e2  (73 bytes)
DATA_rle_8699:
	defb 002h,0e0h,002h,0e5h,002h,0eeh,002h,0e5h,002h,0f0h,082h,0eeh,0e0h,004h,0e5h,002h	; 8699  ................
	defb 0f0h,002h,0e0h,002h,0e5h,082h,0e0h,0eeh,003h,0e0h,003h,0e5h,081h,0eeh,00fh,0e5h	; 86a9  ................
	defb 002h,050h,002h,0e0h,006h,0e5h,003h,0e0h,002h,0eeh,083h,0e5h,0eeh,0eeh,005h,0e0h	; 86b9  .P..............
	defb 002h,0e5h,082h,0e0h,0eeh,003h,0e5h,003h,0e0h,082h,0f0h,0eeh,005h,0e5h,087h,0e0h	; 86c9  ................
	defb 0f0h,0e5h,050h,0f0h,0e0h,0e0h,003h,0f0h,000h	; 86d9  ..P......

; ----------------------------------------------------------------------
; DATOS rle_86E2: los colores de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_86E2
;   86E2-870B); lo leen p00:4D11, p00:4B3C (41 bytes)
;   0x86e2..0x870b  (41 bytes)
DATA_rle_86E2:
	defb 006h,0e0h,002h,050h,003h,0e0h,081h,050h,003h,0e0h,081h,050h,003h,0e0h,08ah,000h	; 86e2  ...P...P...P....
	defb 0f0h,0e0h,050h,0e0h,050h,050h,0e0h,0f0h,000h,003h,0e0h,081h,050h,003h,0e0h,081h	; 86f2  ..P.PP......P...
	defb 050h,003h,0e0h,082h,0f0h,050h,006h,0e0h,000h	; 8702  P....P...

; ----------------------------------------------------------------------
; DATOS rle_870B: los dibujos de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_870B
;   870B-874D); lo leen p00:4CFF, p00:4B3C (66 bytes)
;   0x870b..0x874d  (66 bytes)
DATA_rle_870B:
	defb 006h,000h,08ah,00ah,035h,000h,000h,001h,00ch,00bh,005h,057h,01ch,004h,000h,084h	; 870b  ....5......W....
	defb 060h,088h,02eh,0d9h,004h,000h,086h,080h,050h,0e8h,000h,035h,00ah,006h,000h,08ch	; 871b  `.......P..5....
	defb 01ch,057h,005h,00bh,00ch,001h,000h,000h,0d9h,02eh,088h,060h,005h,000h,083h,0e8h	; 872b  .W.........`....
	defb 050h,080h,007h,000h,08ah,090h,030h,098h,0b1h,000h,000h,0b1h,098h,030h,090h,003h	; 873b  P.....0......0..
	defb 000h,000h	; 874b

; ----------------------------------------------------------------------
; DATOS rle_874D: los dibujos de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_874D
;   874D-877E); lo leen p00:4CFF, p00:4B3C (49 bytes)
;   0x874d..0x877e  (49 bytes)
DATA_rle_874D:
	defb 098h,000h,001h,003h,005h,00ah,008h,00ch,018h,080h,0e0h,0f0h,0f0h,078h,008h,004h	; 874d  .............x..
	defb 004h,00fh,01fh,00bh,00fh,005h,007h,002h,000h,004h,0ffh,094h,0f5h,05ah,0edh,000h	; 875d  .............Z..
	defb 0fch,0f6h,0f8h,0a8h,0fdh,0dah,076h,000h,050h,0fdh,0dch,06ah,0dch,0b4h,0d8h,000h	; 876d  ......v.P..j....
	defb 000h	; 877d

; ----------------------------------------------------------------------
; DATOS rle_877E: los dibujos de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_877E
;   877E-8788); lo leen p00:4CFF, p00:4B3C (10 bytes)
;   0x877e..0x8788  (10 bytes)
DATA_rle_877E:
	defb 088h,000h,000h,001h,01eh,07fh,083h,060h,060h,000h	; 877e  .......``.

; ----------------------------------------------------------------------
; DATOS rle_8788: los dibujos de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8788
;   8788-87B8); lo leen p00:4CFF, p00:4B3C (48 bytes)
;   0x8788..0x87b8  (48 bytes)
DATA_rle_8788:
	defb 08fh,000h,080h,060h,0b0h,0f0h,0e8h,0fch,0f6h,000h,000h,001h,003h,002h,000h,001h	; 8788  ...`............
	defb 004h,000h,089h,001h,00fh,00bh,007h,005h,078h,070h,020h,040h,008h,000h,084h,003h	; 8798  ........xp @....
	defb 00fh,03fh,07fh,005h,000h,084h,00eh,00bh,01ch,003h,005h,000h,082h,0c1h,07eh,000h	; 87a8  .?............~.

; ----------------------------------------------------------------------
; DATOS rle_87B8: los dibujos de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_87B8
;   87B8-882A); lo leen p00:4CFF, p00:4B3C (114 bytes)
;   0x87b8..0x882a  (114 bytes)
DATA_rle_87B8:
	defb 0f0h,07fh,0ffh,07fh,0f5h,084h,002h,030h,030h,0f8h,0fah,0f5h,0a8h,090h,040h,003h	; 87b8  .......00.....@.
	defb 003h,018h,011h,027h,03fh,02fh,03fh,02fh,03fh,000h,040h,087h,0fdh,0fdh,0fbh,0edh	; 87c8  ...'?/?/?.@.....
	defb 0dah,000h,088h,08ah,0cfh,0c7h,063h,0c3h,001h,006h,022h,0d8h,0fdh,028h,0d4h,07eh	; 87d8  ......c..."..(.~
	defb 0a8h,01fh,02fh,017h,03fh,02fh,03bh,03fh,027h,0c8h,0f2h,0d4h,0eah,0fah,0edh,0fah	; 87e8  ../.?/.?'.......
	defb 0f8h,008h,010h,085h,01ah,0c5h,06ah,095h,000h,0f4h,030h,0ffh,0fdh,0bfh,0abh,055h	; 87f8  ......j...0....U
	defb 0a8h,01bh,01dh,03eh,01fh,03fh,00fh,01fh,01fh,0e3h,0cfh,09ch,038h,0f7h,0efh,0ffh	; 8808  ...>.?......8...
	defb 0ffh,0fch,0feh,003h,055h,0ebh,0fah,0f5h,0fah,052h,027h,00fh,09fh,00ah,02dh,056h	; 8818  ....U....R'...-V
	defb 094h,000h	; 8828

; ----------------------------------------------------------------------
; DATOS rle_882A: los dibujos de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_882A
;   882A-8879); lo leen p00:4CFF, p00:4B3C (79 bytes)
;   0x882a..0x8879  (79 bytes)
DATA_rle_882A:
	defb 084h,007h,03ch,0c3h,07fh,004h,0ffh,002h,000h,0b5h,0ffh,0d2h,0aah,0f5h,06ah,055h	; 882a  ..<...........jU
	defb 000h,000h,0f8h,0d3h,0afh,057h,05fh,0bfh,060h,000h,050h,084h,0e6h,0bfh,0ffh,0ffh	; 883a  .....W_.`.P.....
	defb 0fdh,0b7h,0edh,05ah,0f7h,0b9h,0d6h,06dh,09ah,074h,0c8h,0b4h,0a8h,050h,0fah,000h	; 884a  ...Z...m.t...P..
	defb 0b3h,057h,0f7h,0abh,05fh,0b7h,05fh,0f7h,073h,03ah,059h,0adh,0f6h,06fh,0d5h,005h	; 885a  .W.._._.s:Y..o..
	defb 0ffh,08ch,003h,0fdh,075h,0fdh,0bah,0ddh,000h,07fh,050h,057h,057h,000h,000h	; 886a  ....u.....PWW..

; ----------------------------------------------------------------------
; DATOS rle_8879: los dibujos de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8879
;   8879-889A); lo leen p00:4CFF, p00:4B3C (33 bytes)
;   0x8879..0x889a  (33 bytes)
DATA_rle_8879:
	defb 003h,07fh,002h,000h,09bh,0aah,0a8h,000h,0ffh,0fbh,0d6h,0abh,05dh,037h,00dh,000h	; 8879  ............]7..
	defb 055h,055h,015h,0c0h,05dh,042h,059h,005h,0ffh,003h,0fdh,075h,0fdh,0fdh,07dh,0fdh	; 8889  UU..]BY....u..}.
	defb 000h	; 8899

; ----------------------------------------------------------------------
; DATOS rle_889A: los dibujos de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_889A
;   889A-8902); lo leen p00:4CFF, p00:4B3C (104 bytes)
;   0x889a..0x8902  (104 bytes)
DATA_rle_889A:
	defb 081h,03ah,006h,07ah,085h,03ah,07fh,071h,000h,0efh,004h,0ffh,081h,05ch,006h,05eh	; 889a  .:.z.:.q.....\.^
	defb 085h,05ch,0feh,0c6h,0ffh,0efh,003h,0ffh,086h,000h,0feh,08eh,000h,0f7h,000h,006h	; 88aa  .\..............
	defb 0ffh,085h,000h,0efh,000h,071h,07fh,003h,0ffh,085h,000h,0efh,000h,0c6h,0feh,003h	; 88ba  .....q..........
	defb 0ffh,0b5h,000h,0f7h,000h,08eh,0feh,004h,02eh,062h,0efh,015h,079h,0dah,06dh,0b1h	; 88ca  .........b..y.m.
	defb 0c6h,018h,0b1h,0dah,08ah,063h,02ch,0a5h,09bh,038h,0ceh,0e1h,0e9h,01ch,0c6h,046h	; 88da  .....c,..8.....F
	defb 096h,070h,08eh,0c3h,0b9h,03ah,0d6h,085h,05ah,0d9h,02ch,0c7h,0b1h,072h,08bh,056h	; 88ea  .p...:..Z.,..r.V
	defb 009h,062h,0efh,015h,05ah,0ebh,06ch,000h	; 88fa  .b..Z.l.

; ----------------------------------------------------------------------
; DATOS rle_8902: los dibujos de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8902
;   8902-8934); lo leen p00:4CFF, p00:4B3C (50 bytes)
;   0x8902..0x8934  (50 bytes)
DATA_rle_8902:
	defb 0b0h,05ch,0c6h,0b9h,0deh,09fh,07eh,03fh,000h,0e5h,072h,007h,058h,0a6h,077h,0e8h	; 8902  .\....~?..r.X.w.
	defb 0c3h,0c5h,098h,0b3h,0ffh,052h,040h,054h,000h,000h,054h,040h,052h,0ffh,0b3h,098h	; 8912  .....R@T..T@R...
	defb 0c5h,0c3h,0e8h,077h,0a6h,058h,007h,072h,0e5h,000h,03fh,07eh,09fh,0deh,0b9h,0c6h	; 8922  ...w.X.r..?~....
	defb 05ch,000h	; 8932

; ----------------------------------------------------------------------
; DATOS rle_8934: los colores de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8934
;   8934-896A); lo leen p00:4D11, p00:4B3C (54 bytes)
;   0x8934..0x896a  (54 bytes)
DATA_rle_8934:
	defb 006h,0f0h,002h,0e0h,002h,0f0h,006h,0e0h,004h,0f0h,003h,0e0h,081h,050h,004h,0f0h	; 8934  .............P..
	defb 003h,0e0h,083h,0f0h,0e0h,0e0h,006h,0f0h,006h,0e0h,002h,0f0h,081h,050h,003h,0e0h	; 8944  .............P..
	defb 005h,0f0h,003h,0e0h,085h,0f0h,0e0h,0e0h,0f0h,0f0h,005h,0e0h,084h,0e4h,0f0h,0f0h	; 8954  ................
	defb 0e4h,003h,0e0h,003h,0f0h,000h	; 8964

; ----------------------------------------------------------------------
; DATOS rle_896A: los colores de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_896A
;   896A-8987); lo leen p00:4D11, p00:4B3C (29 bytes)
;   0x896a..0x8987  (29 bytes)
DATA_rle_896A:
	defb 081h,050h,007h,0e0h,008h,050h,007h,0e0h,081h,0f0h,004h,0eeh,084h,0e5h,050h,050h	; 896a  .P...P........PP
	defb 0f0h,004h,0e5h,003h,050h,082h,0f0h,0e5h,006h,050h,081h,0f0h,000h	; 897a  ....P....P...

; ----------------------------------------------------------------------
; DATOS rle_8987: los colores de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8987
;   8987-898F); lo leen p00:4D11, p00:4B3C (8 bytes)
;   0x8987..0x898f  (8 bytes)
DATA_rle_8987:
	defb 081h,0f0h,005h,0e0h,082h,0a0h,090h,000h	; 8987  ........

; ----------------------------------------------------------------------
; DATOS rle_898F: los colores de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_898F
;   898F-89AF); lo leen p00:4D11, p00:4B3C (32 bytes)
;   0x898f..0x89af  (32 bytes)
DATA_rle_898F:
	defb 081h,0f0h,007h,0e0h,002h,0f0h,003h,0e0h,082h,0f0h,0e0h,004h,0f0h,081h,050h,004h	; 898f  ..............P.
	defb 0e0h,004h,050h,008h,0f0h,004h,0e0h,005h,0f0h,004h,0e0h,005h,0f0h,002h,0e0h,000h	; 899f  ..P.............

; ----------------------------------------------------------------------
; DATOS rle_89AF: los colores de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_89AF
;   89AF-89EC); lo leen p00:4D11, p00:4B3C (61 bytes)
;   0x89af..0x89ec  (61 bytes)
DATA_rle_89AF:
	defb 088h,0e0h,0eeh,0e0h,0e5h,050h,050h,0a0h,080h,004h,0e5h,002h,050h,082h,0a0h,080h	; 89af  .....PP.....P...
	defb 008h,0e0h,089h,0f0h,0e0h,0e0h,0e5h,0e0h,0e0h,0e5h,0e0h,0f0h,00bh,050h,004h,0e5h	; 89bf  .............P..
	defb 00bh,0e0h,004h,0e5h,081h,0e0h,008h,050h,002h,0e5h,006h,050h,00eh,0e0h,002h,0eeh	; 89cf  .......P...P....
	defb 002h,0e0h,003h,050h,083h,0e0h,0e5h,0e5h,004h,050h,004h,0e5h,000h	; 89df  ...P.....P...

; ----------------------------------------------------------------------
; DATOS rle_89EC: los colores de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_89EC
;   89EC-8A24); lo leen p00:4D11, p00:4B3C (56 bytes)
;   0x89ec..0x8a24  (56 bytes)
DATA_rle_89EC:
	defb 002h,0e0h,002h,0e5h,002h,0eeh,002h,0e5h,002h,0f0h,082h,0eeh,0e0h,004h,0e5h,002h	; 89ec  ................
	defb 0f0h,002h,0e0h,002h,0e5h,002h,0e0h,083h,080h,0e0h,0e0h,003h,0e5h,081h,0eeh,00fh	; 89fc  ................
	defb 0e5h,081h,050h,004h,0e0h,005h,0e5h,005h,0e0h,002h,0e5h,003h,0eeh,006h,0e0h,085h	; 8a0c  ..P.............
	defb 0e5h,0e0h,0f0h,0e0h,0e0h,003h,0f0h,000h	; 8a1c  ........

; ----------------------------------------------------------------------
; DATOS rle_8A24: los colores de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8A24
;   8A24-8A3C); lo leen p00:4D11, p00:4B3C (24 bytes)
;   0x8a24..0x8a3c  (24 bytes)
DATA_rle_8A24:
	defb 089h,050h,0e0h,0e0h,0e5h,0f0h,0e0h,0e0h,0f0h,0e0h,003h,0e5h,003h,0e0h,086h,0f0h	; 8a24  .P..............
	defb 0a0h,090h,080h,0e0h,050h,00bh,0e0h,000h	; 8a34  ....P...

; ----------------------------------------------------------------------
; DATOS rle_8A3C: los colores de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8A3C
;   8A3C-8AAD); lo leen p00:4D11, p00:4B3C (113 bytes)
;   0x8a3c..0x8aad  (113 bytes)
DATA_rle_8A3C:
	defb 0a2h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,0e0h,050h,050h,0e0h,0f0h,0f0h,000h,0f0h,0e0h	; 8a3c  .P......PP......
	defb 050h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,0e0h,050h,050h,0e0h,000h,0f0h,000h,0f0h,0e0h	; 8a4c  PP......PP......
	defb 0f5h,050h,0e0h,004h,0f0h,085h,0e0h,050h,055h,0eeh,0ffh,003h,0f0h,085h,0e0h,050h	; 8a5c  .P.....PU......P
	defb 055h,0eeh,0ffh,003h,0f0h,08ch,0e0h,050h,050h,0e0h,0f0h,0b0h,0f0h,0f0h,0e0h,050h	; 8a6c  U......PP......P
	defb 0f0h,0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h,0f0h,003h,0b0h,002h,0a0h,083h,0b0h	; 8a7c  ................
	defb 0f0h,0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h,0f0h,003h,0b0h,002h,0a0h,083h,0b0h	; 8a8c  ................
	defb 0f0h,0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h,0f0h,003h,0b0h,002h,0a0h,081h,0b0h	; 8a9c  ................
	defb 000h	; 8aac

; ----------------------------------------------------------------------
; DATOS rle_8AAD: los colores de una entrada de la lista de graficos de
;   16:62C5, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8AAD
;   8AAD-8AD5); lo leen p00:4D11, p00:4B3C (40 bytes)
;   0x8aad..0x8ad5  (40 bytes)
DATA_rle_8AAD:
	defb 006h,0e0h,002h,050h,003h,0e0h,081h,050h,003h,0e0h,081h,050h,003h,0e0h,08ah,000h	; 8aad  ...P...P...P....
	defb 0f0h,0e0h,050h,0e0h,050h,050h,0e0h,0f0h,000h,003h,0e0h,081h,050h,003h,0e0h,081h	; 8abd  ..P.PP......P...
	defb 050h,004h,0e0h,081h,050h,006h,0e0h,000h	; 8acd  P...P...

; ----------------------------------------------------------------------
; DATOS rle_8AD5: los dibujos de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8AD5
;   8AD5-8B1C); lo leen p00:4CFF, p00:4B3C (71 bytes)
;   0x8ad5..0x8b1c  (71 bytes)
DATA_rle_8AD5:
	defb 083h,0ffh,07fh,01eh,005h,000h,085h,0feh,0aeh,0d7h,007h,003h,003h,000h,085h,05fh	; 8ad5  ..............._
	defb 06fh,03fh,03eh,018h,003h,000h,085h,026h,0deh,038h,0e0h,080h,003h,000h,002h,00ch	; 8ae5  o?>....&.8......
	defb 082h,001h,002h,004h,000h,083h,0f0h,0c0h,080h,006h,000h,08ah,0e8h,098h,070h,0e0h	; 8af5  ..............p.
	defb 0c0h,000h,000h,002h,000h,001h,005h,000h,083h,060h,0c0h,080h,005h,000h,085h,05fh	; 8b05  .........`....._
	defb 06fh,03fh,03eh,018h,003h,000h,000h	; 8b15

; ----------------------------------------------------------------------
; DATOS rle_8B1C: los dibujos de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8B1C
;   8B1C-8B5D); lo leen p00:4CFF, p00:4B3C (65 bytes)
;   0x8b1c..0x8b5d  (65 bytes)
DATA_rle_8B1C:
	defb 09dh,038h,060h,081h,063h,01eh,001h,000h,000h,080h,03ch,0f8h,0f0h,060h,080h,080h	; 8b1c  .8`.c.....<..`..
	defb 000h,000h,001h,0ffh,002h,003h,001h,000h,000h,065h,007h,00bh,00fh,001h,007h,000h	; 8b2c  .........e......
	defb 088h,040h,020h,070h,078h,07fh,03fh,00fh,003h,004h,000h,085h,003h,007h,00bh,00fh	; 8b3c  .@ px.?.........
	defb 001h,003h,000h,083h,01ch,00bh,00eh,005h,000h,082h,07eh,0c1h,005h,000h,081h,001h	; 8b4c  ..........~.....
	defb 000h	; 8b5c

; ----------------------------------------------------------------------
; DATOS rle_8B5D: los dibujos de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8B5D
;   8B5D-8B9F); lo leen p00:4CFF, p00:4B3C (66 bytes)
;   0x8b5d..0x8b9f  (66 bytes)
DATA_rle_8B5D:
	defb 006h,0ffh,08ah,00ah,035h,000h,000h,001h,00ch,00bh,005h,057h,01ch,004h,000h,084h	; 8b5d  ....5......W....
	defb 060h,088h,02eh,0d9h,004h,000h,086h,080h,050h,0e8h,000h,035h,00ah,006h,000h,08ch	; 8b6d  `.......P..5....
	defb 01ch,057h,005h,00bh,00ch,001h,000h,000h,0d9h,02eh,088h,060h,005h,000h,083h,0e8h	; 8b7d  .W.........`....
	defb 050h,080h,007h,000h,08ah,090h,030h,098h,0b1h,000h,000h,0b1h,098h,030h,090h,003h	; 8b8d  P.....0......0..
	defb 000h,000h	; 8b9d

; ----------------------------------------------------------------------
; DATOS rle_8B9F: los dibujos de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8B9F
;   8B9F-8C29); lo leen p00:4CFF, p00:4B3C (138 bytes)
;   0x8b9f..0x8c29  (138 bytes)
DATA_rle_8B9F:
	defb 081h,03ah,006h,07ah,08ah,03ah,0c5h,049h,012h,024h,07fh,07bh,00bh,07bh,05ch,006h	; 8b9f  .:.z.:.I.$.{.{\.
	defb 05eh,0a3h,05ch,0a3h,092h,048h,024h,0feh,0deh,0d0h,0deh,07bh,00bh,07bh,07fh,024h	; 8baf  ^.\..H$....{.{.$
	defb 012h,049h,0c5h,0deh,0d0h,0deh,0feh,024h,048h,092h,0a3h,0ffh,000h,07eh,03ch,03ch	; 8bbf  .I.....$H....~<<
	defb 07eh,000h,0ffh,07fh,000h,004h,055h,084h,000h,07fh,0feh,000h,004h,0aah,0cah,000h	; 8bcf  ~.....U.........
	defb 0feh,07fh,000h,05dh,07fh,07fh,05dh,000h,07fh,057h,057h,050h,07fh,07fh,050h,057h	; 8bdf  ...]..]..WWP..PW
	defb 057h,0eah,0eah,00ah,0feh,0feh,00ah,0eah,0eah,004h,02eh,062h,0efh,015h,079h,0dah	; 8bef  W..........b..y.
	defb 06dh,0b1h,0c6h,018h,0b1h,0dah,08ah,063h,02ch,0a5h,09bh,038h,0ceh,0e1h,0e9h,01ch	; 8bff  m......c,..8....
	defb 0c6h,046h,096h,070h,08eh,0c3h,0b9h,03ah,0d6h,085h,05ah,0d9h,02ch,0c7h,0b1h,072h	; 8c0f  .F.p...:..Z.,..r
	defb 08bh,056h,009h,062h,0efh,015h,05ah,0ebh,06ch,000h	; 8c1f  .V.b..Z.l.

; ----------------------------------------------------------------------
; DATOS rle_8C29: los dibujos de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8C29
;   8C29-8C34); lo leen p00:4CFF, p00:4B3C (11 bytes)
;   0x8c29..0x8c34  (11 bytes)
DATA_rle_8C29:
	defb 082h,0aah,055h,006h,000h,082h,0aah,055h,006h,000h,000h	; 8c29  ..U....U...

; ----------------------------------------------------------------------
; DATOS rle_8C34: los dibujos de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8C34
;   8C34-8C7E); lo leen p00:4CFF, p00:4B3C (74 bytes)
;   0x8c34..0x8c7e  (74 bytes)
DATA_rle_8C34:
	defb 0c8h,045h,03ah,0b5h,01ah,035h,01bh,03ch,018h,000h,003h,00dh,01fh,035h,05fh,0edh	; 8c34  .E:..5.<.....5_.
	defb 0b7h,000h,056h,050h,056h,000h,0d4h,0afh,07fh,00ah,0bah,082h,0beh,000h,0d7h,0f7h	; 8c44  ..VPV...........
	defb 007h,000h,0aah,0aah,000h,0efh,0f7h,0f8h,0fch,000h,055h,0abh,0fbh,0f8h,0ffh,000h	; 8c54  ..........U.....
	defb 0fch,000h,05dh,0bdh,0b9h,031h,0c0h,004h,004h,000h,0aah,0ffh,0ffh,0f8h,0e3h,01fh	; 8c64  ..]..1..........
	defb 0fch,000h,02dh,059h,05dh,033h,07fh,03fh,01fh,000h	; 8c74  ..-Y]3.?..

; ----------------------------------------------------------------------
; DATOS rle_8C7E: los dibujos de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8C7E
;   8C7E-8D0A); lo leen p00:4CFF, p00:4B3C (140 bytes)
;   0x8c7e..0x8d0a  (140 bytes)
DATA_rle_8C7E:
	defb 0b8h,000h,0feh,01fh,0e3h,0fch,0c0h,03fh,007h,055h,06ah,0f5h,0aah,0d2h,0ffh,000h	; 8c7e  .......?.Uj.....
	defb 000h,0fbh,05dh,0feh,0afh,0d7h,0ffh,007h,000h,0fbh,0ffh,0fbh,078h,0bfh,0dfh,080h	; 8c8e  ..].........x...
	defb 000h,0ebh,0feh,0abh,028h,0feh,0feh,07eh,03eh,000h,0fah,050h,0a8h,0b4h,0c8h,074h	; 8c9e  ....(..~>..P...t
	defb 0dah,0f7h,05fh,0b7h,05fh,0abh,087h,077h,073h,008h,0f7h,086h,0e9h,076h,0d9h,0f4h	; 8cae  .._._..ws....v..
	defb 0ffh,0f5h,003h,0ffh,08bh,0d5h,06fh,0f6h,0adh,059h,032h,073h,0fdh,075h,0fdh,003h	; 8cbe  ......o..Y2s.u..
	defb 004h,0ffh,095h,0aah,0f5h,0feh,0fch,0f9h,0f3h,0f7h,0f7h,000h,057h,057h,050h,07fh	; 8cce  ............WWP.
	defb 000h,0ddh,0b2h,000h,0a8h,0aah,000h,000h,003h,07fh,0a0h,000h,00dh,037h,05dh,0abh	; 8cde  .............7].
	defb 0d6h,0fbh,0ffh,005h,059h,042h,05dh,0c0h,015h,055h,055h,0fdh,07dh,0fdh,0fdh,075h	; 8cee  ....YB]..UU.}..u
	defb 0fdh,003h,0ffh,000h,07fh,0edh,0afh,0dbh,07fh,07fh,03fh,000h	; 8cfe  ..........?.

; ----------------------------------------------------------------------
; DATOS rle_8D0A: los dibujos de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8D0A
;   8D0A-8D3C); lo leen p00:4CFF, p00:4B3C (50 bytes)
;   0x8d0a..0x8d3c  (50 bytes)
DATA_rle_8D0A:
	defb 0b0h,05ch,0c6h,0b9h,0deh,09fh,07eh,03fh,000h,0e5h,072h,007h,058h,0a6h,077h,0e8h	; 8d0a  .\....~?..r.X.w.
	defb 0c3h,0c5h,098h,0b3h,000h,052h,040h,054h,000h,000h,054h,040h,052h,000h,0b3h,098h	; 8d1a  .....R@T..T@R...
	defb 0c5h,0c3h,0e8h,077h,0a6h,058h,007h,072h,0e5h,000h,03fh,07eh,09fh,0deh,0b9h,0c6h	; 8d2a  ...w.X.r..?~....
	defb 05ch,000h	; 8d3a

; ----------------------------------------------------------------------
; DATOS rle_8D3C: los colores de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8D3C
;   8D3C-8D50); lo leen p00:4D11, p00:4B3C (20 bytes)
;   0x8d3c..0x8d50  (20 bytes)
DATA_rle_8D3C:
	defb 00ch,0e0h,004h,0f0h,004h,0e0h,004h,0f0h,002h,0e5h,006h,0e0h,082h,090h,0a0h,02ah	; 8d3c  ...............*
	defb 0e0h,004h,0f0h,000h	; 8d4c

; ----------------------------------------------------------------------
; DATOS rle_8D50: los colores de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8D50
;   8D50-8D7F); lo leen p00:4D11, p00:4B3C (47 bytes)
;   0x8d50..0x8d7f  (47 bytes)
DATA_rle_8D50:
	defb 082h,080h,0a0h,004h,0e0h,002h,0f0h,006h,0e0h,003h,0f0h,082h,0e0h,000h,003h,0e0h	; 8d50  ................
	defb 002h,0f0h,004h,0e0h,081h,050h,007h,0f0h,004h,050h,004h,0e0h,004h,0f0h,004h,0e0h	; 8d60  .....P...P......
	defb 081h,050h,003h,0f0h,003h,0e0h,005h,0f0h,002h,0e0h,005h,0f0h,081h,0e0h,000h	; 8d70  .P.............

; ----------------------------------------------------------------------
; DATOS rle_8D7F: los colores de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8D7F
;   8D7F-8DB5); lo leen p00:4D11, p00:4B3C (54 bytes)
;   0x8d7f..0x8db5  (54 bytes)
DATA_rle_8D7F:
	defb 006h,000h,002h,0e0h,002h,0f0h,006h,0e0h,004h,0f0h,003h,0e0h,081h,050h,004h,0f0h	; 8d7f  .............P..
	defb 003h,0e0h,083h,0f0h,0e0h,0e0h,006h,0f0h,006h,0e0h,002h,0f0h,081h,050h,003h,0e0h	; 8d8f  .............P..
	defb 005h,0f0h,003h,0e0h,085h,0f0h,0e0h,0e0h,0f0h,0f0h,005h,0e0h,084h,0e4h,0f0h,0f0h	; 8d9f  ................
	defb 0e4h,003h,0e0h,003h,0f0h,000h	; 8daf

; ----------------------------------------------------------------------
; DATOS rle_8DB5: los colores de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8DB5
;   8DB5-8E45); lo leen p00:4D11, p00:4B3C (144 bytes)
;   0x8db5..0x8e45  (144 bytes)
DATA_rle_8DB5:
	defb 089h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,0e0h,050h,0e0h,003h,0f0h,08dh,0a0h,090h,080h	; 8db5  .P......P.......
	defb 060h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,0e0h,050h,0e0h,003h,0f0h,088h,0a0h,090h,080h	; 8dc5  `P......P.......
	defb 060h,060h,080h,090h,0a0h,003h,0f0h,085h,0e0h,060h,080h,090h,0a0h,003h,0f0h,0a3h	; 8dd5  ``.......`......
	defb 0e0h,050h,0f0h,080h,0a9h,0a9h,080h,0f0h,050h,050h,0f0h,0e0h,0f0h,0f0h,0e0h,0f0h	; 8de5  .P......PP......
	defb 050h,050h,0f0h,0e0h,0f0h,0f0h,0e0h,0f0h,050h,050h,0f0h,0e0h,0f0h,0f0h,0e0h,0f0h	; 8df5  PP......PP......
	defb 050h,0e4h,0e0h,004h,0f0h,084h,0e0h,050h,050h,0e0h,004h,0f0h,084h,0e0h,050h,0f0h	; 8e05  P......PP.....P.
	defb 0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h,0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h	; 8e15  ................
	defb 0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h,0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h	; 8e25  ................
	defb 0f0h,003h,0b0h,002h,0a0h,083h,0b0h,0f0h,0f0h,003h,0b0h,002h,0a0h,081h,0b0h,000h	; 8e35  ................

; ----------------------------------------------------------------------
; DATOS rle_8E45: los colores de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8E45
;   8E45-8E4E); lo leen p00:4D11, p00:4B3C (9 bytes)
;   0x8e45..0x8e4e  (9 bytes)
DATA_rle_8E45:
	defb 002h,070h,006h,0f0h,002h,080h,006h,0f0h,000h	; 8e45  .p.......

; ----------------------------------------------------------------------
; DATOS rle_8E4E: los colores de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8E4E
;   8E4E-8E8A); lo leen p00:4D11, p00:4B3C (60 bytes)
;   0x8e4e..0x8e8a  (60 bytes)
DATA_rle_8E4E:
	defb 002h,0e5h,005h,0e0h,002h,0f0h,002h,050h,003h,0e0h,002h,0e5h,088h,0f0h,050h,0e0h	; 8e4e  .......P......P.
	defb 0f0h,0f0h,0e5h,0e5h,0e4h,008h,0e0h,083h,0f0h,080h,0a0h,004h,0e0h,08ah,0e4h,0f0h	; 8e5e  ................
	defb 0e4h,0e5h,0e0h,0e0h,0eeh,0f0h,0e4h,0f0h,005h,0e0h,002h,080h,084h,0f0h,0e4h,0e0h	; 8e6e  ................
	defb 0e5h,004h,0e0h,085h,0f0h,050h,050h,0e5h,0e5h,003h,0e0h,000h	; 8e7e  .....PP.....

; ----------------------------------------------------------------------
; DATOS rle_8E8A: los colores de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8E8A
;   8E8A-8EEE); lo leen p00:4D11, p00:4B3C (100 bytes)
;   0x8e8a..0x8eee  (100 bytes)
DATA_rle_8E8A:
	defb 081h,050h,004h,0e0h,083h,0feh,0f0h,0f0h,004h,0e5h,084h,0e0h,0eeh,0f0h,0f0h,003h	; 8e8a  .P..............
	defb 0e0h,087h,0e5h,0e0h,0e5h,0e0h,0f0h,0e0h,0eeh,003h,0e0h,002h,050h,083h,0f0h,0e5h	; 8e9a  ............P...
	defb 0e5h,004h,0e0h,084h,0e5h,050h,0e0h,050h,00ch,0e5h,00ah,0e0h,004h,0e5h,082h,0eeh	; 8eaa  .....P.P........
	defb 0e5h,003h,0e0h,002h,0e5h,009h,0e0h,004h,0eeh,002h,0e5h,006h,0e0h,003h,0f0h,002h	; 8eba  ................
	defb 0e0h,08ch,0f0h,050h,0e5h,0f0h,0e0h,0e0h,0f0h,0e5h,0f0h,0e0h,050h,0f0h,003h,0e0h	; 8eca  ...P........P...
	defb 003h,0e5h,004h,0e0h,085h,050h,0e0h,080h,090h,0a0h,008h,0e0h,082h,0f0h,0e0h,003h	; 8eda  .....P..........
	defb 0e5h,003h,0e0h,000h	; 8eea

; ----------------------------------------------------------------------
; DATOS rle_8EEE: los colores de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8EEE
;   8EEE-8F17); lo leen p00:4D11, p00:4B3C (41 bytes)
;   0x8eee..0x8f17  (41 bytes)
DATA_rle_8EEE:
	defb 006h,0e0h,002h,050h,003h,0e0h,081h,050h,003h,0e0h,081h,050h,003h,0e0h,002h,0f0h	; 8eee  ...P...P...P....
	defb 088h,0e0h,050h,0e0h,050h,050h,0e0h,0f0h,0f0h,003h,0e0h,081h,050h,003h,0e0h,081h	; 8efe  ..P.PP......P...
	defb 050h,003h,0e0h,082h,0f0h,050h,006h,0e0h,000h	; 8f0e  P....P...

; ----------------------------------------------------------------------
; DATOS rle_8F17: los dibujos de una entrada de la lista de graficos de
;   16:61B0, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8F17
;   8F17-8FA2); lo leen p00:4CFF, p00:4B3C (139 bytes)
;   0x8f17..0x8fa2  (139 bytes)
DATA_rle_8F17:
	defb 002h,000h,08ch,03fh,07fh,07fh,0ffh,0f8h,000h,000h,0f8h,0fch,0feh,0feh,0e0h,004h	; 8f17  ...?............
	defb 000h,09dh,007h,07fh,07fh,03fh,01fh,000h,000h,01fh,0ffh,0feh,0feh,0fch,000h,000h	; 8f27  .....?..........
	defb 007h,01fh,03fh,07fh,07fh,000h,000h,007h,0e0h,0f8h,0fch,0feh,0feh,03fh,03fh,003h	; 8f37  ..?..........??.
	defb 0ffh,0bch,0f8h,07fh,07fh,03fh,01fh,007h,0ffh,0e0h,000h,0feh,0feh,0fch,0f8h,0e0h	; 8f47  .....?..........
	defb 007h,01fh,000h,000h,07fh,0ffh,0f8h,000h,0e0h,000h,000h,0feh,0feh,0c0h,000h,000h	; 8f57  ................
	defb 0ffh,0ffh,0fch,000h,000h,03fh,01fh,007h,0ffh,0e0h,000h,000h,0feh,0fch,0f8h,0e0h	; 8f67  .....?..........
	defb 007h,01fh,03fh,07fh,07fh,0ffh,0f8h,000h,0e0h,0f8h,0fch,0feh,0feh,0e0h,004h,000h	; 8f77  ..?.............
	defb 08eh,007h,07fh,07fh,03fh,01fh,007h,0ffh,01fh,0ffh,0feh,0feh,0fch,0f8h,0e0h,006h	; 8f87  ....?...........
	defb 000h,086h,00fh,03fh,000h,000h,001h,001h,004h,003h,000h	; 8f97  ...?.......

; ----------------------------------------------------------------------
; DATOS rle_8FA2: los colores de una entrada de la lista de graficos de
;   16:61B0, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8FA2
;   8FA2-9007); lo leen p00:4D11, p00:4B3C (101 bytes)
;   0x8fa2..0x9007  (101 bytes)
DATA_rle_8FA2:
	defb 004h,0f5h,004h,075h,003h,0f5h,005h,075h,005h,0f5h,003h,075h,004h,0f5h,004h,075h	; 8fa2  ...u...u...u...u
	defb 002h,0f0h,002h,070h,081h,050h,003h,0f5h,085h,0f0h,070h,070h,050h,050h,003h,0f5h	; 8fb2  ...p.P....ppPP..
	defb 002h,0f0h,083h,0f7h,070h,070h,003h,050h,003h,0f7h,081h,070h,003h,050h,081h,0f0h	; 8fc2  ....pp.P...p.P..
	defb 004h,075h,081h,0f5h,003h,0f7h,003h,075h,002h,0f5h,003h,0f7h,005h,075h,003h,0f5h	; 8fd2  .u.....u.....u..
	defb 004h,075h,003h,0f5h,086h,075h,050h,050h,0f0h,0f0h,070h,003h,075h,085h,050h,0f0h	; 8fe2  .u...uPP..p.u.P.
	defb 0f0h,070h,070h,005h,075h,08ch,0f5h,0f0h,0f0h,070h,070h,050h,050h,0f5h,0f0h,0f0h	; 8ff2  .pp.u....ppPP...
	defb 070h,070h,012h,050h,000h	; 9002

; ----------------------------------------------------------------------
; DATOS rle_9007: los dibujos de una entrada de la lista de graficos de
;   16:61B0, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9007
;   9007-9276); lo leen p00:4CFF, p00:4B3C (623 bytes)
;   0x9007..0x9276  (623 bytes)
DATA_rle_9007:
	defb 090h,000h,020h,001h,000h,020h,002h,010h,080h,089h,000h,00ah,001h,0a4h,015h,04ah	; 9007  .. .. .........J
	defb 08ah,003h,000h,09dh,040h,080h,028h,080h,068h,000h,000h,0cah,076h,0adh,037h,0cbh	; 9017  ....@.(.h...v.7.
	defb 055h,008h,002h,000h,0c0h,0b0h,07ch,0feh,0dfh,011h,02ah,092h,028h,002h,014h,041h	; 9027  U.....|...*.(..A
	defb 004h,003h,000h,081h,002h,003h,000h,0b6h,008h,045h,0a0h,00ah,020h,004h,000h,050h	; 9037  .........E.. ..P
	defb 081h,024h,080h,020h,005h,09fh,07bh,0b6h,0dch,080h,000h,06bh,0d7h,06eh,041h,020h	; 9047  .$. ..{....k.nA
	defb 09fh,05fh,007h,0c3h,0f0h,0fch,05eh,007h,093h,093h,0cah,0e1h,0e3h,0f0h,060h,039h	; 9057  ._....^.......`9
	defb 038h,000h,040h,08ah,020h,0c4h,0c2h,010h,024h,000h,011h,000h,000h,020h,003h,000h	; 9067  8.@. ...$.... ..
	defb 0ffh,002h,041h,007h,009h,08ch,01fh,096h,00dh,0c0h,0f4h,071h,053h,0a3h,0d6h,086h	; 9077  ..A........qS...
	defb 066h,07fh,0f0h,0c0h,0a6h,050h,020h,040h,040h,0e5h,071h,018h,00ah,00ch,001h,004h	; 9087  f....P @@.q.....
	defb 001h,098h,08ch,0c8h,0cch,0c4h,0c4h,066h,064h,069h,014h,048h,086h,050h,0a8h,0c2h	; 9097  .......fdi.H.P..
	defb 050h,015h,00ah,020h,009h,020h,04bh,010h,002h,0cch,0aeh,08eh,02ch,0c4h,046h,017h	; 90a7  P.. . K.....,.F.
	defb 042h,0c0h,0c0h,0c8h,0c8h,0c0h,06ch,066h,07ch,004h,004h,000h,010h,001h,003h,006h	; 90b7  B.....lf|.......
	defb 0f9h,066h,044h,0ach,08ch,048h,018h,030h,071h,000h,000h,020h,001h,000h,040h,002h	; 90c7  .fD..H.0q.. ..@.
	defb 000h,080h,045h,0a8h,002h,011h,046h,028h,099h,0bah,01fh,0a7h,0c9h,0f2h,038h,0a6h	; 90d7  ..E...F(......8.
	defb 014h,048h,003h,0ffh,0fch,020h,001h,0ebh,0cbh,0e0h,0c3h,002h,00eh,030h,0bch,080h	; 90e7  .H... .......0..
	defb 0deh,060h,001h,0c0h,008h,080h,004h,020h,000h,010h,000h,000h,008h,000h,030h,020h	; 90f7  .`..... ......0
	defb 040h,000h,008h,002h,010h,001h,008h,000h,000h,001h,029h,054h,022h,009h,092h,004h	; 9107  @.........)T"...
	defb 021h,010h,0d9h,062h,010h,005h,020h,08ah,055h,0aah,0d9h,062h,010h,001h,020h,08ah	; 9117  !..b.. .U..b.. .
	defb 055h,0aah,001h,010h,004h,001h,02ah,098h,0a0h,000h,002h,000h,010h,004h,010h,020h	; 9127  U.....*........
	defb 080h,000h,008h,040h,002h,000h,008h,000h,000h,001h,080h,000h,012h,040h,000h,000h	; 9137  ...@.........@..
	defb 020h,004h,091h,040h,010h,020h,0c5h,030h,0c4h,029h,050h,088h,0a0h,000h,0a0h,003h	; 9147   ..@. .0.)P.....
	defb 000h,098h,054h,0cch,038h,0a8h,054h,0b8h,06ch,0f0h,0d8h,0e8h,070h,0f0h,0e1h,0e0h	; 9157  ..T.8.T.l...p...
	defb 0c2h,080h,004h,040h,00ah,025h,00ah,0a0h,016h,041h,004h,000h,0b3h,080h,000h,008h	; 9167  ...@.%...A......
	defb 000h,082h,041h,00ah,040h,004h,011h,004h,081h,0d2h,0a0h,065h,0f0h,0b0h,0d9h,070h	; 9177  ..A.@......e...p
	defb 038h,089h,03ch,054h,088h,094h,098h,09ch,0ach,09ch,03dh,018h,0b9h,031h,073h,0e7h	; 9187  8.<T......=..1s.
	defb 0c7h,01fh,03eh,0fch,0d1h,0c2h,000h,00bh,04dh,034h,032h,088h,040h,004h,090h,024h	; 9197  ..>.....M42.@..$
	defb 003h,000h,082h,010h,002h,003h,000h,0c9h,002h,050h,002h,000h,060h,0b8h,0f4h,065h	; 91a7  .........P..`..e
	defb 0aeh,073h,0afh,096h,02eh,000h,0e2h,0f8h,01ch,00eh,0d7h,02bh,013h,001h,009h,009h	; 91b7  .s.........+....
	defb 001h,001h,003h,003h,006h,01ch,051h,008h,0a3h,03fh,0fch,0c0h,001h,00fh,0fah,040h	; 91c7  ......Q..?.....@
	defb 000h,068h,0d5h,021h,092h,025h,00ah,048h,001h,000h,020h,014h,041h,02ah,001h,0a2h	; 91d7  .h.!.%.H.. .A*..
	defb 029h,017h,0b1h,00ah,040h,00fh,07fh,0e6h,040h,01fh,0ffh,0e0h,080h,0ach,0e0h,040h	; 91e7  )...@...@......@
	defb 000h,003h,080h,090h,088h,080h,043h,060h,0b0h,00ch,093h,0c5h,0e0h,03ch,00fh,001h	; 91f7  ......C`.....<..
	defb 080h,000h,020h,004h,003h,000h,0afh,040h,008h,085h,022h,044h,090h,0c4h,022h,028h	; 9207  .. ....@.."D.."(
	defb 092h,05dh,018h,075h,0b3h,02bh,0c6h,057h,00eh,0cch,0cdh,05ch,00ch,0cdh,00ch,0c6h	; 9217  .].u.+.W...\....
	defb 0e6h,063h,083h,0b1h,030h,028h,028h,00eh,002h,00ah,002h,020h,080h,004h,010h,000h	; 9227  .c..0((.... ....
	defb 001h,000h,040h,030h,010h,004h,006h,000h,0b5h,004h,011h,000h,002h,088h,010h,002h	; 9237  ..@0............
	defb 045h,092h,009h,022h,014h,049h,0a1h,043h,092h,045h,0a1h,048h,0a2h,049h,0a1h,043h	; 9247  E..".I.C.E.H.I.C
	defb 092h,045h,0a1h,040h,0a2h,049h,060h,000h,050h,022h,030h,004h,010h,009h,040h,000h	; 9257  .E.@.I`.P"0...@.
	defb 020h,014h,000h,008h,001h,000h,000h,002h,000h,000h,011h,000h,004h,080h,000h	; 9267   ..............

; ----------------------------------------------------------------------
; DATOS rle_9276: los colores de una entrada de la lista de graficos de
;   16:61B0, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9276
;   9276-9283); lo leen p00:4D11, p00:4B3C (13 bytes)
;   0x9276..0x9283  (13 bytes)
DATA_rle_9276:
	defb 07fh,0e0h,07fh,0e0h,03ah,0e0h,07fh,0f0h,07fh,0f0h,03ah,0f0h,000h	; 9276  ....:.....:..

; ----------------------------------------------------------------------
; DATOS rle_9283: los dibujos de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9283
;   9283-9292); lo leen p00:4CFF, p00:4B3C (15 bytes)
;   0x9283..0x9292  (15 bytes)
DATA_rle_9283:
	defb 005h,000h,083h,088h,0aah,022h,008h,000h,083h,022h,0aah,088h,00dh,000h,000h	; 9283  ....."...".....

; ----------------------------------------------------------------------
; DATOS rle_9292: los dibujos de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9292
;   9292-92A7); lo leen p00:4CFF, p00:4B3C (21 bytes)
;   0x9292..0x92a7  (21 bytes)
DATA_rle_9292:
	defb 089h,000h,001h,000h,020h,070h,020h,002h,000h,080h,006h,000h,081h,020h,004h,000h	; 9292  .... p ...... ..
	defb 081h,008h,003h,000h,000h	; 92a2

; ----------------------------------------------------------------------
; DATOS rle_92A7: los dibujos de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_92A7
;   92A7-9638); lo leen p00:4CFF, p00:4B3C (913 bytes)
;   0x92a7..0x9638  (913 bytes)
DATA_rle_92A7:
	defb 0ffh,088h,000h,090h,0f2h,078h,084h,001h,000h,05dh,0beh,07ch,09eh,04fh,010h,002h	; 92a7  .....x...].|.O..
	defb 000h,001h,074h,03ch,01dh,011h,003h,0d6h,03ah,0c6h,00fh,032h,098h,0b1h,04fh,06ah	; 92b7  ..t<....:..2..Oj
	defb 037h,01dh,043h,00dh,038h,062h,063h,095h,016h,038h,031h,045h,0c7h,01fh,01fh,06fh	; 92c7  7.C.8bc..81E...o
	defb 01eh,0d0h,0f3h,0feh,0d5h,001h,088h,026h,020h,0f8h,0d1h,0c1h,0c0h,0c1h,0e0h,0dch	; 92d7  .......& .......
	defb 0ffh,000h,04ah,05bh,000h,04bh,045h,040h,000h,020h,01dh,08eh,077h,01bh,087h,08bh	; 92e7  ..J[.KE@. ..w...
	defb 061h,000h,000h,088h,048h,024h,000h,0b2h,0b5h,002h,000h,000h,020h,000h,018h,008h	; 92f7  a...H$...... ...
	defb 00ah,00eh,003h,001h,000h,000h,024h,036h,08fh,067h,0fah,0c1h,005h,003h,001h,000h	; 9307  ......$6.g......
	defb 000h,0cfh,083h,09ch,0f8h,05ch,002h,000h,000h,049h,032h,046h,006h,0dch,072h,00ch	; 9317  .....\...I2F..r.
	defb 0ffh,000h,0c5h,0f5h,0e7h,07fh,0f7h,05fh,05fh,003h,001h,025h,04bh,0d3h,0ffh,0cdh	; 9327  .......__..%K...
	defb 0e0h,07ch,07ah,0f8h,048h,000h,001h,01bh,0f0h,005h,0a0h,020h,082h,00ch,038h,0c0h	; 9337  .|z.H...... ..8.
	defb 01ah,060h,000h,0c0h,070h,0b0h,086h,070h,035h,008h,0f8h,03fh,019h,00ch,047h,0a3h	; 9347  .`..p..p5..?..G.
	defb 052h,036h,04dh,036h,0a8h,003h,040h,0d5h,01fh,07ah,047h,00fh,036h,0fdh,06fh,0abh	; 9357  R6M6..@..zG.6.o.
	defb 018h,042h,074h,02fh,07bh,03fh,01bh,08ah,060h,010h,01eh,003h,08dh,047h,00bh,040h	; 9367  .Bt/{?..`....G.@
	defb 0e1h,0b8h,092h,084h,0cch,0c0h,0c8h,0c8h,080h,020h,04ah,030h,0c9h,0deh,067h,0feh	; 9377  ......... J0..g.
	defb 0bch,050h,000h,068h,01fh,0d6h,0fbh,01fh,00dh,006h,017h,086h,083h,087h,04ah,0c6h	; 9387  .P.h..........J.
	defb 08ch,098h,075h,015h,056h,03ch,038h,01ch,079h,078h,007h,0e3h,081h,005h,001h,046h	; 9397  ..u.V<8.yx.....F
	defb 0ffh,057h,092h,08fh,06ch,000h,043h,01eh,0fch,008h,000h,0f9h,007h,0dfh,03ch,0f0h	; 93a7  .W..l.C.......<.
	defb 0c3h,006h,0f8h,04dh,083h,00fh,038h,0f1h,007h,01eh,0c1h,044h,03eh,0f8h,01fh,081h	; 93b7  ...M..8....D>...
	defb 0e8h,07ch,081h,030h,003h,0dfh,07ch,0e8h,040h,021h,005h,064h,0b0h,0f8h,0feh,070h	; 93c7  .|.0..|.@!.d...p
	defb 0c4h,0e8h,006h,0ffh,0e0h,0fch,0dah,06fh,03bh,073h,01ch,001h,002h,07bh,008h,03eh	; 93d7  .......o.s...{.>
	defb 084h,018h,003h,07fh,0ebh,0dfh,03ah,060h,0c0h,0f8h,0e3h,0fah,0feh,0e5h,00dh,02fh	; 93e7  ......:`......./
	defb 009h,0feh,0e0h,0c7h,082h,033h,0e7h,089h,0bah,060h,00ah,0c0h,0feh,000h,0d1h,0c0h	; 93f7  .....3...`......
	defb 081h,0f4h,0e7h,005h,018h,042h,03fh,007h,0b0h,018h,065h,000h,09ch,0e4h,063h,046h	; 9407  .....B?...e...cF
	defb 0f1h,0dch,087h,02bh,06ah,0bfh,057h,005h,0f8h,0c0h,03fh,001h,07ch,0f9h,0a0h,043h	; 9417  ...+j.W...?.|..C
	defb 0ffh,091h,0c0h,0e0h,016h,0f9h,042h,00ah,021h,02eh,0b8h,00dh,030h,0e0h,007h,015h	; 9427  ......B.!...0...
	defb 0c0h,0e0h,000h,01ch,038h,007h,07fh,0fch,09fh,0f8h,0eeh,07ch,0f4h,0a0h,0f3h,0a3h	; 9437  ....8......|....
	defb 09bh,006h,01fh,0e0h,028h,04eh,0afh,011h,047h,00fh,035h,0d0h,09fh,0ffh,0f7h,088h	; 9447  ....(N..G.5.....
	defb 01bh,01ah,0b0h,0b0h,002h,035h,0d7h,042h,034h,003h,0beh,097h,0ffh,079h,0edh,07ch	; 9457  .....5.B4....y.|
	defb 013h,000h,074h,019h,019h,080h,0d1h,036h,012h,08bh,0b6h,05bh,039h,0feh,09bh,074h	; 9467  ..t....6...[9..t
	defb 014h,0fah,067h,01eh,08bh,051h,089h,078h,03fh,0fah,0bbh,019h,0f8h,004h,01fh,03eh	; 9477  ..g..Q.x?......>
	defb 0f3h,0c0h,006h,03ch,0d6h,018h,039h,05ch,030h,06fh,005h,01eh,0ffh,07ch,00fh,03ah	; 9487  ...<..9\0o...|.:
	defb 07fh,078h,0e0h,080h,00dh,02fh,03ch,0f8h,0c2h,059h,0d2h,086h,005h,005h,013h,0dch	; 9497  .x.../<..Y......
	defb 0ffh,087h,00fh,0f9h,0c5h,087h,08dh,0f0h,062h,01fh,007h,000h,02dh,01fh,007h,03bh	; 94a7  ........b...-...
	defb 0e1h,0fch,0ebh,080h,028h,07ch,037h,030h,05ch,011h,00ah,000h,000h,001h,068h,052h	; 94b7  ....(|70\.....hR
	defb 0dbh,0a0h,000h,007h,00eh,040h,000h,003h,01fh,001h,006h,076h,0d1h,062h,01dh,0ffh	; 94c7  .....@.....v.b..
	defb 005h,022h,059h,03fh,00fh,0feh,0ffh,0a0h,0a8h,0bah,08fh,002h,025h,0feh,06fh,0e0h	; 94d7  ."Y?........%.o.
	defb 0feh,0fbh,084h,041h,088h,01eh,004h,0c0h,085h,014h,061h,057h,02fh,065h,0efh,094h	; 94e7  ...A......aW/e..
	defb 01ch,049h,0e6h,0d5h,085h,081h,034h,097h,0b8h,092h,084h,0b3h,0aah,09eh,071h,0e4h	; 94f7  .I....4.......q.
	defb 0e8h,0dbh,0aeh,0b4h,050h,0fch,040h,006h,061h,080h,008h,07ah,0e0h,0e4h,05eh,07ah	; 9507  ....P.@.a..z..^z
	defb 0f4h,0fah,0fch,0ach,03ch,003h,018h,060h,002h,020h,020h,07dh,007h,07dh,01ch,03ch	; 9517  ....<..`.  }.}.<
	defb 0ffh,060h,082h,03ch,0c0h,063h,0f7h,02bh,001h,03fh,042h,06bh,0bfh,0e0h,013h,01ch	; 9527  .`.<.c.+.?Bk....
	defb 007h,099h,0f6h,091h,096h,007h,0f8h,0f5h,0e0h,000h,0feh,0f3h,022h,088h,01dh,0c5h	; 9537  ............"...
	defb 040h,000h,003h,0adh,000h,074h,0e0h,07ch,033h,005h,06fh,01ah,00fh,00fh,066h,0bah	; 9547  @....t.|3.o...f.
	defb 077h,05bh,0d1h,090h,0a3h,027h,058h,082h,0f4h,0dbh,06eh,027h,002h,050h,01dh,00bh	; 9557  w[...'X...n'.P..
	defb 0f8h,070h,01fh,002h,001h,07eh,0f8h,09eh,000h,0f4h,0fah,02eh,007h,002h,07fh,01ah	; 9567  .p...~..........
	defb 007h,00fh,0ebh,003h,00fh,001h,0a1h,0f6h,0aeh,07fh,0c0h,00fh,027h,0c0h,08fh,080h	; 9577  ............'...
	defb 03fh,0f0h,0dah,000h,017h,071h,0e0h,015h,0afh,001h,012h,0fch,040h,0f7h,023h,07bh	; 9587  ?....q......@.#{
	defb 092h,03ch,0a0h,001h,01fh,0f3h,052h,0e3h,040h,08bh,03fh,0f1h,083h,01dh,0ffh,094h	; 9597  .<....R.@.?.....
	defb 0ffh,07fh,0f0h,092h,04ah,008h,0c0h,0feh,0f8h,060h,081h,003h,033h,083h,01eh,03fh	; 95a7  ....J....`..3..?
	defb 0f0h,086h,03fh,0f0h,080h,050h,000h,0fch,03fh,004h,0a5h,019h,0b5h,075h,0eah,01eh	; 95b7  ..?..P..?....u..
	defb 025h,01dh,0bdh,03ah,094h,000h,041h,0e0h,038h,0a0h,000h,015h,07bh,0b5h,080h,0a0h	; 95c7  %..:..A.8...{...
	defb 0bfh,082h,04eh,08ch,0d2h,009h,001h,0f4h,0bfh,04bh,0e1h,0f8h,07dh,07ah,0e7h,066h	; 95d7  ..N......K..}z.f
	defb 0f1h,086h,067h,03ah,0f0h,0fch,0e0h,01fh,08ah,01dh,030h,0c0h,00ah,0c0h,000h,0e0h	; 95e7  ..g:......0.....
	defb 003h,00fh,03ch,0f0h,058h,0f0h,0b8h,03dh,087h,078h,0beh,03ch,02bh,087h,0f6h,005h	; 95f7  ..<.X..=.x.<+...
	defb 0ffh,0e9h,05ch,007h,01fh,0f7h,0deh,03ch,000h,028h,0dfh,0a9h,0bch,000h,007h,01eh	; 9607  ..\....<.(......
	defb 005h,0ach,0c8h,080h,041h,016h,065h,000h,040h,02fh,0afh,0f2h,01eh,000h,02dh,0fch	; 9617  ....A.e.@/....-.
	defb 08fh,078h,080h,0dfh,0f0h,0a0h,006h,0c8h,050h,0afh,000h,00fh,040h,000h,03ch,018h	; 9627  .x......P...@.<.
	defb 000h	; 9637

; ----------------------------------------------------------------------
; DATOS rle_9638: los dibujos de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9638
;   9638-96EA); lo leen p00:4CFF, p00:4B3C (178 bytes)
;   0x9638..0x96ea  (178 bytes)
DATA_rle_9638:
	defb 0cdh,059h,08ah,023h,033h,07ah,06ah,02ch,014h,0fch,0f6h,090h,047h,00ah,0aeh,060h	; 9638  .Y.#3zj,....G..`
	defb 025h,00eh,09fh,03ah,0c8h,0c0h,01eh,099h,0a8h,061h,0e2h,04ah,04dh,04dh,027h,091h	; 9648  %..:.....a.JMM'.
	defb 06bh,057h,04eh,03eh,080h,070h,000h,050h,028h,0a1h,002h,000h,001h,000h,002h,001h	; 9658  kWN>.p.P(.......
	defb 02eh,0e1h,00ah,050h,00ah,019h,0d7h,063h,08ah,040h,000h,021h,0abh,0e6h,098h,020h	; 9668  ...P...c.@.!...
	defb 000h,000h,04ah,05bh,000h,04bh,04fh,040h,000h,001h,02eh,036h,070h,0a0h,003h,000h	; 9678  ..J[.KO@...6p...
	defb 0e0h,045h,0fah,000h,02ch,0b9h,042h,081h,080h,0fch,04ch,00bh,082h,041h,000h,041h	; 9688  .E..,.B...L..A.A
	defb 008h,05bh,02eh,041h,03fh,0f3h,06ch,000h,008h,069h,0c8h,0d1h,021h,004h,009h,066h	; 9698  .[.A?.l..i..!..f
	defb 009h,01fh,096h,0b9h,0b6h,0dch,08fh,02ah,008h,040h,000h,021h,0abh,0e6h,098h,020h	; 96a8  .......*.@.!...
	defb 000h,019h,080h,0d1h,036h,012h,08bh,0b6h,0dbh,00dh,01fh,08fh,08eh,091h,061h,0e8h	; 96b8  ....6.........a.
	defb 0e2h,0c0h,0b4h,029h,08bh,0a4h,0e5h,035h,000h,0cfh,042h,0ebh,078h,049h,062h,0ffh	; 96c8  ...)...5..B.xIb.
	defb 010h,05fh,033h,033h,00fh,00ah,001h,000h,000h,084h,0e0h,0dfh,0f2h,05ah,000h,045h	; 96d8  ._33.........Z.E
	defb 000h,000h	; 96e8

; ----------------------------------------------------------------------
; DATOS rle_96EA: los dibujos de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_96EA
;   96EA-97B5); lo leen p00:4CFF, p00:4B3C (203 bytes)
;   0x96ea..0x97b5  (203 bytes)
DATA_rle_96EA:
	defb 0ffh,004h,001h,013h,013h,003h,033h,021h,049h,019h,031h,063h,052h,0e1h,0c1h,061h	; 96ea  ......3!I.1cR..a
	defb 0e8h,0f0h,0b0h,0f8h,0dfh,06bh,0f8h,016h,000h,00bh,01dh,07fh,0e2h,07bh,083h,00ch	; 96fa  .....k.......{..
	defb 052h,0ffh,03bh,007h,083h,003h,083h,08bh,01fh,004h,064h,011h,080h,0abh,07fh,0cfh	; 970a  R.........d.....
	defb 00bh,048h,064h,008h,0f2h,079h,03eh,07dh,0bah,034h,0feh,0feh,008h,04ah,0eah,081h	; 971a  .Hd..y>}.4...J..
	defb 06ch,078h,0f6h,0f8h,0f8h,0e3h,0a2h,08ch,01ch,0b8h,0c1h,08fh,0fch,0d1h,002h,0c7h	; 972a  lx..............
	defb 04ah,0dbh,06dh,0d1h,048h,06ch,08bh,001h,098h,03ch,035h,03fh,05fh,02fh,05eh,07ah	; 973a  J.m.Hl...<5?_/^z
	defb 027h,0b0h,01dh,074h,084h,050h,042h,09fh,068h,070h,0e0h,000h,005h,0dbh,04ah,016h	; 974a  '..t.PB.hp....J.
	defb 080h,000h,000h,050h,088h,03ah,00ch,0ech,03eh,082h,000h,029h,05ch,0bdh,0b8h,0a4h	; 975a  ...P.:..>..)\...
	defb 0c9h,0f8h,0a4h,040h,0f1h,05dh,015h,005h,000h,07fh,0a1h,0abh,067h,092h,038h,029h	; 976a  ...@.]......g.8)
	defb 0f7h,0a6h,057h,0aeh,0adh,098h,0a5h,020h,0fch,03fh,000h,00ah,001h,00fh,0fch,061h	; 977a  ..W.... .?.....a
	defb 00fh,0fch,078h,0a0h,0f6h,00ch,03ah,09ch,018h,06bh,098h,02eh,0ffh,0c8h,03eh,0b7h	; 978a  ..x...:..k....>.
	defb 09eh,0ffh,00dh,00dh,058h,0d8h,011h,0efh,0ffh,0f9h,0f0h,0fch,09ah,044h,0a0h,0ffh	; 979a  ....X........D..
	defb 0b8h,046h,003h,0e4h,0f0h,003h,0feh,075h,06fh,085h,000h	; 97aa  .F.....uo..

; ----------------------------------------------------------------------
; DATOS rle_97B5: los colores de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_97B5
;   97B5-97B8); lo leen p00:4D11, p00:4B3C (3 bytes)
;   0x97b5..0x97b8  (3 bytes)
DATA_rle_97B5:
	defb 020h,040h,000h	; 97b5

; ----------------------------------------------------------------------
; DATOS rle_97B8: los colores de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_97B8
;   97B8-97C1); lo leen p00:4D11, p00:4B3C (9 bytes)
;   0x97b8..0x97c1  (9 bytes)
DATA_rle_97B8:
	defb 003h,050h,083h,040h,050h,040h,012h,050h,000h	; 97b8  .P.@P@.P.

; ----------------------------------------------------------------------
; DATOS rle_97C1: los colores de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_97C1
;   97C1-9906); lo leen p00:4D11, p00:4B3C (325 bytes)
;   0x97c1..0x9906  (325 bytes)
DATA_rle_97C1:
	defb 07fh,040h,071h,040h,002h,054h,00eh,040h,030h,054h,081h,040h,005h,054h,005h,040h	; 97c1  .@q@.T.@0T.@.T.@
	defb 00bh,054h,007h,040h,008h,054h,005h,040h,082h,000h,040h,007h,054h,002h,050h,007h	; 97d1  .T.@.T.@..@.T.P.
	defb 040h,007h,054h,083h,040h,054h,050h,009h,054h,081h,050h,007h,040h,006h,054h,007h	; 97e1  @.T.@TP.T.P.@.T.
	defb 040h,007h,054h,003h,040h,081h,054h,004h,040h,006h,054h,00ch,040h,085h,050h,054h	; 97f1  @.T.@.T.@.T.@.PT
	defb 054h,050h,054h,005h,040h,081h,054h,003h,040h,005h,054h,005h,040h,008h,054h,005h	; 9801  TPT.@.T.@.T.@.T.
	defb 040h,081h,050h,008h,054h,003h,040h,002h,054h,083h,040h,054h,054h,007h,040h,083h	; 9811  @.P.T.@.T.@TT.@.
	defb 054h,050h,054h,007h,040h,082h,054h,050h,007h,054h,084h,050h,000h,040h,040h,003h	; 9821  TPT.@.TP.T.P.@@.
	defb 054h,009h,040h,004h,050h,002h,054h,009h,040h,002h,054h,007h,040h,081h,050h,004h	; 9831  T.@.P.T.@.T.@.P.
	defb 040h,007h,054h,082h,050h,054h,00ch,040h,008h,054h,007h,040h,008h,054h,009h,040h	; 9841  @.T.PT.@.T.@.T.@
	defb 082h,050h,054h,00eh,040h,082h,050h,054h,00bh,040h,003h,054h,082h,050h,054h,004h	; 9851  .PT.@.PT.@.T.PT.
	defb 040h,002h,054h,085h,040h,054h,040h,040h,000h,004h,040h,003h,054h,084h,000h,040h	; 9861  @.T.@T@@..@.T..@
	defb 040h,000h,006h,040h,003h,050h,081h,040h,007h,054h,081h,040h,007h,054h,003h,040h	; 9871  @..@.P.@.T.@.T.@
	defb 004h,054h,002h,040h,082h,054h,000h,006h,040h,002h,054h,082h,040h,054h,005h,040h	; 9881  .T.@.T..@.T.@T.@
	defb 002h,054h,086h,050h,040h,054h,040h,040h,050h,009h,040h,002h,054h,084h,050h,040h	; 9891  .T.P@T@@P.@.T.P@
	defb 040h,054h,007h,040h,081h,054h,008h,040h,003h,054h,009h,040h,004h,054h,081h,050h	; 98a1  @T.@.T.@.T.@.T.P
	defb 006h,040h,084h,054h,050h,054h,054h,004h,040h,003h,054h,005h,040h,081h,054h,007h	; 98b1  .@.TPTT.@.T.@.T.
	defb 040h,081h,054h,00bh,040h,086h,050h,054h,040h,054h,040h,040h,003h,054h,002h,040h	; 98c1  @.T.@.PT@T@@.T.@
	defb 081h,054h,007h,040h,082h,000h,050h,00bh,040h,002h,054h,004h,040h,002h,054h,004h	; 98d1  .T.@..P.@.T.@.T.
	defb 040h,002h,050h,002h,054h,081h,050h,003h,040h,084h,050h,040h,040h,050h,004h,040h	; 98e1  @.P.T.P.@.P@@P.@
	defb 002h,050h,081h,054h,005h,040h,083h,050h,054h,054h,004h,040h,081h,054h,003h,040h	; 98f1  .P.T.@.PTT.@.T.@
	defb 004h,050h,081h,0f5h,000h	; 9901

; ----------------------------------------------------------------------
; DATOS rle_9906: los colores de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9906
;   9906-991F); lo leen p00:4D11, p00:4B3C (25 bytes)
;   0x9906..0x991f  (25 bytes)
DATA_rle_9906:
	defb 07fh,040h,004h,040h,006h,054h,007h,040h,003h,054h,006h,040h,003h,054h,004h,040h	; 9906  .@.@.T.@.T.@.T.@
	defb 002h,054h,006h,040h,003h,054h,005h,040h,000h	; 9916  .T.@.T.@.

; ----------------------------------------------------------------------
; DATOS rle_991F: los colores de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_991F
;   991F-9960); lo leen p00:4D11, p00:4B3C (65 bytes)
;   0x991f..0x9960  (65 bytes)
DATA_rle_991F:
	defb 04fh,040h,006h,054h,00ah,040h,002h,054h,00ch,040h,002h,054h,004h,050h,00ah,040h	; 991f  O@.T.@.T.@.T.P.@
	defb 00ah,054h,002h,040h,007h,054h,004h,040h,002h,054h,082h,050h,054h,006h,040h,081h	; 992f  .T.@.T.@.T.PT.@.
	defb 050h,003h,054h,003h,040h,004h,054h,082h,040h,000h,003h,040h,082h,054h,055h,007h	; 993f  P.T.@.T.@..@.TU.
	defb 040h,084h,054h,040h,040h,050h,006h,040h,087h,054h,040h,050h,054h,054h,040h,040h	; 994f  @.T@@P.@.T@PTT@@
	defb 000h	; 995f

; ----------------------------------------------------------------------
; DATOS rle_9960: los dibujos de una entrada de la lista de graficos de
;   16:61E8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9960
;   9960-99BD); lo leen p00:4CFF, p00:4B3C (93 bytes)
;   0x9960..0x99bd  (93 bytes)
DATA_rle_9960:
	defb 002h,000h,083h,010h,038h,010h,005h,000h,083h,010h,038h,010h,005h,000h,085h,010h	; 9960  ....8.....8.....
	defb 038h,010h,000h,002h,004h,000h,0a3h,018h,000h,000h,024h,000h,000h,040h,000h,008h	; 9970  8.........$..@..
	defb 000h,010h,000h,001h,000h,041h,000h,048h,000h,004h,020h,082h,001h,010h,000h,044h	; 9980  .....A.H.. ....D
	defb 000h,010h,038h,011h,000h,080h,000h,020h,000h,002h,005h,000h,083h,042h,000h,090h	; 9990  ..8.... .....B..
	defb 003h,000h,081h,004h,003h,000h,083h,008h,000h,020h,008h,0ffh,082h,03ch,07eh,004h	; 99a0  ......... ...<~.
	defb 0ffh,08ah,07eh,03ch,000h,003h,00fh,01fh,03fh,03fh,07fh,07fh,000h	; 99b0  ..~<....??...

; ----------------------------------------------------------------------
; DATOS rle_99BD: los colores de una entrada de la lista de graficos de
;   16:61E8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_99BD
;   99BD-99C6); lo leen p00:4D11, p00:4B3C (9 bytes)
;   0x99bd..0x99c6  (9 bytes)
DATA_rle_99BD:
	defb 008h,0b0h,008h,080h,008h,050h,050h,040h,000h	; 99bd  .....PP@.

; ----------------------------------------------------------------------
; DATOS rle_99C6: los dibujos de una entrada de la lista de graficos de
;   16:61E8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_99C6
;   99C6-9A78); lo leen p00:4CFF, p00:4B3C (178 bytes)
;   0x99c6..0x9a78  (178 bytes)
DATA_rle_99C6:
	defb 002h,000h,0aah,080h,049h,024h,000h,0b2h,0b5h,007h,010h,00ch,082h,041h,024h,036h	; 99c6  ....I$.......A$6
	defb 08fh,067h,0fah,0c1h,005h,083h,0e9h,0fch,07eh,02bh,04eh,00eh,01ch,010h,020h,000h	; 99d6  .g......~+N... .
	defb 000h,0c5h,0f5h,0e1h,07ch,0f6h,04fh,041h,000h,032h,080h,0c2h,03ch,004h,000h,0ffh	; 99e6  ....|.OA.2..<...
	defb 098h,0ech,068h,007h,02eh,01bh,021h,020h,0cfh,083h,09ch,0f0h,040h,002h,005h,095h	; 99f6  ..h...! ....@...
	defb 051h,025h,0cbh,0d3h,07fh,08ch,0e0h,01ch,05dh,062h,050h,0d0h,080h,024h,00eh,004h	; 9a06  Q%......]bP..$..
	defb 020h,019h,088h,076h,0e5h,058h,014h,01ah,0e2h,079h,02ch,000h,012h,08bh,036h,018h	; 9a16   ..v.X...y,...6.
	defb 09eh,071h,0e4h,0e8h,0dbh,0ach,0b4h,050h,0e0h,015h,0afh,001h,012h,0fch,040h,0f7h	; 9a26  .q.....P......@.
	defb 00fh,05fh,01fh,03dh,0f8h,0ach,045h,03bh,01fh,007h,0bbh,0e1h,0fch,0ebh,080h,040h	; 9a36  ._.=..E........@
	defb 0f8h,071h,0b8h,00ch,03bh,00ch,027h,0d8h,0f8h,09eh,0f8h,00fh,005h,01eh,007h,0f1h	; 9a46  .q....'.........
	defb 099h,07eh,003h,03ah,047h,07ch,0e0h,089h,00dh,01fh,04fh,086h,091h,063h,0eah,0f6h	; 9a56  .~.:G|....O..c..
	defb 037h,07ah,065h,033h,0cch,040h,000h,000h,098h,0c5h,0beh,01ah,033h,00dh,002h,081h	; 9a66  7ze3.@......3...
	defb 000h,000h	; 9a76

; ----------------------------------------------------------------------
; DATOS rle_9A78: los colores de una entrada de la lista de graficos de
;   16:61E8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9A78
;   9A78-9AB2); lo leen p00:4D11, p00:4B3C (58 bytes)
;   0x9a78..0x9ab2  (58 bytes)
DATA_rle_9A78:
	defb 04eh,040h,002h,050h,004h,040h,012h,054h,005h,040h,002h,054h,081h,050h,004h,040h	; 9a78  N@.P.@.T.@.T.P.@
	defb 002h,054h,081h,050h,004h,040h,003h,054h,005h,040h,003h,054h,005h,040h,084h,054h	; 9a88  .T.P.@.T.@.T.@.T
	defb 050h,054h,054h,003h,040h,002h,054h,081h,050h,005h,040h,081h,054h,007h,040h,081h	; 9a98  PTT.@.T.P.@.T.@.
	defb 054h,004h,040h,003h,050h,004h,054h,004h,040h,000h	; 9aa8  T.@.P.T.@.

; ----------------------------------------------------------------------
; DATOS rle_9AB2: los dibujos de una entrada de la lista de graficos de
;   16:61E8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9AB2
;   9AB2-9B0D); lo leen p00:4CFF, p00:4B3C (91 bytes)
;   0x9ab2..0x9b0d  (91 bytes)
DATA_rle_9AB2:
	defb 085h,038h,0e8h,0e0h,0c0h,080h,003h,000h,085h,00ch,009h,005h,003h,001h,003h,000h	; 9ab2  .8..............
	defb 085h,00ch,009h,0fbh,0fbh,001h,003h,000h,085h,038h,0e8h,0dfh,0dfh,080h,003h,000h	; 9ac2  .........8......
	defb 095h,00ch,009h,005h,003h,001h,00ch,01ch,038h,038h,0e8h,0e0h,0c0h,080h,030h,038h	; 9ad2  ........88....08
	defb 01ch,038h,0e8h,0e0h,0c0h,080h,003h,000h,085h,00ch,009h,005h,003h,001h,003h,000h	; 9ae2  .8..............
	defb 006h,001h,082h,000h,001h,006h,080h,092h,000h,080h,00ch,009h,005h,003h,001h,000h	; 9af2  ................
	defb 001h,001h,038h,0e8h,0e0h,0c0h,080h,000h,080h,080h,000h	; 9b02  ..8........

; ----------------------------------------------------------------------
; DATOS rle_9B0D: los colores de una entrada de la lista de graficos de
;   16:61E8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9B0D
;   9B0D-9B61); lo leen p00:4D11, p00:4B3C (84 bytes)
;   0x9b0d..0x9b61  (84 bytes)
DATA_rle_9B0D:
	defb 002h,040h,082h,050h,070h,004h,0f0h,002h,040h,082h,050h,070h,004h,0f0h,002h,040h	; 9b0d  .@.Pp...@.Pp...@
	defb 082h,050h,070h,004h,0f0h,002h,040h,082h,050h,070h,004h,0f0h,002h,040h,092h,050h	; 9b1d  .Pp...@.Pp...@.P
	defb 070h,0f0h,050h,070h,0e0h,040h,040h,050h,070h,0f0h,050h,070h,0e0h,040h,040h,050h	; 9b2d  p.Pp.@@Pp.Pp.@@P
	defb 070h,004h,0f0h,002h,040h,082h,050h,070h,004h,0f0h,002h,070h,006h,0e0h,002h,070h	; 9b3d  p...@.Pp...p...p
	defb 006h,0f0h,002h,040h,08eh,050h,070h,0f0h,0f0h,050h,070h,040h,040h,050h,070h,0f0h	; 9b4d  ...@.Pp..Pp@@Pp.
	defb 0f0h,050h,070h,000h	; 9b5d

; ----------------------------------------------------------------------
; DATOS rle_9B61: los dibujos de una entrada de la lista de graficos de
;   16:61E8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9B61
;   9B61-9B73); lo leen p00:4CFF, p00:4B3C (18 bytes)
;   0x9b61..0x9b73  (18 bytes)
DATA_rle_9B61:
	defb 002h,000h,002h,017h,007h,000h,082h,003h,001h,003h,000h,083h,070h,0e0h,040h,005h	; 9b61  ............p.@.
	defb 000h,000h	; 9b71

; ----------------------------------------------------------------------
; DATOS rle_9B73: los colores de una entrada de la lista de graficos de
;   16:61E8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9B73
;   9B73-9B7E); lo leen p00:4D11, p00:4B3C (11 bytes)
;   0x9b73..0x9b7e  (11 bytes)
DATA_rle_9B73:
	defb 003h,0e0h,00dh,0f0h,081h,0e0h,005h,0f0h,002h,0e0h,000h	; 9b73  ...........

; ----------------------------------------------------------------------
; DATOS rle_9B7E: los dibujos de una entrada de la lista de graficos de
;   16:6201, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9B7E
;   9B7E-9DEE); lo leen p00:4CFF, p00:4B3C (624 bytes)
;   0x9b7e..0x9dee  (624 bytes)
DATA_rle_9B7E:
	defb 085h,000h,088h,000h,000h,004h,004h,000h,0afh,002h,051h,004h,023h,043h,008h,024h	; 9b7e  ..........Q.#C.$
	defb 0c9h,053h,087h,0c7h,00fh,006h,09ch,01ch,0fah,0e0h,0c3h,00fh,03fh,07ah,0e0h,0c9h	; 9b8e  .S..........?z..
	defb 001h,000h,0d6h,0ebh,076h,082h,004h,0f9h,024h,001h,004h,0a0h,0f9h,0deh,06dh,03bh	; 9b9e  ....v...$.....m.
	defb 0a2h,005h,050h,004h,020h,000h,00ah,081h,003h,000h,081h,040h,003h,000h,099h,010h	; 9bae  ..P. ......@....
	defb 088h,054h,049h,014h,040h,028h,082h,020h,010h,040h,000h,003h,00dh,03eh,07fh,0fbh	; 9bbe  .TI.@(. .@...>..
	defb 000h,000h,053h,06eh,0b5h,0ech,0d3h,0aah,003h,000h,0ffh,002h,001h,014h,001h,016h	; 9bce  ..Sn............
	defb 091h,000h,050h,080h,025h,0a8h,052h,051h,000h,004h,080h,000h,004h,040h,008h,001h	; 9bde  ..P.%.RQ.....@..
	defb 007h,0c3h,040h,070h,00ch,03dh,001h,006h,012h,0c0h,0ffh,03fh,004h,080h,0d7h,0d3h	; 9bee  ..@p.=.....?....
	defb 05dh,0f8h,0e5h,093h,04fh,01ch,065h,028h,001h,0a2h,015h,040h,088h,062h,014h,099h	; 9bfe  ]...O.e(...@.b..
	defb 000h,000h,004h,080h,000h,002h,040h,000h,066h,022h,035h,031h,012h,018h,00ch,08eh	; 9c0e  ......@.f"51....
	defb 020h,020h,000h,008h,080h,0c0h,060h,09fh,003h,003h,013h,013h,003h,036h,066h,03eh	; 9c1e    ....`......6f>
	defb 033h,075h,071h,034h,023h,062h,0e8h,042h,0a8h,050h,004h,090h,004h,0d2h,008h,040h	; 9c2e  3uq4#b.B.P.....@
	defb 096h,028h,012h,061h,00ah,015h,043h,00ah,019h,031h,013h,033h,023h,023h,066h,026h	; 9c3e  .(.a..C..1.3##f&
	defb 0a7h,08eh,018h,050h,030h,080h,020h,080h,0feh,00fh,0deh,003h,065h,00ah,004h,002h	; 9c4e  ...P0. .....e...
	defb 002h,003h,02fh,08eh,0cah,0c5h,06bh,061h,066h,040h,082h,0e0h,090h,031h,0f8h,069h	; 9c5e  ../...kaf@...1.i
	defb 0b0h,010h,002h,040h,000h,010h,000h,000h,080h,040h,000h,008h,020h,008h,004h,001h	; 9c6e  ...@.....@.. ...
	defb 000h,080h,008h,020h,080h,054h,019h,005h,000h,09bh,046h,008h,080h,004h,051h,0aah	; 9c7e  ... .T....F...Q.
	defb 055h,09bh,046h,008h,0a0h,004h,051h,0aah,055h,094h,02ah,044h,090h,049h,020h,084h	; 9c8e  U.F...Q.U.*D.I .
	defb 008h,010h,040h,008h,080h,010h,000h,000h,080h,000h,000h,010h,000h,00ch,004h,002h	; 9c9e  ..@.............
	defb 000h,080h,003h,010h,001h,020h,004h,000h,008h,004h,000h,0a1h,001h,000h,010h,000h	; 9cae  ..... ..........
	defb 020h,002h,050h,0a4h,050h,005h,068h,082h,01bh,017h,00eh,00fh,087h,007h,043h,001h	; 9cbe   .P.P.h.......C.
	defb 02ah,033h,01ch,015h,02ah,01dh,036h,00fh,00ah,011h,005h,000h,005h,003h,000h,0dch	; 9cce  *3..*.6.........
	defb 089h,002h,008h,004h,0a3h,00ch,023h,094h,001h,000h,048h,002h,000h,000h,004h,020h	; 9cde  ......#...H....
	defb 0f8h,0ffh,007h,001h,035h,007h,002h,000h,0e8h,08dh,050h,002h,0f0h,0feh,067h,002h	; 9cee  ....5.....P...g.
	defb 000h,004h,028h,082h,054h,080h,045h,094h,016h,0abh,084h,049h,0a4h,050h,012h,080h	; 9cfe  ..(.T.E....I.P..
	defb 0fch,03fh,003h,080h,0f0h,05fh,002h,000h,080h,0c0h,0c0h,060h,038h,08ah,010h,0c5h	; 9d0e  .?..._.....`8...
	defb 070h,0ebh,0d4h,0c8h,080h,090h,090h,080h,0ceh,0f5h,069h,074h,000h,047h,01fh,038h	; 9d1e  p.........it.G.8
	defb 00ah,040h,000h,006h,01dh,02fh,0a6h,075h,000h,000h,008h,040h,003h,000h,0e1h,040h	; 9d2e  .@.../.u...@...@
	defb 02ch,04ch,011h,002h,020h,009h,024h,000h,0f8h,07ch,03fh,08bh,043h,000h,0d0h,0b2h	; 9d3e  ,L.. .$..|?.C...
	defb 039h,0bch,018h,09dh,08ch,0ceh,0e7h,0e3h,091h,03ch,02ah,011h,029h,019h,039h,035h	; 9d4e  9........<*.).95
	defb 04bh,005h,0a6h,00fh,00dh,09bh,00eh,01ch,041h,082h,050h,002h,020h,088h,020h,081h	; 9d5e  K.......A.P. . .
	defb 000h,040h,000h,000h,088h,000h,020h,001h,002h,000h,004h,028h,000h,010h,080h,000h	; 9d6e  .@.... ....(....
	defb 006h,000h,00ah,044h,00ch,020h,008h,090h,085h,0c2h,049h,0a2h,085h,002h,045h,092h	; 9d7e  ...D. ....I...E.
	defb 085h,0c2h,049h,0a2h,085h,012h,045h,092h,008h,040h,0a2h,049h,090h,044h,028h,092h	; 9d8e  ..I...E..@.I.D(.
	defb 003h,000h,08ah,020h,088h,000h,040h,011h,000h,002h,00ch,008h,020h,003h,000h,0abh	; 9d9e  ... ..@..... ...
	defb 050h,040h,004h,001h,020h,008h,000h,080h,0c6h,0c1h,08dh,00ch,014h,014h,070h,040h	; 9dae  P@.. .........p@
	defb 033h,0b3h,03ah,030h,0b3h,030h,063h,067h,0bah,018h,0aeh,0cdh,0d4h,063h,0eah,070h	; 9dbe  3.:0.0cg.....c.p
	defb 0a1h,044h,022h,009h,023h,044h,014h,049h,000h,004h,020h,003h,000h,089h,002h,010h	; 9dce  .D".#D.I.. .....
	defb 030h,0c9h,0a3h,007h,03ch,0f0h,080h,004h,001h,085h,011h,001h,0c2h,006h,00dh,000h	; 9dde  0...<...........

; ----------------------------------------------------------------------
; DATOS rle_9DEE: los colores de una entrada de la lista de graficos de
;   16:6201, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9DEE
;   9DEE-9DFB); lo leen p00:4D11, p00:4B3C (13 bytes)
;   0x9dee..0x9dfb  (13 bytes)
DATA_rle_9DEE:
	defb 07fh,040h,07fh,040h,03ah,040h,07fh,040h,07fh,040h,03ah,040h,000h	; 9dee  .@.@:@.@.@:@.

; ----------------------------------------------------------------------
; DATOS rle_9DFB: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9DFB
;   9DFB-9E1A); lo leen p00:4CFF, p00:4B3C (31 bytes)
;   0x9dfb..0x9e1a  (31 bytes)
DATA_rle_9DFB:
	defb 002h,001h,083h,082h,044h,028h,003h,010h,002h,001h,083h,082h,044h,028h,005h,010h	; 9dfb  ....D(......D(..
	defb 083h,028h,044h,082h,003h,001h,002h,010h,083h,028h,044h,082h,003h,001h,000h	; 9e0b  .(D......(D....

; ----------------------------------------------------------------------
; DATOS rle_9E1A: los colores de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9E1A
;   9E1A-9E2D); lo leen p00:4D11, p00:4B3C (19 bytes)
;   0x9e1a..0x9e2d  (19 bytes)
DATA_rle_9E1A:
	defb 004h,060h,081h,080h,005h,060h,081h,080h,007h,060h,081h,080h,005h,060h,081h,080h	; 9e1a  .`...`...`...`..
	defb 007h,060h,000h	; 9e2a

; ----------------------------------------------------------------------
; DATOS rle_9E2D: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9E2D
;   9E2D-9E97); lo leen p00:4CFF, p00:4B3C (106 bytes)
;   0x9e2d..0x9e97  (106 bytes)
DATA_rle_9E2D:
	defb 084h,0ceh,09eh,08ch,08ch,003h,008h,086h,000h,04dh,04dh,02dh,025h,024h,003h,004h	; 9e2d  .........MM-%$..
	defb 0d8h,03bh,0b9h,06ah,06eh,0edh,05ch,05eh,0deh,05bh,09bh,0bbh,0d7h,077h,077h,0afh	; 9e3d  ...jn.\^.[...ww.
	defb 0aeh,08dh,021h,075h,0bch,0f8h,0d9h,0e3h,07fh,048h,04ch,058h,01ch,05dh,059h,02bh	; 9e4d  ..!u.....HLX.]Y+
	defb 02ah,0b6h,0b7h,03bh,07fh,07bh,07bh,0bdh,0deh,0cch,065h,07ah,0b6h,0bbh,0fdh,0eeh	; 9e5d  *....{{...ez....
	defb 0e7h,058h,09ch,0bch,0d6h,076h,074h,0aah,008h,024h,066h,072h,0e0h,0e9h,0cah,05ch	; 9e6d  .X...vt..$fr...\
	defb 058h,02dh,069h,04bh,053h,073h,0e3h,0e9h,0c9h,07ch,06eh,0cdh,077h,03bh,03dh,09ch	; 9e7d  X-iKSs...|n.w.=.
	defb 0e6h,0dfh,0bfh,01bh,03fh,07bh,0fbh,0f7h,0e7h,000h	; 9e8d  ....?{....

; ----------------------------------------------------------------------
; DATOS rle_9E97: los colores de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9E97
;   9E97-9EBF); lo leen p00:4D11, p00:4B3C (40 bytes)
;   0x9e97..0x9ebf  (40 bytes)
DATA_rle_9E97:
	defb 01ch,080h,00fh,060h,008h,080h,009h,060h,003h,080h,002h,060h,085h,080h,060h,080h	; 9e97  ...`...`...`..`.
	defb 060h,080h,004h,060h,004h,080h,086h,060h,090h,080h,080h,060h,090h,006h,080h,081h	; 9ea7  `..`...`...`....
	defb 086h,005h,060h,081h,080h,007h,060h,000h	; 9eb7  ..`...`.

; ----------------------------------------------------------------------
; DATOS rle_9EBF: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9EBF
;   9EBF-9F31); lo leen p00:4CFF, p00:4B3C (114 bytes)
;   0x9ebf..0x9f31  (114 bytes)
DATA_rle_9EBF:
	defb 084h,029h,025h,011h,00bh,003h,003h,0ceh,007h,0deh,09eh,03eh,03dh,03dh,039h,039h	; 9ebf  .)%........>==99
	defb 031h,006h,016h,03bh,06bh,023h,008h,074h,022h,000h,000h,002h,005h,005h,00ch,00ch	; 9ecf  1...k#.t".......
	defb 019h,000h,000h,020h,008h,0aah,0feh,065h,02dh,007h,006h,006h,00ch,008h,008h,010h	; 9edf  ... ...e-.......
	defb 000h,007h,007h,00fh,00eh,00ch,018h,010h,020h,02dh,06ch,0cch,0cch,0eeh,064h,066h	; 9eef  ........ -l...df
	defb 064h,071h,063h,063h,043h,0c3h,0c3h,087h,087h,0b3h,098h,0dch,0cch,06eh,026h,093h	; 9eff  dqccC........n&.
	defb 001h,0e3h,0e1h,0e1h,0c1h,0c0h,003h,040h,098h,060h,028h,039h,037h,013h,006h,003h	; 9f0f  .......@.`(97...
	defb 000h,099h,030h,03ch,07ch,078h,0f0h,0e0h,0c0h,00eh,061h,080h,020h,070h,073h,0e5h	; 9f1f  ..0<|x....a. ps.
	defb 0ech,000h	; 9f2f

; ----------------------------------------------------------------------
; DATOS rle_9F31: los colores de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9F31
;   9F31-9F67); lo leen p00:4D11, p00:4B3C (54 bytes)
;   0x9f31..0x9f67  (54 bytes)
DATA_rle_9F31:
	defb 01ch,080h,00ah,060h,081h,080h,007h,090h,081h,0b0h,004h,080h,004h,090h,081h,0b0h	; 9f31  ...`............
	defb 005h,060h,006h,080h,005h,090h,002h,080h,005h,090h,082h,0f0h,080h,007h,090h,002h	; 9f41  .`..............
	defb 080h,083h,060h,080h,080h,003h,090h,083h,060h,080h,080h,005h,086h,003h,060h,081h	; 9f51  ..`.....`.....`.
	defb 090h,003h,080h,081h,060h,000h	; 9f61

; ----------------------------------------------------------------------
; DATOS rle_9F67: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C) (sigue en el banco 18, en 0xA000); se solapan 2
;   bloques: (rle_vram_9F67 9F67-A000); lo leen p00:4CFF, p00:4B3C (153 bytes)
;   0x9f67..0xa000  (153 bytes)
DATA_rle_9F67:
	defb 083h,05fh,05eh,0ceh,003h,0ech,003h,06ch,002h,049h,0b9h,04bh,04fh,047h,00fh,01eh	; 9f67  ._^....l.I.KOG..
	defb 008h,00ch,00ch,09ch,09dh,09dh,01dh,04dh,0c7h,0c3h,0ebh,0e9h,0ech,0f4h,072h,079h	; 9f77  .......M......ry
	defb 0c7h,0c3h,0ebh,069h,06ch,034h,030h,038h,02fh,017h,06fh,03eh,07eh,07dh,07ch,079h	; 9f87  ...il408/.o>~}|y
	defb 06fh,06fh,06eh,04eh,05ch,05dh,059h,019h,0efh,0efh,0e7h,0c7h,0c3h,0cbh,0c9h,099h	; 9f97  oonN\]Y.........
	defb 00ch,018h,010h,020h,004h,000h,08dh,018h,008h,00ch,004h,004h,002h,000h,000h,018h	; 9fa7  ... ............
	defb 018h,010h,020h,020h,003h,000h,08ah,086h,00eh,00ch,008h,018h,010h,030h,020h,06eh	; 9fb7  ..  .........0 n
	defb 06eh,004h,026h,002h,002h,002h,092h,002h,086h,087h,004h,00ch,008h,010h,073h,073h	; 9fc7  n.&...........ss
	defb 063h,003h,021h,002h,001h,0cdh,0e7h,0e3h,061h,031h,011h,008h,004h,000h,011h,013h	; 9fd7  c.!.....a1......
	defb 012h,002h,004h,004h,000h,000h,0ffh,0f9h,076h,0e4h,0eeh,0cch,0dch,098h,0deh,09fh	; 9fe7  ........v.......
	defb 08eh,037h,033h,009h,0b5h,038h,0a8h,053h,0a1h	; 9ff7  .73..8.S.

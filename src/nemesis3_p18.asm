; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 18 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS rle_9F67_cola: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C) (sigue del banco 17); se solapan 2 bloques:
;   (rle_vram_9F67_cola A000-A165); lo leen p00:4CFF, p00:4B3C (357 bytes)
;   0xa000..0xa165  (357 bytes)
DATA_rle_9F67_cola:
	defb 071h,0b4h,0c8h,096h,08eh,0deh,09fh,08eh,037h,033h,009h,0b5h,038h,0deh,09fh,0ceh	; a000  q.......73..8...
	defb 077h,0fbh,00dh,005h,038h,040h,0e0h,0dch,0ddh,0dbh,0d3h,093h,0b3h,033h,0b7h,0a7h	; a010  w...8@.......3..
	defb 0afh,08fh,0dfh,0cfh,0c7h,0c7h,087h,087h,003h,003h,003h,002h,0a4h,018h,031h,021h	; a020  ..............1!
	defb 043h,083h,007h,007h,00eh,0beh,036h,066h,044h,0c4h,08ch,008h,008h,018h,098h,088h	; a030  C.....6fD.......
	defb 084h,0c4h,0c2h,060h,020h,0bdh,0bbh,0bbh,0f0h,077h,06fh,0efh,0dfh,063h,061h,061h	; a040  ...` ....wo..caa
	defb 041h,004h,040h,094h,096h,0c5h,0eah,0e5h,0cah,0b5h,08bh,097h,0fah,0f5h,0f2h,0e5h	; a050  A.@.............
	defb 0e2h,0d5h,0d7h,0b3h,0ceh,09eh,08ch,08ch,003h,008h,0aah,000h,0bch,0b8h,038h,072h	; a060  ..............8r
	defb 072h,067h,066h,066h,0b9h,0b1h,031h,063h,063h,067h,047h,0c6h,0f0h,0f6h,0e4h,0ech	; a070  rgff..1ccgG.....
	defb 0cch,0c9h,089h,019h,073h,073h,067h,0e6h,0c6h,08eh,08ch,00ch,0e6h,046h,046h,044h	; a080  ....ssg......FFD
	defb 044h,04ch,008h,008h,0ach,004h,09eh,0a0h,00eh,02eh,06eh,0c7h,0c3h,0ebh,069h,06ch	; a090  DL........n...il
	defb 034h,030h,018h,0c7h,0c3h,0ebh,069h,06ch,034h,030h,018h,066h,0c6h,0c4h,08ch,08ch	; a0a0  40....il40.f....
	defb 088h,008h,000h,04dh,04dh,02dh,025h,024h,003h,004h,0ffh,05bh,02dh,00ch,001h,0b2h	; a0b0  ...MM-%$...[-...
	defb 0dfh,06fh,067h,098h,030h,030h,0a0h,0a0h,0e0h,040h,040h,038h,0d8h,0c8h,0cch,0e4h	; a0c0  .og.00...@@8....
	defb 062h,032h,031h,066h,066h,023h,093h,0d3h,04bh,069h,061h,0dch,09ch,098h,098h,088h	; a0d0  b21ff#..Kia.....
	defb 088h,008h,008h,01fh,09dh,06eh,027h,077h,033h,03bh,019h,049h,049h,009h,099h,09dh	; a0e0  .....n'w3..II...
	defb 09dh,01dh,04dh,036h,06eh,0e6h,0ceh,0e6h,044h,000h,000h,06ch,076h,067h,073h,067h	; a0f0  ..M6n...D..lvgsg
	defb 022h,000h,000h,0e7h,0f7h,0fbh,07bh,03fh,01bh,0bfh,0dfh,0aeh,0afh,077h,077h,0d7h	; a100  ".....{?.....ww.
	defb 0bbh,09bh,0dbh,078h,072h,0b3h,0d3h,0d3h,0e9h,0edh,0ddh,0e7h,0efh,0ffh,0bfh,0b6h	; a110  ...xr...........
	defb 07ah,065h,0ceh,01eh,04eh,04dh,0cbh,0cbh,097h,0b7h,0bbh,0aah,055h,0abh,0dfh,001h	; a120  ze..NM......U...
	defb 007h,01fh,00fh,074h,00fh,03eh,00ch,0fbh,0f3h,077h,0a3h,067h,007h,08fh,0feh,0feh	; a130  ...t.>...w.g....
	defb 0fch,0fch,0f8h,0f8h,016h,02fh,09fh,0afh,0dfh,0cfh,0dfh,0efh,026h,026h,004h,049h	; a140  ...../......&&.I
	defb 04bh,0d2h,096h,086h,07ah,075h,0cch,0d9h,099h,092h,033h,067h,019h,09bh,003h,0d3h	; a150  K...zu....3g....
	defb 083h,0c3h,0e7h,0e6h,000h	; a160

; ----------------------------------------------------------------------
; DATOS rle_A165: los colores de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A165
;   A165-A249); lo leen p00:4D11, p00:4B3C (228 bytes)
;   0xa165..0xa249  (228 bytes)
DATA_rle_A165:
	defb 03fh,080h,030h,090h,081h,0b0h,007h,090h,081h,0b0h,006h,090h,081h,0b0h,006h,090h	; a165  ?.0.............
	defb 081h,0b0h,01eh,060h,081h,090h,008h,060h,002h,090h,008h,060h,006h,080h,084h,090h	; a175  ...`...`...`....
	defb 080h,090h,080h,007h,090h,081h,080h,008h,090h,081h,080h,007h,090h,090h,080h,090h	; a185  ................
	defb 080h,090h,090h,080h,090h,080h,080h,090h,098h,080h,090h,080h,090h,080h,007h,090h	; a195  ................
	defb 004h,060h,00ah,080h,002h,090h,005h,080h,002h,090h,008h,080h,081h,090h,005h,080h	; a1a5  .`..............
	defb 083h,090h,080h,090h,005h,080h,003h,090h,003h,080h,005h,090h,002h,080h,006h,090h	; a1b5  ................
	defb 003h,080h,082h,090h,080h,003h,090h,003h,080h,005h,090h,002h,080h,082h,090h,080h	; a1c5  ................
	defb 004h,090h,083h,080h,090h,080h,005h,090h,002h,080h,003h,090h,081h,080h,006h,090h	; a1d5  ................
	defb 008h,060h,00bh,080h,082h,090h,060h,00bh,080h,004h,090h,081h,086h,00ch,060h,003h	; a1e5  .`....`.......`.
	defb 080h,003h,060h,002h,080h,081h,090h,005h,060h,002h,080h,081h,090h,004h,080h,005h	; a1f5  ..`.....`.......
	defb 060h,081h,080h,004h,060h,004h,080h,002h,060h,003h,080h,081h,060h,003h,080h,004h	; a205  `...`...`...`...
	defb 060h,002h,080h,003h,060h,003h,080h,083h,060h,080h,080h,004h,060h,004h,086h,081h	; a215  `...`...`...`...
	defb 060h,003h,086h,004h,080h,002h,086h,086h,080h,060h,080h,060h,080h,080h,003h,060h	; a225  `........`.`...`
	defb 005h,080h,081h,060h,007h,080h,003h,060h,003h,080h,002h,060h,004h,080h,084h,090h	; a235  ...`...`...`....
	defb 080h,090h,090h,000h	; a245

; ----------------------------------------------------------------------
; DATOS rle_A249: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A249
;   A249-A27B); lo leen p00:4CFF, p00:4B3C (50 bytes)
;   0xa249..0xa27b  (50 bytes)
DATA_rle_A249:
	defb 0b0h,07eh,0e3h,0d9h,0f8h,0bch,075h,021h,08dh,0deh,0bfh,09eh,017h,00bh,005h,0b3h	; a249  .~....u!........
	defb 03ah,0deh,09fh,04eh,037h,03bh,02dh,067h,06eh,05bh,02dh,00ch,001h,0b2h,0dfh,06fh	; a259  :..N7.-gn[-....o
	defb 067h,0dbh,06dh,02ch,018h,082h,0dfh,06fh,067h,04dh,01dh,09dh,09dh,09ch,00dh,04dh	; a269  g.m,...ogM.....M
	defb 049h,000h	; a279

; ----------------------------------------------------------------------
; DATOS rle_A27B: los colores de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A27B
;   A27B-A28A); lo leen p00:4D11, p00:4B3C (15 bytes)
;   0xa27b..0xa28a  (15 bytes)
DATA_rle_A27B:
	defb 015h,060h,007h,090h,002h,060h,006h,080h,004h,060h,081h,090h,007h,080h,000h	; a27b  .`...`...`.....

; ----------------------------------------------------------------------
; DATOS rle_A28A: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A28A
;   A28A-A2B4); lo leen p00:4CFF, p00:4B3C (42 bytes)
;   0xa28a..0xa2b4  (42 bytes)
DATA_rle_A28A:
	defb 0a8h,0ceh,065h,07ah,0b6h,0bfh,0ffh,0efh,0e7h,04ch,065h,07ah,0b6h,0bbh,0ddh,0eeh	; a28a  ..ez.....Lez....
	defb 0e7h,0ceh,065h,07ah,0b6h,0bfh,0ffh,0efh,0e7h,0cch,06eh,0e5h,077h,03bh,07fh,0deh	; a29a  ..ez......n.w...
	defb 0e6h,067h,06fh,0dfh,082h,018h,02ch,06dh,0dbh,000h	; a2aa  .go...,m..

; ----------------------------------------------------------------------
; DATOS rle_A2B4: los colores de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A2B4
;   A2B4-A2C5); lo leen p00:4D11, p00:4B3C (17 bytes)
;   0xa2b4..0xa2c5  (17 bytes)
DATA_rle_A2B4:
	defb 00ch,060h,003h,080h,002h,060h,002h,080h,005h,060h,004h,080h,008h,060h,004h,080h	; a2b4  .`...`...`...`..
	defb 000h	; a2c4

; ----------------------------------------------------------------------
; DATOS rle_A2C5: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A2C5
;   A2C5-A47D); lo leen p00:4CFF, p00:4B3C (440 bytes)
;   0xa2c5..0xa47d  (440 bytes)
DATA_rle_A2C5:
	defb 003h,004h,0d1h,024h,025h,02dh,04dh,04dh,022h,074h,008h,023h,06bh,03bh,016h,006h	; a2c5  ...$%-MM"t.#k...
	defb 005h,015h,014h,02eh,05eh,0a1h,073h,084h,06dh,012h,023h,011h,031h,039h,05ah,084h	; a2d5  ....^.s.m.#.19Z.
	defb 0e7h,0f6h,0fah,07fh,07eh,0b7h,08bh,0cdh,019h,00ch,004h,005h,001h,001h,000h,000h	; a2e5  ....~...........
	defb 008h,018h,01ch,03ch,076h,076h,0e6h,0ech,019h,00ch,00ch,005h,005h,002h,000h,000h	; a2f5  ...<vv..........
	defb 0dbh,06dh,02dh,018h,000h,0e2h,03dh,000h,0ech,0e5h,073h,070h,020h,080h,061h,00eh	; a305  .m-...=...sp .a.
	defb 0ceh,09eh,08ch,08ch,003h,008h,0d9h,000h,02dh,069h,04bh,053h,073h,0e3h,0e9h,0c9h	; a315  ........-iKSs...
	defb 067h,039h,0bch,0dch,0eeh,0b3h,076h,03eh,0feh,038h,064h,0e0h,0c2h,051h,07bh,04eh	; a325  g9....v>.8d..Q{N
	defb 04eh,07bh,051h,0c2h,0e0h,064h,038h,0feh,0e7h,0f7h,0fbh,07bh,03dh,018h,0a7h,0dfh	; a335  N{Q..d8....{=...
	defb 048h,04ch,058h,01ch,05dh,059h,02bh,02ah,024h,066h,072h,0e0h,0e9h,0cah,05ch,058h	; a345  HLX.]Y+*$fr...\X
	defb 066h,0b6h,013h,000h,018h,034h,0b6h,0dbh,0ech,0e5h,073h,070h,020h,080h,077h,00eh	; a355  f....4....sp .w.
	defb 037h,0a7h,04eh,00eh,004h,001h,0eeh,070h,058h,09ch,0bch,0d6h,076h,074h,0aah,008h	; a365  7.N....pX...vt..
	defb 003h,000h,085h,001h,016h,064h,0ech,0cch,004h,000h,08ch,042h,0cch,0d8h,0b2h,000h	; a375  .....d.....B....
	defb 003h,00ch,018h,033h,077h,066h,0ech,003h,000h,08bh,07ch,0c0h,001h,003h,00eh,004h	; a385  ...3wf....|.....
	defb 008h,030h,060h,0c0h,080h,004h,000h,0ffh,001h,003h,006h,004h,00ch,00ch,020h,040h	; a395  .0`........... @
	defb 080h,000h,002h,006h,01eh,007h,000h,000h,002h,002h,043h,067h,0f7h,076h,008h,04eh	; a3a5  ..........Cg.v.N
	defb 067h,070h,030h,001h,027h,04fh,06ch,006h,083h,010h,0ach,036h,0a9h,00dh,0ach,02bh	; a3b5  gp0.'Ol....6...+
	defb 09bh,006h,070h,0fbh,01fh,05fh,0e8h,003h,01fh,07fh,0fch,0f8h,0f0h,0f0h,03ch,0f8h	; a3c5  ..p.._........<.
	defb 0f0h,080h,03ch,07eh,0c8h,045h,00ch,006h,000h,002h,01fh,006h,002h,000h,030h,088h	; a3d5  ..<~.E........0.
	defb 001h,03bh,045h,0b2h,07eh,030h,02ch,000h,092h,0dbh,077h,0a5h,0b7h,001h,02ch,0c3h	; a3e5  ..E.~0,...w...,.
	defb 087h,081h,08fh,01eh,011h,0cfh,060h,017h,0f1h,0e4h,0f8h,003h,0c6h,099h,04fh,0e6h	; a3f5  ......`.......O.
	defb 080h,03ch,0ffh,0c2h,038h,030h,0c0h,039h,041h,0fbh,0e0h,00fh,0d2h,0fdh,07ch,0f3h	; a405  .<..80.9A.....|.
	defb 060h,0feh,0fdh,02eh,0e7h,0fbh,001h,0dfh,002h,00ch,018h,030h,020h,060h,060h,000h	; a415  `..........0 ``.
	defb 000h,014h,00eh,007h,006h,00ch,00dh,060h,034h,04ch,070h,036h,080h,0ffh,0feh,081h	; a425  .......`4Lp6....
	defb 001h,01dh,0c0h,02bh,015h,075h,061h,06ch,063h,0c7h,0c1h,0cfh,01eh,091h,0cfh,008h	; a435  ...+.ualc.......
	defb 00eh,027h,030h,030h,001h,0a7h,08fh,039h,07bh,073h,037h,027h,02eh,07dh,0ffh,019h	; a445  .'00...9{s7'.}..
	defb 03bh,033h,077h,027h,06eh,09dh,097h,0cdh,08bh,0b7h,07eh,07fh,0fah,0f6h,0e7h,0cdh	; a455  .3w'n.....~.....
	defb 08bh,0b7h,07eh,07fh,0fah,0f6h,0e7h,01fh,09dh,06eh,027h,077h,033h,03bh,019h,0e7h	; a465  ..~......n'w3...
	defb 0f6h,0fah,07fh,07eh,0b7h,08bh,0cdh,000h	; a475  ...~....

; ----------------------------------------------------------------------
; DATOS rle_A47D: los colores de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A47D
;   A47D-A571); lo leen p00:4D11, p00:4B3C (244 bytes)
;   0xa47d..0xa571  (244 bytes)
DATA_rle_A47D:
	defb 013h,080h,002h,060h,002h,0c8h,08ch,0c9h,080h,0c8h,0c8h,0c6h,0c6h,0c8h,0c8h,0c9h	; a47d  ...`............
	defb 090h,080h,080h,009h,060h,081h,080h,006h,090h,004h,080h,005h,060h,006h,080h,082h	; a48d  ....`.......`...
	defb 060h,090h,005h,060h,003h,080h,081h,090h,003h,060h,00ah,080h,082h,060h,090h,005h	; a49d  `..`.....`...`..
	defb 080h,081h,090h,003h,060h,081h,086h,003h,080h,003h,0c6h,084h,0c8h,0c6h,0c9h,0c9h	; a4ad  ....`...........
	defb 003h,0c6h,087h,0c8h,0c6h,0c8h,0c8h,090h,090h,080h,004h,060h,002h,080h,003h,060h	; a4bd  ...........`...`
	defb 005h,080h,002h,060h,004h,080h,082h,060h,090h,004h,060h,002h,090h,002h,080h,081h	; a4cd  ...`...`..`.....
	defb 060h,003h,080h,081h,090h,004h,060h,003h,080h,081h,090h,004h,060h,085h,080h,060h	; a4dd  `.....`.....`..`
	defb 080h,060h,080h,021h,060h,081h,080h,00ch,060h,083h,080h,060h,080h,016h,060h,003h	; a4ed  .`.!`...`..`..`.
	defb 080h,003h,060h,005h,080h,004h,060h,002h,080h,002h,090h,081h,060h,003h,080h,004h	; a4fd  ..`...`.....`...
	defb 090h,004h,080h,083h,090h,080h,080h,009h,060h,006h,080h,086h,090h,0f9h,060h,000h	; a50d  ........`.....`.
	defb 080h,080h,003h,090h,083h,0f9h,080h,080h,006h,090h,082h,080h,098h,00dh,090h,082h	; a51d  ................
	defb 0f9h,090h,005h,060h,086h,090h,096h,090h,090h,086h,080h,008h,060h,081h,080h,00bh	; a52d  ...`........`...
	defb 060h,003h,080h,083h,060h,0e0h,0e0h,003h,060h,002h,080h,081h,0f8h,003h,090h,083h	; a53d  `...`...`.......
	defb 0f9h,080h,080h,006h,090h,005h,060h,003h,080h,005h,060h,083h,080h,090h,090h,007h	; a54d  ......`...`.....
	defb 060h,081h,096h,006h,060h,002h,090h,006h,060h,083h,090h,0b0h,086h,007h,060h,002h	; a55d  `...`...`.....`.
	defb 080h,006h,060h,000h	; a56d

; ----------------------------------------------------------------------
; DATOS rle_A571: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A571
;   A571-A631); lo leen p00:4CFF, p00:4B3C (192 bytes)
;   0xa571..0xa631  (192 bytes)
DATA_rle_A571:
	defb 003h,000h,002h,020h,08dh,010h,018h,018h,020h,030h,010h,018h,008h,00ch,00eh,086h	; a571  ... .... 0......
	defb 002h,002h,004h,026h,002h,06eh,002h,000h,088h,002h,004h,004h,00ch,008h,018h,038h	; a581  ...&.n.........8
	defb 018h,007h,000h,0aah,008h,088h,08ch,08ch,0c4h,0c6h,066h,008h,008h,04ch,044h,044h	; a591  ..........f..LDD
	defb 046h,046h,0e6h,00ch,08ch,08eh,0c6h,0e6h,067h,073h,073h,0c6h,047h,067h,063h,063h	; a5a1  FF......gss.Ggcc
	defb 031h,0b1h,0b9h,066h,066h,067h,072h,072h,038h,0b8h,0bch,06eh,02eh,00eh,004h,09eh	; a5b1  1..ffgrr8..n....
	defb 0b6h,0ach,018h,030h,034h,06ch,069h,0ebh,0c3h,0c7h,018h,030h,034h,06ch,069h,0ebh	; a5c1  ...04li....04li.
	defb 0c3h,0c7h,020h,060h,0c2h,0c4h,084h,088h,098h,018h,018h,038h,07ch,0feh,0fch,02ch	; a5d1  .. `.......8|..,
	defb 07eh,07fh,0b6h,03dh,02eh,07ch,0d5h,02ch,07eh,07fh,0b6h,03dh,02eh,07ch,0d5h,0fch	; a5e1  ~..=.|.,~..=.|..
	defb 0feh,07ch,0fch,0feh,07ch,038h,018h,006h,000h,0b5h,018h,038h,07ch,0feh,0fch,02ch	; a5f1  .|..|8.....8|..,
	defb 07eh,07fh,0b6h,03dh,02eh,07ch,0d5h,0e8h,07dh,02fh,0a7h,077h,07bh,07bh,039h,0fbh	; a601  ~..=.|..}/.w{{9.
	defb 0fdh,0d8h,0fch,0deh,0dfh,0efh,0e7h,0e7h,0efh,0dfh,0deh,0fch,0d8h,0fdh,0fbh,0f8h	; a611  ................
	defb 0b9h,076h,0e4h,0e8h,0c8h,0dch,09ch,04dh,01dh,09dh,09dh,09ch,00dh,04dh,049h,000h	; a621  .v.....M.....MI.

; ----------------------------------------------------------------------
; DATOS rle_A631: los colores de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A631
;   A631-A6AD); lo leen p00:4D11, p00:4B3C (124 bytes)
;   0xa631..0xa6ad  (124 bytes)
DATA_rle_A631:
	defb 020h,090h,081h,080h,00ch,090h,083h,080h,090h,080h,006h,090h,002h,080h,005h,090h	; a631   ...............
	defb 003h,080h,083h,090h,080h,090h,005h,080h,081h,090h,007h,080h,003h,090h,082h,080h	; a641  ................
	defb 090h,003h,080h,005h,090h,003h,080h,004h,090h,090h,080h,090h,080h,080h,090h,080h	; a651  ................
	defb 090h,090h,080h,090h,080h,090h,090h,080h,090h,080h,003h,060h,084h,080h,090h,090h	; a661  ...........`....
	defb 080h,004h,060h,084h,080h,090h,090h,080h,003h,060h,086h,080h,090h,060h,080h,090h	; a671  ..`......`...`..
	defb 080h,008h,090h,083h,080h,090h,080h,003h,060h,087h,080h,090h,090h,080h,060h,060h	; a681  ........`.....``
	defb 086h,007h,060h,081h,080h,004h,060h,086h,090h,0f0h,0f0h,090h,080h,080h,004h,060h	; a691  ..`...`........`
	defb 084h,080h,098h,080h,080h,005h,060h,081h,090h,007h,080h,000h	; a6a1  ......`.....

; ----------------------------------------------------------------------
; DATOS rle_A6AD: los dibujos de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A6AD
;   A6AD-A6E6); lo leen p00:4CFF, p00:4B3C (57 bytes)
;   0xa6ad..0xa6e6  (57 bytes)
DATA_rle_A6AD:
	defb 003h,004h,086h,024h,025h,02dh,04dh,04dh,000h,003h,008h,002h,08ch,087h,09eh,0ceh	; a6ad  ...$%-MM........
	defb 04dh,04dh,02dh,025h,024h,003h,004h,084h,0ceh,09eh,08ch,08ch,003h,008h,094h,000h	; a6bd  MM-%$...........
	defb 02dh,069h,04bh,053h,073h,0e3h,0e9h,0c9h,024h,066h,072h,0e0h,0e9h,0cah,05ch,058h	; a6cd  -iKSs...$fr...\X
	defb 000h,038h,07ch,003h,07eh,082h,03ch,000h,000h	; a6dd  .8|.~.<..

; ----------------------------------------------------------------------
; DATOS rle_A6E6: los colores de una entrada de la lista de graficos de
;   16:63F2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A6E6
;   A6E6-A6FA); lo leen p00:4D11, p00:4B3C (20 bytes)
;   0xa6e6..0xa6fa  (20 bytes)
DATA_rle_A6E6:
	defb 022h,080h,082h,060h,090h,004h,080h,002h,060h,004h,080h,081h,060h,003h,090h,003h	; a6e6  "..`....`...`...
	defb 080h,003h,060h,000h	; a6f6

; ----------------------------------------------------------------------
; DATOS rle_A6FA: los dibujos de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A6FA
;   A6FA-A714); lo leen p00:4CFF, p00:4B3C (26 bytes)
;   0xa6fa..0xa714  (26 bytes)
DATA_rle_A6FA:
	defb 098h,088h,001h,024h,081h,048h,002h,040h,092h,020h,004h,040h,010h,044h,021h,088h	; a6fa  ...$.H.@. .@.D!.
	defb 021h,008h,0a0h,009h,080h,012h,040h,009h,004h,000h	; a70a  !.....@...

; ----------------------------------------------------------------------
; DATOS rle_A714: los colores de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A714
;   A714-A717); lo leen p00:4D11, p00:4B3C (3 bytes)
;   0xa714..0xa717  (3 bytes)
DATA_rle_A714:
	defb 018h,0b0h,000h	; a714

; ----------------------------------------------------------------------
; DATOS rle_A717: los dibujos de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A717
;   A717-A72B); lo leen p00:4CFF, p00:4B3C (20 bytes)
;   0xa717..0xa72b  (20 bytes)
DATA_rle_A717:
	defb 004h,000h,084h,03ch,07eh,07eh,03ch,006h,000h,082h,03ch,0f8h,004h,000h,084h,007h	; a717  ...<~~<...<.....
	defb 01fh,07fh,00ah,000h	; a727

; ----------------------------------------------------------------------
; DATOS rle_A72B: los colores de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A72B
;   A72B-A738); lo leen p00:4D11, p00:4B3C (13 bytes)
;   0xa72b..0xa738  (13 bytes)
DATA_rle_A72B:
	defb 006h,0f0h,002h,0e0h,007h,0b0h,081h,0bah,007h,0a0h,081h,0eah,000h	; a72b  .............

; ----------------------------------------------------------------------
; DATOS rle_A738: los dibujos de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A738
;   A738-A75A); lo leen p00:4CFF, p00:4B3C (34 bytes)
;   0xa738..0xa75a  (34 bytes)
DATA_rle_A738:
	defb 002h,000h,002h,001h,09ch,002h,000h,020h,080h,00ah,014h,041h,080h,008h,012h,000h	; a738  ....... ...A....
	defb 040h,000h,000h,001h,001h,002h,000h,020h,080h,00ah,014h,041h,080h,008h,012h,000h	; a748  @...... ...A....
	defb 040h,000h	; a758

; ----------------------------------------------------------------------
; DATOS rle_A75A: los colores de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A75A
;   A75A-A75F); lo leen p00:4D11, p00:4B3C (5 bytes)
;   0xa75a..0xa75f  (5 bytes)
DATA_rle_A75A:
	defb 010h,060h,010h,050h,000h	; a75a

; ----------------------------------------------------------------------
; DATOS rle_A75F: los dibujos de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A75F
;   A75F-A7A1); lo leen p00:4CFF, p00:4B3C (66 bytes)
;   0xa75f..0xa7a1  (66 bytes)
DATA_rle_A75F:
	defb 0c0h,05ah,0b7h,03fh,05fh,016h,0afh,015h,04ah,0d2h,06dh,0ffh,0d7h,050h,0fbh,07dh	; a75f  .Z.?_...J.m..P.}
	defb 0afh,0a7h,05fh,0edh,07fh,0f5h,06fh,0f6h,0beh,03ch,0eeh,0bch,0f8h,0eah,050h,0c8h	; a76f  .._...o..<....P.
	defb 051h,006h,0abh,056h,03fh,05fh,02ah,011h,0a4h,0ffh,07ah,0b7h,0feh,0bfh,0ffh,0bfh	; a77f  Q..V?_*...z.....
	defb 04bh,0fah,075h,0afh,0f3h,0ffh,0fdh,0d6h,0a9h,090h,068h,0cdh,038h,0b4h,0e0h,092h	; a78f  K.u.......h.8...
	defb 05ch,000h	; a79f

; ----------------------------------------------------------------------
; DATOS rle_A7A1: los colores de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A7A1
;   A7A1-A7D0); lo leen p00:4D11, p00:4B3C (47 bytes)
;   0xa7a1..0xa7d0  (47 bytes)
DATA_rle_A7A1:
	defb 002h,0b0h,003h,0a0h,003h,0b0h,004h,0a0h,081h,0bah,003h,0b0h,005h,0a0h,002h,0b0h	; a7a1  ................
	defb 086h,0bah,0b0h,0b0h,0a0h,0b0h,0a0h,003h,0b0h,005h,0a0h,002h,0b0h,082h,0a0h,0b0h	; a7b1  ................
	defb 003h,0a0h,005h,0b0h,003h,0a0h,004h,0b0h,005h,0a0h,083h,0b0h,0a0h,0a0h,000h	; a7c1  ...............

; ----------------------------------------------------------------------
; DATOS rle_A7D0: los dibujos de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A7D0
;   A7D0-A83F); lo leen p00:4CFF, p00:4B3C (111 bytes)
;   0xa7d0..0xa83f  (111 bytes)
DATA_rle_A7D0:
	defb 0a4h,000h,07fh,0edh,07fh,000h,0fch,0fdh,07bh,000h,0feh,0ebh,0feh,000h,03ch,07eh	; a7d0  ........{.....<~
	defb 07eh,003h,079h,0fch,0feh,0f6h,0feh,0f6h,0ech,0c1h,03ch,07eh,0feh,0fah,0fah,0f4h	; a7e0  ~.y.......<~....
	defb 060h,086h,078h,0fch,0f6h,003h,0feh,0b2h,07eh,0f5h,0fbh,0fah,06ch,019h,083h,07fh	; a7f0  `.x.....~...l...
	defb 03fh,0e4h,078h,000h,03ch,07eh,07ah,07eh,03dh,01eh,07fh,0ffh,0ffh,07eh,03ch,0c1h	; a800  ?.x.<~z~=....~<.
	defb 0fbh,07ch,030h,00ch,07eh,0feh,001h,07eh,0bch,0feh,07ch,03ch,006h,04fh,0efh,0e6h	; a810  .|0.~..~..|<.O..
	defb 0e0h,000h,000h,001h,001h,01dh,03dh,03dh,07dh,00eh,006h,0deh,08ah,09eh,000h,0feh	; a820  ......==}.......
	defb 0ebh,0feh,000h,07ch,0feh,0feh,001h,003h,003h,084h,01bh,03bh,03bh,073h,000h	; a830  ...|.........s.

; ----------------------------------------------------------------------
; DATOS rle_A83F: los colores de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A83F
;   A83F-A8A3); lo leen p00:4D11, p00:4B3C (100 bytes)
;   0xa83f..0xa8a3  (100 bytes)
DATA_rle_A83F:
	defb 002h,0e0h,092h,0b0h,0a0h,0e0h,0e0h,0a0h,0b0h,0e0h,0e0h,0a0h,0a0h,0e0h,0e0h,0a0h	; a83f  ................
	defb 0b0h,0b0h,0e0h,0e0h,0a0h,004h,0b0h,002h,0e0h,081h,0a0h,003h,0b0h,002h,0e0h,084h	; a84f  ................
	defb 0b0h,0e0h,0a0h,0a0h,003h,0b0h,081h,0a0h,003h,0b0h,085h,0a0h,0e0h,0e0h,0bah,0bah	; a85f  ................
	defb 004h,0e0h,002h,0a0h,081h,0b0h,003h,0e0h,007h,0b0h,081h,0a0h,003h,0b0h,082h,0ebh	; a86f  ................
	defb 0b0h,003h,0a0h,002h,0e0h,003h,0a0h,005h,0b0h,087h,0a0h,0b0h,0b0h,0e0h,0e0h,0a0h	; a87f  ................
	defb 0a0h,003h,0b0h,004h,0e0h,003h,0a0h,08bh,0e0h,0a0h,0b0h,0e0h,0e0h,0a0h,0b0h,0a0h	; a88f  ................
	defb 0b0h,0b0h,0e0h,000h	; a89f

; ----------------------------------------------------------------------
; DATOS rle_A8A3: los dibujos de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A8A3
;   A8A3-A9E0); lo leen p00:4CFF, p00:4B3C (317 bytes)
;   0xa8a3..0xa9e0  (317 bytes)
DATA_rle_A8A3:
	defb 0ach,001h,003h,002h,006h,007h,00dh,00ch,00eh,000h,080h,040h,040h,060h,0e0h,060h	; a8a3  ...........@@`.`
	defb 020h,000h,080h,040h,060h,0e0h,060h,0c0h,080h,0e0h,0f0h,078h,058h,0a0h,0f0h,070h	; a8b3   ..@`.`....xX..p
	defb 060h,000h,000h,0e0h,0f0h,0f8h,0f0h,0e4h,0eeh,080h,080h,0c0h,040h,004h,0c0h,003h	; a8c3  `...........@...
	defb 000h,085h,030h,07ch,0deh,0feh,07ch,004h,000h,086h,003h,006h,00dh,002h,000h,000h	; a8d3  ..0|..|.........
	defb 003h,001h,09bh,003h,002h,001h,000h,000h,00eh,01fh,03fh,07eh,06eh,030h,00eh,01eh	; a8e3  ..........?~n0..
	defb 01dh,00dh,013h,038h,038h,034h,000h,000h,0c0h,0f0h,0f8h,0ffh,02fh,005h,006h,000h	; a8f3  ...884....../...
	defb 0ffh,0ffh,042h,0fdh,0fdh,075h,022h,082h,0c7h,08eh,016h,0bch,0c8h,0e0h,0e2h,04eh	; a903  ..B..u"........N
	defb 03ch,07dh,0f2h,03ch,0f0h,0efh,01fh,03fh,03fh,05eh,067h,01ch,03ah,0c7h,0b2h,0d8h	; a913  <}.<...??^g.:...
	defb 0e0h,0c0h,00fh,07ch,0feh,0feh,0fch,0fdh,079h,054h,03ah,03fh,07ah,0fch,0f8h,0b1h	; a923  ...|....yT:?z...
	defb 0c3h,0f7h,002h,00ch,03eh,078h,0d3h,0a7h,0efh,0dfh,05fh,000h,01ch,0eeh,0f2h,0d8h	; a933  ....>x...._.....
	defb 0d9h,0ebh,0e3h,01fh,02fh,036h,0b0h,096h,0cch,0c0h,073h,0d9h,0a2h,0efh,05fh,01fh	; a943  ..../6....s..._.
	defb 03fh,09ah,0cch,038h,07ch,0deh,0eeh,0ffh,07bh,03eh,000h,000h,060h,0fch,0f7h,04ch	; a953  ?..8|...{>..`..L
	defb 079h,0b3h,0c1h,0e0h,0deh,0bfh,03fh,07bh,07ch,09ch,0c9h,018h,07ch,07ch,0feh,0feh	; a963  y.....?{|...||..
	defb 074h,020h,08eh,0dfh,0dfh,0efh,066h,010h,0deh,05fh,08fh,0e6h,0f1h,071h,003h,063h	; a973  t ....f.._...q.c
	defb 0bah,0fdh,07dh,038h,0deh,07eh,021h,09ch,0beh,039h,038h,010h,006h,038h,07eh,0feh	; a983  ..}8.~!..98..8~.
	defb 0fdh,0fbh,07ah,02ch,01ch,03eh,03fh,07fh,07ch,07bh,0e7h,046h,000h,072h,07bh,0e8h	; a993  ..z,.>?.|{.F.r{.
	defb 0fbh,0d7h,0b5h,062h,03ch,07eh,07ah,03ch,03fh,01fh,00fh,002h,000h,060h,0f0h,0fch	; a9a3  ...b<~z<?....`..
	defb 07eh,03fh,0dfh,0c6h,05dh,0bfh,09eh,024h,050h,078h,030h,003h,000h,09eh,070h,0f8h	; a9b3  ~?..]..$Px0...p.
	defb 0fch,0fch,076h,00eh,000h,01fh,03eh,07ch,0fdh,0fah,067h,00eh,007h,06fh,0dfh,097h	; a9c3  ..v...>|..g..o..
	defb 01fh,062h,0f0h,0f8h,0c0h,0b6h,0e3h,0cch,03eh,07bh,0fdh,078h,000h	; a9d3  .b......>{.x.

; ----------------------------------------------------------------------
; DATOS rle_A9E0: los colores de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_A9E0
;   A9E0-AA9E); lo leen p00:4D11, p00:4B3C (190 bytes)
;   0xa9e0..0xaa9e  (190 bytes)
DATA_rle_A9E0:
	defb 083h,0f0h,0e0h,0e0h,00ah,0f0h,008h,0e0h,002h,0f0h,083h,0e0h,0f0h,0f0h,009h,0e0h	; a9e0  ................
	defb 082h,0f0h,0e0h,004h,0f0h,081h,0e0h,004h,0f0h,002h,0e0h,006h,0f0h,00ah,0e0h,00eh	; a9f0  ................
	defb 0f0h,002h,0e0h,081h,0f0h,003h,0e0h,002h,0f0h,002h,0e0h,006h,0a0h,002h,0aeh,007h	; aa00  ................
	defb 0a0h,083h,0aeh,0f0h,0f0h,006h,0e0h,081h,0f0h,003h,0e0h,002h,0f0h,003h,0e0h,085h	; aa10  ................
	defb 0f0h,0e0h,0feh,0f0h,0f0h,00dh,0e0h,081h,0f0h,005h,0e0h,003h,0f0h,004h,0e0h,003h	; aa20  ................
	defb 0f0h,085h,0e0h,0f0h,0e0h,0f0h,0f0h,003h,0e0h,082h,0f0h,0e0h,005h,0f0h,009h,0e0h	; aa30  ................
	defb 002h,0f0h,003h,0e0h,003h,0f0h,005h,0e0h,004h,0f0h,004h,0e0h,003h,0f0h,005h,0e0h	; aa40  ................
	defb 004h,0f0h,003h,0e0h,002h,0f0h,003h,0e0h,002h,0f0h,003h,0e0h,082h,0f0h,0e0h,003h	; aa50  ................
	defb 0f0h,004h,0e0h,002h,0f0h,084h,0e0h,0f0h,0e0h,0e0h,005h,0f0h,002h,0e0h,004h,0f0h	; aa60  ................
	defb 082h,0e0h,0f0h,003h,0e0h,004h,0f0h,004h,0e0h,002h,0f0h,003h,0e0h,002h,0f0h,081h	; aa70  ................
	defb 0e0h,004h,0f0h,008h,0e0h,002h,0f0h,002h,0e0h,005h,0f0h,005h,0e0h,002h,0f0h,005h	; aa80  ................
	defb 0e0h,002h,0f0h,004h,0e0h,081h,0f0h,004h,0e0h,003h,0f0h,081h,0feh,000h	; aa90  ..............

; ----------------------------------------------------------------------
; DATOS rle_AA9E: los dibujos de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AA9E
;   AA9E-AB21); lo leen p00:4CFF, p00:4B3C (131 bytes)
;   0xaa9e..0xab21  (131 bytes)
DATA_rle_AA9E:
	defb 0ffh,01ch,03ah,07dh,07dh,0feh,0feh,0f0h,078h,030h,00ch,01eh,01eh,09ch,09ah,00ch	; aa9e  ..:}}...x0......
	defb 000h,0feh,0feh,05ch,069h,039h,01dh,00eh,000h,03ch,07eh,0feh,0fdh,0fch,0f8h,0f0h	; aaae  ...\i9...<~.....
	defb 04ch,00ch,03eh,07fh,07fh,0ffh,0beh,0c8h,070h,038h,07eh,01fh,08fh,023h,072h,0c0h	; aabe  L.>.....p8~..#r.
	defb 03eh,000h,011h,07dh,0fbh,0fbh,0f3h,0b1h,040h,0f8h,0f0h,060h,0fch,0f0h,000h,0c6h	; aace  >..}....@..`....
	defb 00ch,000h,00ch,03eh,07eh,07eh,0fch,018h,000h,001h,0ffh,0f8h,0ffh,001h,0aah,055h	; aade  ...>~~.........U
	defb 0aah,0fch,080h,0ffh,00ah,055h,0aah,057h,0bfh,0c0h,0feh,060h,0b0h,05ch,0feh,0fdh	; aaee  .....U.W...`.\..
	defb 0fah,000h,000h,0c0h,0ffh,001h,08ah,055h,0abh,000h,003h,07fh,0f0h,04ch,0bah,0fdh	; aafe  .......U.....L..
	defb 0feh,0f9h,0e2h,0cfh,03fh,0ffh,03eh,090h,0eah,000h,000h,001h,08fh,0ffh,0ffh,0d0h	; ab0e  ....?.>.........
	defb 081h,0a8h,000h	; ab1e

; ----------------------------------------------------------------------
; DATOS rle_AB21: los colores de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AB21
;   AB21-AB6A); lo leen p00:4D11, p00:4B3C (73 bytes)
;   0xab21..0xab6a  (73 bytes)
DATA_rle_AB21:
	defb 004h,0f0h,004h,0feh,002h,0e0h,003h,0f0h,00ah,0e0h,004h,0f0h,005h,0e0h,004h,0f0h	; ab21  ................
	defb 004h,0e0h,003h,0f0h,004h,0e0h,006h,0f0h,003h,0e0h,003h,0feh,005h,0e0h,005h,0f0h	; ab31  ................
	defb 003h,0e0h,002h,0b0h,082h,0bah,0a0h,004h,0eah,002h,0bah,081h,0a0h,005h,0eah,002h	; ab41  ................
	defb 0a0h,006h,0eah,004h,0a0h,004h,0eah,003h,0b0h,081h,0bah,004h,0eah,003h,0e0h,082h	; ab51  ................
	defb 0f0h,0e0h,003h,0eah,006h,0a0h,002h,0eah,000h	; ab61  .........

; ----------------------------------------------------------------------
; DATOS rle_AB6A: los dibujos de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AB6A
;   AB6A-AB86); lo leen p00:4CFF, p00:4B3C (28 bytes)
;   0xab6a..0xab86  (28 bytes)
DATA_rle_AB6A:
	defb 088h,020h,002h,000h,010h,000h,040h,000h,002h,00ch,000h,081h,010h,00fh,000h,089h	; ab6a  . ....@.........
	defb 00ch,012h,012h,00ch,000h,000h,008h,014h,008h,003h,000h,000h	; ab7a  ............

; ----------------------------------------------------------------------
; DATOS rle_AB86: los colores de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AB86
;   AB86-AB91); lo leen p00:4D11, p00:4B3C (11 bytes)
;   0xab86..0xab91  (11 bytes)
DATA_rle_AB86:
	defb 081h,070h,007h,050h,008h,000h,008h,050h,018h,060h,000h	; ab86  .p.P...P.`.

; ----------------------------------------------------------------------
; DATOS rle_AB91: los dibujos de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AB91
;   AB91-ABA3); lo leen p00:4CFF, p00:4B3C (18 bytes)
;   0xab91..0xaba3  (18 bytes)
DATA_rle_AB91:
	defb 090h,0c0h,0e0h,070h,03ch,01fh,01bh,00ch,00ch,003h,007h,00eh,03ch,0f8h,0d8h,070h	; ab91  ...p<.......<..p
	defb 030h,000h	; aba1

; ----------------------------------------------------------------------
; DATOS rle_ABA3: los colores de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_ABA3
;   ABA3-ABAC); lo leen p00:4D11, p00:4B3C (9 bytes)
;   0xaba3..0xabac  (9 bytes)
DATA_rle_ABA3:
	defb 003h,0e0h,005h,0f0h,003h,0e0h,005h,0f0h,000h	; aba3  .........

; ----------------------------------------------------------------------
; DATOS rle_ABAC: los dibujos de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_ABAC
;   ABAC-AC7C); lo leen p00:4CFF, p00:4B3C (208 bytes)
;   0xabac..0xac7c  (208 bytes)
DATA_rle_ABAC:
	defb 0a8h,000h,001h,000h,003h,055h,0aeh,09dh,074h,03eh,071h,09bh,050h,07ch,09eh,034h	; abac  .....U..t>q.P|.4
	defb 01ah,006h,000h,01eh,000h,03ch,058h,000h,038h,007h,001h,00eh,001h,016h,014h,018h	; abbc  .....<X.8.......
	defb 03ch,074h,048h,034h,02eh,010h,007h,00ch,003h,003h,000h,0f4h,001h,004h,015h,036h	; abcc  <tH4...........6
	defb 0dch,000h,000h,05bh,06bh,0adh,0b4h,080h,000h,028h,0dch,058h,056h,04fh,018h,007h	; abdc  ...[k....(.XVO..
	defb 01dh,005h,003h,001h,006h,001h,00ch,003h,00ch,068h,090h,0f8h,074h,02dh,012h,005h	; abec  .........h..t-..
	defb 001h,000h,000h,00ah,015h,02eh,0b4h,098h,064h,000h,03ch,078h,080h,0f8h,008h,07ch	; abfc  ........d.<x...|
	defb 020h,006h,098h,0dch,064h,0f8h,020h,05ch,028h,0d8h,074h,02ah,013h,00ch,00fh,001h	; ac0c   ...d. \(.t*....
	defb 007h,01eh,01ch,000h,01eh,024h,098h,060h,0d0h,018h,028h,000h,01ch,024h,01eh,00ah	; ac1c  .....$.`..(..$..
	defb 000h,003h,005h,013h,02fh,01ah,061h,000h,020h,0c0h,000h,0c0h,080h,060h,0d0h,008h	; ac2c  ..../.a. ....`..
	defb 034h,007h,003h,000h,001h,000h,083h,087h,08bh,080h,000h,0d4h,0bbh,06ah,016h,081h	; ac3c  4............j..
	defb 005h,000h,0ach,080h,0aah,0beh,06bh,00ch,019h,006h,01dh,008h,030h,018h,0b0h,08ch	; ac4c  ......k.....0...
	defb 094h,058h,054h,028h,034h,01eh,01ah,048h,030h,008h,038h,008h,030h,02ch,046h,00fh	; ac5c  .XT(4..H0.8.0,F.
	defb 005h,001h,000h,003h,007h,00bh,007h,000h,080h,0c0h,068h,0d6h,03fh,09ah,00bh,000h	; ac6c  ..........h.?...

; ----------------------------------------------------------------------
; DATOS rle_AC7C: los colores de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AC7C
;   AC7C-AC81); lo leen p00:4D11, p00:4B3C (5 bytes)
;   0xac7c..0xac81  (5 bytes)
DATA_rle_AC7C:
	defb 07fh,0d0h,051h,0d0h,000h	; ac7c

; ----------------------------------------------------------------------
; DATOS rle_AC81: los dibujos de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AC81
;   AC81-AD75); lo leen p00:4CFF, p00:4B3C (244 bytes)
;   0xac81..0xad75  (244 bytes)
DATA_rle_AC81:
	defb 081h,03eh,003h,07fh,087h,07eh,03dh,003h,03bh,08fh,00fh,007h,006h,000h,0a1h,038h	; ac81  .>...~=........8
	defb 07dh,0b9h,011h,044h,0eeh,0eeh,001h,0f3h,089h,002h,006h,002h,000h,07ch,080h,084h	; ac91  }..D.........|..
	defb 00eh,064h,0f0h,0f3h,0f7h,067h,006h,00fh,0e6h,0f0h,076h,0b7h,0c3h,0c8h,044h,039h	; aca1  .d...g....v...D9
	defb 004h,07dh,0b7h,038h,000h,0feh,058h,0b6h,0ach,09eh,0dch,07ch,038h,007h,037h,07bh	; acb1  .}.8..X....|8.7{
	defb 07ch,07ch,038h,000h,000h,0dch,0deh,0beh,07eh,0feh,0fch,078h,000h,000h,006h,031h	; acc1  ||8.....~..x...1
	defb 078h,078h,031h,003h,03bh,000h,000h,034h,07ah,030h,087h,0cfh,0cfh,03ch,042h,080h	; acd1  xx1....4z0...<B.
	defb 000h,00eh,09fh,0dfh,0dfh,000h,070h,0e8h,0c0h,01ch,003h,03eh,09ah,07dh,0feh,0b8h	; ace1  ......p....>.}..
	defb 07ch,0beh,05eh,03ch,000h,0afh,06fh,077h,030h,0ceh,0efh,0f6h,060h,0ceh,0c0h,0b9h	; acf1  |.^<..ow0...`...
	defb 07dh,07dh,07ch,038h,000h,01ch,0c6h,003h,0efh,081h,0c6h,003h,000h,08ah,006h,031h	; ad01  }}|8...........1
	defb 078h,078h,031h,003h,003h,07ch,07ch,038h,007h,000h,086h,030h,078h,030h,080h,0c0h	; ad11  xx1..||8...0x0..
	defb 080h,004h,000h,086h,030h,078h,078h,030h,000h,0e0h,003h,0f0h,08bh,0e0h,000h,07ch	; ad21  ....0xx0.......|
	defb 0e6h,0cfh,00fh,004h,000h,003h,003h,001h,004h,000h,084h,00ch,01eh,01eh,00ch,003h	; ad31  ................
	defb 000h,086h,001h,003h,003h,001h,038h,09ch,003h,03eh,081h,01ch,005h,000h,090h,060h	; ad41  ......8..>.....`
	defb 0f0h,0f0h,0e0h,000h,07ch,006h,00fh,0e6h,0f0h,076h,0b7h,0c3h,0c8h,000h,0e0h,003h	; ad51  ....|....v......
	defb 0f0h,085h,0e0h,000h,000h,044h,038h,004h,07ch,084h,038h,000h,000h,039h,004h,07dh	; ad61  .....D8.|.8..9.}
	defb 082h,038h,000h,000h	; ad71

; ----------------------------------------------------------------------
; DATOS rle_AD75: los colores de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AD75
;   AD75-ADDE); lo leen p00:4D11, p00:4B3C (105 bytes)
;   0xad75..0xadde  (105 bytes)
DATA_rle_AD75:
	defb 008h,040h,00ah,050h,003h,040h,081h,070h,003h,050h,007h,040h,002h,050h,086h,040h	; ad75  .@.P.@.p.P.@.P.@
	defb 0f0h,070h,070h,050h,050h,005h,040h,004h,050h,006h,040h,088h,000h,040h,054h,054h	; ad85  .ppPP.@.P.@..@TT
	defb 074h,0f4h,074h,070h,004h,050h,082h,0f0h,070h,00bh,050h,002h,070h,00bh,040h,081h	; ad95  t.tp.P..p.P.p.@.
	defb 070h,00ah,050h,008h,040h,002h,050h,003h,074h,003h,0f0h,003h,050h,081h,054h,004h	; ada5  p.P.@.P.t...P.T.
	defb 040h,004h,050h,002h,070h,002h,0f0h,081h,040h,007h,050h,015h,040h,007h,050h,00ah	; adb5  @.P.p...@.P.@.P.
	defb 040h,082h,000h,040h,008h,050h,00fh,040h,009h,050h,006h,040h,081h,000h,005h,040h	; adc5  @..@.P.@.P.@...@
	defb 004h,050h,008h,040h,081h,050h,00fh,040h,000h	; add5  .P.@.P.@.

; ----------------------------------------------------------------------
; DATOS rle_ADDE: los dibujos de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_ADDE
;   ADDE-AE40); lo leen p00:4CFF, p00:4B3C (98 bytes)
;   0xadde..0xae40  (98 bytes)
DATA_rle_ADDE:
	defb 08ah,08ah,011h,018h,018h,089h,089h,099h,091h,091h,010h,003h,008h,0a9h,010h,091h	; adde  ................
	defb 089h,089h,008h,008h,010h,091h,099h,008h,089h,089h,090h,010h,088h,089h,098h,030h	; adee  ...............0
	defb 020h,018h,00ch,085h,089h,010h,018h,00ch,084h,085h,008h,010h,010h,088h,0c5h,085h	; adfe   ...............
	defb 089h,004h,008h,009h,011h,011h,010h,003h,008h,002h,011h,002h,009h,0a3h,011h,010h	; ae0e  ................
	defb 008h,008h,009h,011h,011h,008h,008h,005h,004h,008h,011h,021h,021h,030h,011h,062h	; ae1e  ...........!!0.b
	defb 0c6h,066h,023h,040h,080h,0c3h,074h,032h,061h,0c0h,0c3h,066h,032h,021h,020h,018h	; ae2e  .f#@..t2a..f2! .
	defb 008h,000h	; ae3e

; ----------------------------------------------------------------------
; DATOS rle_AE40: los colores de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AE40
;   AE40-AE99); lo leen p00:4D11, p00:4B3C (89 bytes)
;   0xae40..0xae99  (89 bytes)
DATA_rle_AE40:
	defb 0b1h,090h,080h,080h,090h,090h,080h,080h,090h,090h,080h,080h,090h,090h,080h,080h	; ae40  ................
	defb 090h,090h,080h,080h,090h,090h,080h,080h,090h,080h,080h,090h,090h,080h,080h,090h	; ae50  ................
	defb 090h,080h,080h,090h,090h,080h,080h,090h,090h,080h,080h,090h,090h,080h,080h,090h	; ae60  ................
	defb 080h,090h,004h,080h,081h,090h,003h,080h,002h,090h,002h,080h,002h,090h,008h,080h	; ae70  ................
	defb 081h,090h,004h,080h,002h,090h,002h,080h,002h,090h,002h,080h,002h,090h,002h,080h	; ae80  ................
	defb 002h,090h,002h,080h,002h,090h,002h,080h,000h	; ae90  .........

; ----------------------------------------------------------------------
; DATOS rle_AE99: los dibujos de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AE99
;   AE99-AEC2); lo leen p00:4CFF, p00:4B3C (41 bytes)
;   0xae99..0xaec2  (41 bytes)
DATA_rle_AE99:
	defb 086h,004h,02ch,02ch,020h,028h,010h,003h,008h,08ch,010h,028h,020h,02ch,02ch,004h	; ae99  ..,, (.....( ,,.
	defb 004h,018h,024h,018h,014h,014h,003h,02ah,088h,024h,05ah,0abh,0abh,04ah,04ah,091h	; aea9  ..$....*.$Z..JJ.
	defb 08ah,004h,000h,084h,001h,002h,000h,004h,000h	; aeb9  .........

; ----------------------------------------------------------------------
; DATOS rle_AEC2: los colores de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AEC2
;   AEC2-AED3); lo leen p00:4D11, p00:4B3C (17 bytes)
;   0xaec2..0xaed3  (17 bytes)
DATA_rle_AEC2:
	defb 002h,0c0h,002h,020h,007h,0c0h,002h,020h,012h,0c0h,081h,060h,007h,0c0h,081h,060h	; aec2  ... ... ...`...`
	defb 000h	; aed2

; ----------------------------------------------------------------------
; DATOS rle_AED3: los dibujos de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AED3
;   AED3-AEDD); lo leen p00:4CFF, p00:4B3C (10 bytes)
;   0xaed3..0xaedd  (10 bytes)
DATA_rle_AED3:
	defb 088h,00ch,01eh,01eh,06ch,0f6h,0e0h,06fh,006h,000h	; aed3  ....l..o..

; ----------------------------------------------------------------------
; DATOS rle_AEDD: los colores de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AEDD
;   AEDD-AEE7); lo leen p00:4D11, p00:4B3C (10 bytes)
;   0xaedd..0xaee7  (10 bytes)
DATA_rle_AEDD:
	defb 088h,090h,080h,080h,060h,080h,086h,060h,060h,000h	; aedd  ....`..``.

; ----------------------------------------------------------------------
; DATOS rle_AEE7: los dibujos de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AEE7
;   AEE7-AFD0); lo leen p00:4CFF, p00:4B3C (233 bytes)
;   0xaee7..0xafd0  (233 bytes)
DATA_rle_AEE7:
	defb 083h,000h,040h,05eh,004h,03fh,086h,01fh,000h,040h,054h,092h,0e1h,003h,0ffh,08ah	; aee7  ..@^.?...@T.....
	defb 0c2h,0ech,0f0h,0e2h,0e4h,0f8h,0e0h,0d0h,02fh,05fh,003h,01fh,0e6h,00eh,051h,020h	; aef7  ......../_....Q
	defb 0fch,0fch,0feh,0feh,03eh,00ch,082h,004h,000h,020h,050h,00eh,01fh,09fh,07fh,01dh	; af07  ....>.... P.....
	defb 002h,001h,00dh,03eh,0feh,0feh,0fch,0fch,01fh,09fh,06fh,00fh,00fh,01fh,07fh,0fch	; af17  ...>......o.....
	defb 04fh,01fh,0bfh,0bfh,0fch,0fah,0f9h,0e0h,0eah,0c5h,0d8h,0e6h,0e0h,0f8h,0feh,03fh	; af27  O..............?
	defb 0c0h,0fch,0ffh,07fh,01fh,02fh,0cfh,01fh,011h,027h,01fh,07fh,0fdh,0fbh,0f3h,0e7h	; af37  ...../...'......
	defb 08ch,004h,004h,08ch,0ffh,09fh,00fh,003h,060h,09eh,03fh,07fh,0c3h,008h,010h,010h	; af47  ........`.?.....
	defb 047h,027h,073h,04fh,087h,003h,003h,002h,084h,0fch,0c7h,083h,005h,00ch,09ch,0fah	; af57  G'sO............
	defb 03fh,09eh,0e3h,003h,0c1h,0bdh,0e3h,03fh,061h,007h,0c0h,0c0h,0e1h,0b3h,08fh,03fh	; af67  ?......?a......?
	defb 010h,018h,099h,07bh,03eh,076h,059h,098h,07fh,07fh,0ffh,0efh,093h,023h,085h,040h	; af77  ...{>vY......#.@
	defb 001h,073h,0ffh,0dfh,0f6h,07ah,03dh,033h,03dh,038h,072h,06eh,07fh,07fh,031h,040h	; af87  .s...z=3=8rn..1@
	defb 0c6h,0e8h,0f0h,07eh,0f7h,08fh,03eh,09ch,06ch,03ch,0bch,0deh,07eh,0fch,0f2h,0ech	; af97  ...~..>.l<..~...
	defb 01ch,03eh,07eh,003h,07fh,08dh,03fh,01fh,0b8h,078h,0f8h,0f8h,0fch,0feh,0e1h,0feh	; afa7  .>~...?..x......
	defb 0fch,0f0h,0e0h,003h,0c0h,086h,0c8h,0b0h,01eh,01eh,03fh,03fh,003h,07fh,089h,03ch	; afb7  ..........??...<
	defb 00fh,0feh,0f8h,0fch,0f2h,0f2h,0f8h,0f8h,000h	; afc7  .........

; ----------------------------------------------------------------------
; DATOS rle_AFD0: los colores de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_AFD0
;   AFD0-B019); lo leen p00:4D11, p00:4B3C (73 bytes)
;   0xafd0..0xb019  (73 bytes)
DATA_rle_AFD0:
	defb 03fh,0c0h,005h,0c2h,00bh,0c0h,004h,0c2h,009h,0c0h,008h,0c2h,008h,0c0h,007h,0c2h	; afd0  ?...............
	defb 002h,0c3h,005h,0c2h,002h,0c3h,006h,0c2h,002h,0c3h,003h,0c2h,002h,0c3h,081h,032h	; afe0  ...............2
	defb 008h,0c2h,004h,032h,004h,0c2h,009h,0c0h,004h,020h,002h,030h,004h,020h,005h,0c0h	; aff0  ...2..... .0. ..
	defb 005h,020h,002h,030h,005h,020h,002h,0c0h,00eh,020h,081h,0c2h,004h,020h,005h,0c0h	; b000  . .0. ... ... ..
	defb 081h,020h,007h,0c0h,081h,0c2h,007h,0c0h,000h	; b010  . .......

; ----------------------------------------------------------------------
; DATOS rle_B019: los dibujos de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B019
;   B019-B038); lo leen p00:4CFF, p00:4B3C (31 bytes)
;   0xb019..0xb038  (31 bytes)
DATA_rle_B019:
	defb 005h,000h,087h,007h,00fh,08fh,03bh,003h,03dh,07eh,003h,07fh,091h,03eh,0c0h,0c0h	; b019  ........=~...>..
	defb 0b0h,070h,0f0h,0e6h,00fh,006h,0c8h,0c3h,037h,036h,000h,006h,00fh,006h,000h	; b029  .p......76.....

; ----------------------------------------------------------------------
; DATOS rle_B038: los colores de una entrada de la lista de graficos de
;   16:64DA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B038
;   B038-B045); lo leen p00:4D11, p00:4B3C (13 bytes)
;   0xb038..0xb045  (13 bytes)
DATA_rle_B038:
	defb 008h,050h,008h,040h,004h,050h,004h,040h,004h,050h,004h,040h,000h	; b038  .P.@.P.@.P.@.

; ----------------------------------------------------------------------
; DATOS rle_B045: los dibujos de una entrada de la lista de graficos de
;   16:6511, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B045
;   B045-B103); lo leen p00:4CFF, p00:4B3C (190 bytes)
;   0xb045..0xb103  (190 bytes)
DATA_rle_B045:
	defb 0ffh,02fh,067h,070h,026h,04fh,06fh,010h,009h,06fh,03bh,07dh,07eh,07eh,083h,039h	; b045  ./gp&Oo..o.}~~.9
	defb 001h,0cfh,0dfh,09eh,06eh,02bh,033h,021h,08eh,038h,050h,090h,020h,060h,070h,030h	; b055  ....n+3!.8P. `p0
	defb 0b0h,00fh,0ech,05eh,03eh,03eh,01ch,002h,017h,030h,086h,08ch,048h,048h,027h,043h	; b065  ...^>>...0..HH'C
	defb 0bbh,0c5h,03bh,011h,012h,012h,0e5h,0c2h,0d9h,0d8h,0b8h,0b8h,0b4h,0b4h,0ach,0deh	; b075  ................
	defb 0deh,026h,04fh,06fh,010h,009h,07dh,0ebh,03dh,07eh,07eh,083h,039h,001h,031h,063h	; b085  .&Oo..}.=~~.9.1c
	defb 0f7h,06eh,02bh,033h,021h,08eh,08ch,0c6h,0edh,020h,060h,070h,030h,0b0h,0a0h,0c0h	; b095  .n+3!.... `p0...
	defb 0b0h,07fh,03ah,03dh,039h,03bh,01bh,032h,074h,008h,008h,0f7h,077h,09ch,01bh,088h	; b0a5  ..:=9..2t...w...
	defb 033h,012h,012h,0edh,0eeh,039h,0d8h,011h,0cch,0b8h,0b8h,0bch,0bch,0dch,0d8h,04ch	; b0b5  3....9.........L
	defb 0a6h,02eh,03ah,03ah,03bh,073h,035h,02dh,01dh,01dh,018h,010h,06fh,0a6h,065h,00ch	; b0c5  ..::.s5-....o.e.
	defb 004h,004h,0e9h,0edh,0edh,0cdh,0ddh,0dch,03eh,07ch,0e3h,0e7h,00ch,004h,004h,0f7h	; b0d5  ........>|......
	defb 0e7h,003h,01eh,00eh,004h,004h,001h,003h,000h,08dh,0f7h,067h,003h,0a1h,0f8h,0feh	; b0e5  ...........g....
	defb 03ch,000h,038h,003h,01eh,00ch,003h,003h,000h,081h,001h,007h,000h,000h	; b0f5  <.8...........

; ----------------------------------------------------------------------
; DATOS rle_B103: los colores de una entrada de la lista de graficos de
;   16:6511, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B103
;   B103-B1B0); lo leen p00:4D11, p00:4B3C (173 bytes)
;   0xb103..0xb1b0  (173 bytes)
DATA_rle_B103:
	defb 003h,040h,003h,050h,002h,065h,081h,040h,004h,050h,083h,065h,076h,0c6h,003h,040h	; b103  .@.P.e.@.P.ev..@
	defb 08eh,050h,065h,062h,062h,0c6h,040h,050h,050h,0c0h,030h,030h,020h,020h,065h,005h	; b113  .Pebb.@PP.00  e.
	defb 050h,002h,030h,08ah,0f6h,063h,063h,062h,062h,0c6h,0c6h,063h,0c6h,063h,003h,062h	; b123  P.0..ccbb..c.c.b
	defb 002h,0c6h,089h,063h,0c0h,0c0h,0f0h,0f0h,030h,030h,020h,0c0h,003h,050h,002h,065h	; b133  ...c....00 ..P.e
	defb 005h,050h,091h,065h,076h,0c6h,0c0h,0e6h,0e6h,050h,065h,062h,062h,0c6h,0c0h,0e6h	; b143  .P.ev....Pebb...
	defb 0e6h,0c0h,030h,030h,003h,020h,002h,0c0h,002h,050h,0a1h,0e0h,020h,020h,0c0h,030h	; b153  ..00. ...P..  .0
	defb 020h,063h,062h,0c6h,0c6h,063h,063h,062h,062h,063h,062h,0c6h,0c6h,063h,063h,062h	; b163   cb..ccbbcb..ccb
	defb 062h,0e0h,0e0h,030h,020h,020h,0c0h,030h,020h,030h,030h,020h,003h,0c0h,09bh,0f0h	; b173  b..0  .0 00 ....
	defb 030h,063h,062h,0c6h,0c6h,0f6h,062h,063h,062h,020h,0c0h,0e0h,020h,030h,0e0h,020h	; b183  0cb...bcb .. 0.
	defb 0c0h,0c6h,0e6h,062h,063h,062h,0c6h,0c0h,0c0h,020h,003h,0c0h,004h,060h,002h,0c6h	; b193  ...bcb... ...`..
	defb 089h,0c0h,060h,060h,080h,090h,090h,0c0h,060h,080h,00dh,090h,000h	; b1a3  ..``....`....

; ----------------------------------------------------------------------
; DATOS rle_B1B0: los dibujos de una entrada de la lista de graficos de
;   16:6511, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B1B0
;   B1B0-B1F2); lo leen p00:4CFF, p00:4B3C (66 bytes)
;   0xb1b0..0xb1f2  (66 bytes)
DATA_rle_B1B0:
	defb 0c0h,03bh,002h,038h,07ch,07ch,07bh,037h,007h,007h,078h,0fch,0feh,07eh,0beh,0deh	; b1b0  ...8||{7..x..~..
	defb 0dch,003h,03ch,05eh,0beh,07ch,0b8h,0feh,07dh,060h,0f6h,0efh,0ceh,030h,077h,06fh	; b1c0  ..<^.|..}`...0wo
	defb 0afh,067h,0f7h,0f3h,0f0h,064h,00eh,084h,080h,0c8h,0c3h,0b7h,076h,0f8h,0feh,0ffh	; b1d0  .g...d......v...
	defb 076h,03bh,003h,031h,078h,078h,071h,006h,063h,0cfh,0cfh,087h,030h,07ah,034h,0c0h	; b1e0  v..1xxq.c...0z4.
	defb 0e8h,000h	; b1f0

; ----------------------------------------------------------------------
; DATOS rle_B1F2: los colores de una entrada de la lista de graficos de
;   16:6511, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B1F2
;   B1F2-B21E); lo leen p00:4D11, p00:4B3C (44 bytes)
;   0xb1f2..0xb21e  (44 bytes)
DATA_rle_B1F2:
	defb 002h,040h,083h,050h,070h,0f0h,003h,050h,081h,040h,007h,050h,083h,040h,0f0h,0f0h	; b1f2  .@.Pp..P.@.P.@..
	defb 003h,074h,002h,050h,004h,040h,081h,054h,005h,050h,002h,070h,082h,0f0h,040h,005h	; b202  .t.P.@.T.P.p..@.
	defb 050h,00bh,040h,085h,070h,040h,050h,050h,070h,005h,040h,000h	; b212  P.@.p@PPp.@.

; ----------------------------------------------------------------------
; DATOS rle_B21E: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B21E
;   B21E-B277); lo leen p00:4CFF, p00:4B3C (89 bytes)
;   0xb21e..0xb277  (89 bytes)
DATA_rle_B21E:
	defb 0a1h,03ch,066h,0dbh,0adh,0b5h,0dbh,066h,03ch,066h,0b0h,0d6h,060h,006h,06bh,00dh	; b21e  .<f....f<f..`.k.
	defb 066h,000h,07eh,05ah,066h,05ah,07eh,000h,07eh,073h,01dh,061h,07fh,098h,015h,054h	; b22e  f.~ZfZ~.~s.a...T
	defb 07dh,000h,003h,0afh,081h,000h,003h,0f5h,09ch,0abh,055h,02ah,02ah,054h,054h,0aah	; b23e  }.........U**TT.
	defb 0d5h,000h,055h,07eh,05fh,05fh,055h,07dh,000h,000h,0dbh,05ah,0c2h,0d8h,04fh,060h	; b24e  ..U~__U}...Z..O`
	defb 0efh,05ah,0ffh,001h,05ah,004h,07eh,090h,0ffh,0fah,0beh,0beh,0feh,09eh,0e0h,00fh	; b25e  .Z..Z.~.........
	defb 006h,0f9h,09fh,00ch,0edh,0c0h,09fh,0f1h,000h	; b26e  .........

; ----------------------------------------------------------------------
; DATOS rle_B277: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B277
;   B277-B2C9); lo leen p00:4D11, p00:4B3C (82 bytes)
;   0xb277..0xb2c9  (82 bytes)
DATA_rle_B277:
	defb 082h,0f0h,030h,003h,020h,003h,0c0h,08ah,0f0h,030h,020h,0c0h,030h,020h,0c0h,0c0h	; b277  ..0. ....0 .0 ..
	defb 030h,030h,003h,020h,005h,0c0h,085h,030h,0b0h,0c3h,020h,020h,003h,0c0h,081h,030h	; b287  00. ...0..  ...0
	defb 003h,0c0h,08ah,030h,0c0h,0c0h,020h,020h,030h,030h,020h,020h,0c0h,003h,030h,084h	; b297  ...0..  00  ..0.
	defb 020h,0c0h,0c0h,020h,003h,030h,084h,020h,0b0h,030h,020h,006h,0c0h,08ah,020h,030h	; b2a7   .. .0. .0 ... 0
	defb 0f0h,030h,030h,020h,0c0h,0b0h,030h,020h,004h,0c0h,086h,030h,0b2h,0c2h,020h,020h	; b2b7  .00 ..0 ...0..
	defb 0c0h,000h	; b2c7

; ----------------------------------------------------------------------
; DATOS rle_B2C9: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B2C9
;   B2C9-B2D5); lo leen p00:4CFF, p00:4B3C (12 bytes)
;   0xb2c9..0xb2d5  (12 bytes)
DATA_rle_B2C9:
	defb 003h,02ah,081h,00ah,008h,000h,084h,028h,0bah,0aah,0aah,000h	; b2c9  .*.....(....

; ----------------------------------------------------------------------
; DATOS rle_B2D5: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B2D5
;   B2D5-B2DC); lo leen p00:4D11, p00:4B3C (7 bytes)
;   0xb2d5..0xb2dc  (7 bytes)
DATA_rle_B2D5:
	defb 002h,020h,00ch,030h,002h,020h,000h	; b2d5

; ----------------------------------------------------------------------
; DATOS rle_B2DC: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B2DC
;   B2DC-B2FB); lo leen p00:4CFF, p00:4B3C (31 bytes)
;   0xb2dc..0xb2fb  (31 bytes)
DATA_rle_B2DC:
	defb 085h,000h,00ah,000h,000h,0ffh,004h,000h,084h,00ah,000h,000h,01fh,004h,000h,084h	; b2dc  ................
	defb 00ah,000h,000h,0f1h,004h,000h,087h,040h,008h,000h,0ffh,000h,052h,000h,000h	; b2ec  .......@....R..

; ----------------------------------------------------------------------
; DATOS rle_B2FB: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B2FB
;   B2FB-B30E); lo leen p00:4D11, p00:4B3C (19 bytes)
;   0xb2fb..0xb30e  (19 bytes)
DATA_rle_B2FB:
	defb 004h,050h,081h,044h,007h,050h,081h,04ah,007h,050h,081h,04ah,007h,050h,081h,044h	; b2fb  .P.D.P.J.P.J.P.D
	defb 003h,050h,000h	; b30b

; ----------------------------------------------------------------------
; DATOS rle_B30E: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B30E
;   B30E-B320); lo leen p00:4CFF, p00:4B3C (18 bytes)
;   0xb30e..0xb320  (18 bytes)
DATA_rle_B30E:
	defb 090h,000h,042h,0d6h,0a9h,046h,029h,049h,014h,022h,08ah,050h,095h,04ah,09dh,042h	; b30e  ..B..F)I.".P.J.B
	defb 000h,000h	; b31e

; ----------------------------------------------------------------------
; DATOS rle_B320: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B320
;   B320-B332); lo leen p00:4D11, p00:4B3C (18 bytes)
;   0xb320..0xb332  (18 bytes)
DATA_rle_B320:
	defb 08bh,020h,062h,0c0h,0c0h,020h,020h,0c0h,0c0h,020h,0c0h,020h,003h,0c0h,082h,062h	; b320  . b..  .. . ...b
	defb 000h,000h	; b330

; ----------------------------------------------------------------------
; DATOS rle_B332: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B332
;   B332-B3A2); lo leen p00:4CFF, p00:4B3C (112 bytes)
;   0xb332..0xb3a2  (112 bytes)
DATA_rle_B332:
	defb 081h,000h,003h,07eh,085h,07fh,078h,07bh,07bh,000h,003h,0ffh,081h,000h,003h,0ffh	; b332  ...~..x{{.......
	defb 081h,000h,003h,0ffh,081h,000h,003h,0feh,0a4h,000h,056h,056h,01eh,040h,07ah,07ah	; b342  ..........VV.@zz
	defb 000h,000h,0eeh,0e0h,00eh,0aah,0ffh,0dfh,059h,006h,0e6h,006h,0e6h,0aeh,0feh,0deh	; b352  ........Y.......
	defb 0d6h,0dah,09ah,0c0h,01ah,0d8h,09ah,09ah,0c3h,000h,042h,0e7h,018h,004h,0bdh,084h	; b362  ..........B.....
	defb 000h,042h,0e7h,018h,004h,0ffh,081h,02fh,003h,0adh,0a4h,0afh,02dh,0adh,02dh,0ceh	; b372  .B...../....-.-.
	defb 000h,0eah,0e2h,0f0h,0fbh,07bh,03bh,03bh,07bh,0fbh,0f0h,0e2h,0eah,000h,0ceh,000h	; b382  .....{..{.......
	defb 01fh,07fh,090h,0e7h,0efh,00fh,0cfh,0cfh,00fh,0efh,0e7h,090h,07fh,01fh,000h,000h	; b392  ................

; ----------------------------------------------------------------------
; DATOS rle_B3A2: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B3A2
;   B3A2-B40F); lo leen p00:4D11, p00:4B3C (109 bytes)
;   0xb3a2..0xb40f  (109 bytes)
DATA_rle_B3A2:
	defb 002h,0c0h,085h,020h,030h,0f0h,030h,020h,003h,0c0h,081h,030h,003h,0c0h,081h,030h	; b3a2  ... 0.0 ...0...0
	defb 003h,0c0h,081h,030h,003h,0c0h,088h,030h,0c0h,030h,030h,0c0h,020h,020h,0c0h,004h	; b3b2  ...0...0.00.  ..
	defb 030h,0a8h,020h,0c0h,020h,020h,030h,0c0h,030h,030h,020h,0c0h,020h,020h,030h,0c0h	; b3c2  0. .  0.00 .  0.
	defb 020h,0c0h,0c0h,020h,030h,030h,020h,0c0h,020h,062h,0c0h,030h,0c0h,020h,030h,0b0h	; b3d2   .. 00 . b.0. 0.
	defb 0b0h,062h,0c0h,030h,0c0h,020h,030h,020h,020h,030h,005h,020h,084h,0c0h,030h,030h	; b3e2  .b.0. 0  0. ..00
	defb 020h,003h,0c0h,084h,020h,0b0h,0b0h,020h,003h,0c0h,081h,020h,003h,030h,081h,020h	; b3f2   ... .. ... .0.
	defb 003h,0c0h,002h,020h,002h,030h,002h,020h,003h,0c0h,002h,020h,000h	; b402  ... .0. ... .

; ----------------------------------------------------------------------
; DATOS rle_B40F: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B40F
;   B40F-B43E); lo leen p00:4CFF, p00:4B3C (47 bytes)
;   0xb40f..0xb43e  (47 bytes)
DATA_rle_B40F:
	defb 007h,02ah,083h,00ah,028h,0bah,005h,0aah,085h,0bah,0aah,0aeh,0aah,06ah,003h,02ah	; b40f  .*..(........j.*
	defb 081h,03ah,003h,0aah,081h,0bah,005h,0aah,087h,0bah,0aeh,0aah,0aah,0aeh,0aah,06ah	; b41f  .:.............j
	defb 005h,0aah,081h,0bah,003h,0aah,087h,0bah,0aeh,0aah,0aah,0aeh,0aah,0eah,000h	; b42f  ...............

; ----------------------------------------------------------------------
; DATOS rle_B43E: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B43E
;   B43E-B457); lo leen p00:4D11, p00:4B3C (25 bytes)
;   0xb43e..0xb457  (25 bytes)
DATA_rle_B43E:
	defb 004h,0c0h,002h,020h,004h,030h,002h,020h,004h,0c0h,004h,020h,008h,0c0h,004h,020h	; b43e  ... .0. ... ...
	defb 004h,0c0h,008h,020h,008h,0c0h,004h,020h,000h	; b44e  ... ... .

; ----------------------------------------------------------------------
; DATOS rle_B457: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B457
;   B457-B493); lo leen p00:4CFF, p00:4B3C (60 bytes)
;   0xb457..0xb493  (60 bytes)
DATA_rle_B457:
	defb 003h,0afh,08eh,0a3h,0bbh,098h,0efh,0efh,0b3h,0dfh,0efh,0f7h,0fbh,0fch,000h,055h	; b457  ...............U
	defb 0b3h,006h,0bfh,085h,0a0h,080h,080h,05dh,080h,003h,0ffh,09bh,07fh,0bfh,09fh,0afh	; b467  .......]........
	defb 0b7h,0bbh,0bdh,0beh,0bfh,0ffh,0ffh,080h,05dh,080h,080h,07fh,080h,001h,03dh,055h	; b477  ........].....=U
	defb 055h,007h,03fh,00ch,03fh,000h,06ah,005h,0eah,081h,06ah,000h	; b487  U.?.?.j...j.

; ----------------------------------------------------------------------
; DATOS rle_B493: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B493
;   B493-B4C9); lo leen p00:4D11, p00:4B3C (54 bytes)
;   0xb493..0xb4c9  (54 bytes)
DATA_rle_B493:
	defb 007h,020h,081h,030h,004h,020h,085h,030h,0c0h,020h,020h,030h,007h,020h,082h,0c3h	; b493  . .0. .0.  0. ..
	defb 0c2h,003h,0c0h,003h,020h,088h,0c0h,020h,0c0h,0c0h,030h,0c0h,020h,030h,004h,0c0h	; b4a3  .... .. ..0. 0..
	defb 094h,0c2h,0c3h,0fch,0c3h,080h,090h,090h,0a0h,0c0h,020h,030h,0f0h,0c0h,0c0h,020h	; b4b3  .......... 0...
	defb 030h,0f0h,020h,020h,0c0h,000h	; b4c3

; ----------------------------------------------------------------------
; DATOS rle_B4C9: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B4C9
;   B4C9-B54C); lo leen p00:4CFF, p00:4B3C (131 bytes)
;   0xb4c9..0xb54c  (131 bytes)
DATA_rle_B4C9:
	defb 0ffh,0bah,09dh,021h,07fh,07fh,039h,01ch,007h,05dh,0b9h,084h,0feh,0feh,09ch,03bh	; b4c9  ...!..9..]......
	defb 0eeh,0bah,09dh,021h,07fh,07fh,039h,0dch,0e7h,05dh,0b9h,084h,0feh,0feh,09ch,039h	; b4d9  ...!..9..].....9
	defb 0e6h,0bah,09dh,021h,07fh,07fh,039h,0dch,0e7h,05dh,0b9h,084h,0feh,0feh,09ch,038h	; b4e9  ...!..9..].....8
	defb 0e0h,0fah,0fdh,0feh,07fh,067h,031h,01dh,007h,05fh,0b9h,07bh,0f2h,0f6h,0fch,0fbh	; b4f9  .....g1.._.{....
	defb 0eeh,0fah,0fdh,0feh,07fh,067h,031h,09dh,0e7h,05fh,0b9h,07bh,0f2h,0f6h,0fch,0fbh	; b509  .....g1.._.{....
	defb 0eeh,0fah,0fdh,0feh,07fh,067h,031h,09dh,0e7h,05fh,0b9h,07bh,0f2h,0f6h,0fch,0f8h	; b519  .....g1.._.{....
	defb 0e0h,0bah,09dh,0deh,04fh,07fh,03fh,01fh,007h,05fh,0bfh,07fh,0feh,0feh,08ch,039h	; b529  ....O.?.._.....9
	defb 0e7h,0bah,09dh,0deh,04fh,07fh,03fh,0dfh,077h,05fh,0bfh,07fh,0feh,0feh,08ch,039h	; b539  ....O.?.w_.....9
	defb 081h,0e7h,000h	; b549

; ----------------------------------------------------------------------
; DATOS rle_B54C: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B54C
;   B54C-B5C4); lo leen p00:4D11, p00:4B3C (120 bytes)
;   0xb54c..0xb5c4  (120 bytes)
DATA_rle_B54C:
	defb 0b8h,020h,0c0h,0f2h,020h,0c0h,030h,0b0h,0f0h,0c0h,0c0h,0fch,0c0h,0c0h,020h,030h	; b54c  . .. .0....... 0
	defb 0b0h,020h,0c0h,0f2h,020h,0c0h,030h,0b0h,0f0h,0c0h,0c0h,0fch,0c0h,0c0h,020h,030h	; b55c  . .. .0....... 0
	defb 0b0h,020h,0c0h,0f2h,020h,0c0h,030h,0b0h,0f0h,0c0h,0c0h,0fch,0c0h,0c0h,020h,030h	; b56c  . .. .0....... 0
	defb 0b0h,020h,0cbh,020h,020h,0c0h,020h,0b0h,0f0h,005h,0c0h,08bh,020h,030h,0b0h,020h	; b57c  . .  . ..... 0.
	defb 0cbh,020h,020h,0c0h,020h,0b0h,0f0h,005h,0c0h,08bh,020h,030h,0b0h,020h,0cbh,020h	; b58c  .  . ..... 0. .
	defb 020h,0c0h,020h,0b0h,0f0h,005h,0c0h,08bh,020h,030h,0b0h,020h,0c0h,020h,020h,0c0h	; b59c   . ..... 0. .  .
	defb 030h,0b0h,0f0h,005h,0c0h,08bh,020h,030h,0b0h,020h,0c0h,020h,020h,0c0h,030h,0b0h	; b5ac  0..... 0. .  .0.
	defb 0f0h,005h,0c0h,083h,020h,030h,0b0h,000h	; b5bc  .... 0..

; ----------------------------------------------------------------------
; DATOS rle_B5C4: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B5C4
;   B5C4-B7CA); lo leen p00:4CFF, p00:4B3C (518 bytes)
;   0xb5c4..0xb7ca  (518 bytes)
DATA_rle_B5C4:
	defb 0ffh,0bah,09dh,0deh,04fh,07fh,03fh,0dfh,077h,05fh,0bfh,07fh,0feh,0feh,08ch,038h	; b5c4  ....O.?.w_.....8
	defb 0e0h,0bah,09dh,0deh,07fh,07fh,039h,01ch,007h,05dh,0b9h,07bh,0feh,0feh,09ch,03bh	; b5d4  ......9..].{....
	defb 0e7h,0bah,09dh,0deh,07fh,07fh,039h,09ch,077h,05dh,0b9h,07bh,0feh,0feh,09ch,03bh	; b5e4  ......9.w].{....
	defb 0e7h,0bah,09dh,0deh,07fh,07fh,039h,09ch,077h,05dh,0b9h,07bh,0feh,0feh,09ch,038h	; b5f4  ......9.w].{...8
	defb 0e0h,0fah,0fdh,0feh,07fh,067h,031h,01dh,007h,05fh,0b9h,07bh,0f2h,0f6h,0fch,0fbh	; b604  .....g1.._.{....
	defb 0eeh,0fah,0fdh,0feh,07fh,067h,031h,09dh,0e7h,05fh,0b9h,07bh,0f2h,0f6h,0fch,0fbh	; b614  .....g1.._.{....
	defb 0eeh,0fah,0fdh,0feh,07fh,067h,031h,09dh,0e7h,05fh,0b9h,07bh,0f2h,0f6h,0fch,0f8h	; b624  .....g1.._.{....
	defb 0e0h,0bah,09dh,0deh,04fh,07fh,03fh,01fh,007h,05fh,0bfh,07fh,0feh,0feh,08ch,039h	; b634  ....O.?.._.....9
	defb 0ffh,0e7h,0bah,09dh,0deh,04fh,07fh,03fh,0dfh,077h,05fh,0bfh,07fh,0feh,0feh,08ch	; b644  .....O.?.w_.....
	defb 039h,0e7h,0bah,09dh,0deh,04fh,07fh,03fh,0dfh,077h,05fh,0bfh,07fh,0feh,0feh,08ch	; b654  9....O.?.w_.....
	defb 038h,0e0h,007h,01ch,039h,07fh,07fh,0deh,09dh,0bah,0eeh,039h,09ch,0feh,0feh,07bh	; b664  8...9......9...{
	defb 0b9h,05dh,0e7h,0dch,039h,07fh,07fh,0deh,09dh,0bah,0e6h,039h,09ch,0feh,0feh,07bh	; b674  .]..9......9...{
	defb 0b9h,05dh,0e7h,0dch,039h,07fh,07fh,0deh,09dh,0bah,0e0h,038h,09ch,0feh,0feh,07bh	; b684  .]..9......8...{
	defb 0b9h,05dh,007h,01fh,03fh,067h,04fh,0deh,09dh,0fah,0eeh,0bbh,08ch,0e6h,0feh,07fh	; b694  .]..?gO.........
	defb 0bfh,05fh,0e7h,09fh,03fh,067h,04fh,0deh,09dh,0fah,0eeh,0bbh,08ch,0e6h,0feh,07fh	; b6a4  ._..?gO.........
	defb 0bfh,05fh,0e7h,09fh,03fh,067h,04fh,0deh,09dh,0fah,0e0h,0b8h,08ch,0e6h,0feh,07fh	; b6b4  ._..?gO.........
	defb 0ffh,0bfh,05fh,007h,01ch,031h,067h,07fh,0feh,0fdh,0fah,0e7h,0f9h,0fch,0feh,0f2h	; b6c4  .._..1g.........
	defb 07bh,0b9h,05dh,067h,0dch,031h,067h,07fh,0feh,0fdh,0fah,0e7h,0f9h,0fch,0feh,0f2h	; b6d4  {.]g.1g.........
	defb 07bh,0b9h,05dh,077h,0dch,031h,067h,07fh,0feh,0fdh,0fah,0e0h,0f8h,0fch,0feh,0f2h	; b6e4  {.]w.1g.........
	defb 07bh,0b9h,05dh,007h,01ch,039h,07fh,07fh,0deh,09dh,0bah,0e7h,03bh,09ch,0feh,0feh	; b6f4  {.]..9..........
	defb 07bh,0b9h,05dh,077h,09ch,039h,07fh,07fh,0deh,09dh,0bah,0e7h,03bh,09ch,0feh,0feh	; b704  {.]w.9..........
	defb 07bh,0b9h,05dh,077h,09ch,039h,07fh,07fh,0deh,09dh,0bah,0e0h,038h,09ch,0feh,0feh	; b714  {.]w.9......8...
	defb 07bh,0b9h,05dh,007h,01fh,03fh,067h,04fh,0deh,09dh,0fah,0eeh,0bbh,08ch,0e6h,0feh	; b724  {.]..?gO........
	defb 07fh,0bfh,05fh,0e7h,09fh,03fh,067h,04fh,0deh,09dh,0fah,0eeh,0bbh,08ch,0e6h,0feh	; b734  .._..?gO........
	defb 0ffh,07fh,0bfh,05fh,0e7h,09fh,03fh,067h,04fh,0deh,09dh,0fah,0e0h,0b8h,08ch,0e6h	; b744  ..._..?gO.......
	defb 0feh,07fh,0bfh,05fh,007h,01ch,031h,067h,07fh,0feh,0fdh,0fah,0e7h,0f9h,0fch,0feh	; b754  ..._..1g........
	defb 0f2h,07bh,0b9h,05dh,067h,0dch,031h,067h,07fh,0feh,0fdh,0fah,0e7h,0f9h,0fch,0feh	; b764  .{.]g.1g........
	defb 0f2h,07bh,0b9h,05dh,077h,0dch,031h,067h,07fh,0feh,0fdh,0fah,0e0h,0f8h,0fch,0feh	; b774  .{.]w.1g........
	defb 0f2h,07bh,0b9h,05dh,025h,020h,03fh,067h,07fh,000h,0ddh,0eeh,054h,004h,0fch,0e6h	; b784  .{.]% ?g....T...
	defb 0feh,000h,0ddh,0eeh,077h,0bbh,000h,07fh,067h,03fh,020h,02ah,077h,0bbh,000h,0feh	; b794  ....w...g? *w...
	defb 0e6h,0fch,004h,0a4h,02ah,020h,03fh,067h,07fh,000h,0bbh,0eeh,0a4h,004h,0fch,0e6h	; b7a4  ....* ?g........
	defb 0feh,000h,0bbh,0eeh,0ddh,077h,000h,07fh,067h,03fh,020h,025h,0ddh,077h,000h,0feh	; b7b4  .....w..g? %.w..
	defb 084h,0e6h,0fch,004h,054h,000h	; b7c4

; ----------------------------------------------------------------------
; DATOS rle_B7CA: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B7CA
;   B7CA-B8D1); lo leen p00:4D11, p00:4B3C (263 bytes)
;   0xb7ca..0xb8d1  (263 bytes)
DATA_rle_B7CA:
	defb 088h,020h,0c0h,020h,020h,0c0h,030h,0b0h,0f0h,005h,0c0h,08bh,020h,030h,0b0h,020h	; b7ca  . .  .0..... 0.
	defb 0c0h,020h,020h,0c0h,030h,0b0h,0f0h,005h,0c0h,08bh,020h,030h,0b0h,020h,0c0h,020h	; b7da  .  .0..... 0. .
	defb 020h,0c0h,030h,0b0h,0f0h,005h,0c0h,08bh,020h,030h,0b0h,020h,0c0h,020h,020h,0c0h	; b7ea   .0..... 0. .  .
	defb 030h,0b0h,0f0h,005h,0c0h,08bh,020h,030h,0b0h,020h,0c0h,020h,020h,0c0h,020h,0b0h	; b7fa  0..... 0. .  . .
	defb 0f0h,005h,0c0h,08bh,020h,030h,0b0h,020h,0c0h,020h,020h,0c0h,020h,0b0h,0f0h,005h	; b80a  .... 0. .  . ...
	defb 0c0h,08bh,020h,030h,0b0h,020h,0c0h,020h,020h,0c0h,020h,0b0h,0f0h,005h,0c0h,08dh	; b81a  .. 0. .  . .....
	defb 020h,030h,0b0h,020h,0c0h,020h,020h,0c0h,030h,0b0h,0f0h,0c0h,0c3h,003h,0c0h,08dh	; b82a   0. .  .0.......
	defb 020h,030h,0b0h,020h,0c0h,020h,020h,0c0h,030h,0b0h,0f0h,0c0h,0c3h,003h,0c0h,08dh	; b83a   0. .  .0.......
	defb 020h,030h,0b0h,020h,0c0h,020h,020h,0c0h,030h,0b0h,0f0h,0c0h,0c3h,003h,0c0h,083h	; b84a   0. .  .0.......
	defb 020h,030h,0b0h,066h,0c0h,081h,0c3h,00fh,0c0h,081h,0c3h,00fh,0c0h,081h,0c3h,00eh	; b85a   0.f............
	defb 0c0h,081h,0c3h,007h,0c0h,081h,0c3h,007h,0c0h,081h,0c3h,007h,0c0h,081h,0c3h,007h	; b86a  ................
	defb 0c0h,081h,0c3h,007h,0c0h,081h,0c3h,010h,0c0h,081h,0c3h,00fh,0c0h,081h,0c3h,00fh	; b87a  ................
	defb 0c0h,081h,0c3h,031h,0c0h,0c0h,0f0h,030h,030h,020h,0c0h,000h,020h,030h,0f0h,030h	; b88a  ...1...00 .. 0.0
	defb 030h,020h,0c0h,000h,020h,030h,030h,020h,000h,0c0h,020h,020h,030h,0b0h,030h,020h	; b89a  0 .. 00 ..  0.0
	defb 000h,0c0h,020h,020h,030h,0b0h,0f0h,020h,030h,020h,0c0h,000h,020h,030h,0f0h,020h	; b8aa  ..  0.. 0 .. 0.
	defb 030h,020h,0c0h,000h,020h,030h,030h,020h,000h,0c0h,020h,020h,030h,0b0h,030h,020h	; b8ba  0 .. 00 ..  0.0
	defb 000h,0c0h,020h,020h,030h,0b0h,000h	; b8ca

; ----------------------------------------------------------------------
; DATOS rle_B8D1: los dibujos de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B8D1
;   B8D1-B922); lo leen p00:4CFF, p00:4B3C (81 bytes)
;   0xb8d1..0xb922  (81 bytes)
DATA_rle_B8D1:
	defb 0a5h,0efh,0afh,00fh,0ffh,0f0h,0f7h,0f7h,080h,0ffh,0a7h,0ffh,0ffh,007h,0fbh,0fdh	; b8d1  ................
	defb 07dh,044h,044h,000h,04eh,04eh,040h,04eh,000h,007h,000h,003h,000h,0f8h,000h,0f8h	; b8e1  }DD.NN@N........
	defb 000h,04eh,040h,04eh,04eh,000h,003h,044h,090h,0f8h,000h,0f8h,000h,003h,000h,007h	; b8f1  .N@NN..D........
	defb 000h,0feh,0feh,0beh,0feh,0beh,0ffh,0ffh,000h,004h,055h,094h,000h,0bfh,0bfh,000h	; b901  ..........U.....
	defb 039h,029h,02fh,029h,009h,029h,01eh,01eh,029h,029h,02fh,029h,039h,029h,02fh,029h	; b911  9)/).)..))/)9)/)
	defb 000h	; b921

; ----------------------------------------------------------------------
; DATOS rle_B922: los colores de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B922
;   B922-B964); lo leen p00:4D11, p00:4B3C (66 bytes)
;   0xb922..0xb964  (66 bytes)
DATA_rle_B922:
	defb 006h,020h,082h,030h,0c0h,006h,020h,096h,030h,0c0h,0e0h,050h,050h,0e0h,050h,050h	; b922  . .0.. .0..PP.PP
	defb 040h,040h,032h,000h,032h,000h,0c2h,000h,0c2h,000h,040h,050h,050h,0e0h,003h,050h	; b932  @@2.2.....@PP..P
	defb 08ch,0e0h,0c2h,000h,0c2h,000h,032h,000h,032h,000h,0c0h,020h,030h,005h,020h,084h	; b942  ......2.2.. 0. .
	defb 0b0h,090h,080h,060h,004h,020h,003h,0c0h,003h,020h,082h,0c0h,030h,007h,0c0h,081h	; b952  ...`. ... ..0...
	defb 020h,000h	; b962

; ----------------------------------------------------------------------
; DATOS rle_B964: los dibujos de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B964
;   B964-B9E0); lo leen p00:4CFF, p00:4B3C (124 bytes)
;   0xb964..0xb9e0  (124 bytes)
DATA_rle_B964:
	defb 090h,000h,007h,000h,007h,000h,007h,000h,007h,000h,020h,000h,020h,000h,020h,000h	; b964  .......... . . .
	defb 020h,003h,02ah,081h,00ah,004h,000h,003h,0feh,081h,0f2h,004h,0feh,002h,000h,090h	; b974   .*.............
	defb 003h,008h,01bh,038h,00bh,068h,06dh,061h,06dh,061h,06dh,061h,073h,073h,0feh,09eh	; b984  ...8.hmamamass..
	defb 005h,0feh,08bh,000h,0aah,0bah,0aeh,0aah,0aah,0aeh,0aah,06ah,000h,0ffh,006h,0e2h	; b994  ...........j....
	defb 082h,000h,0ffh,006h,007h,007h,02ah,081h,00ah,004h,0e2h,084h,000h,075h,06ah,000h	; b9a4  ......*......uj.
	defb 004h,007h,098h,000h,0b7h,0b5h,000h,000h,03fh,000h,03fh,000h,03fh,000h,03fh,000h	; b9b4  ........?.?.?.?.
	defb 000h,003h,000h,003h,000h,003h,003h,00ch,000h,00ch,000h,004h,00ch,003h,003h,085h	; b9c4  ................
	defb 00bh,01bh,038h,00bh,068h,005h,06dh,083h,061h,073h,073h,000h	; b9d4  ..8.h.m.ass.

; ----------------------------------------------------------------------
; DATOS rle_B9E0: los colores de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_B9E0
;   B9E0-BA48); lo leen p00:4D11, p00:4B3C (104 bytes)
;   0xb9e0..0xba48  (104 bytes)
DATA_rle_B9E0:
	defb 092h,000h,032h,000h,032h,000h,032h,000h,032h,000h,032h,000h,032h,000h,032h,000h	; b9e0  ..2.2.2.2.2.2.2.
	defb 032h,020h,020h,006h,030h,083h,0f0h,020h,030h,005h,020h,003h,0c0h,002h,030h,002h	; b9f0  2  .0.. 0. ...0.
	defb 020h,002h,0c0h,003h,020h,084h,030h,0c0h,020h,0c0h,003h,020h,082h,0c0h,020h,007h	; ba00   ... .0. .. .. .
	defb 0c0h,004h,020h,002h,0c0h,006h,0c2h,002h,0c0h,006h,032h,004h,0c0h,002h,020h,002h	; ba10  .. .......2... .
	defb 030h,004h,0c2h,002h,020h,002h,0c0h,004h,032h,002h,030h,00eh,0c0h,002h,030h,002h	; ba20  0... ...2.0...0.
	defb 020h,002h,0c0h,002h,020h,082h,030h,020h,005h,0c0h,002h,030h,002h,020h,002h,0c0h	; ba30   ... .0 ...0. ..
	defb 003h,020h,084h,030h,0c0h,020h,0c0h,000h	; ba40  . .0. ..

; ----------------------------------------------------------------------
; DATOS rle_BA48: los dibujos de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BA48
;   BA48-BAAF); lo leen p00:4CFF, p00:4B3C (103 bytes)
;   0xba48..0xbaaf  (103 bytes)
DATA_rle_BA48:
	defb 090h,000h,06ch,008h,034h,018h,00eh,007h,001h,0d0h,080h,0a0h,0a0h,040h,060h,060h	; ba48  ..l.4........@``
	defb 020h,004h,000h,086h,003h,01eh,0e1h,0ech,000h,070h,007h,000h,081h,001h,005h,003h	; ba58   ........p......
	defb 083h,001h,000h,080h,005h,0c0h,081h,080h,004h,000h,084h,0c0h,020h,090h,050h,006h	; ba68  ............ .P.
	defb 028h,088h,050h,090h,090h,0a0h,020h,040h,040h,080h,005h,000h,085h,00fh,030h,047h	; ba78  (.P... @@.....0G
	defb 098h,060h,004h,000h,084h,0c0h,030h,0c8h,034h,003h,000h,08ah,00fh,030h,047h,088h	; ba88  .`....0.4....0G.
	defb 090h,090h,088h,047h,030h,00fh,005h,000h,088h,0e0h,010h,0c8h,024h,014h,014h,090h	; ba98  ...G0.......$...
	defb 048h,004h,024h,082h,048h,090h,000h	; baa8

; ----------------------------------------------------------------------
; DATOS rle_BAAF: los colores de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BAAF
;   BAAF-BAFB); lo leen p00:4D11, p00:4B3C (76 bytes)
;   0xbaaf..0xbafb  (76 bytes)
DATA_rle_BAAF:
	defb 002h,0e0h,083h,050h,0f0h,050h,003h,040h,082h,0f0h,0e0h,004h,050h,006h,040h,084h	; baaf  ...P.P.@....P.@.
	defb 0f0h,0e0h,050h,040h,006h,050h,004h,0f0h,083h,0e0h,050h,050h,004h,040h,084h,0f0h	; babf  ..P@.P....PP.@..
	defb 0e0h,050h,050h,004h,040h,006h,0c0h,085h,020h,030h,030h,020h,030h,003h,020h,009h	; bacf  .PP.@... 00 0. .
	defb 0c0h,004h,020h,012h,0c0h,084h,020h,030h,030h,020h,004h,0c0h,005h,020h,002h,030h	; badf  .. ... 00 ... .0
	defb 002h,020h,003h,0c0h,086h,020h,030h,030h,020h,0c0h,0c0h,000h	; baef  . ... 00 ...

; ----------------------------------------------------------------------
; DATOS rle_BAFB: los dibujos de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BAFB
;   BAFB-BB07); lo leen p00:4CFF, p00:4B3C (12 bytes)
;   0xbafb..0xbb07  (12 bytes)
DATA_rle_BAFB:
	defb 003h,02ah,081h,00ah,008h,000h,084h,014h,05dh,055h,055h,000h	; bafb  .*......]UU.

; ----------------------------------------------------------------------
; DATOS rle_BB07: los colores de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BB07
;   BB07-BB0E); lo leen p00:4D11, p00:4B3C (7 bytes)
;   0xbb07..0xbb0e  (7 bytes)
DATA_rle_BB07:
	defb 002h,020h,00ch,030h,002h,020h,000h	; bb07

; ----------------------------------------------------------------------
; DATOS rle_BB0E: los dibujos de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BB0E
;   BB0E-BB3D); lo leen p00:4CFF, p00:4B3C (47 bytes)
;   0xbb0e..0xbb3d  (47 bytes)
DATA_rle_BB0E:
	defb 007h,02ah,083h,00ah,028h,0bah,005h,0aah,085h,0bah,0aah,0aeh,0aah,06ah,003h,02ah	; bb0e  .*..(........j.*
	defb 081h,03ah,003h,0aah,081h,0bah,005h,0aah,087h,0bah,0aeh,0aah,0aah,0aeh,0aah,06ah	; bb1e  .:.............j
	defb 005h,0aah,081h,0bah,003h,0aah,087h,0bah,0aeh,0aah,0aah,0aeh,0aah,0eah,000h	; bb2e  ...............

; ----------------------------------------------------------------------
; DATOS rle_BB3D: los colores de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BB3D
;   BB3D-BB56); lo leen p00:4D11, p00:4B3C (25 bytes)
;   0xbb3d..0xbb56  (25 bytes)
DATA_rle_BB3D:
	defb 004h,0c0h,002h,020h,004h,030h,002h,020h,004h,0c0h,004h,020h,008h,0c0h,004h,020h	; bb3d  ... .0. ... ...
	defb 004h,0c0h,008h,020h,008h,0c0h,004h,020h,000h	; bb4d  ... ... .

; ----------------------------------------------------------------------
; DATOS rle_BB56: los dibujos de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BB56
;   BB56-BB95); lo leen p00:4CFF, p00:4B3C (63 bytes)
;   0xbb56..0xbb95  (63 bytes)
DATA_rle_BB56:
	defb 004h,0bdh,084h,018h,0e7h,042h,000h,004h,0ffh,095h,018h,0e7h,042h,000h,000h,0eeh	; bb56  .....B......B...
	defb 0e0h,00eh,0aah,0ffh,0dfh,059h,000h,0f8h,0feh,009h,0e7h,0f7h,0f0h,0f3h,0f4h,003h	; bb66  .....Y..........
	defb 0b5h,085h,0f5h,0b4h,0b5h,0b4h,02fh,003h,0adh,094h,0afh,02dh,0adh,02dh,000h,07ah	; bb76  ....../....-.-.z
	defb 07ah,040h,01eh,056h,056h,000h,006h,0e6h,006h,0e6h,0aeh,0feh,0deh,0d6h,000h	; bb86  z@.VV..........

; ----------------------------------------------------------------------
; DATOS rle_BB95: los colores de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BB95
;   BB95-BBD2); lo leen p00:4D11, p00:4B3C (61 bytes)
;   0xbb95..0xbbd2  (61 bytes)
DATA_rle_BB95:
	defb 08fh,0b0h,030h,020h,0c0h,030h,0c0h,062h,020h,020h,030h,020h,0c0h,030h,0c0h,062h	; bb95  ..0 .0.b  0 .0.b
	defb 003h,030h,088h,020h,0c0h,020h,020h,030h,0c0h,020h,020h,003h,0c0h,002h,020h,083h	; bba5  .0. .  0.  ... .
	defb 030h,020h,030h,005h,020h,083h,0c0h,020h,030h,005h,020h,002h,0c0h,085h,030h,0c0h	; bbb5  0 0. .. 0. ...0.
	defb 020h,020h,0c0h,004h,030h,086h,020h,0c0h,020h,020h,030h,0c0h,000h	; bbc5    ..0. .  0..

; ----------------------------------------------------------------------
; DATOS rle_BBD2: los dibujos de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BBD2
;   BBD2-BCE7); lo leen p00:4CFF, p00:4B3C (277 bytes)
;   0xbbd2..0xbce7  (277 bytes)
DATA_rle_BBD2:
	defb 088h,07eh,0ffh,042h,0ffh,042h,0ffh,042h,07eh,003h,0bdh,002h,000h,003h,0bdh,082h	; bbd2  .~.B.B.B~.......
	defb 05ah,000h,004h,05ah,08bh,000h,05ah,0bdh,066h,0dbh,0bdh,0bdh,0dbh,066h,0bdh,000h	; bbe2  Z..Z..Z.f....f..
	defb 006h,03ch,002h,000h,0b9h,03ch,000h,03ch,000h,03ch,000h,03ch,081h,0bdh,0a5h,0bdh	; bbf2  .<...<.<.<.<....
	defb 0bdh,0a5h,0bdh,081h,0dbh,000h,07eh,05ah,05ah,07eh,000h,0dbh,000h,07bh,07bh,000h	; bc02  ......~ZZ~...{{.
	defb 07eh,0a8h,0a0h,000h,0e0h,0cfh,0bbh,07eh,07dh,040h,00fh,0ffh,07eh,080h,07eh,0e7h	; bc12  ~......~}@..~.~.
	defb 0e7h,047h,057h,056h,0f0h,0f0h,0c0h,0d0h,018h,0fch,01ch,0fch,080h,0b0h,004h,030h	; bc22  .GWV...........0
	defb 085h,0b0h,080h,05ch,038h,0b8h,004h,0b0h,084h,080h,0c0h,0fch,008h,005h,06ch,0b2h	; bc32  ...\8.........l.
	defb 000h,07eh,07eh,03ch,042h,018h,042h,0dbh,0fbh,0fbh,000h,055h,055h,000h,0fbh,0fbh	; bc42  .~~<B.B....UU...
	defb 0dbh,042h,0dbh,0c3h,05ah,0c3h,0dbh,0c3h,0d4h,0f5h,035h,0a5h,0a5h,035h,0f5h,0d4h	; bc52  .B..Z.....5..5..
	defb 04fh,04fh,050h,015h,075h,07fh,055h,050h,000h,0d8h,0d8h,001h,07eh,003h,028h,02eh	; bc62  OOP.u.UP....~.(.
	defb 07eh,05ah,003h,0ffh,082h,0c3h,0dbh,003h,05ah,09fh,0c3h,0ffh,0ffh,0dbh,05ah,000h	; bc72  ~Z......Z.....Z.
	defb 07eh,03ch,07eh,03ch,099h,07eh,07eh,0ffh,03ch,07eh,07eh,0e7h,07eh,07eh,0dbh,05ah	; bc82  ~<~<.~~.<~~.~~.Z
	defb 0ffh,03ch,07eh,07eh,05ah,07eh,07eh,066h,0dbh,006h,03ch,081h,0dbh,004h,03ch,087h	; bc92  .<~~Z~~f..<...<.
	defb 05ah,042h,07eh,05ah,05ah,07eh,07eh,003h,03ch,085h,07eh,042h,05ah,081h,0dbh,003h	; bca2  ZB~ZZ~~.<.~BZ...
	defb 07eh,0b2h,000h,042h,03ch,042h,018h,05ah,07eh,03ch,07eh,07eh,000h,07bh,07bh,000h	; bcb2  ~..B<B.Z~<~~.{{.
	defb 07eh,080h,0b8h,000h,0dbh,0c3h,03ch,018h,000h,05ah,03ch,03ch,000h,000h,057h,056h	; bcc2  ~.....<..Z<<..WV
	defb 055h,076h,055h,076h,000h,000h,0ffh,0aah,055h,0aah,055h,0aah,000h,000h,0eah,0aah	; bcd2  UvUv....U.U.....
	defb 06ah,0aeh,06ah,0aeh,000h	; bce2

; ----------------------------------------------------------------------
; DATOS rle_BCE7: los colores de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BCE7
;   BCE7-BDFF); lo leen p00:4D11, p00:4B3C (280 bytes)
;   0xbce7..0xbdff  (280 bytes)
DATA_rle_BCE7:
	defb 08ah,040h,0c0h,050h,0c0h,050h,0c0h,040h,040h,090h,0a0h,004h,080h,090h,0a0h,090h	; bce7  .@.P.P.@@.......
	defb 060h,060h,080h,090h,090h,080h,060h,060h,050h,050h,0e0h,0f0h,0f0h,0e0h,004h,050h	; bcf7  ``....``PP.....P
	defb 086h,0e0h,0f0h,0f0h,0e0h,050h,050h,003h,0f0h,081h,0e0h,003h,050h,08fh,040h,050h	; bd07  .....PP.....P.@P
	defb 050h,0e0h,0f0h,0f0h,0e0h,050h,050h,040h,040h,050h,0f0h,0f0h,050h,003h,040h,081h	; bd17  P....PP@@P..P.@.
	defb 0e0h,004h,050h,003h,040h,0a7h,0f0h,0e0h,050h,040h,040h,0e0h,040h,040h,050h,050h	; bd27  ..P.@...P@@.@@PP
	defb 0e0h,0f0h,0e0h,050h,040h,0f0h,050h,040h,040h,0f0h,0f0h,0e0h,050h,040h,040h,050h	; bd37  ...P@.P@@...P@@P
	defb 0f0h,0f0h,050h,040h,040h,0f0h,0e0h,0e0h,0f0h,0e0h,050h,050h,0e0h,004h,0f0h,004h	; bd47  ..P@@.....PP....
	defb 0e0h,002h,050h,083h,040h,0f0h,0e0h,004h,050h,081h,0e0h,004h,0f0h,083h,0e0h,050h	; bd57  ..P.@...P......P
	defb 0f0h,003h,0e0h,002h,050h,0e4h,0e0h,050h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,050h,040h	; bd67  ....P..PP.....P@
	defb 050h,0f0h,050h,050h,0e0h,050h,040h,0c0h,040h,040h,050h,0c0h,050h,0c0h,0e0h,0f0h	; bd77  P.PP.P@.@@P.P...
	defb 050h,040h,040h,050h,050h,0e0h,0e0h,0feh,050h,0f5h,0e0h,0f0h,0e0h,050h,040h,040h	; bd87  P@@PP...P....P@@
	defb 0f0h,0e5h,040h,0feh,0e0h,054h,054h,040h,0e4h,0f4h,0f4h,0e0h,050h,0e4h,050h,050h	; bd97  ..@..TT@....P.PP
	defb 040h,0f0h,0e4h,0e4h,050h,0e4h,0e4h,050h,040h,0e4h,0e5h,0f0h,0f0h,0e5h,0e4h,040h	; bda7  @...P..P@......@
	defb 0f0h,0f0h,0e0h,0e0h,0f0h,0e0h,0e0h,0f0h,050h,0f4h,054h,054h,040h,0f0h,0f0h,0e0h	; bdb7  ........P.TT@...
	defb 050h,0e0h,0e0h,0f4h,054h,040h,000h,0f4h,0e5h,040h,003h,050h,082h,0f0h,050h,003h	; bdc7  P...T@...@.P..P.
	defb 040h,002h,050h,083h,0e0h,050h,040h,004h,050h,085h,054h,050h,050h,0feh,050h,003h	; bdd7  @.P..P@.P.TPP.P.
	defb 040h,085h,050h,0e0h,0f0h,0e0h,0f0h,003h,040h,085h,050h,0e0h,0f0h,0e0h,0f0h,003h	; bde7  @.P.....@.P.....
	defb 040h,085h,050h,0e0h,0f0h,0e0h,0f0h,000h	; bdf7  @.P.....

; ----------------------------------------------------------------------
; DATOS rle_BDFF: los dibujos de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BDFF
;   BDFF-BE16); lo leen p00:4CFF, p00:4B3C (23 bytes)
;   0xbdff..0xbe16  (23 bytes)
DATA_rle_BDFF:
	defb 004h,0bdh,084h,018h,0e7h,042h,000h,004h,0ffh,08ch,018h,0e7h,042h,000h,000h,0eeh	; bdff  .....B......B...
	defb 0e0h,00eh,0aah,0ffh,0dfh,059h,000h	; be0f

; ----------------------------------------------------------------------
; DATOS rle_BE16: los colores de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BE16
;   BE16-BE30); lo leen p00:4D11, p00:4B3C (26 bytes)
;   0xbe16..0xbe30  (26 bytes)
DATA_rle_BE16:
	defb 08fh,0b0h,030h,020h,0c0h,030h,0c0h,062h,020h,020h,030h,020h,0c0h,030h,0c0h,062h	; be16  ..0 .0.b  0 .0.b
	defb 003h,030h,086h,020h,0c0h,020h,020h,030h,0c0h,000h	; be26  .0. .  0..

; ----------------------------------------------------------------------
; DATOS rle_BE30: los dibujos de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BE30
;   BE30-BE4F); lo leen p00:4CFF, p00:4B3C (31 bytes)
;   0xbe30..0xbe4f  (31 bytes)
DATA_rle_BE30:
	defb 094h,000h,07ah,07ah,040h,01eh,056h,056h,000h,006h,0e6h,006h,0e6h,0aeh,0feh,0deh	; be30  ..zz@.VV........
	defb 0d6h,000h,042h,0e7h,018h,004h,0bdh,084h,000h,042h,0e7h,018h,004h,0ffh,000h	; be40  ..B......B.....

; ----------------------------------------------------------------------
; DATOS rle_BE4F: los colores de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BE4F
;   BE4F-BE70); lo leen p00:4D11, p00:4B3C (33 bytes)
;   0xbe4f..0xbe70  (33 bytes)
DATA_rle_BE4F:
	defb 002h,030h,084h,0c0h,020h,020h,0c0h,004h,030h,096h,020h,0c0h,020h,020h,030h,0c0h	; be4f  .0..  ..0. .  0.
	defb 0c0h,062h,0c0h,030h,0c0h,020h,030h,0b0h,0b0h,062h,0c0h,030h,0c0h,020h,030h,020h	; be5f  .b.0. 0..b.0. 0
	defb 000h	; be6f

; ----------------------------------------------------------------------
; DATOS rle_BE70: los dibujos de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BE70
;   BE70-BE80); lo leen p00:4CFF, p00:4B3C (16 bytes)
;   0xbe70..0xbe80  (16 bytes)
DATA_rle_BE70:
	defb 085h,000h,00ah,000h,000h,0ffh,004h,000h,084h,00ah,000h,000h,01fh,003h,000h,000h	; be70  ................

; ----------------------------------------------------------------------
; DATOS rle_BE80: los colores de una entrada de la lista de graficos de
;   16:6648, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_BE80
;   BE80-BE8B); lo leen p00:4D11, p00:4B3C (11 bytes)
;   0xbe80..0xbe8b  (11 bytes)
DATA_rle_BE80:
	defb 004h,0c0h,081h,0c3h,007h,0c0h,081h,0c3h,003h,0c0h,000h	; be80  ...........

; ----------------------------------------------------------------------
; DATOS relleno_ff: 373 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (373 bytes)
;   0xbe8b..0xc000  (373 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be8b  ................
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

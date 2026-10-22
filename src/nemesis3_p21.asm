; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 21 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS rle_7FF0_cola: los dibujos de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C) (sigue del banco 20); se solapan 2 bloques:
;   (rle_vram_7FF0_cola 8000-80DB); lo leen p00:4CFF, p00:4B3C (219 bytes)
;   0x8000..0x80db  (219 bytes)
DATA_rle_7FF0_cola:
	defb 021h,055h,0afh,0fah,0fch,0abh,094h,0aeh,004h,0ffh,0ffh,0efh,0f9h,0ech,076h,0b1h	; 8000  !U............v.
	defb 0f6h,045h,0eah,0e0h,04ah,080h,00ah,01ah,012h,008h,0a1h,007h,084h,09eh,021h,04ch	; 8010  .E..J.........!L
	defb 09eh,000h,0f8h,044h,044h,064h,010h,090h,040h,050h,055h,082h,029h,050h,002h,066h	; 8020  ...DDd..@PU.)P.f
	defb 074h,0aah,055h,0f7h,0d5h,0d3h,052h,057h,052h,0bfh,03fh,01eh,04ch,021h,01eh,000h	; 8030  t.U...RWR.?.L!..
	defb 01eh,040h,040h,058h,088h,008h,038h,028h,02ch,000h,02bh,0abh,02bh,000h,0ffh,014h	; 8040  .@@X..8(,.+.+...
	defb 015h,000h,07bh,060h,01fh,060h,01eh,030h,034h,07fh,040h,05ch,05bh,040h,05ch,059h	; 8050  ..{`.`.04.@\[@\Y
	defb 077h,0bah,02ah,04ah,048h,060h,074h,020h,0c0h,0eah,0b4h,0f8h,0ach,088h,0d4h,0fah	; 8060  w.*JH`t ........
	defb 0e9h,0f5h,000h,0c2h,0b7h,030h,01fh,014h,054h,097h,017h,0fdh,072h,016h,050h,067h	; 8070  .....0..T...r.Pg
	defb 050h,0a1h,038h,0c4h,034h,08ah,045h,024h,002h,028h,03ah,0ffh,000h,0bfh,0bfh,055h	; 8080  P.8.4.E$.(:....U
	defb 0aah,0aah,058h,084h,040h,000h,002h,008h,000h,0a0h,050h,05dh,040h,0f5h,0f5h,000h	; 8090  ..X.@.....P]@...
	defb 07fh,000h,025h,020h,0d0h,0d2h,0adh,0b4h,0fah,0fch,06ah,060h,05ah,040h,006h,0aeh	; 80a0  ..% ......j`Z@..
	defb 0a8h,006h,020h,02fh,02ah,054h,0fch,03fh,0dfh,05fh,07eh,07fh,03eh,04ch,061h,008h	; 80b0  .. /*T.?._~.>La.
	defb 01fh,0e4h,078h,07ch,0b1h,0c5h,0b8h,060h,004h,048h,015h,055h,054h,000h,045h,011h	; 80c0  ..x|...`.H.UT.E.
	defb 050h,015h,017h,037h,071h,074h,077h,070h,02ah,00eh,000h	; 80d0  P..7qtwp*..

; ----------------------------------------------------------------------
; DATOS rle_80DB: los colores de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_80DB
;   80DB-819C); lo leen p00:4D11, p00:4B3C (193 bytes)
;   0x80db..0x819c  (193 bytes)
DATA_rle_80DB:
	defb 010h,0e0h,002h,0e5h,011h,0e0h,003h,040h,092h,050h,040h,0e0h,050h,0e0h,0e0h,050h	; 80db  .......@.P@.P..P
	defb 040h,050h,0e0h,050h,050h,0e0h,040h,050h,040h,050h,0e0h,005h,040h,089h,0e0h,040h	; 80eb  @P.PP.@P@P..@..@
	defb 0e0h,0c4h,040h,054h,0e0h,040h,050h,005h,0e0h,08ch,050h,040h,050h,000h,0e0h,0f0h	; 80fb  ..@T.@P...P@P...
	defb 0f0h,0e0h,050h,050h,0e0h,050h,003h,040h,085h,050h,040h,000h,040h,040h,003h,050h	; 810b  ..PP.P.@.P@.@@.P
	defb 003h,040h,083h,050h,040h,050h,003h,0f0h,003h,0e0h,08ah,050h,040h,0e0h,050h,0e0h	; 811b  .@.P@P.....P@.P.
	defb 0e0h,0f0h,0e0h,040h,040h,008h,0e0h,002h,040h,0a3h,0f0h,040h,0e4h,0e0h,050h,054h	; 812b  ...@@...@..@..PT
	defb 054h,040h,0e0h,050h,0e0h,040h,0e0h,050h,040h,040h,0e0h,050h,0e0h,0e0h,0b0h,0a0h	; 813b  T@.P.@.P@@.P....
	defb 0a9h,060h,040h,040h,0e0h,040h,0c4h,0c4h,050h,040h,050h,050h,0e0h,003h,050h,0c0h	; 814b  .`@@.@..P@PP..P.
	defb 0f0h,050h,0e0h,050h,040h,040h,0e0h,0e0h,050h,0e0h,0e0h,050h,050h,0e5h,050h,050h	; 815b  .P.P@@..P..PP.PP
	defb 040h,050h,0f0h,0f0h,0e0h,0f0h,040h,050h,040h,040h,080h,080h,040h,050h,0e0h,0f0h	; 816b  @P....@P@@..@P..
	defb 050h,0e0h,0e0h,0f0h,0f0h,0e0h,050h,040h,050h,050h,0e0h,0f0h,0f0h,0e0h,0e0h,040h	; 817b  P.....P@PP.....@
	defb 050h,0e0h,0f0h,050h,050h,0e0h,050h,050h,040h,050h,0e0h,0f0h,0f0h,0e0h,050h,040h	; 818b  P..PP.PP@P....P@
	defb 000h	; 819b

; ----------------------------------------------------------------------
; DATOS rle_819C: los dibujos de una entrada de la lista de graficos de
;   20:6BFA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_819C
;   819C-820E); lo leen p00:4CFF, p00:4B3C (114 bytes)
;   0x819c..0x820e  (114 bytes)
DATA_rle_819C:
	defb 0c0h,012h,009h,005h,012h,08dh,066h,039h,00eh,048h,090h,0a0h,048h,0b1h,066h,09ch	; 819c  ......f9.H..H.f.
	defb 070h,045h,023h,01bh,00dh,045h,023h,033h,01bh,0a2h,0c4h,0d8h,0b0h,0a1h,0c2h,0cch	; 81ac  pE#..E#3........
	defb 0d8h,00dh,085h,042h,042h,025h,025h,015h,01ah,0b0h,0a1h,042h,042h,0a4h,0a4h,0a8h	; 81bc  ...BB%%....BB...
	defb 058h,00bh,00dh,005h,003h,047h,047h,027h,027h,0d0h,0b0h,0a0h,0c0h,0e2h,0e2h,0e4h	; 81cc  X....GG''.......
	defb 0e4h,003h,017h,0adh,016h,00eh,08eh,04dh,04dh,0e8h,0d8h,0d0h,0e0h,0f1h,0f1h,072h	; 81dc  .......MM......r
	defb 072h,02dh,02dh,035h,015h,08dh,05ch,05eh,02eh,0b4h,0b4h,0ach,0a8h,0b0h,039h,07bh	; 81ec  r--5..\^......9{
	defb 0fah,02fh,093h,094h,09ah,04ah,056h,06eh,02ah,076h,064h,0ach,0a8h,098h,0b4h,0b4h	; 81fc  ./...JVn*vd.....
	defb 094h,000h	; 820c

; ----------------------------------------------------------------------
; DATOS rle_820E: los colores de una entrada de la lista de graficos de
;   20:6BFA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_820E
;   820E-8258); lo leen p00:4D11, p00:4B3C (74 bytes)
;   0x820e..0x8258  (74 bytes)
DATA_rle_820E:
	defb 086h,070h,050h,040h,050h,070h,040h,003h,050h,002h,040h,002h,050h,002h,040h,087h	; 820e  .pP@Pp@.P.@.P.@.
	defb 050h,040h,040h,050h,050h,040h,070h,004h,050h,002h,040h,081h,050h,005h,040h,081h	; 821e  P@@PP@p.P.@.P.@.
	defb 070h,005h,050h,008h,040h,004h,050h,002h,070h,002h,050h,004h,040h,081h,050h,003h	; 822e  p.P.@.P.p.P.@.P.
	defb 040h,081h,070h,005h,050h,082h,070h,050h,008h,040h,003h,050h,002h,040h,083h,070h	; 823e  @.p.P.pP.@.P.@.p
	defb 050h,050h,00ah,040h,082h,070h,050h,00ch,040h,000h	; 824e  PP.@.pP.@.

; ----------------------------------------------------------------------
; DATOS rle_8258: los dibujos de una entrada de la lista de graficos de
;   20:6BFA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8258
;   8258-82CA); lo leen p00:4CFF, p00:4B3C (114 bytes)
;   0x8258..0x82ca  (114 bytes)
DATA_rle_8258:
	defb 0f0h,008h,004h,006h,092h,04bh,02dh,095h,06ah,008h,084h,042h,023h,031h,098h,067h	; 8258  .....K-.j..B#1.g
	defb 0feh,040h,030h,00ch,003h,081h,0ceh,031h,0ceh,000h,00ch,003h,000h,0c0h,06fh,09fh	; 8268  .@0....1......o.
	defb 0ffh,00ch,003h,000h,0c0h,06fh,09fh,0feh,0e1h,006h,003h,0e0h,037h,0cfh,0ffh,003h	; 8278  .....o......7...
	defb 0fch,000h,080h,0e7h,038h,08fh,0f6h,0c0h,03fh,06ah,095h,02dh,04bh,092h,006h,004h	; 8288  ....8...?j.-K...
	defb 008h,0fch,067h,098h,031h,023h,046h,088h,000h,0ceh,031h,0ceh,081h,003h,00ch,030h	; 8298  ..g.1#F...1....0
	defb 040h,0c0h,09fh,06fh,0c0h,000h,003h,00ch,000h,0e3h,0fch,0ffh,00fh,0f0h,000h,003h	; 82a8  @..o............
	defb 004h,0fdh,003h,0ffh,0cfh,036h,0e1h,006h,008h,0c0h,0dfh,0a6h,09bh,074h,083h,00eh	; 82b8  .....6.......t..
	defb 070h,000h	; 82c8

; ----------------------------------------------------------------------
; DATOS rle_82CA: los colores de una entrada de la lista de graficos de
;   20:6BFA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_82CA
;   82CA-830D); lo leen p00:4D11, p00:4B3C (67 bytes)
;   0x82ca..0x830d  (67 bytes)
DATA_rle_82CA:
	defb 004h,070h,004h,050h,003h,070h,005h,050h,002h,070h,005h,050h,005h,070h,004h,050h	; 82ca  .p.P.p.P.p.P.p.P
	defb 002h,070h,081h,000h,005h,050h,081h,070h,006h,050h,081h,070h,007h,050h,081h,070h	; 82da  .p...P.p.P.p.P.p
	defb 006h,040h,002h,050h,006h,040h,083h,050h,000h,050h,005h,040h,002h,050h,081h,054h	; 82ea  .@.P.@.P.P.@.P.T
	defb 005h,040h,003h,050h,004h,040h,081h,000h,003h,050h,005h,040h,002h,050h,007h,040h	; 82fa  .@.P.@...P.@.P.@
	defb 081h,050h,000h	; 830a

; ----------------------------------------------------------------------
; DATOS rle_830D: los dibujos de una entrada de la lista de graficos de
;   20:6BFA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_830D
;   830D-835F); lo leen p00:4CFF, p00:4B3C (82 bytes)
;   0x830d..0x835f  (82 bytes)
DATA_rle_830D:
	defb 0d0h,000h,002h,021h,010h,008h,00dh,046h,033h,044h,024h,092h,0cah,062h,002h,091h	; 830d  ...!...F3D$..b..
	defb 049h,019h,08ch,065h,020h,0cch,033h,0fch,01fh,050h,020h,098h,0c8h,064h,001h,090h	; 831d  I..e .3..P ..d..
	defb 048h,019h,08ch,045h,020h,01ch,00bh,001h,003h,050h,020h,098h,0c8h,064h,001h,093h	; 832d  H..E ....P ..d..
	defb 048h,019h,08ch,045h,020h,01ch,00bh,011h,003h,00dh,047h,027h,09eh,078h,0b5h,06dh	; 833d  H..E .....G'.x.m
	defb 02dh,00dh,047h,027h,09eh,078h,0b4h,06ch,02ch,00dh,047h,027h,09eh,078h,0b0h,060h	; 834d  -.G'.x.l,.G'.x.`
	defb 020h,000h	; 835d

; ----------------------------------------------------------------------
; DATOS rle_835F: los colores de una entrada de la lista de graficos de
;   20:6BFA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_835F
;   835F-8399); lo leen p00:4D11, p00:4B3C (58 bytes)
;   0x835f..0x8399  (58 bytes)
DATA_rle_835F:
	defb 005h,050h,08dh,070h,040h,040h,070h,050h,050h,040h,040h,050h,070h,040h,040h,070h	; 835f  .P.p@@pPP@@Pp@@p
	defb 004h,040h,002h,050h,005h,040h,085h,060h,050h,040h,040h,070h,004h,040h,082h,050h	; 836f  .@.P.@.`P@@p.@.P
	defb 060h,005h,040h,002h,060h,002h,040h,081h,070h,004h,040h,002h,060h,006h,040h,002h	; 837f  `.@.`.@.p.@.`.@.
	defb 050h,005h,040h,003h,050h,004h,040h,004h,050h,000h	; 838f  P.@.P.@.P.

; ----------------------------------------------------------------------
; DATOS rle_8399: los dibujos de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8399
;   8399-83A4); lo leen p00:4CFF, p00:4B3C (11 bytes)
;   0x8399..0x83a4  (11 bytes)
DATA_rle_8399:
	defb 083h,080h,036h,06ch,00ah,000h,083h,06ch,036h,080h,000h	; 8399  ..6l...l6..

; ----------------------------------------------------------------------
; DATOS rle_83A4: los colores de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_83A4
;   83A4-83AF); lo leen p00:4D11, p00:4B3C (11 bytes)
;   0x83a4..0x83af  (11 bytes)
DATA_rle_83A4:
	defb 083h,040h,050h,040h,00ah,000h,083h,040h,050h,040h,000h	; 83a4  .@P@...@P@.

; ----------------------------------------------------------------------
; DATOS rle_83AF: los dibujos de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_83AF
;   83AF-8414); lo leen p00:4CFF, p00:4B3C (101 bytes)
;   0x83af..0x8414  (101 bytes)
DATA_rle_83AF:
	defb 006h,000h,085h,0c0h,0f0h,007h,0c8h,007h,00bh,000h,082h,003h,00fh,005h,000h,083h	; 83af  ................
	defb 003h,00ch,030h,004h,002h,084h,000h,007h,002h,00fh,005h,000h,089h,007h,080h,038h	; 83bf  ..0............8
	defb 000h,001h,002h,004h,000h,010h,007h,000h,083h,018h,07ah,01bh,004h,000h,08eh,003h	; 83cf  ..........z.....
	defb 00fh,03eh,0fdh,0c0h,000h,080h,0c0h,060h,060h,09ah,0dbh,002h,000h,006h,002h,084h	; 83df  .>.....``.......
	defb 001h,002h,002h,000h,003h,001h,083h,000h,040h,040h,006h,000h,003h,00bh,081h,001h	; 83ef  ........@@......
	defb 003h,005h,091h,000h,002h,004h,008h,030h,060h,01dh,05dh,05dh,0c0h,000h,080h,0c0h	; 83ff  .......0`.]]....
	defb 060h,060h,09ah,0dbh,000h	; 840f

; ----------------------------------------------------------------------
; DATOS rle_8414: los colores de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8414
;   8414-8470); lo leen p00:4D11, p00:4B3C (92 bytes)
;   0x8414..0x8470  (92 bytes)
DATA_rle_8414:
	defb 006h,000h,085h,070h,040h,040h,075h,040h,00bh,000h,082h,070h,040h,005h,000h,083h	; 8414  ...p@@u@...p@...
	defb 020h,040h,040h,003h,0e0h,085h,0f0h,000h,0e0h,050h,0e0h,005h,000h,089h,020h,070h	; 8424   @@......P.... p
	defb 070h,000h,050h,040h,040h,000h,050h,007h,000h,083h,0e0h,0f0h,0e0h,004h,000h,005h	; 8434  p.P@@.P.........
	defb 040h,089h,000h,0e0h,0e0h,0f0h,050h,0e0h,0f4h,0f0h,000h,006h,0f0h,003h,0e0h,081h	; 8444  @.....P.........
	defb 000h,003h,0e0h,083h,000h,0f0h,0f0h,006h,000h,007h,0e0h,082h,000h,080h,005h,040h	; 8454  ...............@
	defb 08ah,070h,0e0h,040h,000h,0e0h,0e0h,0f0h,050h,0e0h,0e4h,000h	; 8464  .p.@....P...

; ----------------------------------------------------------------------
; DATOS rle_8470: los dibujos de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8470
;   8470-84BF); lo leen p00:4CFF, p00:4B3C (79 bytes)
;   0x8470..0x84bf  (79 bytes)
DATA_rle_8470:
	defb 002h,000h,09bh,080h,040h,030h,08eh,061h,01eh,0f0h,00fh,000h,007h,078h,080h,0f0h	; 8470  ....@0.a.....x..
	defb 00fh,000h,087h,078h,080h,001h,00eh,0f0h,000h,003h,0f8h,007h,038h,0c0h,004h,000h	; 8480  ...x........8...
	defb 091h,0fch,003h,000h,0f0h,00ch,007h,0f8h,000h,003h,0ech,010h,02fh,0c0h,000h,000h	; 8490  ............/...
	defb 07ch,083h,003h,000h,08ch,0fch,003h,000h,000h,080h,060h,010h,008h,006h,0c1h,03ch	; 84a0  |.........`....<
	defb 0ffh,004h,000h,081h,0ffh,004h,000h,086h,0ffh,000h,000h,0ffh,000h,000h,000h	; 84b0  ...............

; ----------------------------------------------------------------------
; DATOS rle_84BF: los colores de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_84BF
;   84BF-850B); lo leen p00:4D11, p00:4B3C (76 bytes)
;   0x84bf..0x850b  (76 bytes)
DATA_rle_84BF:
	defb 002h,000h,002h,0f0h,081h,0a0h,003h,070h,002h,0a0h,08eh,000h,030h,030h,070h,0a0h	; 84bf  .......p....00p.
	defb 0a0h,000h,0a0h,0f0h,030h,0f0h,0f0h,0a0h,000h,004h,0a0h,081h,0f0h,004h,000h,002h	; 84cf  ....0...........
	defb 070h,08fh,000h,030h,030h,0f0h,0a0h,000h,0a0h,070h,070h,030h,0f0h,000h,000h,0a0h	; 84df  p..00....pp0....
	defb 0a0h,003h,000h,084h,030h,0f0h,000h,000h,005h,0a0h,002h,0f0h,081h,0aah,004h,000h	; 84ef  ....0...........
	defb 081h,033h,004h,000h,086h,0aah,000h,000h,077h,000h,000h,000h	; 84ff  .3......w...

; ----------------------------------------------------------------------
; DATOS rle_850B: los dibujos de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_850B
;   850B-8512); lo leen p00:4CFF, p00:4B3C (7 bytes)
;   0x850b..0x8512  (7 bytes)
DATA_rle_850B:
	defb 002h,000h,004h,0ffh,002h,000h,000h	; 850b

; ----------------------------------------------------------------------
; DATOS rle_8512: los colores de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8512
;   8512-851C); lo leen p00:4D11, p00:4B3C (10 bytes)
;   0x8512..0x851c  (10 bytes)
DATA_rle_8512:
	defb 002h,000h,086h,099h,0bbh,0bbh,099h,000h,000h,000h	; 8512  ..........

; ----------------------------------------------------------------------
; DATOS rle_851C: los dibujos de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_851C
;   851C-8636); lo leen p00:4CFF, p00:4B3C (282 bytes)
;   0x851c..0x8636  (282 bytes)
DATA_rle_851C:
	defb 0ffh,007h,005h,007h,00eh,09ch,039h,073h,0edh,000h,01ch,0e6h,016h,08eh,0ceh,0e6h	; 851c  ......9s........
	defb 0e6h,0e0h,020h,080h,0c0h,0ebh,0ebh,0cbh,0ebh,003h,001h,001h,007h,0d7h,0d3h,0d7h	; 852c  .. .............
	defb 0d7h,0bfh,0deh,0efh,0f7h,0f6h,0f7h,080h,04fh,0a0h,070h,0fch,0fch,018h,0e0h,000h	; 853c  ........O.p.....
	defb 0feh,000h,07fh,0beh,01dh,00bh,047h,08eh,01ch,07dh,0a0h,0ffh,07dh,038h,071h,0c3h	; 854c  ......G..}..}8q.
	defb 0a2h,0f0h,007h,05ch,058h,001h,043h,083h,087h,0ffh,000h,03ch,0ffh,07eh,03eh,03eh	; 855c  ...\X.C....<.~>>
	defb 03ch,0f8h,00ch,006h,002h,083h,0c1h,0c1h,0e1h,0e0h,07fh,000h,000h,075h,015h,015h	; 856c  <............u..
	defb 055h,045h,00eh,03fh,060h,018h,007h,000h,07fh,000h,080h,0d7h,0d7h,057h,000h,07fh	; 857c  UE.?`........W..
	defb 0ffh,015h,015h,055h,015h,055h,055h,0d5h,0d5h,03ch,042h,03ch,0c3h,024h,0bdh,042h	; 858c  ...U.UU..<B<.$.B
	defb 0b5h,0dbh,0d0h,0c2h,0d9h,006h,00eh,01eh,02eh,018h,0fdh,07bh,0f7h,0efh,06fh,0efh	; 859c  ...........{..o.
	defb 001h,0f2h,070h,008h,068h,048h,0aah,0bah,05dh,0ebh,0dbh,042h,0bdh,024h,03ch,03ch	; 85ac  ..p.hH..]..B.$<<
	defb 042h,03ch,099h,065h,079h,076h,06bh,04dh,02ah,066h,03ch,07ch,078h,078h,070h,0f0h	; 85bc  B<.eyvkM*f<|xxp.
	defb 0e0h,0e0h,0beh,0beh,0bfh,01fh,003h,05fh,091h,00fh,005h,00ah,016h,02dh,05ch,0bbh	; 85cc  ......._.....-\.
	defb 078h,0f7h,06ch,05ch,038h,078h,070h,070h,060h,060h,003h,02fh,081h,007h,003h,017h	; 85dc  x.l\8xpp``./....
	defb 081h,003h,004h,066h,0c4h,000h,06ch,036h,080h,000h,03fh,080h,0cfh,0e0h,073h,038h	; 85ec  ...f..l6..?...s8
	defb 000h,080h,0f0h,081h,0fch,086h,0f3h,099h,00ch,03ch,02fh,000h,0fdh,01dh,020h,06fh	; 85fc  .........</... o
	defb 0f7h,000h,0a0h,000h,0e0h,0f8h,0feh,000h,05dh,038h,071h,0e2h,0d0h,0b8h,07dh,0feh	; 860c  ........]8q...}.
	defb 000h,000h,02fh,080h,06dh,080h,0d7h,0d0h,000h,00ah,0abh,00bh,000h,000h,038h,084h	; 861c  ../.m.........8.
	defb 0c1h,05dh,000h,0feh,0ffh,07eh,016h,08eh,0c6h,000h	; 862c  .]...~....

; ----------------------------------------------------------------------
; DATOS rle_8636: los colores de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8636
;   8636-872B); lo leen p00:4D11, p00:4B3C (245 bytes)
;   0x8636..0x872b  (245 bytes)
DATA_rle_8636:
	defb 0a6h,030h,0c0h,040h,050h,0e0h,0e0h,050h,040h,000h,040h,050h,040h,040h,050h,070h	; 8636  .0.@P..P@.@P@@Pp
	defb 0f0h,040h,040h,020h,030h,0e4h,0f4h,0f5h,0e4h,0e0h,0e0h,020h,030h,0e4h,0f5h,0f5h	; 8646  .@@ 0...... 0...
	defb 0e4h,040h,040h,050h,070h,0e0h,0f0h,003h,040h,002h,070h,08ah,0e7h,0e5h,0f4h,000h	; 8656  .@@Pp...@.p.....
	defb 050h,000h,040h,040h,050h,050h,003h,040h,098h,0e0h,050h,055h,0e0h,070h,040h,040h	; 8666  P.@@PP.@..PU.p@@
	defb 0e5h,0e0h,050h,040h,050h,060h,060h,080h,080h,0eeh,000h,060h,066h,086h,098h,0a9h	; 8676  ..P@P``....`f...
	defb 0fah,004h,0e0h,002h,060h,002h,080h,098h,075h,070h,000h,000h,040h,050h,070h,0f0h	; 8686  ....`...up..@Pp.
	defb 040h,050h,050h,075h,074h,074h,000h,050h,000h,040h,040h,050h,070h,000h,060h,099h	; 8696  @PPutt.P.@@Pp.`.
	defb 008h,0f0h,08fh,050h,0f0h,050h,0e7h,0f0h,0e0h,0e0h,0f4h,040h,065h,040h,060h,040h	; 86a6  ...P.P.....@e@`@
	defb 050h,070h,003h,040h,003h,050h,08ch,070h,040h,040h,050h,040h,060h,080h,090h,0a0h	; 86b6  Pp.@.P.p@@P@`...
	defb 0b0h,0f0h,0f4h,003h,0f0h,085h,075h,050h,040h,040h,0e0h,007h,0f0h,010h,0e0h,083h	; 86c6  ......uP@@......
	defb 0f0h,0e0h,0e0h,003h,0f0h,002h,0e0h,008h,0f0h,008h,0e0h,0a8h,0f0h,0e0h,070h,050h	; 86d6  ..............pP
	defb 000h,040h,050h,040h,000h,090h,040h,080h,040h,060h,040h,000h,050h,094h,050h,080h	; 86e6  .@P@..@.@`@.P.P.
	defb 050h,060h,050h,040h,040h,050h,000h,080h,040h,050h,050h,070h,000h,0b0h,000h,040h	; 86f6  P`P@@P..@PPp...@
	defb 050h,070h,000h,0d0h,003h,040h,002h,050h,002h,040h,002h,000h,097h,0e0h,050h,040h	; 8706  Pp...@.P.@....P@
	defb 050h,070h,050h,000h,060h,090h,060h,000h,000h,040h,070h,040h,0d0h,000h,070h,055h	; 8716  PpP.`.`..@p@..pU
	defb 0e5h,040h,050h,0e0h,000h	; 8726

; ----------------------------------------------------------------------
; DATOS rle_872B: los dibujos de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_872B
;   872B-8748); lo leen p00:4CFF, p00:4B3C (29 bytes)
;   0x872b..0x8748  (29 bytes)
DATA_rle_872B:
	defb 084h,080h,036h,06ch,000h,004h,006h,084h,080h,036h,06ch,000h,004h,066h,004h,006h	; 872b  ..6l.....6l..f..
	defb 084h,000h,06ch,036h,080h,004h,066h,084h,000h,06ch,036h,080h,000h	; 873b  ..l6..f..l6..

; ----------------------------------------------------------------------
; DATOS rle_8748: los colores de una entrada de la lista de graficos de
;   20:6C1E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8748
;   8748-876A); lo leen p00:4D11, p00:4B3C (34 bytes)
;   0x8748..0x876a  (34 bytes)
DATA_rle_8748:
	defb 0a0h,040h,050h,040h,000h,060h,090h,0e0h,0f0h,040h,050h,040h,000h,060h,090h,0e0h	; 8748  .@P@.`...@P@.`..
	defb 0f0h,0f0h,0e0h,090h,060h,000h,040h,050h,040h,0f0h,0e0h,090h,060h,000h,040h,050h	; 8758  ....`.@P@...`.@P
	defb 040h,000h	; 8768

; ----------------------------------------------------------------------
; DATOS sprites_876A: lista de dibujos de sprite (p00:50C2): de 3 en 3, el
;   primer dibujo y el RLE que va ahi; acaba en 0; lo leen p00:5142 (4 bytes)
;   0x876a..0x876e  (4 bytes)
DATA_sprites_876A:
	defb 0d0h,06fh,087h	; 876a
	defb 000h	; 876d

; ----------------------------------------------------------------------
; DATOS espejos_876E: lista de sprites copiados con espejo dentro de la VRAM
;   (p00:4E5A): de 4 en 4 (como, cuantos, origen, destino); acaba en 0; lo
;   leen p00:514C (1 bytes)
;   0x876e..0x876f  (1 bytes)
DATA_espejos_876E:
	defb 000h	; 876e

; ----------------------------------------------------------------------
; DATOS rle_876F: dibujos de sprite en RLE (p00:4B3C) de el juego de 0xE440 =
;   1, 3 de p00:50C2 (21:876A); se solapan 2 bloques: (rle_vram_876F
;   876F-87E5); lo leen p00:50D5, p00:4B3C (118 bytes)
;   0x876f..0x87e5  (118 bytes)
DATA_rle_876F:
	defb 086h,060h,098h,006h,001h,006h,018h,00dh,000h,084h,0e0h,010h,010h,00fh,00ah,000h	; 876f  .`..............
	defb 086h,038h,004h,03ch,0c3h,080h,080h,004h,000h,085h,070h,00ch,003h,004h,018h,005h	; 877f  .8.<......p.....
	defb 000h,089h,080h,040h,043h,044h,038h,008h,010h,060h,080h,004h,000h,085h,001h,0c1h	; 878f  ...@CD8..`......
	defb 03eh,008h,008h,003h,010h,081h,0e0h,005h,000h,083h,001h,00eh,0f0h,004h,020h,082h	; 879f  >............. .
	defb 040h,080h,007h,000h,002h,008h,082h,006h,003h,006h,000h,082h,033h,0cch,008h,000h	; 87af  @...........3...
	defb 082h,080h,040h,003h,020h,087h,030h,090h,070h,010h,008h,008h,007h,003h,000h,082h	; 87bf  ..@. .0.p.......
	defb 00ch,033h,004h,000h,002h,001h,084h,00eh,008h,010h,0f0h,004h,000h,083h,0ech,013h	; 87cf  .3..............
	defb 060h,003h,080h,007h,000h,000h	; 87df

; ----------------------------------------------------------------------
; DATOS rle_87E5: los dibujos de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_87E5
;   87E5-881E); lo leen p00:4CFF, p00:4B3C (57 bytes)
;   0x87e5..0x881e  (57 bytes)
DATA_rle_87E5:
	defb 007h,000h,081h,00ah,004h,000h,084h,003h,00fh,03eh,0fdh,003h,000h,082h,0fch,0aah	; 87e5  .........>......
	defb 003h,0ffh,088h,002h,004h,008h,030h,067h,00fh,0e0h,0fch,004h,000h,084h,0e0h,01fh	; 87f5  ......0g........
	defb 000h,0feh,004h,000h,084h,004h,014h,054h,054h,006h,000h,082h,003h,00fh,005h,000h	; 8805  .......TT.......
	defb 085h,007h,000h,03ah,000h,084h,006h,000h,000h	; 8815  ...:.....

; ----------------------------------------------------------------------
; DATOS rle_881E: los colores de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_881E
;   881E-8857); lo leen p00:4D11, p00:4B3C (57 bytes)
;   0x881e..0x8857  (57 bytes)
DATA_rle_881E:
	defb 007h,000h,081h,040h,004h,000h,084h,040h,050h,0e0h,0f0h,003h,000h,08dh,040h,080h	; 881e  ...@...@P.....@.
	defb 055h,0eeh,0ffh,080h,0e0h,0e0h,050h,040h,040h,0e0h,050h,004h,000h,084h,050h,054h	; 882e  U.....P@@.P...PT
	defb 000h,0e0h,004h,000h,084h,040h,050h,040h,0e0h,006h,000h,082h,050h,040h,005h,000h	; 883e  .....@P@....P@..
	defb 085h,080h,000h,0e0h,000h,0f5h,006h,000h,000h	; 884e  .........

; ----------------------------------------------------------------------
; DATOS rle_8857: los dibujos de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8857
;   8857-8862); lo leen p00:4CFF, p00:4B3C (11 bytes)
;   0x8857..0x8862  (11 bytes)
DATA_rle_8857:
	defb 083h,080h,036h,06ch,00ah,000h,083h,06ch,036h,080h,000h	; 8857  ..6l...l6..

; ----------------------------------------------------------------------
; DATOS rle_8862: los colores de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8862
;   8862-886D); lo leen p00:4D11, p00:4B3C (11 bytes)
;   0x8862..0x886d  (11 bytes)
DATA_rle_8862:
	defb 083h,040h,050h,040h,00ah,000h,083h,040h,050h,040h,000h	; 8862  .@P@...@P@.

; ----------------------------------------------------------------------
; DATOS rle_886D: los dibujos de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_886D
;   886D-8944); lo leen p00:4CFF, p00:4B3C (215 bytes)
;   0x886d..0x8944  (215 bytes)
DATA_rle_886D:
	defb 0b2h,000h,038h,067h,068h,071h,073h,067h,067h,000h,01ch,0e6h,016h,08eh,0ceh,0e6h	; 886d  ..8ghqsgg.......
	defb 0e6h,00ah,0aah,00ah,00ah,000h,038h,084h,041h,000h,07fh,0beh,01dh,00bh,047h,08eh	; 887d  ......8.A.....G.
	defb 01ch,063h,071h,068h,0ffh,07fh,07fh,000h,07fh,0c6h,08eh,016h,0ffh,0ffh,0feh,000h	; 888d  .cqh............
	defb 05dh,0feh,0d6h,003h,056h,085h,054h,000h,03bh,0feh,0aah,004h,0feh,082h,0aah,000h	; 889d  ]...V.T.........
	defb 006h,0ffh,082h,0a8h,0bbh,005h,054h,0aeh,014h,0c4h,030h,000h,007h,01fh,00fh,03fh	; 88ad  ......T...0....?
	defb 0c0h,001h,0ffh,0bfh,0deh,0efh,0f7h,0f6h,0f7h,080h,0ffh,0a2h,070h,0fch,0e0h,0f0h	; 88bd  ............p...
	defb 0ffh,000h,0feh,03ch,07ah,0f7h,0eeh,0dch,081h,07fh,0c0h,07fh,07fh,000h,057h,0d7h	; 88cd  ...<z.........W.
	defb 0d7h,080h,000h,05dh,05dh,000h,003h,0f7h,08ah,003h,001h,000h,07fh,03eh,081h,09ch	; 88dd  ...]]........>..
	defb 0ceh,0e7h,0f0h,005h,0feh,086h,000h,0feh,000h,000h,0bah,0bbh,004h,0ffh,083h,0feh	; 88ed  ................
	defb 0c1h,015h,004h,055h,086h,015h,001h,080h,036h,06ch,000h,004h,066h,0b8h,0f0h,007h	; 88fd  ...U....6l..f...
	defb 0dch,0d8h,0a1h,0a3h,0a3h,0a7h,0ffh,000h,03ch,0ffh,07eh,03eh,01ch,03ch,0f8h,00ch	; 890d  ........<.~>.<..
	defb 006h,002h,083h,0c1h,0c1h,0e1h,03fh,07fh,000h,000h,075h,075h,015h,0d5h,0feh,0ffh	; 891d  ......?...uu....
	defb 000h,0bdh,081h,0bdh,081h,0bdh,000h,07eh,000h,072h,02ch,07eh,055h,055h,0f0h,034h	; 892d  .......~.r,~UU.4
	defb 0f5h,0fdh,07dh,015h,055h,055h,000h	; 893d

; ----------------------------------------------------------------------
; DATOS rle_8944: los colores de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8944
;   8944-8A25); lo leen p00:4D11, p00:4B3C (225 bytes)
;   0x8944..0x8a25  (225 bytes)
DATA_rle_8944:
	defb 0b7h,000h,040h,050h,040h,040h,050h,0e0h,0f0h,000h,040h,050h,040h,040h,050h,0e0h	; 8944  ..@P@@P...@P@@P.
	defb 0f0h,050h,0e0h,050h,040h,000h,040h,080h,040h,000h,0e0h,050h,040h,040h,0e0h,0e0h	; 8954  .P.P@.@.@..P@@..
	defb 0f0h,0e0h,050h,040h,055h,0feh,040h,000h,050h,0e0h,050h,040h,055h,0ffh,040h,000h	; 8964  ..P@U.@.P.P@U.@.
	defb 050h,0e0h,0e0h,050h,040h,040h,050h,000h,003h,040h,0c3h,050h,0f0h,0e0h,0e0h,050h	; 8974  P..P@@P..@.P...P
	defb 000h,055h,0eeh,0ffh,0ffh,0eeh,055h,050h,040h,0e0h,0f0h,0f0h,0e0h,050h,040h,040h	; 8984  .U....UP@....P@@
	defb 050h,000h,040h,050h,0f5h,0e0h,040h,050h,0aah,040h,050h,0e0h,0f0h,0e0h,040h,040h	; 8994  P.@P..@P.@P...@@
	defb 0aah,050h,050h,0e0h,0f5h,054h,044h,000h,0a0h,0f0h,0e0h,050h,050h,040h,0a0h,0a0h	; 89a4  .PP..TD....PP@..
	defb 0a9h,0feh,040h,000h,0b0h,0a0h,090h,090h,000h,0f0h,040h,000h,0b0h,0a0h,003h,090h	; 89b4  ..@.......@.....
	defb 084h,000h,040h,050h,060h,004h,0a0h,08fh,040h,050h,0f0h,0e0h,040h,000h,0a0h,000h	; 89c4  ..@P`...@P..@...
	defb 000h,040h,050h,0eeh,0ffh,0eeh,055h,003h,040h,091h,050h,0e0h,0f0h,0f0h,050h,050h	; 89d4  .@P...U.@.P...PP
	defb 040h,050h,040h,000h,040h,050h,0e0h,0f0h,090h,0e0h,050h,003h,040h,002h,050h,08bh	; 89e4  @P@.@P....P.@.P.
	defb 0eeh,000h,040h,044h,054h,075h,0b7h,0f7h,0f0h,0e0h,050h,003h,040h,002h,050h,0a0h	; 89f4  ..@DTu....P.@.P.
	defb 0a9h,090h,000h,000h,040h,050h,0e0h,0f0h,0a0h,099h,000h,040h,050h,0e0h,0e0h,0f0h	; 8a04  ....@P.....@P...
	defb 000h,040h,000h,050h,0f0h,0e0h,0c0h,030h,040h,050h,050h,0e0h,0f0h,0f0h,0e0h,0e0h	; 8a14  .@.P...0@PP.....
	defb 000h	; 8a24

; ----------------------------------------------------------------------
; DATOS rle_8A25: los dibujos de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8A25
;   8A25-8A57); lo leen p00:4CFF, p00:4B3C (50 bytes)
;   0x8a25..0x8a57  (50 bytes)
DATA_rle_8A25:
	defb 0b0h,0f0h,007h,0dch,0d8h,0a1h,0a3h,0a3h,0a7h,00fh,000h,03ch,0ffh,07eh,03eh,03eh	; 8a25  ...........<.~>>
	defb 03ch,0f8h,00ch,006h,002h,083h,0c1h,0c1h,0e1h,0a7h,0a3h,0a3h,0a1h,0d8h,0dch,007h	; 8a35  <...............
	defb 0f0h,03ch,03eh,03eh,07eh,0ffh,03ch,000h,00fh,0e1h,0c1h,0c1h,083h,002h,006h,00ch	; 8a45  .<>>~.<.........
	defb 0f8h,000h	; 8a55

; ----------------------------------------------------------------------
; DATOS rle_8A57: los colores de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8A57
;   8A57-8A88); lo leen p00:4D11, p00:4B3C (49 bytes)
;   0x8a57..0x8a88  (49 bytes)
DATA_rle_8A57:
	defb 096h,090h,0e0h,050h,040h,060h,060h,080h,080h,0feh,000h,060h,066h,086h,098h,0a9h	; 8a57  ...P@``....`f...
	defb 0fah,0f0h,0e0h,050h,040h,060h,060h,004h,080h,002h,060h,094h,040h,050h,0e0h,090h	; 8a67  ...P@``...`.@P..
	defb 0fah,0a9h,098h,086h,066h,060h,000h,0feh,080h,080h,060h,060h,040h,050h,0e0h,0f0h	; 8a77  ....f`....``@P..
	defb 000h	; 8a87

; ----------------------------------------------------------------------
; DATOS rle_8A88: los dibujos de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8A88
;   8A88-8A95); lo leen p00:4CFF, p00:4B3C (13 bytes)
;   0x8a88..0x8a95  (13 bytes)
DATA_rle_8A88:
	defb 084h,080h,036h,06ch,000h,008h,006h,084h,000h,06ch,036h,080h,000h	; 8a88  ..6l.....l6..

; ----------------------------------------------------------------------
; DATOS rle_8A95: los colores de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8A95
;   8A95-8AA7); lo leen p00:4D11, p00:4B3C (18 bytes)
;   0x8a95..0x8aa7  (18 bytes)
DATA_rle_8A95:
	defb 090h,040h,050h,040h,000h,040h,050h,0e0h,0f0h,0f0h,0e0h,050h,040h,000h,040h,050h	; 8a95  .@P@.@P....P@.@P
	defb 040h,000h	; 8aa5

; ----------------------------------------------------------------------
; DATOS rle_8AA7: los dibujos de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8AA7
;   8AA7-8AB6); lo leen p00:4CFF, p00:4B3C (15 bytes)
;   0x8aa7..0x8ab6  (15 bytes)
DATA_rle_8AA7:
	defb 003h,07fh,005h,000h,003h,0f5h,00ah,000h,003h,07fh,005h,000h,003h,0f5h,000h	; 8aa7  ...............

; ----------------------------------------------------------------------
; DATOS rle_8AB6: los colores de una entrada de la lista de graficos de
;   20:6C50, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8AB6
;   8AB6-8ACD); lo leen p00:4D11, p00:4B3C (23 bytes)
;   0x8ab6..0x8acd  (23 bytes)
DATA_rle_8AB6:
	defb 083h,096h,0a9h,096h,005h,000h,083h,090h,0a0h,090h,00ah,000h,083h,096h,0a9h,096h	; 8ab6  ................
	defb 005h,000h,083h,090h,0a0h,090h,000h	; 8ac6

; ----------------------------------------------------------------------
; DATOS rle_8ACD: los dibujos de una entrada de la lista de graficos de
;   20:6C8A, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8ACD
;   8ACD-8B29); lo leen p00:4CFF, p00:4B3C (92 bytes)
;   0x8acd..0x8b29  (92 bytes)
DATA_rle_8ACD:
	defb 081h,018h,00dh,000h,082h,080h,0f0h,004h,000h,086h,001h,003h,000h,007h,0e0h,0c0h	; 8acd  ................
	defb 00bh,000h,085h,001h,003h,007h,0c0h,0c0h,003h,080h,008h,000h,085h,080h,0c0h,0e0h	; 8add  ................
	defb 01fh,003h,006h,000h,002h,003h,081h,001h,00ah,000h,083h,080h,0a0h,0b0h,005h,000h	; 8aed  ................
	defb 086h,001h,007h,001h,0feh,078h,060h,005h,000h,084h,00eh,006h,003h,001h,008h,000h	; 8afd  .....x`.........
	defb 08ch,001h,003h,007h,00ch,000h,000h,080h,0c0h,0e0h,0e8h,0ech,0eeh,005h,000h,002h	; 8b0d  ................
	defb 040h,089h,0e0h,001h,007h,007h,003h,003h,001h,001h,000h,000h	; 8b1d  @...........

; ----------------------------------------------------------------------
; DATOS rle_8B29: los colores de una entrada de la lista de graficos de
;   20:6C8A, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8B29
;   8B29-8B78); lo leen p00:4D11, p00:4B3C (79 bytes)
;   0x8b29..0x8b78  (79 bytes)
DATA_rle_8B29:
	defb 081h,0c0h,00dh,000h,002h,0c0h,004h,000h,002h,0c0h,081h,000h,003h,0c0h,00bh,000h	; 8b29  ................
	defb 081h,0c0h,004h,020h,083h,030h,020h,0c0h,008h,000h,085h,020h,030h,030h,020h,0c0h	; 8b39  ... .0 .... 00 .
	defb 006h,000h,003h,0c0h,00ah,000h,003h,020h,005h,000h,002h,020h,002h,030h,082h,020h	; 8b49  ....... ... .0.
	defb 0c0h,005h,000h,002h,020h,002h,0c0h,008h,000h,002h,030h,002h,0c0h,002h,000h,004h	; 8b59  .... .....0.....
	defb 0c0h,002h,020h,005h,000h,005h,0c0h,086h,030h,020h,020h,0c0h,0c0h,000h,000h	; 8b69  .. .....0  ....

; ----------------------------------------------------------------------
; DATOS rle_8B78: los dibujos de una entrada de la lista de graficos de
;   20:6C8A, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8B78
;   8B78-8CAB); lo leen p00:4CFF, p00:4B3C (307 bytes)
;   0x8b78..0x8cab  (307 bytes)
DATA_rle_8B78:
	defb 003h,000h,083h,010h,00ch,006h,003h,003h,003h,007h,002h,003h,002h,000h,088h,080h	; 8b78  ................
	defb 0c0h,0c0h,0d0h,0d8h,098h,038h,038h,003h,0f8h,086h,078h,070h,072h,066h,00eh,03eh	; 8b88  .....88...xprf.>
	defb 003h,07ch,002h,078h,09ah,073h,067h,00eh,07eh,07ch,07ch,0f8h,0f0h,0f0h,0c6h,01ch	; 8b98  .|.x.sg.~||.....
	defb 0fch,0f8h,0f0h,0e0h,0c0h,080h,000h,000h,001h,001h,003h,003h,007h,007h,00fh,004h	; 8ba8  ................
	defb 000h,0cfh,001h,003h,007h,01ch,000h,001h,007h,071h,0fch,0feh,0feh,07ch,007h,0f1h	; 8bb8  .........q...|..
	defb 0fch,0feh,0feh,0f0h,080h,000h,0c3h,0f8h,0feh,0ffh,0ffh,0f0h,000h,000h,0c0h,0f1h	; 8bc8  ................
	defb 07ch,07eh,07fh,0ffh,007h,000h,000h,0c0h,0f0h,078h,07ch,03eh,03fh,07fh,07fh,07eh	; 8bd8  |~.......x|>?..~
	defb 0fch,0e0h,0c0h,0c0h,040h,040h,00fh,01fh,01fh,03fh,040h,01eh,03fh,07fh,01fh,03fh	; 8be8  ....@@...?@.?..?
	defb 07fh,0feh,01ch,0c4h,0f0h,0e0h,001h,007h,01fh,07fh,07eh,0ffh,01ch,0c8h,03ch,0e0h	; 8bf8  ..........~...<.
	defb 00fh,003h,007h,086h,003h,001h,000h,090h,0c8h,0eeh,003h,0efh,090h,0cfh,0e8h,0ech	; 8c08  ................
	defb 0ceh,05fh,01fh,03fh,00fh,007h,0b0h,0b8h,038h,07ch,0fch,07eh,03eh,003h,03fh,081h	; 8c18  ._.?....8|.~>.?.
	defb 01ch,003h,018h,002h,008h,0a4h,000h,001h,003h,007h,000h,00fh,01fh,03fh,03ch,0feh	; 8c28  .............?<.
	defb 0feh,0fch,070h,020h,080h,080h,000h,000h,003h,001h,001h,0fch,0feh,0feh,000h,000h	; 8c38  ..p ............
	defb 0c0h,0f8h,007h,0c0h,0e0h,07dh,0f0h,0e6h,0cfh,04fh,003h,01fh,08dh,00eh,0c0h,098h	; 8c48  .....}...O......
	defb 0b8h,038h,078h,078h,0fch,0fch,01ch,03ch,03ch,07ch,004h,0f8h,09eh,007h,00fh,01fh	; 8c58  .8xx...<<|......
	defb 01eh,03eh,07eh,07eh,042h,007h,00fh,003h,071h,0fch,0feh,0feh,07ch,0c7h,0f1h,0fch	; 8c68  .>~~B...q...|...
	defb 0feh,0feh,0c0h,000h,000h,0f0h,0f8h,0feh,007h,0e0h,00fh,003h,000h,097h,0e0h,070h	; 8c78  ...............p
	defb 07ch,07eh,07fh,0ffh,007h,000h,000h,003h,03fh,0e0h,007h,003h,003h,0ceh,01eh,03fh	; 8c88  |~......?......?
	defb 01fh,00fh,00fh,006h,000h,006h,0e0h,084h,0c4h,01ch,07ch,0fch,003h,0f8h,083h,0f0h	; 8c98  ..........|.....
	defb 070h,0f0h,000h	; 8ca8

; ----------------------------------------------------------------------
; DATOS rle_8CAB: los colores de una entrada de la lista de graficos de
;   20:6C8A, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8CAB
;   8CAB-8DCE); lo leen p00:4D11, p00:4B3C (291 bytes)
;   0x8cab..0x8dce  (291 bytes)
DATA_rle_8CAB:
	defb 003h,000h,002h,0b0h,004h,030h,002h,020h,003h,0c0h,002h,000h,083h,030h,020h,020h	; 8cab  .....0. .....0
	defb 003h,0c0h,003h,020h,004h,030h,084h,020h,0c0h,020h,020h,005h,030h,084h,020h,0c0h	; 8cbb  ... .0. .  .0. .
	defb 020h,020h,004h,030h,085h,020h,0c0h,0c0h,020h,020h,003h,030h,084h,020h,000h,000h	; 8ccb    .0. ..  .0. ..
	defb 0c0h,004h,030h,082h,020h,0c0h,004h,000h,085h,020h,030h,030h,0b0h,000h,004h,020h	; 8cdb  ..0. .... 00...
	defb 09eh,030h,020h,0c0h,020h,020h,030h,030h,020h,0c0h,0c0h,000h,020h,020h,030h,033h	; 8ceb  .0 .  00 ...  03
	defb 022h,0c0h,000h,000h,020h,020h,030h,030h,020h,0cch,0c0h,000h,000h,020h,020h,003h	; 8cfb  "...  00 ....  .
	defb 030h,087h,020h,0c0h,020h,030h,020h,020h,030h,003h,0b0h,084h,020h,030h,030h,020h	; 8d0b  0. . 0  0... 00
	defb 003h,0c0h,003h,020h,002h,030h,003h,0c0h,08bh,020h,0c0h,020h,020h,030h,032h,022h	; 8d1b  ... .0... .  02"
	defb 0c0h,0c0h,020h,0b2h,003h,030h,087h,020h,0c0h,0c0h,000h,0c0h,0c0h,020h,003h,030h	; 8d2b  .. ..0. ..... .0
	defb 005h,020h,003h,030h,003h,020h,003h,030h,086h,020h,0c0h,0c0h,020h,030h,030h,003h	; 8d3b  . .0. .0. .. 00.
	defb 020h,002h,0b0h,08dh,000h,020h,020h,030h,000h,0c0h,0c0h,020h,0c0h,020h,030h,020h	; 8d4b   ....  0... . 0
	defb 020h,003h,0c0h,002h,000h,08fh,020h,030h,030h,0c0h,020h,030h,000h,000h,0c0h,0c0h	; 8d5b   ..... 00. 0....
	defb 0c2h,032h,032h,0c0h,020h,003h,0c0h,084h,020h,030h,030h,020h,003h,0c0h,002h,020h	; 8d6b  .22. ... 00 ...
	defb 002h,030h,08fh,020h,0c0h,0c0h,020h,020h,030h,030h,020h,020h,0c0h,0c0h,020h,020h	; 8d7b  .0. ..  00  ..
	defb 030h,020h,003h,0c0h,082h,020h,030h,003h,020h,003h,0c0h,08dh,020h,030h,020h,0c0h	; 8d8b  0 ... 0. ... 0 .
	defb 0c0h,000h,000h,0c0h,020h,030h,032h,0c2h,0c0h,003h,000h,098h,0c0h,020h,030h,020h	; 8d9b  .... 02...... 0
	defb 020h,0cch,0c0h,000h,000h,0c0h,0c0h,0b3h,030h,030h,020h,020h,030h,030h,020h,020h	; 8dab   .......00  00
	defb 0c0h,0c0h,000h,020h,003h,030h,081h,020h,003h,0c0h,002h,020h,003h,030h,083h,020h	; 8dbb  ... .0. ... .0.
	defb 0c0h,0c0h,000h	; 8dcb

; ----------------------------------------------------------------------
; DATOS rle_8DCE: los dibujos de una entrada de la lista de graficos de
;   20:6CA8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8DCE
;   8DCE-8E2A); lo leen p00:4CFF, p00:4B3C (92 bytes)
;   0x8dce..0x8e2a  (92 bytes)
DATA_rle_8DCE:
	defb 081h,018h,00dh,000h,082h,001h,00fh,004h,000h,086h,080h,0c0h,000h,0e0h,007h,003h	; 8dce  ................
	defb 00bh,000h,085h,080h,0c0h,0e0h,003h,003h,003h,001h,008h,000h,085h,001h,003h,007h	; 8dde  ................
	defb 0f8h,0c0h,006h,000h,002h,0c0h,081h,080h,00ah,000h,083h,001h,005h,00dh,005h,000h	; 8dee  ................
	defb 086h,080h,0e0h,080h,07fh,01eh,006h,005h,000h,084h,070h,060h,0c0h,080h,008h,000h	; 8dfe  ..........p`....
	defb 08ch,080h,0c0h,0e0h,030h,000h,000h,001h,003h,007h,017h,037h,077h,005h,000h,002h	; 8e0e  ....0......7w...
	defb 002h,089h,007h,080h,0e0h,0e0h,0c0h,0c0h,080h,080h,000h,000h	; 8e1e  ............

; ----------------------------------------------------------------------
; DATOS rle_8E2A: los colores de una entrada de la lista de graficos de
;   20:6CA8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8E2A
;   8E2A-8E79); lo leen p00:4D11, p00:4B3C (79 bytes)
;   0x8e2a..0x8e79  (79 bytes)
DATA_rle_8E2A:
	defb 081h,0c0h,00dh,000h,002h,0c0h,004h,000h,002h,0c0h,081h,000h,003h,0c0h,00bh,000h	; 8e2a  ................
	defb 081h,0c0h,004h,020h,083h,030h,020h,0c0h,008h,000h,085h,020h,030h,030h,020h,0c0h	; 8e3a  ... .0 .... 00 .
	defb 006h,000h,003h,0c0h,00ah,000h,003h,020h,005h,000h,002h,020h,002h,030h,082h,020h	; 8e4a  ....... ... .0.
	defb 0c0h,005h,000h,002h,020h,002h,0c0h,008h,000h,002h,030h,002h,0c0h,002h,000h,004h	; 8e5a  .... .....0.....
	defb 0c0h,002h,020h,005h,000h,005h,0c0h,086h,030h,020h,020h,0c0h,0c0h,000h,000h	; 8e6a  .. .....0  ....

; ----------------------------------------------------------------------
; DATOS rle_8E79: los dibujos de una entrada de la lista de graficos de
;   20:6CA8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8E79
;   8E79-8FAC); lo leen p00:4CFF, p00:4B3C (307 bytes)
;   0x8e79..0x8fac  (307 bytes)
DATA_rle_8E79:
	defb 003h,000h,083h,008h,030h,060h,003h,0c0h,003h,0e0h,002h,0c0h,002h,000h,088h,001h	; 8e79  ....0`..........
	defb 003h,003h,00bh,01bh,019h,01ch,01ch,003h,01fh,086h,01eh,00eh,04eh,066h,070h,07ch	; 8e89  ............Nfp|
	defb 003h,03eh,002h,01eh,09ah,0ceh,0e6h,070h,07eh,03eh,03eh,01fh,00fh,00fh,063h,038h	; 8e99  .>.....p~>>...c8
	defb 03fh,01fh,00fh,007h,003h,001h,000h,000h,080h,080h,0c0h,0c0h,0e0h,0e0h,0f0h,004h	; 8ea9  ?...............
	defb 000h,0cfh,080h,0c0h,0e0h,038h,000h,080h,0e0h,08eh,03fh,07fh,07fh,03eh,0e0h,08fh	; 8eb9  .....8....?..>..
	defb 03fh,07fh,07fh,00fh,001h,000h,0c3h,01fh,07fh,0ffh,0ffh,00fh,000h,000h,003h,08fh	; 8ec9  ?...............
	defb 03eh,07eh,0feh,0ffh,0e0h,000h,000h,003h,00fh,01eh,03eh,07ch,0fch,0feh,0feh,07eh	; 8ed9  >~........>|...~
	defb 03fh,007h,003h,003h,002h,002h,0f0h,0f8h,0f8h,0fch,002h,078h,0fch,0feh,0f8h,0fch	; 8ee9  ?..........x....
	defb 0feh,07fh,038h,023h,00fh,007h,080h,0e0h,0f8h,0feh,07eh,0ffh,038h,013h,03ch,007h	; 8ef9  ..8#......~.8.<.
	defb 0f0h,003h,0e0h,086h,0c0h,080h,000h,009h,013h,077h,003h,0f7h,090h,0f3h,017h,037h	; 8f09  .........w.....7
	defb 073h,0fah,0f8h,0fch,0f0h,0e0h,00dh,01dh,01ch,03eh,03fh,07eh,07ch,003h,0fch,081h	; 8f19  s........>?~|...
	defb 038h,003h,018h,002h,010h,0a4h,000h,080h,0c0h,0e0h,000h,0f0h,0f8h,0fch,03ch,07fh	; 8f29  8.............<.
	defb 07fh,03fh,00eh,004h,001h,001h,000h,000h,0c0h,080h,080h,03fh,07fh,07fh,000h,000h	; 8f39  .?.........?....
	defb 003h,01fh,0e0h,003h,007h,0beh,00fh,067h,0f3h,0f2h,003h,0f8h,08dh,070h,003h,019h	; 8f49  .......g.....p..
	defb 01dh,01ch,01eh,01eh,03fh,03fh,038h,03ch,03ch,03eh,004h,01fh,09eh,0e0h,0f0h,0f8h	; 8f59  ....??8<<>......
	defb 078h,07ch,07eh,07eh,042h,0e0h,0f0h,0c0h,08eh,03fh,07fh,07fh,03eh,0e3h,08fh,03fh	; 8f69  x|~~B....?..>..?
	defb 07fh,07fh,003h,000h,000h,00fh,01fh,07fh,0e0h,007h,0f0h,003h,000h,097h,007h,00eh	; 8f79  ................
	defb 03eh,07eh,0feh,0ffh,0e0h,000h,000h,0c0h,0fch,007h,0e0h,0c0h,0c0h,073h,078h,0fch	; 8f89  >~...........sx.
	defb 0f8h,0f0h,0f0h,060h,000h,006h,007h,084h,023h,038h,03eh,03fh,003h,01fh,083h,00fh	; 8f99  ...`....#8>?....
	defb 00eh,00fh,000h	; 8fa9

; ----------------------------------------------------------------------
; DATOS rle_8FAC: los colores de una entrada de la lista de graficos de
;   20:6CA8, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_8FAC
;   8FAC-90CF); lo leen p00:4D11, p00:4B3C (291 bytes)
;   0x8fac..0x90cf  (291 bytes)
DATA_rle_8FAC:
	defb 003h,000h,002h,0b0h,004h,030h,002h,020h,003h,0c0h,002h,000h,083h,030h,020h,020h	; 8fac  .....0. .....0
	defb 003h,0c0h,003h,020h,004h,030h,084h,020h,0c0h,020h,020h,005h,030h,084h,020h,0c0h	; 8fbc  ... .0. .  .0. .
	defb 020h,020h,004h,030h,085h,020h,0c0h,0c0h,020h,020h,003h,030h,084h,020h,000h,000h	; 8fcc    .0. ..  .0. ..
	defb 0c0h,004h,030h,082h,020h,0c0h,004h,000h,085h,020h,030h,030h,0b0h,000h,004h,020h	; 8fdc  ..0. .... 00...
	defb 09eh,030h,020h,0c0h,020h,020h,030h,030h,020h,0c0h,0c0h,000h,020h,020h,030h,033h	; 8fec  .0 .  00 ...  03
	defb 022h,0c0h,000h,000h,020h,020h,030h,030h,020h,0cch,0c0h,000h,000h,020h,020h,003h	; 8ffc  "...  00 ....  .
	defb 030h,087h,020h,0c0h,020h,030h,020h,020h,030h,003h,0b0h,084h,020h,030h,030h,020h	; 900c  0. . 0  0... 00
	defb 003h,0c0h,003h,020h,002h,030h,003h,0c0h,08bh,020h,0c0h,020h,020h,030h,032h,022h	; 901c  ... .0... .  02"
	defb 0c0h,0c0h,020h,0b2h,003h,030h,087h,020h,0c0h,0c0h,000h,0c0h,0c0h,020h,003h,030h	; 902c  .. ..0. ..... .0
	defb 005h,020h,003h,030h,003h,020h,003h,030h,086h,020h,0c0h,0c0h,020h,030h,030h,003h	; 903c  . .0. .0. .. 00.
	defb 020h,002h,0b0h,08dh,000h,020h,020h,030h,000h,0c0h,0c0h,020h,0c0h,020h,030h,020h	; 904c   ....  0... . 0
	defb 020h,003h,0c0h,002h,000h,08fh,020h,030h,030h,0c0h,020h,030h,000h,000h,0c0h,0c0h	; 905c   ..... 00. 0....
	defb 0c2h,032h,032h,0c0h,020h,003h,0c0h,084h,020h,030h,030h,020h,003h,0c0h,002h,020h	; 906c  .22. ... 00 ...
	defb 002h,030h,08fh,020h,0c0h,0c0h,020h,020h,030h,030h,020h,020h,0c0h,0c0h,020h,020h	; 907c  .0. ..  00  ..
	defb 030h,020h,003h,0c0h,082h,020h,030h,003h,020h,003h,0c0h,08dh,020h,030h,020h,0c0h	; 908c  0 ... 0. ... 0 .
	defb 0c0h,000h,000h,0c0h,020h,030h,032h,0c2h,0c0h,003h,000h,098h,0c0h,020h,030h,020h	; 909c  .... 02...... 0
	defb 020h,0cch,0c0h,000h,000h,0c0h,0c0h,0b3h,030h,030h,020h,020h,030h,030h,020h,020h	; 90ac   .......00  00
	defb 0c0h,0c0h,000h,020h,003h,030h,081h,020h,003h,0c0h,002h,020h,003h,030h,083h,020h	; 90bc  ... .0. ... .0.
	defb 0c0h,0c0h,000h	; 90cc

; ----------------------------------------------------------------------
; DATOS rle_90CF: los dibujos de una entrada de la lista de graficos de
;   20:6C7E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_90CF
;   90CF-91E1); lo leen p00:4CFF, p00:4B3C (274 bytes)
;   0x90cf..0x91e1  (274 bytes)
DATA_rle_90CF:
	defb 088h,00fh,03fh,07fh,07fh,0c0h,080h,0d6h,0d6h,004h,05eh,090h,0feh,080h,03eh,07eh	; 90cf  ..?.......^...>~
	defb 0eah,0eah,000h,0e0h,048h,0c0h,014h,0f8h,07eh,03eh,080h,0feh,004h,05eh,082h,02ah	; 90df  ....H...~>...^.*
	defb 0c0h,004h,0feh,083h,00eh,0e0h,080h,006h,0aah,091h,080h,06bh,06bh,001h,003h,0feh	; 90ef  ...........kk...
	defb 0feh,0fch,0f0h,0f8h,014h,0c0h,048h,0e0h,000h,0eah,0eah,003h,01fh,002h,07fh,0a5h	; 90ff  ......H.........
	defb 000h,0aeh,0aeh,000h,066h,068h,066h,068h,06eh,046h,05ch,00eh,09eh,038h,070h,0e0h	; 910f  ....fhfhnF\..8p.
	defb 0c0h,0c0h,001h,0eah,00ah,000h,000h,00fh,03fh,078h,0c0h,0aeh,0a0h,000h,000h,0f0h	; 911f  ........?x......
	defb 0fch,01eh,007h,0eeh,00eh,003h,003h,085h,001h,000h,080h,000h,088h,006h,0cch,084h	; 912f  ................
	defb 003h,0c3h,0c7h,0c7h,004h,08fh,094h,083h,00fh,03fh,07fh,07fh,040h,0d3h,0ebh,0f3h	; 913f  .........?..@...
	defb 0f9h,0feh,0ffh,03ch,0feh,07ch,02bh,0c0h,0c0h,0e0h,0e0h,004h,0f0h,084h,001h,0e9h	; 914f  ...<.|+.........
	defb 097h,0e0h,004h,06bh,083h,0e1h,005h,015h,005h,055h,09ah,0f0h,0fch,0feh,0feh,003h	; 915f  ...k.....U......
	defb 001h,06bh,06bh,05ch,046h,06eh,068h,066h,068h,066h,000h,0d6h,0d6h,080h,0c0h,07fh	; 916f  .kk\Fnhfhf......
	defb 07fh,03fh,00fh,0e0h,00eh,004h,0feh,087h,0c0h,02ah,0aeh,0aeh,000h,07fh,07fh,003h	; 917f  .?.......*......
	defb 01fh,09bh,001h,0c0h,0c0h,0e0h,070h,038h,09eh,00eh,0c0h,078h,03fh,00fh,000h,000h	; 918f  ......p8...x?...
	defb 00ah,0eah,007h,01eh,0fch,0f0h,000h,000h,0a0h,0aeh,080h,000h,001h,003h,003h,082h	; 919f  ................
	defb 00eh,0eeh,006h,0cch,082h,088h,000h,004h,08fh,002h,0c7h,092h,0c3h,003h,0ebh,0c3h	; 91af  ................
	defb 040h,07fh,07fh,03fh,00fh,083h,02bh,07ch,0feh,03ch,0ffh,0feh,0f9h,0f3h,004h,0f0h	; 91bf  @..?..+|.<......
	defb 002h,0e0h,002h,0c0h,004h,06bh,084h,0e0h,097h,0e9h,001h,005h,055h,083h,015h,005h	; 91cf  .....k......U...
	defb 0e1h,000h	; 91df

; ----------------------------------------------------------------------
; DATOS rle_91E1: los colores de una entrada de la lista de graficos de
;   20:6C7E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_91E1
;   91E1-92F4); lo leen p00:4D11, p00:4B3C (275 bytes)
;   0x91e1..0x92f4  (275 bytes)
DATA_rle_91E1:
	defb 002h,040h,0d7h,050h,0f0h,0feh,0feh,0e0h,0e0h,040h,050h,0e0h,0f0h,0e0h,0e0h,040h	; 91e1  .@.P.....@P....@
	defb 050h,0f0h,0e0h,0e0h,0e5h,080h,0e5h,090h,054h,050h,040h,0e0h,0e0h,0f0h,0e0h,050h	; 91f1  P.......TP@....P
	defb 040h,0a0h,0f0h,0f0h,0e0h,050h,040h,040h,0f0h,090h,040h,0e0h,0f0h,0e0h,050h,040h	; 9201  @....P@@..@...P@
	defb 090h,0e0h,0e0h,0feh,0feh,0f0h,050h,040h,040h,054h,090h,0e5h,080h,0e5h,0e0h,0e0h	; 9211  ......P@@T......
	defb 0f0h,0f0h,0e0h,0e0h,050h,040h,000h,0e0h,0f0h,040h,040h,0f0h,050h,0f0h,040h,050h	; 9221  ....P@...@@.P.@P
	defb 050h,040h,050h,0e0h,0f0h,0f0h,0e0h,040h,080h,050h,003h,040h,002h,080h,002h,086h	; 9231  P@P....@.P.@....
	defb 08ch,050h,040h,000h,000h,080h,080h,086h,086h,050h,050h,040h,070h,003h,040h,08ch	; 9241  .P@......PP@p.@.
	defb 080h,040h,040h,050h,050h,0f0h,050h,0e0h,0f0h,080h,0a0h,090h,005h,060h,005h,086h	; 9251  .@@PP.P......`..
	defb 083h,0a8h,098h,098h,003h,086h,085h,080h,098h,098h,0a9h,0fah,008h,080h,0c2h,040h	; 9261  ...............@
	defb 0e0h,054h,0f0h,040h,050h,0e0h,0f0h,040h,040h,050h,0e0h,050h,0e0h,0f0h,0f0h,040h	; 9271  .T.@P..@@P.P...@
	defb 040h,050h,0f0h,0feh,0feh,0e0h,0e0h,050h,050h,040h,0f0h,050h,0f0h,040h,040h,0e0h	; 9281  @P.....PP@.P.@@.
	defb 0e0h,0feh,0feh,0f0h,050h,040h,040h,0f0h,040h,040h,050h,0e0h,0f0h,0f0h,0a0h,0f0h	; 9291  ....P@@.@@P.....
	defb 0e0h,040h,040h,050h,0e0h,0e0h,0f0h,080h,040h,0e0h,0f0h,0f0h,0e0h,050h,040h,086h	; 92a1  .@@P....@....P@.
	defb 086h,004h,080h,084h,040h,050h,086h,086h,004h,080h,083h,040h,050h,080h,003h,040h	; 92b1  ....@P.....@P..@
	defb 084h,070h,040h,050h,050h,003h,0f0h,002h,0e0h,083h,050h,040h,040h,005h,060h,083h	; 92c1  .p@PP.....P@@.`.
	defb 080h,090h,080h,003h,098h,005h,086h,085h,0fah,0a9h,098h,098h,080h,003h,086h,008h	; 92d1  ................
	defb 080h,090h,0f0h,0e0h,050h,040h,0f0h,054h,0e0h,040h,0e0h,0e0h,0f0h,0e0h,050h,050h	; 92e1  ....P@.T.@....PP
	defb 040h,040h,000h	; 92f1

; ----------------------------------------------------------------------
; DATOS rle_92F4: los dibujos de una entrada de la lista de graficos de
;   20:6C7E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_92F4
;   92F4-92FD); lo leen p00:4CFF, p00:4B3C (9 bytes)
;   0x92f4..0x92fd  (9 bytes)
DATA_rle_92F4:
	defb 082h,000h,008h,00ch,00ch,082h,008h,000h,000h	; 92f4  .........

; ----------------------------------------------------------------------
; DATOS rle_92FD: los colores de una entrada de la lista de graficos de
;   20:6C7E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_92FD
;   92FD-930E); lo leen p00:4D11, p00:4B3C (17 bytes)
;   0x92fd..0x930e  (17 bytes)
DATA_rle_92FD:
	defb 002h,040h,002h,050h,083h,0f0h,050h,0e0h,004h,0f0h,002h,0e0h,083h,050h,040h,040h	; 92fd  .@.P..P......P@@
	defb 000h	; 930d

; ----------------------------------------------------------------------
; DATOS rle_930E: los dibujos de una entrada de la lista de graficos de
;   20:6CC6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_930E
;   930E-9319); lo leen p00:4CFF, p00:4B3C (11 bytes)
;   0x930e..0x9319  (11 bytes)
DATA_rle_930E:
	defb 006h,000h,085h,007h,03fh,0f8h,0e0h,080h,005h,000h,000h	; 930e  ....?......

; ----------------------------------------------------------------------
; DATOS rle_9319: los colores de una entrada de la lista de graficos de
;   20:6CC6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9319
;   9319-931C); lo leen p00:4D11, p00:4B3C (3 bytes)
;   0x9319..0x931c  (3 bytes)
DATA_rle_9319:
	defb 010h,090h,000h	; 9319

; ----------------------------------------------------------------------
; DATOS rle_931C: los dibujos de una entrada de la lista de graficos de
;   20:6CC6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_931C
;   931C-9384); lo leen p00:4CFF, p00:4B3C (104 bytes)
;   0x931c..0x9384  (104 bytes)
DATA_rle_931C:
	defb 005h,000h,083h,001h,01bh,07dh,003h,000h,08dh,003h,07bh,0fdh,0feh,001h,000h,0c0h	; 931c  .....}....{.....
	defb 078h,0beh,09fh,0cfh,020h,014h,004h,000h,093h,080h,0d8h,0eeh,0e7h,080h,0fbh,0fbh	; 932c  x... ...........
	defb 0f7h,0f4h,0e0h,0c0h,000h,0dfh,09fh,03fh,07fh,03fh,00fh,003h,006h,000h,083h,0f9h	; 933c  .......?.?......
	defb 07dh,0beh,004h,000h,084h,0feh,0ffh,008h,055h,004h,000h,084h,03ch,0feh,07fh,0bfh	; 934c  }.......U...<...
	defb 004h,000h,091h,0f0h,0feh,07eh,07fh,051h,0a0h,040h,0fbh,0fbh,0f7h,0ech,0c0h,040h	; 935c  .....~.Q.@.....@
	defb 0efh,0deh,09eh,0b8h,003h,000h,085h,005h,03fh,07fh,0ffh,03eh,003h,000h,088h,04ah	; 936c  ........?..>...J
	defb 005h,002h,03fh,07fh,0ffh,03fh,003h,000h	; 937c  ..?..?..

; ----------------------------------------------------------------------
; DATOS rle_9384: los colores de una entrada de la lista de graficos de
;   20:6CC6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9384
;   9384-93C4); lo leen p00:4D11, p00:4B3C (64 bytes)
;   0x9384..0x93c4  (64 bytes)
DATA_rle_9384:
	defb 00dh,090h,002h,096h,081h,0a9h,004h,090h,002h,096h,002h,0a9h,007h,090h,082h,096h	; 9384  ................
	defb 0a9h,003h,096h,004h,090h,003h,096h,00ah,090h,003h,096h,006h,090h,002h,0a9h,005h	; 9394  ................
	defb 090h,003h,096h,006h,090h,002h,096h,003h,0a9h,003h,096h,002h,090h,081h,0a9h,003h	; 93a4  ................
	defb 096h,004h,090h,083h,0a9h,096h,096h,005h,090h,003h,0a9h,002h,096h,003h,090h,000h	; 93b4  ................

; ----------------------------------------------------------------------
; DATOS rle_93C4: los dibujos de una entrada de la lista de graficos de
;   20:6CC6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_93C4
;   93C4-94BC); lo leen p00:4CFF, p00:4B3C (248 bytes)
;   0x93c4..0x94bc  (248 bytes)
DATA_rle_93C4:
	defb 0a3h,000h,007h,0f9h,0fch,0feh,02ah,055h,02ah,0f8h,0feh,0ffh,0ffh,014h,02ah,015h	; 93c4  ......*U*.....*.
	defb 08ah,03eh,09eh,0dfh,002h,005h,04ah,0a7h,047h,00ah,015h,00ah,097h,0cfh,0efh,0e7h	; 93d4  .>....J.G.......
	defb 0e7h,095h,04fh,0cfh,003h,0e7h,002h,0f3h,08ch,0f7h,040h,0a0h,0e0h,0f0h,0f2h,0f1h	; 93e4  ..O.......@.....
	defb 0f8h,0a7h,0f7h,0f3h,0fbh,003h,0f9h,081h,0fdh,006h,0f3h,081h,0f7h,009h,0f3h,0bfh	; 93f4  ................
	defb 0f9h,0fdh,0f9h,0f4h,0a9h,054h,0a8h,040h,0e7h,0e2h,0c5h,0a2h,045h,088h,0efh,0dfh	; 9404  .....T.@....E...
	defb 0e7h,0a2h,045h,08ah,005h,0dfh,09fh,07fh,0a5h,042h,085h,00ah,005h,0dfh,09fh,01fh	; 9414  ..E......B......
	defb 0f3h,0a3h,057h,0a7h,045h,08ah,005h,002h,07fh,0bfh,040h,0a5h,042h,0b3h,0d3h,0f3h	; 9424  ..W.E.....@.B...
	defb 00ah,095h,00ah,0c5h,04ah,0a7h,0e7h,0f3h,0ffh,0cah,045h,0a2h,0e5h,0e3h,0e3h,003h	; 9434  ....J.....E.....
	defb 0f3h,002h,0fbh,004h,0f9h,002h,0f3h,003h,0fbh,003h,0f3h,002h,0f9h,087h,0fbh,0fah	; 9444  ................
	defb 0f1h,0e2h,051h,0a0h,0f8h,003h,0f9h,094h,0f1h,0f3h,051h,0a2h,03fh,0bfh,0dfh,002h	; 9454  ..Q.......Q.?...
	defb 085h,042h,0a1h,052h,09fh,09fh,0efh,085h,042h,0a1h,053h,0a9h,003h,0f9h,005h,0fch	; 9464  .B.R....B.S.....
	defb 002h,0f9h,003h,0fch,003h,0feh,096h,030h,01fh,088h,041h,038h,01ch,000h,000h,00fh	; 9474  .......0..A8....
	defb 007h,067h,0c3h,003h,001h,031h,0e1h,018h,070h,080h,010h,038h,040h,003h,000h,096h	; 9484  .g...1..p..8@...
	defb 008h,038h,0e0h,000h,008h,018h,060h,008h,030h,080h,060h,018h,000h,008h,070h,004h	; 9494  .8....`.0.`...p.
	defb 018h,060h,000h,000h,060h,098h,003h,000h,08eh,018h,0f0h,006h,00ch,039h,003h,001h	; 94a4  .`..`........9..
	defb 089h,07dh,009h,001h,049h,033h,087h,000h	; 94b4  .}..I3..

; ----------------------------------------------------------------------
; DATOS rle_94BC: los colores de una entrada de la lista de graficos de
;   20:6CC6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_94BC
;   94BC-9560); lo leen p00:4D11, p00:4B3C (164 bytes)
;   0x94bc..0x9560  (164 bytes)
DATA_rle_94BC:
	defb 002h,090h,003h,096h,003h,0a9h,004h,090h,004h,0a9h,003h,096h,00ch,0a9h,081h,0b9h	; 94bc  ................
	defb 006h,0a9h,002h,0b9h,081h,096h,009h,0a9h,002h,0b9h,004h,0f9h,081h,0b9h,004h,0f9h	; 94cc  ................
	defb 083h,0b9h,0a9h,0a9h,004h,0f9h,081h,0b9h,003h,0a9h,002h,0f9h,00ch,0a9h,002h,096h	; 94dc  ................
	defb 005h,0a9h,002h,096h,081h,090h,005h,0a9h,002h,096h,081h,090h,008h,0a9h,002h,096h	; 94ec  ................
	defb 00dh,0a9h,082h,0b9h,090h,007h,0a9h,004h,0b9h,004h,0f9h,002h,0b9h,004h,0f9h,003h	; 94fc  ................
	defb 0b9h,007h,0a9h,002h,0b9h,006h,0a9h,083h,090h,096h,096h,005h,0a9h,083h,090h,096h	; 950c  ................
	defb 096h,008h,0a9h,002h,0b9h,003h,0f9h,004h,0a9h,003h,0b9h,086h,0f9h,0b0h,0b0h,0a0h	; 951c  ................
	defb 0b0h,0b0h,003h,0a0h,003h,090h,082h,0b0h,090h,005h,0a0h,002h,0b0h,081h,0a0h,003h	; 952c  ................
	defb 0b0h,084h,000h,0b0h,0b0h,0a0h,003h,0b0h,003h,0a0h,002h,0b0h,081h,0a0h,003h,0b0h	; 953c  ................
	defb 002h,0a0h,004h,0b0h,081h,0a0h,007h,0b0h,002h,0a0h,081h,090h,003h,0a0h,084h,090h	; 954c  ................
	defb 0b0h,090h,090h,000h	; 955c

; ----------------------------------------------------------------------
; DATOS rle_9560: los dibujos de una entrada de la lista de graficos de
;   20:6CE6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9560
;   9560-9572); lo leen p00:4CFF, p00:4B3C (18 bytes)
;   0x9560..0x9572  (18 bytes)
DATA_rle_9560:
	defb 090h,003h,000h,003h,007h,003h,001h,000h,000h,0fch,0f8h,000h,0fch,0f8h,0e0h,000h	; 9560  ................
	defb 000h,000h	; 9570

; ----------------------------------------------------------------------
; DATOS rle_9572: los colores de una entrada de la lista de graficos de
;   20:6CE6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9572
;   9572-9583); lo leen p00:4D11, p00:4B3C (17 bytes)
;   0x9572..0x9583  (17 bytes)
DATA_rle_9572:
	defb 002h,0c0h,083h,030h,020h,020h,003h,0c0h,085h,020h,0c0h,0c0h,020h,020h,003h,0c0h	; 9572  ...0  ... ..  ..
	defb 000h	; 9582

; ----------------------------------------------------------------------
; DATOS rle_9583: los dibujos de una entrada de la lista de graficos de
;   20:6CE6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9583
;   9583-9704); lo leen p00:4CFF, p00:4B3C (385 bytes)
;   0x9583..0x9704  (385 bytes)
DATA_rle_9583:
	defb 0a8h,01fh,07fh,08fh,070h,0bch,0cfh,0e7h,078h,0bch,0dfh,0e7h,073h,0bch,0dfh,067h	; 9583  ....p...x...s..g
	defb 01fh,000h,070h,0fdh,0e0h,03ch,007h,0e1h,0f8h,03ch,00eh,0c3h,0e1h,03ch,007h,05eh	; 9593  ..p..<...<...<.^
	defb 083h,0e0h,0f0h,038h,01ch,00eh,083h,0c1h,01fh,005h,000h,08ch,080h,0c0h,0c0h,0cfh	; 95a3  ...8............
	defb 0e3h,073h,019h,0c0h,0f0h,03ch,0ceh,0c0h,003h,0e0h,0b4h,0c0h,080h,000h,000h,060h	; 95b3  .s...<.........`
	defb 080h,0e0h,0f0h,0f0h,070h,000h,080h,007h,0c3h,0f1h,0f0h,0f8h,038h,01ch,01eh,0fch	; 95c3  ....p.......8...
	defb 079h,0c3h,0feh,0fch,0f1h,003h,086h,0e7h,0f1h,03ch,08fh,0c7h,0c3h,0e3h,061h,00fh	; 95d3  y........<....a.
	defb 083h,000h,038h,0ceh,0cfh,0e7h,0f3h,060h,020h,030h,010h,018h,008h,004h,006h,004h	; 95e3  ..8....` 0......
	defb 000h,0ffh,00fh,023h,047h,01ch,0feh,0ffh,0f0h,0ffh,00fh,0f0h,0feh,0f0h,01fh,0e0h	; 95f3  ...#G...........
	defb 00fh,07fh,01fh,0c0h,01fh,01fh,000h,0e0h,000h,0fch,0e0h,0fch,007h,0f8h,000h,07fh	; 9603  ................
	defb 030h,0ffh,083h,07fh,000h,000h,07fh,0feh,00fh,0feh,0f3h,001h,000h,01fh,0e3h,03ch	; 9613  0..............<
	defb 0ffh,0ffh,003h,0ffh,078h,000h,0feh,0f8h,01fh,0e3h,0f8h,0feh,07fh,00fh,0c0h,0cch	; 9623  ....x...........
	defb 0e6h,008h,08ch,0ffh,0f1h,0e0h,000h,07ch,018h,0ffh,0c0h,07fh,01fh,000h,07fh,03fh	; 9633  .......|.......?
	defb 03fh,080h,0e0h,0ffh,0ffh,0e0h,078h,060h,0c7h,07fh,000h,07fh,060h,07fh,03fh,00fh	; 9643  ?.....x`....`.?.
	defb 0e6h,00eh,078h,0f3h,0c7h,0f1h,0efh,083h,03ch,0ffh,0ffh,0c0h,01eh,07fh,000h,03ch	; 9653  ..x.....<......<
	defb 07fh,032h,080h,07fh,03ch,003h,0e3h,080h,01eh,07fh,0c3h,03ch,066h,042h,0e3h,080h	; 9663  .2..<......<fB..
	defb 01eh,0a0h,07fh,0c3h,018h,03ch,07eh,000h,070h,0fdh,0e0h,03ch,007h,0e1h,0f8h,03fh	; 9673  .....<~.p..<...?
	defb 00fh,0e6h,00eh,078h,0f3h,0c0h,0e1h,000h,0c3h,0c3h,000h,03ch,03ch,000h,03ch,0f3h	; 9683  ...x.......<<.<.
	defb 0f9h,0f9h,003h,07ch,002h,07eh,002h,0e0h,002h,0f0h,003h,0f8h,083h,078h,080h,080h	; 9693  ...|.~.......x..
	defb 004h,000h,09dh,080h,0c0h,0efh,083h,038h,0fch,0e2h,080h,038h,07ch,03ch,0ceh,087h	; 96a3  .......8...8|<..
	defb 003h,001h,000h,003h,007h,060h,020h,030h,010h,018h,008h,004h,006h,0c3h,081h,03ch	; 96b3  .....` 0.......<
	defb 003h,07eh,002h,03ch,002h,000h,081h,03ch,003h,07eh,002h,03ch,083h,0c3h,081h,03ch	; 96c3  .~.<...<.~.<...<
	defb 003h,07eh,002h,03ch,002h,000h,081h,03ch,003h,07eh,002h,03ch,082h,0c3h,081h,006h	; 96d3  .~.<...<.~.<....
	defb 000h,08bh,0efh,083h,018h,07eh,0c1h,080h,018h,043h,078h,03fh,00eh,005h,000h,090h	; 96e3  .....~...Cx?....
	defb 003h,000h,003h,007h,003h,003h,001h,000h,0fch,0f8h,000h,0fch,0f8h,0f8h,0f0h,0a8h	; 96f3  ................
	defb 000h	; 9703

; ----------------------------------------------------------------------
; DATOS rle_9704: los colores de una entrada de la lista de graficos de
;   20:6CE6, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9704
;   9704-9846); lo leen p00:4D11, p00:4B3C (322 bytes)
;   0x9704..0x9846  (322 bytes)
DATA_rle_9704:
	defb 088h,030h,020h,030h,030h,020h,020h,030h,030h,003h,020h,002h,030h,081h,020h,004h	; 9704  .0 00  00. .0. .
	defb 030h,083h,020h,0c2h,0c3h,003h,0c2h,081h,0c3h,005h,0c2h,002h,020h,007h,0c2h,008h	; 9714  0. ......... ...
	defb 020h,005h,0c0h,009h,020h,004h,0c0h,003h,020h,002h,0c0h,082h,000h,0c0h,006h,020h	; 9724   ... ... ......
	defb 002h,0c0h,082h,020h,0c0h,008h,020h,085h,0c0h,020h,0c0h,020h,0c0h,003h,020h,085h	; 9734  ... .. .. . .. .
	defb 000h,020h,0c0h,020h,0c0h,007h,020h,002h,0c0h,006h,020h,092h,0c0h,030h,030h,020h	; 9744  . . .. ... ..00
	defb 0c2h,0c0h,0c0h,020h,020h,0c2h,020h,020h,030h,020h,0c2h,0c0h,030h,0c2h,003h,0c0h	; 9754  ...  .  0 ..0...
	defb 08ah,030h,0c2h,0c2h,0c0h,030h,020h,020h,0f2h,020h,0c2h,003h,0c0h,002h,020h,002h	; 9764  .0...0  . .... .
	defb 0c2h,003h,0c0h,086h,030h,0c0h,030h,020h,020h,0c2h,003h,0c0h,086h,020h,0c2h,0c0h	; 9774  ....0.0  .... ..
	defb 0c0h,030h,020h,003h,0c0h,082h,030h,020h,003h,0c2h,087h,0c3h,0c2h,0c0h,020h,0f2h	; 9784  .0 ...0 ...... .
	defb 020h,0c2h,003h,0c0h,002h,020h,091h,0c0h,030h,020h,020h,0c0h,0c0h,020h,0f2h,0c2h	; 9794   .... ..0  .. ..
	defb 0c0h,0c0h,020h,0f2h,0c0h,030h,0c2h,0c0h,004h,020h,084h,0c2h,0c0h,0c0h,030h,003h	; 97a4  .. ..0... ....0.
	defb 020h,081h,030h,004h,020h,08ah,0f2h,0c2h,0c0h,0c0h,030h,020h,020h,030h,020h,020h	; 97b4   .0. .....0  0
	defb 003h,0c0h,002h,020h,083h,030h,020h,020h,004h,0c0h,084h,030h,020h,0c2h,0c3h,003h	; 97c4  ... .0  ...0 ...
	defb 0c2h,083h,030h,0c2h,0c0h,004h,020h,002h,0c0h,002h,0c2h,097h,0c0h,032h,032h,0c0h	; 97d4  ..0... ......22.
	defb 0f3h,020h,0b0h,020h,0b0h,020h,0b0h,0b0h,0f0h,020h,020h,0b0h,020h,0b0h,020h,0b0h	; 97e4  . . . ...  . . .
	defb 0f0h,020h,020h,005h,0c0h,003h,020h,089h,030h,020h,0c0h,0c0h,070h,0f0h,040h,050h	; 97f4  .  ... .0 ..p.@P
	defb 070h,003h,0f0h,081h,0c0h,007h,020h,002h,060h,002h,0c0h,002h,060h,084h,080h,086h	; 9804  p..... .`...`...
	defb 098h,0f8h,004h,060h,094h,080h,086h,098h,0f8h,0c0h,0c0h,040h,040h,050h,054h,075h	; 9814  ...`.......@@PTu
	defb 0f5h,000h,000h,040h,040h,050h,054h,075h,0f5h,00ah,0c0h,081h,030h,003h,020h,082h	; 9824  ...@@PTu....0. .
	defb 030h,020h,00ah,0c0h,083h,030h,020h,020h,003h,0c0h,082h,020h,0c0h,004h,020h,002h	; 9834  0 ...0  ... .. .
	defb 0c0h,000h	; 9844

; ----------------------------------------------------------------------
; DATOS sin identificar  0x9846..0x9bfd  (951 bytes)
DATA_9846:
	defb 090h,000h,06ch,008h,034h,018h,00eh,007h,001h,0d0h,080h,0a0h,0a0h,040h,060h,060h	; 9846  ..l.4........@``
	defb 020h,004h,000h,086h,003h,01eh,0e1h,0ech,000h,070h,007h,000h,081h,001h,005h,003h	; 9856   ........p......
	defb 083h,001h,000h,080h,005h,0c0h,081h,080h,004h,000h,084h,0c0h,020h,090h,050h,006h	; 9866  ............ .P.
	defb 028h,088h,050h,090h,090h,0a0h,020h,040h,040h,080h,005h,000h,085h,00fh,030h,047h	; 9876  (.P... @@.....0G
	defb 098h,060h,004h,000h,084h,0c0h,030h,0c8h,034h,003h,000h,08ah,00fh,030h,047h,088h	; 9886  .`....0.4....0G.
	defb 090h,090h,088h,047h,030h,00fh,005h,000h,088h,0e0h,010h,0c8h,024h,014h,014h,090h	; 9896  ...G0.......$...
	defb 048h,004h,024h,082h,048h,090h,000h,002h,0e0h,083h,050h,0f0h,050h,003h,040h,082h	; 98a6  H.$.H.....P.P.@.
	defb 0f0h,0e0h,004h,050h,006h,040h,084h,0f0h,0e0h,050h,040h,006h,050h,004h,0f0h,083h	; 98b6  ...P.@...P@.P...
	defb 0e0h,050h,050h,004h,040h,084h,0f0h,0e0h,050h,050h,004h,040h,006h,0c0h,085h,020h	; 98c6  .PP.@...PP.@...
	defb 030h,030h,020h,030h,003h,020h,009h,0c0h,004h,020h,012h,0c0h,084h,020h,030h,030h	; 98d6  00 0. ... ... 00
	defb 020h,004h,0c0h,005h,020h,002h,030h,002h,020h,003h,0c0h,086h,020h,030h,030h,020h	; 98e6   ... .0. ... 00
	defb 0c0h,0c0h,000h,003h,02ah,081h,00ah,008h,000h,084h,014h,05dh,055h,055h,000h,002h	; 98f6  ....*......]UU..
	defb 020h,00ch,030h,002h,020h,000h,007h,02ah,083h,00ah,028h,0bah,005h,0aah,085h,0bah	; 9906   .0. ..*..(.....
	defb 0aah,0aeh,0aah,06ah,003h,02ah,081h,03ah,003h,0aah,081h,0bah,005h,0aah,087h,0bah	; 9916  ...j.*.:........
	defb 0aeh,0aah,0aah,0aeh,0aah,06ah,005h,0aah,081h,0bah,003h,0aah,087h,0bah,0aeh,0aah	; 9926  .....j..........
	defb 0aah,0aeh,0aah,0eah,000h,004h,0c0h,002h,020h,004h,030h,002h,020h,004h,0c0h,004h	; 9936  ........ .0. ...
	defb 020h,008h,0c0h,004h,020h,004h,0c0h,008h,020h,008h,0c0h,004h,020h,000h,004h,0bdh	; 9946   ... ... ... ...
	defb 084h,018h,0e7h,042h,000h,004h,0ffh,095h,018h,0e7h,042h,000h,000h,0eeh,0e0h,00eh	; 9956  ...B......B.....
	defb 0aah,0ffh,0dfh,059h,000h,0f8h,0feh,009h,0e7h,0f7h,0f0h,0f3h,0f4h,003h,0b5h,085h	; 9966  ...Y............
	defb 0f5h,0b4h,0b5h,0b4h,02fh,003h,0adh,094h,0afh,02dh,0adh,02dh,000h,07ah,07ah,040h	; 9976  ..../....-.-.zz@
	defb 01eh,056h,056h,000h,006h,0e6h,006h,0e6h,0aeh,0feh,0deh,0d6h,000h,08fh,0b0h,030h	; 9986  .VV............0
	defb 020h,0c0h,030h,0c0h,062h,020h,020h,030h,020h,0c0h,030h,0c0h,062h,003h,030h,088h	; 9996   .0.b  0 .0.b.0.
	defb 020h,0c0h,020h,020h,030h,0c0h,020h,020h,003h,0c0h,002h,020h,083h,030h,020h,030h	; 99a6   .  0.  ... .0 0
	defb 005h,020h,083h,0c0h,020h,030h,005h,020h,002h,0c0h,085h,030h,0c0h,020h,020h,0c0h	; 99b6  . .. 0. ...0.  .
	defb 004h,030h,086h,020h,0c0h,020h,020h,030h,0c0h,000h,088h,07eh,0ffh,042h,0ffh,042h	; 99c6  .0. .  0...~.B.B
	defb 0ffh,042h,07eh,003h,0bdh,002h,000h,003h,0bdh,082h,05ah,000h,004h,05ah,08bh,000h	; 99d6  .B~.......Z..Z..
	defb 05ah,0bdh,066h,0dbh,0bdh,0bdh,0dbh,066h,0bdh,000h,006h,03ch,002h,000h,0b9h,03ch	; 99e6  Z.f....f...<...<
	defb 000h,03ch,000h,03ch,000h,03ch,081h,0bdh,0a5h,0bdh,0bdh,0a5h,0bdh,081h,0dbh,000h	; 99f6  .<.<.<..........
	defb 07eh,05ah,05ah,07eh,000h,0dbh,000h,07bh,07bh,000h,07eh,0a8h,0a0h,000h,0e0h,0cfh	; 9a06  ~ZZ~...{{.~.....
	defb 0bbh,07eh,07dh,040h,00fh,0ffh,07eh,080h,07eh,0e7h,0e7h,047h,057h,056h,0f0h,0f0h	; 9a16  .~}@..~.~..GWV..
	defb 0c0h,0d0h,018h,0fch,01ch,0fch,080h,0b0h,004h,030h,085h,0b0h,080h,05ch,038h,0b8h	; 9a26  .........0...\8.
	defb 004h,0b0h,084h,080h,0c0h,0fch,008h,005h,06ch,0b2h,000h,07eh,07eh,03ch,042h,018h	; 9a36  ........l..~~<B.
	defb 042h,0dbh,0fbh,0fbh,000h,055h,055h,000h,0fbh,0fbh,0dbh,042h,0dbh,0c3h,05ah,0c3h	; 9a46  B....UU....B..Z.
	defb 0dbh,0c3h,0d4h,0f5h,035h,0a5h,0a5h,035h,0f5h,0d4h,04fh,04fh,050h,015h,075h,07fh	; 9a56  ....5..5..OOP.u.
	defb 055h,050h,000h,0d8h,0d8h,001h,07eh,003h,028h,02eh,07eh,05ah,003h,0ffh,082h,0c3h	; 9a66  UP....~.(.~Z....
	defb 0dbh,003h,05ah,09fh,0c3h,0ffh,0ffh,0dbh,05ah,000h,07eh,03ch,07eh,03ch,099h,07eh	; 9a76  ..Z.....Z.~<~<.~
	defb 07eh,0ffh,03ch,07eh,07eh,0e7h,07eh,07eh,0dbh,05ah,0ffh,03ch,07eh,07eh,05ah,07eh	; 9a86  ~.<~~.~~.Z.<~~Z~
	defb 07eh,066h,0dbh,006h,03ch,081h,0dbh,004h,03ch,087h,05ah,042h,07eh,05ah,05ah,07eh	; 9a96  ~f..<...<.ZB~ZZ~
	defb 07eh,003h,03ch,085h,07eh,042h,05ah,081h,0dbh,003h,07eh,0b2h,000h,042h,03ch,042h	; 9aa6  ~.<.~BZ...~..B<B
	defb 018h,05ah,07eh,03ch,07eh,07eh,000h,07bh,07bh,000h,07eh,080h,0b8h,000h,0dbh,0c3h	; 9ab6  .Z~<~~.{{.~.....
	defb 03ch,018h,000h,05ah,03ch,03ch,000h,000h,057h,056h,055h,076h,055h,076h,000h,000h	; 9ac6  <..Z<<..WVUvUv..
	defb 0ffh,0aah,055h,0aah,055h,0aah,000h,000h,0eah,0aah,06ah,0aeh,06ah,0aeh,000h,08ah	; 9ad6  ..U.U.....j.j...
	defb 040h,0c0h,050h,0c0h,050h,0c0h,040h,040h,090h,0a0h,004h,080h,090h,0a0h,090h,060h	; 9ae6  @.P.P.@@.......`
	defb 060h,080h,090h,090h,080h,060h,060h,050h,050h,0e0h,0f0h,0f0h,0e0h,004h,050h,086h	; 9af6  `....``PP.....P.
	defb 0e0h,0f0h,0f0h,0e0h,050h,050h,003h,0f0h,081h,0e0h,003h,050h,08fh,040h,050h,050h	; 9b06  ....PP.....P.@PP
	defb 0e0h,0f0h,0f0h,0e0h,050h,050h,040h,040h,050h,0f0h,0f0h,050h,003h,040h,081h,0e0h	; 9b16  ....PP@@P..P.@..
	defb 004h,050h,003h,040h,0a7h,0f0h,0e0h,050h,040h,040h,0e0h,040h,040h,050h,050h,0e0h	; 9b26  .P.@...P@@.@@PP.
	defb 0f0h,0e0h,050h,040h,0f0h,050h,040h,040h,0f0h,0f0h,0e0h,050h,040h,040h,050h,0f0h	; 9b36  ..P@.P@@...P@@P.
	defb 0f0h,050h,040h,040h,0f0h,0e0h,0e0h,0f0h,0e0h,050h,050h,0e0h,004h,0f0h,004h,0e0h	; 9b46  .P@@.....PP.....
	defb 002h,050h,083h,040h,0f0h,0e0h,004h,050h,081h,0e0h,004h,0f0h,083h,0e0h,050h,0f0h	; 9b56  .P.@...P......P.
	defb 003h,0e0h,002h,050h,0e4h,0e0h,050h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,050h,040h,050h	; 9b66  ...P..PP.....P@P
	defb 0f0h,050h,050h,0e0h,050h,040h,0c0h,040h,040h,050h,0c0h,050h,0c0h,0e0h,0f0h,050h	; 9b76  .PP.P@.@@P.P...P
	defb 040h,040h,050h,050h,0e0h,0e0h,0feh,050h,0f5h,0e0h,0f0h,0e0h,050h,040h,040h,0f0h	; 9b86  @@PP...P....P@@.
	defb 0e5h,040h,0feh,0e0h,054h,054h,040h,0e4h,0f4h,0f4h,0e0h,050h,0e4h,050h,050h,040h	; 9b96  .@..TT@....P.PP@
	defb 0f0h,0e4h,0e4h,050h,0e4h,0e4h,050h,040h,0e4h,0e5h,0f0h,0f0h,0e5h,0e4h,040h,0f0h	; 9ba6  ...P..P@......@.
	defb 0f0h,0e0h,0e0h,0f0h,0e0h,0e0h,0f0h,050h,0f4h,054h,054h,040h,0f0h,0f0h,0e0h,050h	; 9bb6  .......P.TT@...P
	defb 0e0h,0e0h,0f4h,054h,040h,000h,0f4h,0e5h,040h,003h,050h,082h,0f0h,050h,003h,040h	; 9bc6  ...T@...@.P..P.@
	defb 002h,050h,083h,0e0h,050h,040h,004h,050h,085h,054h,050h,050h,0feh,050h,003h,040h	; 9bd6  .P..P@.P.TPP.P.@
	defb 085h,050h,0e0h,0f0h,0e0h,0f0h,003h,040h,085h,050h,0e0h,0f0h,0e0h,0f0h,003h,040h	; 9be6  .P.....@.P.....@
	defb 085h,050h,0e0h,0f0h,0e0h,0f0h,000h	; 9bf6

; ----------------------------------------------------------------------
; DATOS rle_9BFD: los dibujos de una entrada de la lista de graficos de
;   20:6D7C, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9BFD
;   9BFD-9C25); lo leen p00:4CFF, p00:4B3C (40 bytes)
;   0x9bfd..0x9c25  (40 bytes)
DATA_rle_9BFD:
	defb 002h,000h,081h,00ah,007h,000h,083h,0e0h,000h,0f0h,005h,000h,088h,0f0h,000h,0f8h	; 9bfd  ................
	defb 001h,002h,07fh,000h,07fh,004h,000h,085h,037h,000h,004h,002h,001h,005h,000h,085h	; 9c0d  ........7.......
	defb 080h,040h,020h,080h,040h,003h,000h,000h	; 9c1d  .@ .@...

; ----------------------------------------------------------------------
; DATOS rle_9C25: los colores de una entrada de la lista de graficos de
;   20:6D7C, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9C25
;   9C25-9C43); lo leen p00:4D11, p00:4B3C (30 bytes)
;   0x9c25..0x9c43  (30 bytes)
DATA_rle_9C25:
	defb 00ah,0f0h,083h,0feh,0f0h,0feh,005h,0f0h,08ah,054h,0f0h,054h,040h,040h,0e0h,0f0h	; 9c25  .........T.T@@..
	defb 0e8h,0f0h,0f0h,004h,050h,002h,0e0h,006h,0f0h,081h,0e0h,007h,0f0h,000h	; 9c35  ....P.........

; ----------------------------------------------------------------------
; DATOS rle_9C43: los dibujos de una entrada de la lista de graficos de
;   20:6D7C, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9C43
;   9C43-9CC3); lo leen p00:4CFF, p00:4B3C (128 bytes)
;   0x9c43..0x9cc3  (128 bytes)
DATA_rle_9C43:
	defb 002h,000h,002h,001h,002h,002h,087h,004h,000h,084h,080h,004h,000h,004h,003h,000h	; 9c43  ................
	defb 084h,0f9h,0fbh,0ebh,06bh,008h,000h,086h,06bh,0ebh,0fbh,0f9h,07fh,07fh,00ch,000h	; 9c53  ....k...k.......
	defb 002h,07fh,002h,003h,002h,006h,004h,00ch,092h,0eah,00ah,000h,000h,00fh,038h,0e0h	; 9c63  ..............8.
	defb 0c0h,0aeh,0a0h,000h,000h,0f0h,00ch,003h,000h,0ffh,00fh,003h,003h,086h,001h,000h	; 9c73  ................
	defb 000h,040h,000h,020h,003h,000h,002h,010h,004h,00ch,002h,006h,002h,003h,09bh,000h	; 9c83  .@. ............
	defb 080h,0c0h,0e0h,0f0h,0f8h,0fch,0ffh,080h,0c0h,020h,008h,000h,000h,00ah,0eah,000h	; 9c93  ......... ......
	defb 001h,004h,060h,000h,000h,0a0h,0aeh,000h,000h,001h,003h,003h,092h,00fh,0ffh,000h	; 9ca3  ..`.............
	defb 050h,040h,020h,01ah,068h,044h,000h,010h,009h,080h,021h,080h,000h,090h,000h,000h	; 9cb3  P@ .hD....!.....

; ----------------------------------------------------------------------
; DATOS rle_9CC3: los colores de una entrada de la lista de graficos de
;   20:6D7C, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9CC3
;   9CC3-9D12); lo leen p00:4D11, p00:4B3C (79 bytes)
;   0x9cc3..0x9d12  (79 bytes)
DATA_rle_9CC3:
	defb 008h,0f0h,002h,0e0h,006h,0f0h,082h,040h,050h,00ch,0e0h,083h,050h,040h,0e0h,00eh	; 9cc3  .......@P...P@..
	defb 040h,084h,0e0h,060h,090h,090h,005h,080h,081h,050h,003h,040h,004h,060h,081h,050h	; 9cd3  @..`.....P.@.`.P
	defb 003h,040h,004h,060h,002h,050h,082h,040h,0f0h,004h,040h,011h,060h,083h,040h,0e0h	; 9ce3  .@.`.P.@..@.`.@.
	defb 0f0h,004h,0e0h,006h,060h,082h,040h,050h,006h,060h,082h,040h,050h,004h,040h,082h	; 9cf3  ....`.@P.`.@P.@.
	defb 0f0h,040h,003h,050h,083h,080h,090h,0b0h,004h,080h,081h,0b0h,007h,090h,000h	; 9d03  .@.P...........

; ----------------------------------------------------------------------
; DATOS rle_9D12: los dibujos de una entrada de la lista de graficos de
;   20:6D7C, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9D12
;   9D12-9DDB); lo leen p00:4CFF, p00:4B3C (201 bytes)
;   0x9d12..0x9ddb  (201 bytes)
DATA_rle_9D12:
	defb 002h,003h,0ffh,006h,007h,00eh,00dh,00eh,00dh,0eah,00ah,000h,000h,00fh,035h,0eah	; 9d12  ..............5.
	defb 0d5h,0aeh,0a0h,000h,000h,0f0h,05ch,0abh,055h,0c0h,040h,0a0h,060h,0a0h,050h,0b0h	; 9d22  ......\.U.@.`.P.
	defb 050h,0aah,055h,0aah,055h,0aah,055h,0aah,055h,0aah,055h,0aah,055h,0aah,055h,0aah	; 9d32  P.U.U.U.U.U.U.U.
	defb 055h,00eh,00dh,00eh,00dh,006h,007h,002h,003h,0aah,0d5h,03ah,00fh,000h,000h,00ah	; 9d42  U..........:....
	defb 0eah,0aah,055h,0aeh,0f0h,000h,000h,0a0h,0aeh,0b0h,050h,0b0h,050h,0a0h,040h,0a0h	; 9d52  ..U.......P.P.@.
	defb 040h,000h,01fh,02fh,03fh,03fh,01fh,01fh,03fh,000h,0ffh,020h,0f3h,0ddh,0e0h,05bh	; 9d62  @../??..?.. ...[
	defb 0f4h,000h,0ffh,0ffh,02ah,0efh,0ffh,03bh,0ffh,000h,068h,0feh,0fdh,0ech,0c5h,01fh	; 9d72  ....*.....h.....
	defb 0d5h,000h,0f8h,0a2h,068h,084h,0c4h,091h,09dh,000h,0c4h,011h,0c6h,0b4h,002h,000h	; 9d82  ....h...........
	defb 044h,03fh,081h,01fh,005h,03fh,0c1h,000h,0ffh,03bh,0ffh,0efh,02ah,0ffh,0ffh,000h	; 9d92  D?...?......*...
	defb 0f4h,043h,0feh,0d5h,011h,0f7h,022h,000h,00bh,0e1h,0b0h,091h,0cch,0f6h,0bfh,000h	; 9da2  .C....".........
	defb 028h,009h,0a8h,005h,0b4h,009h,0f2h,000h,000h,01fh,03fh,07fh,07fh,03fh,01fh,000h	; 9db2  (.........?..?..
	defb 000h,012h,0c0h,0fbh,026h,0ffh,0aah,000h,000h,012h,015h,07eh,0a6h,0ffh,0aah,000h	; 9dc2  ....&......~....
	defb 000h,0e9h,0bbh,043h,0f4h,0b6h,0edh,000h,000h	; 9dd2  ...C.....

; ----------------------------------------------------------------------
; DATOS rle_9DDB: los colores de una entrada de la lista de graficos de
;   20:6D7C, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9DDB
;   9DDB-9E66); lo leen p00:4D11, p00:4B3C (139 bytes)
;   0x9ddb..0x9e66  (139 bytes)
DATA_rle_9DDB:
	defb 083h,080h,0a0h,090h,005h,080h,081h,050h,003h,040h,004h,080h,081h,050h,003h,040h	; 9ddb  .......P.@...P.@
	defb 00ch,060h,008h,080h,008h,060h,00eh,080h,082h,040h,050h,006h,060h,082h,040h,050h	; 9deb  .`...`...@P.`.@P
	defb 009h,060h,081h,080h,003h,086h,085h,096h,0b6h,0b6h,080h,080h,003h,098h,003h,0b9h	; 9dfb  .`..............
	defb 003h,080h,002h,098h,083h,090h,0b9h,0b0h,005h,080h,003h,0b0h,005h,080h,083h,0b0h	; 9e0b  ................
	defb 090h,0b0h,004h,080h,003h,090h,084h,0b0h,0b6h,0b6h,096h,003h,086h,002h,060h,085h	; 9e1b  ..............`.
	defb 0b0h,0b9h,090h,098h,098h,003h,080h,002h,0b9h,005h,098h,002h,090h,002h,0b0h,002h	; 9e2b  ................
	defb 090h,084h,080h,098h,0b0h,0b0h,004h,090h,003h,080h,08ah,000h,086h,096h,0b6h,0b6h	; 9e3b  ................
	defb 096h,086h,000h,000h,098h,003h,0b9h,085h,090h,098h,000h,000h,098h,003h,0b9h,082h	; 9e4b  ................
	defb 090h,098h,003h,080h,083h,090h,0b9h,0b0h,003h,080h,000h	; 9e5b  ...........

; ----------------------------------------------------------------------
; DATOS rle_9E66: los dibujos de una entrada de la lista de graficos de
;   20:6D7C, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9E66
;   9E66-9F0E); lo leen p00:4CFF, p00:4B3C (168 bytes)
;   0x9e66..0x9f0e  (168 bytes)
DATA_rle_9E66:
	defb 002h,07fh,093h,000h,016h,00ch,01ah,002h,00ch,01ch,00eh,002h,004h,00eh,000h,07fh	; 9e66  ................
	defb 07fh,002h,005h,005h,012h,012h,003h,00dh,0a9h,00ch,004h,000h,02ah,000h,004h,00ch	; 9e76  ............*...
	defb 00ch,04ch,04ch,02eh,001h,0f0h,001h,0e8h,0e0h,055h,08bh,062h,061h,023h,099h,026h	; 9e86  .LL......U.ba#.&
	defb 0dbh,057h,08fh,01bh,067h,02fh,09fh,027h,0dbh,0dbh,027h,09fh,02fh,067h,01bh,08fh	; 9e96  .W..g/.'..'./g..
	defb 057h,073h,006h,07fh,0ach,073h,081h,05ah,024h,05ah,05ah,024h,05ah,081h,02ah,055h	; 9ea6  Ws...s.Z$ZZ$Z.*U
	defb 02ah,055h,02ah,055h,02ah,055h,005h,015h,055h,0d5h,0d5h,055h,015h,005h,080h,03fh	; 9eb6  *U*U*U..U..U...?
	defb 05fh,07fh,07fh,05fh,03fh,080h,001h,0fch,0fah,0feh,0feh,0fah,0fch,001h,0e1h,005h	; 9ec6  _.._?...........
	defb 015h,00ah,055h,0b3h,015h,005h,0e1h,002h,0bfh,008h,0bfh,0ffh,00ch,028h,0ffh,0fdh	; 9ed6  ..U..........(..
	defb 009h,002h,0ffh,001h,090h,060h,0fdh,0bfh,080h,03fh,07fh,06fh,077h,07fh,07fh,0fdh	; 9ee6  .....`...?.ow...
	defb 001h,0fch,0feh,0f6h,0eeh,0feh,0feh,07fh,07fh,077h,06fh,07fh,03fh,080h,0bfh,0feh	; 9ef6  .........wo.?...
	defb 0feh,0eeh,0f6h,0feh,0fch,001h,0fdh,000h	; 9f06  ........

; ----------------------------------------------------------------------
; DATOS rle_9F0E: los colores de una entrada de la lista de graficos de
;   20:6D7C, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_9F0E
;   9F0E-9FBB); lo leen p00:4D11, p00:4B3C (173 bytes)
;   0x9f0e..0x9fbb  (173 bytes)
DATA_rle_9F0E:
	defb 081h,0e0h,003h,040h,088h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,0e0h,050h,003h,040h,08ah	; 9f0e  ...@.P......P.@.
	defb 0e0h,040h,080h,090h,040h,040h,090h,080h,060h,060h,005h,050h,003h,060h,095h,080h	; 9f1e  .@..@@..``.P.`..
	defb 060h,0e0h,060h,0e0h,090h,0a0h,0e0h,0e0h,060h,0e0h,0f0h,0f0h,0e0h,0e0h,040h,050h	; 9f2e  `.`.....`.....@P
	defb 0e0h,0e0h,0f0h,0f0h,004h,0e0h,002h,0f0h,002h,0e0h,090h,050h,040h,040h,050h,0e0h	; 9f3e  ...........P@@P.
	defb 0f0h,0f0h,0e0h,050h,040h,050h,050h,0e0h,0f0h,0e0h,0e0h,003h,050h,08dh,0e0h,0f0h	; 9f4e  ...P@PP.....P...
	defb 0f0h,0e0h,0e0h,050h,040h,050h,0e0h,0f0h,0f0h,0e0h,050h,003h,040h,085h,050h,0e0h	; 9f5e  ...P@P....P.@.P.
	defb 0f0h,0e0h,050h,003h,040h,085h,050h,0e0h,0f0h,0e0h,050h,004h,040h,09ah,050h,0e0h	; 9f6e  ..P.@.P...P.@.P.
	defb 050h,0e0h,0f0h,0f0h,0e0h,0e0h,0f0h,0e0h,050h,050h,040h,040h,0feh,0e0h,0feh,0e0h	; 9f7e  P.......PP@@....
	defb 0e0h,0feh,0feh,0e0h,0e0h,0feh,0feh,0e0h,003h,0feh,0a1h,0e0h,050h,040h,040h,050h	; 9f8e  ............P@@P
	defb 0e0h,0e0h,0f0h,0e0h,050h,040h,040h,050h,0e0h,0e0h,0f0h,0e0h,0f0h,0f0h,0e0h,0e0h	; 9f9e  ....P@@P........
	defb 050h,040h,040h,050h,0f0h,0f0h,0e0h,0e0h,050h,040h,040h,050h,000h	; 9fae  P@@P....P@@P.

; ----------------------------------------------------------------------
; DATOS rle_9FBB: los dibujos de una entrada de la lista de graficos de
;   20:6D7C, en RLE (p00:4B3C) (sigue en el banco 22, en 0xA000); se solapan 2
;   bloques: (rle_vram_9FBB 9FBB-A000); lo leen p00:4CFF, p00:4B3C (69 bytes)
;   0x9fbb..0xa000  (69 bytes)
DATA_rle_9FBB:
	defb 002h,07fh,087h,000h,0feh,0feh,0beh,0feh,0fch,000h,00bh,0ffh,083h,0dfh,0ffh,0dfh	; 9fbb  ................
	defb 003h,0ffh,081h,0bfh,003h,0ffh,083h,0fdh,0ffh,000h,007h,07fh,0a2h,000h,07fh,043h	; 9fcb  ...............C
	defb 07fh,043h,07fh,07fh,07bh,0d6h,07eh,03fh,018h,00bh,003h,003h,001h,0b5h,084h,0ffh	; 9fdb  .C..{.~?........
	defb 003h,0fah,0cbh,0fah,0fbh,07fh,035h,03fh,01fh,00fh,007h,001h,000h,07eh,05ah,006h	; 9feb  ......5?.....~Z.
	defb 07eh,088h,0fbh,02ah,0aah	; 9ffb

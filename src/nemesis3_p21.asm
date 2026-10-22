; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 21 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS rle_vram_7FF0_cola: graficos comprimidos a la VRAM (p00:4B3C): 0
;   acaba, n < 0x80 repite el byte de detras, 0x80 y una direccion nueva,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0
;   (sigue del banco 20); lo leen p00:4B3C (219 bytes)
;   0x8000..0x80db  (219 bytes)
DATA_rle_vram_7FF0_cola:
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
; DATOS rle_vram_80DB: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (193
;   bytes)
;   0x80db..0x819c  (193 bytes)
DATA_rle_vram_80DB:
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
; DATOS rle_vram_819C: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (114
;   bytes)
;   0x819c..0x820e  (114 bytes)
DATA_rle_vram_819C:
	defb 0c0h,012h,009h,005h,012h,08dh,066h,039h,00eh,048h,090h,0a0h,048h,0b1h,066h,09ch	; 819c  ......f9.H..H.f.
	defb 070h,045h,023h,01bh,00dh,045h,023h,033h,01bh,0a2h,0c4h,0d8h,0b0h,0a1h,0c2h,0cch	; 81ac  pE#..E#3........
	defb 0d8h,00dh,085h,042h,042h,025h,025h,015h,01ah,0b0h,0a1h,042h,042h,0a4h,0a4h,0a8h	; 81bc  ...BB%%....BB...
	defb 058h,00bh,00dh,005h,003h,047h,047h,027h,027h,0d0h,0b0h,0a0h,0c0h,0e2h,0e2h,0e4h	; 81cc  X....GG''.......
	defb 0e4h,003h,017h,0adh,016h,00eh,08eh,04dh,04dh,0e8h,0d8h,0d0h,0e0h,0f1h,0f1h,072h	; 81dc  .......MM......r
	defb 072h,02dh,02dh,035h,015h,08dh,05ch,05eh,02eh,0b4h,0b4h,0ach,0a8h,0b0h,039h,07bh	; 81ec  r--5..\^......9{
	defb 0fah,02fh,093h,094h,09ah,04ah,056h,06eh,02ah,076h,064h,0ach,0a8h,098h,0b4h,0b4h	; 81fc  ./...JVn*vd.....
	defb 094h,000h	; 820c

; ----------------------------------------------------------------------
; DATOS rle_vram_820E: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (74
;   bytes)
;   0x820e..0x8258  (74 bytes)
DATA_rle_vram_820E:
	defb 086h,070h,050h,040h,050h,070h,040h,003h,050h,002h,040h,002h,050h,002h,040h,087h	; 820e  .pP@Pp@.P.@.P.@.
	defb 050h,040h,040h,050h,050h,040h,070h,004h,050h,002h,040h,081h,050h,005h,040h,081h	; 821e  P@@PP@p.P.@.P.@.
	defb 070h,005h,050h,008h,040h,004h,050h,002h,070h,002h,050h,004h,040h,081h,050h,003h	; 822e  p.P.@.P.p.P.@.P.
	defb 040h,081h,070h,005h,050h,082h,070h,050h,008h,040h,003h,050h,002h,040h,083h,070h	; 823e  @.p.P.pP.@.P.@.p
	defb 050h,050h,00ah,040h,082h,070h,050h,00ch,040h,000h	; 824e  PP.@.pP.@.

; ----------------------------------------------------------------------
; DATOS rle_vram_8258: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (114
;   bytes)
;   0x8258..0x82ca  (114 bytes)
DATA_rle_vram_8258:
	defb 0f0h,008h,004h,006h,092h,04bh,02dh,095h,06ah,008h,084h,042h,023h,031h,098h,067h	; 8258  .....K-.j..B#1.g
	defb 0feh,040h,030h,00ch,003h,081h,0ceh,031h,0ceh,000h,00ch,003h,000h,0c0h,06fh,09fh	; 8268  .@0....1......o.
	defb 0ffh,00ch,003h,000h,0c0h,06fh,09fh,0feh,0e1h,006h,003h,0e0h,037h,0cfh,0ffh,003h	; 8278  .....o......7...
	defb 0fch,000h,080h,0e7h,038h,08fh,0f6h,0c0h,03fh,06ah,095h,02dh,04bh,092h,006h,004h	; 8288  ....8...?j.-K...
	defb 008h,0fch,067h,098h,031h,023h,046h,088h,000h,0ceh,031h,0ceh,081h,003h,00ch,030h	; 8298  ..g.1#F...1....0
	defb 040h,0c0h,09fh,06fh,0c0h,000h,003h,00ch,000h,0e3h,0fch,0ffh,00fh,0f0h,000h,003h	; 82a8  @..o............
	defb 004h,0fdh,003h,0ffh,0cfh,036h,0e1h,006h,008h,0c0h,0dfh,0a6h,09bh,074h,083h,00eh	; 82b8  .....6.......t..
	defb 070h,000h	; 82c8

; ----------------------------------------------------------------------
; DATOS rle_vram_82CA: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (67
;   bytes)
;   0x82ca..0x830d  (67 bytes)
DATA_rle_vram_82CA:
	defb 004h,070h,004h,050h,003h,070h,005h,050h,002h,070h,005h,050h,005h,070h,004h,050h	; 82ca  .p.P.p.P.p.P.p.P
	defb 002h,070h,081h,000h,005h,050h,081h,070h,006h,050h,081h,070h,007h,050h,081h,070h	; 82da  .p...P.p.P.p.P.p
	defb 006h,040h,002h,050h,006h,040h,083h,050h,000h,050h,005h,040h,002h,050h,081h,054h	; 82ea  .@.P.@.P.P.@.P.T
	defb 005h,040h,003h,050h,004h,040h,081h,000h,003h,050h,005h,040h,002h,050h,007h,040h	; 82fa  .@.P.@...P.@.P.@
	defb 081h,050h,000h	; 830a

; ----------------------------------------------------------------------
; DATOS rle_vram_830D: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (82
;   bytes)
;   0x830d..0x835f  (82 bytes)
DATA_rle_vram_830D:
	defb 0d0h,000h,002h,021h,010h,008h,00dh,046h,033h,044h,024h,092h,0cah,062h,002h,091h	; 830d  ...!...F3D$..b..
	defb 049h,019h,08ch,065h,020h,0cch,033h,0fch,01fh,050h,020h,098h,0c8h,064h,001h,090h	; 831d  I..e .3..P ..d..
	defb 048h,019h,08ch,045h,020h,01ch,00bh,001h,003h,050h,020h,098h,0c8h,064h,001h,093h	; 832d  H..E ....P ..d..
	defb 048h,019h,08ch,045h,020h,01ch,00bh,011h,003h,00dh,047h,027h,09eh,078h,0b5h,06dh	; 833d  H..E .....G'.x.m
	defb 02dh,00dh,047h,027h,09eh,078h,0b4h,06ch,02ch,00dh,047h,027h,09eh,078h,0b0h,060h	; 834d  -.G'.x.l,.G'.x.`
	defb 020h,000h	; 835d

; ----------------------------------------------------------------------
; DATOS rle_vram_835F: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (58
;   bytes)
;   0x835f..0x8399  (58 bytes)
DATA_rle_vram_835F:
	defb 005h,050h,08dh,070h,040h,040h,070h,050h,050h,040h,040h,050h,070h,040h,040h,070h	; 835f  .P.p@@pPP@@Pp@@p
	defb 004h,040h,002h,050h,005h,040h,085h,060h,050h,040h,040h,070h,004h,040h,082h,050h	; 836f  .@.P.@.`P@@p.@.P
	defb 060h,005h,040h,002h,060h,002h,040h,081h,070h,004h,040h,002h,060h,006h,040h,002h	; 837f  `.@.`.@.p.@.`.@.
	defb 050h,005h,040h,003h,050h,004h,040h,004h,050h,000h	; 838f  P.@.P.@.P.

; ----------------------------------------------------------------------
; DATOS sin identificar  0x8399..0x876a  (977 bytes)
DATA_8399:
	defb 083h,080h,036h,06ch,00ah,000h,083h,06ch,036h,080h,000h,083h,040h,050h,040h,00ah	; 8399  ..6l...l6...@P@.
	defb 000h,083h,040h,050h,040h,000h,006h,000h,085h,0c0h,0f0h,007h,0c8h,007h,00bh,000h	; 83a9  ..@P@...........
	defb 082h,003h,00fh,005h,000h,083h,003h,00ch,030h,004h,002h,084h,000h,007h,002h,00fh	; 83b9  ........0.......
	defb 005h,000h,089h,007h,080h,038h,000h,001h,002h,004h,000h,010h,007h,000h,083h,018h	; 83c9  .....8..........
	defb 07ah,01bh,004h,000h,08eh,003h,00fh,03eh,0fdh,0c0h,000h,080h,0c0h,060h,060h,09ah	; 83d9  z......>.....``.
	defb 0dbh,002h,000h,006h,002h,084h,001h,002h,002h,000h,003h,001h,083h,000h,040h,040h	; 83e9  ..............@@
	defb 006h,000h,003h,00bh,081h,001h,003h,005h,091h,000h,002h,004h,008h,030h,060h,01dh	; 83f9  .............0`.
	defb 05dh,05dh,0c0h,000h,080h,0c0h,060h,060h,09ah,0dbh,000h,006h,000h,085h,070h,040h	; 8409  ]]....``......p@
	defb 040h,075h,040h,00bh,000h,082h,070h,040h,005h,000h,083h,020h,040h,040h,003h,0e0h	; 8419  @u@...p@... @@..
	defb 085h,0f0h,000h,0e0h,050h,0e0h,005h,000h,089h,020h,070h,070h,000h,050h,040h,040h	; 8429  ....P.... pp.P@@
	defb 000h,050h,007h,000h,083h,0e0h,0f0h,0e0h,004h,000h,005h,040h,089h,000h,0e0h,0e0h	; 8439  .P.........@....
	defb 0f0h,050h,0e0h,0f4h,0f0h,000h,006h,0f0h,003h,0e0h,081h,000h,003h,0e0h,083h,000h	; 8449  .P..............
	defb 0f0h,0f0h,006h,000h,007h,0e0h,082h,000h,080h,005h,040h,08ah,070h,0e0h,040h,000h	; 8459  ..........@.p.@.
	defb 0e0h,0e0h,0f0h,050h,0e0h,0e4h,000h,002h,000h,09bh,080h,040h,030h,08eh,061h,01eh	; 8469  ...P.......@0.a.
	defb 0f0h,00fh,000h,007h,078h,080h,0f0h,00fh,000h,087h,078h,080h,001h,00eh,0f0h,000h	; 8479  ....x.....x.....
	defb 003h,0f8h,007h,038h,0c0h,004h,000h,091h,0fch,003h,000h,0f0h,00ch,007h,0f8h,000h	; 8489  ...8............
	defb 003h,0ech,010h,02fh,0c0h,000h,000h,07ch,083h,003h,000h,08ch,0fch,003h,000h,000h	; 8499  .../...|........
	defb 080h,060h,010h,008h,006h,0c1h,03ch,0ffh,004h,000h,081h,0ffh,004h,000h,086h,0ffh	; 84a9  .`....<.........
	defb 000h,000h,0ffh,000h,000h,000h,002h,000h,002h,0f0h,081h,0a0h,003h,070h,002h,0a0h	; 84b9  .............p..
	defb 08eh,000h,030h,030h,070h,0a0h,0a0h,000h,0a0h,0f0h,030h,0f0h,0f0h,0a0h,000h,004h	; 84c9  ..00p.....0.....
	defb 0a0h,081h,0f0h,004h,000h,002h,070h,08fh,000h,030h,030h,0f0h,0a0h,000h,0a0h,070h	; 84d9  ......p..00....p
	defb 070h,030h,0f0h,000h,000h,0a0h,0a0h,003h,000h,084h,030h,0f0h,000h,000h,005h,0a0h	; 84e9  p0........0.....
	defb 002h,0f0h,081h,0aah,004h,000h,081h,033h,004h,000h,086h,0aah,000h,000h,077h,000h	; 84f9  .......3......w.
	defb 000h,000h,002h,000h,004h,0ffh,002h,000h,000h,002h,000h,086h,099h,0bbh,0bbh,099h	; 8509  ................
	defb 000h,000h,000h,0ffh,007h,005h,007h,00eh,09ch,039h,073h,0edh,000h,01ch,0e6h,016h	; 8519  .........9s.....
	defb 08eh,0ceh,0e6h,0e6h,0e0h,020h,080h,0c0h,0ebh,0ebh,0cbh,0ebh,003h,001h,001h,007h	; 8529  ..... ..........
	defb 0d7h,0d3h,0d7h,0d7h,0bfh,0deh,0efh,0f7h,0f6h,0f7h,080h,04fh,0a0h,070h,0fch,0fch	; 8539  ...........O.p..
	defb 018h,0e0h,000h,0feh,000h,07fh,0beh,01dh,00bh,047h,08eh,01ch,07dh,0a0h,0ffh,07dh	; 8549  .........G..}..}
	defb 038h,071h,0c3h,0a2h,0f0h,007h,05ch,058h,001h,043h,083h,087h,0ffh,000h,03ch,0ffh	; 8559  8q....\X.C....<.
	defb 07eh,03eh,03eh,03ch,0f8h,00ch,006h,002h,083h,0c1h,0c1h,0e1h,0e0h,07fh,000h,000h	; 8569  ~>><............
	defb 075h,015h,015h,055h,045h,00eh,03fh,060h,018h,007h,000h,07fh,000h,080h,0d7h,0d7h	; 8579  u..UE.?`........
	defb 057h,000h,07fh,0ffh,015h,015h,055h,015h,055h,055h,0d5h,0d5h,03ch,042h,03ch,0c3h	; 8589  W.....U.UU..<B<.
	defb 024h,0bdh,042h,0b5h,0dbh,0d0h,0c2h,0d9h,006h,00eh,01eh,02eh,018h,0fdh,07bh,0f7h	; 8599  $.B...........{.
	defb 0efh,06fh,0efh,001h,0f2h,070h,008h,068h,048h,0aah,0bah,05dh,0ebh,0dbh,042h,0bdh	; 85a9  .o...p.hH..]..B.
	defb 024h,03ch,03ch,042h,03ch,099h,065h,079h,076h,06bh,04dh,02ah,066h,03ch,07ch,078h	; 85b9  $<<B<.eyvkM*f<|x
	defb 078h,070h,0f0h,0e0h,0e0h,0beh,0beh,0bfh,01fh,003h,05fh,091h,00fh,005h,00ah,016h	; 85c9  xp........_.....
	defb 02dh,05ch,0bbh,078h,0f7h,06ch,05ch,038h,078h,070h,070h,060h,060h,003h,02fh,081h	; 85d9  -\.x.l\8xpp``./.
	defb 007h,003h,017h,081h,003h,004h,066h,0c4h,000h,06ch,036h,080h,000h,03fh,080h,0cfh	; 85e9  ......f..l6..?..
	defb 0e0h,073h,038h,000h,080h,0f0h,081h,0fch,086h,0f3h,099h,00ch,03ch,02fh,000h,0fdh	; 85f9  .s8.........</..
	defb 01dh,020h,06fh,0f7h,000h,0a0h,000h,0e0h,0f8h,0feh,000h,05dh,038h,071h,0e2h,0d0h	; 8609  . o........]8q..
	defb 0b8h,07dh,0feh,000h,000h,02fh,080h,06dh,080h,0d7h,0d0h,000h,00ah,0abh,00bh,000h	; 8619  .}.../.m........
	defb 000h,038h,084h,0c1h,05dh,000h,0feh,0ffh,07eh,016h,08eh,0c6h,000h,0a6h,030h,0c0h	; 8629  .8..]...~.....0.
	defb 040h,050h,0e0h,0e0h,050h,040h,000h,040h,050h,040h,040h,050h,070h,0f0h,040h,040h	; 8639  @P..P@.@P@@Pp.@@
	defb 020h,030h,0e4h,0f4h,0f5h,0e4h,0e0h,0e0h,020h,030h,0e4h,0f5h,0f5h,0e4h,040h,040h	; 8649   0...... 0....@@
	defb 050h,070h,0e0h,0f0h,003h,040h,002h,070h,08ah,0e7h,0e5h,0f4h,000h,050h,000h,040h	; 8659  Pp...@.p.....P.@
	defb 040h,050h,050h,003h,040h,098h,0e0h,050h,055h,0e0h,070h,040h,040h,0e5h,0e0h,050h	; 8669  @PP.@..PU.p@@..P
	defb 040h,050h,060h,060h,080h,080h,0eeh,000h,060h,066h,086h,098h,0a9h,0fah,004h,0e0h	; 8679  @P``....`f......
	defb 002h,060h,002h,080h,098h,075h,070h,000h,000h,040h,050h,070h,0f0h,040h,050h,050h	; 8689  .`...up..@Pp.@PP
	defb 075h,074h,074h,000h,050h,000h,040h,040h,050h,070h,000h,060h,099h,008h,0f0h,08fh	; 8699  utt.P.@@Pp.`....
	defb 050h,0f0h,050h,0e7h,0f0h,0e0h,0e0h,0f4h,040h,065h,040h,060h,040h,050h,070h,003h	; 86a9  P.P.....@e@`@Pp.
	defb 040h,003h,050h,08ch,070h,040h,040h,050h,040h,060h,080h,090h,0a0h,0b0h,0f0h,0f4h	; 86b9  @.P.p@@P@`......
	defb 003h,0f0h,085h,075h,050h,040h,040h,0e0h,007h,0f0h,010h,0e0h,083h,0f0h,0e0h,0e0h	; 86c9  ...uP@@.........
	defb 003h,0f0h,002h,0e0h,008h,0f0h,008h,0e0h,0a8h,0f0h,0e0h,070h,050h,000h,040h,050h	; 86d9  ...........pP.@P
	defb 040h,000h,090h,040h,080h,040h,060h,040h,000h,050h,094h,050h,080h,050h,060h,050h	; 86e9  @..@.@`@.P.P.P`P
	defb 040h,040h,050h,000h,080h,040h,050h,050h,070h,000h,0b0h,000h,040h,050h,070h,000h	; 86f9  @@P..@PPp...@Pp.
	defb 0d0h,003h,040h,002h,050h,002h,040h,002h,000h,097h,0e0h,050h,040h,050h,070h,050h	; 8709  ..@.P.@....P@PpP
	defb 000h,060h,090h,060h,000h,000h,040h,070h,040h,0d0h,000h,070h,055h,0e5h,040h,050h	; 8719  .`.`..@p@..pU.@P
	defb 0e0h,000h,084h,080h,036h,06ch,000h,004h,006h,084h,080h,036h,06ch,000h,004h,066h	; 8729  ....6l.....6l..f
	defb 004h,006h,084h,000h,06ch,036h,080h,004h,066h,084h,000h,06ch,036h,080h,000h,0a0h	; 8739  ....l6..f..l6...
	defb 040h,050h,040h,000h,060h,090h,0e0h,0f0h,040h,050h,040h,000h,060h,090h,0e0h,0f0h	; 8749  @P@.`...@P@.`...
	defb 0f0h,0e0h,090h,060h,000h,040h,050h,040h,0f0h,0e0h,090h,060h,000h,040h,050h,040h	; 8759  ...`.@P@...`.@P@
	defb 000h	; 8769

; ----------------------------------------------------------------------
; DATOS leido_876A: 4 bytes que leen p00:50C2, p00:50C6, p00:50C8 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p00:50C2, p00:50C6, p00:50C8
;   (4 bytes)
;   0x876a..0x876e  (4 bytes)
DATA_leido_876A:
	defb 0d0h,06fh,087h,000h	; 876a

; ----------------------------------------------------------------------
; DATOS leido_876E: 1 bytes que lee p00:4E5A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4E5A (1 bytes)
;   0x876e..0x876f  (1 bytes)
DATA_leido_876E:
	defb 000h	; 876e

; ----------------------------------------------------------------------
; DATOS rle_vram_876F: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (118
;   bytes)
;   0x876f..0x87e5  (118 bytes)
DATA_rle_vram_876F:
	defb 086h,060h,098h,006h,001h,006h,018h,00dh,000h,084h,0e0h,010h,010h,00fh,00ah,000h	; 876f  .`..............
	defb 086h,038h,004h,03ch,0c3h,080h,080h,004h,000h,085h,070h,00ch,003h,004h,018h,005h	; 877f  .8.<......p.....
	defb 000h,089h,080h,040h,043h,044h,038h,008h,010h,060h,080h,004h,000h,085h,001h,0c1h	; 878f  ...@CD8..`......
	defb 03eh,008h,008h,003h,010h,081h,0e0h,005h,000h,083h,001h,00eh,0f0h,004h,020h,082h	; 879f  >............. .
	defb 040h,080h,007h,000h,002h,008h,082h,006h,003h,006h,000h,082h,033h,0cch,008h,000h	; 87af  @...........3...
	defb 082h,080h,040h,003h,020h,087h,030h,090h,070h,010h,008h,008h,007h,003h,000h,082h	; 87bf  ..@. .0.p.......
	defb 00ch,033h,004h,000h,002h,001h,084h,00eh,008h,010h,0f0h,004h,000h,083h,0ech,013h	; 87cf  .3..............
	defb 060h,003h,080h,007h,000h,000h	; 87df

; ----------------------------------------------------------------------
; DATOS resto_87E5: lo apuntan con el banco puesto p00:4226 (0x9000), p00:4240
;   (0x9000), p00:4279 (0x9000); el tamano es lo que hay hasta lo siguiente,
;   no sale de recorrerlo; lo leen p00:4226, p00:4240, p00:4279 (2857 bytes)
;   0x87e5..0x930e  (2857 bytes)
DATA_resto_87E5:
	defb 007h,000h,081h,00ah,004h,000h,084h,003h,00fh,03eh,0fdh,003h,000h,082h,0fch,0aah	; 87e5  .........>......
	defb 003h,0ffh,088h,002h,004h,008h,030h,067h,00fh,0e0h,0fch,004h,000h,084h,0e0h,01fh	; 87f5  ......0g........
	defb 000h,0feh,004h,000h,084h,004h,014h,054h,054h,006h,000h,082h,003h,00fh,005h,000h	; 8805  .......TT.......
	defb 085h,007h,000h,03ah,000h,084h,006h,000h,000h,007h,000h,081h,040h,004h,000h,084h	; 8815  ...:........@...
	defb 040h,050h,0e0h,0f0h,003h,000h,08dh,040h,080h,055h,0eeh,0ffh,080h,0e0h,0e0h,050h	; 8825  @P.....@.U.....P
	defb 040h,040h,0e0h,050h,004h,000h,084h,050h,054h,000h,0e0h,004h,000h,084h,040h,050h	; 8835  @@.P...PT.....@P
	defb 040h,0e0h,006h,000h,082h,050h,040h,005h,000h,085h,080h,000h,0e0h,000h,0f5h,006h	; 8845  @....P@.........
	defb 000h,000h,083h,080h,036h,06ch,00ah,000h,083h,06ch,036h,080h,000h,083h,040h,050h	; 8855  ....6l...l6...@P
	defb 040h,00ah,000h,083h,040h,050h,040h,000h,0b2h,000h,038h,067h,068h,071h,073h,067h	; 8865  @...@P@...8ghqsg
	defb 067h,000h,01ch,0e6h,016h,08eh,0ceh,0e6h,0e6h,00ah,0aah,00ah,00ah,000h,038h,084h	; 8875  g.............8.
	defb 041h,000h,07fh,0beh,01dh,00bh,047h,08eh,01ch,063h,071h,068h,0ffh,07fh,07fh,000h	; 8885  A.....G..cqh....
	defb 07fh,0c6h,08eh,016h,0ffh,0ffh,0feh,000h,05dh,0feh,0d6h,003h,056h,085h,054h,000h	; 8895  ........]...V.T.
	defb 03bh,0feh,0aah,004h,0feh,082h,0aah,000h,006h,0ffh,082h,0a8h,0bbh,005h,054h,0aeh	; 88a5  ..............T.
	defb 014h,0c4h,030h,000h,007h,01fh,00fh,03fh,0c0h,001h,0ffh,0bfh,0deh,0efh,0f7h,0f6h	; 88b5  ..0....?........
	defb 0f7h,080h,0ffh,0a2h,070h,0fch,0e0h,0f0h,0ffh,000h,0feh,03ch,07ah,0f7h,0eeh,0dch	; 88c5  ....p......<z...
	defb 081h,07fh,0c0h,07fh,07fh,000h,057h,0d7h,0d7h,080h,000h,05dh,05dh,000h,003h,0f7h	; 88d5  ......W....]]...
	defb 08ah,003h,001h,000h,07fh,03eh,081h,09ch,0ceh,0e7h,0f0h,005h,0feh,086h,000h,0feh	; 88e5  .....>..........
	defb 000h,000h,0bah,0bbh,004h,0ffh,083h,0feh,0c1h,015h,004h,055h,086h,015h,001h,080h	; 88f5  ...........U....
	defb 036h,06ch,000h,004h,066h,0b8h,0f0h,007h,0dch,0d8h,0a1h,0a3h,0a3h,0a7h,0ffh,000h	; 8905  6l..f...........
	defb 03ch,0ffh,07eh,03eh,01ch,03ch,0f8h,00ch,006h,002h,083h,0c1h,0c1h,0e1h,03fh,07fh	; 8915  <.~>.<........?.
	defb 000h,000h,075h,075h,015h,0d5h,0feh,0ffh,000h,0bdh,081h,0bdh,081h,0bdh,000h,07eh	; 8925  ..uu...........~
	defb 000h,072h,02ch,07eh,055h,055h,0f0h,034h,0f5h,0fdh,07dh,015h,055h,055h,000h,0b7h	; 8935  .r,~UU.4..}.UU..
	defb 000h,040h,050h,040h,040h,050h,0e0h,0f0h,000h,040h,050h,040h,040h,050h,0e0h,0f0h	; 8945  .@P@@P...@P@@P..
	defb 050h,0e0h,050h,040h,000h,040h,080h,040h,000h,0e0h,050h,040h,040h,0e0h,0e0h,0f0h	; 8955  P.P@.@.@..P@@...
	defb 0e0h,050h,040h,055h,0feh,040h,000h,050h,0e0h,050h,040h,055h,0ffh,040h,000h,050h	; 8965  .P@U.@.P.P@U.@.P
	defb 0e0h,0e0h,050h,040h,040h,050h,000h,003h,040h,0c3h,050h,0f0h,0e0h,0e0h,050h,000h	; 8975  ..P@@P..@.P...P.
	defb 055h,0eeh,0ffh,0ffh,0eeh,055h,050h,040h,0e0h,0f0h,0f0h,0e0h,050h,040h,040h,050h	; 8985  U....UP@....P@@P
	defb 000h,040h,050h,0f5h,0e0h,040h,050h,0aah,040h,050h,0e0h,0f0h,0e0h,040h,040h,0aah	; 8995  .@P..@P.@P...@@.
	defb 050h,050h,0e0h,0f5h,054h,044h,000h,0a0h,0f0h,0e0h,050h,050h,040h,0a0h,0a0h,0a9h	; 89a5  PP..TD....PP@...
	defb 0feh,040h,000h,0b0h,0a0h,090h,090h,000h,0f0h,040h,000h,0b0h,0a0h,003h,090h,084h	; 89b5  .@.......@......
	defb 000h,040h,050h,060h,004h,0a0h,08fh,040h,050h,0f0h,0e0h,040h,000h,0a0h,000h,000h	; 89c5  .@P`...@P..@....
	defb 040h,050h,0eeh,0ffh,0eeh,055h,003h,040h,091h,050h,0e0h,0f0h,0f0h,050h,050h,040h	; 89d5  @P...U.@.P...PP@
	defb 050h,040h,000h,040h,050h,0e0h,0f0h,090h,0e0h,050h,003h,040h,002h,050h,08bh,0eeh	; 89e5  P@.@P....P.@.P..
	defb 000h,040h,044h,054h,075h,0b7h,0f7h,0f0h,0e0h,050h,003h,040h,002h,050h,0a0h,0a9h	; 89f5  .@DTu....P.@.P..
	defb 090h,000h,000h,040h,050h,0e0h,0f0h,0a0h,099h,000h,040h,050h,0e0h,0e0h,0f0h,000h	; 8a05  ...@P.....@P....
	defb 040h,000h,050h,0f0h,0e0h,0c0h,030h,040h,050h,050h,0e0h,0f0h,0f0h,0e0h,0e0h,000h	; 8a15  @.P...0@PP......
	defb 0b0h,0f0h,007h,0dch,0d8h,0a1h,0a3h,0a3h,0a7h,00fh,000h,03ch,0ffh,07eh,03eh,03eh	; 8a25  ...........<.~>>
	defb 03ch,0f8h,00ch,006h,002h,083h,0c1h,0c1h,0e1h,0a7h,0a3h,0a3h,0a1h,0d8h,0dch,007h	; 8a35  <...............
	defb 0f0h,03ch,03eh,03eh,07eh,0ffh,03ch,000h,00fh,0e1h,0c1h,0c1h,083h,002h,006h,00ch	; 8a45  .<>>~.<.........
	defb 0f8h,000h,096h,090h,0e0h,050h,040h,060h,060h,080h,080h,0feh,000h,060h,066h,086h	; 8a55  .....P@``....`f.
	defb 098h,0a9h,0fah,0f0h,0e0h,050h,040h,060h,060h,004h,080h,002h,060h,094h,040h,050h	; 8a65  .....P@``...`.@P
	defb 0e0h,090h,0fah,0a9h,098h,086h,066h,060h,000h,0feh,080h,080h,060h,060h,040h,050h	; 8a75  ......f`....``@P
	defb 0e0h,0f0h,000h,084h,080h,036h,06ch,000h,008h,006h,084h,000h,06ch,036h,080h,000h	; 8a85  .....6l.....l6..
	defb 090h,040h,050h,040h,000h,040h,050h,0e0h,0f0h,0f0h,0e0h,050h,040h,000h,040h,050h	; 8a95  .@P@.@P....P@.@P
	defb 040h,000h,003h,07fh,005h,000h,003h,0f5h,00ah,000h,003h,07fh,005h,000h,003h,0f5h	; 8aa5  @...............
	defb 000h,083h,096h,0a9h,096h,005h,000h,083h,090h,0a0h,090h,00ah,000h,083h,096h,0a9h	; 8ab5  ................
	defb 096h,005h,000h,083h,090h,0a0h,090h,000h,081h,018h,00dh,000h,082h,080h,0f0h,004h	; 8ac5  ................
	defb 000h,086h,001h,003h,000h,007h,0e0h,0c0h,00bh,000h,085h,001h,003h,007h,0c0h,0c0h	; 8ad5  ................
	defb 003h,080h,008h,000h,085h,080h,0c0h,0e0h,01fh,003h,006h,000h,002h,003h,081h,001h	; 8ae5  ................
	defb 00ah,000h,083h,080h,0a0h,0b0h,005h,000h,086h,001h,007h,001h,0feh,078h,060h,005h	; 8af5  .............x`.
	defb 000h,084h,00eh,006h,003h,001h,008h,000h,08ch,001h,003h,007h,00ch,000h,000h,080h	; 8b05  ................
	defb 0c0h,0e0h,0e8h,0ech,0eeh,005h,000h,002h,040h,089h,0e0h,001h,007h,007h,003h,003h	; 8b15  ........@.......
	defb 001h,001h,000h,000h,081h,0c0h,00dh,000h,002h,0c0h,004h,000h,002h,0c0h,081h,000h	; 8b25  ................
	defb 003h,0c0h,00bh,000h,081h,0c0h,004h,020h,083h,030h,020h,0c0h,008h,000h,085h,020h	; 8b35  ....... .0 ....
	defb 030h,030h,020h,0c0h,006h,000h,003h,0c0h,00ah,000h,003h,020h,005h,000h,002h,020h	; 8b45  00 ........ ...
	defb 002h,030h,082h,020h,0c0h,005h,000h,002h,020h,002h,0c0h,008h,000h,002h,030h,002h	; 8b55  .0. .... .....0.
	defb 0c0h,002h,000h,004h,0c0h,002h,020h,005h,000h,005h,0c0h,086h,030h,020h,020h,0c0h	; 8b65  ...... .....0  .
	defb 0c0h,000h,000h,003h,000h,083h,010h,00ch,006h,003h,003h,003h,007h,002h,003h,002h	; 8b75  ................
	defb 000h,088h,080h,0c0h,0c0h,0d0h,0d8h,098h,038h,038h,003h,0f8h,086h,078h,070h,072h	; 8b85  ........88...xpr
	defb 066h,00eh,03eh,003h,07ch,002h,078h,09ah,073h,067h,00eh,07eh,07ch,07ch,0f8h,0f0h	; 8b95  f.>.|.x.sg.~||..
	defb 0f0h,0c6h,01ch,0fch,0f8h,0f0h,0e0h,0c0h,080h,000h,000h,001h,001h,003h,003h,007h	; 8ba5  ................
	defb 007h,00fh,004h,000h,0cfh,001h,003h,007h,01ch,000h,001h,007h,071h,0fch,0feh,0feh	; 8bb5  ............q...
	defb 07ch,007h,0f1h,0fch,0feh,0feh,0f0h,080h,000h,0c3h,0f8h,0feh,0ffh,0ffh,0f0h,000h	; 8bc5  |...............
	defb 000h,0c0h,0f1h,07ch,07eh,07fh,0ffh,007h,000h,000h,0c0h,0f0h,078h,07ch,03eh,03fh	; 8bd5  ...|~.......x|>?
	defb 07fh,07fh,07eh,0fch,0e0h,0c0h,0c0h,040h,040h,00fh,01fh,01fh,03fh,040h,01eh,03fh	; 8be5  ..~....@@...?@.?
	defb 07fh,01fh,03fh,07fh,0feh,01ch,0c4h,0f0h,0e0h,001h,007h,01fh,07fh,07eh,0ffh,01ch	; 8bf5  ..?..........~..
	defb 0c8h,03ch,0e0h,00fh,003h,007h,086h,003h,001h,000h,090h,0c8h,0eeh,003h,0efh,090h	; 8c05  .<..............
	defb 0cfh,0e8h,0ech,0ceh,05fh,01fh,03fh,00fh,007h,0b0h,0b8h,038h,07ch,0fch,07eh,03eh	; 8c15  ...._.?....8|.~>
	defb 003h,03fh,081h,01ch,003h,018h,002h,008h,0a4h,000h,001h,003h,007h,000h,00fh,01fh	; 8c25  .?..............
	defb 03fh,03ch,0feh,0feh,0fch,070h,020h,080h,080h,000h,000h,003h,001h,001h,0fch,0feh	; 8c35  ?<...p .........
	defb 0feh,000h,000h,0c0h,0f8h,007h,0c0h,0e0h,07dh,0f0h,0e6h,0cfh,04fh,003h,01fh,08dh	; 8c45  ........}...O...
	defb 00eh,0c0h,098h,0b8h,038h,078h,078h,0fch,0fch,01ch,03ch,03ch,07ch,004h,0f8h,09eh	; 8c55  ....8xx...<<|...
	defb 007h,00fh,01fh,01eh,03eh,07eh,07eh,042h,007h,00fh,003h,071h,0fch,0feh,0feh,07ch	; 8c65  ....>~~B...q...|
	defb 0c7h,0f1h,0fch,0feh,0feh,0c0h,000h,000h,0f0h,0f8h,0feh,007h,0e0h,00fh,003h,000h	; 8c75  ................
	defb 097h,0e0h,070h,07ch,07eh,07fh,0ffh,007h,000h,000h,003h,03fh,0e0h,007h,003h,003h	; 8c85  ..p|~......?....
	defb 0ceh,01eh,03fh,01fh,00fh,00fh,006h,000h,006h,0e0h,084h,0c4h,01ch,07ch,0fch,003h	; 8c95  ..?..........|..
	defb 0f8h,083h,0f0h,070h,0f0h,000h,003h,000h,002h,0b0h,004h,030h,002h,020h,003h,0c0h	; 8ca5  ...p.......0. ..
	defb 002h,000h,083h,030h,020h,020h,003h,0c0h,003h,020h,004h,030h,084h,020h,0c0h,020h	; 8cb5  ...0  ... .0. .
	defb 020h,005h,030h,084h,020h,0c0h,020h,020h,004h,030h,085h,020h,0c0h,0c0h,020h,020h	; 8cc5   .0. .  .0. ..
	defb 003h,030h,084h,020h,000h,000h,0c0h,004h,030h,082h,020h,0c0h,004h,000h,085h,020h	; 8cd5  .0. ....0. ....
	defb 030h,030h,0b0h,000h,004h,020h,09eh,030h,020h,0c0h,020h,020h,030h,030h,020h,0c0h	; 8ce5  00... .0 .  00 .
	defb 0c0h,000h,020h,020h,030h,033h,022h,0c0h,000h,000h,020h,020h,030h,030h,020h,0cch	; 8cf5  ..  03"...  00 .
	defb 0c0h,000h,000h,020h,020h,003h,030h,087h,020h,0c0h,020h,030h,020h,020h,030h,003h	; 8d05  ...  .0. . 0  0.
	defb 0b0h,084h,020h,030h,030h,020h,003h,0c0h,003h,020h,002h,030h,003h,0c0h,08bh,020h	; 8d15  .. 00 ... .0...
	defb 0c0h,020h,020h,030h,032h,022h,0c0h,0c0h,020h,0b2h,003h,030h,087h,020h,0c0h,0c0h	; 8d25  .  02".. ..0. ..
	defb 000h,0c0h,0c0h,020h,003h,030h,005h,020h,003h,030h,003h,020h,003h,030h,086h,020h	; 8d35  ... .0. .0. .0.
	defb 0c0h,0c0h,020h,030h,030h,003h,020h,002h,0b0h,08dh,000h,020h,020h,030h,000h,0c0h	; 8d45  .. 00. ....  0..
	defb 0c0h,020h,0c0h,020h,030h,020h,020h,003h,0c0h,002h,000h,08fh,020h,030h,030h,0c0h	; 8d55  . . 0  ..... 00.
	defb 020h,030h,000h,000h,0c0h,0c0h,0c2h,032h,032h,0c0h,020h,003h,0c0h,084h,020h,030h	; 8d65   0.....22. ... 0
	defb 030h,020h,003h,0c0h,002h,020h,002h,030h,08fh,020h,0c0h,0c0h,020h,020h,030h,030h	; 8d75  0 ... .0. ..  00
	defb 020h,020h,0c0h,0c0h,020h,020h,030h,020h,003h,0c0h,082h,020h,030h,003h,020h,003h	; 8d85    ..  0 ... 0. .
	defb 0c0h,08dh,020h,030h,020h,0c0h,0c0h,000h,000h,0c0h,020h,030h,032h,0c2h,0c0h,003h	; 8d95  .. 0 ..... 02...
	defb 000h,098h,0c0h,020h,030h,020h,020h,0cch,0c0h,000h,000h,0c0h,0c0h,0b3h,030h,030h	; 8da5  ... 0  .......00
	defb 020h,020h,030h,030h,020h,020h,0c0h,0c0h,000h,020h,003h,030h,081h,020h,003h,0c0h	; 8db5    00  ... .0. ..
	defb 002h,020h,003h,030h,083h,020h,0c0h,0c0h,000h,081h,018h,00dh,000h,082h,001h,00fh	; 8dc5  . .0. ..........
	defb 004h,000h,086h,080h,0c0h,000h,0e0h,007h,003h,00bh,000h,085h,080h,0c0h,0e0h,003h	; 8dd5  ................
	defb 003h,003h,001h,008h,000h,085h,001h,003h,007h,0f8h,0c0h,006h,000h,002h,0c0h,081h	; 8de5  ................
	defb 080h,00ah,000h,083h,001h,005h,00dh,005h,000h,086h,080h,0e0h,080h,07fh,01eh,006h	; 8df5  ................
	defb 005h,000h,084h,070h,060h,0c0h,080h,008h,000h,08ch,080h,0c0h,0e0h,030h,000h,000h	; 8e05  ...p`........0..
	defb 001h,003h,007h,017h,037h,077h,005h,000h,002h,002h,089h,007h,080h,0e0h,0e0h,0c0h	; 8e15  ....7w..........
	defb 0c0h,080h,080h,000h,000h,081h,0c0h,00dh,000h,002h,0c0h,004h,000h,002h,0c0h,081h	; 8e25  ................
	defb 000h,003h,0c0h,00bh,000h,081h,0c0h,004h,020h,083h,030h,020h,0c0h,008h,000h,085h	; 8e35  ........ .0 ....
	defb 020h,030h,030h,020h,0c0h,006h,000h,003h,0c0h,00ah,000h,003h,020h,005h,000h,002h	; 8e45   00 ........ ...
	defb 020h,002h,030h,082h,020h,0c0h,005h,000h,002h,020h,002h,0c0h,008h,000h,002h,030h	; 8e55   .0. .... .....0
	defb 002h,0c0h,002h,000h,004h,0c0h,002h,020h,005h,000h,005h,0c0h,086h,030h,020h,020h	; 8e65  ....... .....0
	defb 0c0h,0c0h,000h,000h,003h,000h,083h,008h,030h,060h,003h,0c0h,003h,0e0h,002h,0c0h	; 8e75  ........0`......
	defb 002h,000h,088h,001h,003h,003h,00bh,01bh,019h,01ch,01ch,003h,01fh,086h,01eh,00eh	; 8e85  ................
	defb 04eh,066h,070h,07ch,003h,03eh,002h,01eh,09ah,0ceh,0e6h,070h,07eh,03eh,03eh,01fh	; 8e95  Nfp|.>.....p~>>.
	defb 00fh,00fh,063h,038h,03fh,01fh,00fh,007h,003h,001h,000h,000h,080h,080h,0c0h,0c0h	; 8ea5  ..c8?...........
	defb 0e0h,0e0h,0f0h,004h,000h,0cfh,080h,0c0h,0e0h,038h,000h,080h,0e0h,08eh,03fh,07fh	; 8eb5  .........8....?.
	defb 07fh,03eh,0e0h,08fh,03fh,07fh,07fh,00fh,001h,000h,0c3h,01fh,07fh,0ffh,0ffh,00fh	; 8ec5  .>..?...........
	defb 000h,000h,003h,08fh,03eh,07eh,0feh,0ffh,0e0h,000h,000h,003h,00fh,01eh,03eh,07ch	; 8ed5  ....>~........>|
	defb 0fch,0feh,0feh,07eh,03fh,007h,003h,003h,002h,002h,0f0h,0f8h,0f8h,0fch,002h,078h	; 8ee5  ...~?..........x
	defb 0fch,0feh,0f8h,0fch,0feh,07fh,038h,023h,00fh,007h,080h,0e0h,0f8h,0feh,07eh,0ffh	; 8ef5  ......8#......~.
	defb 038h,013h,03ch,007h,0f0h,003h,0e0h,086h,0c0h,080h,000h,009h,013h,077h,003h,0f7h	; 8f05  8.<..........w..
	defb 090h,0f3h,017h,037h,073h,0fah,0f8h,0fch,0f0h,0e0h,00dh,01dh,01ch,03eh,03fh,07eh	; 8f15  ...7s........>?~
	defb 07ch,003h,0fch,081h,038h,003h,018h,002h,010h,0a4h,000h,080h,0c0h,0e0h,000h,0f0h	; 8f25  |...8...........
	defb 0f8h,0fch,03ch,07fh,07fh,03fh,00eh,004h,001h,001h,000h,000h,0c0h,080h,080h,03fh	; 8f35  ..<..?.........?
	defb 07fh,07fh,000h,000h,003h,01fh,0e0h,003h,007h,0beh,00fh,067h,0f3h,0f2h,003h,0f8h	; 8f45  ...........g....
	defb 08dh,070h,003h,019h,01dh,01ch,01eh,01eh,03fh,03fh,038h,03ch,03ch,03eh,004h,01fh	; 8f55  .p......??8<<>..
	defb 09eh,0e0h,0f0h,0f8h,078h,07ch,07eh,07eh,042h,0e0h,0f0h,0c0h,08eh,03fh,07fh,07fh	; 8f65  ....x|~~B....?..
	defb 03eh,0e3h,08fh,03fh,07fh,07fh,003h,000h,000h,00fh,01fh,07fh,0e0h,007h,0f0h,003h	; 8f75  >..?............
	defb 000h,097h,007h,00eh,03eh,07eh,0feh,0ffh,0e0h,000h,000h,0c0h,0fch,007h,0e0h,0c0h	; 8f85  ....>~..........
	defb 0c0h,073h,078h,0fch,0f8h,0f0h,0f0h,060h,000h,006h,007h,084h,023h,038h,03eh,03fh	; 8f95  .sx....`....#8>?
	defb 003h,01fh,083h,00fh,00eh,00fh,000h,003h,000h,002h,0b0h,004h,030h,002h,020h,003h	; 8fa5  ............0. .
	defb 0c0h,002h,000h,083h,030h,020h,020h,003h,0c0h,003h,020h,004h,030h,084h,020h,0c0h	; 8fb5  ....0  ... .0. .
	defb 020h,020h,005h,030h,084h,020h,0c0h,020h,020h,004h,030h,085h,020h,0c0h,0c0h,020h	; 8fc5    .0. .  .0. ..
	defb 020h,003h,030h,084h,020h,000h,000h,0c0h,004h,030h,082h,020h,0c0h,004h,000h,085h	; 8fd5   .0. ....0. ....
	defb 020h,030h,030h,0b0h,000h,004h,020h,09eh,030h,020h,0c0h,020h,020h,030h,030h,020h	; 8fe5   00... .0 .  00
	defb 0c0h,0c0h,000h,020h,020h,030h,033h,022h,0c0h,000h,000h,020h,020h,030h,030h,020h	; 8ff5  ...  03"...  00
	defb 0cch,0c0h,000h,000h,020h,020h,003h,030h,087h,020h,0c0h,020h,030h,020h,020h,030h	; 9005  ....  .0. . 0  0
	defb 003h,0b0h,084h,020h,030h,030h,020h,003h,0c0h,003h,020h,002h,030h,003h,0c0h,08bh	; 9015  ... 00 ... .0...
	defb 020h,0c0h,020h,020h,030h,032h,022h,0c0h,0c0h,020h,0b2h,003h,030h,087h,020h,0c0h	; 9025   .  02".. ..0. .
	defb 0c0h,000h,0c0h,0c0h,020h,003h,030h,005h,020h,003h,030h,003h,020h,003h,030h,086h	; 9035  .... .0. .0. .0.
	defb 020h,0c0h,0c0h,020h,030h,030h,003h,020h,002h,0b0h,08dh,000h,020h,020h,030h,000h	; 9045   .. 00. ....  0.
	defb 0c0h,0c0h,020h,0c0h,020h,030h,020h,020h,003h,0c0h,002h,000h,08fh,020h,030h,030h	; 9055  .. . 0  ..... 00
	defb 0c0h,020h,030h,000h,000h,0c0h,0c0h,0c2h,032h,032h,0c0h,020h,003h,0c0h,084h,020h	; 9065  . 0.....22. ...
	defb 030h,030h,020h,003h,0c0h,002h,020h,002h,030h,08fh,020h,0c0h,0c0h,020h,020h,030h	; 9075  00 ... .0. ..  0
	defb 030h,020h,020h,0c0h,0c0h,020h,020h,030h,020h,003h,0c0h,082h,020h,030h,003h,020h	; 9085  0  ..  0 ... 0.
	defb 003h,0c0h,08dh,020h,030h,020h,0c0h,0c0h,000h,000h,0c0h,020h,030h,032h,0c2h,0c0h	; 9095  ... 0 ..... 02..
	defb 003h,000h,098h,0c0h,020h,030h,020h,020h,0cch,0c0h,000h,000h,0c0h,0c0h,0b3h,030h	; 90a5  .... 0  .......0
	defb 030h,020h,020h,030h,030h,020h,020h,0c0h,0c0h,000h,020h,003h,030h,081h,020h,003h	; 90b5  0  00  ... .0. .
	defb 0c0h,002h,020h,003h,030h,083h,020h,0c0h,0c0h,000h,088h,00fh,03fh,07fh,07fh,0c0h	; 90c5  .. .0. .....?...
	defb 080h,0d6h,0d6h,004h,05eh,090h,0feh,080h,03eh,07eh,0eah,0eah,000h,0e0h,048h,0c0h	; 90d5  ....^...>~....H.
	defb 014h,0f8h,07eh,03eh,080h,0feh,004h,05eh,082h,02ah,0c0h,004h,0feh,083h,00eh,0e0h	; 90e5  ..~>...^.*......
	defb 080h,006h,0aah,091h,080h,06bh,06bh,001h,003h,0feh,0feh,0fch,0f0h,0f8h,014h,0c0h	; 90f5  .....kk.........
	defb 048h,0e0h,000h,0eah,0eah,003h,01fh,002h,07fh,0a5h,000h,0aeh,0aeh,000h,066h,068h	; 9105  H.............fh
	defb 066h,068h,06eh,046h,05ch,00eh,09eh,038h,070h,0e0h,0c0h,0c0h,001h,0eah,00ah,000h	; 9115  fhnF\..8p.......
	defb 000h,00fh,03fh,078h,0c0h,0aeh,0a0h,000h,000h,0f0h,0fch,01eh,007h,0eeh,00eh,003h	; 9125  ..?x............
	defb 003h,085h,001h,000h,080h,000h,088h,006h,0cch,084h,003h,0c3h,0c7h,0c7h,004h,08fh	; 9135  ................
	defb 094h,083h,00fh,03fh,07fh,07fh,040h,0d3h,0ebh,0f3h,0f9h,0feh,0ffh,03ch,0feh,07ch	; 9145  ...?..@......<.|
	defb 02bh,0c0h,0c0h,0e0h,0e0h,004h,0f0h,084h,001h,0e9h,097h,0e0h,004h,06bh,083h,0e1h	; 9155  +............k..
	defb 005h,015h,005h,055h,09ah,0f0h,0fch,0feh,0feh,003h,001h,06bh,06bh,05ch,046h,06eh	; 9165  ...U.......kk\Fn
	defb 068h,066h,068h,066h,000h,0d6h,0d6h,080h,0c0h,07fh,07fh,03fh,00fh,0e0h,00eh,004h	; 9175  hfhf.......?....
	defb 0feh,087h,0c0h,02ah,0aeh,0aeh,000h,07fh,07fh,003h,01fh,09bh,001h,0c0h,0c0h,0e0h	; 9185  ...*............
	defb 070h,038h,09eh,00eh,0c0h,078h,03fh,00fh,000h,000h,00ah,0eah,007h,01eh,0fch,0f0h	; 9195  p8...x?.........
	defb 000h,000h,0a0h,0aeh,080h,000h,001h,003h,003h,082h,00eh,0eeh,006h,0cch,082h,088h	; 91a5  ................
	defb 000h,004h,08fh,002h,0c7h,092h,0c3h,003h,0ebh,0c3h,040h,07fh,07fh,03fh,00fh,083h	; 91b5  ..........@..?..
	defb 02bh,07ch,0feh,03ch,0ffh,0feh,0f9h,0f3h,004h,0f0h,002h,0e0h,002h,0c0h,004h,06bh	; 91c5  +|.<...........k
	defb 084h,0e0h,097h,0e9h,001h,005h,055h,083h,015h,005h,0e1h,000h,002h,040h,0d7h,050h	; 91d5  ......U......@.P
	defb 0f0h,0feh,0feh,0e0h,0e0h,040h,050h,0e0h,0f0h,0e0h,0e0h,040h,050h,0f0h,0e0h,0e0h	; 91e5  .....@P....@P...
	defb 0e5h,080h,0e5h,090h,054h,050h,040h,0e0h,0e0h,0f0h,0e0h,050h,040h,0a0h,0f0h,0f0h	; 91f5  ....TP@....P@...
	defb 0e0h,050h,040h,040h,0f0h,090h,040h,0e0h,0f0h,0e0h,050h,040h,090h,0e0h,0e0h,0feh	; 9205  .P@@..@...P@....
	defb 0feh,0f0h,050h,040h,040h,054h,090h,0e5h,080h,0e5h,0e0h,0e0h,0f0h,0f0h,0e0h,0e0h	; 9215  ..P@@T..........
	defb 050h,040h,000h,0e0h,0f0h,040h,040h,0f0h,050h,0f0h,040h,050h,050h,040h,050h,0e0h	; 9225  P@...@@.P.@PP@P.
	defb 0f0h,0f0h,0e0h,040h,080h,050h,003h,040h,002h,080h,002h,086h,08ch,050h,040h,000h	; 9235  ...@.P.@.....P@.
	defb 000h,080h,080h,086h,086h,050h,050h,040h,070h,003h,040h,08ch,080h,040h,040h,050h	; 9245  .....PP@p.@..@@P
	defb 050h,0f0h,050h,0e0h,0f0h,080h,0a0h,090h,005h,060h,005h,086h,083h,0a8h,098h,098h	; 9255  P.P......`......
	defb 003h,086h,085h,080h,098h,098h,0a9h,0fah,008h,080h,0c2h,040h,0e0h,054h,0f0h,040h	; 9265  ...........@.T.@
	defb 050h,0e0h,0f0h,040h,040h,050h,0e0h,050h,0e0h,0f0h,0f0h,040h,040h,050h,0f0h,0feh	; 9275  P..@@P.P...@@P..
	defb 0feh,0e0h,0e0h,050h,050h,040h,0f0h,050h,0f0h,040h,040h,0e0h,0e0h,0feh,0feh,0f0h	; 9285  ...PP@.P.@@.....
	defb 050h,040h,040h,0f0h,040h,040h,050h,0e0h,0f0h,0f0h,0a0h,0f0h,0e0h,040h,040h,050h	; 9295  P@@.@@P......@@P
	defb 0e0h,0e0h,0f0h,080h,040h,0e0h,0f0h,0f0h,0e0h,050h,040h,086h,086h,004h,080h,084h	; 92a5  ....@....P@.....
	defb 040h,050h,086h,086h,004h,080h,083h,040h,050h,080h,003h,040h,084h,070h,040h,050h	; 92b5  @P.....@P..@.p@P
	defb 050h,003h,0f0h,002h,0e0h,083h,050h,040h,040h,005h,060h,083h,080h,090h,080h,003h	; 92c5  P.....P@@.`.....
	defb 098h,005h,086h,085h,0fah,0a9h,098h,098h,080h,003h,086h,008h,080h,090h,0f0h,0e0h	; 92d5  ................
	defb 050h,040h,0f0h,054h,0e0h,040h,0e0h,0e0h,0f0h,0e0h,050h,050h,040h,040h,000h,082h	; 92e5  P@.T.@....PP@@..
	defb 000h,008h,00ch,00ch,082h,008h,000h,000h,002h,040h,002h,050h,083h,0f0h,050h,0e0h	; 92f5  .........@.P..P.
	defb 004h,0f0h,002h,0e0h,083h,050h,040h,040h,000h	; 9305  .....P@@.

; ----------------------------------------------------------------------
; DATOS rle_vram_930E: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (11
;   bytes)
;   0x930e..0x9319  (11 bytes)
DATA_rle_vram_930E:
	defb 006h,000h,085h,007h,03fh,0f8h,0e0h,080h,005h,000h,000h	; 930e  ....?......

; ----------------------------------------------------------------------
; DATOS rle_vram_9319: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (3
;   bytes)
;   0x9319..0x931c  (3 bytes)
DATA_rle_vram_9319:
	defb 010h,090h,000h	; 9319

; ----------------------------------------------------------------------
; DATOS rle_vram_931C: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (104
;   bytes)
;   0x931c..0x9384  (104 bytes)
DATA_rle_vram_931C:
	defb 005h,000h,083h,001h,01bh,07dh,003h,000h,08dh,003h,07bh,0fdh,0feh,001h,000h,0c0h	; 931c  .....}....{.....
	defb 078h,0beh,09fh,0cfh,020h,014h,004h,000h,093h,080h,0d8h,0eeh,0e7h,080h,0fbh,0fbh	; 932c  x... ...........
	defb 0f7h,0f4h,0e0h,0c0h,000h,0dfh,09fh,03fh,07fh,03fh,00fh,003h,006h,000h,083h,0f9h	; 933c  .......?.?......
	defb 07dh,0beh,004h,000h,084h,0feh,0ffh,008h,055h,004h,000h,084h,03ch,0feh,07fh,0bfh	; 934c  }.......U...<...
	defb 004h,000h,091h,0f0h,0feh,07eh,07fh,051h,0a0h,040h,0fbh,0fbh,0f7h,0ech,0c0h,040h	; 935c  .....~.Q.@.....@
	defb 0efh,0deh,09eh,0b8h,003h,000h,085h,005h,03fh,07fh,0ffh,03eh,003h,000h,088h,04ah	; 936c  ........?..>...J
	defb 005h,002h,03fh,07fh,0ffh,03fh,003h,000h	; 937c  ..?..?..

; ----------------------------------------------------------------------
; DATOS rle_vram_9384: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (64
;   bytes)
;   0x9384..0x93c4  (64 bytes)
DATA_rle_vram_9384:
	defb 00dh,090h,002h,096h,081h,0a9h,004h,090h,002h,096h,002h,0a9h,007h,090h,082h,096h	; 9384  ................
	defb 0a9h,003h,096h,004h,090h,003h,096h,00ah,090h,003h,096h,006h,090h,002h,0a9h,005h	; 9394  ................
	defb 090h,003h,096h,006h,090h,002h,096h,003h,0a9h,003h,096h,002h,090h,081h,0a9h,003h	; 93a4  ................
	defb 096h,004h,090h,083h,0a9h,096h,096h,005h,090h,003h,0a9h,002h,096h,003h,090h,000h	; 93b4  ................

; ----------------------------------------------------------------------
; DATOS rle_vram_93C4: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (248
;   bytes)
;   0x93c4..0x94bc  (248 bytes)
DATA_rle_vram_93C4:
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
; DATOS rle_vram_94BC: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (164
;   bytes)
;   0x94bc..0x9560  (164 bytes)
DATA_rle_vram_94BC:
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
; DATOS rle_vram_9560: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (18
;   bytes)
;   0x9560..0x9572  (18 bytes)
DATA_rle_vram_9560:
	defb 090h,003h,000h,003h,007h,003h,001h,000h,000h,0fch,0f8h,000h,0fch,0f8h,0e0h,000h	; 9560  ................
	defb 000h,000h	; 9570

; ----------------------------------------------------------------------
; DATOS rle_vram_9572: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (17
;   bytes)
;   0x9572..0x9583  (17 bytes)
DATA_rle_vram_9572:
	defb 002h,0c0h,083h,030h,020h,020h,003h,0c0h,085h,020h,0c0h,0c0h,020h,020h,003h,0c0h	; 9572  ...0  ... ..  ..
	defb 000h	; 9582

; ----------------------------------------------------------------------
; DATOS rle_vram_9583: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (385
;   bytes)
;   0x9583..0x9704  (385 bytes)
DATA_rle_vram_9583:
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
; DATOS rle_vram_9704: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (322
;   bytes)
;   0x9704..0x9846  (322 bytes)
DATA_rle_vram_9704:
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
; DATOS rle_vram_9BFD: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (40
;   bytes)
;   0x9bfd..0x9c25  (40 bytes)
DATA_rle_vram_9BFD:
	defb 002h,000h,081h,00ah,007h,000h,083h,0e0h,000h,0f0h,005h,000h,088h,0f0h,000h,0f8h	; 9bfd  ................
	defb 001h,002h,07fh,000h,07fh,004h,000h,085h,037h,000h,004h,002h,001h,005h,000h,085h	; 9c0d  ........7.......
	defb 080h,040h,020h,080h,040h,003h,000h,000h	; 9c1d  .@ .@...

; ----------------------------------------------------------------------
; DATOS rle_vram_9C25: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (30
;   bytes)
;   0x9c25..0x9c43  (30 bytes)
DATA_rle_vram_9C25:
	defb 00ah,0f0h,083h,0feh,0f0h,0feh,005h,0f0h,08ah,054h,0f0h,054h,040h,040h,0e0h,0f0h	; 9c25  .........T.T@@..
	defb 0e8h,0f0h,0f0h,004h,050h,002h,0e0h,006h,0f0h,081h,0e0h,007h,0f0h,000h	; 9c35  ....P.........

; ----------------------------------------------------------------------
; DATOS rle_vram_9C43: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (128
;   bytes)
;   0x9c43..0x9cc3  (128 bytes)
DATA_rle_vram_9C43:
	defb 002h,000h,002h,001h,002h,002h,087h,004h,000h,084h,080h,004h,000h,004h,003h,000h	; 9c43  ................
	defb 084h,0f9h,0fbh,0ebh,06bh,008h,000h,086h,06bh,0ebh,0fbh,0f9h,07fh,07fh,00ch,000h	; 9c53  ....k...k.......
	defb 002h,07fh,002h,003h,002h,006h,004h,00ch,092h,0eah,00ah,000h,000h,00fh,038h,0e0h	; 9c63  ..............8.
	defb 0c0h,0aeh,0a0h,000h,000h,0f0h,00ch,003h,000h,0ffh,00fh,003h,003h,086h,001h,000h	; 9c73  ................
	defb 000h,040h,000h,020h,003h,000h,002h,010h,004h,00ch,002h,006h,002h,003h,09bh,000h	; 9c83  .@. ............
	defb 080h,0c0h,0e0h,0f0h,0f8h,0fch,0ffh,080h,0c0h,020h,008h,000h,000h,00ah,0eah,000h	; 9c93  ......... ......
	defb 001h,004h,060h,000h,000h,0a0h,0aeh,000h,000h,001h,003h,003h,092h,00fh,0ffh,000h	; 9ca3  ..`.............
	defb 050h,040h,020h,01ah,068h,044h,000h,010h,009h,080h,021h,080h,000h,090h,000h,000h	; 9cb3  P@ .hD....!.....

; ----------------------------------------------------------------------
; DATOS rle_vram_9CC3: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (79
;   bytes)
;   0x9cc3..0x9d12  (79 bytes)
DATA_rle_vram_9CC3:
	defb 008h,0f0h,002h,0e0h,006h,0f0h,082h,040h,050h,00ch,0e0h,083h,050h,040h,0e0h,00eh	; 9cc3  .......@P...P@..
	defb 040h,084h,0e0h,060h,090h,090h,005h,080h,081h,050h,003h,040h,004h,060h,081h,050h	; 9cd3  @..`.....P.@.`.P
	defb 003h,040h,004h,060h,002h,050h,082h,040h,0f0h,004h,040h,011h,060h,083h,040h,0e0h	; 9ce3  .@.`.P.@..@.`.@.
	defb 0f0h,004h,0e0h,006h,060h,082h,040h,050h,006h,060h,082h,040h,050h,004h,040h,082h	; 9cf3  ....`.@P.`.@P.@.
	defb 0f0h,040h,003h,050h,083h,080h,090h,0b0h,004h,080h,081h,0b0h,007h,090h,000h	; 9d03  .@.P...........

; ----------------------------------------------------------------------
; DATOS rle_vram_9D12: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (201
;   bytes)
;   0x9d12..0x9ddb  (201 bytes)
DATA_rle_vram_9D12:
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
; DATOS rle_vram_9DDB: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (139
;   bytes)
;   0x9ddb..0x9e66  (139 bytes)
DATA_rle_vram_9DDB:
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
; DATOS rle_vram_9E66: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (168
;   bytes)
;   0x9e66..0x9f0e  (168 bytes)
DATA_rle_vram_9E66:
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
; DATOS rle_vram_9F0E: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0; lo leen p00:4B3C (173
;   bytes)
;   0x9f0e..0x9fbb  (173 bytes)
DATA_rle_vram_9F0E:
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
; DATOS rle_vram_9FBB: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n <
;   0x80 repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF
;   copian n & 0x7F bytes; empieza donde la campana de tools/cobertura.py lee
;   su primer byte de control y se recorre hasta su 0 (sigue en el banco 22,
;   en 0xA000); lo leen p00:4B3C (69 bytes)
;   0x9fbb..0xa000  (69 bytes)
DATA_rle_vram_9FBB:
	defb 002h,07fh,087h,000h,0feh,0feh,0beh,0feh,0fch,000h,00bh,0ffh,083h,0dfh,0ffh,0dfh	; 9fbb  ................
	defb 003h,0ffh,081h,0bfh,003h,0ffh,083h,0fdh,0ffh,000h,007h,07fh,0a2h,000h,07fh,043h	; 9fcb  ...............C
	defb 07fh,043h,07fh,07fh,07bh,0d6h,07eh,03fh,018h,00bh,003h,003h,001h,0b5h,084h,0ffh	; 9fdb  .C..{.~?........
	defb 003h,0fah,0cbh,0fah,0fbh,07fh,035h,03fh,01fh,00fh,007h,001h,000h,07eh,05ah,006h	; 9feb  ......5?.....~Z.
	defb 07eh,088h,0fbh,02ah,0aah	; 9ffb

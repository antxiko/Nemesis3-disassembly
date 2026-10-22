; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 20 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; DATOS resto_6000: lo apuntan con el banco puesto p00:54E4 (0x6000), p00:5540
;   (0x6000); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p00:54E4, p00:5540 (24 bytes)
;   0x6000..0x6018  (24 bytes)
DATA_resto_6000:
	defb 03ch,042h,099h,0a1h,0a1h,099h,042h,03ch,040h,030h,01ch,00fh,0dfh,050h,00fh,00ch	; 6000  <B....B<@0...P..
	defb 000h,000h,000h,0e0h,0ffh,030h,0c0h,000h	; 6010  .....0..

; ----------------------------------------------------------------------
; DATOS leido_6018: 320 bytes que lee p00:4F3D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 32 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p00:4F3D (320 bytes)
;   0x6018..0x6158  (320 bytes)
DATA_leido_6018:
	defb 000h,000h,000h,000h,000h,000h,000h,000h,000h,03ch,066h,066h,066h,066h,066h,03ch	; 6018  .........<fffff<
	defb 000h,018h,038h,018h,018h,018h,018h,018h,000h,03ch,066h,066h,00ch,030h,060h,07eh	; 6028  ..8......<ff.0`~
	defb 000h,03ch,066h,006h,01ch,006h,066h,03ch,000h,01ch,01ch,03ch,02ch,06ch,07eh,00ch	; 6038  .<f...f<...<,l~.
	defb 000h,07eh,060h,060h,07ch,006h,066h,03ch,000h,03ch,066h,060h,07ch,066h,066h,03ch	; 6048  .~``|.f<.<f`|ff<
	defb 000h,07eh,066h,066h,00ch,018h,018h,018h,000h,03ch,066h,066h,03ch,066h,066h,03ch	; 6058  .~ff.....<ff<ff<
	defb 000h,03ch,066h,066h,03eh,006h,066h,03ch,000h,038h,038h,028h,06ch,07ch,044h,0eeh	; 6068  .<ff>.f<.88(l|D.
	defb 000h,0fch,066h,066h,07ch,066h,066h,0fch,000h,03ah,066h,0c0h,0c0h,0c2h,066h,03ch	; 6078  ..ff|ff..:f...f<
	defb 000h,0fch,066h,066h,066h,066h,066h,0fch,000h,0feh,062h,068h,078h,068h,062h,0feh	; 6088  ..fffff...bhxhb.
	defb 000h,0feh,062h,068h,078h,068h,060h,0f0h,000h,03ah,066h,0c0h,0ceh,0c6h,066h,03ch	; 6098  ..bhxh`..:f...f<
	defb 000h,0deh,04ch,04ch,07ch,04ch,04ch,0deh,000h,03ch,018h,018h,018h,018h,018h,03ch	; 60a8  ..LL|LL..<.....<
	defb 000h,01eh,00ch,00ch,00ch,08ch,08ch,078h,000h,0f6h,064h,068h,078h,06ch,066h,0f7h	; 60b8  .......x..dhxlf.
	defb 000h,0f0h,060h,060h,060h,060h,062h,0feh,000h,0c7h,06eh,07eh,056h,046h,046h,0efh	; 60c8  ..````b...n~VFF.
	defb 000h,0cfh,066h,076h,07eh,05eh,04eh,0e6h,000h,07ch,0c6h,0c6h,0c6h,0c6h,0c6h,07ch	; 60d8  ..fv~^N..|.....|
	defb 000h,0fch,066h,066h,066h,07ch,060h,0f0h,000h,038h,044h,0c6h,0c6h,0f6h,04ch,036h	; 60e8  ..fff|`..8D...L6
	defb 000h,0fch,066h,066h,07ch,078h,06ch,0e6h,000h,07ah,0c6h,0c0h,07ch,006h,0c6h,0bch	; 60f8  ..ff|xl..z..|...
	defb 000h,07eh,099h,018h,018h,018h,018h,03ch,000h,0efh,046h,046h,046h,046h,046h,03ch	; 6108  .~.....<..FFFFF<
	defb 000h,0efh,046h,046h,02ch,02ch,018h,018h,000h,0ceh,086h,0b6h,0b6h,056h,06ch,06ch	; 6118  ..FF,,.......Vll
	defb 000h,0efh,046h,02ch,018h,034h,062h,0f7h,000h,0efh,046h,02ch,018h,018h,018h,03ch	; 6128  ..F,.4b...F,...<
	defb 000h,0feh,08eh,01ch,038h,070h,0e2h,0feh,000h,000h,000h,018h,018h,000h,000h,000h	; 6138  ....8p..........
	defb 000h,03ch,066h,066h,00ch,018h,000h,018h,000h,008h,01ch,01ch,008h,008h,000h,008h	; 6148  .<ff............

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6158..0x6178  (32 bytes)
DATA_6158:
	defb 000h,000h,000h,000h,000h,000h,010h,008h,000h,000h,000h,000h,000h,018h,024h,018h	; 6158  ..............$.
	defb 008h,010h,020h,020h,020h,020h,010h,008h,010h,008h,004h,004h,004h,004h,008h,010h	; 6168  ..    ..........

; ----------------------------------------------------------------------
; DATOS leido_6178: 16 bytes que lee p00:4F3D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p00:4F3D (16 bytes)
;   0x6178..0x6188  (16 bytes)
DATA_leido_6178:
	defb 0fch,084h,0bch,0a0h,0a0h,0a0h,0a0h,0e0h,01ch,014h,014h,014h,014h,0f4h,084h,0fch	; 6178  ................

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6188..0x6190  (8 bytes)
DATA_6188:
	defb 000h,030h,056h,06ch,018h,036h,06ah,04ch	; 6188  .0Vl.6jL

; ----------------------------------------------------------------------
; DATOS leido_6190: 104 bytes que lee p00:4F3D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 24 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p00:4F3D (104 bytes)
;   0x6190..0x61f8  (104 bytes)
DATA_leido_6190:
	defb 000h,000h,000h,000h,07eh,000h,000h,000h,000h,000h,000h,000h,000h,000h,060h,060h	; 6190  ....~.........``
	defb 000h,000h,000h,000h,000h,060h,060h,080h,060h,060h,020h,040h,000h,000h,000h,000h	; 61a0  .....``.`` @....
	defb 000h,018h,018h,000h,018h,018h,008h,010h,000h,0ffh,026h,01ch,018h,034h,062h,0ffh	; 61b0  ..........&..4b.
	defb 000h,0ffh,043h,043h,026h,026h,01ch,01ch,000h,0ffh,056h,056h,056h,056h,056h,0ffh	; 61c0  ..CC&&....VVVVV.
	defb 000h,007h,005h,005h,005h,01dh,0d1h,0dfh,00fh,007h,007h,060h,060h,0e7h,0f7h,0f7h	; 61d0  ...........``...
	defb 0e0h,0c0h,0c0h,00ch,00ch,0ceh,0deh,0deh,0f3h,0f3h,073h,07bh,019h,001h,001h,001h	; 61e0  ..........s{....
	defb 09eh,09ch,09ch,0b8h,030h,000h,000h,000h	; 61f0  ....0...

; ----------------------------------------------------------------------
; DATOS sin identificar  0x61f8..0x6ac8  (2256 bytes)
DATA_61F8:
	defb 000h,008h,0feh,018h,028h,018h,008h,030h,000h,048h,048h,0feh,048h,048h,040h,03ch	; 61f8  ....(..0.HH.HH@<
	defb 000h,04ch,034h,008h,0feh,010h,020h,01ch,000h,040h,060h,0ceh,040h,040h,050h,08eh	; 6208  .L4... ..@`.@@P.
	defb 000h,010h,07eh,010h,03ch,062h,002h,01ch,000h,000h,01ch,0e2h,002h,002h,004h,018h	; 6218  ..~.<b..........
	defb 000h,000h,0feh,008h,010h,020h,020h,01ch,000h,040h,026h,038h,020h,040h,040h,03eh	; 6228  .....  ..@&8 @@>
	defb 000h,044h,0f2h,044h,044h,09ch,026h,018h,000h,040h,04eh,050h,040h,040h,050h,02eh	; 6238  .D.DD.&..@NP@@P.
	defb 000h,020h,02ch,0f2h,022h,066h,06ah,0a4h,000h,038h,054h,092h,092h,0a2h,0a2h,044h	; 6248  . ,."fj..8T....D
	defb 000h,084h,0beh,084h,084h,09ch,0a6h,058h,000h,000h,0e4h,026h,044h,084h,088h,070h	; 6258  .......X...&D..p
	defb 000h,000h,000h,030h,048h,084h,002h,000h,008h,07ch,008h,07ch,008h,038h,04ch,030h	; 6268  ...0H....|.|.8L0
	defb 000h,050h,05ch,072h,052h,0d2h,0a2h,064h,000h,020h,078h,020h,078h,020h,022h,01ch	; 6278  .P\rR..d. x x ".
	defb 000h,010h,04ch,052h,0e2h,024h,010h,008h,000h,008h,00eh,008h,008h,038h,04ch,032h	; 6288  ..LR.$.......8L2
	defb 000h,030h,00ch,040h,05ch,062h,002h,03ch,000h,024h,042h,042h,052h,022h,004h,038h	; 6298  .0.@\b.<.$BBR".8
	defb 000h,03ch,008h,01ch,062h,012h,02ah,03ch,000h,024h,02ch,0f4h,024h,064h,064h,0a2h	; 62a8  .<..b.*<.$,.$dd.
	defb 000h,03ch,008h,01ch,062h,002h,002h,03ch,000h,020h,02ch,0f2h,022h,062h,062h,0a4h	; 62b8  .<..b..<. ,."bb.
	defb 000h,010h,07ch,020h,03ch,048h,040h,03ch,000h,010h,020h,020h,070h,052h,092h,08ch	; 62c8  ..| <H@<..  pR..
	defb 000h,00ah,045h,072h,0cah,048h,048h,050h,005h,012h,07ch,008h,07eh,004h,040h,03ch	; 62d8  ..Er.HHP..|.~.@<
	defb 002h,085h,0beh,084h,084h,084h,084h,048h,00ah,025h,0f8h,010h,008h,000h,080h,078h	; 62e8  .......H.%.....x
	defb 000h,084h,052h,048h,040h,040h,044h,038h,00ah,015h,0fch,030h,050h,030h,010h,060h	; 62f8  ..RH@@D8...0P0.`
	defb 002h,04dh,048h,0feh,048h,048h,040h,03ch,002h,04dh,034h,008h,0feh,010h,020h,01ch	; 6308  .MH.HH@<.M4... .
	defb 000h,045h,062h,0ceh,040h,040h,050h,08eh,00ah,005h,0feh,008h,010h,020h,020h,01ch	; 6318  .Eb.@@P......  .
	defb 000h,08ah,045h,078h,040h,080h,080h,07ch,002h,085h,0beh,084h,084h,09ch,0a6h,058h	; 6328  ..Ex@..|.......X
	defb 000h,000h,000h,000h,01ch,062h,002h,00ch,000h,000h,000h,000h,044h,042h,042h,020h	; 6338  .....b......DBB
	defb 000h,000h,010h,01ch,010h,030h,058h,024h,000h,000h,0feh,004h,018h,010h,020h,040h	; 6348  .....0X$...... @
	defb 000h,000h,00eh,030h,0d0h,010h,010h,010h,000h,010h,0feh,082h,082h,002h,004h,038h	; 6358  ...0...........8
	defb 000h,008h,0feh,008h,018h,028h,048h,088h,000h,010h,07eh,012h,012h,022h,022h,044h	; 6368  .....(H...~..""D
	defb 000h,010h,0fch,010h,010h,07eh,008h,008h,000h,000h,01eh,022h,042h,004h,008h,030h	; 6378  .....~....."B..0
	defb 000h,000h,07eh,002h,002h,002h,002h,07eh,000h,044h,0feh,044h,044h,004h,008h,030h	; 6388  ..~....~.D.DD..0
	defb 000h,060h,010h,062h,012h,004h,008h,070h,000h,000h,07ch,004h,008h,010h,028h,0c6h	; 6398  .`.b...p..|...(.
	defb 000h,040h,0feh,044h,048h,040h,040h,03ch,000h,000h,01eh,022h,052h,00ch,008h,030h	; 63a8  .@.DH@@<..."R..0
	defb 000h,00ch,038h,008h,0feh,008h,008h,030h,000h,000h,0a2h,0a2h,052h,002h,004h,078h	; 63b8  ..8....0....R..x
	defb 000h,07ch,000h,0feh,008h,008h,008h,030h,000h,020h,020h,038h,024h,020h,020h,020h	; 63c8  .|.....0.  8$
	defb 000h,008h,0feh,008h,008h,008h,010h,060h,000h,000h,004h,004h,008h,008h,010h,060h	; 63d8  .......`.......`
	defb 000h,048h,048h,044h,044h,044h,082h,082h,000h,010h,0feh,010h,054h,054h,054h,092h	; 63e8  .HHDDD......TTT.
	defb 000h,000h,0feh,002h,004h,028h,010h,008h,000h,020h,020h,040h,044h,084h,082h,0feh	; 63f8  .....(...  @D...
	defb 000h,07ch,000h,0feh,002h,002h,004h,038h,000h,044h,044h,044h,004h,004h,008h,030h	; 6408  .|.....8.DDD...0
	defb 000h,010h,050h,050h,052h,052h,054h,098h,000h,000h,0feh,082h,082h,082h,082h,0feh	; 6418  ..PPRRT.........
	defb 000h,000h,0feh,082h,082h,002h,004h,038h,000h,000h,060h,012h,002h,002h,004h,078h	; 6428  .......8..`....x
	defb 00ah,02ah,0fch,024h,024h,044h,044h,088h,00ah,00ah,03ch,044h,084h,008h,010h,060h	; 6438  .*.$$DD...<D...`
	defb 005h,065h,010h,062h,012h,004h,008h,070h,005h,005h,07ch,004h,008h,010h,028h,0c6h	; 6448  .e.b...p..|...(.
	defb 005h,07dh,000h,0feh,010h,010h,010h,060h,00ah,04ah,040h,070h,048h,040h,040h,040h	; 6458  .}.....`.J@pH@@@
	defb 005h,005h,048h,044h,044h,044h,082h,082h,005h,005h,0fch,004h,004h,004h,008h,070h	; 6468  ..HDDD.........p
	defb 000h,005h,005h,030h,048h,084h,002h,000h,005h,015h,0feh,082h,082h,002h,004h,038h	; 6478  ...0H..........8
	defb 000h,002h,005h,032h,048h,084h,002h,000h,002h,085h,082h,0fch,080h,080h,080h,07ch	; 6488  ...2H..........|
	defb 002h,005h,0feh,004h,004h,004h,008h,070h,000h,000h,000h,03eh,008h,008h,008h,03eh	; 6498  .......p...>...>
	defb 000h,000h,000h,03ch,004h,004h,004h,07eh,000h,000h,000h,006h,018h,068h,008h,008h	; 64a8  ...<...~.....h..
	defb 000h,000h,000h,052h,02ah,002h,004h,018h,0feh,028h,0feh,0aah,0aah,0feh,028h,0feh	; 64b8  ...R*....(....(.
	defb 004h,00eh,0eah,0bfh,0e0h,0aeh,0eeh,00eh,008h,05ch,03eh,0dch,05ch,05ch,062h,0bfh	; 64c8  .........\>.\\b.
	defb 024h,024h,05fh,04ah,0cah,04ah,04ah,05fh,000h,005h,05eh,0e4h,05ah,05bh,066h,099h	; 64d8  $$_J.JJ_..^.Z[f.
	defb 026h,0c9h,05ah,0e6h,059h,066h,0c4h,058h,0eeh,0a0h,0ceh,0ceh,0aeh,0aah,0d9h,0a6h	; 64e8  &.Z.Yf.X........
	defb 07ch,054h,07ch,028h,07ch,028h,0feh,044h,008h,07fh,040h,06ah,075h,075h,050h,08fh	; 64f8  |T|(|(.D..@juuP.
	defb 008h,0efh,02ah,03ah,0eah,086h,086h,0e9h,000h,0feh,010h,010h,010h,010h,010h,0feh	; 6508  ..*:............
	defb 02eh,024h,05fh,055h,0d5h,055h,055h,05fh,012h,066h,02ah,0f2h,02fh,072h,0a2h,022h	; 6518  .$_U.UU_.f*./r."
	defb 054h,0feh,082h,038h,018h,0feh,008h,030h,0eeh,0eeh,0eeh,082h,0feh,0aah,0feh,0aah	; 6528  T..8...0........
	defb 0eeh,0eeh,0eeh,082h,0bah,0aah,0bah,0aah,010h,0feh,082h,07ch,000h,0feh,028h,0ceh	; 6538  ...........|..(.
	defb 000h,0feh,082h,0bah,0aah,0bah,082h,0feh,04eh,0a6h,04ah,0f4h,0beh,0f4h,0aeh,0a4h	; 6548  ........N.J.....
	defb 05eh,01eh,0bfh,05eh,05ah,06ch,04bh,0bfh,02fh,028h,04fh,049h,0c9h,056h,056h,069h	; 6558  ^..^ZlK./(OI.VVi
	defb 004h,01fh,0f5h,04ah,04fh,06eh,05eh,0afh,04eh,00ah,0cah,05fh,051h,055h,051h,0bfh	; 6568  ...JOn^.N.._QUQ.
	defb 0d4h,05ch,07eh,06ah,0beh,048h,05ch,0e2h,044h,04eh,0e4h,04eh,06ah,0c4h,04ah,051h	; 6578  .\~j.H\.DN.Nj.JQ
	defb 04ah,054h,0eah,05fh,0d4h,0d2h,054h,06bh,010h,07ch,010h,010h,0feh,020h,044h,0fah	; 6588  JT._..Tk.|... D.
	defb 010h,0feh,028h,038h,010h,0feh,010h,030h,02eh,0a2h,0aeh,0bfh,0b5h,02eh,02eh,044h	; 6598  ..(8...0.......D
	defb 020h,077h,021h,0f7h,024h,0b7h,0e0h,09fh,010h,0feh,0aah,06ch,0c6h,07ch,010h,0feh	; 65a8   w!.$......l.|..
	defb 0feh,092h,07ch,07ch,07ch,010h,0feh,010h,00ch,070h,014h,068h,014h,0feh,054h,092h	; 65b8  ..|||....p.h..T.
	defb 044h,0e4h,004h,0e4h,01eh,0e4h,0a4h,0e4h,07ch,044h,07ch,044h,07ch,044h,044h,084h	; 65c8  D.......|D|D|DD.
	defb 04eh,0fah,0f4h,04ah,038h,07ch,0feh,010h,01eh,0f2h,05eh,0f2h,05eh,0feh,015h,067h	; 65d8  N..J8|....^.^..g
	defb 07ch,044h,07ch,044h,07ch,07ch,02ah,0ceh,010h,01eh,0f4h,054h,044h,06ch,0cch,012h	; 65e8  |D|D||*....TDl..
	defb 07ch,044h,07ch,020h,0feh,044h,004h,018h,008h,01eh,0eah,04ah,04ah,06ah,092h,024h	; 65f8  |D| .D.....JJj.$
	defb 020h,040h,0feh,082h,0bah,0aah,0bah,086h,04eh,080h,03fh,042h,0c2h,042h,042h,046h	; 6608   @......N.?B.BBF
	defb 024h,0f5h,0ffh,024h,0f5h,072h,0fah,025h,008h,0feh,008h,00ch,018h,028h,0c8h,018h	; 6618  $..$.r.%.....(..
	defb 02eh,0aah,04bh,0b2h,04eh,0eah,0e4h,05bh,020h,0feh,020h,048h,05eh,0c8h,048h,07eh	; 6628  ..K.N..[ . H^.H~
	defb 060h,0a8h,05eh,0fah,0beh,0e8h,0eeh,0b9h,010h,0feh,092h,0feh,050h,030h,028h,0c6h	; 6638  `.^.........P0(.
	defb 010h,0feh,082h,038h,010h,0feh,008h,030h,010h,010h,010h,0feh,010h,010h,010h,010h	; 6648  ...8...0........
	defb 024h,07eh,024h,0ffh,000h,03ch,03ch,03ch,008h,0dah,00ch,0deh,012h,01eh,052h,092h	; 6658  $~$..<<<......R.
	defb 010h,09eh,052h,000h,008h,048h,094h,0a2h,000h,02fh,0a1h,0aah,0a4h,0e4h,0aah,031h	; 6668  ..R..H.../.....1
	defb 00ah,049h,0deh,048h,048h,048h,0d4h,062h,004h,0eah,0b1h,0ceh,0ffh,0a4h,0eeh,095h	; 6678  .I.HHH.b........
	defb 07eh,034h,0ffh,081h,0bdh,02ch,018h,0e7h,024h,03fh,04eh,0c0h,04eh,040h,05fh,05fh	; 6688  ~4...,..$?N.N@__
	defb 07ch,054h,07ch,054h,07ch,02ah,0a5h,09eh,050h,07ch,090h,010h,0feh,010h,028h,0c6h	; 6698  |T|T|*..P|....(.
	defb 024h,03fh,044h,05fh,0dfh,054h,04ch,053h,004h,0ffh,0a4h,0ffh,0a2h,0bfh,0eah,006h	; 66a8  $?D_.TLS........
	defb 000h,008h,010h,010h,030h,028h,044h,083h,07ch,008h,010h,0feh,008h,008h,008h,030h	; 66b8  ....0(D.|......0
	defb 056h,050h,0bfh,052h,0fah,07ah,052h,056h,050h,07ch,090h,010h,07ch,010h,010h,0feh	; 66c8  VP.R.zRVP|..|...
	defb 000h,0feh,028h,06ah,0bch,068h,04ah,086h,010h,092h,092h,0feh,010h,092h,092h,0feh	; 66d8  ..(j.hJ.........
	defb 000h,0feh,010h,010h,05ch,050h,050h,0feh,044h,04eh,0eeh,0e0h,04eh,04ah,04eh,04ah	; 66e8  ....\PP.DN..NJNJ
	defb 040h,0eeh,004h,0e4h,00eh,0ech,0ach,0feh,010h,014h,0feh,010h,030h,010h,028h,0c6h	; 66f8  @...........0.(.
	defb 024h,04ah,0a4h,05bh,0e4h,042h,0ech,042h,054h,054h,0feh,054h,054h,05ch,040h,07eh	; 6708  $J.[.B.BTT.TT\@~
	defb 054h,065h,0ffh,0f4h,0f5h,022h,0f6h,021h,005h,07fh,044h,044h,074h,055h,052h,0a5h	; 6718  Te...".!..DDtUR.
	defb 010h,028h,044h,0feh,010h,07ch,010h,0feh,050h,07ch,090h,010h,0feh,028h,048h,086h	; 6728  .(D..|..P|...(H.
	defb 044h,0feh,000h,0eah,0aah,0eah,0aah,0a6h,03eh,03eh,03eh,048h,07eh,09ch,008h,07fh	; 6738  D.......>>>H~...
	defb 044h,05fh,0eah,05fh,064h,05fh,0cah,044h,042h,044h,0e8h,04fh,0eah,0eah,0eah,04ah	; 6748  D_._d_.DBD.O...J
	defb 00eh,064h,02ah,045h,07fh,0a4h,02eh,055h,024h,0eeh,024h,0eeh,010h,0feh,0e8h,046h	; 6758  .d*E...U$.$....F
	defb 000h,0eeh,0eah,0eah,08ah,0cah,0a8h,008h,000h,0b9h,02dh,0bdh,02dh,07dh,093h,0a9h	; 6768  ..........-.-}..
	defb 020h,0feh,020h,05ch,048h,0deh,044h,048h,014h,05eh,024h,0dfh,040h,04eh,04ah,0bfh	; 6778   . \H.DH.^$.@NJ.
	defb 044h,05fh,0ffh,044h,05fh,06ah,0c4h,05bh,010h,0feh,038h,038h,0feh,082h,0bah,0bah	; 6788  D_.D_j.[..88....
	defb 042h,0efh,022h,0a2h,04ah,062h,086h,002h,041h,0e6h,01ah,0efh,012h,0efh,0b8h,0e7h	; 6798  B.".Jb..A.......
	defb 040h,01eh,0deh,05eh,054h,05ch,052h,0bfh,024h,03fh,044h,04eh,0d5h,064h,04eh,044h	; 67a8  @..^T\R.$?DN.dND
	defb 014h,0feh,0b2h,0feh,0ach,0ech,0b4h,0b7h,025h,024h,05fh,044h,0c4h,042h,042h,041h	; 67b8  ........%$_D.BBA
	defb 028h,06eh,00eh,068h,06eh,06eh,0a5h,09fh,024h,034h,07fh,055h,0d5h,055h,050h,04eh	; 67c8  (n.hnn..$4.U.UPN
	defb 010h,010h,0feh,010h,010h,010h,028h,0c6h,000h,000h,020h,03ch,044h,0a8h,010h,008h	; 67d8  ......(... <D...
	defb 040h,077h,0a5h,025h,0f5h,025h,057h,080h,010h,0feh,010h,03ch,0bch,0bch,080h,0feh	; 67e8  @w.%.%W....<....
	defb 008h,07fh,040h,07fh,044h,044h,044h,08ch,024h,07eh,03ch,07eh,020h,07eh,0beh,03eh	; 67f8  ..@.DDD.$~<~ ~.>
	defb 0feh,0aah,010h,0feh,020h,0bch,0bch,0feh,010h,0feh,092h,092h,0feh,010h,010h,010h	; 6808  .... ...........
	defb 008h,0c4h,03fh,004h,0deh,004h,044h,0bfh,05eh,004h,0deh,05eh,05eh,05eh,052h,0bfh	; 6818  ..?...D.^..^^^R.
	defb 020h,02eh,040h,05fh,0c4h,04ah,052h,05dh,04ah,05fh,0e4h,04ah,071h,0ceh,04ah,04eh	; 6828   .@_.JR]J_.Jq.JN
	defb 0eeh,0eeh,082h,0eah,0feh,0aah,0dah,086h,04ah,01bh,0cah,05bh,04ah,052h,040h,0bfh	; 6838  ........J..[JR@.
	defb 030h,0c4h,0ffh,045h,0f5h,0f5h,049h,0f2h,020h,03fh,042h,0deh,056h,05eh,042h,044h	; 6848  0..E..I. ?B.V^BD
	defb 000h,030h,008h,008h,00ch,014h,022h,0c1h,040h,07eh,088h,03ch,048h,048h,0feh,008h	; 6858  .0....".@~.<HH..
	defb 048h,0aeh,0e8h,006h,0e8h,0eeh,0e8h,0a6h,024h,05fh,0b5h,055h,0bbh,051h,0f3h,051h	; 6868  H.......$_.U.Q.Q
	defb 07ah,025h,042h,0bdh,028h,07eh,029h,0c7h,0e8h,0afh,0eah,0b6h,0e6h,0a4h,04ah,0b1h	; 6878  z%B.(~).......J.
	defb 07eh,040h,07eh,062h,054h,048h,074h,082h,05fh,0e4h,015h,0eeh,01fh,0e4h,0a4h,0e4h	; 6888  ~@~bTHt._.......
	defb 02ah,03fh,04ah,0ffh,048h,05fh,07fh,04fh,07dh,056h,0d4h,053h,0fdh,056h,054h,093h	; 6898  *?J.H_.O}V.S.VT.
	defb 020h,022h,012h,004h,044h,029h,090h,06fh,000h,0feh,010h,030h,058h,096h,010h,010h	; 68a8   "..D).o...0X...
	defb 010h,07ch,010h,0feh,010h,028h,044h,082h,028h,044h,082h,07ch,024h,024h,024h,048h	; 68b8  .|...(D.(D.|$$$H
	defb 010h,0feh,028h,0aah,03ch,0c8h,038h,0c6h,0eeh,0eeh,0eeh,08ah,0beh,09ah,0aah,0cah	; 68c8  ..(.<.8.........
	defb 010h,0feh,020h,03ch,024h,024h,054h,088h,004h,0ceh,004h,0dfh,008h,04ah,096h,099h	; 68d8  .. <$$T......J..
	defb 028h,028h,02ah,0ech,028h,028h,068h,086h,04eh,0fah,048h,0feh,06ah,0feh,0fah,04dh	; 68e8  ((*.((h.N.H.j..M
	defb 008h,048h,0ech,04ah,0abh,0ach,048h,090h,00eh,0eah,0aeh,0eah,0aeh,0eah,00ah,012h	; 68f8  .H.J..H.........
	defb 018h,024h,07eh,081h,07eh,05ah,06ah,008h,010h,010h,010h,0feh,092h,0feh,092h,0feh	; 6908  .$~.~Zj.........
	defb 010h,092h,0dah,0b6h,0dah,0b6h,092h,0feh,07fh,049h,07fh,049h,07fh,049h,049h,081h	; 6918  .........I.I.II.
	defb 03ch,018h,07eh,07eh,018h,0ffh,024h,018h,020h,020h,0feh,022h,022h,042h,042h,08ch	; 6928  <.~~..$.  .""BB.
	defb 042h,0f4h,0afh,0eah,04fh,0efh,0aah,0afh,000h,0eeh,04eh,04eh,0e4h,04eh,044h,0eeh	; 6938  B...O.....NN.ND.
	defb 000h,0feh,004h,018h,010h,010h,010h,030h,004h,00fh,0fah,0e4h,0eah,0f1h,0eeh,00eh	; 6948  .......0........
	defb 07fh,052h,07fh,052h,040h,05eh,05eh,09eh,07fh,052h,07fh,052h,044h,057h,054h,0bfh	; 6958  .R.R@^^..R.RDWT.
	defb 0eeh,0aah,0fah,044h,06ah,0d1h,0ceh,0eeh,00ah,0feh,068h,064h,0fah,000h,0aah,09ch	; 6968  ...Dj.....hd....
	defb 000h,030h,008h,010h,054h,08ah,08ah,030h,010h,07ch,010h,0feh,028h,06ch,0aah,028h	; 6978  .0..T..0.|..(l.(
	defb 008h,07eh,03ch,0ffh,03ch,03ch,024h,04ch,02eh,042h,0aeh,05fh,0e4h,05fh,0eeh,055h	; 6988  .~<.<<$L.B._._.U
	defb 02eh,0dfh,044h,0eeh,04eh,0eeh,0c4h,05fh,02fh,074h,0f6h,076h,026h,0f6h,026h,059h	; 6998  ..D.N.._/t.v&.&Y
	defb 07fh,044h,05eh,05eh,05eh,044h,056h,0a5h,01ch,024h,008h,07eh,052h,07eh,040h,07eh	; 69a8  .D^^^DV..$.~R~@~
	defb 010h,0feh,038h,0feh,052h,0cch,054h,062h,000h,07ch,000h,0feh,010h,054h,092h,030h	; 69b8  ..8.R.Tb.|...T.0
	defb 010h,028h,044h,0bah,000h,07ch,044h,07ch,010h,028h,044h,0bah,000h,07ch,004h,038h	; 69c8  .(D..|D|.(D..|.8
	defb 010h,07eh,010h,014h,03eh,024h,044h,0bfh,020h,020h,0feh,020h,07eh,062h,0a2h,0beh	; 69d8  .~..>$D.  . ~b..
	defb 010h,07ch,054h,054h,0feh,010h,028h,0c6h,024h,04eh,0bfh,04eh,0eeh,04ah,0ffh,042h	; 69e8  .|TT..(.$N.N.J.B
	defb 02fh,049h,0a6h,04fh,0e2h,04fh,0e2h,04fh,008h,0feh,054h,05ch,040h,05ch,04ch,0b6h	; 69f8  /I.O.O.O..T\@\L.
	defb 010h,054h,054h,038h,0feh,028h,028h,0c6h,000h,040h,020h,020h,020h,020h,022h,01ch	; 6a08  .TT8.((..@    ".
	defb 000h,000h,000h,020h,07eh,014h,008h,008h,005h,005h,0e4h,026h,044h,084h,088h,070h	; 6a18  ... ~......&D..p
	defb 005h,005h,01eh,022h,052h,00ch,008h,030h,002h,005h,04ah,044h,044h,044h,082h,082h	; 6a28  ..."R..0..JDDD..
	defb 000h,010h,078h,020h,03ch,06ah,0b2h,064h,000h,000h,080h,084h,082h,082h,080h,040h	; 6a38  ..x <j.d.......@
	defb 000h,03ch,000h,01ch,062h,002h,002h,01ch,000h,03ch,000h,01ch,064h,008h,018h,06eh	; 6a48  .<..b....<..d..n
	defb 000h,024h,07ah,020h,03ch,062h,0a2h,06ch,000h,008h,044h,072h,0cah,048h,048h,050h	; 6a58  .$z <b.l..Dr.HHP
	defb 000h,010h,07ch,008h,07eh,004h,040h,03ch,000h,008h,010h,020h,040h,020h,010h,008h	; 6a68  ..|.~.@<... @ ..
	defb 000h,084h,0beh,084h,084h,084h,084h,048h,000h,078h,004h,008h,000h,000h,040h,03ch	; 6a78  .......H.x....@<
	defb 000h,010h,07ch,008h,004h,000h,040h,03ch,00ah,035h,008h,010h,054h,08ah,08ah,030h	; 6a88  ..|...@<.5..T..0
	defb 052h,0ffh,0bdh,03ch,07eh,052h,056h,010h,000h,07eh,042h,07eh,042h,07eh,042h,07eh	; 6a98  R..<~RV..~B~B~B~
	defb 008h,028h,07fh,051h,075h,053h,071h,006h,008h,049h,02ah,07fh,001h,07fh,001h,07fh	; 6aa8  .(.QuSq..I*.....
	defb 008h,02fh,072h,02ah,0dah,064h,0b6h,029h,000h,000h,07eh,010h,010h,010h,010h,07eh	; 6ab8  ./r*.d.)..~....~

; ----------------------------------------------------------------------
; DATOS rle_6AC8: graficos comprimidos a la VRAM (p00:4B3C): 0 acaba, n < 0x80
;   repite el byte de detras, 0x80 y una direccion nueva, 0x81-0xFF copian n &
;   0x7F bytes; se solapan 3 bloques: (rle_vram_6AC8 6AC8-6B21)
;   (juegos_por_e440 6B1F-6B43); lo leen p00:5155, p00:4B3C, p00:5121 (123
;   bytes)
;   0x6ac8..0x6b43  (123 bytes)
DATA_rle_6AC8:
	defb 002h,000h,08dh,004h,000h,00eh,01bh,015h,05bh,02bh,011h,00ah,05dh,01fh,00ch,001h	; 6ac8  ........[+..]...
	defb 004h,000h,0b2h,088h,060h,0b4h,098h,0d8h,0d0h,0a4h,050h,008h,058h,0b0h,060h,000h	; 6ad8  ....`.....P.X.`.
	defb 001h,042h,038h,074h,0f1h,049h,007h,03dh,08fh,09fh,02bh,047h,0cah,071h,07ch,019h	; 6ae8  .B8t.I.=..+G.q|.
	defb 080h,045h,01eh,02fh,04eh,092h,0e4h,0e0h,0f2h,070h,0a4h,0e2h,0d6h,04eh,03ch,091h	; 6af8  .E./N....p...N<.
	defb 000h,030h,040h,020h,040h,007h,000h,089h,080h,020h,040h,008h,000h,014h,002h,008h	; 6b08  .0@ @.... @.....
	defb 001h,007h,000h,084h,002h,000h,009h,002h,000h,043h,06bh,0b3h,06bh,043h,06bh,04bh	; 6b18  .........Ck.kCkK
	defb 06bh,0b3h,06bh,053h,06bh,05bh,06bh,063h,06bh,06bh,06bh,0b3h,06bh,073h,06bh,08bh	; 6b28  k.kSk[kckkk.ksk.
	defb 06bh,093h,06bh,09bh,06bh,0a3h,06bh,0abh,06bh,0a3h,06bh	; 6b38  k.k.k.k.k.k

; ----------------------------------------------------------------------
; DATOS juego_6B43: el juego de 0xE440 = 1, 3: cuatro punteros (p00:5124):
;   lista de graficos, de copias con vuelta, de dibujos de sprite y de
;   espejos; lo leen p00:5124 (8 bytes)
;   0x6b43..0x6b4b  (8 bytes)
DATA_juego_6B43:
	defw 06c1eh,06c43h,0876ah,0876eh	; 6b43  -> DATA_graficos_6C1E DATA_copias_6C43 0x876a 0x876e

; ----------------------------------------------------------------------
; DATOS juego_6B4B: el juego de 0xE440 = 4: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6b4b..0x6b53  (8 bytes)
DATA_juego_6B4B:
	defw 06c50h,06c75h,06bbbh,06bbbh	; 6b4b  -> DATA_graficos_6C50 DATA_copias_6C75 DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6B53: el juego de 0xE440 = 6: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6b53..0x6b5b  (8 bytes)
DATA_juego_6B53:
	defw 06bcbh,06bbbh,074e1h,0759ah	; 6b53  -> DATA_graficos_6BCB DATA_sprites_6BBB DATA_sprites_74E1 DATA_espejos_759A

; ----------------------------------------------------------------------
; DATOS juego_6B5B: el juego de 0xE440 = 7: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6b5b..0x6b63  (8 bytes)
DATA_juego_6B5B:
	defw 06bc4h,06bbbh,06bbbh,06bbbh	; 6b5b  -> DATA_graficos_6BC4 DATA_sprites_6BBB DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6B63: el juego de 0xE440 = 8: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6b63..0x6b6b  (8 bytes)
DATA_juego_6B63:
	defw 06bd2h,06bf1h,06bbbh,06bbbh	; 6b63  -> DATA_graficos_6BD2 DATA_copias_6BF1 DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6B6B: el juego de 0xE440 = 9: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6b6b..0x6b73  (8 bytes)
DATA_juego_6B6B:
	defw 06bfah,06c0dh,06bbbh,06bbbh	; 6b6b  -> DATA_graficos_6BFA DATA_copias_6C0D DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6B73: el juego de 0xE440 = 11: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6b73..0x6b7b  (8 bytes)
DATA_juego_6B73:
	defw 06c7eh,06c97h,06bbbh,06bbbh	; 6b73  -> DATA_graficos_6C7E DATA_copias_6C97 DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6B7B: un juego de p00:516F (bit 0 de IX+1C a 0): cuatro punteros
;   (p00:5124): lista de graficos, de copias con vuelta, de dibujos de sprite
;   y de espejos; lo leen p00:5181 (8 bytes)
;   0x6b7b..0x6b83  (8 bytes)
DATA_juego_6B7B:
	defw 06c8ah,06c97h,06bbbh,06bbbh	; 6b7b  -> 0x6c8a DATA_copias_6C97 DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6B83: un juego de p00:516F (bit 0 de IX+1C a 1): cuatro punteros
;   (p00:5124): lista de graficos, de copias con vuelta, de dibujos de sprite
;   y de espejos; lo leen p00:5181 (8 bytes)
;   0x6b83..0x6b8b  (8 bytes)
DATA_juego_6B83:
	defw 06ca8h,06cb5h,06bbbh,06bbbh	; 6b83  -> DATA_graficos_6CA8 DATA_copias_6CB5 DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6B8B: el juego de 0xE440 = 12: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6b8b..0x6b93  (8 bytes)
DATA_juego_6B8B:
	defw 06ce6h,06cf3h,06bbbh,06bbbh	; 6b8b  -> DATA_graficos_6CE6 DATA_copias_6CF3 DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6B93: el juego de 0xE440 = 13: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6b93..0x6b9b  (8 bytes)
DATA_juego_6B93:
	defw 06bbbh,06bbbh,06bbbh,06bbbh	; 6b93  -> DATA_sprites_6BBB DATA_sprites_6BBB DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6B9B: el juego de 0xE440 = 14: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6b9b..0x6ba3  (8 bytes)
DATA_juego_6B9B:
	defw 06cc6h,06cd9h,06bbbh,06bbbh	; 6b9b  -> DATA_graficos_6CC6 DATA_copias_6CD9 DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6BA3: el juego de 0xE440 = 15, 17: cuatro punteros (p00:5124):
;   lista de graficos, de copias con vuelta, de dibujos de sprite y de
;   espejos; lo leen p00:5124 (8 bytes)
;   0x6ba3..0x6bab  (8 bytes)
DATA_juego_6BA3:
	defw 06d7ch,06dadh,06bbbh,06bbbh	; 6ba3  -> DATA_graficos_6D7C DATA_copias_6DAD DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS juego_6BAB: el juego de 0xE440 = 16: cuatro punteros (p00:5124): lista
;   de graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo
;   leen p00:5124 (8 bytes)
;   0x6bab..0x6bb3  (8 bytes)
DATA_juego_6BAB:
	defw 06bbbh,06bbbh,0876ah,0876eh	; 6bab  -> DATA_sprites_6BBB DATA_sprites_6BBB 0x876a 0x876e

; ----------------------------------------------------------------------
; DATOS juego_6BB3: el juego de 0xE440 = 2, 5, 10: cuatro punteros (p00:5124):
;   lista de graficos, de copias con vuelta, de dibujos de sprite y de
;   espejos; lo leen p00:5124 (8 bytes)
;   0x6bb3..0x6bbb  (8 bytes)
DATA_juego_6BB3:
	defw 06bbbh,06bbbh,06bbbh,06bbbh	; 6bb3  -> DATA_sprites_6BBB DATA_sprites_6BBB DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS sprites_6BBB: lista de dibujos de sprite (p00:50C2): de 3 en 3, el
;   primer dibujo y el RLE que va ahi; acaba en 0; se solapan 22 bloques:
;   (espejos_6BBB 6BBB-6BBC) (espejos_6BBB 6BBB-6BBC) (espejos_6BBB 6BBB-6BBC)
;   (espejos_6BBB 6BBB-6BBC) (copias_6BBB 6BBB-6BBC) (copias_6BBB 6BBB-6BBC)
;   (espejos_6BBB 6BBB-6BBC) (espejos_6BBB 6BBB-6BBC) (espejos_6BBB 6BBB-6BBC)
;   (espejos_6BBB 6BBB-6BBC) (espejos_6BBB 6BBB-6BBC) (graficos_6BBB
;   6BBB-6BBC) (copias_6BBB 6BBB-6BBC) (espejos_6BBB 6BBB-6BBC) (espejos_6BBB
;   6BBB-6BBC) (espejos_6BBB 6BBB-6BBC) (graficos_6BBB 6BBB-6BBC) (copias_6BBB
;   6BBB-6BBC) (graficos_6BBB 6BBB-6BBC) (copias_6BBB 6BBB-6BBC) (espejos_6BBB
;   6BBB-6BBC); lo leen p00:5142, p00:514C, p00:5138, p00:512C (1 bytes)
;   0x6bbb..0x6bbc  (1 bytes)
DATA_sprites_6BBB:
	defb 000h	; 6bbb

; ----------------------------------------------------------------------
; DATOS juego_6BBC: un juego de p00:515F: cuatro punteros (p00:5124): lista de
;   graficos, de copias con vuelta, de dibujos de sprite y de espejos; lo leen
;   p00:5162 (8 bytes)
;   0x6bbc..0x6bc4  (8 bytes)
DATA_juego_6BBC:
	defw 06dc2h,06dd5h,06bbbh,06bbbh	; 6bbc  -> DATA_graficos_6DC2 DATA_copias_6DD5 DATA_sprites_6BBB DATA_sprites_6BBB

; ----------------------------------------------------------------------
; DATOS graficos_6BC4: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (7 bytes)
;   0x6bc4..0x6bcb  (7 bytes)
DATA_graficos_6BC4:
	defb 007h,09fh,075h,080h,014h,079h	; 6bc4
	defb 000h	; 6bca

; ----------------------------------------------------------------------
; DATOS graficos_6BCB: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (7 bytes)
;   0x6bcb..0x6bd2  (7 bytes)
DATA_graficos_6BCB:
	defb 007h,0e6h,06dh,059h,005h,073h	; 6bcb
	defb 000h	; 6bd1

; ----------------------------------------------------------------------
; DATOS graficos_6BD2: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (31 bytes)
;   0x6bd2..0x6bf1  (31 bytes)
DATA_graficos_6BD2:
	defb 007h,0a0h,07bh,060h,072h,07fh	; 6bd2
	defb 007h,023h,07ch,072h,08bh,07fh	; 6bd8
	defb 007h,054h,07ch,0b0h,0fbh,07dh	; 6bde
	defb 007h,022h,07fh,0e8h,0afh,07fh	; 6be4
	defb 007h,0f0h,07fh,090h,0dbh,080h	; 6bea
	defb 000h	; 6bf0

; ----------------------------------------------------------------------
; DATOS copias_6BF1: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de el juego de 0xE440 = 8; lo leen p00:5138 (9 bytes)
;   0x6bf1..0x6bfa  (9 bytes)
DATA_copias_6BF1:
	defb 072h,078h,03ch,006h	; 6bf1
	defb 0e8h,0f2h,03ch,00ah	; 6bf5
	defb 000h	; 6bf9

; ----------------------------------------------------------------------
; DATOS graficos_6BFA: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (19 bytes)
;   0x6bfa..0x6c0d  (19 bytes)
DATA_graficos_6BFA:
	defb 007h,09ch,081h,060h,00eh,082h	; 6bfa
	defb 007h,058h,082h,07ch,0cah,082h	; 6c00
	defb 007h,00dh,083h,098h,05fh,083h	; 6c06
	defb 000h	; 6c0c

; ----------------------------------------------------------------------
; DATOS copias_6C0D: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de el juego de 0xE440 = 9; lo leen p00:5138 (17 bytes)
;   0x6c0d..0x6c1e  (17 bytes)
DATA_copias_6C0D:
	defb 060h,06eh,0bfh,00eh	; 6c0d
	defb 07ch,08ah,03fh,00eh	; 6c11
	defb 098h,0a2h,03fh,00ah	; 6c15
	defb 098h,0ach,0bfh,014h	; 6c19
	defb 000h	; 6c1d

; ----------------------------------------------------------------------
; DATOS graficos_6C1E: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (37 bytes)
;   0x6c1e..0x6c43  (37 bytes)
DATA_graficos_6C1E:
	defb 007h,099h,083h,059h,0a4h,083h	; 6c1e
	defb 007h,0afh,083h,05bh,014h,084h	; 6c24
	defb 007h,070h,084h,07bh,0bfh,084h	; 6c2a
	defb 007h,00bh,085h,08fh,012h,085h	; 6c30
	defb 007h,01ch,085h,0b0h,036h,086h	; 6c36
	defb 007h,02bh,087h,0f6h,048h,087h	; 6c3c
	defb 000h	; 6c42

; ----------------------------------------------------------------------
; DATOS copias_6C43: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de el juego de 0xE440 = 1, 3; lo leen p00:5138 (13 bytes)
;   0x6c43..0x6c50  (13 bytes)
DATA_copias_6C43:
	defb 05bh,06bh,0bch,010h	; 6c43
	defb 07bh,085h,0bch,00ah	; 6c47
	defb 0b0h,0d3h,0bch,023h	; 6c4b
	defb 000h	; 6c4f

; ----------------------------------------------------------------------
; DATOS graficos_6C50: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (37 bytes)
;   0x6c50..0x6c75  (37 bytes)
DATA_graficos_6C50:
	defb 007h,0e5h,087h,060h,01eh,088h	; 6c50
	defb 007h,057h,088h,072h,062h,088h	; 6c56
	defb 007h,06dh,088h,0b0h,044h,089h	; 6c5c
	defb 007h,025h,08ah,0e8h,057h,08ah	; 6c62
	defb 007h,088h,08ah,0eeh,095h,08ah	; 6c68
	defb 007h,0a7h,08ah,0f0h,0b6h,08ah	; 6c6e
	defb 000h	; 6c74

; ----------------------------------------------------------------------
; DATOS copias_6C75: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de el juego de 0xE440 = 4; lo leen p00:5138 (9 bytes)
;   0x6c75..0x6c7e  (9 bytes)
DATA_copias_6C75:
	defb 060h,069h,0bch,009h	; 6c75
	defb 0b0h,0cch,0bch,01ch	; 6c79
	defb 000h	; 6c7d

; ----------------------------------------------------------------------
; DATOS graficos_6C7E: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; se solapan 2 bloques: (graficos_6C8A 6C8A-6C97); lo leen p00:512C
;   (25 bytes)
;   0x6c7e..0x6c97  (25 bytes)
DATA_graficos_6C7E:
	defb 007h,0cfh,090h,07bh,0e1h,091h	; 6c7e
	defb 007h,0f4h,092h,0f0h,0fdh,092h	; 6c84
	defb 007h,0cdh,08ah,059h,029h,08bh	; 6c8a
	defb 007h,078h,08bh,0a0h,0abh,08ch	; 6c90
	defb 000h	; 6c96

; ----------------------------------------------------------------------
; DATOS copias_6C97: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de un juego de p00:516F (bit 0 de IX+1C a 0); lo leen p00:5138
;   (17 bytes)
;   0x6c97..0x6ca8  (17 bytes)
DATA_copias_6C97:
	defb 059h,06ah,0bch,011h	; 6c97
	defb 06ah,06ah,03ch,011h	; 6c9b
	defb 0a0h,0c7h,0bch,027h	; 6c9f
	defb 0c7h,0c7h,03ch,027h	; 6ca3
	defb 000h	; 6ca7

; ----------------------------------------------------------------------
; DATOS graficos_6CA8: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (13 bytes)
;   0x6ca8..0x6cb5  (13 bytes)
DATA_graficos_6CA8:
	defb 007h,0ceh,08dh,059h,02ah,08eh	; 6ca8
	defb 007h,079h,08eh,0a0h,0ach,08fh	; 6cae
	defb 000h	; 6cb4

; ----------------------------------------------------------------------
; DATOS copias_6CB5: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de un juego de p00:516F (bit 0 de IX+1C a 1); lo leen p00:5138
;   (17 bytes)
;   0x6cb5..0x6cc6  (17 bytes)
DATA_copias_6CB5:
	defb 059h,06ah,0bch,011h	; 6cb5
	defb 06ah,06ah,03ch,011h	; 6cb9
	defb 0a0h,0c7h,0bch,027h	; 6cbd
	defb 0c7h,0c7h,03ch,027h	; 6cc1
	defb 000h	; 6cc5

; ----------------------------------------------------------------------
; DATOS graficos_6CC6: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (19 bytes)
;   0x6cc6..0x6cd9  (19 bytes)
DATA_graficos_6CC6:
	defb 007h,00eh,093h,070h,019h,093h	; 6cc6
	defb 007h,01ch,093h,074h,084h,093h	; 6ccc
	defb 007h,0c4h,093h,0b0h,0bch,094h	; 6cd2
	defb 000h	; 6cd8

; ----------------------------------------------------------------------
; DATOS copias_6CD9: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de el juego de 0xE440 = 14; lo leen p00:5138 (13 bytes)
;   0x6cd9..0x6ce6  (13 bytes)
DATA_copias_6CD9:
	defb 070h,072h,03ch,002h	; 6cd9
	defb 070h,082h,0bch,012h	; 6cdd
	defb 0b0h,0d1h,0bch,022h	; 6ce1
	defb 000h	; 6ce5

; ----------------------------------------------------------------------
; DATOS graficos_6CE6: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (13 bytes)
;   0x6ce6..0x6cf3  (13 bytes)
DATA_graficos_6CE6:
	defb 007h,060h,095h,05ch,072h,095h	; 6ce6
	defb 007h,083h,095h,064h,004h,097h	; 6cec
	defb 000h	; 6cf2

; ----------------------------------------------------------------------
; DATOS copias_6CF3: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de el juego de 0xE440 = 12; lo leen p00:5138 (9 bytes)
;   0x6cf3..0x6cfc  (9 bytes)
DATA_copias_6CF3:
	defb 05ch,05eh,0bch,002h	; 6cf3
	defb 068h,098h,0bch,02dh	; 6cf7
	defb 000h	; 6cfb

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6cfc..0x6d7c  (128 bytes)
DATA_6CFC:
	defb 007h,046h,098h,059h,0adh,098h,007h,0f9h,098h,08bh,005h,099h,007h,00ch,099h,093h	; 6cfc  .F.Y............
	defb 03bh,099h,007h,054h,099h,0a1h,093h,099h,007h,0d0h,099h,0adh,0e5h,09ah,000h,05fh	; 6d0c  ...T..........._
	defb 068h,03ch,009h,059h,071h,03ch,004h,059h,075h,0bch,00bh,066h,080h,0bch,001h,07bh	; 6d1c  h<.Yq<.Yu..f...{
	defb 081h,03ch,005h,080h,086h,03ch,001h,075h,087h,03ch,004h,08bh,08dh,03ch,002h,093h	; 6d2c  .<...<.u.<...<..
	defb 09ah,03ch,007h,0a1h,0a9h,0bch,004h,0b5h,0d1h,03ch,007h,0bdh,0d8h,03ch,001h,0bfh	; 6d3c  .<.......<...<..
	defb 0d9h,03ch,002h,0cch,0dbh,03ch,001h,0c1h,0dch,03ch,001h,0b5h,0ddh,0bch,004h,0bah	; 6d4c  .<...<...<......
	defb 0e1h,0bch,003h,0beh,0e4h,0bch,009h,0c8h,0edh,0bch,006h,0ddh,0f3h,03ch,006h,0e5h	; 6d5c  .............<..
	defb 0f9h,03ch,003h,0f1h,0fch,03ch,001h,0ceh,0fdh,0bch,003h,0fdh,0fdh,03ch,003h,000h	; 6d6c  .<...<.......<..

; ----------------------------------------------------------------------
; DATOS graficos_6D7C: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (49 bytes)
;   0x6d7c..0x6dad  (49 bytes)
DATA_graficos_6D7C:
	defb 007h,0fdh,09bh,059h,025h,09ch	; 6d7c
	defb 007h,043h,09ch,065h,0c3h,09ch	; 6d82
	defb 007h,012h,09dh,077h,0dbh,09dh	; 6d88
	defb 007h,066h,09eh,090h,00eh,09fh	; 6d8e
	defb 007h,0bbh,09fh,0a6h,055h,0a0h	; 6d94
	defb 007h,0f6h,0a0h,0d0h,012h,0a1h	; 6d9a
	defb 007h,025h,0a1h,0d4h,096h,0a1h	; 6da0
	defb 007h,0ffh,0a1h,0f0h,03fh,0a2h	; 6da6
	defb 000h	; 6dac

; ----------------------------------------------------------------------
; DATOS copias_6DAD: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de el juego de 0xE440 = 15, 17; lo leen p00:5138 (17 bytes)
;   0x6dad..0x6dbe  (17 bytes)
DATA_copias_6DAD:
	defb 059h,05fh,0bch,006h	; 6dad
	defb 0a6h,0bbh,0bch,015h	; 6db1
	defb 0d4h,0e2h,0bch,00eh	; 6db5
	defb 0f0h,0f8h,0bch,008h	; 6db9
	defb 000h	; 6dbd

; ----------------------------------------------------------------------
; DATOS sin identificar  0x6dbe..0x6dc2  (4 bytes)
DATA_6DBE:
	defb 0a4h,06fh,087h,000h	; 6dbe

; ----------------------------------------------------------------------
; DATOS graficos_6DC2: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:512C (19 bytes)
;   0x6dc2..0x6dd5  (19 bytes)
DATA_graficos_6DC2:
	defb 007h,07bh,0a2h,05dh,0e8h,0a3h	; 6dc2
	defb 007h,0cch,0a4h,0bah,0ffh,0a5h	; 6dc8
	defb 007h,0afh,0a6h,0f6h,001h,0a7h	; 6dce
	defb 000h	; 6dd4

; ----------------------------------------------------------------------
; DATOS copias_6DD5: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B) de un juego de p00:515F; lo leen p00:5138 (17 bytes)
;   0x6dd5..0x6de6  (17 bytes)
DATA_copias_6DD5:
	defb 05eh,08ch,0bch,02eh	; 6dd5
	defb 08ch,08ch,03ch,02eh	; 6dd9
	defb 0cah,0e0h,0bch,016h	; 6ddd
	defb 0e0h,0e0h,03ch,016h	; 6de1
	defb 000h	; 6de5

; ----------------------------------------------------------------------
; DATOS rle_6DE6: los dibujos de una entrada de la lista de graficos de
;   20:6BCB, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6DE6
;   6DE6-7305); lo leen p00:4CFF, p00:4B3C (1311 bytes)
;   0x6de6..0x7305  (1311 bytes)
DATA_rle_6DE6:
	defb 093h,060h,0fch,0feh,09fh,08fh,007h,001h,000h,07fh,0fch,0ffh,0f4h,0c6h,0aeh,059h	; 6de6  .`.............Y
	defb 00fh,006h,00ah,001h,004h,000h,0e5h,007h,00fh,0ffh,0c0h,00fh,01fh,07eh,0ech,0c0h	; 6df6  .............~..
	defb 000h,000h,001h,002h,008h,030h,063h,06fh,000h,000h,001h,01eh,070h,0c0h,0c7h,0bch	; 6e06  .....0co....p...
	defb 001h,001h,000h,001h,007h,003h,007h,03fh,07fh,0ffh,0ffh,0f4h,0c6h,0aeh,059h,0cfh	; 6e16  .......?......Y.
	defb 0e1h,0feh,0bfh,03fh,07fh,0feh,0ffh,0ffh,07fh,07fh,0f8h,0e0h,0c7h,088h,080h,000h	; 6e26  ...?............
	defb 0e1h,0edh,0f9h,0fch,00eh,03fh,00fh,007h,000h,000h,080h,044h,041h,0ebh,0fbh,0ffh	; 6e36  .....?.....DA...
	defb 001h,002h,012h,024h,0dfh,0fbh,0ffh,0ffh,001h,001h,006h,03ch,0f8h,0f3h,0fch,0f2h	; 6e46  ...$.......<....
	defb 008h,010h,010h,030h,030h,024h,038h,03dh,063h,037h,037h,03fh,004h,0ffh,0b5h,0ech	; 6e56  ...00$8=c77?....
	defb 0fch,0f0h,0e3h,0feh,0feh,0fch,0f8h,010h,00ch,00eh,00eh,08dh,09eh,05fh,05fh,0f9h	; 6e66  .............__.
	defb 0feh,0fch,0f8h,0f8h,0f3h,0ffh,0feh,002h,002h,004h,02dh,05fh,01fh,05fh,04fh,0feh	; 6e76  ..........-_._O.
	defb 0fch,0fch,0fbh,0feh,0feh,0fch,0f8h,000h,018h,0e0h,080h,000h,000h,040h,080h,02fh	; 6e86  .............@./
	defb 017h,03bh,03fh,01fh,003h,00fh,085h,0f9h,0fah,0f6h,0fch,0feh,003h,0ffh,002h,020h	; 6e96  ..?............
	defb 081h,040h,003h,080h,086h,040h,020h,010h,010h,030h,0e0h,003h,0c0h,0efh,080h,020h	; 6ea6  .@...@ ..0.....
	defb 030h,070h,070h,038h,018h,018h,00ch,007h,027h,023h,021h,018h,01ah,00fh,007h,006h	; 6eb6  0pp8....'#!.....
	defb 007h,007h,003h,001h,009h,008h,010h,003h,001h,011h,010h,010h,08ch,043h,01dh,0f2h	; 6ec6  .............C..
	defb 0f0h,0f4h,0e8h,0f8h,0f8h,0f0h,0c0h,000h,070h,080h,007h,03ch,0f0h,0e0h,083h,003h	; 6ed6  ........p..<....
	defb 0eeh,078h,000h,000h,0e0h,0fch,0feh,0ffh,01fh,003h,080h,0f8h,0ffh,01fh,000h,080h	; 6ee6  .x..............
	defb 0c0h,0f0h,0f8h,078h,0bch,0eeh,0feh,09eh,08eh,0c7h,0e3h,061h,030h,00ch,040h,038h	; 6ef6  ...x.......a0.@8
	defb 03fh,00fh,087h,0e1h,0f8h,03eh,003h,0f6h,01fh,0c7h,0f0h,0feh,07fh,003h,0e0h,037h	; 6f06  ?....>.........7
	defb 01fh,0cdh,0f2h,00ah,0f1h,0feh,001h,000h,080h,0c0h,0e0h,0b8h,047h,004h,000h,0ffh	; 6f16  ............G...
	defb 070h,098h,008h,00ch,006h,000h,002h,002h,007h,006h,00ch,018h,03ch,060h,000h,001h	; 6f26  p...........<`..
	defb 003h,00eh,03ch,0e4h,060h,000h,001h,003h,00fh,01fh,03fh,03fh,07fh,0ffh,008h,0e7h	; 6f36  ..<.`.....??....
	defb 0f7h,0e3h,0e1h,0f0h,0f8h,0e6h,07bh,038h,0bch,08eh,0c6h,0c1h,061h,010h,001h,007h	; 6f46  ......{8....a...
	defb 00fh,01bh,072h,066h,088h,000h,0feh,0fdh,0f1h,083h,007h,00fh,00fh,01eh,07fh,0ffh	; 6f56  ..rf............
	defb 0ffh,0fbh,0f6h,0c7h,00fh,010h,0ffh,0ffh,07ch,078h,0f0h,0c0h,000h,000h,0c6h,00fh	; 6f66  ........|x......
	defb 00eh,01dh,019h,030h,031h,047h,0f7h,0eeh,0ceh,09dh,03dh,072h,0c0h,000h,0bfh,0efh	; 6f76  ...01G....=r....
	defb 0ceh,099h,011h,007h,00ch,030h,0ffh,07eh,0f8h,0f8h,0e0h,080h,000h,000h,038h,030h	; 6f86  .....0.~......80
	defb 060h,040h,040h,080h,080h,000h,00ch,030h,020h,0c0h,0c8h,0d0h,0b0h,030h,060h,0cfh	; 6f96  `@@....0 ....0`.
	defb 0e0h,0e1h,0e2h,0ceh,0dch,0fch,0f8h,0fch,0f1h,0fbh,0feh,0fch,0fch,0f8h,0f8h,0e0h	; 6fa6  ................
	defb 0e2h,084h,09ch,038h,0fbh,0f7h,0e7h,000h,000h,004h,048h,0c8h,090h,020h,040h,0dfh	; 6fb6  ...8......H.. @.
	defb 0ffh,0ffh,0feh,0fch,0f0h,0c1h,01eh,0feh,0fdh,0fbh,0ffh,0feh,0feh,0f8h,0e3h,0fch	; 6fc6  ................
	defb 0f8h,0d0h,080h,044h,098h,0b0h,0f8h,0c7h,0dch,0bfh,07eh,0f0h,0a2h,0b4h,070h,0c0h	; 6fd6  ...D......~...p.
	defb 0c0h,0e0h,0f0h,0f0h,0fch,0feh,0ffh,000h,000h,001h,002h,008h,030h,063h,06fh,003h	; 6fe6  ............0co.
	defb 000h,08dh,088h,0d8h,0f2h,0feh,0feh,020h,020h,0f0h,0f8h,07fh,0bch,0c6h,07ch,006h	; 6ff6  .......  .....|.
	defb 0ffh,0ffh,0abh,02ch,003h,031h,03fh,01fh,00fh,01fh,07fh,0ffh,03fh,01fh,00eh,00fh	; 7006  ...,.1?.....?...
	defb 00fh,07fh,03fh,007h,0f3h,071h,038h,038h,00ch,002h,001h,000h,0ffh,0f8h,0ffh,01fh	; 7016  ..?..q88........
	defb 087h,0f8h,0deh,063h,000h,000h,001h,01eh,070h,0c0h,0c7h,0bch,0feh,0ffh,0e0h,000h	; 7026  ...c....p.......
	defb 0feh,0ffh,0c0h,0fch,09fh,0ffh,07fh,07fh,001h,003h,004h,000h,000h,004h,0f8h,0f2h	; 7036  ................
	defb 0fch,0feh,0ffh,090h,03ch,0f8h,0f2h,0f3h,0bfh,0feh,00eh,060h,0bdh,0bdh,0deh,0ceh	; 7046  ....<......`....
	defb 0c6h,0c7h,0e3h,0e1h,0c6h,0e2h,0e1h,070h,038h,00ch,002h,000h,0b0h,0feh,0fbh,0ffh	; 7056  .......p8.......
	defb 05fh,009h,003h,000h,000h,0c0h,0e8h,0f0h,0feh,03ch,018h,08ch,0f9h,0f9h,0f1h,0f4h	; 7066  _........<......
	defb 0f4h,0eeh,0feh,060h,009h,010h,008h,0ffh,07fh,03fh,09eh,0e7h,080h,0eah,0fch,0fch	; 7076  ...`.....?......
	defb 030h,090h,0c2h,0fch,0feh,0d8h,07ah,0fch,038h,0feh,019h,07ch,0feh,030h,010h,020h	; 7086  0.....z.8..|.0.
	defb 020h,040h,003h,0ffh,0c8h,0c0h,0ffh,0fdh,0f8h,0e0h,000h,000h,001h,0f8h,0c1h,09fh	; 7096   @..............
	defb 0feh,0fch,0e0h,080h,0c4h,0d0h,040h,0fdh,0feh,0efh,0f1h,078h,01ch,05fh,0ffh,0c0h	; 70a6  ......@....x._..
	defb 0feh,0f9h,0ffh,0c0h,0f4h,00fh,03ch,030h,041h,082h,004h,0ffh,03fh,07eh,07fh,07fh	; 70b6  ......<0A...?~..
	defb 0bfh,00ch,00eh,0dfh,0ffh,086h,01ch,070h,0e1h,082h,004h,0ffh,0ffh,0bfh,0ffh,07fh	; 70c6  .......p........
	defb 0ffh,0ffh,001h,003h,003h,079h,07bh,047h,00fh,00eh,00ch,010h,01fh,004h,0ffh,0a3h	; 70d6  .....y{G........
	defb 001h,00bh,01fh,03eh,03fh,03fh,0bfh,0ffh,07fh,07fh,0ffh,0ffh,07ch,078h,0f8h,0f0h	; 70e6  ...>??......|x..
	defb 0e7h,0e7h,0dfh,080h,0e1h,0f3h,0e6h,0ceh,094h,034h,078h,0e0h,0e0h,0f1h,0e6h,0ceh	; 70f6  .........4x.....
	defb 094h,034h,048h,009h,000h,08bh,061h,071h,0ffh,064h,062h,042h,043h,082h,075h,0bch	; 7106  .4H...aq.dbBC.u.
	defb 03dh,005h,0ffh,090h,0f8h,0f9h,0e3h,0c7h,0ffh,09ah,032h,005h,07ch,0feh,0feh,0cbh	; 7116  =.........2.|...
	defb 0ebh,0e9h,0e1h,0e1h,008h,0ffh,081h,0e0h,004h,0ffh,08fh,03eh,07ch,0f1h,022h,0e0h	; 7126  ...........>|.".
	defb 0e4h,0cch,0ffh,0ffh,03fh,07fh,03fh,03fh,07fh,07fh,004h,0ffh,090h,03fh,01fh,01fh	; 7136  ....?.??.....?..
	defb 027h,007h,00fh,01fh,01fh,00fh,017h,001h,001h,002h,001h,003h,002h,004h,000h,084h	; 7146  '...............
	defb 001h,003h,00dh,032h,005h,000h,083h,008h,072h,0ech,003h,000h,085h,00ch,006h,03eh	; 7156  ...2....r......>
	defb 01fh,03fh,004h,0e0h,003h,0c0h,0cdh,07dh,07ah,072h,072h,0c6h,0d8h,094h,0fbh,073h	; 7166  .?.....}zrr....s
	defb 0ffh,0cfh,0f3h,038h,084h,0f0h,000h,0cdh,033h,067h,0cch,010h,020h,0ffh,0fbh,0e6h	; 7176  ...8....3g.. ...
	defb 05fh,0bfh,0ffh,009h,01bh,03bh,037h,07eh,070h,002h,01ch,0f0h,0d8h,0f1h,07dh,05fh	; 7186  _.....7~p.....}_
	defb 0e2h,0c4h,0ech,0e6h,000h,050h,0e9h,0f8h,0feh,0f8h,0e0h,01fh,03fh,003h,006h,01ch	; 7196  .....P......?...
	defb 00fh,01eh,03ch,070h,0d6h,0dfh,09eh,039h,0c2h,00ch,01dh,039h,033h,040h,080h,000h	; 71a6  ..<p...9...93@..
	defb 0e0h,0c0h,080h,0e3h,003h,0ffh,0abh,018h,0ffh,0e5h,080h,0ffh,0f9h,0c0h,080h,038h	; 71b6  ...............8
	defb 0e0h,001h,006h,01ch,0fah,0fch,0f9h,0fdh,03fh,068h,000h,007h,0f8h,07fh,03dh,09eh	; 71c6  ........?h....=.
	defb 07fh,0fch,0ffh,0f4h,0c6h,0aeh,059h,0cfh,07fh,07fh,0f8h,0e0h,0c7h,088h,080h,000h	; 71d6  ......Y.........
	defb 007h,007h,003h,00fh,003h,01fh,085h,008h,001h,003h,007h,007h,003h,00fh,002h,03fh	; 71e6  ...............?
	defb 0a2h,07fh,07bh,067h,04fh,08fh,01fh,07fh,07fh,022h,0f9h,0f7h,0c3h,00fh,07fh,0e1h	; 71f6  ..{gO...."......
	defb 0edh,0f9h,0fch,00eh,03fh,00fh,007h,000h,002h,006h,00eh,00ch,006h,000h,000h,00eh	; 7206  ....?...........
	defb 007h,01eh,030h,004h,000h,094h,007h,01fh,03fh,07fh,0f0h,0c0h,07fh,007h,0c8h,0d4h	; 7216  ..0.....?.......
	defb 0eeh,0eeh,0efh,0ffh,042h,042h,06bh,0bdh,0fch,0bch,003h,0b8h,086h,038h,0e1h,0f1h	; 7226  ....BBk......8..
	defb 0f0h,070h,060h,003h,020h,0d5h,000h,004h,030h,0e0h,0c0h,080h,081h,000h,0e0h,001h	; 7236  .p`. ...0.......
	defb 006h,01ch,0fah,0fdh,0fbh,003h,027h,067h,06fh,0efh,0dfh,0dfh,003h,00eh,080h,0d9h	; 7246  ......'go.......
	defb 0fch,0fch,03fh,007h,07fh,07fh,0c3h,0afh,00fh,077h,0fbh,070h,000h,000h,01fh,0feh	; 7256  ..?......w.p....
	defb 0b9h,067h,0efh,0ffh,0beh,00fh,0f7h,0c7h,0e6h,08ch,008h,010h,000h,000h,0c0h,0feh	; 7266  .g..............
	defb 0fch,0fah,0f4h,0c8h,0b0h,0f0h,001h,001h,000h,001h,007h,003h,007h,03fh,0feh,0f8h	; 7276  .............?..
	defb 0e0h,0fdh,0f8h,0e0h,0c0h,0e0h,007h,007h,013h,0f8h,0feh,003h,0ffh,0a5h,0f7h,0ddh	; 7286  ................
	defb 0f7h,069h,0fbh,0fdh,02fh,008h,0e1h,0ffh,0bfh,03fh,07fh,004h,0f9h,0e0h,01fh,07fh	; 7296  .i../....?......
	defb 0fch,0f8h,0c0h,028h,0f4h,03ah,010h,060h,0cch,039h,0f7h,0f0h,0c0h,0f0h,03fh,01fh	; 72a6  ...(.:.`.9....?.
	defb 01fh,027h,003h,003h,000h,0c8h,00fh,003h,033h,011h,00ch,002h,001h,01eh,0f0h,0cch	; 72b6  .'......3.......
	defb 0f2h,0f9h,0feh,0feh,03ch,03ch,001h,002h,044h,08dh,05dh,01dh,0b9h,033h,0f6h,0feh	; 72c6  ....<<..D.]..3..
	defb 0f9h,073h,023h,047h,00fh,01fh,01dh,0fbh,0e7h,00fh,01fh,07fh,07fh,0fbh,038h,000h	; 72d6  .s#G..........8.
	defb 03ch,0e0h,088h,030h,0c4h,0f8h,03fh,0f8h,0e2h,083h,01eh,0a0h,000h,000h,0bbh,07ch	; 72e6  <..0..?........|
	defb 09bh,0feh,00fh,03fh,08fh,00fh,050h,0f8h,0fch,0cfh,087h,0c0h,043h,001h,000h	; 72f6  ...?..P.....C..

; ----------------------------------------------------------------------
; DATOS rle_7305: los colores de una entrada de la lista de graficos de
;   20:6BCB, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7305
;   7305-74E1); lo leen p00:4D11, p00:4B3C (476 bytes)
;   0x7305..0x74e1  (476 bytes)
DATA_rle_7305:
	defb 084h,0f0h,0a0h,0b0h,0f0h,004h,090h,088h,080h,086h,080h,080h,0f0h,0b0h,0a0h,0b0h	; 7305  ................
	defb 007h,060h,081h,090h,003h,060h,005h,090h,002h,000h,004h,0a0h,002h,0b0h,003h,060h	; 7315  .`...`.........`
	defb 002h,0a0h,003h,0b0h,081h,060h,005h,0b0h,002h,070h,004h,0b0h,086h,070h,050h,0a0h	; 7325  .....`...p...pP.
	defb 0b0h,0b0h,0b6h,003h,0b0h,083h,0b8h,0b0h,0b0h,003h,070h,081h,0f0h,003h,050h,081h	; 7335  ..........p...P.
	defb 000h,004h,0fbh,081h,0b9h,003h,090h,054h,060h,002h,000h,07fh,060h,033h,060h,081h	; 7345  .......T`...`3`.
	defb 086h,057h,060h,04dh,0a6h,003h,0a8h,006h,060h,011h,080h,081h,086h,006h,080h,008h	; 7355  .W`M....`.......
	defb 086h,002h,080h,005h,086h,002h,080h,083h,086h,080h,080h,006h,060h,081h,080h,00ch	; 7365  ............`...
	defb 060h,002h,080h,007h,060h,003h,086h,003h,080h,004h,0f8h,007h,080h,01ah,0a8h,081h	; 7375  `...`...........
	defb 0a6h,00eh,0a8h,007h,080h,004h,0a8h,009h,080h,007h,0a8h,083h,0a9h,098h,0a9h,005h	; 7385  ................
	defb 0a8h,002h,0a6h,003h,060h,081h,0a6h,004h,060h,002h,000h,006h,060h,081h,086h,004h	; 7395  ....`...`...`...
	defb 0a8h,005h,080h,003h,060h,081h,086h,003h,080h,004h,0a8h,004h,0a6h,006h,060h,003h	; 73a5  ....`.........`.
	defb 086h,081h,080h,004h,0a8h,002h,0a6h,007h,060h,007h,0a6h,003h,0a8h,081h,086h,004h	; 73b5  ........`.......
	defb 060h,081h,0a6h,011h,0f6h,081h,0a6h,019h,0fah,010h,0bah,019h,0fbh,004h,0b0h,003h	; 73c5  `...............
	defb 0bah,004h,0fah,003h,0fbh,081h,0b0h,02eh,0f0h,009h,0fbh,007h,0bah,081h,0a6h,006h	; 73d5  ................
	defb 0a8h,081h,0f8h,005h,0b8h,002h,0b6h,006h,060h,007h,0a6h,00ah,0a8h,007h,0fah,002h	; 73e5  ........`.......
	defb 0a8h,006h,0fah,082h,0fbh,0bah,004h,0b8h,002h,0a8h,005h,0a6h,007h,060h,084h,0a6h	; 73f5  .............`..
	defb 0a0h,0a6h,0a6h,00ah,060h,006h,080h,08ch,0b0h,0bah,0a8h,0a0h,080h,080h,086h,080h	; 7405  ....`...........
	defb 080h,0f0h,0b0h,0a0h,004h,0b0h,081h,0f0h,004h,090h,081h,0b8h,008h,0f8h,081h,0a8h	; 7415  ................
	defb 00eh,0f8h,002h,0f6h,081h,0fah,008h,0f8h,082h,0fbh,0b9h,004h,090h,084h,0f0h,0b0h	; 7425  ................
	defb 0a0h,0a0h,004h,080h,002h,060h,009h,0f0h,002h,0f8h,081h,080h,007h,0a8h,003h,0bah	; 7435  .....`..........
	defb 00eh,0a8h,004h,0a6h,081h,0f6h,004h,0a6h,005h,060h,002h,080h,081h,0b8h,006h,0a6h	; 7445  .........`......
	defb 006h,0fah,002h,0fbh,085h,0f0h,0b0h,0b0h,0f0h,0f0h,005h,090h,006h,060h,084h,086h	; 7455  .............`..
	defb 0a8h,0a6h,0a8h,007h,0a6h,008h,060h,002h,080h,003h,090h,002h,0a0h,003h,0fah,086h	; 7465  ......`.........
	defb 0f6h,0a6h,0f6h,0a6h,0a6h,0f8h,004h,0a8h,003h,0a0h,003h,0fah,087h,0fbh,0fah,0fah	; 7475  ................
	defb 0b0h,0b0h,060h,060h,003h,080h,003h,0b8h,002h,0f0h,088h,0f8h,0b8h,0a8h,0a8h,080h	; 7485  ..``............
	defb 080h,0f8h,0f8h,003h,0b8h,083h,0fbh,0ebh,0ebh,003h,0f0h,005h,0b0h,002h,0f0h,005h	; 7495  ................
	defb 0e0h,082h,080h,0f0h,004h,0f8h,083h,0fah,0fbh,0fbh,005h,0a6h,084h,0f6h,0a6h,0f6h	; 74a5  ................
	defb 0fah,003h,0f8h,081h,0a8h,003h,0f8h,082h,0fah,0a8h,005h,0f8h,082h,0fah,0a8h,006h	; 74b5  ................
	defb 0b8h,086h,0bah,0eah,080h,080h,086h,060h,003h,080h,08ch,0b6h,0b8h,0f6h,0f6h,0feh	; 74c5  .......`........
	defb 0e0h,0e0h,0a0h,0f0h,0f0h,0b0h,0b0h,003h,0a0h,081h,080h,000h	; 74d5  ............

; ----------------------------------------------------------------------
; DATOS sprites_74E1: lista de dibujos de sprite (p00:50C2): de 3 en 3, el
;   primer dibujo y el RLE que va ahi; acaba en 0; lo leen p00:5142 (7 bytes)
;   0x74e1..0x74e8  (7 bytes)
DATA_sprites_74E1:
	defb 0a0h,0e8h,074h	; 74e1
	defb 0ach,021h,075h	; 74e4
	defb 000h	; 74e7

; ----------------------------------------------------------------------
; DATOS rle_74E8: dibujos de sprite en RLE (p00:4B3C) de el juego de 0xE440 =
;   6 de p00:50C2 (20:74E1); se solapan 2 bloques: (rle_vram_74E8 74E8-7521);
;   lo leen p00:50D5, p00:4B3C (57 bytes)
;   0x74e8..0x7521  (57 bytes)
DATA_rle_74E8:
	defb 084h,000h,00fh,03fh,03fh,003h,07fh,086h,06fh,077h,037h,03bh,01fh,003h,005h,000h	; 74e8  ...??...ow7.....
	defb 08dh,0c0h,0e0h,0e0h,0b0h,0d0h,0f8h,0f0h,0f8h,0f8h,074h,0eah,074h,002h,004h,000h	; 74f8  ..........t.t...
	defb 083h,01fh,07fh,07fh,005h,0ffh,083h,06fh,031h,00fh,006h,000h,089h,0c0h,0e0h,0b8h	; 7508  .......o1.......
	defb 0d6h,0f8h,0fch,0efh,090h,0e0h,003h,000h,000h	; 7518  .........

; ----------------------------------------------------------------------
; DATOS rle_7521: dibujos de sprite en RLE (p00:4B3C) de el juego de 0xE440 =
;   6 de p00:50C2 (20:74E1); se solapan 2 bloques: (rle_vram_7521 7521-759A);
;   lo leen p00:50D5, p00:4B3C (121 bytes)
;   0x7521..0x759a  (121 bytes)
DATA_rle_7521:
	defb 083h,080h,0c0h,0e0h,003h,0f0h,08ah,070h,030h,010h,008h,008h,006h,01eh,00eh,006h	; 7521  .......p0.......
	defb 002h,010h,000h,088h,080h,060h,078h,03eh,03eh,01eh,01fh,003h,010h,000h,085h,0a0h	; 7531  .....`x>>.......
	defb 060h,0f0h,030h,008h,003h,000h,084h,0fch,07eh,03fh,01fh,00fh,000h,084h,088h,06ch	; 7541  `.0.....~?.....l
	defb 01eh,01fh,009h,000h,085h,00eh,03fh,0ffh,03fh,00eh,00bh,000h,085h,008h,08ch,0ffh	; 7551  ......?.?.......
	defb 08ch,008h,00eh,000h,084h,01fh,03fh,07eh,0fch,009h,000h,084h,01fh,01eh,06ch,088h	; 7561  ......?~......l.
	defb 011h,000h,088h,003h,01fh,01eh,03eh,03eh,078h,060h,080h,003h,000h,085h,008h,030h	; 7571  ......>>x`.....0
	defb 0f0h,060h,0a0h,00bh,000h,08ah,002h,006h,00eh,01eh,006h,008h,008h,010h,030h,070h	; 7581  .`............0p
	defb 003h,0f0h,083h,0e0h,0c0h,080h,010h,000h,000h	; 7591  .........

; ----------------------------------------------------------------------
; DATOS espejos_759A: lista de sprites copiados con espejo dentro de la VRAM
;   (p00:4E5A): de 4 en 4 (como, cuantos, origen, destino); acaba en 0; lo
;   leen p00:514C (5 bytes)
;   0x759a..0x759f  (5 bytes)
DATA_espejos_759A:
	defb 001h,001h,0a0h,0a8h	; 759a
	defb 000h	; 759e

; ----------------------------------------------------------------------
; DATOS rle_759F: los dibujos de una entrada de la lista de graficos de
;   20:6BC4, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_759F
;   759F-7914); lo leen p00:4CFF, p00:4B3C (885 bytes)
;   0x759f..0x7914  (885 bytes)
DATA_rle_759F:
	defb 004h,000h,0ffh,001h,000h,006h,00fh,0ffh,01dh,07eh,0feh,0d5h,0a8h,041h,01ch,079h	; 759f  .........~...A.y
	defb 0ffh,0ddh,028h,083h,0cfh,083h,04fh,080h,0e0h,0f8h,07ch,0feh,02fh,068h,0d9h,01fh	; 75af  ..(...O...|./h..
	defb 01fh,03eh,03ch,019h,007h,07bh,0fdh,081h,03ch,07eh,0feh,0ffh,0eah,003h,016h,0fdh	; 75bf  .><..{..<~......
	defb 0eah,050h,081h,0d3h,043h,0e7h,0ffh,033h,029h,077h,001h,06fh,0ffh,0eah,051h,060h	; 75cf  .P..C..3)w.o..Q`
	defb 0f0h,0f8h,078h,07ch,0bch,0deh,0eeh,0feh,0d5h,07fh,03fh,0a3h,0c0h,0f8h,02bh,03ah	; 75df  ..x|......?...+:
	defb 082h,03ch,07fh,0f5h,0fah,07dh,0c7h,0ffh,0fbh,09fh,01ch,0ffh,0f5h,0a8h,08fh,0fbh	; 75ef  .<...}..........
	defb 0fbh,0f5h,04eh,09eh,0dfh,0e0h,08eh,0eeh,0f6h,0ech,0beh,03fh,07fh,07fh,0aah,07fh	; 75ff  ..N........?....
	defb 01fh,03fh,03fh,01dh,00ah,015h,01eh,0cdh,0b2h,0bfh,04fh,012h,0f8h,0eah,0d4h,0deh	; 760f  .??.......O.....
	defb 00fh,0b6h,098h,05eh,0c0h,080h,0e7h,042h,0e0h,073h,05ah,0a5h,05ch,0e1h,00fh,07fh	; 761f  ...^...B.sZ.\...
	defb 076h,02ah,0dch,01eh,06ch,0f0h,0f0h,0e0h,00fh,007h,003h,005h,000h,0abh,081h,0c2h	; 762f  v*..l...........
	defb 090h,0cch,03eh,07fh,00fh,001h,03ch,0d5h,088h,0a6h,083h,029h,0beh,01ch,0cbh,00ah	; 763f  ..>...<....)....
	defb 0b7h,07eh,07ch,038h,000h,000h,01fh,03eh,079h,023h,01fh,03bh,051h,0a9h,081h,01ch	; 764f  .~|8...>y#..Q...
	defb 0deh,0deh,0efh,067h,08fh,036h,0d0h,0a0h,070h,003h,0f8h,092h,070h,0a0h,0c0h,0e0h	; 765f  ...g.6..p...p...
	defb 070h,0e0h,060h,0f0h,060h,0c0h,0d1h,069h,03bh,01fh,00ch,0e5h,079h,036h,004h,000h	; 766f  p.`.`..i....y6..
	defb 0cfh,001h,006h,01fh,005h,0ffh,00dh,01eh,0feh,006h,09fh,00fh,01fh,020h,018h,01eh	; 767f  ............. ..
	defb 03fh,03fh,06bh,051h,069h,03fh,020h,0b1h,0f3h,080h,0c0h,0a0h,0c0h,08fh,033h,077h	; 768f  ??kQi? .......3w
	defb 0efh,013h,046h,0edh,047h,0f0h,0e0h,070h,0f0h,060h,0d0h,070h,0f0h,026h,0e3h,04bh	; 769f  ..F.G..p.`.p.&.K
	defb 01dh,07bh,0fdh,001h,0a3h,0d0h,069h,051h,06bh,03fh,03eh,018h,000h,0e0h,0a0h,0c0h	; 76af  .{....iQk?>.....
	defb 080h,006h,016h,03fh,0ffh,0ffh,00dh,0beh,001h,080h,08bh,0ffh,036h,037h,01fh,002h	; 76bf  ...?........67..
	defb 006h,000h,002h,001h,0d1h,000h,00ch,007h,003h,005h,001h,0c7h,0e7h,0f3h,0fbh,038h	; 76cf  ...............8
	defb 066h,0bch,00eh,01fh,01fh,03fh,03fh,06bh,051h,069h,0e0h,0f0h,09fh,084h,0f8h,0fch	; 76df  f....??kQi......
	defb 0bah,0c4h,0e7h,02fh,0c7h,0f3h,078h,036h,00fh,01bh,0feh,0fch,07ch,0feh,07fh,0ffh	; 76ef  .../..x6....|...
	defb 07fh,0f8h,078h,0c7h,0c7h,00bh,00dh,01eh,00eh,0eeh,0d0h,069h,051h,06bh,03fh,03fh	; 76ff  ..x........iQk??
	defb 01fh,01fh,0f8h,0f6h,0f7h,0fah,0cah,0f4h,07ah,0b8h,0e4h,03ch,01eh,046h,0e6h,064h	; 770f  ........z..<.F.d
	defb 033h,087h,00fh,007h,003h,001h,004h,000h,088h,0d4h,0a0h,0cfh,0f7h,098h,0ceh,00ah	; 771f  3...............
	defb 0ffh,004h,000h,0f7h,001h,003h,007h,00fh,061h,07ah,03dh,03fh,0f4h,0f8h,0f8h,0f7h	; 772f  ........az=?....
	defb 0e7h,067h,09bh,05dh,073h,0e3h,0cfh,007h,0cfh,0bfh,0feh,0e7h,0fbh,0fch,0bbh,0c7h	; 773f  .g.]s...........
	defb 0b3h,006h,09eh,0e0h,018h,0fch,0f2h,0ceh,0dfh,073h,00eh,03dh,082h,08fh,045h,01fh	; 774f  .........s.=..E.
	defb 0ffh,0ffh,07fh,0ffh,07fh,0ffh,07fh,0ffh,036h,0feh,0feh,0fch,0fch,0f4h,0fah,0e6h	; 775f  ........6.......
	defb 07eh,07dh,0c2h,083h,0b1h,0b9h,0c2h,0e3h,0ffh,0f7h,0f7h,0fbh,0cbh,0f7h,07bh,0bch	; 776f  ~}............{.
	defb 0feh,0beh,0dch,0e0h,0dch,0f8h,0a8h,070h,0e0h,073h,05ah,0a5h,05ch,0e0h,003h,03fh	; 777f  .......p.sZ.\..?
	defb 0bfh,0deh,0efh,0feh,00fh,01fh,0bfh,06ch,0e3h,0ceh,01eh,023h,0c2h,0cfh,062h,034h	; 778f  .......l...#..b4
	defb 015h,00ah,01ch,03eh,03ch,07ch,078h,050h,0ffh,0eeh,071h,004h,07fh,086h,0ffh,0a0h	; 779f  ...><|xP..q.....
	defb 0d1h,0a3h,0d7h,0bfh,008h,0ffh,003h,0efh,092h,0f6h,0f8h,0feh,0fch,0fch,0bch,0deh	; 77af  ................
	defb 02eh,0feh,07fh,07fh,077h,03bh,03bh,01dh,01eh,02fh,0dfh,003h,0efh,098h,0f7h,0fbh	; 77bf  ....w..../......
	defb 0fdh,0eeh,0f6h,0f8h,0fch,0fch,0f8h,0e8h,050h,07dh,0beh,0ffh,0feh,00fh,01bh,0bfh	; 77cf  ........P}......
	defb 06ch,00fh,01fh,01fh,03fh,03fh,003h,07fh,091h,0cfh,0bfh,0bfh,07eh,07dh,0fbh,0f7h	; 77df  l...??......~}..
	defb 0efh,0b3h,006h,09eh,0e0h,0f8h,0fch,0fah,0f6h,07fh,003h,0ffh,089h,0d7h,0a3h,0d1h	; 77ef  ................
	defb 0a0h,09fh,06fh,0efh,0efh,0dfh,003h,0ffh,083h,0ceh,0b4h,0feh,003h,0fch,002h,0feh	; 77ff  ..o.............
	defb 089h,050h,078h,07ch,03ch,038h,010h,00ah,015h,0ffh,004h,07fh,082h,073h,0fdh,003h	; 780f  .Px|<8.......s..
	defb 0feh,0a6h,0fch,0f8h,0fch,0f8h,0e8h,050h,0f9h,0ffh,0efh,0f6h,00fh,01bh,0bfh,06ch	; 781f  .......P.......l
	defb 0beh,055h,082h,018h,0a5h,07eh,07eh,03ch,03ch,07eh,07eh,0a5h,018h,082h,055h,0beh	; 782f  .U...~~<<~~...U.
	defb 0e0h,038h,01ch,00fh,00fh,01fh,03fh,0f7h,004h,000h,090h,080h,0c6h,0efh,0dfh,003h	; 783f  .8....?.........
	defb 03fh,01fh,00fh,00fh,01eh,038h,0e0h,01fh,0c7h,0ceh,080h,004h,000h,082h,03ch,07eh	; 784f  ?....8........<~
	defb 003h,0ffh,086h,054h,07eh,03ch,0ffh,03ch,07eh,003h,0ffh,083h,054h,07eh,03ch,009h	; 785f  ...T~<.<~...T~<.
	defb 000h,082h,03ch,07eh,003h,0ffh,083h,054h,07eh,03ch,009h,000h,088h,03ch,07eh,0ffh	; 786f  ..<~...T~<...<~.
	defb 0ffh,000h,054h,07eh,03ch,009h,000h,082h,03ch,07eh,003h,0ffh,083h,055h,07eh,03ch	; 787f  ..T~<...<~...U~<
	defb 009h,000h,082h,03ch,07eh,003h,0ffh,083h,055h,07eh,03ch,009h,000h,082h,03ch,07eh	; 788f  ...<~...U~<...<~
	defb 003h,0ffh,083h,055h,07eh,03ch,009h,000h,082h,03ch,07eh,003h,0ffh,086h,055h,07eh	; 789f  ...U~<...<~...U~
	defb 03ch,000h,01eh,03fh,004h,07fh,084h,03fh,01eh,000h,000h,004h,080h,002h,000h,082h	; 78af  <..?...?........
	defb 00fh,01fh,004h,03fh,084h,01fh,00fh,000h,080h,004h,0c0h,084h,080h,000h,007h,00fh	; 78bf  ...?............
	defb 004h,01fh,084h,00fh,007h,080h,0c0h,004h,0e0h,084h,0c0h,080h,003h,007h,004h,00fh	; 78cf  ................
	defb 084h,007h,003h,0c0h,0e0h,004h,0f0h,084h,0e0h,0c0h,001h,003h,004h,007h,084h,003h	; 78df  ................
	defb 001h,0e0h,0f0h,004h,0f8h,084h,0f0h,0e0h,000h,001h,004h,003h,084h,001h,000h,0f0h	; 78ef  ................
	defb 0f8h,004h,0fch,084h,0f8h,0f0h,000h,000h,004h,001h,002h,000h,082h,078h,0fch,004h	; 78ff  .............x..
	defb 0feh,082h,0fch,078h,000h	; 790f

; ----------------------------------------------------------------------
; DATOS rle_7914: los colores de una entrada de la lista de graficos de
;   20:6BC4, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7914
;   7914-7BA0); lo leen p00:4D11, p00:4B3C (652 bytes)
;   0x7914..0x7ba0  (652 bytes)
DATA_rle_7914:
	defb 008h,0c0h,090h,000h,0c0h,0c0h,0c6h,0c2h,0c2h,062h,0c6h,0c0h,0cch,0c2h,0c2h,062h	; 7914  .........b.....b
	defb 063h,0c6h,0c6h,005h,0c0h,083h,0c6h,062h,0c6h,003h,0c0h,084h,020h,030h,0c0h,0c0h	; 7924  c......b.... 0..
	defb 006h,0c6h,083h,0c2h,062h,062h,003h,0c2h,085h,062h,063h,0c6h,0c6h,0c2h,003h,062h	; 7934  ....bb...bc....b
	defb 002h,0c6h,083h,0cch,0c2h,0c2h,006h,0c0h,002h,020h,089h,0c6h,0c2h,020h,030h,063h	; 7944  ......... ... 0c
	defb 0c6h,0c6h,0c2h,063h,003h,0c6h,002h,0c2h,08ah,0c6h,062h,0cch,0c6h,062h,0c6h,0cch	; 7954  ...c......b..b..
	defb 0c2h,0c2h,062h,006h,0c6h,082h,062h,0c6h,003h,0c0h,004h,0c6h,082h,0c2h,020h,003h	; 7964  ..b...b....... .
	defb 0c0h,086h,020h,030h,0c0h,0c0h,063h,062h,004h,0c6h,002h,0c2h,081h,063h,003h,0c6h	; 7974  .. 0..cb.....c..
	defb 002h,062h,081h,063h,003h,0c6h,002h,0c2h,004h,0c6h,08ah,020h,0c0h,0c0h,020h,030h	; 7984  .b.c....... .. 0
	defb 0c0h,020h,030h,0c0h,0c0h,006h,020h,082h,062h,063h,003h,0c6h,090h,0c0h,020h,030h	; 7994  . 0... .bc.... 0
	defb 0c6h,0c2h,0c2h,063h,0c6h,0c6h,0c0h,020h,062h,0c6h,0c0h,0c0h,020h,003h,030h,004h	; 79a4  ...c... b... .0.
	defb 0c0h,004h,0f0h,006h,0c6h,002h,062h,008h,0f0h,008h,0f6h,005h,0f0h,081h,020h,009h	; 79b4  ......b....... .
	defb 0c0h,082h,020h,000h,003h,0c0h,087h,062h,063h,0c6h,0c6h,030h,0e0h,0e0h,005h,0f0h	; 79c4  .. ....bc..0....
	defb 084h,0c6h,062h,062h,063h,004h,0f6h,004h,0c6h,084h,062h,0c6h,062h,062h,008h,0f6h	; 79d4  ..bbc.....b.bb..
	defb 081h,062h,005h,0c6h,082h,062h,063h,005h,0f0h,003h,0e0h,004h,0f6h,004h,0c6h,088h	; 79e4  .b...bc.........
	defb 060h,0c6h,0c6h,062h,062h,063h,060h,0c6h,008h,0c0h,002h,030h,089h,020h,0c0h,020h	; 79f4  `..bbc`....0. .
	defb 020h,0c0h,0b0h,0c0h,020h,020h,003h,0c6h,002h,062h,008h,0f0h,002h,0c6h,083h,063h	; 7a04   ...  ...b.....c
	defb 0e6h,0e6h,003h,0f6h,008h,0c6h,002h,0f2h,005h,0f6h,082h,0feh,062h,006h,0c6h,081h	; 7a14  ............b...
	defb 062h,008h,0f0h,081h,0feh,006h,0f6h,082h,0e6h,062h,007h,0c6h,002h,0f0h,006h,0b0h	; 7a24  b........b......
	defb 088h,0f6h,0e6h,0c6h,0c6h,062h,063h,0c0h,000h,004h,0b0h,084h,0f0h,0b0h,0f0h,0f0h	; 7a34  .....bc.........
	defb 003h,0c0h,085h,0cbh,0b2h,0e2h,0b6h,0f6h,004h,0c6h,081h,062h,003h,0c6h,002h,0f8h	; 7a44  ...........b....
	defb 08bh,0f6h,0f8h,0f8h,0f6h,0f8h,0f8h,0c6h,062h,063h,0e6h,0e6h,003h,0f6h,002h,063h	; 7a54  ........bc.....c
	defb 002h,0c6h,002h,062h,002h,0c6h,08ah,0f6h,0ffh,0f6h,0ffh,0f6h,0ffh,0f6h,0ffh,0f6h	; 7a64  ...b............
	defb 0f6h,003h,0fch,003h,0f6h,002h,0c6h,081h,062h,003h,0c6h,083h,062h,063h,0ffh,007h	; 7a74  ........b...bc..
	defb 0f8h,006h,0f6h,081h,0e6h,003h,0c6h,002h,0c2h,004h,0c6h,088h,0f6h,0e6h,0e6h,0b6h	; 7a84  ................
	defb 0cbh,0c6h,0c6h,030h,003h,0c6h,086h,062h,0c6h,0c6h,063h,030h,0e0h,007h,0f0h,081h	; 7a94  ...0...b..c0....
	defb 0ffh,006h,0f0h,081h,0ffh,004h,0f0h,081h,0feh,008h,0ffh,005h,0f6h,003h,0fch,003h	; 7aa4  ................
	defb 0f6h,081h,0feh,007h,0f0h,00fh,0f6h,089h,0c6h,0f6h,0f6h,0e0h,0b6h,0cbh,0c6h,0c6h	; 7ab4  ................
	defb 030h,008h,0f0h,008h,0f6h,084h,0c6h,062h,063h,0e6h,004h,0f6h,084h,0feh,0f6h,0ffh	; 7ac4  0......bc.......
	defb 0ffh,004h,0f0h,005h,0f6h,003h,0ffh,002h,0f6h,003h,0fch,003h,0f6h,008h,0f0h,081h	; 7ad4  ................
	defb 0ffh,005h,0f0h,008h,0f6h,08ah,0e6h,0c6h,0f6h,0e6h,0e6h,0b6h,0cbh,0c6h,0c6h,030h	; 7ae4  ...............0
	defb 004h,0c6h,088h,0c8h,080h,090h,0b0h,0b0h,090h,080h,0c8h,004h,0c6h,002h,090h,081h	; 7af4  ................
	defb 080h,004h,090h,081h,098h,006h,090h,003h,098h,007h,080h,002h,098h,006h,080h,08ah	; 7b04  ................
	defb 090h,080h,080h,088h,088h,086h,060h,060h,000h,090h,004h,080h,081h,086h,009h,060h	; 7b14  ......``.......`
	defb 003h,090h,004h,080h,081h,086h,008h,060h,004h,090h,003h,080h,082h,0f8h,086h,007h	; 7b24  .......`........
	defb 060h,006h,090h,003h,080h,081h,086h,006h,060h,007h,090h,003h,080h,081h,086h,005h	; 7b34  `.......`.......
	defb 060h,008h,090h,003h,080h,081h,086h,004h,060h,009h,090h,003h,080h,081h,086h,003h	; 7b44  `.......`.......
	defb 060h,081h,090h,005h,080h,002h,060h,005h,080h,003h,060h,081h,090h,005h,080h,002h	; 7b54  `.....`...`.....
	defb 060h,006h,080h,002h,060h,081h,090h,005h,080h,002h,060h,006h,080h,002h,060h,002h	; 7b64  `...`.....`...`.
	defb 090h,004h,080h,002h,060h,002h,090h,004h,080h,002h,060h,002h,090h,004h,080h,002h	; 7b74  ....`.....`.....
	defb 060h,002h,090h,004h,080h,002h,060h,002h,090h,004h,080h,002h,060h,002h,090h,004h	; 7b84  `.....`.....`...
	defb 080h,002h,060h,008h,080h,002h,090h,004h,080h,002h,060h,000h	; 7b94  ..`.......`.

; ----------------------------------------------------------------------
; DATOS rle_7BA0: los dibujos de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7BA0
;   7BA0-7C23); lo leen p00:4CFF, p00:4B3C (131 bytes)
;   0x7ba0..0x7c23  (131 bytes)
DATA_rle_7BA0:
	defb 090h,000h,003h,00fh,01fh,03fh,07fh,0fdh,0feh,0e0h,0f8h,0fch,0fch,0feh,0feh,076h	; 7ba0  .....?.........v
	defb 0aah,007h,000h,081h,001h,005h,000h,084h,001h,000h,002h,004h,006h,000h,002h,001h	; 7bb0  ................
	defb 0b2h,002h,005h,016h,03bh,03fh,07ah,0f5h,001h,003h,003h,007h,00fh,01eh,03dh,07bh	; 7bc0  .....?z.......={
	defb 000h,001h,003h,007h,00fh,01fh,03dh,07ch,07eh,06fh,05bh,026h,000h,001h,002h,001h	; 7bd0  ......=|~o[&....
	defb 003h,006h,00fh,01fh,015h,00bh,005h,000h,018h,017h,03bh,03dh,01fh,00fh,00fh,007h	; 7be0  ...........=....
	defb 003h,001h,001h,003h,000h,003h,001h,002h,003h,002h,007h,091h,00fh,03fh,07fh,0a0h	; 7bf0  .............?..
	defb 016h,03eh,00eh,007h,003h,001h,000h,003h,006h,00fh,01fh,015h,00bh,008h,000h,092h	; 7c00  .>..............
	defb 007h,03fh,000h,000h,001h,007h,01eh,0f1h,0c7h,01fh,07ch,031h,007h,003h,003h,007h	; 7c10  .?........|1....
	defb 01fh,07fh,000h	; 7c20

; ----------------------------------------------------------------------
; DATOS rle_7C23: los dibujos de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7C23
;   7C23-7C54); lo leen p00:4CFF, p00:4B3C (49 bytes)
;   0x7c23..0x7c54  (49 bytes)
DATA_rle_7C23:
	defb 087h,000h,003h,006h,00dh,01bh,037h,043h,003h,000h,09bh,001h,002h,00dh,03ah,03dh	; 7c23  ......7C......:=
	defb 00fh,007h,003h,01fh,01fh,003h,039h,03fh,01fh,000h,0c8h,0a4h,0d0h,084h,0a8h,0d2h	; 7c33  ......9?........
	defb 000h,007h,003h,01fh,01fh,001h,004h,000h,087h,0f4h,0fah,0f4h,0fah,0f4h,0fah,000h	; 7c43  ................
	defb 000h	; 7c53

; ----------------------------------------------------------------------
; DATOS rle_7C54: los dibujos de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7C54
;   7C54-7DFB); lo leen p00:4CFF, p00:4B3C (423 bytes)
;   0x7c54..0x7dfb  (423 bytes)
DATA_rle_7C54:
	defb 0b0h,0ebh,0deh,0f7h,0ddh,07bh,0ddh,0fbh,0afh,0dah,02dh,0d2h,02dh,052h,0b4h,049h	; 7c54  .....{....-.-R.I
	defb 0b6h,048h,0a1h,004h,0a8h,041h,0ach,052h,028h,007h,00fh,01fh,03fh,0f1h,080h,000h	; 7c64  .H...A.R(...?...
	defb 000h,0ebh,0deh,0f7h,0ddh,07bh,07fh,01fh,007h,0feh,0b5h,0fah,0aeh,07bh,0dah,0f5h	; 7c74  .....{.......{..
	defb 0b6h,007h,000h,09ch,005h,001h,000h,000h,001h,00ah,03dh,06fh,057h,0dbh,05dh,0f7h	; 7c84  ..........=oW.].
	defb 07fh,093h,06ah,0e7h,05bh,04ah,095h,0a4h,001h,043h,085h,00fh,02fh,0ffh,0bfh,0dfh	; 7c94  ..j.[J...C../...
	defb 005h,0ffh,09bh,0f8h,0e1h,0c7h,084h,09eh,021h,04ch,09eh,000h,0f8h,045h,045h,065h	; 7ca4  ........!L...EEe
	defb 01dh,09dh,05fh,0e9h,0e3h,0e1h,0bah,067h,0c3h,0afh,0c1h,0b7h,0ffh,07fh,005h,0ffh	; 7cb4  .._....g........
	defb 002h,0bfh,086h,09eh,04ch,021h,01eh,000h,01eh,003h,05dh,095h,089h,009h,039h,029h	; 7cc4  ....L!....]...9)
	defb 02fh,076h,0fah,0f3h,0c1h,0c7h,041h,08fh,048h,0ffh,01fh,037h,00fh,03fh,0ffh,0dfh	; 7cd4  /v....A.H..7.?..
	defb 0bfh,008h,0ffh,098h,07fh,040h,05fh,05fh,040h,05fh,05fh,07fh,0fah,02ah,04ah,04ah	; 7ce4  .....@__@__..*JJ
	defb 07eh,05ah,07ch,000h,0feh,0fdh,06fh,0beh,009h,007h,079h,0abh,004h,0ffh,08fh,06fh	; 7cf4  ~Z|...o...y....o
	defb 0b7h,0bfh,0afh,024h,024h,029h,04ah,052h,054h,024h,038h,07eh,080h,076h,003h,056h	; 7d04  ...$$)JRT$8~.v.V
	defb 086h,016h,05eh,069h,066h,05bh,0f7h,003h,0ffh,097h,0bfh,03bh,000h,02bh,028h,02bh	; 7d14  ..^if[.......+(+
	defb 02bh,028h,02fh,042h,012h,052h,05eh,048h,0e8h,008h,0aah,02bh,01ch,0c7h,070h,0bfh	; 7d24  +(/B.R^H...+..p.
	defb 0fbh,005h,0ffh,0a5h,07fh,01fh,0c7h,0e9h,0fch,02fh,027h,010h,00fh,001h,01fh,030h	; 7d34  ........./'....0
	defb 02fh,0aah,0aah,01ch,0fch,0e4h,0ffh,005h,035h,05bh,0a1h,004h,0abh,043h,0aeh,0d2h	; 7d44  /.......5[...C..
	defb 07dh,0ffh,0a7h,016h,0aah,04bh,0ech,07eh,0a8h,003h,02fh,002h,02bh,003h,02fh,003h	; 7d54  }....K.~../.+./.
	defb 035h,0adh,055h,0a9h,0abh,0feh,07ch,0dah,02dh,0d2h,02dh,052h,0b4h,0feh,0fch,055h	; 7d64  5.U...|.-.-R...U
	defb 0aah,0d0h,0e0h,087h,037h,077h,0f7h,0feh,0fch,0f0h,000h,0ffh,0f0h,0efh,0efh,020h	; 7d74  ....7w.........
	defb 02fh,02ah,054h,0fch,03fh,0dfh,05fh,0f8h,0f2h,0e2h,0cah,088h,0aah,03ah,000h,005h	; 7d84  /*T.?._......:..
	defb 0f7h,083h,0f5h,0f7h,000h,005h,0efh,084h,0ebh,0efh,00fh,0c0h,006h,0d5h,096h,0c0h	; 7d94  ................
	defb 004h,080h,007h,09dh,0ffh,034h,0eah,0dfh,004h,091h,023h,09ah,0f5h,0bfh,0eeh,0f5h	; 7da4  .....4....#.....
	defb 077h,077h,070h,07fh,07fh,003h,07eh,003h,07fh,002h,0ffh,081h,000h,004h,0ffh,083h	; 7db4  wwp...~.........
	defb 0bdh,0ffh,000h,003h,055h,0b0h,0d0h,0dch,0d0h,0dch,050h,05ch,050h,040h,0f8h,0e1h	; 7dc4  ....U.....P\P@..
	defb 0c7h,084h,09eh,021h,04ch,09eh,0bfh,0bfh,09eh,04ch,021h,01eh,000h,01eh,069h,066h	; 7dd4  ...!L....L!...if
	defb 05bh,0f7h,0ffh,0ffh,03fh,001h,03fh,01fh,00bh,00fh,00fh,00dh,00dh,01bh,03fh,0e7h	; 7de4  [...?.?.......?.
	defb 0d6h,0aah,04bh,0ech,07eh,0a8h,000h	; 7df4

; ----------------------------------------------------------------------
; DATOS rle_7DFB: los colores de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7DFB
;   7DFB-7F22); lo leen p00:4D11, p00:4B3C (295 bytes)
;   0x7dfb..0x7f22  (295 bytes)
DATA_rle_7DFB:
	defb 018h,0e5h,008h,0e0h,005h,0e5h,003h,0e0h,008h,0e5h,010h,0e0h,003h,0e5h,081h,0e0h	; 7dfb  ................
	defb 004h,0e5h,005h,0e0h,003h,0e5h,009h,0e0h,08fh,050h,0e0h,0e0h,050h,040h,060h,080h	; 7e0b  .........P..P@`.
	defb 000h,054h,0e0h,040h,050h,040h,050h,0e0h,009h,0e5h,082h,0e0h,0e5h,005h,0e0h,090h	; 7e1b  .T.@P@P.........
	defb 0a0h,090h,080h,060h,040h,050h,0e0h,0e0h,0f0h,0f0h,0e0h,050h,050h,0e0h,050h,040h	; 7e2b  ...`@P.....PP.P@
	defb 008h,0e5h,081h,0e0h,004h,0e5h,083h,0e0h,0e5h,0e5h,008h,0e0h,003h,0f0h,003h,0e0h	; 7e3b  ................
	defb 089h,050h,040h,0e0h,050h,0e0h,0e0h,0f0h,0e0h,050h,008h,0e0h,081h,0e5h,004h,0e0h	; 7e4b  .P@.P....P......
	defb 004h,0e5h,090h,060h,080h,080h,0a0h,090h,080h,080h,050h,050h,060h,0e0h,0e0h,0f0h	; 7e5b  ...`......PP`...
	defb 0f0h,0e0h,050h,004h,0e5h,004h,0e0h,082h,050h,000h,003h,050h,08bh,040h,0e0h,0f0h	; 7e6b  ..P.....P..P.@..
	defb 0e0h,0e0h,0e4h,0e0h,050h,050h,0e0h,0f0h,011h,0e0h,08fh,050h,040h,0f0h,0e0h,050h	; 7e7b  ....PP.....P@..P
	defb 0e0h,040h,0e0h,050h,040h,0f0h,0e0h,050h,0e0h,040h,008h,0e5h,081h,0e0h,007h,0e5h	; 7e8b  .@.P@..P.@......
	defb 08ah,050h,0e0h,0f0h,0e0h,0e0h,050h,0e0h,040h,0f0h,0e0h,003h,050h,083h,040h,0e0h	; 7e9b  .P....P.@...P.@.
	defb 040h,006h,0e5h,002h,050h,003h,0e5h,085h,050h,040h,050h,0e0h,0f0h,003h,050h,08dh	; 7eab  @...P...P@P...P.
	defb 000h,040h,050h,0e0h,0f0h,040h,040h,080h,080h,040h,050h,0e0h,0f0h,006h,050h,081h	; 7ebb  .@P..@@..@P...P.
	defb 040h,004h,0e0h,084h,0f0h,0e0h,0e0h,050h,004h,0e0h,085h,0f0h,0e0h,0e0h,050h,040h	; 7ecb  @......P......P@
	defb 003h,0e0h,085h,0f0h,0e0h,0e0h,050h,040h,003h,0e5h,005h,050h,003h,0e5h,006h,050h	; 7edb  ......P@...P...P
	defb 002h,0e0h,002h,0f0h,0abh,0e0h,050h,040h,050h,0e0h,0f0h,0e0h,0f0h,0f0h,0e0h,040h	; 7eeb  ......P@P......@
	defb 050h,0e0h,0f0h,0e0h,0e0h,080h,090h,0a0h,050h,0e0h,0f0h,0e0h,0f0h,0e0h,050h,040h	; 7efb  P.......P.....P@
	defb 0e0h,050h,0e0h,0e0h,050h,040h,090h,0a0h,0b0h,0b0h,0a0h,090h,040h,050h,050h,0e0h	; 7f0b  .P..P@......@PP.
	defb 004h,0e5h,00dh,0e0h,007h,0e5h,000h	; 7f1b

; ----------------------------------------------------------------------
; DATOS rle_7F22: los dibujos de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7F22
;   7F22-7F72); lo leen p00:4CFF, p00:4B3C (80 bytes)
;   0x7f22..0x7f72  (80 bytes)
DATA_rle_7F22:
	defb 09ah,0beh,07fh,054h,0aah,050h,0a8h,040h,000h,001h,067h,035h,07eh,0fdh,0feh,07dh	; 7f22  ...T.P.@..g5~..}
	defb 07eh,080h,07ah,05ah,07ah,042h,05ah,000h,07ch,03dh,0deh,005h,0feh,09dh,0fch,000h	; 7f32  ~.zZzBZ.|=......
	defb 07ch,000h,0b4h,0b4h,000h,0b5h,0b5h,00bh,03fh,07fh,0fdh,0fah,0d5h,055h,02ah,080h	; 7f42  |.......?....U*.
	defb 02ah,06ah,06ah,07ah,07ah,03ah,000h,03dh,0deh,0feh,07eh,003h,0beh,091h,0fch,000h	; 7f52  *jjzz:.=..~.....
	defb 07ch,000h,0b4h,0b4h,000h,0b5h,0b5h,001h,07fh,00bh,07fh,0fah,0d5h,055h,02ah,000h	; 7f62  |............U*.

; ----------------------------------------------------------------------
; DATOS rle_7F72: los colores de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7F72
;   7F72-7F8B); lo leen p00:4D11, p00:4B3C (25 bytes)
;   0x7f72..0x7f8b  (25 bytes)
DATA_rle_7F72:
	defb 006h,0e0h,002h,0e5h,006h,0e0h,002h,0e5h,01fh,0e0h,081h,0e5h,027h,0e0h,004h,050h	; 7f72  ............'..P
	defb 00dh,0e0h,002h,0e5h,005h,050h,021h,0e0h,000h	; 7f82  .....P!..

; ----------------------------------------------------------------------
; DATOS rle_7F8B: los colores de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7F8B
;   7F8B-7FAF); lo leen p00:4D11, p00:4B3C (36 bytes)
;   0x7f8b..0x7faf  (36 bytes)
DATA_rle_7F8B:
	defb 006h,0e0h,081h,050h,003h,0e0h,005h,050h,002h,0e0h,081h,040h,007h,0e0h,089h,090h	; 7f8b  ...P...P...@....
	defb 0a0h,0b0h,0b0h,0a0h,090h,090h,0e0h,040h,004h,0e0h,004h,080h,086h,090h,0b0h,0b0h	; 7f9b  .......@........
	defb 090h,080h,080h,000h	; 7fab

; ----------------------------------------------------------------------
; DATOS rle_7FAF: los colores de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7FAF
;   7FAF-7FF0); lo leen p00:4D11, p00:4B3C (65 bytes)
;   0x7faf..0x7ff0  (65 bytes)
DATA_rle_7FAF:
	defb 002h,0e0h,006h,0e5h,002h,050h,005h,0e5h,08bh,0e4h,050h,050h,0e0h,0f0h,0e0h,050h	; 7faf  .....P....PP...P
	defb 0e0h,0e0h,0e4h,0e5h,006h,0e0h,003h,0f0h,085h,090h,060h,0f0h,0f0h,050h,003h,0e0h	; 7fbf  ..........`..P..
	defb 003h,0e5h,08ch,050h,040h,0e0h,050h,0e0h,0f0h,0f0h,0e0h,050h,0e0h,0e4h,0e5h,006h	; 7fcf  ...P@.P....P....
	defb 0e0h,003h,0f0h,085h,0a0h,090h,0f0h,0f0h,050h,004h,0e0h,002h,0e5h,082h,050h,040h	; 7fdf  ........P.....P@
	defb 000h	; 7fef

; ----------------------------------------------------------------------
; DATOS rle_7FF0: los dibujos de una entrada de la lista de graficos de
;   20:6BD2, en RLE (p00:4B3C) (sigue en el banco 21, en 0x8000); se solapan 2
;   bloques: (rle_vram_7FF0 7FF0-8000); lo leen p00:4CFF, p00:4B3C (16 bytes)
;   0x7ff0..0x8000  (16 bytes)
DATA_rle_7FF0:
	defb 0ffh,0feh,0f5h,0fah,0fch,0f9h,0d6h,0a0h,084h,07fh,0afh,05fh,03fh,09fh,06bh,005h	; 7ff0  ..........._?.k.

; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 06 (se ejecuta en 0x8000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x08000


; ----------------------------------------------------------------------
; DATOS apariciones_por_fase: un puntero por fase a su lista de apariciones
;   (p01:6DCD: 0x8000 + 2 x (fase - 1)); lo leen p01:6DD2 (22 bytes)
;   0x8000..0x8016  (22 bytes)
DATA_apariciones_por_fase:
	defw 082b7h,08016h,08042h,082b7h,08062h,082b7h,080c1h,082b7h	; 8000
	defw 0815ch,081e8h,082b7h	; 8010  -> DATA_apariciones_815C DATA_apariciones_81E8 0x82b7

; ----------------------------------------------------------------------
; DATOS apariciones_8016: lo que aparece en la fase 2: de 3 en 3, la posicion
;   del scroll y lo que sale (p01:6DDC); acaba en la posicion 0xFFFF (su
;   tercer byte, que tambien se lee, es el primero de lo que va detras); lo
;   leen p01:6DDC (44 bytes)
;   0x8016..0x8042  (44 bytes)
DATA_apariciones_8016:
	defb 024h,000h,022h	; 8016
	defb 026h,000h,022h	; 8019
	defb 038h,000h,012h	; 801c
	defb 03ah,000h,012h	; 801f
	defb 047h,000h,025h	; 8022
	defb 049h,000h,025h	; 8025
	defb 054h,000h,012h	; 8028
	defb 056h,000h,012h	; 802b
	defb 058h,000h,022h	; 802e
	defb 05ah,000h,022h	; 8031
	defb 0eah,000h,012h	; 8034
	defb 0ech,000h,012h	; 8037
	defb 0f6h,000h,022h	; 803a
	defb 0f8h,000h,022h	; 803d
	defb 0ffh,0ffh	; 8040

; ----------------------------------------------------------------------
; DATOS apariciones_8042: lo que aparece en la fase 3: de 3 en 3, la posicion
;   del scroll y lo que sale (p01:6DDC); acaba en la posicion 0xFFFF (su
;   tercer byte, que tambien se lee, es el primero de lo que va detras); lo
;   leen p01:6DDC (32 bytes)
;   0x8042..0x8062  (32 bytes)
DATA_apariciones_8042:
	defb 0ach,000h,052h	; 8042
	defb 0b0h,000h,052h	; 8045
	defb 0b4h,000h,052h	; 8048
	defb 0c0h,000h,062h	; 804b
	defb 0c2h,000h,062h	; 804e
	defb 0cch,000h,04ah	; 8051
	defb 0f0h,000h,00ah	; 8054
	defb 0f4h,000h,062h	; 8057
	defb 0f6h,000h,022h	; 805a
	defb 0f8h,000h,062h	; 805d
	defb 0ffh,0ffh	; 8060

; ----------------------------------------------------------------------
; DATOS apariciones_8062: lo que aparece en la fase 5: de 3 en 3, la posicion
;   del scroll y lo que sale (p01:6DDC); acaba en la posicion 0xFFFF (su
;   tercer byte, que tambien se lee, es el primero de lo que va detras); lo
;   leen p01:6DDC (95 bytes)
;   0x8062..0x80c1  (95 bytes)
DATA_apariciones_8062:
	defb 08eh,000h,053h	; 8062
	defb 0a8h,000h,053h	; 8065
	defb 0b0h,000h,069h	; 8068
	defb 0beh,000h,053h	; 806b
	defb 0c8h,000h,046h	; 806e
	defb 0c8h,000h,069h	; 8071
	defb 0cch,000h,053h	; 8074
	defb 0d9h,000h,053h	; 8077
	defb 0deh,000h,046h	; 807a
	defb 0deh,000h,069h	; 807d
	defb 000h,001h,053h	; 8080
	defb 008h,001h,046h	; 8083
	defb 008h,001h,069h	; 8086
	defb 011h,001h,069h	; 8089
	defb 018h,001h,071h	; 808c
	defb 021h,001h,071h	; 808f
	defb 02ch,001h,061h	; 8092
	defb 02eh,001h,061h	; 8095
	defb 03ah,001h,053h	; 8098
	defb 048h,001h,061h	; 809b
	defb 04eh,001h,053h	; 809e
	defb 055h,001h,061h	; 80a1
	defb 055h,001h,049h	; 80a4
	defb 086h,001h,061h	; 80a7
	defb 09ah,001h,053h	; 80aa
	defb 09ch,001h,061h	; 80ad
	defb 0a6h,001h,053h	; 80b0
	defb 0b4h,001h,053h	; 80b3
	defb 0b8h,001h,061h	; 80b6
	defb 0c6h,001h,061h	; 80b9
	defb 0c7h,001h,053h	; 80bc
	defb 0ffh,0ffh	; 80bf

; ----------------------------------------------------------------------
; DATOS apariciones_80C1: lo que aparece en la fase 7: de 3 en 3, la posicion
;   del scroll y lo que sale (p01:6DDC); acaba en la posicion 0xFFFF (su
;   tercer byte, que tambien se lee, es el primero de lo que va detras); lo
;   leen p01:6DDC (155 bytes)
;   0x80c1..0x815c  (155 bytes)
DATA_apariciones_80C1:
	defb 066h,000h,08fh	; 80c1
	defb 06fh,000h,0ebh	; 80c4
	defb 075h,000h,054h	; 80c7
	defb 07dh,000h,0a1h	; 80ca
	defb 081h,000h,0d2h	; 80cd
	defb 086h,000h,0e4h	; 80d0
	defb 086h,000h,08fh	; 80d3
	defb 089h,000h,0d3h	; 80d6
	defb 08ch,000h,0d3h	; 80d9
	defb 097h,000h,0e2h	; 80dc
	defb 099h,000h,0e2h	; 80df
	defb 09ah,000h,0afh	; 80e2
	defb 09ch,000h,0f0h	; 80e5
	defb 09dh,000h,0c8h	; 80e8
	defb 09eh,000h,0a4h	; 80eb
	defb 0a0h,000h,08bh	; 80ee
	defb 0a2h,000h,0cbh	; 80f1
	defb 0a2h,000h,0f0h	; 80f4
	defb 0a4h,000h,0e1h	; 80f7
	defb 0c0h,000h,093h	; 80fa
	defb 0c2h,000h,0cch	; 80fd
	defb 0c4h,000h,08ch	; 8100
	defb 0cah,000h,0a2h	; 8103
	defb 0cbh,000h,093h	; 8106
	defb 0cdh,000h,0e2h	; 8109
	defb 0cdh,000h,0eah	; 810c
	defb 0d2h,000h,0e4h	; 810f
	defb 0d8h,000h,021h	; 8112
	defb 0dch,000h,054h	; 8115
	defb 0f1h,000h,054h	; 8118
	defb 0fah,000h,014h	; 811b
	defb 000h,001h,061h	; 811e
	defb 008h,001h,021h	; 8121
	defb 024h,001h,021h	; 8124
	defb 02dh,001h,014h	; 8127
	defb 030h,001h,054h	; 812a
	defb 034h,001h,021h	; 812d
	defb 03ch,001h,061h	; 8130
	defb 040h,001h,021h	; 8133
	defb 048h,001h,014h	; 8136
	defb 050h,001h,061h	; 8139
	defb 054h,001h,014h	; 813c
	defb 058h,001h,021h	; 813f
	defb 060h,001h,021h	; 8142
	defb 064h,001h,014h	; 8145
	defb 070h,001h,021h	; 8148
	defb 072h,001h,061h	; 814b
	defb 074h,001h,014h	; 814e
	defb 078h,001h,021h	; 8151
	defb 078h,001h,014h	; 8154
	defb 07bh,001h,014h	; 8157
	defb 0ffh,0ffh	; 815a

; ----------------------------------------------------------------------
; DATOS apariciones_815C: lo que aparece en la fase 9: de 3 en 3, la posicion
;   del scroll y lo que sale (p01:6DDC); acaba en la posicion 0xFFFF (su
;   tercer byte, que tambien se lee, es el primero de lo que va detras); lo
;   leen p01:6DDC (140 bytes)
;   0x815c..0x81e8  (140 bytes)
DATA_apariciones_815C:
	defb 04bh,000h,062h	; 815c
	defb 04bh,000h,052h	; 815f
	defb 04eh,000h,062h	; 8162
	defb 04eh,000h,052h	; 8165
	defb 05ah,000h,062h	; 8168
	defb 05ah,000h,052h	; 816b
	defb 05ch,000h,062h	; 816e
	defb 05ch,000h,052h	; 8171
	defb 022h,001h,064h	; 8174
	defb 022h,001h,050h	; 8177
	defb 026h,001h,066h	; 817a
	defb 026h,001h,04eh	; 817d
	defb 02eh,001h,064h	; 8180
	defb 02eh,001h,04eh	; 8183
	defb 032h,001h,064h	; 8186
	defb 034h,001h,04eh	; 8189
	defb 036h,001h,06ch	; 818c
	defb 03ah,001h,068h	; 818f
	defb 03ah,001h,04eh	; 8192
	defb 03ch,001h,04ah	; 8195
	defb 03eh,001h,064h	; 8198
	defb 041h,001h,046h	; 819b
	defb 048h,001h,064h	; 819e
	defb 048h,001h,052h	; 81a1
	defb 04ch,001h,04eh	; 81a4
	defb 054h,001h,064h	; 81a7
	defb 05ch,001h,064h	; 81aa
	defb 064h,001h,046h	; 81ad
	defb 066h,001h,062h	; 81b0
	defb 066h,001h,052h	; 81b3
	defb 06eh,001h,046h	; 81b6
	defb 06eh,001h,06eh	; 81b9
	defb 06eh,001h,052h	; 81bc
	defb 070h,001h,062h	; 81bf
	defb 076h,001h,044h	; 81c2
	defb 076h,001h,070h	; 81c5
	defb 07ah,001h,062h	; 81c8
	defb 07ah,001h,052h	; 81cb
	defb 07eh,001h,068h	; 81ce
	defb 07eh,001h,04ah	; 81d1
	defb 082h,001h,068h	; 81d4
	defb 082h,001h,04ah	; 81d7
	defb 08eh,001h,068h	; 81da
	defb 08eh,001h,04ah	; 81dd
	defb 09ah,001h,068h	; 81e0
	defb 09ah,001h,04ah	; 81e3
	defb 0ffh,0ffh	; 81e6

; ----------------------------------------------------------------------
; DATOS apariciones_81E8: lo que aparece en la fase 10: de 3 en 3, la posicion
;   del scroll y lo que sale (p01:6DDC); acaba en la posicion 0xFFFF (su
;   tercer byte, que tambien se lee, es el primero de lo que va detras); se
;   solapan 2 bloques: (apariciones_82B7 82B7-82B9); lo leen p01:6DDC (209
;   bytes)
;   0x81e8..0x82b9  (209 bytes)
DATA_apariciones_81E8:
	defb 021h,000h,046h	; 81e8
	defb 021h,000h,06eh	; 81eb
	defb 024h,000h,044h	; 81ee
	defb 024h,000h,070h	; 81f1
	defb 02ah,000h,00ch	; 81f4
	defb 02ch,000h,028h	; 81f7
	defb 02eh,000h,00ch	; 81fa
	defb 032h,000h,00eh	; 81fd
	defb 034h,000h,026h	; 8200
	defb 036h,000h,00eh	; 8203
	defb 03ah,000h,010h	; 8206
	defb 03ch,000h,024h	; 8209
	defb 042h,000h,064h	; 820c
	defb 044h,000h,050h	; 820f
	defb 048h,000h,026h	; 8212
	defb 04ah,000h,00eh	; 8215
	defb 04dh,000h,066h	; 8218
	defb 052h,000h,04ch	; 821b
	defb 054h,000h,028h	; 821e
	defb 066h,000h,066h	; 8221
	defb 066h,000h,04eh	; 8224
	defb 06ah,000h,064h	; 8227
	defb 06ah,000h,050h	; 822a
	defb 06ch,000h,008h	; 822d
	defb 06eh,000h,022h	; 8230
	defb 070h,000h,02eh	; 8233
	defb 076h,000h,004h	; 8236
	defb 076h,000h,030h	; 8239
	defb 07ch,000h,044h	; 823c
	defb 07ch,000h,070h	; 823f
	defb 082h,000h,046h	; 8242
	defb 082h,000h,06eh	; 8245
	defb 086h,000h,048h	; 8248
	defb 086h,000h,06ch	; 824b
	defb 0eeh,000h,028h	; 824e
	defb 0eeh,000h,04ah	; 8251
	defb 0f6h,000h,028h	; 8254
	defb 0feh,000h,02ch	; 8257
	defb 006h,001h,028h	; 825a
	defb 006h,001h,04ah	; 825d
	defb 012h,001h,068h	; 8260
	defb 012h,001h,00ah	; 8263
	defb 01ah,001h,04ah	; 8266
	defb 028h,001h,052h	; 8269
	defb 02ah,001h,052h	; 826c
	defb 02ch,001h,062h	; 826f
	defb 02eh,001h,062h	; 8272
	defb 042h,001h,052h	; 8275
	defb 044h,001h,052h	; 8278
	defb 054h,001h,062h	; 827b
	defb 056h,001h,062h	; 827e
	defb 068h,001h,052h	; 8281
	defb 06ah,001h,052h	; 8284
	defb 0fch,001h,067h	; 8287
	defb 0fch,001h,04dh	; 828a
	defb 0feh,001h,067h	; 828d
	defb 0feh,001h,04dh	; 8290
	defb 004h,002h,002h	; 8293
	defb 004h,002h,012h	; 8296
	defb 00eh,002h,042h	; 8299
	defb 00eh,002h,052h	; 829c
	defb 015h,002h,068h	; 829f
	defb 015h,002h,04ah	; 82a2
	defb 016h,002h,002h	; 82a5
	defb 016h,002h,012h	; 82a8
	defb 01ch,002h,028h	; 82ab
	defb 020h,002h,00ah	; 82ae
	defb 024h,002h,028h	; 82b1
	defb 028h,002h,00ah	; 82b4
	defb 0ffh,0ffh	; 82b7

; ----------------------------------------------------------------------
; DATOS leido_82B9: 1 bytes que lee p01:6DE0 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:6DE0 (1 bytes)
;   0x82b9..0x82ba  (1 bytes)
DATA_leido_82B9:
	defb 085h	; 82b9

; ----------------------------------------------------------------------
; DATOS leido_82BA: 427 bytes que leen p01:7E29, p01:7E27 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido, con 50 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p01:7E29, p01:7E27 (427 bytes)
;   0x82ba..0x8465  (427 bytes)
DATA_leido_82BA:
	defb 084h,08dh,084h,097h,084h,0a1h,084h,0abh,084h,0b5h,084h,0bfh,084h,0c9h,084h,0d3h	; 82ba  ................
	defb 084h,0dbh,084h,0e3h,084h,0ebh,084h,0f3h,084h,0fbh,084h,003h,085h,00bh,085h,013h	; 82ca  ................
	defb 085h,019h,085h,019h,085h,0e2h,085h,06ch,086h,074h,086h,07ch,086h,0d2h,086h,012h	; 82da  .......l.t.|....
	defb 087h,075h,087h,0e5h,087h,0f7h,087h,009h,088h,00fh,088h,017h,088h,01fh,088h,027h	; 82ea  .u.............'
	defb 088h,027h,088h,027h,088h,027h,088h,02dh,088h,052h,088h,077h,088h,09ch,088h,0c1h	; 82fa  .'.'.'.-.R.w....
	defb 088h,0e6h,088h,00bh,089h,030h,089h,058h,089h,082h,089h,0b0h,089h,0ddh,089h,014h	; 830a  .....0.X........
	defb 08ah,048h,08ah,078h,08ah,0ach,08ah,0d8h,08ah,011h,08bh,04eh,08bh,080h,08bh,0adh	; 831a  .H.x.......N....
	defb 08bh,0d5h,08bh,0ffh,08bh,026h,08ch,056h,08ch,089h,08ch,0bfh,08ch,0f4h,08ch,028h	; 832a  .....&.V.......(
	defb 08dh,066h,08dh,0a8h,08dh,0dfh,08dh,0dfh,08dh,051h,08eh,0c3h,08eh,035h,08fh,0a7h	; 833a  .f.......Q...5..
	defb 08fh,0a7h,08fh,0a7h,08fh,0a7h,08fh,0a7h,08fh,0a7h,08fh,0a7h,08fh,0a7h,08fh,0afh	; 834a  ................
	defb 08fh,0b7h,08fh,0bfh,08fh,0c7h,08fh,0cfh,08fh,0d7h,08fh,0dfh,08fh,003h,090h,027h	; 835a  ...............'
	defb 090h,04bh,090h,06fh,090h,093h,090h,0c3h,090h,001h,091h,04dh,091h,0a7h,091h,00fh	; 836a  .K.o.......M....
	defb 092h,084h,092h,004h,093h,046h,093h,04ch,093h,052h,093h,058h,093h,05fh,093h,06dh	; 837a  .....F.L.R.X._.m
	defb 093h,07bh,093h,089h,093h,090h,093h,09eh,093h,0ach,093h,0bah,093h,0c1h,093h,0cfh	; 838a  .{..............
	defb 093h,0ddh,093h,0ebh,093h,0f2h,093h,000h,094h,00eh,094h,01ch,094h,023h,094h,031h	; 839a  .............#.1
	defb 094h,03fh,094h,04dh,094h,054h,094h,062h,094h,070h,094h,07eh,094h,085h,094h,093h	; 83aa  .?.M.T.b.p.~....
	defb 094h,0a1h,094h,0afh,094h,0b6h,094h,0c4h,094h,0d2h,094h,0e0h,094h,0e0h,094h,0e0h	; 83ba  ................
	defb 094h,0e0h,094h,0e0h,094h,0e0h,094h,0e0h,094h,0e0h,094h,0e0h,094h,0e0h,094h,02fh	; 83ca  .............../
	defb 095h,07eh,095h,0cdh,095h,01ch,096h,072h,096h,07ah,096h,080h,096h,09eh,097h,0bdh	; 83da  .~.....r.z......
	defb 098h,0d4h,099h,0f5h,09ah,011h,09ch,031h,09dh,053h,09eh,06dh,09fh,08eh,0a0h,0a9h	; 83ea  .......1.S.m....
	defb 0a1h,0efh,0a1h,049h,0a2h,08fh,0a2h,0ebh,0a2h,024h,0a3h,06dh,0a3h,0b2h,0a3h,00fh	; 83fa  ...I.....$.m....
	defb 0a4h,054h,0a4h,0b1h,0a4h,0bdh,0a4h,0c9h,0a4h,050h,0a5h,050h,0a7h,05ch,0a7h,068h	; 840a  .T.......P.P.\.h
	defb 0a7h,074h,0a7h,080h,0a7h,08ch,0a7h,098h,0a7h,0a4h,0a7h,0b0h,0a7h,0bch,0a7h,0c8h	; 841a  .t..............
	defb 0a7h,0d4h,0a7h,0ddh,0a7h,0e4h,0a7h,0eeh,0a7h,0f4h,0a7h,0fah,0a7h,000h,0a8h,006h	; 842a  ................
	defb 0a8h,00ch,0a8h,014h,0a8h,020h,0a8h,02ch,0a8h,03ah,0a8h,046h,0a8h,056h,0a8h,062h	; 843a  ..... .,.:.F.V.b
	defb 0a8h,072h,0a8h,07eh,0a8h,08eh,0a8h,09ah,0a8h,0a9h,0a8h,0b5h,0a8h,0c2h,0a8h,0cdh	; 844a  .r.~............
	defb 0a8h,0d8h,0a8h,0e0h,0a8h,0eeh,0a8h,0f8h,0a8h,00ah,0a9h	; 845a  ...........

; ----------------------------------------------------------------------
; DATOS leido_8465: 27 bytes que lee p01:7DF2 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p01:7DF2 (27 bytes)
;   0x8465..0x8480  (27 bytes)
DATA_leido_8465:
	defb 080h,080h,073h,0c0h,080h,01fh,0ffh,0ffh,0e0h,07eh,003h,0ffh,0c0h,000h,000h,000h	; 8465  ..s......~......
	defb 003h,0ffh,0e3h,0ffh,0ffh,0cch,000h,000h,07fh,0ffh,0c0h	; 8475  ...........

; ----------------------------------------------------------------------
; DATOS no_visto_8480: 5 bytes a 0x00 entre dos bloques: no se ha visto leer:
;   ninguna instruccion trazada lo apunta con su banco puesto y ninguna
;   partida de la campana lo lee (tools/cobertura.py, tools/lee_sonidos.py);
;   en la ROM hay 26 pares de bytes que valen 0x8480
;   0x8480..0x8485  (5 bytes)
DATA_no_visto_8480:
	defb 000h,000h,000h,000h,000h	; 8480

; ----------------------------------------------------------------------
; DATOS rle_ram_8485: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (8 bytes)
;   0x8485..0x848d  (8 bytes)
DATA_rle_ram_8485:
	defb 082h,002h,004h,004h,059h,004h,05ah,000h	; 8485  ....Y.Z.

; ----------------------------------------------------------------------
; DATOS leido_848D: 70 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7DFC, p01:7E01, p01:7E09
;   (70 bytes)
;   0x848d..0x84d3  (70 bytes)
DATA_leido_848D:
	defb 002h,004h,059h,059h,059h,0f6h,05ah,05ah,05ah,0f8h,002h,004h,059h,059h,059h,0f7h	; 848d  ..YYY.ZZZ...YYY.
	defb 05ah,05ah,05ah,0f9h,002h,004h,059h,059h,0f6h,0f7h,05ah,05ah,0f8h,0f9h,002h,004h	; 849d  ZZZ...YY..ZZ....
	defb 059h,059h,0f7h,0f7h,05ah,05ah,0f9h,0f9h,002h,004h,059h,0f6h,0f7h,0f7h,05ah,0f8h	; 84ad  YY..ZZ....Y...Z.
	defb 0f9h,0f9h,002h,004h,059h,0f7h,0f7h,0f7h,05ah,0f9h,0f9h,0f9h,002h,004h,0f6h,0f7h	; 84bd  ....Y...Z.......
	defb 0f7h,0f7h,0f8h,0f9h,0f9h,0f9h	; 84cd

; ----------------------------------------------------------------------
; DATOS rle_ram_84D3: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (8 bytes)
;   0x84d3..0x84db  (8 bytes)
DATA_rle_ram_84D3:
	defb 082h,002h,004h,004h,0f7h,004h,0f9h,000h	; 84d3  ........

; ----------------------------------------------------------------------
; DATOS leido_84DB: 62 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7DFC, p01:7E01, p01:7E09
;   (62 bytes)
;   0x84db..0x8519  (62 bytes)
DATA_leido_84DB:
	defb 002h,003h,059h,059h,059h,05ah,05ah,05ah,002h,003h,059h,059h,0f6h,05ah,05ah,0f8h	; 84db  ..YYYZZZ..YY.ZZ.
	defb 002h,003h,059h,059h,0f7h,05ah,05ah,0f9h,002h,003h,059h,0f6h,0f7h,05ah,0f8h,0f9h	; 84eb  ..YY.ZZ...Y..Z..
	defb 002h,003h,059h,0f7h,0f7h,05ah,0f9h,0f9h,002h,003h,0f6h,0f7h,0f7h,0f8h,0f9h,0f9h	; 84fb  ..Y..Z..........
	defb 002h,003h,0f7h,0f7h,0f7h,0f9h,0f9h,0f9h,004h,001h,08eh,0bfh,0c0h,0b1h	; 850b  ..............

; ----------------------------------------------------------------------
; DATOS rle_ram_8519: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (201 bytes)
;   0x8519..0x85e2  (201 bytes)
DATA_rle_ram_8519:
	defb 002h,010h,009h,000h,085h,071h,000h,000h,066h,0e8h,00bh,000h,086h,066h,0e8h,000h	; 8519  .....q..f....f..
	defb 000h,0c6h,077h,008h,000h,088h,065h,000h,000h,0c6h,077h,000h,0c9h,0ebh,008h,000h	; 8529  ..w...e...w.....
	defb 088h,065h,000h,000h,0c9h,0ebh,000h,068h,0e7h,008h,000h,0ach,05fh,000h,000h,068h	; 8539  .e.....h...._..h
	defb 0e7h,000h,000h,0bfh,000h,000h,062h,0bbh,0bch,0bdh,062h,05bh,0c0h,06ah,05eh,000h	; 8549  ......b...b[.j^.
	defb 0bfh,000h,0b0h,074h,000h,000h,0deh,0dfh,0b7h,0edh,0bbh,0c1h,0d0h,0d0h,0ceh,0b0h	; 8559  ...t............
	defb 074h,063h,0b1h,064h,061h,05ch,000h,061h,003h,059h,08dh,0b8h,0b9h,0bah,0b2h,0c0h	; 8569  tc.da\.a.Y......
	defb 0b4h,0b5h,0b2h,0b3h,0c2h,06ch,000h,071h,003h,05ah,0a9h,0dbh,0dch,0ddh,0d5h,0e3h	; 8579  .....l.q.Z......
	defb 0d7h,0d8h,0d5h,0d6h,0e5h,000h,0bbh,0bch,0dah,0cah,0deh,0e4h,0f3h,0f3h,0f1h,0d3h	; 8589  ................
	defb 064h,073h,0d4h,074h,071h,000h,072h,0deh,0dfh,0e0h,072h,06bh,0e3h,07ah,06eh,000h	; 8599  ds.tq.r...rk.zn.
	defb 0e2h,000h,0d3h,064h,008h,000h,088h,06fh,000h,000h,078h,0c4h,000h,000h,0e2h,008h	; 85a9  ...d...o..x.....
	defb 000h,088h,075h,000h,000h,0ech,0c8h,000h,078h,0c4h,008h,000h,088h,075h,000h,000h	; 85b9  ..u.....x....u..
	defb 0e9h,067h,000h,0ech,0c8h,00ah,000h,086h,076h,0c5h,000h,000h,0e9h,067h,00ah,000h	; 85c9  .g......v....g..
	defb 087h,061h,000h,000h,076h,0c5h,000h,000h,000h	; 85d9  .a..v....

; ----------------------------------------------------------------------
; DATOS rle_ram_85E2: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (138 bytes)
;   0x85e2..0x866c  (138 bytes)
DATA_rle_ram_85E2:
	defb 082h,010h,00ch,007h,000h,081h,077h,009h,000h,084h,06ch,065h,0ebh,065h,007h,000h	; 85e2  ......w...le.e..
	defb 085h,072h,0d4h,0eeh,0efh,05fh,008h,000h,084h,0cdh,0bbh,078h,07ah,008h,000h,084h	; 85f2  .r..._.....xz...
	defb 0eah,0c3h,0ech,0ebh,007h,000h,097h,062h,0b1h,0cbh,0e9h,0e7h,064h,05eh,000h,000h	; 8602  .......b....d^..
	defb 060h,0deh,0bdh,0b4h,0f5h,0bbh,0c1h,0d0h,0d0h,06ah,000h,05ch,06bh,05ch,004h,0f7h	; 8612  `........j.\k\..
	defb 088h,0b8h,0b9h,0bah,0d0h,0ceh,06ch,05bh,06ch,004h,0f9h,090h,0dbh,0dch,0ddh,0f3h	; 8622  ......l[l.......
	defb 0f1h,000h,070h,0bbh,0e0h,0d7h,0d2h,0deh,0e4h,0f3h,0f3h,07ah,005h,000h,087h,072h	; 8632  ..p........z...r
	defb 0d4h,0eeh,0c6h,0c4h,074h,06eh,006h,000h,084h,0c7h,0e6h,0c9h,0c8h,008h,000h,084h	; 8642  ....tn..........
	defb 0f0h,0deh,068h,069h,007h,000h,085h,062h,0b1h,0cbh,0cch,06fh,008h,000h,084h,05ch	; 8652  ..hi...b...o...\
	defb 075h,0c8h,075h,00ah,000h,081h,067h,004h,000h,000h	; 8662  u.u...g...

; ----------------------------------------------------------------------
; DATOS no_visto_866C: no se ha visto leer: ninguna instruccion trazada lo
;   apunta con su banco puesto y ninguna partida de la campana lo lee
;   (tools/cobertura.py, tools/lee_sonidos.py); en la ROM hay 7 pares de bytes
;   que valen 0x866C
;   0x866c..0x867c  (16 bytes)
DATA_no_visto_866C:
	defb 002h,003h,064h,065h,066h,08bh,08ch,08dh,002h,003h,0fah,0fbh,0fch,0fdh,0feh,0ffh	; 866c  ..def...........

; ----------------------------------------------------------------------
; DATOS rle_ram_867C: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (86 bytes)
;   0x867c..0x86d2  (86 bytes)
DATA_rle_ram_867C:
	defb 082h,008h,00bh,003h,000h,09fh,060h,061h,0b0h,0b1h,062h,063h,064h,065h,000h,000h	; 867c  ......`a..bcde..
	defb 066h,0b2h,0b3h,0b4h,0b5h,0b6h,0b7h,0b8h,0b9h,067h,0bah,0bbh,0bch,0bdh,0beh,0bfh	; 868c  f........g......
	defb 0c0h,0c1h,0c2h,0c3h,068h,006h,000h,085h,0c8h,0c9h,0cah,0cbh,071h,006h,000h,09ah	; 869c  ....h.......q...
	defb 0e4h,0e5h,0e6h,0e7h,070h,0d6h,0d7h,0d8h,0d9h,0dah,0dbh,0dch,0ddh,0deh,0dfh,000h	; 86ac  ....p...........
	defb 000h,06fh,0ceh,0cfh,0d0h,0d1h,0d2h,0d3h,0d4h,0d5h,003h,000h,088h,069h,06ah,0cch	; 86bc  .o...........ij.
	defb 0cdh,06bh,06ch,06dh,06eh,000h	; 86cc

; ----------------------------------------------------------------------
; DATOS rle_ram_86D2: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (64 bytes)
;   0x86d2..0x8712  (64 bytes)
DATA_rle_ram_86D2:
	defb 082h,007h,009h,005h,000h,083h,064h,065h,066h,004h,000h,0b3h,067h,068h,0b9h,0e7h	; 86d2  ......def...gh..
	defb 069h,06eh,000h,000h,06ah,0b7h,0f9h,0bbh,090h,06bh,000h,000h,06ch,0d0h,0e9h,0bch	; 86e2  in..j....k..l...
	defb 0bch,091h,06dh,06eh,000h,06fh,0b8h,0fbh,0bdh,0beh,092h,070h,072h,071h,074h,09fh	; 86f2  ..mn.o.....prqt.
	defb 0fah,0bdh,0beh,093h,094h,072h,073h,074h,09eh,0deh,0bdh,0beh,095h,06dh,000h,000h	; 8702  .....rst.....m..

; ----------------------------------------------------------------------
; DATOS rle_ram_8712: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (99 bytes)
;   0x8712..0x8775  (99 bytes)
DATA_rle_ram_8712:
	defb 08dh,008h,00fh,000h,09ah,0a2h,075h,076h,09eh,0deh,0beh,096h,097h,077h,004h,000h	; 8712  ......uv.....w..
	defb 08ah,0efh,0dah,0f3h,0b1h,0d8h,0a4h,0dfh,0bdh,098h,0eeh,005h,000h,08ah,0dbh,0ebh	; 8722  ................
	defb 0e0h,0aeh,0abh,0ddh,0f0h,0d7h,0b0h,078h,007h,000h,089h,0c8h,0eah,0d2h,0f1h,099h	; 8732  .......x........
	defb 0b5h,0ech,0d6h,078h,007h,000h,08ah,0f6h,0f2h,0c5h,0ceh,0a9h,0a6h,0d1h,0b3h,0a3h	; 8742  ...x............
	defb 079h,007h,000h,089h,0f7h,0feh,0f5h,0fch,0ach,0b2h,0a1h,07ah,07bh,004h,000h,08ch	; 8752  y..........z{...
	defb 0e1h,0ffh,0d9h,0f4h,0fdh,000h,0a0h,07ch,07dh,07eh,07fh,080h,005h,000h,081h,0e2h	; 8762  .......|}~......
	defb 009h,000h,000h	; 8772

; ----------------------------------------------------------------------
; DATOS rle_ram_8775: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (112 bytes)
;   0x8775..0x87e5  (112 bytes)
DATA_rle_ram_8775:
	defb 086h,00ah,00fh,000h,09ah,0a2h,081h,00bh,000h,087h,0efh,0dah,0f3h,0b1h,0e8h,0cbh	; 8775  ................
	defb 0cah,008h,000h,088h,0dbh,0ebh,0e0h,0aeh,0dch,0c3h,0f8h,0a5h,009h,000h,088h,0c8h	; 8785  ................
	defb 0eah,0bah,0c3h,0c2h,0e4h,0adh,09bh,008h,000h,088h,0c7h,0c3h,0c3h,0cch,0bfh,0beh	; 8795  ................
	defb 0aah,09ch,005h,000h,0b4h,082h,0c9h,0c6h,0c1h,0c1h,0c0h,0bfh,0a7h,0a8h,0b3h,0a3h	; 87a5  ................
	defb 079h,000h,000h,083h,0c9h,0e3h,0d3h,0d4h,0c4h,0cdh,0e5h,0e6h,09dh,0b2h,0a1h,07ah	; 87b5  y..............z
	defb 07bh,000h,000h,084h,0b4h,0b6h,0cfh,0d5h,0edh,0afh,085h,086h,07ch,07dh,07eh,07fh	; 87c5  {...........|}~.
	defb 080h,087h,088h,089h,08ah,08bh,08ch,08dh,08eh,008h,000h,081h,08fh,00dh,000h,000h	; 87d5  ................

; ----------------------------------------------------------------------
; DATOS leido_87E5: 331 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido, con 16 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p01:7DFC, p01:7E01, p01:7E09 (331 bytes)
;   0x87e5..0x8930  (331 bytes)
DATA_leido_87E5:
	defb 004h,004h,000h,09ah,0a2h,081h,059h,05ah,0f3h,0b1h,05bh,05ch,0e0h,0aeh,000h,000h	; 87e5  ......YZ..[\....
	defb 0c8h,0eah,004h,004h,000h,05dh,05eh,081h,05fh,060h,061h,0b1h,062h,0ebh,063h,0aeh	; 87f5  .....]^._`a.b.c.
	defb 000h,000h,0c8h,0eah,004h,001h,081h,08eh,0beh,0b1h,002h,003h,0a6h,0a7h,0a8h,0c4h	; 8805  ................
	defb 0c5h,0c6h,002h,003h,0c5h,0c6h,0c7h,0e1h,0e2h,0e3h,002h,003h,0e8h,0e9h,0eah,0ebh	; 8815  ................
	defb 0ech,0edh,004h,001h,081h,090h,08fh,0beh,007h,005h,000h,000h,0d5h,000h,000h,080h	; 8825  ................
	defb 081h,082h,083h,000h,084h,085h,086h,087h,088h,089h,08ah,08bh,08ch,08dh,08eh,08fh	; 8835  ................
	defb 090h,091h,092h,093h,094h,095h,096h,000h,000h,000h,0d4h,000h,000h,007h,005h,000h	; 8845  ................
	defb 000h,0d5h,000h,000h,080h,081h,082h,083h,000h,097h,098h,086h,087h,088h,099h,09ah	; 8855  ................
	defb 08bh,08ch,08dh,09bh,08fh,090h,091h,092h,093h,094h,095h,096h,000h,000h,000h,0d4h	; 8865  ................
	defb 000h,000h,007h,005h,000h,000h,0d5h,000h,000h,09ch,09dh,082h,083h,000h,09eh,09fh	; 8875  ................
	defb 0a0h,087h,088h,099h,0a1h,0a2h,08ch,08dh,0a3h,0a4h,0a5h,091h,092h,0a6h,094h,095h	; 8885  ................
	defb 096h,000h,000h,000h,0d4h,000h,000h,007h,005h,000h,000h,0d5h,000h,000h,0a7h,0a8h	; 8895  ................
	defb 082h,083h,000h,0a9h,0aah,0abh,087h,088h,099h,0ach,0adh,08ch,08dh,0aeh,0afh,0b0h	; 88a5  ................
	defb 091h,092h,0b1h,0b2h,095h,096h,000h,000h,000h,0d4h,000h,000h,007h,005h,000h,000h	; 88b5  ................
	defb 0d5h,000h,000h,0b3h,0b4h,0b5h,083h,000h,0a9h,0b6h,0b7h,0b8h,088h,099h,0b9h,0bah	; 88c5  ................
	defb 0bbh,08dh,0aeh,0bch,0bdh,0beh,092h,0b1h,0bfh,0c0h,096h,000h,000h,000h,0d4h,000h	; 88d5  ................
	defb 000h,007h,005h,000h,000h,0d5h,000h,000h,0b3h,0b4h,0a5h,083h,000h,0c1h,0c2h,0b7h	; 88e5  ................
	defb 0b8h,088h,0c3h,0c4h,0c5h,0bbh,08dh,0c6h,0c7h,0c8h,0beh,092h,0b1h,0c9h,0c0h,096h	; 88f5  ................
	defb 000h,000h,000h,0d4h,000h,000h,007h,005h,000h,000h,0d5h,000h,000h,0b3h,0b4h,0b5h	; 8905  ................
	defb 083h,000h,0cah,0cbh,0cch,0b8h,088h,0cdh,0ceh,0cfh,0bbh,08dh,0d0h,0d1h,0d2h,0beh	; 8915  ................
	defb 092h,0b1h,0d3h,0c0h,096h,000h,000h,000h,0d4h,000h,000h	; 8925  ...........

; ----------------------------------------------------------------------
; DATOS rle_ram_8930: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (40 bytes)
;   0x8930..0x8958  (40 bytes)
DATA_rle_ram_8930:
	defb 08ah,005h,00ch,0d6h,0d7h,0e1h,0ddh,0dbh,0ddh,0e3h,0e7h,004h,000h,089h,0d8h,0d9h	; 8930  ................
	defb 0e2h,0deh,0dch,0deh,0e4h,0e8h,0e1h,00bh,000h,083h,0e2h,0dfh,0e7h,00ah,000h,083h	; 8940  ................
	defb 0e0h,0e8h,0ddh,00bh,000h,081h,0deh,000h	; 8950  ........

; ----------------------------------------------------------------------
; DATOS rle_ram_8958: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (42 bytes)
;   0x8958..0x8982  (42 bytes)
DATA_rle_ram_8958:
	defb 082h,004h,00dh,004h,000h,084h,0e7h,0e5h,0e5h,0e7h,005h,000h,090h,0d6h,0d7h,0dfh	; 8958  ................
	defb 0dah,0e8h,0e6h,0e6h,0e8h,0dbh,0dfh,0dfh,0e7h,000h,0d8h,0d9h,0e0h,005h,000h,085h	; 8968  ................
	defb 0dch,0e0h,0e0h,0e8h,0ddh,00ch,000h,081h,0deh,000h	; 8978  ..........

; ----------------------------------------------------------------------
; DATOS rle_ram_8982: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (46 bytes)
;   0x8982..0x89b0  (46 bytes)
DATA_rle_ram_8982:
	defb 082h,005h,00dh,008h,000h,084h,0e1h,0dfh,0dfh,0e7h,006h,000h,088h,0e5h,0e1h,0dbh	; 8982  ................
	defb 0e2h,0e0h,0e0h,0e8h,0ddh,003h,000h,085h,0e5h,0dah,0e6h,0e2h,0dch,004h,000h,085h	; 8992  ................
	defb 0deh,0d6h,0d7h,0e3h,0e6h,009h,000h,083h,0d8h,0d9h,0e4h,00ah,000h,000h	; 89a2  ..............

; ----------------------------------------------------------------------
; DATOS rle_ram_89B0: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (45 bytes)
;   0x89b0..0x89dd  (45 bytes)
DATA_rle_ram_89B0:
	defb 082h,006h,00dh,007h,000h,083h,0e7h,0e1h,0dbh,003h,0dah,006h,000h,084h,0e3h,0e8h	; 89b0  ................
	defb 0e2h,0dch,008h,000h,082h,0dbh,0e4h,009h,000h,083h,0e7h,0dah,0dch,007h,000h,084h	; 89c0  ................
	defb 0d6h,0d7h,0e1h,0e8h,009h,000h,083h,0d8h,0d9h,0e2h,00ah,000h,000h	; 89d0  .............

; ----------------------------------------------------------------------
; DATOS rle_ram_89DD: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (55 bytes)
;   0x89dd..0x8a14  (55 bytes)
DATA_rle_ram_89DD:
	defb 082h,008h,00dh,00bh,000h,082h,0e5h,0dbh,00ah,000h,083h,0e7h,0e6h,0dch,008h,000h	; 89dd  ................
	defb 083h,0e5h,0e1h,0e8h,009h,000h,083h,0e7h,0e6h,0e2h,009h,000h,082h,0e3h,0e8h,00ah	; 89ed  ................
	defb 000h,082h,0e5h,0e4h,006h,000h,082h,0d6h,0d7h,003h,0e1h,081h,0e6h,007h,000h,082h	; 89fd  ................
	defb 0d8h,0d9h,003h,0e2h,008h,000h,000h	; 8a0d

; ----------------------------------------------------------------------
; DATOS rle_ram_8A14: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (52 bytes)
;   0x8a14..0x8a48  (52 bytes)
DATA_rle_ram_8A14:
	defb 082h,007h,00bh,009h,000h,082h,0e3h,0ddh,008h,000h,083h,0e7h,0e4h,0deh,008h,000h	; 8a14  ................
	defb 081h,0e8h,009h,000h,087h,0f3h,0f4h,000h,000h,0d6h,0d7h,0e1h,004h,000h,081h,0dah	; 8a24  ................
	defb 003h,000h,088h,0d8h,0d9h,0e2h,0e3h,000h,000h,0f1h,0f2h,006h,000h,081h,0e4h,003h	; 8a34  ................
	defb 0dah,004h,000h,000h	; 8a44

; ----------------------------------------------------------------------
; DATOS rle_ram_8A48: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (48 bytes)
;   0x8a48..0x8a78  (48 bytes)
DATA_rle_ram_8A48:
	defb 085h,005h,00ch,0d6h,0d7h,0e7h,007h,000h,085h,0e5h,0ddh,0d8h,0d9h,0e8h,005h,000h	; 8a48  ................
	defb 088h,0e7h,0e1h,0e6h,0deh,000h,000h,0f3h,0f4h,004h,000h,082h,0e8h,0e2h,005h,000h	; 8a58  ................
	defb 085h,0ddh,0e3h,0e7h,0e7h,0dah,007h,000h,084h,0deh,0e4h,0e8h,0e8h,005h,000h,000h	; 8a68  ................

; ----------------------------------------------------------------------
; DATOS rle_ram_8A78: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (52 bytes)
;   0x8a78..0x8aac  (52 bytes)
DATA_rle_ram_8A78:
	defb 085h,006h,00bh,0d6h,0d7h,0e1h,008h,000h,084h,0d8h,0d9h,0e2h,0dah,00ah,000h,081h	; 8a78  ................
	defb 0dah,003h,000h,083h,0e7h,0e1h,0e3h,004h,000h,088h,0ebh,0ech,000h,0e1h,0e8h,0e2h	; 8a88  ................
	defb 0e4h,0ddh,003h,000h,084h,0f5h,0f6h,0dbh,0e2h,003h,000h,081h,0deh,005h,000h,081h	; 8a98  ................
	defb 0dch,005h,000h,000h	; 8aa8

; ----------------------------------------------------------------------
; DATOS rle_ram_8AAC: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (44 bytes)
;   0x8aac..0x8ad8  (44 bytes)
DATA_rle_ram_8AAC:
	defb 086h,007h,00bh,0d6h,0d7h,0e1h,0dah,007h,000h,085h,0d8h,0d9h,0e2h,0edh,0eeh,009h	; 8aac  ................
	defb 000h,082h,0f1h,0f2h,00ah,000h,081h,0dah,003h,0e5h,008h,000h,003h,0e6h,082h,0e1h	; 8abc  ................
	defb 0e3h,009h,000h,083h,0e2h,0e4h,0ddh,00ah,000h,081h,0deh,000h	; 8acc  ............

; ----------------------------------------------------------------------
; DATOS rle_ram_8AD8: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (57 bytes)
;   0x8ad8..0x8b11  (57 bytes)
DATA_rle_ram_8AD8:
	defb 085h,00bh,009h,0d6h,0d7h,0e1h,006h,000h,083h,0d8h,0d9h,0e2h,008h,000h,082h,0ebh	; 8ad8  ................
	defb 0ech,007h,000h,082h,0f1h,0f2h,007h,000h,082h,0f5h,0f6h,008h,000h,081h,0dah,008h	; 8ae8  ................
	defb 000h,082h,0efh,0f0h,008h,000h,081h,0dah,009h,000h,083h,0dah,0e1h,0e3h,007h,000h	; 8af8  ................
	defb 083h,0e2h,0e4h,0ddh,008h,000h,081h,0deh,000h	; 8b08  .........

; ----------------------------------------------------------------------
; DATOS rle_ram_8B11: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (61 bytes)
;   0x8b11..0x8b4e  (61 bytes)
DATA_rle_ram_8B11:
	defb 085h,00ch,008h,0d6h,0d7h,0e5h,005h,000h,085h,0d8h,0d9h,0e6h,0ebh,0ech,006h,000h	; 8b11  ................
	defb 081h,0dah,007h,000h,082h,0edh,0eeh,006h,000h,082h,0efh,0f0h,007h,000h,081h,0dah	; 8b21  ................
	defb 007h,000h,082h,0ebh,0ech,006h,000h,082h,0f1h,0f2h,007h,000h,081h,0ddh,007h,000h	; 8b31  ................
	defb 082h,0deh,0dah,007h,000h,082h,0f5h,0f6h,007h,000h,081h,0dah,000h	; 8b41  .............

; ----------------------------------------------------------------------
; DATOS rle_ram_8B4E: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (50 bytes)
;   0x8b4e..0x8b80  (50 bytes)
DATA_rle_ram_8B4E:
	defb 085h,009h,00ch,0d6h,0d7h,0e3h,009h,000h,084h,0d8h,0d9h,0e4h,0dah,00bh,000h,082h	; 8b4e  ................
	defb 0f3h,0f4h,00bh,000h,082h,0efh,0f0h,00bh,000h,082h,0dah,0e1h,00bh,000h,082h,0e2h	; 8b5e  ................
	defb 0e1h,00bh,000h,083h,0e2h,0ddh,0e1h,00ah,000h,083h,0deh,0e2h,0dah,00ch,000h,081h	; 8b6e  ................
	defb 0dah,000h	; 8b7e

; ----------------------------------------------------------------------
; DATOS rle_ram_8B80: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (45 bytes)
;   0x8b80..0x8bad  (45 bytes)
DATA_rle_ram_8B80:
	defb 082h,005h,00dh,00ch,000h,081h,0e5h,00ah,000h,083h,0e3h,0dbh,0e6h,009h,000h,08eh	; 8b80  ................
	defb 0e1h,0e4h,0dch,000h,0d6h,0d7h,0e1h,0e5h,0e7h,0e7h,0e5h,0dfh,0dbh,0e2h,003h,000h	; 8b90  ................
	defb 089h,0d8h,0d9h,0e2h,0e6h,0e8h,0e8h,0e6h,0e0h,0dch,004h,000h,000h	; 8ba0  .............

; ----------------------------------------------------------------------
; DATOS rle_ram_8BAD: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (40 bytes)
;   0x8bad..0x8bd5  (40 bytes)
DATA_rle_ram_8BAD:
	defb 082h,004h,00dh,00ch,000h,084h,0e5h,0d6h,0d7h,0e3h,005h,000h,091h,0e7h,0e3h,0e3h	; 8bad  ................
	defb 0dbh,0e6h,0d8h,0d9h,0e4h,0dah,0dbh,0ddh,0ddh,0dbh,0e8h,0e4h,0e4h,0dch,005h,000h	; 8bbd  ................
	defb 084h,0dch,0deh,0deh,0dch,005h,000h,000h	; 8bcd  ........

; ----------------------------------------------------------------------
; DATOS rle_ram_8BD5: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (42 bytes)
;   0x8bd5..0x8bff  (42 bytes)
DATA_rle_ram_8BD5:
	defb 086h,004h,00dh,0d6h,0d7h,0dfh,0ddh,009h,000h,088h,0d8h,0d9h,0e0h,0deh,0dah,0ddh	; 8bd5  ................
	defb 0e1h,0e7h,004h,000h,081h,0e5h,005h,000h,088h,0deh,0e2h,0e8h,0e1h,0e3h,0e3h,0dbh	; 8be5  ................
	defb 0e6h,008h,000h,085h,0e2h,0e4h,0e4h,0dch,000h,000h	; 8bf5  ..........

; ----------------------------------------------------------------------
; DATOS rle_ram_8BFF: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (39 bytes)
;   0x8bff..0x8c26  (39 bytes)
DATA_rle_ram_8BFF:
	defb 085h,006h,00ch,0d6h,0d7h,0e1h,009h,000h,085h,0d8h,0d9h,0e2h,0dah,0e7h,00bh,000h	; 8bff  ................
	defb 082h,0e8h,0e5h,00bh,000h,082h,0e6h,0e1h,00bh,000h,083h,0e2h,0dah,0e5h,003h,0e7h	; 8c0f  ................
	defb 008h,000h,081h,0e6h,003h,0e8h,000h	; 8c1f

; ----------------------------------------------------------------------
; DATOS rle_ram_8C26: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (48 bytes)
;   0x8c26..0x8c56  (48 bytes)
DATA_rle_ram_8C26:
	defb 084h,008h,00dh,0d6h,0d7h,003h,0dfh,008h,000h,082h,0d8h,0d9h,003h,0e0h,081h,0ddh	; 8c26  ................
	defb 00ch,000h,082h,0deh,0e1h,00ch,000h,082h,0e2h,0dah,00dh,000h,082h,0ddh,0dfh,00bh	; 8c36  ................
	defb 000h,083h,0deh,0e0h,0dah,00dh,000h,082h,0ddh,0e5h,00bh,000h,082h,0deh,0e6h,000h	; 8c46  ................

; ----------------------------------------------------------------------
; DATOS rle_ram_8C56: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (51 bytes)
;   0x8c56..0x8c89  (51 bytes)
DATA_rle_ram_8C56:
	defb 082h,007h,00bh,003h,000h,081h,0ddh,003h,0dah,004h,000h,088h,0d6h,0d7h,0dfh,0deh	; 8c56  ................
	defb 000h,000h,0f3h,0f4h,003h,000h,083h,0d8h,0d9h,0e0h,004h,000h,081h,0dah,00ah,000h	; 8c66  ................
	defb 082h,0f5h,0f6h,00ah,000h,081h,0dbh,00ah,000h,083h,0dch,0ddh,0e1h,009h,000h,082h	; 8c76  ................
	defb 0deh,0e2h,000h	; 8c86

; ----------------------------------------------------------------------
; DATOS rle_ram_8C89: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (54 bytes)
;   0x8c89..0x8cbf  (54 bytes)
DATA_rle_ram_8C89:
	defb 082h,006h,00ch,003h,000h,084h,0e5h,0dfh,0dbh,0dbh,008h,000h,085h,0e6h,0e0h,0dch	; 8c89  ................
	defb 0dch,0dah,006h,000h,082h,0f3h,0f4h,004h,000h,082h,0dbh,0e1h,004h,000h,082h,0f3h	; 8c99  ................
	defb 0f4h,004h,000h,087h,0dch,0e2h,0dbh,0e1h,0d6h,0d7h,0dbh,007h,000h,085h,0dch,0e2h	; 8ca9  ................
	defb 0d8h,0d9h,0dch,009h,000h,000h	; 8cb9

; ----------------------------------------------------------------------
; DATOS rle_ram_8CBF: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (53 bytes)
;   0x8cbf..0x8cf4  (53 bytes)
DATA_rle_ram_8CBF:
	defb 082h,006h,00bh,005h,000h,081h,0e7h,008h,000h,084h,0f5h,0f6h,0e8h,0e1h,003h,000h	; 8cbf  ................
	defb 081h,0e1h,003h,000h,088h,0ebh,0ech,000h,0e2h,0dbh,0e1h,0dfh,0e2h,003h,000h,081h	; 8ccf  ................
	defb 0dah,003h,000h,088h,0dch,0e2h,0e0h,000h,0d6h,0d7h,0e1h,0dah,007h,000h,083h,0d8h	; 8cdf  ................
	defb 0d9h,0e2h,008h,000h,000h	; 8cef

; ----------------------------------------------------------------------
; DATOS rle_ram_8CF4: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (52 bytes)
;   0x8cf4..0x8d28  (52 bytes)
DATA_rle_ram_8CF4:
	defb 082h,008h,00bh,00ah,000h,081h,0e5h,008h,000h,083h,0e1h,0dfh,0e6h,005h,000h,003h	; 8cf4  ................
	defb 0ddh,082h,0e2h,0e0h,005h,000h,081h,0dah,003h,0deh,006h,000h,082h,0f1h,0f2h,009h	; 8d04  ................
	defb 000h,082h,0edh,0eeh,006h,000h,084h,0d6h,0d7h,0e1h,0dah,007h,000h,083h,0d8h,0d9h	; 8d14  ................
	defb 0e2h,008h,000h,000h	; 8d24

; ----------------------------------------------------------------------
; DATOS rle_ram_8D28: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (62 bytes)
;   0x8d28..0x8d66  (62 bytes)
DATA_rle_ram_8D28:
	defb 082h,00bh,009h,008h,000h,081h,0e5h,006h,000h,083h,0e1h,0dfh,0e6h,005h,000h,083h	; 8d28  ................
	defb 0dah,0e2h,0e0h,005h,000h,081h,0dah,007h,000h,082h,0efh,0f0h,007h,000h,081h,0dah	; 8d38  ................
	defb 007h,000h,082h,0f5h,0f6h,007h,000h,082h,0f1h,0f2h,007h,000h,082h,0ebh,0ech,005h	; 8d48  ................
	defb 000h,083h,0d6h,0d7h,0e1h,006h,000h,083h,0d8h,0d9h,0e2h,006h,000h,000h	; 8d58  ..............

; ----------------------------------------------------------------------
; DATOS rle_ram_8D66: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (66 bytes)
;   0x8d66..0x8da8  (66 bytes)
DATA_rle_ram_8D66:
	defb 082h,00ch,009h,008h,000h,081h,0dah,007h,000h,082h,0f5h,0f6h,006h,000h,082h,0e5h	; 8d66  ................
	defb 0dah,007h,000h,081h,0e6h,007h,000h,082h,0f1h,0f2h,007h,000h,082h,0ebh,0ech,007h	; 8d76  ................
	defb 000h,081h,0dah,007h,000h,082h,0efh,0f0h,007h,000h,082h,0edh,0eeh,007h,000h,081h	; 8d86  ................
	defb 0dah,004h,000h,085h,0d6h,0d7h,0ddh,0ebh,0ech,004h,000h,083h,0d8h,0d9h,0deh,006h	; 8d96  ................
	defb 000h,000h	; 8da6

; ----------------------------------------------------------------------
; DATOS rle_ram_8DA8: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (55 bytes)
;   0x8da8..0x8ddf  (55 bytes)
DATA_rle_ram_8DA8:
	defb 082h,009h,00ch,00bh,000h,081h,0dah,008h,000h,083h,0e5h,0e1h,0dah,008h,000h,083h	; 8da8  ................
	defb 0e1h,0e6h,0e2h,008h,000h,082h,0e1h,0e2h,009h,000h,082h,0dah,0e2h,009h,000h,082h	; 8db8  ................
	defb 0efh,0f0h,009h,000h,082h,0f3h,0f4h,007h,000h,084h,0d6h,0d7h,0dfh,0dah,008h,000h	; 8dc8  ................
	defb 083h,0d8h,0d9h,0e0h,009h,000h,000h	; 8dd8

; ----------------------------------------------------------------------
; DATOS leido_8DDF: 512 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7DFC, p01:7E01, p01:7E09
;   (512 bytes)
;   0x8ddf..0x8fdf  (512 bytes)
DATA_leido_8DDF:
	defb 00eh,008h,000h,000h,000h,000h,000h,060h,0b0h,061h,000h,000h,000h,062h,060h,0b0h	; 8ddf  .......`.a...b`.
	defb 0b1h,0b2h,000h,000h,063h,0b3h,0b4h,0b5h,0b1h,0b2h,000h,000h,064h,0b6h,0b7h,0b8h	; 8def  ....c.......d...
	defb 0b1h,0b2h,000h,000h,065h,0b9h,0bah,0b1h,0bbh,0bch,000h,066h,0bdh,0beh,0b5h,0b1h	; 8dff  ....e......f....
	defb 0bfh,0c0h,067h,0c1h,0c2h,0c3h,0b5h,0b1h,0c4h,0c5h,068h,0c6h,0c7h,0b0h,0b5h,0b1h	; 8e0f  ..g.......h.....
	defb 0c8h,0c9h,069h,0cah,0b0h,0b5h,0b5h,0b1h,0cbh,0cch,06ah,0cdh,0ceh,0b5h,0b5h,0b1h	; 8e1f  ..i.......j.....
	defb 0cfh,0d0h,06bh,0d1h,0d2h,0b5h,0b1h,0b1h,0d3h,0d4h,06ch,0b5h,0b5h,0d5h,0d6h,0d7h	; 8e2f  ..k.......l.....
	defb 0d8h,000h,0b5h,0b5h,0b5h,0d9h,0dah,0dbh,0dch,000h,06dh,0ddh,0deh,0dfh,0e0h,0e1h	; 8e3f  ..........m.....
	defb 0e2h,000h,00eh,008h,000h,000h,000h,000h,000h,060h,0b0h,061h,000h,000h,000h,062h	; 8e4f  .........`.a...b
	defb 060h,0b0h,0b1h,0b2h,000h,000h,063h,0b3h,0b4h,0b5h,0b1h,0b2h,000h,000h,064h,0b6h	; 8e5f  `.....c.......d.
	defb 0b7h,0b8h,0b1h,0b2h,000h,000h,065h,0b9h,0bah,0b1h,0e3h,0bch,000h,066h,0bdh,0beh	; 8e6f  ......e......f..
	defb 0b5h,0b1h,0e4h,0c0h,067h,0c1h,0c2h,0c3h,0b5h,0b1h,0c4h,0c5h,068h,0c6h,0c7h,0b0h	; 8e7f  ....g.......h...
	defb 0b5h,0b1h,0c8h,0c9h,06eh,0e5h,0b0h,0b5h,0b5h,0b1h,0cbh,0cch,000h,000h,0e6h,0b5h	; 8e8f  ....n...........
	defb 0b5h,0b1h,0cfh,0d0h,06fh,070h,0e7h,0b5h,0b1h,0b1h,0d3h,0d4h,071h,0b5h,0b5h,0d5h	; 8e9f  ....op......q...
	defb 0d6h,0d7h,0d8h,000h,0b5h,0b5h,0b5h,0d9h,0dah,0dbh,0dch,000h,06dh,0ddh,0deh,0dfh	; 8eaf  ............m...
	defb 0e0h,0e1h,0e2h,000h,00eh,008h,000h,000h,000h,000h,000h,060h,0b0h,061h,000h,000h	; 8ebf  ...........`.a..
	defb 000h,062h,060h,0b0h,0b1h,0b2h,000h,000h,063h,0b3h,0b4h,0b5h,0b1h,0b2h,000h,000h	; 8ecf  .b`.....c.......
	defb 064h,0b6h,0b7h,090h,091h,092h,000h,000h,065h,0b9h,093h,094h,095h,096h,000h,066h	; 8edf  d.......e......f
	defb 0bdh,090h,097h,098h,099h,09ah,067h,0c1h,090h,097h,09bh,09ch,09dh,09eh,068h,0c6h	; 8eef  ......g.......h.
	defb 09fh,097h,09bh,0a0h,0a1h,0a2h,069h,0bah,0b0h,090h,0a0h,0a3h,0a0h,0a4h,06ah,0cdh	; 8eff  ......i.......j.
	defb 0ceh,09fh,0a3h,098h,0a1h,000h,06bh,0d1h,0d2h,090h,09ch,0a5h,094h,0a4h,06ch,0b5h	; 8f0f  ......k.......l.
	defb 0b5h,0a6h,097h,0a7h,0a8h,000h,0b5h,0b5h,0b5h,0d9h,0a9h,0aah,0abh,000h,06dh,0ddh	; 8f1f  ..............m.
	defb 0deh,0ach,0a9h,0aah,000h,000h,00eh,008h,000h,000h,000h,000h,000h,060h,0b0h,061h	; 8f2f  .............`.a
	defb 000h,000h,000h,062h,060h,0b0h,0b1h,0b2h,000h,000h,063h,0b3h,0b4h,0b5h,0b1h,0b2h	; 8f3f  ...b`.....c.....
	defb 000h,000h,064h,0b6h,0b7h,090h,091h,092h,000h,000h,065h,0b9h,093h,094h,095h,096h	; 8f4f  ..d.......e.....
	defb 000h,066h,0bdh,090h,097h,098h,099h,09ah,067h,0c1h,090h,097h,09bh,09ch,09dh,09eh	; 8f5f  .f......g.......
	defb 068h,0c6h,09fh,097h,09bh,0a0h,0a1h,0a2h,06eh,0e5h,0b0h,090h,0a0h,0a3h,0a0h,0a4h	; 8f6f  h.......n.......
	defb 000h,000h,0e6h,09fh,0a3h,098h,0a1h,000h,06fh,070h,0e7h,090h,09ch,0a5h,094h,0a4h	; 8f7f  ........op......
	defb 071h,0b5h,0b5h,0a6h,097h,0a7h,0a8h,000h,0b5h,0b5h,0b5h,0d9h,0a9h,0aah,0abh,000h	; 8f8f  q...............
	defb 06dh,0ddh,0deh,0ach,0a9h,0aah,000h,000h,002h,003h,072h,072h,072h,073h,073h,073h	; 8f9f  m.........rrrsss
	defb 002h,003h,072h,072h,0eeh,073h,073h,0efh,002h,003h,072h,072h,0c4h,073h,073h,0e0h	; 8faf  ..rr.ss...rr.ss.
	defb 002h,003h,072h,0eeh,0c4h,073h,0efh,0e0h,002h,003h,072h,0c4h,0c4h,073h,0e0h,0e0h	; 8fbf  ..r..s....r..s..
	defb 002h,003h,0eeh,0c4h,0c4h,0efh,0e0h,0e0h,002h,003h,0c4h,0c4h,0c4h,0e0h,0e0h,0e0h	; 8fcf  ................

; ----------------------------------------------------------------------
; DATOS rle_ram_8FDF: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (36 bytes)
;   0x8fdf..0x9003  (36 bytes)
DATA_rle_ram_8FDF:
	defb 082h,00bh,012h,07fh,000h,006h,000h,084h,098h,09dh,0a7h,0a2h,00eh,000h,084h,09eh	; 8fdf  ................
	defb 0a1h,0abh,0a8h,00eh,000h,084h,0b2h,0b5h,0bfh,0bch,00eh,000h,084h,0ach,0b1h,0bbh	; 8fef  ................
	defb 0b6h,007h,000h,000h	; 8fff

; ----------------------------------------------------------------------
; DATOS rle_ram_9003: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (36 bytes)
;   0x9003..0x9027  (36 bytes)
DATA_rle_ram_9003:
	defb 082h,00bh,012h,07fh,000h,006h,000h,084h,098h,09dh,0a7h,0a2h,00eh,000h,084h,09eh	; 9003  ................
	defb 0a0h,0aah,0a8h,00eh,000h,084h,0b2h,0b4h,0beh,0bch,00eh,000h,084h,0ach,0b1h,0bbh	; 9013  ................
	defb 0b6h,007h,000h,000h	; 9023

; ----------------------------------------------------------------------
; DATOS rle_ram_9027: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (36 bytes)
;   0x9027..0x904b  (36 bytes)
DATA_rle_ram_9027:
	defb 082h,00bh,012h,07fh,000h,006h,000h,084h,098h,09dh,0a7h,0a2h,00eh,000h,084h,09eh	; 9027  ................
	defb 09fh,0a9h,0a8h,00eh,000h,084h,0b2h,0b3h,0bdh,0bch,00eh,000h,084h,0ach,0b1h,0bbh	; 9037  ................
	defb 0b6h,007h,000h,000h	; 9047

; ----------------------------------------------------------------------
; DATOS rle_ram_904B: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (36 bytes)
;   0x904b..0x906f  (36 bytes)
DATA_rle_ram_904B:
	defb 082h,00bh,012h,07fh,000h,006h,000h,084h,098h,09bh,0a5h,0a2h,00eh,000h,084h,09ch	; 904b  ................
	defb 09fh,0a9h,0a6h,00eh,000h,084h,0b0h,0b3h,0bdh,0bah,00eh,000h,084h,0ach,0afh,0b9h	; 905b  ................
	defb 0b6h,007h,000h,000h	; 906b

; ----------------------------------------------------------------------
; DATOS rle_ram_906F: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (36 bytes)
;   0x906f..0x9093  (36 bytes)
DATA_rle_ram_906F:
	defb 082h,00bh,012h,07fh,000h,006h,000h,084h,098h,099h,0a3h,0a2h,00eh,000h,084h,09ah	; 906f  ................
	defb 09fh,0a9h,0a4h,00eh,000h,084h,0aeh,0b3h,0bdh,0b8h,00eh,000h,084h,0ach,0adh,0b7h	; 907f  ................
	defb 0b6h,007h,000h,000h	; 908f

; ----------------------------------------------------------------------
; DATOS rle_ram_9093: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (48 bytes)
;   0x9093..0x90c3  (48 bytes)
DATA_rle_ram_9093:
	defb 082h,00ch,012h,074h,000h,082h,060h,061h,00fh,000h,084h,098h,099h,0a3h,0a2h,00dh	; 9093  ...t..`a........
	defb 000h,086h,07ch,09ah,09fh,0a9h,0a4h,08ah,00ch,000h,086h,083h,0aeh,0b3h,0bdh,0b8h	; 90a3  ..|.............
	defb 091h,00dh,000h,084h,0ach,0adh,0b7h,0b6h,00fh,000h,082h,06eh,06fh,008h,000h,000h	; 90b3  ...........no...

; ----------------------------------------------------------------------
; DATOS rle_ram_90C3: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (62 bytes)
;   0x90c3..0x9101  (62 bytes)
DATA_rle_ram_90C3:
	defb 082h,00dh,012h,062h,000h,082h,060h,061h,010h,000h,082h,062h,063h,00fh,000h,084h	; 90c3  ...b..`a...bc...
	defb 098h,099h,0a3h,0a2h,00ch,000h,088h,07ch,080h,09ah,09fh,0a9h,0a4h,08bh,08ah,00ah	; 90d3  .......|........
	defb 000h,088h,083h,087h,0aeh,0b3h,0bdh,0b8h,092h,091h,00ch,000h,084h,0ach,0adh,0b7h	; 90e3  ................
	defb 0b6h,00fh,000h,082h,070h,071h,010h,000h,082h,06eh,06fh,008h,000h,000h	; 90f3  ....pq...no...

; ----------------------------------------------------------------------
; DATOS rle_ram_9101: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (76 bytes)
;   0x9101..0x914d  (76 bytes)
DATA_rle_ram_9101:
	defb 082h,00eh,012h,050h,000h,082h,060h,061h,010h,000h,082h,062h,063h,010h,000h,082h	; 9101  ...P..`a...bc...
	defb 064h,065h,00fh,000h,084h,098h,099h,0a3h,0a2h,00bh,000h,08ah,07ch,07dh,080h,09ah	; 9111  de..........|}..
	defb 09fh,0a9h,0a4h,08ch,08bh,08ah,008h,000h,08ah,083h,084h,087h,0aeh,0b3h,0bdh,0b8h	; 9121  ................
	defb 093h,092h,091h,00bh,000h,084h,0ach,0adh,0b7h,0b6h,00fh,000h,082h,072h,073h,010h	; 9131  .............rs.
	defb 000h,082h,070h,071h,010h,000h,082h,06eh,06fh,008h,000h,000h	; 9141  ..pq...no...

; ----------------------------------------------------------------------
; DATOS rle_ram_914D: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (90 bytes)
;   0x914d..0x91a7  (90 bytes)
DATA_rle_ram_914D:
	defb 082h,00fh,012h,03eh,000h,082h,060h,061h,010h,000h,082h,062h,063h,010h,000h,082h	; 914d  ...>..`a...bc...
	defb 064h,065h,010h,000h,082h,066h,067h,00fh,000h,084h,098h,099h,0a3h,0a2h,00ah,000h	; 915d  de...fg.........
	defb 08ch,07ch,07dh,07eh,080h,09ah,09fh,0a9h,0a4h,08dh,08ch,08bh,08ah,006h,000h,08ch	; 916d  .|}~............
	defb 083h,084h,085h,087h,0aeh,0b3h,0bdh,0b8h,094h,093h,092h,091h,00ah,000h,084h,0ach	; 917d  ................
	defb 0adh,0b7h,0b6h,00fh,000h,082h,074h,075h,010h,000h,082h,072h,073h,010h,000h,082h	; 918d  ......tu...rs...
	defb 070h,071h,010h,000h,082h,06eh,06fh,008h,000h,000h	; 919d  pq...no...

; ----------------------------------------------------------------------
; DATOS rle_ram_91A7: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (104 bytes)
;   0x91a7..0x920f  (104 bytes)
DATA_rle_ram_91A7:
	defb 082h,010h,012h,02ch,000h,082h,060h,061h,010h,000h,082h,062h,063h,010h,000h,082h	; 91a7  ...,..`a...bc...
	defb 064h,065h,010h,000h,082h,066h,067h,010h,000h,082h,068h,069h,00fh,000h,084h,098h	; 91b7  de...fg...hi....
	defb 099h,0a3h,0a2h,009h,000h,08eh,07ch,07dh,07eh,07fh,080h,09ah,09fh,0a9h,0a4h,08eh	; 91c7  ......|}~.......
	defb 08dh,08ch,08bh,08ah,004h,000h,08eh,083h,084h,085h,086h,087h,0aeh,0b3h,0bdh,0b8h	; 91d7  ................
	defb 095h,094h,093h,092h,091h,009h,000h,084h,0ach,0adh,0b7h,0b6h,00fh,000h,082h,076h	; 91e7  ...............v
	defb 077h,010h,000h,082h,074h,075h,010h,000h,082h,072h,073h,010h,000h,082h,070h,071h	; 91f7  w...tu...rs...pq
	defb 010h,000h,082h,06eh,06fh,008h,000h,000h	; 9207  ...no...

; ----------------------------------------------------------------------
; DATOS rle_ram_920F: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (117 bytes)
;   0x920f..0x9284  (117 bytes)
DATA_rle_ram_920F:
	defb 082h,011h,012h,01ah,000h,082h,060h,061h,010h,000h,082h,062h,063h,010h,000h,082h	; 920f  ......`a...bc...
	defb 064h,065h,010h,000h,082h,066h,067h,010h,000h,082h,068h,069h,010h,000h,082h,06ah	; 921f  de...fg...hi...j
	defb 06bh,00fh,000h,084h,098h,099h,0a3h,0a2h,008h,000h,0a2h,07ch,07dh,07eh,07fh,080h	; 922f  k..........|}~..
	defb 081h,09ah,09fh,0a9h,0a4h,08fh,08eh,08dh,08ch,08bh,08ah,000h,000h,083h,084h,085h	; 923f  ................
	defb 086h,087h,088h,0aeh,0b3h,0bdh,0b8h,096h,095h,094h,093h,092h,091h,008h,000h,084h	; 924f  ................
	defb 0ach,0adh,0b7h,0b6h,00fh,000h,082h,078h,079h,010h,000h,082h,076h,077h,010h,000h	; 925f  .......xy...vw..
	defb 082h,074h,075h,010h,000h,082h,072h,073h,010h,000h,082h,070h,071h,010h,000h,082h	; 926f  .tu...rs...pq...
	defb 06eh,06fh,008h,000h,000h	; 927f

; ----------------------------------------------------------------------
; DATOS rle_ram_9284: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (128 bytes)
;   0x9284..0x9304  (128 bytes)
DATA_rle_ram_9284:
	defb 002h,012h,008h,000h,082h,060h,061h,010h,000h,082h,062h,063h,010h,000h,082h,064h	; 9284  .....`a...bc...d
	defb 065h,010h,000h,082h,066h,067h,010h,000h,082h,068h,069h,010h,000h,082h,06ah,06bh	; 9294  e...fg...hi...jk
	defb 010h,000h,082h,06ch,06dh,00fh,000h,084h,098h,099h,0a3h,0a2h,007h,000h,0a4h,07ch	; 92a4  ...lm..........|
	defb 07dh,07eh,07fh,080h,081h,082h,09ah,09fh,0a9h,0a4h,090h,08fh,08eh,08dh,08ch,08bh	; 92b4  }~..............
	defb 08ah,083h,084h,085h,086h,087h,088h,089h,0aeh,0b3h,0bdh,0b8h,097h,096h,095h,094h	; 92c4  ................
	defb 093h,092h,091h,007h,000h,084h,0ach,0adh,0b7h,0b6h,00fh,000h,082h,07ah,07bh,010h	; 92d4  .............z{.
	defb 000h,082h,078h,079h,010h,000h,082h,076h,077h,010h,000h,082h,074h,075h,010h,000h	; 92e4  ..xy...vw...tu..
	defb 082h,072h,073h,010h,000h,082h,070h,071h,010h,000h,082h,06eh,06fh,008h,000h,000h	; 92f4  .rs...pq...no...

; ----------------------------------------------------------------------
; DATOS leido_9304: 476 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido, con 1 sin leer entre lecturas de la
;   misma rutina: entradas de la misma tabla que las partidas no han pedido);
;   lo leen p01:7DFC, p01:7E01, p01:7E09 (476 bytes)
;   0x9304..0x94e0  (476 bytes)
DATA_leido_9304:
	defb 008h,008h,07bh,07ch,07ch,07dh,07bh,07eh,07fh,090h,091h,080h,081h,082h,083h,07fh	; 9304  ..{||}{~........
	defb 080h,081h,07ch,084h,085h,086h,087h,088h,084h,07fh,000h,000h,08ah,08bh,08ch,08dh	; 9314  ..|.............
	defb 08eh,08fh,000h,000h,09ah,09bh,09ch,09dh,09eh,09fh,07eh,091h,095h,096h,097h,098h	; 9324  ..........~.....
	defb 091h,093h,084h,080h,090h,07dh,094h,093h,080h,090h,092h,07eh,07eh,082h,092h,07ch	; 9334  .....}.....~~..|
	defb 093h,081h,002h,002h,089h,089h,099h,099h,002h,002h,0f0h,089h,0f1h,099h,002h,002h	; 9344  ................
	defb 000h,0f0h,000h,0f1h,001h,004h,066h,0bfh,0c0h,0c1h,0c2h,004h,003h,0c3h,067h,000h	; 9354  ......f.......g.
	defb 000h,0c4h,068h,000h,069h,0c5h,000h,000h,0c6h,003h,004h,0b2h,0b3h,05fh,000h,000h	; 9364  ..h.i........_..
	defb 060h,0b4h,062h,000h,000h,061h,0b5h,006h,002h,0a0h,000h,0a1h,0a2h,000h,0a3h,000h	; 9374  `.b..a..........
	defb 0a4h,000h,0a5h,0a7h,0a6h,005h,001h,0beh,0bdh,0bch,0bbh,065h,003h,004h,000h,063h	; 9384  ...........e...c
	defb 0b9h,0bah,0b7h,0b8h,064h,000h,0b6h,000h,000h,000h,004h,003h,000h,05bh,0b1h,05dh	; 9394  ....d........[.]
	defb 0b0h,05ch,0afh,05eh,000h,0aeh,000h,000h,002h,006h,0a8h,0a9h,0aah,0abh,0ach,0adh	; 93a4  .\.^............
	defb 000h,059h,000h,000h,000h,060h,001h,005h,0e9h,0e8h,0e7h,0e6h,077h,004h,003h,0edh	; 93b4  .Y...`......w...
	defb 000h,000h,0ech,07ah,000h,079h,0ebh,000h,000h,078h,0eah,003h,004h,0dch,072h,000h	; 93c4  ...z.y...x....r.
	defb 000h,073h,0dbh,071h,000h,000h,070h,0dah,0d9h,006h,002h,0cdh,0ceh,0cch,000h,0cbh	; 93d4  .s.q..p.........
	defb 000h,0cah,000h,0c9h,0c8h,000h,0c7h,005h,001h,076h,0e2h,0e3h,0e4h,0e5h,003h,004h	; 93e4  .........v......
	defb 000h,000h,000h,0ddh,000h,075h,0dfh,0deh,0e1h,0e0h,074h,000h,004h,003h,000h,000h	; 93f4  .....u....t.....
	defb 0d5h,000h,06fh,0d6h,06dh,0d7h,06eh,0d8h,06eh,000h,002h,006h,05ah,000h,000h,000h	; 9404  ..o.m.n.n...Z...
	defb 06ah,000h,0d4h,0d3h,0d2h,0d1h,0d0h,0cfh,001h,005h,0c2h,0c1h,0c0h,0bfh,066h,004h	; 9414  j.............f.
	defb 003h,000h,067h,0c3h,068h,0c4h,000h,0c5h,069h,000h,0c6h,000h,000h,003h,004h,000h	; 9424  ..g.h...i.......
	defb 05fh,0b3h,0b2h,062h,0b4h,060h,000h,0b5h,061h,000h,000h,006h,002h,000h,0a0h,0a2h	; 9434  _..b.`..a.......
	defb 0a1h,0a3h,000h,0a4h,000h,0a5h,000h,0a6h,0a7h,005h,001h,076h,0e2h,0e3h,0e4h,0e5h	; 9444  ...........v....
	defb 003h,004h,0ddh,000h,000h,000h,0deh,0dfh,075h,000h,000h,074h,0e0h,0e1h,004h,003h	; 9454  ........u..t....
	defb 0d5h,000h,000h,0d6h,06fh,000h,06eh,0d7h,06dh,000h,06ch,0d8h,002h,006h,000h,06ah	; 9464  ....o.n.m.l....j
	defb 000h,000h,000h,05ah,0cfh,0d0h,0d1h,0d2h,0d3h,0d4h,001h,005h,077h,0e6h,0e7h,0e8h	; 9474  ...Z........w...
	defb 0e9h,004h,003h,000h,000h,0edh,000h,07ah,0ech,000h,0ebh,079h,0eah,078h,000h,003h	; 9484  .......z...y.x..
	defb 004h,000h,000h,072h,0dch,000h,071h,0dbh,073h,0d9h,0dah,070h,000h,006h,002h,0ceh	; 9494  ...r..q.s..p....
	defb 0cdh,000h,0cch,000h,0cbh,000h,0cah,0c8h,0c9h,0c7h,000h,005h,001h,0beh,0bdh,0bch	; 94a4  ................
	defb 0bbh,065h,003h,004h,0bah,0b9h,063h,000h,000h,064h,0b8h,0b7h,000h,000h,000h,0b6h	; 94b4  .e....c..d......
	defb 004h,003h,0b1h,05bh,000h,05ch,0b0h,05dh,000h,05eh,0afh,000h,000h,0aeh,002h,006h	; 94c4  ...[.\.].^......
	defb 0adh,0ach,0abh,0aah,0a9h,0a8h,06bh,000h,000h,000h,059h,000h	; 94d4  ......k...Y.

; ----------------------------------------------------------------------
; DATOS rle_ram_94E0: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (79 bytes)
;   0x94e0..0x952f  (79 bytes)
DATA_rle_ram_94E0:
	defb 082h,00eh,006h,007h,000h,0c6h,072h,074h,075h,069h,000h,076h,077h,078h,079h,06ch	; 94e0  ......rtui.vwxyl
	defb 000h,07bh,07ch,073h,06dh,07ah,000h,07dh,07eh,07fh,06ah,068h,06bh,080h,06eh,081h	; 94f0  .{|smz.}~.jhk.n.
	defb 06fh,070h,088h,05ch,05dh,08ch,08bh,086h,087h,05eh,05fh,0bch,0bbh,0b6h,0b7h,0b0h	; 9500  op.\]....^_.....
	defb 09eh,0b1h,09fh,0a0h,0b8h,0adh,0aeh,0afh,09ah,098h,09bh,0abh,0ach,0a3h,09dh,0aah	; 9510  ................
	defb 000h,0a6h,0a7h,0a8h,0a9h,09ch,000h,000h,0a2h,0a4h,0a5h,099h,007h,000h,000h	; 9520  ...............

; ----------------------------------------------------------------------
; DATOS rle_ram_952F: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (79 bytes)
;   0x952f..0x957e  (79 bytes)
DATA_rle_ram_952F:
	defb 082h,00eh,006h,007h,000h,0c6h,072h,074h,075h,069h,000h,07bh,07ch,073h,06dh,07ah	; 952f  ......rtui.{|smz
	defb 000h,07dh,07eh,07fh,06ah,068h,06bh,07dh,07eh,091h,06ah,068h,06bh,080h,06eh,08ch	; 953f  .}~.jhk}~.jhk.n.
	defb 06fh,070h,088h,05ch,05dh,0bdh,08bh,086h,087h,05eh,05fh,0c0h,0bbh,0b6h,0b7h,0b0h	; 954f  op.\]....^_.....
	defb 09eh,0b1h,09fh,0a0h,0b8h,0adh,0aeh,0afh,09ah,098h,09bh,0abh,0ach,0a3h,09dh,0aah	; 955f  ................
	defb 000h,0a6h,0a7h,0a8h,0a9h,09ch,000h,000h,0a2h,0a4h,0a5h,099h,007h,000h,000h	; 956f  ...............

; ----------------------------------------------------------------------
; DATOS rle_ram_957E: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (79 bytes)
;   0x957e..0x95cd  (79 bytes)
DATA_rle_ram_957E:
	defb 082h,00eh,006h,007h,000h,0c6h,072h,074h,075h,069h,000h,07bh,07ch,073h,06dh,07ah	; 957e  ......rtui.{|smz
	defb 000h,07dh,07eh,07fh,06ah,068h,06bh,07dh,07eh,07fh,06ah,068h,06bh,080h,06eh,081h	; 958e  .}~.jhk}~.jhk.n.
	defb 06fh,070h,088h,000h,092h,08ch,08bh,086h,087h,000h,0c2h,0bch,0bbh,0b6h,0b7h,0b0h	; 959e  op..............
	defb 09eh,0b1h,09fh,0a0h,0b8h,0adh,0aeh,0afh,09ah,098h,09bh,0abh,0ach,0a3h,09dh,0aah	; 95ae  ................
	defb 000h,0a6h,0a7h,0a8h,0a9h,09ch,000h,000h,0a2h,0a4h,0a5h,099h,007h,000h,000h	; 95be  ...............

; ----------------------------------------------------------------------
; DATOS rle_ram_95CD: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (79 bytes)
;   0x95cd..0x961c  (79 bytes)
DATA_rle_ram_95CD:
	defb 082h,00eh,006h,007h,000h,0c6h,072h,074h,075h,069h,000h,07bh,07ch,073h,06dh,07ah	; 95cd  ......rtui.{|smz
	defb 000h,07dh,07eh,07fh,06ah,068h,06bh,07dh,07eh,07fh,06ah,068h,06bh,080h,06eh,081h	; 95dd  .}~.jhk}~.jhk.n.
	defb 06fh,070h,088h,05ch,05dh,090h,08bh,086h,087h,05eh,05fh,08dh,0bbh,0b6h,0b7h,0b0h	; 95ed  op.\]....^_.....
	defb 09eh,0bch,09fh,0a0h,0b8h,0adh,0aeh,0c1h,09ah,098h,09bh,0abh,0ach,0a3h,09dh,0aah	; 95fd  ................
	defb 000h,0a6h,0a7h,0a8h,0a9h,09ch,000h,000h,0a2h,0a4h,0a5h,099h,007h,000h,000h	; 960d  ...............

; ----------------------------------------------------------------------
; DATOS leido_961C: 100 bytes que leen p01:7DFC, p01:7E01, p01:7E09 al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p01:7DFC, p01:7E01, p01:7E09
;   (100 bytes)
;   0x961c..0x9680  (100 bytes)
DATA_leido_961C:
	defb 00eh,006h,000h,072h,074h,075h,069h,000h,076h,077h,078h,079h,06ch,000h,07bh,07ch	; 961c  ...rtui.vwxyl.{|
	defb 073h,06dh,07ah,000h,07dh,07eh,07fh,06ah,068h,06bh,07dh,07eh,07fh,06ah,068h,06bh	; 962c  smz.}~.jhk}~.jhk
	defb 080h,06eh,082h,06fh,070h,088h,093h,094h,085h,071h,086h,087h,0c3h,0c4h,0b5h,0a1h	; 963c  .n.op....q......
	defb 0b6h,0b7h,0b0h,09eh,0b2h,09fh,0a0h,0b8h,0adh,0aeh,0afh,09ah,098h,09bh,0adh,0aeh	; 964c  ................
	defb 0afh,09ah,098h,09bh,0abh,0ach,0a3h,09dh,0aah,000h,0a6h,0a7h,0a8h,0a9h,09ch,000h	; 965c  ................
	defb 000h,0a2h,0a4h,0a5h,099h,000h,002h,003h,064h,084h,089h,065h,0b4h,0b9h,002h,002h	; 966c  ........d..e....
	defb 000h,089h,000h,099h	; 967c

; ----------------------------------------------------------------------
; DATOS rle_ram_9680: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (286 bytes)
;   0x9680..0x979e  (286 bytes)
DATA_rle_ram_9680:
	defb 086h,014h,016h,000h,07eh,0ddh,07fh,006h,000h,081h,0f0h,004h,000h,083h,091h,0f3h	; 9680  ....~...........
	defb 090h,006h,000h,082h,0deh,0dfh,006h,000h,081h,0efh,004h,000h,082h,0f5h,0f4h,007h	; 9690  ................
	defb 000h,083h,0e0h,0b0h,084h,004h,000h,088h,080h,0eeh,081h,000h,000h,08ah,0b0h,0f6h	; 96a0  ................
	defb 007h,000h,083h,0b9h,0b1h,083h,005h,000h,081h,0edh,003h,000h,083h,089h,0b1h,0d5h	; 96b0  ................
	defb 007h,000h,083h,0e1h,0f2h,082h,005h,000h,081h,0c7h,003h,000h,083h,088h,0f2h,0f7h	; 96c0  ................
	defb 007h,000h,082h,0e2h,0e4h,006h,000h,081h,0ech,004h,000h,082h,0e4h,0f8h,008h,000h	; 96d0  ................
	defb 08dh,0b3h,0aeh,0bdh,0b4h,0e5h,000h,000h,0ebh,000h,0f9h,0d8h,0b4h,0b3h,009h,000h	; 96e0  ................
	defb 08dh,0e3h,085h,086h,0afh,06eh,000h,000h,0eah,000h,000h,077h,0afh,0e3h,00ch,000h	; 96f0  .....n.....w....
	defb 089h,0b0h,0e6h,0b2h,0adh,0e9h,0adh,0b2h,0fah,0b0h,00fh,000h,085h,0c2h,0ceh,0cfh	; 9700  ................
	defb 0d0h,0c2h,011h,000h,085h,0e8h,0fdh,0c4h,0ffh,0e8h,00fh,000h,089h,0b0h,0c0h,0b2h	; 9710  ................
	defb 0adh,0c5h,0adh,0b2h,0dah,0b0h,00ch,000h,08dh,0bch,0afh,06eh,000h,000h,0c6h,000h	; 9720  ...........n....
	defb 000h,077h,0afh,073h,072h,0bch,009h,000h,08dh,0b3h,0b4h,0bdh,0bfh,000h,0c7h,000h	; 9730  .w.sr...........
	defb 000h,0d9h,0b4h,0d8h,0aeh,0b3h,008h,000h,082h,0bbh,0beh,004h,000h,081h,0c8h,006h	; 9740  ................
	defb 000h,082h,0beh,0d7h,007h,000h,088h,0bah,0cdh,066h,000h,000h,064h,0c9h,065h,004h	; 9750  .........f..d.e.
	defb 000h,083h,06fh,0cdh,0d6h,007h,000h,083h,0b9h,0b1h,067h,003h,000h,081h,0cah,005h	; 9760  ..o.......g.....
	defb 000h,083h,070h,0b1h,0d5h,007h,000h,083h,0b8h,0b0h,068h,003h,000h,081h,0cbh,005h	; 9770  ..p.......h.....
	defb 000h,083h,071h,0b0h,0d4h,007h,000h,082h,0b6h,0b7h,00bh,000h,082h,0d3h,0d2h,006h	; 9780  ..q.............
	defb 000h,083h,062h,0b5h,063h,00bh,000h,085h,07bh,0d1h,07ah,000h,000h,000h	; 9790  ..b.c...{.z...

; ----------------------------------------------------------------------
; DATOS rle_ram_979E: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (287 bytes)
;   0x979e..0x98bd  (287 bytes)
DATA_rle_ram_979E:
	defb 002h,014h,084h,000h,07eh,0ddh,07fh,006h,000h,081h,0f0h,00bh,000h,082h,0deh,0dfh	; 979e  ....~...........
	defb 006h,000h,081h,0efh,005h,000h,081h,08fh,005h,000h,083h,0e0h,0b0h,084h,004h,000h	; 97ae  ................
	defb 083h,080h,0eeh,081h,003h,000h,082h,091h,0fch,005h,000h,083h,0b9h,0b1h,083h,005h	; 97be  ................
	defb 000h,081h,0edh,004h,000h,082h,0f5h,0f4h,005h,000h,083h,0e1h,0f2h,082h,005h,000h	; 97ce  ................
	defb 081h,0c7h,003h,000h,083h,08ah,0b0h,0f6h,005h,000h,082h,0e2h,0e4h,006h,000h,081h	; 97de  ................
	defb 0ech,003h,000h,083h,089h,0b1h,0d5h,006h,000h,088h,0b3h,0aeh,0bdh,0b4h,0e5h,000h	; 97ee  ................
	defb 000h,0ebh,003h,000h,083h,088h,0f2h,0f7h,006h,000h,08eh,0e3h,085h,086h,0afh,06eh	; 97fe  ...............n
	defb 000h,000h,0eah,000h,0f9h,0d8h,0b4h,0b3h,0f8h,009h,000h,08ah,0b0h,0e6h,0b2h,0adh	; 980e  ................
	defb 0e9h,0adh,0b2h,0fah,0b0h,0beh,00ch,000h,088h,0c2h,0ceh,0cfh,0d0h,0c2h,000h,000h	; 981e  ................
	defb 0e3h,00ch,000h,085h,0e8h,0fdh,0feh,0bch,0e8h,00dh,000h,089h,0b0h,0c0h,0b2h,0adh	; 982e  ................
	defb 0b0h,0beh,0d7h,0dah,0b0h,00ah,000h,08dh,0bch,0afh,06eh,000h,000h,0d9h,0b3h,0d6h	; 983e  ..........n.....
	defb 077h,0afh,073h,072h,0bch,007h,000h,08dh,0b3h,0b4h,0bdh,0bfh,000h,064h,0cdh,0d5h	; 984e  w.sr.........d..
	defb 0d9h,0b4h,0d8h,0aeh,0b3h,006h,000h,082h,0bbh,0beh,004h,000h,083h,06bh,0b0h,0d4h	; 985e  .............k..
	defb 004h,000h,082h,0beh,0d7h,005h,000h,083h,0bah,0cdh,066h,003h,000h,083h,06ch,0d3h	; 986e  ..........f...l.
	defb 0d2h,003h,000h,083h,06fh,0cdh,0d6h,005h,000h,083h,0b9h,0b1h,067h,004h,000h,082h	; 987e  ....o.......g...
	defb 0c1h,087h,003h,000h,083h,070h,0b1h,0d5h,005h,000h,083h,0b8h,0b0h,068h,004h,000h	; 988e  .....p.......h..
	defb 081h,078h,004h,000h,083h,071h,0b0h,0d4h,005h,000h,082h,0b6h,0b7h,00bh,000h,082h	; 989e  .x...q..........
	defb 0d3h,0d2h,004h,000h,083h,062h,0b5h,063h,00bh,000h,083h,07bh,0d1h,07ah,000h	; 98ae  .....b.c...{.z.

; ----------------------------------------------------------------------
; DATOS rle_ram_98BD: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (279 bytes)
;   0x98bd..0x99d4  (279 bytes)
DATA_rle_ram_98BD:
	defb 002h,014h,00ah,000h,081h,0f0h,00dh,000h,081h,07dh,005h,000h,081h,0efh,00dh,000h	; 98bd  .........}......
	defb 082h,0f1h,07fh,003h,000h,083h,080h,0eeh,081h,003h,000h,081h,08eh,008h,000h,082h	; 98cd  ................
	defb 0deh,0dfh,004h,000h,081h,0edh,004h,000h,082h,0e7h,06dh,007h,000h,083h,0e0h,0b0h	; 98dd  ..........m.....
	defb 084h,003h,000h,081h,0c7h,003h,000h,083h,06bh,0f5h,0f4h,007h,000h,083h,0b9h,0b1h	; 98ed  ........k.......
	defb 083h,003h,000h,081h,0ech,003h,000h,083h,06ch,0b0h,0f6h,007h,000h,083h,0e1h,0f2h	; 98fd  ........l.......
	defb 082h,003h,000h,081h,0ebh,004h,000h,082h,0f2h,0d5h,007h,000h,08dh,0e2h,0b3h,0b4h	; 990d  ................
	defb 0bdh,0e5h,000h,0eah,000h,0f9h,0d8h,0b4h,0b3h,0f7h,008h,000h,08ch,0e4h,0b0h,0e6h	; 991d  ................
	defb 0b2h,0adh,0e9h,0adh,0b2h,0fah,0b0h,0e4h,0f8h,008h,000h,08bh,0e3h,000h,000h,0c2h	; 992d  ................
	defb 0ceh,0cfh,0d0h,0c2h,000h,000h,0e3h,00ch,000h,085h,0e8h,0fdh,0feh,0ffh,0e8h,00dh	; 993d  ................
	defb 000h,089h,0b0h,0c0h,0b2h,0adh,0dah,0b0h,0bch,0dah,0b0h,00ah,000h,08dh,0bch,0afh	; 994d  ................
	defb 06eh,000h,000h,077h,0afh,0beh,0d7h,0afh,073h,072h,0bch,007h,000h,08dh,0b3h,0b4h	; 995d  n..w....sr......
	defb 0bdh,0bfh,000h,0d9h,0b4h,0b3h,0d6h,0b4h,0d8h,0aeh,0b3h,006h,000h,082h,0bbh,0beh	; 996d  ................
	defb 005h,000h,083h,06bh,0cdh,0d5h,003h,000h,082h,0beh,0d7h,005h,000h,083h,0bah,0cdh	; 997d  ...k............
	defb 066h,004h,000h,088h,06ch,0b0h,0d4h,000h,000h,06fh,0cdh,0d6h,005h,000h,083h,0b9h	; 998d  f...l....o......
	defb 0b1h,067h,005h,000h,087h,0d3h,0d2h,000h,000h,070h,0b1h,0d5h,005h,000h,083h,0b8h	; 999d  .g.......p......
	defb 0b0h,068h,005h,000h,087h,07bh,0dbh,000h,000h,071h,0b0h,0d4h,005h,000h,082h,0b6h	; 99ad  .h...{...q......
	defb 0b7h,007h,000h,081h,079h,003h,000h,082h,0d3h,0d2h,004h,000h,083h,062h,0b5h,063h	; 99bd  ....y........b.c
	defb 00bh,000h,083h,07bh,0d1h,07ah,000h	; 99cd

; ----------------------------------------------------------------------
; DATOS rle_ram_99D4: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (289 bytes)
;   0x99d4..0x9af5  (289 bytes)
DATA_rle_ram_99D4:
	defb 082h,014h,017h,00ah,000h,081h,0f0h,016h,000h,081h,0efh,005h,000h,081h,08fh,00bh	; 99d4  ................
	defb 000h,081h,07ch,003h,000h,083h,080h,0eeh,081h,003h,000h,082h,091h,0fch,00ah,000h	; 99e4  ..|.............
	defb 082h,076h,0fbh,004h,000h,081h,0edh,004h,000h,082h,0f5h,0f4h,00ah,000h,082h,0deh	; 99f4  .v..............
	defb 0dfh,004h,000h,081h,0c7h,003h,000h,083h,08ah,0b0h,0f6h,00ah,000h,083h,0e0h,0b0h	; 9a04  ................
	defb 074h,003h,000h,081h,0ech,003h,000h,083h,089h,0b1h,0d5h,00ah,000h,083h,0b9h,0f2h	; 9a14  t...............
	defb 075h,003h,000h,081h,0ebh,003h,000h,083h,088h,0f2h,0f7h,00ah,000h,08dh,0e1h,0b3h	; 9a24  u...............
	defb 0b4h,0bdh,0e5h,000h,0eah,000h,0f9h,0d8h,0b4h,0b3h,0f8h,00ah,000h,08ch,0e2h,0e4h	; 9a34  ................
	defb 0b0h,0e6h,0b2h,0adh,0e9h,0adh,0b2h,0fah,0b0h,0e4h,00ch,000h,08bh,0e3h,000h,000h	; 9a44  ................
	defb 0c2h,0ceh,0cfh,0d0h,0c2h,000h,000h,0e3h,00fh,000h,085h,0e8h,0fdh,0feh,0ffh,0e8h	; 9a54  ................
	defb 010h,000h,089h,0b0h,0c0h,0b2h,0adh,0dah,0b0h,0b2h,0dah,0b0h,00dh,000h,08dh,0bch	; 9a64  ................
	defb 0afh,06eh,000h,000h,077h,0afh,0bch,077h,0afh,073h,072h,0bch,00ah,000h,08dh,0b3h	; 9a74  .n..w..w.sr.....
	defb 0b4h,0bdh,0bfh,000h,0d9h,0b4h,0b3h,0d9h,0b4h,0d8h,0aeh,0b3h,009h,000h,082h,0bbh	; 9a84  ................
	defb 0beh,006h,000h,082h,0beh,0d7h,003h,000h,082h,0beh,0d7h,008h,000h,083h,0bah,0cdh	; 9a94  ................
	defb 066h,004h,000h,088h,06fh,0cdh,0d6h,000h,000h,06fh,0cdh,0d6h,008h,000h,083h,0b9h	; 9aa4  f...o....o......
	defb 0b1h,067h,004h,000h,088h,070h,0b1h,0d5h,000h,000h,070h,0b1h,0d5h,008h,000h,083h	; 9ab4  .g...p....p.....
	defb 0b8h,0b0h,068h,004h,000h,088h,071h,0b0h,0d4h,000h,000h,071h,0b0h,0d4h,008h,000h	; 9ac4  ..h...q....q....
	defb 082h,0b6h,0b7h,006h,000h,082h,0d3h,0d2h,003h,000h,082h,0d3h,0d2h,007h,000h,083h	; 9ad4  ................
	defb 062h,0b5h,063h,006h,000h,088h,07bh,0d1h,07ah,000h,000h,07bh,0d1h,07ah,003h,000h	; 9ae4  b.c...{.z..{.z..
	defb 000h	; 9af4

; ----------------------------------------------------------------------
; DATOS rle_ram_9AF5: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (284 bytes)
;   0x9af5..0x9c11  (284 bytes)
DATA_rle_ram_9AF5:
	defb 082h,014h,015h,012h,000h,083h,091h,0f3h,090h,005h,000h,081h,07dh,00ch,000h,082h	; 9af5  ............}...
	defb 0f5h,0f4h,006h,000h,082h,0f1h,07fh,003h,000h,081h,07ch,006h,000h,083h,08ah,0b0h	; 9b05  ..........|.....
	defb 0f6h,006h,000h,086h,0deh,0dfh,000h,000h,076h,0fbh,006h,000h,083h,089h,0b1h,0d5h	; 9b15  ........v.......
	defb 006h,000h,086h,0e0h,0b0h,084h,000h,0deh,0dfh,006h,000h,083h,088h,0f2h,0f7h,006h	; 9b25  ................
	defb 000h,087h,0b9h,0b1h,083h,000h,0e0h,0b0h,074h,006h,000h,082h,0e4h,0f8h,006h,000h	; 9b35  ........t.......
	defb 08eh,0e1h,0f2h,082h,000h,0b9h,0f2h,075h,000h,000h,0f9h,0b4h,0d8h,0aeh,0b3h,007h	; 9b45  .......u........
	defb 000h,08eh,0e2h,0b3h,0b4h,0bdh,0e1h,0b3h,0e5h,000h,000h,077h,0afh,08ch,08bh,0e3h	; 9b55  ...........w....
	defb 008h,000h,08ah,0e4h,0b0h,0e6h,0e2h,0e4h,0b0h,0adh,0b2h,0fah,0b0h,00bh,000h,088h	; 9b65  ................
	defb 0e3h,000h,000h,0c2h,0e3h,0cfh,0d0h,0c2h,010h,000h,085h,0e8h,0fdh,0feh,0ffh,0e8h	; 9b75  ................
	defb 00eh,000h,089h,0b0h,0c0h,0b2h,0adh,0c3h,0adh,0b2h,0dah,0b0h,009h,000h,08dh,0bch	; 9b85  ................
	defb 069h,06ah,0afh,06eh,000h,000h,0c4h,000h,000h,077h,0afh,0bch,008h,000h,08dh,0b3h	; 9b95  ij.n.....w......
	defb 0aeh,0bdh,0b4h,0bfh,000h,000h,0c5h,000h,0d9h,0d8h,0b4h,0b3h,007h,000h,082h,0bbh	; 9ba5  ................
	defb 0beh,006h,000h,081h,0c6h,004h,000h,082h,0beh,0d7h,006h,000h,083h,0bah,0cdh,066h	; 9bb5  ...............f
	defb 005h,000h,081h,0c7h,003h,000h,083h,06fh,0cdh,0d6h,006h,000h,083h,0b9h,0b1h,067h	; 9bc5  .......o.......g
	defb 005h,000h,081h,0c8h,003h,000h,083h,070h,0b1h,0d5h,006h,000h,083h,0b8h,0b0h,068h	; 9bd5  .......p.......h
	defb 004h,000h,088h,064h,0c9h,065h,000h,000h,071h,0b0h,0d4h,006h,000h,082h,0b6h,0b7h	; 9be5  ...d.e..q.......
	defb 006h,000h,081h,0cah,004h,000h,082h,0d3h,0d2h,005h,000h,083h,062h,0b5h,063h,006h	; 9bf5  ............b.c.
	defb 000h,081h,0cbh,004h,000h,085h,07bh,0d1h,07ah,000h,000h,000h	; 9c05  ......{.z...

; ----------------------------------------------------------------------
; DATOS rle_ram_9C11: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (288 bytes)
;   0x9c11..0x9d31  (288 bytes)
DATA_rle_ram_9C11:
	defb 082h,014h,015h,004h,000h,083h,07eh,0ddh,07fh,00bh,000h,083h,091h,0f3h,090h,005h	; 9c11  ......~.........
	defb 000h,082h,0deh,0dfh,00bh,000h,082h,0f5h,0f4h,006h,000h,083h,0e0h,0b0h,084h,003h	; 9c21  ................
	defb 000h,081h,0f0h,005h,000h,083h,08ah,0b0h,0f6h,006h,000h,083h,0b9h,0b1h,083h,003h	; 9c31  ................
	defb 000h,081h,0efh,005h,000h,083h,089h,0b1h,0d5h,006h,000h,088h,0e1h,0f2h,082h,000h	; 9c41  ................
	defb 000h,080h,0eeh,081h,004h,000h,083h,088h,0f2h,0f7h,006h,000h,082h,0e2h,0e4h,004h	; 9c51  ................
	defb 000h,081h,0edh,006h,000h,082h,0e4h,0f8h,007h,000h,08dh,0b3h,0b4h,0bdh,0e5h,000h	; 9c61  ................
	defb 0c7h,000h,000h,0f9h,0b4h,0d8h,0aeh,0b3h,008h,000h,08dh,0e3h,0afh,06eh,000h,000h	; 9c71  .............n..
	defb 0ech,000h,000h,077h,0afh,08ch,08bh,0e3h,009h,000h,089h,0b0h,0e6h,0b2h,0adh,0ebh	; 9c81  ...w............
	defb 0adh,0b2h,0fah,0b0h,00eh,000h,085h,0c2h,0ceh,0eah,0d0h,0c2h,010h,000h,085h,0e8h	; 9c91  ................
	defb 0fdh,0feh,0ffh,0e8h,00eh,000h,089h,0b0h,0c0h,0b2h,0adh,0c3h,0adh,0b2h,0dah,0b0h	; 9ca1  ................
	defb 009h,000h,08dh,0bch,069h,06ah,0afh,06eh,000h,000h,0c4h,000h,000h,077h,0afh,0bch	; 9cb1  ....ij.n.....w..
	defb 008h,000h,08dh,0b3h,0aeh,0bdh,0b4h,0bfh,000h,000h,0c5h,000h,0d9h,0d8h,0b4h,0b3h	; 9cc1  ................
	defb 007h,000h,082h,0bbh,0beh,006h,000h,081h,0c6h,004h,000h,082h,0beh,0d7h,006h,000h	; 9cd1  ................
	defb 083h,0bah,0cdh,066h,005h,000h,081h,0c7h,003h,000h,083h,06fh,0cdh,0d6h,006h,000h	; 9ce1  ...f.......o....
	defb 083h,0b9h,0b1h,067h,005h,000h,081h,0c8h,003h,000h,083h,070h,0b1h,0d5h,006h,000h	; 9cf1  ...g.......p....
	defb 083h,0b8h,0b0h,068h,004h,000h,088h,064h,0c9h,065h,000h,000h,071h,0b0h,0d4h,006h	; 9d01  ...h...d.e..q...
	defb 000h,082h,0b6h,0b7h,006h,000h,081h,0cah,004h,000h,082h,0d3h,0d2h,005h,000h,083h	; 9d11  ................
	defb 062h,0b5h,063h,006h,000h,081h,0cbh,004h,000h,085h,07bh,0d1h,07ah,000h,000h,000h	; 9d21  b.c.......{.z...

; ----------------------------------------------------------------------
; DATOS rle_ram_9D31: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (290 bytes)
;   0x9d31..0x9e53  (290 bytes)
DATA_rle_ram_9D31:
	defb 082h,014h,015h,004h,000h,083h,07eh,0ddh,07fh,00bh,000h,083h,091h,0f3h,090h,005h	; 9d31  ......~.........
	defb 000h,082h,0deh,0dfh,00bh,000h,082h,0f5h,0f4h,006h,000h,083h,0e0h,0b0h,084h,004h	; 9d41  ................
	defb 000h,081h,08eh,004h,000h,083h,08ah,0b0h,0f6h,006h,000h,083h,0b9h,0b1h,083h,004h	; 9d51  ................
	defb 000h,082h,0e7h,06dh,003h,000h,083h,089h,0b1h,0d5h,006h,000h,083h,0e1h,0f2h,082h	; 9d61  ...m............
	defb 004h,000h,082h,0f5h,0f4h,003h,000h,083h,088h,0f2h,0f7h,006h,000h,082h,0e2h,0e4h	; 9d71  ................
	defb 004h,000h,083h,06bh,0b0h,0f6h,004h,000h,082h,0e4h,0f8h,007h,000h,08dh,0b3h,0b4h	; 9d81  ...k............
	defb 0bdh,0e5h,000h,06ch,0f2h,0d5h,0f9h,0b4h,0d8h,0aeh,0b3h,008h,000h,08dh,0e3h,0afh	; 9d91  ...l............
	defb 06eh,000h,000h,0f9h,0b3h,0f7h,077h,0afh,08ch,08bh,0e3h,009h,000h,089h,0b0h,0e6h	; 9da1  n.....w.........
	defb 0b2h,0adh,0b0h,0e4h,0f8h,0fah,0b0h,00eh,000h,085h,0c2h,0ceh,0cfh,0e3h,0c2h,010h	; 9db1  ................
	defb 000h,088h,0e8h,0fdh,0feh,0ffh,0e8h,000h,000h,0bch,00bh,000h,08ah,0b0h,0c0h,0b2h	; 9dc1  ................
	defb 0adh,0c3h,0adh,0b2h,0dah,0b0h,0beh,008h,000h,08eh,0bch,069h,06ah,0afh,06eh,000h	; 9dd1  ...........ij.n.
	defb 000h,0c4h,000h,0d9h,0d8h,0b4h,0b3h,0d7h,007h,000h,088h,0b3h,0aeh,0bdh,0b4h,0bfh	; 9de1  ................
	defb 000h,000h,0c5h,003h,000h,083h,06fh,0cdh,0d6h,006h,000h,082h,0bbh,0beh,006h,000h	; 9df1  ......o.........
	defb 081h,0c6h,003h,000h,083h,070h,0b1h,0d5h,006h,000h,083h,0bah,0cdh,066h,005h,000h	; 9e01  .....p.......f..
	defb 081h,0c7h,003h,000h,083h,071h,0b0h,0d4h,006h,000h,083h,0b9h,0b1h,067h,005h,000h	; 9e11  .....q.......g..
	defb 081h,0c8h,004h,000h,082h,0d3h,0d2h,006h,000h,083h,0b8h,0b0h,068h,004h,000h,083h	; 9e21  ............h...
	defb 064h,0c9h,065h,003h,000h,082h,07bh,0dbh,006h,000h,082h,0b6h,0b7h,006h,000h,081h	; 9e31  d.e...{.........
	defb 0cah,005h,000h,081h,079h,005h,000h,083h,062h,0b5h,063h,006h,000h,081h,0cbh,009h	; 9e41  ....y...b.c.....
	defb 000h,000h	; 9e51

; ----------------------------------------------------------------------
; DATOS rle_ram_9E53: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0;
;   lo leen p00:55AD (282 bytes)
;   0x9e53..0x9f6d  (282 bytes)
DATA_rle_ram_9E53:
	defb 082h,014h,015h,004h,000h,083h,07eh,0ddh,07fh,00bh,000h,083h,091h,0f3h,090h,005h	; 9e53  ......~.........
	defb 000h,082h,0deh,0dfh,007h,000h,081h,08fh,003h,000h,082h,0f5h,0f4h,006h,000h,083h	; 9e63  ................
	defb 0e0h,0b0h,084h,005h,000h,087h,091h,0fch,000h,000h,08ah,0b0h,0f6h,006h,000h,083h	; 9e73  ................
	defb 0b9h,0b1h,083h,005h,000h,087h,0f5h,0f4h,000h,000h,089h,0b1h,0d5h,006h,000h,083h	; 9e83  ................
	defb 0e1h,0f2h,082h,004h,000h,088h,06bh,0b0h,0f6h,000h,000h,088h,0f2h,0f7h,006h,000h	; 9e93  ......k.........
	defb 082h,0e2h,0e4h,005h,000h,083h,06ch,0f2h,0d5h,003h,000h,082h,0e4h,0f8h,007h,000h	; 9ea3  ......l.........
	defb 08dh,0b3h,0b4h,0bdh,0e5h,000h,0f9h,0b4h,0b3h,0f7h,0b4h,0d8h,0aeh,0b3h,008h,000h	; 9eb3  ................
	defb 08dh,0e3h,0afh,06eh,000h,000h,077h,0afh,0e4h,0f8h,0afh,08ch,08bh,0e3h,009h,000h	; 9ec3  ...n..w.........
	defb 089h,0b0h,0e6h,0b2h,0adh,0fah,0b0h,0e3h,0fah,0b0h,00eh,000h,085h,0c2h,0ceh,0cfh	; 9ed3  ................
	defb 0e3h,0c2h,00dh,000h,08bh,0bch,000h,000h,0e8h,0fdh,0feh,0ffh,0e8h,000h,000h,0bch	; 9ee3  ................
	defb 00ah,000h,08ch,0beh,0b0h,0c0h,0b2h,0adh,0c3h,0adh,0b2h,0dah,0b0h,0beh,0d7h,008h	; 9ef3  ................
	defb 000h,08dh,0bbh,0b3h,0b4h,0bdh,0bfh,000h,0c4h,000h,0d9h,0d8h,0b4h,0b3h,0d6h,008h	; 9f03  ................
	defb 000h,083h,0bah,0cdh,066h,003h,000h,081h,0c5h,003h,000h,083h,06bh,0cdh,0d5h,008h	; 9f13  ....f.......k...
	defb 000h,083h,0b9h,0b1h,067h,003h,000h,081h,0c6h,003h,000h,083h,06ch,0b0h,0d4h,008h	; 9f23  ....g.......l...
	defb 000h,083h,0b8h,0b0h,068h,003h,000h,081h,0c7h,004h,000h,082h,0d3h,0d2h,008h,000h	; 9f33  ....h...........
	defb 082h,0b6h,0b7h,004h,000h,081h,0c8h,004h,000h,082h,0c1h,087h,008h,000h,082h,0cch	; 9f43  ................
	defb 063h,003h,000h,083h,064h,0c9h,065h,003h,000h,081h,078h,009h,000h,081h,061h,005h	; 9f53  c...d.e...x...a.
	defb 000h,081h,0cah,014h,000h,081h,0cbh,009h,000h,000h	; 9f63  ..........

; ----------------------------------------------------------------------
; DATOS rle_ram_9F6D: datos comprimidos a la RAM (p00:55AD, el mismo formato
;   que p00:4B3C): 0 acaba, n < 0x80 repite, 0x80 y un destino nuevo,
;   0x81-0xFF copian n & 0x7F bytes; empieza donde la campana de
;   tools/cobertura.py lee su primer byte de control y se recorre hasta su 0
;   (sigue en el banco 7, en 0xA000); lo leen p00:55AD (147 bytes)
;   0x9f6d..0xa000  (147 bytes)
DATA_rle_ram_9F6D:
	defb 082h,014h,017h,004h,000h,083h,07eh,0ddh,07fh,006h,000h,088h,091h,0f3h,090h,000h	; 9f6d  ......~.........
	defb 000h,091h,0f3h,090h,007h,000h,082h,0deh,0dfh,006h,000h,082h,0f5h,0f4h,003h,000h	; 9f7d  ................
	defb 082h,0f5h,0f4h,008h,000h,083h,0e0h,0b0h,084h,004h,000h,088h,08ah,0b0h,0f6h,000h	; 9f8d  ................
	defb 000h,08ah,0b0h,0f6h,008h,000h,083h,0b9h,0b1h,083h,004h,000h,088h,089h,0b1h,0d5h	; 9f9d  ................
	defb 000h,000h,089h,0b1h,0d5h,008h,000h,083h,0e1h,0f2h,082h,004h,000h,088h,088h,0f2h	; 9fad  ................
	defb 0f7h,000h,000h,088h,0f2h,0f7h,008h,000h,082h,0e2h,0e4h,006h,000h,082h,0e4h,0f8h	; 9fbd  ................
	defb 003h,000h,082h,0e4h,0f8h,009h,000h,08dh,0b3h,0b4h,0bdh,0e5h,000h,0f9h,0b4h,0b3h	; 9fcd  ................
	defb 0f9h,0b4h,0d8h,0aeh,0b3h,00ah,000h,08dh,0e3h,0afh,06eh,000h,000h,077h,0afh,0e3h	; 9fdd  ..........n..w..
	defb 077h,0afh,08ch,08bh,0e3h,00bh,000h,089h,0b0h,0e6h,0b2h,0adh,0fah,0b0h,0b2h,0fah	; 9fed  w...............
	defb 0b0h,010h,000h	; 9ffd

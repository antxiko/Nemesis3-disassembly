; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 16 (se ejecuta en 0x6000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x06000


; ----------------------------------------------------------------------
; DATOS por_fase_6000: una palabra por fase (las 11; la fase 1 es la primera):
;   graficos; lo leen p00:4FE1 (22 bytes)
;   0x6000..0x6016  (22 bytes)
DATA_por_fase_6000:
	defw 06074h,06108h,061b0h,0628ch,0628eh,063f2h,06454h,064dah	; 6000
	defw 06574h,066d2h,06758h	; 6010  -> DATA_graficos_6574 DATA_graficos_66D2 DATA_graficos_6758

; ----------------------------------------------------------------------
; DATOS por_fase_6016: una palabra por fase (las 11; la fase 1 es la primera):
;   copias; lo leen p00:4FFB (22 bytes)
;   0x6016..0x602c  (22 bytes)
DATA_por_fase_6016:
	defw 060b7h,06152h,06208h,0628dh,06333h,06429h,06491h,0651eh	; 6016
	defw 065bdh,06722h,06795h	; 6026  -> DATA_copias_65BD DATA_copias_6722 DATA_copias_6795

; ----------------------------------------------------------------------
; DATOS por_fase_602C: una palabra por fase (las 11; la fase 1 es la primera):
;   51EE; lo leen p00:51F4 (22 bytes)
;   0x602c..0x6042  (22 bytes)
DATA_por_fase_602C:
	defw 06042h,06044h,0604dh,06062h,06064h,06452h,063e7h,063ceh	; 602c
	defw 063d7h,063e9h,063e7h	; 603c  -> DATA_cambios_63D7 DATA_cambios_63E9 DATA_cambios_63E7

; ----------------------------------------------------------------------
; DATOS cambios_6042: los cambios de graficos a mitad de la fase 1 (p00:51EE):
;   de 7 en 7, la posicion del scroll, la lista de graficos, la de copias y el
;   byte de 0xE405; acaba en 0xFFFF; lo leen p00:51F7 (2 bytes)
;   0x6042..0x6044  (2 bytes)
DATA_cambios_6042:
	defb 0ffh,0ffh	; 6042

; ----------------------------------------------------------------------
; DATOS cambios_6044: los cambios de graficos a mitad de la fase 2 (p00:51EE):
;   de 7 en 7, la posicion del scroll, la lista de graficos, la de copias y el
;   byte de 0xE405; acaba en 0xFFFF; lo leen p00:51F7 (9 bytes)
;   0x6044..0x604d  (9 bytes)
DATA_cambios_6044:
	defb 010h,001h,02dh,061h,09bh,061h,060h	; 6044
	defb 0ffh,0ffh	; 604b

; ----------------------------------------------------------------------
; DATOS cambios_604D: los cambios de graficos a mitad de la fase 3 (p00:51EE):
;   de 7 en 7, la posicion del scroll, la lista de graficos, la de copias y el
;   byte de 0xE405; acaba en 0xFFFF; se solapan 2 bloques: (cambios_6062
;   6062-6064); lo leen p00:51F7 (23 bytes)
;   0x604d..0x6064  (23 bytes)
DATA_cambios_604D:
	defb 080h,000h,0c3h,061h,035h,062h,068h	; 604d
	defb 020h,001h,0e8h,061h,056h,062h,070h	; 6054
	defb 080h,001h,001h,062h,07bh,062h,0feh	; 605b
	defb 0ffh,0ffh	; 6062

; ----------------------------------------------------------------------
; DATOS cambios_6064: los cambios de graficos a mitad de la fase 5 (p00:51EE):
;   de 7 en 7, la posicion del scroll, la lista de graficos, la de copias y el
;   byte de 0xE405; acaba en 0xFFFF; lo leen p00:51F7 (16 bytes)
;   0x6064..0x6074  (16 bytes)
DATA_cambios_6064:
	defb 000h,001h,0c5h,062h,06ch,063h,078h	; 6064
	defb 080h,001h,0fch,062h,09dh,063h,090h	; 606b
	defb 0ffh,0ffh	; 6072

; ----------------------------------------------------------------------
; DATOS graficos_6074: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (67 bytes)
;   0x6074..0x60b7  (67 bytes)
DATA_graficos_6074:
	defb 00eh,068h,06dh,03dh,0f9h,06dh	; 6074
	defb 00ch,01ah,06eh,04fh,077h,06eh	; 607a
	defb 00dh,07ah,06eh,07bh,000h,06fh	; 6080
	defb 00dh,005h,06fh,09dh,093h,06fh	; 6086
	defb 00dh,0a2h,06fh,0ddh,0c3h,06fh	; 608c
	defb 00dh,0d0h,06fh,0e8h,010h,070h	; 6092
	defb 00dh,029h,070h,0f8h,06bh,070h	; 6098
	defb 00ah,07ah,070h,045h,058h,071h	; 609e
	defb 00ah,06fh,071h,07bh,04ah,073h	; 60a4
	defb 00ah,06dh,073h,0d4h,060h,074h	; 60aa
	defb 009h,01ah,06eh,059h,077h,06eh	; 60b0
	defb 000h	; 60b6

; ----------------------------------------------------------------------
; DATOS copias_60B7: lista de copias de caracteres con la vuelta dada de la
;   fase 1 (p00:4D1B); lo leen p00:4FFB (81 bytes)
;   0x60b7..0x6108  (81 bytes)
DATA_copias_60B7:
	defb 04fh,05bh,024h,00ch	; 60b7
	defb 04fh,067h,0a4h,00ah	; 60bb
	defb 067h,071h,024h,00ah	; 60bf
	defb 07bh,08ch,02ch,011h	; 60c3
	defb 08ch,08ch,0ach,011h	; 60c7
	defb 0a1h,0b0h,02ch,00fh	; 60cb
	defb 0a1h,0bfh,0ach,00fh	; 60cf
	defb 0bfh,0ceh,02ch,00fh	; 60d3
	defb 0ddh,0e2h,02ch,005h	; 60d7
	defb 0e8h,0f0h,0ach,008h	; 60db
	defb 055h,061h,012h,00ch	; 60df
	defb 055h,06dh,092h,007h	; 60e3
	defb 06dh,074h,012h,007h	; 60e7
	defb 0a8h,0b8h,012h,010h	; 60eb
	defb 0a8h,0c8h,092h,006h	; 60ef
	defb 0c8h,0ceh,012h,006h	; 60f3
	defb 0e2h,0f5h,092h,00bh	; 60f7
	defb 059h,063h,009h,00ah	; 60fb
	defb 059h,06dh,089h,007h	; 60ff
	defb 06dh,074h,009h,007h	; 6103
	defb 000h	; 6107

; ----------------------------------------------------------------------
; DATOS graficos_6108: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (37 bytes)
;   0x6108..0x612d  (37 bytes)
DATA_graficos_6108:
	defb 00bh,084h,082h,05dh,0e6h,082h	; 6108
	defb 00bh,046h,082h,07ah,068h,082h	; 610e
	defb 00fh,057h,07dh,0feh,069h,07dh	; 6114
	defb 00bh,077h,07dh,0b7h,089h,07eh	; 611a
	defb 00ch,0cdh,07bh,0ddh,0c8h,07ch	; 6120
	defb 00bh,0fbh,074h,088h,05ch,075h	; 6126
	defb 000h	; 612c

; ----------------------------------------------------------------------
; DATOS graficos_612D: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (37 bytes)
;   0x612d..0x6152  (37 bytes)
DATA_graficos_612D:
	defb 00ah,0fah,081h,050h,013h,082h	; 612d
	defb 00ah,01ch,082h,0b0h,039h,082h	; 6133
	defb 009h,051h,07fh,05ah,05ah,07fh	; 6139
	defb 009h,05dh,07fh,0a0h,0bdh,080h	; 613f
	defb 00fh,034h,07dh,0fdh,046h,07dh	; 6145
	defb 009h,030h,083h,098h,052h,083h	; 614b
	defb 000h	; 6151

; ----------------------------------------------------------------------
; DATOS copias_6152: lista de copias de caracteres con la vuelta dada de la
;   fase 2 (p00:4D1B); lo leen p00:4FFB (73 bytes)
;   0x6152..0x619b  (73 bytes)
DATA_copias_6152:
	defb 088h,094h,019h,008h	; 6152
	defb 088h,088h,0a1h,014h	; 6156
	defb 0d5h,0d9h,019h,004h	; 615a
	defb 0b7h,0b7h,0a1h,026h	; 615e
	defb 0ddh,0ddh,0a4h,001h	; 6162
	defb 0ddh,0ddh,09ch,01fh	; 6166
	defb 0f4h,05ah,08ch,001h	; 616a
	defb 0f4h,05ah,0a1h,001h	; 616e
	defb 0f7h,05bh,08ch,001h	; 6172
	defb 0f7h,05bh,0a1h,001h	; 6176
	defb 07ch,07eh,019h,001h	; 617a
	defb 07ah,07fh,019h,001h	; 617e
	defb 07ah,07ah,0a1h,006h	; 6182
	defb 05fh,05ch,099h,001h	; 6186
	defb 060h,069h,019h,009h	; 618a
	defb 062h,072h,099h,003h	; 618e
	defb 072h,075h,019h,003h	; 6192
	defb 05ch,05ch,0a1h,01ch	; 6196
	defb 000h	; 619a

; ----------------------------------------------------------------------
; DATOS copias_619B: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 2; lo leen
;   p00:522B (21 bytes)
;   0x619b..0x61b0  (21 bytes)
DATA_copias_619B:
	defb 050h,053h,012h,003h	; 619b
	defb 0b1h,0b4h,012h,003h	; 619f
	defb 05ah,05bh,009h,001h	; 61a3
	defb 0a0h,0cch,009h,02ch	; 61a7
	defb 098h,09ch,009h,004h	; 61ab
	defb 000h	; 61af

; ----------------------------------------------------------------------
; DATOS graficos_61B0: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (19 bytes)
;   0x61b0..0x61c3  (19 bytes)
DATA_graficos_61B0:
	defb 00eh,017h,08fh,040h,0a2h,08fh	; 61b0
	defb 00eh,007h,090h,062h,076h,092h	; 61b6
	defb 00fh,089h,07ah,05ah,09bh,07ah	; 61bc
	defb 000h	; 61c2

; ----------------------------------------------------------------------
; DATOS graficos_61C3: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (37 bytes)
;   0x61c3..0x61e8  (37 bytes)
DATA_graficos_61C3:
	defb 00fh,083h,092h,059h,0b5h,097h	; 61c3
	defb 00fh,092h,092h,065h,0b8h,097h	; 61c9
	defb 00ch,0a7h,092h,068h,0c1h,097h	; 61cf
	defb 00ah,038h,096h,070h,006h,099h	; 61d5
	defb 00ah,0eah,096h,0b0h,01fh,099h	; 61db
	defb 00fh,0ebh,07ah,0e0h,065h,07bh	; 61e1
	defb 000h	; 61e7

; ----------------------------------------------------------------------
; DATOS graficos_61E8: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (25 bytes)
;   0x61e8..0x6201  (25 bytes)
DATA_graficos_61E8:
	defb 00fh,060h,099h,060h,0bdh,099h	; 61e8
	defb 00ch,0c6h,099h,070h,078h,09ah	; 61ee
	defb 00ch,0b2h,09ah,0b0h,00dh,09bh	; 61f4
	defb 00fh,061h,09bh,0d0h,073h,09bh	; 61fa
	defb 000h	; 6200

; ----------------------------------------------------------------------
; DATOS graficos_6201: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (7 bytes)
;   0x6201..0x6208  (7 bytes)
DATA_graficos_6201:
	defb 00fh,07eh,09bh,062h,0eeh,09dh	; 6201
	defb 000h	; 6207

; ----------------------------------------------------------------------
; DATOS copias_6208: lista de copias de caracteres con la vuelta dada de la
;   fase 3 (p00:4D1B); lo leen p00:4FFB (45 bytes)
;   0x6208..0x6235  (45 bytes)
DATA_copias_6208:
	defb 050h,052h,0b6h,002h	; 6208
	defb 050h,054h,036h,002h	; 620c
	defb 052h,056h,036h,002h	; 6210
	defb 062h,0b0h,0bch,027h	; 6214
	defb 0b0h,0b0h,03ch,027h	; 6218
	defb 089h,0d7h,0bch,027h	; 621c
	defb 0d7h,0d7h,03ch,027h	; 6220
	defb 05ah,05fh,039h,001h	; 6224
	defb 05bh,05eh,039h,001h	; 6228
	defb 05ah,060h,0b9h,002h	; 622c
	defb 05eh,05ch,0b9h,002h	; 6230
	defb 000h	; 6234

; ----------------------------------------------------------------------
; DATOS copias_6235: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 3; lo leen
;   p00:522B (33 bytes)
;   0x6235..0x6256  (33 bytes)
DATA_copias_6235:
	defb 068h,068h,00ch,038h	; 6235
	defb 068h,068h,089h,038h	; 6239
	defb 0a0h,0a0h,00ch,039h	; 623d
	defb 0a0h,0a0h,089h,039h	; 6241
	defb 070h,090h,012h,016h	; 6245
	defb 090h,090h,092h,016h	; 6249
	defb 0e0h,0f0h,0bch,008h	; 624d
	defb 0e8h,0f8h,0bch,008h	; 6251
	defb 000h	; 6255

; ----------------------------------------------------------------------
; DATOS copias_6256: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 3; lo leen
;   p00:522B (37 bytes)
;   0x6256..0x627b  (37 bytes)
DATA_copias_6256:
	defb 06ch,06dh,03ch,001h	; 6256
	defb 06ch,06eh,0bch,001h	; 625a
	defb 06eh,06fh,03ch,001h	; 625e
	defb 070h,090h,03ch,016h	; 6262
	defb 090h,090h,0bch,016h	; 6266
	defb 0b0h,0c0h,0bch,00ch	; 626a
	defb 0d0h,0d3h,03ch,003h	; 626e
	defb 0d0h,0e0h,0bch,003h	; 6272
	defb 0e0h,0e3h,03ch,003h	; 6276
	defb 000h	; 627a

; ----------------------------------------------------------------------
; DATOS copias_627B: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 3; lo leen
;   p00:522B (17 bytes)
;   0x627b..0x628c  (17 bytes)
DATA_copias_627B:
	defb 062h,0b0h,03ch,027h	; 627b
	defb 0b0h,0b0h,0bch,027h	; 627f
	defb 089h,0d7h,03ch,027h	; 6283
	defb 0d7h,0d7h,0bch,027h	; 6287
	defb 000h	; 628b

; ----------------------------------------------------------------------
; DATOS graficos_628C: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (1 bytes)
;   0x628c..0x628d  (1 bytes)
DATA_graficos_628C:
	defb 000h	; 628c

; ----------------------------------------------------------------------
; DATOS copias_628D: lista de copias de caracteres con la vuelta dada de la
;   fase 4 (p00:4D1B); lo leen p00:4FFB (1 bytes)
;   0x628d..0x628e  (1 bytes)
DATA_copias_628D:
	defb 000h	; 628d

; ----------------------------------------------------------------------
; DATOS graficos_628E: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (55 bytes)
;   0x628e..0x62c5  (55 bytes)
DATA_graficos_628E:
	defb 00fh,06fh,083h,060h,06eh,085h	; 628e
	defb 00dh,0aeh,083h,072h,098h,085h	; 6294
	defb 00fh,0f8h,083h,086h,0c7h,085h	; 629a
	defb 00fh,03ah,084h,0c4h,0fdh,085h	; 62a0
	defb 00fh,096h,084h,0d0h,05dh,086h	; 62a6
	defb 00dh,0e0h,084h,0e2h,099h,086h	; 62ac
	defb 00fh,03ch,085h,0fah,0e2h,086h	; 62b2
	defb 00fh,03dh,076h,090h,02ch,078h	; 62b8
	defb 00fh,07dh,076h,098h,068h,078h	; 62be
	defb 000h	; 62c4

; ----------------------------------------------------------------------
; DATOS graficos_62C5: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (55 bytes)
;   0x62c5..0x62fc  (55 bytes)
DATA_graficos_62C5:
	defb 00fh,00bh,087h,060h,034h,089h	; 62c5
	defb 00fh,04dh,087h,06ah,06ah,089h	; 62cb
	defb 00fh,07eh,087h,070h,087h,089h	; 62d1
	defb 00fh,088h,087h,071h,08fh,089h	; 62d7
	defb 00fh,0b8h,087h,0c2h,0afh,089h	; 62dd
	defb 00fh,02ah,088h,0d0h,0ech,089h	; 62e3
	defb 00fh,079h,088h,0dah,024h,08ah	; 62e9
	defb 00fh,09ah,088h,0ech,03ch,08ah	; 62ef
	defb 00fh,002h,089h,0fah,0adh,08ah	; 62f5
	defb 000h	; 62fb

; ----------------------------------------------------------------------
; DATOS graficos_62FC: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (55 bytes)
;   0x62fc..0x6333  (55 bytes)
DATA_graficos_62FC:
	defb 00ch,0d5h,08ah,060h,03ch,08dh	; 62fc
	defb 00ch,01ch,08bh,074h,050h,08dh	; 6302
	defb 00dh,05dh,08bh,086h,07fh,08dh	; 6308
	defb 00dh,09fh,08bh,0b0h,0b5h,08dh	; 630e
	defb 00fh,029h,08ch,0c2h,045h,08eh	; 6314
	defb 00ch,034h,08ch,0c4h,04eh,08eh	; 631a
	defb 00ch,07eh,08ch,0d6h,08ah,08eh	; 6320
	defb 00dh,00ah,08dh,0fah,0eeh,08eh	; 6326
	defb 00fh,0c6h,076h,0c2h,0c6h,078h	; 632c
	defb 000h	; 6332

; ----------------------------------------------------------------------
; DATOS copias_6333: lista de copias de caracteres con la vuelta dada de la
;   fase 5 (p00:4D1B); lo leen p00:4FFB (57 bytes)
;   0x6333..0x636c  (57 bytes)
DATA_copias_6333:
	defb 060h,040h,0b4h,009h	; 6333
	defb 040h,049h,034h,009h	; 6337
	defb 060h,069h,03ch,009h	; 633b
	defb 072h,07ch,02ch,00ah	; 633f
	defb 072h,072h,094h,00ah	; 6343
	defb 072h,07ch,012h,00ah	; 6347
	defb 0d0h,0b0h,0b4h,009h	; 634b
	defb 0d0h,0d9h,03ch,009h	; 634f
	defb 0b0h,0b9h,034h,009h	; 6353
	defb 0e2h,0e2h,094h,00ch	; 6357
	defb 0e2h,0eeh,02ch,00ch	; 635b
	defb 0e2h,0eeh,012h,00ch	; 635f
	defb 090h,0a0h,0b9h,008h	; 6363
	defb 098h,0a8h,0b9h,008h	; 6367
	defb 000h	; 636b

; ----------------------------------------------------------------------
; DATOS copias_636C: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 5; lo leen
;   p00:522B (49 bytes)
;   0x636c..0x639d  (49 bytes)
DATA_copias_636C:
	defb 070h,040h,0b4h,008h	; 636c
	defb 06ah,048h,0b4h,006h	; 6370
	defb 040h,050h,034h,008h	; 6374
	defb 0d0h,078h,0b4h,00ah	; 6378
	defb 0dah,082h,0b4h,004h	; 637c
	defb 078h,086h,034h,00ah	; 6380
	defb 082h,0b0h,034h,004h	; 6384
	defb 0c2h,0b4h,0b4h,00eh	; 6388
	defb 0d0h,0deh,03ch,00ah	; 638c
	defb 0dah,0e8h,03ch,004h	; 6390
	defb 070h,033h,03ch,001h	; 6394
	defb 071h,059h,03ch,007h	; 6398
	defb 000h	; 639c

; ----------------------------------------------------------------------
; DATOS copias_639D: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 5; lo leen
;   p00:522B (49 bytes)
;   0x639d..0x63ce  (49 bytes)
DATA_copias_639D:
	defb 060h,06ah,024h,00ah	; 639d
	defb 074h,07dh,024h,009h	; 63a1
	defb 0c4h,0cdh,024h,009h	; 63a5
	defb 0d6h,0e8h,024h,012h	; 63a9
	defb 060h,060h,08ch,00ah	; 63ad
	defb 060h,06ah,009h,00ah	; 63b1
	defb 074h,074h,08ch,009h	; 63b5
	defb 074h,07dh,009h,009h	; 63b9
	defb 0c4h,0c4h,08ch,009h	; 63bd
	defb 0c4h,0cdh,009h,009h	; 63c1
	defb 0d6h,0d6h,08ch,012h	; 63c5
	defb 0d6h,0e8h,009h,012h	; 63c9
	defb 000h	; 63cd

; ----------------------------------------------------------------------
; DATOS cambios_63CE: los cambios de graficos a mitad de la fase 8 (p00:51EE):
;   de 7 en 7, la posicion del scroll, la lista de graficos, la de copias y el
;   byte de 0xE405; acaba en 0xFFFF; lo leen p00:51F7 (9 bytes)
;   0x63ce..0x63d7  (9 bytes)
DATA_cambios_63CE:
	defb 010h,001h,011h,065h,04fh,065h,060h	; 63ce
	defb 0ffh,0ffh	; 63d5

; ----------------------------------------------------------------------
; DATOS cambios_63D7: los cambios de graficos a mitad de la fase 9 (p00:51EE):
;   de 7 en 7, la posicion del scroll, la lista de graficos, la de copias y el
;   byte de 0xE405; acaba en 0xFFFF; lo leen p00:51F7 (16 bytes)
;   0x63d7..0x63e7  (16 bytes)
DATA_cambios_63D7:
	defb 0c0h,000h,0fah,065h,02bh,066h,063h	; 63d7
	defb 0c0h,001h,048h,066h,06dh,066h,092h	; 63de
	defb 0ffh,0ffh	; 63e5

; ----------------------------------------------------------------------
; DATOS cambios_63E7: los cambios de graficos a mitad de la fase 7 (p00:51EE):
;   de 7 en 7, la posicion del scroll, la lista de graficos, la de copias y el
;   byte de 0xE405; acaba en 0xFFFF; lo leen p00:51F7 (2 bytes)
;   0x63e7..0x63e9  (2 bytes)
DATA_cambios_63E7:
	defb 0ffh,0ffh	; 63e7

; ----------------------------------------------------------------------
; DATOS cambios_63E9: los cambios de graficos a mitad de la fase 10
;   (p00:51EE): de 7 en 7, la posicion del scroll, la lista de graficos, la de
;   copias y el byte de 0xE405; acaba en 0xFFFF; lo leen p00:51F7 (9 bytes)
;   0x63e9..0x63f2  (9 bytes)
DATA_cambios_63E9:
	defb 0a0h,001h,003h,067h,047h,067h,067h	; 63e9
	defb 0ffh,0ffh	; 63f0

; ----------------------------------------------------------------------
; DATOS graficos_63F2: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (55 bytes)
;   0x63f2..0x6429  (55 bytes)
DATA_graficos_63F2:
	defb 00fh,0fbh,09dh,05ah,01ah,09eh	; 63f2
	defb 00dh,02dh,09eh,060h,097h,09eh	; 63f8
	defb 00ch,0bfh,09eh,080h,031h,09fh	; 63fe
	defb 00ch,067h,09fh,0a0h,065h,0a1h	; 6404
	defb 00dh,049h,0a2h,0e0h,07bh,0a2h	; 640a
	defb 00dh,08ah,0a2h,0f0h,0b4h,0a2h	; 6410
	defb 00ah,0c5h,0a2h,05eh,07dh,0a4h	; 6416
	defb 00ah,071h,0a5h,0e0h,031h,0a6h	; 641c
	defb 00fh,0adh,0a6h,0f9h,0e6h,0a6h	; 6422
	defb 000h	; 6428

; ----------------------------------------------------------------------
; DATOS copias_6429: lista de copias de caracteres con la vuelta dada de la
;   fase 6 (p00:4D1B); lo leen p00:4FFB (41 bytes)
;   0x6429..0x6452  (41 bytes)
DATA_copias_6429:
	defb 060h,070h,0ach,00dh	; 6429
	defb 080h,090h,024h,00eh	; 642d
	defb 05eh,095h,092h,031h	; 6431
	defb 08fh,0c6h,012h,006h	; 6435
	defb 05eh,0cch,012h,00ah	; 6439
	defb 0cch,0d6h,092h,00ah	; 643d
	defb 080h,080h,08ch,00eh	; 6441
	defb 080h,090h,009h,00eh	; 6445
	defb 0a0h,0a0h,08ch,020h	; 6449
	defb 0c0h,0c0h,08ch,020h	; 644d
	defb 000h	; 6451

; ----------------------------------------------------------------------
; DATOS cambios_6452: los cambios de graficos a mitad de la fase 6 (p00:51EE):
;   de 7 en 7, la posicion del scroll, la lista de graficos, la de copias y el
;   byte de 0xE405; acaba en 0xFFFF; lo leen p00:51F7 (2 bytes)
;   0x6452..0x6454  (2 bytes)
DATA_cambios_6452:
	defb 0ffh,0ffh	; 6452

; ----------------------------------------------------------------------
; DATOS graficos_6454: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (61 bytes)
;   0x6454..0x6491  (61 bytes)
DATA_graficos_6454:
	defb 009h,0d0h,0a7h,0ech,03fh,0a8h	; 6454
	defb 00fh,05fh,0a7h,0d0h,0a1h,0a7h	; 645a
	defb 00fh,0fah,0a6h,0e0h,014h,0a7h	; 6460
	defb 009h,017h,0a7h,059h,02bh,0a7h	; 6466
	defb 00bh,0a3h,0a8h,065h,0e0h,0a9h	; 646c
	defb 00fh,09eh,0aah,09eh,021h,0abh	; 6472
	defb 00bh,038h,0a7h,05eh,05ah,0a7h	; 6478
	defb 00fh,0c8h,079h,08eh,0f8h,079h	; 647e
	defb 00fh,029h,07ah,0c0h,059h,07ah	; 6484
	defb 00fh,089h,07ah,0e4h,09bh,07ah	; 648a
	defb 000h	; 6490

; ----------------------------------------------------------------------
; DATOS copias_6491: lista de copias de caracteres con la vuelta dada de la
;   fase 7 (p00:4D1B); lo leen p00:4FFB (73 bytes)
;   0x6491..0x64da  (73 bytes)
DATA_copias_6491:
	defb 08eh,094h,039h,002h	; 6491
	defb 08eh,096h,0b9h,008h	; 6495
	defb 0c0h,0c6h,039h,002h	; 6499
	defb 0c0h,0c8h,0b9h,008h	; 649d
	defb 05eh,05ch,09bh,002h	; 64a1
	defb 05ch,05ch,01bh,002h	; 64a5
	defb 060h,062h,09bh,002h	; 64a9
	defb 062h,062h,01bh,002h	; 64ad
	defb 070h,064h,01bh,001h	; 64b1
	defb 059h,059h,0a1h,034h	; 64b5
	defb 0ach,0aeh,009h,002h	; 64b9
	defb 0a2h,0a2h,0a1h,012h	; 64bd
	defb 0f6h,0fbh,009h,004h	; 64c1
	defb 0ech,0ech,0a1h,014h	; 64c5
	defb 0e4h,0e9h,039h,001h	; 64c9
	defb 0e5h,0e8h,039h,001h	; 64cd
	defb 0e4h,0eah,0b9h,002h	; 64d1
	defb 0e8h,0e6h,0b9h,002h	; 64d5
	defb 000h	; 64d9

; ----------------------------------------------------------------------
; DATOS graficos_64DA: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (55 bytes)
;   0x64da..0x6511  (55 bytes)
DATA_graficos_64DA:
	defb 00fh,06ah,0abh,05ah,086h,0abh	; 64da
	defb 00fh,091h,0abh,060h,0a3h,0abh	; 64e0
	defb 00fh,0ach,0abh,066h,07ch,0ach	; 64e6
	defb 00eh,081h,0ach,080h,075h,0adh	; 64ec
	defb 00fh,0deh,0adh,0a0h,040h,0aeh	; 64f2
	defb 00fh,099h,0aeh,0b2h,0c2h,0aeh	; 64f8
	defb 00fh,0d3h,0aeh,0bch,0ddh,0aeh	; 64fe
	defb 00fh,0e7h,0aeh,0c0h,0d0h,0afh	; 6504
	defb 009h,019h,0b0h,09bh,038h,0b0h	; 650a
	defb 000h	; 6510

; ----------------------------------------------------------------------
; DATOS graficos_6511: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (13 bytes)
;   0x6511..0x651e  (13 bytes)
DATA_graficos_6511:
	defb 00eh,045h,0b0h,0c0h,003h,0b1h	; 6511
	defb 00fh,0b0h,0b1h,0f0h,0f2h,0b1h	; 6517
	defb 000h	; 651d

; ----------------------------------------------------------------------
; DATOS copias_651E: lista de copias de caracteres con la vuelta dada de la
;   fase 8 (p00:4D1B); lo leen p00:4FFB (49 bytes)
;   0x651e..0x654f  (49 bytes)
DATA_copias_651E:
	defb 060h,062h,03ch,002h	; 651e
	defb 062h,062h,0bch,002h	; 6522
	defb 0a6h,0ach,03ch,006h	; 6526
	defb 0b4h,0b7h,0bch,003h	; 652a
	defb 0b6h,0bah,03ch,001h	; 652e
	defb 0bah,0bbh,0bch,001h	; 6532
	defb 0bch,0bdh,03ch,001h	; 6536
	defb 0bch,0beh,0bch,001h	; 653a
	defb 0beh,0bfh,03ch,001h	; 653e
	defb 0c0h,0e0h,0bch,01dh	; 6542
	defb 0e0h,0e0h,03ch,01dh	; 6546
	defb 080h,080h,08ch,01bh	; 654a
	defb 000h	; 654e

; ----------------------------------------------------------------------
; DATOS copias_654F: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 8; lo leen
;   p00:522B (37 bytes)
;   0x654f..0x6574  (37 bytes)
DATA_copias_654F:
	defb 0d0h,0d8h,03ch,008h	; 654f
	defb 0d0h,0e0h,0ach,008h	; 6553
	defb 0e0h,0e8h,02ch,008h	; 6557
	defb 082h,068h,094h,019h	; 655b
	defb 0c0h,0e0h,094h,010h	; 655f
	defb 0e0h,0e0h,012h,010h	; 6563
	defb 082h,068h,08ch,019h	; 6567
	defb 0c0h,0c0h,08ch,010h	; 656b
	defb 0c0h,0c0h,009h,010h	; 656f
	defb 000h	; 6573

; ----------------------------------------------------------------------
; DATOS graficos_6574: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (73 bytes)
;   0x6574..0x65bd  (73 bytes)
DATA_graficos_6574:
	defb 00eh,01eh,0b2h,050h,077h,0b2h	; 6574
	defb 00fh,0dch,0b2h,05fh,0fbh,0b2h	; 657a
	defb 00fh,0c9h,0b2h,05bh,0d5h,0b2h	; 6580
	defb 00fh,00eh,0b3h,063h,020h,0b3h	; 6586
	defb 00fh,032h,0b3h,07dh,0a2h,0b3h	; 658c
	defb 00fh,00fh,0b4h,092h,03eh,0b4h	; 6592
	defb 00ch,057h,0b4h,0a0h,093h,0b4h	; 6598
	defb 00ch,0c9h,0b4h,06dh,04ch,0b5h	; 659e
	defb 00ch,0c4h,0b5h,0c0h,0cah,0b7h	; 65a4
	defb 00fh,089h,07ah,065h,09bh,07ah	; 65aa
	defb 00bh,011h,079h,06dh,08dh,079h	; 65b0
	defb 00bh,0d1h,078h,075h,051h,079h	; 65b6
	defb 000h	; 65bc

; ----------------------------------------------------------------------
; DATOS copias_65BD: lista de copias de caracteres con la vuelta dada de la
;   fase 9 (p00:4D1B); lo leen p00:4FFB (61 bytes)
;   0x65bd..0x65fa  (61 bytes)
DATA_copias_65BD:
	defb 05bh,05dh,03ch,002h	; 65bd
	defb 086h,08bh,03ch,005h	; 65c1
	defb 084h,090h,0bch,002h	; 65c5
	defb 092h,099h,03ch,007h	; 65c9
	defb 0a0h,0a8h,024h,008h	; 65cd
	defb 0a0h,0a0h,09ch,008h	; 65d1
	defb 0a8h,0a8h,09ch,008h	; 65d5
	defb 0c0h,0c0h,08ch,020h	; 65d9
	defb 0e0h,0e0h,08ch,020h	; 65dd
	defb 06dh,0b0h,08ch,010h	; 65e1
	defb 065h,06ah,03ch,001h	; 65e5
	defb 066h,069h,03ch,001h	; 65e9
	defb 065h,06bh,0bch,002h	; 65ed
	defb 069h,067h,0bch,002h	; 65f1
	defb 06dh,0b0h,0a2h,010h	; 65f5
	defb 000h	; 65f9

; ----------------------------------------------------------------------
; DATOS graficos_65FA: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (49 bytes)
;   0x65fa..0x662b  (49 bytes)
DATA_graficos_65FA:
	defb 00dh,0ffh,0bdh,0a1h,016h,0beh	; 65fa
	defb 00dh,030h,0beh,0a7h,04fh,0beh	; 6600
	defb 00fh,0a8h,07ah,0c0h,0cah,07ah	; 6606
	defb 00fh,0c3h,07bh,0cch,0cah,07bh	; 660c
	defb 009h,064h,0b9h,0d0h,0e0h,0b9h	; 6612
	defb 00ch,0d1h,0b8h,0d0h,022h,0b9h	; 6618
	defb 00fh,011h,079h,06dh,08dh,079h	; 661e
	defb 00fh,0d1h,078h,075h,051h,079h	; 6624
	defb 000h	; 662a

; ----------------------------------------------------------------------
; DATOS copias_662B: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 9; lo leen
;   p00:522B (29 bytes)
;   0x662b..0x6648  (29 bytes)
DATA_copias_662B:
	defb 0c0h,0c6h,03ch,002h	; 662b
	defb 0c2h,0c4h,0bch,002h	; 662f
	defb 0c0h,0c8h,0bch,002h	; 6633
	defb 0c6h,0cah,0bch,002h	; 6637
	defb 06dh,0b0h,0bch,010h	; 663b
	defb 0d0h,0e0h,024h,00ah	; 663f
	defb 0d3h,0e2h,009h,00fh	; 6643
	defb 000h	; 6647

; ----------------------------------------------------------------------
; DATOS graficos_6648: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (37 bytes)
;   0x6648..0x666d  (37 bytes)
DATA_graficos_6648:
	defb 00fh,048h,0bah,060h,0afh,0bah	; 6648
	defb 00fh,0fbh,0bah,05bh,007h,0bbh	; 664e
	defb 00fh,00eh,0bbh,092h,03dh,0bbh	; 6654
	defb 00fh,056h,0bbh,0a1h,095h,0bbh	; 665a
	defb 00fh,070h,0beh,059h,080h,0beh	; 6660
	defb 00fh,0d2h,0bbh,0adh,0e7h,0bch	; 6666
	defb 000h	; 666c

; ----------------------------------------------------------------------
; DATOS copias_666D: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 9; lo leen
;   p00:522B (101 bytes)
;   0x666d..0x66d2  (101 bytes)
DATA_copias_666D:
	defb 066h,06fh,03ch,009h	; 666d
	defb 060h,078h,03ch,004h	; 6671
	defb 060h,07ch,0bch,00bh	; 6675
	defb 06dh,087h,0bch,001h	; 6679
	defb 082h,088h,03ch,004h	; 667d
	defb 086h,08ch,03ch,001h	; 6681
	defb 087h,08dh,03ch,001h	; 6685
	defb 07ch,08eh,03ch,004h	; 6689
	defb 092h,099h,03ch,007h	; 668d
	defb 05bh,05dh,03ch,002h	; 6691
	defb 0a1h,0a9h,0bch,004h	; 6695
	defb 0b5h,0d1h,03ch,007h	; 6699
	defb 0bdh,0d8h,03ch,001h	; 669d
	defb 0bfh,0d9h,03ch,002h	; 66a1
	defb 0cch,0dbh,03ch,001h	; 66a5
	defb 0c1h,0dch,03ch,001h	; 66a9
	defb 0b5h,0ddh,0bch,004h	; 66ad
	defb 0bah,0e1h,0bch,003h	; 66b1
	defb 0beh,0e4h,0bch,009h	; 66b5
	defb 0c8h,0edh,0bch,006h	; 66b9
	defb 0ddh,0f3h,03ch,006h	; 66bd
	defb 0e5h,0f9h,03ch,003h	; 66c1
	defb 0f1h,0fch,03ch,001h	; 66c5
	defb 0ceh,0fdh,0bch,003h	; 66c9
	defb 0fdh,0fdh,03ch,003h	; 66cd
	defb 000h	; 66d1

; ----------------------------------------------------------------------
; DATOS graficos_66D2: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (49 bytes)
;   0x66d2..0x6703  (49 bytes)
DATA_graficos_66D2:
	defb 01fh,000h,081h,067h,0beh,081h	; 66d2
	defb 01fh,096h,085h,063h,0ach,085h	; 66d8
	defb 01fh,093h,082h,0a4h,0fah,082h	; 66de
	defb 01fh,065h,083h,0cch,074h,083h	; 66e4
	defb 01dh,0afh,085h,066h,0b9h,085h	; 66ea
	defb 01fh,011h,079h,0e0h,08dh,079h	; 66f0
	defb 00fh,0d1h,078h,0f0h,051h,079h	; 66f6
	defb 00fh,0b9h,075h,0d0h,0afh,077h	; 66fc
	defb 000h	; 6702

; ----------------------------------------------------------------------
; DATOS graficos_6703: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:521F (31 bytes)
;   0x6703..0x6722  (31 bytes)
DATA_graficos_6703:
	defb 01fh,083h,083h,05fh,090h,083h	; 6703
	defb 01fh,09bh,083h,0b0h,0d5h,083h	; 6709
	defb 01fh,0ffh,083h,0beh,0e1h,084h	; 670f
	defb 01fh,011h,079h,0e0h,08dh,079h	; 6715
	defb 00fh,0d1h,078h,0f0h,051h,079h	; 671b
	defb 000h	; 6721

; ----------------------------------------------------------------------
; DATOS copias_6722: lista de copias de caracteres con la vuelta dada de la
;   fase 10 (p00:4D1B); lo leen p00:4FFB (37 bytes)
;   0x6722..0x6747  (37 bytes)
DATA_copias_6722:
	defb 070h,083h,0bch,013h	; 6722
	defb 0d0h,0d8h,03ch,008h	; 6726
	defb 07ch,096h,03ch,007h	; 672a
	defb 08fh,09dh,03ch,007h	; 672e
	defb 0a6h,0b3h,0bch,00dh	; 6732
	defb 0adh,0c0h,03ch,006h	; 6736
	defb 0bah,0c6h,03ch,006h	; 673a
	defb 0e0h,0e8h,0bch,008h	; 673e
	defb 0f0h,0f8h,0bch,008h	; 6742
	defb 000h	; 6746

; ----------------------------------------------------------------------
; DATOS copias_6747: lista de copias de caracteres con la vuelta dada
;   (p00:4D1B), de un cambio de graficos a mitad de la fase 10; lo leen
;   p00:522B (17 bytes)
;   0x6747..0x6758  (17 bytes)
DATA_copias_6747:
	defb 05fh,061h,03ch,002h	; 6747
	defb 07ch,096h,03ch,007h	; 674b
	defb 08fh,09dh,03ch,007h	; 674f
	defb 0b0h,0b7h,03ch,007h	; 6753
	defb 000h	; 6757

; ----------------------------------------------------------------------
; DATOS graficos_6758: lista de graficos (p00:4CB1): entradas de 6 bytes
;   (tercios y banco, RLE de los dibujos, primer caracter, RLE de los colores)
;   y un 0; lo leen p00:4FE1 (61 bytes)
;   0x6758..0x6795  (61 bytes)
DATA_graficos_6758:
	defb 01ah,0c3h,085h,070h,08ch,087h	; 6758
	defb 019h,00eh,089h,070h,0ceh,089h	; 675e
	defb 01ah,063h,08ah,061h,0c2h,08ah	; 6764
	defb 01bh,0f9h,08ah,06eh,00bh,08bh	; 676a
	defb 019h,01dh,08bh,08ah,0f6h,08bh	; 6770
	defb 01eh,0b0h,08ch,0a9h,0c8h,08ch	; 6776
	defb 01ch,0dbh,08ch,0ach,0fdh,08ch	; 677c
	defb 01ch,014h,08dh,060h,084h,08dh	; 6782
	defb 01ch,0d2h,08dh,0b0h,039h,090h	; 6788
	defb 01ah,08fh,092h,0b0h,007h,093h	; 678e
	defb 000h	; 6794

; ----------------------------------------------------------------------
; DATOS copias_6795: lista de copias de caracteres con la vuelta dada de la
;   fase 11 (p00:4D1B); lo leen p00:4FFB (25 bytes)
;   0x6795..0x67ae  (25 bytes)
DATA_copias_6795:
	defb 0a2h,0a5h,009h,003h	; 6795
	defb 090h,090h,0a1h,018h	; 6799
	defb 060h,060h,08ch,00eh	; 679d
	defb 0b0h,0a8h,08ch,040h	; 67a1
	defb 0f0h,0e8h,08ch,010h	; 67a5
	defb 0b0h,0c2h,092h,008h	; 67a9
	defb 000h	; 67ad

; ----------------------------------------------------------------------
; DATOS paleta_67AE: paleta de MSX2 (la de p00:5718; p00:4B94): de 3 en 3, el
;   color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:571E (49 bytes)
;   0x67ae..0x67df  (49 bytes)
DATA_paleta_67AE:
	defb 000h,000h,000h	; 67ae
	defb 001h,000h,000h	; 67b1
	defb 002h,011h,006h	; 67b4
	defb 003h,033h,007h	; 67b7
	defb 004h,017h,001h	; 67ba
	defb 005h,027h,003h	; 67bd
	defb 006h,051h,001h	; 67c0
	defb 007h,027h,006h	; 67c3
	defb 008h,071h,001h	; 67c6
	defb 009h,073h,003h	; 67c9
	defb 00ah,061h,006h	; 67cc
	defb 00bh,064h,006h	; 67cf
	defb 00ch,011h,004h	; 67d2
	defb 00dh,065h,002h	; 67d5
	defb 00eh,055h,005h	; 67d8
	defb 00fh,077h,007h	; 67db
	defb 0ffh	; 67de

; ----------------------------------------------------------------------
; DATOS paletas_por_fase: un puntero por fase a su paleta de MSX2 (p00:51A2:
;   0x67DD + 2 x fase); lo leen p00:51A5 (22 bytes)
;   0x67df..0x67f5  (22 bytes)
DATA_paletas_por_fase:
	defw 067f5h,06820h,0684bh,06876h,068a1h,068cch,068f7h,06922h	; 67df
	defw 0694dh,06978h,069a3h	; 67ef  -> DATA_paleta_694D DATA_paleta_6978 DATA_paleta_69A3

; ----------------------------------------------------------------------
; DATOS paleta_67F5: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x67f5..0x6820  (43 bytes)
DATA_paleta_67F5:
	defb 002h,022h,006h	; 67f5
	defb 003h,053h,007h	; 67f8
	defb 004h,006h,000h	; 67fb
	defb 005h,026h,004h	; 67fe
	defb 006h,050h,000h	; 6801
	defb 007h,007h,006h	; 6804
	defb 008h,070h,000h	; 6807
	defb 009h,071h,003h	; 680a
	defb 00ah,070h,007h	; 680d
	defb 00bh,074h,007h	; 6810
	defb 00ch,000h,004h	; 6813
	defb 00dh,065h,003h	; 6816
	defb 00eh,055h,005h	; 6819
	defb 00fh,077h,007h	; 681c
	defb 0ffh	; 681f

; ----------------------------------------------------------------------
; DATOS paleta_6820: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x6820..0x684b  (43 bytes)
DATA_paleta_6820:
	defb 002h,011h,005h	; 6820
	defb 003h,032h,006h	; 6823
	defb 004h,006h,000h	; 6826
	defb 005h,026h,004h	; 6829
	defb 006h,041h,001h	; 682c
	defb 007h,007h,006h	; 682f
	defb 008h,070h,000h	; 6832
	defb 009h,072h,002h	; 6835
	defb 00ah,071h,006h	; 6838
	defb 00bh,074h,006h	; 683b
	defb 00ch,001h,003h	; 683e
	defb 00dh,065h,003h	; 6841
	defb 00eh,055h,005h	; 6844
	defb 00fh,077h,007h	; 6847
	defb 0ffh	; 684a

; ----------------------------------------------------------------------
; DATOS paleta_684B: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x684b..0x6876  (43 bytes)
DATA_paleta_684B:
	defb 002h,022h,006h	; 684b
	defb 003h,053h,007h	; 684e
	defb 004h,017h,001h	; 6851
	defb 005h,017h,003h	; 6854
	defb 006h,050h,000h	; 6857
	defb 007h,007h,006h	; 685a
	defb 008h,070h,000h	; 685d
	defb 009h,071h,003h	; 6860
	defb 00ah,070h,007h	; 6863
	defb 00bh,074h,007h	; 6866
	defb 00ch,000h,004h	; 6869
	defb 00dh,065h,003h	; 686c
	defb 00eh,055h,005h	; 686f
	defb 00fh,077h,007h	; 6872
	defb 0ffh	; 6875

; ----------------------------------------------------------------------
; DATOS paleta_6876: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x6876..0x68a1  (43 bytes)
DATA_paleta_6876:
	defb 002h,021h,004h	; 6876
	defb 003h,032h,005h	; 6879
	defb 004h,015h,002h	; 687c
	defb 005h,037h,003h	; 687f
	defb 006h,061h,001h	; 6882
	defb 007h,047h,005h	; 6885
	defb 008h,070h,000h	; 6888
	defb 009h,071h,003h	; 688b
	defb 00ah,071h,005h	; 688e
	defb 00bh,073h,006h	; 6891
	defb 00ch,011h,003h	; 6894
	defb 00dh,051h,003h	; 6897
	defb 00eh,056h,005h	; 689a
	defb 00fh,077h,007h	; 689d
	defb 0ffh	; 68a0

; ----------------------------------------------------------------------
; DATOS paleta_68A1: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x68a1..0x68cc  (43 bytes)
DATA_paleta_68A1:
	defb 002h,022h,006h	; 68a1
	defb 003h,053h,007h	; 68a4
	defb 004h,015h,002h	; 68a7
	defb 005h,037h,003h	; 68aa
	defb 006h,061h,001h	; 68ad
	defb 007h,007h,006h	; 68b0
	defb 008h,070h,000h	; 68b3
	defb 009h,071h,003h	; 68b6
	defb 00ah,071h,005h	; 68b9
	defb 00bh,073h,006h	; 68bc
	defb 00ch,000h,004h	; 68bf
	defb 00dh,065h,003h	; 68c2
	defb 00eh,056h,005h	; 68c5
	defb 00fh,077h,007h	; 68c8
	defb 0ffh	; 68cb

; ----------------------------------------------------------------------
; DATOS paleta_68CC: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x68cc..0x68f7  (43 bytes)
DATA_paleta_68CC:
	defb 002h,022h,006h	; 68cc
	defb 003h,053h,007h	; 68cf
	defb 004h,006h,000h	; 68d2
	defb 005h,026h,004h	; 68d5
	defb 006h,040h,000h	; 68d8
	defb 007h,007h,006h	; 68db
	defb 008h,070h,000h	; 68de
	defb 009h,070h,003h	; 68e1
	defb 00ah,070h,007h	; 68e4
	defb 00bh,074h,007h	; 68e7
	defb 00ch,000h,004h	; 68ea
	defb 00dh,065h,003h	; 68ed
	defb 00eh,055h,005h	; 68f0
	defb 00fh,077h,007h	; 68f3
	defb 0ffh	; 68f6

; ----------------------------------------------------------------------
; DATOS paleta_68F7: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x68f7..0x6922  (43 bytes)
DATA_paleta_68F7:
	defb 002h,022h,006h	; 68f7
	defb 003h,053h,007h	; 68fa
	defb 004h,006h,000h	; 68fd
	defb 005h,017h,003h	; 6900
	defb 006h,050h,000h	; 6903
	defb 007h,007h,006h	; 6906
	defb 008h,070h,000h	; 6909
	defb 009h,070h,003h	; 690c
	defb 00ah,061h,005h	; 690f
	defb 00bh,071h,007h	; 6912
	defb 00ch,000h,004h	; 6915
	defb 00dh,065h,003h	; 6918
	defb 00eh,055h,005h	; 691b
	defb 00fh,077h,007h	; 691e
	defb 0ffh	; 6921

; ----------------------------------------------------------------------
; DATOS paleta_6922: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x6922..0x694d  (43 bytes)
DATA_paleta_6922:
	defb 002h,000h,005h	; 6922
	defb 003h,053h,007h	; 6925
	defb 004h,017h,001h	; 6928
	defb 005h,016h,003h	; 692b
	defb 006h,040h,000h	; 692e
	defb 007h,027h,005h	; 6931
	defb 008h,070h,000h	; 6934
	defb 009h,070h,002h	; 6937
	defb 00ah,070h,007h	; 693a
	defb 00bh,074h,007h	; 693d
	defb 00ch,000h,003h	; 6940
	defb 00dh,074h,001h	; 6943
	defb 00eh,055h,005h	; 6946
	defb 00fh,077h,007h	; 6949
	defb 0ffh	; 694c

; ----------------------------------------------------------------------
; DATOS paleta_694D: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x694d..0x6978  (43 bytes)
DATA_paleta_694D:
	defb 002h,021h,004h	; 694d
	defb 003h,032h,005h	; 6950
	defb 004h,015h,002h	; 6953
	defb 005h,037h,003h	; 6956
	defb 006h,061h,001h	; 6959
	defb 007h,007h,006h	; 695c
	defb 008h,070h,000h	; 695f
	defb 009h,071h,003h	; 6962
	defb 00ah,071h,006h	; 6965
	defb 00bh,063h,007h	; 6968
	defb 00ch,011h,003h	; 696b
	defb 00dh,065h,003h	; 696e
	defb 00eh,056h,005h	; 6971
	defb 00fh,077h,007h	; 6974
	defb 0ffh	; 6977

; ----------------------------------------------------------------------
; DATOS paleta_6978: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0 (43 bytes)
;   0x6978..0x69a3  (43 bytes)
DATA_paleta_6978:
	defb 002h,021h,004h	; 6978
	defb 003h,052h,005h	; 697b
	defb 004h,015h,002h	; 697e
	defb 005h,037h,003h	; 6981
	defb 006h,061h,001h	; 6984
	defb 007h,037h,007h	; 6987
	defb 008h,070h,000h	; 698a
	defb 009h,071h,003h	; 698d
	defb 00ah,071h,005h	; 6990
	defb 00bh,073h,006h	; 6993
	defb 00ch,011h,003h	; 6996
	defb 00dh,065h,003h	; 6999
	defb 00eh,056h,005h	; 699c
	defb 00fh,077h,007h	; 699f
	defb 0ffh	; 69a2

; ----------------------------------------------------------------------
; DATOS paleta_69A3: una paleta de MSX2 (p00:4B94, solo si 0x002D no es 0): de
;   3 en 3, el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40
;   bytes a 0xECC0 aunque sea mas corta; lo leen p00:4BA0, p00:5712 (43 bytes)
;   0x69a3..0x69ce  (43 bytes)
DATA_paleta_69A3:
	defb 002h,021h,004h	; 69a3
	defb 003h,052h,005h	; 69a6
	defb 004h,015h,002h	; 69a9
	defb 005h,037h,003h	; 69ac
	defb 006h,061h,001h	; 69af
	defb 007h,037h,007h	; 69b2
	defb 008h,070h,000h	; 69b5
	defb 009h,071h,003h	; 69b8
	defb 00ah,071h,005h	; 69bb
	defb 00bh,073h,006h	; 69be
	defb 00ch,011h,003h	; 69c1
	defb 00dh,065h,003h	; 69c4
	defb 00eh,056h,005h	; 69c7
	defb 00fh,077h,007h	; 69ca
	defb 0ffh	; 69cd

; ----------------------------------------------------------------------
; DATOS paletas_69CC: un puntero por valor de 0xE440 a la paleta del jefe
;   (p00:5701: 0x69CC + 2 x 0xE440) (p00:570F); acaba donde empieza la primera
;   paleta a la que apunta; lo leen p00:570F (34 bytes)
;   0x69ce..0x69f0  (34 bytes)
DATA_paletas_69CC:
	defw 069f0h,06a1bh,069f0h,069f0h,06a1bh,06a1ch,06a47h,06a72h	; 69ce
	defw 06a9dh,06a1bh,06a1bh,06af3h,06b1eh,06ac8h,06b49h,069a3h	; 69de
	defw 06b49h	; 69ee  -> DATA_paleta_6B49

; ----------------------------------------------------------------------
; DATOS paleta_69F0: paleta de MSX2 (jefe 1, 3, 4; p00:4B94): de 3 en 3, el
;   color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x69f0..0x6a1b  (43 bytes)
DATA_paleta_69F0:
	defb 002h,022h,006h	; 69f0
	defb 003h,053h,007h	; 69f3
	defb 004h,006h,000h	; 69f6
	defb 005h,026h,004h	; 69f9
	defb 006h,050h,000h	; 69fc
	defb 007h,007h,006h	; 69ff
	defb 008h,070h,000h	; 6a02
	defb 009h,071h,003h	; 6a05
	defb 00ah,070h,007h	; 6a08
	defb 00bh,074h,007h	; 6a0b
	defb 00ch,000h,004h	; 6a0e
	defb 00dh,065h,003h	; 6a11
	defb 00eh,055h,005h	; 6a14
	defb 00fh,077h,007h	; 6a17
	defb 0ffh	; 6a1a

; ----------------------------------------------------------------------
; DATOS paleta_6A1B: paleta de MSX2 (jefe 2, 5, 10, 11; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (1 bytes)
;   0x6a1b..0x6a1c  (1 bytes)
DATA_paleta_6A1B:
	defb 0ffh	; 6a1b

; ----------------------------------------------------------------------
; DATOS paleta_6A1C: paleta de MSX2 (jefe 6; p00:4B94): de 3 en 3, el color,
;   rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a 0xECC0
;   aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6a1c..0x6a47  (43 bytes)
DATA_paleta_6A1C:
	defb 002h,022h,006h	; 6a1c
	defb 003h,053h,007h	; 6a1f
	defb 004h,006h,000h	; 6a22
	defb 005h,026h,004h	; 6a25
	defb 006h,040h,000h	; 6a28
	defb 007h,047h,006h	; 6a2b
	defb 008h,070h,000h	; 6a2e
	defb 009h,062h,004h	; 6a31
	defb 00ah,071h,007h	; 6a34
	defb 00bh,064h,006h	; 6a37
	defb 00ch,000h,004h	; 6a3a
	defb 00dh,065h,003h	; 6a3d
	defb 00eh,055h,005h	; 6a40
	defb 00fh,077h,007h	; 6a43
	defb 0ffh	; 6a46

; ----------------------------------------------------------------------
; DATOS paleta_6A47: paleta de MSX2 (jefe 7; p00:4B94): de 3 en 3, el color,
;   rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a 0xECC0
;   aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6a47..0x6a72  (43 bytes)
DATA_paleta_6A47:
	defb 002h,011h,005h	; 6a47
	defb 003h,032h,006h	; 6a4a
	defb 004h,006h,000h	; 6a4d
	defb 005h,026h,004h	; 6a50
	defb 006h,041h,001h	; 6a53
	defb 007h,007h,006h	; 6a56
	defb 008h,070h,000h	; 6a59
	defb 009h,072h,002h	; 6a5c
	defb 00ah,071h,006h	; 6a5f
	defb 00bh,074h,006h	; 6a62
	defb 00ch,001h,003h	; 6a65
	defb 00dh,065h,003h	; 6a68
	defb 00eh,055h,005h	; 6a6b
	defb 00fh,077h,007h	; 6a6e
	defb 0ffh	; 6a71

; ----------------------------------------------------------------------
; DATOS paleta_6A72: paleta de MSX2 (jefe 8; p00:4B94): de 3 en 3, el color,
;   rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a 0xECC0
;   aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6a72..0x6a9d  (43 bytes)
DATA_paleta_6A72:
	defb 002h,022h,006h	; 6a72
	defb 003h,053h,007h	; 6a75
	defb 004h,006h,000h	; 6a78
	defb 005h,026h,004h	; 6a7b
	defb 006h,050h,000h	; 6a7e
	defb 007h,007h,006h	; 6a81
	defb 008h,070h,000h	; 6a84
	defb 009h,071h,003h	; 6a87
	defb 00ah,070h,007h	; 6a8a
	defb 00bh,074h,007h	; 6a8d
	defb 00ch,000h,004h	; 6a90
	defb 00dh,065h,003h	; 6a93
	defb 00eh,055h,005h	; 6a96
	defb 00fh,077h,007h	; 6a99
	defb 0ffh	; 6a9c

; ----------------------------------------------------------------------
; DATOS paleta_6A9D: paleta de MSX2 (jefe 9; p00:4B94): de 3 en 3, el color,
;   rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a 0xECC0
;   aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6a9d..0x6ac8  (43 bytes)
DATA_paleta_6A9D:
	defb 002h,022h,006h	; 6a9d
	defb 003h,053h,007h	; 6aa0
	defb 004h,006h,000h	; 6aa3
	defb 005h,007h,002h	; 6aa6
	defb 006h,050h,000h	; 6aa9
	defb 007h,007h,005h	; 6aac
	defb 008h,070h,000h	; 6aaf
	defb 009h,071h,003h	; 6ab2
	defb 00ah,070h,007h	; 6ab5
	defb 00bh,074h,007h	; 6ab8
	defb 00ch,000h,004h	; 6abb
	defb 00dh,065h,003h	; 6abe
	defb 00eh,055h,005h	; 6ac1
	defb 00fh,077h,007h	; 6ac4
	defb 0ffh	; 6ac7

; ----------------------------------------------------------------------
; DATOS paleta_6AC8: paleta de MSX2 (jefe 14; p00:4B94): de 3 en 3, el color,
;   rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a 0xECC0
;   aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6ac8..0x6af3  (43 bytes)
DATA_paleta_6AC8:
	defb 002h,022h,006h	; 6ac8
	defb 003h,053h,007h	; 6acb
	defb 004h,006h,000h	; 6ace
	defb 005h,007h,002h	; 6ad1
	defb 006h,050h,000h	; 6ad4
	defb 007h,007h,005h	; 6ad7
	defb 008h,070h,000h	; 6ada
	defb 009h,070h,003h	; 6add
	defb 00ah,061h,005h	; 6ae0
	defb 00bh,071h,007h	; 6ae3
	defb 00ch,000h,004h	; 6ae6
	defb 00dh,065h,003h	; 6ae9
	defb 00eh,055h,005h	; 6aec
	defb 00fh,077h,007h	; 6aef
	defb 0ffh	; 6af2

; ----------------------------------------------------------------------
; DATOS paleta_6AF3: paleta de MSX2 (jefe 12; p00:4B94): de 3 en 3, el color,
;   rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a 0xECC0
;   aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6af3..0x6b1e  (43 bytes)
DATA_paleta_6AF3:
	defb 002h,043h,006h	; 6af3
	defb 003h,053h,007h	; 6af6
	defb 004h,006h,000h	; 6af9
	defb 005h,026h,004h	; 6afc
	defb 006h,050h,000h	; 6aff
	defb 007h,007h,006h	; 6b02
	defb 008h,070h,000h	; 6b05
	defb 009h,071h,003h	; 6b08
	defb 00ah,070h,007h	; 6b0b
	defb 00bh,074h,007h	; 6b0e
	defb 00ch,012h,003h	; 6b11
	defb 00dh,065h,003h	; 6b14
	defb 00eh,055h,005h	; 6b17
	defb 00fh,077h,007h	; 6b1a
	defb 0ffh	; 6b1d

; ----------------------------------------------------------------------
; DATOS paleta_6B1E: paleta de MSX2 (jefe 13; p00:4B94): de 3 en 3, el color,
;   rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a 0xECC0
;   aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6b1e..0x6b49  (43 bytes)
DATA_paleta_6B1E:
	defb 002h,022h,006h	; 6b1e
	defb 003h,053h,007h	; 6b21
	defb 004h,006h,000h	; 6b24
	defb 005h,026h,004h	; 6b27
	defb 006h,050h,000h	; 6b2a
	defb 007h,007h,006h	; 6b2d
	defb 008h,070h,000h	; 6b30
	defb 009h,071h,003h	; 6b33
	defb 00ah,070h,007h	; 6b36
	defb 00bh,074h,007h	; 6b39
	defb 00ch,000h,004h	; 6b3c
	defb 00dh,065h,003h	; 6b3f
	defb 00eh,055h,005h	; 6b42
	defb 00fh,077h,007h	; 6b45
	defb 0ffh	; 6b48

; ----------------------------------------------------------------------
; DATOS paleta_6B49: paleta de MSX2 (jefe 15, 17; p00:4B94): de 3 en 3, el
;   color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6b49..0x6b74  (43 bytes)
DATA_paleta_6B49:
	defb 002h,022h,006h	; 6b49
	defb 003h,053h,007h	; 6b4c
	defb 004h,006h,000h	; 6b4f
	defb 005h,026h,004h	; 6b52
	defb 006h,050h,000h	; 6b55
	defb 007h,007h,006h	; 6b58
	defb 008h,070h,000h	; 6b5b
	defb 009h,071h,003h	; 6b5e
	defb 00ah,070h,007h	; 6b61
	defb 00bh,074h,007h	; 6b64
	defb 00ch,000h,004h	; 6b67
	defb 00dh,065h,003h	; 6b6a
	defb 00eh,055h,005h	; 6b6d
	defb 00fh,077h,007h	; 6b70
	defb 0ffh	; 6b73

; ----------------------------------------------------------------------
; DATOS paletas_6B74: un puntero por valor de A a una paleta (p00:5709: 0x6B74
;   + 2 x A) (p00:570F); acaba donde empieza la primera paleta a la que
;   apunta; lo leen p00:570F (16 bytes)
;   0x6b74..0x6b84  (16 bytes)
DATA_paletas_6B74:
	defw 06b84h,06bafh,06bdah,06c05h,06c30h,06c5bh,06c86h,06cb1h	; 6b74

; ----------------------------------------------------------------------
; DATOS paleta_6B84: paleta de MSX2 (la 0 de p00:5709; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6b84..0x6baf  (43 bytes)
DATA_paleta_6B84:
	defb 002h,011h,006h	; 6b84
	defb 003h,033h,007h	; 6b87
	defb 004h,017h,001h	; 6b8a
	defb 005h,017h,003h	; 6b8d
	defb 006h,051h,001h	; 6b90
	defb 007h,027h,006h	; 6b93
	defb 008h,070h,000h	; 6b96
	defb 009h,070h,002h	; 6b99
	defb 00ah,061h,006h	; 6b9c
	defb 00bh,064h,006h	; 6b9f
	defb 00ch,011h,004h	; 6ba2
	defb 00dh,065h,002h	; 6ba5
	defb 00eh,055h,005h	; 6ba8
	defb 00fh,077h,007h	; 6bab
	defb 0ffh	; 6bae

; ----------------------------------------------------------------------
; DATOS paleta_6BAF: paleta de MSX2 (la 1 de p00:5709; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6baf..0x6bda  (43 bytes)
DATA_paleta_6BAF:
	defb 002h,022h,006h	; 6baf
	defb 003h,053h,007h	; 6bb2
	defb 004h,006h,000h	; 6bb5
	defb 005h,026h,004h	; 6bb8
	defb 006h,050h,000h	; 6bbb
	defb 007h,007h,006h	; 6bbe
	defb 008h,070h,000h	; 6bc1
	defb 009h,071h,003h	; 6bc4
	defb 00ah,070h,007h	; 6bc7
	defb 00bh,074h,007h	; 6bca
	defb 00ch,000h,004h	; 6bcd
	defb 00dh,065h,003h	; 6bd0
	defb 00eh,055h,005h	; 6bd3
	defb 00fh,077h,007h	; 6bd6
	defb 0ffh	; 6bd9

; ----------------------------------------------------------------------
; DATOS paleta_6BDA: paleta de MSX2 (la 2 de p00:5709; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6bda..0x6c05  (43 bytes)
DATA_paleta_6BDA:
	defb 002h,022h,006h	; 6bda
	defb 003h,053h,007h	; 6bdd
	defb 004h,017h,001h	; 6be0
	defb 005h,027h,003h	; 6be3
	defb 006h,050h,000h	; 6be6
	defb 007h,007h,006h	; 6be9
	defb 008h,070h,000h	; 6bec
	defb 009h,071h,003h	; 6bef
	defb 00ah,074h,005h	; 6bf2
	defb 00bh,074h,006h	; 6bf5
	defb 00ch,000h,004h	; 6bf8
	defb 00dh,065h,003h	; 6bfb
	defb 00eh,055h,005h	; 6bfe
	defb 00fh,077h,007h	; 6c01
	defb 0ffh	; 6c04

; ----------------------------------------------------------------------
; DATOS paleta_6C05: paleta de MSX2 (la 3 de p00:5709; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6c05..0x6c30  (43 bytes)
DATA_paleta_6C05:
	defb 002h,022h,006h	; 6c05
	defb 003h,053h,007h	; 6c08
	defb 004h,017h,001h	; 6c0b
	defb 005h,027h,003h	; 6c0e
	defb 006h,050h,000h	; 6c11
	defb 007h,007h,006h	; 6c14
	defb 008h,070h,000h	; 6c17
	defb 009h,071h,003h	; 6c1a
	defb 00ah,070h,007h	; 6c1d
	defb 00bh,074h,007h	; 6c20
	defb 00ch,000h,004h	; 6c23
	defb 00dh,065h,003h	; 6c26
	defb 00eh,055h,005h	; 6c29
	defb 00fh,077h,007h	; 6c2c
	defb 0ffh	; 6c2f

; ----------------------------------------------------------------------
; DATOS paleta_6C30: paleta de MSX2 (la 4 de p00:5709; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6c30..0x6c5b  (43 bytes)
DATA_paleta_6C30:
	defb 002h,022h,006h	; 6c30
	defb 003h,053h,007h	; 6c33
	defb 004h,017h,001h	; 6c36
	defb 005h,027h,003h	; 6c39
	defb 006h,050h,000h	; 6c3c
	defb 007h,007h,006h	; 6c3f
	defb 008h,071h,001h	; 6c42
	defb 009h,071h,003h	; 6c45
	defb 00ah,074h,005h	; 6c48
	defb 00bh,074h,006h	; 6c4b
	defb 00ch,000h,004h	; 6c4e
	defb 00dh,065h,003h	; 6c51
	defb 00eh,055h,005h	; 6c54
	defb 00fh,077h,007h	; 6c57
	defb 0ffh	; 6c5a

; ----------------------------------------------------------------------
; DATOS paleta_6C5B: paleta de MSX2 (la 5 de p00:5709; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6c5b..0x6c86  (43 bytes)
DATA_paleta_6C5B:
	defb 002h,022h,006h	; 6c5b
	defb 003h,053h,007h	; 6c5e
	defb 004h,017h,001h	; 6c61
	defb 005h,027h,003h	; 6c64
	defb 006h,050h,000h	; 6c67
	defb 007h,007h,006h	; 6c6a
	defb 008h,070h,000h	; 6c6d
	defb 009h,073h,004h	; 6c70
	defb 00ah,074h,005h	; 6c73
	defb 00bh,074h,006h	; 6c76
	defb 00ch,000h,004h	; 6c79
	defb 00dh,065h,003h	; 6c7c
	defb 00eh,055h,005h	; 6c7f
	defb 00fh,077h,007h	; 6c82
	defb 0ffh	; 6c85

; ----------------------------------------------------------------------
; DATOS paleta_6C86: paleta de MSX2 (la 6 de p00:5709; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6c86..0x6cb1  (43 bytes)
DATA_paleta_6C86:
	defb 002h,001h,006h	; 6c86
	defb 003h,053h,006h	; 6c89
	defb 004h,017h,001h	; 6c8c
	defb 005h,027h,003h	; 6c8f
	defb 006h,040h,000h	; 6c92
	defb 007h,007h,006h	; 6c95
	defb 008h,070h,000h	; 6c98
	defb 009h,071h,003h	; 6c9b
	defb 00ah,074h,005h	; 6c9e
	defb 00bh,074h,006h	; 6ca1
	defb 00ch,002h,003h	; 6ca4
	defb 00dh,065h,003h	; 6ca7
	defb 00eh,055h,005h	; 6caa
	defb 00fh,077h,007h	; 6cad
	defb 0ffh	; 6cb0

; ----------------------------------------------------------------------
; DATOS paleta_6CB1: paleta de MSX2 (la 7 de p00:5709; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:5712 (43 bytes)
;   0x6cb1..0x6cdc  (43 bytes)
DATA_paleta_6CB1:
	defb 002h,022h,006h	; 6cb1
	defb 003h,053h,007h	; 6cb4
	defb 004h,004h,000h	; 6cb7
	defb 005h,007h,003h	; 6cba
	defb 006h,040h,000h	; 6cbd
	defb 007h,027h,006h	; 6cc0
	defb 008h,070h,000h	; 6cc3
	defb 009h,071h,003h	; 6cc6
	defb 00ah,070h,007h	; 6cc9
	defb 00bh,074h,006h	; 6ccc
	defb 00ch,000h,004h	; 6ccf
	defb 00dh,065h,003h	; 6cd2
	defb 00eh,055h,005h	; 6cd5
	defb 00fh,077h,007h	; 6cd8
	defb 0ffh	; 6cdb

; ----------------------------------------------------------------------
; DATOS paletas_que_cambian: un puntero por fase a su lista de paletas que
;   cambian cada 4 cuadros (p00:56E4: 0x6CDA + 2 x fase; las fases sin ninguna
;   apuntan a 0x6D5D, que no se lee); lo leen p00:56EB (22 bytes)
;   0x6cdc..0x6cf2  (22 bytes)
DATA_paletas_que_cambian:
	defw 06cf2h,06d5dh,06d5dh,06d5dh,06d5dh,06d25h,06d5dh,06d41h	; 6cdc
	defw 06d5dh,06d5dh,06d5dh	; 6cec  -> DATA_cuantas_paletas DATA_cuantas_paletas DATA_cuantas_paletas

; ----------------------------------------------------------------------
; DATOS paletas_fase_1: las 8 paletas que se alternan en la fase 1 (p00:56F2);
;   lo leen p00:56F7 (16 bytes)
;   0x6cf2..0x6d02  (16 bytes)
DATA_paletas_fase_1:
	defw 06d02h,06d09h,06d10h,06d17h,06d1eh,06d17h,06d10h,06d09h	; 6cf2

; ----------------------------------------------------------------------
; DATOS paleta_6D02: paleta de MSX2 (la 0 de la fase 1; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (7 bytes)
;   0x6d02..0x6d09  (7 bytes)
DATA_paleta_6D02:
	defb 006h,050h,000h	; 6d02
	defb 009h,071h,003h	; 6d05
	defb 0ffh	; 6d08

; ----------------------------------------------------------------------
; DATOS paleta_6D09: paleta de MSX2 (la 1 de la fase 1; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (7 bytes)
;   0x6d09..0x6d10  (7 bytes)
DATA_paleta_6D09:
	defb 006h,040h,000h	; 6d09
	defb 009h,077h,007h	; 6d0c
	defb 0ffh	; 6d0f

; ----------------------------------------------------------------------
; DATOS paleta_6D10: paleta de MSX2 (la 2 de la fase 1; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (7 bytes)
;   0x6d10..0x6d17  (7 bytes)
DATA_paleta_6D10:
	defb 006h,030h,000h	; 6d10
	defb 009h,075h,006h	; 6d13
	defb 0ffh	; 6d16

; ----------------------------------------------------------------------
; DATOS paleta_6D17: paleta de MSX2 (la 3 de la fase 1; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (7 bytes)
;   0x6d17..0x6d1e  (7 bytes)
DATA_paleta_6D17:
	defb 006h,020h,000h	; 6d17
	defb 009h,073h,005h	; 6d1a
	defb 0ffh	; 6d1d

; ----------------------------------------------------------------------
; DATOS paleta_6D1E: paleta de MSX2 (la 4 de la fase 1; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (7 bytes)
;   0x6d1e..0x6d25  (7 bytes)
DATA_paleta_6D1E:
	defb 006h,000h,000h	; 6d1e
	defb 009h,071h,003h	; 6d21
	defb 0ffh	; 6d24

; ----------------------------------------------------------------------
; DATOS paletas_fase_6: las 6 paletas que se alternan en la fase 6 (p00:56F2);
;   lo leen p00:56F7 (12 bytes)
;   0x6d25..0x6d31  (12 bytes)
DATA_paletas_fase_6:
	defw 06d31h,06d35h,06d39h,06d35h,06d31h,06d3dh	; 6d25

; ----------------------------------------------------------------------
; DATOS paleta_6D31: paleta de MSX2 (la 0 de la fase 6; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (4 bytes)
;   0x6d31..0x6d35  (4 bytes)
DATA_paleta_6D31:
	defb 009h,070h,003h	; 6d31
	defb 0ffh	; 6d34

; ----------------------------------------------------------------------
; DATOS paleta_6D35: paleta de MSX2 (la 1 de la fase 6; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (4 bytes)
;   0x6d35..0x6d39  (4 bytes)
DATA_paleta_6D35:
	defb 009h,070h,005h	; 6d35
	defb 0ffh	; 6d38

; ----------------------------------------------------------------------
; DATOS paleta_6D39: paleta de MSX2 (la 2 de la fase 6; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (4 bytes)
;   0x6d39..0x6d3d  (4 bytes)
DATA_paleta_6D39:
	defb 009h,070h,007h	; 6d39
	defb 0ffh	; 6d3c

; ----------------------------------------------------------------------
; DATOS paleta_6D3D: paleta de MSX2 (la 5 de la fase 6; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (4 bytes)
;   0x6d3d..0x6d41  (4 bytes)
DATA_paleta_6D3D:
	defb 009h,070h,001h	; 6d3d
	defb 0ffh	; 6d40

; ----------------------------------------------------------------------
; DATOS paletas_fase_8: las 6 paletas que se alternan en la fase 8 (p00:56F2);
;   lo leen p00:56F7 (12 bytes)
;   0x6d41..0x6d4d  (12 bytes)
DATA_paletas_fase_8:
	defw 06d4dh,06d51h,06d55h,06d59h,06d55h,06d51h	; 6d41

; ----------------------------------------------------------------------
; DATOS paleta_6D4D: paleta de MSX2 (la 0 de la fase 8; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (4 bytes)
;   0x6d4d..0x6d51  (4 bytes)
DATA_paleta_6D4D:
	defb 00dh,074h,001h	; 6d4d
	defb 0ffh	; 6d50

; ----------------------------------------------------------------------
; DATOS paleta_6D51: paleta de MSX2 (la 1 de la fase 8; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (4 bytes)
;   0x6d51..0x6d55  (4 bytes)
DATA_paleta_6D51:
	defb 00dh,074h,003h	; 6d51
	defb 0ffh	; 6d54

; ----------------------------------------------------------------------
; DATOS paleta_6D55: paleta de MSX2 (la 2 de la fase 8; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (4 bytes)
;   0x6d55..0x6d59  (4 bytes)
DATA_paleta_6D55:
	defb 00dh,074h,005h	; 6d55
	defb 0ffh	; 6d58

; ----------------------------------------------------------------------
; DATOS paleta_6D59: paleta de MSX2 (la 3 de la fase 8; p00:4B94): de 3 en 3,
;   el color, rojo y azul, y verde; acaba en 0xFF. p00:4B9D copia 0x40 bytes a
;   0xECC0 aunque sea mas corta; lo leen p00:56FB (4 bytes)
;   0x6d59..0x6d5d  (4 bytes)
DATA_paleta_6D59:
	defb 00dh,074h,007h	; 6d59
	defb 0ffh	; 6d5c

; ----------------------------------------------------------------------
; DATOS cuantas_paletas: una por fase: cuantas paletas tiene su lista
;   (p00:56C7: 0x6D5C + fase; 0 = ninguna); lo leen p00:56CD (11 bytes)
;   0x6d5d..0x6d68  (11 bytes)
DATA_cuantas_paletas:
	defb 008h,000h,000h,000h,000h,006h,000h,006h,000h,000h,000h	; 6d5d  ...........

; ----------------------------------------------------------------------
; DATOS rle_6D68: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6D68
;   6D68-6DF9); lo leen p00:4CFF, p00:4B3C (145 bytes)
;   0x6d68..0x6df9  (145 bytes)
DATA_rle_6D68:
	defb 0d4h,041h,0b8h,0e2h,0f4h,080h,0c0h,0e0h,0f8h,07bh,073h,05bh,01dh,028h,0c2h,074h	; 6d68  .A.......{s[.(.t
	defb 0d0h,0ffh,02fh,00fh,0beh,0fbh,07fh,03fh,0bfh,0fch,0ffh,0ffh,0f3h,020h,0c2h,09fh	; 6d78  ../....?..... ..
	defb 0ffh,01fh,013h,082h,0e0h,083h,040h,0d8h,0feh,0fch,008h,020h,009h,008h,000h,041h	; 6d88  ......@.... ...A
	defb 002h,000h,024h,083h,003h,082h,004h,00ch,09bh,000h,010h,0a1h,007h,001h,003h,007h	; 6d98  ..$.............
	defb 01fh,0f0h,0e4h,0c8h,0d8h,090h,020h,0f3h,0ffh,0ceh,0afh,00fh,04fh,0cfh,0b7h,0f0h	; 6da8  ...... .....O...
	defb 000h,0fch,0f8h,0f8h,0c0h,004h,000h,0b8h,01eh,007h,003h,000h,000h,060h,0fch,01ch	; 6db8  .............`..
	defb 033h,021h,018h,010h,039h,029h,08ch,03ch,001h,0c0h,0e4h,014h,059h,039h,084h,061h	; 6dc8  3!..9).<....Y9.a
	defb 04eh,007h,061h,010h,010h,028h,008h,008h,000h,040h,0c0h,060h,090h,040h,008h,000h	; 6dd8  N.a..(...@.`.@..
	defb 04fh,027h,013h,003h,009h,00ch,006h,006h,0c9h,0c3h,0beh,03ch,07ch,0f9h,0fbh,0fbh	; 6de8  O'.........<|...
	defb 000h	; 6df8

; ----------------------------------------------------------------------
; DATOS rle_6DF9: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6DF9
;   6DF9-6E1A); lo leen p00:4D11, p00:4B3C (33 bytes)
;   0x6df9..0x6e1a  (33 bytes)
DATA_rle_6DF9:
	defb 004h,086h,004h,098h,019h,086h,003h,081h,081h,061h,017h,086h,00ah,098h,006h,086h	; 6df9  .........a......
	defb 002h,096h,005h,086h,005h,096h,007h,086h,081h,098h,020h,086h,008h,096h,008h,086h	; 6e09  .......... .....
	defb 000h	; 6e19

; ----------------------------------------------------------------------
; DATOS rle_6E1A: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6E1A
;   6E1A-6E77); lo leen p00:4CFF, p00:4B3C (93 bytes)
;   0x6e1a..0x6e77  (93 bytes)
DATA_rle_6E1A:
	defb 004h,000h,084h,005h,016h,018h,039h,004h,000h,089h,003h,00fh,017h,003h,000h,000h	; 6e1a  ......9.........
	defb 001h,013h,03bh,003h,0ffh,004h,000h,084h,004h,038h,0f1h,0f7h,003h,000h,09eh,004h	; 6e2a  .........8......
	defb 03ch,0fch,0feh,0feh,000h,000h,010h,0e0h,0c6h,0c9h,0e1h,0e3h,000h,003h,007h,007h	; 6e3a  <...............
	defb 00fh,00eh,00fh,01fh,002h,005h,001h,004h,006h,043h,087h,0cfh,080h,003h,0c0h,086h	; 6e4a  .........C......
	defb 080h,000h,00ch,092h,040h,0a0h,003h,0e0h,093h,0c2h,0e1h,0f3h,080h,000h,080h,0c0h	; 6e5a  ....@...........
	defb 0c4h,08ch,0a8h,088h,001h,000h,001h,003h,003h,001h,000h,000h,000h	; 6e6a  .............

; ----------------------------------------------------------------------
; DATOS rle_6E77: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6E77
;   6E77-6E7A); lo leen p00:4D11, p00:4B3C (3 bytes)
;   0x6e77..0x6e7a  (3 bytes)
DATA_rle_6E77:
	defb 060h,090h,000h	; 6e77

; ----------------------------------------------------------------------
; DATOS rle_6E7A: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6E7A
;   6E7A-6F00); lo leen p00:4CFF, p00:4B3C (134 bytes)
;   0x6e7a..0x6f00  (134 bytes)
DATA_rle_6E7A:
	defb 082h,0e8h,0c0h,003h,0d0h,08bh,0e0h,0e8h,0d8h,0f4h,0f4h,0d2h,0e8h,0ech,0b6h,099h	; 6e7a  ................
	defb 066h,004h,000h,092h,080h,040h,030h,05ch,000h,088h,0a2h,064h,036h,00ch,000h,000h	; 6e8a  f....@0\...d6...
	defb 00ch,081h,07ch,060h,008h,0e0h,006h,000h,08ch,080h,000h,020h,018h,000h,000h,001h	; 6e9a  ..|`....... ....
	defb 001h,003h,006h,01eh,078h,003h,0c0h,002h,0e0h,096h,0b0h,018h,046h,04dh,06eh,036h	; 6eaa  ....x.......FMn6
	defb 035h,014h,02ah,02ah,008h,002h,012h,004h,02ch,04ch,018h,028h,050h,00bh,00fh,007h	; 6eba  5.**....,L.(P...
	defb 003h,003h,002h,001h,082h,0fch,0f8h,003h,0f0h,09eh,0e0h,0c0h,0c0h,0ffh,0dfh,0dfh	; 6eca  ................
	defb 05fh,04fh,02fh,027h,00bh,024h,0d1h,07dh,0beh,0ffh,0ffh,07eh,00fh,0fbh,0ffh,0fbh	; 6eda  _O/'.$.}...~....
	defb 059h,06dh,034h,003h,001h,00bh,00fh,007h,003h,00fh,084h,007h,003h,00fh,03fh,003h	; 6eea  Ym4...........?.
	defb 07fh,002h,03fh,081h,05fh,000h	; 6efa

; ----------------------------------------------------------------------
; DATOS rle_6F00: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6F00
;   6F00-6F05); lo leen p00:4D11, p00:4B3C (5 bytes)
;   0x6f00..0x6f05  (5 bytes)
DATA_rle_6F00:
	defb 07fh,090h,009h,090h,000h	; 6f00

; ----------------------------------------------------------------------
; DATOS rle_6F05: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6F05
;   6F05-6F93); lo leen p00:4CFF, p00:4B3C (142 bytes)
;   0x6f05..0x6f93  (142 bytes)
DATA_rle_6F05:
	defb 085h,080h,0f0h,06bh,0ceh,020h,003h,000h,090h,060h,010h,038h,038h,030h,010h,018h	; 6f05  ...k. ...`.880..
	defb 008h,002h,014h,048h,018h,032h,030h,060h,048h,008h,0ffh,0ach,0c8h,0e0h,0eah,0c9h	; 6f15  ...H.20`H.......
	defb 0d9h,0fbh,0ffh,0feh,080h,000h,0c8h,0f4h,0f5h,0fbh,0fbh,0f7h,00fh,09fh,07fh,01fh	; 6f25  ................
	defb 0dfh,0bfh,0ffh,0ffh,000h,0c0h,0e3h,0e3h,0c7h,087h,0dbh,0ffh,000h,001h,003h,007h	; 6f35  ................
	defb 007h,067h,0fbh,0f7h,001h,083h,0e7h,0ebh,004h,0ffh,083h,0c4h,0e3h,0f7h,005h,0ffh	; 6f45  .g..............
	defb 084h,016h,023h,031h,067h,004h,0ffh,002h,000h,09eh,030h,07ch,07eh,07eh,03eh,00fh	; 6f55  ..#1g.....0|~~>.
	defb 016h,041h,020h,0e0h,0ceh,0ffh,0ffh,0feh,064h,03fh,01fh,01eh,057h,037h,01fh,0bfh	; 6f65  .A .....d?..W7..
	defb 0f8h,0ech,0ech,0dch,0f8h,0f8h,0ech,0dah,005h,0ffh,08dh,07fh,03fh,01fh,011h,00ch	; 6f75  ............?...
	defb 00eh,09eh,0ddh,0ffh,07fh,0feh,0e4h,0d6h,004h,0ffh,082h,0feh,07fh,000h	; 6f85  ..............

; ----------------------------------------------------------------------
; DATOS rle_6F93: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6F93
;   6F93-6FA2); lo leen p00:4D11, p00:4B3C (15 bytes)
;   0x6f93..0x6fa2  (15 bytes)
DATA_rle_6F93:
	defb 07fh,090h,006h,090h,003h,098h,007h,090h,081h,098h,007h,090h,081h,098h,000h	; 6f93  ...............

; ----------------------------------------------------------------------
; DATOS rle_6FA2: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6FA2
;   6FA2-6FC3); lo leen p00:4CFF, p00:4B3C (33 bytes)
;   0x6fa2..0x6fc3  (33 bytes)
DATA_rle_6FA2:
	defb 082h,01ch,072h,005h,0e0h,083h,0f0h,027h,06fh,005h,0ffh,081h,0feh,007h,0ffh,08bh	; 6fa2  ..r....'o.......
	defb 07fh,01dh,00eh,00eh,09eh,0ddh,0ffh,07fh,0feh,0e4h,0f6h,004h,0ffh,082h,0feh,07fh	; 6fb2  ................
	defb 000h	; 6fc2

; ----------------------------------------------------------------------
; DATOS rle_6FC3: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6FC3
;   6FC3-6FD0); lo leen p00:4D11, p00:4B3C (13 bytes)
;   0x6fc3..0x6fd0  (13 bytes)
DATA_rle_6FC3:
	defb 00ah,090h,00eh,098h,007h,090h,081h,098h,007h,090h,081h,098h,000h	; 6fc3  .............

; ----------------------------------------------------------------------
; DATOS rle_6FD0: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_6FD0
;   6FD0-7010); lo leen p00:4CFF, p00:4B3C (64 bytes)
;   0x6fd0..0x7010  (64 bytes)
DATA_rle_6FD0:
	defb 003h,0ffh,09ah,0fch,0f0h,0c0h,0fch,0f0h,0ffh,0f0h,080h,0f0h,0a2h,080h,007h,015h	; 6fd0  ................
	defb 0ffh,0e0h,000h,003h,09ch,05fh,03fh,0ffh,0ffh,00fh,000h,000h,07ch,004h,0ffh,087h	; 6fe0  ....._?.....|...
	defb 00fh,001h,00fh,000h,000h,080h,001h,003h,0ffh,095h,03fh,00fh,003h,0ffh,00fh,0f7h	; 6ff0  ..........?.....
	defb 0efh,0efh,0ffh,0ffh,0feh,0fch,0f8h,0efh,0f7h,0f7h,0ffh,0ffh,07fh,03fh,01fh,000h	; 7000  .............?..

; ----------------------------------------------------------------------
; DATOS rle_7010: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7010
;   7010-7029); lo leen p00:4D11, p00:4B3C (25 bytes)
;   0x7010..0x7029  (25 bytes)
DATA_rle_7010:
	defb 006h,098h,002h,086h,003h,098h,015h,086h,003h,098h,005h,086h,006h,098h,002h,086h	; 7010  ................
	defb 004h,090h,004h,098h,004h,090h,004h,098h,000h	; 7020  .........

; ----------------------------------------------------------------------
; DATOS rle_7029: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7029
;   7029-706B); lo leen p00:4CFF, p00:4B3C (66 bytes)
;   0x7029..0x706b  (66 bytes)
DATA_rle_7029:
	defb 0c0h,0f8h,0e0h,0c0h,080h,0f4h,0e2h,0b8h,041h,0d0h,074h,0c2h,028h,01dh,05bh,073h	; 7029  ........A.t.(.[s
	defb 07bh,0bfh,03fh,07fh,0fbh,0beh,00fh,02fh,0ffh,0ffh,09fh,0c2h,020h,0f3h,0ffh,0ffh	; 7039  {.?..../.... ...
	defb 0fch,0feh,0d8h,040h,083h,0e0h,082h,013h,01fh,002h,041h,000h,008h,009h,020h,008h	; 7049  ...@......A... .
	defb 0fch,09bh,00ch,004h,082h,003h,083h,024h,000h,01fh,007h,003h,001h,007h,0a1h,010h	; 7059  .......$........
	defb 000h,000h	; 7069

; ----------------------------------------------------------------------
; DATOS rle_706B: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_706B
;   706B-707A); lo leen p00:4D11, p00:4B3C (15 bytes)
;   0x706b..0x707a  (15 bytes)
DATA_rle_706B:
	defb 004h,098h,01fh,086h,081h,061h,003h,081h,011h,086h,004h,098h,004h,086h,000h	; 706b  .....a.........

; ----------------------------------------------------------------------
; DATOS rle_707A: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_707A
;   707A-7158); lo leen p00:4CFF, p00:4B3C (222 bytes)
;   0x707a..0x7158  (222 bytes)
DATA_rle_707A:
	defb 09ah,0ffh,0f3h,020h,090h,0d8h,0c8h,0e4h,0f0h,0f9h,0fch,0eeh,0eeh,0e4h,0f0h,0e0h	; 707a  ... ............
	defb 0e8h,0e1h,053h,0e7h,08fh,07fh,0ffh,03fh,018h,074h,0fch,003h,0feh,0f3h,0ffh,01fh	; 708a  ..S....?.t......
	defb 0feh,002h,07fh,0bfh,01fh,06fh,0afh,00fh,02fh,0c2h,0d4h,0e8h,0e8h,0f8h,0f8h,0f4h	; 709a  .....o../.......
	defb 0f0h,053h,077h,050h,0fch,0f0h,07fh,03fh,07fh,000h,080h,0e8h,044h,021h,016h,01eh	; 70aa  .SwP...?....D!..
	defb 087h,020h,010h,018h,01ah,00ch,08ah,04eh,0a3h,0e0h,081h,007h,00fh,017h,01fh,09fh	; 70ba  . .....N........
	defb 00fh,007h,03fh,01fh,07fh,09dh,014h,061h,000h,0fbh,0fdh,026h,083h,081h,061h,002h	; 70ca  ..?....a...&..a.
	defb 0feh,08fh,00fh,01fh,00fh,09eh,01eh,00fh,000h,0f4h,0e0h,0c2h,043h,00bh,087h,08fh	; 70da  ............C...
	defb 07fh,03bh,089h,0c4h,0f2h,0f8h,0fch,0feh,0feh,006h,006h,00ch,009h,00bh,003h,027h	; 70ea  ...............'
	defb 04fh,008h,011h,01bh,01fh,00fh,007h,03bh,07fh,006h,00fh,01fh,011h,008h,000h,00bh	; 70fa  O...............
	defb 01bh,005h,000h,093h,011h,01fh,00fh,00fh,007h,003h,00bh,005h,006h,003h,007h,003h	; 710a  ................
	defb 001h,000h,001h,001h,003h,00ah,001h,004h,000h,002h,001h,003h,003h,002h,007h,089h	; 711a  ................
	defb 00fh,003h,000h,001h,000h,092h,00ch,000h,080h,003h,0c0h,08ch,080h,0f3h,0e1h,0c2h	; 712a  ................
	defb 060h,020h,080h,0a0h,040h,0cfh,087h,043h,003h,007h,092h,005h,002h,011h,015h,031h	; 713a  ` ..@..C.......1
	defb 023h,003h,001h,000h,001h,000h,000h,001h,003h,003h,001h,000h,001h,000h	; 714a  #.............

; ----------------------------------------------------------------------
; DATOS rle_7158: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7158
;   7158-716F); lo leen p00:4D11, p00:4B3C (23 bytes)
;   0x7158..0x716f  (23 bytes)
DATA_rle_7158:
	defb 002h,086h,006h,098h,018h,086h,081h,098h,031h,086h,006h,098h,002h,086h,005h,098h	; 7158  ........1.......
	defb 019h,086h,008h,096h,060h,090h,000h	; 7168

; ----------------------------------------------------------------------
; DATOS rle_716F: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_716F
;   716F-734A); lo leen p00:4CFF, p00:4B3C (475 bytes)
;   0x716f..0x734a  (475 bytes)
DATA_rle_716F:
	defb 0a5h,000h,004h,033h,0e6h,0efh,0dfh,0ffh,0ffh,000h,028h,0f2h,0dfh,0eeh,0adh,07fh	; 716f  ...3......(.....
	defb 0ffh,000h,004h,01eh,09ch,0fbh,0f6h,0f2h,0f8h,0f7h,06fh,08bh,0f6h,0ffh,0fch,0e0h	; 717f  ..........o.....
	defb 000h,0f0h,024h,088h,078h,030h,003h,000h,08ch,07fh,03fh,03fh,07fh,03dh,018h,000h	; 718f  ..$.x0....??.=..
	defb 000h,0ffh,0feh,0fch,070h,004h,000h,0a5h,010h,044h,01eh,09ch,0fbh,0f6h,0f2h,0f8h	; 719f  ....p....D......
	defb 000h,009h,001h,012h,061h,00fh,0bfh,03fh,000h,000h,004h,002h,000h,006h,002h,000h	; 71af  ....a..?........
	defb 07fh,0feh,07fh,0ffh,07eh,0fdh,079h,0cch,0d8h,0f0h,0d0h,060h,0c0h,003h,000h,0ffh	; 71bf  ....~.y....`....
	defb 07ch,0f9h,0f9h,0f6h,0f6h,0fch,0f8h,0f4h,000h,088h,060h,024h,072h,03eh,0bah,0dch	; 71cf  |.........`$r>..
	defb 000h,070h,00ch,062h,038h,00ch,002h,011h,00ch,004h,010h,004h,004h,001h,001h,000h	; 71df  .p.b8...........
	defb 000h,001h,001h,002h,001h,001h,003h,003h,007h,00fh,01fh,047h,00eh,01dh,038h,0c8h	; 71ef  ...........G..8.
	defb 000h,005h,038h,072h,0a8h,000h,020h,000h,000h,07ch,017h,051h,000h,002h,000h,000h	; 71ff  ..8r.. ..|.Q....
	defb 001h,005h,01fh,03fh,07fh,07fh,0ffh,0ffh,078h,0fdh,03fh,08fh,0fdh,0ffh,0ffh,0fbh	; 720f  ...?....x.?.....
	defb 07fh,03fh,05fh,0ffh,0fdh,06dh,006h,000h,0fdh,0fbh,0fbh,0fch,0f5h,0eah,0b5h,04ah	; 721f  .?_..m.........J
	defb 003h,003h,00fh,01fh,03fh,07fh,07fh,0dfh,001h,001h,003h,003h,005h,003h,003h,00bh	; 722f  ....?...........
	defb 0fdh,0f9h,0fbh,0fbh,0f3h,0e4h,0ebh,0dbh,0ffh,0fbh,03ch,07ch,074h,0f8h,050h,0b1h	; 723f  ..........<|t.P.
	defb 080h,005h,00dh,00bh,00bh,003h,009h,005h,001h,0dbh,0deh,0f6h,0a4h,0ach,068h,06ch	; 724f  ..............hl
	defb 070h,0b0h,0a8h,054h,068h,030h,018h,00ch,002h,011h,020h,048h,010h,0a0h,062h,044h	; 725f  p..Th0.... H..bD
	defb 0c0h,0e8h,0d8h,0d8h,0d0h,0d0h,0e0h,0e8h,0d0h,0b6h,0ach,056h,068h,032h,01bh,00ch	; 726f  ...........Vh2..
	defb 002h,003h,000h,08bh,080h,0c0h,040h,060h,030h,000h,084h,079h,03eh,00eh,003h,003h	; 727f  ......@`0..y>...
	defb 000h,087h,080h,038h,076h,03fh,007h,070h,008h,004h,000h,0adh,080h,0e4h,001h,038h	; 728f  ...8v?.p.......8
	defb 05ch,078h,03eh,05fh,0deh,07fh,03dh,0beh,005h,009h,003h,013h,005h,003h,003h,00bh	; 729f  \x>_..=.........
	defb 0dbh,0deh,0f6h,0a4h,0ach,06ah,06ch,076h,000h,004h,01fh,03fh,07fh,07fh,0ffh,0ffh	; 72af  .....jlv...?....
	defb 000h,000h,012h,0f8h,0e6h,0c0h,0c0h,0f8h,0feh,003h,0fch,08ch,0feh,0fch,070h,000h	; 72bf  ..............p.
	defb 002h,014h,048h,018h,032h,030h,060h,048h,004h,0ffh,0a1h,0fbh,0fch,0fah,0fch,07fh	; 72cf  ..H.20`H........
	defb 07fh,03fh,00fh,005h,00bh,01fh,00fh,027h,04fh,07fh,0ffh,0ffh,07fh,03bh,007h,02fh	; 72df  .?.....'O....../
	defb 01fh,03fh,07fh,0dfh,09fh,08fh,047h,003h,037h,04fh,007h,01fh,003h,03fh,002h,01fh	; 72ef  .?....G.7O...?..
	defb 083h,03fh,0ffh,0ffh,003h,07fh,092h,0f8h,0fch,0feh,0ffh,0ffh,0efh,0efh,0f7h,0dah	; 72ff  .?..............
	defb 0ech,0f8h,0f8h,0dch,0ech,0ech,0f8h,0feh,07fh,004h,0ffh,08dh,06bh,027h,0feh,07fh	; 730f  ............k'..
	defb 0ffh,0ddh,09eh,00eh,00ch,011h,0f8h,0fch,0feh,005h,0ffh,082h,0feh,07fh,004h,0ffh	; 731f  ................
	defb 083h,06fh,027h,0f0h,005h,0e0h,08bh,072h,01ch,0feh,07fh,0ffh,0ddh,09eh,00eh,00eh	; 732f  .o'....r........
	defb 01dh,0feh,005h,0ffh,083h,06fh,027h,0feh,007h,0ffh,000h	; 733f  .....o'....

; ----------------------------------------------------------------------
; DATOS rle_734A: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_734A
;   734A-736D); lo leen p00:4D11, p00:4B3C (35 bytes)
;   0x734a..0x736d  (35 bytes)
DATA_rle_734A:
	defb 07fh,090h,07fh,090h,07fh,090h,01bh,090h,003h,098h,00dh,090h,081h,098h,007h,090h	; 734a  ................
	defb 081h,098h,007h,090h,009h,098h,00fh,090h,081h,098h,007h,090h,081h,098h,007h,090h	; 735a  ................
	defb 008h,098h,000h	; 736a

; ----------------------------------------------------------------------
; DATOS rle_736D: los dibujos de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_736D
;   736D-7460); lo leen p00:4CFF, p00:4B3C (243 bytes)
;   0x736d..0x7460  (243 bytes)
DATA_rle_736D:
	defb 008h,0ffh,084h,078h,0f0h,0fch,0fdh,004h,0ffh,09dh,087h,0c3h,050h,030h,01ch,0bch	; 736d  ...x........P0..
	defb 05ch,05eh,0c7h,0f3h,0e1h,0b0h,069h,060h,0f0h,078h,02fh,02fh,01fh,01fh,087h,0c1h	; 737d  \^....i`.x//....
	defb 0ach,010h,0f7h,0f7h,0fdh,0e0h,0c0h,003h,000h,084h,0ffh,0fch,0f8h,0f0h,005h,000h	; 738d  ................
	defb 0a0h,030h,07eh,07fh,07fh,0beh,0dfh,0efh,0ffh,07fh,05fh,087h,0b3h,092h,0f2h,0ffh	; 739d  .0~......._.....
	defb 0feh,0ffh,0fbh,0fah,083h,07bh,06bh,0d3h,03ch,01eh,02fh,024h,07ch,07ch,03eh,0bfh	; 73ad  .....{k.<./$||>.
	defb 030h,003h,038h,084h,019h,01ah,010h,031h,003h,0cch,094h,064h,046h,066h,064h,0c4h	; 73bd  0.8....1...dFfd.
	defb 0c9h,0c3h,0beh,03ch,07ch,0f9h,0fbh,0fbh,0feh,0fch,0fdh,0fbh,0fbh,0f2h,0f6h,003h	; 73cd  ...<|...........
	defb 0e6h,088h,0ech,0cch,0c8h,0cah,0dah,09ch,09ch,09eh,003h,0bch,003h,0b8h,087h,07fh	; 73dd  ................
	defb 03fh,0bfh,09fh,0dfh,0cfh,0cfh,003h,0e7h,081h,0f7h,003h,0f3h,081h,073h,004h,079h	; 73ed  ?............s.y
	defb 005h,039h,084h,0f7h,0efh,0cfh,0dfh,003h,0cfh,098h,0dfh,0cfh,0dfh,05eh,09fh,088h	; 73fd  .9...........^..
	defb 021h,051h,087h,08eh,08fh,007h,0c2h,0e2h,0e1h,0e0h,0c0h,043h,033h,00bh,00fh,007h	; 740d  !Q.........C3...
	defb 003h,003h,003h,001h,002h,000h,002h,090h,08eh,088h,08ch,0ceh,0afh,00fh,04fh,0cfh	; 741d  ..............O.
	defb 0b7h,0f0h,000h,0fch,0f8h,0f8h,0c0h,004h,000h,0a8h,01eh,007h,003h,000h,000h,060h	; 742d  ...............`
	defb 0fch,01ch,033h,021h,018h,010h,039h,029h,08ch,03ch,001h,0c0h,0e4h,014h,059h,039h	; 743d  ..3!..9).<....Y9
	defb 084h,061h,04eh,007h,061h,010h,010h,028h,008h,008h,0e7h,0cfh,0cfh,09fh,09fh,0bfh	; 744d  .aN.a..(........
	defb 03fh,07fh,000h	; 745d

; ----------------------------------------------------------------------
; DATOS rle_7460: los colores de una entrada de la lista de graficos de
;   16:6074, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7460
;   7460-747D); lo leen p00:4D11, p00:4B3C (29 bytes)
;   0x7460..0x747d  (29 bytes)
DATA_rle_7460:
	defb 010h,090h,060h,086h,018h,098h,018h,096h,018h,086h,00ch,096h,008h,086h,002h,096h	; 7460  ..`.............
	defb 005h,086h,005h,096h,007h,086h,081h,098h,018h,086h,008h,096h,000h	; 7470  .............

; ----------------------------------------------------------------------
; DATOS sin identificar  0x747d..0x74fb  (126 bytes)
DATA_747D:
	defb 089h,003h,01bh,01dh,05ch,0cch,0e0h,00dh,000h,0cch,003h,0deh,08ch,00ch,0c0h,0e6h	; 747d  ....\...........
	defb 000h,040h,0e0h,0f0h,073h,02fh,01fh,01ch,009h,004h,000h,084h,080h,070h,038h,0b0h	; 748d  .@..s/.......p8.
	defb 003h,003h,085h,001h,004h,00eh,00ch,019h,004h,080h,084h,020h,0f0h,078h,0b0h,004h	; 749d  ........... .x..
	defb 000h,08ch,001h,00eh,01ch,019h,002h,007h,00fh,0ceh,0f4h,0f8h,038h,090h,000h,089h	; 74ad  ............8...
	defb 003h,01bh,01dh,05ch,0cch,0e0h,00dh,000h,0cch,003h,0deh,08ch,00ch,0c0h,0e6h,000h	; 74bd  ...\............
	defb 040h,0e0h,0f0h,073h,02fh,01fh,01ch,009h,004h,000h,084h,080h,070h,038h,0b0h,003h	; 74cd  @..s/.......p8..
	defb 003h,085h,001h,004h,00eh,00ch,019h,004h,080h,084h,020h,0f0h,078h,0b0h,004h,000h	; 74dd  .......... .x...
	defb 08ch,001h,00eh,01ch,019h,002h,007h,00fh,0ceh,0f4h,0f8h,038h,090h,000h	; 74ed  ...........8..

; ----------------------------------------------------------------------
; DATOS rle_74FB: los dibujos de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_74FB
;   74FB-755C); lo leen p00:4CFF, p00:4B3C (97 bytes)
;   0x74fb..0x755c  (97 bytes)
DATA_rle_74FB:
	defb 088h,03ch,06eh,046h,0cfh,09dh,007h,067h,01dh,004h,000h,086h,080h,0e0h,078h,0dch	; 74fb  .<nF...g......x.
	defb 02dh,02fh,003h,037h,08bh,017h,01bh,007h,0eeh,008h,085h,043h,0deh,0eeh,0fch,0f0h	; 750b  -/.7.......C....
	defb 003h,000h,085h,001h,003h,01eh,038h,060h,003h,000h,0b5h,0e0h,030h,010h,030h,06ch	; 751b  ......8`....0.0l
	defb 061h,03fh,015h,03bh,07bh,077h,03fh,01fh,031h,0f8h,0c5h,043h,0deh,0eeh,0fch,0f0h	; 752b  a?..{w?.1..C....
	defb 007h,00ch,018h,01ch,00fh,007h,00bh,00fh,0e0h,030h,018h,038h,0f0h,0e0h,050h,0d0h	; 753b  .........0.8..P.
	defb 01fh,017h,037h,02fh,02fh,037h,01fh,007h,058h,068h,07ch,0b4h,0b4h,0bch,078h,0e0h	; 754b  ..7//7..Xh|...x.
	defb 000h	; 755b

; ----------------------------------------------------------------------
; DATOS rle_755C: los colores de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_755C
;   755C-75AF); lo leen p00:4D11, p00:4B3C (83 bytes)
;   0x755c..0x75af  (83 bytes)
DATA_rle_755C:
	defb 081h,0c0h,004h,020h,083h,0c3h,030h,030h,005h,020h,003h,030h,089h,0b0h,0a0h,0a0h	; 755c  ... ..00. .0....
	defb 0b0h,030h,020h,020h,0c0h,0b0h,003h,0c3h,002h,020h,006h,0c0h,082h,020h,0c0h,007h	; 756c  .0  ..... ... ..
	defb 020h,004h,030h,087h,0b0h,030h,0a0h,0b0h,030h,020h,0c0h,003h,0c3h,083h,0cbh,030h	; 757c   .0..0..0 .....0
	defb 020h,003h,0c0h,002h,020h,002h,030h,086h,0b0h,020h,020h,0c0h,020h,020h,003h,030h	; 758c   ... .0..  .  .0
	defb 002h,020h,08dh,030h,0b0h,0b0h,030h,030h,020h,0c0h,0c0h,030h,0b0h,030h,030h,020h	; 759c  . .0..00 ..0.00
	defb 003h,0c0h,000h	; 75ac

; ----------------------------------------------------------------------
; DATOS sin identificar  0x75af..0x75b9  (10 bytes)
DATA_75AF:
	defb 088h,03ch,076h,0f3h,0fbh,0fbh,0ffh,076h,03ch,000h	; 75af  .<v....v<.

; ----------------------------------------------------------------------
; DATOS rle_75B9: los dibujos de una entrada de la lista de graficos de
;   16:66D2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_75B9
;   75B9-75FB); lo leen p00:4CFF, p00:4B3C (66 bytes)
;   0x75b9..0x75fb  (66 bytes)
DATA_rle_75B9:
	defb 0c0h,0c0h,0deh,0c0h,0dch,0c0h,0d4h,0dch,0d4h,003h,086h,08ch,098h,0b0h,0d0h,0e0h	; 75b9  ................
	defb 07ch,0d4h,0dch,0d4h,0c0h,0dch,0c0h,0deh,0c0h,000h,0fch,0f8h,0f8h,0f0h,0e0h,080h	; 75c9  |...............
	defb 000h,000h,080h,0e0h,0f0h,000h,078h,080h,09fh,09fh,080h,078h,000h,0f0h,0e0h,080h	; 75d9  ......x....x....
	defb 000h,000h,080h,0e0h,0f0h,0f8h,0f8h,0fch,000h,07ch,0e0h,0d0h,0b0h,098h,08ch,086h	; 75e9  .........|......
	defb 003h,000h	; 75f9

; ----------------------------------------------------------------------
; DATOS sin identificar  0x75fb..0x763d  (66 bytes)
DATA_75FB:
	defb 0c0h,07fh,000h,072h,037h,073h,038h,092h,0d1h,0feh,000h,04eh,0ech,0ceh,01ch,049h	; 75fb  ...r7s8....N...I
	defb 077h,020h,070h,03bh,016h,00ch,019h,0ffh,015h,000h,000h,020h,070h,0f8h,0f8h,000h	; 760b  w p........ p...
	defb 0a8h,001h,001h,005h,015h,034h,03ah,000h,015h,080h,080h,0a0h,0a8h,02ch,05ch,0ffh	; 761b  .....4:......,\.
	defb 0a8h,000h,000h,004h,00eh,01fh,01fh,000h,015h,004h,00eh,0dch,068h,030h,098h,000h	; 762b  ............h0..
	defb 0a8h,000h	; 763b

; ----------------------------------------------------------------------
; DATOS rle_763D: los dibujos de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_763D
;   763D-767D); lo leen p00:4CFF, p00:4B3C (64 bytes)
;   0x763d..0x767d  (64 bytes)
DATA_rle_763D:
	defb 098h,000h,03fh,052h,024h,02dh,052h,0dbh,0a9h,000h,0fch,04ah,094h,0b4h,04ah,048h	; 763d  ..?R$-R....J..JH
	defb 010h,040h,020h,030h,019h,00ch,00eh,004h,020h,003h,000h,085h,0c0h,090h,038h,000h	; 764d  .@ 0.... .....8.
	defb 0fch,004h,001h,084h,009h,013h,003h,031h,004h,080h,084h,090h,0c8h,0c0h,08ch,003h	; 765d  .......1........
	defb 000h,08dh,003h,009h,01ch,000h,03fh,002h,004h,00ch,098h,030h,070h,020h,004h,000h	; 766d  ......?....0p ..

; ----------------------------------------------------------------------
; DATOS rle_767D: los dibujos de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_767D
;   767D-76BD); lo leen p00:4CFF, p00:4B3C (64 bytes)
;   0x767d..0x76bd  (64 bytes)
DATA_rle_767D:
	defb 098h,000h,03fh,052h,024h,02dh,052h,012h,0a9h,000h,0fch,04ah,094h,0b4h,04ah,048h	; 767d  ..?R$-R....J..JH
	defb 010h,040h,020h,030h,019h,00ch,00eh,004h,020h,003h,000h,085h,0c0h,090h,038h,000h	; 768d  .@ 0.... .....8.
	defb 0fch,004h,001h,084h,009h,013h,003h,031h,004h,080h,084h,090h,0c8h,0c0h,08ch,003h	; 769d  .......1........
	defb 000h,08dh,003h,009h,01ch,000h,03fh,002h,004h,00ch,098h,030h,070h,020h,004h,000h	; 76ad  ......?....0p ..

; ----------------------------------------------------------------------
; DATOS sin identificar  0x76bd..0x76c6  (9 bytes)
DATA_76BD:
	defb 008h,0c0h,008h,030h,008h,00ch,008h,003h,000h	; 76bd  ...0.....

; ----------------------------------------------------------------------
; DATOS rle_76C6: los dibujos de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_76C6
;   76C6-76CF); lo leen p00:4CFF, p00:4B3C (9 bytes)
;   0x76c6..0x76cf  (9 bytes)
DATA_rle_76C6:
	defb 002h,0ffh,006h,000h,002h,0ffh,006h,000h,000h	; 76c6  .........

; ----------------------------------------------------------------------
; DATOS sin identificar  0x76cf..0x77af  (224 bytes)
DATA_76CF:
	defb 004h,090h,081h,080h,003h,060h,002h,090h,002h,080h,084h,060h,080h,060h,060h,003h	; 76cf  .....`.....`.``.
	defb 090h,002h,080h,083h,090h,080h,080h,006h,090h,002h,080h,003h,090h,08dh,080h,090h	; 76df  ................
	defb 090h,080h,080h,090h,090h,080h,080h,090h,080h,080h,060h,006h,090h,002h,080h,003h	; 76ef  ..........`.....
	defb 090h,002h,080h,083h,090h,080h,080h,000h,004h,050h,004h,040h,002h,050h,006h,040h	; 76ff  .........P.@.P.@
	defb 003h,050h,002h,040h,083h,050h,040h,040h,006h,050h,002h,040h,003h,050h,08ah,040h	; 770f  .P.@.P@@.P.@.P.@
	defb 050h,050h,040h,040h,050h,050h,040h,040h,050h,003h,040h,006h,050h,002h,040h,003h	; 771f  PP@@PP@@P.@.P.@.
	defb 050h,002h,040h,083h,050h,040h,040h,000h,081h,0c0h,004h,020h,083h,0c3h,030h,030h	; 772f  P.@.P@@.... ..00
	defb 005h,020h,003h,030h,08dh,0b0h,0a0h,0a0h,0b0h,030h,020h,020h,0c0h,0c3h,0b0h,0c3h	; 773f  . .0.....0  ....
	defb 0c3h,020h,007h,0c0h,082h,020h,0c0h,007h,020h,004h,030h,087h,0b0h,030h,0a0h,0b0h	; 774f  . ... .. .0..0..
	defb 030h,020h,0c0h,003h,0c3h,090h,0cbh,030h,020h,020h,0c0h,0c0h,020h,020h,030h,030h	; 775f  0 .....0  ..  00
	defb 0b0h,020h,020h,0c0h,020h,020h,003h,030h,002h,020h,08dh,030h,0b0h,0b0h,030h,030h	; 776f  .  .  .0. .0..00
	defb 020h,0c0h,0c0h,030h,0b0h,030h,030h,020h,003h,0c0h,000h,0a0h,0f0h,050h,050h,040h	; 777f   ..0.00 .....PP@
	defb 050h,000h,070h,040h,0f0h,050h,050h,040h,040h,000h,070h,040h,050h,040h,070h,075h	; 778f  P.p@.PP@@.p@P@pu
	defb 054h,000h,070h,0f0h,040h,040h,070h,075h,054h,060h,070h,0f0h,000h,008h,060h,000h	; 779f  T.p.@@puT`p...`.

; ----------------------------------------------------------------------
; DATOS rle_77AF: los colores de una entrada de la lista de graficos de
;   16:66D2, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_77AF
;   77AF-77EA); lo leen p00:4D11, p00:4B3C (59 bytes)
;   0x77af..0x77ea  (59 bytes)
DATA_rle_77AF:
	defb 088h,040h,050h,050h,070h,0f0h,0f0h,0e0h,070h,003h,0f0h,002h,070h,004h,0e0h,002h	; 77af  .@PPp...p...p...
	defb 070h,003h,050h,002h,040h,084h,0f0h,070h,050h,050h,003h,040h,089h,070h,0f0h,0f0h	; 77bf  p.P.@..pPP.@.p..
	defb 0e0h,070h,0f0h,0f0h,0e0h,0e0h,005h,070h,002h,040h,004h,0f0h,08dh,0e0h,070h,050h	; 77cf  .p.....p.@....pP
	defb 070h,0f0h,040h,050h,050h,070h,070h,0e0h,0f0h,070h,000h	; 77df  p.@PPpp..p.

; ----------------------------------------------------------------------
; DATOS sin identificar  0x77ea..0x782c  (66 bytes)
DATA_77EA:
	defb 092h,0e0h,0f0h,030h,0c0h,030h,0c0h,0c9h,0e2h,030h,0f0h,020h,0c0h,020h,0c0h,0c9h	; 77ea  ...0.0...0. . ..
	defb 0c3h,0f0h,0e0h,003h,030h,0a5h,020h,000h,0c0h,0f0h,0f0h,030h,020h,020h,0c0h,0f0h	; 77fa  ....0. ....0  ..
	defb 0c0h,0f0h,0f0h,0e0h,030h,020h,020h,0f0h,0c0h,0e0h,0e0h,030h,020h,020h,0c0h,000h	; 780a  ....0  ....0  ..
	defb 0c0h,0f0h,0f0h,030h,020h,020h,0c0h,0f0h,0c0h,0f0h,0e0h,003h,030h,083h,020h,0f0h	; 781a  ...0  ......0. .
	defb 0c0h,000h	; 782a

; ----------------------------------------------------------------------
; DATOS rle_782C: los colores de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_782C
;   782C-7868); lo leen p00:4D11, p00:4B3C (60 bytes)
;   0x782c..0x7868  (60 bytes)
DATA_rle_782C:
	defb 090h,0f0h,050h,050h,060h,0f0h,050h,054h,075h,0f0h,040h,040h,060h,0b0h,040h,054h	; 782c  ..PP`.PTu.@@`.@T
	defb 074h,003h,0f0h,085h,0e0h,070h,050h,040h,040h,005h,0f0h,083h,070h,0f0h,040h,005h	; 783c  t....pP@@...p.@.
	defb 0f0h,08bh,070h,050h,050h,0f0h,0f0h,0e0h,0e0h,070h,070h,040h,040h,005h,0f0h,083h	; 784c  ..pPP....pp@@...
	defb 070h,0f0h,050h,003h,0f0h,085h,0e0h,070h,050h,040h,040h,000h	; 785c  p.P....pP@@.

; ----------------------------------------------------------------------
; DATOS rle_7868: los colores de una entrada de la lista de graficos de
;   16:628E, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7868
;   7868-78A5); lo leen p00:4D11, p00:4B3C (61 bytes)
;   0x7868..0x78a5  (61 bytes)
DATA_rle_7868:
	defb 089h,0f0h,090h,080h,060h,0f0h,080h,096h,0b8h,0f0h,003h,060h,084h,0b0h,060h,096h	; 7868  ....`......`..`.
	defb 0b6h,004h,0f0h,084h,0b0h,090h,060h,090h,004h,0f0h,084h,0b0h,090h,0f0h,060h,005h	; 7878  ......`.......`.
	defb 0f0h,08bh,0b0h,080h,090h,0f0h,0f0h,0b0h,0b0h,090h,090h,060h,060h,004h,0f0h,084h	; 7888  ...........``...
	defb 0b0h,090h,0f0h,080h,003h,0f0h,085h,0e0h,0b0h,090h,060h,060h,000h	; 7898  ..........``.

; ----------------------------------------------------------------------
; DATOS sin identificar  0x78a5..0x78c6  (33 bytes)
DATA_78A5:
	defb 002h,0f0h,081h,070h,003h,0f0h,002h,070h,002h,0f0h,081h,070h,003h,0f0h,002h,070h	; 78a5  ...p...p...p...p
	defb 002h,0f0h,081h,070h,003h,0f0h,002h,070h,002h,0f0h,081h,070h,003h,0f0h,002h,070h	; 78b5  ...p...p...p...p
	defb 000h	; 78c5

; ----------------------------------------------------------------------
; DATOS rle_78C6: los colores de una entrada de la lista de graficos de
;   16:62FC, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_78C6
;   78C6-78D1); lo leen p00:4D11, p00:4B3C (11 bytes)
;   0x78c6..0x78d1  (11 bytes)
DATA_rle_78C6:
	defb 082h,0d7h,064h,006h,0f0h,082h,070h,040h,006h,0f0h,000h	; 78c6  ..d...p@...

; ----------------------------------------------------------------------
; DATOS rle_78D1: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_78D1
;   78D1-7911); lo leen p00:4CFF, p00:4B3C (64 bytes)
;   0x78d1..0x7911  (64 bytes)
DATA_rle_78D1:
	defb 098h,043h,050h,053h,050h,053h,000h,055h,0aah,0c2h,00ah,0cah,00ah,0cah,000h,0aah	; 78d1  .CPSPS.U........
	defb 055h,000h,040h,0e0h,073h,03bh,013h,000h,018h,003h,000h,085h,0c0h,0f0h,0f8h,03ch	; 78e1  U.@.s..........<
	defb 010h,004h,001h,084h,00dh,01dh,03ch,008h,004h,080h,084h,0b0h,0b8h,03ch,010h,003h	; 78f1  ......<......<..
	defb 000h,08dh,003h,00fh,01fh,03ch,008h,000h,002h,007h,0ceh,0dch,0c8h,000h,018h,000h	; 7901  .....<..........

; ----------------------------------------------------------------------
; DATOS rle_7911: los dibujos de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7911
;   7911-7951); lo leen p00:4CFF, p00:4B3C (64 bytes)
;   0x7911..0x7951  (64 bytes)
DATA_rle_7911:
	defb 098h,043h,050h,053h,050h,053h,000h,055h,055h,0c2h,00ah,0cah,00ah,0cah,000h,0aah	; 7911  .CPSPS.UU.......
	defb 055h,000h,040h,0e0h,073h,03bh,013h,000h,018h,003h,000h,085h,0c0h,0f0h,0f8h,03ch	; 7921  U.@.s..........<
	defb 010h,004h,001h,084h,00dh,01dh,03ch,008h,004h,080h,084h,0b0h,0b8h,03ch,010h,003h	; 7931  ......<......<..
	defb 000h,08dh,003h,00fh,01fh,03ch,008h,000h,002h,007h,0ceh,0dch,0c8h,000h,018h,000h	; 7941  .....<..........

; ----------------------------------------------------------------------
; DATOS rle_7951: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7951
;   7951-798D); lo leen p00:4D11, p00:4B3C (60 bytes)
;   0x7951..0x798d  (60 bytes)
DATA_rle_7951:
	defb 089h,0f0h,0b0h,090h,090h,080h,0f0h,0f6h,0d9h,080h,004h,060h,083h,0f0h,0e6h,0d6h	; 7951  ...........`....
	defb 004h,0f0h,084h,0b0h,090h,0f0h,080h,003h,0f0h,085h,0b0h,090h,080h,060h,060h,005h	; 7961  .............``.
	defb 0f0h,083h,0b0h,090h,090h,003h,0b0h,002h,090h,083h,080h,060h,060h,005h,0f0h,083h	; 7971  ...........``...
	defb 0b0h,090h,080h,003h,0f0h,085h,0b0h,090h,080h,0f0h,060h,000h	; 7981  ..........`.

; ----------------------------------------------------------------------
; DATOS rle_798D: los colores de una entrada de la lista de graficos de
;   16:6574, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_798D
;   798D-79C8); lo leen p00:4D11, p00:4B3C (59 bytes)
;   0x798d..0x79c8  (59 bytes)
DATA_rle_798D:
	defb 081h,0f0h,003h,070h,085h,050h,0f0h,0f4h,052h,050h,004h,040h,083h,0f0h,074h,0c5h	; 798d  ...p.P..RP.@..t.
	defb 004h,0f0h,002h,070h,082h,0f0h,050h,003h,0f0h,002h,070h,083h,050h,040h,040h,005h	; 799d  ...p..P...p.P@@.
	defb 0f0h,083h,070h,050h,050h,003h,0f0h,002h,070h,083h,050h,040h,040h,005h,0f0h,083h	; 79ad  ..pPP...p.P@@...
	defb 070h,050h,040h,004h,0f0h,084h,070h,050h,0f0h,040h,000h	; 79bd  pP@...pP.@.

; ----------------------------------------------------------------------
; DATOS rle_79C8: los dibujos de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_79C8
;   79C8-79F8); lo leen p00:4CFF, p00:4B3C (48 bytes)
;   0x79c8..0x79f8  (48 bytes)
DATA_rle_79C8:
	defb 088h,000h,020h,070h,03ah,017h,00eh,000h,03fh,003h,000h,095h,040h,070h,078h,0f8h	; 79c8  .. p:...?...@px.
	defb 0fch,000h,05fh,06ch,05bh,006h,0f8h,049h,055h,000h,0fah,036h,0dah,060h,01fh,092h	; 79d8  .._l[..IU..6.`..
	defb 0aah,004h,001h,084h,00ah,019h,01ch,03fh,004h,080h,084h,050h,098h,038h,0fch,000h	; 79e8  .......?...P.8..

; ----------------------------------------------------------------------
; DATOS rle_79F8: los colores de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_79F8
;   79F8-7A29); lo leen p00:4D11, p00:4B3C (49 bytes)
;   0x79f8..0x7a29  (49 bytes)
DATA_rle_79F8:
	defb 002h,0f0h,086h,0a0h,090h,090h,060h,000h,090h,004h,0e0h,08fh,0a0h,090h,060h,080h	; 79f8  ......`.......`.
	defb 060h,060h,090h,0a0h,0a0h,090h,060h,0a9h,060h,060h,080h,003h,090h,084h,060h,0a9h	; 7a08  ``....`.``....`.
	defb 0f0h,0e0h,003h,0a0h,086h,090h,060h,090h,0f0h,0a0h,0a0h,003h,090h,082h,060h,080h	; 7a18  ......`.......`.
	defb 000h	; 7a28

; ----------------------------------------------------------------------
; DATOS rle_7A29: los dibujos de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7A29
;   7A29-7A59); lo leen p00:4CFF, p00:4B3C (48 bytes)
;   0x7a29..0x7a59  (48 bytes)
DATA_rle_7A29:
	defb 088h,000h,020h,070h,03ah,017h,00eh,000h,03fh,003h,000h,095h,040h,070h,078h,0f8h	; 7a29  .. p:...?...@px.
	defb 0fch,000h,05fh,06ch,05bh,006h,0f8h,049h,055h,000h,0fah,036h,0dah,060h,01fh,092h	; 7a39  .._l[..IU..6.`..
	defb 0aah,004h,001h,084h,00ah,019h,01ch,03fh,004h,080h,084h,050h,098h,038h,0fch,000h	; 7a49  .......?...P.8..

; ----------------------------------------------------------------------
; DATOS rle_7A59: los colores de una entrada de la lista de graficos de
;   16:6454, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7A59
;   7A59-7A89); lo leen p00:4D11, p00:4B3C (48 bytes)
;   0x7a59..0x7a89  (48 bytes)
DATA_rle_7A59:
	defb 002h,0f0h,002h,070h,084h,050h,040h,000h,070h,004h,0e0h,087h,070h,050h,040h,050h	; 7a59  ...p.P@.p...pP@P
	defb 040h,040h,050h,003h,070h,084h,040h,074h,040h,040h,004h,050h,084h,040h,074h,0f0h	; 7a69  @@P.p.@t@@.P.@t.
	defb 0e0h,003h,070h,086h,050h,040h,070h,0f0h,070h,070h,003h,050h,082h,040h,050h,000h	; 7a79  ..p.P@p.pp.P.@P.

; ----------------------------------------------------------------------
; DATOS rle_7A89: los dibujos de una entrada de la lista de graficos de
;   16:61B0, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7A89
;   7A89-7A9B); lo leen p00:4CFF, p00:4B3C (18 bytes)
;   0x7a89..0x7a9b  (18 bytes)
DATA_rle_7A89:
	defb 090h,000h,001h,009h,013h,026h,00ch,078h,071h,000h,0c0h,080h,008h,020h,090h,042h	; 7a89  .....&.xq.... .B
	defb 0a6h,000h	; 7a99

; ----------------------------------------------------------------------
; DATOS rle_7A9B: los colores de una entrada de la lista de graficos de
;   16:61B0, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7A9B
;   7A9B-7AA8); lo leen p00:4D11, p00:4B3C (13 bytes)
;   0x7a9b..0x7aa8  (13 bytes)
DATA_rle_7A9B:
	defb 002h,050h,005h,070h,083h,0f0h,050h,050h,005h,070h,081h,0f0h,000h	; 7a9b  .P.p..PP.p...

; ----------------------------------------------------------------------
; DATOS rle_7AA8: los dibujos de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7AA8
;   7AA8-7ACA); lo leen p00:4CFF, p00:4B3C (34 bytes)
;   0x7aa8..0x7aca  (34 bytes)
DATA_rle_7AA8:
	defb 0a0h,00fh,01fh,037h,000h,06dh,06dh,000h,0f3h,048h,0e3h,016h,0c5h,016h,0deh,002h	; 7aa8  ...7.mm..H......
	defb 0b6h,0aah,0abh,0a2h,0b4h,0a1h,0bch,0f6h,0aah,080h,0b0h,0b4h,086h,033h,037h,087h	; 7ab8  .............37.
	defb 0b7h,000h	; 7ac8

; ----------------------------------------------------------------------
; DATOS rle_7ACA: los colores de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7ACA
;   7ACA-7AEB); lo leen p00:4D11, p00:4B3C (33 bytes)
;   0x7aca..0x7aeb  (33 bytes)
DATA_rle_7ACA:
	defb 089h,0f0h,0e0h,0b0h,030h,030h,020h,000h,020h,050h,004h,070h,084h,054h,050h,054h	; 7aca  ....00 . P.p.TPT
	defb 070h,003h,050h,081h,040h,003h,070h,002h,050h,002h,020h,084h,030h,0b0h,0b0h,0f0h	; 7ada  p.P.@.p.P. .0...
	defb 000h	; 7aea

; ----------------------------------------------------------------------
; DATOS rle_7AEB: los dibujos de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7AEB
;   7AEB-7B65); lo leen p00:4CFF, p00:4B3C (122 bytes)
;   0x7aeb..0x7b65  (122 bytes)
DATA_rle_7AEB:
	defb 090h,001h,072h,08eh,038h,063h,04fh,08eh,014h,012h,045h,0b9h,072h,0fdh,0e3h,086h	; 7aeb  ..r.8cO...E.r...
	defb 038h,003h,000h,085h,0c1h,061h,031h,019h,01ch,003h,000h,085h,0e0h,0b0h,064h,08ch	; 7afb  8....a1.......d.
	defb 03eh,005h,001h,083h,021h,031h,07ch,005h,080h,083h,084h,08ch,03eh,003h,000h,085h	; 7b0b  >...!1|.....>...
	defb 007h,00dh,026h,031h,07ch,003h,000h,095h,083h,086h,08ch,098h,038h,001h,072h,08eh	; 7b1b  ..&1|.......8.r.
	defb 038h,063h,04fh,08eh,014h,012h,045h,0b9h,072h,0fdh,0e3h,086h,038h,003h,000h,085h	; 7b2b  8cO...E.r...8...
	defb 0c1h,061h,031h,019h,01ch,003h,000h,085h,0e0h,0b0h,064h,08ch,03eh,005h,001h,083h	; 7b3b  .a1.......d.>...
	defb 021h,031h,07ch,005h,080h,083h,084h,08ch,03eh,003h,000h,085h,007h,00dh,026h,031h	; 7b4b  !1|.....>.....&1
	defb 07ch,003h,000h,085h,083h,086h,08ch,098h,038h,000h	; 7b5b  |.......8.

; ----------------------------------------------------------------------
; DATOS rle_7B65: los colores de una entrada de la lista de graficos de
;   16:61C3, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7B65
;   7B65-7BC3); lo leen p00:4D11, p00:4B3C (94 bytes)
;   0x7b65..0x7bc3  (94 bytes)
DATA_rle_7B65:
	defb 082h,0f0h,090h,00eh,040h,005h,0f0h,083h,0e0h,070h,050h,004h,0e0h,084h,070h,050h	; 7b65  ....@....pP...pP
	defb 050h,040h,005h,0f0h,083h,0e0h,070h,050h,004h,0e0h,084h,070h,050h,050h,040h,005h	; 7b75  P@....pP...pPP@.
	defb 0e0h,002h,070h,081h,050h,005h,0f0h,087h,0e0h,070h,050h,0d0h,0d0h,050h,050h,004h	; 7b85  ..p.P....pP..PP.
	defb 040h,083h,0d0h,050h,050h,005h,040h,005h,0f0h,083h,0b0h,0a0h,090h,004h,0e0h,002h	; 7b95  @..PP.@.........
	defb 090h,002h,080h,005h,0f0h,083h,0b0h,090h,080h,003h,0e0h,085h,0b0h,090h,080h,080h	; 7ba5  ................
	defb 060h,005h,0e0h,002h,090h,081h,080h,005h,0f0h,002h,0b0h,081h,090h,000h	; 7bb5  `.............

; ----------------------------------------------------------------------
; DATOS rle_7BC3: los dibujos de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7BC3
;   7BC3-7BCA); lo leen p00:4CFF, p00:4B3C (7 bytes)
;   0x7bc3..0x7bca  (7 bytes)
DATA_rle_7BC3:
	defb 008h,0f0h,004h,0ffh,004h,000h,000h	; 7bc3

; ----------------------------------------------------------------------
; DATOS rle_7BCA: los colores de una entrada de la lista de graficos de
;   16:65FA, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7BCA
;   7BCA-7BCD); lo leen p00:4D11, p00:4B3C (3 bytes)
;   0x7bca..0x7bcd  (3 bytes)
DATA_rle_7BCA:
	defb 010h,090h,000h	; 7bca

; ----------------------------------------------------------------------
; DATOS rle_7BCD: los dibujos de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7BCD
;   7BCD-7CC8); lo leen p00:4CFF, p00:4B3C (251 bytes)
;   0x7bcd..0x7cc8  (251 bytes)
DATA_rle_7BCD:
	defb 09ah,03fh,07eh,07ch,0f8h,0f0h,0f0h,0e0h,0c0h,03fh,03fh,067h,047h,08ch,018h,011h	; 7bcd  .?~|.....??gG...
	defb 022h,02fh,017h,002h,0ffh,0ffh,0dfh,097h,024h,080h,0c0h,003h,0e0h,093h,0c0h,080h	; 7bdd  "/......$.......
	defb 000h,01fh,03fh,02fh,047h,00dh,008h,011h,002h,0c0h,0f0h,0fch,07fh,02fh,017h,002h	; 7bed  ..?/G......../..
	defb 07fh,004h,000h,089h,0c0h,0f0h,0fch,05fh,008h,011h,001h,002h,002h,003h,000h,002h	; 7bfd  ......._........
	defb 0ffh,0a1h,07fh,07eh,05ch,080h,000h,000h,03fh,067h,087h,00fh,019h,021h,003h,006h	; 7c0d  ...~\...?g...!..
	defb 0e0h,0f0h,0f8h,0f8h,0fch,0feh,0feh,055h,07fh,09fh,01fh,03fh,06fh,08fh,00fh,01fh	; 7c1d  .......U...?o...
	defb 000h,000h,080h,003h,0c0h,002h,0e0h,003h,03ch,084h,07ch,07eh,0feh,0beh,005h,03fh	; 7c2d  ........<.|~...?
	defb 089h,01fh,00eh,000h,000h,0f0h,0e0h,0e0h,0c0h,080h,003h,000h,0a8h,01ch,007h,003h	; 7c3d  ................
	defb 067h,03fh,01fh,01fh,02ah,0ffh,0ffh,0feh,0feh,0fch,0fch,0f8h,0f8h,000h,000h,001h	; 7c4d  g?..*...........
	defb 000h,004h,003h,001h,030h,007h,033h,01fh,0cfh,07fh,03fh,0ffh,0ffh,0f8h,0f0h,0f0h	; 7c5d  ....0.3...?.....
	defb 0e0h,0e0h,0c0h,080h,080h,003h,000h,092h,002h,011h,009h,00ch,046h,00fh,01fh,01eh	; 7c6d  ............F...
	defb 07eh,03ch,0fch,07ch,0f8h,03fh,01fh,00fh,007h,001h,003h,000h,092h,0ffh,05fh,0aah	; 7c7d  ~<.|.?........_.
	defb 0ffh,0ffh,07fh,000h,000h,0ffh,0d7h,0a8h,0fch,0f0h,080h,000h,000h,0e0h,0c0h,006h	; 7c8d  ................
	defb 000h,083h,030h,07bh,07eh,003h,0ffh,002h,07fh,085h,091h,011h,033h,073h,0fbh,003h	; 7c9d  ..0{~.......3s..
	defb 0ffh,085h,048h,026h,032h,01bh,09bh,003h,0ffh,090h,09fh,05fh,07fh,07eh,0fch,0fch	; 7cad  ..H&2......_.~..
	defb 0f8h,0f0h,03ch,07eh,056h,03fh,00ah,055h,07eh,03ch,000h	; 7cbd  ..<~V?.U~<.

; ----------------------------------------------------------------------
; DATOS rle_7CC8: los colores de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7CC8
;   7CC8-7D34); lo leen p00:4D11, p00:4B3C (108 bytes)
;   0x7cc8..0x7d34  (108 bytes)
DATA_rle_7CC8:
	defb 008h,0c0h,006h,020h,002h,030h,003h,0c2h,002h,022h,002h,020h,081h,030h,003h,0c0h	; 7cc8  ... .0...". .0..
	defb 005h,020h,003h,0c0h,003h,020h,002h,030h,003h,0c0h,004h,0c2h,081h,020h,007h,0c0h	; 7cd8  . ... .0..... ..
	defb 085h,0c2h,020h,030h,020h,020h,004h,030h,005h,020h,003h,030h,004h,0c0h,004h,020h	; 7ce8  .. 0  .0. .0...
	defb 007h,0c0h,081h,0c2h,018h,0c0h,005h,020h,003h,030h,008h,020h,007h,0c0h,081h,0c2h	; 7cf8  ....... .0. ....
	defb 016h,0c0h,002h,0cch,01ah,0c0h,006h,020h,085h,0cch,0c2h,0c2h,022h,022h,003h,020h	; 7d08  ....... ...."".
	defb 083h,0cch,0c2h,0c2h,005h,020h,00ch,0c0h,002h,0cch,002h,0c0h,082h,030h,020h,003h	; 7d18  ..... .......0 .
	defb 0c0h,003h,0cch,002h,020h,003h,0c0h,003h,0cch,008h,0c0h,000h	; 7d28  .... .......

; ----------------------------------------------------------------------
; DATOS rle_7D34: los dibujos de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7D34
;   7D34-7D46); lo leen p00:4CFF, p00:4B3C (18 bytes)
;   0x7d34..0x7d46  (18 bytes)
DATA_rle_7D34:
	defb 090h,000h,03ch,07eh,0cfh,074h,0f4h,07eh,03ch,000h,03ch,07eh,0cfh,074h,0f4h,07eh	; 7d34  ..<~.t.~<.<~.t.~
	defb 03ch,000h	; 7d44

; ----------------------------------------------------------------------
; DATOS rle_7D46: los colores de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7D46
;   7D46-7D57); lo leen p00:4D11, p00:4B3C (17 bytes)
;   0x7d46..0x7d57  (17 bytes)
DATA_rle_7D46:
	defb 003h,090h,085h,09fh,098h,086h,060h,060h,003h,030h,085h,03fh,032h,02ch,0c0h,0c0h	; 7d46  ......``.0.?2,..
	defb 000h	; 7d56

; ----------------------------------------------------------------------
; DATOS rle_7D57: los dibujos de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7D57
;   7D57-7D69); lo leen p00:4CFF, p00:4B3C (18 bytes)
;   0x7d57..0x7d69  (18 bytes)
DATA_rle_7D57:
	defb 090h,0c1h,036h,008h,01ch,01ch,008h,036h,0c1h,081h,081h,042h,05ah,018h,05ah,042h	; 7d57  ..6....6...BZ.ZB
	defb 081h,000h	; 7d67

; ----------------------------------------------------------------------
; DATOS rle_7D69: los colores de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7D69
;   7D69-7D77); lo leen p00:4D11, p00:4B3C (14 bytes)
;   0x7d69..0x7d77  (14 bytes)
DATA_rle_7D69:
	defb 002h,060h,084h,080h,090h,090h,080h,006h,060h,081h,080h,003h,060h,000h	; 7d69  .`......`...`.

; ----------------------------------------------------------------------
; DATOS rle_7D77: los dibujos de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7D77
;   7D77-7E89); lo leen p00:4CFF, p00:4B3C (274 bytes)
;   0x7d77..0x7e89  (274 bytes)
DATA_rle_7D77:
	defb 098h,000h,003h,00fh,01fh,006h,019h,03ch,07eh,000h,09ch,07eh,001h,078h,074h,02ah	; 7d77  .......<~..~.xt*
	defb 005h,07ch,0feh,034h,083h,07eh,07dh,0b9h,080h,003h,000h,0a5h,070h,0fch,0feh,0feh	; 7d87  .|.4.~}.....p...
	defb 02ch,07fh,074h,020h,085h,07eh,070h,00dh,07dh,0abh,07eh,03dh,001h,079h,0feh,08bh	; 7d97  ,.t .~p.}.~=.y..
	defb 005h,07eh,083h,070h,068h,005h,0abh,0d7h,03eh,0c3h,07fh,07fh,0beh,080h,0bch,07eh	; 7da7  .~.ph...>......~
	defb 083h,003h,0fdh,0d5h,07eh,018h,020h,07ch,07eh,070h,064h,083h,0feh,038h,001h,079h	; 7db7  ....~. |~pd..8.y
	defb 0feh,001h,039h,07eh,0feh,085h,072h,0ffh,0abh,074h,020h,083h,0feh,03ch,000h,038h	; 7dc7  ..9~..r..t ..<.8
	defb 07ch,034h,083h,0cfh,07eh,0bch,000h,030h,08eh,07eh,039h,007h,077h,0fbh,0f8h,070h	; 7dd7  |4..~..0.~9.w..p
	defb 003h,007h,067h,0fbh,09ch,043h,00fh,013h,038h,09eh,0b8h,001h,032h,0e8h,0c6h,018h	; 7de7  ..g..C..8...2...
	defb 010h,000h,003h,00bh,01dh,002h,019h,02ch,076h,000h,08ch,05eh,0dch,0dbh,0ech,0d5h	; 7df7  .......,v..^....
	defb 03bh,07ch,09eh,0edh,073h,07eh,07ch,039h,080h,003h,000h,0f5h,030h,074h,066h,0dah	; 7e07  .|..s~|9....0tf.
	defb 0fbh,077h,0f3h,0edh,09dh,06eh,030h,001h,074h,07bh,03ch,000h,001h,079h,09ch,06ch	; 7e17  .w...n0.t{<..y.l
	defb 07bh,06ch,06eh,097h,07bh,0fbh,0e5h,05dh,02eh,0f7h,06eh,077h,036h,080h,0b4h,02ah	; 7e27  {ln.{..]..nw6..*
	defb 07bh,0b9h,0bch,0dch,06eh,018h,000h,064h,03ah,0a7h,0f7h,06fh,0d6h,038h,001h,078h	; 7e37  {...n..d:..o.8.x
	defb 0bch,000h,038h,07ah,036h,0cfh,077h,0b5h,04dh,0fdh,0ddh,0dfh,06eh,034h,000h,038h	; 7e47  ..8z6.w.M...n4.8
	defb 05ch,0dah,0bbh,0d5h,06eh,0bch,000h,030h,08eh,076h,028h,001h,077h,0ebh,098h,070h	; 7e57  \...n..0.v(.w..p
	defb 003h,03eh,03eh,01dh,001h,000h,000h,002h,001h,036h,036h,00dh,001h,000h,000h,002h	; 7e67  .>>......66.....
	defb 001h,003h,006h,01dh,033h,065h,06eh,0cch,09ch,0c2h,0fch,061h,09bh,031h,026h,08eh	; 7e77  ....3en....a.1&.
	defb 09ch,000h	; 7e87

; ----------------------------------------------------------------------
; DATOS rle_7E89: los colores de una entrada de la lista de graficos de
;   16:6108, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7E89
;   7E89-7F51); lo leen p00:4D11, p00:4B3C (200 bytes)
;   0x7e89..0x7f51  (200 bytes)
DATA_rle_7E89:
	defb 002h,030h,081h,020h,003h,0c0h,086h,030h,020h,030h,030h,020h,0c2h,003h,032h,085h	; 7e89  .0. ...0 00 ..2.
	defb 0c2h,030h,020h,032h,0c2h,004h,0c0h,004h,030h,003h,020h,085h,032h,020h,032h,032h	; 7e99  .0 2....0. .2 22
	defb 0c2h,003h,0c0h,082h,020h,0c2h,005h,0c0h,002h,0c2h,084h,0c0h,0c2h,032h,032h,003h	; 7ea9  .... ........22.
	defb 0c2h,082h,0c0h,0c2h,006h,0c0h,083h,0c2h,030h,020h,003h,0c0h,086h,020h,030h,020h	; 7eb9  ........0 ... 0
	defb 032h,032h,0c2h,004h,0c0h,081h,020h,004h,0c0h,087h,0c2h,032h,020h,0c2h,032h,032h	; 7ec9  22.... ....2 .22
	defb 0c2h,003h,0c0h,085h,030h,020h,032h,0c2h,0c2h,003h,0c0h,002h,020h,003h,0c0h,002h	; 7ed9  ....0 2..... ...
	defb 020h,002h,0c0h,091h,020h,030h,030h,020h,030h,0b0h,090h,090h,0b0h,030h,030h,020h	; 7ee9   ... 00 0....00
	defb 030h,0b0h,090h,0b0h,030h,003h,020h,003h,0c0h,009h,020h,081h,0c0h,004h,020h,004h	; 7ef9  0...0. ... ... .
	defb 0c0h,00bh,020h,00eh,0c0h,003h,020h,004h,0c0h,081h,020h,007h,0c0h,002h,020h,003h	; 7f09  .. ... ... ... .
	defb 0c0h,005h,020h,005h,0c0h,081h,020h,004h,0c0h,003h,020h,081h,0c0h,003h,020h,002h	; 7f19  .. ... ... ... .
	defb 0c0h,005h,020h,004h,0c0h,002h,020h,003h,0c0h,002h,020h,002h,0c0h,081h,020h,007h	; 7f29  .. ... ... ... .
	defb 0c0h,081h,020h,007h,0c0h,086h,020h,0c0h,030h,030h,020h,020h,003h,0c0h,088h,020h	; 7f39  .. ... .00  ...
	defb 0c0h,030h,020h,020h,0c0h,020h,0c0h,000h	; 7f49  .0  . ..

; ----------------------------------------------------------------------
; DATOS rle_7F51: los dibujos de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7F51
;   7F51-7F5A); lo leen p00:4CFF, p00:4B3C (9 bytes)
;   0x7f51..0x7f5a  (9 bytes)
DATA_rle_7F51:
	defb 003h,000h,085h,001h,007h,01fh,03fh,0ffh,000h	; 7f51  ......?..

; ----------------------------------------------------------------------
; DATOS rle_7F5A: los colores de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C); se solapan 2 bloques: (rle_vram_7F5A
;   7F5A-7F5D); lo leen p00:4D11, p00:4B3C (3 bytes)
;   0x7f5a..0x7f5d  (3 bytes)
DATA_rle_7F5A:
	defb 008h,0d0h,000h	; 7f5a

; ----------------------------------------------------------------------
; DATOS rle_7F5D: los dibujos de una entrada de la lista de graficos de
;   16:612D, en RLE (p00:4B3C) (sigue en el banco 17, en 0x8000); se solapan 2
;   bloques: (rle_vram_7F5D 7F5D-8000); lo leen p00:4CFF, p00:4B3C (163 bytes)
;   0x7f5d..0x8000  (163 bytes)
DATA_rle_7F5D:
	defb 090h,00fh,03fh,00fh,010h,0ffh,0ffh,03ch,060h,0e0h,0f8h,0ffh,00ch,002h,0ffh,0e7h	; 7f5d  ..?....<`.......
	defb 0f8h,003h,000h,0cdh,0e0h,0fch,038h,006h,001h,001h,007h,01fh,07fh,05fh,007h,0c0h	; 7f6d  ......8......_..
	defb 0e0h,004h,0ffh,040h,00ch,00eh,003h,015h,00ah,0ffh,0ffh,010h,008h,0ffh,0feh,0f4h	; 7f7d  ...@............
	defb 0a0h,0f8h,0f8h,0f0h,0e0h,040h,0ffh,0ffh,087h,0ffh,03fh,007h,03fh,00fh,087h,001h	; 7f8d  .....@....?.?...
	defb 003h,080h,0ffh,0ffh,0feh,007h,0d8h,0f0h,0f8h,084h,040h,0ffh,007h,050h,0f8h,000h	; 7f9d  ..........@..P..
	defb 000h,001h,003h,00fh,01fh,03fh,07fh,07fh,037h,020h,0ffh,006h,038h,060h,0ffh,0ffh	; 7fad  .....?..7 ..8`..
	defb 080h,003h,0ffh,0dfh,047h,08eh,0ffh,0ffh,001h,0feh,040h,0ffh,083h,0ffh,010h,008h	; 7fbd  ....G.....@.....
	defb 0ffh,01fh,0ffh,0e0h,0f8h,080h,0ffh,032h,008h,0f8h,0feh,03fh,00fh,0c0h,0f0h,0feh	; 7fcd  .......2...?....
	defb 030h,03fh,01fh,007h,0c0h,0f0h,03ch,081h,0c0h,050h,020h,0ffh,0ffh,03fh,003h,080h	; 7fdd  0?....<..P ..?..
	defb 0feh,0f0h,0fch,0feh,0ffh,09eh,0c0h,0ffh,01eh,003h,007h,007h,00fh,00fh,01fh,0bfh	; 7fed  ................
	defb 07fh,0c0h,080h	; 7ffd

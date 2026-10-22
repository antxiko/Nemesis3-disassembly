; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 25 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS mapa_9FF7_cola: el mapa del decorado de la fase 9: 120 columnas de 6
;   bloques (p00:5388 lee una columna cada 4 pasos de scroll); va hasta el
;   mapa siguiente (sigue del banco 24); lo leen p00:5388 (711 bytes)
;   0xa000..0xa2c7  (711 bytes)
DATA_mapa_9FF7_cola:
	defb 07eh,000h,067h,007h,070h,000h	; a000
	defb 074h,000h,069h,006h,07fh,000h	; a006
	defb 07dh,000h,068h,00ah,000h,000h	; a00c
	defb 000h,048h,065h,005h,073h,000h	; a012
	defb 077h,000h,067h,007h,072h,079h	; a018
	defb 076h,000h,069h,00fh,07dh,000h	; a01e
	defb 07fh,000h,06fh,000h,000h,000h	; a024
	defb 000h,000h,000h,011h,000h,070h	; a02a
	defb 000h,057h,06ah,012h,000h,076h	; a030
	defb 000h,059h,066h,013h,000h,072h	; a036
	defb 078h,05ah,06dh,012h,000h,070h	; a03c
	defb 000h,05bh,066h,013h,000h,076h	; a042
	defb 000h,05ah,06dh,012h,000h,070h	; a048
	defb 078h,059h,066h,013h,000h,07dh	; a04e
	defb 000h,05bh,06dh,019h,016h,02eh	; a054
	defb 02fh,030h,066h,012h,000h,07ch	; a05a
	defb 000h,059h,06dh,013h,000h,076h	; a060
	defb 000h,05bh,066h,012h,000h,071h	; a066
	defb 078h,05ah,06dh,013h,000h,076h	; a06c
	defb 000h,059h,066h,012h,000h,070h	; a072
	defb 078h,05bh,06dh,014h,000h,07dh	; a078
	defb 000h,058h,06bh,000h,000h,000h	; a07e
	defb 000h,000h,000h,023h,07eh,000h	; a084
	defb 07ch,000h,06eh,01eh,071h,000h	; a08a
	defb 075h,000h,069h,007h,072h,079h	; a090
	defb 076h,000h,069h,006h,073h,000h	; a096
	defb 077h,000h,068h,00ch,070h,000h	; a09c
	defb 074h,02bh,065h,020h,071h,000h	; a0a2
	defb 075h,03dh,06dh,021h,000h,079h	; a0a8
	defb 07bh,03eh,066h,022h,000h,071h	; a0ae
	defb 000h,03fh,06dh,01ah,023h,075h	; a0b4
	defb 079h,04fh,066h,01dh,007h,071h	; a0ba
	defb 000h,054h,06dh,01dh,01eh,075h	; a0c0
	defb 079h,056h,06dh,01ah,006h,071h	; a0c6
	defb 000h,055h,066h,01dh,00ch,075h	; a0cc
	defb 02bh,051h,06dh,01ah,020h,071h	; a0d2
	defb 03dh,052h,066h,01dh,021h,071h	; a0d8
	defb 03eh,053h,06dh,01ah,022h,07dh	; a0de
	defb 03fh,052h,066h,01ch,024h,015h	; a0e4
	defb 035h,04bh,065h,005h,07ch,000h	; a0ea
	defb 07eh,000h,067h,007h,071h,000h	; a0f0
	defb 075h,000h,069h,01eh,072h,079h	; a0f6
	defb 076h,000h,069h,026h,073h,000h	; a0fc
	defb 077h,000h,069h,027h,070h,000h	; a102
	defb 074h,000h,069h,01eh,071h,000h	; a108
	defb 075h,000h,069h,006h,07dh,000h	; a10e
	defb 07fh,000h,068h,01fh,028h,015h	; a114
	defb 00dh,044h,065h,005h,07ch,000h	; a11a
	defb 07eh,000h,067h,007h,070h,000h	; a120
	defb 074h,000h,069h,01eh,071h,000h	; a126
	defb 075h,000h,069h,026h,072h,079h	; a12c
	defb 076h,000h,069h,027h,073h,000h	; a132
	defb 077h,000h,069h,006h,07dh,000h	; a138
	defb 07fh,000h,068h,025h,028h,015h	; a13e
	defb 00dh,04ch,065h,020h,000h,07ch	; a144
	defb 000h,03fh,066h,01ah,023h,077h	; a14a
	defb 000h,04ah,06dh,010h,029h,080h	; a150
	defb 031h,047h,06dh,020h,07eh,072h	; a156
	defb 000h,054h,066h,022h,07fh,07dh	; a15c
	defb 078h,056h,06dh,01ah,017h,034h	; a162
	defb 000h,056h,066h,010h,02dh,07ch	; a168
	defb 000h,055h,06dh,020h,07ch,07fh	; a16e
	defb 032h,047h,066h,020h,07fh,031h	; a174
	defb 033h,033h,065h,021h,071h,07ch	; a17a
	defb 07ch,000h,067h,022h,07dh,07dh	; a180
	defb 07dh,000h,068h,010h,028h,034h	; a186
	defb 000h,045h,065h,020h,07ch,07ch	; a18c
	defb 07ch,054h,066h,020h,075h,07dh	; a192
	defb 07dh,055h,06dh,021h,07fh,031h	; a198
	defb 028h,047h,06dh,020h,077h,000h	; a19e
	defb 07ch,054h,066h,00eh,075h,036h	; a1a4
	defb 071h,046h,065h,005h,07dh,037h	; a1aa
	defb 07fh,000h,067h,006h,02ah,038h	; a1b0
	defb 03bh,000h,069h,007h,080h,03ch	; a1b6
	defb 009h,080h,067h,006h,02bh,039h	; a1bc
	defb 00ch,000h,068h,01eh,02ch,000h	; a1c2
	defb 03ah,000h,069h,006h,000h,080h	; a1c8
	defb 000h,000h,068h,025h,01bh,000h	; a1ce
	defb 032h,050h,06bh,01dh,020h,080h	; a1d4
	defb 041h,051h,066h,01dh,021h,000h	; a1da
	defb 040h,053h,06dh,01ah,020h,080h	; a1e0
	defb 041h,052h,066h,01dh,021h,000h	; a1e6
	defb 042h,051h,06dh,01ah,021h,000h	; a1ec
	defb 040h,053h,066h,01ah,020h,080h	; a1f2
	defb 041h,053h,06dh,01dh,021h,000h	; a1f8
	defb 042h,052h,066h,024h,02dh,000h	; a1fe
	defb 043h,04bh,06bh,05dh,000h,000h	; a204
	defb 000h,000h,064h,05dh,000h,000h	; a20a
	defb 000h,000h,064h,05dh,000h,000h	; a210
	defb 000h,000h,064h,05dh,000h,000h	; a216
	defb 000h,000h,064h,05dh,000h,000h	; a21c
	defb 000h,000h,064h,05dh,000h,000h	; a222
	defb 000h,000h,064h,05dh,000h,000h	; a228
	defb 000h,000h,064h,05ch,000h,000h	; a22e
	defb 000h,000h,063h,05dh,000h,000h	; a234
	defb 000h,000h,064h,05dh,000h,000h	; a23a
	defb 000h,000h,064h,05dh,000h,000h	; a240
	defb 000h,000h,064h,05dh,000h,000h	; a246
	defb 000h,000h,064h,05dh,000h,000h	; a24c
	defb 000h,000h,064h,05dh,000h,000h	; a252
	defb 000h,000h,064h,05dh,000h,000h	; a258
	defb 000h,000h,064h,05ch,000h,000h	; a25e
	defb 000h,000h,063h,05dh,000h,000h	; a264
	defb 000h,000h,064h,05dh,000h,000h	; a26a
	defb 000h,000h,064h,05dh,000h,000h	; a270
	defb 000h,000h,064h,05dh,000h,000h	; a276
	defb 000h,000h,064h,05dh,000h,000h	; a27c
	defb 000h,000h,064h,05dh,000h,000h	; a282
	defb 000h,000h,064h,05dh,000h,000h	; a288
	defb 000h,000h,064h,05ch,000h,000h	; a28e
	defb 000h,000h,063h,05dh,000h,000h	; a294
	defb 000h,000h,064h,05dh,000h,000h	; a29a
	defb 000h,000h,064h,05dh,000h,000h	; a2a0
	defb 000h,000h,064h,05dh,000h,000h	; a2a6
	defb 000h,000h,064h,05dh,000h,000h	; a2ac
	defb 000h,000h,064h,05dh,000h,000h	; a2b2
	defb 000h,000h,064h,05ch,000h,000h	; a2b8
	defb 000h,000h,063h,05eh,05fh,060h	; a2be
	defb 061h,062h,06ch	; a2c4

; ----------------------------------------------------------------------
; DATOS mapa_A2C7: el mapa del decorado de la fase 10: 136 columnas de 6
;   bloques (p00:5388 lee una columna cada 4 pasos de scroll); va hasta el
;   mapa siguiente; lo leen p00:5388 (816 bytes)
;   0xa2c7..0xa5f7  (816 bytes)
DATA_mapa_A2C7:
	defb 000h,000h,05fh,05fh,000h,000h	; a2c7
	defb 000h,004h,05bh,00bh,000h,000h	; a2cd
	defb 000h,005h,000h,00ch,05ch,000h	; a2d3
	defb 007h,006h,086h,00dh,011h,000h	; a2d9
	defb 005h,061h,088h,08ch,010h,05ch	; a2df
	defb 009h,063h,089h,08dh,00ah,078h	; a2e5
	defb 008h,000h,08ch,088h,00eh,05eh	; a2eb
	defb 006h,000h,08bh,08fh,00dh,05dh	; a2f1
	defb 008h,000h,08ah,08eh,00eh,05eh	; a2f7
	defb 006h,087h,000h,086h,00dh,05dh	; a2fd
	defb 010h,05ch,08bh,08fh,005h,061h	; a303
	defb 009h,063h,08ah,08eh,00ah,078h	; a309
	defb 015h,008h,086h,00eh,00fh,05ah	; a30f
	defb 00bh,006h,000h,00dh,013h,05bh	; a315
	defb 005h,010h,05ch,005h,010h,05ch	; a31b
	defb 010h,015h,063h,00ah,005h,061h	; a321
	defb 018h,016h,087h,007h,017h,060h	; a327
	defb 017h,060h,088h,08ch,018h,062h	; a32d
	defb 008h,000h,089h,08dh,00eh,05eh	; a333
	defb 06ah,08ah,007h,000h,08eh,06eh	; a339
	defb 06ah,08bh,039h,072h,08fh,06eh	; a33f
	defb 06ah,03ah,071h,03bh,000h,06eh	; a345
	defb 066h,08bh,086h,000h,08fh,069h	; a34b
	defb 064h,03ch,073h,03fh,000h,067h	; a351
	defb 06ah,088h,03dh,074h,08ch,06eh	; a357
	defb 066h,08ah,03eh,000h,08eh,069h	; a35d
	defb 064h,089h,088h,08ch,08dh,067h	; a363
	defb 066h,000h,08ah,08eh,000h,069h	; a369
	defb 006h,065h,000h,000h,019h,05ch	; a36f
	defb 064h,000h,089h,08dh,000h,067h	; a375
	defb 006h,065h,000h,000h,019h,05ch	; a37b
	defb 066h,000h,08bh,08fh,000h,069h	; a381
	defb 01ch,06bh,087h,000h,02eh,075h	; a387
	defb 01bh,06ch,08ah,08eh,02fh,076h	; a38d
	defb 01dh,06dh,088h,02ch,030h,077h	; a393
	defb 01ah,000h,08eh,02dh,034h,076h	; a399
	defb 01eh,000h,08ah,038h,036h,077h	; a39f
	defb 01fh,06fh,088h,035h,037h,076h	; a3a5
	defb 022h,070h,08ah,000h,031h,077h	; a3ab
	defb 01bh,027h,08bh,08ch,02fh,076h	; a3b1
	defb 022h,01eh,000h,08dh,031h,077h	; a3b7
	defb 01bh,01fh,020h,08ah,02fh,076h	; a3bd
	defb 01dh,023h,021h,08ah,031h,077h	; a3c3
	defb 01ah,088h,000h,08bh,02fh,076h	; a3c9
	defb 01eh,089h,02eh,032h,030h,077h	; a3cf
	defb 01ah,08ah,035h,033h,037h,076h	; a3d5
	defb 01eh,08bh,000h,088h,031h,077h	; a3db
	defb 024h,025h,026h,08ah,02fh,076h	; a3e1
	defb 041h,047h,028h,08bh,02ah,058h	; a3e7
	defb 047h,041h,028h,089h,02ah,079h	; a3ed
	defb 041h,043h,088h,08bh,045h,058h	; a3f3
	defb 047h,005h,089h,046h,005h,079h	; a3f9
	defb 041h,000h,000h,000h,000h,058h	; a3ff
	defb 047h,00bh,08ah,046h,00bh,079h	; a405
	defb 041h,047h,08bh,088h,044h,058h	; a40b
	defb 047h,042h,043h,08bh,045h,079h	; a411
	defb 041h,043h,088h,08bh,044h,058h	; a417
	defb 047h,028h,089h,00ah,046h,079h	; a41d
	defb 041h,000h,000h,000h,000h,058h	; a423
	defb 047h,00bh,08ah,005h,046h,079h	; a429
	defb 041h,008h,089h,00ah,046h,058h	; a42f
	defb 047h,000h,000h,000h,000h,079h	; a435
	defb 041h,00bh,08bh,00ah,046h,058h	; a43b
	defb 047h,000h,000h,000h,000h,079h	; a441
	defb 042h,047h,00ah,00ah,089h,058h	; a447
	defb 061h,000h,000h,000h,000h,059h	; a44d
	defb 055h,000h,000h,000h,000h,056h	; a453
	defb 063h,000h,000h,000h,000h,057h	; a459
	defb 090h,000h,000h,000h,000h,056h	; a45f
	defb 063h,000h,000h,000h,000h,057h	; a465
	defb 055h,000h,000h,000h,000h,056h	; a46b
	defb 05ch,000h,000h,000h,000h,05ah	; a471
	defb 055h,000h,000h,000h,000h,056h	; a477
	defb 063h,000h,000h,000h,091h,057h	; a47d
	defb 055h,000h,000h,000h,092h,056h	; a483
	defb 063h,000h,000h,000h,000h,057h	; a489
	defb 055h,000h,000h,000h,000h,056h	; a48f
	defb 063h,000h,000h,000h,000h,057h	; a495
	defb 090h,000h,000h,000h,000h,056h	; a49b
	defb 05ch,000h,000h,000h,000h,05ah	; a4a1
	defb 055h,000h,000h,000h,000h,056h	; a4a7
	defb 064h,000h,000h,000h,000h,067h	; a4ad
	defb 065h,000h,000h,000h,000h,068h	; a4b3
	defb 066h,000h,000h,000h,000h,069h	; a4b9
	defb 048h,050h,050h,050h,050h,07ah	; a4bf
	defb 049h,005h,04eh,04fh,005h,07bh	; a4c5
	defb 04ah,040h,04eh,04fh,040h,07ch	; a4cb
	defb 049h,040h,008h,00fh,040h,07bh	; a4d1
	defb 04ah,00ah,00ah,00ah,00ah,07ch	; a4d7
	defb 04bh,051h,051h,051h,051h,07dh	; a4dd
	defb 066h,088h,000h,000h,08ch,069h	; a4e3
	defb 064h,08bh,08ah,08eh,08fh,067h	; a4e9
	defb 012h,05ch,08bh,08fh,08dh,06eh	; a4ef
	defb 06ah,000h,000h,000h,000h,057h	; a4f5
	defb 06ah,089h,08ah,08eh,006h,05bh	; a4fb
	defb 063h,000h,08bh,08fh,000h,06eh	; a501
	defb 012h,05ch,000h,000h,08dh,06eh	; a507
	defb 06ah,000h,08ah,08eh,000h,057h	; a50d
	defb 06ah,089h,088h,08ch,006h,05bh	; a513
	defb 06ah,000h,08ah,08eh,000h,06eh	; a519
	defb 063h,000h,08bh,08fh,08dh,06eh	; a51f
	defb 012h,05ch,000h,000h,000h,057h	; a525
	defb 06ah,000h,08ah,08eh,006h,05bh	; a52b
	defb 06ah,08ah,08bh,08fh,000h,06eh	; a531
	defb 06ah,089h,088h,08ch,08dh,06eh	; a537
	defb 06ah,000h,08bh,08fh,000h,06eh	; a53d
	defb 06ah,000h,000h,000h,000h,06eh	; a543
	defb 06ah,000h,000h,000h,000h,06eh	; a549
	defb 063h,089h,000h,000h,08dh,057h	; a54f
	defb 005h,004h,052h,04ch,00ch,05ch	; a555
	defb 006h,03ah,053h,04dh,00dh,05dh	; a55b
	defb 06ah,089h,000h,000h,08dh,06eh	; a561
	defb 06ah,000h,000h,000h,000h,06eh	; a567
	defb 061h,088h,000h,000h,08ch,059h	; a56d
	defb 07eh,08bh,000h,000h,08fh,07fh	; a573
	defb 07eh,000h,000h,000h,000h,07fh	; a579
	defb 07eh,08ah,000h,000h,08eh,07fh	; a57f
	defb 046h,005h,080h,084h,046h,071h	; a585
	defb 053h,008h,081h,085h,00fh,055h	; a58b
	defb 04fh,082h,087h,083h,053h,06eh	; a591
	defb 063h,08ah,08bh,08fh,08eh,057h	; a597
	defb 07bh,04eh,04fh,04fh,05ch,056h	; a59d
	defb 055h,054h,012h,008h,07ch,056h	; a5a3
	defb 05ch,053h,040h,040h,07bh,05ah	; a5a9
	defb 055h,00ah,012h,015h,07ch,056h	; a5af
	defb 05ch,008h,088h,052h,063h,05ah	; a5b5
	defb 063h,086h,08ah,087h,000h,057h	; a5bb
	defb 017h,040h,08bh,040h,04fh,062h	; a5c1
	defb 053h,006h,088h,053h,046h,05eh	; a5c7
	defb 008h,04fh,089h,005h,008h,055h	; a5cd
	defb 008h,00bh,08bh,054h,008h,05bh	; a5d3
	defb 04fh,00ah,000h,00ah,053h,055h	; a5d9
	defb 005h,088h,000h,088h,006h,05eh	; a5df
	defb 04fh,08ah,040h,08ah,053h,055h	; a5e5
	defb 008h,089h,008h,089h,006h,05eh	; a5eb
	defb 00ah,000h,00ah,000h,00ah,063h	; a5f1

; ----------------------------------------------------------------------
; DATOS mapa_A5F7: el mapa del decorado de la fase 11: 24 columnas de 6
;   bloques (p00:5388 lee una columna cada 4 pasos de scroll); va hasta el
;   mapa siguiente; lo leen p00:5388 (144 bytes)
;   0xa5f7..0xa687  (144 bytes)
DATA_mapa_A5F7:
	defb 028h,02ch,000h,000h,038h,03ch	; a5f7
	defb 029h,02dh,000h,000h,039h,03dh	; a5fd
	defb 02ah,02eh,000h,000h,03ah,03eh	; a603
	defb 02bh,000h,000h,000h,03bh,03fh	; a609
	defb 027h,000h,000h,000h,000h,034h	; a60f
	defb 02fh,000h,000h,000h,000h,035h	; a615
	defb 030h,000h,000h,000h,000h,036h	; a61b
	defb 031h,000h,000h,000h,000h,037h	; a621
	defb 032h,000h,000h,000h,000h,040h	; a627
	defb 02fh,000h,000h,000h,000h,036h	; a62d
	defb 030h,000h,000h,000h,000h,041h	; a633
	defb 032h,000h,000h,000h,000h,037h	; a639
	defb 02fh,000h,000h,000h,000h,036h	; a63f
	defb 030h,000h,000h,000h,000h,037h	; a645
	defb 031h,000h,000h,000h,000h,041h	; a64b
	defb 033h,000h,000h,000h,000h,063h	; a651
	defb 004h,000h,000h,000h,00ch,00dh	; a657
	defb 005h,000h,000h,000h,00eh,00fh	; a65d
	defb 006h,000h,000h,000h,010h,014h	; a663
	defb 007h,000h,000h,000h,011h,015h	; a669
	defb 008h,000h,01ah,01eh,012h,016h	; a66f
	defb 009h,024h,01bh,01fh,013h,017h	; a675
	defb 00ah,025h,022h,020h,018h,01ch	; a67b
	defb 00bh,026h,023h,021h,019h,01dh	; a681

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa687..0xa800  (377 bytes)
DATA_A687:
	defb 04fh,000h,000h,000h,000h,042h,051h,000h,000h,000h,043h,044h,052h,054h,000h,000h	; a687  O....BQ...CDRT..
	defb 045h,044h,05ch,055h,000h,05dh,046h,04ch,050h,056h,060h,05eh,047h,04bh,059h,05ch	; a697  ED\U.]FLPV`^GKY\
	defb 061h,05fh,04ah,04ch,058h,05bh,062h,04eh,048h,04bh,05ah,057h,000h,000h,049h,04dh	; a6a7  a_JLX[bNHKZW..IM
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a6b7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a6c7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a6d7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a6e7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a6f7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a707  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a717  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a727  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a737  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a747  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a757  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a767  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a777  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a787  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a797  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a7a7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a7b7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a7c7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a7d7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a7e7  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; a7f7  .........

; ----------------------------------------------------------------------
; DATOS leido_A800: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa800..0xa801  (1 bytes)
DATA_leido_A800:
	defb 0feh	; a800

; ----------------------------------------------------------------------
; DATOS leido_A801: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa801..0xa802  (1 bytes)
DATA_leido_A801:
	defb 002h	; a801

; ----------------------------------------------------------------------
; DATOS leido_A802: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa802..0xa803  (1 bytes)
DATA_leido_A802:
	defb 0e1h	; a802

; ----------------------------------------------------------------------
; DATOS leido_A803: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa803..0xa804  (1 bytes)
DATA_leido_A803:
	defb 009h	; a803

; ----------------------------------------------------------------------
; DATOS leido_A804: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa804..0xa805  (1 bytes)
DATA_leido_A804:
	defb 0e4h	; a804

; ----------------------------------------------------------------------
; DATOS leido_A805: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0xa805..0xa806  (1 bytes)
DATA_leido_A805:
	defb 01fh	; a805

; ----------------------------------------------------------------------
; DATOS leido_A806: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa806..0xa808  (2 bytes)
DATA_leido_A806:
	defb 00bh,0e1h	; a806

; ----------------------------------------------------------------------
; DATOS leido_A808: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa808..0xa809  (1 bytes)
DATA_leido_A808:
	defb 00ah	; a808

; ----------------------------------------------------------------------
; DATOS leido_A809: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa809..0xa80a  (1 bytes)
DATA_leido_A809:
	defb 0e4h	; a809

; ----------------------------------------------------------------------
; DATOS leido_A80A: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0xa80a..0xa80b  (1 bytes)
DATA_leido_A80A:
	defb 01ch	; a80a

; ----------------------------------------------------------------------
; DATOS leido_A80B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa80b..0xa80d  (2 bytes)
DATA_leido_A80B:
	defb 008h,0e4h	; a80b

; ----------------------------------------------------------------------
; DATOS leido_A80D: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0xa80d..0xa80e  (1 bytes)
DATA_leido_A80D:
	defb 01dh	; a80d

; ----------------------------------------------------------------------
; DATOS leido_A80E: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 8 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (13
;   bytes)
;   0xa80e..0xa81b  (13 bytes)
DATA_leido_A80E:
	defb 007h,006h,005h,004h,0e1h,00ah,0e4h,01eh,003h,002h,001h,0ffh,0feh	; a80e  .............

; ----------------------------------------------------------------------
; DATOS leido_A81B: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa81b..0xa81c  (1 bytes)
DATA_leido_A81B:
	defb 002h	; a81b

; ----------------------------------------------------------------------
; DATOS leido_A81C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa81c..0xa81d  (1 bytes)
DATA_leido_A81C:
	defb 0f9h	; a81c

; ----------------------------------------------------------------------
; DATOS leido_A81D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa81d..0xa81f  (2 bytes)
DATA_leido_A81D:
	defb 091h,0a9h	; a81d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa81f..0xa820  (1 bytes)
DATA_A81F:
	defb 0ffh	; a81f

; ----------------------------------------------------------------------
; DATOS leido_A820: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa820..0xa821  (1 bytes)
DATA_leido_A820:
	defb 0feh	; a820

; ----------------------------------------------------------------------
; DATOS leido_A821: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa821..0xa822  (1 bytes)
DATA_leido_A821:
	defb 002h	; a821

; ----------------------------------------------------------------------
; DATOS leido_A822: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa822..0xa823  (1 bytes)
DATA_leido_A822:
	defb 0e0h	; a822

; ----------------------------------------------------------------------
; DATOS leido_A823: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa823..0xa824  (1 bytes)
DATA_leido_A823:
	defb 002h	; a823

; ----------------------------------------------------------------------
; DATOS leido_A824: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa824..0xa825  (1 bytes)
DATA_leido_A824:
	defb 0eeh	; a824

; ----------------------------------------------------------------------
; DATOS leido_A825: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xa825..0xa826  (1 bytes)
DATA_leido_A825:
	defb 003h	; a825

; ----------------------------------------------------------------------
; DATOS leido_A826: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa826..0xa827  (1 bytes)
DATA_leido_A826:
	defb 0f9h	; a826

; ----------------------------------------------------------------------
; DATOS leido_A827: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa827..0xa829  (2 bytes)
DATA_leido_A827:
	defb 091h,0a9h	; a827

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa829..0xa82c  (3 bytes)
DATA_A829:
	defb 0e0h,09dh,0ffh	; a829

; ----------------------------------------------------------------------
; DATOS leido_A82C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa82c..0xa82d  (1 bytes)
DATA_leido_A82C:
	defb 0feh	; a82c

; ----------------------------------------------------------------------
; DATOS leido_A82D: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa82d..0xa82e  (1 bytes)
DATA_leido_A82D:
	defb 002h	; a82d

; ----------------------------------------------------------------------
; DATOS leido_A82E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa82e..0xa82f  (1 bytes)
DATA_leido_A82E:
	defb 0f8h	; a82e

; ----------------------------------------------------------------------
; DATOS leido_A82F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa82f..0xa830  (1 bytes)
DATA_leido_A82F:
	defb 027h	; a82f

; ----------------------------------------------------------------------
; DATOS leido_A830: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa830..0xa831  (1 bytes)
DATA_leido_A830:
	defb 0e2h	; a830

; ----------------------------------------------------------------------
; DATOS leido_A831: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa831..0xa832  (1 bytes)
DATA_leido_A831:
	defb 003h	; a831

; ----------------------------------------------------------------------
; DATOS leido_A832: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa832..0xa833  (1 bytes)
DATA_leido_A832:
	defb 0c1h	; a832

; ----------------------------------------------------------------------
; DATOS leido_A833: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa833..0xa834  (1 bytes)
DATA_leido_A833:
	defb 080h	; a833

; ----------------------------------------------------------------------
; DATOS leido_A834: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa834..0xa835  (1 bytes)
DATA_leido_A834:
	defb 0f9h	; a834

; ----------------------------------------------------------------------
; DATOS leido_A835: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa835..0xa837  (2 bytes)
DATA_leido_A835:
	defb 0bfh,0a9h	; a835

; ----------------------------------------------------------------------
; DATOS leido_A837: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa837..0xa838  (1 bytes)
DATA_leido_A837:
	defb 048h	; a837

; ----------------------------------------------------------------------
; DATOS leido_A838: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa838..0xa839  (1 bytes)
DATA_leido_A838:
	defb 080h	; a838

; ----------------------------------------------------------------------
; DATOS leido_A839: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa839..0xa83a  (1 bytes)
DATA_leido_A839:
	defb 0f9h	; a839

; ----------------------------------------------------------------------
; DATOS leido_A83A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa83a..0xa83c  (2 bytes)
DATA_leido_A83A:
	defb 0d0h,0a9h	; a83a

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa83c..0xa83f  (3 bytes)
DATA_A83C:
	defb 0e0h,090h,0ffh	; a83c

; ----------------------------------------------------------------------
; DATOS leido_A83F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa83f..0xa840  (1 bytes)
DATA_leido_A83F:
	defb 0feh	; a83f

; ----------------------------------------------------------------------
; DATOS leido_A840: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa840..0xa841  (1 bytes)
DATA_leido_A840:
	defb 002h	; a840

; ----------------------------------------------------------------------
; DATOS leido_A841: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa841..0xa842  (1 bytes)
DATA_leido_A841:
	defb 0f8h	; a841

; ----------------------------------------------------------------------
; DATOS leido_A842: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa842..0xa843  (1 bytes)
DATA_leido_A842:
	defb 014h	; a842

; ----------------------------------------------------------------------
; DATOS leido_A843: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa843..0xa844  (1 bytes)
DATA_leido_A843:
	defb 0e2h	; a843

; ----------------------------------------------------------------------
; DATOS leido_A844: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa844..0xa845  (1 bytes)
DATA_leido_A844:
	defb 003h	; a844

; ----------------------------------------------------------------------
; DATOS leido_A845: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa845..0xa846  (1 bytes)
DATA_leido_A845:
	defb 0f9h	; a845

; ----------------------------------------------------------------------
; DATOS leido_A846: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa846..0xa848  (2 bytes)
DATA_leido_A846:
	defb 0bfh,0a9h	; a846

; ----------------------------------------------------------------------
; DATOS leido_A848: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa848..0xa849  (1 bytes)
DATA_leido_A848:
	defb 0cfh	; a848

; ----------------------------------------------------------------------
; DATOS leido_A849: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa849..0xa84a  (1 bytes)
DATA_leido_A849:
	defb 080h	; a849

; ----------------------------------------------------------------------
; DATOS leido_A84A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa84a..0xa84b  (1 bytes)
DATA_leido_A84A:
	defb 0f9h	; a84a

; ----------------------------------------------------------------------
; DATOS leido_A84B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa84b..0xa84d  (2 bytes)
DATA_leido_A84B:
	defb 0d0h,0a9h	; a84b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa84d..0xa850  (3 bytes)
DATA_A84D:
	defb 00fh,080h,0ffh	; a84d

; ----------------------------------------------------------------------
; DATOS leido_A850: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa850..0xa851  (1 bytes)
DATA_leido_A850:
	defb 0feh	; a850

; ----------------------------------------------------------------------
; DATOS leido_A851: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa851..0xa852  (1 bytes)
DATA_leido_A851:
	defb 002h	; a851

; ----------------------------------------------------------------------
; DATOS leido_A852: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa852..0xa853  (1 bytes)
DATA_leido_A852:
	defb 0f8h	; a852

; ----------------------------------------------------------------------
; DATOS leido_A853: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa853..0xa854  (1 bytes)
DATA_leido_A853:
	defb 00ah	; a853

; ----------------------------------------------------------------------
; DATOS leido_A854: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa854..0xa855  (1 bytes)
DATA_leido_A854:
	defb 0e2h	; a854

; ----------------------------------------------------------------------
; DATOS leido_A855: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa855..0xa856  (1 bytes)
DATA_leido_A855:
	defb 001h	; a855

; ----------------------------------------------------------------------
; DATOS leido_A856: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa856..0xa857  (1 bytes)
DATA_leido_A856:
	defb 0c2h	; a856

; ----------------------------------------------------------------------
; DATOS leido_A857: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa857..0xa858  (1 bytes)
DATA_leido_A857:
	defb 040h	; a857

; ----------------------------------------------------------------------
; DATOS leido_A858: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa858..0xa859  (1 bytes)
DATA_leido_A858:
	defb 0c3h	; a858

; ----------------------------------------------------------------------
; DATOS leido_A859: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa859..0xa85a  (1 bytes)
DATA_leido_A859:
	defb 084h	; a859

; ----------------------------------------------------------------------
; DATOS leido_A85A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa85a..0xa85b  (1 bytes)
DATA_leido_A85A:
	defb 0c5h	; a85a

; ----------------------------------------------------------------------
; DATOS leido_A85B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa85b..0xa85c  (1 bytes)
DATA_leido_A85B:
	defb 07eh	; a85b

; ----------------------------------------------------------------------
; DATOS leido_A85C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa85c..0xa85d  (1 bytes)
DATA_leido_A85C:
	defb 0e0h	; a85c

; ----------------------------------------------------------------------
; DATOS leido_A85D: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa85d..0xa85e  (1 bytes)
DATA_leido_A85D:
	defb 003h	; a85d

; ----------------------------------------------------------------------
; DATOS leido_A85E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa85e..0xa85f  (1 bytes)
DATA_leido_A85E:
	defb 0fbh	; a85e

; ----------------------------------------------------------------------
; DATOS leido_A85F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa85f..0xa862  (3 bytes)
DATA_leido_A85F:
	defb 003h,054h,0a8h	; a85f

; ----------------------------------------------------------------------
; DATOS leido_A862: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa862..0xa863  (1 bytes)
DATA_leido_A862:
	defb 0e2h	; a862

; ----------------------------------------------------------------------
; DATOS leido_A863: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa863..0xa864  (1 bytes)
DATA_leido_A863:
	defb 001h	; a863

; ----------------------------------------------------------------------
; DATOS leido_A864: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa864..0xa865  (1 bytes)
DATA_leido_A864:
	defb 0c1h	; a864

; ----------------------------------------------------------------------
; DATOS leido_A865: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa865..0xa866  (1 bytes)
DATA_leido_A865:
	defb 058h	; a865

; ----------------------------------------------------------------------
; DATOS leido_A866: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa866..0xa867  (1 bytes)
DATA_leido_A866:
	defb 0c2h	; a866

; ----------------------------------------------------------------------
; DATOS leido_A867: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa867..0xa868  (1 bytes)
DATA_leido_A867:
	defb 019h	; a867

; ----------------------------------------------------------------------
; DATOS leido_A868: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa868..0xa869  (1 bytes)
DATA_leido_A868:
	defb 0c3h	; a868

; ----------------------------------------------------------------------
; DATOS leido_A869: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa869..0xa86a  (1 bytes)
DATA_leido_A869:
	defb 047h	; a869

; ----------------------------------------------------------------------
; DATOS leido_A86A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa86a..0xa86b  (1 bytes)
DATA_leido_A86A:
	defb 0c5h	; a86a

; ----------------------------------------------------------------------
; DATOS leido_A86B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa86b..0xa86c  (1 bytes)
DATA_leido_A86B:
	defb 020h	; a86b

; ----------------------------------------------------------------------
; DATOS leido_A86C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa86c..0xa86d  (1 bytes)
DATA_leido_A86C:
	defb 0c8h	; a86c

; ----------------------------------------------------------------------
; DATOS leido_A86D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa86d..0xa86e  (1 bytes)
DATA_leido_A86D:
	defb 002h	; a86d

; ----------------------------------------------------------------------
; DATOS leido_A86E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa86e..0xa86f  (1 bytes)
DATA_leido_A86E:
	defb 0cch	; a86e

; ----------------------------------------------------------------------
; DATOS leido_A86F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa86f..0xa870  (1 bytes)
DATA_leido_A86F:
	defb 083h	; a86f

; ----------------------------------------------------------------------
; DATOS leido_A870: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa870..0xa871  (1 bytes)
DATA_leido_A870:
	defb 0a1h	; a870

; ----------------------------------------------------------------------
; DATOS leido_A871: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa871..0xa872  (1 bytes)
DATA_leido_A871:
	defb 058h	; a871

; ----------------------------------------------------------------------
; DATOS leido_A872: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa872..0xa873  (1 bytes)
DATA_leido_A872:
	defb 0a2h	; a872

; ----------------------------------------------------------------------
; DATOS leido_A873: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa873..0xa874  (1 bytes)
DATA_leido_A873:
	defb 019h	; a873

; ----------------------------------------------------------------------
; DATOS leido_A874: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa874..0xa875  (1 bytes)
DATA_leido_A874:
	defb 0a3h	; a874

; ----------------------------------------------------------------------
; DATOS leido_A875: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa875..0xa876  (1 bytes)
DATA_leido_A875:
	defb 047h	; a875

; ----------------------------------------------------------------------
; DATOS leido_A876: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa876..0xa877  (1 bytes)
DATA_leido_A876:
	defb 0a5h	; a876

; ----------------------------------------------------------------------
; DATOS leido_A877: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa877..0xa878  (1 bytes)
DATA_leido_A877:
	defb 020h	; a877

; ----------------------------------------------------------------------
; DATOS leido_A878: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa878..0xa879  (1 bytes)
DATA_leido_A878:
	defb 0a8h	; a878

; ----------------------------------------------------------------------
; DATOS leido_A879: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa879..0xa87a  (1 bytes)
DATA_leido_A879:
	defb 002h	; a879

; ----------------------------------------------------------------------
; DATOS leido_A87A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa87a..0xa87b  (1 bytes)
DATA_leido_A87A:
	defb 0ach	; a87a

; ----------------------------------------------------------------------
; DATOS leido_A87B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa87b..0xa87c  (1 bytes)
DATA_leido_A87B:
	defb 083h	; a87b

; ----------------------------------------------------------------------
; DATOS leido_A87C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa87c..0xa87d  (1 bytes)
DATA_leido_A87C:
	defb 081h	; a87c

; ----------------------------------------------------------------------
; DATOS leido_A87D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa87d..0xa87e  (1 bytes)
DATA_leido_A87D:
	defb 058h	; a87d

; ----------------------------------------------------------------------
; DATOS leido_A87E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa87e..0xa87f  (1 bytes)
DATA_leido_A87E:
	defb 082h	; a87e

; ----------------------------------------------------------------------
; DATOS leido_A87F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa87f..0xa880  (1 bytes)
DATA_leido_A87F:
	defb 019h	; a87f

; ----------------------------------------------------------------------
; DATOS leido_A880: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa880..0xa881  (1 bytes)
DATA_leido_A880:
	defb 083h	; a880

; ----------------------------------------------------------------------
; DATOS leido_A881: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa881..0xa882  (1 bytes)
DATA_leido_A881:
	defb 047h	; a881

; ----------------------------------------------------------------------
; DATOS leido_A882: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa882..0xa883  (1 bytes)
DATA_leido_A882:
	defb 085h	; a882

; ----------------------------------------------------------------------
; DATOS leido_A883: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa883..0xa884  (1 bytes)
DATA_leido_A883:
	defb 020h	; a883

; ----------------------------------------------------------------------
; DATOS leido_A884: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa884..0xa885  (1 bytes)
DATA_leido_A884:
	defb 088h	; a884

; ----------------------------------------------------------------------
; DATOS leido_A885: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa885..0xa886  (1 bytes)
DATA_leido_A885:
	defb 002h	; a885

; ----------------------------------------------------------------------
; DATOS leido_A886: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa886..0xa887  (1 bytes)
DATA_leido_A886:
	defb 08ch	; a886

; ----------------------------------------------------------------------
; DATOS leido_A887: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa887..0xa888  (1 bytes)
DATA_leido_A887:
	defb 083h	; a887

; ----------------------------------------------------------------------
; DATOS leido_A888: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa888..0xa889  (1 bytes)
DATA_leido_A888:
	defb 061h	; a888

; ----------------------------------------------------------------------
; DATOS leido_A889: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa889..0xa88a  (1 bytes)
DATA_leido_A889:
	defb 058h	; a889

; ----------------------------------------------------------------------
; DATOS leido_A88A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa88a..0xa88b  (1 bytes)
DATA_leido_A88A:
	defb 062h	; a88a

; ----------------------------------------------------------------------
; DATOS leido_A88B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa88b..0xa88c  (1 bytes)
DATA_leido_A88B:
	defb 019h	; a88b

; ----------------------------------------------------------------------
; DATOS leido_A88C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa88c..0xa88d  (1 bytes)
DATA_leido_A88C:
	defb 063h	; a88c

; ----------------------------------------------------------------------
; DATOS leido_A88D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa88d..0xa88e  (1 bytes)
DATA_leido_A88D:
	defb 047h	; a88d

; ----------------------------------------------------------------------
; DATOS leido_A88E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa88e..0xa88f  (1 bytes)
DATA_leido_A88E:
	defb 065h	; a88e

; ----------------------------------------------------------------------
; DATOS leido_A88F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa88f..0xa890  (1 bytes)
DATA_leido_A88F:
	defb 020h	; a88f

; ----------------------------------------------------------------------
; DATOS leido_A890: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa890..0xa891  (1 bytes)
DATA_leido_A890:
	defb 068h	; a890

; ----------------------------------------------------------------------
; DATOS leido_A891: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa891..0xa892  (1 bytes)
DATA_leido_A891:
	defb 002h	; a891

; ----------------------------------------------------------------------
; DATOS leido_A892: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa892..0xa893  (1 bytes)
DATA_leido_A892:
	defb 06ch	; a892

; ----------------------------------------------------------------------
; DATOS leido_A893: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa893..0xa894  (1 bytes)
DATA_leido_A893:
	defb 083h	; a893

; ----------------------------------------------------------------------
; DATOS leido_A894: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa894..0xa895  (1 bytes)
DATA_leido_A894:
	defb 041h	; a894

; ----------------------------------------------------------------------
; DATOS leido_A895: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa895..0xa896  (1 bytes)
DATA_leido_A895:
	defb 058h	; a895

; ----------------------------------------------------------------------
; DATOS leido_A896: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa896..0xa897  (1 bytes)
DATA_leido_A896:
	defb 042h	; a896

; ----------------------------------------------------------------------
; DATOS leido_A897: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa897..0xa898  (1 bytes)
DATA_leido_A897:
	defb 019h	; a897

; ----------------------------------------------------------------------
; DATOS leido_A898: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa898..0xa899  (1 bytes)
DATA_leido_A898:
	defb 043h	; a898

; ----------------------------------------------------------------------
; DATOS leido_A899: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa899..0xa89a  (1 bytes)
DATA_leido_A899:
	defb 047h	; a899

; ----------------------------------------------------------------------
; DATOS leido_A89A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa89a..0xa89b  (1 bytes)
DATA_leido_A89A:
	defb 045h	; a89a

; ----------------------------------------------------------------------
; DATOS leido_A89B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa89b..0xa89c  (1 bytes)
DATA_leido_A89B:
	defb 020h	; a89b

; ----------------------------------------------------------------------
; DATOS leido_A89C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa89c..0xa89d  (1 bytes)
DATA_leido_A89C:
	defb 048h	; a89c

; ----------------------------------------------------------------------
; DATOS leido_A89D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa89d..0xa89e  (1 bytes)
DATA_leido_A89D:
	defb 002h	; a89d

; ----------------------------------------------------------------------
; DATOS leido_A89E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa89e..0xa89f  (1 bytes)
DATA_leido_A89E:
	defb 04ch	; a89e

; ----------------------------------------------------------------------
; DATOS leido_A89F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa89f..0xa8a0  (1 bytes)
DATA_leido_A89F:
	defb 083h	; a89f

; ----------------------------------------------------------------------
; DATOS leido_A8A0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8a0..0xa8a1  (1 bytes)
DATA_leido_A8A0:
	defb 021h	; a8a0

; ----------------------------------------------------------------------
; DATOS leido_A8A1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8a1..0xa8a2  (1 bytes)
DATA_leido_A8A1:
	defb 058h	; a8a1

; ----------------------------------------------------------------------
; DATOS leido_A8A2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8a2..0xa8a3  (1 bytes)
DATA_leido_A8A2:
	defb 022h	; a8a2

; ----------------------------------------------------------------------
; DATOS leido_A8A3: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8a3..0xa8a4  (1 bytes)
DATA_leido_A8A3:
	defb 019h	; a8a3

; ----------------------------------------------------------------------
; DATOS leido_A8A4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8a4..0xa8a5  (1 bytes)
DATA_leido_A8A4:
	defb 023h	; a8a4

; ----------------------------------------------------------------------
; DATOS leido_A8A5: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8a5..0xa8a6  (1 bytes)
DATA_leido_A8A5:
	defb 047h	; a8a5

; ----------------------------------------------------------------------
; DATOS leido_A8A6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8a6..0xa8a7  (1 bytes)
DATA_leido_A8A6:
	defb 025h	; a8a6

; ----------------------------------------------------------------------
; DATOS leido_A8A7: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8a7..0xa8a8  (1 bytes)
DATA_leido_A8A7:
	defb 020h	; a8a7

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa8a8..0xa8c5  (29 bytes)
DATA_A8A8:
	defb 028h,002h,02ch,083h,011h,058h,012h,019h,013h,047h,015h,020h,018h,002h,01ch,083h	; a8a8  (.,..X...G. ....
	defb 001h,058h,002h,019h,003h,047h,005h,020h,008h,002h,00ch,083h,0ffh	; a8b8  .X...G. .....

; ----------------------------------------------------------------------
; DATOS leido_A8C5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8c5..0xa8c6  (1 bytes)
DATA_leido_A8C5:
	defb 0feh	; a8c5

; ----------------------------------------------------------------------
; DATOS leido_A8C6: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa8c6..0xa8c7  (1 bytes)
DATA_leido_A8C6:
	defb 002h	; a8c6

; ----------------------------------------------------------------------
; DATOS leido_A8C7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8c7..0xa8c8  (1 bytes)
DATA_leido_A8C7:
	defb 0f8h	; a8c7

; ----------------------------------------------------------------------
; DATOS leido_A8C8: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa8c8..0xa8c9  (1 bytes)
DATA_leido_A8C8:
	defb 028h	; a8c8

; ----------------------------------------------------------------------
; DATOS leido_A8C9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8c9..0xa8ca  (1 bytes)
DATA_leido_A8C9:
	defb 0e2h	; a8c9

; ----------------------------------------------------------------------
; DATOS leido_A8CA: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa8ca..0xa8cb  (1 bytes)
DATA_leido_A8CA:
	defb 001h	; a8ca

; ----------------------------------------------------------------------
; DATOS leido_A8CB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8cb..0xa8cc  (1 bytes)
DATA_leido_A8CB:
	defb 0c2h	; a8cb

; ----------------------------------------------------------------------
; DATOS leido_A8CC: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8cc..0xa8cd  (1 bytes)
DATA_leido_A8CC:
	defb 040h	; a8cc

; ----------------------------------------------------------------------
; DATOS leido_A8CD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8cd..0xa8ce  (1 bytes)
DATA_leido_A8CD:
	defb 0c2h	; a8cd

; ----------------------------------------------------------------------
; DATOS leido_A8CE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8ce..0xa8cf  (1 bytes)
DATA_leido_A8CE:
	defb 0d9h	; a8ce

; ----------------------------------------------------------------------
; DATOS leido_A8CF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8cf..0xa8d0  (1 bytes)
DATA_leido_A8CF:
	defb 0c3h	; a8cf

; ----------------------------------------------------------------------
; DATOS leido_A8D0: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8d0..0xa8d1  (1 bytes)
DATA_leido_A8D0:
	defb 09ah	; a8d0

; ----------------------------------------------------------------------
; DATOS leido_A8D1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8d1..0xa8d2  (1 bytes)
DATA_leido_A8D1:
	defb 0c4h	; a8d1

; ----------------------------------------------------------------------
; DATOS leido_A8D2: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8d2..0xa8d3  (1 bytes)
DATA_leido_A8D2:
	defb 08fh	; a8d2

; ----------------------------------------------------------------------
; DATOS leido_A8D3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8d3..0xa8d4  (1 bytes)
DATA_leido_A8D3:
	defb 0c5h	; a8d3

; ----------------------------------------------------------------------
; DATOS leido_A8D4: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8d4..0xa8d5  (1 bytes)
DATA_leido_A8D4:
	defb 0c5h	; a8d4

; ----------------------------------------------------------------------
; DATOS leido_A8D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8d5..0xa8d6  (1 bytes)
DATA_leido_A8D5:
	defb 0c7h	; a8d5

; ----------------------------------------------------------------------
; DATOS leido_A8D6: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8d6..0xa8d7  (1 bytes)
DATA_leido_A8D6:
	defb 04eh	; a8d6

; ----------------------------------------------------------------------
; DATOS leido_A8D7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8d7..0xa8d8  (1 bytes)
DATA_leido_A8D7:
	defb 0c9h	; a8d7

; ----------------------------------------------------------------------
; DATOS leido_A8D8: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8d8..0xa8d9  (1 bytes)
DATA_leido_A8D8:
	defb 03fh	; a8d8

; ----------------------------------------------------------------------
; DATOS leido_A8D9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8d9..0xa8da  (1 bytes)
DATA_leido_A8D9:
	defb 0cbh	; a8d9

; ----------------------------------------------------------------------
; DATOS leido_A8DA: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8da..0xa8db  (1 bytes)
DATA_leido_A8DA:
	defb 0b4h	; a8da

; ----------------------------------------------------------------------
; DATOS leido_A8DB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8db..0xa8dc  (1 bytes)
DATA_leido_A8DB:
	defb 0ceh	; a8db

; ----------------------------------------------------------------------
; DATOS leido_A8DC: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8dc..0xa8dd  (1 bytes)
DATA_leido_A8DC:
	defb 0cfh	; a8dc

; ----------------------------------------------------------------------
; DATOS leido_A8DD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8dd..0xa8de  (1 bytes)
DATA_leido_A8DD:
	defb 0cfh	; a8dd

; ----------------------------------------------------------------------
; DATOS leido_A8DE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8de..0xa8df  (1 bytes)
DATA_leido_A8DE:
	defb 000h	; a8de

; ----------------------------------------------------------------------
; DATOS leido_A8DF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8df..0xa8e0  (1 bytes)
DATA_leido_A8DF:
	defb 0cfh	; a8df

; ----------------------------------------------------------------------
; DATOS leido_A8E0: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8e0..0xa8e1  (1 bytes)
DATA_leido_A8E0:
	defb 000h	; a8e0

; ----------------------------------------------------------------------
; DATOS leido_A8E1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8e1..0xa8e2  (1 bytes)
DATA_leido_A8E1:
	defb 0c1h	; a8e1

; ----------------------------------------------------------------------
; DATOS leido_A8E2: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8e2..0xa8e3  (1 bytes)
DATA_leido_A8E2:
	defb 058h	; a8e2

; ----------------------------------------------------------------------
; DATOS leido_A8E3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8e3..0xa8e4  (1 bytes)
DATA_leido_A8E3:
	defb 0c1h	; a8e3

; ----------------------------------------------------------------------
; DATOS leido_A8E4: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8e4..0xa8e5  (1 bytes)
DATA_leido_A8E4:
	defb 0b3h	; a8e4

; ----------------------------------------------------------------------
; DATOS leido_A8E5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8e5..0xa8e6  (1 bytes)
DATA_leido_A8E5:
	defb 0c2h	; a8e5

; ----------------------------------------------------------------------
; DATOS leido_A8E6: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8e6..0xa8e7  (1 bytes)
DATA_leido_A8E6:
	defb 027h	; a8e6

; ----------------------------------------------------------------------
; DATOS leido_A8E7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8e7..0xa8e8  (1 bytes)
DATA_leido_A8E7:
	defb 0c2h	; a8e7

; ----------------------------------------------------------------------
; DATOS leido_A8E8: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8e8..0xa8e9  (1 bytes)
DATA_leido_A8E8:
	defb 0b9h	; a8e8

; ----------------------------------------------------------------------
; DATOS leido_A8E9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8e9..0xa8ea  (1 bytes)
DATA_leido_A8E9:
	defb 0c3h	; a8e9

; ----------------------------------------------------------------------
; DATOS leido_A8EA: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8ea..0xa8eb  (1 bytes)
DATA_leido_A8EA:
	defb 072h	; a8ea

; ----------------------------------------------------------------------
; DATOS leido_A8EB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8eb..0xa8ec  (1 bytes)
DATA_leido_A8EB:
	defb 0c4h	; a8eb

; ----------------------------------------------------------------------
; DATOS leido_A8EC: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8ec..0xa8ed  (1 bytes)
DATA_leido_A8EC:
	defb 05dh	; a8ec

; ----------------------------------------------------------------------
; DATOS leido_A8ED: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8ed..0xa8ee  (1 bytes)
DATA_leido_A8ED:
	defb 0c5h	; a8ed

; ----------------------------------------------------------------------
; DATOS leido_A8EE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8ee..0xa8ef  (1 bytes)
DATA_leido_A8EE:
	defb 085h	; a8ee

; ----------------------------------------------------------------------
; DATOS leido_A8EF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8ef..0xa8f0  (1 bytes)
DATA_leido_A8EF:
	defb 0c6h	; a8ef

; ----------------------------------------------------------------------
; DATOS leido_A8F0: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8f0..0xa8f1  (1 bytes)
DATA_leido_A8F0:
	defb 0fah	; a8f0

; ----------------------------------------------------------------------
; DATOS leido_A8F1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8f1..0xa8f2  (1 bytes)
DATA_leido_A8F1:
	defb 0c8h	; a8f1

; ----------------------------------------------------------------------
; DATOS leido_A8F2: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8f2..0xa8f3  (1 bytes)
DATA_leido_A8F2:
	defb 0dbh	; a8f2

; ----------------------------------------------------------------------
; DATOS leido_A8F3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8f3..0xa8f4  (1 bytes)
DATA_leido_A8F3:
	defb 0cbh	; a8f3

; ----------------------------------------------------------------------
; DATOS leido_A8F4: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8f4..0xa8f5  (1 bytes)
DATA_leido_A8F4:
	defb 032h	; a8f4

; ----------------------------------------------------------------------
; DATOS leido_A8F5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8f5..0xa8f6  (1 bytes)
DATA_leido_A8F5:
	defb 0a1h	; a8f5

; ----------------------------------------------------------------------
; DATOS leido_A8F6: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8f6..0xa8f7  (1 bytes)
DATA_leido_A8F6:
	defb 058h	; a8f6

; ----------------------------------------------------------------------
; DATOS leido_A8F7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8f7..0xa8f8  (1 bytes)
DATA_leido_A8F7:
	defb 0a1h	; a8f7

; ----------------------------------------------------------------------
; DATOS leido_A8F8: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8f8..0xa8f9  (1 bytes)
DATA_leido_A8F8:
	defb 0b3h	; a8f8

; ----------------------------------------------------------------------
; DATOS leido_A8F9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8f9..0xa8fa  (1 bytes)
DATA_leido_A8F9:
	defb 0a2h	; a8f9

; ----------------------------------------------------------------------
; DATOS leido_A8FA: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8fa..0xa8fb  (1 bytes)
DATA_leido_A8FA:
	defb 027h	; a8fa

; ----------------------------------------------------------------------
; DATOS leido_A8FB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8fb..0xa8fc  (1 bytes)
DATA_leido_A8FB:
	defb 0a2h	; a8fb

; ----------------------------------------------------------------------
; DATOS leido_A8FC: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8fc..0xa8fd  (1 bytes)
DATA_leido_A8FC:
	defb 0b9h	; a8fc

; ----------------------------------------------------------------------
; DATOS leido_A8FD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8fd..0xa8fe  (1 bytes)
DATA_leido_A8FD:
	defb 0a3h	; a8fd

; ----------------------------------------------------------------------
; DATOS leido_A8FE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa8fe..0xa8ff  (1 bytes)
DATA_leido_A8FE:
	defb 072h	; a8fe

; ----------------------------------------------------------------------
; DATOS leido_A8FF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8ff..0xa900  (1 bytes)
DATA_leido_A8FF:
	defb 0a4h	; a8ff

; ----------------------------------------------------------------------
; DATOS leido_A900: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa900..0xa901  (1 bytes)
DATA_leido_A900:
	defb 05dh	; a900

; ----------------------------------------------------------------------
; DATOS leido_A901: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa901..0xa902  (1 bytes)
DATA_leido_A901:
	defb 0a5h	; a901

; ----------------------------------------------------------------------
; DATOS leido_A902: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa902..0xa903  (1 bytes)
DATA_leido_A902:
	defb 085h	; a902

; ----------------------------------------------------------------------
; DATOS leido_A903: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa903..0xa904  (1 bytes)
DATA_leido_A903:
	defb 0a6h	; a903

; ----------------------------------------------------------------------
; DATOS leido_A904: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa904..0xa905  (1 bytes)
DATA_leido_A904:
	defb 0fah	; a904

; ----------------------------------------------------------------------
; DATOS leido_A905: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa905..0xa906  (1 bytes)
DATA_leido_A905:
	defb 0a8h	; a905

; ----------------------------------------------------------------------
; DATOS leido_A906: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa906..0xa907  (1 bytes)
DATA_leido_A906:
	defb 0dbh	; a906

; ----------------------------------------------------------------------
; DATOS leido_A907: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa907..0xa908  (1 bytes)
DATA_leido_A907:
	defb 0abh	; a907

; ----------------------------------------------------------------------
; DATOS leido_A908: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa908..0xa909  (1 bytes)
DATA_leido_A908:
	defb 032h	; a908

; ----------------------------------------------------------------------
; DATOS leido_A909: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa909..0xa90a  (1 bytes)
DATA_leido_A909:
	defb 081h	; a909

; ----------------------------------------------------------------------
; DATOS leido_A90A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa90a..0xa90b  (1 bytes)
DATA_leido_A90A:
	defb 058h	; a90a

; ----------------------------------------------------------------------
; DATOS leido_A90B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa90b..0xa90c  (1 bytes)
DATA_leido_A90B:
	defb 081h	; a90b

; ----------------------------------------------------------------------
; DATOS leido_A90C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa90c..0xa90d  (1 bytes)
DATA_leido_A90C:
	defb 0b3h	; a90c

; ----------------------------------------------------------------------
; DATOS leido_A90D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa90d..0xa90e  (1 bytes)
DATA_leido_A90D:
	defb 082h	; a90d

; ----------------------------------------------------------------------
; DATOS leido_A90E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa90e..0xa90f  (1 bytes)
DATA_leido_A90E:
	defb 027h	; a90e

; ----------------------------------------------------------------------
; DATOS leido_A90F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa90f..0xa910  (1 bytes)
DATA_leido_A90F:
	defb 082h	; a90f

; ----------------------------------------------------------------------
; DATOS leido_A910: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa910..0xa911  (1 bytes)
DATA_leido_A910:
	defb 0b9h	; a910

; ----------------------------------------------------------------------
; DATOS leido_A911: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa911..0xa912  (1 bytes)
DATA_leido_A911:
	defb 083h	; a911

; ----------------------------------------------------------------------
; DATOS leido_A912: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa912..0xa913  (1 bytes)
DATA_leido_A912:
	defb 072h	; a912

; ----------------------------------------------------------------------
; DATOS leido_A913: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa913..0xa914  (1 bytes)
DATA_leido_A913:
	defb 084h	; a913

; ----------------------------------------------------------------------
; DATOS leido_A914: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa914..0xa915  (1 bytes)
DATA_leido_A914:
	defb 05dh	; a914

; ----------------------------------------------------------------------
; DATOS leido_A915: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa915..0xa916  (1 bytes)
DATA_leido_A915:
	defb 085h	; a915

; ----------------------------------------------------------------------
; DATOS leido_A916: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa916..0xa917  (1 bytes)
DATA_leido_A916:
	defb 085h	; a916

; ----------------------------------------------------------------------
; DATOS leido_A917: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa917..0xa918  (1 bytes)
DATA_leido_A917:
	defb 086h	; a917

; ----------------------------------------------------------------------
; DATOS leido_A918: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa918..0xa919  (1 bytes)
DATA_leido_A918:
	defb 0fah	; a918

; ----------------------------------------------------------------------
; DATOS leido_A919: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa919..0xa91a  (1 bytes)
DATA_leido_A919:
	defb 088h	; a919

; ----------------------------------------------------------------------
; DATOS leido_A91A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa91a..0xa91b  (1 bytes)
DATA_leido_A91A:
	defb 0dbh	; a91a

; ----------------------------------------------------------------------
; DATOS leido_A91B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa91b..0xa91c  (1 bytes)
DATA_leido_A91B:
	defb 08bh	; a91b

; ----------------------------------------------------------------------
; DATOS leido_A91C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa91c..0xa91d  (1 bytes)
DATA_leido_A91C:
	defb 032h	; a91c

; ----------------------------------------------------------------------
; DATOS leido_A91D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa91d..0xa91e  (1 bytes)
DATA_leido_A91D:
	defb 061h	; a91d

; ----------------------------------------------------------------------
; DATOS leido_A91E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa91e..0xa91f  (1 bytes)
DATA_leido_A91E:
	defb 058h	; a91e

; ----------------------------------------------------------------------
; DATOS leido_A91F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa91f..0xa920  (1 bytes)
DATA_leido_A91F:
	defb 061h	; a91f

; ----------------------------------------------------------------------
; DATOS leido_A920: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa920..0xa921  (1 bytes)
DATA_leido_A920:
	defb 0b3h	; a920

; ----------------------------------------------------------------------
; DATOS leido_A921: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa921..0xa922  (1 bytes)
DATA_leido_A921:
	defb 062h	; a921

; ----------------------------------------------------------------------
; DATOS leido_A922: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa922..0xa923  (1 bytes)
DATA_leido_A922:
	defb 027h	; a922

; ----------------------------------------------------------------------
; DATOS leido_A923: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa923..0xa924  (1 bytes)
DATA_leido_A923:
	defb 062h	; a923

; ----------------------------------------------------------------------
; DATOS leido_A924: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa924..0xa925  (1 bytes)
DATA_leido_A924:
	defb 0b9h	; a924

; ----------------------------------------------------------------------
; DATOS leido_A925: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa925..0xa926  (1 bytes)
DATA_leido_A925:
	defb 063h	; a925

; ----------------------------------------------------------------------
; DATOS leido_A926: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa926..0xa927  (1 bytes)
DATA_leido_A926:
	defb 072h	; a926

; ----------------------------------------------------------------------
; DATOS leido_A927: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa927..0xa928  (1 bytes)
DATA_leido_A927:
	defb 064h	; a927

; ----------------------------------------------------------------------
; DATOS leido_A928: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa928..0xa929  (1 bytes)
DATA_leido_A928:
	defb 05dh	; a928

; ----------------------------------------------------------------------
; DATOS leido_A929: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa929..0xa92a  (1 bytes)
DATA_leido_A929:
	defb 065h	; a929

; ----------------------------------------------------------------------
; DATOS leido_A92A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa92a..0xa92b  (1 bytes)
DATA_leido_A92A:
	defb 085h	; a92a

; ----------------------------------------------------------------------
; DATOS leido_A92B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa92b..0xa92c  (1 bytes)
DATA_leido_A92B:
	defb 066h	; a92b

; ----------------------------------------------------------------------
; DATOS leido_A92C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa92c..0xa92d  (1 bytes)
DATA_leido_A92C:
	defb 0fah	; a92c

; ----------------------------------------------------------------------
; DATOS leido_A92D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa92d..0xa92e  (1 bytes)
DATA_leido_A92D:
	defb 068h	; a92d

; ----------------------------------------------------------------------
; DATOS leido_A92E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa92e..0xa92f  (1 bytes)
DATA_leido_A92E:
	defb 0dbh	; a92e

; ----------------------------------------------------------------------
; DATOS leido_A92F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa92f..0xa930  (1 bytes)
DATA_leido_A92F:
	defb 06bh	; a92f

; ----------------------------------------------------------------------
; DATOS leido_A930: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa930..0xa931  (1 bytes)
DATA_leido_A930:
	defb 032h	; a930

; ----------------------------------------------------------------------
; DATOS leido_A931: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa931..0xa932  (1 bytes)
DATA_leido_A931:
	defb 041h	; a931

; ----------------------------------------------------------------------
; DATOS leido_A932: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa932..0xa933  (1 bytes)
DATA_leido_A932:
	defb 058h	; a932

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa933..0xa96e  (59 bytes)
DATA_A933:
	defb 041h,0b3h,042h,027h,042h,0b9h,043h,072h,044h,05dh,045h,085h,046h,0fah,048h,0dbh	; a933  A.B'B.CrD]E.F.H.
	defb 04bh,032h,021h,058h,021h,0b3h,022h,027h,022h,0b9h,023h,072h,024h,05dh,025h,085h	; a943  K2!X!."'".#r$]%.
	defb 026h,0fah,028h,0dbh,02bh,032h,001h,058h,001h,0b3h,002h,027h,002h,0b9h,003h,072h	; a953  &.(.+2.X...'...r
	defb 004h,05dh,005h,085h,006h,0fah,008h,0dbh,00bh,032h,0ffh	; a963  .].......2.

; ----------------------------------------------------------------------
; DATOS leido_A96E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa96e..0xa96f  (1 bytes)
DATA_leido_A96E:
	defb 0feh	; a96e

; ----------------------------------------------------------------------
; DATOS leido_A96F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa96f..0xa970  (1 bytes)
DATA_leido_A96F:
	defb 002h	; a96f

; ----------------------------------------------------------------------
; DATOS leido_A970: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa970..0xa971  (1 bytes)
DATA_leido_A970:
	defb 0e2h	; a970

; ----------------------------------------------------------------------
; DATOS leido_A971: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa971..0xa972  (1 bytes)
DATA_leido_A971:
	defb 003h	; a971

; ----------------------------------------------------------------------
; DATOS leido_A972: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa972..0xa973  (1 bytes)
DATA_leido_A972:
	defb 0c2h	; a972

; ----------------------------------------------------------------------
; DATOS leido_A973: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa973..0xa974  (1 bytes)
DATA_leido_A973:
	defb 000h	; a973

; ----------------------------------------------------------------------
; DATOS leido_A974: 30 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 11 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (30 bytes)
;   0xa974..0xa992  (30 bytes)
DATA_leido_A974:
	defb 0f5h,0c3h,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0cbh,0cch,0cdh,0ceh,0cfh,049h,04ah	; a974  ..............IJ
	defb 04bh,04ch,04dh,04eh,04fh,009h,00ah,00bh,00ch,00dh,00eh,00fh,0ffh,0e2h	; a984  KLMNO.........

; ----------------------------------------------------------------------
; DATOS leido_A992: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa992..0xa993  (1 bytes)
DATA_leido_A992:
	defb 003h	; a992

; ----------------------------------------------------------------------
; DATOS leido_A993: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa993..0xa994  (1 bytes)
DATA_leido_A993:
	defb 0b2h	; a993

; ----------------------------------------------------------------------
; DATOS leido_A994: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa994..0xa995  (1 bytes)
DATA_leido_A994:
	defb 000h	; a994

; ----------------------------------------------------------------------
; DATOS leido_A995: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa995..0xa99b  (6 bytes)
DATA_leido_A995:
	defb 0f5h,0b3h,0b4h,0b4h,0f6h,0b3h	; a995

; ----------------------------------------------------------------------
; DATOS leido_A99B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa99b..0xa99c  (1 bytes)
DATA_leido_A99B:
	defb 080h	; a99b

; ----------------------------------------------------------------------
; DATOS leido_A99C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa99c..0xa99d  (1 bytes)
DATA_leido_A99C:
	defb 0b3h	; a99c

; ----------------------------------------------------------------------
; DATOS leido_A99D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa99d..0xa99e  (1 bytes)
DATA_leido_A99D:
	defb 000h	; a99d

; ----------------------------------------------------------------------
; DATOS leido_A99E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa99e..0xa99f  (1 bytes)
DATA_leido_A99E:
	defb 0b2h	; a99e

; ----------------------------------------------------------------------
; DATOS leido_A99F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa99f..0xa9a0  (1 bytes)
DATA_leido_A99F:
	defb 080h	; a99f

; ----------------------------------------------------------------------
; DATOS leido_A9A0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9a0..0xa9a1  (1 bytes)
DATA_leido_A9A0:
	defb 0b2h	; a9a0

; ----------------------------------------------------------------------
; DATOS leido_A9A1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9a1..0xa9a2  (1 bytes)
DATA_leido_A9A1:
	defb 000h	; a9a1

; ----------------------------------------------------------------------
; DATOS leido_A9A2: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa9a2..0xa9a9  (7 bytes)
DATA_leido_A9A2:
	defb 0f5h,062h,063h,064h,064h,0f6h,063h	; a9a2

; ----------------------------------------------------------------------
; DATOS leido_A9A9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9a9..0xa9aa  (1 bytes)
DATA_leido_A9A9:
	defb 080h	; a9a9

; ----------------------------------------------------------------------
; DATOS leido_A9AA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9aa..0xa9ab  (1 bytes)
DATA_leido_A9AA:
	defb 063h	; a9aa

; ----------------------------------------------------------------------
; DATOS leido_A9AB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9ab..0xa9ac  (1 bytes)
DATA_leido_A9AB:
	defb 000h	; a9ab

; ----------------------------------------------------------------------
; DATOS leido_A9AC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ac..0xa9ad  (1 bytes)
DATA_leido_A9AC:
	defb 062h	; a9ac

; ----------------------------------------------------------------------
; DATOS leido_A9AD: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9ad..0xa9ae  (1 bytes)
DATA_leido_A9AD:
	defb 080h	; a9ad

; ----------------------------------------------------------------------
; DATOS leido_A9AE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ae..0xa9af  (1 bytes)
DATA_leido_A9AE:
	defb 062h	; a9ae

; ----------------------------------------------------------------------
; DATOS leido_A9AF: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9af..0xa9b0  (1 bytes)
DATA_leido_A9AF:
	defb 000h	; a9af

; ----------------------------------------------------------------------
; DATOS leido_A9B0: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 12 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (16 bytes)
;   0xa9b0..0xa9c0  (16 bytes)
DATA_leido_A9B0:
	defb 0f5h,022h,023h,024h,024h,0f6h,023h,080h,023h,000h,022h,080h,022h,000h,0fah,0c2h	; a9b0  ."#$$.#.#."."...

; ----------------------------------------------------------------------
; DATOS leido_A9C0: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9c0..0xa9c1  (1 bytes)
DATA_leido_A9C0:
	defb 080h	; a9c0

; ----------------------------------------------------------------------
; DATOS leido_A9C1: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (16 bytes)
;   0xa9c1..0xa9d1  (16 bytes)
DATA_leido_A9C1:
	defb 0f5h,0c3h,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0cbh,0cch,0cdh,0ceh,0f6h,0fah,049h	; a9c1  ...............I

; ----------------------------------------------------------------------
; DATOS leido_A9D1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9d1..0xa9d2  (1 bytes)
DATA_leido_A9D1:
	defb 080h	; a9d1

; ----------------------------------------------------------------------
; DATOS leido_A9D2: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 12 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (17 bytes)
;   0xa9d2..0xa9e3  (17 bytes)
DATA_leido_A9D2:
	defb 0f5h,04ah,04bh,04ch,04dh,04eh,04fh,009h,00ah,00bh,00ch,00dh,00eh,00fh,0f6h,0fah	; a9d2  .JKLMNO.........
	defb 0feh	; a9e2

; ----------------------------------------------------------------------
; DATOS leido_A9E3: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa9e3..0xa9e4  (1 bytes)
DATA_leido_A9E3:
	defb 002h	; a9e3

; ----------------------------------------------------------------------
; DATOS leido_A9E4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9e4..0xa9e5  (1 bytes)
DATA_leido_A9E4:
	defb 0e3h	; a9e4

; ----------------------------------------------------------------------
; DATOS leido_A9E5: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa9e5..0xa9e6  (1 bytes)
DATA_leido_A9E5:
	defb 002h	; a9e5

; ----------------------------------------------------------------------
; DATOS leido_A9E6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9e6..0xa9e7  (1 bytes)
DATA_leido_A9E6:
	defb 0e4h	; a9e6

; ----------------------------------------------------------------------
; DATOS leido_A9E7: 1 bytes que lee p10:6BC5 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6BC5 (1 bytes)
;   0xa9e7..0xa9e8  (1 bytes)
DATA_leido_A9E7:
	defb 01fh	; a9e7

; ----------------------------------------------------------------------
; DATOS leido_A9E8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9e8..0xa9e9  (1 bytes)
DATA_leido_A9E8:
	defb 0c5h	; a9e8

; ----------------------------------------------------------------------
; DATOS leido_A9E9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9e9..0xa9ea  (1 bytes)
DATA_leido_A9E9:
	defb 050h	; a9e9

; ----------------------------------------------------------------------
; DATOS leido_A9EA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ea..0xa9eb  (1 bytes)
DATA_leido_A9EA:
	defb 086h	; a9ea

; ----------------------------------------------------------------------
; DATOS leido_A9EB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9eb..0xa9ec  (1 bytes)
DATA_leido_A9EB:
	defb 000h	; a9eb

; ----------------------------------------------------------------------
; DATOS leido_A9EC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ec..0xa9ed  (1 bytes)
DATA_leido_A9EC:
	defb 087h	; a9ec

; ----------------------------------------------------------------------
; DATOS leido_A9ED: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9ed..0xa9ee  (1 bytes)
DATA_leido_A9ED:
	defb 000h	; a9ed

; ----------------------------------------------------------------------
; DATOS leido_A9EE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ee..0xa9ef  (1 bytes)
DATA_leido_A9EE:
	defb 0e3h	; a9ee

; ----------------------------------------------------------------------
; DATOS leido_A9EF: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa9ef..0xa9f0  (1 bytes)
DATA_leido_A9EF:
	defb 001h	; a9ef

; ----------------------------------------------------------------------
; DATOS leido_A9F0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9f0..0xa9f1  (1 bytes)
DATA_leido_A9F0:
	defb 088h	; a9f0

; ----------------------------------------------------------------------
; DATOS leido_A9F1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9f1..0xa9f2  (1 bytes)
DATA_leido_A9F1:
	defb 000h	; a9f1

; ----------------------------------------------------------------------
; DATOS leido_A9F2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9f2..0xa9f3  (1 bytes)
DATA_leido_A9F2:
	defb 0e3h	; a9f2

; ----------------------------------------------------------------------
; DATOS leido_A9F3: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xa9f3..0xa9f4  (1 bytes)
DATA_leido_A9F3:
	defb 002h	; a9f3

; ----------------------------------------------------------------------
; DATOS leido_A9F4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9f4..0xa9f5  (1 bytes)
DATA_leido_A9F4:
	defb 085h	; a9f4

; ----------------------------------------------------------------------
; DATOS leido_A9F5: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9f5..0xa9f6  (1 bytes)
DATA_leido_A9F5:
	defb 050h	; a9f5

; ----------------------------------------------------------------------
; DATOS leido_A9F6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9f6..0xa9f7  (1 bytes)
DATA_leido_A9F6:
	defb 086h	; a9f6

; ----------------------------------------------------------------------
; DATOS leido_A9F7: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xa9f7..0xa9f8  (1 bytes)
DATA_leido_A9F7:
	defb 000h	; a9f7

; ----------------------------------------------------------------------
; DATOS leido_A9F8: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa9f8..0xaa00  (8 bytes)
DATA_leido_A9F8:
	defb 0f5h,087h,088h,089h,08ah,08bh,0f6h,067h	; a9f8  .......g

; ----------------------------------------------------------------------
; DATOS leido_AA00: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaa00..0xaa01  (1 bytes)
DATA_leido_AA00:
	defb 0f0h	; aa00

; ----------------------------------------------------------------------
; DATOS leido_AA01: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xaa01..0xaa0b  (10 bytes)
DATA_leido_AA01:
	defb 0f5h,068h,069h,06ah,06bh,06ch,06dh,06eh,0f6h,059h	; aa01  .hijklmn.Y

; ----------------------------------------------------------------------
; DATOS leido_AA0B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaa0b..0xaa0c  (1 bytes)
DATA_leido_AA0B:
	defb 0d0h	; aa0b

; ----------------------------------------------------------------------
; DATOS leido_AA0C: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xaa0c..0xaa14  (8 bytes)
DATA_leido_AA0C:
	defb 0f5h,05ah,05bh,05ch,05dh,05eh,0f6h,049h	; aa0c  .Z[\]^.I

; ----------------------------------------------------------------------
; DATOS leido_AA14: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaa14..0xaa15  (1 bytes)
DATA_leido_AA14:
	defb 0e0h	; aa14

; ----------------------------------------------------------------------
; DATOS leido_AA15: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 7 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (17
;   bytes)
;   0xaa15..0xaa26  (17 bytes)
DATA_leido_AA15:
	defb 0f5h,04ah,04bh,04ch,04dh,04eh,04fh,03bh,03ch,03dh,03eh,03fh,02ah,02bh,02ch,0ffh	; aa15  .JKLMNO.<=>?*+,.
	defb 0feh	; aa25

; ----------------------------------------------------------------------
; DATOS leido_AA26: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa26..0xaa27  (1 bytes)
DATA_leido_AA26:
	defb 002h	; aa26

; ----------------------------------------------------------------------
; DATOS leido_AA27: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa27..0xaa28  (1 bytes)
DATA_leido_AA27:
	defb 0f9h	; aa27

; ----------------------------------------------------------------------
; DATOS leido_AA28: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa28..0xaa2a  (2 bytes)
DATA_leido_AA28:
	defb 077h,0abh	; aa28

; ----------------------------------------------------------------------
; DATOS leido_AA2A: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa2a..0xaa2c  (2 bytes)
DATA_leido_AA2A:
	defb 0ffh,0feh	; aa2a

; ----------------------------------------------------------------------
; DATOS leido_AA2C: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa2c..0xaa2d  (1 bytes)
DATA_leido_AA2C:
	defb 002h	; aa2c

; ----------------------------------------------------------------------
; DATOS leido_AA2D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa2d..0xaa2e  (1 bytes)
DATA_leido_AA2D:
	defb 0e0h	; aa2d

; ----------------------------------------------------------------------
; DATOS leido_AA2E: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaa2e..0xaa2f  (1 bytes)
DATA_leido_AA2E:
	defb 002h	; aa2e

; ----------------------------------------------------------------------
; DATOS leido_AA2F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa2f..0xaa30  (1 bytes)
DATA_leido_AA2F:
	defb 0f9h	; aa2f

; ----------------------------------------------------------------------
; DATOS leido_AA30: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa30..0xaa32  (2 bytes)
DATA_leido_AA30:
	defb 077h,0abh	; aa30

; ----------------------------------------------------------------------
; DATOS leido_AA32: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa32..0xaa33  (1 bytes)
DATA_leido_AA32:
	defb 0e0h	; aa32

; ----------------------------------------------------------------------
; DATOS leido_AA33: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaa33..0xaa34  (1 bytes)
DATA_leido_AA33:
	defb 073h	; aa33

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa34..0xaa35  (1 bytes)
DATA_AA34:
	defb 0ffh	; aa34

; ----------------------------------------------------------------------
; DATOS leido_AA35: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa35..0xaa36  (1 bytes)
DATA_leido_AA35:
	defb 0feh	; aa35

; ----------------------------------------------------------------------
; DATOS leido_AA36: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa36..0xaa37  (1 bytes)
DATA_leido_AA36:
	defb 002h	; aa36

; ----------------------------------------------------------------------
; DATOS leido_AA37: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa37..0xaa38  (1 bytes)
DATA_leido_AA37:
	defb 0f8h	; aa37

; ----------------------------------------------------------------------
; DATOS leido_AA38: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaa38..0xaa39  (1 bytes)
DATA_leido_AA38:
	defb 028h	; aa38

; ----------------------------------------------------------------------
; DATOS leido_AA39: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa39..0xaa3a  (1 bytes)
DATA_leido_AA39:
	defb 0e2h	; aa39

; ----------------------------------------------------------------------
; DATOS leido_AA3A: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaa3a..0xaa3b  (1 bytes)
DATA_leido_AA3A:
	defb 001h	; aa3a

; ----------------------------------------------------------------------
; DATOS leido_AA3B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa3b..0xaa3c  (1 bytes)
DATA_leido_AA3B:
	defb 000h	; aa3b

; ----------------------------------------------------------------------
; DATOS leido_AA3C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaa3c..0xaa3d  (1 bytes)
DATA_leido_AA3C:
	defb 050h	; aa3c

; ----------------------------------------------------------------------
; DATOS leido_AA3D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa3d..0xaa3e  (1 bytes)
DATA_leido_AA3D:
	defb 0a2h	; aa3d

; ----------------------------------------------------------------------
; DATOS leido_AA3E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaa3e..0xaa3f  (1 bytes)
DATA_leido_AA3E:
	defb 000h	; aa3e

; ----------------------------------------------------------------------
; DATOS leido_AA3F: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xaa3f..0xaa47  (8 bytes)
DATA_leido_AA3F:
	defb 0f5h,0a3h,0a4h,0a5h,0a6h,0a7h,0f6h,0fbh	; aa3f  ........

; ----------------------------------------------------------------------
; DATOS leido_AA47: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaa47..0xaa4a  (3 bytes)
DATA_leido_AA47:
	defb 003h,03bh,0aah	; aa47

; ----------------------------------------------------------------------
; DATOS leido_AA4A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa4a..0xaa4b  (1 bytes)
DATA_leido_AA4A:
	defb 0c0h	; aa4a

; ----------------------------------------------------------------------
; DATOS leido_AA4B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaa4b..0xaa4c  (1 bytes)
DATA_leido_AA4B:
	defb 0f0h	; aa4b

; ----------------------------------------------------------------------
; DATOS leido_AA4C: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xaa4c..0xaa5d  (17 bytes)
DATA_leido_AA4C:
	defb 0f5h,0c1h,0c2h,0c3h,0c4h,0c5h,0c6h,0c7h,0c8h,0c9h,0cah,0cbh,0cch,0cdh,0ceh,0f6h	; aa4c  ................
	defb 0fbh	; aa5c

; ----------------------------------------------------------------------
; DATOS leido_AA5D: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaa5d..0xaa60  (3 bytes)
DATA_leido_AA5D:
	defb 003h,04ah,0aah	; aa5d

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa60..0xaab5  (85 bytes)
DATA_AA60:
	defb 0a1h,0d0h,0f5h,0a2h,0a3h,0a4h,0a5h,0a6h,0a7h,0a8h,0a9h,0aah,0abh,0ach,0adh,0aeh	; aa60  ................
	defb 0f6h,0fbh,002h,060h,0aah,083h,0e0h,0f5h,084h,085h,086h,087h,088h,089h,08ah,08bh	; aa70  ...`............
	defb 08ch,08dh,08eh,08fh,0f6h,064h,0e0h,0f5h,065h,066h,067h,068h,069h,06ah,06bh,06ch	; aa80  .....d..efghijkl
	defb 06dh,06eh,06fh,045h,046h,047h,048h,049h,04ah,04bh,04ch,04dh,04eh,04fh,025h,026h	; aa90  mnoEFGHIJKLMNO%&
	defb 027h,028h,029h,02ah,02bh,02ch,02dh,02eh,02fh,005h,006h,007h,008h,009h,00ah,00bh	; aaa0  '()*+,-./.......
	defb 00ch,00dh,00eh,00fh,0ffh	; aab0

; ----------------------------------------------------------------------
; DATOS leido_AAB5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaab5..0xaab6  (1 bytes)
DATA_leido_AAB5:
	defb 0feh	; aab5

; ----------------------------------------------------------------------
; DATOS leido_AAB6: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaab6..0xaab7  (1 bytes)
DATA_leido_AAB6:
	defb 002h	; aab6

; ----------------------------------------------------------------------
; DATOS leido_AAB7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaab7..0xaab8  (1 bytes)
DATA_leido_AAB7:
	defb 0f8h	; aab7

; ----------------------------------------------------------------------
; DATOS leido_AAB8: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaab8..0xaab9  (1 bytes)
DATA_leido_AAB8:
	defb 026h	; aab8

; ----------------------------------------------------------------------
; DATOS leido_AAB9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaab9..0xaaba  (1 bytes)
DATA_leido_AAB9:
	defb 0e2h	; aab9

; ----------------------------------------------------------------------
; DATOS leido_AABA: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaaba..0xaabb  (1 bytes)
DATA_leido_AABA:
	defb 004h	; aaba

; ----------------------------------------------------------------------
; DATOS leido_AABB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaabb..0xaabc  (1 bytes)
DATA_leido_AABB:
	defb 0c5h	; aabb

; ----------------------------------------------------------------------
; DATOS leido_AABC: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaabc..0xaabd  (1 bytes)
DATA_leido_AABC:
	defb 000h	; aabc

; ----------------------------------------------------------------------
; DATOS leido_AABD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaabd..0xaabe  (1 bytes)
DATA_leido_AABD:
	defb 0c6h	; aabd

; ----------------------------------------------------------------------
; DATOS leido_AABE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaabe..0xaabf  (1 bytes)
DATA_leido_AABE:
	defb 000h	; aabe

; ----------------------------------------------------------------------
; DATOS leido_AABF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaabf..0xaac0  (1 bytes)
DATA_leido_AABF:
	defb 0c7h	; aabf

; ----------------------------------------------------------------------
; DATOS leido_AAC0: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaac0..0xaac1  (1 bytes)
DATA_leido_AAC0:
	defb 000h	; aac0

; ----------------------------------------------------------------------
; DATOS leido_AAC1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaac1..0xaac2  (1 bytes)
DATA_leido_AAC1:
	defb 0e2h	; aac1

; ----------------------------------------------------------------------
; DATOS leido_AAC2: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaac2..0xaac3  (1 bytes)
DATA_leido_AAC2:
	defb 001h	; aac2

; ----------------------------------------------------------------------
; DATOS leido_AAC3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaac3..0xaac4  (1 bytes)
DATA_leido_AAC3:
	defb 0c8h	; aac3

; ----------------------------------------------------------------------
; DATOS leido_AAC4: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaac4..0xaac5  (1 bytes)
DATA_leido_AAC4:
	defb 000h	; aac4

; ----------------------------------------------------------------------
; DATOS leido_AAC5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaac5..0xaac6  (1 bytes)
DATA_leido_AAC5:
	defb 0fbh	; aac5

; ----------------------------------------------------------------------
; DATOS leido_AAC6: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaac6..0xaac9  (3 bytes)
DATA_leido_AAC6:
	defb 003h,0b9h,0aah	; aac6

; ----------------------------------------------------------------------
; DATOS leido_AAC9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaac9..0xaaca  (1 bytes)
DATA_leido_AAC9:
	defb 0f9h	; aac9

; ----------------------------------------------------------------------
; DATOS leido_AACA: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaaca..0xaacc  (2 bytes)
DATA_leido_AACA:
	defb 0c0h,0abh	; aaca

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaacc..0xaacf  (3 bytes)
DATA_AACC:
	defb 0e0h,00ah,0ffh	; aacc

; ----------------------------------------------------------------------
; DATOS leido_AACF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaacf..0xaad0  (1 bytes)
DATA_leido_AACF:
	defb 0feh	; aacf

; ----------------------------------------------------------------------
; DATOS leido_AAD0: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaad0..0xaad1  (1 bytes)
DATA_leido_AAD0:
	defb 002h	; aad0

; ----------------------------------------------------------------------
; DATOS leido_AAD1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad1..0xaad2  (1 bytes)
DATA_leido_AAD1:
	defb 0f8h	; aad1

; ----------------------------------------------------------------------
; DATOS leido_AAD2: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaad2..0xaad3  (1 bytes)
DATA_leido_AAD2:
	defb 027h	; aad2

; ----------------------------------------------------------------------
; DATOS leido_AAD3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad3..0xaad4  (1 bytes)
DATA_leido_AAD3:
	defb 0e2h	; aad3

; ----------------------------------------------------------------------
; DATOS leido_AAD4: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaad4..0xaad5  (1 bytes)
DATA_leido_AAD4:
	defb 002h	; aad4

; ----------------------------------------------------------------------
; DATOS leido_AAD5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad5..0xaad6  (1 bytes)
DATA_leido_AAD5:
	defb 0c5h	; aad5

; ----------------------------------------------------------------------
; DATOS leido_AAD6: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaad6..0xaad7  (1 bytes)
DATA_leido_AAD6:
	defb 000h	; aad6

; ----------------------------------------------------------------------
; DATOS leido_AAD7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad7..0xaad8  (1 bytes)
DATA_leido_AAD7:
	defb 0c6h	; aad7

; ----------------------------------------------------------------------
; DATOS leido_AAD8: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaad8..0xaad9  (1 bytes)
DATA_leido_AAD8:
	defb 000h	; aad8

; ----------------------------------------------------------------------
; DATOS leido_AAD9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad9..0xaada  (1 bytes)
DATA_leido_AAD9:
	defb 0c7h	; aad9

; ----------------------------------------------------------------------
; DATOS leido_AADA: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaada..0xaadb  (1 bytes)
DATA_leido_AADA:
	defb 000h	; aada

; ----------------------------------------------------------------------
; DATOS leido_AADB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaadb..0xaadc  (1 bytes)
DATA_leido_AADB:
	defb 0e2h	; aadb

; ----------------------------------------------------------------------
; DATOS leido_AADC: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaadc..0xaadd  (1 bytes)
DATA_leido_AADC:
	defb 001h	; aadc

; ----------------------------------------------------------------------
; DATOS leido_AADD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaadd..0xaade  (1 bytes)
DATA_leido_AADD:
	defb 0c8h	; aadd

; ----------------------------------------------------------------------
; DATOS leido_AADE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaade..0xaadf  (1 bytes)
DATA_leido_AADE:
	defb 000h	; aade

; ----------------------------------------------------------------------
; DATOS leido_AADF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaadf..0xaae0  (1 bytes)
DATA_leido_AADF:
	defb 0fbh	; aadf

; ----------------------------------------------------------------------
; DATOS leido_AAE0: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaae0..0xaae3  (3 bytes)
DATA_leido_AAE0:
	defb 003h,0d3h,0aah	; aae0

; ----------------------------------------------------------------------
; DATOS leido_AAE3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaae3..0xaae4  (1 bytes)
DATA_leido_AAE3:
	defb 0f9h	; aae3

; ----------------------------------------------------------------------
; DATOS leido_AAE4: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaae4..0xaae6  (2 bytes)
DATA_leido_AAE4:
	defb 0c0h,0abh	; aae4

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaae6..0xaae7  (1 bytes)
DATA_AAE6:
	defb 0ffh	; aae6

; ----------------------------------------------------------------------
; DATOS leido_AAE7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaae7..0xaae8  (1 bytes)
DATA_leido_AAE7:
	defb 0feh	; aae7

; ----------------------------------------------------------------------
; DATOS leido_AAE8: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaae8..0xaae9  (1 bytes)
DATA_leido_AAE8:
	defb 002h	; aae8

; ----------------------------------------------------------------------
; DATOS leido_AAE9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaae9..0xaaea  (1 bytes)
DATA_leido_AAE9:
	defb 0f8h	; aae9

; ----------------------------------------------------------------------
; DATOS leido_AAEA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaaea..0xaaeb  (1 bytes)
DATA_leido_AAEA:
	defb 028h	; aaea

; ----------------------------------------------------------------------
; DATOS leido_AAEB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaeb..0xaaec  (1 bytes)
DATA_leido_AAEB:
	defb 0e2h	; aaeb

; ----------------------------------------------------------------------
; DATOS leido_AAEC: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaaec..0xaaed  (1 bytes)
DATA_leido_AAEC:
	defb 002h	; aaec

; ----------------------------------------------------------------------
; DATOS leido_AAED: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaed..0xaaee  (1 bytes)
DATA_leido_AAED:
	defb 0c4h	; aaed

; ----------------------------------------------------------------------
; DATOS leido_AAEE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaaee..0xaaef  (1 bytes)
DATA_leido_AAEE:
	defb 050h	; aaee

; ----------------------------------------------------------------------
; DATOS leido_AAEF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaef..0xaaf0  (1 bytes)
DATA_leido_AAEF:
	defb 0c6h	; aaef

; ----------------------------------------------------------------------
; DATOS leido_AAF0: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaaf0..0xaaf1  (1 bytes)
DATA_leido_AAF0:
	defb 000h	; aaf0

; ----------------------------------------------------------------------
; DATOS leido_AAF1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaf1..0xaaf2  (1 bytes)
DATA_leido_AAF1:
	defb 0c7h	; aaf1

; ----------------------------------------------------------------------
; DATOS leido_AAF2: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaaf2..0xaaf3  (1 bytes)
DATA_leido_AAF2:
	defb 000h	; aaf2

; ----------------------------------------------------------------------
; DATOS leido_AAF3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaf3..0xaaf4  (1 bytes)
DATA_leido_AAF3:
	defb 0e2h	; aaf3

; ----------------------------------------------------------------------
; DATOS leido_AAF4: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaaf4..0xaaf5  (1 bytes)
DATA_leido_AAF4:
	defb 001h	; aaf4

; ----------------------------------------------------------------------
; DATOS leido_AAF5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaf5..0xaaf6  (1 bytes)
DATA_leido_AAF5:
	defb 0c3h	; aaf5

; ----------------------------------------------------------------------
; DATOS leido_AAF6: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaaf6..0xaaf7  (1 bytes)
DATA_leido_AAF6:
	defb 050h	; aaf6

; ----------------------------------------------------------------------
; DATOS leido_AAF7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaf7..0xaaf8  (1 bytes)
DATA_leido_AAF7:
	defb 0fbh	; aaf7

; ----------------------------------------------------------------------
; DATOS leido_AAF8: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaaf8..0xaafb  (3 bytes)
DATA_leido_AAF8:
	defb 004h,0ebh,0aah	; aaf8

; ----------------------------------------------------------------------
; DATOS leido_AAFB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaafb..0xaafc  (1 bytes)
DATA_leido_AAFB:
	defb 0e2h	; aafb

; ----------------------------------------------------------------------
; DATOS leido_AAFC: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xaafc..0xaafd  (1 bytes)
DATA_leido_AAFC:
	defb 002h	; aafc

; ----------------------------------------------------------------------
; DATOS leido_AAFD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaafd..0xaafe  (1 bytes)
DATA_leido_AAFD:
	defb 0c5h	; aafd

; ----------------------------------------------------------------------
; DATOS leido_AAFE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaafe..0xaaff  (1 bytes)
DATA_leido_AAFE:
	defb 050h	; aafe

; ----------------------------------------------------------------------
; DATOS leido_AAFF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaff..0xab00  (1 bytes)
DATA_leido_AAFF:
	defb 0c6h	; aaff

; ----------------------------------------------------------------------
; DATOS leido_AB00: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab00..0xab01  (1 bytes)
DATA_leido_AB00:
	defb 000h	; ab00

; ----------------------------------------------------------------------
; DATOS leido_AB01: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xab01..0xab09  (8 bytes)
DATA_leido_AB01:
	defb 0f5h,0c7h,0c8h,0c8h,0cah,0c4h,0f6h,0a7h	; ab01  ........

; ----------------------------------------------------------------------
; DATOS leido_AB09: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab09..0xab0a  (1 bytes)
DATA_leido_AB09:
	defb 0f0h	; ab09

; ----------------------------------------------------------------------
; DATOS leido_AB0A: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xab0a..0xab14  (10 bytes)
DATA_leido_AB0A:
	defb 0f5h,0a4h,0a6h,0aah,0a4h,0ach,0a5h,0a4h,0f6h,089h	; ab0a  ..........

; ----------------------------------------------------------------------
; DATOS leido_AB14: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab14..0xab15  (1 bytes)
DATA_leido_AB14:
	defb 0d0h	; ab14

; ----------------------------------------------------------------------
; DATOS leido_AB15: 30 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 25 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (30 bytes)
;   0xab15..0xab33  (30 bytes)
DATA_leido_AB15:
	defb 0f5h,086h,08bh,085h,08dh,086h,0f6h,069h,0e0h,0f5h,066h,065h,06ch,0f6h,06dh,040h	; ab15  .......i..fel.m@
	defb 063h,0e0h,0f5h,066h,04bh,045h,046h,047h,046h,007h,006h,008h,0ffh,0feh	; ab25  c..fKEFGF.....

; ----------------------------------------------------------------------
; DATOS leido_AB33: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xab33..0xab34  (1 bytes)
DATA_leido_AB33:
	defb 002h	; ab33

; ----------------------------------------------------------------------
; DATOS leido_AB34: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab34..0xab35  (1 bytes)
DATA_leido_AB34:
	defb 0e2h	; ab34

; ----------------------------------------------------------------------
; DATOS leido_AB35: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xab35..0xab36  (1 bytes)
DATA_leido_AB35:
	defb 002h	; ab35

; ----------------------------------------------------------------------
; DATOS leido_AB36: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab36..0xab37  (1 bytes)
DATA_leido_AB36:
	defb 0c4h	; ab36

; ----------------------------------------------------------------------
; DATOS leido_AB37: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab37..0xab38  (1 bytes)
DATA_leido_AB37:
	defb 050h	; ab37

; ----------------------------------------------------------------------
; DATOS leido_AB38: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab38..0xab39  (1 bytes)
DATA_leido_AB38:
	defb 0c5h	; ab38

; ----------------------------------------------------------------------
; DATOS leido_AB39: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab39..0xab3a  (1 bytes)
DATA_leido_AB39:
	defb 000h	; ab39

; ----------------------------------------------------------------------
; DATOS leido_AB3A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab3a..0xab3b  (1 bytes)
DATA_leido_AB3A:
	defb 0c6h	; ab3a

; ----------------------------------------------------------------------
; DATOS leido_AB3B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab3b..0xab3c  (1 bytes)
DATA_leido_AB3B:
	defb 000h	; ab3b

; ----------------------------------------------------------------------
; DATOS leido_AB3C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab3c..0xab3d  (1 bytes)
DATA_leido_AB3C:
	defb 0e2h	; ab3c

; ----------------------------------------------------------------------
; DATOS leido_AB3D: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xab3d..0xab3e  (1 bytes)
DATA_leido_AB3D:
	defb 001h	; ab3d

; ----------------------------------------------------------------------
; DATOS leido_AB3E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab3e..0xab3f  (1 bytes)
DATA_leido_AB3E:
	defb 0c7h	; ab3e

; ----------------------------------------------------------------------
; DATOS leido_AB3F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab3f..0xab40  (1 bytes)
DATA_leido_AB3F:
	defb 000h	; ab3f

; ----------------------------------------------------------------------
; DATOS leido_AB40: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab40..0xab41  (1 bytes)
DATA_leido_AB40:
	defb 0e2h	; ab40

; ----------------------------------------------------------------------
; DATOS leido_AB41: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xab41..0xab42  (1 bytes)
DATA_leido_AB41:
	defb 002h	; ab41

; ----------------------------------------------------------------------
; DATOS leido_AB42: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab42..0xab43  (1 bytes)
DATA_leido_AB42:
	defb 0c4h	; ab42

; ----------------------------------------------------------------------
; DATOS leido_AB43: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab43..0xab44  (1 bytes)
DATA_leido_AB43:
	defb 050h	; ab43

; ----------------------------------------------------------------------
; DATOS leido_AB44: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab44..0xab45  (1 bytes)
DATA_leido_AB44:
	defb 0c5h	; ab44

; ----------------------------------------------------------------------
; DATOS leido_AB45: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab45..0xab46  (1 bytes)
DATA_leido_AB45:
	defb 000h	; ab45

; ----------------------------------------------------------------------
; DATOS leido_AB46: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xab46..0xab4e  (8 bytes)
DATA_leido_AB46:
	defb 0f5h,0c6h,0c7h,0c7h,0c9h,0c3h,0f6h,0a6h	; ab46  ........

; ----------------------------------------------------------------------
; DATOS leido_AB4E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab4e..0xab4f  (1 bytes)
DATA_leido_AB4E:
	defb 0f0h	; ab4e

; ----------------------------------------------------------------------
; DATOS leido_AB4F: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xab4f..0xab59  (10 bytes)
DATA_leido_AB4F:
	defb 0f5h,0a3h,0a5h,0a9h,0a3h,0abh,0a4h,0a3h,0f6h,088h	; ab4f  ..........

; ----------------------------------------------------------------------
; DATOS leido_AB59: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab59..0xab5a  (1 bytes)
DATA_leido_AB59:
	defb 0d0h	; ab59

; ----------------------------------------------------------------------
; DATOS leido_AB5A: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xab5a..0xab62  (8 bytes)
DATA_leido_AB5A:
	defb 0f5h,085h,08ah,084h,08ch,085h,0f6h,068h	; ab5a  .......h

; ----------------------------------------------------------------------
; DATOS leido_AB62: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab62..0xab63  (1 bytes)
DATA_leido_AB62:
	defb 0e0h	; ab62

; ----------------------------------------------------------------------
; DATOS leido_AB63: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xab63..0xab69  (6 bytes)
DATA_leido_AB63:
	defb 0f5h,065h,064h,06bh,0f6h,06ch	; ab63

; ----------------------------------------------------------------------
; DATOS leido_AB69: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab69..0xab6a  (1 bytes)
DATA_leido_AB69:
	defb 040h	; ab69

; ----------------------------------------------------------------------
; DATOS leido_AB6A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab6a..0xab6b  (1 bytes)
DATA_leido_AB6A:
	defb 065h	; ab6a

; ----------------------------------------------------------------------
; DATOS leido_AB6B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab6b..0xab6c  (1 bytes)
DATA_leido_AB6B:
	defb 0e0h	; ab6b

; ----------------------------------------------------------------------
; DATOS leido_AB6C: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 7 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (12
;   bytes)
;   0xab6c..0xab78  (12 bytes)
DATA_leido_AB6C:
	defb 0f5h,067h,04ah,044h,045h,046h,045h,006h,005h,007h,0ffh,0e2h	; ab6c  .gJDEFE.....

; ----------------------------------------------------------------------
; DATOS leido_AB78: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xab78..0xab79  (1 bytes)
DATA_leido_AB78:
	defb 001h	; ab78

; ----------------------------------------------------------------------
; DATOS leido_AB79: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab79..0xab7a  (1 bytes)
DATA_leido_AB79:
	defb 0c1h	; ab79

; ----------------------------------------------------------------------
; DATOS leido_AB7A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab7a..0xab7b  (1 bytes)
DATA_leido_AB7A:
	defb 0c0h	; ab7a

; ----------------------------------------------------------------------
; DATOS leido_AB7B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab7b..0xab7c  (1 bytes)
DATA_leido_AB7B:
	defb 0c2h	; ab7b

; ----------------------------------------------------------------------
; DATOS leido_AB7C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab7c..0xab7d  (1 bytes)
DATA_leido_AB7C:
	defb 0a0h	; ab7c

; ----------------------------------------------------------------------
; DATOS leido_AB7D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab7d..0xab7e  (1 bytes)
DATA_leido_AB7D:
	defb 0c4h	; ab7d

; ----------------------------------------------------------------------
; DATOS leido_AB7E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab7e..0xab7f  (1 bytes)
DATA_leido_AB7E:
	defb 000h	; ab7e

; ----------------------------------------------------------------------
; DATOS leido_AB7F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab7f..0xab80  (1 bytes)
DATA_leido_AB7F:
	defb 0c6h	; ab7f

; ----------------------------------------------------------------------
; DATOS leido_AB80: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab80..0xab81  (1 bytes)
DATA_leido_AB80:
	defb 000h	; ab80

; ----------------------------------------------------------------------
; DATOS leido_AB81: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab81..0xab82  (1 bytes)
DATA_leido_AB81:
	defb 0c7h	; ab81

; ----------------------------------------------------------------------
; DATOS leido_AB82: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab82..0xab83  (1 bytes)
DATA_leido_AB82:
	defb 000h	; ab82

; ----------------------------------------------------------------------
; DATOS leido_AB83: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab83..0xab84  (1 bytes)
DATA_leido_AB83:
	defb 0a1h	; ab83

; ----------------------------------------------------------------------
; DATOS leido_AB84: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab84..0xab85  (1 bytes)
DATA_leido_AB84:
	defb 0a0h	; ab84

; ----------------------------------------------------------------------
; DATOS leido_AB85: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab85..0xab86  (1 bytes)
DATA_leido_AB85:
	defb 0a2h	; ab85

; ----------------------------------------------------------------------
; DATOS leido_AB86: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab86..0xab87  (1 bytes)
DATA_leido_AB86:
	defb 080h	; ab86

; ----------------------------------------------------------------------
; DATOS leido_AB87: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab87..0xab88  (1 bytes)
DATA_leido_AB87:
	defb 0a3h	; ab87

; ----------------------------------------------------------------------
; DATOS leido_AB88: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab88..0xab89  (1 bytes)
DATA_leido_AB88:
	defb 0e0h	; ab88

; ----------------------------------------------------------------------
; DATOS leido_AB89: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab89..0xab8a  (1 bytes)
DATA_leido_AB89:
	defb 0a5h	; ab89

; ----------------------------------------------------------------------
; DATOS leido_AB8A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab8a..0xab8b  (1 bytes)
DATA_leido_AB8A:
	defb 0e0h	; ab8a

; ----------------------------------------------------------------------
; DATOS leido_AB8B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab8b..0xab8c  (1 bytes)
DATA_leido_AB8B:
	defb 0a6h	; ab8b

; ----------------------------------------------------------------------
; DATOS leido_AB8C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab8c..0xab8d  (1 bytes)
DATA_leido_AB8C:
	defb 0e0h	; ab8c

; ----------------------------------------------------------------------
; DATOS leido_AB8D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab8d..0xab8e  (1 bytes)
DATA_leido_AB8D:
	defb 081h	; ab8d

; ----------------------------------------------------------------------
; DATOS leido_AB8E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab8e..0xab8f  (1 bytes)
DATA_leido_AB8E:
	defb 080h	; ab8e

; ----------------------------------------------------------------------
; DATOS leido_AB8F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab8f..0xab90  (1 bytes)
DATA_leido_AB8F:
	defb 082h	; ab8f

; ----------------------------------------------------------------------
; DATOS leido_AB90: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab90..0xab91  (1 bytes)
DATA_leido_AB90:
	defb 060h	; ab90

; ----------------------------------------------------------------------
; DATOS leido_AB91: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab91..0xab92  (1 bytes)
DATA_leido_AB91:
	defb 083h	; ab91

; ----------------------------------------------------------------------
; DATOS leido_AB92: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab92..0xab93  (1 bytes)
DATA_leido_AB92:
	defb 0b0h	; ab92

; ----------------------------------------------------------------------
; DATOS leido_AB93: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab93..0xab94  (1 bytes)
DATA_leido_AB93:
	defb 085h	; ab93

; ----------------------------------------------------------------------
; DATOS leido_AB94: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab94..0xab95  (1 bytes)
DATA_leido_AB94:
	defb 0b0h	; ab94

; ----------------------------------------------------------------------
; DATOS leido_AB95: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab95..0xab96  (1 bytes)
DATA_leido_AB95:
	defb 086h	; ab95

; ----------------------------------------------------------------------
; DATOS leido_AB96: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab96..0xab97  (1 bytes)
DATA_leido_AB96:
	defb 0b0h	; ab96

; ----------------------------------------------------------------------
; DATOS leido_AB97: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab97..0xab98  (1 bytes)
DATA_leido_AB97:
	defb 061h	; ab97

; ----------------------------------------------------------------------
; DATOS leido_AB98: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab98..0xab99  (1 bytes)
DATA_leido_AB98:
	defb 080h	; ab98

; ----------------------------------------------------------------------
; DATOS leido_AB99: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab99..0xab9a  (1 bytes)
DATA_leido_AB99:
	defb 062h	; ab99

; ----------------------------------------------------------------------
; DATOS leido_AB9A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab9a..0xab9b  (1 bytes)
DATA_leido_AB9A:
	defb 060h	; ab9a

; ----------------------------------------------------------------------
; DATOS leido_AB9B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab9b..0xab9c  (1 bytes)
DATA_leido_AB9B:
	defb 063h	; ab9b

; ----------------------------------------------------------------------
; DATOS leido_AB9C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab9c..0xab9d  (1 bytes)
DATA_leido_AB9C:
	defb 0b0h	; ab9c

; ----------------------------------------------------------------------
; DATOS leido_AB9D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab9d..0xab9e  (1 bytes)
DATA_leido_AB9D:
	defb 065h	; ab9d

; ----------------------------------------------------------------------
; DATOS leido_AB9E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xab9e..0xab9f  (1 bytes)
DATA_leido_AB9E:
	defb 0b0h	; ab9e

; ----------------------------------------------------------------------
; DATOS leido_AB9F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab9f..0xaba0  (1 bytes)
DATA_leido_AB9F:
	defb 066h	; ab9f

; ----------------------------------------------------------------------
; DATOS leido_ABA0: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaba0..0xaba1  (1 bytes)
DATA_leido_ABA0:
	defb 0b0h	; aba0

; ----------------------------------------------------------------------
; DATOS leido_ABA1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaba1..0xaba2  (1 bytes)
DATA_leido_ABA1:
	defb 041h	; aba1

; ----------------------------------------------------------------------
; DATOS leido_ABA2: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaba2..0xaba3  (1 bytes)
DATA_leido_ABA2:
	defb 080h	; aba2

; ----------------------------------------------------------------------
; DATOS leido_ABA3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaba3..0xaba4  (1 bytes)
DATA_leido_ABA3:
	defb 042h	; aba3

; ----------------------------------------------------------------------
; DATOS leido_ABA4: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaba4..0xaba5  (1 bytes)
DATA_leido_ABA4:
	defb 060h	; aba4

; ----------------------------------------------------------------------
; DATOS leido_ABA5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaba5..0xaba6  (1 bytes)
DATA_leido_ABA5:
	defb 043h	; aba5

; ----------------------------------------------------------------------
; DATOS leido_ABA6: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaba6..0xaba7  (1 bytes)
DATA_leido_ABA6:
	defb 0b0h	; aba6

; ----------------------------------------------------------------------
; DATOS leido_ABA7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaba7..0xaba8  (1 bytes)
DATA_leido_ABA7:
	defb 045h	; aba7

; ----------------------------------------------------------------------
; DATOS leido_ABA8: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaba8..0xaba9  (1 bytes)
DATA_leido_ABA8:
	defb 0b0h	; aba8

; ----------------------------------------------------------------------
; DATOS leido_ABA9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaba9..0xabaa  (1 bytes)
DATA_leido_ABA9:
	defb 046h	; aba9

; ----------------------------------------------------------------------
; DATOS leido_ABAA: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabaa..0xabab  (1 bytes)
DATA_leido_ABAA:
	defb 0b0h	; abaa

; ----------------------------------------------------------------------
; DATOS leido_ABAB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabab..0xabac  (1 bytes)
DATA_leido_ABAB:
	defb 021h	; abab

; ----------------------------------------------------------------------
; DATOS leido_ABAC: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabac..0xabad  (1 bytes)
DATA_leido_ABAC:
	defb 080h	; abac

; ----------------------------------------------------------------------
; DATOS leido_ABAD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabad..0xabae  (1 bytes)
DATA_leido_ABAD:
	defb 022h	; abad

; ----------------------------------------------------------------------
; DATOS leido_ABAE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabae..0xabaf  (1 bytes)
DATA_leido_ABAE:
	defb 060h	; abae

; ----------------------------------------------------------------------
; DATOS leido_ABAF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabaf..0xabb0  (1 bytes)
DATA_leido_ABAF:
	defb 023h	; abaf

; ----------------------------------------------------------------------
; DATOS leido_ABB0: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabb0..0xabb1  (1 bytes)
DATA_leido_ABB0:
	defb 0b0h	; abb0

; ----------------------------------------------------------------------
; DATOS leido_ABB1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabb1..0xabb2  (1 bytes)
DATA_leido_ABB1:
	defb 025h	; abb1

; ----------------------------------------------------------------------
; DATOS leido_ABB2: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabb2..0xabb3  (1 bytes)
DATA_leido_ABB2:
	defb 0b0h	; abb2

; ----------------------------------------------------------------------
; DATOS leido_ABB3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabb3..0xabb4  (1 bytes)
DATA_leido_ABB3:
	defb 026h	; abb3

; ----------------------------------------------------------------------
; DATOS leido_ABB4: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabb4..0xabb5  (1 bytes)
DATA_leido_ABB4:
	defb 0b0h	; abb4

; ----------------------------------------------------------------------
; DATOS leido_ABB5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabb5..0xabb6  (1 bytes)
DATA_leido_ABB5:
	defb 001h	; abb5

; ----------------------------------------------------------------------
; DATOS leido_ABB6: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabb6..0xabb7  (1 bytes)
DATA_leido_ABB6:
	defb 080h	; abb6

; ----------------------------------------------------------------------
; DATOS leido_ABB7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabb7..0xabb8  (1 bytes)
DATA_leido_ABB7:
	defb 002h	; abb7

; ----------------------------------------------------------------------
; DATOS leido_ABB8: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabb8..0xabb9  (1 bytes)
DATA_leido_ABB8:
	defb 060h	; abb8

; ----------------------------------------------------------------------
; DATOS leido_ABB9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabb9..0xabba  (1 bytes)
DATA_leido_ABB9:
	defb 003h	; abb9

; ----------------------------------------------------------------------
; DATOS leido_ABBA: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabba..0xabbb  (1 bytes)
DATA_leido_ABBA:
	defb 0b0h	; abba

; ----------------------------------------------------------------------
; DATOS leido_ABBB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabbb..0xabbc  (1 bytes)
DATA_leido_ABBB:
	defb 005h	; abbb

; ----------------------------------------------------------------------
; DATOS leido_ABBC: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabbc..0xabbd  (1 bytes)
DATA_leido_ABBC:
	defb 0b0h	; abbc

; ----------------------------------------------------------------------
; DATOS leido_ABBD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabbd..0xabbe  (1 bytes)
DATA_leido_ABBD:
	defb 006h	; abbd

; ----------------------------------------------------------------------
; DATOS leido_ABBE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabbe..0xabbf  (1 bytes)
DATA_leido_ABBE:
	defb 0b0h	; abbe

; ----------------------------------------------------------------------
; DATOS leido_ABBF: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xabbf..0xabc1  (2 bytes)
DATA_leido_ABBF:
	defb 0fah,0e2h	; abbf

; ----------------------------------------------------------------------
; DATOS leido_ABC1: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xabc1..0xabc2  (1 bytes)
DATA_leido_ABC1:
	defb 003h	; abc1

; ----------------------------------------------------------------------
; DATOS leido_ABC2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabc2..0xabc3  (1 bytes)
DATA_leido_ABC2:
	defb 0c5h	; abc2

; ----------------------------------------------------------------------
; DATOS leido_ABC3: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabc3..0xabc4  (1 bytes)
DATA_leido_ABC3:
	defb 050h	; abc3

; ----------------------------------------------------------------------
; DATOS leido_ABC4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabc4..0xabc5  (1 bytes)
DATA_leido_ABC4:
	defb 0c6h	; abc4

; ----------------------------------------------------------------------
; DATOS leido_ABC5: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabc5..0xabc6  (1 bytes)
DATA_leido_ABC5:
	defb 000h	; abc5

; ----------------------------------------------------------------------
; DATOS leido_ABC6: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xabc6..0xabce  (8 bytes)
DATA_leido_ABC6:
	defb 0f5h,0c7h,0c8h,0c9h,0cah,0cbh,0f6h,0a7h	; abc6  ........

; ----------------------------------------------------------------------
; DATOS leido_ABCE: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xabce..0xabcf  (1 bytes)
DATA_leido_ABCE:
	defb 0f0h	; abce

; ----------------------------------------------------------------------
; DATOS leido_ABCF: 38 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 29 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (38 bytes)
;   0xabcf..0xabf5  (38 bytes)
DATA_leido_ABCF:
	defb 0f5h,0a8h,0a9h,0aah,0abh,0ach,0adh,0aeh,0f6h,089h,0d0h,0f5h,08ah,08bh,08ch,08dh	; abcf  ................
	defb 08eh,0f6h,069h,0e0h,0f5h,06ah,06bh,06ch,06dh,06eh,06fh,04bh,04ch,04dh,04eh,04fh	; abdf  ..i..jklmnoKLMNO
	defb 00ah,00bh,00ch,0f6h,0fah,0feh	; abef

; ----------------------------------------------------------------------
; DATOS leido_ABF5: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xabf5..0xabf6  (1 bytes)
DATA_leido_ABF5:
	defb 002h	; abf5

; ----------------------------------------------------------------------
; DATOS leido_ABF6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabf6..0xabf7  (1 bytes)
DATA_leido_ABF6:
	defb 0e0h	; abf6

; ----------------------------------------------------------------------
; DATOS leido_ABF7: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xabf7..0xabf8  (1 bytes)
DATA_leido_ABF7:
	defb 0ffh	; abf7

; ----------------------------------------------------------------------
; DATOS sin identificar  0xabf8..0xabf9  (1 bytes)
DATA_ABF8:
	defb 0ffh	; abf8

; ----------------------------------------------------------------------
; DATOS leido_ABF9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabf9..0xabfa  (1 bytes)
DATA_leido_ABF9:
	defb 0feh	; abf9

; ----------------------------------------------------------------------
; DATOS leido_ABFA: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xabfa..0xabfb  (1 bytes)
DATA_leido_ABFA:
	defb 002h	; abfa

; ----------------------------------------------------------------------
; DATOS leido_ABFB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabfb..0xabfc  (1 bytes)
DATA_leido_ABFB:
	defb 0e0h	; abfb

; ----------------------------------------------------------------------
; DATOS leido_ABFC: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xabfc..0xabfd  (1 bytes)
DATA_leido_ABFC:
	defb 002h	; abfc

; ----------------------------------------------------------------------
; DATOS leido_ABFD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabfd..0xabfe  (1 bytes)
DATA_leido_ABFD:
	defb 0feh	; abfd

; ----------------------------------------------------------------------
; DATOS leido_ABFE: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xabfe..0xabff  (1 bytes)
DATA_leido_ABFE:
	defb 002h	; abfe

; ----------------------------------------------------------------------
; DATOS leido_ABFF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabff..0xac00  (1 bytes)
DATA_leido_ABFF:
	defb 0f8h	; abff

; ----------------------------------------------------------------------
; DATOS leido_AC00: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xac00..0xac01  (1 bytes)
DATA_leido_AC00:
	defb 02ah	; ac00

; ----------------------------------------------------------------------
; DATOS leido_AC01: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac01..0xac02  (1 bytes)
DATA_leido_AC01:
	defb 0e2h	; ac01

; ----------------------------------------------------------------------
; DATOS leido_AC02: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xac02..0xac03  (1 bytes)
DATA_leido_AC02:
	defb 001h	; ac02

; ----------------------------------------------------------------------
; DATOS leido_AC03: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac03..0xac04  (1 bytes)
DATA_leido_AC03:
	defb 0f9h	; ac03

; ----------------------------------------------------------------------
; DATOS leido_AC04: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xac04..0xac06  (2 bytes)
DATA_leido_AC04:
	defb 05dh,0ach	; ac04

; ----------------------------------------------------------------------
; DATOS leido_AC06: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac06..0xac07  (1 bytes)
DATA_leido_AC06:
	defb 0f9h	; ac06

; ----------------------------------------------------------------------
; DATOS leido_AC07: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xac07..0xac09  (2 bytes)
DATA_leido_AC07:
	defb 06ah,0ach	; ac07

; ----------------------------------------------------------------------
; DATOS leido_AC09: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac09..0xac0a  (1 bytes)
DATA_leido_AC09:
	defb 0fbh	; ac09

; ----------------------------------------------------------------------
; DATOS leido_AC0A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xac0a..0xac0d  (3 bytes)
DATA_leido_AC0A:
	defb 008h,006h,0ach	; ac0a

; ----------------------------------------------------------------------
; DATOS sin identificar  0xac0d..0xac2a  (29 bytes)
DATA_AC0D:
	defb 0f7h,001h,0f9h,06ah,0ach,0fbh,004h,00fh,0ach,0f7h,003h,0f9h,06ah,0ach,0fbh,002h	; ac0d  ...j........j...
	defb 018h,0ach,0f7h,005h,0f9h,06ah,0ach,0f7h,006h,0f9h,06ah,0ach,0ffh	; ac1d  .....j....j..

; ----------------------------------------------------------------------
; DATOS leido_AC2A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac2a..0xac2b  (1 bytes)
DATA_leido_AC2A:
	defb 0feh	; ac2a

; ----------------------------------------------------------------------
; DATOS leido_AC2B: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac2b..0xac2c  (1 bytes)
DATA_leido_AC2B:
	defb 002h	; ac2b

; ----------------------------------------------------------------------
; DATOS leido_AC2C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac2c..0xac2d  (1 bytes)
DATA_leido_AC2C:
	defb 0e0h	; ac2c

; ----------------------------------------------------------------------
; DATOS leido_AC2D: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xac2d..0xac2e  (1 bytes)
DATA_leido_AC2D:
	defb 002h	; ac2d

; ----------------------------------------------------------------------
; DATOS leido_AC2E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac2e..0xac2f  (1 bytes)
DATA_leido_AC2E:
	defb 0feh	; ac2e

; ----------------------------------------------------------------------
; DATOS leido_AC2F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac2f..0xac30  (1 bytes)
DATA_leido_AC2F:
	defb 002h	; ac2f

; ----------------------------------------------------------------------
; DATOS leido_AC30: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac30..0xac31  (1 bytes)
DATA_leido_AC30:
	defb 0e0h	; ac30

; ----------------------------------------------------------------------
; DATOS leido_AC31: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xac31..0xac32  (1 bytes)
DATA_leido_AC31:
	defb 002h	; ac31

; ----------------------------------------------------------------------
; DATOS leido_AC32: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac32..0xac33  (1 bytes)
DATA_leido_AC32:
	defb 0feh	; ac32

; ----------------------------------------------------------------------
; DATOS leido_AC33: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac33..0xac34  (1 bytes)
DATA_leido_AC33:
	defb 002h	; ac33

; ----------------------------------------------------------------------
; DATOS leido_AC34: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac34..0xac35  (1 bytes)
DATA_leido_AC34:
	defb 0f8h	; ac34

; ----------------------------------------------------------------------
; DATOS leido_AC35: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xac35..0xac36  (1 bytes)
DATA_leido_AC35:
	defb 027h	; ac35

; ----------------------------------------------------------------------
; DATOS leido_AC36: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac36..0xac37  (1 bytes)
DATA_leido_AC36:
	defb 0e2h	; ac36

; ----------------------------------------------------------------------
; DATOS leido_AC37: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xac37..0xac38  (1 bytes)
DATA_leido_AC37:
	defb 001h	; ac37

; ----------------------------------------------------------------------
; DATOS leido_AC38: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac38..0xac39  (1 bytes)
DATA_leido_AC38:
	defb 0f9h	; ac38

; ----------------------------------------------------------------------
; DATOS leido_AC39: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xac39..0xac3b  (2 bytes)
DATA_leido_AC39:
	defb 07bh,0ach	; ac39

; ----------------------------------------------------------------------
; DATOS leido_AC3B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac3b..0xac3c  (1 bytes)
DATA_leido_AC3B:
	defb 0fbh	; ac3b

; ----------------------------------------------------------------------
; DATOS leido_AC3C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xac3c..0xac3f  (3 bytes)
DATA_leido_AC3C:
	defb 008h,038h,0ach	; ac3c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xac3f..0xac5d  (30 bytes)
DATA_AC3F:
	defb 0f7h,001h,0f9h,07bh,0ach,0fbh,004h,041h,0ach,0f7h,002h,0f9h,07bh,0ach,0f7h,003h	; ac3f  ...{...A....{...
	defb 0f9h,07bh,0ach,0f7h,004h,0f9h,07bh,0ach,0f7h,006h,0f9h,07bh,0ach,0ffh	; ac4f  .{....{....{..

; ----------------------------------------------------------------------
; DATOS leido_AC5D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac5d..0xac5e  (1 bytes)
DATA_leido_AC5D:
	defb 061h	; ac5d

; ----------------------------------------------------------------------
; DATOS leido_AC5E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac5e..0xac5f  (1 bytes)
DATA_leido_AC5E:
	defb 000h	; ac5e

; ----------------------------------------------------------------------
; DATOS leido_AC5F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac5f..0xac60  (1 bytes)
DATA_leido_AC5F:
	defb 061h	; ac5f

; ----------------------------------------------------------------------
; DATOS leido_AC60: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac60..0xac61  (1 bytes)
DATA_leido_AC60:
	defb 040h	; ac60

; ----------------------------------------------------------------------
; DATOS leido_AC61: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac61..0xac62  (1 bytes)
DATA_leido_AC61:
	defb 061h	; ac61

; ----------------------------------------------------------------------
; DATOS leido_AC62: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac62..0xac63  (1 bytes)
DATA_leido_AC62:
	defb 020h	; ac62

; ----------------------------------------------------------------------
; DATOS leido_AC63: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac63..0xac64  (1 bytes)
DATA_leido_AC63:
	defb 061h	; ac63

; ----------------------------------------------------------------------
; DATOS leido_AC64: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac64..0xac65  (1 bytes)
DATA_leido_AC64:
	defb 060h	; ac64

; ----------------------------------------------------------------------
; DATOS leido_AC65: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac65..0xac66  (1 bytes)
DATA_leido_AC65:
	defb 061h	; ac65

; ----------------------------------------------------------------------
; DATOS leido_AC66: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac66..0xac67  (1 bytes)
DATA_leido_AC66:
	defb 040h	; ac66

; ----------------------------------------------------------------------
; DATOS leido_AC67: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac67..0xac68  (1 bytes)
DATA_leido_AC67:
	defb 061h	; ac67

; ----------------------------------------------------------------------
; DATOS leido_AC68: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac68..0xac69  (1 bytes)
DATA_leido_AC68:
	defb 080h	; ac68

; ----------------------------------------------------------------------
; DATOS leido_AC69: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac69..0xac6b  (2 bytes)
DATA_leido_AC69:
	defb 0fah,060h	; ac69

; ----------------------------------------------------------------------
; DATOS leido_AC6B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac6b..0xac6c  (1 bytes)
DATA_leido_AC6B:
	defb 0a0h	; ac6b

; ----------------------------------------------------------------------
; DATOS leido_AC6C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac6c..0xac6d  (1 bytes)
DATA_leido_AC6C:
	defb 060h	; ac6c

; ----------------------------------------------------------------------
; DATOS leido_AC6D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac6d..0xac6e  (1 bytes)
DATA_leido_AC6D:
	defb 0c0h	; ac6d

; ----------------------------------------------------------------------
; DATOS leido_AC6E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac6e..0xac6f  (1 bytes)
DATA_leido_AC6E:
	defb 060h	; ac6e

; ----------------------------------------------------------------------
; DATOS leido_AC6F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac6f..0xac70  (1 bytes)
DATA_leido_AC6F:
	defb 0e0h	; ac6f

; ----------------------------------------------------------------------
; DATOS leido_AC70: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac70..0xac71  (1 bytes)
DATA_leido_AC70:
	defb 061h	; ac70

; ----------------------------------------------------------------------
; DATOS leido_AC71: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac71..0xac72  (1 bytes)
DATA_leido_AC71:
	defb 000h	; ac71

; ----------------------------------------------------------------------
; DATOS leido_AC72: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac72..0xac73  (1 bytes)
DATA_leido_AC72:
	defb 061h	; ac72

; ----------------------------------------------------------------------
; DATOS leido_AC73: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac73..0xac74  (1 bytes)
DATA_leido_AC73:
	defb 020h	; ac73

; ----------------------------------------------------------------------
; DATOS leido_AC74: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac74..0xac75  (1 bytes)
DATA_leido_AC74:
	defb 061h	; ac74

; ----------------------------------------------------------------------
; DATOS leido_AC75: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac75..0xac76  (1 bytes)
DATA_leido_AC75:
	defb 040h	; ac75

; ----------------------------------------------------------------------
; DATOS leido_AC76: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac76..0xac77  (1 bytes)
DATA_leido_AC76:
	defb 061h	; ac76

; ----------------------------------------------------------------------
; DATOS leido_AC77: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac77..0xac78  (1 bytes)
DATA_leido_AC77:
	defb 060h	; ac77

; ----------------------------------------------------------------------
; DATOS leido_AC78: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac78..0xac79  (1 bytes)
DATA_leido_AC78:
	defb 061h	; ac78

; ----------------------------------------------------------------------
; DATOS leido_AC79: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac79..0xac7a  (1 bytes)
DATA_leido_AC79:
	defb 080h	; ac79

; ----------------------------------------------------------------------
; DATOS leido_AC7A: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac7a..0xac7c  (2 bytes)
DATA_leido_AC7A:
	defb 0fah,060h	; ac7a

; ----------------------------------------------------------------------
; DATOS leido_AC7C: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac7c..0xac7d  (1 bytes)
DATA_leido_AC7C:
	defb 0a0h	; ac7c

; ----------------------------------------------------------------------
; DATOS leido_AC7D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac7d..0xac7e  (1 bytes)
DATA_leido_AC7D:
	defb 060h	; ac7d

; ----------------------------------------------------------------------
; DATOS leido_AC7E: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac7e..0xac7f  (1 bytes)
DATA_leido_AC7E:
	defb 0c0h	; ac7e

; ----------------------------------------------------------------------
; DATOS leido_AC7F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac7f..0xac80  (1 bytes)
DATA_leido_AC7F:
	defb 061h	; ac7f

; ----------------------------------------------------------------------
; DATOS leido_AC80: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac80..0xac81  (1 bytes)
DATA_leido_AC80:
	defb 040h	; ac80

; ----------------------------------------------------------------------
; DATOS leido_AC81: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac81..0xac82  (1 bytes)
DATA_leido_AC81:
	defb 061h	; ac81

; ----------------------------------------------------------------------
; DATOS leido_AC82: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac82..0xac83  (1 bytes)
DATA_leido_AC82:
	defb 0c0h	; ac82

; ----------------------------------------------------------------------
; DATOS leido_AC83: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac83..0xac84  (1 bytes)
DATA_leido_AC83:
	defb 062h	; ac83

; ----------------------------------------------------------------------
; DATOS leido_AC84: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac84..0xac85  (1 bytes)
DATA_leido_AC84:
	defb 080h	; ac84

; ----------------------------------------------------------------------
; DATOS leido_AC85: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac85..0xac86  (1 bytes)
DATA_leido_AC85:
	defb 063h	; ac85

; ----------------------------------------------------------------------
; DATOS leido_AC86: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac86..0xac87  (1 bytes)
DATA_leido_AC86:
	defb 040h	; ac86

; ----------------------------------------------------------------------
; DATOS leido_AC87: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac87..0xac88  (1 bytes)
DATA_leido_AC87:
	defb 064h	; ac87

; ----------------------------------------------------------------------
; DATOS leido_AC88: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac88..0xac89  (1 bytes)
DATA_leido_AC88:
	defb 000h	; ac88

; ----------------------------------------------------------------------
; DATOS leido_AC89: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac89..0xac8a  (1 bytes)
DATA_leido_AC89:
	defb 065h	; ac89

; ----------------------------------------------------------------------
; DATOS leido_AC8A: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac8a..0xac8b  (1 bytes)
DATA_leido_AC8A:
	defb 000h	; ac8a

; ----------------------------------------------------------------------
; DATOS leido_AC8B: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xac8b..0xac8f  (4 bytes)
DATA_leido_AC8B:
	defb 0fah,0ffh,0ffh,0feh	; ac8b

; ----------------------------------------------------------------------
; DATOS leido_AC8F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac8f..0xac90  (1 bytes)
DATA_leido_AC8F:
	defb 002h	; ac8f

; ----------------------------------------------------------------------
; DATOS leido_AC90: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac90..0xac91  (1 bytes)
DATA_leido_AC90:
	defb 0e0h	; ac90

; ----------------------------------------------------------------------
; DATOS leido_AC91: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xac91..0xac92  (1 bytes)
DATA_leido_AC91:
	defb 00fh	; ac91

; ----------------------------------------------------------------------
; DATOS leido_AC92: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac92..0xac93  (1 bytes)
DATA_leido_AC92:
	defb 0fdh	; ac92

; ----------------------------------------------------------------------
; DATOS leido_AC93: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xac93..0xac95  (2 bytes)
DATA_leido_AC93:
	defb 08eh,0ach	; ac93

; ----------------------------------------------------------------------
; DATOS sin identificar  0xac95..0xac96  (1 bytes)
DATA_AC95:
	defb 0ffh	; ac95

; ----------------------------------------------------------------------
; DATOS leido_AC96: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac96..0xac97  (1 bytes)
DATA_leido_AC96:
	defb 0feh	; ac96

; ----------------------------------------------------------------------
; DATOS leido_AC97: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac97..0xac98  (1 bytes)
DATA_leido_AC97:
	defb 002h	; ac97

; ----------------------------------------------------------------------
; DATOS leido_AC98: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac98..0xac99  (1 bytes)
DATA_leido_AC98:
	defb 0f8h	; ac98

; ----------------------------------------------------------------------
; DATOS leido_AC99: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xac99..0xac9a  (1 bytes)
DATA_leido_AC99:
	defb 015h	; ac99

; ----------------------------------------------------------------------
; DATOS leido_AC9A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac9a..0xac9b  (1 bytes)
DATA_leido_AC9A:
	defb 0e2h	; ac9a

; ----------------------------------------------------------------------
; DATOS leido_AC9B: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xac9b..0xac9c  (1 bytes)
DATA_leido_AC9B:
	defb 002h	; ac9b

; ----------------------------------------------------------------------
; DATOS leido_AC9C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac9c..0xac9d  (1 bytes)
DATA_leido_AC9C:
	defb 084h	; ac9c

; ----------------------------------------------------------------------
; DATOS leido_AC9D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac9d..0xac9e  (1 bytes)
DATA_leido_AC9D:
	defb 000h	; ac9d

; ----------------------------------------------------------------------
; DATOS leido_AC9E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac9e..0xac9f  (1 bytes)
DATA_leido_AC9E:
	defb 083h	; ac9e

; ----------------------------------------------------------------------
; DATOS leido_AC9F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xac9f..0xaca0  (1 bytes)
DATA_leido_AC9F:
	defb 0e0h	; ac9f

; ----------------------------------------------------------------------
; DATOS leido_ACA0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaca0..0xaca1  (1 bytes)
DATA_leido_ACA0:
	defb 093h	; aca0

; ----------------------------------------------------------------------
; DATOS leido_ACA1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaca1..0xaca2  (1 bytes)
DATA_leido_ACA1:
	defb 0c0h	; aca1

; ----------------------------------------------------------------------
; DATOS leido_ACA2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaca2..0xaca3  (1 bytes)
DATA_leido_ACA2:
	defb 093h	; aca2

; ----------------------------------------------------------------------
; DATOS leido_ACA3: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaca3..0xaca4  (1 bytes)
DATA_leido_ACA3:
	defb 0a0h	; aca3

; ----------------------------------------------------------------------
; DATOS leido_ACA4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaca4..0xaca5  (1 bytes)
DATA_leido_ACA4:
	defb 0a3h	; aca4

; ----------------------------------------------------------------------
; DATOS leido_ACA5: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaca5..0xaca6  (1 bytes)
DATA_leido_ACA5:
	defb 080h	; aca5

; ----------------------------------------------------------------------
; DATOS leido_ACA6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaca6..0xaca7  (1 bytes)
DATA_leido_ACA6:
	defb 0a3h	; aca6

; ----------------------------------------------------------------------
; DATOS leido_ACA7: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaca7..0xaca8  (1 bytes)
DATA_leido_ACA7:
	defb 060h	; aca7

; ----------------------------------------------------------------------
; DATOS leido_ACA8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaca8..0xaca9  (1 bytes)
DATA_leido_ACA8:
	defb 0b3h	; aca8

; ----------------------------------------------------------------------
; DATOS leido_ACA9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaca9..0xacaa  (1 bytes)
DATA_leido_ACA9:
	defb 040h	; aca9

; ----------------------------------------------------------------------
; DATOS leido_ACAA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacaa..0xacab  (1 bytes)
DATA_leido_ACAA:
	defb 0b3h	; acaa

; ----------------------------------------------------------------------
; DATOS leido_ACAB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacab..0xacac  (1 bytes)
DATA_leido_ACAB:
	defb 020h	; acab

; ----------------------------------------------------------------------
; DATOS leido_ACAC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacac..0xacad  (1 bytes)
DATA_leido_ACAC:
	defb 0c3h	; acac

; ----------------------------------------------------------------------
; DATOS leido_ACAD: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacad..0xacae  (1 bytes)
DATA_leido_ACAD:
	defb 000h	; acad

; ----------------------------------------------------------------------
; DATOS leido_ACAE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacae..0xacaf  (1 bytes)
DATA_leido_ACAE:
	defb 0fdh	; acae

; ----------------------------------------------------------------------
; DATOS leido_ACAF: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xacaf..0xacb1  (2 bytes)
DATA_leido_ACAF:
	defb 09ch,0ach	; acaf

; ----------------------------------------------------------------------
; DATOS sin identificar  0xacb1..0xacb2  (1 bytes)
DATA_ACB1:
	defb 0ffh	; acb1

; ----------------------------------------------------------------------
; DATOS leido_ACB2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacb2..0xacb3  (1 bytes)
DATA_leido_ACB2:
	defb 0feh	; acb2

; ----------------------------------------------------------------------
; DATOS leido_ACB3: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xacb3..0xacb4  (1 bytes)
DATA_leido_ACB3:
	defb 002h	; acb3

; ----------------------------------------------------------------------
; DATOS leido_ACB4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacb4..0xacb5  (1 bytes)
DATA_leido_ACB4:
	defb 0f8h	; acb4

; ----------------------------------------------------------------------
; DATOS leido_ACB5: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xacb5..0xacb6  (1 bytes)
DATA_leido_ACB5:
	defb 009h	; acb5

; ----------------------------------------------------------------------
; DATOS leido_ACB6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacb6..0xacb7  (1 bytes)
DATA_leido_ACB6:
	defb 0e0h	; acb6

; ----------------------------------------------------------------------
; DATOS leido_ACB7: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xacb7..0xacb8  (1 bytes)
DATA_leido_ACB7:
	defb 008h	; acb7

; ----------------------------------------------------------------------
; DATOS leido_ACB8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacb8..0xacb9  (1 bytes)
DATA_leido_ACB8:
	defb 0e2h	; acb8

; ----------------------------------------------------------------------
; DATOS leido_ACB9: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xacb9..0xacba  (1 bytes)
DATA_leido_ACB9:
	defb 002h	; acb9

; ----------------------------------------------------------------------
; DATOS leido_ACBA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacba..0xacbb  (1 bytes)
DATA_leido_ACBA:
	defb 054h	; acba

; ----------------------------------------------------------------------
; DATOS leido_ACBB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacbb..0xacbc  (1 bytes)
DATA_leido_ACBB:
	defb 000h	; acbb

; ----------------------------------------------------------------------
; DATOS leido_ACBC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacbc..0xacbd  (1 bytes)
DATA_leido_ACBC:
	defb 053h	; acbc

; ----------------------------------------------------------------------
; DATOS leido_ACBD: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacbd..0xacbe  (1 bytes)
DATA_leido_ACBD:
	defb 0e0h	; acbd

; ----------------------------------------------------------------------
; DATOS leido_ACBE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacbe..0xacbf  (1 bytes)
DATA_leido_ACBE:
	defb 063h	; acbe

; ----------------------------------------------------------------------
; DATOS leido_ACBF: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacbf..0xacc0  (1 bytes)
DATA_leido_ACBF:
	defb 0c0h	; acbf

; ----------------------------------------------------------------------
; DATOS leido_ACC0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacc0..0xacc1  (1 bytes)
DATA_leido_ACC0:
	defb 063h	; acc0

; ----------------------------------------------------------------------
; DATOS leido_ACC1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacc1..0xacc2  (1 bytes)
DATA_leido_ACC1:
	defb 0a0h	; acc1

; ----------------------------------------------------------------------
; DATOS leido_ACC2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacc2..0xacc3  (1 bytes)
DATA_leido_ACC2:
	defb 073h	; acc2

; ----------------------------------------------------------------------
; DATOS leido_ACC3: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacc3..0xacc4  (1 bytes)
DATA_leido_ACC3:
	defb 080h	; acc3

; ----------------------------------------------------------------------
; DATOS leido_ACC4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacc4..0xacc5  (1 bytes)
DATA_leido_ACC4:
	defb 073h	; acc4

; ----------------------------------------------------------------------
; DATOS leido_ACC5: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacc5..0xacc6  (1 bytes)
DATA_leido_ACC5:
	defb 060h	; acc5

; ----------------------------------------------------------------------
; DATOS leido_ACC6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacc6..0xacc7  (1 bytes)
DATA_leido_ACC6:
	defb 083h	; acc6

; ----------------------------------------------------------------------
; DATOS leido_ACC7: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacc7..0xacc8  (1 bytes)
DATA_leido_ACC7:
	defb 040h	; acc7

; ----------------------------------------------------------------------
; DATOS leido_ACC8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacc8..0xacc9  (1 bytes)
DATA_leido_ACC8:
	defb 083h	; acc8

; ----------------------------------------------------------------------
; DATOS leido_ACC9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacc9..0xacca  (1 bytes)
DATA_leido_ACC9:
	defb 020h	; acc9

; ----------------------------------------------------------------------
; DATOS leido_ACCA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacca..0xaccb  (1 bytes)
DATA_leido_ACCA:
	defb 093h	; acca

; ----------------------------------------------------------------------
; DATOS leido_ACCB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaccb..0xaccc  (1 bytes)
DATA_leido_ACCB:
	defb 000h	; accb

; ----------------------------------------------------------------------
; DATOS leido_ACCC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaccc..0xaccd  (1 bytes)
DATA_leido_ACCC:
	defb 0fdh	; accc

; ----------------------------------------------------------------------
; DATOS leido_ACCD: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaccd..0xaccf  (2 bytes)
DATA_leido_ACCD:
	defb 0b6h,0ach	; accd

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaccf..0xacd0  (1 bytes)
DATA_ACCF:
	defb 0ffh	; accf

; ----------------------------------------------------------------------
; DATOS leido_ACD0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacd0..0xacd1  (1 bytes)
DATA_leido_ACD0:
	defb 0feh	; acd0

; ----------------------------------------------------------------------
; DATOS leido_ACD1: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xacd1..0xacd2  (1 bytes)
DATA_leido_ACD1:
	defb 002h	; acd1

; ----------------------------------------------------------------------
; DATOS leido_ACD2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacd2..0xacd3  (1 bytes)
DATA_leido_ACD2:
	defb 0f8h	; acd2

; ----------------------------------------------------------------------
; DATOS leido_ACD3: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xacd3..0xacd4  (1 bytes)
DATA_leido_ACD3:
	defb 02ah	; acd3

; ----------------------------------------------------------------------
; DATOS leido_ACD4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacd4..0xacd5  (1 bytes)
DATA_leido_ACD4:
	defb 0e2h	; acd4

; ----------------------------------------------------------------------
; DATOS leido_ACD5: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xacd5..0xacd6  (1 bytes)
DATA_leido_ACD5:
	defb 003h	; acd5

; ----------------------------------------------------------------------
; DATOS leido_ACD6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacd6..0xacd7  (1 bytes)
DATA_leido_ACD6:
	defb 000h	; acd6

; ----------------------------------------------------------------------
; DATOS leido_ACD7: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacd7..0xacd8  (1 bytes)
DATA_leido_ACD7:
	defb 050h	; acd7

; ----------------------------------------------------------------------
; DATOS leido_ACD8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacd8..0xacd9  (1 bytes)
DATA_leido_ACD8:
	defb 000h	; acd8

; ----------------------------------------------------------------------
; DATOS leido_ACD9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacd9..0xacda  (1 bytes)
DATA_leido_ACD9:
	defb 000h	; acd9

; ----------------------------------------------------------------------
; DATOS leido_ACDA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacda..0xacdb  (1 bytes)
DATA_leido_ACDA:
	defb 000h	; acda

; ----------------------------------------------------------------------
; DATOS leido_ACDB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacdb..0xacdc  (1 bytes)
DATA_leido_ACDB:
	defb 04ch	; acdb

; ----------------------------------------------------------------------
; DATOS leido_ACDC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacdc..0xacdd  (1 bytes)
DATA_leido_ACDC:
	defb 000h	; acdc

; ----------------------------------------------------------------------
; DATOS leido_ACDD: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacdd..0xacde  (1 bytes)
DATA_leido_ACDD:
	defb 000h	; acdd

; ----------------------------------------------------------------------
; DATOS leido_ACDE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacde..0xacdf  (1 bytes)
DATA_leido_ACDE:
	defb 000h	; acde

; ----------------------------------------------------------------------
; DATOS leido_ACDF: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacdf..0xace0  (1 bytes)
DATA_leido_ACDF:
	defb 048h	; acdf

; ----------------------------------------------------------------------
; DATOS leido_ACE0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xace0..0xace1  (1 bytes)
DATA_leido_ACE0:
	defb 000h	; ace0

; ----------------------------------------------------------------------
; DATOS leido_ACE1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xace1..0xace2  (1 bytes)
DATA_leido_ACE1:
	defb 000h	; ace1

; ----------------------------------------------------------------------
; DATOS leido_ACE2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xace2..0xace3  (1 bytes)
DATA_leido_ACE2:
	defb 000h	; ace2

; ----------------------------------------------------------------------
; DATOS leido_ACE3: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xace3..0xace4  (1 bytes)
DATA_leido_ACE3:
	defb 044h	; ace3

; ----------------------------------------------------------------------
; DATOS leido_ACE4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xace4..0xace5  (1 bytes)
DATA_leido_ACE4:
	defb 000h	; ace4

; ----------------------------------------------------------------------
; DATOS leido_ACE5: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xace5..0xace6  (1 bytes)
DATA_leido_ACE5:
	defb 000h	; ace5

; ----------------------------------------------------------------------
; DATOS leido_ACE6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xace6..0xace7  (1 bytes)
DATA_leido_ACE6:
	defb 000h	; ace6

; ----------------------------------------------------------------------
; DATOS leido_ACE7: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xace7..0xace8  (1 bytes)
DATA_leido_ACE7:
	defb 040h	; ace7

; ----------------------------------------------------------------------
; DATOS leido_ACE8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xace8..0xace9  (1 bytes)
DATA_leido_ACE8:
	defb 000h	; ace8

; ----------------------------------------------------------------------
; DATOS leido_ACE9: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xace9..0xacea  (1 bytes)
DATA_leido_ACE9:
	defb 000h	; ace9

; ----------------------------------------------------------------------
; DATOS leido_ACEA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacea..0xaceb  (1 bytes)
DATA_leido_ACEA:
	defb 000h	; acea

; ----------------------------------------------------------------------
; DATOS leido_ACEB: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaceb..0xacec  (1 bytes)
DATA_leido_ACEB:
	defb 03ch	; aceb

; ----------------------------------------------------------------------
; DATOS leido_ACEC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacec..0xaced  (1 bytes)
DATA_leido_ACEC:
	defb 000h	; acec

; ----------------------------------------------------------------------
; DATOS leido_ACED: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xaced..0xacee  (1 bytes)
DATA_leido_ACED:
	defb 000h	; aced

; ----------------------------------------------------------------------
; DATOS leido_ACEE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacee..0xacef  (1 bytes)
DATA_leido_ACEE:
	defb 000h	; acee

; ----------------------------------------------------------------------
; DATOS leido_ACEF: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacef..0xacf0  (1 bytes)
DATA_leido_ACEF:
	defb 038h	; acef

; ----------------------------------------------------------------------
; DATOS leido_ACF0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacf0..0xacf1  (1 bytes)
DATA_leido_ACF0:
	defb 000h	; acf0

; ----------------------------------------------------------------------
; DATOS leido_ACF1: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacf1..0xacf2  (1 bytes)
DATA_leido_ACF1:
	defb 000h	; acf1

; ----------------------------------------------------------------------
; DATOS leido_ACF2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacf2..0xacf3  (1 bytes)
DATA_leido_ACF2:
	defb 0fdh	; acf2

; ----------------------------------------------------------------------
; DATOS leido_ACF3: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xacf3..0xacf5  (2 bytes)
DATA_leido_ACF3:
	defb 0d6h,0ach	; acf3

; ----------------------------------------------------------------------
; DATOS sin identificar  0xacf5..0xacf6  (1 bytes)
DATA_ACF5:
	defb 0ffh	; acf5

; ----------------------------------------------------------------------
; DATOS leido_ACF6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacf6..0xacf7  (1 bytes)
DATA_leido_ACF6:
	defb 0feh	; acf6

; ----------------------------------------------------------------------
; DATOS leido_ACF7: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xacf7..0xacf8  (1 bytes)
DATA_leido_ACF7:
	defb 002h	; acf7

; ----------------------------------------------------------------------
; DATOS leido_ACF8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacf8..0xacf9  (1 bytes)
DATA_leido_ACF8:
	defb 0f8h	; acf8

; ----------------------------------------------------------------------
; DATOS leido_ACF9: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xacf9..0xacfa  (1 bytes)
DATA_leido_ACF9:
	defb 005h	; acf9

; ----------------------------------------------------------------------
; DATOS leido_ACFA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacfa..0xacfb  (1 bytes)
DATA_leido_ACFA:
	defb 0e2h	; acfa

; ----------------------------------------------------------------------
; DATOS leido_ACFB: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xacfb..0xacfc  (1 bytes)
DATA_leido_ACFB:
	defb 005h	; acfb

; ----------------------------------------------------------------------
; DATOS leido_ACFC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacfc..0xacfd  (1 bytes)
DATA_leido_ACFC:
	defb 021h	; acfc

; ----------------------------------------------------------------------
; DATOS leido_ACFD: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacfd..0xacfe  (1 bytes)
DATA_leido_ACFD:
	defb 080h	; acfd

; ----------------------------------------------------------------------
; DATOS leido_ACFE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacfe..0xacff  (1 bytes)
DATA_leido_ACFE:
	defb 020h	; acfe

; ----------------------------------------------------------------------
; DATOS leido_ACFF: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xacff..0xad00  (1 bytes)
DATA_leido_ACFF:
	defb 0c0h	; acff

; ----------------------------------------------------------------------
; DATOS leido_AD00: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad00..0xad01  (1 bytes)
DATA_leido_AD00:
	defb 021h	; ad00

; ----------------------------------------------------------------------
; DATOS leido_AD01: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad01..0xad02  (1 bytes)
DATA_leido_AD01:
	defb 000h	; ad01

; ----------------------------------------------------------------------
; DATOS leido_AD02: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad02..0xad03  (1 bytes)
DATA_leido_AD02:
	defb 021h	; ad02

; ----------------------------------------------------------------------
; DATOS leido_AD03: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad03..0xad04  (1 bytes)
DATA_leido_AD03:
	defb 040h	; ad03

; ----------------------------------------------------------------------
; DATOS leido_AD04: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad04..0xad05  (1 bytes)
DATA_leido_AD04:
	defb 021h	; ad04

; ----------------------------------------------------------------------
; DATOS leido_AD05: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad05..0xad06  (1 bytes)
DATA_leido_AD05:
	defb 080h	; ad05

; ----------------------------------------------------------------------
; DATOS leido_AD06: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad06..0xad07  (1 bytes)
DATA_leido_AD06:
	defb 021h	; ad06

; ----------------------------------------------------------------------
; DATOS leido_AD07: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad07..0xad08  (1 bytes)
DATA_leido_AD07:
	defb 0c0h	; ad07

; ----------------------------------------------------------------------
; DATOS leido_AD08: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad08..0xad09  (1 bytes)
DATA_leido_AD08:
	defb 022h	; ad08

; ----------------------------------------------------------------------
; DATOS leido_AD09: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad09..0xad0a  (1 bytes)
DATA_leido_AD09:
	defb 000h	; ad09

; ----------------------------------------------------------------------
; DATOS leido_AD0A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad0a..0xad0b  (1 bytes)
DATA_leido_AD0A:
	defb 0fdh	; ad0a

; ----------------------------------------------------------------------
; DATOS leido_AD0B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad0b..0xad0d  (2 bytes)
DATA_leido_AD0B:
	defb 0fch,0ach	; ad0b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xad0d..0xad0e  (1 bytes)
DATA_AD0D:
	defb 0ffh	; ad0d

; ----------------------------------------------------------------------
; DATOS leido_AD0E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad0e..0xad0f  (1 bytes)
DATA_leido_AD0E:
	defb 0feh	; ad0e

; ----------------------------------------------------------------------
; DATOS leido_AD0F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xad0f..0xad10  (1 bytes)
DATA_leido_AD0F:
	defb 002h	; ad0f

; ----------------------------------------------------------------------
; DATOS leido_AD10: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad10..0xad11  (1 bytes)
DATA_leido_AD10:
	defb 0f8h	; ad10

; ----------------------------------------------------------------------
; DATOS leido_AD11: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xad11..0xad12  (1 bytes)
DATA_leido_AD11:
	defb 005h	; ad11

; ----------------------------------------------------------------------
; DATOS leido_AD12: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad12..0xad13  (1 bytes)
DATA_leido_AD12:
	defb 0e0h	; ad12

; ----------------------------------------------------------------------
; DATOS leido_AD13: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xad13..0xad14  (1 bytes)
DATA_leido_AD13:
	defb 002h	; ad13

; ----------------------------------------------------------------------
; DATOS leido_AD14: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad14..0xad15  (1 bytes)
DATA_leido_AD14:
	defb 0e2h	; ad14

; ----------------------------------------------------------------------
; DATOS leido_AD15: 1 bytes que lee p10:6B9D al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6B9D (1 bytes)
;   0xad15..0xad16  (1 bytes)
DATA_leido_AD15:
	defb 005h	; ad15

; ----------------------------------------------------------------------
; DATOS leido_AD16: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad16..0xad17  (1 bytes)
DATA_leido_AD16:
	defb 021h	; ad16

; ----------------------------------------------------------------------
; DATOS leido_AD17: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad17..0xad18  (1 bytes)
DATA_leido_AD17:
	defb 080h	; ad17

; ----------------------------------------------------------------------
; DATOS leido_AD18: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad18..0xad19  (1 bytes)
DATA_leido_AD18:
	defb 020h	; ad18

; ----------------------------------------------------------------------
; DATOS leido_AD19: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad19..0xad1a  (1 bytes)
DATA_leido_AD19:
	defb 0c0h	; ad19

; ----------------------------------------------------------------------
; DATOS leido_AD1A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad1a..0xad1b  (1 bytes)
DATA_leido_AD1A:
	defb 021h	; ad1a

; ----------------------------------------------------------------------
; DATOS leido_AD1B: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad1b..0xad1c  (1 bytes)
DATA_leido_AD1B:
	defb 000h	; ad1b

; ----------------------------------------------------------------------
; DATOS leido_AD1C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad1c..0xad1d  (1 bytes)
DATA_leido_AD1C:
	defb 021h	; ad1c

; ----------------------------------------------------------------------
; DATOS leido_AD1D: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad1d..0xad1e  (1 bytes)
DATA_leido_AD1D:
	defb 040h	; ad1d

; ----------------------------------------------------------------------
; DATOS leido_AD1E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad1e..0xad1f  (1 bytes)
DATA_leido_AD1E:
	defb 021h	; ad1e

; ----------------------------------------------------------------------
; DATOS leido_AD1F: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad1f..0xad20  (1 bytes)
DATA_leido_AD1F:
	defb 080h	; ad1f

; ----------------------------------------------------------------------
; DATOS leido_AD20: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad20..0xad21  (1 bytes)
DATA_leido_AD20:
	defb 021h	; ad20

; ----------------------------------------------------------------------
; DATOS leido_AD21: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad21..0xad22  (1 bytes)
DATA_leido_AD21:
	defb 0c0h	; ad21

; ----------------------------------------------------------------------
; DATOS leido_AD22: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad22..0xad23  (1 bytes)
DATA_leido_AD22:
	defb 022h	; ad22

; ----------------------------------------------------------------------
; DATOS leido_AD23: 1 bytes que lee p10:6508 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6508 (1 bytes)
;   0xad23..0xad24  (1 bytes)
DATA_leido_AD23:
	defb 000h	; ad23

; ----------------------------------------------------------------------
; DATOS leido_AD24: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad24..0xad25  (1 bytes)
DATA_leido_AD24:
	defb 0fdh	; ad24

; ----------------------------------------------------------------------
; DATOS leido_AD25: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad25..0xad27  (2 bytes)
DATA_leido_AD25:
	defb 012h,0adh	; ad25

; ----------------------------------------------------------------------
; DATOS sin identificar  0xad27..0xada6  (127 bytes)
DATA_AD27:
	defb 0ffh,0ffh,0ffh,0feh,001h,0f8h,005h,0e9h,002h,0ech,0d3h,0eah,00ch,000h,010h,020h	; ad27  ...............
	defb 030h,040h,050h,060h,070h,080h,090h,0a0h,0b0h,0eah,00bh,000h,010h,020h,030h,040h	; ad37  0@P`p........ 0@
	defb 050h,060h,070h,080h,090h,0a0h,0b0h,0fdh,032h,0adh,0feh,002h,0f8h,009h,0e2h,002h	; ad47  P`p.....2.......
	defb 0c3h,000h,0c3h,080h,0c4h,000h,0c4h,080h,0c5h,000h,0c5h,080h,0c6h,000h,0c6h,080h	; ad57  ................
	defb 0c7h,000h,0c7h,080h,0c8h,000h,0c8h,080h,0f9h,099h,0adh,0fdh,057h,0adh,0feh,002h	; ad67  ............W...
	defb 0f8h,015h,0f5h,0e2h,00fh,053h,040h,0fdh,07ch,0adh,0feh,002h,0e2h,002h,0f9h,099h	; ad77  .....S@.|.......
	defb 0adh,0cch,000h,0cch,080h,0cdh,000h,0cdh,080h,0ceh,000h,0ceh,080h,0cfh,000h,0fdh	; ad87  ................
	defb 085h,0adh,0c9h,000h,0c9h,080h,0cah,000h,0cah,080h,0cbh,000h,0cbh,080h,0fah	; ad97  ...............

; ----------------------------------------------------------------------
; DATOS leido_ADA6: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xada6..0xadaa  (4 bytes)
DATA_leido_ADA6:
	defb 0ffh,0ffh,0ffh,0feh	; ada6

; ----------------------------------------------------------------------
; DATOS leido_ADAA: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xadaa..0xadab  (1 bytes)
DATA_leido_ADAA:
	defb 001h	; adaa

; ----------------------------------------------------------------------
; DATOS leido_ADAB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadab..0xadac  (1 bytes)
DATA_leido_ADAB:
	defb 0f8h	; adab

; ----------------------------------------------------------------------
; DATOS leido_ADAC: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xadac..0xadad  (1 bytes)
DATA_leido_ADAC:
	defb 005h	; adac

; ----------------------------------------------------------------------
; DATOS leido_ADAD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadad..0xadae  (1 bytes)
DATA_leido_ADAD:
	defb 0e9h	; adad

; ----------------------------------------------------------------------
; DATOS leido_ADAE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xadae..0xadaf  (1 bytes)
DATA_leido_ADAE:
	defb 002h	; adae

; ----------------------------------------------------------------------
; DATOS leido_ADAF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadaf..0xadb0  (1 bytes)
DATA_leido_ADAF:
	defb 0eah	; adaf

; ----------------------------------------------------------------------
; DATOS leido_ADB0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xadb0..0xadb1  (1 bytes)
DATA_leido_ADB0:
	defb 00bh	; adb0

; ----------------------------------------------------------------------
; DATOS leido_ADB1: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xadb1..0xadbb  (10 bytes)
DATA_leido_ADB1:
	defb 0ech,0d3h,000h,010h,020h,030h,040h,050h,060h,0f9h	; adb1  .... 0@P`.

; ----------------------------------------------------------------------
; DATOS leido_ADBB: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xadbb..0xadbd  (2 bytes)
DATA_leido_ADBB:
	defb 0f7h,0adh	; adbb

; ----------------------------------------------------------------------
; DATOS leido_ADBD: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xadbd..0xadbf  (2 bytes)
DATA_leido_ADBD:
	defb 0ffh,0feh	; adbd

; ----------------------------------------------------------------------
; DATOS leido_ADBF: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xadbf..0xadc0  (1 bytes)
DATA_leido_ADBF:
	defb 001h	; adbf

; ----------------------------------------------------------------------
; DATOS leido_ADC0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadc0..0xadc1  (1 bytes)
DATA_leido_ADC0:
	defb 0f8h	; adc0

; ----------------------------------------------------------------------
; DATOS leido_ADC1: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xadc1..0xadc2  (1 bytes)
DATA_leido_ADC1:
	defb 005h	; adc1

; ----------------------------------------------------------------------
; DATOS leido_ADC2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadc2..0xadc3  (1 bytes)
DATA_leido_ADC2:
	defb 0e9h	; adc2

; ----------------------------------------------------------------------
; DATOS leido_ADC3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xadc3..0xadc4  (1 bytes)
DATA_leido_ADC3:
	defb 002h	; adc3

; ----------------------------------------------------------------------
; DATOS leido_ADC4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadc4..0xadc5  (1 bytes)
DATA_leido_ADC4:
	defb 0eeh	; adc4

; ----------------------------------------------------------------------
; DATOS leido_ADC5: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xadc5..0xadc6  (1 bytes)
DATA_leido_ADC5:
	defb 001h	; adc5

; ----------------------------------------------------------------------
; DATOS leido_ADC6: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xadc6..0xadc8  (2 bytes)
DATA_leido_ADC6:
	defb 0c3h,0eah	; adc6

; ----------------------------------------------------------------------
; DATOS leido_ADC8: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xadc8..0xadc9  (1 bytes)
DATA_leido_ADC8:
	defb 00ah	; adc8

; ----------------------------------------------------------------------
; DATOS leido_ADC9: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xadc9..0xadd3  (10 bytes)
DATA_leido_ADC9:
	defb 0ech,0d3h,000h,010h,020h,030h,040h,050h,060h,0f9h	; adc9  .... 0@P`.

; ----------------------------------------------------------------------
; DATOS leido_ADD3: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xadd3..0xadd5  (2 bytes)
DATA_leido_ADD3:
	defb 0f7h,0adh	; add3

; ----------------------------------------------------------------------
; DATOS leido_ADD5: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xadd5..0xadd7  (2 bytes)
DATA_leido_ADD5:
	defb 0ffh,0feh	; add5

; ----------------------------------------------------------------------
; DATOS leido_ADD7: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xadd7..0xadd8  (1 bytes)
DATA_leido_ADD7:
	defb 001h	; add7

; ----------------------------------------------------------------------
; DATOS leido_ADD8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadd8..0xadd9  (1 bytes)
DATA_leido_ADD8:
	defb 0f8h	; add8

; ----------------------------------------------------------------------
; DATOS leido_ADD9: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xadd9..0xadda  (1 bytes)
DATA_leido_ADD9:
	defb 005h	; add9

; ----------------------------------------------------------------------
; DATOS leido_ADDA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadda..0xaddb  (1 bytes)
DATA_leido_ADDA:
	defb 0e9h	; adda

; ----------------------------------------------------------------------
; DATOS leido_ADDB: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaddb..0xaddc  (1 bytes)
DATA_leido_ADDB:
	defb 002h	; addb

; ----------------------------------------------------------------------
; DATOS leido_ADDC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaddc..0xaddd  (1 bytes)
DATA_leido_ADDC:
	defb 0eah	; addc

; ----------------------------------------------------------------------
; DATOS leido_ADDD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaddd..0xadde  (1 bytes)
DATA_leido_ADDD:
	defb 007h	; addd

; ----------------------------------------------------------------------
; DATOS leido_ADDE: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xadde..0xade1  (3 bytes)
DATA_leido_ADDE:
	defb 0ech,0d3h,0f9h	; adde

; ----------------------------------------------------------------------
; DATOS leido_ADE1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xade1..0xade3  (2 bytes)
DATA_leido_ADE1:
	defb 0f7h,0adh	; ade1

; ----------------------------------------------------------------------
; DATOS leido_ADE3: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xade3..0xade5  (2 bytes)
DATA_leido_ADE3:
	defb 0ffh,0feh	; ade3

; ----------------------------------------------------------------------
; DATOS leido_ADE5: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xade5..0xade6  (1 bytes)
DATA_leido_ADE5:
	defb 001h	; ade5

; ----------------------------------------------------------------------
; DATOS leido_ADE6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xade6..0xade7  (1 bytes)
DATA_leido_ADE6:
	defb 0f8h	; ade6

; ----------------------------------------------------------------------
; DATOS leido_ADE7: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xade7..0xade8  (1 bytes)
DATA_leido_ADE7:
	defb 005h	; ade7

; ----------------------------------------------------------------------
; DATOS leido_ADE8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xade8..0xade9  (1 bytes)
DATA_leido_ADE8:
	defb 0e9h	; ade8

; ----------------------------------------------------------------------
; DATOS leido_ADE9: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xade9..0xadea  (1 bytes)
DATA_leido_ADE9:
	defb 002h	; ade9

; ----------------------------------------------------------------------
; DATOS leido_ADEA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadea..0xadeb  (1 bytes)
DATA_leido_ADEA:
	defb 0f9h	; adea

; ----------------------------------------------------------------------
; DATOS leido_ADEB: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xadeb..0xaded  (2 bytes)
DATA_leido_ADEB:
	defb 040h,0aeh	; adeb

; ----------------------------------------------------------------------
; DATOS leido_ADED: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaded..0xadef  (2 bytes)
DATA_leido_ADED:
	defb 0ffh,0feh	; aded

; ----------------------------------------------------------------------
; DATOS leido_ADEF: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xadef..0xadf0  (1 bytes)
DATA_leido_ADEF:
	defb 001h	; adef

; ----------------------------------------------------------------------
; DATOS leido_ADF0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadf0..0xadf1  (1 bytes)
DATA_leido_ADF0:
	defb 0e9h	; adf0

; ----------------------------------------------------------------------
; DATOS leido_ADF1: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xadf1..0xadf2  (1 bytes)
DATA_leido_ADF1:
	defb 002h	; adf1

; ----------------------------------------------------------------------
; DATOS leido_ADF2: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xadf2..0xadf4  (2 bytes)
DATA_leido_ADF2:
	defb 0c3h,0f9h	; adf2

; ----------------------------------------------------------------------
; DATOS leido_ADF4: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xadf4..0xadf6  (2 bytes)
DATA_leido_ADF4:
	defb 040h,0aeh	; adf4

; ----------------------------------------------------------------------
; DATOS leido_ADF6: 46 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (46 bytes)
;   0xadf6..0xae24  (46 bytes)
DATA_leido_ADF6:
	defb 0ffh,070h,080h,090h,0a0h,0b0h,0d2h,000h,010h,020h,030h,040h,050h,060h,070h,080h	; adf6  .p....... 0@P`p.
	defb 090h,0a0h,0b0h,0d1h,000h,010h,020h,030h,040h,050h,060h,070h,080h,090h,0a0h,0b0h	; ae06  ...... 0@P`p....
	defb 0d0h,000h,010h,020h,030h,040h,050h,060h,070h,080h,090h,0a0h,0b0h,0eah	; ae16  ... 0@P`p.....

; ----------------------------------------------------------------------
; DATOS leido_AE24: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae24..0xae25  (1 bytes)
DATA_leido_AE24:
	defb 002h	; ae24

; ----------------------------------------------------------------------
; DATOS leido_AE25: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xae25..0xae32  (13 bytes)
DATA_leido_AE25:
	defb 000h,010h,020h,030h,040h,050h,060h,070h,080h,090h,0a0h,0b0h,0eah	; ae25  .. 0@P`p.....

; ----------------------------------------------------------------------
; DATOS leido_AE32: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae32..0xae33  (1 bytes)
DATA_leido_AE32:
	defb 001h	; ae32

; ----------------------------------------------------------------------
; DATOS leido_AE33: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xae33..0xae41  (14 bytes)
DATA_leido_AE33:
	defb 000h,010h,020h,030h,040h,050h,060h,070h,080h,090h,0a0h,0b0h,0fah,0eah	; ae33  .. 0@P`p......

; ----------------------------------------------------------------------
; DATOS leido_AE41: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae41..0xae42  (1 bytes)
DATA_leido_AE41:
	defb 007h	; ae41

; ----------------------------------------------------------------------
; DATOS leido_AE42: 50 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (50 bytes)
;   0xae42..0xae74  (50 bytes)
DATA_leido_AE42:
	defb 0ech,0d4h,040h,050h,060h,070h,080h,090h,0a0h,0b0h,0d3h,000h,010h,020h,030h,040h	; ae42  ..@P`p....... 0@
	defb 050h,060h,070h,080h,090h,0a0h,0b0h,0d2h,000h,010h,020h,030h,040h,050h,060h,070h	; ae52  P`p....... 0@P`p
	defb 080h,090h,0a0h,0b0h,0d1h,000h,010h,020h,030h,040h,050h,060h,070h,080h,090h,0a0h	; ae62  ....... 0@P`p...
	defb 0b0h,0eah	; ae72

; ----------------------------------------------------------------------
; DATOS leido_AE74: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae74..0xae75  (1 bytes)
DATA_leido_AE74:
	defb 002h	; ae74

; ----------------------------------------------------------------------
; DATOS leido_AE75: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xae75..0xae82  (13 bytes)
DATA_leido_AE75:
	defb 000h,010h,020h,030h,040h,050h,060h,070h,080h,090h,0a0h,0b0h,0eah	; ae75  .. 0@P`p.....

; ----------------------------------------------------------------------
; DATOS leido_AE82: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae82..0xae83  (1 bytes)
DATA_leido_AE82:
	defb 001h	; ae82

; ----------------------------------------------------------------------
; DATOS leido_AE83: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xae83..0xae90  (13 bytes)
DATA_leido_AE83:
	defb 000h,010h,020h,030h,040h,050h,060h,070h,080h,090h,0a0h,0b0h,0fah	; ae83  .. 0@P`p.....

; ----------------------------------------------------------------------
; DATOS resto_AE90: lo apuntan con el banco puesto p00:4247 (0xB000), p10:6320
;   (0xB111); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p00:4247, p10:6320 (4464 bytes)
;   0xae90..0xc000  (4464 bytes)
DATA_resto_AE90:
	defb 0ffh,0ffh,0feh,002h,0e1h,001h,0e4h,01fh,00ah,0e3h,002h,0e4h,000h,0a0h,010h,0e1h	; ae90  ................
	defb 002h,0e4h,01fh,00ah,0e3h,001h,0e4h,000h,0a0h,012h,0e1h,002h,0e4h,01ch,008h,000h	; aea0  ................
	defb 008h,0e3h,002h,0e4h,000h,080h,014h,0e1h,002h,0e4h,00ch,007h,000h,007h,0e3h,002h	; aeb0  ................
	defb 0e4h,000h,070h,016h,0e1h,002h,0e4h,01fh,006h,000h,006h,0e3h,001h,0e4h,000h,060h	; aec0  ..p............`
	defb 018h,0e1h,001h,0e4h,01fh,006h,0e3h,002h,0e4h,000h,060h,010h,0e1h,002h,0e4h,01fh	; aed0  ..........`.....
	defb 006h,0e3h,001h,0e4h,000h,060h,012h,0e1h,002h,0e4h,01ch,005h,000h,005h,0e3h,002h	; aee0  .....`..........
	defb 0e4h,000h,050h,014h,0e1h,002h,0e4h,00ch,004h,000h,004h,0e3h,002h,0e4h,000h,040h	; aef0  ..P............@
	defb 016h,0e1h,002h,0e4h,01fh,003h,000h,003h,0e3h,001h,0e4h,000h,030h,018h,0ffh,0feh	; af00  ............0...
	defb 002h,0e3h,001h,080h,010h,0e2h,002h,030h,010h,0e3h,002h,080h,010h,0e2h,001h,030h	; af10  .......0.......0
	defb 012h,0e3h,002h,080h,010h,0e2h,002h,030h,014h,0e3h,002h,080h,010h,0e2h,002h,030h	; af20  .......0.......0
	defb 016h,0e3h,002h,080h,010h,0e2h,001h,030h,018h,0ffh,0feh,002h,0e3h,001h,080h,008h	; af30  .......0........
	defb 0e2h,002h,030h,008h,0e3h,002h,080h,008h,0e2h,001h,030h,00ch,0e3h,002h,080h,008h	; af40  ..0.......0.....
	defb 0e2h,002h,030h,00eh,0e3h,002h,080h,008h,0e2h,002h,030h,00fh,0e3h,002h,080h,008h	; af50  ..0.......0.....
	defb 0e2h,001h,030h,010h,0ffh,0feh,002h,0f8h,028h,0e2h,001h,0a0h,080h,0a1h,000h,0a1h	; af60  ..0.....(.......
	defb 080h,082h,000h,082h,080h,083h,000h,083h,080h,084h,000h,084h,080h,085h,000h,086h	; af70  ................
	defb 000h,0fbh,002h,06bh,0afh,0f9h,01ch,0b0h,0f7h,002h,0f9h,01ch,0b0h,0f7h,004h,0f9h	; af80  ...k............
	defb 01ch,0b0h,0ffh,0feh,002h,0f8h,028h,0e2h,001h,0a0h,060h,0a1h,080h,0a2h,000h,0a2h	; af90  ......(...`.....
	defb 080h,083h,000h,083h,080h,084h,000h,084h,080h,085h,000h,085h,080h,086h,000h,086h	; afa0  ................
	defb 080h,0fbh,002h,09bh,0afh,0f9h,033h,0b0h,0f7h,002h,0f9h,033h,0b0h,0f7h,004h,0f9h	; afb0  ......3....3....
	defb 033h,0b0h,0ffh,0feh,002h,0f8h,028h,0e2h,001h,0a0h,040h,0a1h,000h,0a2h,000h,0a3h	; afc0  3.....(...@.....
	defb 000h,0a4h,000h,0a5h,000h,0a6h,000h,0a7h,000h,0a8h,000h,0a9h,000h,0aah,000h,0abh	; afd0  ................
	defb 000h,0fbh,002h,0cbh,0afh,0f9h,04ch,0b0h,0f7h,002h,0f9h,04ch,0b0h,0f7h,004h,0f9h	; afe0  ......L....L....
	defb 04ch,0b0h,0ffh,0feh,002h,0f8h,027h,0e2h,001h,0a0h,040h,0feh,002h,0f8h,027h,0e2h	; aff0  L.....'...@...'.
	defb 001h,0a1h,000h,0a2h,000h,0a3h,000h,0a4h,000h,0a5h,000h,0a6h,000h,0a7h,000h,0a8h	; b000  ................
	defb 000h,0a9h,000h,0aah,000h,0abh,000h,0fbh,002h,001h,0b0h,0ffh,043h,080h,041h,000h	; b010  ............C.A.
	defb 041h,080h,042h,000h,042h,080h,043h,000h,043h,080h,044h,000h,044h,080h,045h,000h	; b020  A.B.B.C.C.D.D.E.
	defb 046h,000h,0fah,044h,060h,041h,080h,042h,000h,042h,080h,043h,000h,043h,080h,044h	; b030  F..D`A.B.B.C.C.D
	defb 000h,044h,080h,045h,000h,045h,080h,046h,000h,046h,080h,0fah,041h,000h,042h,000h	; b040  .D.E.E.F.F..A.B.
	defb 043h,000h,044h,000h,045h,000h,046h,000h,047h,000h,048h,000h,049h,000h,04ah,000h	; b050  C.D.E.F.G.H.I.J.
	defb 04bh,000h,0fah,0feh,002h,0e2h,004h,020h,043h,010h,043h,0fbh,002h,067h,0b0h,0e0h	; b060  K...... C.C..g..
	defb 003h,0fdh,065h,0b0h,0feh,002h,0e2h,003h,030h,030h,000h,043h,0e0h,002h,0fbh,003h	; b070  ..e.....00.C....
	defb 076h,0b0h,0e2h,007h,030h,030h,0fdh,076h,0b0h,0feh,002h,0e2h,006h,040h,010h,010h	; b080  v...00.v.....@..
	defb 013h,0fbh,002h,08dh,0b0h,0e0h,003h,0fdh,08bh,0b0h,0feh,002h,0f8h,009h,0f9h,0e6h	; b090  ................
	defb 0b0h,0fdh,09eh,0b0h,0feh,002h,0f8h,009h,0e0h,001h,0eeh,001h,0f9h,0e6h,0b0h,0fdh	; b0a0  ................
	defb 0ach,0b0h,0feh,002h,0f8h,009h,0e0h,002h,0eeh,002h,0f9h,0e6h,0b0h,0fdh,0bah,0b0h	; b0b0  ................
	defb 0feh,002h,0f8h,015h,0e2h,003h,000h,020h,000h,000h,0fbh,006h,0c6h,0b0h,0e0h,006h	; b0c0  ....... ........
	defb 0fdh,0c4h,0b0h,0feh,002h,0f8h,015h,0e2h,003h,000h,033h,000h,000h,0fbh,006h,0d9h	; b0d0  ..........3.....
	defb 0b0h,0e0h,006h,0fdh,0d7h,0b0h,0e2h,001h,012h,0d7h,022h,0b7h,032h,097h,042h,077h	; b0e0  ..........".2.Bw
	defb 052h,057h,062h,037h,072h,017h,081h,0f7h,091h,0d7h,0a1h,0b7h,0b1h,097h,0c1h,077h	; b0f0  RWb7r..........w
	defb 0c1h,057h,0c1h,047h,0c1h,03fh,0c1h,03bh,0c1h,037h,0e2h,00dh,0c1h,03ah,091h,037h	; b100  .W.G.?...7...:.7
	defb 0fah,002h,019h,002h,001h,001h,001h,0fdh,001h,0feh,0ffh,0ffh,0ffh,001h,000h,001h	; b110  ................
	defb 000h,001h,001h,000h,001h,001h,000h,000h,000h,002h,0feh,002h,0feh,0f9h,001h,0ffh	; b120  ................
	defb 001h,0ffh,001h,001h,017h,006h,001h,000h,001h,000h,000h,001h,001h,0feh,000h,002h	; b130  ................
	defb 0ffh,0fch,0fdh,001h,0fdh,0ffh,001h,0f7h,003h,000h,0fdh,001h,000h,002h,001h,0ffh	; b140  ................
	defb 003h,000h,001h,002h,0ffh,000h,0f6h,005h,002h,000h,0ffh,002h,001h,0fdh,003h,000h	; b150  ................
	defb 0fdh,004h,0ffh,0fch,007h,0fdh,0fah,004h,0feh,0fbh,0ffh,0ffh,0feh,0fch,002h,001h	; b160  ................
	defb 0feh,002h,001h,000h,004h,002h,001h,000h,0dfh,005h,003h,002h,006h,002h,0fch,000h	; b170  ................
	defb 002h,001h,001h,000h,000h,0feh,0fbh,0fbh,0ffh,005h,0fbh,0f7h,001h,0feh,0f9h,0fdh	; b180  ................
	defb 0ffh,0feh,0fdh,0feh,003h,003h,001h,000h,001h,000h,0f6h,008h,005h,003h,002h,001h	; b190  ................
	defb 001h,003h,006h,0ffh,0fah,00ch,001h,0fbh,00ch,0f7h,0f7h,018h,0fch,0f6h,002h,0fah	; b1a0  ................
	defb 0fbh,002h,002h,0fah,0f7h,006h,003h,0ffh,001h,0ffh,001h,000h,0dfh,00ah,004h,0ffh	; b1b0  ................
	defb 0fdh,004h,00ah,0fbh,0fah,004h,0fdh,0f8h,0fah,000h,003h,0f6h,0f8h,006h,001h,0feh	; b1c0  ................
	defb 0fch,001h,007h,000h,000h,005h,002h,0ffh,0ffh,004h,009h,0fch,0feh,000h,016h,007h	; b1d0  ................
	defb 006h,005h,004h,003h,002h,001h,000h,0ffh,0feh,0fdh,0fch,0fbh,0fah,0f9h,0f8h,0f7h	; b1e0  ................
	defb 0f8h,0fah,0fch,0fdh,0ffh,001h,002h,004h,006h,007h,009h,00bh,00ch,00eh,010h,000h	; b1f0  ................
	defb 0eah,017h,001h,0f9h,005h,0fch,0fdh,00eh,0fdh,0f8h,012h,0f0h,0e9h,033h,0feh,0d5h	; b200  .............3..
	defb 018h,005h,0e8h,008h,003h,0f3h,0f4h,002h,011h,002h,0fch,0fch,002h,007h,00bh,001h	; b210  ................
	defb 0fch,000h,0a7h,006h,006h,005h,006h,00ah,007h,002h,0f2h,0dbh,0ech,02dh,03dh,0e6h	; b220  .............-=.
	defb 0ach,0ebh,026h,008h,0eah,0f9h,00ch,003h,0f2h,0efh,0f3h,0fbh,006h,00dh,00fh,00dh	; b230  ..&.............
	defb 0fch,0efh,005h,000h,0d4h,027h,01ch,015h,01dh,014h,0feh,015h,029h,027h,00ch,0deh	; b240  .....'......)'..
	defb 0eeh,001h,005h,0fdh,0e9h,00ch,025h,0c1h,0cah,04eh,023h,0d1h,0cfh,0d6h,0edh,00ah	; b250  ......%..N#.....
	defb 027h,005h,0eeh,0ebh,003h,000h,0c9h,00eh,02eh,049h,04dh,039h,006h,0f4h,0f3h,01ch	; b260  '........IM9....
	defb 042h,01dh,0f6h,0cch,0ceh,0f4h,0ffh,002h,0cbh,0a0h,0a0h,0c2h,00eh,025h,020h,0d6h	; b270  B............% .
	defb 098h,004h,050h,05eh,039h,0e8h,0f4h,001h,066h,07fh,0d2h,07fh,07fh,00bh,0e2h,003h	; b280  ..P^9...f.......
	defb 035h,01ah,0ech,0bah,074h,0c7h,0c1h,023h,0ebh,08ch,00fh,07fh,062h,041h,069h,0ech	; b290  5...t..#....bAi.
	defb 0e6h,025h,01dh,02bh,09ch,02ch,046h,090h,007h,001h,066h,0cdh,022h,0f4h,01fh,020h	; b2a0  .%.+.,F...f."..
	defb 0cbh,0f2h,058h,09bh,0ebh,003h,09dh,0fah,07fh,07fh,073h,04bh,0bdh,030h,0f9h,003h	; b2b0  ..X.......sK.0..
	defb 035h,0cbh,0f1h,04eh,0ach,0e2h,0f5h,0a7h,01ch,05ah,07fh,000h,0b3h,00bh,012h,01ah	; b2c0  5..N.....Z......
	defb 0f8h,0d6h,0c7h,0b8h,0dbh,0ffh,004h,009h,0dah,0aah,0bfh,0d5h,0efh,00ah,0ffh,0f3h	; b2d0  ................
	defb 01bh,044h,02eh,018h,008h,0f7h,02dh,064h,044h,023h,008h,0edh,0f0h,000h,0b3h,002h	; b2e0  .D....-dD#......
	defb 015h,029h,01fh,015h,016h,018h,010h,008h,012h,01ch,015h,00dh,0f5h,0dch,0e4h,0edh	; b2f0  .)..............
	defb 0fdh,00dh,0f4h,0dah,0ddh,0e1h,0efh,0feh,000h,002h,001h,0ffh,0f1h,0e2h,0f6h,000h	; b300  ................
	defb 07bh,0fbh,0ffh,003h,008h,004h,0ffh,0fbh,0fch,0fdh,0feh,0feh,0feh,0ffh,0fch,0fah	; b310  {...............
	defb 0f8h,0f8h,0f8h,0f7h,0f6h,0f6h,0f6h,0f8h,0fbh,0fch,0fdh,0fdh,0feh,0feh,0feh,003h	; b320  ................
	defb 00ah,000h,0a7h,006h,007h,008h,002h,0fah,0f8h,0f9h,0fdh,002h,004h,002h,0ffh,0fbh	; b330  ................
	defb 0f7h,0fch,001h,001h,001h,0ffh,0fdh,0feh,001h,000h,0fbh,0fbh,001h,005h,005h,004h	; b340  ................
	defb 001h,0fdh,0ffh,000h,086h,005h,005h,004h,003h,002h,001h,000h,001h,002h,0ffh,0fch	; b350  ................
	defb 0fbh,0feh,001h,003h,002h,000h,0fch,0f8h,0f6h,0f9h,0fch,0feh,001h,004h,001h,0feh	; b360  ................
	defb 0fbh,0fch,0fch,0feh,000h,000h,06fh,002h,002h,001h,000h,0ffh,0ffh,0ffh,000h,0feh	; b370  ......o.........
	defb 0fdh,0fch,0fch,0fdh,0feh,0feh,0fdh,0fch,0fch,0fch,0fch,0fdh,0feh,0feh,0ffh,0ffh	; b380  ................
	defb 0ffh,0feh,0feh,0feh,0ffh,0ffh,000h,001h,07ch,004h,003h,0feh,001h,001h,000h,0fdh	; b390  ........|.......
	defb 000h,0ffh,0fch,000h,000h,001h,001h,000h,001h,001h,000h,000h,001h,0ffh,001h,0feh	; b3a0  ................
	defb 000h,0ffh,0fdh,002h,000h,0fch,000h,002h,0feh,001h,066h,001h,000h,0ffh,002h,001h	; b3b0  ..........f.....
	defb 0ffh,000h,000h,001h,0ffh,000h,0ffh,000h,002h,0ffh,000h,002h,0ffh,000h,0ffh,001h	; b3c0  ................
	defb 000h,0fdh,001h,000h,0ffh,0ffh,0ffh,002h,0feh,000h,004h,002h,019h,000h,000h,001h	; b3d0  ................
	defb 0ffh,002h,0ffh,001h,000h,001h,001h,0feh,001h,000h,0ffh,003h,0ffh,001h,000h,000h	; b3e0  ................
	defb 000h,0ffh,0ffh,003h,0ffh,002h,000h,001h,0ffh,0ffh,0feh,000h,000h,001h,066h,0ffh	; b3f0  ..............f.
	defb 001h,001h,0ffh,0feh,002h,000h,0feh,0ffh,002h,000h,0feh,001h,001h,000h,0feh,001h	; b400  ................
	defb 001h,0ffh,0ffh,002h,0feh,001h,0ffh,000h,000h,000h,000h,000h,000h,000h,000h,001h	; b410  ................
	defb 066h,000h,001h,001h,0ffh,001h,001h,000h,0ffh,002h,000h,0feh,001h,000h,0ffh,002h	; b420  f...............
	defb 0ffh,001h,001h,000h,0ffh,000h,001h,000h,0ffh,001h,000h,000h,0ffh,000h,001h,0ffh	; b430  ................
	defb 000h,001h,066h,001h,0ffh,000h,000h,000h,000h,001h,000h,001h,001h,000h,001h,000h	; b440  ..f.............
	defb 000h,001h,0ffh,0ffh,000h,000h,0feh,0ffh,002h,000h,0feh,002h,001h,000h,002h,000h	; b450  ................
	defb 000h,001h,0ffh,001h,066h,001h,0ffh,000h,0ffh,000h,0ffh,0feh,001h,0ffh,0ffh,001h	; b460  ....f...........
	defb 000h,000h,000h,000h,000h,000h,0ffh,001h,000h,0ffh,001h,0ffh,0ffh,000h,000h,000h	; b470  ................
	defb 0ffh,001h,001h,000h,000h,001h,066h,0ffh,001h,000h,000h,000h,000h,000h,000h,0ffh	; b480  ......f.........
	defb 000h,000h,0ffh,0ffh,001h,0ffh,0ffh,001h,000h,0ffh,000h,001h,000h,0ffh,002h,000h	; b490  ................
	defb 000h,001h,000h,000h,000h,000h,000h,000h,0c9h,000h,001h,002h,002h,001h,001h,002h	; b4a0  ................
	defb 003h,003h,002h,002h,001h,001h,002h,001h,000h,0feh,0feh,0feh,0feh,0feh,0fdh,0fch	; b4b0  ................
	defb 0fch,0fch,0fbh,0fbh,0fbh,0fdh,0feh,0feh,0ffh,000h,0eah,023h,027h,014h,0e6h,0eeh	; b4c0  ...........#'...
	defb 0ffh,016h,00bh,000h,0feh,0f5h,0f3h,005h,009h,003h,0e9h,0e7h,0efh,0fah,0f3h,0e7h	; b4d0  ................
	defb 0edh,002h,01bh,01dh,008h,0e9h,005h,01eh,032h,004h,0f0h,000h,0c9h,037h,039h,02fh	; b4e0  ........2....79/
	defb 0f5h,0dah,0e9h,0fdh,013h,016h,014h,0f9h,0e5h,0dfh,0f4h,01fh,01ch,00bh,0edh,0d9h	; b4f0  ................
	defb 0ech,0fch,007h,0f6h,0d6h,0dbh,0e8h,011h,02ch,02ch,010h,0ddh,0ebh,000h,0eah,078h	; b500  ........,,.....x
	defb 041h,005h,0c6h,0edh,00bh,013h,014h,00ch,0f3h,0ddh,0e5h,02dh,01ah,0f4h,0d5h,0e5h	; b510  A..........-....
	defb 0fbh,0eeh,0d7h,0c9h,0f9h,02fh,051h,0efh,0d3h,0ebh,052h,04eh,0f9h,0d9h,0e5h,000h	; b520  ...../Q...RN....
	defb 0beh,068h,065h,057h,0feh,0c0h,0e0h,001h,024h,028h,006h,0f2h,0e6h,0eah,0f6h,0f8h	; b530  .heW....$(......
	defb 0f7h,00ah,01ch,0eah,0c2h,0cdh,0deh,0fbh,0fch,0d2h,0e4h,02eh,045h,03fh,0f6h,098h	; b540  ............E?..
	defb 0fdh,000h,0b3h,048h,054h,060h,015h,0c9h,0d2h,0dbh,0fah,019h,007h,0f4h,0d1h,0aeh	; b550  ...HT`..........
	defb 0d1h,0f4h,0feh,008h,0f3h,0ddh,0dfh,0e1h,0eah,0f3h,0feh,009h,016h,023h,03ch,055h	; b560  .............#<U
	defb 01ah,0dfh,0fdh,000h,0b3h,00bh,00bh,00ah,00dh,010h,02fh,04fh,03dh,02ah,017h,003h	; b570  ........../O=*..
	defb 01ah,032h,01ch,006h,0f1h,0dch,0e1h,0e7h,0e0h,0d8h,0d8h,0d7h,0ddh,0e4h,0e4h,0e5h	; b580  .2..............
	defb 0eeh,0f7h,0f9h,0fbh,001h,000h,0b3h,00ch,00ah,007h,007h,007h,00ch,012h,010h,00eh	; b590  ................
	defb 00ch,009h,007h,004h,005h,006h,0ffh,0f8h,0f4h,0f0h,0f4h,0f8h,0f3h,0eeh,0eeh,0efh	; b5a0  ................
	defb 0f5h,0fch,0f9h,0f6h,0fah,0ffh,001h,002h,019h,007h,004h,002h,003h,0fdh,0ffh,002h	; b5b0  ................
	defb 0ffh,003h,0ffh,0f8h,002h,0ffh,004h,003h,0feh,000h,0feh,000h,001h,001h,000h,0fdh	; b5c0  ................
	defb 000h,0fch,003h,0ffh,0ffh,000h,0fch,003h,000h,000h,0beh,003h,003h,004h,003h,001h	; b5d0  ................
	defb 000h,0ffh,0ffh,000h,000h,000h,0feh,0feh,000h,001h,001h,0feh,0fch,0fdh,0ffh,0ffh	; b5e0  ................
	defb 000h,000h,0ffh,0feh,0feh,001h,002h,001h,0ffh,0feh,000h,000h,0beh,002h,002h,002h	; b5f0  ................
	defb 002h,002h,003h,004h,002h,000h,000h,000h,002h,002h,001h,0feh,0fch,0fdh,000h,000h	; b600  ................
	defb 0ffh,0feh,0fdh,0fch,0fch,0feh,001h,003h,003h,001h,000h,000h,000h,000h,09ch,004h	; b610  ................
	defb 004h,003h,002h,001h,000h,000h,001h,001h,001h,002h,001h,000h,0feh,0fdh,0feh,0ffh	; b620  ................
	defb 0ffh,000h,000h,0feh,0fdh,0feh,0ffh,000h,001h,001h,0feh,0fdh,0fdh,0feh,000h,000h	; b630  ................
	defb 0b3h,002h,002h,001h,001h,000h,000h,001h,001h,001h,002h,004h,002h,0ffh,0ffh,000h	; b640  ................
	defb 000h,001h,0ffh,0fdh,0feh,0ffh,0ffh,000h,0ffh,0fdh,0feh,0ffh,000h,001h,000h,0feh	; b650  ................
	defb 0ffh,000h,064h,000h,000h,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h	; b660  ..d.............
	defb 0ffh,0ffh,0feh,0feh,0feh,0feh,0ffh,0ffh,000h,001h,001h,001h,001h,001h,000h,000h	; b670  ................
	defb 0ffh,0ffh,000h,001h,066h,002h,003h,0ffh,0feh,001h,0ffh,0ffh,0feh,000h,000h,0ffh	; b680  ....f...........
	defb 000h,000h,001h,002h,000h,002h,001h,000h,000h,000h,0ffh,0ffh,000h,0feh,0feh,002h	; b690  ................
	defb 0ffh,0fdh,001h,003h,0feh,001h,066h,001h,000h,000h,000h,000h,000h,0ffh,000h,001h	; b6a0  ......f.........
	defb 0ffh,0ffh,001h,000h,0ffh,000h,001h,000h,000h,001h,000h,000h,000h,001h,000h,000h	; b6b0  ................
	defb 000h,0ffh,000h,000h,001h,0ffh,000h,001h,066h,0ffh,001h,001h,000h,001h,000h,0ffh	; b6c0  ........f.......
	defb 001h,000h,0ffh,000h,000h,000h,0ffh,0ffh,001h,0ffh,000h,001h,000h,000h,001h,000h	; b6d0  ................
	defb 000h,000h,000h,000h,0ffh,001h,000h,0feh,000h,001h,066h,000h,000h,000h,001h,000h	; b6e0  ..........f.....
	defb 0ffh,000h,0ffh,000h,000h,0ffh,000h,000h,0ffh,0ffh,000h,000h,000h,000h,000h,001h	; b6f0  ................
	defb 0ffh,000h,000h,0ffh,000h,000h,000h,000h,000h,000h,000h,000h,0c9h,000h,000h,001h	; b700  ................
	defb 002h,003h,003h,003h,003h,004h,005h,004h,003h,003h,002h,002h,001h,000h,0ffh,0fdh	; b710  ................
	defb 0fdh,0fch,0fch,0fbh,0fah,0f9h,0f8h,0f8h,0f9h,0fch,0fdh,0fdh,0feh,000h,0beh,00fh	; b720  ................
	defb 00fh,00fh,002h,0f9h,0ffh,003h,001h,0feh,0f8h,0f8h,0fdh,0ffh,0ffh,0f8h,0eeh,0efh	; b730  ................
	defb 0f2h,0f3h,0f5h,0f8h,0fch,0ffh,001h,0fdh,000h,00ah,014h,01fh,00fh,0f5h,0feh,000h	; b740  ................
	defb 0d4h,0dch,0fdh,015h,018h,00ah,0f0h,0efh,0f3h,002h,010h,01eh,009h,0f2h,0e9h,0f2h	; b750  ................
	defb 00dh,001h,0efh,0e4h,0e6h,0f8h,0f9h,0f9h,027h,02ah,0efh,0e0h,0e5h,028h,040h,00dh	; b760  ........'*...(@.
	defb 0edh,000h,0eah,04fh,03ah,012h,0d5h,0e2h,0fah,019h,014h,0feh,0d4h,0f0h,00eh,017h	; b770  ...O:...........
	defb 007h,0f7h,0f7h,0f5h,0f1h,0f5h,0e5h,0d6h,0f3h,0feh,007h,031h,01ah,0e1h,0e8h,018h	; b780  ...........1....
	defb 062h,01dh,0eeh,000h,0eah,07fh,040h,001h,0c1h,0e8h,00ah,01ah,018h,008h,0e6h,0d5h	; b790  b.....@.........
	defb 0e3h,02bh,021h,0fch,0cbh,0d7h,0f1h,0f8h,0d8h,0bch,0fbh,035h,059h,001h,0d7h,0d6h	; b7a0  .+!........5Y...
	defb 04ch,057h,010h,0d9h,0d7h,000h,0b3h,038h,00ah,0dch,0f7h,012h,0ebh,0c4h,0e1h,0ffh	; b7b0  LW.....8........
	defb 015h,02bh,0f1h,0b7h,0beh,0c6h,0eeh,016h,0e3h,0afh,0edh,02bh,054h,07eh,005h,08ch	; b7c0  .+.........+T~..
	defb 0e5h,03eh,05eh,07fh,02ah,0d5h,0dch,000h,0a7h,0d5h,0f5h,015h,010h,003h,0f9h,0f0h	; b7d0  .>^.*...........
	defb 0ech,0ebh,0e9h,0e6h,0e8h,0f8h,003h,0f7h,0eah,0dbh,0cch,0e0h,0f8h,0f7h,0eeh,0efh	; b7e0  ................
	defb 0f6h,011h,03dh,045h,015h,0f2h,0f5h,0ffh,030h,000h,0d4h,005h,004h,006h,011h,016h	; b7f0  ..=E....0.......
	defb 018h,018h,017h,01ah,017h,010h,00bh,006h,009h,006h,0fbh,0efh,0e6h,0edh,0f3h,0f8h	; b800  ................
	defb 0eeh,0e1h,0e6h,0eeh,0f9h,0fbh,0f8h,0f8h,0f7h,0f9h,001h,000h,0eah,004h,005h,006h	; b810  ................
	defb 003h,002h,003h,008h,009h,006h,0feh,0feh,001h,003h,001h,0fdh,0f9h,0fah,0fdh,0fdh	; b820  ................
	defb 0fbh,0f7h,0fch,000h,004h,0fdh,0fch,000h,002h,003h,002h,000h,000h,000h,0beh,006h	; b830  ................
	defb 004h,002h,001h,001h,005h,008h,005h,003h,001h,000h,001h,002h,002h,0ffh,0fdh,0fch	; b840  ................
	defb 0fch,0fdh,0ffh,0ffh,0feh,0fch,0fah,0fch,0fdh,0ffh,000h,000h,0ffh,0feh,0feh,000h	; b850  ................
	defb 0c9h,003h,003h,003h,002h,001h,002h,003h,003h,002h,001h,001h,000h,001h,002h,001h	; b860  ................
	defb 000h,0feh,0ffh,000h,0ffh,0feh,0feh,0ffh,0feh,0fdh,0fch,0ffh,001h,001h,0ffh,0fdh	; b870  ................
	defb 0feh,000h,0beh,004h,002h,000h,000h,0ffh,000h,002h,002h,000h,0feh,0fdh,0feh,0ffh	; b880  ................
	defb 000h,0ffh,0fdh,0fch,0fch,0feh,000h,000h,001h,0ffh,0fdh,0feh,000h,003h,004h,003h	; b890  ................
	defb 001h,000h,000h,002h,00dh,000h,001h,000h,0ffh,0ffh,001h,0feh,002h,000h,000h,000h	; b8a0  ................
	defb 002h,0ffh,002h,000h,0feh,000h,0ffh,000h,000h,000h,001h,0ffh,001h,000h,000h,000h	; b8b0  ................
	defb 0fdh,001h,0fdh,002h,000h,000h,091h,0ffh,000h,002h,003h,001h,0ffh,0ffh,0ffh,0ffh	; b8c0  ................
	defb 0ffh,000h,000h,000h,0ffh,0ffh,000h,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h	; b8d0  ................
	defb 000h,000h,000h,000h,000h,0ffh,000h,000h,059h,002h,002h,001h,001h,000h,000h,0ffh	; b8e0  ........Y.......
	defb 0ffh,0feh,0feh,0ffh,0ffh,000h,000h,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; b8f0  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0ffh,0ffh,002h,0cch,000h,001h,000h,000h,0ffh	; b900  ................
	defb 001h,0feh,001h,0ffh,000h,000h,000h,001h,0feh,001h,0ffh,001h,0ffh,001h,000h,000h	; b910  ................
	defb 000h,000h,000h,0ffh,000h,000h,000h,000h,000h,0ffh,0ffh,001h,066h,000h,000h,000h	; b920  ............f...
	defb 000h,000h,000h,000h,0ffh,000h,000h,0ffh,000h,000h,000h,001h,000h,0ffh,001h,001h	; b930  ................
	defb 000h,000h,000h,001h,0ffh,0ffh,000h,001h,0ffh,0ffh,001h,000h,0ffh,000h,0d4h,000h	; b940  ................
	defb 000h,001h,001h,000h,001h,002h,002h,002h,001h,001h,002h,002h,001h,000h,000h,001h	; b950  ................
	defb 000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0feh,0feh,0feh,0feh,0feh,0ffh,000h	; b960  ................
	defb 0beh,012h,00eh,008h,0ffh,0f7h,0fah,0fdh,0fdh,0fdh,0fbh,0f9h,0f9h,0f6h,0f0h,0efh	; b970  ................
	defb 0efh,0f5h,0fah,0fah,0fbh,0fdh,0ffh,002h,004h,004h,00ah,013h,017h,016h,00ah,0fah	; b980  ................
	defb 001h,000h,0f6h,02eh,019h,001h,0e9h,0f2h,004h,015h,005h,0f7h,0f1h,0fch,008h,00eh	; b990  ................
	defb 006h,0f8h,0f2h,0fbh,0feh,0fah,0efh,0f5h,0f5h,0f4h,0ffh,018h,022h,0f2h,0eah,000h	; b9a0  ............"...
	defb 037h,015h,0f5h,000h,0f6h,056h,027h,0f6h,0cbh,0f7h,017h,025h,0fah,0f2h,0f6h,0f5h	; b9b0  7....V'....%....
	defb 00dh,01dh,00eh,0eeh,0e7h,002h,00dh,0fah,0d1h,0e5h,0f1h,0f8h,001h,023h,02ah,0cbh	; b9c0  .............#*.
	defb 0e4h,01ah,051h,012h,0e0h,000h,0d4h,0c9h,0fch,021h,026h,00ah,0dah,0efh,001h,0f9h	; b9d0  ..Q......!&.....
	defb 003h,01bh,012h,001h,0e1h,0e2h,004h,003h,0f6h,0d6h,0d3h,0f3h,0fbh,003h,03ch,037h	; b9e0  ..............<7
	defb 0dch,0d1h,0e7h,043h,05fh,00bh,0dfh,000h,0d4h,016h,047h,053h,00dh,0e1h,0c6h,0f1h	; b9f0  ...C_.....GS....
	defb 01ah,030h,019h,0e1h,0cch,0cah,007h,022h,01eh,0fdh,0dch,0d8h,0e5h,007h,0f7h,0dch	; ba00  .0....."........
	defb 0d3h,0dfh,00ch,02ah,041h,01eh,0fch,0d9h,00ch,000h,0c9h,0e2h,000h,016h,009h,003h	; ba10  ...*A...........
	defb 008h,0efh,0c5h,0d7h,0f2h,012h,01ch,0f5h,0dah,0c6h,0dbh,0fdh,0eeh,0e0h,0d7h,0edh	; ba20  ................
	defb 029h,043h,04bh,00bh,0ceh,0ffh,02fh,05ch,049h,001h,0ebh,000h,0c9h,020h,032h,03ah	; ba30  )CK.../\I.... 2:
	defb 017h,0fbh,0e7h,0ech,0ffh,006h,009h,0fdh,0edh,0d6h,0d8h,0efh,0feh,00ch,0f2h,0ddh	; ba40  ................
	defb 0dah,0e3h,0fch,0ffh,0f5h,0eeh,0ech,00ch,029h,03fh,02eh,0fch,0fdh,000h,0a7h,00eh	; ba50  ........)?......
	defb 013h,019h,009h,0f5h,0efh,0efh,0f3h,0f9h,0fbh,0f9h,0f6h,0f1h,0edh,0f1h,0f5h,0f8h	; ba60  ................
	defb 0fbh,0feh,001h,0feh,0f8h,0f5h,0f6h,0f9h,0feh,001h,001h,000h,0ffh,0feh,002h,000h	; ba70  ................
	defb 0f6h,000h,006h,007h,000h,0fdh,0feh,003h,003h,002h,001h,001h,001h,002h,002h,0ffh	; ba80  ................
	defb 0fch,0fch,0fch,0fdh,0ffh,0fbh,0f9h,0fbh,000h,000h,0feh,0fch,001h,005h,002h,0feh	; ba90  ................
	defb 0feh,001h,00ch,005h,005h,002h,0feh,001h,001h,0ffh,0fch,0fdh,0fdh,0fdh,0fdh,002h	; baa0  ................
	defb 002h,0ffh,0feh,001h,001h,000h,0fdh,000h,000h,000h,0ffh,0ffh,0ffh,000h,001h,001h	; bab0  ................
	defb 002h,001h,0ffh,000h,0c9h,003h,002h,000h,000h,001h,001h,001h,001h,000h,0ffh,0ffh	; bac0  ................
	defb 000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0feh,0ffh,000h,001h,000h,0ffh,0feh,000h	; bad0  ................
	defb 002h,002h,002h,0feh,0feh,001h,066h,0fch,000h,005h,0ffh,0feh,002h,001h,0ffh,0feh	; bae0  ......f.........
	defb 001h,002h,000h,0fdh,001h,001h,0fch,000h,004h,000h,0fdh,003h,001h,0feh,001h,002h	; baf0  ................
	defb 0ffh,000h,000h,000h,000h,000h,001h,000h,0c9h,002h,002h,002h,001h,000h,000h,001h	; bb00  ................
	defb 001h,002h,002h,000h,0feh,0feh,0ffh,0ffh,000h,0ffh,0feh,0fdh,0fdh,0feh,000h,000h	; bb10  ................
	defb 0ffh,0feh,0feh,0ffh,001h,001h,001h,0ffh,0ffh,002h,0cch,000h,000h,003h,001h,002h	; bb20  ................
	defb 001h,0fdh,0ffh,0fdh,000h,0ffh,003h,001h,003h,000h,0ffh,0ffh,0fdh,000h,0ffh,003h	; bb30  ................
	defb 001h,002h,001h,000h,0feh,0feh,0feh,0feh,002h,000h,002h,001h,066h,001h,000h,0ffh	; bb40  ............f...
	defb 0ffh,000h,001h,0ffh,000h,001h,0ffh,000h,002h,000h,000h,001h,001h,0ffh,0feh,001h	; bb50  ................
	defb 0ffh,0feh,0ffh,0ffh,000h,0ffh,000h,001h,000h,0ffh,002h,001h,0ffh,001h,066h,001h	; bb60  ..............f.
	defb 0ffh,000h,001h,0ffh,0ffh,000h,000h,000h,000h,001h,000h,000h,000h,002h,000h,0ffh	; bb70  ................
	defb 001h,001h,0ffh,0feh,001h,0ffh,0ffh,000h,000h,001h,0ffh,000h,001h,000h,000h,001h	; bb80  ................
	defb 066h,000h,000h,0ffh,001h,000h,0ffh,0ffh,000h,0ffh,0ffh,000h,000h,000h,000h,001h	; bb90  f...............
	defb 000h,000h,001h,001h,000h,000h,0ffh,001h,000h,0ffh,000h,000h,000h,0ffh,000h,000h	; bba0  ................
	defb 0ffh,001h,066h,000h,000h,000h,000h,001h,000h,001h,001h,000h,001h,000h,000h,000h	; bbb0  ..f.............
	defb 000h,0ffh,0ffh,0ffh,0ffh,000h,000h,000h,000h,000h,000h,000h,001h,000h,000h,001h	; bbc0  ................
	defb 000h,000h,000h,000h,0d4h,000h,001h,002h,002h,002h,002h,003h,003h,003h,003h,003h	; bbd0  ................
	defb 003h,003h,002h,001h,001h,000h,000h,0ffh,0feh,0fdh,0fch,0fdh,0fdh,0fch,0fbh,0fah	; bbe0  ................
	defb 0fbh,0fbh,0fbh,0feh,0ffh,000h,0d4h,015h,004h,0f7h,0f4h,0fah,008h,006h,002h,0fbh	; bbf0  ................
	defb 0fch,004h,001h,0fch,001h,002h,000h,0f7h,0efh,0f7h,0fch,0feh,0fbh,0f6h,0fdh,001h	; bc00  ................
	defb 0ffh,004h,00ch,011h,00ch,0f5h,0f7h,000h,0eah,00ah,00ah,00ah,007h,0f9h,0f3h,0fch	; bc10  ................
	defb 00dh,010h,0fah,0f0h,0f1h,008h,006h,0f9h,0e4h,0efh,0ffh,0fch,0f4h,0edh,0fbh,011h	; bc20  ................
	defb 023h,0fbh,0eeh,0f5h,023h,022h,0ffh,0f9h,0fah,000h,0f6h,000h,00bh,00fh,00bh,0fdh	; bc30  #...#"..........
	defb 0f4h,0f2h,008h,012h,00dh,0e9h,0edh,0ffh,01ah,0f9h,0e3h,0e6h,0fch,0fdh,0ech,0ech	; bc40  ................
	defb 004h,022h,01ch,0edh,0d5h,026h,02bh,013h,0e8h,0f4h,004h,000h,0eah,00eh,013h,011h	; bc50  ."...&+.........
	defb 003h,0f9h,0f4h,0f9h,00ch,013h,001h,0eeh,0ebh,009h,00ch,0feh,0dah,0eah,001h,0f7h	; bc60  ................
	defb 0efh,0ebh,0fah,01bh,035h,0ech,0dch,0f4h,035h,02ch,0eeh,0efh,0fah,000h,0dfh,016h	; bc70  ....5...5,......
	defb 013h,00dh,002h,0f6h,0f0h,002h,00eh,018h,001h,0efh,0e6h,0feh,015h,004h,0eah,0c9h	; bc80  ................
	defb 0edh,002h,0fdh,0f3h,0f3h,020h,022h,004h,0dfh,0e9h,03ch,02dh,006h,0dfh,0eah,000h	; bc90  ..... "...<-....
	defb 0beh,0deh,00ch,032h,00dh,0f0h,0f1h,0f6h,0feh,0feh,0f4h,0f9h,00bh,00ah,0ffh,0f1h	; bca0  ...2............
	defb 0e2h,0f5h,00ah,0fch,0efh,0e6h,0e4h,0f9h,000h,0f2h,0fch,01ch,02ah,02dh,001h,0c5h	; bcb0  ............*-..
	defb 0f2h,000h,0dfh,017h,02fh,028h,0f0h,0e4h,0ebh,017h,01bh,002h,0efh,0e7h,0f3h,004h	; bcc0  ..../(..........
	defb 011h,007h,0f9h,0e8h,0ech,0f5h,004h,000h,0f6h,0ebh,0ebh,0f4h,003h,011h,01dh,011h	; bcd0  ................
	defb 000h,0f6h,005h,001h,017h,002h,002h,002h,004h,005h,005h,005h,004h,003h,002h,002h	; bce0  ................
	defb 001h,0ffh,001h,001h,0fch,0fdh,002h,0ffh,0f7h,0fbh,0ffh,0feh,0f6h,001h,004h,000h	; bcf0  ................
	defb 0f9h,006h,007h,001h,0fch,001h,001h,004h,002h,000h,000h,000h,001h,001h,003h,001h	; bd00  ................
	defb 000h,0ffh,001h,002h,000h,0feh,0feh,000h,001h,0ffh,0feh,0feh,0ffh,0ffh,0feh,0ffh	; bd10  ................
	defb 0ffh,0feh,0feh,000h,000h,000h,0ffh,001h,001h,000h,000h,001h,001h,001h,002h,002h	; bd20  ................
	defb 001h,001h,002h,001h,000h,0ffh,000h,001h,000h,0feh,0fdh,0feh,0ffh,0feh,0feh,0feh	; bd30  ................
	defb 0feh,0ffh,0ffh,0feh,0feh,000h,001h,001h,0ffh,000h,0dfh,001h,001h,002h,001h,000h	; bd40  ................
	defb 001h,001h,002h,000h,000h,000h,000h,000h,001h,000h,0ffh,0feh,0ffh,001h,001h,0feh	; bd50  ................
	defb 0fch,0ffh,000h,002h,0ffh,0fdh,0feh,000h,001h,000h,0ffh,001h,066h,000h,000h,002h	; bd60  ............f...
	defb 001h,001h,000h,001h,001h,000h,001h,000h,0ffh,000h,000h,0ffh,0ffh,000h,0feh,000h	; bd70  ................
	defb 001h,0ffh,000h,001h,001h,000h,000h,001h,002h,000h,000h,001h,000h,001h,066h,001h	; bd80  ..............f.
	defb 000h,002h,001h,000h,001h,001h,0ffh,0ffh,0ffh,0ffh,0ffh,0feh,0ffh,000h,0ffh,000h	; bd90  ................
	defb 0ffh,001h,001h,000h,000h,002h,002h,000h,000h,002h,000h,0feh,000h,000h,000h,001h	; bda0  ................
	defb 066h,000h,000h,0ffh,0ffh,001h,0ffh,0feh,001h,000h,000h,000h,001h,002h,000h,000h	; bdb0  f...............
	defb 001h,001h,000h,001h,000h,0feh,001h,000h,0feh,000h,001h,0feh,0ffh,001h,000h,000h	; bdc0  ................
	defb 001h,001h,0cah,000h,001h,0ffh,000h,000h,000h,000h,000h,000h,001h,000h,000h,000h	; bdd0  ................
	defb 000h,0ffh,000h,0ffh,000h,000h,0ffh,000h,000h,000h,000h,000h,0ffh,000h,000h,0ffh	; bde0  ................
	defb 0ffh,000h,000h,001h,066h,0ffh,000h,000h,000h,000h,000h,000h,0ffh,001h,000h,0ffh	; bdf0  ....f...........
	defb 001h,000h,0feh,000h,001h,000h,0ffh,000h,001h,000h,0ffh,000h,001h,0ffh,000h,000h	; be00  ................
	defb 000h,001h,000h,0ffh,001h,000h,0a7h,000h,000h,000h,000h,000h,000h,000h,000h,000h	; be10  ................
	defb 000h,000h,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,000h,000h,001h,000h,0ffh,0ffh,0ffh	; be20  ................
	defb 0ffh,000h,000h,000h,000h,0ffh,0ffh,000h,0f6h,000h,000h,000h,000h,000h,000h,001h	; be30  ................
	defb 001h,000h,000h,000h,001h,001h,001h,000h,001h,001h,001h,000h,000h,000h,0ffh,0ffh	; be40  ................
	defb 0ffh,0ffh,0ffh,0ffh,0feh,0ffh,0ffh,0ffh,0ffh,000h,086h,004h,006h,009h,009h,003h	; be50  ................
	defb 0fdh,0fah,0f9h,0f7h,0fah,0fdh,0ffh,0feh,0feh,0fdh,0fch,0fbh,0fbh,0fbh,0fch,0fch	; be60  ................
	defb 0fch,0fch,0fch,0fch,0fah,0f8h,0f7h,0fah,0fdh,0ffh,001h,001h,017h,016h,014h,007h	; be70  ................
	defb 0fdh,0ffh,001h,006h,002h,0fah,0fah,0fah,004h,005h,0fah,0f4h,003h,0ffh,0f4h,0f7h	; be80  ................
	defb 0f8h,0f7h,0f8h,0feh,0feh,00fh,004h,0f6h,000h,01fh,00ch,0fch,0fbh,001h,017h,034h	; be90  ...............4
	defb 022h,0feh,0f0h,007h,014h,000h,0f9h,0fch,0f3h,0f9h,001h,004h,0feh,0f6h,0fch,001h	; bea0  "...............
	defb 003h,000h,0ech,0f1h,0fbh,0fdh,0ech,008h,01bh,00ah,0d9h,012h,029h,013h,0eeh,001h	; beb0  ............)...
	defb 001h,0e8h,012h,018h,004h,0f2h,0f2h,0f8h,0fdh,0fdh,0ffh,002h,0feh,0fch,0fch,002h	; bec0  ................
	defb 009h,0fdh,0eah,0deh,0f6h,0ffh,0f5h,0fah,018h,018h,0d1h,0fch,025h,038h,004h,0ech	; bed0  ............%8..
	defb 0f3h,001h,001h,0e8h,011h,01ch,00ch,0e7h,0ebh,0fch,010h,004h,0f9h,0f4h,0fch,003h	; bee0  ................
	defb 004h,0fch,0f7h,0f3h,0eeh,0e5h,0f2h,0f9h,0fbh,019h,010h,0f7h,0deh,022h,033h,016h	; bef0  ............."3.
	defb 0f2h,0f0h,004h,000h,0eah,002h,01ah,021h,014h,0f0h,0e0h,0edh,00eh,01eh,00ch,0ebh	; bf00  .......!........
	defb 0dah,0f3h,00dh,014h,0e3h,0deh,0e7h,0f2h,0f5h,0f4h,000h,01fh,039h,0efh,0d9h,0ech	; bf10  ............9...
	defb 03fh,040h,003h,0e2h,0e6h,000h,0c9h,000h,0feh,0fdh,007h,00bh,006h,0fch,0efh,0f8h	; bf20  ?@..............
	defb 004h,00ah,009h,0f8h,0f1h,0f3h,0f7h,0fch,0f2h,0eah,0eah,0edh,0f6h,0f6h,0f2h,0fbh	; bf30  ................
	defb 007h,01dh,023h,007h,0f9h,0f7h,00ah,000h,0c9h,00dh,012h,014h,00bh,002h,0f9h,0fah	; bf40  ..#.............
	defb 002h,006h,009h,0fdh,0f4h,0f1h,0f6h,001h,002h,0feh,0f8h,0f3h,0f7h,0fah,0fdh,0fdh	; bf50  ................
	defb 0fah,0f9h,0f9h,0fch,0fdh,0fah,0f9h,0fch,000h,000h,0f6h,000h,001h,002h,002h,008h	; bf60  ................
	defb 008h,004h,004h,008h,00ch,00ch,006h,001h,002h,002h,001h,0feh,0fdh,0fbh,0f8h,0fah	; bf70  ................
	defb 0fbh,0fdh,0fah,0fah,0fch,0fch,0fch,0fch,0feh,0feh,0fdh,001h,066h,0feh,0fdh,002h	; bf80  ............f...
	defb 000h,0ffh,003h,004h,000h,001h,002h,000h,001h,003h,0feh,0ffh,003h,000h,0fch,0feh	; bf90  ................
	defb 0fch,0feh,0feh,0fch,0ffh,001h,0ffh,0feh,004h,003h,0ffh,002h,003h,000h,0f6h,000h	; bfa0  ................
	defb 000h,000h,000h,001h,002h,003h,003h,002h,002h,002h,001h,000h,000h,000h,0ffh,000h	; bfb0  ................
	defb 000h,0ffh,0feh,0ffh,000h,000h,0feh,0fdh,0feh,0feh,0ffh,0feh,0feh,0ffh,0ffh,000h	; bfc0  ................
	defb 0eah,001h,001h,002h,001h,000h,001h,003h,003h,002h,002h,001h,001h,001h,002h,001h	; bfd0  ................
	defb 001h,000h,000h,0feh,0feh,000h,000h,0ffh,0fdh,0fdh,0feh,0feh,0feh,0feh,0ffh,0ffh	; bfe0  ................
	defb 0ffh,000h,000h,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff0  ................

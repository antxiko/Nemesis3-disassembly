; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 09 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS leido_A000: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa000..0xa001  (1 bytes)
DATA_leido_A000:
	defb 0feh	; a000

; ----------------------------------------------------------------------
; DATOS leido_A001: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa001..0xa002  (1 bytes)
DATA_leido_A001:
	defb 004h	; a001

; ----------------------------------------------------------------------
; DATOS leido_A002: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa002..0xa003  (1 bytes)
DATA_leido_A002:
	defb 0e9h	; a002

; ----------------------------------------------------------------------
; DATOS leido_A003: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa003..0xa004  (1 bytes)
DATA_leido_A003:
	defb 005h	; a003

; ----------------------------------------------------------------------
; DATOS leido_A004: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa004..0xa00c  (8 bytes)
DATA_leido_A004:
	defb 0d0h,091h,001h,031h,001h,031h,091h,0fbh	; a004  ...1.1..

; ----------------------------------------------------------------------
; DATOS leido_A00C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa00c..0xa00f  (3 bytes)
DATA_leido_A00C:
	defb 003h,000h,0a0h	; a00c

; ----------------------------------------------------------------------
; DATOS leido_A00F: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa00f..0xa018  (9 bytes)
DATA_leido_A00F:
	defb 090h,000h,000h,090h,031h,091h,031h,011h,0fch	; a00f  ....1.1..

; ----------------------------------------------------------------------
; DATOS leido_A018: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa018..0xa01b  (3 bytes)
DATA_leido_A018:
	defb 002h,000h,0a0h	; a018

; ----------------------------------------------------------------------
; DATOS leido_A01B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa01b..0xa01c  (1 bytes)
DATA_leido_A01B:
	defb 0feh	; a01b

; ----------------------------------------------------------------------
; DATOS leido_A01C: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa01c..0xa01d  (1 bytes)
DATA_leido_A01C:
	defb 004h	; a01c

; ----------------------------------------------------------------------
; DATOS leido_A01D: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa01d..0xa024  (7 bytes)
DATA_leido_A01D:
	defb 091h,001h,001h,091h,031h,001h,0fbh	; a01d

; ----------------------------------------------------------------------
; DATOS leido_A024: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa024..0xa027  (3 bytes)
DATA_leido_A024:
	defb 003h,01dh,0a0h	; a024

; ----------------------------------------------------------------------
; DATOS leido_A027: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa027..0xa02e  (7 bytes)
DATA_leido_A027:
	defb 091h,001h,031h,091h,031h,031h,0fch	; a027

; ----------------------------------------------------------------------
; DATOS leido_A02E: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa02e..0xa031  (3 bytes)
DATA_leido_A02E:
	defb 004h,01bh,0a0h	; a02e

; ----------------------------------------------------------------------
; DATOS leido_A031: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa031..0xa038  (7 bytes)
DATA_leido_A031:
	defb 091h,001h,001h,001h,031h,001h,0fbh	; a031

; ----------------------------------------------------------------------
; DATOS leido_A038: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa038..0xa03b  (3 bytes)
DATA_leido_A038:
	defb 004h,031h,0a0h	; a038

; ----------------------------------------------------------------------
; DATOS leido_A03B: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa03b..0xa042  (7 bytes)
DATA_leido_A03B:
	defb 091h,031h,001h,031h,091h,031h,0fbh	; a03b

; ----------------------------------------------------------------------
; DATOS leido_A042: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa042..0xa045  (3 bytes)
DATA_leido_A042:
	defb 003h,03bh,0a0h	; a042

; ----------------------------------------------------------------------
; DATOS leido_A045: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa045..0xa04b  (6 bytes)
DATA_leido_A045:
	defb 091h,030h,030h,091h,031h,0feh	; a045

; ----------------------------------------------------------------------
; DATOS leido_A04B: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa04b..0xa04c  (1 bytes)
DATA_leido_A04B:
	defb 010h	; a04b

; ----------------------------------------------------------------------
; DATOS leido_A04C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa04c..0xa04e  (2 bytes)
DATA_leido_A04C:
	defb 093h,0feh	; a04c

; ----------------------------------------------------------------------
; DATOS leido_A04E: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa04e..0xa04f  (1 bytes)
DATA_leido_A04E:
	defb 004h	; a04e

; ----------------------------------------------------------------------
; DATOS leido_A04F: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xa04f..0xa059  (10 bytes)
DATA_leido_A04F:
	defb 091h,090h,000h,031h,000h,000h,090h,000h,031h,0fbh	; a04f  ...1....1.

; ----------------------------------------------------------------------
; DATOS leido_A059: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa059..0xa05c  (3 bytes)
DATA_leido_A059:
	defb 00bh,04dh,0a0h	; a059

; ----------------------------------------------------------------------
; DATOS leido_A05C: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa05c..0xa065  (9 bytes)
DATA_leido_A05C:
	defb 090h,000h,030h,030h,030h,000h,090h,000h,0feh	; a05c  ..000....

; ----------------------------------------------------------------------
; DATOS leido_A065: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa065..0xa066  (1 bytes)
DATA_leido_A065:
	defb 010h	; a065

; ----------------------------------------------------------------------
; DATOS leido_A066: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa066..0xa068  (2 bytes)
DATA_leido_A066:
	defb 093h,0fdh	; a066

; ----------------------------------------------------------------------
; DATOS leido_A068: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa068..0xa06a  (2 bytes)
DATA_leido_A068:
	defb 01bh,0a0h	; a068

; ----------------------------------------------------------------------
; DATOS leido_A06A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa06a..0xa06b  (1 bytes)
DATA_leido_A06A:
	defb 0feh	; a06a

; ----------------------------------------------------------------------
; DATOS leido_A06B: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa06b..0xa06c  (1 bytes)
DATA_leido_A06B:
	defb 001h	; a06b

; ----------------------------------------------------------------------
; DATOS leido_A06C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa06c..0xa06d  (1 bytes)
DATA_leido_A06C:
	defb 0f2h	; a06c

; ----------------------------------------------------------------------
; DATOS leido_A06D: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa06d..0xa06e  (1 bytes)
DATA_leido_A06D:
	defb 01ah	; a06d

; ----------------------------------------------------------------------
; DATOS leido_A06E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa06e..0xa06f  (1 bytes)
DATA_leido_A06E:
	defb 0f1h	; a06e

; ----------------------------------------------------------------------
; DATOS leido_A06F: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa06f..0xa070  (1 bytes)
DATA_leido_A06F:
	defb 063h	; a06f

; ----------------------------------------------------------------------
; DATOS leido_A070: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa070..0xa071  (1 bytes)
DATA_leido_A070:
	defb 0e9h	; a070

; ----------------------------------------------------------------------
; DATOS leido_A071: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa071..0xa072  (1 bytes)
DATA_leido_A071:
	defb 005h	; a071

; ----------------------------------------------------------------------
; DATOS leido_A072: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa072..0xa074  (2 bytes)
DATA_leido_A072:
	defb 0c2h,0eah	; a072

; ----------------------------------------------------------------------
; DATOS leido_A074: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa074..0xa075  (1 bytes)
DATA_leido_A074:
	defb 008h	; a074

; ----------------------------------------------------------------------
; DATOS leido_A075: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa075..0xa076  (1 bytes)
DATA_leido_A075:
	defb 0ebh	; a075

; ----------------------------------------------------------------------
; DATOS leido_A076: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa076..0xa077  (1 bytes)
DATA_leido_A076:
	defb 001h	; a076

; ----------------------------------------------------------------------
; DATOS leido_A077: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa077..0xa078  (1 bytes)
DATA_leido_A077:
	defb 010h	; a077

; ----------------------------------------------------------------------
; DATOS leido_A078: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa078..0xa079  (1 bytes)
DATA_leido_A078:
	defb 0d6h	; a078

; ----------------------------------------------------------------------
; DATOS leido_A079: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa079..0xa07b  (2 bytes)
DATA_leido_A079:
	defb 001h,001h	; a079

; ----------------------------------------------------------------------
; DATOS leido_A07B: 23 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (23 bytes)
;   0xa07b..0xa092  (23 bytes)
DATA_leido_A07B:
	defb 0d2h,03bh,05bh,069h,071h,081h,071h,0a1h,091h,081h,071h,03bh,05bh,069h,071h,071h	; a07b  ..[iq.q...q.[iqq
	defb 061h,091h,081h,0b0h,0f0h,0d8h,0f2h	; a08b

; ----------------------------------------------------------------------
; DATOS leido_A092: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa092..0xa093  (1 bytes)
DATA_leido_A092:
	defb 01ah	; a092

; ----------------------------------------------------------------------
; DATOS leido_A093: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa093..0xa094  (1 bytes)
DATA_leido_A093:
	defb 0f1h	; a093

; ----------------------------------------------------------------------
; DATOS leido_A094: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa094..0xa095  (1 bytes)
DATA_leido_A094:
	defb 042h	; a094

; ----------------------------------------------------------------------
; DATOS leido_A095: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa095..0xa096  (1 bytes)
DATA_leido_A095:
	defb 0eah	; a095

; ----------------------------------------------------------------------
; DATOS leido_A096: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa096..0xa097  (1 bytes)
DATA_leido_A096:
	defb 007h	; a096

; ----------------------------------------------------------------------
; DATOS leido_A097: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa097..0xa09b  (4 bytes)
DATA_leido_A097:
	defb 0ech,0d2h,073h,0f9h	; a097

; ----------------------------------------------------------------------
; DATOS leido_A09B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa09b..0xa09d  (2 bytes)
DATA_leido_A09B:
	defb 01fh,0a4h	; a09b

; ----------------------------------------------------------------------
; DATOS leido_A09D: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xa09d..0xa0a7  (10 bytes)
DATA_leido_A09D:
	defb 00bh,0d3h,071h,0d2h,001h,011h,001h,011h,061h,0f9h	; a09d  ..q.....a.

; ----------------------------------------------------------------------
; DATOS leido_A0A7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa0a7..0xa0a9  (2 bytes)
DATA_leido_A0A7:
	defb 01fh,0a4h	; a0a7

; ----------------------------------------------------------------------
; DATOS leido_A0A9: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa0a9..0xa0b1  (8 bytes)
DATA_leido_A0A9:
	defb 009h,031h,021h,011h,001h,0d2h,0b1h,0f2h	; a0a9  .1!.....

; ----------------------------------------------------------------------
; DATOS leido_A0B1: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa0b1..0xa0b2  (1 bytes)
DATA_leido_A0B1:
	defb 01ah	; a0b1

; ----------------------------------------------------------------------
; DATOS leido_A0B2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0b2..0xa0b3  (1 bytes)
DATA_leido_A0B2:
	defb 0f1h	; a0b2

; ----------------------------------------------------------------------
; DATOS leido_A0B3: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa0b3..0xa0b4  (1 bytes)
DATA_leido_A0B3:
	defb 068h	; a0b3

; ----------------------------------------------------------------------
; DATOS leido_A0B4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0b4..0xa0b5  (1 bytes)
DATA_leido_A0B4:
	defb 0e9h	; a0b4

; ----------------------------------------------------------------------
; DATOS leido_A0B5: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa0b5..0xa0b6  (1 bytes)
DATA_leido_A0B5:
	defb 005h	; a0b5

; ----------------------------------------------------------------------
; DATOS leido_A0B6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0b6..0xa0b7  (1 bytes)
DATA_leido_A0B6:
	defb 0eah	; a0b6

; ----------------------------------------------------------------------
; DATOS leido_A0B7: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa0b7..0xa0b8  (1 bytes)
DATA_leido_A0B7:
	defb 008h	; a0b7

; ----------------------------------------------------------------------
; DATOS leido_A0B8: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa0b8..0xa0ba  (2 bytes)
DATA_leido_A0B8:
	defb 0c2h,0dbh	; a0b8

; ----------------------------------------------------------------------
; DATOS leido_A0BA: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa0ba..0xa0bb  (1 bytes)
DATA_leido_A0BA:
	defb 004h	; a0ba

; ----------------------------------------------------------------------
; DATOS leido_A0BB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0bb..0xa0bc  (1 bytes)
DATA_leido_A0BB:
	defb 0ebh	; a0bb

; ----------------------------------------------------------------------
; DATOS leido_A0BC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa0bc..0xa0bd  (1 bytes)
DATA_leido_A0BC:
	defb 001h	; a0bc

; ----------------------------------------------------------------------
; DATOS leido_A0BD: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0bd..0xa0be  (1 bytes)
DATA_leido_A0BD:
	defb 010h	; a0bd

; ----------------------------------------------------------------------
; DATOS leido_A0BE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0be..0xa0bf  (1 bytes)
DATA_leido_A0BE:
	defb 0d6h	; a0be

; ----------------------------------------------------------------------
; DATOS leido_A0BF: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa0bf..0xa0c1  (2 bytes)
DATA_leido_A0BF:
	defb 002h,001h	; a0bf

; ----------------------------------------------------------------------
; DATOS leido_A0C1: 32 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (32 bytes)
;   0xa0c1..0xa0e1  (32 bytes)
DATA_leido_A0C1:
	defb 0d2h,035h,025h,065h,055h,065h,055h,095h,085h,091h,071h,021h,091h,071h,021h,0a1h	; a0c1  .5%eUeU...q!.q!.
	defb 081h,031h,0a1h,081h,031h,0b1h,091h,041h,0b1h,091h,041h,0d1h,003h,013h,020h,0f2h	; a0d1  .1..1..A..A... .

; ----------------------------------------------------------------------
; DATOS leido_A0E1: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa0e1..0xa0e2  (1 bytes)
DATA_leido_A0E1:
	defb 020h	; a0e1

; ----------------------------------------------------------------------
; DATOS leido_A0E2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0e2..0xa0e3  (1 bytes)
DATA_leido_A0E2:
	defb 0f1h	; a0e2

; ----------------------------------------------------------------------
; DATOS leido_A0E3: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa0e3..0xa0e4  (1 bytes)
DATA_leido_A0E3:
	defb 043h	; a0e3

; ----------------------------------------------------------------------
; DATOS leido_A0E4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0e4..0xa0e5  (1 bytes)
DATA_leido_A0E4:
	defb 0e9h	; a0e4

; ----------------------------------------------------------------------
; DATOS leido_A0E5: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa0e5..0xa0e6  (1 bytes)
DATA_leido_A0E5:
	defb 005h	; a0e5

; ----------------------------------------------------------------------
; DATOS leido_A0E6: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa0e6..0xa0e8  (2 bytes)
DATA_leido_A0E6:
	defb 0c2h,0eah	; a0e6

; ----------------------------------------------------------------------
; DATOS leido_A0E8: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa0e8..0xa0e9  (1 bytes)
DATA_leido_A0E8:
	defb 007h	; a0e8

; ----------------------------------------------------------------------
; DATOS leido_A0E9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0e9..0xa0ea  (1 bytes)
DATA_leido_A0E9:
	defb 0dbh	; a0e9

; ----------------------------------------------------------------------
; DATOS leido_A0EA: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa0ea..0xa0eb  (1 bytes)
DATA_leido_A0EA:
	defb 003h	; a0ea

; ----------------------------------------------------------------------
; DATOS leido_A0EB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0eb..0xa0ec  (1 bytes)
DATA_leido_A0EB:
	defb 0ebh	; a0eb

; ----------------------------------------------------------------------
; DATOS leido_A0EC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa0ec..0xa0ed  (1 bytes)
DATA_leido_A0EC:
	defb 001h	; a0ec

; ----------------------------------------------------------------------
; DATOS leido_A0ED: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0ed..0xa0ee  (1 bytes)
DATA_leido_A0ED:
	defb 010h	; a0ed

; ----------------------------------------------------------------------
; DATOS leido_A0EE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0ee..0xa0ef  (1 bytes)
DATA_leido_A0EE:
	defb 0d6h	; a0ee

; ----------------------------------------------------------------------
; DATOS leido_A0EF: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa0ef..0xa0f1  (2 bytes)
DATA_leido_A0EF:
	defb 002h,001h	; a0ef

; ----------------------------------------------------------------------
; DATOS leido_A0F1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0f1..0xa0f2  (1 bytes)
DATA_leido_A0F1:
	defb 0f9h	; a0f1

; ----------------------------------------------------------------------
; DATOS leido_A0F2: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa0f2..0xa0f4  (2 bytes)
DATA_leido_A0F2:
	defb 03eh,0a4h	; a0f2

; ----------------------------------------------------------------------
; DATOS leido_A0F4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0f4..0xa0f5  (1 bytes)
DATA_leido_A0F4:
	defb 0e9h	; a0f4

; ----------------------------------------------------------------------
; DATOS leido_A0F5: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa0f5..0xa0f6  (1 bytes)
DATA_leido_A0F5:
	defb 014h	; a0f5

; ----------------------------------------------------------------------
; DATOS leido_A0F6: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa0f6..0xa0fb  (5 bytes)
DATA_leido_A0F6:
	defb 0d0h,009h,0dch,0ech,0eah	; a0f6

; ----------------------------------------------------------------------
; DATOS leido_A0FB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa0fb..0xa0fc  (1 bytes)
DATA_leido_A0FB:
	defb 003h	; a0fb

; ----------------------------------------------------------------------
; DATOS leido_A0FC: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa0fc..0xa0fe  (2 bytes)
DATA_leido_A0FC:
	defb 000h,0e9h	; a0fc

; ----------------------------------------------------------------------
; DATOS leido_A0FE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa0fe..0xa0ff  (1 bytes)
DATA_leido_A0FE:
	defb 005h	; a0fe

; ----------------------------------------------------------------------
; DATOS leido_A0FF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0ff..0xa100  (1 bytes)
DATA_leido_A0FF:
	defb 0eah	; a0ff

; ----------------------------------------------------------------------
; DATOS leido_A100: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa100..0xa101  (1 bytes)
DATA_leido_A100:
	defb 002h	; a100

; ----------------------------------------------------------------------
; DATOS leido_A101: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa101..0xa103  (2 bytes)
DATA_leido_A101:
	defb 000h,0fdh	; a101

; ----------------------------------------------------------------------
; DATOS leido_A103: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa103..0xa105  (2 bytes)
DATA_leido_A103:
	defb 091h,0a0h	; a103

; ----------------------------------------------------------------------
; DATOS leido_A105: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa105..0xa106  (1 bytes)
DATA_leido_A105:
	defb 0feh	; a105

; ----------------------------------------------------------------------
; DATOS leido_A106: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa106..0xa107  (1 bytes)
DATA_leido_A106:
	defb 001h	; a106

; ----------------------------------------------------------------------
; DATOS leido_A107: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa107..0xa108  (1 bytes)
DATA_leido_A107:
	defb 0f8h	; a107

; ----------------------------------------------------------------------
; DATOS leido_A108: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa108..0xa109  (1 bytes)
DATA_leido_A108:
	defb 023h	; a108

; ----------------------------------------------------------------------
; DATOS leido_A109: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa109..0xa10a  (1 bytes)
DATA_leido_A109:
	defb 0e9h	; a109

; ----------------------------------------------------------------------
; DATOS leido_A10A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa10a..0xa10b  (1 bytes)
DATA_leido_A10A:
	defb 005h	; a10a

; ----------------------------------------------------------------------
; DATOS leido_A10B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa10b..0xa10c  (1 bytes)
DATA_leido_A10B:
	defb 0dbh	; a10b

; ----------------------------------------------------------------------
; DATOS leido_A10C: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa10c..0xa10d  (1 bytes)
DATA_leido_A10C:
	defb 001h	; a10c

; ----------------------------------------------------------------------
; DATOS leido_A10D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa10d..0xa10e  (1 bytes)
DATA_leido_A10D:
	defb 0eah	; a10d

; ----------------------------------------------------------------------
; DATOS leido_A10E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa10e..0xa10f  (1 bytes)
DATA_leido_A10E:
	defb 00dh	; a10e

; ----------------------------------------------------------------------
; DATOS leido_A10F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa10f..0xa110  (1 bytes)
DATA_leido_A10F:
	defb 0ebh	; a10f

; ----------------------------------------------------------------------
; DATOS leido_A110: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa110..0xa111  (1 bytes)
DATA_leido_A110:
	defb 009h	; a110

; ----------------------------------------------------------------------
; DATOS leido_A111: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa111..0xa112  (1 bytes)
DATA_leido_A111:
	defb 040h	; a111

; ----------------------------------------------------------------------
; DATOS leido_A112: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa112..0xa113  (1 bytes)
DATA_leido_A112:
	defb 0f9h	; a112

; ----------------------------------------------------------------------
; DATOS leido_A113: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa113..0xa115  (2 bytes)
DATA_leido_A113:
	defb 0f0h,0a3h	; a113

; ----------------------------------------------------------------------
; DATOS leido_A115: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa115..0xa11c  (7 bytes)
DATA_leido_A115:
	defb 081h,071h,0a1h,091h,081h,071h,0f9h	; a115

; ----------------------------------------------------------------------
; DATOS leido_A11C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa11c..0xa11e  (2 bytes)
DATA_leido_A11C:
	defb 0f0h,0a3h	; a11c

; ----------------------------------------------------------------------
; DATOS leido_A11E: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa11e..0xa125  (7 bytes)
DATA_leido_A11E:
	defb 071h,061h,091h,081h,0b1h,0a1h,0f8h	; a11e

; ----------------------------------------------------------------------
; DATOS leido_A125: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa125..0xa126  (1 bytes)
DATA_leido_A125:
	defb 023h	; a125

; ----------------------------------------------------------------------
; DATOS leido_A126: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa126..0xa127  (1 bytes)
DATA_leido_A126:
	defb 0dbh	; a126

; ----------------------------------------------------------------------
; DATOS leido_A127: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa127..0xa128  (1 bytes)
DATA_leido_A127:
	defb 003h	; a127

; ----------------------------------------------------------------------
; DATOS leido_A128: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa128..0xa129  (1 bytes)
DATA_leido_A128:
	defb 0eah	; a128

; ----------------------------------------------------------------------
; DATOS leido_A129: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa129..0xa12a  (1 bytes)
DATA_leido_A129:
	defb 00dh	; a129

; ----------------------------------------------------------------------
; DATOS leido_A12A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa12a..0xa12b  (1 bytes)
DATA_leido_A12A:
	defb 0ebh	; a12a

; ----------------------------------------------------------------------
; DATOS leido_A12B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa12b..0xa12c  (1 bytes)
DATA_leido_A12B:
	defb 009h	; a12b

; ----------------------------------------------------------------------
; DATOS leido_A12C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa12c..0xa12d  (1 bytes)
DATA_leido_A12C:
	defb 048h	; a12c

; ----------------------------------------------------------------------
; DATOS leido_A12D: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa12d..0xa135  (8 bytes)
DATA_leido_A12D:
	defb 0d4h,001h,011h,001h,031h,021h,011h,0fbh	; a12d  ....1!..

; ----------------------------------------------------------------------
; DATOS leido_A135: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa135..0xa138  (3 bytes)
DATA_leido_A135:
	defb 007h,026h,0a1h	; a135

; ----------------------------------------------------------------------
; DATOS leido_A138: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xa138..0xa145  (13 bytes)
DATA_leido_A138:
	defb 001h,061h,061h,001h,061h,061h,001h,011h,001h,031h,021h,001h,0fbh	; a138  .aa.aa...1!..

; ----------------------------------------------------------------------
; DATOS leido_A145: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa145..0xa148  (3 bytes)
DATA_leido_A145:
	defb 006h,03eh,0a1h	; a145

; ----------------------------------------------------------------------
; DATOS leido_A148: 15 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (15 bytes)
;   0xa148..0xa157  (15 bytes)
DATA_leido_A148:
	defb 001h,011h,001h,031h,021h,0d3h,031h,021h,011h,001h,0d4h,0b1h,0a1h,091h,0f8h	; a148  ...1!.1!.......

; ----------------------------------------------------------------------
; DATOS leido_A157: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa157..0xa158  (1 bytes)
DATA_leido_A157:
	defb 028h	; a157

; ----------------------------------------------------------------------
; DATOS leido_A158: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa158..0xa159  (1 bytes)
DATA_leido_A158:
	defb 0dbh	; a158

; ----------------------------------------------------------------------
; DATOS leido_A159: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa159..0xa15a  (1 bytes)
DATA_leido_A159:
	defb 002h	; a159

; ----------------------------------------------------------------------
; DATOS leido_A15A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa15a..0xa15b  (1 bytes)
DATA_leido_A15A:
	defb 0eah	; a15a

; ----------------------------------------------------------------------
; DATOS leido_A15B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa15b..0xa15c  (1 bytes)
DATA_leido_A15B:
	defb 008h	; a15b

; ----------------------------------------------------------------------
; DATOS leido_A15C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa15c..0xa15d  (1 bytes)
DATA_leido_A15C:
	defb 0ebh	; a15c

; ----------------------------------------------------------------------
; DATOS leido_A15D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa15d..0xa15e  (1 bytes)
DATA_leido_A15D:
	defb 009h	; a15d

; ----------------------------------------------------------------------
; DATOS leido_A15E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa15e..0xa15f  (1 bytes)
DATA_leido_A15E:
	defb 03fh	; a15e

; ----------------------------------------------------------------------
; DATOS leido_A15F: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa15f..0xa162  (3 bytes)
DATA_leido_A15F:
	defb 0d5h,081h,0fbh	; a15f

; ----------------------------------------------------------------------
; DATOS leido_A162: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa162..0xa165  (3 bytes)
DATA_leido_A162:
	defb 00ah,060h,0a1h	; a162

; ----------------------------------------------------------------------
; DATOS leido_A165: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa165..0xa169  (4 bytes)
DATA_leido_A165:
	defb 091h,0a1h,0b1h,0fbh	; a165

; ----------------------------------------------------------------------
; DATOS leido_A169: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa169..0xa16c  (3 bytes)
DATA_leido_A169:
	defb 00ah,067h,0a1h	; a169

; ----------------------------------------------------------------------
; DATOS leido_A16C: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa16c..0xa172  (6 bytes)
DATA_leido_A16C:
	defb 0d4h,001h,011h,0d5h,021h,0fbh	; a16c

; ----------------------------------------------------------------------
; DATOS leido_A172: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa172..0xa175  (3 bytes)
DATA_leido_A172:
	defb 006h,070h,0a1h	; a172

; ----------------------------------------------------------------------
; DATOS leido_A175: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa175..0xa177  (2 bytes)
DATA_leido_A175:
	defb 031h,0fbh	; a175

; ----------------------------------------------------------------------
; DATOS leido_A177: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa177..0xa17a  (3 bytes)
DATA_leido_A177:
	defb 006h,075h,0a1h	; a177

; ----------------------------------------------------------------------
; DATOS leido_A17A: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa17a..0xa17c  (2 bytes)
DATA_leido_A17A:
	defb 041h,0fbh	; a17a

; ----------------------------------------------------------------------
; DATOS leido_A17C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa17c..0xa17f  (3 bytes)
DATA_leido_A17C:
	defb 006h,07ah,0a1h	; a17c

; ----------------------------------------------------------------------
; DATOS leido_A17F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa17f..0xa180  (1 bytes)
DATA_leido_A17F:
	defb 0eah	; a17f

; ----------------------------------------------------------------------
; DATOS leido_A180: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa180..0xa181  (1 bytes)
DATA_leido_A180:
	defb 009h	; a180

; ----------------------------------------------------------------------
; DATOS leido_A181: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa181..0xa188  (7 bytes)
DATA_leido_A181:
	defb 051h,051h,061h,061h,071h,071h,0ebh	; a181

; ----------------------------------------------------------------------
; DATOS leido_A188: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa188..0xa189  (1 bytes)
DATA_leido_A188:
	defb 009h	; a188

; ----------------------------------------------------------------------
; DATOS leido_A189: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa189..0xa18a  (1 bytes)
DATA_leido_A189:
	defb 028h	; a189

; ----------------------------------------------------------------------
; DATOS leido_A18A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa18a..0xa18b  (1 bytes)
DATA_leido_A18A:
	defb 0eah	; a18a

; ----------------------------------------------------------------------
; DATOS leido_A18B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa18b..0xa18c  (1 bytes)
DATA_leido_A18B:
	defb 008h	; a18b

; ----------------------------------------------------------------------
; DATOS leido_A18C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa18c..0xa18d  (1 bytes)
DATA_leido_A18C:
	defb 0f9h	; a18c

; ----------------------------------------------------------------------
; DATOS leido_A18D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa18d..0xa18f  (2 bytes)
DATA_leido_A18D:
	defb 0feh,0a3h	; a18d

; ----------------------------------------------------------------------
; DATOS leido_A18F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa18f..0xa190  (1 bytes)
DATA_leido_A18F:
	defb 0f9h	; a18f

; ----------------------------------------------------------------------
; DATOS leido_A190: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa190..0xa192  (2 bytes)
DATA_leido_A190:
	defb 0feh,0a3h	; a190

; ----------------------------------------------------------------------
; DATOS leido_A192: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa192..0xa198  (6 bytes)
DATA_leido_A192:
	defb 0d4h,001h,0d3h,001h,001h,0fbh	; a192

; ----------------------------------------------------------------------
; DATOS leido_A198: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa198..0xa19b  (3 bytes)
DATA_leido_A198:
	defb 006h,092h,0a1h	; a198

; ----------------------------------------------------------------------
; DATOS leido_A19B: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xa19b..0xa1a7  (12 bytes)
DATA_leido_A19B:
	defb 0d4h,001h,001h,0d3h,001h,0d4h,001h,0d3h,001h,0d4h,001h,0fdh	; a19b  ............

; ----------------------------------------------------------------------
; DATOS leido_A1A7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa1a7..0xa1a9  (2 bytes)
DATA_leido_A1A7:
	defb 024h,0a1h	; a1a7

; ----------------------------------------------------------------------
; DATOS leido_A1A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1a9..0xa1aa  (1 bytes)
DATA_leido_A1A9:
	defb 0feh	; a1a9

; ----------------------------------------------------------------------
; DATOS leido_A1AA: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa1aa..0xa1ab  (1 bytes)
DATA_leido_A1AA:
	defb 001h	; a1aa

; ----------------------------------------------------------------------
; DATOS leido_A1AB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1ab..0xa1ac  (1 bytes)
DATA_leido_A1AB:
	defb 0eeh	; a1ab

; ----------------------------------------------------------------------
; DATOS leido_A1AC: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xa1ac..0xa1ad  (1 bytes)
DATA_leido_A1AC:
	defb 001h	; a1ac

; ----------------------------------------------------------------------
; DATOS leido_A1AD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1ad..0xa1ae  (1 bytes)
DATA_leido_A1AD:
	defb 0f2h	; a1ad

; ----------------------------------------------------------------------
; DATOS leido_A1AE: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa1ae..0xa1af  (1 bytes)
DATA_leido_A1AE:
	defb 01ah	; a1ae

; ----------------------------------------------------------------------
; DATOS leido_A1AF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1af..0xa1b0  (1 bytes)
DATA_leido_A1AF:
	defb 0f1h	; a1af

; ----------------------------------------------------------------------
; DATOS leido_A1B0: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa1b0..0xa1b1  (1 bytes)
DATA_leido_A1B0:
	defb 068h	; a1b0

; ----------------------------------------------------------------------
; DATOS leido_A1B1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1b1..0xa1b2  (1 bytes)
DATA_leido_A1B1:
	defb 0e9h	; a1b1

; ----------------------------------------------------------------------
; DATOS leido_A1B2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa1b2..0xa1b3  (1 bytes)
DATA_leido_A1B2:
	defb 005h	; a1b2

; ----------------------------------------------------------------------
; DATOS leido_A1B3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1b3..0xa1b4  (1 bytes)
DATA_leido_A1B3:
	defb 0f8h	; a1b3

; ----------------------------------------------------------------------
; DATOS leido_A1B4: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa1b4..0xa1b5  (1 bytes)
DATA_leido_A1B4:
	defb 015h	; a1b4

; ----------------------------------------------------------------------
; DATOS leido_A1B5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1b5..0xa1b6  (1 bytes)
DATA_leido_A1B5:
	defb 0eah	; a1b5

; ----------------------------------------------------------------------
; DATOS leido_A1B6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa1b6..0xa1b7  (1 bytes)
DATA_leido_A1B6:
	defb 006h	; a1b6

; ----------------------------------------------------------------------
; DATOS leido_A1B7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1b7..0xa1b8  (1 bytes)
DATA_leido_A1B7:
	defb 0ebh	; a1b7

; ----------------------------------------------------------------------
; DATOS leido_A1B8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa1b8..0xa1b9  (1 bytes)
DATA_leido_A1B8:
	defb 017h	; a1b8

; ----------------------------------------------------------------------
; DATOS leido_A1B9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa1b9..0xa1ba  (1 bytes)
DATA_leido_A1B9:
	defb 010h	; a1b9

; ----------------------------------------------------------------------
; DATOS leido_A1BA: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa1ba..0xa1c1  (7 bytes)
DATA_leido_A1BA:
	defb 0d1h,03bh,05bh,06fh,0ech,0f3h,0eah	; a1ba

; ----------------------------------------------------------------------
; DATOS leido_A1C1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa1c1..0xa1c2  (1 bytes)
DATA_leido_A1C1:
	defb 002h	; a1c1

; ----------------------------------------------------------------------
; DATOS leido_A1C2: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa1c2..0xa1c4  (2 bytes)
DATA_leido_A1C2:
	defb 067h,0fbh	; a1c2

; ----------------------------------------------------------------------
; DATOS leido_A1C4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa1c4..0xa1c7  (3 bytes)
DATA_leido_A1C4:
	defb 002h,0b3h,0a1h	; a1c4

; ----------------------------------------------------------------------
; DATOS leido_A1C7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa1c7..0xa1c9  (2 bytes)
DATA_leido_A1C7:
	defb 0efh,0f8h	; a1c7

; ----------------------------------------------------------------------
; DATOS leido_A1C9: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa1c9..0xa1ca  (1 bytes)
DATA_leido_A1C9:
	defb 002h	; a1c9

; ----------------------------------------------------------------------
; DATOS leido_A1CA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1ca..0xa1cb  (1 bytes)
DATA_leido_A1CA:
	defb 0f2h	; a1ca

; ----------------------------------------------------------------------
; DATOS leido_A1CB: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa1cb..0xa1cc  (1 bytes)
DATA_leido_A1CB:
	defb 01ah	; a1cb

; ----------------------------------------------------------------------
; DATOS leido_A1CC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1cc..0xa1cd  (1 bytes)
DATA_leido_A1CC:
	defb 0f1h	; a1cc

; ----------------------------------------------------------------------
; DATOS leido_A1CD: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa1cd..0xa1ce  (1 bytes)
DATA_leido_A1CD:
	defb 065h	; a1cd

; ----------------------------------------------------------------------
; DATOS leido_A1CE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1ce..0xa1cf  (1 bytes)
DATA_leido_A1CE:
	defb 0e9h	; a1ce

; ----------------------------------------------------------------------
; DATOS leido_A1CF: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa1cf..0xa1d0  (1 bytes)
DATA_leido_A1CF:
	defb 005h	; a1cf

; ----------------------------------------------------------------------
; DATOS leido_A1D0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1d0..0xa1d1  (1 bytes)
DATA_leido_A1D0:
	defb 0eah	; a1d0

; ----------------------------------------------------------------------
; DATOS leido_A1D1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa1d1..0xa1d2  (1 bytes)
DATA_leido_A1D1:
	defb 009h	; a1d1

; ----------------------------------------------------------------------
; DATOS leido_A1D2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1d2..0xa1d3  (1 bytes)
DATA_leido_A1D2:
	defb 0ebh	; a1d2

; ----------------------------------------------------------------------
; DATOS leido_A1D3: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa1d3..0xa1d4  (1 bytes)
DATA_leido_A1D3:
	defb 005h	; a1d3

; ----------------------------------------------------------------------
; DATOS leido_A1D4: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa1d4..0xa1d5  (1 bytes)
DATA_leido_A1D4:
	defb 050h	; a1d4

; ----------------------------------------------------------------------
; DATOS leido_A1D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1d5..0xa1d6  (1 bytes)
DATA_leido_A1D5:
	defb 0d7h	; a1d5

; ----------------------------------------------------------------------
; DATOS leido_A1D6: 2 bytes que leen p10:6E87, p10:6E8C al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E87, p10:6E8C (2 bytes)
;   0xa1d6..0xa1d8  (2 bytes)
DATA_leido_A1D6:
	defb 002h,001h	; a1d6

; ----------------------------------------------------------------------
; DATOS leido_A1D8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1d8..0xa1d9  (1 bytes)
DATA_leido_A1D8:
	defb 0f9h	; a1d8

; ----------------------------------------------------------------------
; DATOS leido_A1D9: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa1d9..0xa1db  (2 bytes)
DATA_leido_A1D9:
	defb 01fh,0a4h	; a1d9

; ----------------------------------------------------------------------
; DATOS leido_A1DB: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa1db..0xa1dd  (2 bytes)
DATA_leido_A1DB:
	defb 00bh,0ebh	; a1db

; ----------------------------------------------------------------------
; DATOS leido_A1DD: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa1dd..0xa1de  (1 bytes)
DATA_leido_A1DD:
	defb 002h	; a1dd

; ----------------------------------------------------------------------
; DATOS leido_A1DE: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa1de..0xa1df  (1 bytes)
DATA_leido_A1DE:
	defb 070h	; a1de

; ----------------------------------------------------------------------
; DATOS leido_A1DF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1df..0xa1e0  (1 bytes)
DATA_leido_A1DF:
	defb 0f8h	; a1df

; ----------------------------------------------------------------------
; DATOS leido_A1E0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa1e0..0xa1e1  (1 bytes)
DATA_leido_A1E0:
	defb 00dh	; a1e0

; ----------------------------------------------------------------------
; DATOS leido_A1E1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1e1..0xa1e2  (1 bytes)
DATA_leido_A1E1:
	defb 0eah	; a1e1

; ----------------------------------------------------------------------
; DATOS leido_A1E2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa1e2..0xa1e3  (1 bytes)
DATA_leido_A1E2:
	defb 00ah	; a1e2

; ----------------------------------------------------------------------
; DATOS leido_A1E3: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa1e3..0xa1ec  (9 bytes)
DATA_leido_A1E3:
	defb 0d4h,071h,0d3h,001h,011h,001h,011h,061h,0f8h	; a1e3  .q.....a.

; ----------------------------------------------------------------------
; DATOS leido_A1EC: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa1ec..0xa1ed  (1 bytes)
DATA_leido_A1EC:
	defb 002h	; a1ec

; ----------------------------------------------------------------------
; DATOS leido_A1ED: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1ed..0xa1ee  (1 bytes)
DATA_leido_A1ED:
	defb 0ebh	; a1ed

; ----------------------------------------------------------------------
; DATOS leido_A1EE: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa1ee..0xa1ef  (1 bytes)
DATA_leido_A1EE:
	defb 004h	; a1ee

; ----------------------------------------------------------------------
; DATOS leido_A1EF: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa1ef..0xa1f0  (1 bytes)
DATA_leido_A1EF:
	defb 040h	; a1ef

; ----------------------------------------------------------------------
; DATOS leido_A1F0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1f0..0xa1f1  (1 bytes)
DATA_leido_A1F0:
	defb 0eah	; a1f0

; ----------------------------------------------------------------------
; DATOS leido_A1F1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa1f1..0xa1f2  (1 bytes)
DATA_leido_A1F1:
	defb 009h	; a1f1

; ----------------------------------------------------------------------
; DATOS leido_A1F2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1f2..0xa1f3  (1 bytes)
DATA_leido_A1F2:
	defb 0f9h	; a1f2

; ----------------------------------------------------------------------
; DATOS leido_A1F3: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa1f3..0xa1f5  (2 bytes)
DATA_leido_A1F3:
	defb 01fh,0a4h	; a1f3

; ----------------------------------------------------------------------
; DATOS leido_A1F5: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa1f5..0xa1f7  (2 bytes)
DATA_leido_A1F5:
	defb 009h,0f8h	; a1f5

; ----------------------------------------------------------------------
; DATOS leido_A1F7: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa1f7..0xa1f8  (1 bytes)
DATA_leido_A1F7:
	defb 002h	; a1f7

; ----------------------------------------------------------------------
; DATOS leido_A1F8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1f8..0xa1f9  (1 bytes)
DATA_leido_A1F8:
	defb 0ebh	; a1f8

; ----------------------------------------------------------------------
; DATOS leido_A1F9: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa1f9..0xa1fa  (1 bytes)
DATA_leido_A1F9:
	defb 002h	; a1f9

; ----------------------------------------------------------------------
; DATOS leido_A1FA: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa1fa..0xa1fb  (1 bytes)
DATA_leido_A1FA:
	defb 070h	; a1fa

; ----------------------------------------------------------------------
; DATOS leido_A1FB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1fb..0xa1fc  (1 bytes)
DATA_leido_A1FB:
	defb 0eah	; a1fb

; ----------------------------------------------------------------------
; DATOS leido_A1FC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa1fc..0xa1fd  (1 bytes)
DATA_leido_A1FC:
	defb 008h	; a1fc

; ----------------------------------------------------------------------
; DATOS leido_A1FD: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa1fd..0xa206  (9 bytes)
DATA_leido_A1FD:
	defb 031h,021h,011h,001h,0d2h,0b1h,0a1h,091h,0f8h	; a1fd  1!.......

; ----------------------------------------------------------------------
; DATOS leido_A206: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa206..0xa207  (1 bytes)
DATA_leido_A206:
	defb 085h	; a206

; ----------------------------------------------------------------------
; DATOS leido_A207: 1 bytes que lee p10:6D89 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D89 (1 bytes)
;   0xa207..0xa208  (1 bytes)
DATA_leido_A207:
	defb 0c1h	; a207

; ----------------------------------------------------------------------
; DATOS leido_A208: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa208..0xa209  (1 bytes)
DATA_leido_A208:
	defb 0e9h	; a208

; ----------------------------------------------------------------------
; DATOS leido_A209: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa209..0xa20a  (1 bytes)
DATA_leido_A209:
	defb 00ah	; a209

; ----------------------------------------------------------------------
; DATOS leido_A20A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa20a..0xa20b  (1 bytes)
DATA_leido_A20A:
	defb 0ebh	; a20a

; ----------------------------------------------------------------------
; DATOS leido_A20B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa20b..0xa20c  (1 bytes)
DATA_leido_A20B:
	defb 007h	; a20b

; ----------------------------------------------------------------------
; DATOS leido_A20C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa20c..0xa20d  (1 bytes)
DATA_leido_A20C:
	defb 020h	; a20c

; ----------------------------------------------------------------------
; DATOS leido_A20D: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa20d..0xa211  (4 bytes)
DATA_leido_A20D:
	defb 0d4h,08bh,0b9h,0f8h	; a20d

; ----------------------------------------------------------------------
; DATOS leido_A211: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa211..0xa212  (1 bytes)
DATA_leido_A211:
	defb 00dh	; a211

; ----------------------------------------------------------------------
; DATOS leido_A212: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa212..0xa213  (1 bytes)
DATA_leido_A212:
	defb 0e9h	; a212

; ----------------------------------------------------------------------
; DATOS leido_A213: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa213..0xa214  (1 bytes)
DATA_leido_A213:
	defb 005h	; a213

; ----------------------------------------------------------------------
; DATOS leido_A214: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa214..0xa218  (4 bytes)
DATA_leido_A214:
	defb 0d3h,001h,011h,0f8h	; a214

; ----------------------------------------------------------------------
; DATOS leido_A218: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa218..0xa219  (1 bytes)
DATA_leido_A218:
	defb 085h	; a218

; ----------------------------------------------------------------------
; DATOS leido_A219: 1 bytes que lee p10:6D89 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D89 (1 bytes)
;   0xa219..0xa21a  (1 bytes)
DATA_leido_A219:
	defb 0c3h	; a219

; ----------------------------------------------------------------------
; DATOS leido_A21A: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa21a..0xa21e  (4 bytes)
DATA_leido_A21A:
	defb 02bh,03bh,04bh,0f8h	; a21a

; ----------------------------------------------------------------------
; DATOS leido_A21E: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa21e..0xa21f  (1 bytes)
DATA_leido_A21E:
	defb 085h	; a21e

; ----------------------------------------------------------------------
; DATOS leido_A21F: 1 bytes que lee p10:6D89 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D89 (1 bytes)
;   0xa21f..0xa220  (1 bytes)
DATA_leido_A21F:
	defb 0c4h	; a21f

; ----------------------------------------------------------------------
; DATOS leido_A220: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa220..0xa224  (4 bytes)
DATA_leido_A220:
	defb 053h,063h,073h,0f8h	; a220

; ----------------------------------------------------------------------
; DATOS leido_A224: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa224..0xa225  (1 bytes)
DATA_leido_A224:
	defb 02ah	; a224

; ----------------------------------------------------------------------
; DATOS leido_A225: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa225..0xa226  (1 bytes)
DATA_leido_A225:
	defb 0f2h	; a225

; ----------------------------------------------------------------------
; DATOS leido_A226: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa226..0xa227  (1 bytes)
DATA_leido_A226:
	defb 020h	; a226

; ----------------------------------------------------------------------
; DATOS leido_A227: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa227..0xa228  (1 bytes)
DATA_leido_A227:
	defb 0f1h	; a227

; ----------------------------------------------------------------------
; DATOS leido_A228: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa228..0xa229  (1 bytes)
DATA_leido_A228:
	defb 042h	; a228

; ----------------------------------------------------------------------
; DATOS leido_A229: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa229..0xa22a  (1 bytes)
DATA_leido_A229:
	defb 0e9h	; a229

; ----------------------------------------------------------------------
; DATOS leido_A22A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa22a..0xa22b  (1 bytes)
DATA_leido_A22A:
	defb 005h	; a22a

; ----------------------------------------------------------------------
; DATOS leido_A22B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa22b..0xa22c  (1 bytes)
DATA_leido_A22B:
	defb 0eah	; a22b

; ----------------------------------------------------------------------
; DATOS leido_A22C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa22c..0xa22d  (1 bytes)
DATA_leido_A22C:
	defb 005h	; a22c

; ----------------------------------------------------------------------
; DATOS leido_A22D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa22d..0xa22e  (1 bytes)
DATA_leido_A22D:
	defb 0dbh	; a22d

; ----------------------------------------------------------------------
; DATOS leido_A22E: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa22e..0xa22f  (1 bytes)
DATA_leido_A22E:
	defb 001h	; a22e

; ----------------------------------------------------------------------
; DATOS leido_A22F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa22f..0xa230  (1 bytes)
DATA_leido_A22F:
	defb 0ebh	; a22f

; ----------------------------------------------------------------------
; DATOS leido_A230: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa230..0xa231  (1 bytes)
DATA_leido_A230:
	defb 009h	; a230

; ----------------------------------------------------------------------
; DATOS leido_A231: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa231..0xa232  (1 bytes)
DATA_leido_A231:
	defb 080h	; a231

; ----------------------------------------------------------------------
; DATOS leido_A232: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa232..0xa235  (3 bytes)
DATA_leido_A232:
	defb 0d1h,000h,0eah	; a232

; ----------------------------------------------------------------------
; DATOS leido_A235: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa235..0xa236  (1 bytes)
DATA_leido_A235:
	defb 001h	; a235

; ----------------------------------------------------------------------
; DATOS leido_A236: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa236..0xa239  (3 bytes)
DATA_leido_A236:
	defb 0d0h,000h,0eah	; a236

; ----------------------------------------------------------------------
; DATOS leido_A239: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa239..0xa23a  (1 bytes)
DATA_leido_A239:
	defb 005h	; a239

; ----------------------------------------------------------------------
; DATOS leido_A23A: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa23a..0xa245  (11 bytes)
DATA_leido_A23A:
	defb 0d1h,001h,0d2h,001h,0d1h,001h,0d2h,001h,0d1h,001h,0fbh	; a23a  ...........

; ----------------------------------------------------------------------
; DATOS leido_A245: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa245..0xa248  (3 bytes)
DATA_leido_A245:
	defb 008h,032h,0a2h	; a245

; ----------------------------------------------------------------------
; DATOS leido_A248: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa248..0xa24a  (2 bytes)
DATA_leido_A248:
	defb 0dch,0f8h	; a248

; ----------------------------------------------------------------------
; DATOS leido_A24A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa24a..0xa24b  (1 bytes)
DATA_leido_A24A:
	defb 002h	; a24a

; ----------------------------------------------------------------------
; DATOS leido_A24B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa24b..0xa24c  (1 bytes)
DATA_leido_A24B:
	defb 0e9h	; a24b

; ----------------------------------------------------------------------
; DATOS leido_A24C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa24c..0xa24d  (1 bytes)
DATA_leido_A24C:
	defb 014h	; a24c

; ----------------------------------------------------------------------
; DATOS leido_A24D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa24d..0xa24e  (1 bytes)
DATA_leido_A24D:
	defb 0f1h	; a24d

; ----------------------------------------------------------------------
; DATOS leido_A24E: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa24e..0xa24f  (1 bytes)
DATA_leido_A24E:
	defb 041h	; a24e

; ----------------------------------------------------------------------
; DATOS leido_A24F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa24f..0xa250  (1 bytes)
DATA_leido_A24F:
	defb 0f2h	; a24f

; ----------------------------------------------------------------------
; DATOS leido_A250: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa250..0xa251  (1 bytes)
DATA_leido_A250:
	defb 030h	; a250

; ----------------------------------------------------------------------
; DATOS leido_A251: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa251..0xa252  (1 bytes)
DATA_leido_A251:
	defb 0ebh	; a251

; ----------------------------------------------------------------------
; DATOS leido_A252: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa252..0xa253  (1 bytes)
DATA_leido_A252:
	defb 087h	; a252

; ----------------------------------------------------------------------
; DATOS leido_A253: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa253..0xa254  (1 bytes)
DATA_leido_A253:
	defb 010h	; a253

; ----------------------------------------------------------------------
; DATOS leido_A254: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa254..0xa255  (1 bytes)
DATA_leido_A254:
	defb 0eah	; a254

; ----------------------------------------------------------------------
; DATOS leido_A255: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa255..0xa256  (1 bytes)
DATA_leido_A255:
	defb 007h	; a255

; ----------------------------------------------------------------------
; DATOS leido_A256: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa256..0xa25a  (4 bytes)
DATA_leido_A256:
	defb 0d0h,009h,0ech,0eah	; a256

; ----------------------------------------------------------------------
; DATOS leido_A25A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa25a..0xa25b  (1 bytes)
DATA_leido_A25A:
	defb 002h	; a25a

; ----------------------------------------------------------------------
; DATOS leido_A25B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa25b..0xa25d  (2 bytes)
DATA_leido_A25B:
	defb 000h,0eah	; a25b

; ----------------------------------------------------------------------
; DATOS leido_A25D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa25d..0xa25e  (1 bytes)
DATA_leido_A25D:
	defb 001h	; a25d

; ----------------------------------------------------------------------
; DATOS leido_A25E: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa25e..0xa260  (2 bytes)
DATA_leido_A25E:
	defb 000h,0fdh	; a25e

; ----------------------------------------------------------------------
; DATOS leido_A260: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa260..0xa262  (2 bytes)
DATA_leido_A260:
	defb 0c8h,0a1h	; a260

; ----------------------------------------------------------------------
; DATOS leido_A262: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa262..0xa263  (1 bytes)
DATA_leido_A262:
	defb 0feh	; a262

; ----------------------------------------------------------------------
; DATOS leido_A263: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa263..0xa264  (1 bytes)
DATA_leido_A263:
	defb 001h	; a263

; ----------------------------------------------------------------------
; DATOS leido_A264: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa264..0xa265  (1 bytes)
DATA_leido_A264:
	defb 0f8h	; a264

; ----------------------------------------------------------------------
; DATOS leido_A265: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa265..0xa266  (1 bytes)
DATA_leido_A265:
	defb 00ah	; a265

; ----------------------------------------------------------------------
; DATOS leido_A266: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa266..0xa267  (1 bytes)
DATA_leido_A266:
	defb 0f2h	; a266

; ----------------------------------------------------------------------
; DATOS leido_A267: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa267..0xa268  (1 bytes)
DATA_leido_A267:
	defb 01ah	; a267

; ----------------------------------------------------------------------
; DATOS leido_A268: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa268..0xa269  (1 bytes)
DATA_leido_A268:
	defb 0f1h	; a268

; ----------------------------------------------------------------------
; DATOS leido_A269: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa269..0xa26a  (1 bytes)
DATA_leido_A269:
	defb 063h	; a269

; ----------------------------------------------------------------------
; DATOS leido_A26A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa26a..0xa26b  (1 bytes)
DATA_leido_A26A:
	defb 0e9h	; a26a

; ----------------------------------------------------------------------
; DATOS leido_A26B: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa26b..0xa26c  (1 bytes)
DATA_leido_A26B:
	defb 005h	; a26b

; ----------------------------------------------------------------------
; DATOS leido_A26C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa26c..0xa26d  (1 bytes)
DATA_leido_A26C:
	defb 0eah	; a26c

; ----------------------------------------------------------------------
; DATOS leido_A26D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa26d..0xa26e  (1 bytes)
DATA_leido_A26D:
	defb 00ah	; a26d

; ----------------------------------------------------------------------
; DATOS leido_A26E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa26e..0xa26f  (1 bytes)
DATA_leido_A26E:
	defb 0dbh	; a26e

; ----------------------------------------------------------------------
; DATOS leido_A26F: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa26f..0xa270  (1 bytes)
DATA_leido_A26F:
	defb 001h	; a26f

; ----------------------------------------------------------------------
; DATOS leido_A270: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa270..0xa271  (1 bytes)
DATA_leido_A270:
	defb 0ebh	; a270

; ----------------------------------------------------------------------
; DATOS leido_A271: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa271..0xa272  (1 bytes)
DATA_leido_A271:
	defb 006h	; a271

; ----------------------------------------------------------------------
; DATOS leido_A272: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa272..0xa273  (1 bytes)
DATA_leido_A272:
	defb 040h	; a272

; ----------------------------------------------------------------------
; DATOS leido_A273: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa273..0xa274  (1 bytes)
DATA_leido_A273:
	defb 0d6h	; a273

; ----------------------------------------------------------------------
; DATOS leido_A274: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa274..0xa276  (2 bytes)
DATA_leido_A274:
	defb 001h,001h	; a274

; ----------------------------------------------------------------------
; DATOS leido_A276: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa276..0xa27b  (5 bytes)
DATA_leido_A276:
	defb 0d2h,03bh,05bh,069h,0ebh	; a276

; ----------------------------------------------------------------------
; DATOS leido_A27B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa27b..0xa27c  (1 bytes)
DATA_leido_A27B:
	defb 011h	; a27b

; ----------------------------------------------------------------------
; DATOS leido_A27C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa27c..0xa27d  (1 bytes)
DATA_leido_A27C:
	defb 070h	; a27c

; ----------------------------------------------------------------------
; DATOS leido_A27D: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa27d..0xa285  (8 bytes)
DATA_leido_A27D:
	defb 071h,081h,071h,0a1h,091h,081h,071h,0ebh	; a27d  q.q...q.

; ----------------------------------------------------------------------
; DATOS leido_A285: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa285..0xa286  (1 bytes)
DATA_leido_A285:
	defb 006h	; a285

; ----------------------------------------------------------------------
; DATOS leido_A286: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa286..0xa287  (1 bytes)
DATA_leido_A286:
	defb 040h	; a286

; ----------------------------------------------------------------------
; DATOS leido_A287: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa287..0xa28b  (4 bytes)
DATA_leido_A287:
	defb 03bh,05bh,069h,0eah	; a287

; ----------------------------------------------------------------------
; DATOS leido_A28B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa28b..0xa28c  (1 bytes)
DATA_leido_A28B:
	defb 00bh	; a28b

; ----------------------------------------------------------------------
; DATOS leido_A28C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa28c..0xa28d  (1 bytes)
DATA_leido_A28C:
	defb 0ebh	; a28c

; ----------------------------------------------------------------------
; DATOS leido_A28D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa28d..0xa28e  (1 bytes)
DATA_leido_A28D:
	defb 042h	; a28d

; ----------------------------------------------------------------------
; DATOS leido_A28E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa28e..0xa28f  (1 bytes)
DATA_leido_A28E:
	defb 070h	; a28e

; ----------------------------------------------------------------------
; DATOS leido_A28F: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa28f..0xa298  (9 bytes)
DATA_leido_A28F:
	defb 071h,071h,061h,091h,081h,0b1h,0a1h,0d8h,0f8h	; a28f  qqa......

; ----------------------------------------------------------------------
; DATOS leido_A298: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa298..0xa299  (1 bytes)
DATA_leido_A298:
	defb 009h	; a298

; ----------------------------------------------------------------------
; DATOS leido_A299: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa299..0xa29a  (1 bytes)
DATA_leido_A299:
	defb 0f2h	; a299

; ----------------------------------------------------------------------
; DATOS leido_A29A: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa29a..0xa29b  (1 bytes)
DATA_leido_A29A:
	defb 01ah	; a29a

; ----------------------------------------------------------------------
; DATOS leido_A29B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa29b..0xa29c  (1 bytes)
DATA_leido_A29B:
	defb 0f1h	; a29b

; ----------------------------------------------------------------------
; DATOS leido_A29C: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa29c..0xa29d  (1 bytes)
DATA_leido_A29C:
	defb 068h	; a29c

; ----------------------------------------------------------------------
; DATOS leido_A29D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa29d..0xa29e  (1 bytes)
DATA_leido_A29D:
	defb 0eah	; a29d

; ----------------------------------------------------------------------
; DATOS leido_A29E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa29e..0xa29f  (1 bytes)
DATA_leido_A29E:
	defb 00bh	; a29e

; ----------------------------------------------------------------------
; DATOS leido_A29F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa29f..0xa2a0  (1 bytes)
DATA_leido_A29F:
	defb 0f9h	; a29f

; ----------------------------------------------------------------------
; DATOS leido_A2A0: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa2a0..0xa2a2  (2 bytes)
DATA_leido_A2A0:
	defb 073h,0a4h	; a2a0

; ----------------------------------------------------------------------
; DATOS leido_A2A2: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa2a2..0xa2a4  (2 bytes)
DATA_leido_A2A2:
	defb 02bh,0ebh	; a2a2

; ----------------------------------------------------------------------
; DATOS leido_A2A4: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa2a4..0xa2a5  (1 bytes)
DATA_leido_A2A4:
	defb 001h	; a2a4

; ----------------------------------------------------------------------
; DATOS leido_A2A5: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa2a5..0xa2a6  (1 bytes)
DATA_leido_A2A5:
	defb 070h	; a2a5

; ----------------------------------------------------------------------
; DATOS leido_A2A6: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa2a6..0xa2af  (9 bytes)
DATA_leido_A2A6:
	defb 0d3h,001h,061h,071h,061h,071h,0d2h,011h,0f9h	; a2a6  ..aqaq...

; ----------------------------------------------------------------------
; DATOS leido_A2AF: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa2af..0xa2b1  (2 bytes)
DATA_leido_A2AF:
	defb 073h,0a4h	; a2af

; ----------------------------------------------------------------------
; DATOS leido_A2B1: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa2b1..0xa2b3  (2 bytes)
DATA_leido_A2B1:
	defb 029h,0ebh	; a2b1

; ----------------------------------------------------------------------
; DATOS leido_A2B3: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa2b3..0xa2b4  (1 bytes)
DATA_leido_A2B3:
	defb 001h	; a2b3

; ----------------------------------------------------------------------
; DATOS leido_A2B4: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa2b4..0xa2b5  (1 bytes)
DATA_leido_A2B4:
	defb 070h	; a2b4

; ----------------------------------------------------------------------
; DATOS leido_A2B5: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa2b5..0xa2bd  (8 bytes)
DATA_leido_A2B5:
	defb 0a1h,091h,081h,071h,061h,051h,041h,0f8h	; a2b5  ...qaQA.

; ----------------------------------------------------------------------
; DATOS leido_A2BD: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa2bd..0xa2be  (1 bytes)
DATA_leido_A2BD:
	defb 00ah	; a2bd

; ----------------------------------------------------------------------
; DATOS leido_A2BE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2be..0xa2bf  (1 bytes)
DATA_leido_A2BE:
	defb 0dbh	; a2be

; ----------------------------------------------------------------------
; DATOS leido_A2BF: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa2bf..0xa2c0  (1 bytes)
DATA_leido_A2BF:
	defb 003h	; a2bf

; ----------------------------------------------------------------------
; DATOS leido_A2C0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2c0..0xa2c1  (1 bytes)
DATA_leido_A2C0:
	defb 0ebh	; a2c0

; ----------------------------------------------------------------------
; DATOS leido_A2C1: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa2c1..0xa2c2  (1 bytes)
DATA_leido_A2C1:
	defb 024h	; a2c1

; ----------------------------------------------------------------------
; DATOS leido_A2C2: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa2c2..0xa2c3  (1 bytes)
DATA_leido_A2C2:
	defb 070h	; a2c2

; ----------------------------------------------------------------------
; DATOS leido_A2C3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2c3..0xa2c4  (1 bytes)
DATA_leido_A2C3:
	defb 0d6h	; a2c3

; ----------------------------------------------------------------------
; DATOS leido_A2C4: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa2c4..0xa2c6  (2 bytes)
DATA_leido_A2C4:
	defb 002h,001h	; a2c4

; ----------------------------------------------------------------------
; DATOS leido_A2C6: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xa2c6..0xa2d0  (10 bytes)
DATA_leido_A2C6:
	defb 0d2h,035h,025h,065h,055h,065h,055h,095h,085h,0f8h	; a2c6  .5%eUeU...

; ----------------------------------------------------------------------
; DATOS leido_A2D0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa2d0..0xa2d1  (1 bytes)
DATA_leido_A2D0:
	defb 00bh	; a2d0

; ----------------------------------------------------------------------
; DATOS leido_A2D1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2d1..0xa2d2  (1 bytes)
DATA_leido_A2D1:
	defb 0eah	; a2d1

; ----------------------------------------------------------------------
; DATOS leido_A2D2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa2d2..0xa2d3  (1 bytes)
DATA_leido_A2D2:
	defb 009h	; a2d2

; ----------------------------------------------------------------------
; DATOS leido_A2D3: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa2d3..0xa2d5  (2 bytes)
DATA_leido_A2D3:
	defb 0d8h,0ebh	; a2d3

; ----------------------------------------------------------------------
; DATOS leido_A2D5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa2d5..0xa2d6  (1 bytes)
DATA_leido_A2D5:
	defb 021h	; a2d5

; ----------------------------------------------------------------------
; DATOS leido_A2D6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa2d6..0xa2d7  (1 bytes)
DATA_leido_A2D6:
	defb 070h	; a2d6

; ----------------------------------------------------------------------
; DATOS leido_A2D7: 23 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (23 bytes)
;   0xa2d7..0xa2ee  (23 bytes)
DATA_leido_A2D7:
	defb 091h,071h,021h,091h,071h,021h,0a1h,081h,031h,0a1h,081h,031h,0b1h,091h,041h,0b1h	; a2d7  .q!.q!..1..1..A.
	defb 091h,041h,0d1h,003h,013h,023h,0f8h	; a2e7

; ----------------------------------------------------------------------
; DATOS leido_A2EE: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa2ee..0xa2ef  (1 bytes)
DATA_leido_A2EE:
	defb 002h	; a2ee

; ----------------------------------------------------------------------
; DATOS leido_A2EF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2ef..0xa2f0  (1 bytes)
DATA_leido_A2EF:
	defb 0f2h	; a2ef

; ----------------------------------------------------------------------
; DATOS leido_A2F0: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa2f0..0xa2f1  (1 bytes)
DATA_leido_A2F0:
	defb 020h	; a2f0

; ----------------------------------------------------------------------
; DATOS leido_A2F1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2f1..0xa2f2  (1 bytes)
DATA_leido_A2F1:
	defb 0f1h	; a2f1

; ----------------------------------------------------------------------
; DATOS leido_A2F2: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa2f2..0xa2f3  (1 bytes)
DATA_leido_A2F2:
	defb 043h	; a2f2

; ----------------------------------------------------------------------
; DATOS leido_A2F3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2f3..0xa2f4  (1 bytes)
DATA_leido_A2F3:
	defb 0eah	; a2f3

; ----------------------------------------------------------------------
; DATOS leido_A2F4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa2f4..0xa2f5  (1 bytes)
DATA_leido_A2F4:
	defb 00ah	; a2f4

; ----------------------------------------------------------------------
; DATOS leido_A2F5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2f5..0xa2f6  (1 bytes)
DATA_leido_A2F5:
	defb 0ebh	; a2f5

; ----------------------------------------------------------------------
; DATOS leido_A2F6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa2f6..0xa2f7  (1 bytes)
DATA_leido_A2F6:
	defb 036h	; a2f6

; ----------------------------------------------------------------------
; DATOS leido_A2F7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa2f7..0xa2f8  (1 bytes)
DATA_leido_A2F7:
	defb 030h	; a2f7

; ----------------------------------------------------------------------
; DATOS leido_A2F8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2f8..0xa2f9  (1 bytes)
DATA_leido_A2F8:
	defb 0f9h	; a2f8

; ----------------------------------------------------------------------
; DATOS leido_A2F9: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa2f9..0xa2fb  (2 bytes)
DATA_leido_A2F9:
	defb 03eh,0a4h	; a2f9

; ----------------------------------------------------------------------
; DATOS leido_A2FB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2fb..0xa2fc  (1 bytes)
DATA_leido_A2FB:
	defb 0f8h	; a2fb

; ----------------------------------------------------------------------
; DATOS leido_A2FC: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa2fc..0xa2fd  (1 bytes)
DATA_leido_A2FC:
	defb 00bh	; a2fc

; ----------------------------------------------------------------------
; DATOS leido_A2FD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2fd..0xa2fe  (1 bytes)
DATA_leido_A2FD:
	defb 0eah	; a2fd

; ----------------------------------------------------------------------
; DATOS leido_A2FE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa2fe..0xa2ff  (1 bytes)
DATA_leido_A2FE:
	defb 007h	; a2fe

; ----------------------------------------------------------------------
; DATOS leido_A2FF: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa2ff..0xa301  (2 bytes)
DATA_leido_A2FF:
	defb 0d8h,0ebh	; a2ff

; ----------------------------------------------------------------------
; DATOS leido_A301: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa301..0xa302  (1 bytes)
DATA_leido_A301:
	defb 001h	; a301

; ----------------------------------------------------------------------
; DATOS leido_A302: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa302..0xa303  (1 bytes)
DATA_leido_A302:
	defb 080h	; a302

; ----------------------------------------------------------------------
; DATOS leido_A303: 27 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (27 bytes)
;   0xa303..0xa31e  (27 bytes)
DATA_leido_A303:
	defb 0d1h,071h,031h,001h,071h,031h,001h,091h,061h,021h,091h,061h,021h,0a1h,071h,031h	; a303  .q1.q1..a!.a!.q1
	defb 0a1h,071h,031h,091h,051h,021h,0d2h,091h,061h,021h,0fdh	; a313  .q1.Q!..a!.

; ----------------------------------------------------------------------
; DATOS leido_A31E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa31e..0xa320  (2 bytes)
DATA_leido_A31E:
	defb 097h,0a2h	; a31e

; ----------------------------------------------------------------------
; DATOS leido_A320: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa320..0xa321  (1 bytes)
DATA_leido_A320:
	defb 0feh	; a320

; ----------------------------------------------------------------------
; DATOS leido_A321: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa321..0xa322  (1 bytes)
DATA_leido_A321:
	defb 001h	; a321

; ----------------------------------------------------------------------
; DATOS leido_A322: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa322..0xa323  (1 bytes)
DATA_leido_A322:
	defb 0f8h	; a322

; ----------------------------------------------------------------------
; DATOS leido_A323: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa323..0xa324  (1 bytes)
DATA_leido_A323:
	defb 00ah	; a323

; ----------------------------------------------------------------------
; DATOS leido_A324: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa324..0xa325  (1 bytes)
DATA_leido_A324:
	defb 0f2h	; a324

; ----------------------------------------------------------------------
; DATOS leido_A325: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa325..0xa326  (1 bytes)
DATA_leido_A325:
	defb 01ah	; a325

; ----------------------------------------------------------------------
; DATOS leido_A326: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa326..0xa327  (1 bytes)
DATA_leido_A326:
	defb 0f1h	; a326

; ----------------------------------------------------------------------
; DATOS leido_A327: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa327..0xa328  (1 bytes)
DATA_leido_A327:
	defb 063h	; a327

; ----------------------------------------------------------------------
; DATOS leido_A328: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa328..0xa329  (1 bytes)
DATA_leido_A328:
	defb 0e9h	; a328

; ----------------------------------------------------------------------
; DATOS leido_A329: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa329..0xa32a  (1 bytes)
DATA_leido_A329:
	defb 005h	; a329

; ----------------------------------------------------------------------
; DATOS leido_A32A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa32a..0xa32b  (1 bytes)
DATA_leido_A32A:
	defb 0eah	; a32a

; ----------------------------------------------------------------------
; DATOS leido_A32B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa32b..0xa32c  (1 bytes)
DATA_leido_A32B:
	defb 00ah	; a32b

; ----------------------------------------------------------------------
; DATOS leido_A32C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa32c..0xa32d  (1 bytes)
DATA_leido_A32C:
	defb 0dbh	; a32c

; ----------------------------------------------------------------------
; DATOS leido_A32D: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa32d..0xa32e  (1 bytes)
DATA_leido_A32D:
	defb 001h	; a32d

; ----------------------------------------------------------------------
; DATOS leido_A32E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa32e..0xa32f  (1 bytes)
DATA_leido_A32E:
	defb 0ebh	; a32e

; ----------------------------------------------------------------------
; DATOS leido_A32F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa32f..0xa330  (1 bytes)
DATA_leido_A32F:
	defb 006h	; a32f

; ----------------------------------------------------------------------
; DATOS leido_A330: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa330..0xa331  (1 bytes)
DATA_leido_A330:
	defb 040h	; a330

; ----------------------------------------------------------------------
; DATOS leido_A331: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa331..0xa332  (1 bytes)
DATA_leido_A331:
	defb 0d6h	; a331

; ----------------------------------------------------------------------
; DATOS leido_A332: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa332..0xa334  (2 bytes)
DATA_leido_A332:
	defb 001h,001h	; a332

; ----------------------------------------------------------------------
; DATOS leido_A334: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa334..0xa33a  (6 bytes)
DATA_leido_A334:
	defb 0d3h,0abh,0d2h,00bh,019h,0ebh	; a334

; ----------------------------------------------------------------------
; DATOS leido_A33A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa33a..0xa33b  (1 bytes)
DATA_leido_A33A:
	defb 011h	; a33a

; ----------------------------------------------------------------------
; DATOS leido_A33B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa33b..0xa33c  (1 bytes)
DATA_leido_A33B:
	defb 070h	; a33b

; ----------------------------------------------------------------------
; DATOS leido_A33C: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa33c..0xa344  (8 bytes)
DATA_leido_A33C:
	defb 021h,031h,021h,051h,041h,031h,021h,0ebh	; a33c  !1!QA1!.

; ----------------------------------------------------------------------
; DATOS leido_A344: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa344..0xa345  (1 bytes)
DATA_leido_A344:
	defb 006h	; a344

; ----------------------------------------------------------------------
; DATOS leido_A345: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa345..0xa346  (1 bytes)
DATA_leido_A345:
	defb 040h	; a345

; ----------------------------------------------------------------------
; DATOS leido_A346: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa346..0xa34c  (6 bytes)
DATA_leido_A346:
	defb 0d3h,0abh,0d2h,00bh,019h,0eah	; a346

; ----------------------------------------------------------------------
; DATOS leido_A34C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa34c..0xa34d  (1 bytes)
DATA_leido_A34C:
	defb 00bh	; a34c

; ----------------------------------------------------------------------
; DATOS leido_A34D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa34d..0xa34e  (1 bytes)
DATA_leido_A34D:
	defb 0ebh	; a34d

; ----------------------------------------------------------------------
; DATOS leido_A34E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa34e..0xa34f  (1 bytes)
DATA_leido_A34E:
	defb 032h	; a34e

; ----------------------------------------------------------------------
; DATOS leido_A34F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa34f..0xa350  (1 bytes)
DATA_leido_A34F:
	defb 070h	; a34f

; ----------------------------------------------------------------------
; DATOS leido_A350: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xa350..0xa35a  (10 bytes)
DATA_leido_A350:
	defb 021h,021h,011h,041h,031h,061h,051h,0f0h,0d8h,0f8h	; a350  !!.A1aQ...

; ----------------------------------------------------------------------
; DATOS leido_A35A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa35a..0xa35b  (1 bytes)
DATA_leido_A35A:
	defb 009h	; a35a

; ----------------------------------------------------------------------
; DATOS leido_A35B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa35b..0xa35c  (1 bytes)
DATA_leido_A35B:
	defb 0f2h	; a35b

; ----------------------------------------------------------------------
; DATOS leido_A35C: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa35c..0xa35d  (1 bytes)
DATA_leido_A35C:
	defb 01ah	; a35c

; ----------------------------------------------------------------------
; DATOS leido_A35D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa35d..0xa35e  (1 bytes)
DATA_leido_A35D:
	defb 0f1h	; a35d

; ----------------------------------------------------------------------
; DATOS leido_A35E: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa35e..0xa35f  (1 bytes)
DATA_leido_A35E:
	defb 068h	; a35e

; ----------------------------------------------------------------------
; DATOS leido_A35F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa35f..0xa360  (1 bytes)
DATA_leido_A35F:
	defb 0eah	; a35f

; ----------------------------------------------------------------------
; DATOS leido_A360: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa360..0xa361  (1 bytes)
DATA_leido_A360:
	defb 00ah	; a360

; ----------------------------------------------------------------------
; DATOS leido_A361: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa361..0xa362  (1 bytes)
DATA_leido_A361:
	defb 0f9h	; a361

; ----------------------------------------------------------------------
; DATOS leido_A362: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa362..0xa364  (2 bytes)
DATA_leido_A362:
	defb 087h,0a4h	; a362

; ----------------------------------------------------------------------
; DATOS leido_A364: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa364..0xa366  (2 bytes)
DATA_leido_A364:
	defb 09bh,0ebh	; a364

; ----------------------------------------------------------------------
; DATOS leido_A366: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa366..0xa367  (1 bytes)
DATA_leido_A366:
	defb 002h	; a366

; ----------------------------------------------------------------------
; DATOS leido_A367: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa367..0xa368  (1 bytes)
DATA_leido_A367:
	defb 070h	; a367

; ----------------------------------------------------------------------
; DATOS leido_A368: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa368..0xa371  (9 bytes)
DATA_leido_A368:
	defb 0d4h,001h,061h,071h,061h,071h,0d3h,011h,0f9h	; a368  ..aqaq...

; ----------------------------------------------------------------------
; DATOS leido_A371: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa371..0xa373  (2 bytes)
DATA_leido_A371:
	defb 087h,0a4h	; a371

; ----------------------------------------------------------------------
; DATOS leido_A373: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa373..0xa375  (2 bytes)
DATA_leido_A373:
	defb 099h,0ebh	; a373

; ----------------------------------------------------------------------
; DATOS leido_A375: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa375..0xa376  (1 bytes)
DATA_leido_A375:
	defb 002h	; a375

; ----------------------------------------------------------------------
; DATOS leido_A376: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa376..0xa377  (1 bytes)
DATA_leido_A376:
	defb 070h	; a376

; ----------------------------------------------------------------------
; DATOS leido_A377: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xa377..0xa381  (10 bytes)
DATA_leido_A377:
	defb 0d2h,051h,041h,031h,021h,011h,001h,0d3h,0b1h,0f8h	; a377  .QA1!.....

; ----------------------------------------------------------------------
; DATOS leido_A381: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa381..0xa382  (1 bytes)
DATA_leido_A381:
	defb 00ah	; a381

; ----------------------------------------------------------------------
; DATOS leido_A382: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa382..0xa383  (1 bytes)
DATA_leido_A382:
	defb 0eah	; a382

; ----------------------------------------------------------------------
; DATOS leido_A383: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa383..0xa384  (1 bytes)
DATA_leido_A383:
	defb 00bh	; a383

; ----------------------------------------------------------------------
; DATOS leido_A384: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa384..0xa385  (1 bytes)
DATA_leido_A384:
	defb 0dbh	; a384

; ----------------------------------------------------------------------
; DATOS leido_A385: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa385..0xa386  (1 bytes)
DATA_leido_A385:
	defb 003h	; a385

; ----------------------------------------------------------------------
; DATOS leido_A386: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa386..0xa387  (1 bytes)
DATA_leido_A386:
	defb 0ebh	; a386

; ----------------------------------------------------------------------
; DATOS leido_A387: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa387..0xa388  (1 bytes)
DATA_leido_A387:
	defb 024h	; a387

; ----------------------------------------------------------------------
; DATOS leido_A388: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa388..0xa389  (1 bytes)
DATA_leido_A388:
	defb 070h	; a388

; ----------------------------------------------------------------------
; DATOS leido_A389: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa389..0xa38a  (1 bytes)
DATA_leido_A389:
	defb 0d6h	; a389

; ----------------------------------------------------------------------
; DATOS leido_A38A: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa38a..0xa38c  (2 bytes)
DATA_leido_A38A:
	defb 002h,001h	; a38a

; ----------------------------------------------------------------------
; DATOS leido_A38C: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa38c..0xa397  (11 bytes)
DATA_leido_A38C:
	defb 0d3h,0b5h,0a5h,0d2h,025h,015h,025h,015h,055h,045h,0f8h	; a38c  ....%.%.UE.

; ----------------------------------------------------------------------
; DATOS leido_A397: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa397..0xa398  (1 bytes)
DATA_leido_A397:
	defb 00bh	; a397

; ----------------------------------------------------------------------
; DATOS leido_A398: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa398..0xa399  (1 bytes)
DATA_leido_A398:
	defb 0eah	; a398

; ----------------------------------------------------------------------
; DATOS leido_A399: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa399..0xa39a  (1 bytes)
DATA_leido_A399:
	defb 009h	; a399

; ----------------------------------------------------------------------
; DATOS leido_A39A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa39a..0xa39b  (1 bytes)
DATA_leido_A39A:
	defb 0ebh	; a39a

; ----------------------------------------------------------------------
; DATOS leido_A39B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa39b..0xa39c  (1 bytes)
DATA_leido_A39B:
	defb 001h	; a39b

; ----------------------------------------------------------------------
; DATOS leido_A39C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa39c..0xa39d  (1 bytes)
DATA_leido_A39C:
	defb 040h	; a39c

; ----------------------------------------------------------------------
; DATOS leido_A39D: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa39d..0xa3a6  (9 bytes)
DATA_leido_A39D:
	defb 0d3h,09bh,0abh,0bbh,0d3h,003h,013h,023h,0f8h	; a39d  .......#.

; ----------------------------------------------------------------------
; DATOS leido_A3A6: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa3a6..0xa3a7  (1 bytes)
DATA_leido_A3A6:
	defb 002h	; a3a6

; ----------------------------------------------------------------------
; DATOS leido_A3A7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3a7..0xa3a8  (1 bytes)
DATA_leido_A3A7:
	defb 0f2h	; a3a7

; ----------------------------------------------------------------------
; DATOS leido_A3A8: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa3a8..0xa3a9  (1 bytes)
DATA_leido_A3A8:
	defb 020h	; a3a8

; ----------------------------------------------------------------------
; DATOS leido_A3A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3a9..0xa3aa  (1 bytes)
DATA_leido_A3A9:
	defb 0f1h	; a3a9

; ----------------------------------------------------------------------
; DATOS leido_A3AA: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa3aa..0xa3ab  (1 bytes)
DATA_leido_A3AA:
	defb 043h	; a3aa

; ----------------------------------------------------------------------
; DATOS leido_A3AB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3ab..0xa3ac  (1 bytes)
DATA_leido_A3AB:
	defb 0eah	; a3ab

; ----------------------------------------------------------------------
; DATOS leido_A3AC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa3ac..0xa3ad  (1 bytes)
DATA_leido_A3AC:
	defb 00ah	; a3ac

; ----------------------------------------------------------------------
; DATOS leido_A3AD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3ad..0xa3ae  (1 bytes)
DATA_leido_A3AD:
	defb 0ebh	; a3ad

; ----------------------------------------------------------------------
; DATOS leido_A3AE: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa3ae..0xa3af  (1 bytes)
DATA_leido_A3AE:
	defb 036h	; a3ae

; ----------------------------------------------------------------------
; DATOS leido_A3AF: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa3af..0xa3b0  (1 bytes)
DATA_leido_A3AF:
	defb 030h	; a3af

; ----------------------------------------------------------------------
; DATOS leido_A3B0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3b0..0xa3b1  (1 bytes)
DATA_leido_A3B0:
	defb 0f9h	; a3b0

; ----------------------------------------------------------------------
; DATOS leido_A3B1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa3b1..0xa3b3  (2 bytes)
DATA_leido_A3B1:
	defb 064h,0a4h	; a3b1

; ----------------------------------------------------------------------
; DATOS leido_A3B3: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa3b3..0xa3b8  (5 bytes)
DATA_leido_A3B3:
	defb 051h,011h,0d3h,081h,0f9h	; a3b3

; ----------------------------------------------------------------------
; DATOS leido_A3B8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa3b8..0xa3ba  (2 bytes)
DATA_leido_A3B8:
	defb 064h,0a4h	; a3b8

; ----------------------------------------------------------------------
; DATOS leido_A3BA: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa3ba..0xa3c0  (6 bytes)
DATA_leido_A3BA:
	defb 0a1h,0d1h,001h,021h,0d8h,0f8h	; a3ba

; ----------------------------------------------------------------------
; DATOS leido_A3C0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa3c0..0xa3c1  (1 bytes)
DATA_leido_A3C0:
	defb 00bh	; a3c0

; ----------------------------------------------------------------------
; DATOS leido_A3C1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3c1..0xa3c2  (1 bytes)
DATA_leido_A3C1:
	defb 0ebh	; a3c1

; ----------------------------------------------------------------------
; DATOS leido_A3C2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa3c2..0xa3c3  (1 bytes)
DATA_leido_A3C2:
	defb 001h	; a3c2

; ----------------------------------------------------------------------
; DATOS leido_A3C3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa3c3..0xa3c4  (1 bytes)
DATA_leido_A3C3:
	defb 080h	; a3c3

; ----------------------------------------------------------------------
; DATOS leido_A3C4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3c4..0xa3c5  (1 bytes)
DATA_leido_A3C4:
	defb 0eah	; a3c4

; ----------------------------------------------------------------------
; DATOS leido_A3C5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa3c5..0xa3c6  (1 bytes)
DATA_leido_A3C5:
	defb 007h	; a3c5

; ----------------------------------------------------------------------
; DATOS leido_A3C6: 40 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (40 bytes)
;   0xa3c6..0xa3ee  (40 bytes)
DATA_leido_A3C6:
	defb 0d1h,031h,001h,0d2h,071h,0d1h,031h,001h,0d2h,071h,0d1h,061h,021h,0d2h,091h,0d1h	; a3c6  .1..q.1..q.a!...
	defb 061h,021h,0d2h,091h,0d1h,071h,031h,0d2h,071h,0d1h,071h,031h,0d2h,071h,0d1h,061h	; a3d6  a!...q1.q.q1.q.a
	defb 021h,0d2h,091h,061h,021h,0d3h,091h,0fdh	; a3e6  !..a!...

; ----------------------------------------------------------------------
; DATOS leido_A3EE: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa3ee..0xa3f0  (2 bytes)
DATA_leido_A3EE:
	defb 059h,0a3h	; a3ee

; ----------------------------------------------------------------------
; DATOS leido_A3F0: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xa3f0..0xa3fa  (10 bytes)
DATA_leido_A3F0:
	defb 0d4h,001h,001h,0d3h,001h,0d4h,001h,001h,001h,0fbh	; a3f0  ..........

; ----------------------------------------------------------------------
; DATOS leido_A3FA: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa3fa..0xa3fd  (3 bytes)
DATA_leido_A3FA:
	defb 003h,0f0h,0a3h	; a3fa

; ----------------------------------------------------------------------
; DATOS leido_A3FD: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa3fd..0xa403  (6 bytes)
DATA_leido_A3FD:
	defb 0fah,0d4h,001h,0d3h,001h,0fbh	; a3fd

; ----------------------------------------------------------------------
; DATOS leido_A403: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa403..0xa406  (3 bytes)
DATA_leido_A403:
	defb 003h,0feh,0a3h	; a403

; ----------------------------------------------------------------------
; DATOS leido_A406: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa406..0xa40b  (5 bytes)
DATA_leido_A406:
	defb 0d4h,031h,0d3h,031h,0fbh	; a406

; ----------------------------------------------------------------------
; DATOS leido_A40B: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa40b..0xa40e  (3 bytes)
DATA_leido_A40B:
	defb 003h,006h,0a4h	; a40b

; ----------------------------------------------------------------------
; DATOS leido_A40E: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa40e..0xa413  (5 bytes)
DATA_leido_A40E:
	defb 0d4h,021h,0d3h,021h,0fbh	; a40e

; ----------------------------------------------------------------------
; DATOS leido_A413: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa413..0xa416  (3 bytes)
DATA_leido_A413:
	defb 003h,00eh,0a4h	; a413

; ----------------------------------------------------------------------
; DATOS leido_A416: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa416..0xa41b  (5 bytes)
DATA_leido_A416:
	defb 0d4h,011h,0d3h,011h,0fbh	; a416

; ----------------------------------------------------------------------
; DATOS leido_A41B: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa41b..0xa41e  (3 bytes)
DATA_leido_A41B:
	defb 003h,016h,0a4h	; a41b

; ----------------------------------------------------------------------
; DATOS leido_A41E: 86 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (86 bytes)
;   0xa41e..0xa474  (86 bytes)
DATA_leido_A41E:
	defb 0fah,0d2h,075h,051h,061h,071h,083h,0d1h,013h,0d2h,083h,0d1h,008h,0d2h,0b0h,0a0h	; a41e  ..uQaq..........
	defb 090h,085h,0a1h,091h,081h,075h,051h,061h,071h,083h,0d1h,013h,0d2h,083h,0d1h,0fah	; a42e  .....uQaq.......
	defb 0d1h,005h,0d2h,031h,071h,0d1h,001h,033h,023h,003h,067h,021h,030h,040h,055h,011h	; a43e  ...1q..3#.g!0@U.
	defb 0d2h,081h,051h,0d1h,005h,0d2h,031h,071h,0d1h,001h,033h,023h,003h,067h,021h,030h	; a44e  ..Q...1q..3#.g!0
	defb 040h,055h,071h,081h,0a1h,0fah,0d2h,075h,001h,031h,071h,0d1h,003h,0d2h,073h,033h	; a45e  @Uq....u.1q...s3
	defb 097h,062h,070h,085h,0fah,0ddh	; a46e

; ----------------------------------------------------------------------
; DATOS leido_A474: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa474..0xa476  (2 bytes)
DATA_leido_A474:
	defb 086h,043h	; a474

; ----------------------------------------------------------------------
; DATOS leido_A476: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa476..0xa47c  (6 bytes)
DATA_leido_A476:
	defb 0d2h,00bh,01bh,02bh,035h,0ebh	; a476

; ----------------------------------------------------------------------
; DATOS leido_A47C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa47c..0xa47d  (1 bytes)
DATA_leido_A47C:
	defb 002h	; a47c

; ----------------------------------------------------------------------
; DATOS leido_A47D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa47d..0xa47e  (1 bytes)
DATA_leido_A47D:
	defb 070h	; a47d

; ----------------------------------------------------------------------
; DATOS leido_A47E: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa47e..0xa482  (4 bytes)
DATA_leido_A47E:
	defb 051h,041h,031h,0ddh	; a47e

; ----------------------------------------------------------------------
; DATOS leido_A482: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa482..0xa484  (2 bytes)
DATA_leido_A482:
	defb 086h,043h	; a482

; ----------------------------------------------------------------------
; DATOS leido_A484: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa484..0xa488  (4 bytes)
DATA_leido_A484:
	defb 00bh,01bh,0fah,0ddh	; a484

; ----------------------------------------------------------------------
; DATOS leido_A488: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa488..0xa48a  (2 bytes)
DATA_leido_A488:
	defb 086h,043h	; a488

; ----------------------------------------------------------------------
; DATOS leido_A48A: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa48a..0xa490  (6 bytes)
DATA_leido_A48A:
	defb 0d3h,07bh,08bh,09bh,0a5h,0ebh	; a48a

; ----------------------------------------------------------------------
; DATOS leido_A490: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa490..0xa491  (1 bytes)
DATA_leido_A490:
	defb 002h	; a490

; ----------------------------------------------------------------------
; DATOS leido_A491: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa491..0xa492  (1 bytes)
DATA_leido_A491:
	defb 070h	; a491

; ----------------------------------------------------------------------
; DATOS leido_A492: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa492..0xa498  (6 bytes)
DATA_leido_A492:
	defb 0d2h,001h,0d3h,0b1h,0a1h,0ddh	; a492

; ----------------------------------------------------------------------
; DATOS leido_A498: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa498..0xa49a  (2 bytes)
DATA_leido_A498:
	defb 086h,043h	; a498

; ----------------------------------------------------------------------
; DATOS leido_A49A: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa49a..0xa49e  (4 bytes)
DATA_leido_A49A:
	defb 07bh,08bh,0fah,0f9h	; a49a

; ----------------------------------------------------------------------
; DATOS leido_A49E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa49e..0xa4a0  (2 bytes)
DATA_leido_A49E:
	defb 080h,0a8h	; a49e

; ----------------------------------------------------------------------
; DATOS leido_A4A0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4a0..0xa4a1  (1 bytes)
DATA_leido_A4A0:
	defb 0f9h	; a4a0

; ----------------------------------------------------------------------
; DATOS leido_A4A1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa4a1..0xa4a3  (2 bytes)
DATA_leido_A4A1:
	defb 080h,0a8h	; a4a1

; ----------------------------------------------------------------------
; DATOS leido_A4A3: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xa4a3..0xa4b0  (13 bytes)
DATA_leido_A4A3:
	defb 090h,000h,000h,030h,000h,090h,090h,000h,090h,030h,000h,090h,0fbh	; a4a3  ...0.....0...

; ----------------------------------------------------------------------
; DATOS leido_A4B0: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa4b0..0xa4b3  (3 bytes)
DATA_leido_A4B0:
	defb 006h,0a3h,0a4h	; a4b0

; ----------------------------------------------------------------------
; DATOS leido_A4B3: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa4b3..0xa4ba  (7 bytes)
DATA_leido_A4B3:
	defb 090h,030h,000h,090h,030h,000h,0fbh	; a4b3

; ----------------------------------------------------------------------
; DATOS leido_A4BA: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa4ba..0xa4bd  (3 bytes)
DATA_leido_A4BA:
	defb 003h,0b3h,0a4h	; a4ba

; ----------------------------------------------------------------------
; DATOS leido_A4BD: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa4bd..0xa4c4  (7 bytes)
DATA_leido_A4BD:
	defb 090h,030h,040h,040h,040h,040h,0fch	; a4bd

; ----------------------------------------------------------------------
; DATOS leido_A4C4: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa4c4..0xa4c7  (3 bytes)
DATA_leido_A4C4:
	defb 002h,0a0h,0a4h	; a4c4

; ----------------------------------------------------------------------
; DATOS leido_A4C7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4c7..0xa4c8  (1 bytes)
DATA_leido_A4C7:
	defb 0fdh	; a4c7

; ----------------------------------------------------------------------
; DATOS leido_A4C8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa4c8..0xa4ca  (2 bytes)
DATA_leido_A4C8:
	defb 09dh,0a4h	; a4c8

; ----------------------------------------------------------------------
; DATOS leido_A4CA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4ca..0xa4cb  (1 bytes)
DATA_leido_A4CA:
	defb 0feh	; a4ca

; ----------------------------------------------------------------------
; DATOS leido_A4CB: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa4cb..0xa4cc  (1 bytes)
DATA_leido_A4CB:
	defb 001h	; a4cb

; ----------------------------------------------------------------------
; DATOS leido_A4CC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4cc..0xa4cd  (1 bytes)
DATA_leido_A4CC:
	defb 0f2h	; a4cc

; ----------------------------------------------------------------------
; DATOS leido_A4CD: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa4cd..0xa4ce  (1 bytes)
DATA_leido_A4CD:
	defb 010h	; a4cd

; ----------------------------------------------------------------------
; DATOS leido_A4CE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4ce..0xa4cf  (1 bytes)
DATA_leido_A4CE:
	defb 0f1h	; a4ce

; ----------------------------------------------------------------------
; DATOS leido_A4CF: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa4cf..0xa4d0  (1 bytes)
DATA_leido_A4CF:
	defb 043h	; a4cf

; ----------------------------------------------------------------------
; DATOS leido_A4D0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4d0..0xa4d1  (1 bytes)
DATA_leido_A4D0:
	defb 0eah	; a4d0

; ----------------------------------------------------------------------
; DATOS leido_A4D1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4d1..0xa4d2  (1 bytes)
DATA_leido_A4D1:
	defb 009h	; a4d1

; ----------------------------------------------------------------------
; DATOS leido_A4D2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4d2..0xa4d3  (1 bytes)
DATA_leido_A4D2:
	defb 0e9h	; a4d2

; ----------------------------------------------------------------------
; DATOS leido_A4D3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa4d3..0xa4d4  (1 bytes)
DATA_leido_A4D3:
	defb 007h	; a4d3

; ----------------------------------------------------------------------
; DATOS leido_A4D4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4d4..0xa4d5  (1 bytes)
DATA_leido_A4D4:
	defb 0ebh	; a4d4

; ----------------------------------------------------------------------
; DATOS leido_A4D5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa4d5..0xa4d6  (1 bytes)
DATA_leido_A4D5:
	defb 008h	; a4d5

; ----------------------------------------------------------------------
; DATOS leido_A4D6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa4d6..0xa4d7  (1 bytes)
DATA_leido_A4D6:
	defb 020h	; a4d6

; ----------------------------------------------------------------------
; DATOS leido_A4D7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4d7..0xa4d8  (1 bytes)
DATA_leido_A4D7:
	defb 0d6h	; a4d7

; ----------------------------------------------------------------------
; DATOS leido_A4D8: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa4d8..0xa4da  (2 bytes)
DATA_leido_A4D8:
	defb 001h,001h	; a4d8

; ----------------------------------------------------------------------
; DATOS leido_A4DA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4da..0xa4db  (1 bytes)
DATA_leido_A4DA:
	defb 0dbh	; a4da

; ----------------------------------------------------------------------
; DATOS leido_A4DB: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa4db..0xa4dc  (1 bytes)
DATA_leido_A4DB:
	defb 005h	; a4db

; ----------------------------------------------------------------------
; DATOS leido_A4DC: 19 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (19 bytes)
;   0xa4dc..0xa4ef  (19 bytes)
DATA_leido_A4DC:
	defb 0d3h,0a8h,0a0h,0a0h,0a0h,0d2h,008h,000h,000h,000h,018h,010h,010h,010h,038h,030h	; a4dc  ..............80
	defb 030h,030h,0eah	; a4ec

; ----------------------------------------------------------------------
; DATOS leido_A4EF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4ef..0xa4f0  (1 bytes)
DATA_leido_A4EF:
	defb 007h	; a4ef

; ----------------------------------------------------------------------
; DATOS leido_A4F0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4f0..0xa4f1  (1 bytes)
DATA_leido_A4F0:
	defb 0f1h	; a4f0

; ----------------------------------------------------------------------
; DATOS leido_A4F1: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa4f1..0xa4f2  (1 bytes)
DATA_leido_A4F1:
	defb 041h	; a4f1

; ----------------------------------------------------------------------
; DATOS leido_A4F2: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa4f2..0xa4f5  (3 bytes)
DATA_leido_A4F2:
	defb 0ech,0c0h,0f9h	; a4f2

; ----------------------------------------------------------------------
; DATOS leido_A4F5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa4f5..0xa4f7  (2 bytes)
DATA_leido_A4F5:
	defb 0e5h,0a8h	; a4f5

; ----------------------------------------------------------------------
; DATOS leido_A4F7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa4f7..0xa4f9  (2 bytes)
DATA_leido_A4F7:
	defb 0a4h,0feh	; a4f7

; ----------------------------------------------------------------------
; DATOS leido_A4F9: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa4f9..0xa4fa  (1 bytes)
DATA_leido_A4F9:
	defb 001h	; a4f9

; ----------------------------------------------------------------------
; DATOS leido_A4FA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4fa..0xa4fb  (1 bytes)
DATA_leido_A4FA:
	defb 0f2h	; a4fa

; ----------------------------------------------------------------------
; DATOS leido_A4FB: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa4fb..0xa4fc  (1 bytes)
DATA_leido_A4FB:
	defb 010h	; a4fb

; ----------------------------------------------------------------------
; DATOS leido_A4FC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4fc..0xa4fd  (1 bytes)
DATA_leido_A4FC:
	defb 0f1h	; a4fc

; ----------------------------------------------------------------------
; DATOS leido_A4FD: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa4fd..0xa4fe  (1 bytes)
DATA_leido_A4FD:
	defb 041h	; a4fd

; ----------------------------------------------------------------------
; DATOS leido_A4FE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4fe..0xa4ff  (1 bytes)
DATA_leido_A4FE:
	defb 0eah	; a4fe

; ----------------------------------------------------------------------
; DATOS leido_A4FF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4ff..0xa500  (1 bytes)
DATA_leido_A4FF:
	defb 008h	; a4ff

; ----------------------------------------------------------------------
; DATOS leido_A500: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa500..0xa501  (1 bytes)
DATA_leido_A500:
	defb 0e9h	; a500

; ----------------------------------------------------------------------
; DATOS leido_A501: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa501..0xa502  (1 bytes)
DATA_leido_A501:
	defb 007h	; a501

; ----------------------------------------------------------------------
; DATOS leido_A502: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa502..0xa503  (1 bytes)
DATA_leido_A502:
	defb 0ebh	; a502

; ----------------------------------------------------------------------
; DATOS leido_A503: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa503..0xa504  (1 bytes)
DATA_leido_A503:
	defb 001h	; a503

; ----------------------------------------------------------------------
; DATOS leido_A504: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa504..0xa505  (1 bytes)
DATA_leido_A504:
	defb 010h	; a504

; ----------------------------------------------------------------------
; DATOS leido_A505: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa505..0xa506  (1 bytes)
DATA_leido_A505:
	defb 0dbh	; a505

; ----------------------------------------------------------------------
; DATOS leido_A506: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa506..0xa507  (1 bytes)
DATA_leido_A506:
	defb 003h	; a506

; ----------------------------------------------------------------------
; DATOS leido_A507: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa507..0xa50a  (3 bytes)
DATA_leido_A507:
	defb 0d2h,06ah,0f9h	; a507

; ----------------------------------------------------------------------
; DATOS leido_A50A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa50a..0xa50c  (2 bytes)
DATA_leido_A50A:
	defb 027h,0a9h	; a50a

; ----------------------------------------------------------------------
; DATOS leido_A50C: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa50c..0xa50f  (3 bytes)
DATA_leido_A50C:
	defb 0d2h,089h,0eah	; a50c

; ----------------------------------------------------------------------
; DATOS leido_A50F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa50f..0xa510  (1 bytes)
DATA_leido_A50F:
	defb 00ah	; a50f

; ----------------------------------------------------------------------
; DATOS leido_A510: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa510..0xa511  (1 bytes)
DATA_leido_A510:
	defb 0ebh	; a510

; ----------------------------------------------------------------------
; DATOS leido_A511: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa511..0xa512  (1 bytes)
DATA_leido_A511:
	defb 007h	; a511

; ----------------------------------------------------------------------
; DATOS leido_A512: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa512..0xa513  (1 bytes)
DATA_leido_A512:
	defb 030h	; a512

; ----------------------------------------------------------------------
; DATOS leido_A513: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa513..0xa521  (14 bytes)
DATA_leido_A513:
	defb 018h,0d3h,060h,0a0h,0d2h,010h,065h,011h,061h,0a1h,08bh,0d1h,00bh,0f1h	; a513  ..`...e.a.....

; ----------------------------------------------------------------------
; DATOS leido_A521: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa521..0xa522  (1 bytes)
DATA_leido_A521:
	defb 042h	; a521

; ----------------------------------------------------------------------
; DATOS leido_A522: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa522..0xa523  (1 bytes)
DATA_leido_A522:
	defb 0eah	; a522

; ----------------------------------------------------------------------
; DATOS leido_A523: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa523..0xa524  (1 bytes)
DATA_leido_A523:
	defb 008h	; a523

; ----------------------------------------------------------------------
; DATOS leido_A524: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa524..0xa525  (1 bytes)
DATA_leido_A524:
	defb 0ebh	; a524

; ----------------------------------------------------------------------
; DATOS leido_A525: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa525..0xa526  (1 bytes)
DATA_leido_A525:
	defb 001h	; a525

; ----------------------------------------------------------------------
; DATOS leido_A526: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa526..0xa527  (1 bytes)
DATA_leido_A526:
	defb 010h	; a526

; ----------------------------------------------------------------------
; DATOS leido_A527: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa527..0xa528  (1 bytes)
DATA_leido_A527:
	defb 0dbh	; a527

; ----------------------------------------------------------------------
; DATOS leido_A528: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa528..0xa529  (1 bytes)
DATA_leido_A528:
	defb 004h	; a528

; ----------------------------------------------------------------------
; DATOS leido_A529: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa529..0xa52b  (2 bytes)
DATA_leido_A529:
	defb 0c1h,0f9h	; a529

; ----------------------------------------------------------------------
; DATOS leido_A52B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa52b..0xa52d  (2 bytes)
DATA_leido_A52B:
	defb 033h,0a9h	; a52b

; ----------------------------------------------------------------------
; DATOS leido_A52D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa52d..0xa52e  (1 bytes)
DATA_leido_A52D:
	defb 0f9h	; a52d

; ----------------------------------------------------------------------
; DATOS leido_A52E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa52e..0xa530  (2 bytes)
DATA_leido_A52E:
	defb 064h,0a9h	; a52e

; ----------------------------------------------------------------------
; DATOS leido_A530: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa530..0xa532  (2 bytes)
DATA_leido_A530:
	defb 032h,0f9h	; a530

; ----------------------------------------------------------------------
; DATOS leido_A532: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa532..0xa534  (2 bytes)
DATA_leido_A532:
	defb 074h,0a9h	; a532

; ----------------------------------------------------------------------
; DATOS leido_A534: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa534..0xa536  (2 bytes)
DATA_leido_A534:
	defb 0dch,0fch	; a534

; ----------------------------------------------------------------------
; DATOS leido_A536: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa536..0xa539  (3 bytes)
DATA_leido_A536:
	defb 002h,0f8h,0a4h	; a536

; ----------------------------------------------------------------------
; DATOS leido_A539: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa539..0xa53a  (1 bytes)
DATA_leido_A539:
	defb 0fdh	; a539

; ----------------------------------------------------------------------
; DATOS leido_A53A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa53a..0xa53c  (2 bytes)
DATA_leido_A53A:
	defb 0cah,0a4h	; a53a

; ----------------------------------------------------------------------
; DATOS leido_A53C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa53c..0xa53d  (1 bytes)
DATA_leido_A53C:
	defb 0feh	; a53c

; ----------------------------------------------------------------------
; DATOS leido_A53D: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa53d..0xa53e  (1 bytes)
DATA_leido_A53D:
	defb 001h	; a53d

; ----------------------------------------------------------------------
; DATOS leido_A53E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa53e..0xa53f  (1 bytes)
DATA_leido_A53E:
	defb 0ebh	; a53e

; ----------------------------------------------------------------------
; DATOS leido_A53F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa53f..0xa540  (1 bytes)
DATA_leido_A53F:
	defb 071h	; a53f

; ----------------------------------------------------------------------
; DATOS leido_A540: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa540..0xa541  (1 bytes)
DATA_leido_A540:
	defb 080h	; a540

; ----------------------------------------------------------------------
; DATOS leido_A541: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa541..0xa542  (1 bytes)
DATA_leido_A541:
	defb 0dbh	; a541

; ----------------------------------------------------------------------
; DATOS leido_A542: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa542..0xa543  (1 bytes)
DATA_leido_A542:
	defb 003h	; a542

; ----------------------------------------------------------------------
; DATOS leido_A543: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa543..0xa544  (1 bytes)
DATA_leido_A543:
	defb 0e9h	; a543

; ----------------------------------------------------------------------
; DATOS leido_A544: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa544..0xa545  (1 bytes)
DATA_leido_A544:
	defb 007h	; a544

; ----------------------------------------------------------------------
; DATOS leido_A545: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa545..0xa546  (1 bytes)
DATA_leido_A545:
	defb 0f8h	; a545

; ----------------------------------------------------------------------
; DATOS leido_A546: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa546..0xa547  (1 bytes)
DATA_leido_A546:
	defb 064h	; a546

; ----------------------------------------------------------------------
; DATOS leido_A547: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa547..0xa548  (1 bytes)
DATA_leido_A547:
	defb 0eah	; a547

; ----------------------------------------------------------------------
; DATOS leido_A548: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa548..0xa549  (1 bytes)
DATA_leido_A548:
	defb 009h	; a548

; ----------------------------------------------------------------------
; DATOS leido_A549: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa549..0xa54c  (3 bytes)
DATA_leido_A549:
	defb 0d4h,000h,0f8h	; a549

; ----------------------------------------------------------------------
; DATOS leido_A54C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa54c..0xa54d  (1 bytes)
DATA_leido_A54C:
	defb 023h	; a54c

; ----------------------------------------------------------------------
; DATOS leido_A54D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa54d..0xa54e  (1 bytes)
DATA_leido_A54D:
	defb 0eah	; a54d

; ----------------------------------------------------------------------
; DATOS leido_A54E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa54e..0xa54f  (1 bytes)
DATA_leido_A54E:
	defb 00ch	; a54e

; ----------------------------------------------------------------------
; DATOS leido_A54F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa54f..0xa550  (1 bytes)
DATA_leido_A54F:
	defb 0ebh	; a54f

; ----------------------------------------------------------------------
; DATOS leido_A550: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa550..0xa551  (1 bytes)
DATA_leido_A550:
	defb 00ah	; a550

; ----------------------------------------------------------------------
; DATOS leido_A551: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa551..0xa552  (1 bytes)
DATA_leido_A551:
	defb 0f0h	; a551

; ----------------------------------------------------------------------
; DATOS leido_A552: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa552..0xa555  (3 bytes)
DATA_leido_A552:
	defb 0d3h,000h,0f8h	; a552

; ----------------------------------------------------------------------
; DATOS leido_A555: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa555..0xa556  (1 bytes)
DATA_leido_A555:
	defb 064h	; a555

; ----------------------------------------------------------------------
; DATOS leido_A556: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa556..0xa557  (1 bytes)
DATA_leido_A556:
	defb 0eah	; a556

; ----------------------------------------------------------------------
; DATOS leido_A557: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa557..0xa558  (1 bytes)
DATA_leido_A557:
	defb 009h	; a557

; ----------------------------------------------------------------------
; DATOS leido_A558: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa558..0xa559  (1 bytes)
DATA_leido_A558:
	defb 0ebh	; a558

; ----------------------------------------------------------------------
; DATOS leido_A559: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa559..0xa55a  (1 bytes)
DATA_leido_A559:
	defb 071h	; a559

; ----------------------------------------------------------------------
; DATOS leido_A55A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa55a..0xa55b  (1 bytes)
DATA_leido_A55A:
	defb 080h	; a55a

; ----------------------------------------------------------------------
; DATOS leido_A55B: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa55b..0xa563  (8 bytes)
DATA_leido_A55B:
	defb 0d4h,000h,000h,0d3h,000h,0d4h,000h,0fbh	; a55b  ........

; ----------------------------------------------------------------------
; DATOS leido_A563: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa563..0xa566  (3 bytes)
DATA_leido_A563:
	defb 010h,03ch,0a5h	; a563

; ----------------------------------------------------------------------
; DATOS leido_A566: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa566..0xa567  (1 bytes)
DATA_leido_A566:
	defb 0f9h	; a566

; ----------------------------------------------------------------------
; DATOS leido_A567: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa567..0xa569  (2 bytes)
DATA_leido_A567:
	defb 079h,0a7h	; a567

; ----------------------------------------------------------------------
; DATOS leido_A569: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa569..0xa56a  (1 bytes)
DATA_leido_A569:
	defb 0f9h	; a569

; ----------------------------------------------------------------------
; DATOS leido_A56A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa56a..0xa56c  (2 bytes)
DATA_leido_A56A:
	defb 079h,0a7h	; a56a

; ----------------------------------------------------------------------
; DATOS leido_A56C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa56c..0xa56d  (1 bytes)
DATA_leido_A56C:
	defb 0fdh	; a56c

; ----------------------------------------------------------------------
; DATOS leido_A56D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa56d..0xa56f  (2 bytes)
DATA_leido_A56D:
	defb 03ch,0a5h	; a56d

; ----------------------------------------------------------------------
; DATOS leido_A56F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa56f..0xa570  (1 bytes)
DATA_leido_A56F:
	defb 0feh	; a56f

; ----------------------------------------------------------------------
; DATOS leido_A570: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa570..0xa571  (1 bytes)
DATA_leido_A570:
	defb 001h	; a570

; ----------------------------------------------------------------------
; DATOS leido_A571: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa571..0xa572  (1 bytes)
DATA_leido_A571:
	defb 0e9h	; a571

; ----------------------------------------------------------------------
; DATOS leido_A572: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa572..0xa573  (1 bytes)
DATA_leido_A572:
	defb 00eh	; a572

; ----------------------------------------------------------------------
; DATOS leido_A573: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa573..0xa575  (2 bytes)
DATA_leido_A573:
	defb 0dch,0eah	; a573

; ----------------------------------------------------------------------
; DATOS leido_A575: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa575..0xa576  (1 bytes)
DATA_leido_A575:
	defb 008h	; a575

; ----------------------------------------------------------------------
; DATOS leido_A576: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa576..0xa577  (1 bytes)
DATA_leido_A576:
	defb 0f8h	; a576

; ----------------------------------------------------------------------
; DATOS leido_A577: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa577..0xa578  (1 bytes)
DATA_leido_A577:
	defb 085h	; a577

; ----------------------------------------------------------------------
; DATOS leido_A578: 1 bytes que lee p10:6D89 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D89 (1 bytes)
;   0xa578..0xa579  (1 bytes)
DATA_leido_A578:
	defb 0c1h	; a578

; ----------------------------------------------------------------------
; DATOS leido_A579: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa579..0xa57a  (1 bytes)
DATA_leido_A579:
	defb 0ebh	; a579

; ----------------------------------------------------------------------
; DATOS leido_A57A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa57a..0xa57b  (1 bytes)
DATA_leido_A57A:
	defb 007h	; a57a

; ----------------------------------------------------------------------
; DATOS leido_A57B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa57b..0xa57c  (1 bytes)
DATA_leido_A57B:
	defb 020h	; a57b

; ----------------------------------------------------------------------
; DATOS leido_A57C: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa57c..0xa581  (5 bytes)
DATA_leido_A57C:
	defb 0d4h,00bh,0d3h,00bh,0f8h	; a57c

; ----------------------------------------------------------------------
; DATOS leido_A581: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa581..0xa582  (1 bytes)
DATA_leido_A581:
	defb 002h	; a581

; ----------------------------------------------------------------------
; DATOS leido_A582: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa582..0xa583  (1 bytes)
DATA_leido_A582:
	defb 0f2h	; a582

; ----------------------------------------------------------------------
; DATOS leido_A583: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa583..0xa584  (1 bytes)
DATA_leido_A583:
	defb 014h	; a583

; ----------------------------------------------------------------------
; DATOS leido_A584: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa584..0xa585  (1 bytes)
DATA_leido_A584:
	defb 0f1h	; a584

; ----------------------------------------------------------------------
; DATOS leido_A585: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa585..0xa586  (1 bytes)
DATA_leido_A585:
	defb 061h	; a585

; ----------------------------------------------------------------------
; DATOS leido_A586: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa586..0xa587  (1 bytes)
DATA_leido_A586:
	defb 0eah	; a586

; ----------------------------------------------------------------------
; DATOS leido_A587: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa587..0xa588  (1 bytes)
DATA_leido_A587:
	defb 009h	; a587

; ----------------------------------------------------------------------
; DATOS leido_A588: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa588..0xa589  (1 bytes)
DATA_leido_A588:
	defb 0ebh	; a588

; ----------------------------------------------------------------------
; DATOS leido_A589: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa589..0xa58a  (1 bytes)
DATA_leido_A589:
	defb 009h	; a589

; ----------------------------------------------------------------------
; DATOS leido_A58A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa58a..0xa58b  (1 bytes)
DATA_leido_A58A:
	defb 020h	; a58a

; ----------------------------------------------------------------------
; DATOS leido_A58B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa58b..0xa58c  (1 bytes)
DATA_leido_A58B:
	defb 0ddh	; a58b

; ----------------------------------------------------------------------
; DATOS leido_A58C: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa58c..0xa58e  (2 bytes)
DATA_leido_A58C:
	defb 029h,032h	; a58c

; ----------------------------------------------------------------------
; DATOS leido_A58E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa58e..0xa58f  (1 bytes)
DATA_leido_A58E:
	defb 0e9h	; a58e

; ----------------------------------------------------------------------
; DATOS leido_A58F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa58f..0xa590  (1 bytes)
DATA_leido_A58F:
	defb 007h	; a58f

; ----------------------------------------------------------------------
; DATOS leido_A590: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa590..0xa591  (1 bytes)
DATA_leido_A590:
	defb 0f9h	; a590

; ----------------------------------------------------------------------
; DATOS leido_A591: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa591..0xa593  (2 bytes)
DATA_leido_A591:
	defb 0e5h,0a8h	; a591

; ----------------------------------------------------------------------
; DATOS leido_A593: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa593..0xa594  (1 bytes)
DATA_leido_A593:
	defb 0feh	; a593

; ----------------------------------------------------------------------
; DATOS leido_A594: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa594..0xa595  (1 bytes)
DATA_leido_A594:
	defb 004h	; a594

; ----------------------------------------------------------------------
; DATOS leido_A595: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa595..0xa596  (1 bytes)
DATA_leido_A595:
	defb 0f8h	; a595

; ----------------------------------------------------------------------
; DATOS leido_A596: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa596..0xa597  (1 bytes)
DATA_leido_A596:
	defb 005h	; a596

; ----------------------------------------------------------------------
; DATOS leido_A597: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa597..0xa59f  (8 bytes)
DATA_leido_A597:
	defb 0d0h,060h,060h,070h,070h,080h,080h,0feh	; a597  .``pp...

; ----------------------------------------------------------------------
; DATOS leido_A59F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa59f..0xa5a0  (1 bytes)
DATA_leido_A59F:
	defb 001h	; a59f

; ----------------------------------------------------------------------
; DATOS leido_A5A0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5a0..0xa5a1  (1 bytes)
DATA_leido_A5A0:
	defb 0f2h	; a5a0

; ----------------------------------------------------------------------
; DATOS leido_A5A1: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa5a1..0xa5a2  (1 bytes)
DATA_leido_A5A1:
	defb 010h	; a5a1

; ----------------------------------------------------------------------
; DATOS leido_A5A2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5a2..0xa5a3  (1 bytes)
DATA_leido_A5A2:
	defb 0f1h	; a5a2

; ----------------------------------------------------------------------
; DATOS leido_A5A3: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa5a3..0xa5a4  (1 bytes)
DATA_leido_A5A3:
	defb 042h	; a5a3

; ----------------------------------------------------------------------
; DATOS leido_A5A4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5a4..0xa5a5  (1 bytes)
DATA_leido_A5A4:
	defb 0f9h	; a5a4

; ----------------------------------------------------------------------
; DATOS leido_A5A5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa5a5..0xa5a7  (2 bytes)
DATA_leido_A5A5:
	defb 0b9h,0a8h	; a5a5

; ----------------------------------------------------------------------
; DATOS leido_A5A7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5a7..0xa5a8  (1 bytes)
DATA_leido_A5A7:
	defb 0f8h	; a5a7

; ----------------------------------------------------------------------
; DATOS leido_A5A8: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa5a8..0xa5a9  (1 bytes)
DATA_leido_A5A8:
	defb 00dh	; a5a8

; ----------------------------------------------------------------------
; DATOS leido_A5A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5a9..0xa5aa  (1 bytes)
DATA_leido_A5A9:
	defb 0eah	; a5a9

; ----------------------------------------------------------------------
; DATOS leido_A5AA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa5aa..0xa5ab  (1 bytes)
DATA_leido_A5AA:
	defb 00ah	; a5aa

; ----------------------------------------------------------------------
; DATOS leido_A5AB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5ab..0xa5ac  (1 bytes)
DATA_leido_A5AB:
	defb 0ebh	; a5ab

; ----------------------------------------------------------------------
; DATOS leido_A5AC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa5ac..0xa5ad  (1 bytes)
DATA_leido_A5AC:
	defb 019h	; a5ac

; ----------------------------------------------------------------------
; DATOS leido_A5AD: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa5ad..0xa5ae  (1 bytes)
DATA_leido_A5AD:
	defb 040h	; a5ad

; ----------------------------------------------------------------------
; DATOS leido_A5AE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5ae..0xa5af  (1 bytes)
DATA_leido_A5AE:
	defb 0dbh	; a5ae

; ----------------------------------------------------------------------
; DATOS leido_A5AF: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa5af..0xa5b0  (1 bytes)
DATA_leido_A5AF:
	defb 003h	; a5af

; ----------------------------------------------------------------------
; DATOS leido_A5B0: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa5b0..0xa5b6  (6 bytes)
DATA_leido_A5B0:
	defb 0d1h,001h,003h,001h,003h,0f9h	; a5b0

; ----------------------------------------------------------------------
; DATOS leido_A5B6: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa5b6..0xa5b8  (2 bytes)
DATA_leido_A5B6:
	defb 0b9h,0a8h	; a5b6

; ----------------------------------------------------------------------
; DATOS leido_A5B8: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa5b8..0xa5c1  (9 bytes)
DATA_leido_A5B8:
	defb 0d1h,030h,0d0h,030h,0d1h,030h,0d0h,030h,0feh	; a5b8  .0.0.0.0.

; ----------------------------------------------------------------------
; DATOS leido_A5C1: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa5c1..0xa5c2  (1 bytes)
DATA_leido_A5C1:
	defb 004h	; a5c1

; ----------------------------------------------------------------------
; DATOS leido_A5C2: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa5c2..0xa5c4  (2 bytes)
DATA_leido_A5C2:
	defb 0d0h,0f8h	; a5c2

; ----------------------------------------------------------------------
; DATOS leido_A5C4: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa5c4..0xa5c5  (1 bytes)
DATA_leido_A5C4:
	defb 005h	; a5c4

; ----------------------------------------------------------------------
; DATOS leido_A5C5: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa5c5..0xa5ce  (9 bytes)
DATA_leido_A5C5:
	defb 060h,060h,060h,060h,070h,070h,080h,080h,0feh	; a5c5  ````pp...

; ----------------------------------------------------------------------
; DATOS leido_A5CE: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa5ce..0xa5cf  (1 bytes)
DATA_leido_A5CE:
	defb 001h	; a5ce

; ----------------------------------------------------------------------
; DATOS leido_A5CF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5cf..0xa5d0  (1 bytes)
DATA_leido_A5CF:
	defb 0f8h	; a5cf

; ----------------------------------------------------------------------
; DATOS leido_A5D0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa5d0..0xa5d1  (1 bytes)
DATA_leido_A5D0:
	defb 002h	; a5d0

; ----------------------------------------------------------------------
; DATOS leido_A5D1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5d1..0xa5d2  (1 bytes)
DATA_leido_A5D1:
	defb 0f2h	; a5d1

; ----------------------------------------------------------------------
; DATOS leido_A5D2: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa5d2..0xa5d3  (1 bytes)
DATA_leido_A5D2:
	defb 010h	; a5d2

; ----------------------------------------------------------------------
; DATOS leido_A5D3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5d3..0xa5d4  (1 bytes)
DATA_leido_A5D3:
	defb 0f1h	; a5d3

; ----------------------------------------------------------------------
; DATOS leido_A5D4: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa5d4..0xa5d5  (1 bytes)
DATA_leido_A5D4:
	defb 042h	; a5d4

; ----------------------------------------------------------------------
; DATOS leido_A5D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5d5..0xa5d6  (1 bytes)
DATA_leido_A5D5:
	defb 0eah	; a5d5

; ----------------------------------------------------------------------
; DATOS leido_A5D6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa5d6..0xa5d7  (1 bytes)
DATA_leido_A5D6:
	defb 00ah	; a5d6

; ----------------------------------------------------------------------
; DATOS leido_A5D7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5d7..0xa5d8  (1 bytes)
DATA_leido_A5D7:
	defb 0ebh	; a5d7

; ----------------------------------------------------------------------
; DATOS leido_A5D8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa5d8..0xa5d9  (1 bytes)
DATA_leido_A5D8:
	defb 053h	; a5d8

; ----------------------------------------------------------------------
; DATOS leido_A5D9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa5d9..0xa5da  (1 bytes)
DATA_leido_A5D9:
	defb 070h	; a5d9

; ----------------------------------------------------------------------
; DATOS leido_A5DA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5da..0xa5db  (1 bytes)
DATA_leido_A5DA:
	defb 0dbh	; a5da

; ----------------------------------------------------------------------
; DATOS leido_A5DB: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa5db..0xa5dc  (1 bytes)
DATA_leido_A5DB:
	defb 003h	; a5db

; ----------------------------------------------------------------------
; DATOS leido_A5DC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5dc..0xa5dd  (1 bytes)
DATA_leido_A5DC:
	defb 0f9h	; a5dc

; ----------------------------------------------------------------------
; DATOS leido_A5DD: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa5dd..0xa5df  (2 bytes)
DATA_leido_A5DD:
	defb 0d3h,0a8h	; a5dd

; ----------------------------------------------------------------------
; DATOS leido_A5DF: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xa5df..0xa5ec  (13 bytes)
DATA_leido_A5DF:
	defb 090h,040h,010h,010h,040h,090h,0d1h,012h,0d2h,092h,0b2h,068h,0f9h	; a5df  .@..@......h.

; ----------------------------------------------------------------------
; DATOS leido_A5EC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa5ec..0xa5ee  (2 bytes)
DATA_leido_A5EC:
	defb 0d3h,0a8h	; a5ec

; ----------------------------------------------------------------------
; DATOS leido_A5EE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5ee..0xa5ef  (1 bytes)
DATA_leido_A5EE:
	defb 0f8h	; a5ee

; ----------------------------------------------------------------------
; DATOS leido_A5EF: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa5ef..0xa5f0  (1 bytes)
DATA_leido_A5EF:
	defb 00dh	; a5ef

; ----------------------------------------------------------------------
; DATOS leido_A5F0: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa5f0..0xa5fb  (11 bytes)
DATA_leido_A5F0:
	defb 0d2h,060h,010h,060h,080h,030h,080h,090h,040h,090h,0ebh	; a5f0  .`.`.0..@..

; ----------------------------------------------------------------------
; DATOS leido_A5FB: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa5fb..0xa5fc  (1 bytes)
DATA_leido_A5FB:
	defb 003h	; a5fb

; ----------------------------------------------------------------------
; DATOS leido_A5FC: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa5fc..0xa5fd  (1 bytes)
DATA_leido_A5FC:
	defb 080h	; a5fc

; ----------------------------------------------------------------------
; DATOS leido_A5FD: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa5fd..0xa5ff  (2 bytes)
DATA_leido_A5FD:
	defb 0b2h,0ebh	; a5fd

; ----------------------------------------------------------------------
; DATOS leido_A5FF: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa5ff..0xa600  (1 bytes)
DATA_leido_A5FF:
	defb 053h	; a5ff

; ----------------------------------------------------------------------
; DATOS leido_A600: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa600..0xa601  (1 bytes)
DATA_leido_A600:
	defb 070h	; a600

; ----------------------------------------------------------------------
; DATOS leido_A601: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa601..0xa60a  (9 bytes)
DATA_leido_A601:
	defb 070h,020h,070h,090h,040h,090h,0a0h,050h,0feh	; a601  p p.@..P.

; ----------------------------------------------------------------------
; DATOS leido_A60A: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa60a..0xa60b  (1 bytes)
DATA_leido_A60A:
	defb 004h	; a60a

; ----------------------------------------------------------------------
; DATOS leido_A60B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa60b..0xa60d  (2 bytes)
DATA_leido_A60B:
	defb 0d0h,0f8h	; a60b

; ----------------------------------------------------------------------
; DATOS leido_A60D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa60d..0xa60e  (1 bytes)
DATA_leido_A60D:
	defb 005h	; a60d

; ----------------------------------------------------------------------
; DATOS leido_A60E: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa60e..0xa613  (5 bytes)
DATA_leido_A60E:
	defb 060h,060h,070h,080h,0fch	; a60e

; ----------------------------------------------------------------------
; DATOS leido_A613: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa613..0xa616  (3 bytes)
DATA_leido_A613:
	defb 002h,09eh,0a5h	; a613

; ----------------------------------------------------------------------
; DATOS leido_A616: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa616..0xa617  (1 bytes)
DATA_leido_A616:
	defb 0fdh	; a616

; ----------------------------------------------------------------------
; DATOS leido_A617: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa617..0xa619  (2 bytes)
DATA_leido_A617:
	defb 06fh,0a5h	; a617

; ----------------------------------------------------------------------
; DATOS leido_A619: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa619..0xa61a  (1 bytes)
DATA_leido_A619:
	defb 0feh	; a619

; ----------------------------------------------------------------------
; DATOS leido_A61A: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa61a..0xa61b  (1 bytes)
DATA_leido_A61A:
	defb 001h	; a61a

; ----------------------------------------------------------------------
; DATOS leido_A61B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa61b..0xa61c  (1 bytes)
DATA_leido_A61B:
	defb 0f8h	; a61b

; ----------------------------------------------------------------------
; DATOS leido_A61C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa61c..0xa61d  (1 bytes)
DATA_leido_A61C:
	defb 00bh	; a61c

; ----------------------------------------------------------------------
; DATOS leido_A61D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa61d..0xa61e  (1 bytes)
DATA_leido_A61D:
	defb 0f2h	; a61d

; ----------------------------------------------------------------------
; DATOS leido_A61E: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa61e..0xa61f  (1 bytes)
DATA_leido_A61E:
	defb 010h	; a61e

; ----------------------------------------------------------------------
; DATOS leido_A61F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa61f..0xa620  (1 bytes)
DATA_leido_A61F:
	defb 0f1h	; a61f

; ----------------------------------------------------------------------
; DATOS leido_A620: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa620..0xa621  (1 bytes)
DATA_leido_A620:
	defb 043h	; a620

; ----------------------------------------------------------------------
; DATOS leido_A621: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa621..0xa622  (1 bytes)
DATA_leido_A621:
	defb 0eah	; a621

; ----------------------------------------------------------------------
; DATOS leido_A622: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa622..0xa623  (1 bytes)
DATA_leido_A622:
	defb 00ah	; a622

; ----------------------------------------------------------------------
; DATOS leido_A623: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa623..0xa624  (1 bytes)
DATA_leido_A623:
	defb 0e9h	; a623

; ----------------------------------------------------------------------
; DATOS leido_A624: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa624..0xa625  (1 bytes)
DATA_leido_A624:
	defb 007h	; a624

; ----------------------------------------------------------------------
; DATOS leido_A625: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa625..0xa626  (1 bytes)
DATA_leido_A625:
	defb 0d6h	; a625

; ----------------------------------------------------------------------
; DATOS leido_A626: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa626..0xa628  (2 bytes)
DATA_leido_A626:
	defb 001h,001h	; a626

; ----------------------------------------------------------------------
; DATOS leido_A628: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa628..0xa629  (1 bytes)
DATA_leido_A628:
	defb 0dbh	; a628

; ----------------------------------------------------------------------
; DATOS leido_A629: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa629..0xa62a  (1 bytes)
DATA_leido_A629:
	defb 003h	; a629

; ----------------------------------------------------------------------
; DATOS leido_A62A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa62a..0xa62b  (1 bytes)
DATA_leido_A62A:
	defb 0ebh	; a62a

; ----------------------------------------------------------------------
; DATOS leido_A62B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa62b..0xa62c  (1 bytes)
DATA_leido_A62B:
	defb 009h	; a62b

; ----------------------------------------------------------------------
; DATOS leido_A62C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa62c..0xa62d  (1 bytes)
DATA_leido_A62C:
	defb 084h	; a62c

; ----------------------------------------------------------------------
; DATOS leido_A62D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa62d..0xa62f  (2 bytes)
DATA_leido_A62D:
	defb 0d2h,0f9h	; a62d

; ----------------------------------------------------------------------
; DATOS leido_A62F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa62f..0xa631  (2 bytes)
DATA_leido_A62F:
	defb 01ah,0a9h	; a62f

; ----------------------------------------------------------------------
; DATOS leido_A631: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa631..0xa636  (5 bytes)
DATA_leido_A631:
	defb 078h,070h,070h,070h,0f8h	; a631

; ----------------------------------------------------------------------
; DATOS leido_A636: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa636..0xa637  (1 bytes)
DATA_leido_A636:
	defb 002h	; a636

; ----------------------------------------------------------------------
; DATOS leido_A637: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa637..0xa639  (2 bytes)
DATA_leido_A637:
	defb 0d1h,0f9h	; a637

; ----------------------------------------------------------------------
; DATOS leido_A639: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa639..0xa63b  (2 bytes)
DATA_leido_A639:
	defb 01ah,0a9h	; a639

; ----------------------------------------------------------------------
; DATOS leido_A63B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa63b..0xa63c  (1 bytes)
DATA_leido_A63B:
	defb 0f1h	; a63b

; ----------------------------------------------------------------------
; DATOS leido_A63C: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa63c..0xa63d  (1 bytes)
DATA_leido_A63C:
	defb 041h	; a63c

; ----------------------------------------------------------------------
; DATOS leido_A63D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa63d..0xa63f  (2 bytes)
DATA_leido_A63D:
	defb 07bh,0f8h	; a63d

; ----------------------------------------------------------------------
; DATOS leido_A63F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa63f..0xa640  (1 bytes)
DATA_leido_A63F:
	defb 00bh	; a63f

; ----------------------------------------------------------------------
; DATOS leido_A640: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa640..0xa641  (1 bytes)
DATA_leido_A640:
	defb 0f1h	; a640

; ----------------------------------------------------------------------
; DATOS leido_A641: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa641..0xa642  (1 bytes)
DATA_leido_A641:
	defb 042h	; a641

; ----------------------------------------------------------------------
; DATOS leido_A642: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa642..0xa643  (1 bytes)
DATA_leido_A642:
	defb 0eah	; a642

; ----------------------------------------------------------------------
; DATOS leido_A643: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa643..0xa644  (1 bytes)
DATA_leido_A643:
	defb 00ah	; a643

; ----------------------------------------------------------------------
; DATOS leido_A644: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa644..0xa645  (1 bytes)
DATA_leido_A644:
	defb 0e9h	; a644

; ----------------------------------------------------------------------
; DATOS leido_A645: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa645..0xa646  (1 bytes)
DATA_leido_A645:
	defb 007h	; a645

; ----------------------------------------------------------------------
; DATOS leido_A646: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa646..0xa647  (1 bytes)
DATA_leido_A646:
	defb 0ebh	; a646

; ----------------------------------------------------------------------
; DATOS leido_A647: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa647..0xa648  (1 bytes)
DATA_leido_A647:
	defb 043h	; a647

; ----------------------------------------------------------------------
; DATOS leido_A648: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa648..0xa649  (1 bytes)
DATA_leido_A648:
	defb 070h	; a648

; ----------------------------------------------------------------------
; DATOS leido_A649: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa649..0xa64a  (1 bytes)
DATA_leido_A649:
	defb 0d6h	; a649

; ----------------------------------------------------------------------
; DATOS leido_A64A: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa64a..0xa64c  (2 bytes)
DATA_leido_A64A:
	defb 001h,004h	; a64a

; ----------------------------------------------------------------------
; DATOS leido_A64C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa64c..0xa64d  (1 bytes)
DATA_leido_A64C:
	defb 0dbh	; a64c

; ----------------------------------------------------------------------
; DATOS leido_A64D: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa64d..0xa64e  (1 bytes)
DATA_leido_A64D:
	defb 003h	; a64d

; ----------------------------------------------------------------------
; DATOS leido_A64E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa64e..0xa651  (3 bytes)
DATA_leido_A64E:
	defb 0d2h,068h,0d6h	; a64e

; ----------------------------------------------------------------------
; DATOS leido_A651: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa651..0xa653  (2 bytes)
DATA_leido_A651:
	defb 001h,001h	; a651

; ----------------------------------------------------------------------
; DATOS leido_A653: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa653..0xa654  (1 bytes)
DATA_leido_A653:
	defb 0f9h	; a653

; ----------------------------------------------------------------------
; DATOS leido_A654: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa654..0xa656  (2 bytes)
DATA_leido_A654:
	defb 027h,0a9h	; a654

; ----------------------------------------------------------------------
; DATOS leido_A656: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa656..0xa657  (1 bytes)
DATA_leido_A656:
	defb 0eah	; a656

; ----------------------------------------------------------------------
; DATOS leido_A657: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa657..0xa658  (1 bytes)
DATA_leido_A657:
	defb 00ah	; a657

; ----------------------------------------------------------------------
; DATOS leido_A658: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa658..0xa659  (1 bytes)
DATA_leido_A658:
	defb 0ebh	; a658

; ----------------------------------------------------------------------
; DATOS leido_A659: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa659..0xa65a  (1 bytes)
DATA_leido_A659:
	defb 019h	; a659

; ----------------------------------------------------------------------
; DATOS leido_A65A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa65a..0xa65b  (1 bytes)
DATA_leido_A65A:
	defb 040h	; a65a

; ----------------------------------------------------------------------
; DATOS leido_A65B: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa65b..0xa661  (6 bytes)
DATA_leido_A65B:
	defb 0d2h,081h,083h,081h,083h,0eah	; a65b

; ----------------------------------------------------------------------
; DATOS leido_A661: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa661..0xa662  (1 bytes)
DATA_leido_A661:
	defb 00ah	; a661

; ----------------------------------------------------------------------
; DATOS leido_A662: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa662..0xa663  (1 bytes)
DATA_leido_A662:
	defb 0ebh	; a662

; ----------------------------------------------------------------------
; DATOS leido_A663: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa663..0xa664  (1 bytes)
DATA_leido_A663:
	defb 043h	; a663

; ----------------------------------------------------------------------
; DATOS leido_A664: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa664..0xa665  (1 bytes)
DATA_leido_A664:
	defb 070h	; a664

; ----------------------------------------------------------------------
; DATOS leido_A665: 15 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (15 bytes)
;   0xa665..0xa674  (15 bytes)
DATA_leido_A665:
	defb 0a8h,010h,060h,0a0h,0d1h,015h,0d2h,0a1h,0d1h,011h,061h,03bh,08bh,0d8h,0f8h	; a665  ..`.......a....

; ----------------------------------------------------------------------
; DATOS leido_A674: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa674..0xa675  (1 bytes)
DATA_leido_A674:
	defb 017h	; a674

; ----------------------------------------------------------------------
; DATOS leido_A675: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa675..0xa676  (1 bytes)
DATA_leido_A675:
	defb 0ebh	; a675

; ----------------------------------------------------------------------
; DATOS leido_A676: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa676..0xa677  (1 bytes)
DATA_leido_A676:
	defb 053h	; a676

; ----------------------------------------------------------------------
; DATOS leido_A677: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa677..0xa678  (1 bytes)
DATA_leido_A677:
	defb 070h	; a677

; ----------------------------------------------------------------------
; DATOS leido_A678: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa678..0xa679  (1 bytes)
DATA_leido_A678:
	defb 0f9h	; a678

; ----------------------------------------------------------------------
; DATOS leido_A679: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa679..0xa67b  (2 bytes)
DATA_leido_A679:
	defb 033h,0a9h	; a679

; ----------------------------------------------------------------------
; DATOS leido_A67B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa67b..0xa67c  (1 bytes)
DATA_leido_A67B:
	defb 0f9h	; a67b

; ----------------------------------------------------------------------
; DATOS leido_A67C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa67c..0xa67e  (2 bytes)
DATA_leido_A67C:
	defb 064h,0a9h	; a67c

; ----------------------------------------------------------------------
; DATOS leido_A67E: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa67e..0xa680  (2 bytes)
DATA_leido_A67E:
	defb 031h,0e9h	; a67e

; ----------------------------------------------------------------------
; DATOS leido_A680: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa680..0xa681  (1 bytes)
DATA_leido_A680:
	defb 001h	; a680

; ----------------------------------------------------------------------
; DATOS leido_A681: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa681..0xa682  (1 bytes)
DATA_leido_A681:
	defb 0eah	; a681

; ----------------------------------------------------------------------
; DATOS leido_A682: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa682..0xa683  (1 bytes)
DATA_leido_A682:
	defb 007h	; a682

; ----------------------------------------------------------------------
; DATOS leido_A683: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa683..0xa68c  (9 bytes)
DATA_leido_A683:
	defb 020h,010h,000h,0d2h,0b0h,0a0h,090h,080h,0e9h	; a683   ........

; ----------------------------------------------------------------------
; DATOS leido_A68C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa68c..0xa68d  (1 bytes)
DATA_leido_A68C:
	defb 007h	; a68c

; ----------------------------------------------------------------------
; DATOS leido_A68D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa68d..0xa68e  (1 bytes)
DATA_leido_A68D:
	defb 0eah	; a68d

; ----------------------------------------------------------------------
; DATOS leido_A68E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa68e..0xa68f  (1 bytes)
DATA_leido_A68E:
	defb 00ah	; a68e

; ----------------------------------------------------------------------
; DATOS leido_A68F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa68f..0xa690  (1 bytes)
DATA_leido_A68F:
	defb 0f9h	; a68f

; ----------------------------------------------------------------------
; DATOS leido_A690: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa690..0xa692  (2 bytes)
DATA_leido_A690:
	defb 074h,0a9h	; a690

; ----------------------------------------------------------------------
; DATOS leido_A692: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa692..0xa693  (1 bytes)
DATA_leido_A692:
	defb 0e9h	; a692

; ----------------------------------------------------------------------
; DATOS leido_A693: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa693..0xa694  (1 bytes)
DATA_leido_A693:
	defb 002h	; a693

; ----------------------------------------------------------------------
; DATOS leido_A694: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa694..0xa699  (5 bytes)
DATA_leido_A694:
	defb 030h,020h,010h,000h,0eah	; a694

; ----------------------------------------------------------------------
; DATOS leido_A699: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa699..0xa69a  (1 bytes)
DATA_leido_A699:
	defb 006h	; a699

; ----------------------------------------------------------------------
; DATOS leido_A69A: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa69a..0xa69f  (5 bytes)
DATA_leido_A69A:
	defb 0d2h,0b0h,0a0h,090h,0fch	; a69a

; ----------------------------------------------------------------------
; DATOS leido_A69F: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa69f..0xa6a2  (3 bytes)
DATA_leido_A69F:
	defb 002h,03eh,0a6h	; a69f

; ----------------------------------------------------------------------
; DATOS leido_A6A2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6a2..0xa6a3  (1 bytes)
DATA_leido_A6A2:
	defb 0fdh	; a6a2

; ----------------------------------------------------------------------
; DATOS leido_A6A3: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6a3..0xa6a5  (2 bytes)
DATA_leido_A6A3:
	defb 019h,0a6h	; a6a3

; ----------------------------------------------------------------------
; DATOS leido_A6A5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6a5..0xa6a6  (1 bytes)
DATA_leido_A6A5:
	defb 0feh	; a6a5

; ----------------------------------------------------------------------
; DATOS leido_A6A6: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa6a6..0xa6a7  (1 bytes)
DATA_leido_A6A6:
	defb 001h	; a6a6

; ----------------------------------------------------------------------
; DATOS leido_A6A7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6a7..0xa6a8  (1 bytes)
DATA_leido_A6A7:
	defb 0f8h	; a6a7

; ----------------------------------------------------------------------
; DATOS leido_A6A8: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa6a8..0xa6a9  (1 bytes)
DATA_leido_A6A8:
	defb 00bh	; a6a8

; ----------------------------------------------------------------------
; DATOS leido_A6A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6a9..0xa6aa  (1 bytes)
DATA_leido_A6A9:
	defb 0f2h	; a6a9

; ----------------------------------------------------------------------
; DATOS leido_A6AA: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa6aa..0xa6ab  (1 bytes)
DATA_leido_A6AA:
	defb 010h	; a6aa

; ----------------------------------------------------------------------
; DATOS leido_A6AB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6ab..0xa6ac  (1 bytes)
DATA_leido_A6AB:
	defb 0f1h	; a6ab

; ----------------------------------------------------------------------
; DATOS leido_A6AC: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa6ac..0xa6ad  (1 bytes)
DATA_leido_A6AC:
	defb 043h	; a6ac

; ----------------------------------------------------------------------
; DATOS leido_A6AD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6ad..0xa6ae  (1 bytes)
DATA_leido_A6AD:
	defb 0eah	; a6ad

; ----------------------------------------------------------------------
; DATOS leido_A6AE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa6ae..0xa6af  (1 bytes)
DATA_leido_A6AE:
	defb 00bh	; a6ae

; ----------------------------------------------------------------------
; DATOS leido_A6AF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6af..0xa6b0  (1 bytes)
DATA_leido_A6AF:
	defb 0e9h	; a6af

; ----------------------------------------------------------------------
; DATOS leido_A6B0: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa6b0..0xa6b1  (1 bytes)
DATA_leido_A6B0:
	defb 007h	; a6b0

; ----------------------------------------------------------------------
; DATOS leido_A6B1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6b1..0xa6b2  (1 bytes)
DATA_leido_A6B1:
	defb 0d6h	; a6b1

; ----------------------------------------------------------------------
; DATOS leido_A6B2: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa6b2..0xa6b4  (2 bytes)
DATA_leido_A6B2:
	defb 001h,001h	; a6b2

; ----------------------------------------------------------------------
; DATOS leido_A6B4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6b4..0xa6b5  (1 bytes)
DATA_leido_A6B4:
	defb 0dbh	; a6b4

; ----------------------------------------------------------------------
; DATOS leido_A6B5: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa6b5..0xa6b6  (1 bytes)
DATA_leido_A6B5:
	defb 003h	; a6b5

; ----------------------------------------------------------------------
; DATOS leido_A6B6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6b6..0xa6b7  (1 bytes)
DATA_leido_A6B6:
	defb 0ebh	; a6b6

; ----------------------------------------------------------------------
; DATOS leido_A6B7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa6b7..0xa6b8  (1 bytes)
DATA_leido_A6B7:
	defb 009h	; a6b7

; ----------------------------------------------------------------------
; DATOS leido_A6B8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa6b8..0xa6b9  (1 bytes)
DATA_leido_A6B8:
	defb 084h	; a6b8

; ----------------------------------------------------------------------
; DATOS leido_A6B9: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa6b9..0xa6bb  (2 bytes)
DATA_leido_A6B9:
	defb 0d3h,0f9h	; a6b9

; ----------------------------------------------------------------------
; DATOS leido_A6BB: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6bb..0xa6bd  (2 bytes)
DATA_leido_A6BB:
	defb 00dh,0a9h	; a6bb

; ----------------------------------------------------------------------
; DATOS leido_A6BD: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa6bd..0xa6c2  (5 bytes)
DATA_leido_A6BD:
	defb 0a8h,0a0h,0a0h,0a0h,0f8h	; a6bd

; ----------------------------------------------------------------------
; DATOS leido_A6C2: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa6c2..0xa6c3  (1 bytes)
DATA_leido_A6C2:
	defb 002h	; a6c2

; ----------------------------------------------------------------------
; DATOS leido_A6C3: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa6c3..0xa6c5  (2 bytes)
DATA_leido_A6C3:
	defb 0d2h,0f9h	; a6c3

; ----------------------------------------------------------------------
; DATOS leido_A6C5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6c5..0xa6c7  (2 bytes)
DATA_leido_A6C5:
	defb 00dh,0a9h	; a6c5

; ----------------------------------------------------------------------
; DATOS leido_A6C7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa6c7..0xa6c9  (2 bytes)
DATA_leido_A6C7:
	defb 0a5h,0f1h	; a6c7

; ----------------------------------------------------------------------
; DATOS leido_A6C9: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa6c9..0xa6ca  (1 bytes)
DATA_leido_A6C9:
	defb 041h	; a6c9

; ----------------------------------------------------------------------
; DATOS leido_A6CA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6ca..0xa6cb  (1 bytes)
DATA_leido_A6CA:
	defb 0eah	; a6ca

; ----------------------------------------------------------------------
; DATOS leido_A6CB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa6cb..0xa6cc  (1 bytes)
DATA_leido_A6CB:
	defb 00ah	; a6cb

; ----------------------------------------------------------------------
; DATOS leido_A6CC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6cc..0xa6cd  (1 bytes)
DATA_leido_A6CC:
	defb 0ddh	; a6cc

; ----------------------------------------------------------------------
; DATOS leido_A6CD: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa6cd..0xa6cf  (2 bytes)
DATA_leido_A6CD:
	defb 029h,032h	; a6cd

; ----------------------------------------------------------------------
; DATOS leido_A6CF: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa6cf..0xa6d3  (4 bytes)
DATA_leido_A6CF:
	defb 0d1h,0a5h,0d8h,0f9h	; a6cf

; ----------------------------------------------------------------------
; DATOS leido_A6D3: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6d3..0xa6d5  (2 bytes)
DATA_leido_A6D3:
	defb 0dbh,0a6h	; a6d3

; ----------------------------------------------------------------------
; DATOS leido_A6D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6d5..0xa6d6  (1 bytes)
DATA_leido_A6D5:
	defb 0f9h	; a6d5

; ----------------------------------------------------------------------
; DATOS leido_A6D6: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6d6..0xa6d8  (2 bytes)
DATA_leido_A6D6:
	defb 0dbh,0a6h	; a6d6

; ----------------------------------------------------------------------
; DATOS leido_A6D8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6d8..0xa6d9  (1 bytes)
DATA_leido_A6D8:
	defb 0fdh	; a6d8

; ----------------------------------------------------------------------
; DATOS leido_A6D9: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6d9..0xa6db  (2 bytes)
DATA_leido_A6D9:
	defb 0a5h,0a6h	; a6d9

; ----------------------------------------------------------------------
; DATOS leido_A6DB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6db..0xa6dc  (1 bytes)
DATA_leido_A6DB:
	defb 0f8h	; a6db

; ----------------------------------------------------------------------
; DATOS leido_A6DC: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa6dc..0xa6dd  (1 bytes)
DATA_leido_A6DC:
	defb 00bh	; a6dc

; ----------------------------------------------------------------------
; DATOS leido_A6DD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6dd..0xa6de  (1 bytes)
DATA_leido_A6DD:
	defb 0f2h	; a6dd

; ----------------------------------------------------------------------
; DATOS leido_A6DE: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa6de..0xa6df  (1 bytes)
DATA_leido_A6DE:
	defb 010h	; a6de

; ----------------------------------------------------------------------
; DATOS leido_A6DF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6df..0xa6e0  (1 bytes)
DATA_leido_A6DF:
	defb 0f1h	; a6df

; ----------------------------------------------------------------------
; DATOS leido_A6E0: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa6e0..0xa6e1  (1 bytes)
DATA_leido_A6E0:
	defb 042h	; a6e0

; ----------------------------------------------------------------------
; DATOS leido_A6E1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6e1..0xa6e2  (1 bytes)
DATA_leido_A6E1:
	defb 0eah	; a6e1

; ----------------------------------------------------------------------
; DATOS leido_A6E2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa6e2..0xa6e3  (1 bytes)
DATA_leido_A6E2:
	defb 00ah	; a6e2

; ----------------------------------------------------------------------
; DATOS leido_A6E3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6e3..0xa6e4  (1 bytes)
DATA_leido_A6E3:
	defb 0ebh	; a6e3

; ----------------------------------------------------------------------
; DATOS leido_A6E4: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa6e4..0xa6e5  (1 bytes)
DATA_leido_A6E4:
	defb 043h	; a6e4

; ----------------------------------------------------------------------
; DATOS leido_A6E5: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa6e5..0xa6e6  (1 bytes)
DATA_leido_A6E5:
	defb 070h	; a6e5

; ----------------------------------------------------------------------
; DATOS leido_A6E6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6e6..0xa6e7  (1 bytes)
DATA_leido_A6E6:
	defb 0dbh	; a6e6

; ----------------------------------------------------------------------
; DATOS leido_A6E7: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa6e7..0xa6e8  (1 bytes)
DATA_leido_A6E7:
	defb 003h	; a6e7

; ----------------------------------------------------------------------
; DATOS leido_A6E8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6e8..0xa6e9  (1 bytes)
DATA_leido_A6E8:
	defb 0d6h	; a6e8

; ----------------------------------------------------------------------
; DATOS leido_A6E9: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa6e9..0xa6eb  (2 bytes)
DATA_leido_A6E9:
	defb 001h,006h	; a6e9

; ----------------------------------------------------------------------
; DATOS leido_A6EB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6eb..0xa6ec  (1 bytes)
DATA_leido_A6EB:
	defb 0e9h	; a6eb

; ----------------------------------------------------------------------
; DATOS leido_A6EC: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa6ec..0xa6ed  (1 bytes)
DATA_leido_A6EC:
	defb 007h	; a6ec

; ----------------------------------------------------------------------
; DATOS leido_A6ED: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa6ed..0xa6f0  (3 bytes)
DATA_leido_A6ED:
	defb 0d3h,0a8h,0d6h	; a6ed

; ----------------------------------------------------------------------
; DATOS leido_A6F0: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa6f0..0xa6f2  (2 bytes)
DATA_leido_A6F0:
	defb 001h,001h	; a6f0

; ----------------------------------------------------------------------
; DATOS leido_A6F2: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xa6f2..0xa6fc  (10 bytes)
DATA_leido_A6F2:
	defb 060h,0a0h,0d2h,010h,065h,011h,061h,0a1h,08bh,0eah	; a6f2  `...e.a...

; ----------------------------------------------------------------------
; DATOS leido_A6FC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa6fc..0xa6fd  (1 bytes)
DATA_leido_A6FC:
	defb 00ah	; a6fc

; ----------------------------------------------------------------------
; DATOS leido_A6FD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6fd..0xa6fe  (1 bytes)
DATA_leido_A6FD:
	defb 0ebh	; a6fd

; ----------------------------------------------------------------------
; DATOS leido_A6FE: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa6fe..0xa6ff  (1 bytes)
DATA_leido_A6FE:
	defb 019h	; a6fe

; ----------------------------------------------------------------------
; DATOS leido_A6FF: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa6ff..0xa700  (1 bytes)
DATA_leido_A6FF:
	defb 040h	; a6ff

; ----------------------------------------------------------------------
; DATOS leido_A700: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa700..0xa705  (5 bytes)
DATA_leido_A700:
	defb 051h,053h,051h,053h,0eah	; a700

; ----------------------------------------------------------------------
; DATOS leido_A705: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa705..0xa706  (1 bytes)
DATA_leido_A705:
	defb 00ah	; a705

; ----------------------------------------------------------------------
; DATOS leido_A706: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa706..0xa707  (1 bytes)
DATA_leido_A706:
	defb 0ebh	; a706

; ----------------------------------------------------------------------
; DATOS leido_A707: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa707..0xa708  (1 bytes)
DATA_leido_A707:
	defb 043h	; a707

; ----------------------------------------------------------------------
; DATOS leido_A708: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa708..0xa709  (1 bytes)
DATA_leido_A708:
	defb 070h	; a708

; ----------------------------------------------------------------------
; DATOS leido_A709: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa709..0xa717  (14 bytes)
DATA_leido_A709:
	defb 068h,0d3h,0a0h,0d2h,010h,060h,0a5h,061h,0a1h,0d1h,011h,00bh,03bh,0f8h	; a709  h....`.a......

; ----------------------------------------------------------------------
; DATOS leido_A717: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa717..0xa718  (1 bytes)
DATA_leido_A717:
	defb 017h	; a717

; ----------------------------------------------------------------------
; DATOS leido_A718: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa718..0xa719  (1 bytes)
DATA_leido_A718:
	defb 0f2h	; a718

; ----------------------------------------------------------------------
; DATOS leido_A719: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa719..0xa71a  (1 bytes)
DATA_leido_A719:
	defb 027h	; a719

; ----------------------------------------------------------------------
; DATOS leido_A71A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa71a..0xa71b  (1 bytes)
DATA_leido_A71A:
	defb 0f1h	; a71a

; ----------------------------------------------------------------------
; DATOS leido_A71B: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa71b..0xa71c  (1 bytes)
DATA_leido_A71B:
	defb 041h	; a71b

; ----------------------------------------------------------------------
; DATOS leido_A71C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa71c..0xa71d  (1 bytes)
DATA_leido_A71C:
	defb 0e9h	; a71c

; ----------------------------------------------------------------------
; DATOS leido_A71D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa71d..0xa71e  (1 bytes)
DATA_leido_A71D:
	defb 007h	; a71d

; ----------------------------------------------------------------------
; DATOS leido_A71E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa71e..0xa71f  (1 bytes)
DATA_leido_A71E:
	defb 0ebh	; a71e

; ----------------------------------------------------------------------
; DATOS leido_A71F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa71f..0xa720  (1 bytes)
DATA_leido_A71F:
	defb 042h	; a71f

; ----------------------------------------------------------------------
; DATOS leido_A720: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa720..0xa721  (1 bytes)
DATA_leido_A720:
	defb 042h	; a720

; ----------------------------------------------------------------------
; DATOS leido_A721: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa721..0xa722  (1 bytes)
DATA_leido_A721:
	defb 0d6h	; a721

; ----------------------------------------------------------------------
; DATOS leido_A722: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa722..0xa724  (2 bytes)
DATA_leido_A722:
	defb 001h,001h	; a722

; ----------------------------------------------------------------------
; DATOS leido_A724: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa724..0xa725  (1 bytes)
DATA_leido_A724:
	defb 0dbh	; a724

; ----------------------------------------------------------------------
; DATOS leido_A725: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa725..0xa726  (1 bytes)
DATA_leido_A725:
	defb 002h	; a725

; ----------------------------------------------------------------------
; DATOS leido_A726: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa726..0xa727  (1 bytes)
DATA_leido_A726:
	defb 0eah	; a726

; ----------------------------------------------------------------------
; DATOS leido_A727: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa727..0xa728  (1 bytes)
DATA_leido_A727:
	defb 00ah	; a727

; ----------------------------------------------------------------------
; DATOS leido_A728: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa728..0xa72e  (6 bytes)
DATA_leido_A728:
	defb 0d3h,0b8h,0b0h,0b0h,0b0h,0fbh	; a728

; ----------------------------------------------------------------------
; DATOS leido_A72E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa72e..0xa731  (3 bytes)
DATA_leido_A72E:
	defb 004h,028h,0a7h	; a72e

; ----------------------------------------------------------------------
; DATOS leido_A731: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa731..0xa732  (1 bytes)
DATA_leido_A731:
	defb 0ebh	; a731

; ----------------------------------------------------------------------
; DATOS leido_A732: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa732..0xa733  (1 bytes)
DATA_leido_A732:
	defb 053h	; a732

; ----------------------------------------------------------------------
; DATOS leido_A733: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa733..0xa734  (1 bytes)
DATA_leido_A733:
	defb 070h	; a733

; ----------------------------------------------------------------------
; DATOS leido_A734: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa734..0xa735  (1 bytes)
DATA_leido_A734:
	defb 0f2h	; a734

; ----------------------------------------------------------------------
; DATOS leido_A735: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa735..0xa736  (1 bytes)
DATA_leido_A735:
	defb 010h	; a735

; ----------------------------------------------------------------------
; DATOS leido_A736: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa736..0xa737  (1 bytes)
DATA_leido_A736:
	defb 0f1h	; a736

; ----------------------------------------------------------------------
; DATOS leido_A737: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa737..0xa738  (1 bytes)
DATA_leido_A737:
	defb 042h	; a737

; ----------------------------------------------------------------------
; DATOS leido_A738: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa738..0xa739  (1 bytes)
DATA_leido_A738:
	defb 0dbh	; a738

; ----------------------------------------------------------------------
; DATOS leido_A739: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa739..0xa73a  (1 bytes)
DATA_leido_A739:
	defb 003h	; a739

; ----------------------------------------------------------------------
; DATOS leido_A73A: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (16 bytes)
;   0xa73a..0xa74a  (16 bytes)
DATA_leido_A73A:
	defb 0d2h,040h,010h,0d3h,090h,090h,0d2h,010h,040h,092h,042h,061h,030h,0b5h,062h,0eah	; a73a  .@......@.Ba0.b.

; ----------------------------------------------------------------------
; DATOS leido_A74A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa74a..0xa74b  (1 bytes)
DATA_leido_A74A:
	defb 00ah	; a74a

; ----------------------------------------------------------------------
; DATOS leido_A74B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa74b..0xa74c  (1 bytes)
DATA_leido_A74B:
	defb 0f8h	; a74b

; ----------------------------------------------------------------------
; DATOS leido_A74C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa74c..0xa74d  (1 bytes)
DATA_leido_A74C:
	defb 017h	; a74c

; ----------------------------------------------------------------------
; DATOS leido_A74D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa74d..0xa74e  (1 bytes)
DATA_leido_A74D:
	defb 0ebh	; a74d

; ----------------------------------------------------------------------
; DATOS leido_A74E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa74e..0xa74f  (1 bytes)
DATA_leido_A74E:
	defb 071h	; a74e

; ----------------------------------------------------------------------
; DATOS leido_A74F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa74f..0xa750  (1 bytes)
DATA_leido_A74F:
	defb 052h	; a74f

; ----------------------------------------------------------------------
; DATOS leido_A750: 26 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (26 bytes)
;   0xa750..0xa76a  (26 bytes)
DATA_leido_A750:
	defb 0d3h,080h,080h,080h,0a0h,0a0h,0a0h,0b0h,0b0h,0b0h,0b0h,0b0h,0b0h,090h,090h,090h	; a750  ................
	defb 0b0h,0b0h,0b0h,0d2h,000h,000h,000h,0d1h,000h,0ebh	; a760  ..........

; ----------------------------------------------------------------------
; DATOS leido_A76A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa76a..0xa76b  (1 bytes)
DATA_leido_A76A:
	defb 001h	; a76a

; ----------------------------------------------------------------------
; DATOS leido_A76B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa76b..0xa76c  (1 bytes)
DATA_leido_A76B:
	defb 081h	; a76b

; ----------------------------------------------------------------------
; DATOS leido_A76C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa76c..0xa76d  (1 bytes)
DATA_leido_A76C:
	defb 0e9h	; a76c

; ----------------------------------------------------------------------
; DATOS leido_A76D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa76d..0xa76e  (1 bytes)
DATA_leido_A76D:
	defb 002h	; a76d

; ----------------------------------------------------------------------
; DATOS leido_A76E: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa76e..0xa774  (6 bytes)
DATA_leido_A76E:
	defb 0d2h,0b0h,0a0h,090h,080h,0eah	; a76e

; ----------------------------------------------------------------------
; DATOS leido_A774: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa774..0xa775  (1 bytes)
DATA_leido_A774:
	defb 006h	; a774

; ----------------------------------------------------------------------
; DATOS leido_A775: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa775..0xa77c  (7 bytes)
DATA_leido_A775:
	defb 070h,060h,050h,0fah,0d5h,080h,0f8h	; a775

; ----------------------------------------------------------------------
; DATOS leido_A77C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa77c..0xa77d  (1 bytes)
DATA_leido_A77C:
	defb 023h	; a77c

; ----------------------------------------------------------------------
; DATOS leido_A77D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa77d..0xa77e  (1 bytes)
DATA_leido_A77D:
	defb 0eah	; a77d

; ----------------------------------------------------------------------
; DATOS leido_A77E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa77e..0xa77f  (1 bytes)
DATA_leido_A77E:
	defb 00ch	; a77e

; ----------------------------------------------------------------------
; DATOS leido_A77F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa77f..0xa780  (1 bytes)
DATA_leido_A77F:
	defb 0ebh	; a77f

; ----------------------------------------------------------------------
; DATOS leido_A780: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa780..0xa781  (1 bytes)
DATA_leido_A780:
	defb 00ah	; a780

; ----------------------------------------------------------------------
; DATOS leido_A781: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa781..0xa782  (1 bytes)
DATA_leido_A781:
	defb 0f0h	; a781

; ----------------------------------------------------------------------
; DATOS leido_A782: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa782..0xa785  (3 bytes)
DATA_leido_A782:
	defb 0d4h,080h,0f8h	; a782

; ----------------------------------------------------------------------
; DATOS leido_A785: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa785..0xa786  (1 bytes)
DATA_leido_A785:
	defb 064h	; a785

; ----------------------------------------------------------------------
; DATOS leido_A786: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa786..0xa787  (1 bytes)
DATA_leido_A786:
	defb 0eah	; a786

; ----------------------------------------------------------------------
; DATOS leido_A787: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa787..0xa788  (1 bytes)
DATA_leido_A787:
	defb 009h	; a787

; ----------------------------------------------------------------------
; DATOS leido_A788: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa788..0xa789  (1 bytes)
DATA_leido_A788:
	defb 0ebh	; a788

; ----------------------------------------------------------------------
; DATOS leido_A789: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa789..0xa78a  (1 bytes)
DATA_leido_A789:
	defb 071h	; a789

; ----------------------------------------------------------------------
; DATOS leido_A78A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa78a..0xa78b  (1 bytes)
DATA_leido_A78A:
	defb 080h	; a78a

; ----------------------------------------------------------------------
; DATOS leido_A78B: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa78b..0xa793  (8 bytes)
DATA_leido_A78B:
	defb 0d5h,080h,0d4h,080h,0d5h,080h,080h,0fbh	; a78b  ........

; ----------------------------------------------------------------------
; DATOS leido_A793: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa793..0xa796  (3 bytes)
DATA_leido_A793:
	defb 004h,079h,0a7h	; a793

; ----------------------------------------------------------------------
; DATOS leido_A796: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa796..0xa797  (1 bytes)
DATA_leido_A796:
	defb 0f8h	; a796

; ----------------------------------------------------------------------
; DATOS leido_A797: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa797..0xa798  (1 bytes)
DATA_leido_A797:
	defb 064h	; a797

; ----------------------------------------------------------------------
; DATOS leido_A798: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa798..0xa799  (1 bytes)
DATA_leido_A798:
	defb 0eah	; a798

; ----------------------------------------------------------------------
; DATOS leido_A799: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa799..0xa79a  (1 bytes)
DATA_leido_A799:
	defb 009h	; a799

; ----------------------------------------------------------------------
; DATOS leido_A79A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa79a..0xa79d  (3 bytes)
DATA_leido_A79A:
	defb 0d5h,0a0h,0f8h	; a79a

; ----------------------------------------------------------------------
; DATOS leido_A79D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa79d..0xa79e  (1 bytes)
DATA_leido_A79D:
	defb 023h	; a79d

; ----------------------------------------------------------------------
; DATOS leido_A79E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa79e..0xa79f  (1 bytes)
DATA_leido_A79E:
	defb 0ebh	; a79e

; ----------------------------------------------------------------------
; DATOS leido_A79F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa79f..0xa7a0  (1 bytes)
DATA_leido_A79F:
	defb 00ah	; a79f

; ----------------------------------------------------------------------
; DATOS leido_A7A0: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7a0..0xa7a1  (1 bytes)
DATA_leido_A7A0:
	defb 0f0h	; a7a0

; ----------------------------------------------------------------------
; DATOS leido_A7A1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7a1..0xa7a2  (1 bytes)
DATA_leido_A7A1:
	defb 0eah	; a7a1

; ----------------------------------------------------------------------
; DATOS leido_A7A2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7a2..0xa7a3  (1 bytes)
DATA_leido_A7A2:
	defb 00ch	; a7a2

; ----------------------------------------------------------------------
; DATOS leido_A7A3: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa7a3..0xa7a6  (3 bytes)
DATA_leido_A7A3:
	defb 0d4h,0a0h,0f8h	; a7a3

; ----------------------------------------------------------------------
; DATOS leido_A7A6: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa7a6..0xa7a7  (1 bytes)
DATA_leido_A7A6:
	defb 064h	; a7a6

; ----------------------------------------------------------------------
; DATOS leido_A7A7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7a7..0xa7a8  (1 bytes)
DATA_leido_A7A7:
	defb 0ebh	; a7a7

; ----------------------------------------------------------------------
; DATOS leido_A7A8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa7a8..0xa7a9  (1 bytes)
DATA_leido_A7A8:
	defb 071h	; a7a8

; ----------------------------------------------------------------------
; DATOS leido_A7A9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7a9..0xa7aa  (1 bytes)
DATA_leido_A7A9:
	defb 080h	; a7a9

; ----------------------------------------------------------------------
; DATOS leido_A7AA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7aa..0xa7ab  (1 bytes)
DATA_leido_A7AA:
	defb 0eah	; a7aa

; ----------------------------------------------------------------------
; DATOS leido_A7AB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7ab..0xa7ac  (1 bytes)
DATA_leido_A7AB:
	defb 009h	; a7ab

; ----------------------------------------------------------------------
; DATOS leido_A7AC: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa7ac..0xa7b4  (8 bytes)
DATA_leido_A7AC:
	defb 0d5h,0a0h,0d4h,0a0h,0d5h,0a0h,0a0h,0fbh	; a7ac  ........

; ----------------------------------------------------------------------
; DATOS leido_A7B4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa7b4..0xa7b7  (3 bytes)
DATA_leido_A7B4:
	defb 004h,096h,0a7h	; a7b4

; ----------------------------------------------------------------------
; DATOS leido_A7B7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7b7..0xa7b8  (1 bytes)
DATA_leido_A7B7:
	defb 0fch	; a7b7

; ----------------------------------------------------------------------
; DATOS leido_A7B8: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa7b8..0xa7bb  (3 bytes)
DATA_leido_A7B8:
	defb 002h,079h,0a7h	; a7b8

; ----------------------------------------------------------------------
; DATOS leido_A7BB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7bb..0xa7bc  (1 bytes)
DATA_leido_A7BB:
	defb 0f8h	; a7bb

; ----------------------------------------------------------------------
; DATOS leido_A7BC: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa7bc..0xa7bd  (1 bytes)
DATA_leido_A7BC:
	defb 064h	; a7bc

; ----------------------------------------------------------------------
; DATOS leido_A7BD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7bd..0xa7be  (1 bytes)
DATA_leido_A7BD:
	defb 0eah	; a7bd

; ----------------------------------------------------------------------
; DATOS leido_A7BE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7be..0xa7bf  (1 bytes)
DATA_leido_A7BE:
	defb 009h	; a7be

; ----------------------------------------------------------------------
; DATOS leido_A7BF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7bf..0xa7c0  (1 bytes)
DATA_leido_A7BF:
	defb 0ebh	; a7bf

; ----------------------------------------------------------------------
; DATOS leido_A7C0: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa7c0..0xa7c1  (1 bytes)
DATA_leido_A7C0:
	defb 071h	; a7c0

; ----------------------------------------------------------------------
; DATOS leido_A7C1: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7c1..0xa7c2  (1 bytes)
DATA_leido_A7C1:
	defb 080h	; a7c1

; ----------------------------------------------------------------------
; DATOS leido_A7C2: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa7c2..0xa7c5  (3 bytes)
DATA_leido_A7C2:
	defb 0d5h,0b0h,0f8h	; a7c2

; ----------------------------------------------------------------------
; DATOS leido_A7C5: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa7c5..0xa7c6  (1 bytes)
DATA_leido_A7C5:
	defb 023h	; a7c5

; ----------------------------------------------------------------------
; DATOS leido_A7C6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7c6..0xa7c7  (1 bytes)
DATA_leido_A7C6:
	defb 0eah	; a7c6

; ----------------------------------------------------------------------
; DATOS leido_A7C7: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7c7..0xa7c8  (1 bytes)
DATA_leido_A7C7:
	defb 00ch	; a7c7

; ----------------------------------------------------------------------
; DATOS leido_A7C8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7c8..0xa7c9  (1 bytes)
DATA_leido_A7C8:
	defb 0ebh	; a7c8

; ----------------------------------------------------------------------
; DATOS leido_A7C9: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa7c9..0xa7ca  (1 bytes)
DATA_leido_A7C9:
	defb 00ah	; a7c9

; ----------------------------------------------------------------------
; DATOS leido_A7CA: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7ca..0xa7cb  (1 bytes)
DATA_leido_A7CA:
	defb 0f0h	; a7ca

; ----------------------------------------------------------------------
; DATOS leido_A7CB: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa7cb..0xa7ce  (3 bytes)
DATA_leido_A7CB:
	defb 0d4h,0b0h,0f8h	; a7cb

; ----------------------------------------------------------------------
; DATOS leido_A7CE: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa7ce..0xa7cf  (1 bytes)
DATA_leido_A7CE:
	defb 064h	; a7ce

; ----------------------------------------------------------------------
; DATOS leido_A7CF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7cf..0xa7d0  (1 bytes)
DATA_leido_A7CF:
	defb 0eah	; a7cf

; ----------------------------------------------------------------------
; DATOS leido_A7D0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7d0..0xa7d1  (1 bytes)
DATA_leido_A7D0:
	defb 009h	; a7d0

; ----------------------------------------------------------------------
; DATOS leido_A7D1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7d1..0xa7d2  (1 bytes)
DATA_leido_A7D1:
	defb 0ebh	; a7d1

; ----------------------------------------------------------------------
; DATOS leido_A7D2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa7d2..0xa7d3  (1 bytes)
DATA_leido_A7D2:
	defb 071h	; a7d2

; ----------------------------------------------------------------------
; DATOS leido_A7D3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7d3..0xa7d4  (1 bytes)
DATA_leido_A7D3:
	defb 080h	; a7d3

; ----------------------------------------------------------------------
; DATOS leido_A7D4: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa7d4..0xa7db  (7 bytes)
DATA_leido_A7D4:
	defb 0d5h,0b0h,0d4h,0b0h,0d5h,0b0h,0f8h	; a7d4

; ----------------------------------------------------------------------
; DATOS leido_A7DB: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa7db..0xa7dc  (1 bytes)
DATA_leido_A7DB:
	defb 023h	; a7db

; ----------------------------------------------------------------------
; DATOS leido_A7DC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7dc..0xa7dd  (1 bytes)
DATA_leido_A7DC:
	defb 0eah	; a7dc

; ----------------------------------------------------------------------
; DATOS leido_A7DD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7dd..0xa7de  (1 bytes)
DATA_leido_A7DD:
	defb 00ch	; a7dd

; ----------------------------------------------------------------------
; DATOS leido_A7DE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7de..0xa7df  (1 bytes)
DATA_leido_A7DE:
	defb 0ebh	; a7de

; ----------------------------------------------------------------------
; DATOS leido_A7DF: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa7df..0xa7e0  (1 bytes)
DATA_leido_A7DF:
	defb 00ah	; a7df

; ----------------------------------------------------------------------
; DATOS leido_A7E0: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7e0..0xa7e1  (1 bytes)
DATA_leido_A7E0:
	defb 0f0h	; a7e0

; ----------------------------------------------------------------------
; DATOS leido_A7E1: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa7e1..0xa7e4  (3 bytes)
DATA_leido_A7E1:
	defb 0d4h,0b0h,0fbh	; a7e1

; ----------------------------------------------------------------------
; DATOS leido_A7E4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa7e4..0xa7e7  (3 bytes)
DATA_leido_A7E4:
	defb 00ch,0bbh,0a7h	; a7e4

; ----------------------------------------------------------------------
; DATOS leido_A7E7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7e7..0xa7e8  (1 bytes)
DATA_leido_A7E7:
	defb 0f8h	; a7e7

; ----------------------------------------------------------------------
; DATOS leido_A7E8: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa7e8..0xa7e9  (1 bytes)
DATA_leido_A7E8:
	defb 064h	; a7e8

; ----------------------------------------------------------------------
; DATOS leido_A7E9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7e9..0xa7ea  (1 bytes)
DATA_leido_A7E9:
	defb 0eah	; a7e9

; ----------------------------------------------------------------------
; DATOS leido_A7EA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7ea..0xa7eb  (1 bytes)
DATA_leido_A7EA:
	defb 009h	; a7ea

; ----------------------------------------------------------------------
; DATOS leido_A7EB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7eb..0xa7ec  (1 bytes)
DATA_leido_A7EB:
	defb 0ebh	; a7eb

; ----------------------------------------------------------------------
; DATOS leido_A7EC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa7ec..0xa7ed  (1 bytes)
DATA_leido_A7EC:
	defb 071h	; a7ec

; ----------------------------------------------------------------------
; DATOS leido_A7ED: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7ed..0xa7ee  (1 bytes)
DATA_leido_A7ED:
	defb 080h	; a7ed

; ----------------------------------------------------------------------
; DATOS leido_A7EE: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa7ee..0xa7f1  (3 bytes)
DATA_leido_A7EE:
	defb 0d5h,080h,0f8h	; a7ee

; ----------------------------------------------------------------------
; DATOS leido_A7F1: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa7f1..0xa7f2  (1 bytes)
DATA_leido_A7F1:
	defb 023h	; a7f1

; ----------------------------------------------------------------------
; DATOS leido_A7F2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7f2..0xa7f3  (1 bytes)
DATA_leido_A7F2:
	defb 0eah	; a7f2

; ----------------------------------------------------------------------
; DATOS leido_A7F3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7f3..0xa7f4  (1 bytes)
DATA_leido_A7F3:
	defb 00ch	; a7f3

; ----------------------------------------------------------------------
; DATOS leido_A7F4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7f4..0xa7f5  (1 bytes)
DATA_leido_A7F4:
	defb 0ebh	; a7f4

; ----------------------------------------------------------------------
; DATOS leido_A7F5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa7f5..0xa7f6  (1 bytes)
DATA_leido_A7F5:
	defb 00ah	; a7f5

; ----------------------------------------------------------------------
; DATOS leido_A7F6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7f6..0xa7f7  (1 bytes)
DATA_leido_A7F6:
	defb 0f0h	; a7f6

; ----------------------------------------------------------------------
; DATOS leido_A7F7: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa7f7..0xa7fa  (3 bytes)
DATA_leido_A7F7:
	defb 0d4h,080h,0f8h	; a7f7

; ----------------------------------------------------------------------
; DATOS leido_A7FA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa7fa..0xa7fb  (1 bytes)
DATA_leido_A7FA:
	defb 064h	; a7fa

; ----------------------------------------------------------------------
; DATOS leido_A7FB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7fb..0xa7fc  (1 bytes)
DATA_leido_A7FB:
	defb 0eah	; a7fb

; ----------------------------------------------------------------------
; DATOS leido_A7FC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7fc..0xa7fd  (1 bytes)
DATA_leido_A7FC:
	defb 009h	; a7fc

; ----------------------------------------------------------------------
; DATOS leido_A7FD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7fd..0xa7fe  (1 bytes)
DATA_leido_A7FD:
	defb 0ebh	; a7fd

; ----------------------------------------------------------------------
; DATOS leido_A7FE: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa7fe..0xa7ff  (1 bytes)
DATA_leido_A7FE:
	defb 071h	; a7fe

; ----------------------------------------------------------------------
; DATOS leido_A7FF: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7ff..0xa800  (1 bytes)
DATA_leido_A7FF:
	defb 080h	; a7ff

; ----------------------------------------------------------------------
; DATOS leido_A800: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa800..0xa803  (3 bytes)
DATA_leido_A800:
	defb 0d5h,080h,0f8h	; a800

; ----------------------------------------------------------------------
; DATOS leido_A803: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa803..0xa804  (1 bytes)
DATA_leido_A803:
	defb 023h	; a803

; ----------------------------------------------------------------------
; DATOS leido_A804: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa804..0xa805  (1 bytes)
DATA_leido_A804:
	defb 0eah	; a804

; ----------------------------------------------------------------------
; DATOS leido_A805: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa805..0xa806  (1 bytes)
DATA_leido_A805:
	defb 00ch	; a805

; ----------------------------------------------------------------------
; DATOS leido_A806: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa806..0xa807  (1 bytes)
DATA_leido_A806:
	defb 0ebh	; a806

; ----------------------------------------------------------------------
; DATOS leido_A807: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa807..0xa808  (1 bytes)
DATA_leido_A807:
	defb 00ah	; a807

; ----------------------------------------------------------------------
; DATOS leido_A808: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa808..0xa809  (1 bytes)
DATA_leido_A808:
	defb 0f0h	; a808

; ----------------------------------------------------------------------
; DATOS leido_A809: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa809..0xa80c  (3 bytes)
DATA_leido_A809:
	defb 0d4h,0a0h,0f8h	; a809

; ----------------------------------------------------------------------
; DATOS leido_A80C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa80c..0xa80d  (1 bytes)
DATA_leido_A80C:
	defb 064h	; a80c

; ----------------------------------------------------------------------
; DATOS leido_A80D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa80d..0xa80e  (1 bytes)
DATA_leido_A80D:
	defb 0eah	; a80d

; ----------------------------------------------------------------------
; DATOS leido_A80E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa80e..0xa80f  (1 bytes)
DATA_leido_A80E:
	defb 009h	; a80e

; ----------------------------------------------------------------------
; DATOS leido_A80F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa80f..0xa810  (1 bytes)
DATA_leido_A80F:
	defb 0ebh	; a80f

; ----------------------------------------------------------------------
; DATOS leido_A810: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa810..0xa811  (1 bytes)
DATA_leido_A810:
	defb 071h	; a810

; ----------------------------------------------------------------------
; DATOS leido_A811: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa811..0xa812  (1 bytes)
DATA_leido_A811:
	defb 080h	; a811

; ----------------------------------------------------------------------
; DATOS leido_A812: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa812..0xa815  (3 bytes)
DATA_leido_A812:
	defb 0d5h,0a0h,0f8h	; a812

; ----------------------------------------------------------------------
; DATOS leido_A815: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa815..0xa816  (1 bytes)
DATA_leido_A815:
	defb 023h	; a815

; ----------------------------------------------------------------------
; DATOS leido_A816: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa816..0xa817  (1 bytes)
DATA_leido_A816:
	defb 0eah	; a816

; ----------------------------------------------------------------------
; DATOS leido_A817: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa817..0xa818  (1 bytes)
DATA_leido_A817:
	defb 00ch	; a817

; ----------------------------------------------------------------------
; DATOS leido_A818: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa818..0xa819  (1 bytes)
DATA_leido_A818:
	defb 0ebh	; a818

; ----------------------------------------------------------------------
; DATOS leido_A819: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa819..0xa81a  (1 bytes)
DATA_leido_A819:
	defb 00ah	; a819

; ----------------------------------------------------------------------
; DATOS leido_A81A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa81a..0xa81b  (1 bytes)
DATA_leido_A81A:
	defb 0f0h	; a81a

; ----------------------------------------------------------------------
; DATOS leido_A81B: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa81b..0xa81e  (3 bytes)
DATA_leido_A81B:
	defb 0d4h,0a0h,0f8h	; a81b

; ----------------------------------------------------------------------
; DATOS leido_A81E: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa81e..0xa81f  (1 bytes)
DATA_leido_A81E:
	defb 064h	; a81e

; ----------------------------------------------------------------------
; DATOS leido_A81F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa81f..0xa820  (1 bytes)
DATA_leido_A81F:
	defb 0eah	; a81f

; ----------------------------------------------------------------------
; DATOS leido_A820: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa820..0xa821  (1 bytes)
DATA_leido_A820:
	defb 009h	; a820

; ----------------------------------------------------------------------
; DATOS leido_A821: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa821..0xa822  (1 bytes)
DATA_leido_A821:
	defb 0ebh	; a821

; ----------------------------------------------------------------------
; DATOS leido_A822: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa822..0xa823  (1 bytes)
DATA_leido_A822:
	defb 071h	; a822

; ----------------------------------------------------------------------
; DATOS leido_A823: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa823..0xa824  (1 bytes)
DATA_leido_A823:
	defb 080h	; a823

; ----------------------------------------------------------------------
; DATOS leido_A824: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa824..0xa827  (3 bytes)
DATA_leido_A824:
	defb 0d5h,0b0h,0f8h	; a824

; ----------------------------------------------------------------------
; DATOS leido_A827: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa827..0xa828  (1 bytes)
DATA_leido_A827:
	defb 023h	; a827

; ----------------------------------------------------------------------
; DATOS leido_A828: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa828..0xa829  (1 bytes)
DATA_leido_A828:
	defb 0eah	; a828

; ----------------------------------------------------------------------
; DATOS leido_A829: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa829..0xa82a  (1 bytes)
DATA_leido_A829:
	defb 00ch	; a829

; ----------------------------------------------------------------------
; DATOS leido_A82A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa82a..0xa82b  (1 bytes)
DATA_leido_A82A:
	defb 0ebh	; a82a

; ----------------------------------------------------------------------
; DATOS leido_A82B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa82b..0xa82c  (1 bytes)
DATA_leido_A82B:
	defb 00ah	; a82b

; ----------------------------------------------------------------------
; DATOS leido_A82C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa82c..0xa82d  (1 bytes)
DATA_leido_A82C:
	defb 0f0h	; a82c

; ----------------------------------------------------------------------
; DATOS leido_A82D: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa82d..0xa830  (3 bytes)
DATA_leido_A82D:
	defb 0d4h,0b0h,0fbh	; a82d

; ----------------------------------------------------------------------
; DATOS leido_A830: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa830..0xa833  (3 bytes)
DATA_leido_A830:
	defb 003h,01dh,0a8h	; a830

; ----------------------------------------------------------------------
; DATOS leido_A833: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa833..0xa834  (1 bytes)
DATA_leido_A833:
	defb 0f8h	; a833

; ----------------------------------------------------------------------
; DATOS leido_A834: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa834..0xa835  (1 bytes)
DATA_leido_A834:
	defb 064h	; a834

; ----------------------------------------------------------------------
; DATOS leido_A835: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa835..0xa836  (1 bytes)
DATA_leido_A835:
	defb 0eah	; a835

; ----------------------------------------------------------------------
; DATOS leido_A836: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa836..0xa837  (1 bytes)
DATA_leido_A836:
	defb 009h	; a836

; ----------------------------------------------------------------------
; DATOS leido_A837: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa837..0xa838  (1 bytes)
DATA_leido_A837:
	defb 0ebh	; a837

; ----------------------------------------------------------------------
; DATOS leido_A838: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa838..0xa839  (1 bytes)
DATA_leido_A838:
	defb 071h	; a838

; ----------------------------------------------------------------------
; DATOS leido_A839: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa839..0xa83a  (1 bytes)
DATA_leido_A839:
	defb 080h	; a839

; ----------------------------------------------------------------------
; DATOS leido_A83A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa83a..0xa83d  (3 bytes)
DATA_leido_A83A:
	defb 0d5h,090h,0f8h	; a83a

; ----------------------------------------------------------------------
; DATOS leido_A83D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa83d..0xa83e  (1 bytes)
DATA_leido_A83D:
	defb 023h	; a83d

; ----------------------------------------------------------------------
; DATOS leido_A83E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa83e..0xa83f  (1 bytes)
DATA_leido_A83E:
	defb 0eah	; a83e

; ----------------------------------------------------------------------
; DATOS leido_A83F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa83f..0xa840  (1 bytes)
DATA_leido_A83F:
	defb 00ch	; a83f

; ----------------------------------------------------------------------
; DATOS leido_A840: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa840..0xa841  (1 bytes)
DATA_leido_A840:
	defb 0ebh	; a840

; ----------------------------------------------------------------------
; DATOS leido_A841: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa841..0xa842  (1 bytes)
DATA_leido_A841:
	defb 00ah	; a841

; ----------------------------------------------------------------------
; DATOS leido_A842: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa842..0xa843  (1 bytes)
DATA_leido_A842:
	defb 0f0h	; a842

; ----------------------------------------------------------------------
; DATOS leido_A843: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa843..0xa846  (3 bytes)
DATA_leido_A843:
	defb 0d4h,090h,0f8h	; a843

; ----------------------------------------------------------------------
; DATOS leido_A846: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa846..0xa847  (1 bytes)
DATA_leido_A846:
	defb 064h	; a846

; ----------------------------------------------------------------------
; DATOS leido_A847: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa847..0xa848  (1 bytes)
DATA_leido_A847:
	defb 0eah	; a847

; ----------------------------------------------------------------------
; DATOS leido_A848: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa848..0xa849  (1 bytes)
DATA_leido_A848:
	defb 009h	; a848

; ----------------------------------------------------------------------
; DATOS leido_A849: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa849..0xa84a  (1 bytes)
DATA_leido_A849:
	defb 0ebh	; a849

; ----------------------------------------------------------------------
; DATOS leido_A84A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa84a..0xa84b  (1 bytes)
DATA_leido_A84A:
	defb 071h	; a84a

; ----------------------------------------------------------------------
; DATOS leido_A84B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa84b..0xa84c  (1 bytes)
DATA_leido_A84B:
	defb 080h	; a84b

; ----------------------------------------------------------------------
; DATOS leido_A84C: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa84c..0xa84f  (3 bytes)
DATA_leido_A84C:
	defb 0d5h,090h,0f8h	; a84c

; ----------------------------------------------------------------------
; DATOS leido_A84F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa84f..0xa850  (1 bytes)
DATA_leido_A84F:
	defb 023h	; a84f

; ----------------------------------------------------------------------
; DATOS leido_A850: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa850..0xa851  (1 bytes)
DATA_leido_A850:
	defb 0eah	; a850

; ----------------------------------------------------------------------
; DATOS leido_A851: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa851..0xa852  (1 bytes)
DATA_leido_A851:
	defb 00ch	; a851

; ----------------------------------------------------------------------
; DATOS leido_A852: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa852..0xa853  (1 bytes)
DATA_leido_A852:
	defb 0ebh	; a852

; ----------------------------------------------------------------------
; DATOS leido_A853: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa853..0xa854  (1 bytes)
DATA_leido_A853:
	defb 00ah	; a853

; ----------------------------------------------------------------------
; DATOS leido_A854: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa854..0xa855  (1 bytes)
DATA_leido_A854:
	defb 0f0h	; a854

; ----------------------------------------------------------------------
; DATOS leido_A855: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa855..0xa858  (3 bytes)
DATA_leido_A855:
	defb 0d4h,0b0h,0f8h	; a855

; ----------------------------------------------------------------------
; DATOS leido_A858: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa858..0xa859  (1 bytes)
DATA_leido_A858:
	defb 064h	; a858

; ----------------------------------------------------------------------
; DATOS leido_A859: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa859..0xa85a  (1 bytes)
DATA_leido_A859:
	defb 0eah	; a859

; ----------------------------------------------------------------------
; DATOS leido_A85A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa85a..0xa85b  (1 bytes)
DATA_leido_A85A:
	defb 009h	; a85a

; ----------------------------------------------------------------------
; DATOS leido_A85B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa85b..0xa85c  (1 bytes)
DATA_leido_A85B:
	defb 0ebh	; a85b

; ----------------------------------------------------------------------
; DATOS leido_A85C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa85c..0xa85d  (1 bytes)
DATA_leido_A85C:
	defb 071h	; a85c

; ----------------------------------------------------------------------
; DATOS leido_A85D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa85d..0xa85e  (1 bytes)
DATA_leido_A85D:
	defb 080h	; a85d

; ----------------------------------------------------------------------
; DATOS leido_A85E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa85e..0xa861  (3 bytes)
DATA_leido_A85E:
	defb 0d5h,0b0h,0f8h	; a85e

; ----------------------------------------------------------------------
; DATOS leido_A861: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa861..0xa862  (1 bytes)
DATA_leido_A861:
	defb 023h	; a861

; ----------------------------------------------------------------------
; DATOS leido_A862: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa862..0xa863  (1 bytes)
DATA_leido_A862:
	defb 0eah	; a862

; ----------------------------------------------------------------------
; DATOS leido_A863: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa863..0xa864  (1 bytes)
DATA_leido_A863:
	defb 00ch	; a863

; ----------------------------------------------------------------------
; DATOS leido_A864: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa864..0xa865  (1 bytes)
DATA_leido_A864:
	defb 0ebh	; a864

; ----------------------------------------------------------------------
; DATOS leido_A865: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa865..0xa866  (1 bytes)
DATA_leido_A865:
	defb 00ah	; a865

; ----------------------------------------------------------------------
; DATOS leido_A866: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa866..0xa867  (1 bytes)
DATA_leido_A866:
	defb 0f0h	; a866

; ----------------------------------------------------------------------
; DATOS leido_A867: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa867..0xa86a  (3 bytes)
DATA_leido_A867:
	defb 0d4h,0b0h,0f8h	; a867

; ----------------------------------------------------------------------
; DATOS leido_A86A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa86a..0xa86b  (1 bytes)
DATA_leido_A86A:
	defb 064h	; a86a

; ----------------------------------------------------------------------
; DATOS leido_A86B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa86b..0xa86c  (1 bytes)
DATA_leido_A86B:
	defb 0eah	; a86b

; ----------------------------------------------------------------------
; DATOS leido_A86C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa86c..0xa86d  (1 bytes)
DATA_leido_A86C:
	defb 009h	; a86c

; ----------------------------------------------------------------------
; DATOS leido_A86D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa86d..0xa86e  (1 bytes)
DATA_leido_A86D:
	defb 0ebh	; a86d

; ----------------------------------------------------------------------
; DATOS leido_A86E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa86e..0xa86f  (1 bytes)
DATA_leido_A86E:
	defb 071h	; a86e

; ----------------------------------------------------------------------
; DATOS leido_A86F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa86f..0xa870  (1 bytes)
DATA_leido_A86F:
	defb 080h	; a86f

; ----------------------------------------------------------------------
; DATOS leido_A870: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa870..0xa873  (3 bytes)
DATA_leido_A870:
	defb 0d4h,000h,0f8h	; a870

; ----------------------------------------------------------------------
; DATOS leido_A873: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa873..0xa874  (1 bytes)
DATA_leido_A873:
	defb 023h	; a873

; ----------------------------------------------------------------------
; DATOS leido_A874: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa874..0xa875  (1 bytes)
DATA_leido_A874:
	defb 0eah	; a874

; ----------------------------------------------------------------------
; DATOS leido_A875: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa875..0xa876  (1 bytes)
DATA_leido_A875:
	defb 00ch	; a875

; ----------------------------------------------------------------------
; DATOS leido_A876: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa876..0xa877  (1 bytes)
DATA_leido_A876:
	defb 0ebh	; a876

; ----------------------------------------------------------------------
; DATOS leido_A877: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa877..0xa878  (1 bytes)
DATA_leido_A877:
	defb 00ah	; a877

; ----------------------------------------------------------------------
; DATOS leido_A878: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa878..0xa879  (1 bytes)
DATA_leido_A878:
	defb 0f0h	; a878

; ----------------------------------------------------------------------
; DATOS leido_A879: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa879..0xa87c  (3 bytes)
DATA_leido_A879:
	defb 0d3h,000h,0fbh	; a879

; ----------------------------------------------------------------------
; DATOS leido_A87C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa87c..0xa87f  (3 bytes)
DATA_leido_A87C:
	defb 003h,069h,0a8h	; a87c

; ----------------------------------------------------------------------
; DATOS leido_A87F: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa87f..0xa881  (2 bytes)
DATA_leido_A87F:
	defb 0fah,0feh	; a87f

; ----------------------------------------------------------------------
; DATOS leido_A881: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa881..0xa882  (1 bytes)
DATA_leido_A881:
	defb 004h	; a881

; ----------------------------------------------------------------------
; DATOS leido_A882: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa882..0xa883  (1 bytes)
DATA_leido_A882:
	defb 0e9h	; a882

; ----------------------------------------------------------------------
; DATOS leido_A883: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa883..0xa884  (1 bytes)
DATA_leido_A883:
	defb 007h	; a883

; ----------------------------------------------------------------------
; DATOS leido_A884: 23 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (23 bytes)
;   0xa884..0xa89b  (23 bytes)
DATA_leido_A884:
	defb 0d0h,090h,000h,000h,030h,000h,000h,090h,000h,000h,030h,000h,010h,090h,000h,000h	; a884  ....0.....0.....
	defb 030h,000h,090h,090h,000h,000h,0feh	; a894

; ----------------------------------------------------------------------
; DATOS leido_A89B: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa89b..0xa89c  (1 bytes)
DATA_leido_A89B:
	defb 010h	; a89b

; ----------------------------------------------------------------------
; DATOS leido_A89C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa89c..0xa89e  (2 bytes)
DATA_leido_A89C:
	defb 092h,0fbh	; a89c

; ----------------------------------------------------------------------
; DATOS leido_A89E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa89e..0xa8a1  (3 bytes)
DATA_leido_A89E:
	defb 003h,080h,0a8h	; a89e

; ----------------------------------------------------------------------
; DATOS leido_A8A1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8a1..0xa8a2  (1 bytes)
DATA_leido_A8A1:
	defb 0feh	; a8a1

; ----------------------------------------------------------------------
; DATOS leido_A8A2: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa8a2..0xa8a3  (1 bytes)
DATA_leido_A8A2:
	defb 004h	; a8a2

; ----------------------------------------------------------------------
; DATOS leido_A8A3: 18 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (18 bytes)
;   0xa8a3..0xa8b5  (18 bytes)
DATA_leido_A8A3:
	defb 090h,000h,000h,030h,000h,000h,090h,000h,000h,030h,000h,010h,090h,000h,000h,030h	; a8a3  ...0.....0.....0
	defb 040h,0fbh	; a8b3

; ----------------------------------------------------------------------
; DATOS leido_A8B5: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa8b5..0xa8b8  (3 bytes)
DATA_leido_A8B5:
	defb 008h,0b3h,0a8h	; a8b5

; ----------------------------------------------------------------------
; DATOS leido_A8B8: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa8b8..0xa8ba  (2 bytes)
DATA_leido_A8B8:
	defb 0fah,0f8h	; a8b8

; ----------------------------------------------------------------------
; DATOS leido_A8BA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa8ba..0xa8bb  (1 bytes)
DATA_leido_A8BA:
	defb 01dh	; a8ba

; ----------------------------------------------------------------------
; DATOS leido_A8BB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8bb..0xa8bc  (1 bytes)
DATA_leido_A8BB:
	defb 0eah	; a8bb

; ----------------------------------------------------------------------
; DATOS leido_A8BC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa8bc..0xa8bd  (1 bytes)
DATA_leido_A8BC:
	defb 006h	; a8bc

; ----------------------------------------------------------------------
; DATOS leido_A8BD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8bd..0xa8be  (1 bytes)
DATA_leido_A8BD:
	defb 0dbh	; a8bd

; ----------------------------------------------------------------------
; DATOS leido_A8BE: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa8be..0xa8bf  (1 bytes)
DATA_leido_A8BE:
	defb 001h	; a8be

; ----------------------------------------------------------------------
; DATOS leido_A8BF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8bf..0xa8c0  (1 bytes)
DATA_leido_A8BF:
	defb 0ebh	; a8bf

; ----------------------------------------------------------------------
; DATOS leido_A8C0: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa8c0..0xa8c1  (1 bytes)
DATA_leido_A8C0:
	defb 06fh	; a8c0

; ----------------------------------------------------------------------
; DATOS leido_A8C1: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa8c1..0xa8c2  (1 bytes)
DATA_leido_A8C1:
	defb 0f0h	; a8c1

; ----------------------------------------------------------------------
; DATOS leido_A8C2: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa8c2..0xa8c7  (5 bytes)
DATA_leido_A8C2:
	defb 0d1h,010h,0d0h,010h,0fbh	; a8c2

; ----------------------------------------------------------------------
; DATOS leido_A8C7: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa8c7..0xa8ca  (3 bytes)
DATA_leido_A8C7:
	defb 00ch,0c2h,0a8h	; a8c7

; ----------------------------------------------------------------------
; DATOS leido_A8CA: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa8ca..0xa8cf  (5 bytes)
DATA_leido_A8CA:
	defb 0d1h,030h,0d0h,030h,0fbh	; a8ca

; ----------------------------------------------------------------------
; DATOS leido_A8CF: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa8cf..0xa8d2  (3 bytes)
DATA_leido_A8CF:
	defb 006h,0cah,0a8h	; a8cf

; ----------------------------------------------------------------------
; DATOS leido_A8D2: 180 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (180 bytes)
;   0xa8d2..0xa986  (180 bytes)
DATA_leido_A8D2:
	defb 0fah,0d2h,090h,040h,010h,010h,040h,090h,0d1h,012h,0d2h,092h,0b1h,060h,0d1h,035h	; a8d2  ...@..@......`.5
	defb 0d2h,0b2h,0fah,0d3h,050h,0a0h,0d2h,050h,020h,050h,0a0h,0d1h,055h,0d3h,070h,0d2h	; a8e2  ....P..P P..U.p.
	defb 000h,070h,040h,070h,0d1h,000h,075h,0d3h,080h,0d2h,010h,080h,050h,080h,0d1h,010h	; a8f2  .p@p..u.....P...
	defb 085h,0d3h,0a0h,0d2h,030h,0a0h,070h,0a0h,0d1h,030h,0fah,058h,050h,050h,050h,078h	; a902  ....0.p..0.XPPPx
	defb 070h,070h,070h,088h,080h,080h,080h,0fah,028h,020h,020h,020h,048h,040h,040h,040h	; a912  ppp.....(   H@@@
	defb 058h,050h,050h,050h,0fah,0d3h,0a0h,0d2h,010h,060h,0a5h,061h,0a1h,0d1h,011h,00bh	; a922  XPPP.....`.a....
	defb 0fah,0d1h,010h,0d2h,090h,040h,040h,090h,0d1h,010h,042h,012h,031h,0d2h,0b0h,0d1h	; a932  .....@@...B.1...
	defb 065h,032h,0d1h,010h,0d2h,090h,040h,040h,090h,0d1h,010h,042h,012h,032h,0d2h,0b8h	; a942  e2....@@...B.2..
	defb 0d1h,010h,0d2h,090h,040h,040h,090h,0d1h,010h,042h,012h,031h,0d2h,0b0h,0d1h,065h	; a952  ....@@...B.1...e
	defb 032h,0fah,0d2h,0a0h,060h,0a0h,0d1h,000h,0d2h,080h,0d1h,000h,010h,0d2h,090h,0d1h	; a962  2...`...........
	defb 010h,0fah,0d2h,0b0h,070h,0b0h,0d1h,010h,0d2h,090h,0d1h,010h,020h,0d2h,0a0h,0d1h	; a972  ....p....... ...
	defb 020h,040h,0fah,0feh	; a982

; ----------------------------------------------------------------------
; DATOS leido_A986: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa986..0xa987  (1 bytes)
DATA_leido_A986:
	defb 004h	; a986

; ----------------------------------------------------------------------
; DATOS leido_A987: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa987..0xa989  (2 bytes)
DATA_leido_A987:
	defb 0d0h,0e9h	; a987

; ----------------------------------------------------------------------
; DATOS leido_A989: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa989..0xa98a  (1 bytes)
DATA_leido_A989:
	defb 004h	; a989

; ----------------------------------------------------------------------
; DATOS leido_A98A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa98a..0xa98b  (1 bytes)
DATA_leido_A98A:
	defb 0f9h	; a98a

; ----------------------------------------------------------------------
; DATOS leido_A98B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa98b..0xa98d  (2 bytes)
DATA_leido_A98B:
	defb 01dh,0abh	; a98b

; ----------------------------------------------------------------------
; DATOS leido_A98D: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa98d..0xa99b  (14 bytes)
DATA_leido_A98D:
	defb 091h,001h,091h,001h,031h,091h,091h,001h,091h,030h,030h,031h,031h,0f9h	; a98d  ....1....0011.

; ----------------------------------------------------------------------
; DATOS leido_A99B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa99b..0xa99d  (2 bytes)
DATA_leido_A99B:
	defb 01dh,0abh	; a99b

; ----------------------------------------------------------------------
; DATOS leido_A99D: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xa99d..0xa9aa  (13 bytes)
DATA_leido_A99D:
	defb 091h,001h,091h,001h,031h,091h,031h,091h,031h,091h,031h,091h,0f9h	; a99d  ....1.1.1.1..

; ----------------------------------------------------------------------
; DATOS leido_A9AA: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9aa..0xa9ac  (2 bytes)
DATA_leido_A9AA:
	defb 05dh,0ach	; a9aa

; ----------------------------------------------------------------------
; DATOS leido_A9AC: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa9ac..0xa9b3  (7 bytes)
DATA_leido_A9AC:
	defb 091h,091h,091h,031h,031h,031h,0fbh	; a9ac

; ----------------------------------------------------------------------
; DATOS leido_A9B3: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa9b3..0xa9b6  (3 bytes)
DATA_leido_A9B3:
	defb 003h,0a9h,0a9h	; a9b3

; ----------------------------------------------------------------------
; DATOS leido_A9B6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9b6..0xa9b7  (1 bytes)
DATA_leido_A9B6:
	defb 0f9h	; a9b6

; ----------------------------------------------------------------------
; DATOS leido_A9B7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9b7..0xa9b9  (2 bytes)
DATA_leido_A9B7:
	defb 05dh,0ach	; a9b7

; ----------------------------------------------------------------------
; DATOS leido_A9B9: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa9b9..0xa9c1  (8 bytes)
DATA_leido_A9B9:
	defb 030h,030h,031h,031h,041h,041h,041h,0fch	; a9b9  0011AAA.

; ----------------------------------------------------------------------
; DATOS leido_A9C1: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa9c1..0xa9c4  (3 bytes)
DATA_leido_A9C1:
	defb 002h,0a9h,0a9h	; a9c1

; ----------------------------------------------------------------------
; DATOS leido_A9C4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9c4..0xa9c5  (1 bytes)
DATA_leido_A9C4:
	defb 0fdh	; a9c4

; ----------------------------------------------------------------------
; DATOS leido_A9C5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9c5..0xa9c7  (2 bytes)
DATA_leido_A9C5:
	defb 08ah,0a9h	; a9c5

; ----------------------------------------------------------------------
; DATOS leido_A9C7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9c7..0xa9c8  (1 bytes)
DATA_leido_A9C7:
	defb 0feh	; a9c7

; ----------------------------------------------------------------------
; DATOS leido_A9C8: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa9c8..0xa9c9  (1 bytes)
DATA_leido_A9C8:
	defb 001h	; a9c8

; ----------------------------------------------------------------------
; DATOS leido_A9C9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9c9..0xa9ca  (1 bytes)
DATA_leido_A9C9:
	defb 0e9h	; a9c9

; ----------------------------------------------------------------------
; DATOS leido_A9CA: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa9ca..0xa9cb  (1 bytes)
DATA_leido_A9CA:
	defb 00ch	; a9ca

; ----------------------------------------------------------------------
; DATOS leido_A9CB: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9cb..0xa9cd  (2 bytes)
DATA_leido_A9CB:
	defb 0c0h,0eah	; a9cb

; ----------------------------------------------------------------------
; DATOS leido_A9CD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9cd..0xa9ce  (1 bytes)
DATA_leido_A9CD:
	defb 008h	; a9cd

; ----------------------------------------------------------------------
; DATOS leido_A9CE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ce..0xa9cf  (1 bytes)
DATA_leido_A9CE:
	defb 0ebh	; a9ce

; ----------------------------------------------------------------------
; DATOS leido_A9CF: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9cf..0xa9d0  (1 bytes)
DATA_leido_A9CF:
	defb 083h	; a9cf

; ----------------------------------------------------------------------
; DATOS leido_A9D0: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9d0..0xa9d1  (1 bytes)
DATA_leido_A9D0:
	defb 013h	; a9d0

; ----------------------------------------------------------------------
; DATOS leido_A9D1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9d1..0xa9d2  (1 bytes)
DATA_leido_A9D1:
	defb 0f9h	; a9d1

; ----------------------------------------------------------------------
; DATOS leido_A9D2: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9d2..0xa9d4  (2 bytes)
DATA_leido_A9D2:
	defb 02eh,0abh	; a9d2

; ----------------------------------------------------------------------
; DATOS leido_A9D4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9d4..0xa9d5  (1 bytes)
DATA_leido_A9D4:
	defb 0f9h	; a9d4

; ----------------------------------------------------------------------
; DATOS leido_A9D5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9d5..0xa9d7  (2 bytes)
DATA_leido_A9D5:
	defb 04ch,0abh	; a9d5

; ----------------------------------------------------------------------
; DATOS leido_A9D7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9d7..0xa9d9  (2 bytes)
DATA_leido_A9D7:
	defb 02bh,0f9h	; a9d7

; ----------------------------------------------------------------------
; DATOS leido_A9D9: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9d9..0xa9db  (2 bytes)
DATA_leido_A9D9:
	defb 02eh,0abh	; a9d9

; ----------------------------------------------------------------------
; DATOS leido_A9DB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9db..0xa9dc  (1 bytes)
DATA_leido_A9DB:
	defb 0f9h	; a9db

; ----------------------------------------------------------------------
; DATOS leido_A9DC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9dc..0xa9de  (2 bytes)
DATA_leido_A9DC:
	defb 04ch,0abh	; a9dc

; ----------------------------------------------------------------------
; DATOS leido_A9DE: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9de..0xa9e0  (2 bytes)
DATA_leido_A9DE:
	defb 02ah,0e9h	; a9de

; ----------------------------------------------------------------------
; DATOS leido_A9E0: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa9e0..0xa9e1  (1 bytes)
DATA_leido_A9E0:
	defb 008h	; a9e0

; ----------------------------------------------------------------------
; DATOS leido_A9E1: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9e1..0xa9e3  (2 bytes)
DATA_leido_A9E1:
	defb 0c1h,0f9h	; a9e1

; ----------------------------------------------------------------------
; DATOS leido_A9E3: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9e3..0xa9e5  (2 bytes)
DATA_leido_A9E3:
	defb 062h,0abh	; a9e3

; ----------------------------------------------------------------------
; DATOS leido_A9E5: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa9e5..0xa9ec  (7 bytes)
DATA_leido_A9E5:
	defb 0b8h,090h,0b0h,090h,089h,0c1h,0f9h	; a9e5

; ----------------------------------------------------------------------
; DATOS leido_A9EC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9ec..0xa9ee  (2 bytes)
DATA_leido_A9EC:
	defb 062h,0abh	; a9ec

; ----------------------------------------------------------------------
; DATOS leido_A9EE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ee..0xa9ef  (1 bytes)
DATA_leido_A9EE:
	defb 0e9h	; a9ee

; ----------------------------------------------------------------------
; DATOS leido_A9EF: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa9ef..0xa9f0  (1 bytes)
DATA_leido_A9EF:
	defb 010h	; a9ef

; ----------------------------------------------------------------------
; DATOS leido_A9F0: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9f0..0xa9f2  (2 bytes)
DATA_leido_A9F0:
	defb 0bah,0fdh	; a9f0

; ----------------------------------------------------------------------
; DATOS leido_A9F2: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9f2..0xa9f4  (2 bytes)
DATA_leido_A9F2:
	defb 0c9h,0a9h	; a9f2

; ----------------------------------------------------------------------
; DATOS leido_A9F4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9f4..0xa9f5  (1 bytes)
DATA_leido_A9F4:
	defb 0feh	; a9f4

; ----------------------------------------------------------------------
; DATOS leido_A9F5: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa9f5..0xa9f6  (1 bytes)
DATA_leido_A9F5:
	defb 001h	; a9f5

; ----------------------------------------------------------------------
; DATOS leido_A9F6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9f6..0xa9f7  (1 bytes)
DATA_leido_A9F6:
	defb 0f8h	; a9f6

; ----------------------------------------------------------------------
; DATOS leido_A9F7: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa9f7..0xa9f8  (1 bytes)
DATA_leido_A9F7:
	defb 023h	; a9f7

; ----------------------------------------------------------------------
; DATOS leido_A9F8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9f8..0xa9f9  (1 bytes)
DATA_leido_A9F8:
	defb 0e9h	; a9f8

; ----------------------------------------------------------------------
; DATOS leido_A9F9: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa9f9..0xa9fa  (1 bytes)
DATA_leido_A9F9:
	defb 004h	; a9f9

; ----------------------------------------------------------------------
; DATOS leido_A9FA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9fa..0xa9fb  (1 bytes)
DATA_leido_A9FA:
	defb 0eah	; a9fa

; ----------------------------------------------------------------------
; DATOS leido_A9FB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9fb..0xa9fc  (1 bytes)
DATA_leido_A9FB:
	defb 00dh	; a9fb

; ----------------------------------------------------------------------
; DATOS leido_A9FC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9fc..0xa9fd  (1 bytes)
DATA_leido_A9FC:
	defb 0ebh	; a9fc

; ----------------------------------------------------------------------
; DATOS leido_A9FD: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9fd..0xa9fe  (1 bytes)
DATA_leido_A9FD:
	defb 009h	; a9fd

; ----------------------------------------------------------------------
; DATOS leido_A9FE: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9fe..0xa9ff  (1 bytes)
DATA_leido_A9FE:
	defb 041h	; a9fe

; ----------------------------------------------------------------------
; DATOS leido_A9FF: 19 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (19 bytes)
;   0xa9ff..0xaa12  (19 bytes)
DATA_leido_A9FF:
	defb 0d4h,003h,003h,001h,001h,003h,003h,0d5h,0a1h,0b1h,0d4h,003h,003h,001h,001h,003h	; a9ff  ................
	defb 005h,001h,0fbh	; aa0f

; ----------------------------------------------------------------------
; DATOS leido_AA12: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaa12..0xaa15  (3 bytes)
DATA_leido_AA12:
	defb 008h,000h,0aah	; aa12

; ----------------------------------------------------------------------
; DATOS leido_AA15: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa15..0xaa16  (1 bytes)
DATA_leido_AA15:
	defb 0ebh	; aa15

; ----------------------------------------------------------------------
; DATOS leido_AA16: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaa16..0xaa17  (1 bytes)
DATA_leido_AA16:
	defb 047h	; aa16

; ----------------------------------------------------------------------
; DATOS leido_AA17: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaa17..0xaa18  (1 bytes)
DATA_leido_AA17:
	defb 089h	; aa17

; ----------------------------------------------------------------------
; DATOS leido_AA18: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa18..0xaa19  (1 bytes)
DATA_leido_AA18:
	defb 0f9h	; aa18

; ----------------------------------------------------------------------
; DATOS leido_AA19: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa19..0xaa1b  (2 bytes)
DATA_leido_AA19:
	defb 085h,0abh	; aa19

; ----------------------------------------------------------------------
; DATOS leido_AA1B: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xaa1b..0xaa28  (13 bytes)
DATA_leido_AA1B:
	defb 021h,031h,043h,043h,041h,041h,041h,041h,041h,041h,051h,061h,0f9h	; aa1b  !1CCAAAAAAQa.

; ----------------------------------------------------------------------
; DATOS leido_AA28: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa28..0xaa2a  (2 bytes)
DATA_leido_AA28:
	defb 085h,0abh	; aa28

; ----------------------------------------------------------------------
; DATOS leido_AA2A: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xaa2a..0xaa37  (13 bytes)
DATA_leido_AA2A:
	defb 051h,061h,073h,073h,071h,071h,071h,071h,071h,071h,071h,071h,0fdh	; aa2a  Qassqqqqqqqq.

; ----------------------------------------------------------------------
; DATOS leido_AA37: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa37..0xaa39  (2 bytes)
DATA_leido_AA37:
	defb 0fch,0a9h	; aa37

; ----------------------------------------------------------------------
; DATOS leido_AA39: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa39..0xaa3a  (1 bytes)
DATA_leido_AA39:
	defb 0feh	; aa39

; ----------------------------------------------------------------------
; DATOS leido_AA3A: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa3a..0xaa3b  (1 bytes)
DATA_leido_AA3A:
	defb 001h	; aa3a

; ----------------------------------------------------------------------
; DATOS leido_AA3B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa3b..0xaa3c  (1 bytes)
DATA_leido_AA3B:
	defb 0f8h	; aa3b

; ----------------------------------------------------------------------
; DATOS leido_AA3C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaa3c..0xaa3d  (1 bytes)
DATA_leido_AA3C:
	defb 015h	; aa3c

; ----------------------------------------------------------------------
; DATOS leido_AA3D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa3d..0xaa3e  (1 bytes)
DATA_leido_AA3D:
	defb 0e9h	; aa3d

; ----------------------------------------------------------------------
; DATOS leido_AA3E: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa3e..0xaa3f  (1 bytes)
DATA_leido_AA3E:
	defb 004h	; aa3e

; ----------------------------------------------------------------------
; DATOS leido_AA3F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa3f..0xaa40  (1 bytes)
DATA_leido_AA3F:
	defb 0dbh	; aa3f

; ----------------------------------------------------------------------
; DATOS leido_AA40: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaa40..0xaa41  (1 bytes)
DATA_leido_AA40:
	defb 002h	; aa40

; ----------------------------------------------------------------------
; DATOS leido_AA41: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa41..0xaa42  (1 bytes)
DATA_leido_AA41:
	defb 0ebh	; aa41

; ----------------------------------------------------------------------
; DATOS leido_AA42: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaa42..0xaa43  (1 bytes)
DATA_leido_AA42:
	defb 033h	; aa42

; ----------------------------------------------------------------------
; DATOS leido_AA43: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaa43..0xaa44  (1 bytes)
DATA_leido_AA43:
	defb 013h	; aa43

; ----------------------------------------------------------------------
; DATOS leido_AA44: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa44..0xaa45  (1 bytes)
DATA_leido_AA44:
	defb 0f9h	; aa44

; ----------------------------------------------------------------------
; DATOS leido_AA45: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa45..0xaa47  (2 bytes)
DATA_leido_AA45:
	defb 0cfh,0abh	; aa45

; ----------------------------------------------------------------------
; DATOS leido_AA47: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xaa47..0xaa58  (17 bytes)
DATA_leido_AA47:
	defb 0d2h,021h,0d1h,021h,0d2h,021h,061h,0d1h,061h,0d2h,061h,091h,0d1h,091h,0d2h,091h	; aa47  .!.!.!a.a.a.....
	defb 0eah	; aa57

; ----------------------------------------------------------------------
; DATOS leido_AA58: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa58..0xaa59  (1 bytes)
DATA_leido_AA58:
	defb 007h	; aa58

; ----------------------------------------------------------------------
; DATOS leido_AA59: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xaa59..0xaa5e  (5 bytes)
DATA_leido_AA59:
	defb 0d1h,020h,0d0h,020h,0fbh	; aa59

; ----------------------------------------------------------------------
; DATOS leido_AA5E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaa5e..0xaa61  (3 bytes)
DATA_leido_AA5E:
	defb 003h,057h,0aah	; aa5e

; ----------------------------------------------------------------------
; DATOS leido_AA61: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa61..0xaa62  (1 bytes)
DATA_leido_AA61:
	defb 0f9h	; aa61

; ----------------------------------------------------------------------
; DATOS leido_AA62: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa62..0xaa64  (2 bytes)
DATA_leido_AA62:
	defb 0cfh,0abh	; aa62

; ----------------------------------------------------------------------
; DATOS leido_AA64: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xaa64..0xaa69  (5 bytes)
DATA_leido_AA64:
	defb 0d2h,000h,0d1h,000h,0fbh	; aa64

; ----------------------------------------------------------------------
; DATOS leido_AA69: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaa69..0xaa6c  (3 bytes)
DATA_leido_AA69:
	defb 00ch,064h,0aah	; aa69

; ----------------------------------------------------------------------
; DATOS leido_AA6C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa6c..0xaa6d  (1 bytes)
DATA_leido_AA6C:
	defb 0f9h	; aa6c

; ----------------------------------------------------------------------
; DATOS leido_AA6D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa6d..0xaa6f  (2 bytes)
DATA_leido_AA6D:
	defb 0f0h,0abh	; aa6d

; ----------------------------------------------------------------------
; DATOS leido_AA6F: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xaa6f..0xaa77  (8 bytes)
DATA_leido_AA6F:
	defb 081h,081h,081h,0d0h,041h,041h,041h,0feh	; aa6f  ....AAA.

; ----------------------------------------------------------------------
; DATOS leido_AA77: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa77..0xaa78  (1 bytes)
DATA_leido_AA77:
	defb 004h	; aa77

; ----------------------------------------------------------------------
; DATOS leido_AA78: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa78..0xaa7a  (2 bytes)
DATA_leido_AA78:
	defb 0d0h,0f8h	; aa78

; ----------------------------------------------------------------------
; DATOS leido_AA7A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaa7a..0xaa7b  (1 bytes)
DATA_leido_AA7A:
	defb 005h	; aa7a

; ----------------------------------------------------------------------
; DATOS leido_AA7B: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xaa7b..0xaa7f  (4 bytes)
DATA_leido_AA7B:
	defb 061h,071h,081h,0f9h	; aa7b

; ----------------------------------------------------------------------
; DATOS leido_AA7F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa7f..0xaa81  (2 bytes)
DATA_leido_AA7F:
	defb 0f0h,0abh	; aa7f

; ----------------------------------------------------------------------
; DATOS leido_AA81: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xaa81..0xaa89  (8 bytes)
DATA_leido_AA81:
	defb 071h,071h,071h,0d0h,021h,021h,021h,0feh	; aa81  qqq.!!!.

; ----------------------------------------------------------------------
; DATOS leido_AA89: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa89..0xaa8a  (1 bytes)
DATA_leido_AA89:
	defb 004h	; aa89

; ----------------------------------------------------------------------
; DATOS leido_AA8A: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa8a..0xaa8c  (2 bytes)
DATA_leido_AA8A:
	defb 0d0h,0f8h	; aa8a

; ----------------------------------------------------------------------
; DATOS leido_AA8C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaa8c..0xaa8d  (1 bytes)
DATA_leido_AA8C:
	defb 005h	; aa8c

; ----------------------------------------------------------------------
; DATOS leido_AA8D: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xaa8d..0xaa94  (7 bytes)
DATA_leido_AA8D:
	defb 060h,060h,070h,070h,080h,080h,0fdh	; aa8d

; ----------------------------------------------------------------------
; DATOS leido_AA94: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa94..0xaa96  (2 bytes)
DATA_leido_AA94:
	defb 039h,0aah	; aa94

; ----------------------------------------------------------------------
; DATOS leido_AA96: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa96..0xaa97  (1 bytes)
DATA_leido_AA96:
	defb 0feh	; aa96

; ----------------------------------------------------------------------
; DATOS leido_AA97: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa97..0xaa98  (1 bytes)
DATA_leido_AA97:
	defb 001h	; aa97

; ----------------------------------------------------------------------
; DATOS leido_AA98: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa98..0xaa99  (1 bytes)
DATA_leido_AA98:
	defb 0eah	; aa98

; ----------------------------------------------------------------------
; DATOS leido_AA99: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa99..0xaa9a  (1 bytes)
DATA_leido_AA99:
	defb 00ah	; aa99

; ----------------------------------------------------------------------
; DATOS leido_AA9A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa9a..0xaa9b  (1 bytes)
DATA_leido_AA9A:
	defb 0ebh	; aa9a

; ----------------------------------------------------------------------
; DATOS leido_AA9B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaa9b..0xaa9c  (1 bytes)
DATA_leido_AA9B:
	defb 082h	; aa9b

; ----------------------------------------------------------------------
; DATOS leido_AA9C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaa9c..0xaa9d  (1 bytes)
DATA_leido_AA9C:
	defb 043h	; aa9c

; ----------------------------------------------------------------------
; DATOS leido_AA9D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa9d..0xaa9e  (1 bytes)
DATA_leido_AA9D:
	defb 0f9h	; aa9d

; ----------------------------------------------------------------------
; DATOS leido_AA9E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa9e..0xaaa0  (2 bytes)
DATA_leido_AA9E:
	defb 02eh,0abh	; aa9e

; ----------------------------------------------------------------------
; DATOS leido_AAA0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaa0..0xaaa1  (1 bytes)
DATA_leido_AAA0:
	defb 0eah	; aaa0

; ----------------------------------------------------------------------
; DATOS leido_AAA1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaaa1..0xaaa2  (1 bytes)
DATA_leido_AAA1:
	defb 00bh	; aaa1

; ----------------------------------------------------------------------
; DATOS leido_AAA2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaa2..0xaaa3  (1 bytes)
DATA_leido_AAA2:
	defb 0f9h	; aaa2

; ----------------------------------------------------------------------
; DATOS leido_AAA3: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaaa3..0xaaa5  (2 bytes)
DATA_leido_AAA3:
	defb 04ch,0abh	; aaa3

; ----------------------------------------------------------------------
; DATOS leido_AAA5: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaaa5..0xaaa7  (2 bytes)
DATA_leido_AAA5:
	defb 02bh,0f9h	; aaa5

; ----------------------------------------------------------------------
; DATOS leido_AAA7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaaa7..0xaaa9  (2 bytes)
DATA_leido_AAA7:
	defb 02eh,0abh	; aaa7

; ----------------------------------------------------------------------
; DATOS leido_AAA9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaa9..0xaaaa  (1 bytes)
DATA_leido_AAA9:
	defb 0eah	; aaa9

; ----------------------------------------------------------------------
; DATOS leido_AAAA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaaaa..0xaaab  (1 bytes)
DATA_leido_AAAA:
	defb 00bh	; aaaa

; ----------------------------------------------------------------------
; DATOS leido_AAAB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaab..0xaaac  (1 bytes)
DATA_leido_AAAB:
	defb 0f9h	; aaab

; ----------------------------------------------------------------------
; DATOS leido_AAAC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaaac..0xaaae  (2 bytes)
DATA_leido_AAAC:
	defb 04ch,0abh	; aaac

; ----------------------------------------------------------------------
; DATOS leido_AAAE: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaaae..0xaab0  (2 bytes)
DATA_leido_AAAE:
	defb 02bh,0f8h	; aaae

; ----------------------------------------------------------------------
; DATOS leido_AAB0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaab0..0xaab1  (1 bytes)
DATA_leido_AAB0:
	defb 053h	; aab0

; ----------------------------------------------------------------------
; DATOS leido_AAB1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaab1..0xaab2  (1 bytes)
DATA_leido_AAB1:
	defb 0e9h	; aab1

; ----------------------------------------------------------------------
; DATOS leido_AAB2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaab2..0xaab3  (1 bytes)
DATA_leido_AAB2:
	defb 008h	; aab2

; ----------------------------------------------------------------------
; DATOS leido_AAB3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaab3..0xaab4  (1 bytes)
DATA_leido_AAB3:
	defb 0eah	; aab3

; ----------------------------------------------------------------------
; DATOS leido_AAB4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaab4..0xaab5  (1 bytes)
DATA_leido_AAB4:
	defb 00bh	; aab4

; ----------------------------------------------------------------------
; DATOS leido_AAB5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaab5..0xaab6  (1 bytes)
DATA_leido_AAB5:
	defb 0ebh	; aab5

; ----------------------------------------------------------------------
; DATOS leido_AAB6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaab6..0xaab7  (1 bytes)
DATA_leido_AAB6:
	defb 043h	; aab6

; ----------------------------------------------------------------------
; DATOS leido_AAB7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaab7..0xaab8  (1 bytes)
DATA_leido_AAB7:
	defb 023h	; aab7

; ----------------------------------------------------------------------
; DATOS leido_AAB8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaab8..0xaab9  (1 bytes)
DATA_leido_AAB8:
	defb 0f9h	; aab8

; ----------------------------------------------------------------------
; DATOS leido_AAB9: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaab9..0xaabb  (2 bytes)
DATA_leido_AAB9:
	defb 062h,0abh	; aab9

; ----------------------------------------------------------------------
; DATOS leido_AABB: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xaabb..0xaac1  (6 bytes)
DATA_leido_AABB:
	defb 0b8h,090h,0b0h,090h,08bh,0f9h	; aabb

; ----------------------------------------------------------------------
; DATOS leido_AAC1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaac1..0xaac3  (2 bytes)
DATA_leido_AAC1:
	defb 062h,0abh	; aac1

; ----------------------------------------------------------------------
; DATOS leido_AAC3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaac3..0xaac4  (1 bytes)
DATA_leido_AAC3:
	defb 0e9h	; aac3

; ----------------------------------------------------------------------
; DATOS leido_AAC4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaac4..0xaac5  (1 bytes)
DATA_leido_AAC4:
	defb 010h	; aac4

; ----------------------------------------------------------------------
; DATOS leido_AAC5: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaac5..0xaac7  (2 bytes)
DATA_leido_AAC5:
	defb 0bbh,0fdh	; aac5

; ----------------------------------------------------------------------
; DATOS leido_AAC7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaac7..0xaac9  (2 bytes)
DATA_leido_AAC7:
	defb 098h,0aah	; aac7

; ----------------------------------------------------------------------
; DATOS leido_AAC9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaac9..0xaaca  (1 bytes)
DATA_leido_AAC9:
	defb 0feh	; aac9

; ----------------------------------------------------------------------
; DATOS leido_AACA: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaaca..0xaacb  (1 bytes)
DATA_leido_AACA:
	defb 001h	; aaca

; ----------------------------------------------------------------------
; DATOS leido_AACB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaacb..0xaacc  (1 bytes)
DATA_leido_AACB:
	defb 0f1h	; aacb

; ----------------------------------------------------------------------
; DATOS leido_AACC: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaacc..0xaacd  (1 bytes)
DATA_leido_AACC:
	defb 042h	; aacc

; ----------------------------------------------------------------------
; DATOS leido_AACD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaacd..0xaace  (1 bytes)
DATA_leido_AACD:
	defb 0f2h	; aacd

; ----------------------------------------------------------------------
; DATOS leido_AACE: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaace..0xaacf  (1 bytes)
DATA_leido_AACE:
	defb 014h	; aace

; ----------------------------------------------------------------------
; DATOS leido_AACF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaacf..0xaad0  (1 bytes)
DATA_leido_AACF:
	defb 0edh	; aacf

; ----------------------------------------------------------------------
; DATOS leido_AAD0: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xaad0..0xaad1  (1 bytes)
DATA_leido_AAD0:
	defb 007h	; aad0

; ----------------------------------------------------------------------
; DATOS leido_AAD1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad1..0xaad2  (1 bytes)
DATA_leido_AAD1:
	defb 0ebh	; aad1

; ----------------------------------------------------------------------
; DATOS leido_AAD2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaad2..0xaad3  (1 bytes)
DATA_leido_AAD2:
	defb 082h	; aad2

; ----------------------------------------------------------------------
; DATOS leido_AAD3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaad3..0xaad4  (1 bytes)
DATA_leido_AAD3:
	defb 043h	; aad3

; ----------------------------------------------------------------------
; DATOS leido_AAD4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad4..0xaad5  (1 bytes)
DATA_leido_AAD4:
	defb 0eah	; aad4

; ----------------------------------------------------------------------
; DATOS leido_AAD5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaad5..0xaad6  (1 bytes)
DATA_leido_AAD5:
	defb 00ah	; aad5

; ----------------------------------------------------------------------
; DATOS leido_AAD6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad6..0xaad7  (1 bytes)
DATA_leido_AAD6:
	defb 0e9h	; aad6

; ----------------------------------------------------------------------
; DATOS leido_AAD7: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaad7..0xaad8  (1 bytes)
DATA_leido_AAD7:
	defb 008h	; aad7

; ----------------------------------------------------------------------
; DATOS leido_AAD8: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xaad8..0xaae9  (17 bytes)
DATA_leido_AAD8:
	defb 0d2h,021h,071h,091h,0d1h,009h,000h,000h,001h,0d2h,0b1h,091h,061h,0a1h,0d1h,011h	; aad8  .!q.........a...
	defb 0e9h	; aae8

; ----------------------------------------------------------------------
; DATOS leido_AAE9: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaae9..0xaaea  (1 bytes)
DATA_leido_AAE9:
	defb 00ch	; aae9

; ----------------------------------------------------------------------
; DATOS leido_AAEA: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaaea..0xaaec  (2 bytes)
DATA_leido_AAEA:
	defb 06bh,0e9h	; aaea

; ----------------------------------------------------------------------
; DATOS leido_AAEC: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaaec..0xaaed  (1 bytes)
DATA_leido_AAEC:
	defb 008h	; aaec

; ----------------------------------------------------------------------
; DATOS leido_AAED: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaed..0xaaee  (1 bytes)
DATA_leido_AAED:
	defb 0eah	; aaed

; ----------------------------------------------------------------------
; DATOS leido_AAEE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaaee..0xaaef  (1 bytes)
DATA_leido_AAEE:
	defb 00bh	; aaee

; ----------------------------------------------------------------------
; DATOS leido_AAEF: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xaaef..0xab00  (17 bytes)
DATA_leido_AAEF:
	defb 0d2h,021h,071h,091h,0d1h,009h,000h,000h,001h,0d2h,0b1h,091h,091h,0d1h,021h,061h	; aaef  .!q...........!a
	defb 0e9h	; aaff

; ----------------------------------------------------------------------
; DATOS leido_AB00: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab00..0xab01  (1 bytes)
DATA_leido_AB00:
	defb 00ch	; ab00

; ----------------------------------------------------------------------
; DATOS leido_AB01: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xab01..0xab03  (2 bytes)
DATA_leido_AB01:
	defb 09bh,0fbh	; ab01

; ----------------------------------------------------------------------
; DATOS leido_AB03: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xab03..0xab06  (3 bytes)
DATA_leido_AB03:
	defb 002h,0d4h,0aah	; ab03

; ----------------------------------------------------------------------
; DATOS leido_AB06: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab06..0xab07  (1 bytes)
DATA_leido_AB06:
	defb 0e9h	; ab06

; ----------------------------------------------------------------------
; DATOS leido_AB07: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab07..0xab08  (1 bytes)
DATA_leido_AB07:
	defb 008h	; ab07

; ----------------------------------------------------------------------
; DATOS leido_AB08: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab08..0xab09  (1 bytes)
DATA_leido_AB08:
	defb 0eah	; ab08

; ----------------------------------------------------------------------
; DATOS leido_AB09: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xab09..0xab0a  (1 bytes)
DATA_leido_AB09:
	defb 00bh	; ab09

; ----------------------------------------------------------------------
; DATOS leido_AB0A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab0a..0xab0b  (1 bytes)
DATA_leido_AB0A:
	defb 0ebh	; ab0a

; ----------------------------------------------------------------------
; DATOS leido_AB0B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xab0b..0xab0c  (1 bytes)
DATA_leido_AB0B:
	defb 043h	; ab0b

; ----------------------------------------------------------------------
; DATOS leido_AB0C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xab0c..0xab0d  (1 bytes)
DATA_leido_AB0C:
	defb 023h	; ab0c

; ----------------------------------------------------------------------
; DATOS leido_AB0D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab0d..0xab0e  (1 bytes)
DATA_leido_AB0D:
	defb 0f9h	; ab0d

; ----------------------------------------------------------------------
; DATOS leido_AB0E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab0e..0xab10  (2 bytes)
DATA_leido_AB0E:
	defb 0b1h,0abh	; ab0e

; ----------------------------------------------------------------------
; DATOS leido_AB10: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xab10..0xab16  (6 bytes)
DATA_leido_AB10:
	defb 088h,060h,080h,060h,04bh,0f9h	; ab10

; ----------------------------------------------------------------------
; DATOS leido_AB16: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab16..0xab18  (2 bytes)
DATA_leido_AB16:
	defb 0b1h,0abh	; ab16

; ----------------------------------------------------------------------
; DATOS leido_AB18: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xab18..0xab1b  (3 bytes)
DATA_leido_AB18:
	defb 08bh,07bh,0fdh	; ab18

; ----------------------------------------------------------------------
; DATOS leido_AB1B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab1b..0xab1d  (2 bytes)
DATA_leido_AB1B:
	defb 0cfh,0aah	; ab1b

; ----------------------------------------------------------------------
; DATOS leido_AB1D: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xab1d..0xab2a  (13 bytes)
DATA_leido_AB1D:
	defb 091h,001h,091h,001h,031h,091h,091h,001h,091h,031h,091h,091h,0fbh	; ab1d  ....1....1...

; ----------------------------------------------------------------------
; DATOS leido_AB2A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xab2a..0xab2d  (3 bytes)
DATA_leido_AB2A:
	defb 007h,01dh,0abh	; ab2a

; ----------------------------------------------------------------------
; DATOS leido_AB2D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xab2d..0xab2f  (2 bytes)
DATA_leido_AB2D:
	defb 0fah,0f8h	; ab2d

; ----------------------------------------------------------------------
; DATOS leido_AB2F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xab2f..0xab30  (1 bytes)
DATA_leido_AB2F:
	defb 053h	; ab2f

; ----------------------------------------------------------------------
; DATOS leido_AB30: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab30..0xab31  (1 bytes)
DATA_leido_AB30:
	defb 0f1h	; ab30

; ----------------------------------------------------------------------
; DATOS leido_AB31: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xab31..0xab32  (1 bytes)
DATA_leido_AB31:
	defb 042h	; ab31

; ----------------------------------------------------------------------
; DATOS leido_AB32: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab32..0xab33  (1 bytes)
DATA_leido_AB32:
	defb 0f2h	; ab32

; ----------------------------------------------------------------------
; DATOS leido_AB33: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xab33..0xab34  (1 bytes)
DATA_leido_AB33:
	defb 014h	; ab33

; ----------------------------------------------------------------------
; DATOS leido_AB34: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab34..0xab35  (1 bytes)
DATA_leido_AB34:
	defb 0e9h	; ab34

; ----------------------------------------------------------------------
; DATOS leido_AB35: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab35..0xab36  (1 bytes)
DATA_leido_AB35:
	defb 008h	; ab35

; ----------------------------------------------------------------------
; DATOS leido_AB36: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab36..0xab37  (1 bytes)
DATA_leido_AB36:
	defb 0edh	; ab36

; ----------------------------------------------------------------------
; DATOS leido_AB37: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xab37..0xab38  (1 bytes)
DATA_leido_AB37:
	defb 007h	; ab37

; ----------------------------------------------------------------------
; DATOS leido_AB38: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xab38..0xab49  (17 bytes)
DATA_leido_AB38:
	defb 0d2h,071h,0d1h,001h,021h,059h,040h,050h,041h,021h,001h,0d2h,0a1h,0d1h,011h,061h	; ab38  .q..!Y@PA!.....a
	defb 0e9h	; ab48

; ----------------------------------------------------------------------
; DATOS leido_AB49: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab49..0xab4a  (1 bytes)
DATA_leido_AB49:
	defb 00ch	; ab49

; ----------------------------------------------------------------------
; DATOS leido_AB4A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xab4a..0xab4d  (3 bytes)
DATA_leido_AB4A:
	defb 0abh,0fah,0f8h	; ab4a

; ----------------------------------------------------------------------
; DATOS leido_AB4D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xab4d..0xab4e  (1 bytes)
DATA_leido_AB4D:
	defb 009h	; ab4d

; ----------------------------------------------------------------------
; DATOS leido_AB4E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab4e..0xab4f  (1 bytes)
DATA_leido_AB4E:
	defb 0e9h	; ab4e

; ----------------------------------------------------------------------
; DATOS leido_AB4F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab4f..0xab50  (1 bytes)
DATA_leido_AB4F:
	defb 008h	; ab4f

; ----------------------------------------------------------------------
; DATOS leido_AB50: 15 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (15 bytes)
;   0xab50..0xab5f  (15 bytes)
DATA_leido_AB50:
	defb 0d2h,071h,0d1h,001h,021h,059h,040h,050h,041h,021h,001h,021h,061h,091h,0e9h	; ab50  .q..!Y@PA!.!a..

; ----------------------------------------------------------------------
; DATOS leido_AB5F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab5f..0xab60  (1 bytes)
DATA_leido_AB5F:
	defb 00ch	; ab5f

; ----------------------------------------------------------------------
; DATOS leido_AB60: 18 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (18 bytes)
;   0xab60..0xab72  (18 bytes)
DATA_leido_AB60:
	defb 0d0h,0fah,0d1h,011h,011h,021h,0d2h,0a8h,0b0h,0d1h,010h,020h,041h,021h,010h,0d2h	; ab60  .....!..... A!..
	defb 0b0h,0fbh	; ab70

; ----------------------------------------------------------------------
; DATOS leido_AB72: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xab72..0xab75  (3 bytes)
DATA_leido_AB72:
	defb 002h,062h,0abh	; ab72

; ----------------------------------------------------------------------
; DATOS leido_AB75: 34 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (34 bytes)
;   0xab75..0xab97  (34 bytes)
DATA_leido_AB75:
	defb 0b1h,0b1h,0d1h,001h,0d2h,098h,090h,0b0h,0d1h,000h,021h,001h,0d2h,0b0h,090h,0fah	; ab75  ..........!.....
	defb 0d4h,073h,073h,071h,071h,073h,073h,051h,061h,073h,073h,071h,071h,073h,073h,071h	; ab85  .ssqqssQassqqssq
	defb 071h,0fbh	; ab95

; ----------------------------------------------------------------------
; DATOS leido_AB97: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xab97..0xab9a  (3 bytes)
DATA_leido_AB97:
	defb 002h,085h,0abh	; ab97

; ----------------------------------------------------------------------
; DATOS leido_AB9A: 38 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (38 bytes)
;   0xab9a..0xabc0  (38 bytes)
DATA_leido_AB9A:
	defb 053h,053h,051h,051h,053h,053h,031h,041h,053h,053h,051h,051h,053h,053h,051h,051h	; ab9a  SSQQSS1ASSQQSSQQ
	defb 043h,043h,041h,041h,043h,043h,0fah,0d2h,0a1h,0a1h,0b1h,078h,080h,0a0h,0b0h,0d1h	; abaa  CCAACC.....x....
	defb 011h,0d2h,0b1h,0a0h,080h,0fbh	; abba

; ----------------------------------------------------------------------
; DATOS leido_ABC0: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xabc0..0xabc3  (3 bytes)
DATA_leido_ABC0:
	defb 002h,0b1h,0abh	; abc0

; ----------------------------------------------------------------------
; DATOS leido_ABC3: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xabc3..0xabd0  (13 bytes)
DATA_leido_ABC3:
	defb 071h,071h,091h,058h,050h,070h,090h,0b1h,091h,070h,050h,0fah,0eah	; abc3  qq.XPp...pP..

; ----------------------------------------------------------------------
; DATOS leido_ABD0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xabd0..0xabd1  (1 bytes)
DATA_leido_ABD0:
	defb 009h	; abd0

; ----------------------------------------------------------------------
; DATOS leido_ABD1: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xabd1..0xabd6  (5 bytes)
DATA_leido_ABD1:
	defb 0d2h,001h,0d1h,001h,0fbh	; abd1

; ----------------------------------------------------------------------
; DATOS leido_ABD6: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xabd6..0xabd9  (3 bytes)
DATA_leido_ABD6:
	defb 012h,0d1h,0abh	; abd6

; ----------------------------------------------------------------------
; DATOS leido_ABD9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabd9..0xabda  (1 bytes)
DATA_leido_ABD9:
	defb 0eah	; abd9

; ----------------------------------------------------------------------
; DATOS leido_ABDA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xabda..0xabdb  (1 bytes)
DATA_leido_ABDA:
	defb 008h	; abda

; ----------------------------------------------------------------------
; DATOS leido_ABDB: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xabdb..0xabe0  (5 bytes)
DATA_leido_ABDB:
	defb 0d2h,000h,0d1h,000h,0fbh	; abdb

; ----------------------------------------------------------------------
; DATOS leido_ABE0: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xabe0..0xabe3  (3 bytes)
DATA_leido_ABE0:
	defb 00ch,0dbh,0abh	; abe0

; ----------------------------------------------------------------------
; DATOS leido_ABE3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabe3..0xabe4  (1 bytes)
DATA_leido_ABE3:
	defb 0eah	; abe3

; ----------------------------------------------------------------------
; DATOS leido_ABE4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xabe4..0xabe5  (1 bytes)
DATA_leido_ABE4:
	defb 009h	; abe4

; ----------------------------------------------------------------------
; DATOS leido_ABE5: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xabe5..0xabea  (5 bytes)
DATA_leido_ABE5:
	defb 0d2h,001h,0d1h,001h,0fbh	; abe5

; ----------------------------------------------------------------------
; DATOS leido_ABEA: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xabea..0xabed  (3 bytes)
DATA_leido_ABEA:
	defb 012h,0e5h,0abh	; abea

; ----------------------------------------------------------------------
; DATOS leido_ABED: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabed..0xabee  (1 bytes)
DATA_leido_ABED:
	defb 0eah	; abed

; ----------------------------------------------------------------------
; DATOS leido_ABEE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xabee..0xabef  (1 bytes)
DATA_leido_ABEE:
	defb 008h	; abee

; ----------------------------------------------------------------------
; DATOS leido_ABEF: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xabef..0xabf1  (2 bytes)
DATA_leido_ABEF:
	defb 0fah,0feh	; abef

; ----------------------------------------------------------------------
; DATOS leido_ABF1: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xabf1..0xabf2  (1 bytes)
DATA_leido_ABF1:
	defb 004h	; abf1

; ----------------------------------------------------------------------
; DATOS leido_ABF2: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xabf2..0xabf4  (2 bytes)
DATA_leido_ABF2:
	defb 0d0h,0e9h	; abf2

; ----------------------------------------------------------------------
; DATOS leido_ABF4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xabf4..0xabf5  (1 bytes)
DATA_leido_ABF4:
	defb 004h	; abf4

; ----------------------------------------------------------------------
; DATOS leido_ABF5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabf5..0xabf6  (1 bytes)
DATA_leido_ABF5:
	defb 0f8h	; abf5

; ----------------------------------------------------------------------
; DATOS leido_ABF6: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xabf6..0xabf7  (1 bytes)
DATA_leido_ABF6:
	defb 005h	; abf6

; ----------------------------------------------------------------------
; DATOS leido_ABF7: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xabf7..0xabfb  (4 bytes)
DATA_leido_ABF7:
	defb 083h,083h,083h,0feh	; abf7

; ----------------------------------------------------------------------
; DATOS leido_ABFB: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xabfb..0xabfc  (1 bytes)
DATA_leido_ABFB:
	defb 001h	; abfb

; ----------------------------------------------------------------------
; DATOS leido_ABFC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabfc..0xabfd  (1 bytes)
DATA_leido_ABFC:
	defb 0eah	; abfc

; ----------------------------------------------------------------------
; DATOS leido_ABFD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xabfd..0xabfe  (1 bytes)
DATA_leido_ABFD:
	defb 009h	; abfd

; ----------------------------------------------------------------------
; DATOS leido_ABFE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xabfe..0xabff  (1 bytes)
DATA_leido_ABFE:
	defb 0ebh	; abfe

; ----------------------------------------------------------------------
; DATOS leido_ABFF: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xabff..0xac00  (1 bytes)
DATA_leido_ABFF:
	defb 033h	; abff

; ----------------------------------------------------------------------
; DATOS leido_AC00: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xac00..0xac01  (1 bytes)
DATA_leido_AC00:
	defb 013h	; ac00

; ----------------------------------------------------------------------
; DATOS leido_AC01: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac01..0xac02  (1 bytes)
DATA_leido_AC01:
	defb 0f8h	; ac01

; ----------------------------------------------------------------------
; DATOS leido_AC02: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xac02..0xac03  (1 bytes)
DATA_leido_AC02:
	defb 015h	; ac02

; ----------------------------------------------------------------------
; DATOS leido_AC03: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac03..0xac04  (1 bytes)
DATA_leido_AC03:
	defb 0dbh	; ac03

; ----------------------------------------------------------------------
; DATOS leido_AC04: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xac04..0xac05  (1 bytes)
DATA_leido_AC04:
	defb 002h	; ac04

; ----------------------------------------------------------------------
; DATOS leido_AC05: 23 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (23 bytes)
;   0xac05..0xac1c  (23 bytes)
DATA_leido_AC05:
	defb 0d3h,071h,0a1h,0d2h,011h,041h,071h,0a1h,071h,0a1h,0d1h,011h,041h,071h,0a1h,0d0h	; ac05  .q...Aq.q...Aq..
	defb 011h,041h,071h,0a1h,071h,041h,0fbh	; ac15

; ----------------------------------------------------------------------
; DATOS leido_AC1C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xac1c..0xac1f  (3 bytes)
DATA_leido_AC1C:
	defb 002h,0f0h,0abh	; ac1c

; ----------------------------------------------------------------------
; DATOS leido_AC1F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac1f..0xac20  (1 bytes)
DATA_leido_AC1F:
	defb 0feh	; ac1f

; ----------------------------------------------------------------------
; DATOS leido_AC20: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac20..0xac21  (1 bytes)
DATA_leido_AC20:
	defb 004h	; ac20

; ----------------------------------------------------------------------
; DATOS leido_AC21: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac21..0xac23  (2 bytes)
DATA_leido_AC21:
	defb 0d0h,0f8h	; ac21

; ----------------------------------------------------------------------
; DATOS leido_AC23: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xac23..0xac24  (1 bytes)
DATA_leido_AC23:
	defb 005h	; ac23

; ----------------------------------------------------------------------
; DATOS leido_AC24: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xac24..0xac28  (4 bytes)
DATA_leido_AC24:
	defb 063h,073h,083h,0feh	; ac24

; ----------------------------------------------------------------------
; DATOS leido_AC28: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac28..0xac29  (1 bytes)
DATA_leido_AC28:
	defb 001h	; ac28

; ----------------------------------------------------------------------
; DATOS leido_AC29: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac29..0xac2a  (1 bytes)
DATA_leido_AC29:
	defb 0f8h	; ac29

; ----------------------------------------------------------------------
; DATOS leido_AC2A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xac2a..0xac2b  (1 bytes)
DATA_leido_AC2A:
	defb 015h	; ac2a

; ----------------------------------------------------------------------
; DATOS leido_AC2B: 26 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (26 bytes)
;   0xac2b..0xac45  (26 bytes)
DATA_leido_AC2B:
	defb 0d3h,051h,091h,0d2h,001h,051h,091h,0d1h,001h,0d2h,091h,0d1h,001h,051h,091h,0d0h	; ac2b  .Q...Q.......Q..
	defb 001h,051h,091h,051h,001h,0d1h,091h,051h,001h,0feh	; ac3b  .Q.Q...Q..

; ----------------------------------------------------------------------
; DATOS leido_AC45: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac45..0xac46  (1 bytes)
DATA_leido_AC45:
	defb 004h	; ac45

; ----------------------------------------------------------------------
; DATOS leido_AC46: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac46..0xac48  (2 bytes)
DATA_leido_AC46:
	defb 0d0h,0f8h	; ac46

; ----------------------------------------------------------------------
; DATOS leido_AC48: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xac48..0xac49  (1 bytes)
DATA_leido_AC48:
	defb 005h	; ac48

; ----------------------------------------------------------------------
; DATOS leido_AC49: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xac49..0xac4d  (4 bytes)
DATA_leido_AC49:
	defb 063h,073h,083h,0feh	; ac49

; ----------------------------------------------------------------------
; DATOS leido_AC4D: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac4d..0xac4e  (1 bytes)
DATA_leido_AC4D:
	defb 001h	; ac4d

; ----------------------------------------------------------------------
; DATOS leido_AC4E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac4e..0xac4f  (1 bytes)
DATA_leido_AC4E:
	defb 0f8h	; ac4e

; ----------------------------------------------------------------------
; DATOS leido_AC4F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xac4f..0xac50  (1 bytes)
DATA_leido_AC4F:
	defb 015h	; ac4f

; ----------------------------------------------------------------------
; DATOS leido_AC50: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac50..0xac51  (1 bytes)
DATA_leido_AC50:
	defb 0eah	; ac50

; ----------------------------------------------------------------------
; DATOS leido_AC51: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac51..0xac52  (1 bytes)
DATA_leido_AC51:
	defb 008h	; ac51

; ----------------------------------------------------------------------
; DATOS leido_AC52: 31 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (31 bytes)
;   0xac52..0xac71  (31 bytes)
DATA_leido_AC52:
	defb 0d1h,081h,081h,081h,091h,091h,091h,0b1h,0b1h,0b1h,0fah,041h,001h,041h,001h,041h	; ac52  ...........A.A.A
	defb 001h,091h,091h,091h,031h,001h,011h,031h,001h,031h,001h,031h,001h,0fah,0f9h	; ac62  ....1..1.1.1...

; ----------------------------------------------------------------------
; DATOS leido_AC71: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xac71..0xac73  (2 bytes)
DATA_leido_AC71:
	defb 03fh,0b0h	; ac71

; ----------------------------------------------------------------------
; DATOS leido_AC73: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac73..0xac74  (1 bytes)
DATA_leido_AC73:
	defb 0e9h	; ac73

; ----------------------------------------------------------------------
; DATOS leido_AC74: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac74..0xac75  (1 bytes)
DATA_leido_AC74:
	defb 004h	; ac74

; ----------------------------------------------------------------------
; DATOS leido_AC75: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xac75..0xac7c  (7 bytes)
DATA_leido_AC75:
	defb 040h,040h,040h,040h,040h,040h,0f9h	; ac75

; ----------------------------------------------------------------------
; DATOS leido_AC7C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xac7c..0xac7e  (2 bytes)
DATA_leido_AC7C:
	defb 03fh,0b0h	; ac7c

; ----------------------------------------------------------------------
; DATOS leido_AC7E: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xac7e..0xac8f  (17 bytes)
DATA_leido_AC7E:
	defb 030h,000h,030h,030h,001h,031h,000h,000h,031h,000h,010h,030h,000h,000h,010h,031h	; ac7e  0.00.1..1..0...1
	defb 0fbh	; ac8e

; ----------------------------------------------------------------------
; DATOS leido_AC8F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xac8f..0xac92  (3 bytes)
DATA_leido_AC8F:
	defb 007h,082h,0ach	; ac8f

; ----------------------------------------------------------------------
; DATOS leido_AC92: 33 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (33 bytes)
;   0xac92..0xacb3  (33 bytes)
DATA_leido_AC92:
	defb 000h,000h,000h,010h,000h,090h,030h,010h,000h,090h,030h,010h,030h,090h,030h,030h	; ac92  ......0...0.0.00
	defb 090h,000h,000h,090h,000h,000h,000h,010h,000h,000h,000h,090h,030h,000h,000h,090h	; aca2  ............0...
	defb 0fbh	; acb2

; ----------------------------------------------------------------------
; DATOS leido_ACB3: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xacb3..0xacb6  (3 bytes)
DATA_leido_ACB3:
	defb 003h,0a2h,0ach	; acb3

; ----------------------------------------------------------------------
; DATOS leido_ACB6: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xacb6..0xacbf  (9 bytes)
DATA_leido_ACB6:
	defb 030h,030h,090h,090h,030h,030h,090h,090h,0e9h	; acb6  00..00...

; ----------------------------------------------------------------------
; DATOS leido_ACBF: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xacbf..0xacc0  (1 bytes)
DATA_leido_ACBF:
	defb 003h	; acbf

; ----------------------------------------------------------------------
; DATOS leido_ACC0: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xacc0..0xacc3  (3 bytes)
DATA_leido_ACC0:
	defb 030h,030h,0e9h	; acc0

; ----------------------------------------------------------------------
; DATOS leido_ACC3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xacc3..0xacc4  (1 bytes)
DATA_leido_ACC3:
	defb 006h	; acc3

; ----------------------------------------------------------------------
; DATOS leido_ACC4: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xacc4..0xaccc  (8 bytes)
DATA_leido_ACC4:
	defb 030h,030h,030h,030h,030h,090h,010h,0f9h	; acc4  00000...

; ----------------------------------------------------------------------
; DATOS leido_ACCC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaccc..0xacce  (2 bytes)
DATA_leido_ACCC:
	defb 05bh,0b0h	; accc

; ----------------------------------------------------------------------
; DATOS leido_ACCE: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xacce..0xacd2  (4 bytes)
DATA_leido_ACCE:
	defb 031h,030h,030h,0f9h	; acce

; ----------------------------------------------------------------------
; DATOS leido_ACD2: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xacd2..0xacd4  (2 bytes)
DATA_leido_ACD2:
	defb 05bh,0b0h	; acd2

; ----------------------------------------------------------------------
; DATOS leido_ACD4: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xacd4..0xacd9  (5 bytes)
DATA_leido_ACD4:
	defb 030h,030h,000h,090h,0fdh	; acd4

; ----------------------------------------------------------------------
; DATOS leido_ACD9: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xacd9..0xacdb  (2 bytes)
DATA_leido_ACD9:
	defb 070h,0ach	; acd9

; ----------------------------------------------------------------------
; DATOS leido_ACDB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacdb..0xacdc  (1 bytes)
DATA_leido_ACDB:
	defb 0feh	; acdb

; ----------------------------------------------------------------------
; DATOS leido_ACDC: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xacdc..0xacdd  (1 bytes)
DATA_leido_ACDC:
	defb 001h	; acdc

; ----------------------------------------------------------------------
; DATOS leido_ACDD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacdd..0xacde  (1 bytes)
DATA_leido_ACDD:
	defb 0f2h	; acdd

; ----------------------------------------------------------------------
; DATOS leido_ACDE: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xacde..0xacdf  (1 bytes)
DATA_leido_ACDE:
	defb 008h	; acde

; ----------------------------------------------------------------------
; DATOS leido_ACDF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacdf..0xace0  (1 bytes)
DATA_leido_ACDF:
	defb 0f1h	; acdf

; ----------------------------------------------------------------------
; DATOS leido_ACE0: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xace0..0xace1  (1 bytes)
DATA_leido_ACE0:
	defb 042h	; ace0

; ----------------------------------------------------------------------
; DATOS leido_ACE1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xace1..0xace2  (1 bytes)
DATA_leido_ACE1:
	defb 0e9h	; ace1

; ----------------------------------------------------------------------
; DATOS leido_ACE2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xace2..0xace3  (1 bytes)
DATA_leido_ACE2:
	defb 006h	; ace2

; ----------------------------------------------------------------------
; DATOS leido_ACE3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xace3..0xace4  (1 bytes)
DATA_leido_ACE3:
	defb 0eah	; ace3

; ----------------------------------------------------------------------
; DATOS leido_ACE4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xace4..0xace5  (1 bytes)
DATA_leido_ACE4:
	defb 007h	; ace4

; ----------------------------------------------------------------------
; DATOS leido_ACE5: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xace5..0xace8  (3 bytes)
DATA_leido_ACE5:
	defb 0ech,0c0h,0f9h	; ace5

; ----------------------------------------------------------------------
; DATOS leido_ACE8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xace8..0xacea  (2 bytes)
DATA_leido_ACE8:
	defb 032h,0b1h	; ace8

; ----------------------------------------------------------------------
; DATOS leido_ACEA: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xacea..0xacf1  (7 bytes)
DATA_leido_ACEA:
	defb 0d1h,001h,0d2h,0b2h,072h,021h,0f9h	; acea

; ----------------------------------------------------------------------
; DATOS leido_ACF1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xacf1..0xacf3  (2 bytes)
DATA_leido_ACF1:
	defb 032h,0b1h	; acf1

; ----------------------------------------------------------------------
; DATOS leido_ACF3: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xacf3..0xacf9  (6 bytes)
DATA_leido_ACF3:
	defb 071h,0b2h,0d1h,002h,020h,0ebh	; acf3

; ----------------------------------------------------------------------
; DATOS leido_ACF9: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xacf9..0xacfa  (1 bytes)
DATA_leido_ACF9:
	defb 001h	; acf9

; ----------------------------------------------------------------------
; DATOS leido_ACFA: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xacfa..0xacfb  (1 bytes)
DATA_leido_ACFA:
	defb 010h	; acfa

; ----------------------------------------------------------------------
; DATOS leido_ACFB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacfb..0xacfc  (1 bytes)
DATA_leido_ACFB:
	defb 0eah	; acfb

; ----------------------------------------------------------------------
; DATOS leido_ACFC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xacfc..0xacfd  (1 bytes)
DATA_leido_ACFC:
	defb 008h	; acfc

; ----------------------------------------------------------------------
; DATOS leido_ACFD: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xacfd..0xad00  (3 bytes)
DATA_leido_ACFD:
	defb 0d1h,023h,0f9h	; acfd

; ----------------------------------------------------------------------
; DATOS leido_AD00: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad00..0xad02  (2 bytes)
DATA_leido_AD00:
	defb 0bah,0b0h	; ad00

; ----------------------------------------------------------------------
; DATOS leido_AD02: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad02..0xad03  (1 bytes)
DATA_leido_AD02:
	defb 0eah	; ad02

; ----------------------------------------------------------------------
; DATOS leido_AD03: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad03..0xad04  (1 bytes)
DATA_leido_AD03:
	defb 003h	; ad03

; ----------------------------------------------------------------------
; DATOS leido_AD04: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad04..0xad05  (1 bytes)
DATA_leido_AD04:
	defb 0e9h	; ad04

; ----------------------------------------------------------------------
; DATOS leido_AD05: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad05..0xad06  (1 bytes)
DATA_leido_AD05:
	defb 004h	; ad05

; ----------------------------------------------------------------------
; DATOS leido_AD06: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xad06..0xad0d  (7 bytes)
DATA_leido_AD06:
	defb 0d2h,090h,0b0h,0d1h,000h,020h,0eah	; ad06

; ----------------------------------------------------------------------
; DATOS leido_AD0D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad0d..0xad0e  (1 bytes)
DATA_leido_AD0D:
	defb 005h	; ad0d

; ----------------------------------------------------------------------
; DATOS leido_AD0E: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xad0e..0xad13  (5 bytes)
DATA_leido_AD0E:
	defb 040h,050h,070h,090h,0eah	; ad0e

; ----------------------------------------------------------------------
; DATOS leido_AD13: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad13..0xad14  (1 bytes)
DATA_leido_AD13:
	defb 006h	; ad13

; ----------------------------------------------------------------------
; DATOS leido_AD14: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xad14..0xad18  (4 bytes)
DATA_leido_AD14:
	defb 0b0h,0d0h,000h,0eah	; ad14

; ----------------------------------------------------------------------
; DATOS leido_AD18: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad18..0xad19  (1 bytes)
DATA_leido_AD18:
	defb 007h	; ad18

; ----------------------------------------------------------------------
; DATOS leido_AD19: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xad19..0xad1c  (3 bytes)
DATA_leido_AD19:
	defb 040h,000h,0eah	; ad19

; ----------------------------------------------------------------------
; DATOS leido_AD1C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad1c..0xad1d  (1 bytes)
DATA_leido_AD1C:
	defb 008h	; ad1c

; ----------------------------------------------------------------------
; DATOS leido_AD1D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad1d..0xad1e  (1 bytes)
DATA_leido_AD1D:
	defb 0e9h	; ad1d

; ----------------------------------------------------------------------
; DATOS leido_AD1E: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad1e..0xad1f  (1 bytes)
DATA_leido_AD1E:
	defb 006h	; ad1e

; ----------------------------------------------------------------------
; DATOS leido_AD1F: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad1f..0xad21  (2 bytes)
DATA_leido_AD1F:
	defb 002h,0f9h	; ad1f

; ----------------------------------------------------------------------
; DATOS leido_AD21: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad21..0xad23  (2 bytes)
DATA_leido_AD21:
	defb 0cbh,0b0h	; ad21

; ----------------------------------------------------------------------
; DATOS leido_AD23: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad23..0xad25  (2 bytes)
DATA_leido_AD23:
	defb 0b0h,0e9h	; ad23

; ----------------------------------------------------------------------
; DATOS leido_AD25: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad25..0xad26  (1 bytes)
DATA_leido_AD25:
	defb 003h	; ad25

; ----------------------------------------------------------------------
; DATOS leido_AD26: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad26..0xad27  (1 bytes)
DATA_leido_AD26:
	defb 0eeh	; ad26

; ----------------------------------------------------------------------
; DATOS leido_AD27: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xad27..0xad28  (1 bytes)
DATA_leido_AD27:
	defb 002h	; ad27

; ----------------------------------------------------------------------
; DATOS leido_AD28: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad28..0xad29  (1 bytes)
DATA_leido_AD28:
	defb 0eah	; ad28

; ----------------------------------------------------------------------
; DATOS leido_AD29: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad29..0xad2a  (1 bytes)
DATA_leido_AD29:
	defb 009h	; ad29

; ----------------------------------------------------------------------
; DATOS leido_AD2A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad2a..0xad2b  (1 bytes)
DATA_leido_AD2A:
	defb 0ebh	; ad2a

; ----------------------------------------------------------------------
; DATOS leido_AD2B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xad2b..0xad2c  (1 bytes)
DATA_leido_AD2B:
	defb 001h	; ad2b

; ----------------------------------------------------------------------
; DATOS leido_AD2C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xad2c..0xad2d  (1 bytes)
DATA_leido_AD2C:
	defb 010h	; ad2c

; ----------------------------------------------------------------------
; DATOS leido_AD2D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad2d..0xad2f  (2 bytes)
DATA_leido_AD2D:
	defb 0c0h,0e9h	; ad2d

; ----------------------------------------------------------------------
; DATOS leido_AD2F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad2f..0xad30  (1 bytes)
DATA_leido_AD2F:
	defb 006h	; ad2f

; ----------------------------------------------------------------------
; DATOS leido_AD30: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad30..0xad31  (1 bytes)
DATA_leido_AD30:
	defb 0f9h	; ad30

; ----------------------------------------------------------------------
; DATOS leido_AD31: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad31..0xad33  (2 bytes)
DATA_leido_AD31:
	defb 0e1h,0b0h	; ad31

; ----------------------------------------------------------------------
; DATOS leido_AD33: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad33..0xad35  (2 bytes)
DATA_leido_AD33:
	defb 070h,0e9h	; ad33

; ----------------------------------------------------------------------
; DATOS leido_AD35: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad35..0xad36  (1 bytes)
DATA_leido_AD35:
	defb 003h	; ad35

; ----------------------------------------------------------------------
; DATOS leido_AD36: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xad36..0xad39  (3 bytes)
DATA_leido_AD36:
	defb 0c0h,0efh,0e9h	; ad36

; ----------------------------------------------------------------------
; DATOS leido_AD39: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad39..0xad3a  (1 bytes)
DATA_leido_AD39:
	defb 006h	; ad39

; ----------------------------------------------------------------------
; DATOS leido_AD3A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad3a..0xad3b  (1 bytes)
DATA_leido_AD3A:
	defb 0eah	; ad3a

; ----------------------------------------------------------------------
; DATOS leido_AD3B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad3b..0xad3c  (1 bytes)
DATA_leido_AD3B:
	defb 008h	; ad3b

; ----------------------------------------------------------------------
; DATOS leido_AD3C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad3c..0xad3e  (2 bytes)
DATA_leido_AD3C:
	defb 0ech,0f2h	; ad3c

; ----------------------------------------------------------------------
; DATOS leido_AD3E: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xad3e..0xad3f  (1 bytes)
DATA_leido_AD3E:
	defb 020h	; ad3e

; ----------------------------------------------------------------------
; DATOS leido_AD3F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad3f..0xad40  (1 bytes)
DATA_leido_AD3F:
	defb 0f1h	; ad3f

; ----------------------------------------------------------------------
; DATOS leido_AD40: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xad40..0xad41  (1 bytes)
DATA_leido_AD40:
	defb 041h	; ad40

; ----------------------------------------------------------------------
; DATOS leido_AD41: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad41..0xad43  (2 bytes)
DATA_leido_AD41:
	defb 0a0h,0f9h	; ad41

; ----------------------------------------------------------------------
; DATOS leido_AD43: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad43..0xad45  (2 bytes)
DATA_leido_AD43:
	defb 016h,0b1h	; ad43

; ----------------------------------------------------------------------
; DATOS leido_AD45: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad45..0xad47  (2 bytes)
DATA_leido_AD45:
	defb 0a3h,0fbh	; ad45

; ----------------------------------------------------------------------
; DATOS leido_AD47: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xad47..0xad4a  (3 bytes)
DATA_leido_AD47:
	defb 002h,041h,0adh	; ad47

; ----------------------------------------------------------------------
; DATOS leido_AD4A: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad4a..0xad4c  (2 bytes)
DATA_leido_AD4A:
	defb 0f0h,0fdh	; ad4a

; ----------------------------------------------------------------------
; DATOS leido_AD4C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad4c..0xad4e  (2 bytes)
DATA_leido_AD4C:
	defb 0dbh,0ach	; ad4c

; ----------------------------------------------------------------------
; DATOS leido_AD4E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad4e..0xad4f  (1 bytes)
DATA_leido_AD4E:
	defb 0feh	; ad4e

; ----------------------------------------------------------------------
; DATOS leido_AD4F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xad4f..0xad50  (1 bytes)
DATA_leido_AD4F:
	defb 001h	; ad4f

; ----------------------------------------------------------------------
; DATOS leido_AD50: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad50..0xad51  (1 bytes)
DATA_leido_AD50:
	defb 0f8h	; ad50

; ----------------------------------------------------------------------
; DATOS leido_AD51: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xad51..0xad52  (1 bytes)
DATA_leido_AD51:
	defb 028h	; ad51

; ----------------------------------------------------------------------
; DATOS leido_AD52: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad52..0xad53  (1 bytes)
DATA_leido_AD52:
	defb 0e9h	; ad52

; ----------------------------------------------------------------------
; DATOS leido_AD53: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad53..0xad54  (1 bytes)
DATA_leido_AD53:
	defb 006h	; ad53

; ----------------------------------------------------------------------
; DATOS leido_AD54: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad54..0xad55  (1 bytes)
DATA_leido_AD54:
	defb 0dbh	; ad54

; ----------------------------------------------------------------------
; DATOS leido_AD55: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xad55..0xad56  (1 bytes)
DATA_leido_AD55:
	defb 003h	; ad55

; ----------------------------------------------------------------------
; DATOS leido_AD56: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad56..0xad57  (1 bytes)
DATA_leido_AD56:
	defb 0eah	; ad56

; ----------------------------------------------------------------------
; DATOS leido_AD57: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad57..0xad58  (1 bytes)
DATA_leido_AD57:
	defb 009h	; ad57

; ----------------------------------------------------------------------
; DATOS leido_AD58: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad58..0xad59  (1 bytes)
DATA_leido_AD58:
	defb 0ebh	; ad58

; ----------------------------------------------------------------------
; DATOS leido_AD59: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xad59..0xad5a  (1 bytes)
DATA_leido_AD59:
	defb 010h	; ad59

; ----------------------------------------------------------------------
; DATOS leido_AD5A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xad5a..0xad5b  (1 bytes)
DATA_leido_AD5A:
	defb 080h	; ad5a

; ----------------------------------------------------------------------
; DATOS leido_AD5B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad5b..0xad5c  (1 bytes)
DATA_leido_AD5B:
	defb 0f9h	; ad5b

; ----------------------------------------------------------------------
; DATOS leido_AD5C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad5c..0xad5e  (2 bytes)
DATA_leido_AD5C:
	defb 07ah,0b0h	; ad5c

; ----------------------------------------------------------------------
; DATOS leido_AD5E: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad5e..0xad60  (2 bytes)
DATA_leido_AD5E:
	defb 074h,0f9h	; ad5e

; ----------------------------------------------------------------------
; DATOS leido_AD60: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad60..0xad62  (2 bytes)
DATA_leido_AD60:
	defb 07ah,0b0h	; ad60

; ----------------------------------------------------------------------
; DATOS leido_AD62: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xad62..0xad69  (7 bytes)
DATA_leido_AD62:
	defb 070h,070h,020h,000h,0d5h,070h,0dbh	; ad62

; ----------------------------------------------------------------------
; DATOS leido_AD69: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xad69..0xad6a  (1 bytes)
DATA_leido_AD69:
	defb 002h	; ad69

; ----------------------------------------------------------------------
; DATOS leido_AD6A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad6a..0xad6b  (1 bytes)
DATA_leido_AD6A:
	defb 0ebh	; ad6a

; ----------------------------------------------------------------------
; DATOS leido_AD6B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xad6b..0xad6c  (1 bytes)
DATA_leido_AD6B:
	defb 011h	; ad6b

; ----------------------------------------------------------------------
; DATOS leido_AD6C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xad6c..0xad6d  (1 bytes)
DATA_leido_AD6C:
	defb 050h	; ad6c

; ----------------------------------------------------------------------
; DATOS leido_AD6D: 50 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (50 bytes)
;   0xad6d..0xad9f  (50 bytes)
DATA_leido_AD6D:
	defb 0d4h,052h,052h,051h,052h,052h,051h,072h,072h,071h,072h,072h,071h,062h,062h,061h	; ad6d  .RRQRRQrrqrrqbba
	defb 062h,062h,061h,052h,052h,051h,052h,052h,051h,042h,042h,041h,042h,042h,041h,032h	; ad7d  bbaRRQRRQBBABBA2
	defb 032h,031h,032h,032h,031h,082h,082h,081h,082h,082h,081h,072h,072h,071h,072h,072h	; ad8d  21221......rrqrr
	defb 071h,0f8h	; ad9d

; ----------------------------------------------------------------------
; DATOS leido_AD9F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xad9f..0xada0  (1 bytes)
DATA_leido_AD9F:
	defb 064h	; ad9f

; ----------------------------------------------------------------------
; DATOS leido_ADA0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xada0..0xada1  (1 bytes)
DATA_leido_ADA0:
	defb 0dbh	; ada0

; ----------------------------------------------------------------------
; DATOS leido_ADA1: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xada1..0xada2  (1 bytes)
DATA_leido_ADA1:
	defb 003h	; ada1

; ----------------------------------------------------------------------
; DATOS leido_ADA2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xada2..0xada3  (1 bytes)
DATA_leido_ADA2:
	defb 0eah	; ada2

; ----------------------------------------------------------------------
; DATOS leido_ADA3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xada3..0xada4  (1 bytes)
DATA_leido_ADA3:
	defb 00ah	; ada3

; ----------------------------------------------------------------------
; DATOS leido_ADA4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xada4..0xada5  (1 bytes)
DATA_leido_ADA4:
	defb 0ebh	; ada4

; ----------------------------------------------------------------------
; DATOS leido_ADA5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xada5..0xada6  (1 bytes)
DATA_leido_ADA5:
	defb 010h	; ada5

; ----------------------------------------------------------------------
; DATOS leido_ADA6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xada6..0xada7  (1 bytes)
DATA_leido_ADA6:
	defb 070h	; ada6

; ----------------------------------------------------------------------
; DATOS leido_ADA7: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xada7..0xadaa  (3 bytes)
DATA_leido_ADA7:
	defb 0d5h,099h,0f8h	; ada7

; ----------------------------------------------------------------------
; DATOS leido_ADAA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xadaa..0xadab  (1 bytes)
DATA_leido_ADAA:
	defb 023h	; adaa

; ----------------------------------------------------------------------
; DATOS leido_ADAB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadab..0xadac  (1 bytes)
DATA_leido_ADAB:
	defb 0eah	; adab

; ----------------------------------------------------------------------
; DATOS leido_ADAC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xadac..0xadad  (1 bytes)
DATA_leido_ADAC:
	defb 00dh	; adac

; ----------------------------------------------------------------------
; DATOS leido_ADAD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadad..0xadae  (1 bytes)
DATA_leido_ADAD:
	defb 0ebh	; adad

; ----------------------------------------------------------------------
; DATOS leido_ADAE: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xadae..0xadaf  (1 bytes)
DATA_leido_ADAE:
	defb 010h	; adae

; ----------------------------------------------------------------------
; DATOS leido_ADAF: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xadaf..0xadb0  (1 bytes)
DATA_leido_ADAF:
	defb 080h	; adaf

; ----------------------------------------------------------------------
; DATOS leido_ADB0: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xadb0..0xadb4  (4 bytes)
DATA_leido_ADB0:
	defb 0d4h,042h,092h,0f8h	; adb0

; ----------------------------------------------------------------------
; DATOS leido_ADB4: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xadb4..0xadb5  (1 bytes)
DATA_leido_ADB4:
	defb 064h	; adb4

; ----------------------------------------------------------------------
; DATOS leido_ADB5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadb5..0xadb6  (1 bytes)
DATA_leido_ADB5:
	defb 0ebh	; adb5

; ----------------------------------------------------------------------
; DATOS leido_ADB6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xadb6..0xadb7  (1 bytes)
DATA_leido_ADB6:
	defb 010h	; adb6

; ----------------------------------------------------------------------
; DATOS leido_ADB7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xadb7..0xadb8  (1 bytes)
DATA_leido_ADB7:
	defb 070h	; adb7

; ----------------------------------------------------------------------
; DATOS leido_ADB8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadb8..0xadb9  (1 bytes)
DATA_leido_ADB8:
	defb 0eah	; adb8

; ----------------------------------------------------------------------
; DATOS leido_ADB9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xadb9..0xadba  (1 bytes)
DATA_leido_ADB9:
	defb 00ah	; adb9

; ----------------------------------------------------------------------
; DATOS leido_ADBA: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xadba..0xadbe  (4 bytes)
DATA_leido_ADBA:
	defb 0d5h,0afh,0b9h,0f8h	; adba

; ----------------------------------------------------------------------
; DATOS leido_ADBE: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xadbe..0xadbf  (1 bytes)
DATA_leido_ADBE:
	defb 023h	; adbe

; ----------------------------------------------------------------------
; DATOS leido_ADBF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadbf..0xadc0  (1 bytes)
DATA_leido_ADBF:
	defb 0ebh	; adbf

; ----------------------------------------------------------------------
; DATOS leido_ADC0: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xadc0..0xadc1  (1 bytes)
DATA_leido_ADC0:
	defb 010h	; adc0

; ----------------------------------------------------------------------
; DATOS leido_ADC1: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xadc1..0xadc2  (1 bytes)
DATA_leido_ADC1:
	defb 080h	; adc1

; ----------------------------------------------------------------------
; DATOS leido_ADC2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadc2..0xadc3  (1 bytes)
DATA_leido_ADC2:
	defb 0eah	; adc2

; ----------------------------------------------------------------------
; DATOS leido_ADC3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xadc3..0xadc4  (1 bytes)
DATA_leido_ADC3:
	defb 00dh	; adc3

; ----------------------------------------------------------------------
; DATOS leido_ADC4: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xadc4..0xadc8  (4 bytes)
DATA_leido_ADC4:
	defb 0d4h,072h,0b2h,0f8h	; adc4

; ----------------------------------------------------------------------
; DATOS leido_ADC8: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xadc8..0xadc9  (1 bytes)
DATA_leido_ADC8:
	defb 064h	; adc8

; ----------------------------------------------------------------------
; DATOS leido_ADC9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadc9..0xadca  (1 bytes)
DATA_leido_ADC9:
	defb 0eah	; adc9

; ----------------------------------------------------------------------
; DATOS leido_ADCA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xadca..0xadcb  (1 bytes)
DATA_leido_ADCA:
	defb 00ah	; adca

; ----------------------------------------------------------------------
; DATOS leido_ADCB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadcb..0xadcc  (1 bytes)
DATA_leido_ADCB:
	defb 0ebh	; adcb

; ----------------------------------------------------------------------
; DATOS leido_ADCC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xadcc..0xadcd  (1 bytes)
DATA_leido_ADCC:
	defb 010h	; adcc

; ----------------------------------------------------------------------
; DATOS leido_ADCD: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xadcd..0xadce  (1 bytes)
DATA_leido_ADCD:
	defb 070h	; adcd

; ----------------------------------------------------------------------
; DATOS leido_ADCE: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xadce..0xadd0  (2 bytes)
DATA_leido_ADCE:
	defb 007h,0f8h	; adce

; ----------------------------------------------------------------------
; DATOS leido_ADD0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xadd0..0xadd1  (1 bytes)
DATA_leido_ADD0:
	defb 023h	; add0

; ----------------------------------------------------------------------
; DATOS leido_ADD1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadd1..0xadd2  (1 bytes)
DATA_leido_ADD1:
	defb 0eah	; add1

; ----------------------------------------------------------------------
; DATOS leido_ADD2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xadd2..0xadd3  (1 bytes)
DATA_leido_ADD2:
	defb 00bh	; add2

; ----------------------------------------------------------------------
; DATOS leido_ADD3: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xadd3..0xaddf  (12 bytes)
DATA_leido_ADD3:
	defb 0d2h,000h,0d3h,070h,050h,040h,000h,0d4h,070h,050h,040h,0f8h	; add3  ...pP@..pP@.

; ----------------------------------------------------------------------
; DATOS leido_ADDF: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaddf..0xade0  (1 bytes)
DATA_leido_ADDF:
	defb 028h	; addf

; ----------------------------------------------------------------------
; DATOS leido_ADE0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xade0..0xade1  (1 bytes)
DATA_leido_ADE0:
	defb 0dbh	; ade0

; ----------------------------------------------------------------------
; DATOS leido_ADE1: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xade1..0xade2  (1 bytes)
DATA_leido_ADE1:
	defb 002h	; ade1

; ----------------------------------------------------------------------
; DATOS leido_ADE2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xade2..0xade3  (1 bytes)
DATA_leido_ADE2:
	defb 0eah	; ade2

; ----------------------------------------------------------------------
; DATOS leido_ADE3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xade3..0xade4  (1 bytes)
DATA_leido_ADE3:
	defb 009h	; ade3

; ----------------------------------------------------------------------
; DATOS leido_ADE4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xade4..0xade5  (1 bytes)
DATA_leido_ADE4:
	defb 0ebh	; ade4

; ----------------------------------------------------------------------
; DATOS leido_ADE5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xade5..0xade6  (1 bytes)
DATA_leido_ADE5:
	defb 011h	; ade5

; ----------------------------------------------------------------------
; DATOS leido_ADE6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xade6..0xade7  (1 bytes)
DATA_leido_ADE6:
	defb 050h	; ade6

; ----------------------------------------------------------------------
; DATOS leido_ADE7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xade7..0xade8  (1 bytes)
DATA_leido_ADE7:
	defb 0f9h	; ade7

; ----------------------------------------------------------------------
; DATOS leido_ADE8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xade8..0xadea  (2 bytes)
DATA_leido_ADE8:
	defb 08fh,0b0h	; ade8

; ----------------------------------------------------------------------
; DATOS leido_ADEA: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xadea..0xadf0  (6 bytes)
DATA_leido_ADEA:
	defb 0a2h,0d4h,0a2h,0d5h,0a1h,0fbh	; adea

; ----------------------------------------------------------------------
; DATOS leido_ADF0: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xadf0..0xadf3  (3 bytes)
DATA_leido_ADF0:
	defb 002h,0eah,0adh	; adf0

; ----------------------------------------------------------------------
; DATOS leido_ADF3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadf3..0xadf4  (1 bytes)
DATA_leido_ADF3:
	defb 0f9h	; adf3

; ----------------------------------------------------------------------
; DATOS leido_ADF4: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xadf4..0xadf6  (2 bytes)
DATA_leido_ADF4:
	defb 08fh,0b0h	; adf4

; ----------------------------------------------------------------------
; DATOS leido_ADF6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadf6..0xadf7  (1 bytes)
DATA_leido_ADF6:
	defb 0ebh	; adf6

; ----------------------------------------------------------------------
; DATOS leido_ADF7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xadf7..0xadf8  (1 bytes)
DATA_leido_ADF7:
	defb 045h	; adf7

; ----------------------------------------------------------------------
; DATOS leido_ADF8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xadf8..0xadf9  (1 bytes)
DATA_leido_ADF8:
	defb 032h	; adf8

; ----------------------------------------------------------------------
; DATOS leido_ADF9: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xadf9..0xae00  (7 bytes)
DATA_leido_ADF9:
	defb 0d4h,032h,024h,002h,0d5h,0a4h,0fch	; adf9

; ----------------------------------------------------------------------
; DATOS leido_AE00: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xae00..0xae03  (3 bytes)
DATA_leido_AE00:
	defb 002h,0deh,0adh	; ae00

; ----------------------------------------------------------------------
; DATOS leido_AE03: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae03..0xae04  (1 bytes)
DATA_leido_AE03:
	defb 0fdh	; ae03

; ----------------------------------------------------------------------
; DATOS leido_AE04: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xae04..0xae06  (2 bytes)
DATA_leido_AE04:
	defb 04eh,0adh	; ae04

; ----------------------------------------------------------------------
; DATOS leido_AE06: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae06..0xae07  (1 bytes)
DATA_leido_AE06:
	defb 0f9h	; ae06

; ----------------------------------------------------------------------
; DATOS leido_AE07: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xae07..0xae09  (2 bytes)
DATA_leido_AE07:
	defb 065h,0b1h	; ae07

; ----------------------------------------------------------------------
; DATOS leido_AE09: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae09..0xae0a  (1 bytes)
DATA_leido_AE09:
	defb 0eeh	; ae09

; ----------------------------------------------------------------------
; DATOS leido_AE0A: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xae0a..0xae0b  (1 bytes)
DATA_leido_AE0A:
	defb 001h	; ae0a

; ----------------------------------------------------------------------
; DATOS leido_AE0B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae0b..0xae0c  (1 bytes)
DATA_leido_AE0B:
	defb 0f9h	; ae0b

; ----------------------------------------------------------------------
; DATOS leido_AE0C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xae0c..0xae0e  (2 bytes)
DATA_leido_AE0C:
	defb 078h,0b1h	; ae0c

; ----------------------------------------------------------------------
; DATOS leido_AE0E: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xae0e..0xae13  (5 bytes)
DATA_leido_AE0E:
	defb 0d1h,001h,0d2h,0b2h,0feh	; ae0e

; ----------------------------------------------------------------------
; DATOS leido_AE13: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xae13..0xae14  (1 bytes)
DATA_leido_AE13:
	defb 004h	; ae13

; ----------------------------------------------------------------------
; DATOS leido_AE14: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae14..0xae15  (1 bytes)
DATA_leido_AE14:
	defb 0f8h	; ae14

; ----------------------------------------------------------------------
; DATOS leido_AE15: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xae15..0xae16  (1 bytes)
DATA_leido_AE15:
	defb 005h	; ae15

; ----------------------------------------------------------------------
; DATOS leido_AE16: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae16..0xae17  (1 bytes)
DATA_leido_AE16:
	defb 0e9h	; ae16

; ----------------------------------------------------------------------
; DATOS leido_AE17: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xae17..0xae18  (1 bytes)
DATA_leido_AE17:
	defb 004h	; ae17

; ----------------------------------------------------------------------
; DATOS leido_AE18: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xae18..0xae20  (8 bytes)
DATA_leido_AE18:
	defb 0d0h,050h,060h,070h,070h,080h,080h,0f9h	; ae18  .P`pp...

; ----------------------------------------------------------------------
; DATOS leido_AE20: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xae20..0xae22  (2 bytes)
DATA_leido_AE20:
	defb 065h,0b1h	; ae20

; ----------------------------------------------------------------------
; DATOS leido_AE22: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae22..0xae23  (1 bytes)
DATA_leido_AE22:
	defb 0f9h	; ae22

; ----------------------------------------------------------------------
; DATOS leido_AE23: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xae23..0xae25  (2 bytes)
DATA_leido_AE23:
	defb 078h,0b1h	; ae23

; ----------------------------------------------------------------------
; DATOS leido_AE25: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xae25..0xae2c  (7 bytes)
DATA_leido_AE25:
	defb 071h,0b2h,0d1h,002h,020h,0efh,0feh	; ae25

; ----------------------------------------------------------------------
; DATOS leido_AE2C: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xae2c..0xae2d  (1 bytes)
DATA_leido_AE2C:
	defb 001h	; ae2c

; ----------------------------------------------------------------------
; DATOS leido_AE2D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae2d..0xae2e  (1 bytes)
DATA_leido_AE2D:
	defb 0f8h	; ae2d

; ----------------------------------------------------------------------
; DATOS leido_AE2E: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xae2e..0xae2f  (1 bytes)
DATA_leido_AE2E:
	defb 059h	; ae2e

; ----------------------------------------------------------------------
; DATOS leido_AE2F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae2f..0xae30  (1 bytes)
DATA_leido_AE2F:
	defb 0e9h	; ae2f

; ----------------------------------------------------------------------
; DATOS leido_AE30: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xae30..0xae31  (1 bytes)
DATA_leido_AE30:
	defb 006h	; ae30

; ----------------------------------------------------------------------
; DATOS leido_AE31: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae31..0xae32  (1 bytes)
DATA_leido_AE31:
	defb 0dbh	; ae31

; ----------------------------------------------------------------------
; DATOS leido_AE32: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xae32..0xae33  (1 bytes)
DATA_leido_AE32:
	defb 001h	; ae32

; ----------------------------------------------------------------------
; DATOS leido_AE33: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae33..0xae34  (1 bytes)
DATA_leido_AE33:
	defb 0eah	; ae33

; ----------------------------------------------------------------------
; DATOS leido_AE34: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae34..0xae35  (1 bytes)
DATA_leido_AE34:
	defb 006h	; ae34

; ----------------------------------------------------------------------
; DATOS leido_AE35: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae35..0xae36  (1 bytes)
DATA_leido_AE35:
	defb 0ebh	; ae35

; ----------------------------------------------------------------------
; DATOS leido_AE36: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xae36..0xae37  (1 bytes)
DATA_leido_AE36:
	defb 022h	; ae36

; ----------------------------------------------------------------------
; DATOS leido_AE37: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xae37..0xae38  (1 bytes)
DATA_leido_AE37:
	defb 080h	; ae37

; ----------------------------------------------------------------------
; DATOS leido_AE38: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae38..0xae39  (1 bytes)
DATA_leido_AE38:
	defb 0f9h	; ae38

; ----------------------------------------------------------------------
; DATOS leido_AE39: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xae39..0xae3b  (2 bytes)
DATA_leido_AE39:
	defb 09ch,0b1h	; ae39

; ----------------------------------------------------------------------
; DATOS leido_AE3B: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xae3b..0xae40  (5 bytes)
DATA_leido_AE3B:
	defb 0d0h,020h,0d1h,020h,0eah	; ae3b

; ----------------------------------------------------------------------
; DATOS leido_AE40: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae40..0xae41  (1 bytes)
DATA_leido_AE40:
	defb 003h	; ae40

; ----------------------------------------------------------------------
; DATOS leido_AE41: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xae41..0xae43  (2 bytes)
DATA_leido_AE41:
	defb 020h,0eah	; ae41

; ----------------------------------------------------------------------
; DATOS leido_AE43: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae43..0xae44  (1 bytes)
DATA_leido_AE43:
	defb 006h	; ae43

; ----------------------------------------------------------------------
; DATOS leido_AE44: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xae44..0xae46  (2 bytes)
DATA_leido_AE44:
	defb 020h,0fbh	; ae44

; ----------------------------------------------------------------------
; DATOS leido_AE46: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xae46..0xae49  (3 bytes)
DATA_leido_AE46:
	defb 008h,03bh,0aeh	; ae46

; ----------------------------------------------------------------------
; DATOS leido_AE49: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae49..0xae4a  (1 bytes)
DATA_leido_AE49:
	defb 0f9h	; ae49

; ----------------------------------------------------------------------
; DATOS leido_AE4A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xae4a..0xae4c  (2 bytes)
DATA_leido_AE4A:
	defb 09ch,0b1h	; ae4a

; ----------------------------------------------------------------------
; DATOS leido_AE4C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae4c..0xae4d  (1 bytes)
DATA_leido_AE4C:
	defb 0f8h	; ae4c

; ----------------------------------------------------------------------
; DATOS leido_AE4D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xae4d..0xae4e  (1 bytes)
DATA_leido_AE4D:
	defb 017h	; ae4d

; ----------------------------------------------------------------------
; DATOS leido_AE4E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae4e..0xae4f  (1 bytes)
DATA_leido_AE4E:
	defb 0dbh	; ae4e

; ----------------------------------------------------------------------
; DATOS leido_AE4F: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xae4f..0xae50  (1 bytes)
DATA_leido_AE4F:
	defb 002h	; ae4f

; ----------------------------------------------------------------------
; DATOS leido_AE50: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae50..0xae51  (1 bytes)
DATA_leido_AE50:
	defb 0eah	; ae50

; ----------------------------------------------------------------------
; DATOS leido_AE51: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae51..0xae52  (1 bytes)
DATA_leido_AE51:
	defb 00ah	; ae51

; ----------------------------------------------------------------------
; DATOS leido_AE52: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae52..0xae53  (1 bytes)
DATA_leido_AE52:
	defb 0ebh	; ae52

; ----------------------------------------------------------------------
; DATOS leido_AE53: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xae53..0xae54  (1 bytes)
DATA_leido_AE53:
	defb 008h	; ae53

; ----------------------------------------------------------------------
; DATOS leido_AE54: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xae54..0xae55  (1 bytes)
DATA_leido_AE54:
	defb 059h	; ae54

; ----------------------------------------------------------------------
; DATOS leido_AE55: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae55..0xae56  (1 bytes)
DATA_leido_AE55:
	defb 0e9h	; ae55

; ----------------------------------------------------------------------
; DATOS leido_AE56: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xae56..0xae57  (1 bytes)
DATA_leido_AE56:
	defb 006h	; ae56

; ----------------------------------------------------------------------
; DATOS leido_AE57: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xae57..0xae5a  (3 bytes)
DATA_leido_AE57:
	defb 0d1h,001h,0eah	; ae57

; ----------------------------------------------------------------------
; DATOS leido_AE5A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae5a..0xae5b  (1 bytes)
DATA_leido_AE5A:
	defb 003h	; ae5a

; ----------------------------------------------------------------------
; DATOS leido_AE5B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xae5b..0xae5d  (2 bytes)
DATA_leido_AE5B:
	defb 000h,0eah	; ae5b

; ----------------------------------------------------------------------
; DATOS leido_AE5D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae5d..0xae5e  (1 bytes)
DATA_leido_AE5D:
	defb 00ah	; ae5d

; ----------------------------------------------------------------------
; DATOS leido_AE5E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xae5e..0xae61  (3 bytes)
DATA_leido_AE5E:
	defb 000h,047h,0e9h	; ae5e

; ----------------------------------------------------------------------
; DATOS leido_AE61: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xae61..0xae62  (1 bytes)
DATA_leido_AE61:
	defb 004h	; ae61

; ----------------------------------------------------------------------
; DATOS leido_AE62: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xae62..0xae66  (4 bytes)
DATA_leido_AE62:
	defb 001h,001h,001h,0e9h	; ae62

; ----------------------------------------------------------------------
; DATOS leido_AE66: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xae66..0xae67  (1 bytes)
DATA_leido_AE66:
	defb 006h	; ae66

; ----------------------------------------------------------------------
; DATOS leido_AE67: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xae67..0xae75  (14 bytes)
DATA_leido_AE67:
	defb 027h,077h,077h,072h,022h,001h,0d2h,0b3h,073h,022h,002h,0d3h,0b1h,0f8h	; ae67  'wwr"...s"....

; ----------------------------------------------------------------------
; DATOS leido_AE75: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xae75..0xae76  (1 bytes)
DATA_leido_AE75:
	defb 015h	; ae75

; ----------------------------------------------------------------------
; DATOS leido_AE76: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae76..0xae77  (1 bytes)
DATA_leido_AE76:
	defb 0eah	; ae76

; ----------------------------------------------------------------------
; DATOS leido_AE77: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae77..0xae78  (1 bytes)
DATA_leido_AE77:
	defb 007h	; ae77

; ----------------------------------------------------------------------
; DATOS leido_AE78: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae78..0xae79  (1 bytes)
DATA_leido_AE78:
	defb 0ebh	; ae78

; ----------------------------------------------------------------------
; DATOS leido_AE79: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xae79..0xae7a  (1 bytes)
DATA_leido_AE79:
	defb 009h	; ae79

; ----------------------------------------------------------------------
; DATOS leido_AE7A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xae7a..0xae7b  (1 bytes)
DATA_leido_AE7A:
	defb 020h	; ae7a

; ----------------------------------------------------------------------
; DATOS leido_AE7B: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xae7b..0xae83  (8 bytes)
DATA_leido_AE7B:
	defb 0d2h,000h,000h,0d1h,000h,0d2h,000h,0fbh	; ae7b  ........

; ----------------------------------------------------------------------
; DATOS leido_AE83: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xae83..0xae86  (3 bytes)
DATA_leido_AE83:
	defb 008h,07bh,0aeh	; ae83

; ----------------------------------------------------------------------
; DATOS leido_AE86: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xae86..0xae8e  (8 bytes)
DATA_leido_AE86:
	defb 0d2h,020h,020h,0d1h,020h,0d2h,020h,0fbh	; ae86  .  . . .

; ----------------------------------------------------------------------
; DATOS leido_AE8E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xae8e..0xae91  (3 bytes)
DATA_leido_AE8E:
	defb 004h,086h,0aeh	; ae8e

; ----------------------------------------------------------------------
; DATOS leido_AE91: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xae91..0xae99  (8 bytes)
DATA_leido_AE91:
	defb 0d2h,040h,040h,0d1h,040h,0d2h,040h,0fbh	; ae91  .@@.@.@.

; ----------------------------------------------------------------------
; DATOS leido_AE99: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xae99..0xae9c  (3 bytes)
DATA_leido_AE99:
	defb 004h,091h,0aeh	; ae99

; ----------------------------------------------------------------------
; DATOS leido_AE9C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae9c..0xae9d  (1 bytes)
DATA_leido_AE9C:
	defb 0f8h	; ae9c

; ----------------------------------------------------------------------
; DATOS leido_AE9D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xae9d..0xae9e  (1 bytes)
DATA_leido_AE9D:
	defb 059h	; ae9d

; ----------------------------------------------------------------------
; DATOS leido_AE9E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae9e..0xae9f  (1 bytes)
DATA_leido_AE9E:
	defb 0f2h	; ae9e

; ----------------------------------------------------------------------
; DATOS leido_AE9F: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xae9f..0xaea0  (1 bytes)
DATA_leido_AE9F:
	defb 015h	; ae9f

; ----------------------------------------------------------------------
; DATOS leido_AEA0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaea0..0xaea1  (1 bytes)
DATA_leido_AEA0:
	defb 0dbh	; aea0

; ----------------------------------------------------------------------
; DATOS leido_AEA1: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaea1..0xaea2  (1 bytes)
DATA_leido_AEA1:
	defb 003h	; aea1

; ----------------------------------------------------------------------
; DATOS leido_AEA2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaea2..0xaea3  (1 bytes)
DATA_leido_AEA2:
	defb 0ebh	; aea2

; ----------------------------------------------------------------------
; DATOS leido_AEA3: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaea3..0xaea4  (1 bytes)
DATA_leido_AEA3:
	defb 008h	; aea3

; ----------------------------------------------------------------------
; DATOS leido_AEA4: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaea4..0xaea5  (1 bytes)
DATA_leido_AEA4:
	defb 049h	; aea4

; ----------------------------------------------------------------------
; DATOS leido_AEA5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaea5..0xaea6  (1 bytes)
DATA_leido_AEA5:
	defb 0eah	; aea5

; ----------------------------------------------------------------------
; DATOS leido_AEA6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaea6..0xaea7  (1 bytes)
DATA_leido_AEA6:
	defb 009h	; aea6

; ----------------------------------------------------------------------
; DATOS leido_AEA7: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaea7..0xaeaa  (3 bytes)
DATA_leido_AEA7:
	defb 0d2h,005h,0dbh	; aea7

; ----------------------------------------------------------------------
; DATOS leido_AEAA: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaeaa..0xaeab  (1 bytes)
DATA_leido_AEAA:
	defb 001h	; aeaa

; ----------------------------------------------------------------------
; DATOS leido_AEAB: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaeab..0xaeae  (3 bytes)
DATA_leido_AEAB:
	defb 000h,000h,0dbh	; aeab

; ----------------------------------------------------------------------
; DATOS leido_AEAE: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaeae..0xaeaf  (1 bytes)
DATA_leido_AEAE:
	defb 003h	; aeae

; ----------------------------------------------------------------------
; DATOS leido_AEAF: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xaeaf..0xaeb9  (10 bytes)
DATA_leido_AEAF:
	defb 002h,022h,051h,057h,053h,023h,002h,002h,059h,0eeh	; aeaf  ."QWS#..Y.

; ----------------------------------------------------------------------
; DATOS leido_AEB9: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xaeb9..0xaeba  (1 bytes)
DATA_leido_AEB9:
	defb 002h	; aeb9

; ----------------------------------------------------------------------
; DATOS leido_AEBA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaeba..0xaebb  (1 bytes)
DATA_leido_AEBA:
	defb 0eah	; aeba

; ----------------------------------------------------------------------
; DATOS leido_AEBB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaebb..0xaebc  (1 bytes)
DATA_leido_AEBB:
	defb 00ah	; aebb

; ----------------------------------------------------------------------
; DATOS leido_AEBC: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xaebc..0xaec4  (8 bytes)
DATA_leido_AEBC:
	defb 0d2h,032h,024h,002h,0d3h,0a4h,0efh,0fbh	; aebc  .2$.....

; ----------------------------------------------------------------------
; DATOS leido_AEC4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaec4..0xaec7  (3 bytes)
DATA_leido_AEC4:
	defb 002h,09ch,0aeh	; aec4

; ----------------------------------------------------------------------
; DATOS leido_AEC7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaec7..0xaec8  (1 bytes)
DATA_leido_AEC7:
	defb 0fdh	; aec7

; ----------------------------------------------------------------------
; DATOS leido_AEC8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaec8..0xaeca  (2 bytes)
DATA_leido_AEC8:
	defb 006h,0aeh	; aec8

; ----------------------------------------------------------------------
; DATOS leido_AECA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaeca..0xaecb  (1 bytes)
DATA_leido_AECA:
	defb 0feh	; aeca

; ----------------------------------------------------------------------
; DATOS leido_AECB: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaecb..0xaecc  (1 bytes)
DATA_leido_AECB:
	defb 001h	; aecb

; ----------------------------------------------------------------------
; DATOS leido_AECC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaecc..0xaecd  (1 bytes)
DATA_leido_AECC:
	defb 0f2h	; aecc

; ----------------------------------------------------------------------
; DATOS leido_AECD: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaecd..0xaece  (1 bytes)
DATA_leido_AECD:
	defb 00bh	; aecd

; ----------------------------------------------------------------------
; DATOS leido_AECE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaece..0xaecf  (1 bytes)
DATA_leido_AECE:
	defb 0f1h	; aece

; ----------------------------------------------------------------------
; DATOS leido_AECF: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaecf..0xaed0  (1 bytes)
DATA_leido_AECF:
	defb 043h	; aecf

; ----------------------------------------------------------------------
; DATOS leido_AED0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaed0..0xaed1  (1 bytes)
DATA_leido_AED0:
	defb 0e9h	; aed0

; ----------------------------------------------------------------------
; DATOS leido_AED1: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaed1..0xaed2  (1 bytes)
DATA_leido_AED1:
	defb 006h	; aed1

; ----------------------------------------------------------------------
; DATOS leido_AED2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaed2..0xaed3  (1 bytes)
DATA_leido_AED2:
	defb 0dbh	; aed2

; ----------------------------------------------------------------------
; DATOS leido_AED3: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaed3..0xaed4  (1 bytes)
DATA_leido_AED3:
	defb 001h	; aed3

; ----------------------------------------------------------------------
; DATOS leido_AED4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaed4..0xaed5  (1 bytes)
DATA_leido_AED4:
	defb 0f9h	; aed4

; ----------------------------------------------------------------------
; DATOS leido_AED5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaed5..0xaed7  (2 bytes)
DATA_leido_AED5:
	defb 09ah,0b0h	; aed5

; ----------------------------------------------------------------------
; DATOS leido_AED7: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xaed7..0xaede  (7 bytes)
DATA_leido_AED7:
	defb 0d1h,001h,0d2h,0b2h,072h,021h,0f9h	; aed7

; ----------------------------------------------------------------------
; DATOS leido_AEDE: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaede..0xaee0  (2 bytes)
DATA_leido_AEDE:
	defb 09ah,0b0h	; aede

; ----------------------------------------------------------------------
; DATOS leido_AEE0: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xaee0..0xaee6  (6 bytes)
DATA_leido_AEE0:
	defb 071h,0b2h,0d1h,002h,021h,0dbh	; aee0

; ----------------------------------------------------------------------
; DATOS leido_AEE6: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaee6..0xaee7  (1 bytes)
DATA_leido_AEE6:
	defb 003h	; aee6

; ----------------------------------------------------------------------
; DATOS leido_AEE7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaee7..0xaee8  (1 bytes)
DATA_leido_AEE7:
	defb 0ebh	; aee7

; ----------------------------------------------------------------------
; DATOS leido_AEE8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaee8..0xaee9  (1 bytes)
DATA_leido_AEE8:
	defb 021h	; aee8

; ----------------------------------------------------------------------
; DATOS leido_AEE9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaee9..0xaeea  (1 bytes)
DATA_leido_AEE9:
	defb 040h	; aee9

; ----------------------------------------------------------------------
; DATOS leido_AEEA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaeea..0xaeeb  (1 bytes)
DATA_leido_AEEA:
	defb 0f2h	; aeea

; ----------------------------------------------------------------------
; DATOS leido_AEEB: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaeeb..0xaeec  (1 bytes)
DATA_leido_AEEB:
	defb 020h	; aeeb

; ----------------------------------------------------------------------
; DATOS leido_AEEC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaeec..0xaeed  (1 bytes)
DATA_leido_AEEC:
	defb 0f1h	; aeec

; ----------------------------------------------------------------------
; DATOS leido_AEED: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaeed..0xaeee  (1 bytes)
DATA_leido_AEED:
	defb 041h	; aeed

; ----------------------------------------------------------------------
; DATOS leido_AEEE: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaeee..0xaef1  (3 bytes)
DATA_leido_AEEE:
	defb 0d1h,022h,0f9h	; aeee

; ----------------------------------------------------------------------
; DATOS leido_AEF1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaef1..0xaef3  (2 bytes)
DATA_leido_AEF1:
	defb 0bah,0b0h	; aef1

; ----------------------------------------------------------------------
; DATOS leido_AEF3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaef3..0xaef4  (1 bytes)
DATA_leido_AEF3:
	defb 0f8h	; aef3

; ----------------------------------------------------------------------
; DATOS leido_AEF4: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaef4..0xaef5  (1 bytes)
DATA_leido_AEF4:
	defb 002h	; aef4

; ----------------------------------------------------------------------
; DATOS leido_AEF5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaef5..0xaef6  (1 bytes)
DATA_leido_AEF5:
	defb 0eah	; aef5

; ----------------------------------------------------------------------
; DATOS leido_AEF6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaef6..0xaef7  (1 bytes)
DATA_leido_AEF6:
	defb 002h	; aef6

; ----------------------------------------------------------------------
; DATOS leido_AEF7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaef7..0xaef9  (2 bytes)
DATA_leido_AEF7:
	defb 0ech,0e9h	; aef7

; ----------------------------------------------------------------------
; DATOS leido_AEF9: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaef9..0xaefa  (1 bytes)
DATA_leido_AEF9:
	defb 004h	; aef9

; ----------------------------------------------------------------------
; DATOS leido_AEFA: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xaefa..0xaefe  (4 bytes)
DATA_leido_AEFA:
	defb 0d2h,040h,050h,0eah	; aefa

; ----------------------------------------------------------------------
; DATOS leido_AEFE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaefe..0xaeff  (1 bytes)
DATA_leido_AEFE:
	defb 003h	; aefe

; ----------------------------------------------------------------------
; DATOS leido_AEFF: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaeff..0xaf02  (3 bytes)
DATA_leido_AEFF:
	defb 070h,090h,0eah	; aeff

; ----------------------------------------------------------------------
; DATOS leido_AF02: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf02..0xaf03  (1 bytes)
DATA_leido_AF02:
	defb 004h	; af02

; ----------------------------------------------------------------------
; DATOS leido_AF03: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xaf03..0xaf07  (4 bytes)
DATA_leido_AF03:
	defb 0b0h,0d1h,000h,0eah	; af03

; ----------------------------------------------------------------------
; DATOS leido_AF07: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf07..0xaf08  (1 bytes)
DATA_leido_AF07:
	defb 005h	; af07

; ----------------------------------------------------------------------
; DATOS leido_AF08: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaf08..0xaf0b  (3 bytes)
DATA_leido_AF08:
	defb 020h,040h,0eah	; af08

; ----------------------------------------------------------------------
; DATOS leido_AF0B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf0b..0xaf0c  (1 bytes)
DATA_leido_AF0B:
	defb 006h	; af0b

; ----------------------------------------------------------------------
; DATOS leido_AF0C: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaf0c..0xaf0f  (3 bytes)
DATA_leido_AF0C:
	defb 050h,070h,0eah	; af0c

; ----------------------------------------------------------------------
; DATOS leido_AF0F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf0f..0xaf10  (1 bytes)
DATA_leido_AF0F:
	defb 007h	; af0f

; ----------------------------------------------------------------------
; DATOS leido_AF10: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaf10..0xaf13  (3 bytes)
DATA_leido_AF10:
	defb 090h,0b0h,0ebh	; af10

; ----------------------------------------------------------------------
; DATOS leido_AF13: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaf13..0xaf14  (1 bytes)
DATA_leido_AF13:
	defb 008h	; af13

; ----------------------------------------------------------------------
; DATOS leido_AF14: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaf14..0xaf15  (1 bytes)
DATA_leido_AF14:
	defb 059h	; af14

; ----------------------------------------------------------------------
; DATOS leido_AF15: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf15..0xaf16  (1 bytes)
DATA_leido_AF15:
	defb 0eah	; af15

; ----------------------------------------------------------------------
; DATOS leido_AF16: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf16..0xaf17  (1 bytes)
DATA_leido_AF16:
	defb 00ah	; af16

; ----------------------------------------------------------------------
; DATOS leido_AF17: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf17..0xaf18  (1 bytes)
DATA_leido_AF17:
	defb 0e9h	; af17

; ----------------------------------------------------------------------
; DATOS leido_AF18: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaf18..0xaf19  (1 bytes)
DATA_leido_AF18:
	defb 006h	; af18

; ----------------------------------------------------------------------
; DATOS leido_AF19: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaf19..0xaf1c  (3 bytes)
DATA_leido_AF19:
	defb 0d0h,001h,0eah	; af19

; ----------------------------------------------------------------------
; DATOS leido_AF1C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf1c..0xaf1d  (1 bytes)
DATA_leido_AF1C:
	defb 003h	; af1c

; ----------------------------------------------------------------------
; DATOS leido_AF1D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaf1d..0xaf1f  (2 bytes)
DATA_leido_AF1D:
	defb 000h,0eah	; af1d

; ----------------------------------------------------------------------
; DATOS leido_AF1F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf1f..0xaf20  (1 bytes)
DATA_leido_AF1F:
	defb 00ah	; af1f

; ----------------------------------------------------------------------
; DATOS leido_AF20: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf20..0xaf21  (1 bytes)
DATA_leido_AF20:
	defb 0f9h	; af20

; ----------------------------------------------------------------------
; DATOS leido_AF21: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaf21..0xaf23  (2 bytes)
DATA_leido_AF21:
	defb 0cbh,0b0h	; af21

; ----------------------------------------------------------------------
; DATOS leido_AF23: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaf23..0xaf25  (2 bytes)
DATA_leido_AF23:
	defb 0b1h,0f8h	; af23

; ----------------------------------------------------------------------
; DATOS leido_AF25: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaf25..0xaf26  (1 bytes)
DATA_leido_AF25:
	defb 00bh	; af25

; ----------------------------------------------------------------------
; DATOS leido_AF26: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf26..0xaf27  (1 bytes)
DATA_leido_AF26:
	defb 0f2h	; af26

; ----------------------------------------------------------------------
; DATOS leido_AF27: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaf27..0xaf28  (1 bytes)
DATA_leido_AF27:
	defb 00ah	; af27

; ----------------------------------------------------------------------
; DATOS leido_AF28: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf28..0xaf29  (1 bytes)
DATA_leido_AF28:
	defb 0f1h	; af28

; ----------------------------------------------------------------------
; DATOS leido_AF29: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaf29..0xaf2a  (1 bytes)
DATA_leido_AF29:
	defb 042h	; af29

; ----------------------------------------------------------------------
; DATOS leido_AF2A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf2a..0xaf2b  (1 bytes)
DATA_leido_AF2A:
	defb 0dbh	; af2a

; ----------------------------------------------------------------------
; DATOS leido_AF2B: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaf2b..0xaf2c  (1 bytes)
DATA_leido_AF2B:
	defb 003h	; af2b

; ----------------------------------------------------------------------
; DATOS leido_AF2C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf2c..0xaf2d  (1 bytes)
DATA_leido_AF2C:
	defb 0ddh	; af2c

; ----------------------------------------------------------------------
; DATOS leido_AF2D: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xaf2d..0xaf2f  (2 bytes)
DATA_leido_AF2D:
	defb 034h,032h	; af2d

; ----------------------------------------------------------------------
; DATOS leido_AF2F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf2f..0xaf30  (1 bytes)
DATA_leido_AF2F:
	defb 0f9h	; af2f

; ----------------------------------------------------------------------
; DATOS leido_AF30: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaf30..0xaf32  (2 bytes)
DATA_leido_AF30:
	defb 0e1h,0b0h	; af30

; ----------------------------------------------------------------------
; DATOS leido_AF32: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaf32..0xaf34  (2 bytes)
DATA_leido_AF32:
	defb 071h,0f2h	; af32

; ----------------------------------------------------------------------
; DATOS leido_AF34: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaf34..0xaf35  (1 bytes)
DATA_leido_AF34:
	defb 015h	; af34

; ----------------------------------------------------------------------
; DATOS leido_AF35: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf35..0xaf36  (1 bytes)
DATA_leido_AF35:
	defb 0f1h	; af35

; ----------------------------------------------------------------------
; DATOS leido_AF36: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaf36..0xaf37  (1 bytes)
DATA_leido_AF36:
	defb 043h	; af36

; ----------------------------------------------------------------------
; DATOS leido_AF37: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf37..0xaf38  (1 bytes)
DATA_leido_AF37:
	defb 0f8h	; af37

; ----------------------------------------------------------------------
; DATOS leido_AF38: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaf38..0xaf39  (1 bytes)
DATA_leido_AF38:
	defb 00bh	; af38

; ----------------------------------------------------------------------
; DATOS leido_AF39: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf39..0xaf3a  (1 bytes)
DATA_leido_AF39:
	defb 0ebh	; af39

; ----------------------------------------------------------------------
; DATOS leido_AF3A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaf3a..0xaf3b  (1 bytes)
DATA_leido_AF3A:
	defb 008h	; af3a

; ----------------------------------------------------------------------
; DATOS leido_AF3B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaf3b..0xaf3c  (1 bytes)
DATA_leido_AF3B:
	defb 049h	; af3b

; ----------------------------------------------------------------------
; DATOS leido_AF3C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf3c..0xaf3d  (1 bytes)
DATA_leido_AF3C:
	defb 0f9h	; af3c

; ----------------------------------------------------------------------
; DATOS leido_AF3D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaf3d..0xaf3f  (2 bytes)
DATA_leido_AF3D:
	defb 016h,0b1h	; af3d

; ----------------------------------------------------------------------
; DATOS leido_AF3F: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaf3f..0xaf41  (2 bytes)
DATA_leido_AF3F:
	defb 0a4h,0fbh	; af3f

; ----------------------------------------------------------------------
; DATOS leido_AF41: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaf41..0xaf44  (3 bytes)
DATA_leido_AF41:
	defb 002h,033h,0afh	; af41

; ----------------------------------------------------------------------
; DATOS leido_AF44: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaf44..0xaf46  (2 bytes)
DATA_leido_AF44:
	defb 0f0h,0fdh	; af44

; ----------------------------------------------------------------------
; DATOS leido_AF46: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaf46..0xaf48  (2 bytes)
DATA_leido_AF46:
	defb 0cah,0aeh	; af46

; ----------------------------------------------------------------------
; DATOS leido_AF48: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf48..0xaf49  (1 bytes)
DATA_leido_AF48:
	defb 0feh	; af48

; ----------------------------------------------------------------------
; DATOS leido_AF49: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaf49..0xaf4a  (1 bytes)
DATA_leido_AF49:
	defb 001h	; af49

; ----------------------------------------------------------------------
; DATOS leido_AF4A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf4a..0xaf4b  (1 bytes)
DATA_leido_AF4A:
	defb 0f2h	; af4a

; ----------------------------------------------------------------------
; DATOS leido_AF4B: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaf4b..0xaf4c  (1 bytes)
DATA_leido_AF4B:
	defb 00bh	; af4b

; ----------------------------------------------------------------------
; DATOS leido_AF4C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf4c..0xaf4d  (1 bytes)
DATA_leido_AF4C:
	defb 0f1h	; af4c

; ----------------------------------------------------------------------
; DATOS leido_AF4D: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaf4d..0xaf4e  (1 bytes)
DATA_leido_AF4D:
	defb 043h	; af4d

; ----------------------------------------------------------------------
; DATOS leido_AF4E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf4e..0xaf4f  (1 bytes)
DATA_leido_AF4E:
	defb 0e9h	; af4e

; ----------------------------------------------------------------------
; DATOS leido_AF4F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaf4f..0xaf50  (1 bytes)
DATA_leido_AF4F:
	defb 006h	; af4f

; ----------------------------------------------------------------------
; DATOS leido_AF50: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf50..0xaf51  (1 bytes)
DATA_leido_AF50:
	defb 0dbh	; af50

; ----------------------------------------------------------------------
; DATOS leido_AF51: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaf51..0xaf52  (1 bytes)
DATA_leido_AF51:
	defb 001h	; af51

; ----------------------------------------------------------------------
; DATOS leido_AF52: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf52..0xaf53  (1 bytes)
DATA_leido_AF52:
	defb 0f9h	; af52

; ----------------------------------------------------------------------
; DATOS leido_AF53: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaf53..0xaf55  (2 bytes)
DATA_leido_AF53:
	defb 044h,0b1h	; af53

; ----------------------------------------------------------------------
; DATOS leido_AF55: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xaf55..0xaf5c  (7 bytes)
DATA_leido_AF55:
	defb 091h,072h,022h,0d3h,0b1h,0f0h,0f9h	; af55

; ----------------------------------------------------------------------
; DATOS leido_AF5C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaf5c..0xaf5e  (2 bytes)
DATA_leido_AF5C:
	defb 044h,0b1h	; af5c

; ----------------------------------------------------------------------
; DATOS leido_AF5E: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xaf5e..0xaf63  (5 bytes)
DATA_leido_AF5E:
	defb 041h,072h,092h,0b1h,0f8h	; af5e

; ----------------------------------------------------------------------
; DATOS leido_AF63: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaf63..0xaf64  (1 bytes)
DATA_leido_AF63:
	defb 00bh	; af63

; ----------------------------------------------------------------------
; DATOS leido_AF64: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf64..0xaf65  (1 bytes)
DATA_leido_AF64:
	defb 0dbh	; af64

; ----------------------------------------------------------------------
; DATOS leido_AF65: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaf65..0xaf66  (1 bytes)
DATA_leido_AF65:
	defb 003h	; af65

; ----------------------------------------------------------------------
; DATOS leido_AF66: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf66..0xaf67  (1 bytes)
DATA_leido_AF66:
	defb 0eah	; af66

; ----------------------------------------------------------------------
; DATOS leido_AF67: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf67..0xaf68  (1 bytes)
DATA_leido_AF67:
	defb 00ah	; af67

; ----------------------------------------------------------------------
; DATOS leido_AF68: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf68..0xaf69  (1 bytes)
DATA_leido_AF68:
	defb 0ebh	; af68

; ----------------------------------------------------------------------
; DATOS leido_AF69: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaf69..0xaf6a  (1 bytes)
DATA_leido_AF69:
	defb 021h	; af69

; ----------------------------------------------------------------------
; DATOS leido_AF6A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaf6a..0xaf6b  (1 bytes)
DATA_leido_AF6A:
	defb 040h	; af6a

; ----------------------------------------------------------------------
; DATOS leido_AF6B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf6b..0xaf6c  (1 bytes)
DATA_leido_AF6B:
	defb 0f1h	; af6b

; ----------------------------------------------------------------------
; DATOS leido_AF6C: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaf6c..0xaf6d  (1 bytes)
DATA_leido_AF6C:
	defb 041h	; af6c

; ----------------------------------------------------------------------
; DATOS leido_AF6D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf6d..0xaf6e  (1 bytes)
DATA_leido_AF6D:
	defb 0f2h	; af6d

; ----------------------------------------------------------------------
; DATOS leido_AF6E: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaf6e..0xaf6f  (1 bytes)
DATA_leido_AF6E:
	defb 020h	; af6e

; ----------------------------------------------------------------------
; DATOS leido_AF6F: 21 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (21 bytes)
;   0xaf6f..0xaf84  (21 bytes)
DATA_leido_AF6F:
	defb 0d2h,0b2h,0d1h,002h,0d2h,095h,050h,070h,090h,0d1h,000h,0d2h,0b2h,0d1h,002h,025h	; af6f  ......Pp.......%
	defb 073h,067h,097h,097h,0f8h	; af7f

; ----------------------------------------------------------------------
; DATOS leido_AF84: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaf84..0xaf85  (1 bytes)
DATA_leido_AF84:
	defb 002h	; af84

; ----------------------------------------------------------------------
; DATOS leido_AF85: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaf85..0xaf87  (2 bytes)
DATA_leido_AF85:
	defb 0ech,0eah	; af85

; ----------------------------------------------------------------------
; DATOS leido_AF87: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf87..0xaf88  (1 bytes)
DATA_leido_AF87:
	defb 002h	; af87

; ----------------------------------------------------------------------
; DATOS leido_AF88: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf88..0xaf89  (1 bytes)
DATA_leido_AF88:
	defb 0e9h	; af88

; ----------------------------------------------------------------------
; DATOS leido_AF89: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaf89..0xaf8a  (1 bytes)
DATA_leido_AF89:
	defb 004h	; af89

; ----------------------------------------------------------------------
; DATOS leido_AF8A: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xaf8a..0xaf8f  (5 bytes)
DATA_leido_AF8A:
	defb 0d3h,0b0h,0d2h,000h,0eah	; af8a

; ----------------------------------------------------------------------
; DATOS leido_AF8F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf8f..0xaf90  (1 bytes)
DATA_leido_AF8F:
	defb 003h	; af8f

; ----------------------------------------------------------------------
; DATOS leido_AF90: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaf90..0xaf93  (3 bytes)
DATA_leido_AF90:
	defb 020h,040h,0eah	; af90

; ----------------------------------------------------------------------
; DATOS leido_AF93: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf93..0xaf94  (1 bytes)
DATA_leido_AF93:
	defb 004h	; af93

; ----------------------------------------------------------------------
; DATOS leido_AF94: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaf94..0xaf97  (3 bytes)
DATA_leido_AF94:
	defb 050h,070h,0eah	; af94

; ----------------------------------------------------------------------
; DATOS leido_AF97: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf97..0xaf98  (1 bytes)
DATA_leido_AF97:
	defb 005h	; af97

; ----------------------------------------------------------------------
; DATOS leido_AF98: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaf98..0xaf9b  (3 bytes)
DATA_leido_AF98:
	defb 090h,0b0h,0eah	; af98

; ----------------------------------------------------------------------
; DATOS leido_AF9B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf9b..0xaf9c  (1 bytes)
DATA_leido_AF9B:
	defb 006h	; af9b

; ----------------------------------------------------------------------
; DATOS leido_AF9C: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xaf9c..0xafa0  (4 bytes)
DATA_leido_AF9C:
	defb 0d1h,000h,020h,0eah	; af9c

; ----------------------------------------------------------------------
; DATOS leido_AFA0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xafa0..0xafa1  (1 bytes)
DATA_leido_AFA0:
	defb 007h	; afa0

; ----------------------------------------------------------------------
; DATOS leido_AFA1: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xafa1..0xafa4  (3 bytes)
DATA_leido_AFA1:
	defb 040h,050h,0eah	; afa1

; ----------------------------------------------------------------------
; DATOS leido_AFA4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xafa4..0xafa5  (1 bytes)
DATA_leido_AFA4:
	defb 00ah	; afa4

; ----------------------------------------------------------------------
; DATOS leido_AFA5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafa5..0xafa6  (1 bytes)
DATA_leido_AFA5:
	defb 0ebh	; afa5

; ----------------------------------------------------------------------
; DATOS leido_AFA6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xafa6..0xafa7  (1 bytes)
DATA_leido_AFA6:
	defb 008h	; afa6

; ----------------------------------------------------------------------
; DATOS leido_AFA7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xafa7..0xafa8  (1 bytes)
DATA_leido_AFA7:
	defb 059h	; afa7

; ----------------------------------------------------------------------
; DATOS leido_AFA8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafa8..0xafa9  (1 bytes)
DATA_leido_AFA8:
	defb 0e9h	; afa8

; ----------------------------------------------------------------------
; DATOS leido_AFA9: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xafa9..0xafaa  (1 bytes)
DATA_leido_AFA9:
	defb 006h	; afa9

; ----------------------------------------------------------------------
; DATOS leido_AFAA: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xafaa..0xafad  (3 bytes)
DATA_leido_AFAA:
	defb 0d1h,071h,0eah	; afaa

; ----------------------------------------------------------------------
; DATOS leido_AFAD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xafad..0xafae  (1 bytes)
DATA_leido_AFAD:
	defb 003h	; afad

; ----------------------------------------------------------------------
; DATOS leido_AFAE: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xafae..0xafb0  (2 bytes)
DATA_leido_AFAE:
	defb 070h,0eah	; afae

; ----------------------------------------------------------------------
; DATOS leido_AFB0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xafb0..0xafb1  (1 bytes)
DATA_leido_AFB0:
	defb 00ah	; afb0

; ----------------------------------------------------------------------
; DATOS leido_AFB1: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xafb1..0xafb6  (5 bytes)
DATA_leido_AFB1:
	defb 070h,0d0h,007h,0d1h,0e9h	; afb1

; ----------------------------------------------------------------------
; DATOS leido_AFB6: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xafb6..0xafb7  (1 bytes)
DATA_leido_AFB6:
	defb 004h	; afb6

; ----------------------------------------------------------------------
; DATOS leido_AFB7: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xafb7..0xafbb  (4 bytes)
DATA_leido_AFB7:
	defb 071h,071h,071h,0e9h	; afb7

; ----------------------------------------------------------------------
; DATOS leido_AFBB: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xafbb..0xafbc  (1 bytes)
DATA_leido_AFBB:
	defb 006h	; afbb

; ----------------------------------------------------------------------
; DATOS leido_AFBC: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xafbc..0xafcd  (17 bytes)
DATA_leido_AFBC:
	defb 0a7h,0d0h,027h,027h,022h,0d1h,0a2h,081h,073h,023h,0d2h,0b2h,072h,071h,0dch,0f0h	; afbc  ..''"...s#..rq..
	defb 0f8h	; afcc

; ----------------------------------------------------------------------
; DATOS leido_AFCD: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xafcd..0xafce  (1 bytes)
DATA_leido_AFCD:
	defb 00bh	; afcd

; ----------------------------------------------------------------------
; DATOS leido_AFCE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafce..0xafcf  (1 bytes)
DATA_leido_AFCE:
	defb 0f2h	; afce

; ----------------------------------------------------------------------
; DATOS leido_AFCF: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xafcf..0xafd0  (1 bytes)
DATA_leido_AFCF:
	defb 00ah	; afcf

; ----------------------------------------------------------------------
; DATOS leido_AFD0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafd0..0xafd1  (1 bytes)
DATA_leido_AFD0:
	defb 0f1h	; afd0

; ----------------------------------------------------------------------
; DATOS leido_AFD1: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xafd1..0xafd2  (1 bytes)
DATA_leido_AFD1:
	defb 042h	; afd1

; ----------------------------------------------------------------------
; DATOS leido_AFD2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafd2..0xafd3  (1 bytes)
DATA_leido_AFD2:
	defb 0eah	; afd2

; ----------------------------------------------------------------------
; DATOS leido_AFD3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xafd3..0xafd4  (1 bytes)
DATA_leido_AFD3:
	defb 009h	; afd3

; ----------------------------------------------------------------------
; DATOS leido_AFD4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafd4..0xafd5  (1 bytes)
DATA_leido_AFD4:
	defb 0ebh	; afd4

; ----------------------------------------------------------------------
; DATOS leido_AFD5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xafd5..0xafd6  (1 bytes)
DATA_leido_AFD5:
	defb 010h	; afd5

; ----------------------------------------------------------------------
; DATOS leido_AFD6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xafd6..0xafd7  (1 bytes)
DATA_leido_AFD6:
	defb 050h	; afd6

; ----------------------------------------------------------------------
; DATOS leido_AFD7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafd7..0xafd8  (1 bytes)
DATA_leido_AFD7:
	defb 0ddh	; afd7

; ----------------------------------------------------------------------
; DATOS leido_AFD8: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xafd8..0xafda  (2 bytes)
DATA_leido_AFD8:
	defb 034h,032h	; afd8

; ----------------------------------------------------------------------
; DATOS leido_AFDA: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xafda..0xafeb  (17 bytes)
DATA_leido_AFDA:
	defb 0d3h,070h,0d2h,000h,020h,071h,020h,000h,0d3h,071h,0d2h,000h,020h,071h,020h,001h	; afda  .p.. q ..q.. q .
	defb 0fbh	; afea

; ----------------------------------------------------------------------
; DATOS leido_AFEB: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xafeb..0xafee  (3 bytes)
DATA_leido_AFEB:
	defb 002h,0dah,0afh	; afeb

; ----------------------------------------------------------------------
; DATOS leido_AFEE: 33 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (33 bytes)
;   0xafee..0xb00f  (33 bytes)
DATA_leido_AFEE:
	defb 0d3h,090h,0d2h,020h,040h,091h,040h,020h,0d3h,091h,0d2h,020h,040h,091h,040h,021h	; afee  ... @.@ ... @.@!
	defb 000h,040h,070h,0d1h,001h,0d2h,070h,040h,001h,040h,070h,0d1h,001h,0d2h,070h,041h	; affe  .@p...p@.@p...pA
	defb 0f2h	; b00e

; ----------------------------------------------------------------------
; DATOS leido_B00F: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb00f..0xb010  (1 bytes)
DATA_leido_B00F:
	defb 015h	; b00f

; ----------------------------------------------------------------------
; DATOS leido_B010: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb010..0xb011  (1 bytes)
DATA_leido_B010:
	defb 0f1h	; b010

; ----------------------------------------------------------------------
; DATOS leido_B011: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb011..0xb012  (1 bytes)
DATA_leido_B011:
	defb 043h	; b011

; ----------------------------------------------------------------------
; DATOS leido_B012: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb012..0xb013  (1 bytes)
DATA_leido_B012:
	defb 0f8h	; b012

; ----------------------------------------------------------------------
; DATOS leido_B013: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb013..0xb014  (1 bytes)
DATA_leido_B013:
	defb 00bh	; b013

; ----------------------------------------------------------------------
; DATOS leido_B014: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb014..0xb015  (1 bytes)
DATA_leido_B014:
	defb 0e9h	; b014

; ----------------------------------------------------------------------
; DATOS leido_B015: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb015..0xb016  (1 bytes)
DATA_leido_B015:
	defb 006h	; b015

; ----------------------------------------------------------------------
; DATOS leido_B016: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb016..0xb017  (1 bytes)
DATA_leido_B016:
	defb 0dbh	; b016

; ----------------------------------------------------------------------
; DATOS leido_B017: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb017..0xb018  (1 bytes)
DATA_leido_B017:
	defb 003h	; b017

; ----------------------------------------------------------------------
; DATOS leido_B018: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb018..0xb019  (1 bytes)
DATA_leido_B018:
	defb 0eah	; b018

; ----------------------------------------------------------------------
; DATOS leido_B019: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb019..0xb01a  (1 bytes)
DATA_leido_B019:
	defb 00ah	; b019

; ----------------------------------------------------------------------
; DATOS leido_B01A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb01a..0xb01b  (1 bytes)
DATA_leido_B01A:
	defb 0ebh	; b01a

; ----------------------------------------------------------------------
; DATOS leido_B01B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb01b..0xb01c  (1 bytes)
DATA_leido_B01B:
	defb 008h	; b01b

; ----------------------------------------------------------------------
; DATOS leido_B01C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb01c..0xb01d  (1 bytes)
DATA_leido_B01C:
	defb 049h	; b01c

; ----------------------------------------------------------------------
; DATOS leido_B01D: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb01d..0xb020  (3 bytes)
DATA_leido_B01D:
	defb 0d2h,055h,0dbh	; b01d

; ----------------------------------------------------------------------
; DATOS leido_B020: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb020..0xb021  (1 bytes)
DATA_leido_B020:
	defb 001h	; b020

; ----------------------------------------------------------------------
; DATOS leido_B021: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb021..0xb024  (3 bytes)
DATA_leido_B021:
	defb 050h,050h,0dbh	; b021

; ----------------------------------------------------------------------
; DATOS leido_B024: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb024..0xb025  (1 bytes)
DATA_leido_B024:
	defb 003h	; b024

; ----------------------------------------------------------------------
; DATOS leido_B025: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xb025..0xb031  (12 bytes)
DATA_leido_B025:
	defb 052h,072h,091h,0d1h,007h,0d2h,0a3h,053h,052h,072h,099h,0f8h	; b025  Rr.....SRr..

; ----------------------------------------------------------------------
; DATOS leido_B031: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb031..0xb032  (1 bytes)
DATA_leido_B031:
	defb 00dh	; b031

; ----------------------------------------------------------------------
; DATOS leido_B032: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb032..0xb039  (7 bytes)
DATA_leido_B032:
	defb 0d3h,032h,024h,002h,0d4h,0a4h,0fbh	; b032

; ----------------------------------------------------------------------
; DATOS leido_B039: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb039..0xb03c  (3 bytes)
DATA_leido_B039:
	defb 002h,00eh,0b0h	; b039

; ----------------------------------------------------------------------
; DATOS leido_B03C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb03c..0xb03d  (1 bytes)
DATA_leido_B03C:
	defb 0fdh	; b03c

; ----------------------------------------------------------------------
; DATOS leido_B03D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb03d..0xb03f  (2 bytes)
DATA_leido_B03D:
	defb 048h,0afh	; b03d

; ----------------------------------------------------------------------
; DATOS leido_B03F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb03f..0xb040  (1 bytes)
DATA_leido_B03F:
	defb 0feh	; b03f

; ----------------------------------------------------------------------
; DATOS leido_B040: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb040..0xb041  (1 bytes)
DATA_leido_B040:
	defb 010h	; b040

; ----------------------------------------------------------------------
; DATOS leido_B041: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb041..0xb043  (2 bytes)
DATA_leido_B041:
	defb 0d0h,0e9h	; b041

; ----------------------------------------------------------------------
; DATOS leido_B043: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb043..0xb044  (1 bytes)
DATA_leido_B043:
	defb 006h	; b043

; ----------------------------------------------------------------------
; DATOS leido_B044: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb044..0xb046  (2 bytes)
DATA_leido_B044:
	defb 093h,0feh	; b044

; ----------------------------------------------------------------------
; DATOS leido_B046: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb046..0xb047  (1 bytes)
DATA_leido_B046:
	defb 004h	; b046

; ----------------------------------------------------------------------
; DATOS leido_B047: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb047..0xb049  (2 bytes)
DATA_leido_B047:
	defb 000h,0fbh	; b047

; ----------------------------------------------------------------------
; DATOS leido_B049: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb049..0xb04c  (3 bytes)
DATA_leido_B049:
	defb 00ch,045h,0b0h	; b049

; ----------------------------------------------------------------------
; DATOS leido_B04C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb04c..0xb04d  (1 bytes)
DATA_leido_B04C:
	defb 0fch	; b04c

; ----------------------------------------------------------------------
; DATOS leido_B04D: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb04d..0xb050  (3 bytes)
DATA_leido_B04D:
	defb 003h,03fh,0b0h	; b04d

; ----------------------------------------------------------------------
; DATOS leido_B050: 26 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (26 bytes)
;   0xb050..0xb06a  (26 bytes)
DATA_leido_B050:
	defb 031h,000h,030h,000h,000h,000h,010h,031h,000h,030h,0fah,091h,030h,010h,000h,090h	; b050  1.0....1.0..0...
	defb 030h,010h,000h,090h,030h,010h,090h,000h,031h,0fbh	; b060  0...0...1.

; ----------------------------------------------------------------------
; DATOS leido_B06A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb06a..0xb06d  (3 bytes)
DATA_leido_B06A:
	defb 003h,05bh,0b0h	; b06a

; ----------------------------------------------------------------------
; DATOS leido_B06D: 41 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (41 bytes)
;   0xb06d..0xb096  (41 bytes)
DATA_leido_B06D:
	defb 030h,090h,090h,030h,000h,000h,010h,090h,030h,090h,090h,030h,0fah,0d5h,059h,0d4h	; b06d  0..0....0..0..Y.
	defb 002h,052h,0d5h,075h,0d4h,000h,020h,092h,074h,0d5h,09dh,0d4h,020h,040h,092h,094h	; b07d  .R.u.. .t... @..
	defb 072h,0fah,0d5h,052h,0d4h,052h,0d5h,051h,0fbh	; b08d  r..R.R.Q.

; ----------------------------------------------------------------------
; DATOS leido_B096: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb096..0xb099  (3 bytes)
DATA_leido_B096:
	defb 002h,08fh,0b0h	; b096

; ----------------------------------------------------------------------
; DATOS leido_B099: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb099..0xb09b  (2 bytes)
DATA_leido_B099:
	defb 0fah,0f8h	; b099

; ----------------------------------------------------------------------
; DATOS leido_B09B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb09b..0xb09c  (1 bytes)
DATA_leido_B09B:
	defb 017h	; b09b

; ----------------------------------------------------------------------
; DATOS leido_B09C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb09c..0xb09d  (1 bytes)
DATA_leido_B09C:
	defb 0eah	; b09c

; ----------------------------------------------------------------------
; DATOS leido_B09D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb09d..0xb09e  (1 bytes)
DATA_leido_B09D:
	defb 009h	; b09d

; ----------------------------------------------------------------------
; DATOS leido_B09E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb09e..0xb09f  (1 bytes)
DATA_leido_B09E:
	defb 0ebh	; b09e

; ----------------------------------------------------------------------
; DATOS leido_B09F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb09f..0xb0a0  (1 bytes)
DATA_leido_B09F:
	defb 009h	; b09f

; ----------------------------------------------------------------------
; DATOS leido_B0A0: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb0a0..0xb0a1  (1 bytes)
DATA_leido_B0A0:
	defb 020h	; b0a0

; ----------------------------------------------------------------------
; DATOS leido_B0A1: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb0a1..0xb0ac  (11 bytes)
DATA_leido_B0A1:
	defb 0d2h,0b0h,0d1h,000h,050h,0d2h,0b0h,0d1h,000h,070h,0fbh	; b0a1  ....P....p.

; ----------------------------------------------------------------------
; DATOS leido_B0AC: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb0ac..0xb0af  (3 bytes)
DATA_leido_B0AC:
	defb 008h,0a1h,0b0h	; b0ac

; ----------------------------------------------------------------------
; DATOS leido_B0AF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0af..0xb0b0  (1 bytes)
DATA_leido_B0AF:
	defb 0f8h	; b0af

; ----------------------------------------------------------------------
; DATOS leido_B0B0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb0b0..0xb0b1  (1 bytes)
DATA_leido_B0B0:
	defb 00bh	; b0b0

; ----------------------------------------------------------------------
; DATOS leido_B0B1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0b1..0xb0b2  (1 bytes)
DATA_leido_B0B1:
	defb 0eah	; b0b1

; ----------------------------------------------------------------------
; DATOS leido_B0B2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb0b2..0xb0b3  (1 bytes)
DATA_leido_B0B2:
	defb 00ah	; b0b2

; ----------------------------------------------------------------------
; DATOS leido_B0B3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0b3..0xb0b4  (1 bytes)
DATA_leido_B0B3:
	defb 0ddh	; b0b3

; ----------------------------------------------------------------------
; DATOS leido_B0B4: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb0b4..0xb0b6  (2 bytes)
DATA_leido_B0B4:
	defb 057h,032h	; b0b4

; ----------------------------------------------------------------------
; DATOS leido_B0B6: 24 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (24 bytes)
;   0xb0b6..0xb0ce  (24 bytes)
DATA_leido_B0B6:
	defb 0d2h,022h,042h,0fah,042h,005h,0d2h,090h,0b0h,0d1h,000h,040h,022h,042h,075h,0b3h	; b0b6  ."B.B......@"Bu.
	defb 097h,0d0h,027h,007h,0fah,000h,047h,0e9h	; b0c6  ..'...G.

; ----------------------------------------------------------------------
; DATOS leido_B0CE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb0ce..0xb0cf  (1 bytes)
DATA_leido_B0CE:
	defb 004h	; b0ce

; ----------------------------------------------------------------------
; DATOS leido_B0CF: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb0cf..0xb0d3  (4 bytes)
DATA_leido_B0CF:
	defb 001h,001h,001h,0e9h	; b0cf

; ----------------------------------------------------------------------
; DATOS leido_B0D3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb0d3..0xb0d4  (1 bytes)
DATA_leido_B0D3:
	defb 006h	; b0d3

; ----------------------------------------------------------------------
; DATOS leido_B0D4: 31 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (31 bytes)
;   0xb0d4..0xb0f3  (31 bytes)
DATA_leido_B0D4:
	defb 027h,077h,077h,072h,022h,001h,0d1h,0b3h,073h,022h,002h,0d2h,0fah,0d2h,000h,050h	; b0d4  'wwr"...s".....P
	defb 070h,0d1h,001h,0d2h,070h,050h,001h,050h,070h,0d1h,001h,0d2h,070h,051h,0fbh	; b0e4  p...pP.Pp...pQ.

; ----------------------------------------------------------------------
; DATOS leido_B0F3: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb0f3..0xb0f6  (3 bytes)
DATA_leido_B0F3:
	defb 002h,0e1h,0b0h	; b0f3

; ----------------------------------------------------------------------
; DATOS leido_B0F6: 35 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (35 bytes)
;   0xb0f6..0xb119  (35 bytes)
DATA_leido_B0F6:
	defb 020h,070h,090h,0d1h,021h,0d2h,090h,070h,021h,070h,090h,0d1h,021h,0d2h,090h,071h	; b0f6   p..!..p!p..!..q
	defb 040h,070h,0d1h,000h,041h,000h,0d2h,070h,041h,070h,0d1h,000h,041h,000h,0d2h,0fah	; b106  @p..A..pAp..A...
	defb 0d2h,0a5h,0dbh	; b116

; ----------------------------------------------------------------------
; DATOS leido_B119: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb119..0xb11a  (1 bytes)
DATA_leido_B119:
	defb 001h	; b119

; ----------------------------------------------------------------------
; DATOS leido_B11A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb11a..0xb11d  (3 bytes)
DATA_leido_B11A:
	defb 0a0h,0a0h,0dbh	; b11a

; ----------------------------------------------------------------------
; DATOS leido_B11D: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb11d..0xb11e  (1 bytes)
DATA_leido_B11D:
	defb 003h	; b11d

; ----------------------------------------------------------------------
; DATOS leido_B11E: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xb11e..0xb12b  (13 bytes)
DATA_leido_B11E:
	defb 092h,0a2h,0d1h,001h,037h,023h,0d2h,0a3h,092h,0a2h,0d1h,009h,0f8h	; b11e  ....7#.......

; ----------------------------------------------------------------------
; DATOS leido_B12B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb12b..0xb12c  (1 bytes)
DATA_leido_B12B:
	defb 00dh	; b12b

; ----------------------------------------------------------------------
; DATOS leido_B12C: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xb12c..0xb13d  (17 bytes)
DATA_leido_B12C:
	defb 0d2h,032h,024h,002h,0d3h,0fah,0d2h,0b0h,0d1h,000h,050h,0d2h,0b0h,0d1h,000h,070h	; b12c  .2$.......P....p
	defb 0fbh	; b13c

; ----------------------------------------------------------------------
; DATOS leido_B13D: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb13d..0xb140  (3 bytes)
DATA_leido_B13D:
	defb 008h,032h,0b1h	; b13d

; ----------------------------------------------------------------------
; DATOS leido_B140: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb140..0xb145  (5 bytes)
DATA_leido_B140:
	defb 0d2h,022h,042h,0fah,0f8h	; b140

; ----------------------------------------------------------------------
; DATOS leido_B145: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb145..0xb146  (1 bytes)
DATA_leido_B145:
	defb 017h	; b145

; ----------------------------------------------------------------------
; DATOS leido_B146: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb146..0xb147  (1 bytes)
DATA_leido_B146:
	defb 0eah	; b146

; ----------------------------------------------------------------------
; DATOS leido_B147: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb147..0xb148  (1 bytes)
DATA_leido_B147:
	defb 007h	; b147

; ----------------------------------------------------------------------
; DATOS leido_B148: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb148..0xb149  (1 bytes)
DATA_leido_B148:
	defb 0ebh	; b148

; ----------------------------------------------------------------------
; DATOS leido_B149: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb149..0xb14a  (1 bytes)
DATA_leido_B149:
	defb 009h	; b149

; ----------------------------------------------------------------------
; DATOS leido_B14A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb14a..0xb14b  (1 bytes)
DATA_leido_B14A:
	defb 010h	; b14a

; ----------------------------------------------------------------------
; DATOS leido_B14B: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb14b..0xb156  (11 bytes)
DATA_leido_B14B:
	defb 0d3h,0b0h,0d2h,000h,050h,0d3h,0b0h,0d2h,000h,070h,0fbh	; b14b  ....P....p.

; ----------------------------------------------------------------------
; DATOS leido_B156: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb156..0xb159  (3 bytes)
DATA_leido_B156:
	defb 008h,04bh,0b1h	; b156

; ----------------------------------------------------------------------
; DATOS leido_B159: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb159..0xb15a  (1 bytes)
DATA_leido_B159:
	defb 0eah	; b159

; ----------------------------------------------------------------------
; DATOS leido_B15A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb15a..0xb15b  (1 bytes)
DATA_leido_B15A:
	defb 009h	; b15a

; ----------------------------------------------------------------------
; DATOS leido_B15B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb15b..0xb15c  (1 bytes)
DATA_leido_B15B:
	defb 0f8h	; b15b

; ----------------------------------------------------------------------
; DATOS leido_B15C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb15c..0xb15d  (1 bytes)
DATA_leido_B15C:
	defb 00bh	; b15c

; ----------------------------------------------------------------------
; DATOS leido_B15D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb15d..0xb15e  (1 bytes)
DATA_leido_B15D:
	defb 0ddh	; b15d

; ----------------------------------------------------------------------
; DATOS leido_B15E: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb15e..0xb160  (2 bytes)
DATA_leido_B15E:
	defb 057h,032h	; b15e

; ----------------------------------------------------------------------
; DATOS leido_B160: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb160..0xb166  (6 bytes)
DATA_leido_B160:
	defb 0d3h,0b2h,0d2h,002h,0fah,0feh	; b160

; ----------------------------------------------------------------------
; DATOS leido_B166: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb166..0xb167  (1 bytes)
DATA_leido_B166:
	defb 001h	; b166

; ----------------------------------------------------------------------
; DATOS leido_B167: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb167..0xb168  (1 bytes)
DATA_leido_B167:
	defb 0f2h	; b167

; ----------------------------------------------------------------------
; DATOS leido_B168: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb168..0xb169  (1 bytes)
DATA_leido_B168:
	defb 00bh	; b168

; ----------------------------------------------------------------------
; DATOS leido_B169: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb169..0xb16a  (1 bytes)
DATA_leido_B169:
	defb 0f1h	; b169

; ----------------------------------------------------------------------
; DATOS leido_B16A: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb16a..0xb16b  (1 bytes)
DATA_leido_B16A:
	defb 043h	; b16a

; ----------------------------------------------------------------------
; DATOS leido_B16B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb16b..0xb16c  (1 bytes)
DATA_leido_B16B:
	defb 0f8h	; b16b

; ----------------------------------------------------------------------
; DATOS leido_B16C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb16c..0xb16d  (1 bytes)
DATA_leido_B16C:
	defb 015h	; b16c

; ----------------------------------------------------------------------
; DATOS leido_B16D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb16d..0xb16e  (1 bytes)
DATA_leido_B16D:
	defb 0e9h	; b16d

; ----------------------------------------------------------------------
; DATOS leido_B16E: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb16e..0xb16f  (1 bytes)
DATA_leido_B16E:
	defb 006h	; b16e

; ----------------------------------------------------------------------
; DATOS leido_B16F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb16f..0xb170  (1 bytes)
DATA_leido_B16F:
	defb 0dbh	; b16f

; ----------------------------------------------------------------------
; DATOS leido_B170: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb170..0xb171  (1 bytes)
DATA_leido_B170:
	defb 002h	; b170

; ----------------------------------------------------------------------
; DATOS leido_B171: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb171..0xb172  (1 bytes)
DATA_leido_B171:
	defb 0eah	; b171

; ----------------------------------------------------------------------
; DATOS leido_B172: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb172..0xb173  (1 bytes)
DATA_leido_B172:
	defb 004h	; b172

; ----------------------------------------------------------------------
; DATOS leido_B173: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb173..0xb174  (1 bytes)
DATA_leido_B173:
	defb 0ebh	; b173

; ----------------------------------------------------------------------
; DATOS leido_B174: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb174..0xb175  (1 bytes)
DATA_leido_B174:
	defb 022h	; b174

; ----------------------------------------------------------------------
; DATOS leido_B175: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb175..0xb176  (1 bytes)
DATA_leido_B175:
	defb 080h	; b175

; ----------------------------------------------------------------------
; DATOS leido_B176: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xb176..0xb183  (13 bytes)
DATA_leido_B176:
	defb 0c0h,0fah,0d2h,0b0h,0d1h,000h,050h,0d2h,0b0h,0d1h,000h,070h,0fbh	; b176  ......P....p.

; ----------------------------------------------------------------------
; DATOS leido_B183: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb183..0xb186  (3 bytes)
DATA_leido_B183:
	defb 007h,078h,0b1h	; b183

; ----------------------------------------------------------------------
; DATOS leido_B186: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb186..0xb190  (10 bytes)
DATA_leido_B186:
	defb 0d2h,0b0h,0d1h,000h,050h,0d2h,0b0h,0d1h,000h,0f8h	; b186  ....P.....

; ----------------------------------------------------------------------
; DATOS leido_B190: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb190..0xb191  (1 bytes)
DATA_leido_B190:
	defb 059h	; b190

; ----------------------------------------------------------------------
; DATOS leido_B191: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb191..0xb192  (1 bytes)
DATA_leido_B191:
	defb 0dbh	; b191

; ----------------------------------------------------------------------
; DATOS leido_B192: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb192..0xb193  (1 bytes)
DATA_leido_B192:
	defb 001h	; b192

; ----------------------------------------------------------------------
; DATOS leido_B193: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb193..0xb194  (1 bytes)
DATA_leido_B193:
	defb 0ddh	; b193

; ----------------------------------------------------------------------
; DATOS leido_B194: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb194..0xb196  (2 bytes)
DATA_leido_B194:
	defb 005h,032h	; b194

; ----------------------------------------------------------------------
; DATOS leido_B196: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb196..0xb197  (1 bytes)
DATA_leido_B196:
	defb 0eah	; b196

; ----------------------------------------------------------------------
; DATOS leido_B197: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb197..0xb198  (1 bytes)
DATA_leido_B197:
	defb 005h	; b197

; ----------------------------------------------------------------------
; DATOS leido_B198: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb198..0xb1a1  (9 bytes)
DATA_leido_B198:
	defb 0d2h,023h,042h,0fah,0d0h,000h,0d1h,000h,0eah	; b198  .#B......

; ----------------------------------------------------------------------
; DATOS leido_B1A1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb1a1..0xb1a2  (1 bytes)
DATA_leido_B1A1:
	defb 003h	; b1a1

; ----------------------------------------------------------------------
; DATOS leido_B1A2: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb1a2..0xb1a4  (2 bytes)
DATA_leido_B1A2:
	defb 000h,0eah	; b1a2

; ----------------------------------------------------------------------
; DATOS leido_B1A4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb1a4..0xb1a5  (1 bytes)
DATA_leido_B1A4:
	defb 006h	; b1a4

; ----------------------------------------------------------------------
; DATOS leido_B1A5: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb1a5..0xb1a7  (2 bytes)
DATA_leido_B1A5:
	defb 000h,0fbh	; b1a5

; ----------------------------------------------------------------------
; DATOS leido_B1A7: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb1a7..0xb1aa  (3 bytes)
DATA_leido_B1A7:
	defb 004h,09ch,0b1h	; b1a7

; ----------------------------------------------------------------------
; DATOS leido_B1AA: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb1aa..0xb1ac  (2 bytes)
DATA_leido_B1AA:
	defb 0fah,0feh	; b1aa

; ----------------------------------------------------------------------
; DATOS leido_B1AC: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb1ac..0xb1ad  (1 bytes)
DATA_leido_B1AC:
	defb 004h	; b1ac

; ----------------------------------------------------------------------
; DATOS leido_B1AD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1ad..0xb1ae  (1 bytes)
DATA_leido_B1AD:
	defb 0e9h	; b1ad

; ----------------------------------------------------------------------
; DATOS leido_B1AE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb1ae..0xb1af  (1 bytes)
DATA_leido_B1AE:
	defb 007h	; b1ae

; ----------------------------------------------------------------------
; DATOS leido_B1AF: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb1af..0xb1b4  (5 bytes)
DATA_leido_B1AF:
	defb 0d0h,090h,092h,011h,0e9h	; b1af

; ----------------------------------------------------------------------
; DATOS leido_B1B4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb1b4..0xb1b5  (1 bytes)
DATA_leido_B1B4:
	defb 001h	; b1b4

; ----------------------------------------------------------------------
; DATOS leido_B1B5: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb1b5..0xb1ba  (5 bytes)
DATA_leido_B1B5:
	defb 002h,002h,003h,003h,0e9h	; b1b5

; ----------------------------------------------------------------------
; DATOS leido_B1BA: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb1ba..0xb1bb  (1 bytes)
DATA_leido_B1BA:
	defb 007h	; b1ba

; ----------------------------------------------------------------------
; DATOS leido_B1BB: 33 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (33 bytes)
;   0xb1bb..0xb1dc  (33 bytes)
DATA_leido_B1BB:
	defb 000h,000h,000h,000h,030h,030h,030h,090h,092h,090h,011h,031h,033h,000h,000h,001h	; b1bb  ....000....13...
	defb 090h,092h,011h,000h,090h,012h,090h,033h,091h,000h,000h,000h,030h,030h,030h,093h	; b1cb  .......3....000.
	defb 0feh	; b1db

; ----------------------------------------------------------------------
; DATOS leido_B1DC: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb1dc..0xb1dd  (1 bytes)
DATA_leido_B1DC:
	defb 010h	; b1dc

; ----------------------------------------------------------------------
; DATOS leido_B1DD: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb1dd..0xb1df  (2 bytes)
DATA_leido_B1DD:
	defb 093h,0fdh	; b1dd

; ----------------------------------------------------------------------
; DATOS leido_B1DF: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb1df..0xb1e1  (2 bytes)
DATA_leido_B1DF:
	defb 0abh,0b1h	; b1df

; ----------------------------------------------------------------------
; DATOS leido_B1E1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1e1..0xb1e2  (1 bytes)
DATA_leido_B1E1:
	defb 0feh	; b1e1

; ----------------------------------------------------------------------
; DATOS leido_B1E2: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb1e2..0xb1e3  (1 bytes)
DATA_leido_B1E2:
	defb 001h	; b1e2

; ----------------------------------------------------------------------
; DATOS leido_B1E3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1e3..0xb1e4  (1 bytes)
DATA_leido_B1E3:
	defb 0e9h	; b1e3

; ----------------------------------------------------------------------
; DATOS leido_B1E4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb1e4..0xb1e5  (1 bytes)
DATA_leido_B1E4:
	defb 007h	; b1e4

; ----------------------------------------------------------------------
; DATOS leido_B1E5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1e5..0xb1e6  (1 bytes)
DATA_leido_B1E5:
	defb 0eah	; b1e5

; ----------------------------------------------------------------------
; DATOS leido_B1E6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb1e6..0xb1e7  (1 bytes)
DATA_leido_B1E6:
	defb 008h	; b1e6

; ----------------------------------------------------------------------
; DATOS leido_B1E7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1e7..0xb1e8  (1 bytes)
DATA_leido_B1E7:
	defb 0ebh	; b1e7

; ----------------------------------------------------------------------
; DATOS leido_B1E8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb1e8..0xb1e9  (1 bytes)
DATA_leido_B1E8:
	defb 006h	; b1e8

; ----------------------------------------------------------------------
; DATOS leido_B1E9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb1e9..0xb1ea  (1 bytes)
DATA_leido_B1E9:
	defb 030h	; b1e9

; ----------------------------------------------------------------------
; DATOS leido_B1EA: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb1ea..0xb1ec  (2 bytes)
DATA_leido_B1EA:
	defb 0c1h,0f9h	; b1ea

; ----------------------------------------------------------------------
; DATOS leido_B1EC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb1ec..0xb1ee  (2 bytes)
DATA_leido_B1EC:
	defb 08fh,0b2h	; b1ec

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb1ee..0xb1f1  (3 bytes)
DATA_B1EE:
	defb 0fdh,0e1h,0b1h	; b1ee

; ----------------------------------------------------------------------
; DATOS leido_B1F1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1f1..0xb1f2  (1 bytes)
DATA_leido_B1F1:
	defb 0feh	; b1f1

; ----------------------------------------------------------------------
; DATOS leido_B1F2: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb1f2..0xb1f3  (1 bytes)
DATA_leido_B1F2:
	defb 001h	; b1f2

; ----------------------------------------------------------------------
; DATOS leido_B1F3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1f3..0xb1f4  (1 bytes)
DATA_leido_B1F3:
	defb 0f2h	; b1f3

; ----------------------------------------------------------------------
; DATOS leido_B1F4: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb1f4..0xb1f5  (1 bytes)
DATA_leido_B1F4:
	defb 018h	; b1f4

; ----------------------------------------------------------------------
; DATOS leido_B1F5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1f5..0xb1f6  (1 bytes)
DATA_leido_B1F5:
	defb 0f1h	; b1f5

; ----------------------------------------------------------------------
; DATOS leido_B1F6: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb1f6..0xb1f7  (1 bytes)
DATA_leido_B1F6:
	defb 052h	; b1f6

; ----------------------------------------------------------------------
; DATOS leido_B1F7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1f7..0xb1f8  (1 bytes)
DATA_leido_B1F7:
	defb 0e9h	; b1f7

; ----------------------------------------------------------------------
; DATOS leido_B1F8: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb1f8..0xb1f9  (1 bytes)
DATA_leido_B1F8:
	defb 007h	; b1f8

; ----------------------------------------------------------------------
; DATOS leido_B1F9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb1f9..0xb1fa  (1 bytes)
DATA_leido_B1F9:
	defb 0eah	; b1f9

; ----------------------------------------------------------------------
; DATOS leido_B1FA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb1fa..0xb1fb  (1 bytes)
DATA_leido_B1FA:
	defb 008h	; b1fa

; ----------------------------------------------------------------------
; DATOS leido_B1FB: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb1fb..0xb200  (5 bytes)
DATA_leido_B1FB:
	defb 0ech,0c1h,0d1h,02dh,0f9h	; b1fb

; ----------------------------------------------------------------------
; DATOS leido_B200: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb200..0xb202  (2 bytes)
DATA_leido_B200:
	defb 0cch,0b2h	; b200

; ----------------------------------------------------------------------
; DATOS leido_B202: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb202..0xb203  (1 bytes)
DATA_leido_B202:
	defb 0feh	; b202

; ----------------------------------------------------------------------
; DATOS leido_B203: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb203..0xb204  (1 bytes)
DATA_leido_B203:
	defb 001h	; b203

; ----------------------------------------------------------------------
; DATOS leido_B204: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb204..0xb205  (1 bytes)
DATA_leido_B204:
	defb 0f8h	; b204

; ----------------------------------------------------------------------
; DATOS leido_B205: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb205..0xb206  (1 bytes)
DATA_leido_B205:
	defb 028h	; b205

; ----------------------------------------------------------------------
; DATOS leido_B206: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb206..0xb207  (1 bytes)
DATA_leido_B206:
	defb 0e9h	; b206

; ----------------------------------------------------------------------
; DATOS leido_B207: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb207..0xb208  (1 bytes)
DATA_leido_B207:
	defb 007h	; b207

; ----------------------------------------------------------------------
; DATOS leido_B208: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb208..0xb209  (1 bytes)
DATA_leido_B208:
	defb 0eah	; b208

; ----------------------------------------------------------------------
; DATOS leido_B209: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb209..0xb20a  (1 bytes)
DATA_leido_B209:
	defb 00bh	; b209

; ----------------------------------------------------------------------
; DATOS leido_B20A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb20a..0xb20b  (1 bytes)
DATA_leido_B20A:
	defb 0ebh	; b20a

; ----------------------------------------------------------------------
; DATOS leido_B20B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb20b..0xb20c  (1 bytes)
DATA_leido_B20B:
	defb 009h	; b20b

; ----------------------------------------------------------------------
; DATOS leido_B20C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb20c..0xb20d  (1 bytes)
DATA_leido_B20C:
	defb 031h	; b20c

; ----------------------------------------------------------------------
; DATOS leido_B20D: 18 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 9 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (18
;   bytes)
;   0xb20d..0xb21f  (18 bytes)
DATA_leido_B20D:
	defb 0d5h,07fh,05fh,0afh,097h,087h,0d4h,01fh,0d5h,0bfh,0d4h,04fh,037h,027h,0fdh,002h	; b20d  .._........O7'..
	defb 0b2h,0feh	; b21d

; ----------------------------------------------------------------------
; DATOS leido_B21F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb21f..0xb220  (1 bytes)
DATA_leido_B21F:
	defb 001h	; b21f

; ----------------------------------------------------------------------
; DATOS leido_B220: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb220..0xb221  (1 bytes)
DATA_leido_B220:
	defb 0f8h	; b220

; ----------------------------------------------------------------------
; DATOS leido_B221: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb221..0xb222  (1 bytes)
DATA_leido_B221:
	defb 05ch	; b221

; ----------------------------------------------------------------------
; DATOS leido_B222: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb222..0xb223  (1 bytes)
DATA_leido_B222:
	defb 0f2h	; b222

; ----------------------------------------------------------------------
; DATOS leido_B223: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb223..0xb224  (1 bytes)
DATA_leido_B223:
	defb 018h	; b223

; ----------------------------------------------------------------------
; DATOS leido_B224: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb224..0xb225  (1 bytes)
DATA_leido_B224:
	defb 0f1h	; b224

; ----------------------------------------------------------------------
; DATOS leido_B225: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb225..0xb226  (1 bytes)
DATA_leido_B225:
	defb 054h	; b225

; ----------------------------------------------------------------------
; DATOS leido_B226: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb226..0xb227  (1 bytes)
DATA_leido_B226:
	defb 0e9h	; b226

; ----------------------------------------------------------------------
; DATOS leido_B227: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb227..0xb228  (1 bytes)
DATA_leido_B227:
	defb 007h	; b227

; ----------------------------------------------------------------------
; DATOS leido_B228: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb228..0xb229  (1 bytes)
DATA_leido_B228:
	defb 0eah	; b228

; ----------------------------------------------------------------------
; DATOS leido_B229: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb229..0xb22a  (1 bytes)
DATA_leido_B229:
	defb 009h	; b229

; ----------------------------------------------------------------------
; DATOS leido_B22A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb22a..0xb22b  (1 bytes)
DATA_leido_B22A:
	defb 0edh	; b22a

; ----------------------------------------------------------------------
; DATOS leido_B22B: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb22b..0xb22c  (1 bytes)
DATA_leido_B22B:
	defb 005h	; b22b

; ----------------------------------------------------------------------
; DATOS leido_B22C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb22c..0xb22d  (1 bytes)
DATA_leido_B22C:
	defb 0ebh	; b22c

; ----------------------------------------------------------------------
; DATOS leido_B22D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb22d..0xb22e  (1 bytes)
DATA_leido_B22D:
	defb 087h	; b22d

; ----------------------------------------------------------------------
; DATOS leido_B22E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb22e..0xb22f  (1 bytes)
DATA_leido_B22E:
	defb 041h	; b22e

; ----------------------------------------------------------------------
; DATOS leido_B22F: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb22f..0xb232  (3 bytes)
DATA_leido_B22F:
	defb 0d1h,02dh,0f9h	; b22f

; ----------------------------------------------------------------------
; DATOS leido_B232: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb232..0xb234  (2 bytes)
DATA_leido_B232:
	defb 0cch,0b2h	; b232

; ----------------------------------------------------------------------
; DATOS leido_B234: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb234..0xb235  (1 bytes)
DATA_leido_B234:
	defb 0feh	; b234

; ----------------------------------------------------------------------
; DATOS leido_B235: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb235..0xb236  (1 bytes)
DATA_leido_B235:
	defb 001h	; b235

; ----------------------------------------------------------------------
; DATOS leido_B236: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb236..0xb237  (1 bytes)
DATA_leido_B236:
	defb 0eeh	; b236

; ----------------------------------------------------------------------
; DATOS leido_B237: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xb237..0xb238  (1 bytes)
DATA_leido_B237:
	defb 001h	; b237

; ----------------------------------------------------------------------
; DATOS leido_B238: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb238..0xb239  (1 bytes)
DATA_leido_B238:
	defb 0f2h	; b238

; ----------------------------------------------------------------------
; DATOS leido_B239: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb239..0xb23a  (1 bytes)
DATA_leido_B239:
	defb 030h	; b239

; ----------------------------------------------------------------------
; DATOS leido_B23A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb23a..0xb23b  (1 bytes)
DATA_leido_B23A:
	defb 0f1h	; b23a

; ----------------------------------------------------------------------
; DATOS leido_B23B: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb23b..0xb23c  (1 bytes)
DATA_leido_B23B:
	defb 042h	; b23b

; ----------------------------------------------------------------------
; DATOS leido_B23C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb23c..0xb23d  (1 bytes)
DATA_leido_B23C:
	defb 0f8h	; b23c

; ----------------------------------------------------------------------
; DATOS leido_B23D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb23d..0xb23e  (1 bytes)
DATA_leido_B23D:
	defb 05ch	; b23d

; ----------------------------------------------------------------------
; DATOS leido_B23E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb23e..0xb23f  (1 bytes)
DATA_leido_B23E:
	defb 0e9h	; b23e

; ----------------------------------------------------------------------
; DATOS leido_B23F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb23f..0xb240  (1 bytes)
DATA_leido_B23F:
	defb 011h	; b23f

; ----------------------------------------------------------------------
; DATOS leido_B240: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb240..0xb241  (1 bytes)
DATA_leido_B240:
	defb 0eah	; b240

; ----------------------------------------------------------------------
; DATOS leido_B241: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb241..0xb242  (1 bytes)
DATA_leido_B241:
	defb 007h	; b241

; ----------------------------------------------------------------------
; DATOS leido_B242: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb242..0xb243  (1 bytes)
DATA_leido_B242:
	defb 0edh	; b242

; ----------------------------------------------------------------------
; DATOS leido_B243: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb243..0xb244  (1 bytes)
DATA_leido_B243:
	defb 005h	; b243

; ----------------------------------------------------------------------
; DATOS leido_B244: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb244..0xb245  (1 bytes)
DATA_leido_B244:
	defb 0ebh	; b244

; ----------------------------------------------------------------------
; DATOS leido_B245: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb245..0xb246  (1 bytes)
DATA_leido_B245:
	defb 087h	; b245

; ----------------------------------------------------------------------
; DATOS leido_B246: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb246..0xb247  (1 bytes)
DATA_leido_B246:
	defb 020h	; b246

; ----------------------------------------------------------------------
; DATOS leido_B247: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb247..0xb24a  (3 bytes)
DATA_leido_B247:
	defb 0d1h,026h,0e9h	; b247

; ----------------------------------------------------------------------
; DATOS leido_B24A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb24a..0xb24b  (1 bytes)
DATA_leido_B24A:
	defb 007h	; b24a

; ----------------------------------------------------------------------
; DATOS leido_B24B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb24b..0xb24c  (1 bytes)
DATA_leido_B24B:
	defb 0f9h	; b24b

; ----------------------------------------------------------------------
; DATOS leido_B24C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb24c..0xb24e  (2 bytes)
DATA_leido_B24C:
	defb 0cch,0b2h	; b24c

; ----------------------------------------------------------------------
; DATOS leido_B24E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb24e..0xb24f  (1 bytes)
DATA_leido_B24E:
	defb 0feh	; b24e

; ----------------------------------------------------------------------
; DATOS leido_B24F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb24f..0xb250  (1 bytes)
DATA_leido_B24F:
	defb 001h	; b24f

; ----------------------------------------------------------------------
; DATOS leido_B250: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb250..0xb251  (1 bytes)
DATA_leido_B250:
	defb 0f8h	; b250

; ----------------------------------------------------------------------
; DATOS leido_B251: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb251..0xb252  (1 bytes)
DATA_leido_B251:
	defb 017h	; b251

; ----------------------------------------------------------------------
; DATOS leido_B252: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb252..0xb253  (1 bytes)
DATA_leido_B252:
	defb 0e9h	; b252

; ----------------------------------------------------------------------
; DATOS leido_B253: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb253..0xb254  (1 bytes)
DATA_leido_B253:
	defb 007h	; b253

; ----------------------------------------------------------------------
; DATOS leido_B254: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb254..0xb255  (1 bytes)
DATA_leido_B254:
	defb 0eah	; b254

; ----------------------------------------------------------------------
; DATOS leido_B255: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb255..0xb256  (1 bytes)
DATA_leido_B255:
	defb 009h	; b255

; ----------------------------------------------------------------------
; DATOS leido_B256: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb256..0xb257  (1 bytes)
DATA_leido_B256:
	defb 0ddh	; b256

; ----------------------------------------------------------------------
; DATOS leido_B257: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb257..0xb259  (2 bytes)
DATA_leido_B257:
	defb 035h,032h	; b257

; ----------------------------------------------------------------------
; DATOS leido_B259: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb259..0xb25a  (1 bytes)
DATA_leido_B259:
	defb 0f9h	; b259

; ----------------------------------------------------------------------
; DATOS leido_B25A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb25a..0xb25c  (2 bytes)
DATA_leido_B25A:
	defb 08fh,0b2h	; b25a

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb25c..0xb261  (5 bytes)
DATA_B25C:
	defb 0d2h,021h,0fdh,04eh,0b2h	; b25c

; ----------------------------------------------------------------------
; DATOS leido_B261: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb261..0xb262  (1 bytes)
DATA_leido_B261:
	defb 0feh	; b261

; ----------------------------------------------------------------------
; DATOS leido_B262: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb262..0xb263  (1 bytes)
DATA_leido_B262:
	defb 001h	; b262

; ----------------------------------------------------------------------
; DATOS leido_B263: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb263..0xb264  (1 bytes)
DATA_leido_B263:
	defb 0f8h	; b263

; ----------------------------------------------------------------------
; DATOS leido_B264: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb264..0xb265  (1 bytes)
DATA_leido_B264:
	defb 017h	; b264

; ----------------------------------------------------------------------
; DATOS leido_B265: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb265..0xb266  (1 bytes)
DATA_leido_B265:
	defb 0e9h	; b265

; ----------------------------------------------------------------------
; DATOS leido_B266: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb266..0xb267  (1 bytes)
DATA_leido_B266:
	defb 007h	; b266

; ----------------------------------------------------------------------
; DATOS leido_B267: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb267..0xb268  (1 bytes)
DATA_leido_B267:
	defb 0eah	; b267

; ----------------------------------------------------------------------
; DATOS leido_B268: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb268..0xb269  (1 bytes)
DATA_leido_B268:
	defb 006h	; b268

; ----------------------------------------------------------------------
; DATOS leido_B269: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb269..0xb26a  (1 bytes)
DATA_leido_B269:
	defb 0ebh	; b269

; ----------------------------------------------------------------------
; DATOS leido_B26A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb26a..0xb26b  (1 bytes)
DATA_leido_B26A:
	defb 002h	; b26a

; ----------------------------------------------------------------------
; DATOS leido_B26B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb26b..0xb26c  (1 bytes)
DATA_leido_B26B:
	defb 072h	; b26b

; ----------------------------------------------------------------------
; DATOS leido_B26C: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb26c..0xb273  (7 bytes)
DATA_leido_B26C:
	defb 0d2h,020h,070h,090h,0d1h,020h,0fbh	; b26c

; ----------------------------------------------------------------------
; DATOS leido_B273: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb273..0xb276  (3 bytes)
DATA_leido_B273:
	defb 00fh,06ch,0b2h	; b273

; ----------------------------------------------------------------------
; DATOS leido_B276: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xb276..0xb283  (13 bytes)
DATA_leido_B276:
	defb 0d2h,030h,080h,0a0h,0d1h,030h,0d2h,080h,0d1h,010h,030h,080h,0fbh	; b276  .0...0....0..

; ----------------------------------------------------------------------
; DATOS leido_B283: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb283..0xb286  (3 bytes)
DATA_leido_B283:
	defb 00fh,07ch,0b2h	; b283

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb286..0xb28f  (9 bytes)
DATA_B286:
	defb 0d2h,090h,0d1h,020h,040h,090h,0fdh,061h,0b2h	; b286  ... @..a.

; ----------------------------------------------------------------------
; DATOS leido_B28F: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb28f..0xb29a  (11 bytes)
DATA_leido_B28F:
	defb 0d3h,021h,071h,021h,070h,021h,021h,071h,020h,071h,0fbh	; b28f  .!q!p!!q q.

; ----------------------------------------------------------------------
; DATOS leido_B29A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb29a..0xb29d  (3 bytes)
DATA_leido_B29A:
	defb 003h,08fh,0b2h	; b29a

; ----------------------------------------------------------------------
; DATOS leido_B29D: 56 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 27 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (56 bytes)
;   0xb29d..0xb2d5  (56 bytes)
DATA_leido_B29D:
	defb 0d3h,021h,071h,021h,070h,021h,021h,081h,030h,081h,0d3h,081h,0d2h,011h,0d3h,081h	; b29d  .!q!p!!.0.......
	defb 0d2h,010h,0d3h,081h,081h,0d2h,011h,0d3h,080h,0d2h,011h,0fbh,003h,0a7h,0b2h,0d3h	; b2ad  ................
	defb 081h,0d2h,011h,0d3h,081h,0d2h,010h,0d3h,081h,081h,0d2h,011h,0d3h,090h,0fah,000h	; b2bd  ................
	defb 0d2h,0b0h,0d1h,00dh,0d2h,0a0h,090h,0edh	; b2cd  ........

; ----------------------------------------------------------------------
; DATOS leido_B2D5: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb2d5..0xb2d6  (1 bytes)
DATA_leido_B2D5:
	defb 002h	; b2d5

; ----------------------------------------------------------------------
; DATOS leido_B2D6: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb2d6..0xb2db  (5 bytes)
DATA_leido_B2D6:
	defb 0a7h,057h,097h,087h,0edh	; b2d6

; ----------------------------------------------------------------------
; DATOS leido_B2DB: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb2db..0xb2dc  (1 bytes)
DATA_leido_B2DB:
	defb 005h	; b2db

; ----------------------------------------------------------------------
; DATOS leido_B2DC: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb2dc..0xb2de  (2 bytes)
DATA_leido_B2DC:
	defb 0d1h,08dh	; b2dc

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb2de..0xbb74  (2198 bytes)
DATA_B2DE:
	defb 060h,050h,06dh,040h,030h,0edh,002h,047h,0d2h,0b7h,0d1h,037h,027h,0edh,005h,0d1h	; b2de  `Pm@0..G...7'...
	defb 02dh,0fdh,0cch,0b2h,0feh,004h,0d0h,0e9h,005h,091h,001h,001h,001h,031h,031h,031h	; b2ee  -............111
	defb 091h,001h,001h,001h,001h,031h,031h,031h,021h,0fbh,004h,0f7h,0b2h,0f9h,037h,0b9h	; b2fe  .....111!.....7.
	defb 001h,091h,091h,011h,030h,030h,031h,031h,031h,0f9h,037h,0b9h,030h,030h,031h,031h	; b30e  ....00111.7.0011
	defb 031h,0e9h,001h,042h,042h,046h,045h,046h,046h,046h,0e9h,005h,091h,001h,001h,001h	; b31e  1..BBFEFFF......
	defb 031h,031h,031h,091h,001h,001h,001h,001h,031h,031h,031h,021h,0fbh,003h,02ah,0b3h	; b32e  111.....111!..*.
	defb 031h,001h,011h,011h,031h,031h,031h,021h,030h,030h,031h,031h,031h,031h,091h,091h	; b33e  1...111!001111..
	defb 011h,091h,001h,001h,011h,0feh,010h,093h,0feh,004h,001h,091h,0fbh,003h,04fh,0b3h	; b34e  ..............O.
	defb 091h,001h,001h,091h,0feh,010h,093h,0feh,004h,001h,091h,091h,001h,001h,011h,0feh	; b35e  ................
	defb 010h,093h,0feh,004h,001h,091h,091h,001h,001h,091h,0feh,010h,093h,0feh,004h,001h	; b36e  ................
	defb 011h,033h,000h,010h,091h,033h,000h,010h,091h,033h,000h,010h,091h,030h,030h,031h	; b37e  .3...3...3...001
	defb 031h,031h,0fch,002h,04fh,0b3h,093h,013h,033h,001h,095h,013h,033h,013h,0fbh,003h	; b38e  11..O...3...3...
	defb 094h,0b3h,093h,013h,033h,001h,095h,013h,031h,031h,031h,031h,033h,000h,010h,091h	; b39e  ....3...11113...
	defb 0fbh,003h,0aah,0b3h,030h,030h,031h,031h,031h,0fdh,0f2h,0b2h,0feh,001h,0e9h,00ah	; b3ae  ....00111.......
	defb 0eah,007h,0ech,0f2h,020h,0f1h,041h,0d2h,091h,090h,0f9h,055h,0b9h,0eah,002h,000h	; b3be  .... .A....U....
	defb 0eah,007h,0f9h,063h,0b9h,010h,0f2h,017h,0f1h,043h,0d2h,00dh,001h,073h,0eah,009h	; b3ce  ...c.....C...s..
	defb 0ebh,007h,010h,0d2h,001h,071h,077h,0ech,0eah,007h,0d1h,001h,007h,0d2h,075h,0d1h	; b3de  .....qw.......u.
	defb 000h,020h,006h,0d2h,0b7h,0eah,007h,0f9h,074h,0b9h,0eah,007h,0f1h,041h,0f2h,020h	; b3ee  . ......t....A.
	defb 0d2h,091h,090h,0f9h,055h,0b9h,0eah,002h,000h,0eah,007h,0f9h,063h,0b9h,010h,0f2h	; b3fe  ....U.......c...
	defb 013h,0f1h,051h,0eah,008h,0d2h,070h,0f9h,005h,0bbh,073h,093h,0b3h,0d1h,023h,076h	; b40e  ..Q...p...s...#v
	defb 065h,060h,070h,098h,027h,094h,070h,060h,078h,073h,093h,0b3h,0d0h,022h,0eah,007h	; b41e  e`p.'.p`xs..."..
	defb 0ech,0f1h,053h,0d1h,028h,008h,0d2h,0a6h,0d1h,008h,0d1h,026h,008h,0d2h,0a6h,0d1h	; b42e  ..S.(......&....
	defb 006h,0f0h,0eah,00ah,0ddh,004h,032h,0dbh,002h,0c0h,0f9h,08fh,0b9h,0fdh,0bah,0b3h	; b43e  ......2.........
	defb 0feh,001h,0eeh,001h,0e9h,00ah,0eah,008h,0ebh,005h,010h,0dbh,002h,0f2h,020h,0f1h	; b44e  .............. .
	defb 051h,0d2h,040h,040h,090h,091h,091h,0d1h,041h,0d2h,0b1h,091h,092h,0eah,007h,0d1h	; b45e  Q.@@....A.......
	defb 021h,000h,021h,041h,004h,0eah,002h,000h,0eah,008h,0d2h,0b2h,0d2h,091h,0d1h,040h	; b46e  !.!A...........@
	defb 021h,041h,091h,041h,021h,002h,0d1h,040h,020h,01dh,0efh,0f2h,017h,0f1h,043h,0eah	; b47e  !A.A!..@ .....C.
	defb 007h,0ech,0d3h,09dh,091h,0d2h,043h,0ebh,007h,010h,0eah,009h,0d3h,071h,0d2h,001h	; b48e  ......C......q..
	defb 007h,0ech,0eah,006h,071h,077h,035h,070h,090h,076h,076h,0eah,00ah,0edh,009h,0ebh	; b49e  ....qw5p.vv.....
	defb 088h,021h,0d3h,095h,0d2h,040h,098h,0d2h,045h,070h,0d1h,048h,0d2h,035h,070h,0d1h	; b4ae  .!...@..Ep.H.5p.
	defb 036h,000h,000h,023h,023h,023h,023h,0f2h,020h,0f1h,041h,0eah,006h,0ech,0d3h,091h	; b4be  6..####. .A.....
	defb 090h,0f9h,0e7h,0b9h,0eah,002h,090h,0eah,006h,072h,0d2h,041h,0d1h,000h,0d2h,0b1h	; b4ce  .........r.A....
	defb 0d1h,001h,041h,001h,0d2h,0b1h,092h,0d1h,010h,0d2h,0b0h,09ch,0ech,0c0h,0f9h,0d3h	; b4de  ..A.............
	defb 0b9h,0d3h,0b3h,0d2h,013h,023h,043h,0f2h,020h,0f1h,052h,0f9h,0f9h,0b9h,043h,063h	; b4ee  .....#C. .R...Cc
	defb 073h,092h,0eah,00ah,0dbh,003h,0ddh,007h,032h,0f1h,053h,0f2h,013h,0d2h,046h,028h	; b4fe  s.......2.S...F(
	defb 006h,028h,0fbh,002h,00ch,0b5h,0eah,009h,0ddh,004h,032h,0dbh,002h,0d2h,0b1h,0f9h	; b50e  .(........2.....
	defb 05eh,0bbh,0fdh,04eh,0b4h,0feh,001h,0f8h,023h,0e9h,00ah,0eah,00dh,0ebh,009h,033h	; b51e  ^..N....#......3
	defb 0dbh,003h,0f9h,0c6h,0bah,096h,040h,0d5h,097h,0ebh,009h,041h,0f9h,0ddh,0bah,020h	; b52e  ......@....A...
	defb 090h,0d3h,020h,0d4h,0eah,00ah,0e9h,005h,020h,040h,0e9h,00ah,0eah,00dh,0f9h,0ddh	; b53e  .. ..... @......
	defb 0bah,0eah,00bh,0e9h,001h,025h,066h,095h,0d3h,026h,0d4h,026h,046h,0e9h,00ah,0eah	; b54e  .....%f..&.&F...
	defb 00dh,0ebh,009h,047h,0dbh,003h,0f9h,0c6h,0bah,0eah,006h,090h,090h,0eah,007h,090h	; b55e  ...G............
	defb 090h,0eah,008h,090h,090h,0eah,009h,040h,0d5h,090h,0eah,00bh,090h,090h,0eah,00dh	; b56e  .......@........
	defb 090h,090h,090h,090h,090h,090h,0dbh,002h,0d4h,0ebh,009h,055h,020h,0fbh,00dh,084h	; b57e  ...........U ...
	defb 0b5h,090h,0d3h,020h,0d4h,020h,000h,0fbh,00dh,094h,0b5h,070h,0d3h,000h,0d4h,000h	; b58e  ... . .....p....
	defb 0d5h,0b0h,0fbh,00dh,09eh,0b5h,0d4h,060h,0b0h,0d5h,0b0h,0eah,00dh,0dbh,003h,0ebh	; b59e  .......`........
	defb 009h,054h,0d4h,043h,063h,073h,093h,0fch,002h,084h,0b5h,0eah,00ch,0ebh,008h,065h	; b5ae  .T.Ccs.........e
	defb 0dbh,003h,0d4h,021h,0d3h,021h,0d4h,021h,0d3h,021h,0d4h,021h,0d3h,021h,0d4h,020h	; b5be  ...!.!.!.!.!.!.
	defb 0d5h,0b0h,0d3h,000h,010h,0fbh,004h,0c0h,0b5h,0eah,00dh,0ebh,009h,037h,0dbh,003h	; b5ce  .............7..
	defb 0f8h,023h,0d5h,093h,0b3h,0d4h,003h,023h,0fdh,023h,0b5h,0feh,001h,0f8h,059h,0dch	; b5de  .#.....#.#....Y.
	defb 0e9h,00ah,0eah,008h,0ebh,002h,070h,0f2h,018h,0f1h,054h,0d2h,090h,090h,0dbh,005h	; b5ee  ......p...T.....
	defb 0ebh,004h,030h,0f9h,055h,0b9h,0dch,0eah,004h,000h,0dbh,005h,0eah,008h,0f9h,063h	; b5fe  ..0.U..........c
	defb 0b9h,0ech,0eah,002h,011h,0f8h,05ch,0eah,009h,0edh,008h,0ebh,085h,032h,0dbh,005h	; b60e  ......\......2..
	defb 0d2h,00bh,001h,07dh,071h,0d1h,001h,007h,0d2h,075h,0d1h,000h,020h,006h,0d2h,0b8h	; b61e  ...}q....u.. ...
	defb 0f1h,053h,0eah,008h,0f8h,00bh,0dbh,002h,0ebh,008h,032h,0f9h,074h,0b9h,0eah,002h	; b62e  .S........2.t...
	defb 090h,0f0h,0f8h,002h,0eah,008h,0ebh,003h,020h,0dbh,004h,0f1h,053h,0f2h,018h,0d2h	; b63e  ........ ...S...
	defb 090h,090h,0f9h,055h,0b9h,0dch,0eah,005h,000h,0dbh,004h,0eah,008h,0f9h,063h,0b9h	; b64e  ...U..........c.
	defb 0ech,0eah,002h,011h,0f0h,0f8h,00bh,0f2h,013h,0eah,008h,0ebh,007h,040h,0dbh,002h	; b65e  .............@..
	defb 0f9h,005h,0bbh,0ddh,007h,032h,073h,093h,0b3h,0d1h,023h,0f8h,002h,0f2h,020h,0f1h	; b66e  .....2s...#... .
	defb 052h,0ebh,007h,040h,076h,065h,060h,070h,098h,027h,094h,070h,060h,078h,0ddh,007h	; b67e  R..@ve`p.'.p`x..
	defb 032h,073h,093h,0b3h,0d0h,023h,0eah,009h,0ddh,007h,032h,0dbh,002h,0d1h,026h,008h	; b68e  2s...#....2...&.
	defb 0d2h,0a6h,0d1h,008h,0fbh,002h,09ch,0b6h,0f8h,05ch,0f2h,020h,0ebh,017h,032h,0ddh	; b69e  .........\. ..2.
	defb 005h,043h,0f9h,08fh,0b9h,070h,0fdh,0e9h,0b5h,0feh,001h,0f8h,059h,0dch,0e9h,00ah	; b6ae  .C...p......Y...
	defb 0eah,007h,0ebh,002h,070h,0d3h,090h,090h,0dbh,005h,0ebh,004h,030h,0d2h,040h,021h	; b6be  ....p.......0.@!
	defb 041h,091h,041h,021h,002h,0d2h,0b1h,090h,0b1h,0d1h,001h,0d2h,094h,0dch,0eah,004h	; b6ce  A.A!............
	defb 090h,0dbh,005h,0eah,007h,072h,0f9h,051h,0bbh,092h,0d1h,010h,0d2h,0b0h,09bh,0ech	; b6de  .....r.Q........
	defb 0eah,002h,091h,0f8h,05ch,0f2h,017h,0f1h,054h,0eah,009h,0edh,008h,0ebh,085h,032h	; b6ee  ....\...T......2
	defb 0dbh,005h,0d3h,09bh,091h,0d2h,04dh,041h,071h,077h,035h,070h,090h,076h,078h,0f8h	; b6fe  ......MAqw5p.vx.
	defb 028h,0dbh,002h,0ebh,008h,034h,0eah,007h,0d3h,005h,070h,0d2h,008h,0d3h,075h,0d2h	; b70e  (....4....p...u.
	defb 000h,078h,0d3h,075h,0d2h,000h,076h,070h,090h,0f8h,00bh,0d2h,023h,023h,023h,0e9h	; b71e  .x.u..vp....###.
	defb 001h,0feh,004h,0d0h,0f8h,005h,052h,052h,066h,065h,076h,086h,086h,0feh,001h,0f8h	; b72e  ......RRfev.....
	defb 00bh,0f2h,020h,0f1h,053h,0e9h,00ah,0eah,008h,0ebh,003h,020h,0dbh,004h,0d3h,090h	; b73e  .. .S...... ....
	defb 090h,0f9h,0e7h,0b9h,0dch,0eah,005h,090h,0dbh,004h,0eah,008h,072h,0f8h,00bh,0f9h	; b74e  ............r...
	defb 051h,0bbh,092h,0f8h,002h,0d1h,010h,0d2h,0b0h,09bh,0ech,0eah,002h,091h,0f0h,0f8h	; b75e  Q...............
	defb 002h,0ebh,007h,040h,0dbh,002h,0f9h,0d3h,0b9h,0f8h,00bh,0ddh,007h,032h,0d3h,0b3h	; b76e  ...@.........2..
	defb 0d2h,013h,023h,043h,0f8h,002h,0f2h,020h,0f1h,052h,0ebh,007h,040h,0f9h,0f9h,0b9h	; b77e  ..#C... .R..@...
	defb 0ddh,007h,032h,043h,063h,073h,093h,0f8h,00bh,0eah,008h,0ddh,007h,032h,0dbh,002h	; b78e  ..2Ccs.......2..
	defb 0f1h,053h,0d2h,096h,078h,056h,078h,0fbh,002h,0a1h,0b7h,0f8h,016h,0f2h,020h,0eah	; b79e  .S..xVx....... .
	defb 009h,0ebh,007h,032h,0ddh,005h,043h,0d2h,0b0h,0f9h,05eh,0bbh,040h,0fdh,0b7h,0b6h	; b7ae  ...2..C...^.@...
	defb 0feh,001h,0f9h,007h,0bah,0f9h,02eh,0bah,0f9h,03fh,0bah,0f9h,007h,0bah,0f9h,02eh	; b7be  .........?......
	defb 0bah,0f9h,091h,0bah,0feh,001h,0f9h,007h,0bah,0fbh,002h,0d2h,0b7h,0eah,00ah,020h	; b7ce  ...............
	defb 0eah,009h,020h,020h,020h,0eah,007h,020h,020h,0eah,006h,020h,020h,0eah,005h,020h	; b7de  ..   ..  ..  ..
	defb 020h,020h,020h,0eah,004h,020h,020h,020h,020h,0fbh,002h,0dbh,0b7h,0fch,002h,0d2h	; b7ee     ..    .......
	defb 0b7h,0f9h,007h,0bah,0f9h,02eh,0bah,0f9h,03fh,0bah,0f9h,007h,0bah,0f9h,02eh,0bah	; b7fe  ........?.......
	defb 0f9h,091h,0bah,0e9h,00ah,0ebh,009h,042h,0dbh,002h,0f8h,01dh,0eah,009h,0d2h,020h	; b80e  .......B.......
	defb 020h,0eah,006h,020h,020h,0eah,009h,090h,090h,0eah,006h,090h,090h,0d1h,0eah,009h	; b81e   ..  ...........
	defb 020h,020h,0eah,006h,020h,020h,0eah,009h,090h,090h,0eah,006h,090h,090h,0fbh,003h	; b82e    ..  ..........
	defb 01ah,0b8h,0eah,007h,0d2h,040h,070h,0b0h,0d1h,020h,0d2h,060h,090h,0d1h,010h,040h	; b83e  .....@p.. .`...@
	defb 0d2h,070h,0b0h,0d1h,020h,060h,0d2h,090h,0d1h,020h,040h,070h,0fch,002h,01ah,0b8h	; b84e  .p.. `... @p....
	defb 0f8h,054h,0e9h,005h,0ebh,009h,042h,0f1h,053h,0eah,008h,0d3h,020h,090h,0d2h,020h	; b85e  .T....B.S... ..
	defb 090h,0d1h,020h,090h,0d0h,020h,090h,020h,0d1h,090h,020h,0d2h,090h,020h,0d3h,090h	; b86e  .. .. . .. .. ..
	defb 020h,0d4h,090h,0fbh,008h,067h,0b8h,0e9h,00ah,0f8h,01dh,0eah,007h,0d3h,0b0h,0b0h	; b87e   ....g..........
	defb 0b0h,0b0h,0d2h,010h,010h,010h,010h,0eah,008h,020h,020h,020h,020h,0eah,009h,040h	; b88e  .........    ..@
	defb 040h,040h,040h,0f0h,0fdh,0beh,0b7h,0feh,001h,0f9h,04ch,0bah,0f9h,073h,0bah,0f9h	; b89e  @@@.......L..s..
	defb 04ch,0bah,0f9h,0a6h,0b9h,0f9h,04ch,0bah,0eah,00ah,070h,0eah,009h,070h,070h,070h	; b8ae  L.....L...p..ppp
	defb 0eah,007h,070h,070h,0eah,006h,070h,070h,0eah,005h,070h,070h,070h,070h,0eah,004h	; b8be  ..pp..pp..pppp..
	defb 070h,070h,070h,070h,0fbh,003h,0b6h,0b8h,0fch,002h,0b3h,0b8h,0f9h,04ch,0bah,0f9h	; b8ce  pppp.........L..
	defb 073h,0bah,0f9h,04ch,0bah,0f9h,0a6h,0b9h,0e9h,005h,0eeh,001h,0ebh,009h,042h,0dbh	; b8de  s..L..........B.
	defb 002h,0c0h,0e9h,00ah,0f9h,011h,0bbh,070h,0f9h,011h,0bbh,0e9h,005h,070h,0efh,0e9h	; b8ee  .......p.....p..
	defb 001h,0eah,005h,0ebh,009h,042h,0dbh,002h,0c2h,0e9h,005h,0f9h,0afh,0bah,0d5h,090h	; b8fe  .....B..........
	defb 0fbh,007h,009h,0b9h,0f9h,0afh,0bah,0e9h,001h,0d5h,091h,0efh,0e9h,00ah,0eah,007h	; b90e  ................
	defb 0d3h,070h,070h,070h,070h,090h,090h,090h,090h,0eah,008h,0a0h,0a0h,0a0h,0a0h,0eah	; b91e  .pppp...........
	defb 009h,0d2h,000h,000h,000h,000h,0fdh,0a5h,0b8h,091h,001h,001h,091h,031h,001h,001h	; b92e  .............1..
	defb 091h,001h,091h,091h,011h,031h,001h,001h,000h,010h,0fbh,003h,037h,0b9h,091h,001h	; b93e  .....1......7...
	defb 001h,091h,031h,001h,001h,091h,0fah,0d1h,040h,021h,041h,091h,041h,021h,002h,021h	; b94e  ..1.....@!A.A!.!
	defb 000h,021h,041h,004h,0fah,0d2h,0b2h,0d2h,091h,0d1h,040h,021h,041h,091h,041h,021h	; b95e  .!A.......@!A.A!
	defb 002h,0d1h,040h,020h,01bh,0fah,0d2h,005h,070h,0d1h,008h,0d2h,075h,0d1h,000h,078h	; b96e  ..@ ....p...u..x
	defb 0d2h,075h,0d1h,000h,076h,070h,090h,0f8h,028h,0eah,007h,0d2h,073h,063h,073h,092h	; b97e  .u..vp..(...scs.
	defb 0fah,0d1h,020h,0d2h,070h,0b0h,0d1h,020h,040h,0d2h,090h,0d1h,010h,040h,050h,0d2h	; b98e  .. .p.. @....@P.
	defb 0a0h,0d1h,020h,050h,070h,000h,040h,0fah,0eah,00ah,0d1h,010h,0eah,009h,010h,010h	; b99e  .. Pp.@.........
	defb 010h,0eah,007h,010h,010h,0eah,006h,010h,010h,0f8h,01dh,0dbh,003h,0e9h,005h,0d0h	; b9ae  ................
	defb 0c0h,020h,020h,010h,010h,0d1h,090h,090h,040h,040h,020h,020h,0eah,005h,010h,010h	; b9be  .  .....@@  ....
	defb 0d2h,090h,090h,040h,0fah,0f2h,013h,0f1h,052h,0eah,008h,0d2h,026h,025h,020h,040h	; b9ce  ...@....R...&% @
	defb 068h,0d3h,097h,094h,070h,060h,0d2h,028h,0fah,0d2h,040h,021h,041h,091h,041h,021h	; b9de  h...p`.(..@!A.A!
	defb 002h,0f8h,002h,0b1h,090h,0b1h,0d1h,001h,0d2h,094h,0fah,0d1h,026h,025h,020h,040h	; b9ee  ............&% @
	defb 068h,0d2h,097h,0d1h,064h,020h,020h,028h,0fah,0f8h,015h,0e9h,00ah,0ebh,009h,081h	; b9fe  h...d  (........
	defb 0dbh,002h,0eah,00ah,0d1h,000h,0eah,009h,000h,000h,000h,0eah,007h,000h,000h,0eah	; ba0e  ................
	defb 006h,000h,000h,0eah,005h,000h,000h,000h,000h,0eah,004h,000h,000h,000h,000h,0fah	; ba1e  ................
	defb 0eah,00ah,040h,0eah,009h,040h,040h,040h,0eah,007h,040h,040h,0eah,006h,040h,040h	; ba2e  ..@..@@@..@@..@@
	defb 0fah,0eah,005h,040h,040h,040h,040h,0eah,004h,040h,040h,040h,040h,0fah,0f8h,015h	; ba3e  ...@@@@..@@@@...
	defb 0e9h,00ah,0ebh,009h,081h,0dbh,002h,0eah,00ah,0d2h,090h,0eah,009h,090h,090h,090h	; ba4e  ................
	defb 0eah,007h,090h,090h,0eah,006h,090h,090h,0eah,005h,090h,090h,0eah,004h,090h,090h	; ba5e  ................
	defb 090h,090h,090h,090h,0fah,0eah,00ah,0d1h,000h,0eah,009h,000h,000h,000h,0eah,007h	; ba6e  ................
	defb 000h,000h,0eah,006h,000h,000h,0eah,005h,000h,000h,0eah,004h,000h,000h,000h,000h	; ba7e  ................
	defb 000h,000h,0fah,0f8h,01dh,0dbh,003h,0e9h,005h,0eah,007h,0d0h,020h,020h,010h,010h	; ba8e  ............  ..
	defb 0d1h,090h,090h,040h,040h,020h,020h,010h,010h,0eah,006h,0d2h,090h,090h,040h,040h	; ba9e  ...@@  .......@@
	defb 0fah,0d4h,020h,090h,0d3h,020h,090h,0d2h,020h,090h,0d1h,020h,090h,020h,0d2h,090h	; baae  .. .. .. .. . ..
	defb 020h,0d3h,090h,020h,0d4h,090h,020h,0fah,0d4h,053h,050h,0d3h,000h,050h,0d4h,078h	; babe   .. .. ..SP..P.x
	defb 096h,040h,0d5h,093h,0d4h,090h,072h,053h,050h,0d3h,000h,050h,0d4h,078h,0fah,0d4h	; bace  .@....rSP..P.x..
	defb 052h,053h,051h,050h,051h,050h,090h,0d3h,000h,050h,0d4h,042h,043h,041h,040h,041h	; bade  RSQPQP...P.BCA@A
	defb 040h,070h,0d3h,000h,040h,0d4h,032h,033h,031h,030h,031h,030h,070h,0a0h,0d3h,030h	; baee  @p..@.231010p..0
	defb 0d4h,022h,023h,021h,020h,021h,0fah,0d2h,076h,065h,060h,070h,098h,027h,094h,070h	; bafe  ."#! !..ve`p.'.p
	defb 060h,078h,0fah,0eah,007h,0d2h,020h,020h,0eah,004h,020h,020h,0eah,007h,090h,090h	; bb0e  `x....  ..  ....
	defb 0eah,004h,090h,090h,0d1h,0eah,007h,020h,020h,0eah,004h,020h,020h,0eah,007h,090h	; bb1e  .......  ..  ...
	defb 090h,0eah,004h,090h,090h,0fbh,003h,011h,0bbh,0eah,005h,0d2h,040h,070h,0b0h,0d1h	; bb2e  ............@p..
	defb 020h,0d2h,060h,090h,0d1h,010h,040h,0d2h,070h,0b0h,0d1h,020h,060h,0d2h,090h,0d1h	; bb3e   .`...@.p.. `...
	defb 020h,040h,0fah,0d2h,041h,0d1h,000h,0d2h,0b1h,0d1h,001h,041h,001h,0d2h,0b1h,0fah	; bb4e   @..A......A....
	defb 020h,070h,0b0h,0d1h,010h,0d2h,040h,090h,0d1h,010h,020h,0d2h,050h,0a0h,0d1h,020h	; bb5e   p....@... .P..
	defb 040h,0d2h,070h,0d1h,000h,0fah	; bb6e

; ----------------------------------------------------------------------
; DATOS leido_BB74: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb74..0xbb75  (1 bytes)
DATA_leido_BB74:
	defb 0feh	; bb74

; ----------------------------------------------------------------------
; DATOS leido_BB75: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbb75..0xbb76  (1 bytes)
DATA_leido_BB75:
	defb 001h	; bb75

; ----------------------------------------------------------------------
; DATOS leido_BB76: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb76..0xbb77  (1 bytes)
DATA_leido_BB76:
	defb 0e9h	; bb76

; ----------------------------------------------------------------------
; DATOS leido_BB77: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbb77..0xbb78  (1 bytes)
DATA_leido_BB77:
	defb 00bh	; bb77

; ----------------------------------------------------------------------
; DATOS leido_BB78: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb78..0xbb79  (1 bytes)
DATA_leido_BB78:
	defb 0edh	; bb78

; ----------------------------------------------------------------------
; DATOS leido_BB79: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbb79..0xbb7a  (1 bytes)
DATA_leido_BB79:
	defb 002h	; bb79

; ----------------------------------------------------------------------
; DATOS leido_BB7A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb7a..0xbb7b  (1 bytes)
DATA_leido_BB7A:
	defb 0eah	; bb7a

; ----------------------------------------------------------------------
; DATOS leido_BB7B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb7b..0xbb7c  (1 bytes)
DATA_leido_BB7B:
	defb 00bh	; bb7b

; ----------------------------------------------------------------------
; DATOS leido_BB7C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb7c..0xbb7d  (1 bytes)
DATA_leido_BB7C:
	defb 0ebh	; bb7c

; ----------------------------------------------------------------------
; DATOS leido_BB7D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbb7d..0xbb7e  (1 bytes)
DATA_leido_BB7D:
	defb 087h	; bb7d

; ----------------------------------------------------------------------
; DATOS leido_BB7E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbb7e..0xbb7f  (1 bytes)
DATA_leido_BB7E:
	defb 030h	; bb7e

; ----------------------------------------------------------------------
; DATOS leido_BB7F: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xbb7f..0xbb83  (4 bytes)
DATA_leido_BB7F:
	defb 0d4h,09fh,09dh,0edh	; bb7f

; ----------------------------------------------------------------------
; DATOS leido_BB83: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbb83..0xbb84  (1 bytes)
DATA_leido_BB83:
	defb 006h	; bb83

; ----------------------------------------------------------------------
; DATOS leido_BB84: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbb84..0xbb86  (2 bytes)
DATA_leido_BB84:
	defb 091h,0edh	; bb84

; ----------------------------------------------------------------------
; DATOS leido_BB86: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbb86..0xbb87  (1 bytes)
DATA_leido_BB86:
	defb 002h	; bb86

; ----------------------------------------------------------------------
; DATOS leido_BB87: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbb87..0xbb8a  (3 bytes)
DATA_leido_BB87:
	defb 09fh,09fh,0eah	; bb87

; ----------------------------------------------------------------------
; DATOS leido_BB8A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb8a..0xbb8b  (1 bytes)
DATA_leido_BB8A:
	defb 00ah	; bb8a

; ----------------------------------------------------------------------
; DATOS leido_BB8B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb8b..0xbb8c  (1 bytes)
DATA_leido_BB8B:
	defb 0edh	; bb8b

; ----------------------------------------------------------------------
; DATOS leido_BB8C: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbb8c..0xbb8d  (1 bytes)
DATA_leido_BB8C:
	defb 007h	; bb8c

; ----------------------------------------------------------------------
; DATOS leido_BB8D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb8d..0xbb8e  (1 bytes)
DATA_leido_BB8D:
	defb 0ebh	; bb8d

; ----------------------------------------------------------------------
; DATOS leido_BB8E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbb8e..0xbb8f  (1 bytes)
DATA_leido_BB8E:
	defb 083h	; bb8e

; ----------------------------------------------------------------------
; DATOS leido_BB8F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbb8f..0xbb90  (1 bytes)
DATA_leido_BB8F:
	defb 030h	; bb8f

; ----------------------------------------------------------------------
; DATOS leido_BB90: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xbb90..0xbb9b  (11 bytes)
DATA_leido_BB90:
	defb 0d4h,020h,0d3h,020h,0d4h,010h,0d3h,010h,0d4h,01bh,0ebh	; bb90  . . .......

; ----------------------------------------------------------------------
; DATOS leido_BB9B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbb9b..0xbb9c  (1 bytes)
DATA_leido_BB9B:
	defb 087h	; bb9b

; ----------------------------------------------------------------------
; DATOS leido_BB9C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbb9c..0xbb9d  (1 bytes)
DATA_leido_BB9C:
	defb 030h	; bb9c

; ----------------------------------------------------------------------
; DATOS leido_BB9D: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbb9d..0xbba2  (5 bytes)
DATA_leido_BB9D:
	defb 0d4h,005h,0d5h,0b5h,0ebh	; bb9d

; ----------------------------------------------------------------------
; DATOS leido_BBA2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbba2..0xbba3  (1 bytes)
DATA_leido_BBA2:
	defb 083h	; bba2

; ----------------------------------------------------------------------
; DATOS leido_BBA3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbba3..0xbba4  (1 bytes)
DATA_leido_BBA3:
	defb 030h	; bba3

; ----------------------------------------------------------------------
; DATOS leido_BBA4: 15 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (15 bytes)
;   0xbba4..0xbbb3  (15 bytes)
DATA_leido_BBA4:
	defb 0a0h,090h,080h,070h,0d4h,020h,0d3h,020h,0d4h,010h,0d3h,010h,0d4h,01bh,0ebh	; bba4  ...p. . .......

; ----------------------------------------------------------------------
; DATOS leido_BBB3: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbbb3..0xbbb4  (1 bytes)
DATA_leido_BBB3:
	defb 087h	; bbb3

; ----------------------------------------------------------------------
; DATOS leido_BBB4: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbbb4..0xbbb5  (1 bytes)
DATA_leido_BBB4:
	defb 030h	; bbb4

; ----------------------------------------------------------------------
; DATOS leido_BBB5: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbbb5..0xbbba  (5 bytes)
DATA_leido_BBB5:
	defb 0d4h,035h,0d5h,089h,0fdh	; bbb5

; ----------------------------------------------------------------------
; DATOS leido_BBBA: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbbba..0xbbbc  (2 bytes)
DATA_leido_BBBA:
	defb 074h,0bbh	; bbba

; ----------------------------------------------------------------------
; DATOS leido_BBBC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbbc..0xbbbd  (1 bytes)
DATA_leido_BBBC:
	defb 0feh	; bbbc

; ----------------------------------------------------------------------
; DATOS leido_BBBD: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbbbd..0xbbbe  (1 bytes)
DATA_leido_BBBD:
	defb 001h	; bbbd

; ----------------------------------------------------------------------
; DATOS leido_BBBE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbbe..0xbbbf  (1 bytes)
DATA_leido_BBBE:
	defb 0f2h	; bbbe

; ----------------------------------------------------------------------
; DATOS leido_BBBF: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbbbf..0xbbc0  (1 bytes)
DATA_leido_BBBF:
	defb 020h	; bbbf

; ----------------------------------------------------------------------
; DATOS leido_BBC0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbc0..0xbbc1  (1 bytes)
DATA_leido_BBC0:
	defb 0f1h	; bbc0

; ----------------------------------------------------------------------
; DATOS leido_BBC1: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbbc1..0xbbc2  (1 bytes)
DATA_leido_BBC1:
	defb 042h	; bbc1

; ----------------------------------------------------------------------
; DATOS leido_BBC2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbc2..0xbbc3  (1 bytes)
DATA_leido_BBC2:
	defb 0eah	; bbc2

; ----------------------------------------------------------------------
; DATOS leido_BBC3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbbc3..0xbbc4  (1 bytes)
DATA_leido_BBC3:
	defb 007h	; bbc3

; ----------------------------------------------------------------------
; DATOS leido_BBC4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbbc4..0xbbc6  (2 bytes)
DATA_leido_BBC4:
	defb 0ech,0d6h	; bbc4

; ----------------------------------------------------------------------
; DATOS leido_BBC6: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbbc6..0xbbc8  (2 bytes)
DATA_leido_BBC6:
	defb 005h,001h	; bbc6

; ----------------------------------------------------------------------
; DATOS leido_BBC8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbc8..0xbbc9  (1 bytes)
DATA_leido_BBC8:
	defb 0e9h	; bbc8

; ----------------------------------------------------------------------
; DATOS leido_BBC9: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbbc9..0xbbca  (1 bytes)
DATA_leido_BBC9:
	defb 016h	; bbc9

; ----------------------------------------------------------------------
; DATOS leido_BBCA: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbbca..0xbbcd  (3 bytes)
DATA_leido_BBCA:
	defb 0d1h,099h,0e9h	; bbca

; ----------------------------------------------------------------------
; DATOS leido_BBCD: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbbcd..0xbbce  (1 bytes)
DATA_leido_BBCD:
	defb 00bh	; bbcd

; ----------------------------------------------------------------------
; DATOS leido_BBCE: 19 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (19 bytes)
;   0xbbce..0xbbe1  (19 bytes)
DATA_leido_BBCE:
	defb 0afh,0d0h,02fh,0d1h,08fh,0d0h,021h,011h,00bh,0d1h,0b5h,0a9h,0d0h,021h,01dh,045h	; bbce  ../...!......!.E
	defb 0d1h,089h,0feh	; bbde

; ----------------------------------------------------------------------
; DATOS leido_BBE1: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbbe1..0xbbe2  (1 bytes)
DATA_leido_BBE1:
	defb 001h	; bbe1

; ----------------------------------------------------------------------
; DATOS leido_BBE2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbe2..0xbbe3  (1 bytes)
DATA_leido_BBE2:
	defb 0f2h	; bbe2

; ----------------------------------------------------------------------
; DATOS leido_BBE3: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbbe3..0xbbe4  (1 bytes)
DATA_leido_BBE3:
	defb 020h	; bbe3

; ----------------------------------------------------------------------
; DATOS leido_BBE4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbe4..0xbbe5  (1 bytes)
DATA_leido_BBE4:
	defb 0f1h	; bbe4

; ----------------------------------------------------------------------
; DATOS leido_BBE5: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbbe5..0xbbe6  (1 bytes)
DATA_leido_BBE5:
	defb 042h	; bbe5

; ----------------------------------------------------------------------
; DATOS leido_BBE6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbe6..0xbbe7  (1 bytes)
DATA_leido_BBE6:
	defb 0e9h	; bbe6

; ----------------------------------------------------------------------
; DATOS leido_BBE7: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbbe7..0xbbe8  (1 bytes)
DATA_leido_BBE7:
	defb 00bh	; bbe7

; ----------------------------------------------------------------------
; DATOS leido_BBE8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbe8..0xbbe9  (1 bytes)
DATA_leido_BBE8:
	defb 0eah	; bbe8

; ----------------------------------------------------------------------
; DATOS leido_BBE9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbbe9..0xbbea  (1 bytes)
DATA_leido_BBE9:
	defb 007h	; bbe9

; ----------------------------------------------------------------------
; DATOS leido_BBEA: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbbea..0xbbec  (2 bytes)
DATA_leido_BBEA:
	defb 0ech,0d6h	; bbea

; ----------------------------------------------------------------------
; DATOS leido_BBEC: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbbec..0xbbee  (2 bytes)
DATA_leido_BBEC:
	defb 005h,001h	; bbec

; ----------------------------------------------------------------------
; DATOS leido_BBEE: 24 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 16 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (24 bytes)
;   0xbbee..0xbc06  (24 bytes)
DATA_leido_BBEE:
	defb 0d1h,09fh,0afh,0d0h,02fh,0d1h,08fh,0d0h,021h,011h,00bh,0d1h,0b5h,0a9h,0d0h,021h	; bbee  ..../...!......!
	defb 01dh,045h,0d1h,089h,0fdh,0e0h,0bbh,0feh	; bbfe  .E......

; ----------------------------------------------------------------------
; DATOS leido_BC06: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbc06..0xbc07  (1 bytes)
DATA_leido_BC06:
	defb 001h	; bc06

; ----------------------------------------------------------------------
; DATOS leido_BC07: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc07..0xbc08  (1 bytes)
DATA_leido_BC07:
	defb 0f2h	; bc07

; ----------------------------------------------------------------------
; DATOS leido_BC08: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbc08..0xbc09  (1 bytes)
DATA_leido_BC08:
	defb 020h	; bc08

; ----------------------------------------------------------------------
; DATOS leido_BC09: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc09..0xbc0a  (1 bytes)
DATA_leido_BC09:
	defb 0f1h	; bc09

; ----------------------------------------------------------------------
; DATOS leido_BC0A: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbc0a..0xbc0b  (1 bytes)
DATA_leido_BC0A:
	defb 042h	; bc0a

; ----------------------------------------------------------------------
; DATOS leido_BC0B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc0b..0xbc0c  (1 bytes)
DATA_leido_BC0B:
	defb 0eah	; bc0b

; ----------------------------------------------------------------------
; DATOS leido_BC0C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc0c..0xbc0d  (1 bytes)
DATA_leido_BC0C:
	defb 007h	; bc0c

; ----------------------------------------------------------------------
; DATOS leido_BC0D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc0d..0xbc0e  (1 bytes)
DATA_leido_BC0D:
	defb 0d6h	; bc0d

; ----------------------------------------------------------------------
; DATOS leido_BC0E: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbc0e..0xbc10  (2 bytes)
DATA_leido_BC0E:
	defb 005h,001h	; bc0e

; ----------------------------------------------------------------------
; DATOS leido_BC10: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbc10..0xbc12  (2 bytes)
DATA_leido_BC10:
	defb 0ech,0e9h	; bc10

; ----------------------------------------------------------------------
; DATOS leido_BC12: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbc12..0xbc13  (1 bytes)
DATA_leido_BC12:
	defb 016h	; bc12

; ----------------------------------------------------------------------
; DATOS leido_BC13: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbc13..0xbc16  (3 bytes)
DATA_leido_BC13:
	defb 0d1h,049h,0e9h	; bc13

; ----------------------------------------------------------------------
; DATOS leido_BC16: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbc16..0xbc17  (1 bytes)
DATA_leido_BC16:
	defb 00bh	; bc16

; ----------------------------------------------------------------------
; DATOS leido_BC17: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xbc17..0xbc24  (13 bytes)
DATA_leido_BC17:
	defb 03fh,08fh,02fh,081h,071h,06bh,055h,049h,091h,08dh,0a5h,029h,0feh	; bc17  ?./.qkUI...).

; ----------------------------------------------------------------------
; DATOS leido_BC24: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbc24..0xbc25  (1 bytes)
DATA_leido_BC24:
	defb 001h	; bc24

; ----------------------------------------------------------------------
; DATOS leido_BC25: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc25..0xbc26  (1 bytes)
DATA_leido_BC25:
	defb 0f2h	; bc25

; ----------------------------------------------------------------------
; DATOS leido_BC26: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbc26..0xbc27  (1 bytes)
DATA_leido_BC26:
	defb 020h	; bc26

; ----------------------------------------------------------------------
; DATOS leido_BC27: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc27..0xbc28  (1 bytes)
DATA_leido_BC27:
	defb 0f1h	; bc27

; ----------------------------------------------------------------------
; DATOS leido_BC28: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbc28..0xbc29  (1 bytes)
DATA_leido_BC28:
	defb 042h	; bc28

; ----------------------------------------------------------------------
; DATOS leido_BC29: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc29..0xbc2a  (1 bytes)
DATA_leido_BC29:
	defb 0e9h	; bc29

; ----------------------------------------------------------------------
; DATOS leido_BC2A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbc2a..0xbc2b  (1 bytes)
DATA_leido_BC2A:
	defb 00bh	; bc2a

; ----------------------------------------------------------------------
; DATOS leido_BC2B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc2b..0xbc2c  (1 bytes)
DATA_leido_BC2B:
	defb 0eah	; bc2b

; ----------------------------------------------------------------------
; DATOS leido_BC2C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc2c..0xbc2d  (1 bytes)
DATA_leido_BC2C:
	defb 007h	; bc2c

; ----------------------------------------------------------------------
; DATOS leido_BC2D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc2d..0xbc2e  (1 bytes)
DATA_leido_BC2D:
	defb 0d6h	; bc2d

; ----------------------------------------------------------------------
; DATOS leido_BC2E: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbc2e..0xbc30  (2 bytes)
DATA_leido_BC2E:
	defb 005h,001h	; bc2e

; ----------------------------------------------------------------------
; DATOS leido_BC30: 19 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 12 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (19 bytes)
;   0xbc30..0xbc43  (19 bytes)
DATA_leido_BC30:
	defb 0ech,0d1h,04fh,03fh,08fh,02fh,081h,071h,06bh,055h,049h,091h,08dh,0a5h,029h,0fdh	; bc30  ..O?./.qkUI...).
	defb 023h,0bch,0feh	; bc40

; ----------------------------------------------------------------------
; DATOS leido_BC43: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbc43..0xbc44  (1 bytes)
DATA_leido_BC43:
	defb 001h	; bc43

; ----------------------------------------------------------------------
; DATOS leido_BC44: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc44..0xbc45  (1 bytes)
DATA_leido_BC44:
	defb 0f8h	; bc44

; ----------------------------------------------------------------------
; DATOS leido_BC45: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbc45..0xbc46  (1 bytes)
DATA_leido_BC45:
	defb 023h	; bc45

; ----------------------------------------------------------------------
; DATOS leido_BC46: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc46..0xbc47  (1 bytes)
DATA_leido_BC46:
	defb 0e9h	; bc46

; ----------------------------------------------------------------------
; DATOS leido_BC47: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbc47..0xbc48  (1 bytes)
DATA_leido_BC47:
	defb 00bh	; bc47

; ----------------------------------------------------------------------
; DATOS leido_BC48: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc48..0xbc49  (1 bytes)
DATA_leido_BC48:
	defb 0edh	; bc48

; ----------------------------------------------------------------------
; DATOS leido_BC49: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbc49..0xbc4a  (1 bytes)
DATA_leido_BC49:
	defb 002h	; bc49

; ----------------------------------------------------------------------
; DATOS leido_BC4A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc4a..0xbc4b  (1 bytes)
DATA_leido_BC4A:
	defb 0eah	; bc4a

; ----------------------------------------------------------------------
; DATOS leido_BC4B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc4b..0xbc4c  (1 bytes)
DATA_leido_BC4B:
	defb 00dh	; bc4b

; ----------------------------------------------------------------------
; DATOS leido_BC4C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc4c..0xbc4d  (1 bytes)
DATA_leido_BC4C:
	defb 0ebh	; bc4c

; ----------------------------------------------------------------------
; DATOS leido_BC4D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbc4d..0xbc4e  (1 bytes)
DATA_leido_BC4D:
	defb 087h	; bc4d

; ----------------------------------------------------------------------
; DATOS leido_BC4E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbc4e..0xbc4f  (1 bytes)
DATA_leido_BC4E:
	defb 070h	; bc4e

; ----------------------------------------------------------------------
; DATOS leido_BC4F: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xbc4f..0xbc53  (4 bytes)
DATA_leido_BC4F:
	defb 0d5h,09fh,09dh,0edh	; bc4f

; ----------------------------------------------------------------------
; DATOS leido_BC53: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbc53..0xbc54  (1 bytes)
DATA_leido_BC53:
	defb 007h	; bc53

; ----------------------------------------------------------------------
; DATOS leido_BC54: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbc54..0xbc56  (2 bytes)
DATA_leido_BC54:
	defb 091h,0edh	; bc54

; ----------------------------------------------------------------------
; DATOS leido_BC56: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbc56..0xbc57  (1 bytes)
DATA_leido_BC56:
	defb 002h	; bc56

; ----------------------------------------------------------------------
; DATOS leido_BC57: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbc57..0xbc5a  (3 bytes)
DATA_leido_BC57:
	defb 09fh,09fh,0edh	; bc57

; ----------------------------------------------------------------------
; DATOS leido_BC5A: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbc5a..0xbc5b  (1 bytes)
DATA_leido_BC5A:
	defb 00ah	; bc5a

; ----------------------------------------------------------------------
; DATOS leido_BC5B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc5b..0xbc5c  (1 bytes)
DATA_leido_BC5B:
	defb 0eah	; bc5b

; ----------------------------------------------------------------------
; DATOS leido_BC5C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc5c..0xbc5d  (1 bytes)
DATA_leido_BC5C:
	defb 00bh	; bc5c

; ----------------------------------------------------------------------
; DATOS leido_BC5D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc5d..0xbc5e  (1 bytes)
DATA_leido_BC5D:
	defb 0ebh	; bc5d

; ----------------------------------------------------------------------
; DATOS leido_BC5E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbc5e..0xbc5f  (1 bytes)
DATA_leido_BC5E:
	defb 084h	; bc5e

; ----------------------------------------------------------------------
; DATOS leido_BC5F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbc5f..0xbc60  (1 bytes)
DATA_leido_BC5F:
	defb 073h	; bc5f

; ----------------------------------------------------------------------
; DATOS leido_BC60: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xbc60..0xbc69  (9 bytes)
DATA_leido_BC60:
	defb 0d5h,020h,0d4h,020h,0d5h,010h,0d4h,010h,0eah	; bc60  . . .....

; ----------------------------------------------------------------------
; DATOS leido_BC69: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc69..0xbc6a  (1 bytes)
DATA_leido_BC69:
	defb 00eh	; bc69

; ----------------------------------------------------------------------
; DATOS leido_BC6A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc6a..0xbc6b  (1 bytes)
DATA_leido_BC6A:
	defb 0edh	; bc6a

; ----------------------------------------------------------------------
; DATOS leido_BC6B: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbc6b..0xbc6c  (1 bytes)
DATA_leido_BC6B:
	defb 007h	; bc6b

; ----------------------------------------------------------------------
; DATOS leido_BC6C: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbc6c..0xbc6f  (3 bytes)
DATA_leido_BC6C:
	defb 0d5h,00bh,0eah	; bc6c

; ----------------------------------------------------------------------
; DATOS leido_BC6F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc6f..0xbc70  (1 bytes)
DATA_leido_BC6F:
	defb 00ch	; bc6f

; ----------------------------------------------------------------------
; DATOS leido_BC70: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc70..0xbc71  (1 bytes)
DATA_leido_BC70:
	defb 0ebh	; bc70

; ----------------------------------------------------------------------
; DATOS leido_BC71: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbc71..0xbc72  (1 bytes)
DATA_leido_BC71:
	defb 087h	; bc71

; ----------------------------------------------------------------------
; DATOS leido_BC72: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbc72..0xbc73  (1 bytes)
DATA_leido_BC72:
	defb 060h	; bc72

; ----------------------------------------------------------------------
; DATOS leido_BC73: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbc73..0xbc78  (5 bytes)
DATA_leido_BC73:
	defb 0d4h,005h,0d5h,0b5h,0ebh	; bc73

; ----------------------------------------------------------------------
; DATOS leido_BC78: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbc78..0xbc79  (1 bytes)
DATA_leido_BC78:
	defb 081h	; bc78

; ----------------------------------------------------------------------
; DATOS leido_BC79: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbc79..0xbc7a  (1 bytes)
DATA_leido_BC79:
	defb 074h	; bc79

; ----------------------------------------------------------------------
; DATOS leido_BC7A: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbc7a..0xbc7f  (5 bytes)
DATA_leido_BC7A:
	defb 0a0h,090h,080h,070h,0edh	; bc7a

; ----------------------------------------------------------------------
; DATOS leido_BC7F: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbc7f..0xbc80  (1 bytes)
DATA_leido_BC7F:
	defb 00ah	; bc7f

; ----------------------------------------------------------------------
; DATOS leido_BC80: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc80..0xbc81  (1 bytes)
DATA_leido_BC80:
	defb 0eah	; bc80

; ----------------------------------------------------------------------
; DATOS leido_BC81: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc81..0xbc82  (1 bytes)
DATA_leido_BC81:
	defb 00bh	; bc81

; ----------------------------------------------------------------------
; DATOS leido_BC82: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc82..0xbc83  (1 bytes)
DATA_leido_BC82:
	defb 0ebh	; bc82

; ----------------------------------------------------------------------
; DATOS leido_BC83: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbc83..0xbc84  (1 bytes)
DATA_leido_BC83:
	defb 084h	; bc83

; ----------------------------------------------------------------------
; DATOS leido_BC84: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbc84..0xbc85  (1 bytes)
DATA_leido_BC84:
	defb 073h	; bc84

; ----------------------------------------------------------------------
; DATOS leido_BC85: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xbc85..0xbc8e  (9 bytes)
DATA_leido_BC85:
	defb 0d5h,020h,0d4h,020h,0d5h,010h,0d4h,010h,0eah	; bc85  . . .....

; ----------------------------------------------------------------------
; DATOS leido_BC8E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc8e..0xbc8f  (1 bytes)
DATA_leido_BC8E:
	defb 00eh	; bc8e

; ----------------------------------------------------------------------
; DATOS leido_BC8F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc8f..0xbc90  (1 bytes)
DATA_leido_BC8F:
	defb 0edh	; bc8f

; ----------------------------------------------------------------------
; DATOS leido_BC90: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbc90..0xbc91  (1 bytes)
DATA_leido_BC90:
	defb 007h	; bc90

; ----------------------------------------------------------------------
; DATOS leido_BC91: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbc91..0xbc94  (3 bytes)
DATA_leido_BC91:
	defb 0d5h,01bh,0ebh	; bc91

; ----------------------------------------------------------------------
; DATOS leido_BC94: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbc94..0xbc95  (1 bytes)
DATA_leido_BC94:
	defb 087h	; bc94

; ----------------------------------------------------------------------
; DATOS leido_BC95: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbc95..0xbc96  (1 bytes)
DATA_leido_BC95:
	defb 060h	; bc95

; ----------------------------------------------------------------------
; DATOS leido_BC96: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc96..0xbc97  (1 bytes)
DATA_leido_BC96:
	defb 0eah	; bc96

; ----------------------------------------------------------------------
; DATOS leido_BC97: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc97..0xbc98  (1 bytes)
DATA_leido_BC97:
	defb 00ah	; bc97

; ----------------------------------------------------------------------
; DATOS leido_BC98: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc98..0xbc99  (1 bytes)
DATA_leido_BC98:
	defb 0edh	; bc98

; ----------------------------------------------------------------------
; DATOS leido_BC99: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbc99..0xbc9a  (1 bytes)
DATA_leido_BC99:
	defb 002h	; bc99

; ----------------------------------------------------------------------
; DATOS leido_BC9A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbc9a..0xbc9d  (3 bytes)
DATA_leido_BC9A:
	defb 0d4h,035h,0eah	; bc9a

; ----------------------------------------------------------------------
; DATOS leido_BC9D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbc9d..0xbc9e  (1 bytes)
DATA_leido_BC9D:
	defb 00ch	; bc9d

; ----------------------------------------------------------------------
; DATOS leido_BC9E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbc9e..0xbca1  (3 bytes)
DATA_leido_BC9E:
	defb 0d5h,089h,0fdh	; bc9e

; ----------------------------------------------------------------------
; DATOS leido_BCA1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbca1..0xbca3  (2 bytes)
DATA_leido_BCA1:
	defb 042h,0bch	; bca1

; ----------------------------------------------------------------------
; DATOS leido_BCA3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbca3..0xbca4  (1 bytes)
DATA_leido_BCA3:
	defb 0feh	; bca3

; ----------------------------------------------------------------------
; DATOS leido_BCA4: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbca4..0xbca5  (1 bytes)
DATA_leido_BCA4:
	defb 001h	; bca4

; ----------------------------------------------------------------------
; DATOS leido_BCA5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbca5..0xbca6  (1 bytes)
DATA_leido_BCA5:
	defb 0f8h	; bca5

; ----------------------------------------------------------------------
; DATOS leido_BCA6: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbca6..0xbca7  (1 bytes)
DATA_leido_BCA6:
	defb 015h	; bca6

; ----------------------------------------------------------------------
; DATOS leido_BCA7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbca7..0xbca8  (1 bytes)
DATA_leido_BCA7:
	defb 0f2h	; bca7

; ----------------------------------------------------------------------
; DATOS leido_BCA8: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbca8..0xbca9  (1 bytes)
DATA_leido_BCA8:
	defb 025h	; bca8

; ----------------------------------------------------------------------
; DATOS leido_BCA9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbca9..0xbcaa  (1 bytes)
DATA_leido_BCA9:
	defb 0f1h	; bca9

; ----------------------------------------------------------------------
; DATOS leido_BCAA: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbcaa..0xbcab  (1 bytes)
DATA_leido_BCAA:
	defb 052h	; bcaa

; ----------------------------------------------------------------------
; DATOS leido_BCAB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcab..0xbcac  (1 bytes)
DATA_leido_BCAB:
	defb 0e9h	; bcab

; ----------------------------------------------------------------------
; DATOS leido_BCAC: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbcac..0xbcad  (1 bytes)
DATA_leido_BCAC:
	defb 00bh	; bcac

; ----------------------------------------------------------------------
; DATOS leido_BCAD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcad..0xbcae  (1 bytes)
DATA_leido_BCAD:
	defb 0eah	; bcad

; ----------------------------------------------------------------------
; DATOS leido_BCAE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbcae..0xbcaf  (1 bytes)
DATA_leido_BCAE:
	defb 00bh	; bcae

; ----------------------------------------------------------------------
; DATOS leido_BCAF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcaf..0xbcb0  (1 bytes)
DATA_leido_BCAF:
	defb 0edh	; bcaf

; ----------------------------------------------------------------------
; DATOS leido_BCB0: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbcb0..0xbcb1  (1 bytes)
DATA_leido_BCB0:
	defb 001h	; bcb0

; ----------------------------------------------------------------------
; DATOS leido_BCB1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcb1..0xbcb2  (1 bytes)
DATA_leido_BCB1:
	defb 0dbh	; bcb1

; ----------------------------------------------------------------------
; DATOS leido_BCB2: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbcb2..0xbcb3  (1 bytes)
DATA_leido_BCB2:
	defb 002h	; bcb2

; ----------------------------------------------------------------------
; DATOS leido_BCB3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcb3..0xbcb4  (1 bytes)
DATA_leido_BCB3:
	defb 0ddh	; bcb3

; ----------------------------------------------------------------------
; DATOS leido_BCB4: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xbcb4..0xbcb6  (2 bytes)
DATA_leido_BCB4:
	defb 08eh,032h	; bcb4

; ----------------------------------------------------------------------
; DATOS leido_BCB6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcb6..0xbcb7  (1 bytes)
DATA_leido_BCB6:
	defb 0d6h	; bcb6

; ----------------------------------------------------------------------
; DATOS leido_BCB7: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbcb7..0xbcb9  (2 bytes)
DATA_leido_BCB7:
	defb 009h,001h	; bcb7

; ----------------------------------------------------------------------
; DATOS leido_BCB9: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xbcb9..0xbcbd  (4 bytes)
DATA_leido_BCB9:
	defb 0d1h,09fh,0afh,0d6h	; bcb9

; ----------------------------------------------------------------------
; DATOS leido_BCBD: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbcbd..0xbcbf  (2 bytes)
DATA_leido_BCBD:
	defb 003h,001h	; bcbd

; ----------------------------------------------------------------------
; DATOS leido_BCBF: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbcbf..0xbcc2  (3 bytes)
DATA_leido_BCBF:
	defb 0d0h,02fh,0d6h	; bcbf

; ----------------------------------------------------------------------
; DATOS leido_BCC2: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbcc2..0xbcc4  (2 bytes)
DATA_leido_BCC2:
	defb 009h,001h	; bcc2

; ----------------------------------------------------------------------
; DATOS leido_BCC4: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbcc4..0xbcc7  (3 bytes)
DATA_leido_BCC4:
	defb 0d1h,08fh,0d6h	; bcc4

; ----------------------------------------------------------------------
; DATOS leido_BCC7: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbcc7..0xbcc9  (2 bytes)
DATA_leido_BCC7:
	defb 003h,001h	; bcc7

; ----------------------------------------------------------------------
; DATOS leido_BCC9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcc9..0xbcca  (1 bytes)
DATA_leido_BCC9:
	defb 0ddh	; bcc9

; ----------------------------------------------------------------------
; DATOS leido_BCCA: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xbcca..0xbccc  (2 bytes)
DATA_leido_BCCA:
	defb 089h,032h	; bcca

; ----------------------------------------------------------------------
; DATOS leido_BCCC: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xbccc..0xbcda  (14 bytes)
DATA_leido_BCCC:
	defb 0d0h,021h,011h,00bh,0d1h,0b5h,0a9h,0d0h,021h,01dh,045h,0d1h,089h,0fdh	; bccc  .!......!.E...

; ----------------------------------------------------------------------
; DATOS leido_BCDA: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbcda..0xbcdc  (2 bytes)
DATA_leido_BCDA:
	defb 0a3h,0bch	; bcda

; ----------------------------------------------------------------------
; DATOS leido_BCDC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcdc..0xbcdd  (1 bytes)
DATA_leido_BCDC:
	defb 0feh	; bcdc

; ----------------------------------------------------------------------
; DATOS leido_BCDD: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbcdd..0xbcde  (1 bytes)
DATA_leido_BCDD:
	defb 001h	; bcdd

; ----------------------------------------------------------------------
; DATOS leido_BCDE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcde..0xbcdf  (1 bytes)
DATA_leido_BCDE:
	defb 0f8h	; bcde

; ----------------------------------------------------------------------
; DATOS leido_BCDF: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbcdf..0xbce0  (1 bytes)
DATA_leido_BCDF:
	defb 01dh	; bcdf

; ----------------------------------------------------------------------
; DATOS leido_BCE0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbce0..0xbce1  (1 bytes)
DATA_leido_BCE0:
	defb 0f2h	; bce0

; ----------------------------------------------------------------------
; DATOS leido_BCE1: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbce1..0xbce2  (1 bytes)
DATA_leido_BCE1:
	defb 025h	; bce1

; ----------------------------------------------------------------------
; DATOS leido_BCE2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbce2..0xbce3  (1 bytes)
DATA_leido_BCE2:
	defb 0f1h	; bce2

; ----------------------------------------------------------------------
; DATOS leido_BCE3: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbce3..0xbce4  (1 bytes)
DATA_leido_BCE3:
	defb 041h	; bce3

; ----------------------------------------------------------------------
; DATOS leido_BCE4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbce4..0xbce5  (1 bytes)
DATA_leido_BCE4:
	defb 0e9h	; bce4

; ----------------------------------------------------------------------
; DATOS leido_BCE5: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbce5..0xbce6  (1 bytes)
DATA_leido_BCE5:
	defb 00bh	; bce5

; ----------------------------------------------------------------------
; DATOS leido_BCE6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbce6..0xbce7  (1 bytes)
DATA_leido_BCE6:
	defb 0eah	; bce6

; ----------------------------------------------------------------------
; DATOS leido_BCE7: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbce7..0xbce8  (1 bytes)
DATA_leido_BCE7:
	defb 00ah	; bce7

; ----------------------------------------------------------------------
; DATOS leido_BCE8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbce8..0xbce9  (1 bytes)
DATA_leido_BCE8:
	defb 0edh	; bce8

; ----------------------------------------------------------------------
; DATOS leido_BCE9: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xbce9..0xbcea  (1 bytes)
DATA_leido_BCE9:
	defb 001h	; bce9

; ----------------------------------------------------------------------
; DATOS leido_BCEA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcea..0xbceb  (1 bytes)
DATA_leido_BCEA:
	defb 0dbh	; bcea

; ----------------------------------------------------------------------
; DATOS leido_BCEB: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbceb..0xbcec  (1 bytes)
DATA_leido_BCEB:
	defb 002h	; bceb

; ----------------------------------------------------------------------
; DATOS leido_BCEC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcec..0xbced  (1 bytes)
DATA_leido_BCEC:
	defb 0ddh	; bcec

; ----------------------------------------------------------------------
; DATOS leido_BCED: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xbced..0xbcef  (2 bytes)
DATA_leido_BCED:
	defb 08eh,032h	; bced

; ----------------------------------------------------------------------
; DATOS leido_BCEF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbcef..0xbcf0  (1 bytes)
DATA_leido_BCEF:
	defb 0d6h	; bcef

; ----------------------------------------------------------------------
; DATOS leido_BCF0: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbcf0..0xbcf2  (2 bytes)
DATA_leido_BCF0:
	defb 009h,001h	; bcf0

; ----------------------------------------------------------------------
; DATOS leido_BCF2: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xbcf2..0xbcf8  (6 bytes)
DATA_leido_BCF2:
	defb 0d1h,04fh,03fh,08fh,02fh,0ddh	; bcf2

; ----------------------------------------------------------------------
; DATOS leido_BCF8: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xbcf8..0xbcfa  (2 bytes)
DATA_leido_BCF8:
	defb 089h,032h	; bcf8

; ----------------------------------------------------------------------
; DATOS leido_BCFA: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xbcfa..0xbd04  (10 bytes)
DATA_leido_BCFA:
	defb 081h,071h,06bh,055h,049h,091h,08dh,0a5h,029h,0fdh	; bcfa  .qkUI...).

; ----------------------------------------------------------------------
; DATOS leido_BD04: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbd04..0xbd06  (2 bytes)
DATA_leido_BD04:
	defb 0dch,0bch	; bd04

; ----------------------------------------------------------------------
; DATOS leido_BD06: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd06..0xbd07  (1 bytes)
DATA_leido_BD06:
	defb 0feh	; bd06

; ----------------------------------------------------------------------
; DATOS leido_BD07: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbd07..0xbd08  (1 bytes)
DATA_leido_BD07:
	defb 001h	; bd07

; ----------------------------------------------------------------------
; DATOS leido_BD08: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd08..0xbd09  (1 bytes)
DATA_leido_BD08:
	defb 0f1h	; bd08

; ----------------------------------------------------------------------
; DATOS leido_BD09: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbd09..0xbd0a  (1 bytes)
DATA_leido_BD09:
	defb 061h	; bd09

; ----------------------------------------------------------------------
; DATOS leido_BD0A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd0a..0xbd0b  (1 bytes)
DATA_leido_BD0A:
	defb 0f8h	; bd0a

; ----------------------------------------------------------------------
; DATOS leido_BD0B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbd0b..0xbd0c  (1 bytes)
DATA_leido_BD0B:
	defb 01dh	; bd0b

; ----------------------------------------------------------------------
; DATOS leido_BD0C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd0c..0xbd0d  (1 bytes)
DATA_leido_BD0C:
	defb 0e9h	; bd0c

; ----------------------------------------------------------------------
; DATOS leido_BD0D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbd0d..0xbd0e  (1 bytes)
DATA_leido_BD0D:
	defb 00bh	; bd0d

; ----------------------------------------------------------------------
; DATOS leido_BD0E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd0e..0xbd0f  (1 bytes)
DATA_leido_BD0E:
	defb 0eah	; bd0e

; ----------------------------------------------------------------------
; DATOS leido_BD0F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbd0f..0xbd10  (1 bytes)
DATA_leido_BD0F:
	defb 005h	; bd0f

; ----------------------------------------------------------------------
; DATOS leido_BD10: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbd10..0xbd12  (2 bytes)
DATA_leido_BD10:
	defb 0ech,0d6h	; bd10

; ----------------------------------------------------------------------
; DATOS leido_BD12: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbd12..0xbd14  (2 bytes)
DATA_leido_BD12:
	defb 004h,001h	; bd12

; ----------------------------------------------------------------------
; DATOS leido_BD14: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd14..0xbd15  (1 bytes)
DATA_leido_BD14:
	defb 0dbh	; bd14

; ----------------------------------------------------------------------
; DATOS leido_BD15: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbd15..0xbd16  (1 bytes)
DATA_leido_BD15:
	defb 003h	; bd15

; ----------------------------------------------------------------------
; DATOS leido_BD16: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd16..0xbd17  (1 bytes)
DATA_leido_BD16:
	defb 0ebh	; bd16

; ----------------------------------------------------------------------
; DATOS leido_BD17: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbd17..0xbd18  (1 bytes)
DATA_leido_BD17:
	defb 087h	; bd17

; ----------------------------------------------------------------------
; DATOS leido_BD18: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbd18..0xbd19  (1 bytes)
DATA_leido_BD18:
	defb 030h	; bd18

; ----------------------------------------------------------------------
; DATOS leido_BD19: 22 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (22 bytes)
;   0xbd19..0xbd2f  (22 bytes)
DATA_leido_BD19:
	defb 0c1h,0d1h,09fh,0afh,0d0h,02fh,0d1h,08fh,0d0h,021h,011h,00bh,0d1h,0b5h,0a9h,0d0h	; bd19  ...../...!......
	defb 021h,01dh,045h,0d1h,089h,0feh	; bd29

; ----------------------------------------------------------------------
; DATOS leido_BD2F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbd2f..0xbd30  (1 bytes)
DATA_leido_BD2F:
	defb 001h	; bd2f

; ----------------------------------------------------------------------
; DATOS leido_BD30: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd30..0xbd31  (1 bytes)
DATA_leido_BD30:
	defb 0f1h	; bd30

; ----------------------------------------------------------------------
; DATOS leido_BD31: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbd31..0xbd32  (1 bytes)
DATA_leido_BD31:
	defb 061h	; bd31

; ----------------------------------------------------------------------
; DATOS leido_BD32: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd32..0xbd33  (1 bytes)
DATA_leido_BD32:
	defb 0f8h	; bd32

; ----------------------------------------------------------------------
; DATOS leido_BD33: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbd33..0xbd34  (1 bytes)
DATA_leido_BD33:
	defb 01dh	; bd33

; ----------------------------------------------------------------------
; DATOS leido_BD34: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd34..0xbd35  (1 bytes)
DATA_leido_BD34:
	defb 0e9h	; bd34

; ----------------------------------------------------------------------
; DATOS leido_BD35: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbd35..0xbd36  (1 bytes)
DATA_leido_BD35:
	defb 00bh	; bd35

; ----------------------------------------------------------------------
; DATOS leido_BD36: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd36..0xbd37  (1 bytes)
DATA_leido_BD36:
	defb 0eah	; bd36

; ----------------------------------------------------------------------
; DATOS leido_BD37: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbd37..0xbd38  (1 bytes)
DATA_leido_BD37:
	defb 005h	; bd37

; ----------------------------------------------------------------------
; DATOS leido_BD38: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbd38..0xbd3a  (2 bytes)
DATA_leido_BD38:
	defb 0ech,0d6h	; bd38

; ----------------------------------------------------------------------
; DATOS leido_BD3A: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbd3a..0xbd3c  (2 bytes)
DATA_leido_BD3A:
	defb 004h,001h	; bd3a

; ----------------------------------------------------------------------
; DATOS leido_BD3C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd3c..0xbd3d  (1 bytes)
DATA_leido_BD3C:
	defb 0dbh	; bd3c

; ----------------------------------------------------------------------
; DATOS leido_BD3D: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbd3d..0xbd3e  (1 bytes)
DATA_leido_BD3D:
	defb 003h	; bd3d

; ----------------------------------------------------------------------
; DATOS leido_BD3E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd3e..0xbd3f  (1 bytes)
DATA_leido_BD3E:
	defb 0ebh	; bd3e

; ----------------------------------------------------------------------
; DATOS leido_BD3F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbd3f..0xbd40  (1 bytes)
DATA_leido_BD3F:
	defb 087h	; bd3f

; ----------------------------------------------------------------------
; DATOS leido_BD40: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbd40..0xbd41  (1 bytes)
DATA_leido_BD40:
	defb 030h	; bd40

; ----------------------------------------------------------------------
; DATOS leido_BD41: 24 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 16 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (24 bytes)
;   0xbd41..0xbd59  (24 bytes)
DATA_leido_BD41:
	defb 0d1h,09fh,0afh,0d0h,02fh,0d1h,08fh,0d0h,021h,011h,00bh,0d1h,0b5h,0a9h,0d0h,021h	; bd41  ..../...!......!
	defb 01dh,045h,0d1h,089h,0fdh,02eh,0bdh,0feh	; bd51  .E......

; ----------------------------------------------------------------------
; DATOS leido_BD59: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbd59..0xbd5a  (1 bytes)
DATA_leido_BD59:
	defb 001h	; bd59

; ----------------------------------------------------------------------
; DATOS leido_BD5A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd5a..0xbd5b  (1 bytes)
DATA_leido_BD5A:
	defb 0f1h	; bd5a

; ----------------------------------------------------------------------
; DATOS leido_BD5B: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbd5b..0xbd5c  (1 bytes)
DATA_leido_BD5B:
	defb 061h	; bd5b

; ----------------------------------------------------------------------
; DATOS leido_BD5C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd5c..0xbd5d  (1 bytes)
DATA_leido_BD5C:
	defb 0f8h	; bd5c

; ----------------------------------------------------------------------
; DATOS leido_BD5D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbd5d..0xbd5e  (1 bytes)
DATA_leido_BD5D:
	defb 01dh	; bd5d

; ----------------------------------------------------------------------
; DATOS leido_BD5E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd5e..0xbd5f  (1 bytes)
DATA_leido_BD5E:
	defb 0e9h	; bd5e

; ----------------------------------------------------------------------
; DATOS leido_BD5F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbd5f..0xbd60  (1 bytes)
DATA_leido_BD5F:
	defb 00bh	; bd5f

; ----------------------------------------------------------------------
; DATOS leido_BD60: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd60..0xbd61  (1 bytes)
DATA_leido_BD60:
	defb 0eah	; bd60

; ----------------------------------------------------------------------
; DATOS leido_BD61: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbd61..0xbd62  (1 bytes)
DATA_leido_BD61:
	defb 005h	; bd61

; ----------------------------------------------------------------------
; DATOS leido_BD62: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbd62..0xbd64  (2 bytes)
DATA_leido_BD62:
	defb 0ech,0dbh	; bd62

; ----------------------------------------------------------------------
; DATOS leido_BD64: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbd64..0xbd65  (1 bytes)
DATA_leido_BD64:
	defb 003h	; bd64

; ----------------------------------------------------------------------
; DATOS leido_BD65: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd65..0xbd66  (1 bytes)
DATA_leido_BD65:
	defb 0ebh	; bd65

; ----------------------------------------------------------------------
; DATOS leido_BD66: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbd66..0xbd67  (1 bytes)
DATA_leido_BD66:
	defb 087h	; bd66

; ----------------------------------------------------------------------
; DATOS leido_BD67: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbd67..0xbd68  (1 bytes)
DATA_leido_BD67:
	defb 030h	; bd67

; ----------------------------------------------------------------------
; DATOS leido_BD68: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbd68..0xbd6a  (2 bytes)
DATA_leido_BD68:
	defb 0c1h,0d6h	; bd68

; ----------------------------------------------------------------------
; DATOS leido_BD6A: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbd6a..0xbd6c  (2 bytes)
DATA_leido_BD6A:
	defb 004h,001h	; bd6a

; ----------------------------------------------------------------------
; DATOS leido_BD6C: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xbd6c..0xbd7a  (14 bytes)
DATA_leido_BD6C:
	defb 0d1h,04fh,03fh,08fh,02fh,081h,071h,06bh,055h,049h,091h,08dh,0a5h,0feh	; bd6c  .O?./.qkUI....

; ----------------------------------------------------------------------
; DATOS leido_BD7A: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbd7a..0xbd7b  (1 bytes)
DATA_leido_BD7A:
	defb 001h	; bd7a

; ----------------------------------------------------------------------
; DATOS leido_BD7B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbd7b..0xbd7d  (2 bytes)
DATA_leido_BD7B:
	defb 0f0h,0f8h	; bd7b

; ----------------------------------------------------------------------
; DATOS leido_BD7D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbd7d..0xbd7e  (1 bytes)
DATA_leido_BD7D:
	defb 01dh	; bd7d

; ----------------------------------------------------------------------
; DATOS leido_BD7E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd7e..0xbd7f  (1 bytes)
DATA_leido_BD7E:
	defb 0d6h	; bd7e

; ----------------------------------------------------------------------
; DATOS leido_BD7F: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbd7f..0xbd81  (2 bytes)
DATA_leido_BD7F:
	defb 001h,001h	; bd7f

; ----------------------------------------------------------------------
; DATOS leido_BD81: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd81..0xbd82  (1 bytes)
DATA_leido_BD81:
	defb 0eah	; bd81

; ----------------------------------------------------------------------
; DATOS leido_BD82: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbd82..0xbd83  (1 bytes)
DATA_leido_BD82:
	defb 001h	; bd82

; ----------------------------------------------------------------------
; DATOS leido_BD83: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd83..0xbd84  (1 bytes)
DATA_leido_BD83:
	defb 0ebh	; bd83

; ----------------------------------------------------------------------
; DATOS leido_BD84: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbd84..0xbd85  (1 bytes)
DATA_leido_BD84:
	defb 001h	; bd84

; ----------------------------------------------------------------------
; DATOS leido_BD85: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbd85..0xbd86  (1 bytes)
DATA_leido_BD85:
	defb 070h	; bd85

; ----------------------------------------------------------------------
; DATOS leido_BD86: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd86..0xbd87  (1 bytes)
DATA_leido_BD86:
	defb 0e9h	; bd86

; ----------------------------------------------------------------------
; DATOS leido_BD87: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbd87..0xbd88  (1 bytes)
DATA_leido_BD87:
	defb 001h	; bd87

; ----------------------------------------------------------------------
; DATOS leido_BD88: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xbd88..0xbd8e  (6 bytes)
DATA_leido_BD88:
	defb 0d0h,0a0h,090h,080h,070h,0eah	; bd88

; ----------------------------------------------------------------------
; DATOS leido_BD8E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbd8e..0xbd8f  (1 bytes)
DATA_leido_BD8E:
	defb 002h	; bd8e

; ----------------------------------------------------------------------
; DATOS leido_BD8F: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbd8f..0xbd94  (5 bytes)
DATA_leido_BD8F:
	defb 060h,050h,040h,030h,0eah	; bd8f

; ----------------------------------------------------------------------
; DATOS leido_BD94: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbd94..0xbd95  (1 bytes)
DATA_leido_BD94:
	defb 003h	; bd94

; ----------------------------------------------------------------------
; DATOS leido_BD95: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xbd95..0xbd9f  (10 bytes)
DATA_leido_BD95:
	defb 020h,010h,000h,0d1h,0b0h,0a0h,090h,080h,070h,0eah	; bd95   .......p.

; ----------------------------------------------------------------------
; DATOS leido_BD9F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbd9f..0xbda0  (1 bytes)
DATA_leido_BD9F:
	defb 004h	; bd9f

; ----------------------------------------------------------------------
; DATOS leido_BDA0: 43 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (43 bytes)
;   0xbda0..0xbdcb  (43 bytes)
DATA_leido_BDA0:
	defb 060h,050h,040h,030h,020h,010h,000h,0d2h,0b0h,0a0h,090h,080h,070h,060h,050h,040h	; bda0  `P@0 .......p`P@
	defb 030h,020h,010h,000h,0d3h,0b0h,0a0h,090h,080h,070h,060h,050h,040h,030h,020h,010h	; bdb0  0 .......p`P@0 .
	defb 000h,0d4h,0b0h,0a0h,090h,080h,070h,060h,050h,040h,0eah	; bdc0  ......p`P@.

; ----------------------------------------------------------------------
; DATOS leido_BDCB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbdcb..0xbdcc  (1 bytes)
DATA_leido_BDCB:
	defb 002h	; bdcb

; ----------------------------------------------------------------------
; DATOS leido_BDCC: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xbdcc..0xbdda  (14 bytes)
DATA_leido_BDCC:
	defb 0d2h,010h,000h,0d3h,0b0h,0a0h,090h,080h,070h,060h,050h,040h,030h,0eah	; bdcc  ........p`P@0.

; ----------------------------------------------------------------------
; DATOS leido_BDDA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbdda..0xbddb  (1 bytes)
DATA_leido_BDDA:
	defb 003h	; bdda

; ----------------------------------------------------------------------
; DATOS leido_BDDB: 29 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (29 bytes)
;   0xbddb..0xbdf8  (29 bytes)
DATA_leido_BDDB:
	defb 020h,010h,0d4h,0b0h,0a0h,090h,080h,070h,060h,050h,040h,030h,020h,010h,000h,0d5h	; bddb   ......p`P@0 ...
	defb 0b0h,0a0h,090h,080h,070h,060h,050h,040h,030h,020h,010h,000h,0eah	; bdeb  ....p`P@0 ...

; ----------------------------------------------------------------------
; DATOS leido_BDF8: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbdf8..0xbdf9  (1 bytes)
DATA_leido_BDF8:
	defb 001h	; bdf8

; ----------------------------------------------------------------------
; DATOS leido_BDF9: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xbdf9..0xbe06  (13 bytes)
DATA_leido_BDF9:
	defb 0b0h,0a0h,090h,080h,070h,060h,050h,040h,030h,020h,010h,006h,0feh	; bdf9  ....p`P@0 ...

; ----------------------------------------------------------------------
; DATOS leido_BE06: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbe06..0xbe07  (1 bytes)
DATA_leido_BE06:
	defb 001h	; be06

; ----------------------------------------------------------------------
; DATOS leido_BE07: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe07..0xbe08  (1 bytes)
DATA_leido_BE07:
	defb 0f1h	; be07

; ----------------------------------------------------------------------
; DATOS leido_BE08: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbe08..0xbe09  (1 bytes)
DATA_leido_BE08:
	defb 061h	; be08

; ----------------------------------------------------------------------
; DATOS leido_BE09: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe09..0xbe0a  (1 bytes)
DATA_leido_BE09:
	defb 0f8h	; be09

; ----------------------------------------------------------------------
; DATOS leido_BE0A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbe0a..0xbe0b  (1 bytes)
DATA_leido_BE0A:
	defb 01dh	; be0a

; ----------------------------------------------------------------------
; DATOS leido_BE0B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe0b..0xbe0c  (1 bytes)
DATA_leido_BE0B:
	defb 0e9h	; be0b

; ----------------------------------------------------------------------
; DATOS leido_BE0C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe0c..0xbe0d  (1 bytes)
DATA_leido_BE0C:
	defb 00bh	; be0c

; ----------------------------------------------------------------------
; DATOS leido_BE0D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe0d..0xbe0e  (1 bytes)
DATA_leido_BE0D:
	defb 0eah	; be0d

; ----------------------------------------------------------------------
; DATOS leido_BE0E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbe0e..0xbe0f  (1 bytes)
DATA_leido_BE0E:
	defb 005h	; be0e

; ----------------------------------------------------------------------
; DATOS leido_BE0F: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbe0f..0xbe11  (2 bytes)
DATA_leido_BE0F:
	defb 0ech,0dbh	; be0f

; ----------------------------------------------------------------------
; DATOS leido_BE11: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbe11..0xbe12  (1 bytes)
DATA_leido_BE11:
	defb 003h	; be11

; ----------------------------------------------------------------------
; DATOS leido_BE12: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe12..0xbe13  (1 bytes)
DATA_leido_BE12:
	defb 0ebh	; be12

; ----------------------------------------------------------------------
; DATOS leido_BE13: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbe13..0xbe14  (1 bytes)
DATA_leido_BE13:
	defb 087h	; be13

; ----------------------------------------------------------------------
; DATOS leido_BE14: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbe14..0xbe15  (1 bytes)
DATA_leido_BE14:
	defb 030h	; be14

; ----------------------------------------------------------------------
; DATOS leido_BE15: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe15..0xbe16  (1 bytes)
DATA_leido_BE15:
	defb 0d6h	; be15

; ----------------------------------------------------------------------
; DATOS leido_BE16: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xbe16..0xbe18  (2 bytes)
DATA_leido_BE16:
	defb 004h,001h	; be16

; ----------------------------------------------------------------------
; DATOS leido_BE18: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbe18..0xbe1d  (5 bytes)
DATA_leido_BE18:
	defb 0d1h,04fh,03fh,08fh,02fh	; be18

; ----------------------------------------------------------------------
; DATOS sin identificar  0xbe1d..0xbe28  (11 bytes)
DATA_BE1D:
	defb 081h,071h,06bh,055h,049h,091h,08dh,0a5h,0fdh,079h,0bdh	; be1d  .qkUI....y.

; ----------------------------------------------------------------------
; DATOS relleno_ff: 472 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (472 bytes)
;   0xbe28..0xc000  (472 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be28  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be38  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be48  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be58  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be68  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be78  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be88  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; be98  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bea8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beb8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bec8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bed8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bee8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bef8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf08  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf18  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf28  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf38  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf48  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf58  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf68  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf78  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf88  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf98  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfa8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe8  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff8  ........

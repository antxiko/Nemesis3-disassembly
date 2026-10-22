; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 12 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS leido_A000: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa000..0xa00e  (14 bytes)
DATA_leido_A000:
	defb 0d2h,000h,050h,090h,0d1h,000h,0d2h,090h,050h,000h,0d3h,090h,050h,0fbh	; a000  ..P.....P...P.

; ----------------------------------------------------------------------
; DATOS leido_A00E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa00e..0xa011  (3 bytes)
DATA_leido_A00E:
	defb 002h,0fdh,09fh	; a00e

; ----------------------------------------------------------------------
; DATOS leido_A011: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xa011..0xa022  (17 bytes)
DATA_leido_A011:
	defb 020h,050h,0a0h,0d2h,020h,050h,0a0h,0d1h,020h,0d2h,0a0h,050h,020h,0d3h,0a0h,050h	; a011   P.. P.. ..P ..P
	defb 0fbh	; a021

; ----------------------------------------------------------------------
; DATOS leido_A022: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa022..0xa025  (3 bytes)
DATA_leido_A022:
	defb 002h,011h,0a0h	; a022

; ----------------------------------------------------------------------
; DATOS leido_A025: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xa025..0xa036  (17 bytes)
DATA_leido_A025:
	defb 030h,080h,0d2h,000h,030h,080h,0d1h,000h,030h,000h,0d2h,080h,030h,000h,0d3h,080h	; a025  0...0...0...0...
	defb 0fbh	; a035

; ----------------------------------------------------------------------
; DATOS leido_A036: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa036..0xa039  (3 bytes)
DATA_leido_A036:
	defb 002h,025h,0a0h	; a036

; ----------------------------------------------------------------------
; DATOS leido_A039: 37 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (37 bytes)
;   0xa039..0xa05e  (37 bytes)
DATA_leido_A039:
	defb 020h,070h,0d2h,000h,020h,070h,0d1h,000h,020h,000h,0d2h,070h,0d1h,020h,000h,0d2h	; a039   p.. p.. ..p. ..
	defb 070h,0d3h,020h,070h,0b0h,0d2h,020h,070h,0b0h,0d1h,000h,0d2h,0b0h,070h,0d1h,000h	; a049  p. p.. p.....p..
	defb 0d2h,0b0h,070h,0f0h,0f8h	; a059

; ----------------------------------------------------------------------
; DATOS leido_A05E: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa05e..0xa05f  (1 bytes)
DATA_leido_A05E:
	defb 00dh	; a05e

; ----------------------------------------------------------------------
; DATOS leido_A05F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa05f..0xa060  (1 bytes)
DATA_leido_A05F:
	defb 0eah	; a05f

; ----------------------------------------------------------------------
; DATOS leido_A060: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa060..0xa061  (1 bytes)
DATA_leido_A060:
	defb 009h	; a060

; ----------------------------------------------------------------------
; DATOS leido_A061: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa061..0xa062  (1 bytes)
DATA_leido_A061:
	defb 0dbh	; a061

; ----------------------------------------------------------------------
; DATOS leido_A062: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa062..0xa063  (1 bytes)
DATA_leido_A062:
	defb 002h	; a062

; ----------------------------------------------------------------------
; DATOS leido_A063: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa063..0xa064  (1 bytes)
DATA_leido_A063:
	defb 0ebh	; a063

; ----------------------------------------------------------------------
; DATOS leido_A064: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa064..0xa065  (1 bytes)
DATA_leido_A064:
	defb 071h	; a064

; ----------------------------------------------------------------------
; DATOS leido_A065: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa065..0xa066  (1 bytes)
DATA_leido_A065:
	defb 081h	; a065

; ----------------------------------------------------------------------
; DATOS leido_A066: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa066..0xa067  (1 bytes)
DATA_leido_A066:
	defb 0f9h	; a066

; ----------------------------------------------------------------------
; DATOS leido_A067: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa067..0xa069  (2 bytes)
DATA_leido_A067:
	defb 0b4h,0a2h	; a067

; ----------------------------------------------------------------------
; DATOS leido_A069: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa069..0xa06f  (6 bytes)
DATA_leido_A069:
	defb 021h,020h,020h,020h,020h,0fbh	; a069

; ----------------------------------------------------------------------
; DATOS leido_A06F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa06f..0xa072  (3 bytes)
DATA_leido_A06F:
	defb 002h,069h,0a0h	; a06f

; ----------------------------------------------------------------------
; DATOS leido_A072: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa072..0xa073  (1 bytes)
DATA_leido_A072:
	defb 0f9h	; a072

; ----------------------------------------------------------------------
; DATOS leido_A073: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa073..0xa075  (2 bytes)
DATA_leido_A073:
	defb 0b4h,0a2h	; a073

; ----------------------------------------------------------------------
; DATOS leido_A075: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xa075..0xa082  (13 bytes)
DATA_leido_A075:
	defb 070h,070h,070h,050h,050h,050h,030h,030h,030h,010h,010h,010h,0fdh	; a075  pppPPP000....

; ----------------------------------------------------------------------
; DATOS leido_A082: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa082..0xa084  (2 bytes)
DATA_leido_A082:
	defb 0bah,09fh	; a082

; ----------------------------------------------------------------------
; DATOS leido_A084: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa084..0xa085  (1 bytes)
DATA_leido_A084:
	defb 0feh	; a084

; ----------------------------------------------------------------------
; DATOS leido_A085: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa085..0xa086  (1 bytes)
DATA_leido_A085:
	defb 001h	; a085

; ----------------------------------------------------------------------
; DATOS leido_A086: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa086..0xa087  (1 bytes)
DATA_leido_A086:
	defb 0e9h	; a086

; ----------------------------------------------------------------------
; DATOS leido_A087: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa087..0xa088  (1 bytes)
DATA_leido_A087:
	defb 007h	; a087

; ----------------------------------------------------------------------
; DATOS leido_A088: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa088..0xa089  (1 bytes)
DATA_leido_A088:
	defb 0dbh	; a088

; ----------------------------------------------------------------------
; DATOS leido_A089: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa089..0xa08a  (1 bytes)
DATA_leido_A089:
	defb 002h	; a089

; ----------------------------------------------------------------------
; DATOS leido_A08A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa08a..0xa08b  (1 bytes)
DATA_leido_A08A:
	defb 0f1h	; a08a

; ----------------------------------------------------------------------
; DATOS leido_A08B: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa08b..0xa08c  (1 bytes)
DATA_leido_A08B:
	defb 053h	; a08b

; ----------------------------------------------------------------------
; DATOS leido_A08C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa08c..0xa08d  (1 bytes)
DATA_leido_A08C:
	defb 0f2h	; a08c

; ----------------------------------------------------------------------
; DATOS leido_A08D: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa08d..0xa08e  (1 bytes)
DATA_leido_A08D:
	defb 009h	; a08d

; ----------------------------------------------------------------------
; DATOS leido_A08E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa08e..0xa08f  (1 bytes)
DATA_leido_A08E:
	defb 0f8h	; a08e

; ----------------------------------------------------------------------
; DATOS leido_A08F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa08f..0xa090  (1 bytes)
DATA_leido_A08F:
	defb 00bh	; a08f

; ----------------------------------------------------------------------
; DATOS leido_A090: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa090..0xa091  (1 bytes)
DATA_leido_A090:
	defb 0eah	; a090

; ----------------------------------------------------------------------
; DATOS leido_A091: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa091..0xa092  (1 bytes)
DATA_leido_A091:
	defb 00ah	; a091

; ----------------------------------------------------------------------
; DATOS leido_A092: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa092..0xa093  (1 bytes)
DATA_leido_A092:
	defb 0ebh	; a092

; ----------------------------------------------------------------------
; DATOS leido_A093: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa093..0xa094  (1 bytes)
DATA_leido_A093:
	defb 031h	; a093

; ----------------------------------------------------------------------
; DATOS leido_A094: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa094..0xa095  (1 bytes)
DATA_leido_A094:
	defb 030h	; a094

; ----------------------------------------------------------------------
; DATOS leido_A095: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa095..0xa098  (3 bytes)
DATA_leido_A095:
	defb 0d2h,000h,0f9h	; a095

; ----------------------------------------------------------------------
; DATOS leido_A098: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa098..0xa09a  (2 bytes)
DATA_leido_A098:
	defb 020h,0a2h	; a098

; ----------------------------------------------------------------------
; DATOS leido_A09A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa09a..0xa09b  (1 bytes)
DATA_leido_A09A:
	defb 0f8h	; a09a

; ----------------------------------------------------------------------
; DATOS leido_A09B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa09b..0xa09c  (1 bytes)
DATA_leido_A09B:
	defb 059h	; a09b

; ----------------------------------------------------------------------
; DATOS leido_A09C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa09c..0xa09d  (1 bytes)
DATA_leido_A09C:
	defb 0eah	; a09c

; ----------------------------------------------------------------------
; DATOS leido_A09D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa09d..0xa09e  (1 bytes)
DATA_leido_A09D:
	defb 00ah	; a09d

; ----------------------------------------------------------------------
; DATOS leido_A09E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa09e..0xa09f  (1 bytes)
DATA_leido_A09E:
	defb 0ebh	; a09e

; ----------------------------------------------------------------------
; DATOS leido_A09F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa09f..0xa0a0  (1 bytes)
DATA_leido_A09F:
	defb 008h	; a09f

; ----------------------------------------------------------------------
; DATOS leido_A0A0: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0a0..0xa0a1  (1 bytes)
DATA_leido_A0A0:
	defb 078h	; a0a0

; ----------------------------------------------------------------------
; DATOS leido_A0A1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0a1..0xa0a2  (1 bytes)
DATA_leido_A0A1:
	defb 0f9h	; a0a1

; ----------------------------------------------------------------------
; DATOS leido_A0A2: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa0a2..0xa0a4  (2 bytes)
DATA_leido_A0A2:
	defb 02eh,0a2h	; a0a2

; ----------------------------------------------------------------------
; DATOS leido_A0A4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa0a4..0xa0a6  (2 bytes)
DATA_leido_A0A4:
	defb 0a0h,0fbh	; a0a4

; ----------------------------------------------------------------------
; DATOS leido_A0A6: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa0a6..0xa0a9  (3 bytes)
DATA_leido_A0A6:
	defb 002h,08eh,0a0h	; a0a6

; ----------------------------------------------------------------------
; DATOS leido_A0A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0a9..0xa0aa  (1 bytes)
DATA_leido_A0A9:
	defb 0f8h	; a0a9

; ----------------------------------------------------------------------
; DATOS leido_A0AA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa0aa..0xa0ab  (1 bytes)
DATA_leido_A0AA:
	defb 00bh	; a0aa

; ----------------------------------------------------------------------
; DATOS leido_A0AB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0ab..0xa0ac  (1 bytes)
DATA_leido_A0AB:
	defb 0ebh	; a0ab

; ----------------------------------------------------------------------
; DATOS leido_A0AC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa0ac..0xa0ad  (1 bytes)
DATA_leido_A0AC:
	defb 031h	; a0ac

; ----------------------------------------------------------------------
; DATOS leido_A0AD: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0ad..0xa0ae  (1 bytes)
DATA_leido_A0AD:
	defb 032h	; a0ad

; ----------------------------------------------------------------------
; DATOS leido_A0AE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0ae..0xa0af  (1 bytes)
DATA_leido_A0AE:
	defb 0f2h	; a0ae

; ----------------------------------------------------------------------
; DATOS leido_A0AF: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa0af..0xa0b0  (1 bytes)
DATA_leido_A0AF:
	defb 020h	; a0af

; ----------------------------------------------------------------------
; DATOS leido_A0B0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0b0..0xa0b1  (1 bytes)
DATA_leido_A0B0:
	defb 0f9h	; a0b0

; ----------------------------------------------------------------------
; DATOS leido_A0B1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa0b1..0xa0b3  (2 bytes)
DATA_leido_A0B1:
	defb 042h,0a2h	; a0b1

; ----------------------------------------------------------------------
; DATOS leido_A0B3: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa0b3..0xa0b5  (2 bytes)
DATA_leido_A0B3:
	defb 0bbh,0f2h	; a0b3

; ----------------------------------------------------------------------
; DATOS leido_A0B5: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa0b5..0xa0b6  (1 bytes)
DATA_leido_A0B5:
	defb 010h	; a0b5

; ----------------------------------------------------------------------
; DATOS leido_A0B6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0b6..0xa0b7  (1 bytes)
DATA_leido_A0B6:
	defb 0f1h	; a0b6

; ----------------------------------------------------------------------
; DATOS leido_A0B7: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa0b7..0xa0b8  (1 bytes)
DATA_leido_A0B7:
	defb 063h	; a0b7

; ----------------------------------------------------------------------
; DATOS leido_A0B8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0b8..0xa0b9  (1 bytes)
DATA_leido_A0B8:
	defb 0dbh	; a0b8

; ----------------------------------------------------------------------
; DATOS leido_A0B9: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa0b9..0xa0ba  (1 bytes)
DATA_leido_A0B9:
	defb 003h	; a0b9

; ----------------------------------------------------------------------
; DATOS leido_A0BA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0ba..0xa0bb  (1 bytes)
DATA_leido_A0BA:
	defb 0eah	; a0ba

; ----------------------------------------------------------------------
; DATOS leido_A0BB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa0bb..0xa0bc  (1 bytes)
DATA_leido_A0BB:
	defb 00ah	; a0bb

; ----------------------------------------------------------------------
; DATOS leido_A0BC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0bc..0xa0bd  (1 bytes)
DATA_leido_A0BC:
	defb 0ebh	; a0bc

; ----------------------------------------------------------------------
; DATOS leido_A0BD: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa0bd..0xa0be  (1 bytes)
DATA_leido_A0BD:
	defb 009h	; a0bd

; ----------------------------------------------------------------------
; DATOS leido_A0BE: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0be..0xa0bf  (1 bytes)
DATA_leido_A0BE:
	defb 043h	; a0be

; ----------------------------------------------------------------------
; DATOS leido_A0BF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0bf..0xa0c0  (1 bytes)
DATA_leido_A0BF:
	defb 0f9h	; a0bf

; ----------------------------------------------------------------------
; DATOS leido_A0C0: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa0c0..0xa0c2  (2 bytes)
DATA_leido_A0C0:
	defb 05ch,0a2h	; a0c0

; ----------------------------------------------------------------------
; DATOS leido_A0C2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0c2..0xa0c3  (1 bytes)
DATA_leido_A0C2:
	defb 0f8h	; a0c2

; ----------------------------------------------------------------------
; DATOS leido_A0C3: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa0c3..0xa0c4  (1 bytes)
DATA_leido_A0C3:
	defb 017h	; a0c3

; ----------------------------------------------------------------------
; DATOS leido_A0C4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0c4..0xa0c5  (1 bytes)
DATA_leido_A0C4:
	defb 0ebh	; a0c4

; ----------------------------------------------------------------------
; DATOS leido_A0C5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa0c5..0xa0c6  (1 bytes)
DATA_leido_A0C5:
	defb 028h	; a0c5

; ----------------------------------------------------------------------
; DATOS leido_A0C6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0c6..0xa0c7  (1 bytes)
DATA_leido_A0C6:
	defb 070h	; a0c6

; ----------------------------------------------------------------------
; DATOS leido_A0C7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0c7..0xa0c8  (1 bytes)
DATA_leido_A0C7:
	defb 0eah	; a0c7

; ----------------------------------------------------------------------
; DATOS leido_A0C8: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa0c8..0xa0c9  (1 bytes)
DATA_leido_A0C8:
	defb 00ah	; a0c8

; ----------------------------------------------------------------------
; DATOS leido_A0C9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0c9..0xa0ca  (1 bytes)
DATA_leido_A0C9:
	defb 0f9h	; a0c9

; ----------------------------------------------------------------------
; DATOS leido_A0CA: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa0ca..0xa0cc  (2 bytes)
DATA_leido_A0CA:
	defb 073h,0a2h	; a0ca

; ----------------------------------------------------------------------
; DATOS leido_A0CC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0cc..0xa0cd  (1 bytes)
DATA_leido_A0CC:
	defb 0ebh	; a0cc

; ----------------------------------------------------------------------
; DATOS leido_A0CD: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa0cd..0xa0ce  (1 bytes)
DATA_leido_A0CD:
	defb 009h	; a0cd

; ----------------------------------------------------------------------
; DATOS leido_A0CE: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0ce..0xa0cf  (1 bytes)
DATA_leido_A0CE:
	defb 063h	; a0ce

; ----------------------------------------------------------------------
; DATOS leido_A0CF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0cf..0xa0d0  (1 bytes)
DATA_leido_A0CF:
	defb 0f8h	; a0cf

; ----------------------------------------------------------------------
; DATOS leido_A0D0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa0d0..0xa0d1  (1 bytes)
DATA_leido_A0D0:
	defb 00bh	; a0d0

; ----------------------------------------------------------------------
; DATOS leido_A0D1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0d1..0xa0d2  (1 bytes)
DATA_leido_A0D1:
	defb 0eah	; a0d1

; ----------------------------------------------------------------------
; DATOS leido_A0D2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa0d2..0xa0d3  (1 bytes)
DATA_leido_A0D2:
	defb 00ah	; a0d2

; ----------------------------------------------------------------------
; DATOS leido_A0D3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0d3..0xa0d4  (1 bytes)
DATA_leido_A0D3:
	defb 0ebh	; a0d3

; ----------------------------------------------------------------------
; DATOS leido_A0D4: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa0d4..0xa0d5  (1 bytes)
DATA_leido_A0D4:
	defb 009h	; a0d4

; ----------------------------------------------------------------------
; DATOS leido_A0D5: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0d5..0xa0d6  (1 bytes)
DATA_leido_A0D5:
	defb 043h	; a0d5

; ----------------------------------------------------------------------
; DATOS leido_A0D6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0d6..0xa0d7  (1 bytes)
DATA_leido_A0D6:
	defb 0f9h	; a0d6

; ----------------------------------------------------------------------
; DATOS leido_A0D7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa0d7..0xa0d9  (2 bytes)
DATA_leido_A0D7:
	defb 05ch,0a2h	; a0d7

; ----------------------------------------------------------------------
; DATOS leido_A0D9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0d9..0xa0da  (1 bytes)
DATA_leido_A0D9:
	defb 0f8h	; a0d9

; ----------------------------------------------------------------------
; DATOS leido_A0DA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa0da..0xa0db  (1 bytes)
DATA_leido_A0DA:
	defb 017h	; a0da

; ----------------------------------------------------------------------
; DATOS leido_A0DB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0db..0xa0dc  (1 bytes)
DATA_leido_A0DB:
	defb 0ebh	; a0db

; ----------------------------------------------------------------------
; DATOS leido_A0DC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa0dc..0xa0dd  (1 bytes)
DATA_leido_A0DC:
	defb 028h	; a0dc

; ----------------------------------------------------------------------
; DATOS leido_A0DD: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0dd..0xa0de  (1 bytes)
DATA_leido_A0DD:
	defb 070h	; a0dd

; ----------------------------------------------------------------------
; DATOS leido_A0DE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0de..0xa0df  (1 bytes)
DATA_leido_A0DE:
	defb 0eah	; a0de

; ----------------------------------------------------------------------
; DATOS leido_A0DF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa0df..0xa0e0  (1 bytes)
DATA_leido_A0DF:
	defb 00ah	; a0df

; ----------------------------------------------------------------------
; DATOS leido_A0E0: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa0e0..0xa0e7  (7 bytes)
DATA_leido_A0E0:
	defb 0d1h,005h,0d2h,082h,0d1h,002h,0f8h	; a0e0

; ----------------------------------------------------------------------
; DATOS leido_A0E7: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa0e7..0xa0e8  (1 bytes)
DATA_leido_A0E7:
	defb 00ah	; a0e7

; ----------------------------------------------------------------------
; DATOS leido_A0E8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0e8..0xa0e9  (1 bytes)
DATA_leido_A0E8:
	defb 0eah	; a0e8

; ----------------------------------------------------------------------
; DATOS leido_A0E9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa0e9..0xa0ea  (1 bytes)
DATA_leido_A0E9:
	defb 008h	; a0e9

; ----------------------------------------------------------------------
; DATOS leido_A0EA: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa0ea..0xa0f5  (11 bytes)
DATA_leido_A0EA:
	defb 0d0h,020h,0d1h,070h,020h,0d0h,000h,0d1h,050h,000h,0e9h	; a0ea  . .p ...P..

; ----------------------------------------------------------------------
; DATOS leido_A0F5: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa0f5..0xa0f6  (1 bytes)
DATA_leido_A0F5:
	defb 001h	; a0f5

; ----------------------------------------------------------------------
; DATOS leido_A0F6: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa0f6..0xa0f8  (2 bytes)
DATA_leido_A0F6:
	defb 0a2h,0f9h	; a0f6

; ----------------------------------------------------------------------
; DATOS leido_A0F8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa0f8..0xa0fa  (2 bytes)
DATA_leido_A0F8:
	defb 080h,0a2h	; a0f8

; ----------------------------------------------------------------------
; DATOS leido_A0FA: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa0fa..0xa0fc  (2 bytes)
DATA_leido_A0FA:
	defb 013h,0fdh	; a0fa

; ----------------------------------------------------------------------
; DATOS leido_A0FC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa0fc..0xa0fe  (2 bytes)
DATA_leido_A0FC:
	defb 084h,0a0h	; a0fc

; ----------------------------------------------------------------------
; DATOS leido_A0FE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0fe..0xa0ff  (1 bytes)
DATA_leido_A0FE:
	defb 0feh	; a0fe

; ----------------------------------------------------------------------
; DATOS leido_A0FF: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa0ff..0xa100  (1 bytes)
DATA_leido_A0FF:
	defb 001h	; a0ff

; ----------------------------------------------------------------------
; DATOS leido_A100: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa100..0xa101  (1 bytes)
DATA_leido_A100:
	defb 0e9h	; a100

; ----------------------------------------------------------------------
; DATOS leido_A101: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa101..0xa102  (1 bytes)
DATA_leido_A101:
	defb 007h	; a101

; ----------------------------------------------------------------------
; DATOS leido_A102: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa102..0xa103  (1 bytes)
DATA_leido_A102:
	defb 0dbh	; a102

; ----------------------------------------------------------------------
; DATOS leido_A103: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa103..0xa104  (1 bytes)
DATA_leido_A103:
	defb 002h	; a103

; ----------------------------------------------------------------------
; DATOS leido_A104: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa104..0xa105  (1 bytes)
DATA_leido_A104:
	defb 0f1h	; a104

; ----------------------------------------------------------------------
; DATOS leido_A105: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa105..0xa106  (1 bytes)
DATA_leido_A105:
	defb 054h	; a105

; ----------------------------------------------------------------------
; DATOS leido_A106: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa106..0xa107  (1 bytes)
DATA_leido_A106:
	defb 0f2h	; a106

; ----------------------------------------------------------------------
; DATOS leido_A107: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa107..0xa108  (1 bytes)
DATA_leido_A107:
	defb 009h	; a107

; ----------------------------------------------------------------------
; DATOS leido_A108: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa108..0xa109  (1 bytes)
DATA_leido_A108:
	defb 0f8h	; a108

; ----------------------------------------------------------------------
; DATOS leido_A109: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa109..0xa10a  (1 bytes)
DATA_leido_A109:
	defb 00bh	; a109

; ----------------------------------------------------------------------
; DATOS leido_A10A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa10a..0xa10b  (1 bytes)
DATA_leido_A10A:
	defb 0eah	; a10a

; ----------------------------------------------------------------------
; DATOS leido_A10B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa10b..0xa10c  (1 bytes)
DATA_leido_A10B:
	defb 00ah	; a10b

; ----------------------------------------------------------------------
; DATOS leido_A10C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa10c..0xa10d  (1 bytes)
DATA_leido_A10C:
	defb 0ebh	; a10c

; ----------------------------------------------------------------------
; DATOS leido_A10D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa10d..0xa10e  (1 bytes)
DATA_leido_A10D:
	defb 031h	; a10d

; ----------------------------------------------------------------------
; DATOS leido_A10E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa10e..0xa10f  (1 bytes)
DATA_leido_A10E:
	defb 030h	; a10e

; ----------------------------------------------------------------------
; DATOS leido_A10F: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xa10f..0xa120  (17 bytes)
DATA_leido_A10F:
	defb 0d3h,070h,0d2h,070h,0d3h,070h,0d2h,008h,0d3h,070h,0d2h,000h,0d3h,070h,0d2h,008h	; a10f  .p.p.p...p...p..
	defb 0fbh	; a11f

; ----------------------------------------------------------------------
; DATOS leido_A120: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa120..0xa123  (3 bytes)
DATA_leido_A120:
	defb 002h,017h,0a1h	; a120

; ----------------------------------------------------------------------
; DATOS leido_A123: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa123..0xa124  (1 bytes)
DATA_leido_A123:
	defb 0f8h	; a123

; ----------------------------------------------------------------------
; DATOS leido_A124: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa124..0xa125  (1 bytes)
DATA_leido_A124:
	defb 059h	; a124

; ----------------------------------------------------------------------
; DATOS leido_A125: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa125..0xa126  (1 bytes)
DATA_leido_A125:
	defb 0eah	; a125

; ----------------------------------------------------------------------
; DATOS leido_A126: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa126..0xa127  (1 bytes)
DATA_leido_A126:
	defb 009h	; a126

; ----------------------------------------------------------------------
; DATOS leido_A127: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa127..0xa128  (1 bytes)
DATA_leido_A127:
	defb 0ebh	; a127

; ----------------------------------------------------------------------
; DATOS leido_A128: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa128..0xa129  (1 bytes)
DATA_leido_A128:
	defb 008h	; a128

; ----------------------------------------------------------------------
; DATOS leido_A129: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa129..0xa12a  (1 bytes)
DATA_leido_A129:
	defb 078h	; a129

; ----------------------------------------------------------------------
; DATOS leido_A12A: 20 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (20 bytes)
;   0xa12a..0xa13e  (20 bytes)
DATA_leido_A12A:
	defb 0d4h,070h,0d3h,000h,070h,0d4h,0a0h,0d3h,030h,0a0h,030h,080h,0d2h,030h,0d3h,050h	; a12a  .p..p...0.0..0.P
	defb 0a0h,0d2h,050h,0fch	; a13a

; ----------------------------------------------------------------------
; DATOS leido_A13E: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa13e..0xa141  (3 bytes)
DATA_leido_A13E:
	defb 002h,008h,0a1h	; a13e

; ----------------------------------------------------------------------
; DATOS leido_A141: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa141..0xa142  (1 bytes)
DATA_leido_A141:
	defb 0f8h	; a141

; ----------------------------------------------------------------------
; DATOS leido_A142: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa142..0xa143  (1 bytes)
DATA_leido_A142:
	defb 00bh	; a142

; ----------------------------------------------------------------------
; DATOS leido_A143: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa143..0xa144  (1 bytes)
DATA_leido_A143:
	defb 0eah	; a143

; ----------------------------------------------------------------------
; DATOS leido_A144: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa144..0xa145  (1 bytes)
DATA_leido_A144:
	defb 00ah	; a144

; ----------------------------------------------------------------------
; DATOS leido_A145: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa145..0xa146  (1 bytes)
DATA_leido_A145:
	defb 0ebh	; a145

; ----------------------------------------------------------------------
; DATOS leido_A146: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa146..0xa147  (1 bytes)
DATA_leido_A146:
	defb 031h	; a146

; ----------------------------------------------------------------------
; DATOS leido_A147: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa147..0xa148  (1 bytes)
DATA_leido_A147:
	defb 032h	; a147

; ----------------------------------------------------------------------
; DATOS leido_A148: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa148..0xa149  (1 bytes)
DATA_leido_A148:
	defb 0f2h	; a148

; ----------------------------------------------------------------------
; DATOS leido_A149: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa149..0xa14a  (1 bytes)
DATA_leido_A149:
	defb 020h	; a149

; ----------------------------------------------------------------------
; DATOS leido_A14A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa14a..0xa14b  (1 bytes)
DATA_leido_A14A:
	defb 0f1h	; a14a

; ----------------------------------------------------------------------
; DATOS leido_A14B: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa14b..0xa14c  (1 bytes)
DATA_leido_A14B:
	defb 053h	; a14b

; ----------------------------------------------------------------------
; DATOS leido_A14C: 27 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (27 bytes)
;   0xa14c..0xa167  (27 bytes)
DATA_leido_A14C:
	defb 0d2h,00eh,0d3h,092h,0d2h,002h,092h,075h,0d2h,055h,055h,025h,038h,030h,030h,030h	; a14c  .......u.UU%8000
	defb 032h,002h,032h,082h,078h,070h,070h,070h,0d2h,07bh,0f2h	; a15c  2.2.xppp.{.

; ----------------------------------------------------------------------
; DATOS leido_A167: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa167..0xa168  (1 bytes)
DATA_leido_A167:
	defb 010h	; a167

; ----------------------------------------------------------------------
; DATOS leido_A168: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa168..0xa169  (1 bytes)
DATA_leido_A168:
	defb 0f1h	; a168

; ----------------------------------------------------------------------
; DATOS leido_A169: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa169..0xa16a  (1 bytes)
DATA_leido_A169:
	defb 063h	; a169

; ----------------------------------------------------------------------
; DATOS leido_A16A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa16a..0xa16b  (1 bytes)
DATA_leido_A16A:
	defb 0dbh	; a16a

; ----------------------------------------------------------------------
; DATOS leido_A16B: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa16b..0xa16c  (1 bytes)
DATA_leido_A16B:
	defb 003h	; a16b

; ----------------------------------------------------------------------
; DATOS leido_A16C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa16c..0xa16d  (1 bytes)
DATA_leido_A16C:
	defb 0eah	; a16c

; ----------------------------------------------------------------------
; DATOS leido_A16D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa16d..0xa16e  (1 bytes)
DATA_leido_A16D:
	defb 009h	; a16d

; ----------------------------------------------------------------------
; DATOS leido_A16E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa16e..0xa16f  (1 bytes)
DATA_leido_A16E:
	defb 0ebh	; a16e

; ----------------------------------------------------------------------
; DATOS leido_A16F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa16f..0xa170  (1 bytes)
DATA_leido_A16F:
	defb 009h	; a16f

; ----------------------------------------------------------------------
; DATOS leido_A170: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa170..0xa171  (1 bytes)
DATA_leido_A170:
	defb 043h	; a170

; ----------------------------------------------------------------------
; DATOS leido_A171: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa171..0xa172  (1 bytes)
DATA_leido_A171:
	defb 0f9h	; a171

; ----------------------------------------------------------------------
; DATOS leido_A172: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa172..0xa174  (2 bytes)
DATA_leido_A172:
	defb 090h,0a2h	; a172

; ----------------------------------------------------------------------
; DATOS leido_A174: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa174..0xa179  (5 bytes)
DATA_leido_A174:
	defb 073h,070h,070h,075h,0f8h	; a174

; ----------------------------------------------------------------------
; DATOS leido_A179: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa179..0xa17a  (1 bytes)
DATA_leido_A179:
	defb 00bh	; a179

; ----------------------------------------------------------------------
; DATOS leido_A17A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa17a..0xa17b  (1 bytes)
DATA_leido_A17A:
	defb 0eah	; a17a

; ----------------------------------------------------------------------
; DATOS leido_A17B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa17b..0xa17c  (1 bytes)
DATA_leido_A17B:
	defb 009h	; a17b

; ----------------------------------------------------------------------
; DATOS leido_A17C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa17c..0xa17d  (1 bytes)
DATA_leido_A17C:
	defb 0ebh	; a17c

; ----------------------------------------------------------------------
; DATOS leido_A17D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa17d..0xa17e  (1 bytes)
DATA_leido_A17D:
	defb 009h	; a17d

; ----------------------------------------------------------------------
; DATOS leido_A17E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa17e..0xa17f  (1 bytes)
DATA_leido_A17E:
	defb 043h	; a17e

; ----------------------------------------------------------------------
; DATOS leido_A17F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa17f..0xa180  (1 bytes)
DATA_leido_A17F:
	defb 0f9h	; a17f

; ----------------------------------------------------------------------
; DATOS leido_A180: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa180..0xa182  (2 bytes)
DATA_leido_A180:
	defb 090h,0a2h	; a180

; ----------------------------------------------------------------------
; DATOS leido_A182: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa182..0xa183  (1 bytes)
DATA_leido_A182:
	defb 0f8h	; a182

; ----------------------------------------------------------------------
; DATOS leido_A183: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa183..0xa184  (1 bytes)
DATA_leido_A183:
	defb 00ah	; a183

; ----------------------------------------------------------------------
; DATOS leido_A184: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa184..0xa185  (1 bytes)
DATA_leido_A184:
	defb 0eah	; a184

; ----------------------------------------------------------------------
; DATOS leido_A185: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa185..0xa186  (1 bytes)
DATA_leido_A185:
	defb 008h	; a185

; ----------------------------------------------------------------------
; DATOS leido_A186: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa186..0xa191  (11 bytes)
DATA_leido_A186:
	defb 0d1h,0b0h,020h,0d2h,0b0h,0d1h,090h,000h,0d2h,090h,0e9h	; a186  .. ........

; ----------------------------------------------------------------------
; DATOS leido_A191: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa191..0xa192  (1 bytes)
DATA_leido_A191:
	defb 001h	; a191

; ----------------------------------------------------------------------
; DATOS leido_A192: 21 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (21 bytes)
;   0xa192..0xa1a7  (21 bytes)
DATA_leido_A192:
	defb 0d1h,072h,0d2h,0a3h,072h,0d3h,0a3h,072h,0d4h,0a3h,0d1h,052h,0d2h,083h,052h,0d3h	; a192  .r..r..r...R..R.
	defb 083h,052h,0d4h,083h,0fdh	; a1a2

; ----------------------------------------------------------------------
; DATOS leido_A1A7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa1a7..0xa1a9  (2 bytes)
DATA_leido_A1A7:
	defb 0feh,0a0h	; a1a7

; ----------------------------------------------------------------------
; DATOS leido_A1A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1a9..0xa1aa  (1 bytes)
DATA_leido_A1A9:
	defb 0e9h	; a1a9

; ----------------------------------------------------------------------
; DATOS leido_A1AA: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa1aa..0xa1ab  (1 bytes)
DATA_leido_A1AA:
	defb 007h	; a1aa

; ----------------------------------------------------------------------
; DATOS leido_A1AB: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xa1ab..0xa1b8  (13 bytes)
DATA_leido_A1AB:
	defb 090h,000h,090h,030h,000h,010h,090h,000h,090h,030h,090h,090h,0fbh	; a1ab  ...0.....0...

; ----------------------------------------------------------------------
; DATOS leido_A1B8: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa1b8..0xa1bb  (3 bytes)
DATA_leido_A1B8:
	defb 003h,0a9h,0a1h	; a1b8

; ----------------------------------------------------------------------
; DATOS leido_A1BB: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa1bb..0xa1bf  (4 bytes)
DATA_leido_A1BB:
	defb 090h,000h,090h,0e9h	; a1bb

; ----------------------------------------------------------------------
; DATOS leido_A1BF: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa1bf..0xa1c0  (1 bytes)
DATA_leido_A1BF:
	defb 001h	; a1bf

; ----------------------------------------------------------------------
; DATOS leido_A1C0: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa1c0..0xa1c3  (3 bytes)
DATA_leido_A1C0:
	defb 032h,033h,0e9h	; a1c0

; ----------------------------------------------------------------------
; DATOS leido_A1C3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa1c3..0xa1c4  (1 bytes)
DATA_leido_A1C3:
	defb 007h	; a1c3

; ----------------------------------------------------------------------
; DATOS leido_A1C4: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (16 bytes)
;   0xa1c4..0xa1d4  (16 bytes)
DATA_leido_A1C4:
	defb 030h,030h,0fah,090h,000h,090h,030h,000h,000h,090h,000h,090h,030h,000h,090h,0fbh	; a1c4  00....0.....0...

; ----------------------------------------------------------------------
; DATOS leido_A1D4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa1d4..0xa1d7  (3 bytes)
DATA_leido_A1D4:
	defb 003h,0c7h,0a1h	; a1d4

; ----------------------------------------------------------------------
; DATOS leido_A1D7: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa1d7..0xa1e5  (14 bytes)
DATA_leido_A1D7:
	defb 0fah,0d4h,000h,0d3h,000h,0d4h,000h,0d3h,002h,0d4h,000h,0d3h,000h,0fbh	; a1d7  ..............

; ----------------------------------------------------------------------
; DATOS leido_A1E5: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa1e5..0xa1e8  (3 bytes)
DATA_leido_A1E5:
	defb 003h,0e0h,0a1h	; a1e5

; ----------------------------------------------------------------------
; DATOS leido_A1E8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa1e8..0xa1e9  (1 bytes)
DATA_leido_A1E8:
	defb 0fch	; a1e8

; ----------------------------------------------------------------------
; DATOS leido_A1E9: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa1e9..0xa1ec  (3 bytes)
DATA_leido_A1E9:
	defb 003h,0d8h,0a1h	; a1e9

; ----------------------------------------------------------------------
; DATOS leido_A1EC: 30 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (30 bytes)
;   0xa1ec..0xa20a  (30 bytes)
DATA_leido_A1EC:
	defb 0d4h,000h,0d3h,000h,0d4h,000h,030h,0d3h,030h,0d4h,030h,080h,0d3h,080h,0d4h,080h	; a1ec  ......0.0.0.....
	defb 0d5h,0a0h,0d4h,0a0h,0d5h,0a0h,0fah,0d4h,001h,000h,000h,000h,000h,0fbh	; a1fc  ..............

; ----------------------------------------------------------------------
; DATOS leido_A20A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa20a..0xa20d  (3 bytes)
DATA_leido_A20A:
	defb 002h,003h,0a2h	; a20a

; ----------------------------------------------------------------------
; DATOS leido_A20D: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa20d..0xa213  (6 bytes)
DATA_leido_A20D:
	defb 031h,030h,030h,030h,030h,0fbh	; a20d

; ----------------------------------------------------------------------
; DATOS leido_A213: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa213..0xa216  (3 bytes)
DATA_leido_A213:
	defb 002h,00dh,0a2h	; a213

; ----------------------------------------------------------------------
; DATOS leido_A216: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa216..0xa21c  (6 bytes)
DATA_leido_A216:
	defb 081h,080h,080h,080h,080h,0fbh	; a216

; ----------------------------------------------------------------------
; DATOS leido_A21C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa21c..0xa21f  (3 bytes)
DATA_leido_A21C:
	defb 002h,016h,0a2h	; a21c

; ----------------------------------------------------------------------
; DATOS leido_A21F: 70 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (70 bytes)
;   0xa21f..0xa265  (70 bytes)
DATA_leido_A21F:
	defb 0fah,0d1h,000h,0d2h,000h,0a8h,000h,0a0h,000h,098h,000h,090h,000h,078h,0fah,0d3h	; a21f  .............x..
	defb 000h,070h,0d2h,000h,0d3h,030h,0a0h,0d2h,030h,0d3h,080h,0d2h,030h,080h,0d3h,0a0h	; a22f  .p...0..0...0...
	defb 0d2h,050h,0fah,0d2h,05eh,002h,052h,0d1h,002h,005h,0d2h,0a5h,095h,055h,088h,080h	; a23f  .P..^.R......U..
	defb 080h,080h,082h,032h,082h,0d1h,002h,008h,000h,020h,000h,0d2h,0fah,0d1h,000h,0d2h	; a24f  ...2..... ......
	defb 070h,050h,000h,050h,070h,0fbh	; a25f

; ----------------------------------------------------------------------
; DATOS leido_A265: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa265..0xa268  (3 bytes)
DATA_leido_A265:
	defb 002h,05ch,0a2h	; a265

; ----------------------------------------------------------------------
; DATOS leido_A268: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa268..0xa26f  (7 bytes)
DATA_leido_A268:
	defb 0a0h,070h,050h,000h,050h,070h,0fbh	; a268

; ----------------------------------------------------------------------
; DATOS leido_A26F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa26f..0xa272  (3 bytes)
DATA_leido_A26F:
	defb 002h,068h,0a2h	; a26f

; ----------------------------------------------------------------------
; DATOS leido_A272: 40 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (40 bytes)
;   0xa272..0xa29a  (40 bytes)
DATA_leido_A272:
	defb 0fah,0d1h,005h,0d2h,082h,0d1h,002h,0d2h,0b3h,0b0h,0d1h,000h,025h,0fah,033h,0d2h	; a272  ............%.3.
	defb 0a2h,033h,0d3h,0a2h,033h,0d1h,082h,013h,0d2h,082h,013h,0d3h,082h,0fah,0d2h,070h	; a282  .3..3..........p
	defb 020h,000h,0d3h,070h,0d2h,000h,020h,0fbh	; a292   ..p.. .

; ----------------------------------------------------------------------
; DATOS leido_A29A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa29a..0xa29d  (3 bytes)
DATA_leido_A29A:
	defb 002h,090h,0a2h	; a29a

; ----------------------------------------------------------------------
; DATOS leido_A29D: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa29d..0xa2a6  (9 bytes)
DATA_leido_A29D:
	defb 050h,020h,000h,0d3h,070h,0d2h,000h,020h,0fbh	; a29d  P ..p.. .

; ----------------------------------------------------------------------
; DATOS leido_A2A6: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa2a6..0xa2a9  (3 bytes)
DATA_leido_A2A6:
	defb 002h,09dh,0a2h	; a2a6

; ----------------------------------------------------------------------
; DATOS leido_A2A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2a9..0xa2aa  (1 bytes)
DATA_leido_A2A9:
	defb 0f8h	; a2a9

; ----------------------------------------------------------------------
; DATOS leido_A2AA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa2aa..0xa2ab  (1 bytes)
DATA_leido_A2AA:
	defb 017h	; a2aa

; ----------------------------------------------------------------------
; DATOS leido_A2AB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2ab..0xa2ac  (1 bytes)
DATA_leido_A2AB:
	defb 0ebh	; a2ab

; ----------------------------------------------------------------------
; DATOS leido_A2AC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa2ac..0xa2ad  (1 bytes)
DATA_leido_A2AC:
	defb 028h	; a2ac

; ----------------------------------------------------------------------
; DATOS leido_A2AD: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa2ad..0xa2ae  (1 bytes)
DATA_leido_A2AD:
	defb 070h	; a2ad

; ----------------------------------------------------------------------
; DATOS leido_A2AE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2ae..0xa2af  (1 bytes)
DATA_leido_A2AE:
	defb 0eah	; a2ae

; ----------------------------------------------------------------------
; DATOS leido_A2AF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa2af..0xa2b0  (1 bytes)
DATA_leido_A2AF:
	defb 00ah	; a2af

; ----------------------------------------------------------------------
; DATOS leido_A2B0: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa2b0..0xa2bb  (11 bytes)
DATA_leido_A2B0:
	defb 085h,032h,082h,0fah,0d2h,001h,000h,000h,000h,000h,0fbh	; a2b0  .2.........

; ----------------------------------------------------------------------
; DATOS leido_A2BB: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa2bb..0xa2be  (3 bytes)
DATA_leido_A2BB:
	defb 002h,0b5h,0a2h	; a2bb

; ----------------------------------------------------------------------
; DATOS leido_A2BE: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa2be..0xa2c5  (7 bytes)
DATA_leido_A2BE:
	defb 0d3h,0a1h,0a0h,0a0h,0a0h,0a0h,0fbh	; a2be

; ----------------------------------------------------------------------
; DATOS leido_A2C5: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa2c5..0xa2c8  (3 bytes)
DATA_leido_A2C5:
	defb 002h,0bfh,0a2h	; a2c5

; ----------------------------------------------------------------------
; DATOS leido_A2C8: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa2c8..0xa2cf  (7 bytes)
DATA_leido_A2C8:
	defb 0d2h,031h,030h,030h,030h,030h,0fbh	; a2c8

; ----------------------------------------------------------------------
; DATOS leido_A2CF: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa2cf..0xa2d2  (3 bytes)
DATA_leido_A2CF:
	defb 002h,0c9h,0a2h	; a2cf

; ----------------------------------------------------------------------
; DATOS leido_A2D2: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa2d2..0xa2d4  (2 bytes)
DATA_leido_A2D2:
	defb 0fah,0feh	; a2d2

; ----------------------------------------------------------------------
; DATOS leido_A2D4: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa2d4..0xa2d5  (1 bytes)
DATA_leido_A2D4:
	defb 004h	; a2d4

; ----------------------------------------------------------------------
; DATOS leido_A2D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa2d5..0xa2d6  (1 bytes)
DATA_leido_A2D5:
	defb 0e9h	; a2d5

; ----------------------------------------------------------------------
; DATOS leido_A2D6: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa2d6..0xa2d7  (1 bytes)
DATA_leido_A2D6:
	defb 006h	; a2d6

; ----------------------------------------------------------------------
; DATOS leido_A2D7: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xa2d7..0xa2e4  (13 bytes)
DATA_leido_A2D7:
	defb 0d0h,091h,000h,090h,030h,091h,000h,091h,091h,031h,030h,030h,0fbh	; a2d7  ....0....100.

; ----------------------------------------------------------------------
; DATOS leido_A2E4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa2e4..0xa2e7  (3 bytes)
DATA_leido_A2E4:
	defb 004h,0d3h,0a2h	; a2e4

; ----------------------------------------------------------------------
; DATOS leido_A2E7: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa2e7..0xa2f2  (11 bytes)
DATA_leido_A2E7:
	defb 091h,000h,090h,030h,031h,030h,091h,091h,031h,011h,0fbh	; a2e7  ...010..1..

; ----------------------------------------------------------------------
; DATOS leido_A2F2: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa2f2..0xa2f5  (3 bytes)
DATA_leido_A2F2:
	defb 008h,0e7h,0a2h	; a2f2

; ----------------------------------------------------------------------
; DATOS leido_A2F5: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa2f5..0xa300  (11 bytes)
DATA_leido_A2F5:
	defb 091h,000h,090h,030h,001h,091h,000h,091h,031h,011h,0fbh	; a2f5  ...0....1..

; ----------------------------------------------------------------------
; DATOS leido_A300: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa300..0xa303  (3 bytes)
DATA_leido_A300:
	defb 007h,0f5h,0a2h	; a300

; ----------------------------------------------------------------------
; DATOS leido_A303: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xa303..0xa314  (17 bytes)
DATA_leido_A303:
	defb 091h,091h,032h,091h,090h,091h,031h,031h,090h,000h,010h,000h,090h,000h,030h,000h	; a303  ..2...11......0.
	defb 0fbh	; a313

; ----------------------------------------------------------------------
; DATOS leido_A314: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa314..0xa317  (3 bytes)
DATA_leido_A314:
	defb 007h,00bh,0a3h	; a314

; ----------------------------------------------------------------------
; DATOS leido_A317: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa317..0xa320  (9 bytes)
DATA_leido_A317:
	defb 090h,000h,010h,000h,030h,030h,030h,030h,0fdh	; a317  ....0000.

; ----------------------------------------------------------------------
; DATOS leido_A320: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa320..0xa322  (2 bytes)
DATA_leido_A320:
	defb 0d3h,0a2h	; a320

; ----------------------------------------------------------------------
; DATOS leido_A322: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa322..0xa323  (1 bytes)
DATA_leido_A322:
	defb 0feh	; a322

; ----------------------------------------------------------------------
; DATOS leido_A323: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa323..0xa324  (1 bytes)
DATA_leido_A323:
	defb 001h	; a323

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
	defb 030h	; a325

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
	defb 041h	; a327

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
	defb 006h	; a329

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
	defb 006h	; a32b

; ----------------------------------------------------------------------
; DATOS leido_A32C: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa32c..0xa32f  (3 bytes)
DATA_leido_A32C:
	defb 0ech,0c1h,0f9h	; a32c

; ----------------------------------------------------------------------
; DATOS leido_A32F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa32f..0xa331  (2 bytes)
DATA_leido_A32F:
	defb 005h,0a6h	; a32f

; ----------------------------------------------------------------------
; DATOS leido_A331: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa331..0xa332  (1 bytes)
DATA_leido_A331:
	defb 0eah	; a331

; ----------------------------------------------------------------------
; DATOS leido_A332: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa332..0xa333  (1 bytes)
DATA_leido_A332:
	defb 002h	; a332

; ----------------------------------------------------------------------
; DATOS leido_A333: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa333..0xa335  (2 bytes)
DATA_leido_A333:
	defb 090h,0f2h	; a333

; ----------------------------------------------------------------------
; DATOS leido_A335: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa335..0xa336  (1 bytes)
DATA_leido_A335:
	defb 020h	; a335

; ----------------------------------------------------------------------
; DATOS leido_A336: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa336..0xa337  (1 bytes)
DATA_leido_A336:
	defb 0f1h	; a336

; ----------------------------------------------------------------------
; DATOS leido_A337: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa337..0xa338  (1 bytes)
DATA_leido_A337:
	defb 042h	; a337

; ----------------------------------------------------------------------
; DATOS leido_A338: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa338..0xa339  (1 bytes)
DATA_leido_A338:
	defb 0eah	; a338

; ----------------------------------------------------------------------
; DATOS leido_A339: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa339..0xa33a  (1 bytes)
DATA_leido_A339:
	defb 009h	; a339

; ----------------------------------------------------------------------
; DATOS leido_A33A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa33a..0xa33b  (1 bytes)
DATA_leido_A33A:
	defb 0dbh	; a33a

; ----------------------------------------------------------------------
; DATOS leido_A33B: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa33b..0xa33c  (1 bytes)
DATA_leido_A33B:
	defb 005h	; a33b

; ----------------------------------------------------------------------
; DATOS leido_A33C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa33c..0xa33d  (1 bytes)
DATA_leido_A33C:
	defb 0ebh	; a33c

; ----------------------------------------------------------------------
; DATOS leido_A33D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa33d..0xa33e  (1 bytes)
DATA_leido_A33D:
	defb 007h	; a33d

; ----------------------------------------------------------------------
; DATOS leido_A33E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa33e..0xa33f  (1 bytes)
DATA_leido_A33E:
	defb 040h	; a33e

; ----------------------------------------------------------------------
; DATOS leido_A33F: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xa33f..0xa34b  (12 bytes)
DATA_leido_A33F:
	defb 0d2h,047h,027h,003h,023h,043h,093h,077h,055h,0d1h,00fh,0eah	; a33f  .G'.#C.wU...

; ----------------------------------------------------------------------
; DATOS leido_A34B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa34b..0xa34c  (1 bytes)
DATA_leido_A34B:
	defb 005h	; a34b

; ----------------------------------------------------------------------
; DATOS leido_A34C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa34c..0xa34e  (2 bytes)
DATA_leido_A34C:
	defb 001h,0eah	; a34c

; ----------------------------------------------------------------------
; DATOS leido_A34E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa34e..0xa34f  (1 bytes)
DATA_leido_A34E:
	defb 009h	; a34e

; ----------------------------------------------------------------------
; DATOS leido_A34F: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xa34f..0xa35b  (12 bytes)
DATA_leido_A34F:
	defb 0d2h,047h,027h,003h,023h,043h,093h,077h,055h,0d1h,02fh,0eah	; a34f  .G'.#C.wU./.

; ----------------------------------------------------------------------
; DATOS leido_A35B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa35b..0xa35c  (1 bytes)
DATA_leido_A35B:
	defb 005h	; a35b

; ----------------------------------------------------------------------
; DATOS leido_A35C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa35c..0xa35e  (2 bytes)
DATA_leido_A35C:
	defb 021h,0eah	; a35c

; ----------------------------------------------------------------------
; DATOS leido_A35E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa35e..0xa35f  (1 bytes)
DATA_leido_A35E:
	defb 008h	; a35e

; ----------------------------------------------------------------------
; DATOS leido_A35F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa35f..0xa360  (1 bytes)
DATA_leido_A35F:
	defb 0dbh	; a35f

; ----------------------------------------------------------------------
; DATOS leido_A360: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa360..0xa361  (1 bytes)
DATA_leido_A360:
	defb 004h	; a360

; ----------------------------------------------------------------------
; DATOS leido_A361: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa361..0xa362  (1 bytes)
DATA_leido_A361:
	defb 0ebh	; a361

; ----------------------------------------------------------------------
; DATOS leido_A362: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa362..0xa363  (1 bytes)
DATA_leido_A362:
	defb 001h	; a362

; ----------------------------------------------------------------------
; DATOS leido_A363: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa363..0xa364  (1 bytes)
DATA_leido_A363:
	defb 010h	; a363

; ----------------------------------------------------------------------
; DATOS leido_A364: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa364..0xa366  (2 bytes)
DATA_leido_A364:
	defb 0c1h,0f9h	; a364

; ----------------------------------------------------------------------
; DATOS leido_A366: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa366..0xa368  (2 bytes)
DATA_leido_A366:
	defb 0d4h,0a5h	; a366

; ----------------------------------------------------------------------
; DATOS leido_A368: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa368..0xa369  (1 bytes)
DATA_leido_A368:
	defb 0fbh	; a368

; ----------------------------------------------------------------------
; DATOS leido_A369: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa369..0xa36c  (3 bytes)
DATA_leido_A369:
	defb 004h,0e3h,0a5h	; a369

; ----------------------------------------------------------------------
; DATOS leido_A36C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa36c..0xa36d  (1 bytes)
DATA_leido_A36C:
	defb 0f9h	; a36c

; ----------------------------------------------------------------------
; DATOS leido_A36D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa36d..0xa36f  (2 bytes)
DATA_leido_A36D:
	defb 0d4h,0a5h	; a36d

; ----------------------------------------------------------------------
; DATOS leido_A36F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa36f..0xa370  (1 bytes)
DATA_leido_A36F:
	defb 0fbh	; a36f

; ----------------------------------------------------------------------
; DATOS leido_A370: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa370..0xa373  (3 bytes)
DATA_leido_A370:
	defb 003h,0e3h,0a5h	; a370

; ----------------------------------------------------------------------
; DATOS leido_A373: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa373..0xa374  (1 bytes)
DATA_leido_A373:
	defb 0eah	; a373

; ----------------------------------------------------------------------
; DATOS leido_A374: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa374..0xa375  (1 bytes)
DATA_leido_A374:
	defb 009h	; a374

; ----------------------------------------------------------------------
; DATOS leido_A375: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa375..0xa37e  (9 bytes)
DATA_leido_A375:
	defb 0d1h,040h,030h,020h,010h,000h,0d2h,0b0h,0f2h	; a375  .@0 .....

; ----------------------------------------------------------------------
; DATOS leido_A37E: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa37e..0xa37f  (1 bytes)
DATA_leido_A37E:
	defb 015h	; a37e

; ----------------------------------------------------------------------
; DATOS leido_A37F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa37f..0xa380  (1 bytes)
DATA_leido_A37F:
	defb 0f1h	; a37f

; ----------------------------------------------------------------------
; DATOS leido_A380: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa380..0xa381  (1 bytes)
DATA_leido_A380:
	defb 042h	; a380

; ----------------------------------------------------------------------
; DATOS leido_A381: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa381..0xa383  (2 bytes)
DATA_leido_A381:
	defb 0c1h,0eah	; a381

; ----------------------------------------------------------------------
; DATOS leido_A383: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa383..0xa384  (1 bytes)
DATA_leido_A383:
	defb 008h	; a383

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
	defb 005h	; a385

; ----------------------------------------------------------------------
; DATOS leido_A386: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa386..0xa387  (1 bytes)
DATA_leido_A386:
	defb 0f9h	; a386

; ----------------------------------------------------------------------
; DATOS leido_A387: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa387..0xa389  (2 bytes)
DATA_leido_A387:
	defb 0efh,0a5h	; a387

; ----------------------------------------------------------------------
; DATOS leido_A389: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa389..0xa38f  (6 bytes)
DATA_leido_A389:
	defb 022h,002h,051h,022h,002h,0fdh	; a389

; ----------------------------------------------------------------------
; DATOS leido_A38F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa38f..0xa391  (2 bytes)
DATA_leido_A38F:
	defb 022h,0a3h	; a38f

; ----------------------------------------------------------------------
; DATOS leido_A391: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa391..0xa392  (1 bytes)
DATA_leido_A391:
	defb 0feh	; a391

; ----------------------------------------------------------------------
; DATOS leido_A392: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa392..0xa393  (1 bytes)
DATA_leido_A392:
	defb 001h	; a392

; ----------------------------------------------------------------------
; DATOS leido_A393: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa393..0xa394  (1 bytes)
DATA_leido_A393:
	defb 0f8h	; a393

; ----------------------------------------------------------------------
; DATOS leido_A394: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa394..0xa395  (1 bytes)
DATA_leido_A394:
	defb 023h	; a394

; ----------------------------------------------------------------------
; DATOS leido_A395: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa395..0xa396  (1 bytes)
DATA_leido_A395:
	defb 0e9h	; a395

; ----------------------------------------------------------------------
; DATOS leido_A396: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa396..0xa397  (1 bytes)
DATA_leido_A396:
	defb 006h	; a396

; ----------------------------------------------------------------------
; DATOS leido_A397: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa397..0xa398  (1 bytes)
DATA_leido_A397:
	defb 0eah	; a397

; ----------------------------------------------------------------------
; DATOS leido_A398: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa398..0xa399  (1 bytes)
DATA_leido_A398:
	defb 00ch	; a398

; ----------------------------------------------------------------------
; DATOS leido_A399: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa399..0xa39a  (1 bytes)
DATA_leido_A399:
	defb 0dbh	; a399

; ----------------------------------------------------------------------
; DATOS leido_A39A: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa39a..0xa39b  (1 bytes)
DATA_leido_A39A:
	defb 002h	; a39a

; ----------------------------------------------------------------------
; DATOS leido_A39B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa39b..0xa39c  (1 bytes)
DATA_leido_A39B:
	defb 0ebh	; a39b

; ----------------------------------------------------------------------
; DATOS leido_A39C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa39c..0xa39d  (1 bytes)
DATA_leido_A39C:
	defb 009h	; a39c

; ----------------------------------------------------------------------
; DATOS leido_A39D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa39d..0xa39e  (1 bytes)
DATA_leido_A39D:
	defb 090h	; a39d

; ----------------------------------------------------------------------
; DATOS leido_A39E: 24 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (24 bytes)
;   0xa39e..0xa3b6  (24 bytes)
DATA_leido_A39E:
	defb 0d5h,090h,090h,0d4h,020h,070h,0d3h,000h,070h,020h,000h,0d4h,070h,0d3h,000h,0d4h	; a39e  .... p..p ..p...
	defb 070h,020h,000h,070h,000h,0d5h,070h,0fbh	; a3ae  p .p..p.

; ----------------------------------------------------------------------
; DATOS leido_A3B6: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa3b6..0xa3b9  (3 bytes)
DATA_leido_A3B6:
	defb 004h,09fh,0a3h	; a3b6

; ----------------------------------------------------------------------
; DATOS leido_A3B9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3b9..0xa3ba  (1 bytes)
DATA_leido_A3B9:
	defb 0f8h	; a3b9

; ----------------------------------------------------------------------
; DATOS leido_A3BA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa3ba..0xa3bb  (1 bytes)
DATA_leido_A3BA:
	defb 028h	; a3ba

; ----------------------------------------------------------------------
; DATOS leido_A3BB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3bb..0xa3bc  (1 bytes)
DATA_leido_A3BB:
	defb 0eah	; a3bb

; ----------------------------------------------------------------------
; DATOS leido_A3BC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa3bc..0xa3bd  (1 bytes)
DATA_leido_A3BC:
	defb 008h	; a3bc

; ----------------------------------------------------------------------
; DATOS leido_A3BD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3bd..0xa3be  (1 bytes)
DATA_leido_A3BD:
	defb 0dbh	; a3bd

; ----------------------------------------------------------------------
; DATOS leido_A3BE: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa3be..0xa3bf  (1 bytes)
DATA_leido_A3BE:
	defb 003h	; a3be

; ----------------------------------------------------------------------
; DATOS leido_A3BF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3bf..0xa3c0  (1 bytes)
DATA_leido_A3BF:
	defb 0ebh	; a3bf

; ----------------------------------------------------------------------
; DATOS leido_A3C0: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa3c0..0xa3c1  (1 bytes)
DATA_leido_A3C0:
	defb 009h	; a3c0

; ----------------------------------------------------------------------
; DATOS leido_A3C1: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa3c1..0xa3c2  (1 bytes)
DATA_leido_A3C1:
	defb 0b1h	; a3c1

; ----------------------------------------------------------------------
; DATOS leido_A3C2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3c2..0xa3c3  (1 bytes)
DATA_leido_A3C2:
	defb 0f9h	; a3c2

; ----------------------------------------------------------------------
; DATOS leido_A3C3: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa3c3..0xa3c5  (2 bytes)
DATA_leido_A3C3:
	defb 0b7h,0a5h	; a3c3

; ----------------------------------------------------------------------
; DATOS leido_A3C5: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa3c5..0xa3cd  (8 bytes)
DATA_leido_A3C5:
	defb 0d5h,080h,080h,0d4h,080h,0d5h,080h,0fbh	; a3c5  ........

; ----------------------------------------------------------------------
; DATOS leido_A3CD: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa3cd..0xa3d0  (3 bytes)
DATA_leido_A3CD:
	defb 008h,0c5h,0a3h	; a3cd

; ----------------------------------------------------------------------
; DATOS leido_A3D0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3d0..0xa3d1  (1 bytes)
DATA_leido_A3D0:
	defb 0f9h	; a3d0

; ----------------------------------------------------------------------
; DATOS leido_A3D1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa3d1..0xa3d3  (2 bytes)
DATA_leido_A3D1:
	defb 0b7h,0a5h	; a3d1

; ----------------------------------------------------------------------
; DATOS leido_A3D3: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa3d3..0xa3db  (8 bytes)
DATA_leido_A3D3:
	defb 0d5h,0a0h,0a0h,0d4h,0a0h,0d5h,0a0h,0fbh	; a3d3  ........

; ----------------------------------------------------------------------
; DATOS leido_A3DB: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa3db..0xa3de  (3 bytes)
DATA_leido_A3DB:
	defb 008h,0d3h,0a3h	; a3db

; ----------------------------------------------------------------------
; DATOS leido_A3DE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3de..0xa3df  (1 bytes)
DATA_leido_A3DE:
	defb 0f8h	; a3de

; ----------------------------------------------------------------------
; DATOS leido_A3DF: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa3df..0xa3e0  (1 bytes)
DATA_leido_A3DF:
	defb 023h	; a3df

; ----------------------------------------------------------------------
; DATOS leido_A3E0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3e0..0xa3e1  (1 bytes)
DATA_leido_A3E0:
	defb 0eah	; a3e0

; ----------------------------------------------------------------------
; DATOS leido_A3E1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa3e1..0xa3e2  (1 bytes)
DATA_leido_A3E1:
	defb 00ch	; a3e1

; ----------------------------------------------------------------------
; DATOS leido_A3E2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa3e2..0xa3e3  (1 bytes)
DATA_leido_A3E2:
	defb 0ebh	; a3e2

; ----------------------------------------------------------------------
; DATOS leido_A3E3: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa3e3..0xa3e4  (1 bytes)
DATA_leido_A3E3:
	defb 009h	; a3e3

; ----------------------------------------------------------------------
; DATOS leido_A3E4: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa3e4..0xa3e5  (1 bytes)
DATA_leido_A3E4:
	defb 090h	; a3e4

; ----------------------------------------------------------------------
; DATOS leido_A3E5: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa3e5..0xa3f3  (14 bytes)
DATA_leido_A3E5:
	defb 0d5h,091h,090h,090h,090h,0d4h,021h,072h,0d3h,001h,0d4h,071h,021h,0fbh	; a3e5  ......!r...q!.

; ----------------------------------------------------------------------
; DATOS leido_A3F3: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa3f3..0xa3f6  (3 bytes)
DATA_leido_A3F3:
	defb 002h,0e5h,0a3h	; a3f3

; ----------------------------------------------------------------------
; DATOS leido_A3F6: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa3f6..0xa404  (14 bytes)
DATA_leido_A3F6:
	defb 0d5h,081h,080h,080h,080h,0d4h,031h,082h,0d3h,001h,0d4h,081h,031h,0fbh	; a3f6  ......1.....1.

; ----------------------------------------------------------------------
; DATOS leido_A404: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa404..0xa407  (3 bytes)
DATA_leido_A404:
	defb 002h,0f6h,0a3h	; a404

; ----------------------------------------------------------------------
; DATOS leido_A407: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa407..0xa408  (1 bytes)
DATA_leido_A407:
	defb 0fch	; a407

; ----------------------------------------------------------------------
; DATOS leido_A408: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa408..0xa40b  (3 bytes)
DATA_leido_A408:
	defb 002h,0e5h,0a3h	; a408

; ----------------------------------------------------------------------
; DATOS leido_A40B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa40b..0xa40d  (2 bytes)
DATA_leido_A40B:
	defb 0dch,0f8h	; a40b

; ----------------------------------------------------------------------
; DATOS leido_A40D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa40d..0xa40e  (1 bytes)
DATA_leido_A40D:
	defb 028h	; a40d

; ----------------------------------------------------------------------
; DATOS leido_A40E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa40e..0xa40f  (1 bytes)
DATA_leido_A40E:
	defb 0eah	; a40e

; ----------------------------------------------------------------------
; DATOS leido_A40F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa40f..0xa410  (1 bytes)
DATA_leido_A40F:
	defb 008h	; a40f

; ----------------------------------------------------------------------
; DATOS leido_A410: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa410..0xa411  (1 bytes)
DATA_leido_A410:
	defb 0ebh	; a410

; ----------------------------------------------------------------------
; DATOS leido_A411: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa411..0xa412  (1 bytes)
DATA_leido_A411:
	defb 009h	; a411

; ----------------------------------------------------------------------
; DATOS leido_A412: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa412..0xa413  (1 bytes)
DATA_leido_A412:
	defb 0b1h	; a412

; ----------------------------------------------------------------------
; DATOS leido_A413: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa413..0xa418  (5 bytes)
DATA_leido_A413:
	defb 0d5h,050h,0d4h,000h,0fbh	; a413

; ----------------------------------------------------------------------
; DATOS leido_A418: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa418..0xa41b  (3 bytes)
DATA_leido_A418:
	defb 010h,013h,0a4h	; a418

; ----------------------------------------------------------------------
; DATOS leido_A41B: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa41b..0xa41f  (4 bytes)
DATA_leido_A41B:
	defb 0d5h,030h,0a0h,0fbh	; a41b

; ----------------------------------------------------------------------
; DATOS leido_A41F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa41f..0xa422  (3 bytes)
DATA_leido_A41F:
	defb 010h,01bh,0a4h	; a41f

; ----------------------------------------------------------------------
; DATOS leido_A422: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa422..0xa424  (2 bytes)
DATA_leido_A422:
	defb 0dch,0fdh	; a422

; ----------------------------------------------------------------------
; DATOS leido_A424: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa424..0xa426  (2 bytes)
DATA_leido_A424:
	defb 091h,0a3h	; a424

; ----------------------------------------------------------------------
; DATOS leido_A426: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa426..0xa427  (1 bytes)
DATA_leido_A426:
	defb 0feh	; a426

; ----------------------------------------------------------------------
; DATOS leido_A427: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa427..0xa428  (1 bytes)
DATA_leido_A427:
	defb 001h	; a427

; ----------------------------------------------------------------------
; DATOS leido_A428: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa428..0xa429  (1 bytes)
DATA_leido_A428:
	defb 0f8h	; a428

; ----------------------------------------------------------------------
; DATOS leido_A429: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa429..0xa42a  (1 bytes)
DATA_leido_A429:
	defb 01ch	; a429

; ----------------------------------------------------------------------
; DATOS leido_A42A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa42a..0xa42b  (1 bytes)
DATA_leido_A42A:
	defb 0e9h	; a42a

; ----------------------------------------------------------------------
; DATOS leido_A42B: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa42b..0xa42c  (1 bytes)
DATA_leido_A42B:
	defb 006h	; a42b

; ----------------------------------------------------------------------
; DATOS leido_A42C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa42c..0xa42d  (1 bytes)
DATA_leido_A42C:
	defb 0eah	; a42c

; ----------------------------------------------------------------------
; DATOS leido_A42D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa42d..0xa42e  (1 bytes)
DATA_leido_A42D:
	defb 009h	; a42d

; ----------------------------------------------------------------------
; DATOS leido_A42E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa42e..0xa42f  (1 bytes)
DATA_leido_A42E:
	defb 0ebh	; a42e

; ----------------------------------------------------------------------
; DATOS leido_A42F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa42f..0xa430  (1 bytes)
DATA_leido_A42F:
	defb 031h	; a42f

; ----------------------------------------------------------------------
; DATOS leido_A430: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa430..0xa431  (1 bytes)
DATA_leido_A430:
	defb 087h	; a430

; ----------------------------------------------------------------------
; DATOS leido_A431: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa431..0xa436  (5 bytes)
DATA_leido_A431:
	defb 0d3h,090h,0d2h,000h,0fbh	; a431

; ----------------------------------------------------------------------
; DATOS leido_A436: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa436..0xa439  (3 bytes)
DATA_leido_A436:
	defb 004h,026h,0a4h	; a436

; ----------------------------------------------------------------------
; DATOS leido_A439: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa439..0xa43e  (5 bytes)
DATA_leido_A439:
	defb 0d3h,090h,0d2h,020h,0fbh	; a439

; ----------------------------------------------------------------------
; DATOS leido_A43E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa43e..0xa441  (3 bytes)
DATA_leido_A43E:
	defb 004h,039h,0a4h	; a43e

; ----------------------------------------------------------------------
; DATOS leido_A441: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa441..0xa442  (1 bytes)
DATA_leido_A441:
	defb 0fch	; a441

; ----------------------------------------------------------------------
; DATOS leido_A442: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa442..0xa445  (3 bytes)
DATA_leido_A442:
	defb 004h,026h,0a4h	; a442

; ----------------------------------------------------------------------
; DATOS leido_A445: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa445..0xa446  (1 bytes)
DATA_leido_A445:
	defb 0f8h	; a445

; ----------------------------------------------------------------------
; DATOS leido_A446: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa446..0xa447  (1 bytes)
DATA_leido_A446:
	defb 01dh	; a446

; ----------------------------------------------------------------------
; DATOS leido_A447: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa447..0xa448  (1 bytes)
DATA_leido_A447:
	defb 0f2h	; a447

; ----------------------------------------------------------------------
; DATOS leido_A448: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa448..0xa449  (1 bytes)
DATA_leido_A448:
	defb 020h	; a448

; ----------------------------------------------------------------------
; DATOS leido_A449: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa449..0xa44a  (1 bytes)
DATA_leido_A449:
	defb 0f1h	; a449

; ----------------------------------------------------------------------
; DATOS leido_A44A: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa44a..0xa44b  (1 bytes)
DATA_leido_A44A:
	defb 042h	; a44a

; ----------------------------------------------------------------------
; DATOS leido_A44B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa44b..0xa44c  (1 bytes)
DATA_leido_A44B:
	defb 0dbh	; a44b

; ----------------------------------------------------------------------
; DATOS leido_A44C: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa44c..0xa44d  (1 bytes)
DATA_leido_A44C:
	defb 002h	; a44c

; ----------------------------------------------------------------------
; DATOS leido_A44D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa44d..0xa44e  (1 bytes)
DATA_leido_A44D:
	defb 0f9h	; a44d

; ----------------------------------------------------------------------
; DATOS leido_A44E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa44e..0xa450  (2 bytes)
DATA_leido_A44E:
	defb 0c3h,0a5h	; a44e

; ----------------------------------------------------------------------
; DATOS leido_A450: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa450..0xa451  (1 bytes)
DATA_leido_A450:
	defb 0ebh	; a450

; ----------------------------------------------------------------------
; DATOS leido_A451: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa451..0xa452  (1 bytes)
DATA_leido_A451:
	defb 005h	; a451

; ----------------------------------------------------------------------
; DATOS leido_A452: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa452..0xa453  (1 bytes)
DATA_leido_A452:
	defb 050h	; a452

; ----------------------------------------------------------------------
; DATOS leido_A453: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa453..0xa456  (3 bytes)
DATA_leido_A453:
	defb 0d1h,05fh,0eah	; a453

; ----------------------------------------------------------------------
; DATOS leido_A456: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa456..0xa457  (1 bytes)
DATA_leido_A456:
	defb 002h	; a456

; ----------------------------------------------------------------------
; DATOS leido_A457: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa457..0xa459  (2 bytes)
DATA_leido_A457:
	defb 051h,0f9h	; a457

; ----------------------------------------------------------------------
; DATOS leido_A459: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa459..0xa45b  (2 bytes)
DATA_leido_A459:
	defb 0c3h,0a5h	; a459

; ----------------------------------------------------------------------
; DATOS leido_A45B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa45b..0xa45c  (1 bytes)
DATA_leido_A45B:
	defb 0ebh	; a45b

; ----------------------------------------------------------------------
; DATOS leido_A45C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa45c..0xa45d  (1 bytes)
DATA_leido_A45C:
	defb 005h	; a45c

; ----------------------------------------------------------------------
; DATOS leido_A45D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa45d..0xa45e  (1 bytes)
DATA_leido_A45D:
	defb 050h	; a45d

; ----------------------------------------------------------------------
; DATOS leido_A45E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa45e..0xa461  (3 bytes)
DATA_leido_A45E:
	defb 0d1h,07fh,0eah	; a45e

; ----------------------------------------------------------------------
; DATOS leido_A461: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa461..0xa462  (1 bytes)
DATA_leido_A461:
	defb 002h	; a461

; ----------------------------------------------------------------------
; DATOS leido_A462: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa462..0xa464  (2 bytes)
DATA_leido_A462:
	defb 071h,0f8h	; a462

; ----------------------------------------------------------------------
; DATOS leido_A464: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa464..0xa465  (1 bytes)
DATA_leido_A464:
	defb 009h	; a464

; ----------------------------------------------------------------------
; DATOS leido_A465: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa465..0xa466  (1 bytes)
DATA_leido_A465:
	defb 0eah	; a465

; ----------------------------------------------------------------------
; DATOS leido_A466: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa466..0xa467  (1 bytes)
DATA_leido_A466:
	defb 009h	; a466

; ----------------------------------------------------------------------
; DATOS leido_A467: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa467..0xa468  (1 bytes)
DATA_leido_A467:
	defb 0dbh	; a467

; ----------------------------------------------------------------------
; DATOS leido_A468: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa468..0xa469  (1 bytes)
DATA_leido_A468:
	defb 004h	; a468

; ----------------------------------------------------------------------
; DATOS leido_A469: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa469..0xa46a  (1 bytes)
DATA_leido_A469:
	defb 0ebh	; a469

; ----------------------------------------------------------------------
; DATOS leido_A46A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa46a..0xa46b  (1 bytes)
DATA_leido_A46A:
	defb 008h	; a46a

; ----------------------------------------------------------------------
; DATOS leido_A46B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa46b..0xa46c  (1 bytes)
DATA_leido_A46B:
	defb 0f5h	; a46b

; ----------------------------------------------------------------------
; DATOS leido_A46C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa46c..0xa46d  (1 bytes)
DATA_leido_A46C:
	defb 0f9h	; a46c

; ----------------------------------------------------------------------
; DATOS leido_A46D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa46d..0xa46f  (2 bytes)
DATA_leido_A46D:
	defb 0d4h,0a5h	; a46d

; ----------------------------------------------------------------------
; DATOS leido_A46F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa46f..0xa470  (1 bytes)
DATA_leido_A46F:
	defb 0fbh	; a46f

; ----------------------------------------------------------------------
; DATOS leido_A470: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa470..0xa473  (3 bytes)
DATA_leido_A470:
	defb 004h,0e3h,0a5h	; a470

; ----------------------------------------------------------------------
; DATOS leido_A473: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa473..0xa474  (1 bytes)
DATA_leido_A473:
	defb 0f9h	; a473

; ----------------------------------------------------------------------
; DATOS leido_A474: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa474..0xa476  (2 bytes)
DATA_leido_A474:
	defb 0d4h,0a5h	; a474

; ----------------------------------------------------------------------
; DATOS leido_A476: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa476..0xa477  (1 bytes)
DATA_leido_A476:
	defb 0fbh	; a476

; ----------------------------------------------------------------------
; DATOS leido_A477: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa477..0xa47a  (3 bytes)
DATA_leido_A477:
	defb 003h,0e3h,0a5h	; a477

; ----------------------------------------------------------------------
; DATOS leido_A47A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa47a..0xa47b  (1 bytes)
DATA_leido_A47A:
	defb 0eah	; a47a

; ----------------------------------------------------------------------
; DATOS leido_A47B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa47b..0xa47c  (1 bytes)
DATA_leido_A47B:
	defb 007h	; a47b

; ----------------------------------------------------------------------
; DATOS leido_A47C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa47c..0xa47d  (1 bytes)
DATA_leido_A47C:
	defb 0f8h	; a47c

; ----------------------------------------------------------------------
; DATOS leido_A47D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa47d..0xa47e  (1 bytes)
DATA_leido_A47D:
	defb 00ah	; a47d

; ----------------------------------------------------------------------
; DATOS leido_A47E: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa47e..0xa489  (11 bytes)
DATA_leido_A47E:
	defb 0d1h,040h,030h,020h,010h,000h,0d2h,0b0h,0a0h,090h,0f2h	; a47e  .@0 .......

; ----------------------------------------------------------------------
; DATOS leido_A489: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa489..0xa48a  (1 bytes)
DATA_leido_A489:
	defb 015h	; a489

; ----------------------------------------------------------------------
; DATOS leido_A48A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa48a..0xa48b  (1 bytes)
DATA_leido_A48A:
	defb 0eah	; a48a

; ----------------------------------------------------------------------
; DATOS leido_A48B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa48b..0xa48c  (1 bytes)
DATA_leido_A48B:
	defb 009h	; a48b

; ----------------------------------------------------------------------
; DATOS leido_A48C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa48c..0xa48d  (1 bytes)
DATA_leido_A48C:
	defb 0dbh	; a48c

; ----------------------------------------------------------------------
; DATOS leido_A48D: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa48d..0xa48e  (1 bytes)
DATA_leido_A48D:
	defb 003h	; a48d

; ----------------------------------------------------------------------
; DATOS leido_A48E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa48e..0xa48f  (1 bytes)
DATA_leido_A48E:
	defb 0ebh	; a48e

; ----------------------------------------------------------------------
; DATOS leido_A48F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa48f..0xa490  (1 bytes)
DATA_leido_A48F:
	defb 011h	; a48f

; ----------------------------------------------------------------------
; DATOS leido_A490: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa490..0xa491  (1 bytes)
DATA_leido_A490:
	defb 070h	; a490

; ----------------------------------------------------------------------
; DATOS leido_A491: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa491..0xa492  (1 bytes)
DATA_leido_A491:
	defb 0f9h	; a491

; ----------------------------------------------------------------------
; DATOS leido_A492: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa492..0xa494  (2 bytes)
DATA_leido_A492:
	defb 0efh,0a5h	; a492

; ----------------------------------------------------------------------
; DATOS leido_A494: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa494..0xa495  (1 bytes)
DATA_leido_A494:
	defb 0fbh	; a494

; ----------------------------------------------------------------------
; DATOS leido_A495: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa495..0xa498  (3 bytes)
DATA_leido_A495:
	defb 002h,0fdh,0a5h	; a495

; ----------------------------------------------------------------------
; DATOS leido_A498: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa498..0xa49a  (2 bytes)
DATA_leido_A498:
	defb 0dch,0fdh	; a498

; ----------------------------------------------------------------------
; DATOS leido_A49A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa49a..0xa49c  (2 bytes)
DATA_leido_A49A:
	defb 026h,0a4h	; a49a

; ----------------------------------------------------------------------
; DATOS leido_A49C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa49c..0xa49d  (1 bytes)
DATA_leido_A49C:
	defb 0f9h	; a49c

; ----------------------------------------------------------------------
; DATOS leido_A49D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa49d..0xa49f  (2 bytes)
DATA_leido_A49D:
	defb 012h,0a6h	; a49d

; ----------------------------------------------------------------------
; DATOS leido_A49F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa49f..0xa4a0  (1 bytes)
DATA_leido_A49F:
	defb 0f9h	; a49f

; ----------------------------------------------------------------------
; DATOS leido_A4A0: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa4a0..0xa4a2  (2 bytes)
DATA_leido_A4A0:
	defb 005h,0a6h	; a4a0

; ----------------------------------------------------------------------
; DATOS leido_A4A2: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa4a2..0xa4a4  (2 bytes)
DATA_leido_A4A2:
	defb 0f0h,0eah	; a4a2

; ----------------------------------------------------------------------
; DATOS leido_A4A4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4a4..0xa4a5  (1 bytes)
DATA_leido_A4A4:
	defb 002h	; a4a4

; ----------------------------------------------------------------------
; DATOS leido_A4A5: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa4a5..0xa4a7  (2 bytes)
DATA_leido_A4A5:
	defb 092h,0f8h	; a4a5

; ----------------------------------------------------------------------
; DATOS leido_A4A7: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa4a7..0xa4a8  (1 bytes)
DATA_leido_A4A7:
	defb 01ch	; a4a7

; ----------------------------------------------------------------------
; DATOS leido_A4A8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4a8..0xa4a9  (1 bytes)
DATA_leido_A4A8:
	defb 0f2h	; a4a8

; ----------------------------------------------------------------------
; DATOS leido_A4A9: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa4a9..0xa4aa  (1 bytes)
DATA_leido_A4A9:
	defb 014h	; a4a9

; ----------------------------------------------------------------------
; DATOS leido_A4AA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4aa..0xa4ab  (1 bytes)
DATA_leido_A4AA:
	defb 0f1h	; a4aa

; ----------------------------------------------------------------------
; DATOS leido_A4AB: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa4ab..0xa4ac  (1 bytes)
DATA_leido_A4AB:
	defb 052h	; a4ab

; ----------------------------------------------------------------------
; DATOS leido_A4AC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4ac..0xa4ad  (1 bytes)
DATA_leido_A4AC:
	defb 0eah	; a4ac

; ----------------------------------------------------------------------
; DATOS leido_A4AD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4ad..0xa4ae  (1 bytes)
DATA_leido_A4AD:
	defb 009h	; a4ad

; ----------------------------------------------------------------------
; DATOS leido_A4AE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4ae..0xa4af  (1 bytes)
DATA_leido_A4AE:
	defb 0dbh	; a4ae

; ----------------------------------------------------------------------
; DATOS leido_A4AF: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa4af..0xa4b0  (1 bytes)
DATA_leido_A4AF:
	defb 002h	; a4af

; ----------------------------------------------------------------------
; DATOS leido_A4B0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4b0..0xa4b1  (1 bytes)
DATA_leido_A4B0:
	defb 0ebh	; a4b0

; ----------------------------------------------------------------------
; DATOS leido_A4B1: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa4b1..0xa4b2  (1 bytes)
DATA_leido_A4B1:
	defb 007h	; a4b1

; ----------------------------------------------------------------------
; DATOS leido_A4B2: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa4b2..0xa4b3  (1 bytes)
DATA_leido_A4B2:
	defb 070h	; a4b2

; ----------------------------------------------------------------------
; DATOS leido_A4B3: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xa4b3..0xa4bf  (12 bytes)
DATA_leido_A4B3:
	defb 0d1h,027h,007h,0d2h,0a3h,0d1h,003h,023h,073h,057h,035h,0ebh	; a4b3  .'.....#sW5.

; ----------------------------------------------------------------------
; DATOS leido_A4BF: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa4bf..0xa4c0  (1 bytes)
DATA_leido_A4BF:
	defb 005h	; a4bf

; ----------------------------------------------------------------------
; DATOS leido_A4C0: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa4c0..0xa4c1  (1 bytes)
DATA_leido_A4C0:
	defb 050h	; a4c0

; ----------------------------------------------------------------------
; DATOS leido_A4C1: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa4c1..0xa4c3  (2 bytes)
DATA_leido_A4C1:
	defb 0afh,0eah	; a4c1

; ----------------------------------------------------------------------
; DATOS leido_A4C3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4c3..0xa4c4  (1 bytes)
DATA_leido_A4C3:
	defb 002h	; a4c3

; ----------------------------------------------------------------------
; DATOS leido_A4C4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa4c4..0xa4c6  (2 bytes)
DATA_leido_A4C4:
	defb 0a1h,0eah	; a4c4

; ----------------------------------------------------------------------
; DATOS leido_A4C6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4c6..0xa4c7  (1 bytes)
DATA_leido_A4C6:
	defb 009h	; a4c6

; ----------------------------------------------------------------------
; DATOS leido_A4C7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4c7..0xa4c8  (1 bytes)
DATA_leido_A4C7:
	defb 0ebh	; a4c7

; ----------------------------------------------------------------------
; DATOS leido_A4C8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa4c8..0xa4c9  (1 bytes)
DATA_leido_A4C8:
	defb 007h	; a4c8

; ----------------------------------------------------------------------
; DATOS leido_A4C9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa4c9..0xa4ca  (1 bytes)
DATA_leido_A4C9:
	defb 070h	; a4c9

; ----------------------------------------------------------------------
; DATOS leido_A4CA: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa4ca..0xa4d5  (11 bytes)
DATA_leido_A4CA:
	defb 027h,007h,0d2h,0a3h,0d1h,003h,023h,073h,057h,035h,0ebh	; a4ca  '.....#sW5.

; ----------------------------------------------------------------------
; DATOS leido_A4D5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa4d5..0xa4d6  (1 bytes)
DATA_leido_A4D5:
	defb 005h	; a4d5

; ----------------------------------------------------------------------
; DATOS leido_A4D6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa4d6..0xa4d7  (1 bytes)
DATA_leido_A4D6:
	defb 050h	; a4d6

; ----------------------------------------------------------------------
; DATOS leido_A4D7: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa4d7..0xa4da  (3 bytes)
DATA_leido_A4D7:
	defb 0d0h,00fh,0eah	; a4d7

; ----------------------------------------------------------------------
; DATOS leido_A4DA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4da..0xa4db  (1 bytes)
DATA_leido_A4DA:
	defb 002h	; a4da

; ----------------------------------------------------------------------
; DATOS leido_A4DB: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa4db..0xa4de  (3 bytes)
DATA_leido_A4DB:
	defb 001h,0dch,0f8h	; a4db

; ----------------------------------------------------------------------
; DATOS leido_A4DE: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa4de..0xa4df  (1 bytes)
DATA_leido_A4DE:
	defb 016h	; a4de

; ----------------------------------------------------------------------
; DATOS leido_A4DF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4df..0xa4e0  (1 bytes)
DATA_leido_A4DF:
	defb 0f2h	; a4df

; ----------------------------------------------------------------------
; DATOS leido_A4E0: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa4e0..0xa4e1  (1 bytes)
DATA_leido_A4E0:
	defb 030h	; a4e0

; ----------------------------------------------------------------------
; DATOS leido_A4E1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4e1..0xa4e2  (1 bytes)
DATA_leido_A4E1:
	defb 0f1h	; a4e1

; ----------------------------------------------------------------------
; DATOS leido_A4E2: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa4e2..0xa4e3  (1 bytes)
DATA_leido_A4E2:
	defb 052h	; a4e2

; ----------------------------------------------------------------------
; DATOS leido_A4E3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4e3..0xa4e4  (1 bytes)
DATA_leido_A4E3:
	defb 0ebh	; a4e3

; ----------------------------------------------------------------------
; DATOS leido_A4E4: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa4e4..0xa4e5  (1 bytes)
DATA_leido_A4E4:
	defb 007h	; a4e4

; ----------------------------------------------------------------------
; DATOS leido_A4E5: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa4e5..0xa4e6  (1 bytes)
DATA_leido_A4E5:
	defb 040h	; a4e5

; ----------------------------------------------------------------------
; DATOS leido_A4E6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4e6..0xa4e7  (1 bytes)
DATA_leido_A4E6:
	defb 0f9h	; a4e6

; ----------------------------------------------------------------------
; DATOS leido_A4E7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa4e7..0xa4e9  (2 bytes)
DATA_leido_A4E7:
	defb 026h,0a6h	; a4e7

; ----------------------------------------------------------------------
; DATOS leido_A4E9: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa4e9..0xa4ec  (3 bytes)
DATA_leido_A4E9:
	defb 0d2h,0aeh,0eah	; a4e9

; ----------------------------------------------------------------------
; DATOS leido_A4EC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4ec..0xa4ed  (1 bytes)
DATA_leido_A4EC:
	defb 004h	; a4ec

; ----------------------------------------------------------------------
; DATOS leido_A4ED: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa4ed..0xa4ef  (2 bytes)
DATA_leido_A4ED:
	defb 0a0h,0f9h	; a4ed

; ----------------------------------------------------------------------
; DATOS leido_A4EF: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa4ef..0xa4f1  (2 bytes)
DATA_leido_A4EF:
	defb 026h,0a6h	; a4ef

; ----------------------------------------------------------------------
; DATOS leido_A4F1: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa4f1..0xa4f4  (3 bytes)
DATA_leido_A4F1:
	defb 0d1h,05eh,0e9h	; a4f1

; ----------------------------------------------------------------------
; DATOS leido_A4F4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa4f4..0xa4f5  (1 bytes)
DATA_leido_A4F4:
	defb 001h	; a4f4

; ----------------------------------------------------------------------
; DATOS leido_A4F5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa4f5..0xa4f6  (1 bytes)
DATA_leido_A4F5:
	defb 0eah	; a4f5

; ----------------------------------------------------------------------
; DATOS leido_A4F6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa4f6..0xa4f7  (1 bytes)
DATA_leido_A4F6:
	defb 003h	; a4f6

; ----------------------------------------------------------------------
; DATOS leido_A4F7: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa4f7..0xa505  (14 bytes)
DATA_leido_A4F7:
	defb 050h,040h,030h,020h,010h,000h,0d2h,0b0h,0a0h,090h,080h,070h,060h,0f8h	; a4f7  P@0 .......p`.

; ----------------------------------------------------------------------
; DATOS leido_A505: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa505..0xa506  (1 bytes)
DATA_leido_A505:
	defb 00bh	; a505

; ----------------------------------------------------------------------
; DATOS leido_A506: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa506..0xa507  (1 bytes)
DATA_leido_A506:
	defb 0f1h	; a506

; ----------------------------------------------------------------------
; DATOS leido_A507: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa507..0xa508  (1 bytes)
DATA_leido_A507:
	defb 053h	; a507

; ----------------------------------------------------------------------
; DATOS leido_A508: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa508..0xa509  (1 bytes)
DATA_leido_A508:
	defb 0e9h	; a508

; ----------------------------------------------------------------------
; DATOS leido_A509: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa509..0xa50a  (1 bytes)
DATA_leido_A509:
	defb 00ch	; a509

; ----------------------------------------------------------------------
; DATOS leido_A50A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa50a..0xa50b  (1 bytes)
DATA_leido_A50A:
	defb 0eah	; a50a

; ----------------------------------------------------------------------
; DATOS leido_A50B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa50b..0xa50c  (1 bytes)
DATA_leido_A50B:
	defb 008h	; a50b

; ----------------------------------------------------------------------
; DATOS leido_A50C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa50c..0xa50d  (1 bytes)
DATA_leido_A50C:
	defb 0d6h	; a50c

; ----------------------------------------------------------------------
; DATOS leido_A50D: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa50d..0xa50f  (2 bytes)
DATA_leido_A50D:
	defb 001h,001h	; a50d

; ----------------------------------------------------------------------
; DATOS leido_A50F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa50f..0xa510  (1 bytes)
DATA_leido_A50F:
	defb 0dbh	; a50f

; ----------------------------------------------------------------------
; DATOS leido_A510: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa510..0xa511  (1 bytes)
DATA_leido_A510:
	defb 003h	; a510

; ----------------------------------------------------------------------
; DATOS leido_A511: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa511..0xa512  (1 bytes)
DATA_leido_A511:
	defb 0ebh	; a511

; ----------------------------------------------------------------------
; DATOS leido_A512: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa512..0xa513  (1 bytes)
DATA_leido_A512:
	defb 031h	; a512

; ----------------------------------------------------------------------
; DATOS leido_A513: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa513..0xa514  (1 bytes)
DATA_leido_A513:
	defb 070h	; a513

; ----------------------------------------------------------------------
; DATOS leido_A514: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa514..0xa519  (5 bytes)
DATA_leido_A514:
	defb 0d2h,04fh,07fh,0d8h,0fdh	; a514

; ----------------------------------------------------------------------
; DATOS leido_A519: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa519..0xa51b  (2 bytes)
DATA_leido_A519:
	defb 09ch,0a4h	; a519

; ----------------------------------------------------------------------
; DATOS leido_A51B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa51b..0xa51c  (1 bytes)
DATA_leido_A51B:
	defb 0f9h	; a51b

; ----------------------------------------------------------------------
; DATOS leido_A51C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa51c..0xa51e  (2 bytes)
DATA_leido_A51C:
	defb 012h,0a6h	; a51c

; ----------------------------------------------------------------------
; DATOS leido_A51E: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa51e..0xa524  (6 bytes)
DATA_leido_A51E:
	defb 0d1h,04dh,020h,04eh,020h,0e9h	; a51e

; ----------------------------------------------------------------------
; DATOS leido_A524: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa524..0xa525  (1 bytes)
DATA_leido_A524:
	defb 00ch	; a524

; ----------------------------------------------------------------------
; DATOS leido_A525: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa525..0xa529  (4 bytes)
DATA_leido_A525:
	defb 04eh,0ech,0dch,0e9h	; a525

; ----------------------------------------------------------------------
; DATOS leido_A529: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa529..0xa52a  (1 bytes)
DATA_leido_A529:
	defb 006h	; a529

; ----------------------------------------------------------------------
; DATOS leido_A52A: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa52a..0xa52c  (2 bytes)
DATA_leido_A52A:
	defb 0f0h,0eah	; a52a

; ----------------------------------------------------------------------
; DATOS leido_A52C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa52c..0xa52d  (1 bytes)
DATA_leido_A52C:
	defb 002h	; a52c

; ----------------------------------------------------------------------
; DATOS leido_A52D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa52d..0xa52f  (2 bytes)
DATA_leido_A52D:
	defb 042h,0f8h	; a52d

; ----------------------------------------------------------------------
; DATOS leido_A52F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa52f..0xa530  (1 bytes)
DATA_leido_A52F:
	defb 01ch	; a52f

; ----------------------------------------------------------------------
; DATOS leido_A530: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa530..0xa531  (1 bytes)
DATA_leido_A530:
	defb 0eeh	; a530

; ----------------------------------------------------------------------
; DATOS leido_A531: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xa531..0xa532  (1 bytes)
DATA_leido_A531:
	defb 001h	; a531

; ----------------------------------------------------------------------
; DATOS leido_A532: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa532..0xa533  (1 bytes)
DATA_leido_A532:
	defb 0f2h	; a532

; ----------------------------------------------------------------------
; DATOS leido_A533: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa533..0xa534  (1 bytes)
DATA_leido_A533:
	defb 020h	; a533

; ----------------------------------------------------------------------
; DATOS leido_A534: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa534..0xa535  (1 bytes)
DATA_leido_A534:
	defb 0f1h	; a534

; ----------------------------------------------------------------------
; DATOS leido_A535: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa535..0xa536  (1 bytes)
DATA_leido_A535:
	defb 042h	; a535

; ----------------------------------------------------------------------
; DATOS leido_A536: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa536..0xa537  (1 bytes)
DATA_leido_A536:
	defb 0eah	; a536

; ----------------------------------------------------------------------
; DATOS leido_A537: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa537..0xa538  (1 bytes)
DATA_leido_A537:
	defb 004h	; a537

; ----------------------------------------------------------------------
; DATOS leido_A538: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa538..0xa539  (1 bytes)
DATA_leido_A538:
	defb 0dbh	; a538

; ----------------------------------------------------------------------
; DATOS leido_A539: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa539..0xa53a  (1 bytes)
DATA_leido_A539:
	defb 002h	; a539

; ----------------------------------------------------------------------
; DATOS leido_A53A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa53a..0xa53b  (1 bytes)
DATA_leido_A53A:
	defb 0ebh	; a53a

; ----------------------------------------------------------------------
; DATOS leido_A53B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa53b..0xa53c  (1 bytes)
DATA_leido_A53B:
	defb 007h	; a53b

; ----------------------------------------------------------------------
; DATOS leido_A53C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa53c..0xa53d  (1 bytes)
DATA_leido_A53C:
	defb 070h	; a53c

; ----------------------------------------------------------------------
; DATOS leido_A53D: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xa53d..0xa549  (12 bytes)
DATA_leido_A53D:
	defb 0d1h,02bh,007h,0d2h,0a3h,0d1h,003h,023h,073h,057h,031h,0eah	; a53d  .+.....#sW1.

; ----------------------------------------------------------------------
; DATOS leido_A549: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa549..0xa54a  (1 bytes)
DATA_leido_A549:
	defb 009h	; a549

; ----------------------------------------------------------------------
; DATOS leido_A54A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa54a..0xa54b  (1 bytes)
DATA_leido_A54A:
	defb 0ebh	; a54a

; ----------------------------------------------------------------------
; DATOS leido_A54B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa54b..0xa54c  (1 bytes)
DATA_leido_A54B:
	defb 005h	; a54b

; ----------------------------------------------------------------------
; DATOS leido_A54C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa54c..0xa54d  (1 bytes)
DATA_leido_A54C:
	defb 050h	; a54c

; ----------------------------------------------------------------------
; DATOS leido_A54D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa54d..0xa54f  (2 bytes)
DATA_leido_A54D:
	defb 00fh,0eah	; a54d

; ----------------------------------------------------------------------
; DATOS leido_A54F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa54f..0xa550  (1 bytes)
DATA_leido_A54F:
	defb 002h	; a54f

; ----------------------------------------------------------------------
; DATOS leido_A550: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa550..0xa552  (2 bytes)
DATA_leido_A550:
	defb 001h,0ebh	; a550

; ----------------------------------------------------------------------
; DATOS leido_A552: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa552..0xa553  (1 bytes)
DATA_leido_A552:
	defb 003h	; a552

; ----------------------------------------------------------------------
; DATOS leido_A553: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa553..0xa554  (1 bytes)
DATA_leido_A553:
	defb 070h	; a553

; ----------------------------------------------------------------------
; DATOS leido_A554: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa554..0xa555  (1 bytes)
DATA_leido_A554:
	defb 0eah	; a554

; ----------------------------------------------------------------------
; DATOS leido_A555: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa555..0xa556  (1 bytes)
DATA_leido_A555:
	defb 004h	; a555

; ----------------------------------------------------------------------
; DATOS leido_A556: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa556..0xa561  (11 bytes)
DATA_leido_A556:
	defb 02bh,007h,0d2h,0a3h,0d1h,003h,023h,073h,057h,031h,0eah	; a556  +.....#sW1.

; ----------------------------------------------------------------------
; DATOS leido_A561: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa561..0xa562  (1 bytes)
DATA_leido_A561:
	defb 009h	; a561

; ----------------------------------------------------------------------
; DATOS leido_A562: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa562..0xa563  (1 bytes)
DATA_leido_A562:
	defb 0ebh	; a562

; ----------------------------------------------------------------------
; DATOS leido_A563: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa563..0xa564  (1 bytes)
DATA_leido_A563:
	defb 005h	; a563

; ----------------------------------------------------------------------
; DATOS leido_A564: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa564..0xa565  (1 bytes)
DATA_leido_A564:
	defb 050h	; a564

; ----------------------------------------------------------------------
; DATOS leido_A565: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa565..0xa568  (3 bytes)
DATA_leido_A565:
	defb 0d1h,02fh,0eah	; a565

; ----------------------------------------------------------------------
; DATOS leido_A568: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa568..0xa569  (1 bytes)
DATA_leido_A568:
	defb 002h	; a568

; ----------------------------------------------------------------------
; DATOS leido_A569: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa569..0xa56c  (3 bytes)
DATA_leido_A569:
	defb 021h,0dch,0f8h	; a569

; ----------------------------------------------------------------------
; DATOS leido_A56C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa56c..0xa56d  (1 bytes)
DATA_leido_A56C:
	defb 016h	; a56c

; ----------------------------------------------------------------------
; DATOS leido_A56D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa56d..0xa56e  (1 bytes)
DATA_leido_A56D:
	defb 0f2h	; a56d

; ----------------------------------------------------------------------
; DATOS leido_A56E: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa56e..0xa56f  (1 bytes)
DATA_leido_A56E:
	defb 030h	; a56e

; ----------------------------------------------------------------------
; DATOS leido_A56F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa56f..0xa570  (1 bytes)
DATA_leido_A56F:
	defb 0f1h	; a56f

; ----------------------------------------------------------------------
; DATOS leido_A570: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa570..0xa571  (1 bytes)
DATA_leido_A570:
	defb 052h	; a570

; ----------------------------------------------------------------------
; DATOS leido_A571: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa571..0xa572  (1 bytes)
DATA_leido_A571:
	defb 0ebh	; a571

; ----------------------------------------------------------------------
; DATOS leido_A572: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa572..0xa573  (1 bytes)
DATA_leido_A572:
	defb 007h	; a572

; ----------------------------------------------------------------------
; DATOS leido_A573: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa573..0xa574  (1 bytes)
DATA_leido_A573:
	defb 040h	; a573

; ----------------------------------------------------------------------
; DATOS leido_A574: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa574..0xa575  (1 bytes)
DATA_leido_A574:
	defb 0f9h	; a574

; ----------------------------------------------------------------------
; DATOS leido_A575: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa575..0xa577  (2 bytes)
DATA_leido_A575:
	defb 03ah,0a6h	; a575

; ----------------------------------------------------------------------
; DATOS leido_A577: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa577..0xa579  (2 bytes)
DATA_leido_A577:
	defb 05eh,0eah	; a577

; ----------------------------------------------------------------------
; DATOS leido_A579: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa579..0xa57a  (1 bytes)
DATA_leido_A579:
	defb 004h	; a579

; ----------------------------------------------------------------------
; DATOS leido_A57A: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa57a..0xa57c  (2 bytes)
DATA_leido_A57A:
	defb 050h,0f9h	; a57a

; ----------------------------------------------------------------------
; DATOS leido_A57C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa57c..0xa57e  (2 bytes)
DATA_leido_A57C:
	defb 03ah,0a6h	; a57c

; ----------------------------------------------------------------------
; DATOS leido_A57E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa57e..0xa581  (3 bytes)
DATA_leido_A57E:
	defb 0d1h,00eh,0e9h	; a57e

; ----------------------------------------------------------------------
; DATOS leido_A581: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa581..0xa582  (1 bytes)
DATA_leido_A581:
	defb 001h	; a581

; ----------------------------------------------------------------------
; DATOS leido_A582: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa582..0xa583  (1 bytes)
DATA_leido_A582:
	defb 0eah	; a582

; ----------------------------------------------------------------------
; DATOS leido_A583: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa583..0xa584  (1 bytes)
DATA_leido_A583:
	defb 003h	; a583

; ----------------------------------------------------------------------
; DATOS leido_A584: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa584..0xa592  (14 bytes)
DATA_leido_A584:
	defb 0d2h,0b0h,0a0h,090h,080h,070h,060h,050h,040h,030h,020h,010h,000h,0f8h	; a584  .....p`P@0 ...

; ----------------------------------------------------------------------
; DATOS leido_A592: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa592..0xa593  (1 bytes)
DATA_leido_A592:
	defb 00bh	; a592

; ----------------------------------------------------------------------
; DATOS leido_A593: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa593..0xa594  (1 bytes)
DATA_leido_A593:
	defb 0f2h	; a593

; ----------------------------------------------------------------------
; DATOS leido_A594: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa594..0xa595  (1 bytes)
DATA_leido_A594:
	defb 014h	; a594

; ----------------------------------------------------------------------
; DATOS leido_A595: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa595..0xa596  (1 bytes)
DATA_leido_A595:
	defb 0f1h	; a595

; ----------------------------------------------------------------------
; DATOS leido_A596: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa596..0xa597  (1 bytes)
DATA_leido_A596:
	defb 043h	; a596

; ----------------------------------------------------------------------
; DATOS leido_A597: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa597..0xa598  (1 bytes)
DATA_leido_A597:
	defb 0e9h	; a597

; ----------------------------------------------------------------------
; DATOS leido_A598: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa598..0xa599  (1 bytes)
DATA_leido_A598:
	defb 006h	; a598

; ----------------------------------------------------------------------
; DATOS leido_A599: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa599..0xa59a  (1 bytes)
DATA_leido_A599:
	defb 0eah	; a599

; ----------------------------------------------------------------------
; DATOS leido_A59A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa59a..0xa59b  (1 bytes)
DATA_leido_A59A:
	defb 008h	; a59a

; ----------------------------------------------------------------------
; DATOS leido_A59B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa59b..0xa59c  (1 bytes)
DATA_leido_A59B:
	defb 0d6h	; a59b

; ----------------------------------------------------------------------
; DATOS leido_A59C: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa59c..0xa59e  (2 bytes)
DATA_leido_A59C:
	defb 001h,001h	; a59c

; ----------------------------------------------------------------------
; DATOS leido_A59E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa59e..0xa59f  (1 bytes)
DATA_leido_A59E:
	defb 0dbh	; a59e

; ----------------------------------------------------------------------
; DATOS leido_A59F: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa59f..0xa5a0  (1 bytes)
DATA_leido_A59F:
	defb 003h	; a59f

; ----------------------------------------------------------------------
; DATOS leido_A5A0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5a0..0xa5a1  (1 bytes)
DATA_leido_A5A0:
	defb 0ebh	; a5a0

; ----------------------------------------------------------------------
; DATOS leido_A5A1: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa5a1..0xa5a2  (1 bytes)
DATA_leido_A5A1:
	defb 030h	; a5a1

; ----------------------------------------------------------------------
; DATOS leido_A5A2: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa5a2..0xa5a3  (1 bytes)
DATA_leido_A5A2:
	defb 070h	; a5a2

; ----------------------------------------------------------------------
; DATOS leido_A5A3: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa5a3..0xa5a7  (4 bytes)
DATA_leido_A5A3:
	defb 0d2h,007h,07fh,0eah	; a5a3

; ----------------------------------------------------------------------
; DATOS leido_A5A7: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa5a7..0xa5a8  (1 bytes)
DATA_leido_A5A7:
	defb 006h	; a5a7

; ----------------------------------------------------------------------
; DATOS leido_A5A8: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa5a8..0xa5ab  (3 bytes)
DATA_leido_A5A8:
	defb 0d1h,027h,0eah	; a5a8

; ----------------------------------------------------------------------
; DATOS leido_A5AB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa5ab..0xa5ac  (1 bytes)
DATA_leido_A5AB:
	defb 008h	; a5ab

; ----------------------------------------------------------------------
; DATOS leido_A5AC: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa5ac..0xa5b0  (4 bytes)
DATA_leido_A5AC:
	defb 0d2h,037h,0afh,0eah	; a5ac

; ----------------------------------------------------------------------
; DATOS leido_A5B0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa5b0..0xa5b1  (1 bytes)
DATA_leido_A5B0:
	defb 006h	; a5b0

; ----------------------------------------------------------------------
; DATOS leido_A5B1: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa5b1..0xa5b5  (4 bytes)
DATA_leido_A5B1:
	defb 0d1h,057h,0d8h,0fdh	; a5b1

; ----------------------------------------------------------------------
; DATOS leido_A5B5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa5b5..0xa5b7  (2 bytes)
DATA_leido_A5B5:
	defb 01bh,0a5h	; a5b5

; ----------------------------------------------------------------------
; DATOS leido_A5B7: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa5b7..0xa5bf  (8 bytes)
DATA_leido_A5B7:
	defb 0d5h,090h,090h,0d4h,090h,0d5h,090h,0fbh	; a5b7  ........

; ----------------------------------------------------------------------
; DATOS leido_A5BF: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa5bf..0xa5c2  (3 bytes)
DATA_leido_A5BF:
	defb 008h,0b7h,0a5h	; a5bf

; ----------------------------------------------------------------------
; DATOS leido_A5C2: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa5c2..0xa5c4  (2 bytes)
DATA_leido_A5C2:
	defb 0fah,0eah	; a5c2

; ----------------------------------------------------------------------
; DATOS leido_A5C4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa5c4..0xa5c5  (1 bytes)
DATA_leido_A5C4:
	defb 007h	; a5c4

; ----------------------------------------------------------------------
; DATOS leido_A5C5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa5c5..0xa5c6  (1 bytes)
DATA_leido_A5C5:
	defb 0ebh	; a5c5

; ----------------------------------------------------------------------
; DATOS leido_A5C6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa5c6..0xa5c7  (1 bytes)
DATA_leido_A5C6:
	defb 007h	; a5c6

; ----------------------------------------------------------------------
; DATOS leido_A5C7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa5c7..0xa5c8  (1 bytes)
DATA_leido_A5C7:
	defb 070h	; a5c7

; ----------------------------------------------------------------------
; DATOS leido_A5C8: 24 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (24 bytes)
;   0xa5c8..0xa5e0  (24 bytes)
DATA_leido_A5C8:
	defb 0d2h,097h,077h,053h,073h,093h,0d1h,023h,007h,0d2h,0a5h,0fah,0d2h,090h,020h,040h	; a5c8  ..wSs..#...... @
	defb 070h,0d1h,000h,0d2h,020h,040h,070h,0fbh	; a5d8  p... @p.

; ----------------------------------------------------------------------
; DATOS leido_A5E0: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa5e0..0xa5e3  (3 bytes)
DATA_leido_A5E0:
	defb 004h,0d4h,0a5h	; a5e0

; ----------------------------------------------------------------------
; DATOS leido_A5E3: 23 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (23 bytes)
;   0xa5e3..0xa5fa  (23 bytes)
DATA_leido_A5E3:
	defb 0d2h,0a0h,030h,050h,0a0h,0d1h,030h,0d2h,030h,050h,0a0h,0fah,0d2h,0b2h,092h,0d1h	; a5e3  ..0P..0.0P......
	defb 021h,0d2h,0b2h,092h,0d1h,041h,0fbh	; a5f3

; ----------------------------------------------------------------------
; DATOS leido_A5FA: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa5fa..0xa5fd  (3 bytes)
DATA_leido_A5FA:
	defb 002h,0efh,0a5h	; a5fa

; ----------------------------------------------------------------------
; DATOS leido_A5FD: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xa5fd..0xa60b  (14 bytes)
DATA_leido_A5FD:
	defb 0d1h,022h,002h,051h,022h,002h,071h,0fah,0d1h,09dh,070h,09eh,070h,0e9h	; a5fd  .".Q".q...p.p.

; ----------------------------------------------------------------------
; DATOS leido_A60B: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa60b..0xa60c  (1 bytes)
DATA_leido_A60B:
	defb 00ch	; a60b

; ----------------------------------------------------------------------
; DATOS leido_A60C: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa60c..0xa610  (4 bytes)
DATA_leido_A60C:
	defb 09eh,0ech,0dch,0e9h	; a60c

; ----------------------------------------------------------------------
; DATOS leido_A610: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa610..0xa611  (1 bytes)
DATA_leido_A610:
	defb 006h	; a610

; ----------------------------------------------------------------------
; DATOS leido_A611: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa611..0xa613  (2 bytes)
DATA_leido_A611:
	defb 0fah,0feh	; a611

; ----------------------------------------------------------------------
; DATOS leido_A613: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa613..0xa614  (1 bytes)
DATA_leido_A613:
	defb 001h	; a613

; ----------------------------------------------------------------------
; DATOS leido_A614: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa614..0xa615  (1 bytes)
DATA_leido_A614:
	defb 0f8h	; a614

; ----------------------------------------------------------------------
; DATOS leido_A615: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa615..0xa616  (1 bytes)
DATA_leido_A615:
	defb 016h	; a615

; ----------------------------------------------------------------------
; DATOS leido_A616: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa616..0xa617  (1 bytes)
DATA_leido_A616:
	defb 0f2h	; a616

; ----------------------------------------------------------------------
; DATOS leido_A617: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa617..0xa618  (1 bytes)
DATA_leido_A617:
	defb 030h	; a617

; ----------------------------------------------------------------------
; DATOS leido_A618: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa618..0xa619  (1 bytes)
DATA_leido_A618:
	defb 0f1h	; a618

; ----------------------------------------------------------------------
; DATOS leido_A619: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa619..0xa61a  (1 bytes)
DATA_leido_A619:
	defb 042h	; a619

; ----------------------------------------------------------------------
; DATOS leido_A61A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa61a..0xa61b  (1 bytes)
DATA_leido_A61A:
	defb 0e9h	; a61a

; ----------------------------------------------------------------------
; DATOS leido_A61B: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa61b..0xa61c  (1 bytes)
DATA_leido_A61B:
	defb 006h	; a61b

; ----------------------------------------------------------------------
; DATOS leido_A61C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa61c..0xa61d  (1 bytes)
DATA_leido_A61C:
	defb 0eah	; a61c

; ----------------------------------------------------------------------
; DATOS leido_A61D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa61d..0xa61e  (1 bytes)
DATA_leido_A61D:
	defb 008h	; a61d

; ----------------------------------------------------------------------
; DATOS leido_A61E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa61e..0xa61f  (1 bytes)
DATA_leido_A61E:
	defb 0edh	; a61e

; ----------------------------------------------------------------------
; DATOS leido_A61F: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xa61f..0xa620  (1 bytes)
DATA_leido_A61F:
	defb 003h	; a61f

; ----------------------------------------------------------------------
; DATOS leido_A620: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa620..0xa621  (1 bytes)
DATA_leido_A620:
	defb 0dbh	; a620

; ----------------------------------------------------------------------
; DATOS leido_A621: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa621..0xa622  (1 bytes)
DATA_leido_A621:
	defb 002h	; a621

; ----------------------------------------------------------------------
; DATOS leido_A622: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa622..0xa623  (1 bytes)
DATA_leido_A622:
	defb 0ebh	; a622

; ----------------------------------------------------------------------
; DATOS leido_A623: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa623..0xa624  (1 bytes)
DATA_leido_A623:
	defb 087h	; a623

; ----------------------------------------------------------------------
; DATOS leido_A624: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa624..0xa625  (1 bytes)
DATA_leido_A624:
	defb 050h	; a624

; ----------------------------------------------------------------------
; DATOS leido_A625: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa625..0xa627  (2 bytes)
DATA_leido_A625:
	defb 0fah,0e9h	; a625

; ----------------------------------------------------------------------
; DATOS leido_A627: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa627..0xa628  (1 bytes)
DATA_leido_A627:
	defb 006h	; a627

; ----------------------------------------------------------------------
; DATOS leido_A628: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa628..0xa629  (1 bytes)
DATA_leido_A628:
	defb 0eah	; a628

; ----------------------------------------------------------------------
; DATOS leido_A629: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa629..0xa62a  (1 bytes)
DATA_leido_A629:
	defb 009h	; a629

; ----------------------------------------------------------------------
; DATOS leido_A62A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa62a..0xa62d  (3 bytes)
DATA_leido_A62A:
	defb 0d1h,02eh,0eah	; a62a

; ----------------------------------------------------------------------
; DATOS leido_A62D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa62d..0xa62e  (1 bytes)
DATA_leido_A62D:
	defb 004h	; a62d

; ----------------------------------------------------------------------
; DATOS leido_A62E: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa62e..0xa630  (2 bytes)
DATA_leido_A62E:
	defb 020h,0eah	; a62e

; ----------------------------------------------------------------------
; DATOS leido_A630: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa630..0xa631  (1 bytes)
DATA_leido_A630:
	defb 009h	; a630

; ----------------------------------------------------------------------
; DATOS leido_A631: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa631..0xa633  (2 bytes)
DATA_leido_A631:
	defb 00eh,0eah	; a631

; ----------------------------------------------------------------------
; DATOS leido_A633: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa633..0xa634  (1 bytes)
DATA_leido_A633:
	defb 004h	; a633

; ----------------------------------------------------------------------
; DATOS leido_A634: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa634..0xa636  (2 bytes)
DATA_leido_A634:
	defb 000h,0eah	; a634

; ----------------------------------------------------------------------
; DATOS leido_A636: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa636..0xa637  (1 bytes)
DATA_leido_A636:
	defb 009h	; a636

; ----------------------------------------------------------------------
; DATOS leido_A637: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa637..0xa638  (1 bytes)
DATA_leido_A637:
	defb 0e9h	; a637

; ----------------------------------------------------------------------
; DATOS leido_A638: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa638..0xa639  (1 bytes)
DATA_leido_A638:
	defb 00ch	; a638

; ----------------------------------------------------------------------
; DATOS leido_A639: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa639..0xa63b  (2 bytes)
DATA_leido_A639:
	defb 0fah,0eah	; a639

; ----------------------------------------------------------------------
; DATOS leido_A63B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa63b..0xa63c  (1 bytes)
DATA_leido_A63B:
	defb 009h	; a63b

; ----------------------------------------------------------------------
; DATOS leido_A63C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa63c..0xa63d  (1 bytes)
DATA_leido_A63C:
	defb 0e9h	; a63c

; ----------------------------------------------------------------------
; DATOS leido_A63D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa63d..0xa63e  (1 bytes)
DATA_leido_A63D:
	defb 006h	; a63d

; ----------------------------------------------------------------------
; DATOS leido_A63E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa63e..0xa641  (3 bytes)
DATA_leido_A63E:
	defb 0d2h,09eh,0eah	; a63e

; ----------------------------------------------------------------------
; DATOS leido_A641: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa641..0xa642  (1 bytes)
DATA_leido_A641:
	defb 004h	; a641

; ----------------------------------------------------------------------
; DATOS leido_A642: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa642..0xa644  (2 bytes)
DATA_leido_A642:
	defb 090h,0eah	; a642

; ----------------------------------------------------------------------
; DATOS leido_A644: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa644..0xa645  (1 bytes)
DATA_leido_A644:
	defb 009h	; a644

; ----------------------------------------------------------------------
; DATOS leido_A645: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa645..0xa647  (2 bytes)
DATA_leido_A645:
	defb 07eh,0eah	; a645

; ----------------------------------------------------------------------
; DATOS leido_A647: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa647..0xa648  (1 bytes)
DATA_leido_A647:
	defb 004h	; a647

; ----------------------------------------------------------------------
; DATOS leido_A648: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa648..0xa64a  (2 bytes)
DATA_leido_A648:
	defb 070h,0e9h	; a648

; ----------------------------------------------------------------------
; DATOS leido_A64A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa64a..0xa64b  (1 bytes)
DATA_leido_A64A:
	defb 00ch	; a64a

; ----------------------------------------------------------------------
; DATOS leido_A64B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa64b..0xa64c  (1 bytes)
DATA_leido_A64B:
	defb 0eah	; a64b

; ----------------------------------------------------------------------
; DATOS leido_A64C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa64c..0xa64d  (1 bytes)
DATA_leido_A64C:
	defb 009h	; a64c

; ----------------------------------------------------------------------
; DATOS leido_A64D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa64d..0xa64f  (2 bytes)
DATA_leido_A64D:
	defb 0fah,0feh	; a64d

; ----------------------------------------------------------------------
; DATOS leido_A64F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa64f..0xa650  (1 bytes)
DATA_leido_A64F:
	defb 004h	; a64f

; ----------------------------------------------------------------------
; DATOS leido_A650: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa650..0xa651  (1 bytes)
DATA_leido_A650:
	defb 0e9h	; a650

; ----------------------------------------------------------------------
; DATOS leido_A651: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa651..0xa652  (1 bytes)
DATA_leido_A651:
	defb 004h	; a651

; ----------------------------------------------------------------------
; DATOS leido_A652: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa652..0xa654  (2 bytes)
DATA_leido_A652:
	defb 0d0h,0f9h	; a652

; ----------------------------------------------------------------------
; DATOS leido_A654: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa654..0xa656  (2 bytes)
DATA_leido_A654:
	defb 08eh,0abh	; a654

; ----------------------------------------------------------------------
; DATOS leido_A656: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa656..0xa659  (3 bytes)
DATA_leido_A656:
	defb 011h,091h,0f9h	; a656

; ----------------------------------------------------------------------
; DATOS leido_A659: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa659..0xa65b  (2 bytes)
DATA_leido_A659:
	defb 08eh,0abh	; a659

; ----------------------------------------------------------------------
; DATOS leido_A65B: 15 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (15 bytes)
;   0xa65b..0xa66a  (15 bytes)
DATA_leido_A65B:
	defb 031h,031h,091h,001h,001h,031h,001h,001h,091h,001h,091h,031h,001h,001h,0fbh	; a65b  11...1.....1...

; ----------------------------------------------------------------------
; DATOS leido_A66A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa66a..0xa66d  (3 bytes)
DATA_leido_A66A:
	defb 002h,05dh,0a6h	; a66a

; ----------------------------------------------------------------------
; DATOS leido_A66D: 26 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (26 bytes)
;   0xa66d..0xa687  (26 bytes)
DATA_leido_A66D:
	defb 091h,001h,001h,031h,001h,011h,091h,001h,001h,031h,011h,031h,091h,030h,030h,001h	; a66d  ...1.....1.1.00.
	defb 031h,031h,031h,091h,031h,031h,031h,031h,031h,0f9h	; a67d  111.11111.

; ----------------------------------------------------------------------
; DATOS leido_A687: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa687..0xa689  (2 bytes)
DATA_leido_A687:
	defb 0a7h,0abh	; a687

; ----------------------------------------------------------------------
; DATOS leido_A689: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa689..0xa690  (7 bytes)
DATA_leido_A689:
	defb 091h,001h,001h,031h,001h,001h,0fbh	; a689

; ----------------------------------------------------------------------
; DATOS leido_A690: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa690..0xa693  (3 bytes)
DATA_leido_A690:
	defb 003h,086h,0a6h	; a690

; ----------------------------------------------------------------------
; DATOS leido_A693: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa693..0xa694  (1 bytes)
DATA_leido_A693:
	defb 0f9h	; a693

; ----------------------------------------------------------------------
; DATOS leido_A694: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa694..0xa696  (2 bytes)
DATA_leido_A694:
	defb 0a7h,0abh	; a694

; ----------------------------------------------------------------------
; DATOS leido_A696: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa696..0xa69b  (5 bytes)
DATA_leido_A696:
	defb 033h,033h,031h,031h,0f9h	; a696

; ----------------------------------------------------------------------
; DATOS leido_A69B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa69b..0xa69d  (2 bytes)
DATA_leido_A69B:
	defb 0a7h,0abh	; a69b

; ----------------------------------------------------------------------
; DATOS leido_A69D: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa69d..0xa6a4  (7 bytes)
DATA_leido_A69D:
	defb 091h,001h,001h,031h,001h,001h,0fbh	; a69d

; ----------------------------------------------------------------------
; DATOS leido_A6A4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa6a4..0xa6a7  (3 bytes)
DATA_leido_A6A4:
	defb 003h,09ah,0a6h	; a6a4

; ----------------------------------------------------------------------
; DATOS leido_A6A7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6a7..0xa6a8  (1 bytes)
DATA_leido_A6A7:
	defb 0f9h	; a6a7

; ----------------------------------------------------------------------
; DATOS leido_A6A8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6a8..0xa6aa  (2 bytes)
DATA_leido_A6A8:
	defb 0a7h,0abh	; a6a8

; ----------------------------------------------------------------------
; DATOS leido_A6AA: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa6aa..0xa6b1  (7 bytes)
DATA_leido_A6AA:
	defb 091h,031h,031h,011h,031h,031h,0f9h	; a6aa

; ----------------------------------------------------------------------
; DATOS leido_A6B1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6b1..0xa6b3  (2 bytes)
DATA_leido_A6B1:
	defb 0bah,0abh	; a6b1

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa6b3..0xa6e9  (54 bytes)
DATA_A6B3:
	defb 011h,031h,011h,091h,031h,031h,0f9h,0bah,0abh,011h,031h,011h,031h,040h,040h,031h	; a6b3  .1..11....1.1@@1
	defb 0f9h,0bah,0abh,031h,040h,040h,091h,031h,091h,011h,091h,001h,091h,031h,001h,091h	; a6c3  ...1@@.1.....1..
	defb 091h,001h,091h,031h,001h,091h,091h,031h,031h,011h,031h,031h,091h,031h,040h,040h	; a6d3  ...1...11.11.1@@
	defb 041h,041h,041h,0fdh,086h,0a6h	; a6e3

; ----------------------------------------------------------------------
; DATOS leido_A6E9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6e9..0xa6ea  (1 bytes)
DATA_leido_A6E9:
	defb 0feh	; a6e9

; ----------------------------------------------------------------------
; DATOS leido_A6EA: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa6ea..0xa6eb  (1 bytes)
DATA_leido_A6EA:
	defb 001h	; a6ea

; ----------------------------------------------------------------------
; DATOS leido_A6EB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6eb..0xa6ec  (1 bytes)
DATA_leido_A6EB:
	defb 0eah	; a6eb

; ----------------------------------------------------------------------
; DATOS leido_A6EC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa6ec..0xa6ed  (1 bytes)
DATA_leido_A6EC:
	defb 006h	; a6ec

; ----------------------------------------------------------------------
; DATOS leido_A6ED: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa6ed..0xa6ef  (2 bytes)
DATA_leido_A6ED:
	defb 0ech,0f9h	; a6ed

; ----------------------------------------------------------------------
; DATOS leido_A6EF: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6ef..0xa6f1  (2 bytes)
DATA_leido_A6EF:
	defb 02ch,0ach	; a6ef

; ----------------------------------------------------------------------
; DATOS leido_A6F1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa6f1..0xa6f2  (1 bytes)
DATA_leido_A6F1:
	defb 0eah	; a6f1

; ----------------------------------------------------------------------
; DATOS leido_A6F2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa6f2..0xa6f3  (1 bytes)
DATA_leido_A6F2:
	defb 005h	; a6f2

; ----------------------------------------------------------------------
; DATOS leido_A6F3: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa6f3..0xa6f7  (4 bytes)
DATA_leido_A6F3:
	defb 0d3h,090h,0a0h,0eah	; a6f3

; ----------------------------------------------------------------------
; DATOS leido_A6F7: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa6f7..0xa6f8  (1 bytes)
DATA_leido_A6F7:
	defb 006h	; a6f7

; ----------------------------------------------------------------------
; DATOS leido_A6F8: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa6f8..0xa6fe  (6 bytes)
DATA_leido_A6F8:
	defb 0b0h,0d2h,000h,010h,020h,0f9h	; a6f8

; ----------------------------------------------------------------------
; DATOS leido_A6FE: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa6fe..0xa700  (2 bytes)
DATA_leido_A6FE:
	defb 03fh,0ach	; a6fe

; ----------------------------------------------------------------------
; DATOS leido_A700: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa700..0xa702  (2 bytes)
DATA_leido_A700:
	defb 0c0h,0ebh	; a700

; ----------------------------------------------------------------------
; DATOS leido_A702: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa702..0xa703  (1 bytes)
DATA_leido_A702:
	defb 001h	; a702

; ----------------------------------------------------------------------
; DATOS leido_A703: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa703..0xa704  (1 bytes)
DATA_leido_A703:
	defb 010h	; a703

; ----------------------------------------------------------------------
; DATOS leido_A704: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa704..0xa70d  (9 bytes)
DATA_leido_A704:
	defb 0d2h,0a1h,051h,0a1h,0d1h,031h,051h,031h,0fbh	; a704  ..Q..1Q1.

; ----------------------------------------------------------------------
; DATOS leido_A70D: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa70d..0xa710  (3 bytes)
DATA_leido_A70D:
	defb 002h,004h,0a7h	; a70d

; ----------------------------------------------------------------------
; DATOS leido_A710: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xa710..0xa718  (8 bytes)
DATA_leido_A710:
	defb 0d2h,0a1h,051h,0a1h,0d1h,031h,050h,0eah	; a710  ..Q..1P.

; ----------------------------------------------------------------------
; DATOS leido_A718: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa718..0xa719  (1 bytes)
DATA_leido_A718:
	defb 00ah	; a718

; ----------------------------------------------------------------------
; DATOS leido_A719: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa719..0xa71a  (1 bytes)
DATA_leido_A719:
	defb 0ebh	; a719

; ----------------------------------------------------------------------
; DATOS leido_A71A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa71a..0xa71b  (1 bytes)
DATA_leido_A71A:
	defb 001h	; a71a

; ----------------------------------------------------------------------
; DATOS leido_A71B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa71b..0xa71c  (1 bytes)
DATA_leido_A71B:
	defb 020h	; a71b

; ----------------------------------------------------------------------
; DATOS leido_A71C: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xa71c..0xa726  (10 bytes)
DATA_leido_A71C:
	defb 0d2h,001h,0d3h,0a1h,0d2h,001h,051h,0a1h,051h,0eah	; a71c  ......Q.Q.

; ----------------------------------------------------------------------
; DATOS leido_A726: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa726..0xa727  (1 bytes)
DATA_leido_A726:
	defb 006h	; a726

; ----------------------------------------------------------------------
; DATOS leido_A727: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa727..0xa72b  (4 bytes)
DATA_leido_A727:
	defb 0ech,0d3h,073h,0f9h	; a727

; ----------------------------------------------------------------------
; DATOS leido_A72B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa72b..0xa72d  (2 bytes)
DATA_leido_A72B:
	defb 060h,0ach	; a72b

; ----------------------------------------------------------------------
; DATOS leido_A72D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa72d..0xa72e  (1 bytes)
DATA_leido_A72D:
	defb 0eah	; a72d

; ----------------------------------------------------------------------
; DATOS leido_A72E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa72e..0xa72f  (1 bytes)
DATA_leido_A72E:
	defb 006h	; a72e

; ----------------------------------------------------------------------
; DATOS leido_A72F: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa72f..0xa731  (2 bytes)
DATA_leido_A72F:
	defb 0ech,0eeh	; a72f

; ----------------------------------------------------------------------
; DATOS leido_A731: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xa731..0xa732  (1 bytes)
DATA_leido_A731:
	defb 002h	; a731

; ----------------------------------------------------------------------
; DATOS leido_A732: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa732..0xa733  (1 bytes)
DATA_leido_A732:
	defb 0e9h	; a732

; ----------------------------------------------------------------------
; DATOS leido_A733: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa733..0xa734  (1 bytes)
DATA_leido_A733:
	defb 004h	; a733

; ----------------------------------------------------------------------
; DATOS leido_A734: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa734..0xa737  (3 bytes)
DATA_leido_A734:
	defb 0d1h,00ah,0f9h	; a734

; ----------------------------------------------------------------------
; DATOS leido_A737: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa737..0xa739  (2 bytes)
DATA_leido_A737:
	defb 07eh,0ach	; a737

; ----------------------------------------------------------------------
; DATOS leido_A739: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa739..0xa73a  (1 bytes)
DATA_leido_A739:
	defb 0eah	; a739

; ----------------------------------------------------------------------
; DATOS leido_A73A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa73a..0xa73b  (1 bytes)
DATA_leido_A73A:
	defb 003h	; a73a

; ----------------------------------------------------------------------
; DATOS leido_A73B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa73b..0xa73d  (2 bytes)
DATA_leido_A73B:
	defb 0a3h,0eah	; a73b

; ----------------------------------------------------------------------
; DATOS leido_A73D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa73d..0xa73e  (1 bytes)
DATA_leido_A73D:
	defb 006h	; a73d

; ----------------------------------------------------------------------
; DATOS leido_A73E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa73e..0xa73f  (1 bytes)
DATA_leido_A73E:
	defb 0f9h	; a73e

; ----------------------------------------------------------------------
; DATOS leido_A73F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa73f..0xa741  (2 bytes)
DATA_leido_A73F:
	defb 09dh,0ach	; a73f

; ----------------------------------------------------------------------
; DATOS leido_A741: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa741..0xa74c  (11 bytes)
DATA_leido_A741:
	defb 0d3h,071h,0d2h,001h,021h,071h,0d1h,000h,0d1h,00ah,0f9h	; a741  .q..!q.....

; ----------------------------------------------------------------------
; DATOS leido_A74C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa74c..0xa74e  (2 bytes)
DATA_leido_A74C:
	defb 07eh,0ach	; a74c

; ----------------------------------------------------------------------
; DATOS leido_A74E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa74e..0xa74f  (1 bytes)
DATA_leido_A74E:
	defb 0eah	; a74e

; ----------------------------------------------------------------------
; DATOS leido_A74F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa74f..0xa750  (1 bytes)
DATA_leido_A74F:
	defb 003h	; a74f

; ----------------------------------------------------------------------
; DATOS leido_A750: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa750..0xa752  (2 bytes)
DATA_leido_A750:
	defb 0a3h,0eah	; a750

; ----------------------------------------------------------------------
; DATOS leido_A752: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa752..0xa753  (1 bytes)
DATA_leido_A752:
	defb 006h	; a752

; ----------------------------------------------------------------------
; DATOS leido_A753: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa753..0xa754  (1 bytes)
DATA_leido_A753:
	defb 0f9h	; a753

; ----------------------------------------------------------------------
; DATOS leido_A754: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa754..0xa756  (2 bytes)
DATA_leido_A754:
	defb 09dh,0ach	; a754

; ----------------------------------------------------------------------
; DATOS leido_A756: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa756..0xa757  (1 bytes)
DATA_leido_A756:
	defb 0eah	; a756

; ----------------------------------------------------------------------
; DATOS leido_A757: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa757..0xa758  (1 bytes)
DATA_leido_A757:
	defb 003h	; a757

; ----------------------------------------------------------------------
; DATOS leido_A758: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa758..0xa75c  (4 bytes)
DATA_leido_A758:
	defb 073h,0c4h,0efh,0eah	; a758

; ----------------------------------------------------------------------
; DATOS leido_A75C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa75c..0xa75d  (1 bytes)
DATA_leido_A75C:
	defb 007h	; a75c

; ----------------------------------------------------------------------
; DATOS leido_A75D: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa75d..0xa760  (3 bytes)
DATA_leido_A75D:
	defb 0d2h,032h,0f9h	; a75d

; ----------------------------------------------------------------------
; DATOS leido_A760: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa760..0xa762  (2 bytes)
DATA_leido_A760:
	defb 020h,0ach	; a760

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa762..0xa793  (49 bytes)
DATA_A762:
	defb 0d2h,067h,041h,061h,017h,011h,061h,0bdh,0eah,004h,0b3h,0eah,005h,0b0h,0a0h,090h	; a762  .gAa..a.........
	defb 080h,070h,060h,0eah,007h,0f9h,020h,0ach,0d2h,071h,061h,071h,0d1h,00dh,0eah,004h	; a772  .p`... ..qaq....
	defb 003h,0eah,007h,0d2h,0b1h,071h,051h,021h,0d3h,0b1h,077h,0eah,004h,072h,0fdh,02dh	; a782  .....qQ!..w..r.-
	defb 0a7h	; a792

; ----------------------------------------------------------------------
; DATOS leido_A793: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa793..0xa794  (1 bytes)
DATA_leido_A793:
	defb 0feh	; a793

; ----------------------------------------------------------------------
; DATOS leido_A794: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa794..0xa795  (1 bytes)
DATA_leido_A794:
	defb 001h	; a794

; ----------------------------------------------------------------------
; DATOS leido_A795: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa795..0xa796  (1 bytes)
DATA_leido_A795:
	defb 0f8h	; a795

; ----------------------------------------------------------------------
; DATOS leido_A796: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa796..0xa797  (1 bytes)
DATA_leido_A796:
	defb 028h	; a796

; ----------------------------------------------------------------------
; DATOS leido_A797: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa797..0xa798  (1 bytes)
DATA_leido_A797:
	defb 0eah	; a797

; ----------------------------------------------------------------------
; DATOS leido_A798: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa798..0xa799  (1 bytes)
DATA_leido_A798:
	defb 007h	; a798

; ----------------------------------------------------------------------
; DATOS leido_A799: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa799..0xa79a  (1 bytes)
DATA_leido_A799:
	defb 0ebh	; a799

; ----------------------------------------------------------------------
; DATOS leido_A79A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa79a..0xa79b  (1 bytes)
DATA_leido_A79A:
	defb 051h	; a79a

; ----------------------------------------------------------------------
; DATOS leido_A79B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa79b..0xa79c  (1 bytes)
DATA_leido_A79B:
	defb 060h	; a79b

; ----------------------------------------------------------------------
; DATOS leido_A79C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa79c..0xa79d  (1 bytes)
DATA_leido_A79C:
	defb 0e9h	; a79c

; ----------------------------------------------------------------------
; DATOS leido_A79D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa79d..0xa79e  (1 bytes)
DATA_leido_A79D:
	defb 004h	; a79d

; ----------------------------------------------------------------------
; DATOS leido_A79E: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa79e..0xa7a9  (11 bytes)
DATA_leido_A79E:
	defb 0d5h,071h,0d4h,071h,0d5h,071h,0d4h,001h,071h,001h,0fbh	; a79e  .q.q.q..q..

; ----------------------------------------------------------------------
; DATOS leido_A7A9: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa7a9..0xa7ac  (3 bytes)
DATA_leido_A7A9:
	defb 004h,09eh,0a7h	; a7a9

; ----------------------------------------------------------------------
; DATOS leido_A7AC: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xa7ac..0xa7b7  (11 bytes)
DATA_leido_A7AC:
	defb 0d5h,0a1h,0d4h,0a1h,0d5h,0a1h,0d4h,031h,0a1h,031h,0fbh	; a7ac  .......1.1.

; ----------------------------------------------------------------------
; DATOS leido_A7B7: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa7b7..0xa7ba  (3 bytes)
DATA_leido_A7B7:
	defb 004h,0ach,0a7h	; a7b7

; ----------------------------------------------------------------------
; DATOS leido_A7BA: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xa7ba..0xa7c7  (13 bytes)
DATA_leido_A7BA:
	defb 0d4h,001h,0d3h,001h,0d4h,001h,0d4h,051h,0d3h,001h,0d4h,051h,0fbh	; a7ba  .......Q...Q.

; ----------------------------------------------------------------------
; DATOS leido_A7C7: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa7c7..0xa7ca  (3 bytes)
DATA_leido_A7C7:
	defb 004h,0bah,0a7h	; a7c7

; ----------------------------------------------------------------------
; DATOS leido_A7CA: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xa7ca..0xa7d6  (12 bytes)
DATA_leido_A7CA:
	defb 0d4h,021h,0d3h,021h,0d4h,021h,071h,0d3h,021h,0d4h,021h,0fbh	; a7ca  .!.!.!q.!.!.

; ----------------------------------------------------------------------
; DATOS leido_A7D6: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa7d6..0xa7d9  (3 bytes)
DATA_leido_A7D6:
	defb 003h,0cah,0a7h	; a7d6

; ----------------------------------------------------------------------
; DATOS leido_A7D9: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xa7d9..0xa7e5  (12 bytes)
DATA_leido_A7D9:
	defb 0d4h,021h,0d3h,021h,0d4h,021h,071h,0d3h,021h,0d4h,021h,0eah	; a7d9  .!.!.!q.!.!.

; ----------------------------------------------------------------------
; DATOS leido_A7E5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa7e5..0xa7e6  (1 bytes)
DATA_leido_A7E5:
	defb 007h	; a7e5

; ----------------------------------------------------------------------
; DATOS leido_A7E6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7e6..0xa7e7  (1 bytes)
DATA_leido_A7E6:
	defb 0ebh	; a7e6

; ----------------------------------------------------------------------
; DATOS leido_A7E7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa7e7..0xa7e8  (1 bytes)
DATA_leido_A7E7:
	defb 041h	; a7e7

; ----------------------------------------------------------------------
; DATOS leido_A7E8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa7e8..0xa7e9  (1 bytes)
DATA_leido_A7E8:
	defb 080h	; a7e8

; ----------------------------------------------------------------------
; DATOS leido_A7E9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7e9..0xa7ea  (1 bytes)
DATA_leido_A7E9:
	defb 0f9h	; a7e9

; ----------------------------------------------------------------------
; DATOS leido_A7EA: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa7ea..0xa7ec  (2 bytes)
DATA_leido_A7EA:
	defb 0cdh,0abh	; a7ea

; ----------------------------------------------------------------------
; DATOS leido_A7EC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7ec..0xa7ed  (1 bytes)
DATA_leido_A7EC:
	defb 0fbh	; a7ec

; ----------------------------------------------------------------------
; DATOS leido_A7ED: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa7ed..0xa7f0  (3 bytes)
DATA_leido_A7ED:
	defb 004h,00eh,0ach	; a7ed

; ----------------------------------------------------------------------
; DATOS leido_A7F0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7f0..0xa7f1  (1 bytes)
DATA_leido_A7F0:
	defb 0f9h	; a7f0

; ----------------------------------------------------------------------
; DATOS leido_A7F1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa7f1..0xa7f3  (2 bytes)
DATA_leido_A7F1:
	defb 0cdh,0abh	; a7f1

; ----------------------------------------------------------------------
; DATOS leido_A7F3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7f3..0xa7f4  (1 bytes)
DATA_leido_A7F3:
	defb 0fbh	; a7f3

; ----------------------------------------------------------------------
; DATOS leido_A7F4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa7f4..0xa7f7  (3 bytes)
DATA_leido_A7F4:
	defb 003h,00eh,0ach	; a7f4

; ----------------------------------------------------------------------
; DATOS leido_A7F7: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa7f7..0xa7fc  (5 bytes)
DATA_leido_A7F7:
	defb 0d5h,071h,081h,091h,0dbh	; a7f7

; ----------------------------------------------------------------------
; DATOS leido_A7FC: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa7fc..0xa7fd  (1 bytes)
DATA_leido_A7FC:
	defb 002h	; a7fc

; ----------------------------------------------------------------------
; DATOS leido_A7FD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa7fd..0xa7fe  (1 bytes)
DATA_leido_A7FD:
	defb 0f9h	; a7fd

; ----------------------------------------------------------------------
; DATOS leido_A7FE: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa7fe..0xa800  (2 bytes)
DATA_leido_A7FE:
	defb 014h,0ach	; a7fe

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa800..0xa825  (37 bytes)
DATA_A800:
	defb 0b1h,0d4h,001h,011h,0d3h,011h,0d4h,011h,0fbh,007h,003h,0a8h,011h,001h,0d5h,0b1h	; a800  ................
	defb 0f9h,014h,0ach,091h,081h,071h,0d4h,071h,0d5h,071h,0fbh,007h,015h,0a8h,071h,071h	; a810  .....q.q.q....qq
	defb 071h,0dch,0fdh,0e4h,0a7h	; a820

; ----------------------------------------------------------------------
; DATOS leido_A825: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa825..0xa826  (1 bytes)
DATA_leido_A825:
	defb 0feh	; a825

; ----------------------------------------------------------------------
; DATOS leido_A826: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa826..0xa827  (1 bytes)
DATA_leido_A826:
	defb 001h	; a826

; ----------------------------------------------------------------------
; DATOS leido_A827: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa827..0xa828  (1 bytes)
DATA_leido_A827:
	defb 0f8h	; a827

; ----------------------------------------------------------------------
; DATOS leido_A828: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa828..0xa829  (1 bytes)
DATA_leido_A828:
	defb 085h	; a828

; ----------------------------------------------------------------------
; DATOS leido_A829: 1 bytes que lee p10:6D89 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D89 (1 bytes)
;   0xa829..0xa82a  (1 bytes)
DATA_leido_A829:
	defb 0c1h	; a829

; ----------------------------------------------------------------------
; DATOS leido_A82A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa82a..0xa82b  (1 bytes)
DATA_leido_A82A:
	defb 0f2h	; a82a

; ----------------------------------------------------------------------
; DATOS leido_A82B: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa82b..0xa82c  (1 bytes)
DATA_leido_A82B:
	defb 020h	; a82b

; ----------------------------------------------------------------------
; DATOS leido_A82C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa82c..0xa82d  (1 bytes)
DATA_leido_A82C:
	defb 0f1h	; a82c

; ----------------------------------------------------------------------
; DATOS leido_A82D: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa82d..0xa82e  (1 bytes)
DATA_leido_A82D:
	defb 043h	; a82d

; ----------------------------------------------------------------------
; DATOS leido_A82E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa82e..0xa82f  (1 bytes)
DATA_leido_A82E:
	defb 0eah	; a82e

; ----------------------------------------------------------------------
; DATOS leido_A82F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa82f..0xa830  (1 bytes)
DATA_leido_A82F:
	defb 008h	; a82f

; ----------------------------------------------------------------------
; DATOS leido_A830: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa830..0xa831  (1 bytes)
DATA_leido_A830:
	defb 0ebh	; a830

; ----------------------------------------------------------------------
; DATOS leido_A831: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa831..0xa832  (1 bytes)
DATA_leido_A831:
	defb 007h	; a831

; ----------------------------------------------------------------------
; DATOS leido_A832: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa832..0xa833  (1 bytes)
DATA_leido_A832:
	defb 030h	; a832

; ----------------------------------------------------------------------
; DATOS leido_A833: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa833..0xa834  (1 bytes)
DATA_leido_A833:
	defb 0e9h	; a833

; ----------------------------------------------------------------------
; DATOS leido_A834: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa834..0xa835  (1 bytes)
DATA_leido_A834:
	defb 010h	; a834

; ----------------------------------------------------------------------
; DATOS leido_A835: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa835..0xa838  (3 bytes)
DATA_leido_A835:
	defb 0d3h,078h,0e9h	; a835

; ----------------------------------------------------------------------
; DATOS leido_A838: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa838..0xa839  (1 bytes)
DATA_leido_A838:
	defb 008h	; a838

; ----------------------------------------------------------------------
; DATOS leido_A839: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa839..0xa83a  (1 bytes)
DATA_leido_A839:
	defb 0f8h	; a839

; ----------------------------------------------------------------------
; DATOS leido_A83A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa83a..0xa83b  (1 bytes)
DATA_leido_A83A:
	defb 002h	; a83a

; ----------------------------------------------------------------------
; DATOS leido_A83B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa83b..0xa83c  (1 bytes)
DATA_leido_A83B:
	defb 0ebh	; a83b

; ----------------------------------------------------------------------
; DATOS leido_A83C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa83c..0xa83d  (1 bytes)
DATA_leido_A83C:
	defb 028h	; a83c

; ----------------------------------------------------------------------
; DATOS leido_A83D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa83d..0xa83e  (1 bytes)
DATA_leido_A83D:
	defb 040h	; a83d

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
	defb 00ah	; a83f

; ----------------------------------------------------------------------
; DATOS leido_A840: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa840..0xa844  (4 bytes)
DATA_leido_A840:
	defb 071h,081h,091h,0f8h	; a840

; ----------------------------------------------------------------------
; DATOS leido_A844: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa844..0xa845  (1 bytes)
DATA_leido_A844:
	defb 085h	; a844

; ----------------------------------------------------------------------
; DATOS leido_A845: 1 bytes que lee p10:6D89 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D89 (1 bytes)
;   0xa845..0xa846  (1 bytes)
DATA_leido_A845:
	defb 0c1h	; a845

; ----------------------------------------------------------------------
; DATOS leido_A846: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa846..0xa847  (1 bytes)
DATA_leido_A846:
	defb 0eah	; a846

; ----------------------------------------------------------------------
; DATOS leido_A847: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa847..0xa848  (1 bytes)
DATA_leido_A847:
	defb 008h	; a847

; ----------------------------------------------------------------------
; DATOS leido_A848: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa848..0xa849  (1 bytes)
DATA_leido_A848:
	defb 0ebh	; a848

; ----------------------------------------------------------------------
; DATOS leido_A849: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa849..0xa84a  (1 bytes)
DATA_leido_A849:
	defb 007h	; a849

; ----------------------------------------------------------------------
; DATOS leido_A84A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa84a..0xa84b  (1 bytes)
DATA_leido_A84A:
	defb 030h	; a84a

; ----------------------------------------------------------------------
; DATOS leido_A84B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa84b..0xa84c  (1 bytes)
DATA_leido_A84B:
	defb 0e9h	; a84b

; ----------------------------------------------------------------------
; DATOS leido_A84C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa84c..0xa84d  (1 bytes)
DATA_leido_A84C:
	defb 010h	; a84c

; ----------------------------------------------------------------------
; DATOS leido_A84D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa84d..0xa84f  (2 bytes)
DATA_leido_A84D:
	defb 0a8h,0f8h	; a84d

; ----------------------------------------------------------------------
; DATOS leido_A84F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa84f..0xa850  (1 bytes)
DATA_leido_A84F:
	defb 002h	; a84f

; ----------------------------------------------------------------------
; DATOS leido_A850: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa850..0xa851  (1 bytes)
DATA_leido_A850:
	defb 0ebh	; a850

; ----------------------------------------------------------------------
; DATOS leido_A851: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa851..0xa852  (1 bytes)
DATA_leido_A851:
	defb 028h	; a851

; ----------------------------------------------------------------------
; DATOS leido_A852: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa852..0xa853  (1 bytes)
DATA_leido_A852:
	defb 040h	; a852

; ----------------------------------------------------------------------
; DATOS leido_A853: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa853..0xa854  (1 bytes)
DATA_leido_A853:
	defb 0e9h	; a853

; ----------------------------------------------------------------------
; DATOS leido_A854: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa854..0xa855  (1 bytes)
DATA_leido_A854:
	defb 008h	; a854

; ----------------------------------------------------------------------
; DATOS leido_A855: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa855..0xa856  (1 bytes)
DATA_leido_A855:
	defb 0eah	; a855

; ----------------------------------------------------------------------
; DATOS leido_A856: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa856..0xa857  (1 bytes)
DATA_leido_A856:
	defb 00ah	; a856

; ----------------------------------------------------------------------
; DATOS leido_A857: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa857..0xa85c  (5 bytes)
DATA_leido_A857:
	defb 0a1h,0b1h,0d2h,001h,0e9h	; a857

; ----------------------------------------------------------------------
; DATOS leido_A85C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa85c..0xa85d  (1 bytes)
DATA_leido_A85C:
	defb 004h	; a85c

; ----------------------------------------------------------------------
; DATOS leido_A85D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa85d..0xa85e  (1 bytes)
DATA_leido_A85D:
	defb 0f8h	; a85d

; ----------------------------------------------------------------------
; DATOS leido_A85E: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa85e..0xa85f  (1 bytes)
DATA_leido_A85E:
	defb 017h	; a85e

; ----------------------------------------------------------------------
; DATOS leido_A85F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa85f..0xa860  (1 bytes)
DATA_leido_A85F:
	defb 0ebh	; a85f

; ----------------------------------------------------------------------
; DATOS leido_A860: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa860..0xa861  (1 bytes)
DATA_leido_A860:
	defb 056h	; a860

; ----------------------------------------------------------------------
; DATOS leido_A861: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa861..0xa862  (1 bytes)
DATA_leido_A861:
	defb 050h	; a861

; ----------------------------------------------------------------------
; DATOS leido_A862: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa862..0xa863  (1 bytes)
DATA_leido_A862:
	defb 0dbh	; a862

; ----------------------------------------------------------------------
; DATOS leido_A863: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa863..0xa864  (1 bytes)
DATA_leido_A863:
	defb 002h	; a863

; ----------------------------------------------------------------------
; DATOS leido_A864: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa864..0xa865  (1 bytes)
DATA_leido_A864:
	defb 0eah	; a864

; ----------------------------------------------------------------------
; DATOS leido_A865: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa865..0xa866  (1 bytes)
DATA_leido_A865:
	defb 009h	; a865

; ----------------------------------------------------------------------
; DATOS leido_A866: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa866..0xa86f  (9 bytes)
DATA_leido_A866:
	defb 0d2h,007h,001h,001h,053h,033h,0d3h,0a3h,0eah	; a866  ....S3...

; ----------------------------------------------------------------------
; DATOS leido_A86F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa86f..0xa870  (1 bytes)
DATA_leido_A86F:
	defb 00ah	; a86f

; ----------------------------------------------------------------------
; DATOS leido_A870: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa870..0xa879  (9 bytes)
DATA_leido_A870:
	defb 0d2h,007h,001h,001h,053h,033h,0d3h,0a3h,0f8h	; a870  ....S3...

; ----------------------------------------------------------------------
; DATOS leido_A879: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa879..0xa87a  (1 bytes)
DATA_leido_A879:
	defb 085h	; a879

; ----------------------------------------------------------------------
; DATOS leido_A87A: 1 bytes que lee p10:6D89 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D89 (1 bytes)
;   0xa87a..0xa87b  (1 bytes)
DATA_leido_A87A:
	defb 0c1h	; a87a

; ----------------------------------------------------------------------
; DATOS leido_A87B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa87b..0xa87c  (1 bytes)
DATA_leido_A87B:
	defb 0eah	; a87b

; ----------------------------------------------------------------------
; DATOS leido_A87C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa87c..0xa87d  (1 bytes)
DATA_leido_A87C:
	defb 007h	; a87c

; ----------------------------------------------------------------------
; DATOS leido_A87D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa87d..0xa87e  (1 bytes)
DATA_leido_A87D:
	defb 0ebh	; a87d

; ----------------------------------------------------------------------
; DATOS leido_A87E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa87e..0xa87f  (1 bytes)
DATA_leido_A87E:
	defb 087h	; a87e

; ----------------------------------------------------------------------
; DATOS leido_A87F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa87f..0xa880  (1 bytes)
DATA_leido_A87F:
	defb 010h	; a87f

; ----------------------------------------------------------------------
; DATOS leido_A880: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa880..0xa881  (1 bytes)
DATA_leido_A880:
	defb 0e9h	; a880

; ----------------------------------------------------------------------
; DATOS leido_A881: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa881..0xa882  (1 bytes)
DATA_leido_A881:
	defb 010h	; a881

; ----------------------------------------------------------------------
; DATOS leido_A882: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa882..0xa885  (3 bytes)
DATA_leido_A882:
	defb 0d2h,02bh,0feh	; a882

; ----------------------------------------------------------------------
; DATOS leido_A885: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa885..0xa886  (1 bytes)
DATA_leido_A885:
	defb 001h	; a885

; ----------------------------------------------------------------------
; DATOS leido_A886: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa886..0xa887  (1 bytes)
DATA_leido_A886:
	defb 0f8h	; a886

; ----------------------------------------------------------------------
; DATOS leido_A887: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa887..0xa888  (1 bytes)
DATA_leido_A887:
	defb 015h	; a887

; ----------------------------------------------------------------------
; DATOS leido_A888: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa888..0xa889  (1 bytes)
DATA_leido_A888:
	defb 0eah	; a888

; ----------------------------------------------------------------------
; DATOS leido_A889: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa889..0xa88a  (1 bytes)
DATA_leido_A889:
	defb 005h	; a889

; ----------------------------------------------------------------------
; DATOS leido_A88A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa88a..0xa88b  (1 bytes)
DATA_leido_A88A:
	defb 0ebh	; a88a

; ----------------------------------------------------------------------
; DATOS leido_A88B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa88b..0xa88c  (1 bytes)
DATA_leido_A88B:
	defb 001h	; a88b

; ----------------------------------------------------------------------
; DATOS leido_A88C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa88c..0xa88d  (1 bytes)
DATA_leido_A88C:
	defb 010h	; a88c

; ----------------------------------------------------------------------
; DATOS leido_A88D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa88d..0xa88e  (1 bytes)
DATA_leido_A88D:
	defb 0d6h	; a88d

; ----------------------------------------------------------------------
; DATOS leido_A88E: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa88e..0xa890  (2 bytes)
DATA_leido_A88E:
	defb 001h,001h	; a88e

; ----------------------------------------------------------------------
; DATOS leido_A890: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa890..0xa891  (1 bytes)
DATA_leido_A890:
	defb 0dbh	; a890

; ----------------------------------------------------------------------
; DATOS leido_A891: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa891..0xa892  (1 bytes)
DATA_leido_A891:
	defb 004h	; a891

; ----------------------------------------------------------------------
; DATOS leido_A892: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa892..0xa893  (1 bytes)
DATA_leido_A892:
	defb 0e9h	; a892

; ----------------------------------------------------------------------
; DATOS leido_A893: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa893..0xa894  (1 bytes)
DATA_leido_A893:
	defb 004h	; a893

; ----------------------------------------------------------------------
; DATOS leido_A894: 101 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (101 bytes)
;   0xa894..0xa8f9  (101 bytes)
DATA_leido_A894:
	defb 0d2h,001h,041h,071h,0d1h,001h,041h,071h,0d0h,001h,0d1h,071h,041h,001h,041h,001h	; a894  ..Aq..Aq...qA.A.
	defb 0d3h,091h,0d2h,021h,061h,091h,0d1h,021h,061h,091h,061h,021h,0d2h,091h,0d1h,021h	; a8a4  ...!a..!a.a!...!
	defb 0d2h,091h,0d2h,001h,041h,071h,0d1h,001h,041h,071h,0d0h,001h,0d1h,071h,041h,001h	; a8b4  ....Aq..Aq...qA.
	defb 041h,001h,0d3h,0a1h,0d2h,021h,051h,0a1h,0d1h,021h,051h,0a1h,051h,021h,0d3h,0a1h	; a8c4  A....!Q..!Q.Q!..
	defb 0d2h,021h,0d3h,0a1h,0d3h,081h,0d2h,001h,031h,081h,0d1h,001h,031h,081h,031h,001h	; a8d4  .!......1...1.1.
	defb 031h,081h,031h,0d3h,071h,0a1h,0d2h,021h,071h,0a1h,0d1h,021h,071h,021h,0d2h,0a1h	; a8e4  1.1.q..!q..!q!..
	defb 0d1h,021h,071h,021h,0f8h	; a8f4

; ----------------------------------------------------------------------
; DATOS leido_A8F9: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa8f9..0xa8fa  (1 bytes)
DATA_leido_A8F9:
	defb 002h	; a8f9

; ----------------------------------------------------------------------
; DATOS leido_A8FA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8fa..0xa8fb  (1 bytes)
DATA_leido_A8FA:
	defb 0ebh	; a8fa

; ----------------------------------------------------------------------
; DATOS leido_A8FB: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa8fb..0xa8fc  (1 bytes)
DATA_leido_A8FB:
	defb 009h	; a8fb

; ----------------------------------------------------------------------
; DATOS leido_A8FC: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa8fc..0xa8fd  (1 bytes)
DATA_leido_A8FC:
	defb 040h	; a8fc

; ----------------------------------------------------------------------
; DATOS leido_A8FD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8fd..0xa8fe  (1 bytes)
DATA_leido_A8FD:
	defb 0eah	; a8fd

; ----------------------------------------------------------------------
; DATOS leido_A8FE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa8fe..0xa8ff  (1 bytes)
DATA_leido_A8FE:
	defb 008h	; a8fe

; ----------------------------------------------------------------------
; DATOS leido_A8FF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8ff..0xa900  (1 bytes)
DATA_leido_A8FF:
	defb 0dbh	; a8ff

; ----------------------------------------------------------------------
; DATOS leido_A900: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa900..0xa901  (1 bytes)
DATA_leido_A900:
	defb 002h	; a900

; ----------------------------------------------------------------------
; DATOS leido_A901: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa901..0xa902  (1 bytes)
DATA_leido_A901:
	defb 0d6h	; a901

; ----------------------------------------------------------------------
; DATOS leido_A902: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xa902..0xa904  (2 bytes)
DATA_leido_A902:
	defb 002h,002h	; a902

; ----------------------------------------------------------------------
; DATOS leido_A904: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa904..0xa90b  (7 bytes)
DATA_leido_A904:
	defb 0d2h,053h,051h,051h,051h,051h,0fbh	; a904

; ----------------------------------------------------------------------
; DATOS leido_A90B: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa90b..0xa90e  (3 bytes)
DATA_leido_A90B:
	defb 002h,004h,0a9h	; a90b

; ----------------------------------------------------------------------
; DATOS leido_A90E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa90e..0xa911  (3 bytes)
DATA_leido_A90E:
	defb 073h,071h,0fbh	; a90e

; ----------------------------------------------------------------------
; DATOS leido_A911: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa911..0xa914  (3 bytes)
DATA_leido_A911:
	defb 00ah,00fh,0a9h	; a911

; ----------------------------------------------------------------------
; DATOS leido_A914: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa914..0xa915  (1 bytes)
DATA_leido_A914:
	defb 0fch	; a914

; ----------------------------------------------------------------------
; DATOS leido_A915: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa915..0xa918  (3 bytes)
DATA_leido_A915:
	defb 002h,084h,0a8h	; a915

; ----------------------------------------------------------------------
; DATOS leido_A918: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa918..0xa91b  (3 bytes)
DATA_leido_A918:
	defb 0dch,0d8h,0f8h	; a918

; ----------------------------------------------------------------------
; DATOS leido_A91B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa91b..0xa91c  (1 bytes)
DATA_leido_A91B:
	defb 017h	; a91b

; ----------------------------------------------------------------------
; DATOS leido_A91C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa91c..0xa91d  (1 bytes)
DATA_leido_A91C:
	defb 0ebh	; a91c

; ----------------------------------------------------------------------
; DATOS leido_A91D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa91d..0xa91e  (1 bytes)
DATA_leido_A91D:
	defb 026h	; a91d

; ----------------------------------------------------------------------
; DATOS leido_A91E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa91e..0xa91f  (1 bytes)
DATA_leido_A91E:
	defb 070h	; a91e

; ----------------------------------------------------------------------
; DATOS leido_A91F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa91f..0xa920  (1 bytes)
DATA_leido_A91F:
	defb 0f9h	; a91f

; ----------------------------------------------------------------------
; DATOS leido_A920: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa920..0xa922  (2 bytes)
DATA_leido_A920:
	defb 020h,0ach	; a920

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa922..0xa968  (70 bytes)
DATA_A922:
	defb 0d2h,067h,041h,061h,017h,011h,061h,0ebh,007h,040h,0bdh,0ech,0eah,002h,0b3h,0ebh	; a922  .gAa..a..@......
	defb 026h,070h,0eah,005h,0b0h,0a0h,090h,080h,070h,060h,0eah,008h,0f9h,020h,0ach,0d2h	; a932  &p......p`... ..
	defb 071h,061h,071h,0ebh,007h,040h,0d1h,00dh,0ech,0eah,002h,003h,0ebh,026h,070h,0eah	; a942  qaq..@.......&p.
	defb 007h,0d2h,0b1h,071h,051h,021h,0d3h,0b1h,075h,0feh,004h,0d0h,0f8h,005h,060h,060h	; a952  ...qQ!..u.....``
	defb 071h,071h,071h,0fdh,084h,0a8h	; a962

; ----------------------------------------------------------------------
; DATOS leido_A968: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa968..0xa969  (1 bytes)
DATA_leido_A968:
	defb 0feh	; a968

; ----------------------------------------------------------------------
; DATOS leido_A969: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa969..0xa96a  (1 bytes)
DATA_leido_A969:
	defb 001h	; a969

; ----------------------------------------------------------------------
; DATOS leido_A96A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa96a..0xa96b  (1 bytes)
DATA_leido_A96A:
	defb 0f8h	; a96a

; ----------------------------------------------------------------------
; DATOS leido_A96B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa96b..0xa96c  (1 bytes)
DATA_leido_A96B:
	defb 00bh	; a96b

; ----------------------------------------------------------------------
; DATOS leido_A96C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa96c..0xa96d  (1 bytes)
DATA_leido_A96C:
	defb 0dbh	; a96c

; ----------------------------------------------------------------------
; DATOS leido_A96D: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa96d..0xa96e  (1 bytes)
DATA_leido_A96D:
	defb 004h	; a96d

; ----------------------------------------------------------------------
; DATOS leido_A96E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa96e..0xa96f  (1 bytes)
DATA_leido_A96E:
	defb 0eah	; a96e

; ----------------------------------------------------------------------
; DATOS leido_A96F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa96f..0xa970  (1 bytes)
DATA_leido_A96F:
	defb 008h	; a96f

; ----------------------------------------------------------------------
; DATOS leido_A970: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa970..0xa971  (1 bytes)
DATA_leido_A970:
	defb 0ebh	; a970

; ----------------------------------------------------------------------
; DATOS leido_A971: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa971..0xa972  (1 bytes)
DATA_leido_A971:
	defb 003h	; a971

; ----------------------------------------------------------------------
; DATOS leido_A972: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa972..0xa973  (1 bytes)
DATA_leido_A972:
	defb 050h	; a972

; ----------------------------------------------------------------------
; DATOS leido_A973: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa973..0xa974  (1 bytes)
DATA_leido_A973:
	defb 0f9h	; a973

; ----------------------------------------------------------------------
; DATOS leido_A974: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa974..0xa976  (2 bytes)
DATA_leido_A974:
	defb 02ch,0ach	; a974

; ----------------------------------------------------------------------
; DATOS leido_A976: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa976..0xa978  (2 bytes)
DATA_leido_A976:
	defb 0ech,0eah	; a976

; ----------------------------------------------------------------------
; DATOS leido_A978: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa978..0xa979  (1 bytes)
DATA_leido_A978:
	defb 005h	; a978

; ----------------------------------------------------------------------
; DATOS leido_A979: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa979..0xa97d  (4 bytes)
DATA_leido_A979:
	defb 0d3h,090h,0a0h,0eah	; a979

; ----------------------------------------------------------------------
; DATOS leido_A97D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa97d..0xa97e  (1 bytes)
DATA_leido_A97D:
	defb 006h	; a97d

; ----------------------------------------------------------------------
; DATOS leido_A97E: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa97e..0xa982  (4 bytes)
DATA_leido_A97E:
	defb 0b0h,0d2h,000h,0eah	; a97e

; ----------------------------------------------------------------------
; DATOS leido_A982: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa982..0xa983  (1 bytes)
DATA_leido_A982:
	defb 008h	; a982

; ----------------------------------------------------------------------
; DATOS leido_A983: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa983..0xa986  (3 bytes)
DATA_leido_A983:
	defb 010h,020h,0ebh	; a983

; ----------------------------------------------------------------------
; DATOS leido_A986: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa986..0xa987  (1 bytes)
DATA_leido_A986:
	defb 003h	; a986

; ----------------------------------------------------------------------
; DATOS leido_A987: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa987..0xa988  (1 bytes)
DATA_leido_A987:
	defb 050h	; a987

; ----------------------------------------------------------------------
; DATOS leido_A988: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa988..0xa989  (1 bytes)
DATA_leido_A988:
	defb 0f9h	; a988

; ----------------------------------------------------------------------
; DATOS leido_A989: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa989..0xa98b  (2 bytes)
DATA_leido_A989:
	defb 03fh,0ach	; a989

; ----------------------------------------------------------------------
; DATOS leido_A98B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa98b..0xa98c  (1 bytes)
DATA_leido_A98B:
	defb 0dbh	; a98b

; ----------------------------------------------------------------------
; DATOS leido_A98C: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa98c..0xa98d  (1 bytes)
DATA_leido_A98C:
	defb 002h	; a98c

; ----------------------------------------------------------------------
; DATOS leido_A98D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa98d..0xa98e  (1 bytes)
DATA_leido_A98D:
	defb 0eah	; a98d

; ----------------------------------------------------------------------
; DATOS leido_A98E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa98e..0xa98f  (1 bytes)
DATA_leido_A98E:
	defb 007h	; a98e

; ----------------------------------------------------------------------
; DATOS leido_A98F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa98f..0xa990  (1 bytes)
DATA_leido_A98F:
	defb 0ebh	; a98f

; ----------------------------------------------------------------------
; DATOS leido_A990: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa990..0xa991  (1 bytes)
DATA_leido_A990:
	defb 002h	; a990

; ----------------------------------------------------------------------
; DATOS leido_A991: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa991..0xa992  (1 bytes)
DATA_leido_A991:
	defb 083h	; a991

; ----------------------------------------------------------------------
; DATOS leido_A992: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xa992..0xa99b  (9 bytes)
DATA_leido_A992:
	defb 0d2h,0a1h,051h,0a1h,0d1h,031h,051h,031h,0fbh	; a992  ..Q..1Q1.

; ----------------------------------------------------------------------
; DATOS leido_A99B: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa99b..0xa99e  (3 bytes)
DATA_leido_A99B:
	defb 004h,092h,0a9h	; a99b

; ----------------------------------------------------------------------
; DATOS leido_A99E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa99e..0xa99f  (1 bytes)
DATA_leido_A99E:
	defb 0f8h	; a99e

; ----------------------------------------------------------------------
; DATOS leido_A99F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa99f..0xa9a0  (1 bytes)
DATA_leido_A99F:
	defb 00bh	; a99f

; ----------------------------------------------------------------------
; DATOS leido_A9A0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9a0..0xa9a1  (1 bytes)
DATA_leido_A9A0:
	defb 0eah	; a9a0

; ----------------------------------------------------------------------
; DATOS leido_A9A1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9a1..0xa9a2  (1 bytes)
DATA_leido_A9A1:
	defb 007h	; a9a1

; ----------------------------------------------------------------------
; DATOS leido_A9A2: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa9a2..0xa9a5  (3 bytes)
DATA_leido_A9A2:
	defb 0d3h,071h,0f9h	; a9a2

; ----------------------------------------------------------------------
; DATOS leido_A9A5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9a5..0xa9a7  (2 bytes)
DATA_leido_A9A5:
	defb 060h,0ach	; a9a5

; ----------------------------------------------------------------------
; DATOS leido_A9A7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9a7..0xa9a9  (2 bytes)
DATA_leido_A9A7:
	defb 021h,0f8h	; a9a7

; ----------------------------------------------------------------------
; DATOS leido_A9A9: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa9a9..0xa9aa  (1 bytes)
DATA_leido_A9A9:
	defb 00bh	; a9a9

; ----------------------------------------------------------------------
; DATOS leido_A9AA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9aa..0xa9ab  (1 bytes)
DATA_leido_A9AA:
	defb 0f2h	; a9aa

; ----------------------------------------------------------------------
; DATOS leido_A9AB: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa9ab..0xa9ac  (1 bytes)
DATA_leido_A9AB:
	defb 020h	; a9ab

; ----------------------------------------------------------------------
; DATOS leido_A9AC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ac..0xa9ad  (1 bytes)
DATA_leido_A9AC:
	defb 0f1h	; a9ac

; ----------------------------------------------------------------------
; DATOS leido_A9AD: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa9ad..0xa9ae  (1 bytes)
DATA_leido_A9AD:
	defb 042h	; a9ad

; ----------------------------------------------------------------------
; DATOS leido_A9AE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ae..0xa9af  (1 bytes)
DATA_leido_A9AE:
	defb 0eah	; a9ae

; ----------------------------------------------------------------------
; DATOS leido_A9AF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9af..0xa9b0  (1 bytes)
DATA_leido_A9AF:
	defb 007h	; a9af

; ----------------------------------------------------------------------
; DATOS leido_A9B0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9b0..0xa9b1  (1 bytes)
DATA_leido_A9B0:
	defb 0ebh	; a9b0

; ----------------------------------------------------------------------
; DATOS leido_A9B1: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9b1..0xa9b2  (1 bytes)
DATA_leido_A9B1:
	defb 017h	; a9b1

; ----------------------------------------------------------------------
; DATOS leido_A9B2: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9b2..0xa9b3  (1 bytes)
DATA_leido_A9B2:
	defb 0f0h	; a9b2

; ----------------------------------------------------------------------
; DATOS leido_A9B3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9b3..0xa9b4  (1 bytes)
DATA_leido_A9B3:
	defb 0dbh	; a9b3

; ----------------------------------------------------------------------
; DATOS leido_A9B4: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa9b4..0xa9b5  (1 bytes)
DATA_leido_A9B4:
	defb 003h	; a9b4

; ----------------------------------------------------------------------
; DATOS leido_A9B5: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa9b5..0xa9b8  (3 bytes)
DATA_leido_A9B5:
	defb 0d1h,007h,0f9h	; a9b5

; ----------------------------------------------------------------------
; DATOS leido_A9B8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9b8..0xa9ba  (2 bytes)
DATA_leido_A9B8:
	defb 07eh,0ach	; a9b8

; ----------------------------------------------------------------------
; DATOS leido_A9BA: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9ba..0xa9bc  (2 bytes)
DATA_leido_A9BA:
	defb 0ech,0eah	; a9ba

; ----------------------------------------------------------------------
; DATOS leido_A9BC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9bc..0xa9bd  (1 bytes)
DATA_leido_A9BC:
	defb 002h	; a9bc

; ----------------------------------------------------------------------
; DATOS leido_A9BD: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9bd..0xa9bf  (2 bytes)
DATA_leido_A9BD:
	defb 0a3h,0eah	; a9bd

; ----------------------------------------------------------------------
; DATOS leido_A9BF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9bf..0xa9c0  (1 bytes)
DATA_leido_A9BF:
	defb 007h	; a9bf

; ----------------------------------------------------------------------
; DATOS leido_A9C0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9c0..0xa9c1  (1 bytes)
DATA_leido_A9C0:
	defb 0ebh	; a9c0

; ----------------------------------------------------------------------
; DATOS leido_A9C1: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9c1..0xa9c2  (1 bytes)
DATA_leido_A9C1:
	defb 017h	; a9c1

; ----------------------------------------------------------------------
; DATOS leido_A9C2: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9c2..0xa9c3  (1 bytes)
DATA_leido_A9C2:
	defb 0f0h	; a9c2

; ----------------------------------------------------------------------
; DATOS leido_A9C3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9c3..0xa9c4  (1 bytes)
DATA_leido_A9C3:
	defb 0f9h	; a9c3

; ----------------------------------------------------------------------
; DATOS leido_A9C4: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9c4..0xa9c6  (2 bytes)
DATA_leido_A9C4:
	defb 09dh,0ach	; a9c4

; ----------------------------------------------------------------------
; DATOS leido_A9C6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9c6..0xa9c7  (1 bytes)
DATA_leido_A9C6:
	defb 0f8h	; a9c6

; ----------------------------------------------------------------------
; DATOS leido_A9C7: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa9c7..0xa9c8  (1 bytes)
DATA_leido_A9C7:
	defb 002h	; a9c7

; ----------------------------------------------------------------------
; DATOS leido_A9C8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9c8..0xa9c9  (1 bytes)
DATA_leido_A9C8:
	defb 0ebh	; a9c8

; ----------------------------------------------------------------------
; DATOS leido_A9C9: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9c9..0xa9ca  (1 bytes)
DATA_leido_A9C9:
	defb 012h	; a9c9

; ----------------------------------------------------------------------
; DATOS leido_A9CA: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9ca..0xa9cb  (1 bytes)
DATA_leido_A9CA:
	defb 082h	; a9ca

; ----------------------------------------------------------------------
; DATOS leido_A9CB: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xa9cb..0xa9d5  (10 bytes)
DATA_leido_A9CB:
	defb 0d3h,071h,0d2h,001h,021h,071h,0d1h,001h,021h,0f8h	; a9cb  .q..!q..!.

; ----------------------------------------------------------------------
; DATOS leido_A9D5: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa9d5..0xa9d6  (1 bytes)
DATA_leido_A9D5:
	defb 00bh	; a9d5

; ----------------------------------------------------------------------
; DATOS leido_A9D6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9d6..0xa9d7  (1 bytes)
DATA_leido_A9D6:
	defb 0ebh	; a9d6

; ----------------------------------------------------------------------
; DATOS leido_A9D7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9d7..0xa9d8  (1 bytes)
DATA_leido_A9D7:
	defb 017h	; a9d7

; ----------------------------------------------------------------------
; DATOS leido_A9D8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9d8..0xa9d9  (1 bytes)
DATA_leido_A9D8:
	defb 0f0h	; a9d8

; ----------------------------------------------------------------------
; DATOS leido_A9D9: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa9d9..0xa9dc  (3 bytes)
DATA_leido_A9D9:
	defb 0d1h,007h,0f9h	; a9d9

; ----------------------------------------------------------------------
; DATOS leido_A9DC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9dc..0xa9de  (2 bytes)
DATA_leido_A9DC:
	defb 07eh,0ach	; a9dc

; ----------------------------------------------------------------------
; DATOS leido_A9DE: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9de..0xa9e0  (2 bytes)
DATA_leido_A9DE:
	defb 0ech,0eah	; a9de

; ----------------------------------------------------------------------
; DATOS leido_A9E0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9e0..0xa9e1  (1 bytes)
DATA_leido_A9E0:
	defb 002h	; a9e0

; ----------------------------------------------------------------------
; DATOS leido_A9E1: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9e1..0xa9e3  (2 bytes)
DATA_leido_A9E1:
	defb 0a3h,0eah	; a9e1

; ----------------------------------------------------------------------
; DATOS leido_A9E3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9e3..0xa9e4  (1 bytes)
DATA_leido_A9E3:
	defb 007h	; a9e3

; ----------------------------------------------------------------------
; DATOS leido_A9E4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9e4..0xa9e5  (1 bytes)
DATA_leido_A9E4:
	defb 0ebh	; a9e4

; ----------------------------------------------------------------------
; DATOS leido_A9E5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9e5..0xa9e6  (1 bytes)
DATA_leido_A9E5:
	defb 017h	; a9e5

; ----------------------------------------------------------------------
; DATOS leido_A9E6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9e6..0xa9e7  (1 bytes)
DATA_leido_A9E6:
	defb 0f0h	; a9e6

; ----------------------------------------------------------------------
; DATOS leido_A9E7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9e7..0xa9e8  (1 bytes)
DATA_leido_A9E7:
	defb 0f9h	; a9e7

; ----------------------------------------------------------------------
; DATOS leido_A9E8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xa9e8..0xa9ea  (2 bytes)
DATA_leido_A9E8:
	defb 09dh,0ach	; a9e8

; ----------------------------------------------------------------------
; DATOS leido_A9EA: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9ea..0xa9ec  (2 bytes)
DATA_leido_A9EA:
	defb 0ech,0eah	; a9ea

; ----------------------------------------------------------------------
; DATOS leido_A9EC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9ec..0xa9ed  (1 bytes)
DATA_leido_A9EC:
	defb 002h	; a9ec

; ----------------------------------------------------------------------
; DATOS leido_A9ED: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9ed..0xa9ef  (2 bytes)
DATA_leido_A9ED:
	defb 075h,0f8h	; a9ed

; ----------------------------------------------------------------------
; DATOS leido_A9EF: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa9ef..0xa9f0  (1 bytes)
DATA_leido_A9EF:
	defb 002h	; a9ef

; ----------------------------------------------------------------------
; DATOS leido_A9F0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9f0..0xa9f1  (1 bytes)
DATA_leido_A9F0:
	defb 0eah	; a9f0

; ----------------------------------------------------------------------
; DATOS leido_A9F1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9f1..0xa9f2  (1 bytes)
DATA_leido_A9F1:
	defb 008h	; a9f1

; ----------------------------------------------------------------------
; DATOS leido_A9F2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9f2..0xa9f3  (1 bytes)
DATA_leido_A9F2:
	defb 0ebh	; a9f2

; ----------------------------------------------------------------------
; DATOS leido_A9F3: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9f3..0xa9f4  (1 bytes)
DATA_leido_A9F3:
	defb 031h	; a9f3

; ----------------------------------------------------------------------
; DATOS leido_A9F4: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9f4..0xa9f5  (1 bytes)
DATA_leido_A9F4:
	defb 080h	; a9f4

; ----------------------------------------------------------------------
; DATOS leido_A9F5: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa9f5..0xa9fb  (6 bytes)
DATA_leido_A9F5:
	defb 0d3h,071h,081h,091h,0dch,0f8h	; a9f5

; ----------------------------------------------------------------------
; DATOS leido_A9FB: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa9fb..0xa9fc  (1 bytes)
DATA_leido_A9FB:
	defb 016h	; a9fb

; ----------------------------------------------------------------------
; DATOS leido_A9FC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9fc..0xa9fd  (1 bytes)
DATA_leido_A9FC:
	defb 0d7h	; a9fc

; ----------------------------------------------------------------------
; DATOS leido_A9FD: 2 bytes que leen p10:6E87, p10:6E8C al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E87, p10:6E8C (2 bytes)
;   0xa9fd..0xa9ff  (2 bytes)
DATA_leido_A9FD:
	defb 002h,001h	; a9fd

; ----------------------------------------------------------------------
; DATOS leido_A9FF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ff..0xaa00  (1 bytes)
DATA_leido_A9FF:
	defb 0f2h	; a9ff

; ----------------------------------------------------------------------
; DATOS leido_AA00: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaa00..0xaa01  (1 bytes)
DATA_leido_AA00:
	defb 007h	; aa00

; ----------------------------------------------------------------------
; DATOS leido_AA01: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa01..0xaa02  (1 bytes)
DATA_leido_AA01:
	defb 0f1h	; aa01

; ----------------------------------------------------------------------
; DATOS leido_AA02: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaa02..0xaa03  (1 bytes)
DATA_leido_AA02:
	defb 041h	; aa02

; ----------------------------------------------------------------------
; DATOS leido_AA03: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa03..0xaa04  (1 bytes)
DATA_leido_AA03:
	defb 0f9h	; aa03

; ----------------------------------------------------------------------
; DATOS leido_AA04: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaa04..0xaa06  (2 bytes)
DATA_leido_AA04:
	defb 0b2h,0ach	; aa04

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaa06..0xaa68  (98 bytes)
DATA_AA06:
	defb 0d2h,090h,0a0h,0b0h,0d1h,000h,010h,020h,0eah,009h,0ebh,021h,050h,031h,041h,051h	; aa06  ....... ...!P1AQ
	defb 0eah,009h,0ebh,021h,050h,063h,061h,0ech,0eah,002h,065h,0fbh,003h,016h,0aah,000h	; aa16  ...!Pca...e.....
	defb 010h,020h,030h,040h,050h,0eah,009h,0ebh,021h,050h,061h,051h,041h,0f9h,0b2h,0ach	; aa26  . 0@P...!PaQA...
	defb 090h,080h,070h,060h,050h,040h,0eah,009h,0ebh,021h,050h,031h,021h,011h,0eah,009h	; aa36  ..p`P@...!P1!...
	defb 0ebh,021h,050h,0d1h,003h,001h,0ech,0eah,002h,005h,0fbh,002h,044h,0aah,0eah,008h	; aa46  .!P.........D...
	defb 0dbh,002h,0ebh,021h,050h,0d2h,0b3h,0b1h,0d2h,071h,0b1h,0d1h,021h,07bh,0d8h,0fdh	; aa56  ...!P....q..!{..
	defb 0a8h,0a9h	; aa66

; ----------------------------------------------------------------------
; DATOS leido_AA68: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa68..0xaa69  (1 bytes)
DATA_leido_AA68:
	defb 0feh	; aa68

; ----------------------------------------------------------------------
; DATOS leido_AA69: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa69..0xaa6a  (1 bytes)
DATA_leido_AA69:
	defb 001h	; aa69

; ----------------------------------------------------------------------
; DATOS leido_AA6A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa6a..0xaa6b  (1 bytes)
DATA_leido_AA6A:
	defb 0f8h	; aa6a

; ----------------------------------------------------------------------
; DATOS leido_AA6B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaa6b..0xaa6c  (1 bytes)
DATA_leido_AA6B:
	defb 00bh	; aa6b

; ----------------------------------------------------------------------
; DATOS leido_AA6C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa6c..0xaa6d  (1 bytes)
DATA_leido_AA6C:
	defb 0f2h	; aa6c

; ----------------------------------------------------------------------
; DATOS leido_AA6D: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaa6d..0xaa6e  (1 bytes)
DATA_leido_AA6D:
	defb 020h	; aa6d

; ----------------------------------------------------------------------
; DATOS leido_AA6E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa6e..0xaa6f  (1 bytes)
DATA_leido_AA6E:
	defb 0f1h	; aa6e

; ----------------------------------------------------------------------
; DATOS leido_AA6F: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaa6f..0xaa70  (1 bytes)
DATA_leido_AA6F:
	defb 042h	; aa6f

; ----------------------------------------------------------------------
; DATOS leido_AA70: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa70..0xaa71  (1 bytes)
DATA_leido_AA70:
	defb 0dbh	; aa70

; ----------------------------------------------------------------------
; DATOS leido_AA71: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaa71..0xaa72  (1 bytes)
DATA_leido_AA71:
	defb 004h	; aa71

; ----------------------------------------------------------------------
; DATOS leido_AA72: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa72..0xaa73  (1 bytes)
DATA_leido_AA72:
	defb 0eah	; aa72

; ----------------------------------------------------------------------
; DATOS leido_AA73: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa73..0xaa74  (1 bytes)
DATA_leido_AA73:
	defb 008h	; aa73

; ----------------------------------------------------------------------
; DATOS leido_AA74: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa74..0xaa75  (1 bytes)
DATA_leido_AA74:
	defb 0ebh	; aa74

; ----------------------------------------------------------------------
; DATOS leido_AA75: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaa75..0xaa76  (1 bytes)
DATA_leido_AA75:
	defb 003h	; aa75

; ----------------------------------------------------------------------
; DATOS leido_AA76: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaa76..0xaa77  (1 bytes)
DATA_leido_AA76:
	defb 050h	; aa76

; ----------------------------------------------------------------------
; DATOS leido_AA77: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa77..0xaa78  (1 bytes)
DATA_leido_AA77:
	defb 0e9h	; aa77

; ----------------------------------------------------------------------
; DATOS leido_AA78: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa78..0xaa79  (1 bytes)
DATA_leido_AA78:
	defb 004h	; aa78

; ----------------------------------------------------------------------
; DATOS leido_AA79: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xaa79..0xaa82  (9 bytes)
DATA_leido_AA79:
	defb 0d3h,075h,0d2h,005h,055h,051h,001h,051h,0e9h	; aa79  .u..UQ.Q.

; ----------------------------------------------------------------------
; DATOS leido_AA82: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa82..0xaa83  (1 bytes)
DATA_leido_AA82:
	defb 008h	; aa82

; ----------------------------------------------------------------------
; DATOS leido_AA83: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa83..0xaa85  (2 bytes)
DATA_leido_AA83:
	defb 048h,0e9h	; aa83

; ----------------------------------------------------------------------
; DATOS leido_AA85: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa85..0xaa86  (1 bytes)
DATA_leido_AA85:
	defb 004h	; aa85

; ----------------------------------------------------------------------
; DATOS leido_AA86: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa86..0xaa88  (2 bytes)
DATA_leido_AA86:
	defb 0ech,0eah	; aa86

; ----------------------------------------------------------------------
; DATOS leido_AA88: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa88..0xaa89  (1 bytes)
DATA_leido_AA88:
	defb 004h	; aa88

; ----------------------------------------------------------------------
; DATOS leido_AA89: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xaa89..0xaa8d  (4 bytes)
DATA_leido_AA89:
	defb 0d3h,040h,050h,0eah	; aa89

; ----------------------------------------------------------------------
; DATOS leido_AA8D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa8d..0xaa8e  (1 bytes)
DATA_leido_AA8D:
	defb 005h	; aa8d

; ----------------------------------------------------------------------
; DATOS leido_AA8E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaa8e..0xaa91  (3 bytes)
DATA_leido_AA8E:
	defb 060h,070h,0eah	; aa8e

; ----------------------------------------------------------------------
; DATOS leido_AA91: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa91..0xaa92  (1 bytes)
DATA_leido_AA91:
	defb 006h	; aa91

; ----------------------------------------------------------------------
; DATOS leido_AA92: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaa92..0xaa95  (3 bytes)
DATA_leido_AA92:
	defb 080h,090h,0eah	; aa92

; ----------------------------------------------------------------------
; DATOS leido_AA95: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa95..0xaa96  (1 bytes)
DATA_leido_AA95:
	defb 008h	; aa95

; ----------------------------------------------------------------------
; DATOS leido_AA96: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa96..0xaa97  (1 bytes)
DATA_leido_AA96:
	defb 0ebh	; aa96

; ----------------------------------------------------------------------
; DATOS leido_AA97: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaa97..0xaa98  (1 bytes)
DATA_leido_AA97:
	defb 003h	; aa97

; ----------------------------------------------------------------------
; DATOS leido_AA98: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaa98..0xaa99  (1 bytes)
DATA_leido_AA98:
	defb 050h	; aa98

; ----------------------------------------------------------------------
; DATOS leido_AA99: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xaa99..0xaaa2  (9 bytes)
DATA_leido_AA99:
	defb 0d3h,0a5h,0d2h,035h,085h,081h,031h,081h,0e9h	; aa99  ...5..1..

; ----------------------------------------------------------------------
; DATOS leido_AAA2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaaa2..0xaaa3  (1 bytes)
DATA_leido_AAA2:
	defb 008h	; aaa2

; ----------------------------------------------------------------------
; DATOS leido_AAA3: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaaa3..0xaaa5  (2 bytes)
DATA_leido_AAA3:
	defb 07bh,0f8h	; aaa3

; ----------------------------------------------------------------------
; DATOS leido_AAA5: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaaa5..0xaaa6  (1 bytes)
DATA_leido_AAA5:
	defb 002h	; aaa5

; ----------------------------------------------------------------------
; DATOS leido_AAA6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaa6..0xaaa7  (1 bytes)
DATA_leido_AAA6:
	defb 0e9h	; aaa6

; ----------------------------------------------------------------------
; DATOS leido_AAA7: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaaa7..0xaaa8  (1 bytes)
DATA_leido_AAA7:
	defb 004h	; aaa7

; ----------------------------------------------------------------------
; DATOS leido_AAA8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaa8..0xaaa9  (1 bytes)
DATA_leido_AAA8:
	defb 0eah	; aaa8

; ----------------------------------------------------------------------
; DATOS leido_AAA9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaaa9..0xaaaa  (1 bytes)
DATA_leido_AAA9:
	defb 004h	; aaa9

; ----------------------------------------------------------------------
; DATOS leido_AAAA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaaa..0xaaab  (1 bytes)
DATA_leido_AAAA:
	defb 0ebh	; aaaa

; ----------------------------------------------------------------------
; DATOS leido_AAAB: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaaab..0xaaac  (1 bytes)
DATA_leido_AAAB:
	defb 002h	; aaab

; ----------------------------------------------------------------------
; DATOS leido_AAAC: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaaac..0xaaad  (1 bytes)
DATA_leido_AAAC:
	defb 082h	; aaac

; ----------------------------------------------------------------------
; DATOS leido_AAAD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaad..0xaaae  (1 bytes)
DATA_leido_AAAD:
	defb 0eeh	; aaad

; ----------------------------------------------------------------------
; DATOS leido_AAAE: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xaaae..0xaaaf  (1 bytes)
DATA_leido_AAAE:
	defb 001h	; aaae

; ----------------------------------------------------------------------
; DATOS leido_AAAF: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xaaaf..0xaab8  (9 bytes)
DATA_leido_AAAF:
	defb 0d2h,0a1h,051h,0a1h,0d1h,031h,051h,031h,0fbh	; aaaf  ..Q..1Q1.

; ----------------------------------------------------------------------
; DATOS leido_AAB8: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaab8..0xaabb  (3 bytes)
DATA_leido_AAB8:
	defb 002h,0afh,0aah	; aab8

; ----------------------------------------------------------------------
; DATOS leido_AABB: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaabb..0xaabd  (2 bytes)
DATA_leido_AABB:
	defb 0efh,0eah	; aabb

; ----------------------------------------------------------------------
; DATOS leido_AABD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaabd..0xaabe  (1 bytes)
DATA_leido_AABD:
	defb 007h	; aabd

; ----------------------------------------------------------------------
; DATOS leido_AABE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaabe..0xaabf  (1 bytes)
DATA_leido_AABE:
	defb 0ebh	; aabe

; ----------------------------------------------------------------------
; DATOS leido_AABF: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaabf..0xaac0  (1 bytes)
DATA_leido_AABF:
	defb 002h	; aabf

; ----------------------------------------------------------------------
; DATOS leido_AAC0: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaac0..0xaac1  (1 bytes)
DATA_leido_AAC0:
	defb 083h	; aac0

; ----------------------------------------------------------------------
; DATOS leido_AAC1: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xaac1..0xaacb  (10 bytes)
DATA_leido_AAC1:
	defb 0d2h,051h,001h,051h,0a1h,0d1h,001h,0d2h,0a1h,0fbh	; aac1  .Q.Q......

; ----------------------------------------------------------------------
; DATOS leido_AACB: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaacb..0xaace  (3 bytes)
DATA_leido_AACB:
	defb 002h,0c1h,0aah	; aacb

; ----------------------------------------------------------------------
; DATOS leido_AACE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaace..0xaacf  (1 bytes)
DATA_leido_AACE:
	defb 0f8h	; aace

; ----------------------------------------------------------------------
; DATOS leido_AACF: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaacf..0xaad0  (1 bytes)
DATA_leido_AACF:
	defb 00bh	; aacf

; ----------------------------------------------------------------------
; DATOS leido_AAD0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad0..0xaad1  (1 bytes)
DATA_leido_AAD0:
	defb 0eah	; aad0

; ----------------------------------------------------------------------
; DATOS leido_AAD1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaad1..0xaad2  (1 bytes)
DATA_leido_AAD1:
	defb 007h	; aad1

; ----------------------------------------------------------------------
; DATOS leido_AAD2: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (16 bytes)
;   0xaad2..0xaae2  (16 bytes)
DATA_leido_AAD2:
	defb 0d3h,021h,071h,0b1h,0b1h,0d2h,021h,021h,021h,071h,0b1h,0b1h,0d1h,021h,021h,0eah	; aad2  .!q...!!!q...!!.

; ----------------------------------------------------------------------
; DATOS leido_AAE2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaae2..0xaae3  (1 bytes)
DATA_leido_AAE2:
	defb 008h	; aae2

; ----------------------------------------------------------------------
; DATOS leido_AAE3: 15 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (15 bytes)
;   0xaae3..0xaaf2  (15 bytes)
DATA_leido_AAE3:
	defb 0d3h,021h,041h,051h,071h,091h,0b1h,0d2h,001h,021h,041h,051h,071h,091h,0f9h	; aae3  .!AQq....!AQq..

; ----------------------------------------------------------------------
; DATOS leido_AAF2: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaaf2..0xaaf4  (2 bytes)
DATA_leido_AAF2:
	defb 0c3h,0ach	; aaf2

; ----------------------------------------------------------------------
; DATOS leido_AAF4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaaf4..0xaaf6  (2 bytes)
DATA_leido_AAF4:
	defb 0ech,0f8h	; aaf4

; ----------------------------------------------------------------------
; DATOS leido_AAF6: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaaf6..0xaaf7  (1 bytes)
DATA_leido_AAF6:
	defb 002h	; aaf6

; ----------------------------------------------------------------------
; DATOS leido_AAF7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaf7..0xaaf8  (1 bytes)
DATA_leido_AAF7:
	defb 0eeh	; aaf7

; ----------------------------------------------------------------------
; DATOS leido_AAF8: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xaaf8..0xaaf9  (1 bytes)
DATA_leido_AAF8:
	defb 001h	; aaf8

; ----------------------------------------------------------------------
; DATOS leido_AAF9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaaf9..0xaafa  (1 bytes)
DATA_leido_AAF9:
	defb 0eah	; aaf9

; ----------------------------------------------------------------------
; DATOS leido_AAFA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaafa..0xaafb  (1 bytes)
DATA_leido_AAFA:
	defb 005h	; aafa

; ----------------------------------------------------------------------
; DATOS leido_AAFB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaafb..0xaafc  (1 bytes)
DATA_leido_AAFB:
	defb 0ebh	; aafb

; ----------------------------------------------------------------------
; DATOS leido_AAFC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaafc..0xaafd  (1 bytes)
DATA_leido_AAFC:
	defb 002h	; aafc

; ----------------------------------------------------------------------
; DATOS leido_AAFD: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaafd..0xaafe  (1 bytes)
DATA_leido_AAFD:
	defb 080h	; aafd

; ----------------------------------------------------------------------
; DATOS leido_AAFE: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xaafe..0xab07  (9 bytes)
DATA_leido_AAFE:
	defb 0d3h,073h,0d2h,001h,021h,071h,0d1h,001h,0f9h	; aafe  .s..!q...

; ----------------------------------------------------------------------
; DATOS leido_AB07: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab07..0xab09  (2 bytes)
DATA_leido_AB07:
	defb 0c3h,0ach	; ab07

; ----------------------------------------------------------------------
; DATOS leido_AB09: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab09..0xab0a  (1 bytes)
DATA_leido_AB09:
	defb 0eah	; ab09

; ----------------------------------------------------------------------
; DATOS leido_AB0A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xab0a..0xab0b  (1 bytes)
DATA_leido_AB0A:
	defb 00ah	; ab0a

; ----------------------------------------------------------------------
; DATOS leido_AB0B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab0b..0xab0c  (1 bytes)
DATA_leido_AB0B:
	defb 0ebh	; ab0b

; ----------------------------------------------------------------------
; DATOS leido_AB0C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xab0c..0xab0d  (1 bytes)
DATA_leido_AB0C:
	defb 009h	; ab0c

; ----------------------------------------------------------------------
; DATOS leido_AB0D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xab0d..0xab0e  (1 bytes)
DATA_leido_AB0D:
	defb 040h	; ab0d

; ----------------------------------------------------------------------
; DATOS leido_AB0E: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xab0e..0xab12  (4 bytes)
DATA_leido_AB0E:
	defb 0d3h,073h,071h,0f8h	; ab0e

; ----------------------------------------------------------------------
; DATOS leido_AB12: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xab12..0xab13  (1 bytes)
DATA_leido_AB12:
	defb 002h	; ab12

; ----------------------------------------------------------------------
; DATOS leido_AB13: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab13..0xab14  (1 bytes)
DATA_leido_AB13:
	defb 0eeh	; ab13

; ----------------------------------------------------------------------
; DATOS leido_AB14: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xab14..0xab15  (1 bytes)
DATA_leido_AB14:
	defb 001h	; ab14

; ----------------------------------------------------------------------
; DATOS leido_AB15: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab15..0xab16  (1 bytes)
DATA_leido_AB15:
	defb 0eah	; ab15

; ----------------------------------------------------------------------
; DATOS leido_AB16: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xab16..0xab17  (1 bytes)
DATA_leido_AB16:
	defb 005h	; ab16

; ----------------------------------------------------------------------
; DATOS leido_AB17: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab17..0xab18  (1 bytes)
DATA_leido_AB17:
	defb 0ebh	; ab17

; ----------------------------------------------------------------------
; DATOS leido_AB18: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xab18..0xab19  (1 bytes)
DATA_leido_AB18:
	defb 002h	; ab18

; ----------------------------------------------------------------------
; DATOS leido_AB19: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xab19..0xab1a  (1 bytes)
DATA_leido_AB19:
	defb 080h	; ab19

; ----------------------------------------------------------------------
; DATOS leido_AB1A: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xab1a..0xab21  (7 bytes)
DATA_leido_AB1A:
	defb 0d2h,071h,081h,091h,0dch,0efh,0f8h	; ab1a

; ----------------------------------------------------------------------
; DATOS leido_AB21: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xab21..0xab22  (1 bytes)
DATA_leido_AB21:
	defb 016h	; ab21

; ----------------------------------------------------------------------
; DATOS leido_AB22: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab22..0xab23  (1 bytes)
DATA_leido_AB22:
	defb 0d7h	; ab22

; ----------------------------------------------------------------------
; DATOS leido_AB23: 2 bytes que leen p10:6E87, p10:6E8C al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E87, p10:6E8C (2 bytes)
;   0xab23..0xab25  (2 bytes)
DATA_leido_AB23:
	defb 002h,001h	; ab23

; ----------------------------------------------------------------------
; DATOS leido_AB25: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab25..0xab26  (1 bytes)
DATA_leido_AB25:
	defb 0f2h	; ab25

; ----------------------------------------------------------------------
; DATOS leido_AB26: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xab26..0xab27  (1 bytes)
DATA_leido_AB26:
	defb 007h	; ab26

; ----------------------------------------------------------------------
; DATOS leido_AB27: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab27..0xab28  (1 bytes)
DATA_leido_AB27:
	defb 0f9h	; ab27

; ----------------------------------------------------------------------
; DATOS leido_AB28: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab28..0xab2a  (2 bytes)
DATA_leido_AB28:
	defb 013h,0adh	; ab28

; ----------------------------------------------------------------------
; DATOS sin identificar  0xab2a..0xab8e  (100 bytes)
DATA_AB2A:
	defb 0d2h,060h,070h,080h,090h,0a0h,0b0h,0eah,009h,0ebh,021h,050h,0d1h,001h,011h,021h	; ab2a  .`p.......!P...!
	defb 0eah,009h,0ebh,021h,050h,033h,031h,0ech,0eah,002h,035h,0fbh,003h,03ah,0abh,0d2h	; ab3a  ...!P31...5..:..
	defb 090h,0a0h,0b0h,0d1h,000h,010h,020h,0eah,009h,0ebh,021h,050h,031h,021h,011h,0f9h	; ab4a  ...... ...!P1!..
	defb 013h,0adh,060h,050h,040h,030h,020h,010h,0eah,009h,0ebh,021h,050h,001h,0d2h,0b1h	; ab5a  ..`P@0 ....!P...
	defb 0a1h,0eah,009h,0ebh,021h,050h,0d2h,073h,071h,0ech,0eah,002h,075h,0fbh,002h,06bh	; ab6a  ....!P.sq...u..k
	defb 0abh,0eah,008h,0dbh,002h,0ebh,021h,050h,0d2h,073h,071h,021h,071h,0b1h,0d1h,02bh	; ab7a  ......!P.sq!q..+
	defb 0d8h,0fdh,0f1h,0aah	; ab8a

; ----------------------------------------------------------------------
; DATOS leido_AB8E: 70 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 4 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (70
;   bytes)
;   0xab8e..0xabd4  (70 bytes)
DATA_leido_AB8E:
	defb 091h,000h,000h,001h,031h,001h,011h,000h,000h,091h,001h,031h,001h,091h,091h,001h	; ab8e  ....1......1....
	defb 091h,001h,031h,091h,011h,091h,011h,091h,0fah,091h,001h,001h,031h,001h,001h,091h	; ab9e  ..1.........1...
	defb 001h,001h,031h,001h,011h,091h,001h,001h,031h,001h,091h,0fah,091h,011h,091h,011h	; abae  ..1.....1.......
	defb 031h,011h,091h,001h,091h,001h,031h,031h,011h,031h,011h,091h,011h,031h,0fah,0d4h	; abbe  1.....11.1...1..
	defb 001h,0d3h,001h,0d4h,001h,0fbh	; abce

; ----------------------------------------------------------------------
; DATOS leido_ABD4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xabd4..0xabd7  (3 bytes)
DATA_leido_ABD4:
	defb 004h,0cdh,0abh	; abd4

; ----------------------------------------------------------------------
; DATOS leido_ABD7: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xabd7..0xabdd  (6 bytes)
DATA_leido_ABD7:
	defb 021h,0d3h,021h,0d4h,021h,0fbh	; abd7

; ----------------------------------------------------------------------
; DATOS leido_ABDD: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xabdd..0xabe0  (3 bytes)
DATA_leido_ABDD:
	defb 004h,0d7h,0abh	; abdd

; ----------------------------------------------------------------------
; DATOS leido_ABE0: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xabe0..0xabe6  (6 bytes)
DATA_leido_ABE0:
	defb 001h,0d3h,001h,0d4h,001h,0fbh	; abe0

; ----------------------------------------------------------------------
; DATOS leido_ABE6: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xabe6..0xabe9  (3 bytes)
DATA_leido_ABE6:
	defb 004h,0e0h,0abh	; abe6

; ----------------------------------------------------------------------
; DATOS leido_ABE9: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xabe9..0xabf0  (7 bytes)
DATA_leido_ABE9:
	defb 0d5h,0a1h,0d4h,0a1h,0d5h,0a1h,0fbh	; abe9

; ----------------------------------------------------------------------
; DATOS leido_ABF0: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xabf0..0xabf3  (3 bytes)
DATA_leido_ABF0:
	defb 004h,0e9h,0abh	; abf0

; ----------------------------------------------------------------------
; DATOS leido_ABF3: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xabf3..0xabf9  (6 bytes)
DATA_leido_ABF3:
	defb 081h,0d4h,081h,0d5h,081h,0fbh	; abf3

; ----------------------------------------------------------------------
; DATOS leido_ABF9: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xabf9..0xabfc  (3 bytes)
DATA_leido_ABF9:
	defb 004h,0f3h,0abh	; abf9

; ----------------------------------------------------------------------
; DATOS leido_ABFC: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xabfc..0xac02  (6 bytes)
DATA_leido_ABFC:
	defb 071h,0d4h,071h,0d5h,071h,0fbh	; abfc

; ----------------------------------------------------------------------
; DATOS leido_AC02: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xac02..0xac05  (3 bytes)
DATA_leido_AC02:
	defb 004h,0fch,0abh	; ac02

; ----------------------------------------------------------------------
; DATOS leido_AC05: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xac05..0xac0b  (6 bytes)
DATA_leido_AC05:
	defb 051h,0d4h,051h,0d5h,051h,0fbh	; ac05

; ----------------------------------------------------------------------
; DATOS leido_AC0B: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xac0b..0xac0e  (3 bytes)
DATA_leido_AC0B:
	defb 004h,005h,0ach	; ac0b

; ----------------------------------------------------------------------
; DATOS leido_AC0E: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xac0e..0xac1b  (13 bytes)
DATA_leido_AC0E:
	defb 071h,0d4h,071h,0d5h,071h,0fah,0d5h,0a1h,0d4h,0a1h,0d5h,0a1h,0fbh	; ac0e  q.q.q........

; ----------------------------------------------------------------------
; DATOS leido_AC1B: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xac1b..0xac1e  (3 bytes)
DATA_leido_AC1B:
	defb 007h,014h,0ach	; ac1b

; ----------------------------------------------------------------------
; DATOS sin identificar  0xac1e..0xac20  (2 bytes)
DATA_AC1E:
	defb 0a1h,0fah	; ac1e

; ----------------------------------------------------------------------
; DATOS leido_AC20: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 2 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (13
;   bytes)
;   0xac20..0xac2d  (13 bytes)
DATA_leido_AC20:
	defb 0d2h,037h,021h,031h,0d3h,0a7h,0d2h,001h,031h,08bh,0abh,0fah,0f2h	; ac20  .7!1....1....

; ----------------------------------------------------------------------
; DATOS leido_AC2D: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xac2d..0xac2e  (1 bytes)
DATA_leido_AC2D:
	defb 020h	; ac2d

; ----------------------------------------------------------------------
; DATOS leido_AC2E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac2e..0xac2f  (1 bytes)
DATA_leido_AC2E:
	defb 0f1h	; ac2e

; ----------------------------------------------------------------------
; DATOS leido_AC2F: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xac2f..0xac30  (1 bytes)
DATA_leido_AC2F:
	defb 042h	; ac2f

; ----------------------------------------------------------------------
; DATOS leido_AC30: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac30..0xac31  (1 bytes)
DATA_leido_AC30:
	defb 0e9h	; ac30

; ----------------------------------------------------------------------
; DATOS leido_AC31: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac31..0xac32  (1 bytes)
DATA_leido_AC31:
	defb 004h	; ac31

; ----------------------------------------------------------------------
; DATOS leido_AC32: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xac32..0xac3a  (8 bytes)
DATA_leido_AC32:
	defb 0d2h,005h,055h,0a5h,091h,051h,091h,0e9h	; ac32  ..U..Q..

; ----------------------------------------------------------------------
; DATOS leido_AC3A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac3a..0xac3b  (1 bytes)
DATA_leido_AC3A:
	defb 008h	; ac3a

; ----------------------------------------------------------------------
; DATOS leido_AC3B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac3b..0xac3d  (2 bytes)
DATA_leido_AC3B:
	defb 078h,0e9h	; ac3b

; ----------------------------------------------------------------------
; DATOS leido_AC3D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac3d..0xac3e  (1 bytes)
DATA_leido_AC3D:
	defb 004h	; ac3d

; ----------------------------------------------------------------------
; DATOS leido_AC3E: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xac3e..0xac49  (11 bytes)
DATA_leido_AC3E:
	defb 0fah,035h,085h,0d1h,015h,001h,0d2h,081h,0d1h,001h,0e9h	; ac3e  .5.........

; ----------------------------------------------------------------------
; DATOS leido_AC49: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac49..0xac4a  (1 bytes)
DATA_leido_AC49:
	defb 008h	; ac49

; ----------------------------------------------------------------------
; DATOS leido_AC4A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xac4a..0xac4d  (3 bytes)
DATA_leido_AC4A:
	defb 0d2h,0a8h,0f8h	; ac4a

; ----------------------------------------------------------------------
; DATOS leido_AC4D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xac4d..0xac4e  (1 bytes)
DATA_leido_AC4D:
	defb 002h	; ac4d

; ----------------------------------------------------------------------
; DATOS leido_AC4E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac4e..0xac4f  (1 bytes)
DATA_leido_AC4E:
	defb 0e9h	; ac4e

; ----------------------------------------------------------------------
; DATOS leido_AC4F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac4f..0xac50  (1 bytes)
DATA_leido_AC4F:
	defb 004h	; ac4f

; ----------------------------------------------------------------------
; DATOS leido_AC50: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac50..0xac52  (2 bytes)
DATA_leido_AC50:
	defb 0ech,0eah	; ac50

; ----------------------------------------------------------------------
; DATOS leido_AC52: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac52..0xac53  (1 bytes)
DATA_leido_AC52:
	defb 004h	; ac52

; ----------------------------------------------------------------------
; DATOS leido_AC53: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xac53..0xac58  (5 bytes)
DATA_leido_AC53:
	defb 0d3h,0b0h,0d2h,000h,0eah	; ac53

; ----------------------------------------------------------------------
; DATOS leido_AC58: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac58..0xac59  (1 bytes)
DATA_leido_AC58:
	defb 005h	; ac58

; ----------------------------------------------------------------------
; DATOS leido_AC59: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xac59..0xac5c  (3 bytes)
DATA_leido_AC59:
	defb 010h,020h,0eah	; ac59

; ----------------------------------------------------------------------
; DATOS leido_AC5C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac5c..0xac5d  (1 bytes)
DATA_leido_AC5C:
	defb 006h	; ac5c

; ----------------------------------------------------------------------
; DATOS leido_AC5D: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xac5d..0xac6e  (17 bytes)
DATA_leido_AC5D:
	defb 030h,040h,0fah,0b1h,0d2h,021h,021h,051h,071h,071h,0b1h,0d1h,021h,021h,051h,071h	; ac5d  0@...!!Qqq..!!Qq
	defb 0eah	; ac6d

; ----------------------------------------------------------------------
; DATOS leido_AC6E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac6e..0xac6f  (1 bytes)
DATA_leido_AC6E:
	defb 008h	; ac6e

; ----------------------------------------------------------------------
; DATOS leido_AC6F: 68 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (68 bytes)
;   0xac6f..0xacb3  (68 bytes)
DATA_leido_AC6F:
	defb 0d3h,071h,091h,0b1h,0d2h,001h,021h,041h,051h,071h,091h,0b1h,0d1h,001h,0fah,0d2h	; ac6f  .q....!AQq......
	defb 071h,0d1h,001h,075h,071h,061h,071h,061h,021h,0d2h,09dh,0d1h,061h,041h,061h,0d1h	; ac7f  q..uqaqa!...aAa.
	defb 007h,0d2h,071h,0d1h,001h,075h,071h,061h,071h,051h,041h,051h,0adh,0fah,0d1h,081h	; ac8f  ..q..uqaqQAQ....
	defb 071h,081h,05bh,005h,031h,021h,031h,0abh,0d2h,0a5h,097h,091h,0d1h,001h,093h,053h	; ac9f  q.[.1!1........S
	defb 093h,07bh,0fah,0eah	; acaf

; ----------------------------------------------------------------------
; DATOS leido_ACB3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xacb3..0xacb4  (1 bytes)
DATA_leido_ACB3:
	defb 009h	; acb3

; ----------------------------------------------------------------------
; DATOS leido_ACB4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacb4..0xacb5  (1 bytes)
DATA_leido_ACB4:
	defb 0ebh	; acb4

; ----------------------------------------------------------------------
; DATOS leido_ACB5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xacb5..0xacb6  (1 bytes)
DATA_leido_ACB5:
	defb 021h	; acb5

; ----------------------------------------------------------------------
; DATOS leido_ACB6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xacb6..0xacb7  (1 bytes)
DATA_leido_ACB6:
	defb 050h	; acb6

; ----------------------------------------------------------------------
; DATOS leido_ACB7: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xacb7..0xacbc  (5 bytes)
DATA_leido_ACB7:
	defb 0d1h,033h,031h,0ech,0eah	; acb7

; ----------------------------------------------------------------------
; DATOS leido_ACBC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xacbc..0xacbd  (1 bytes)
DATA_leido_ACBC:
	defb 002h	; acbc

; ----------------------------------------------------------------------
; DATOS leido_ACBD: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xacbd..0xacbf  (2 bytes)
DATA_leido_ACBD:
	defb 035h,0fbh	; acbd

; ----------------------------------------------------------------------
; DATOS leido_ACBF: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xacbf..0xacc2  (3 bytes)
DATA_leido_ACBF:
	defb 003h,0b2h,0ach	; acbf

; ----------------------------------------------------------------------
; DATOS sin identificar  0xacc2..0xacc3  (1 bytes)
DATA_ACC2:
	defb 0fah	; acc2

; ----------------------------------------------------------------------
; DATOS leido_ACC3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacc3..0xacc4  (1 bytes)
DATA_leido_ACC3:
	defb 0f8h	; acc3

; ----------------------------------------------------------------------
; DATOS leido_ACC4: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xacc4..0xacc5  (1 bytes)
DATA_leido_ACC4:
	defb 00bh	; acc4

; ----------------------------------------------------------------------
; DATOS leido_ACC5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacc5..0xacc6  (1 bytes)
DATA_leido_ACC5:
	defb 0f2h	; acc5

; ----------------------------------------------------------------------
; DATOS leido_ACC6: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xacc6..0xacc7  (1 bytes)
DATA_leido_ACC6:
	defb 020h	; acc6

; ----------------------------------------------------------------------
; DATOS leido_ACC7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacc7..0xacc8  (1 bytes)
DATA_leido_ACC7:
	defb 0eah	; acc7

; ----------------------------------------------------------------------
; DATOS leido_ACC8: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xacc8..0xacc9  (1 bytes)
DATA_leido_ACC8:
	defb 007h	; acc8

; ----------------------------------------------------------------------
; DATOS leido_ACC9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacc9..0xacca  (1 bytes)
DATA_leido_ACC9:
	defb 0ebh	; acc9

; ----------------------------------------------------------------------
; DATOS leido_ACCA: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xacca..0xaccb  (1 bytes)
DATA_leido_ACCA:
	defb 027h	; acca

; ----------------------------------------------------------------------
; DATOS leido_ACCB: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaccb..0xaccc  (1 bytes)
DATA_leido_ACCB:
	defb 0f0h	; accb

; ----------------------------------------------------------------------
; DATOS leido_ACCC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaccc..0xaccd  (1 bytes)
DATA_leido_ACCC:
	defb 0dbh	; accc

; ----------------------------------------------------------------------
; DATOS leido_ACCD: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaccd..0xacce  (1 bytes)
DATA_leido_ACCD:
	defb 003h	; accd

; ----------------------------------------------------------------------
; DATOS leido_ACCE: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xacce..0xacd9  (11 bytes)
DATA_leido_ACCE:
	defb 0d2h,077h,001h,071h,0d1h,005h,001h,001h,001h,021h,0eah	; acce  .w.q.....!.

; ----------------------------------------------------------------------
; DATOS leido_ACD9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xacd9..0xacda  (1 bytes)
DATA_leido_ACD9:
	defb 003h	; acd9

; ----------------------------------------------------------------------
; DATOS leido_ACDA: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xacda..0xacdd  (3 bytes)
DATA_leido_ACDA:
	defb 0d2h,091h,0eah	; acda

; ----------------------------------------------------------------------
; DATOS leido_ACDD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xacdd..0xacde  (1 bytes)
DATA_leido_ACDD:
	defb 007h	; acdd

; ----------------------------------------------------------------------
; DATOS leido_ACDE: 20 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (20 bytes)
;   0xacde..0xacf2  (20 bytes)
DATA_leido_ACDE:
	defb 02dh,0d1h,021h,021h,021h,0d2h,077h,001h,071h,0d1h,005h,001h,001h,001h,021h,021h	; acde  -.!!!.w.q.....!!
	defb 021h,05dh,0ech,0eah	; acee

; ----------------------------------------------------------------------
; DATOS leido_ACF2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xacf2..0xacf3  (1 bytes)
DATA_leido_ACF2:
	defb 004h	; acf2

; ----------------------------------------------------------------------
; DATOS leido_ACF3: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xacf3..0xacf8  (5 bytes)
DATA_leido_ACF3:
	defb 050h,040h,030h,020h,0eah	; acf3

; ----------------------------------------------------------------------
; DATOS leido_ACF8: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xacf8..0xacf9  (1 bytes)
DATA_leido_ACF8:
	defb 007h	; acf8

; ----------------------------------------------------------------------
; DATOS leido_ACF9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xacf9..0xacfa  (1 bytes)
DATA_leido_ACF9:
	defb 0ebh	; acf9

; ----------------------------------------------------------------------
; DATOS leido_ACFA: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xacfa..0xacfb  (1 bytes)
DATA_leido_ACFA:
	defb 027h	; acfa

; ----------------------------------------------------------------------
; DATOS leido_ACFB: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xacfb..0xacfc  (1 bytes)
DATA_leido_ACFB:
	defb 0f0h	; acfb

; ----------------------------------------------------------------------
; DATOS leido_ACFC: 24 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (24 bytes)
;   0xacfc..0xad14  (24 bytes)
DATA_leido_ACFC:
	defb 0d1h,001h,001h,001h,00bh,0d2h,055h,0a1h,0a1h,0a1h,0d1h,03bh,0d2h,035h,057h,051h	; acfc  ......U......5WQ
	defb 091h,0d1h,003h,003h,003h,02bh,0fah,0eah	; ad0c  .....+..

; ----------------------------------------------------------------------
; DATOS leido_AD14: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad14..0xad15  (1 bytes)
DATA_leido_AD14:
	defb 009h	; ad14

; ----------------------------------------------------------------------
; DATOS leido_AD15: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad15..0xad16  (1 bytes)
DATA_leido_AD15:
	defb 0ebh	; ad15

; ----------------------------------------------------------------------
; DATOS leido_AD16: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xad16..0xad17  (1 bytes)
DATA_leido_AD16:
	defb 021h	; ad16

; ----------------------------------------------------------------------
; DATOS leido_AD17: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xad17..0xad18  (1 bytes)
DATA_leido_AD17:
	defb 050h	; ad17

; ----------------------------------------------------------------------
; DATOS leido_AD18: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xad18..0xad1d  (5 bytes)
DATA_leido_AD18:
	defb 0d1h,003h,001h,0ech,0eah	; ad18

; ----------------------------------------------------------------------
; DATOS leido_AD1D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad1d..0xad1e  (1 bytes)
DATA_leido_AD1D:
	defb 002h	; ad1d

; ----------------------------------------------------------------------
; DATOS leido_AD1E: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad1e..0xad20  (2 bytes)
DATA_leido_AD1E:
	defb 005h,0fbh	; ad1e

; ----------------------------------------------------------------------
; DATOS leido_AD20: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xad20..0xad23  (3 bytes)
DATA_leido_AD20:
	defb 003h,013h,0adh	; ad20

; ----------------------------------------------------------------------
; DATOS resto_AD23: lo apuntan con el banco puesto p00:406E (0xB000), p00:4C1A
;   (0xB000), p00:58C2 (0xB000), p10:62EE (0xB000), p10:62F5 (0xB000),
;   p10:62FC (0xB000); el tamano es lo que hay hasta lo siguiente, no sale de
;   recorrerlo; lo leen p00:406E, p00:4C1A, p00:58C2, p10:62EE, p10:62F5,
;   p10:62FC (1624 bytes)
;   0xad23..0xb37b  (1624 bytes)
DATA_resto_AD23:
	defb 0fah,0feh,004h,0d0h,0e9h,006h,093h,003h,003h,001h,010h,0e9h,003h,010h,000h,0fbh	; ad23  ................
	defb 004h,024h,0adh,0e9h,006h,090h,000h,000h,030h,000h,000h,090h,000h,000h,000h,090h	; ad33  .$......0.......
	defb 000h,030h,000h,000h,010h,0fbh,004h,038h,0adh,090h,000h,030h,000h,0fbh,00fh,04ch	; ad43  .0.....8...0...L
	defb 0adh,030h,030h,030h,030h,0fdh,036h,0adh,0feh,001h,0e9h,006h,0eah,00bh,0ebh,008h	; ad53  .0000.6.........
	defb 020h,0dbh,006h,0d3h,049h,042h,041h,040h,0fbh,002h,067h,0adh,069h,062h,061h,060h	; ad63   ...IBA@..g.iba`
	defb 0fbh,002h,06fh,0adh,0dch,0c1h,0eah,007h,0dbh,005h,0f9h,0cah,0aeh,0d1h,0f9h,0fbh	; ad73  ..o.............
	defb 0aeh,0fch,002h,00dh,0afh,0fdh,078h,0adh,0feh,001h,0f8h,028h,0e9h,006h,0eah,00bh	; ad83  ......x....(....
	defb 0ebh,009h,030h,0dbh,002h,0d4h,009h,002h,001h,000h,0fbh,002h,099h,0adh,029h,022h	; ad93  ..0...........)"
	defb 021h,020h,0fbh,002h,0a1h,0adh,0f8h,026h,0ebh,00ah,050h,0d4h,0dbh,002h,000h,001h	; ada3  ! .....&..P.....
	defb 0fbh,004h,0b1h,0adh,001h,001h,0fch,002h,0b1h,0adh,020h,021h,0fbh,004h,0bdh,0adh	; adb3  .......... !....
	defb 021h,021h,0fch,002h,0bdh,0adh,0f8h,023h,0dbh,001h,0eah,00dh,0ebh,00bh,0f0h,0d4h	; adc3  !!.....#........
	defb 000h,0d3h,000h,0fbh,010h,0d2h,0adh,0d4h,020h,0d3h,020h,0fbh,010h,0dah,0adh,0fdh	; add3  ........ . .....
	defb 0a9h,0adh,0feh,001h,0f8h,085h,0c1h,0e9h,00ch,0eah,00dh,0ebh,009h,040h,0d3h,07fh	; ade3  .............@..
	defb 09fh,0f8h,026h,0dbh,003h,0ebh,00ah,070h,0eah,00ah,0e9h,006h,0d4h,000h,000h,0d3h	; adf3  ..&....p........
	defb 000h,0d4h,070h,070h,0d3h,070h,000h,000h,0d4h,000h,0d3h,070h,070h,0d4h,070h,0d2h	; ae03  ..pp.p.....pp.p.
	defb 000h,0d3h,000h,0d3h,070h,0d4h,070h,0fbh,002h,0ffh,0adh,0d4h,020h,020h,0d3h,020h	; ae13  ....p.p.....  .
	defb 0d4h,090h,090h,0d3h,090h,020h,020h,0d4h,020h,0d3h,090h,090h,0d4h,090h,0d2h,020h	; ae23  .....  . ......
	defb 0d3h,020h,090h,0d4h,090h,0fbh,002h,01eh,0aeh,0fdh,0f4h,0adh,0f9h,08bh,0aeh,0eeh	; ae33  . ..............
	defb 001h,0f9h,0cah,0aeh,0feh,001h,0f8h,00ah,0eeh,001h,0e9h,006h,0eah,009h,0ebh,009h	; ae43  ................
	defb 060h,0dbh,003h,0f9h,0cah,0aeh,0f8h,026h,0eah,006h,0d1h,0f9h,0fbh,0aeh,090h,0fch	; ae53  `......&........
	defb 002h,00dh,0afh,0fdh,047h,0aeh,0f9h,08bh,0aeh,0f9h,099h,0aeh,0f8h,00ah,0eah,009h	; ae63  ....G...........
	defb 0ebh,009h,060h,0dbh,003h,0f9h,099h,0aeh,0f8h,026h,0eah,006h,0d2h,0f9h,0fbh,0aeh	; ae73  ..`......&......
	defb 090h,0fch,002h,00dh,0afh,0fdh,06fh,0aeh,0feh,001h,0f8h,026h,0e9h,006h,0eah,006h	; ae83  ......o....&....
	defb 0ebh,009h,080h,0dbh,002h,0fah,0d3h,070h,070h,0d2h,040h,000h,0d3h,070h,0d2h,060h	; ae93  .......pp.@..p.`
	defb 020h,0d3h,070h,0d2h,040h,000h,0fbh,002h,09fh,0aeh,0fch,002h,099h,0aeh,0d3h,090h	; aea3   .p.@...........
	defb 090h,0d2h,060h,020h,0d3h,090h,0d2h,070h,020h,0d3h,090h,0d2h,060h,020h,0fbh,002h	; aeb3  ..` ...p ...` ..
	defb 0b7h,0aeh,0fch,002h,0b1h,0aeh,0fah,0d2h,070h,070h,0d1h,040h,000h,0d2h,070h,0d1h	; aec3  ........pp.@..p.
	defb 060h,020h,0d2h,070h,0d1h,040h,000h,0fbh,002h,0d0h,0aeh,0fch,002h,0cah,0aeh,0d2h	; aed3  ` .p.@..........
	defb 090h,090h,0d1h,060h,020h,0d2h,090h,0d1h,070h,020h,0d2h,090h,0d1h,060h,020h,0fbh	; aee3  ...` ...p ...` .
	defb 002h,0e8h,0aeh,0fch,002h,0e2h,0aeh,0fah,040h,000h,040h,060h,020h,060h,0fbh,002h	; aef3  ........@.@` `..
	defb 0fbh,0aeh,040h,000h,040h,070h,0fch,002h,0fbh,0aeh,060h,020h,060h,070h,040h,070h	; af03  ..@.@p....` `p@p
	defb 0fbh,002h,00dh,0afh,060h,020h,060h,0fah,0feh,004h,0d0h,0e9h,006h,090h,030h,0fbh	; af13  ....` `.......0.
	defb 018h,021h,0afh,091h,000h,090h,091h,000h,000h,0fbh,003h,026h,0afh,091h,000h,090h	; af23  .!.........&....
	defb 031h,000h,010h,0fdh,026h,0afh,0feh,001h,0e9h,006h,0eeh,001h,0c0h,0eah,004h,0ech	; af33  1...&...........
	defb 0d1h,0f9h,0a3h,0b0h,090h,0a0h,0b0h,0eah,006h,0d0h,000h,010h,020h,030h,040h,0eah	; af43  ............ 0@.
	defb 007h,050h,060h,070h,080h,0eah,008h,090h,0a0h,0b0h,0c1h,0eah,007h,0dbh,005h,0ebh	; af53  .P`p............
	defb 001h,010h,0f9h,0afh,0b0h,0f9h,0cch,0b0h,0fbh,003h,0d7h,0b0h,0d0h,000h,0d1h,0a0h	; af63  ................
	defb 0fdh,05dh,0afh,0feh,001h,0f8h,00ah,0e9h,006h,0eah,002h,0ech,0d1h,000h,010h,020h	; af73  .].............
	defb 030h,040h,050h,0eah,003h,060h,070h,080h,090h,0a0h,0b0h,0eah,004h,0d0h,0f9h,0a3h	; af83  0@P..`p.........
	defb 0b0h,0eah,006h,090h,0eah,007h,0a0h,0eah,008h,0b0h,0feh,002h,0e2h,006h,060h,035h	; af93  ..............`5
	defb 0feh,001h,0f8h,00bh,0e9h,006h,0ebh,001h,016h,0dbh,004h,0eah,008h,0d3h,050h,0d2h	; afa3  ..............P.
	defb 050h,000h,020h,0d3h,070h,0d2h,050h,000h,020h,0d3h,090h,0d2h,050h,000h,020h,0d3h	; afb3  P. .p.P. ...P. .
	defb 070h,0d2h,050h,000h,020h,0fbh,002h,0b0h,0afh,0f8h,012h,0ebh,009h,040h,0dbh,002h	; afc3  p.P. ........@..
	defb 0eah,00bh,050h,050h,000h,020h,070h,050h,000h,020h,090h,050h,000h,020h,070h,050h	; afd3  ..PP. pP. .P. pP
	defb 000h,020h,0fbh,002h,0d3h,0afh,0fdh,0a3h,0afh,0feh,001h,0f8h,00ah,0e9h,006h,0ech	; afe3  . ..............
	defb 0eah,002h,0d2h,000h,010h,020h,030h,040h,0eah,003h,0d2h,0f9h,0a3h,0b0h,090h,0a0h	; aff3  ..... 0@........
	defb 0b0h,0eah,005h,0d1h,000h,010h,020h,030h,040h,0eah,006h,050h,060h,070h,0f8h,00bh	; b003  ...... 0@..P`p..
	defb 0eah,007h,0dbh,003h,0ebh,021h,002h,0f9h,0afh,0b0h,0f8h,002h,0ebh,009h,030h,0dbh	; b013  .....!........0.
	defb 003h,0f9h,0cch,0b0h,0fbh,004h,0d7h,0b0h,0dch,0fdh,011h,0b0h,0feh,001h,0eah,006h	; b023  ................
	defb 0f9h,056h,0b0h,0d4h,0f9h,07ch,0b0h,0d3h,000h,001h,000h,0fdh,036h,0b0h,0feh,001h	; b033  .V...|......6...
	defb 0eeh,00fh,0eah,005h,0f9h,056h,0b0h,0efh,0d5h,0f9h,07ch,0b0h,0d4h,000h,001h,000h	; b043  .....V....|.....
	defb 0fdh,04bh,0b0h,0f8h,064h,0e9h,006h,0ech,0d5h,000h,010h,020h,030h,040h,050h,060h	; b053  .K..d...... 0@P`
	defb 070h,080h,090h,0a0h,0b0h,0d4h,000h,010h,020h,030h,040h,050h,060h,070h,080h,0eah	; b063  p....... 0@P`p..
	defb 006h,090h,0a0h,0b0h,0eah,007h,0d3h,000h,0fah,0f8h,026h,0eah,00bh,0ebh,00ah,0f0h	; b073  ..........&.....
	defb 0dbh,003h,050h,051h,050h,0fbh,008h,085h,0b0h,000h,001h,000h,0fbh,002h,08ch,0b0h	; b083  ..PQP...........
	defb 050h,051h,050h,090h,091h,090h,000h,001h,000h,050h,051h,050h,090h,091h,090h,0fah	; b093  PQP......PQP....
	defb 000h,010h,020h,030h,040h,0eah,005h,050h,060h,070h,080h,0fah,0d2h,050h,0d1h,050h	; b0a3  .. 0@..P`p...P.P
	defb 000h,020h,0d2h,070h,0d1h,050h,000h,020h,0d2h,090h,0d1h,050h,000h,020h,0d2h,070h	; b0b3  . .p.P. ...P. .p
	defb 0d1h,050h,000h,020h,0fbh,002h,0afh,0b0h,0fah,0eah,009h,0d1h,090h,090h,070h,090h	; b0c3  .P. ..........p.
	defb 0fbh,004h,0cfh,0b0h,0d0h,000h,000h,0d1h,0a0h,0d0h,000h,0fah,0feh,004h,0d0h,0e9h	; b0d3  ................
	defb 004h,091h,091h,031h,091h,0e9h,001h,09ah,001h,002h,0e9h,004h,031h,091h,031h,031h	; b0e3  ...1........1.11
	defb 091h,011h,0fbh,007h,0e4h,0b0h,091h,091h,031h,091h,0e9h,001h,09ah,001h,032h,0e9h	; b0f3  ........1.....2.
	defb 004h,031h,031h,091h,011h,031h,011h,0fch,002h,0dfh,0b0h,0f9h,06dh,0b3h,092h,040h	; b103  .11..1......m..@
	defb 031h,091h,091h,031h,091h,091h,031h,091h,031h,031h,092h,030h,031h,091h,031h,091h	; b113  1..1..1.11.01.1.
	defb 031h,031h,091h,031h,031h,091h,0f9h,06dh,0b3h,031h,031h,091h,031h,031h,091h,092h	; b123  11.11..m.11.11..
	defb 040h,031h,091h,031h,031h,091h,011h,031h,091h,031h,091h,040h,040h,041h,0fbh,003h	; b133  @1.11..1.1.@@A..
	defb 03eh,0b1h,0fdh,0dfh,0b0h,0feh,001h,0e9h,004h,0c2h,0eah,009h,0ebh,001h,010h,0f1h	; b143  >...............
	defb 062h,0f9h,082h,0b2h,048h,0fbh,002h,048h,0b1h,0eeh,001h,0c3h,0eah,007h,0f9h,011h	; b153  b...H..H........
	defb 0b3h,0eah,006h,05dh,0f3h,0eah,005h,053h,0eah,004h,051h,0efh,0fdh,048h,0b1h,0feh	; b163  ...]...S..Q..H..
	defb 001h,0f8h,028h,0e9h,004h,0ebh,071h,0f0h,0dbh,003h,0eah,009h,0d5h,051h,0d4h,051h	; b173  ..(...q......Q.Q
	defb 031h,051h,001h,051h,0d5h,0a1h,0d4h,051h,001h,051h,031h,051h,0fbh,004h,07dh,0b1h	; b183  1Q.Q...Q.Q1Q..}.
	defb 0d5h,041h,0d4h,041h,021h,041h,0d5h,0b1h,0d4h,041h,0d5h,091h,0d4h,041h,0d5h,0b1h	; b193  .A.A!A...A...A..
	defb 0d4h,041h,021h,041h,0fbh,004h,093h,0b1h,0fch,002h,072h,0b1h,0f9h,040h,0b3h,0d5h	; b1a3  .A!A......r..@..
	defb 051h,0d4h,051h,0d5h,051h,0d4h,051h,0d5h,051h,0d4h,051h,0d5h,081h,0d4h,081h,0d5h	; b1b3  Q.Q.Q.Q.Q.Q.....
	defb 081h,0d4h,0a1h,0d5h,0a1h,0d4h,0a1h,0f9h,040h,0b3h,0d5h,051h,0d4h,051h,0fbh,006h	; b1c3  ........@..Q.Q..
	defb 0cdh,0b1h,0fdh,072h,0b1h,0feh,001h,0f8h,002h,0e9h,004h,0dbh,001h,0eah,00bh,0ebh	; b1d3  ...r............
	defb 011h,015h,0f1h,063h,0f9h,082h,0b2h,04bh,0fbh,002h,0d8h,0b1h,0feh,001h,0f8h,002h	; b1e3  ...c...K........
	defb 0e9h,004h,0c4h,0eah,004h,0ebh,004h,012h,0dbh,002h,0f9h,0bah,0b2h,0ech,0f1h,051h	; b1f3  ...............Q
	defb 0f2h,002h,0eah,001h,0d0h,008h,0feh,004h,0d0h,0f8h,005h,060h,060h,061h,070h,070h	; b203  ...........``app
	defb 071h,080h,080h,081h,0fdh,0d8h,0b1h,0feh,001h,0f8h,00ah,0e9h,004h,0eah,006h,0ebh	; b213  q...............
	defb 002h,012h,0f9h,0e0h,0b2h,071h,061h,0f9h,0e0h,0b2h,041h,0d2h,0b1h,0f8h,002h,0eah	; b223  .....qa...A.....
	defb 00bh,0ebh,062h,053h,0dbh,003h,0f9h,0bah,0b2h,0d0h,001h,0ech,0f1h,051h,0f2h,002h	; b233  ..bS.........Q..
	defb 0eah,004h,00dh,0f3h,0eah,003h,005h,0eah,002h,001h,0eah,001h,001h,0fdh,01ah,0b2h	; b243  ................
	defb 0feh,001h,0f8h,00ah,0e9h,004h,0c2h,0eah,003h,0ebh,007h,010h,0f9h,0e0h,0b2h,070h	; b253  ...............p
	defb 0c2h,0f9h,0e0h,0b2h,040h,0f8h,002h,0eah,00bh,0ebh,062h,053h,0f9h,011h,0b3h,0eah	; b263  ....@.....bS....
	defb 004h,05dh,0f3h,0eah,003h,055h,0eah,002h,051h,0eah,001h,051h,0fdh,053h,0b2h,0d2h	; b273  .]...U..Q..Q.S..
	defb 001h,0d3h,051h,0d2h,001h,0d3h,055h,0d2h,003h,0d3h,053h,0d2h,003h,0d3h,05bh,0d2h	; b283  ..Q...U...S...[.
	defb 00bh,0d3h,051h,0d2h,001h,0d3h,051h,0d2h,005h,0d3h,053h,0d2h,003h,0d3h,053h,0d2h	; b293  ..Q...Q...S...S.
	defb 00bh,0d3h,05bh,0d3h,0b1h,041h,0b1h,045h,0b3h,043h,0b3h,04bh,0bbh,041h,0b1h,041h	; b2a3  ..[..A.E.C.K.A.A
	defb 0b5h,043h,0b3h,043h,0bbh,0d2h,0fah,0f1h,061h,0f2h,007h,0d1h,001h,003h,053h,079h	; b2b3  .C.C....a.....Sy
	defb 071h,071h,085h,0a5h,0d2h,051h,053h,0a3h,0d1h,009h,0d2h,051h,071h,085h,0a5h,0d1h	; b2c3  qq...QS....Qq...
	defb 001h,003h,053h,079h,071h,071h,085h,0a5h,0d1h,051h,053h,0a3h,0fah,0dbh,002h,0d1h	; b2d3  ..Syqq...QS.....
	defb 051h,071h,081h,0a1h,081h,071h,0fbh,006h,0e2h,0b2h,051h,071h,081h,0a1h,0d0h,001h	; b2e3  Qq...q....Qq....
	defb 0d1h,0a1h,081h,0a1h,081h,071h,081h,051h,0d1h,041h,061h,071h,091h,071h,061h,0fbh	; b2f3  .....q.Q.Aaq.qa.
	defb 006h,0fbh,0b2h,041h,061h,071h,091h,0b1h,091h,071h,091h,071h,061h,0fah,0dbh,003h	; b303  ...Aaq...q.qa...
	defb 0f1h,063h,0d3h,071h,073h,0a3h,0d2h,009h,001h,021h,035h,025h,001h,003h,033h,059h	; b313  .c.qs....!5%..3Y
	defb 001h,021h,035h,055h,0f1h,081h,0f2h,00ah,0d2h,071h,073h,0a3h,0d1h,009h,001h,021h	; b323  .!5U.....qs....!
	defb 035h,025h,001h,003h,033h,051h,0ech,0dch,0f1h,051h,0f2h,002h,0fah,0d4h,001h,0d3h	; b333  5%..3Q...Q......
	defb 001h,0d4h,001h,071h,0a1h,0d3h,001h,0d4h,001h,0d3h,001h,0d4h,001h,0d3h,001h,0d4h	; b343  ...q............
	defb 001h,0d3h,001h,0d5h,081h,0d4h,081h,0d5h,081h,0d4h,0a1h,0d5h,0a1h,0d4h,0a1h,0d5h	; b353  ................
	defb 051h,0d4h,051h,0d5h,051h,0d4h,001h,031h,051h,0fah,091h,030h,030h,031h,091h,031h	; b363  Q.Q.Q..1Q..001.1
	defb 031h,092h,030h,031h,091h,031h,091h,0fah	; b373  1.01.1..

; ----------------------------------------------------------------------
; DATOS leido_B37B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb37b..0xb37c  (1 bytes)
DATA_leido_B37B:
	defb 0feh	; b37b

; ----------------------------------------------------------------------
; DATOS leido_B37C: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb37c..0xb37d  (1 bytes)
DATA_leido_B37C:
	defb 004h	; b37c

; ----------------------------------------------------------------------
; DATOS leido_B37D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb37d..0xb37f  (2 bytes)
DATA_leido_B37D:
	defb 0d0h,0e9h	; b37d

; ----------------------------------------------------------------------
; DATOS leido_B37F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb37f..0xb380  (1 bytes)
DATA_leido_B37F:
	defb 009h	; b37f

; ----------------------------------------------------------------------
; DATOS leido_B380: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb380..0xb382  (2 bytes)
DATA_leido_B380:
	defb 090h,0e9h	; b380

; ----------------------------------------------------------------------
; DATOS leido_B382: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb382..0xb383  (1 bytes)
DATA_leido_B382:
	defb 001h	; b382

; ----------------------------------------------------------------------
; DATOS leido_B383: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb383..0xb386  (3 bytes)
DATA_leido_B383:
	defb 003h,004h,0e9h	; b383

; ----------------------------------------------------------------------
; DATOS leido_B386: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb386..0xb387  (1 bytes)
DATA_leido_B386:
	defb 009h	; b386

; ----------------------------------------------------------------------
; DATOS leido_B387: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb387..0xb389  (2 bytes)
DATA_leido_B387:
	defb 000h,0fbh	; b387

; ----------------------------------------------------------------------
; DATOS leido_B389: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb389..0xb38c  (3 bytes)
DATA_leido_B389:
	defb 002h,07bh,0b3h	; b389

; ----------------------------------------------------------------------
; DATOS leido_B38C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb38c..0xb38e  (2 bytes)
DATA_leido_B38C:
	defb 090h,0e9h	; b38c

; ----------------------------------------------------------------------
; DATOS leido_B38E: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb38e..0xb38f  (1 bytes)
DATA_leido_B38E:
	defb 001h	; b38e

; ----------------------------------------------------------------------
; DATOS leido_B38F: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb38f..0xb394  (5 bytes)
DATA_leido_B38F:
	defb 003h,004h,003h,004h,0e9h	; b38f

; ----------------------------------------------------------------------
; DATOS leido_B394: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb394..0xb395  (1 bytes)
DATA_leido_B394:
	defb 009h	; b394

; ----------------------------------------------------------------------
; DATOS leido_B395: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb395..0xb397  (2 bytes)
DATA_leido_B395:
	defb 090h,0e9h	; b395

; ----------------------------------------------------------------------
; DATOS leido_B397: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb397..0xb398  (1 bytes)
DATA_leido_B397:
	defb 001h	; b397

; ----------------------------------------------------------------------
; DATOS leido_B398: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb398..0xb39b  (3 bytes)
DATA_leido_B398:
	defb 003h,004h,0e9h	; b398

; ----------------------------------------------------------------------
; DATOS leido_B39B: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb39b..0xb39c  (1 bytes)
DATA_leido_B39B:
	defb 009h	; b39b

; ----------------------------------------------------------------------
; DATOS leido_B39C: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb39c..0xb3a0  (4 bytes)
DATA_leido_B39C:
	defb 000h,090h,030h,0e9h	; b39c

; ----------------------------------------------------------------------
; DATOS leido_B3A0: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3a0..0xb3a1  (1 bytes)
DATA_leido_B3A0:
	defb 001h	; b3a0

; ----------------------------------------------------------------------
; DATOS leido_B3A1: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb3a1..0xb3a4  (3 bytes)
DATA_leido_B3A1:
	defb 033h,034h,0e9h	; b3a1

; ----------------------------------------------------------------------
; DATOS leido_B3A4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3a4..0xb3a5  (1 bytes)
DATA_leido_B3A4:
	defb 009h	; b3a4

; ----------------------------------------------------------------------
; DATOS leido_B3A5: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb3a5..0xb3af  (10 bytes)
DATA_leido_B3A5:
	defb 030h,090h,010h,030h,000h,030h,000h,010h,030h,0e9h	; b3a5  0..0.0..0.

; ----------------------------------------------------------------------
; DATOS leido_B3AF: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3af..0xb3b0  (1 bytes)
DATA_leido_B3AF:
	defb 001h	; b3af

; ----------------------------------------------------------------------
; DATOS leido_B3B0: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb3b0..0xb3b3  (3 bytes)
DATA_leido_B3B0:
	defb 023h,024h,0e9h	; b3b0

; ----------------------------------------------------------------------
; DATOS leido_B3B3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3b3..0xb3b4  (1 bytes)
DATA_leido_B3B3:
	defb 009h	; b3b3

; ----------------------------------------------------------------------
; DATOS leido_B3B4: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xb3b4..0xb3c0  (12 bytes)
DATA_leido_B3B4:
	defb 020h,020h,020h,090h,010h,030h,000h,030h,000h,000h,000h,0e9h	; b3b4     ..0.0....

; ----------------------------------------------------------------------
; DATOS leido_B3C0: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3c0..0xb3c1  (1 bytes)
DATA_leido_B3C0:
	defb 001h	; b3c0

; ----------------------------------------------------------------------
; DATOS leido_B3C1: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb3c1..0xb3c4  (3 bytes)
DATA_leido_B3C1:
	defb 003h,004h,0e9h	; b3c1

; ----------------------------------------------------------------------
; DATOS leido_B3C4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3c4..0xb3c5  (1 bytes)
DATA_leido_B3C4:
	defb 009h	; b3c4

; ----------------------------------------------------------------------
; DATOS leido_B3C5: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb3c5..0xb3c9  (4 bytes)
DATA_leido_B3C5:
	defb 010h,000h,000h,0fbh	; b3c5

; ----------------------------------------------------------------------
; DATOS leido_B3C9: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb3c9..0xb3cc  (3 bytes)
DATA_leido_B3C9:
	defb 007h,0a6h,0b3h	; b3c9

; ----------------------------------------------------------------------
; DATOS leido_B3CC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3cc..0xb3cd  (1 bytes)
DATA_leido_B3CC:
	defb 0fdh	; b3cc

; ----------------------------------------------------------------------
; DATOS leido_B3CD: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb3cd..0xb3cf  (2 bytes)
DATA_leido_B3CD:
	defb 07bh,0b3h	; b3cd

; ----------------------------------------------------------------------
; DATOS leido_B3CF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3cf..0xb3d0  (1 bytes)
DATA_leido_B3CF:
	defb 0feh	; b3cf

; ----------------------------------------------------------------------
; DATOS leido_B3D0: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb3d0..0xb3d1  (1 bytes)
DATA_leido_B3D0:
	defb 001h	; b3d0

; ----------------------------------------------------------------------
; DATOS leido_B3D1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3d1..0xb3d2  (1 bytes)
DATA_leido_B3D1:
	defb 0e9h	; b3d1

; ----------------------------------------------------------------------
; DATOS leido_B3D2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3d2..0xb3d3  (1 bytes)
DATA_leido_B3D2:
	defb 009h	; b3d2

; ----------------------------------------------------------------------
; DATOS leido_B3D3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3d3..0xb3d4  (1 bytes)
DATA_leido_B3D3:
	defb 0eah	; b3d3

; ----------------------------------------------------------------------
; DATOS leido_B3D4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3d4..0xb3d5  (1 bytes)
DATA_leido_B3D4:
	defb 009h	; b3d4

; ----------------------------------------------------------------------
; DATOS leido_B3D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3d5..0xb3d6  (1 bytes)
DATA_leido_B3D5:
	defb 0ebh	; b3d5

; ----------------------------------------------------------------------
; DATOS leido_B3D6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb3d6..0xb3d7  (1 bytes)
DATA_leido_B3D6:
	defb 007h	; b3d6

; ----------------------------------------------------------------------
; DATOS leido_B3D7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb3d7..0xb3d8  (1 bytes)
DATA_leido_B3D7:
	defb 070h	; b3d7

; ----------------------------------------------------------------------
; DATOS leido_B3D8: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb3d8..0xb3e2  (10 bytes)
DATA_leido_B3D8:
	defb 0d3h,072h,0a2h,0d2h,032h,0d3h,082h,0b1h,071h,0f2h	; b3d8  .r..2...q.

; ----------------------------------------------------------------------
; DATOS leido_B3E2: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb3e2..0xb3e3  (1 bytes)
DATA_leido_B3E2:
	defb 010h	; b3e2

; ----------------------------------------------------------------------
; DATOS leido_B3E3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3e3..0xb3e4  (1 bytes)
DATA_leido_B3E3:
	defb 0f1h	; b3e3

; ----------------------------------------------------------------------
; DATOS leido_B3E4: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb3e4..0xb3e5  (1 bytes)
DATA_leido_B3E4:
	defb 041h	; b3e4

; ----------------------------------------------------------------------
; DATOS leido_B3E5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3e5..0xb3e6  (1 bytes)
DATA_leido_B3E5:
	defb 0dbh	; b3e5

; ----------------------------------------------------------------------
; DATOS leido_B3E6: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb3e6..0xb3e7  (1 bytes)
DATA_leido_B3E6:
	defb 003h	; b3e6

; ----------------------------------------------------------------------
; DATOS leido_B3E7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3e7..0xb3e8  (1 bytes)
DATA_leido_B3E7:
	defb 0e9h	; b3e7

; ----------------------------------------------------------------------
; DATOS leido_B3E8: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3e8..0xb3e9  (1 bytes)
DATA_leido_B3E8:
	defb 001h	; b3e8

; ----------------------------------------------------------------------
; DATOS leido_B3E9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3e9..0xb3ea  (1 bytes)
DATA_leido_B3E9:
	defb 0ebh	; b3e9

; ----------------------------------------------------------------------
; DATOS leido_B3EA: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb3ea..0xb3eb  (1 bytes)
DATA_leido_B3EA:
	defb 001h	; b3ea

; ----------------------------------------------------------------------
; DATOS leido_B3EB: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb3eb..0xb3ec  (1 bytes)
DATA_leido_B3EB:
	defb 040h	; b3eb

; ----------------------------------------------------------------------
; DATOS leido_B3EC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3ec..0xb3ed  (1 bytes)
DATA_leido_B3EC:
	defb 0eah	; b3ec

; ----------------------------------------------------------------------
; DATOS leido_B3ED: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3ed..0xb3ee  (1 bytes)
DATA_leido_B3ED:
	defb 008h	; b3ed

; ----------------------------------------------------------------------
; DATOS leido_B3EE: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb3ee..0xb3f4  (6 bytes)
DATA_leido_B3EE:
	defb 0d2h,0b2h,0d1h,002h,012h,0e9h	; b3ee

; ----------------------------------------------------------------------
; DATOS leido_B3F4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3f4..0xb3f5  (1 bytes)
DATA_leido_B3F4:
	defb 009h	; b3f4

; ----------------------------------------------------------------------
; DATOS leido_B3F5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3f5..0xb3f6  (1 bytes)
DATA_leido_B3F5:
	defb 0eah	; b3f5

; ----------------------------------------------------------------------
; DATOS leido_B3F6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3f6..0xb3f7  (1 bytes)
DATA_leido_B3F6:
	defb 009h	; b3f6

; ----------------------------------------------------------------------
; DATOS leido_B3F7: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb3f7..0xb401  (10 bytes)
DATA_leido_B3F7:
	defb 020h,0d2h,021h,020h,021h,050h,050h,050h,031h,0e9h	; b3f7   .! !PPP1.

; ----------------------------------------------------------------------
; DATOS leido_B401: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb401..0xb402  (1 bytes)
DATA_leido_B401:
	defb 001h	; b401

; ----------------------------------------------------------------------
; DATOS leido_B402: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb402..0xb403  (1 bytes)
DATA_leido_B402:
	defb 0eah	; b402

; ----------------------------------------------------------------------
; DATOS leido_B403: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb403..0xb404  (1 bytes)
DATA_leido_B403:
	defb 008h	; b403

; ----------------------------------------------------------------------
; DATOS leido_B404: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb404..0xb40a  (6 bytes)
DATA_leido_B404:
	defb 0d2h,0b2h,0d1h,002h,012h,0e9h	; b404

; ----------------------------------------------------------------------
; DATOS leido_B40A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb40a..0xb40b  (1 bytes)
DATA_leido_B40A:
	defb 009h	; b40a

; ----------------------------------------------------------------------
; DATOS leido_B40B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb40b..0xb40c  (1 bytes)
DATA_leido_B40B:
	defb 0eah	; b40b

; ----------------------------------------------------------------------
; DATOS leido_B40C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb40c..0xb40d  (1 bytes)
DATA_leido_B40C:
	defb 009h	; b40c

; ----------------------------------------------------------------------
; DATOS leido_B40D: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb40d..0xb418  (11 bytes)
DATA_leido_B40D:
	defb 020h,0d2h,021h,020h,021h,0d3h,0a2h,0a1h,0c1h,0ech,0eah	; b40d   .! !......

; ----------------------------------------------------------------------
; DATOS leido_B418: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb418..0xb419  (1 bytes)
DATA_leido_B418:
	defb 005h	; b418

; ----------------------------------------------------------------------
; DATOS leido_B419: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb419..0xb41a  (1 bytes)
DATA_leido_B419:
	defb 0f9h	; b419

; ----------------------------------------------------------------------
; DATOS leido_B41A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb41a..0xb41c  (2 bytes)
DATA_leido_B41A:
	defb 0bah,0b6h	; b41a

; ----------------------------------------------------------------------
; DATOS leido_B41C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb41c..0xb41e  (2 bytes)
DATA_leido_B41C:
	defb 0c1h,0f9h	; b41c

; ----------------------------------------------------------------------
; DATOS leido_B41E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb41e..0xb420  (2 bytes)
DATA_leido_B41E:
	defb 0fch,0b6h	; b41e

; ----------------------------------------------------------------------
; DATOS leido_B420: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb420..0xb421  (1 bytes)
DATA_leido_B420:
	defb 0ebh	; b420

; ----------------------------------------------------------------------
; DATOS leido_B421: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb421..0xb422  (1 bytes)
DATA_leido_B421:
	defb 021h	; b421

; ----------------------------------------------------------------------
; DATOS leido_B422: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb422..0xb423  (1 bytes)
DATA_leido_B422:
	defb 080h	; b422

; ----------------------------------------------------------------------
; DATOS leido_B423: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb423..0xb424  (1 bytes)
DATA_leido_B423:
	defb 0f9h	; b423

; ----------------------------------------------------------------------
; DATOS leido_B424: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb424..0xb426  (2 bytes)
DATA_leido_B424:
	defb 03dh,0b7h	; b424

; ----------------------------------------------------------------------
; DATOS leido_B426: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb426..0xb42f  (9 bytes)
DATA_leido_B426:
	defb 0d1h,050h,0d2h,050h,0d1h,030h,0d2h,030h,0f9h	; b426  .P.P.0.0.

; ----------------------------------------------------------------------
; DATOS leido_B42F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb42f..0xb431  (2 bytes)
DATA_leido_B42F:
	defb 03dh,0b7h	; b42f

; ----------------------------------------------------------------------
; DATOS leido_B431: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb431..0xb432  (1 bytes)
DATA_leido_B431:
	defb 0e9h	; b431

; ----------------------------------------------------------------------
; DATOS leido_B432: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb432..0xb433  (1 bytes)
DATA_leido_B432:
	defb 001h	; b432

; ----------------------------------------------------------------------
; DATOS leido_B433: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb433..0xb437  (4 bytes)
DATA_leido_B433:
	defb 0d3h,083h,084h,0e9h	; b433

; ----------------------------------------------------------------------
; DATOS leido_B437: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb437..0xb438  (1 bytes)
DATA_leido_B437:
	defb 009h	; b437

; ----------------------------------------------------------------------
; DATOS leido_B438: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb438..0xb43f  (7 bytes)
DATA_leido_B438:
	defb 0d2h,080h,0d3h,0a0h,0d2h,0a0h,0fdh	; b438

; ----------------------------------------------------------------------
; DATOS leido_B43F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb43f..0xb441  (2 bytes)
DATA_leido_B43F:
	defb 0cfh,0b3h	; b43f

; ----------------------------------------------------------------------
; DATOS leido_B441: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb441..0xb442  (1 bytes)
DATA_leido_B441:
	defb 0feh	; b441

; ----------------------------------------------------------------------
; DATOS leido_B442: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb442..0xb443  (1 bytes)
DATA_leido_B442:
	defb 001h	; b442

; ----------------------------------------------------------------------
; DATOS leido_B443: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb443..0xb444  (1 bytes)
DATA_leido_B443:
	defb 0f8h	; b443

; ----------------------------------------------------------------------
; DATOS leido_B444: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb444..0xb445  (1 bytes)
DATA_leido_B444:
	defb 026h	; b444

; ----------------------------------------------------------------------
; DATOS leido_B445: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb445..0xb446  (1 bytes)
DATA_leido_B445:
	defb 0e9h	; b445

; ----------------------------------------------------------------------
; DATOS leido_B446: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb446..0xb447  (1 bytes)
DATA_leido_B446:
	defb 009h	; b446

; ----------------------------------------------------------------------
; DATOS leido_B447: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb447..0xb448  (1 bytes)
DATA_leido_B447:
	defb 0eah	; b447

; ----------------------------------------------------------------------
; DATOS leido_B448: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb448..0xb449  (1 bytes)
DATA_leido_B448:
	defb 009h	; b448

; ----------------------------------------------------------------------
; DATOS leido_B449: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb449..0xb44a  (1 bytes)
DATA_leido_B449:
	defb 0ebh	; b449

; ----------------------------------------------------------------------
; DATOS leido_B44A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb44a..0xb44b  (1 bytes)
DATA_leido_B44A:
	defb 004h	; b44a

; ----------------------------------------------------------------------
; DATOS leido_B44B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb44b..0xb44c  (1 bytes)
DATA_leido_B44B:
	defb 050h	; b44b

; ----------------------------------------------------------------------
; DATOS leido_B44C: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb44c..0xb455  (9 bytes)
DATA_leido_B44C:
	defb 0d4h,002h,032h,082h,012h,0d5h,0b1h,071h,0f8h	; b44c  ..2....q.

; ----------------------------------------------------------------------
; DATOS leido_B455: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb455..0xb456  (1 bytes)
DATA_leido_B455:
	defb 023h	; b455

; ----------------------------------------------------------------------
; DATOS leido_B456: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb456..0xb457  (1 bytes)
DATA_leido_B456:
	defb 0dbh	; b456

; ----------------------------------------------------------------------
; DATOS leido_B457: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb457..0xb458  (1 bytes)
DATA_leido_B457:
	defb 001h	; b457

; ----------------------------------------------------------------------
; DATOS leido_B458: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb458..0xb459  (1 bytes)
DATA_leido_B458:
	defb 0eah	; b458

; ----------------------------------------------------------------------
; DATOS leido_B459: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb459..0xb45a  (1 bytes)
DATA_leido_B459:
	defb 00ch	; b459

; ----------------------------------------------------------------------
; DATOS leido_B45A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb45a..0xb45b  (1 bytes)
DATA_leido_B45A:
	defb 0ebh	; b45a

; ----------------------------------------------------------------------
; DATOS leido_B45B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb45b..0xb45c  (1 bytes)
DATA_leido_B45B:
	defb 011h	; b45b

; ----------------------------------------------------------------------
; DATOS leido_B45C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb45c..0xb45d  (1 bytes)
DATA_leido_B45C:
	defb 050h	; b45c

; ----------------------------------------------------------------------
; DATOS leido_B45D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb45d..0xb45f  (2 bytes)
DATA_leido_B45D:
	defb 0d4h,0f9h	; b45d

; ----------------------------------------------------------------------
; DATOS leido_B45F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb45f..0xb461  (2 bytes)
DATA_leido_B45F:
	defb 0aeh,0b6h	; b45f

; ----------------------------------------------------------------------
; DATOS leido_B461: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb461..0xb462  (1 bytes)
DATA_leido_B461:
	defb 0f9h	; b461

; ----------------------------------------------------------------------
; DATOS leido_B462: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb462..0xb464  (2 bytes)
DATA_leido_B462:
	defb 05fh,0b7h	; b462

; ----------------------------------------------------------------------
; DATOS leido_B464: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb464..0xb465  (1 bytes)
DATA_leido_B464:
	defb 0fbh	; b464

; ----------------------------------------------------------------------
; DATOS leido_B465: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb465..0xb468  (3 bytes)
DATA_leido_B465:
	defb 004h,05dh,0b4h	; b465

; ----------------------------------------------------------------------
; DATOS leido_B468: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb468..0xb46a  (2 bytes)
DATA_leido_B468:
	defb 0d4h,0f9h	; b468

; ----------------------------------------------------------------------
; DATOS leido_B46A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb46a..0xb46c  (2 bytes)
DATA_leido_B46A:
	defb 0aeh,0b6h	; b46a

; ----------------------------------------------------------------------
; DATOS leido_B46C: 41 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (41 bytes)
;   0xb46c..0xb495  (41 bytes)
DATA_leido_B46C:
	defb 070h,0d5h,000h,0d3h,010h,000h,000h,0d4h,000h,000h,0d5h,051h,0d4h,001h,0d5h,050h	; b46c  p..........Q...P
	defb 0d4h,001h,031h,0d5h,0a0h,0d4h,010h,0d5h,080h,071h,0d4h,011h,0d5h,070h,0d4h,011h	; b47c  ..1......q...p..
	defb 051h,0d5h,0b0h,0d4h,010h,0d5h,070h,0d4h,0f9h	; b48c  Q.....p..

; ----------------------------------------------------------------------
; DATOS leido_B495: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb495..0xb497  (2 bytes)
DATA_leido_B495:
	defb 0aeh,0b6h	; b495

; ----------------------------------------------------------------------
; DATOS leido_B497: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb497..0xb498  (1 bytes)
DATA_leido_B497:
	defb 0f9h	; b497

; ----------------------------------------------------------------------
; DATOS leido_B498: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb498..0xb49a  (2 bytes)
DATA_leido_B498:
	defb 05fh,0b7h	; b498

; ----------------------------------------------------------------------
; DATOS leido_B49A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb49a..0xb49b  (1 bytes)
DATA_leido_B49A:
	defb 0fdh	; b49a

; ----------------------------------------------------------------------
; DATOS leido_B49B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb49b..0xb49d  (2 bytes)
DATA_leido_B49B:
	defb 041h,0b4h	; b49b

; ----------------------------------------------------------------------
; DATOS leido_B49D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb49d..0xb49e  (1 bytes)
DATA_leido_B49D:
	defb 0feh	; b49d

; ----------------------------------------------------------------------
; DATOS leido_B49E: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb49e..0xb49f  (1 bytes)
DATA_leido_B49E:
	defb 001h	; b49e

; ----------------------------------------------------------------------
; DATOS leido_B49F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb49f..0xb4a0  (1 bytes)
DATA_leido_B49F:
	defb 0f8h	; b49f

; ----------------------------------------------------------------------
; DATOS leido_B4A0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb4a0..0xb4a1  (1 bytes)
DATA_leido_B4A0:
	defb 00bh	; b4a0

; ----------------------------------------------------------------------
; DATOS leido_B4A1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4a1..0xb4a2  (1 bytes)
DATA_leido_B4A1:
	defb 0dbh	; b4a1

; ----------------------------------------------------------------------
; DATOS leido_B4A2: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb4a2..0xb4a3  (1 bytes)
DATA_leido_B4A2:
	defb 002h	; b4a2

; ----------------------------------------------------------------------
; DATOS leido_B4A3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4a3..0xb4a4  (1 bytes)
DATA_leido_B4A3:
	defb 0e9h	; b4a3

; ----------------------------------------------------------------------
; DATOS leido_B4A4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb4a4..0xb4a5  (1 bytes)
DATA_leido_B4A4:
	defb 003h	; b4a4

; ----------------------------------------------------------------------
; DATOS leido_B4A5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4a5..0xb4a6  (1 bytes)
DATA_leido_B4A5:
	defb 0eah	; b4a5

; ----------------------------------------------------------------------
; DATOS leido_B4A6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb4a6..0xb4a7  (1 bytes)
DATA_leido_B4A6:
	defb 005h	; b4a6

; ----------------------------------------------------------------------
; DATOS leido_B4A7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4a7..0xb4a8  (1 bytes)
DATA_leido_B4A7:
	defb 0ebh	; b4a7

; ----------------------------------------------------------------------
; DATOS leido_B4A8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb4a8..0xb4a9  (1 bytes)
DATA_leido_B4A8:
	defb 010h	; b4a8

; ----------------------------------------------------------------------
; DATOS leido_B4A9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb4a9..0xb4aa  (1 bytes)
DATA_leido_B4A9:
	defb 070h	; b4a9

; ----------------------------------------------------------------------
; DATOS leido_B4AA: 21 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (21 bytes)
;   0xb4aa..0xb4bf  (21 bytes)
DATA_leido_B4AA:
	defb 0d1h,090h,0a0h,0b0h,0d0h,005h,000h,010h,020h,035h,050h,060h,070h,085h,0d1h,0a0h	; b4aa  ........ 5P`p...
	defb 0b0h,0d0h,000h,015h,0e9h	; b4ba

; ----------------------------------------------------------------------
; DATOS leido_B4BF: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb4bf..0xb4c0  (1 bytes)
DATA_leido_B4BF:
	defb 001h	; b4bf

; ----------------------------------------------------------------------
; DATOS leido_B4C0: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb4c0..0xb4cb  (11 bytes)
DATA_leido_B4C0:
	defb 0d1h,083h,093h,0a3h,0b5h,0d0h,033h,053h,063h,075h,0f8h	; b4c0  ......3Scu.

; ----------------------------------------------------------------------
; DATOS leido_B4CB: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb4cb..0xb4cc  (1 bytes)
DATA_leido_B4CB:
	defb 01ch	; b4cb

; ----------------------------------------------------------------------
; DATOS leido_B4CC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4cc..0xb4cd  (1 bytes)
DATA_leido_B4CC:
	defb 0e9h	; b4cc

; ----------------------------------------------------------------------
; DATOS leido_B4CD: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb4cd..0xb4ce  (1 bytes)
DATA_leido_B4CD:
	defb 009h	; b4cd

; ----------------------------------------------------------------------
; DATOS leido_B4CE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4ce..0xb4cf  (1 bytes)
DATA_leido_B4CE:
	defb 0eah	; b4ce

; ----------------------------------------------------------------------
; DATOS leido_B4CF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb4cf..0xb4d0  (1 bytes)
DATA_leido_B4CF:
	defb 009h	; b4cf

; ----------------------------------------------------------------------
; DATOS leido_B4D0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4d0..0xb4d1  (1 bytes)
DATA_leido_B4D0:
	defb 0ebh	; b4d0

; ----------------------------------------------------------------------
; DATOS leido_B4D1: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb4d1..0xb4d2  (1 bytes)
DATA_leido_B4D1:
	defb 001h	; b4d1

; ----------------------------------------------------------------------
; DATOS leido_B4D2: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb4d2..0xb4d3  (1 bytes)
DATA_leido_B4D2:
	defb 050h	; b4d2

; ----------------------------------------------------------------------
; DATOS leido_B4D3: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb4d3..0xb4d5  (2 bytes)
DATA_leido_B4D3:
	defb 0d3h,0f9h	; b4d3

; ----------------------------------------------------------------------
; DATOS leido_B4D5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb4d5..0xb4d7  (2 bytes)
DATA_leido_B4D5:
	defb 0aeh,0b6h	; b4d5

; ----------------------------------------------------------------------
; DATOS leido_B4D7: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb4d7..0xb4e1  (10 bytes)
DATA_leido_B4D7:
	defb 071h,0d4h,081h,0d3h,030h,0d4h,0a0h,0d3h,050h,0f8h	; b4d7  q...0...P.

; ----------------------------------------------------------------------
; DATOS leido_B4E1: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb4e1..0xb4e2  (1 bytes)
DATA_leido_B4E1:
	defb 002h	; b4e1

; ----------------------------------------------------------------------
; DATOS leido_B4E2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4e2..0xb4e3  (1 bytes)
DATA_leido_B4E2:
	defb 0eah	; b4e2

; ----------------------------------------------------------------------
; DATOS leido_B4E3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb4e3..0xb4e4  (1 bytes)
DATA_leido_B4E3:
	defb 005h	; b4e3

; ----------------------------------------------------------------------
; DATOS leido_B4E4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4e4..0xb4e5  (1 bytes)
DATA_leido_B4E4:
	defb 0ebh	; b4e4

; ----------------------------------------------------------------------
; DATOS leido_B4E5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb4e5..0xb4e6  (1 bytes)
DATA_leido_B4E5:
	defb 002h	; b4e5

; ----------------------------------------------------------------------
; DATOS leido_B4E6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb4e6..0xb4e7  (1 bytes)
DATA_leido_B4E6:
	defb 050h	; b4e6

; ----------------------------------------------------------------------
; DATOS leido_B4E7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4e7..0xb4e8  (1 bytes)
DATA_leido_B4E7:
	defb 0f9h	; b4e7

; ----------------------------------------------------------------------
; DATOS leido_B4E8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb4e8..0xb4ea  (2 bytes)
DATA_leido_B4E8:
	defb 04bh,0b7h	; b4e8

; ----------------------------------------------------------------------
; DATOS leido_B4EA: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xb4ea..0xb4f2  (8 bytes)
DATA_leido_B4EA:
	defb 0d2h,000h,050h,0a0h,000h,050h,0a0h,0fch	; b4ea  ..P..P..

; ----------------------------------------------------------------------
; DATOS leido_B4F2: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb4f2..0xb4f5  (3 bytes)
DATA_leido_B4F2:
	defb 006h,0e0h,0b4h	; b4f2

; ----------------------------------------------------------------------
; DATOS leido_B4F5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4f5..0xb4f6  (1 bytes)
DATA_leido_B4F5:
	defb 0f8h	; b4f5

; ----------------------------------------------------------------------
; DATOS leido_B4F6: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb4f6..0xb4f7  (1 bytes)
DATA_leido_B4F6:
	defb 002h	; b4f6

; ----------------------------------------------------------------------
; DATOS leido_B4F7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4f7..0xb4f8  (1 bytes)
DATA_leido_B4F7:
	defb 0eah	; b4f7

; ----------------------------------------------------------------------
; DATOS leido_B4F8: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb4f8..0xb4f9  (1 bytes)
DATA_leido_B4F8:
	defb 006h	; b4f8

; ----------------------------------------------------------------------
; DATOS leido_B4F9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4f9..0xb4fa  (1 bytes)
DATA_leido_B4F9:
	defb 0ebh	; b4f9

; ----------------------------------------------------------------------
; DATOS leido_B4FA: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb4fa..0xb4fb  (1 bytes)
DATA_leido_B4FA:
	defb 002h	; b4fa

; ----------------------------------------------------------------------
; DATOS leido_B4FB: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb4fb..0xb4fc  (1 bytes)
DATA_leido_B4FB:
	defb 050h	; b4fb

; ----------------------------------------------------------------------
; DATOS leido_B4FC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb4fc..0xb4fd  (1 bytes)
DATA_leido_B4FC:
	defb 0f9h	; b4fc

; ----------------------------------------------------------------------
; DATOS leido_B4FD: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb4fd..0xb4ff  (2 bytes)
DATA_leido_B4FD:
	defb 04bh,0b7h	; b4fd

; ----------------------------------------------------------------------
; DATOS leido_B4FF: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xb4ff..0xb50b  (12 bytes)
DATA_leido_B4FF:
	defb 0d2h,050h,0a0h,0d1h,030h,0d2h,080h,0d1h,010h,0d2h,070h,0f9h	; b4ff  .P..0.....p.

; ----------------------------------------------------------------------
; DATOS leido_B50B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb50b..0xb50d  (2 bytes)
DATA_leido_B50B:
	defb 04bh,0b7h	; b50b

; ----------------------------------------------------------------------
; DATOS leido_B50D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb50d..0xb50e  (1 bytes)
DATA_leido_B50D:
	defb 0eah	; b50d

; ----------------------------------------------------------------------
; DATOS leido_B50E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb50e..0xb50f  (1 bytes)
DATA_leido_B50E:
	defb 008h	; b50e

; ----------------------------------------------------------------------
; DATOS leido_B50F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb50f..0xb510  (1 bytes)
DATA_leido_B50F:
	defb 0f8h	; b50f

; ----------------------------------------------------------------------
; DATOS leido_B510: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb510..0xb511  (1 bytes)
DATA_leido_B510:
	defb 023h	; b510

; ----------------------------------------------------------------------
; DATOS leido_B511: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb511..0xb512  (1 bytes)
DATA_leido_B511:
	defb 0dbh	; b511

; ----------------------------------------------------------------------
; DATOS leido_B512: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb512..0xb513  (1 bytes)
DATA_leido_B512:
	defb 003h	; b512

; ----------------------------------------------------------------------
; DATOS leido_B513: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb513..0xb514  (1 bytes)
DATA_leido_B513:
	defb 0ebh	; b513

; ----------------------------------------------------------------------
; DATOS leido_B514: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb514..0xb515  (1 bytes)
DATA_leido_B514:
	defb 071h	; b514

; ----------------------------------------------------------------------
; DATOS leido_B515: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb515..0xb516  (1 bytes)
DATA_leido_B515:
	defb 050h	; b515

; ----------------------------------------------------------------------
; DATOS leido_B516: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb516..0xb520  (10 bytes)
DATA_leido_B516:
	defb 0d3h,000h,0d3h,080h,070h,070h,0d4h,070h,070h,0f8h	; b516  ....pp.pp.

; ----------------------------------------------------------------------
; DATOS leido_B520: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb520..0xb521  (1 bytes)
DATA_leido_B520:
	defb 002h	; b520

; ----------------------------------------------------------------------
; DATOS leido_B521: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb521..0xb522  (1 bytes)
DATA_leido_B521:
	defb 0ebh	; b521

; ----------------------------------------------------------------------
; DATOS leido_B522: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb522..0xb523  (1 bytes)
DATA_leido_B522:
	defb 002h	; b522

; ----------------------------------------------------------------------
; DATOS leido_B523: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb523..0xb524  (1 bytes)
DATA_leido_B523:
	defb 050h	; b523

; ----------------------------------------------------------------------
; DATOS leido_B524: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb524..0xb525  (1 bytes)
DATA_leido_B524:
	defb 0eah	; b524

; ----------------------------------------------------------------------
; DATOS leido_B525: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb525..0xb526  (1 bytes)
DATA_leido_B525:
	defb 006h	; b525

; ----------------------------------------------------------------------
; DATOS leido_B526: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb526..0xb527  (1 bytes)
DATA_leido_B526:
	defb 0ebh	; b526

; ----------------------------------------------------------------------
; DATOS leido_B527: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb527..0xb528  (1 bytes)
DATA_leido_B527:
	defb 002h	; b527

; ----------------------------------------------------------------------
; DATOS leido_B528: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb528..0xb529  (1 bytes)
DATA_leido_B528:
	defb 050h	; b528

; ----------------------------------------------------------------------
; DATOS leido_B529: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb529..0xb52f  (6 bytes)
DATA_leido_B529:
	defb 0d3h,050h,0d2h,000h,050h,0fbh	; b529

; ----------------------------------------------------------------------
; DATOS leido_B52F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb52f..0xb532  (3 bytes)
DATA_leido_B52F:
	defb 002h,029h,0b5h	; b52f

; ----------------------------------------------------------------------
; DATOS leido_B532: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb532..0xb533  (1 bytes)
DATA_leido_B532:
	defb 0f9h	; b532

; ----------------------------------------------------------------------
; DATOS leido_B533: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb533..0xb535  (2 bytes)
DATA_leido_B533:
	defb 055h,0b7h	; b533

; ----------------------------------------------------------------------
; DATOS leido_B535: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb535..0xb53b  (6 bytes)
DATA_leido_B535:
	defb 0d3h,070h,0d2h,010h,070h,0fbh	; b535

; ----------------------------------------------------------------------
; DATOS leido_B53B: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb53b..0xb53e  (3 bytes)
DATA_leido_B53B:
	defb 002h,035h,0b5h	; b53b

; ----------------------------------------------------------------------
; DATOS leido_B53E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb53e..0xb53f  (1 bytes)
DATA_leido_B53E:
	defb 0f9h	; b53e

; ----------------------------------------------------------------------
; DATOS leido_B53F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb53f..0xb541  (2 bytes)
DATA_leido_B53F:
	defb 055h,0b7h	; b53f

; ----------------------------------------------------------------------
; DATOS leido_B541: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb541..0xb542  (1 bytes)
DATA_leido_B541:
	defb 0e9h	; b541

; ----------------------------------------------------------------------
; DATOS leido_B542: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb542..0xb543  (1 bytes)
DATA_leido_B542:
	defb 006h	; b542

; ----------------------------------------------------------------------
; DATOS leido_B543: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb543..0xb544  (1 bytes)
DATA_leido_B543:
	defb 0f8h	; b543

; ----------------------------------------------------------------------
; DATOS leido_B544: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb544..0xb545  (1 bytes)
DATA_leido_B544:
	defb 00ah	; b544

; ----------------------------------------------------------------------
; DATOS leido_B545: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb545..0xb546  (1 bytes)
DATA_leido_B545:
	defb 0eah	; b545

; ----------------------------------------------------------------------
; DATOS leido_B546: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb546..0xb547  (1 bytes)
DATA_leido_B546:
	defb 005h	; b546

; ----------------------------------------------------------------------
; DATOS leido_B547: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb547..0xb548  (1 bytes)
DATA_leido_B547:
	defb 0ebh	; b547

; ----------------------------------------------------------------------
; DATOS leido_B548: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb548..0xb549  (1 bytes)
DATA_leido_B548:
	defb 003h	; b548

; ----------------------------------------------------------------------
; DATOS leido_B549: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb549..0xb54a  (1 bytes)
DATA_leido_B549:
	defb 070h	; b549

; ----------------------------------------------------------------------
; DATOS leido_B54A: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb54a..0xb54f  (5 bytes)
DATA_leido_B54A:
	defb 0d2h,000h,050h,070h,0fbh	; b54a

; ----------------------------------------------------------------------
; DATOS leido_B54F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb54f..0xb552  (3 bytes)
DATA_leido_B54F:
	defb 004h,04ah,0b5h	; b54f

; ----------------------------------------------------------------------
; DATOS leido_B552: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb552..0xb55d  (11 bytes)
DATA_leido_B552:
	defb 0d3h,080h,0d2h,010h,030h,0d3h,0a0h,0d2h,030h,050h,0fch	; b552  ....0...0P.

; ----------------------------------------------------------------------
; DATOS leido_B55D: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb55d..0xb560  (3 bytes)
DATA_leido_B55D:
	defb 002h,04ah,0b5h	; b55d

; ----------------------------------------------------------------------
; DATOS leido_B560: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb560..0xb561  (1 bytes)
DATA_leido_B560:
	defb 0fdh	; b560

; ----------------------------------------------------------------------
; DATOS leido_B561: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb561..0xb563  (2 bytes)
DATA_leido_B561:
	defb 09dh,0b4h	; b561

; ----------------------------------------------------------------------
; DATOS leido_B563: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb563..0xb564  (1 bytes)
DATA_leido_B563:
	defb 0feh	; b563

; ----------------------------------------------------------------------
; DATOS leido_B564: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb564..0xb565  (1 bytes)
DATA_leido_B564:
	defb 001h	; b564

; ----------------------------------------------------------------------
; DATOS leido_B565: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb565..0xb566  (1 bytes)
DATA_leido_B565:
	defb 0dbh	; b565

; ----------------------------------------------------------------------
; DATOS leido_B566: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb566..0xb567  (1 bytes)
DATA_leido_B566:
	defb 003h	; b566

; ----------------------------------------------------------------------
; DATOS leido_B567: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb567..0xb568  (1 bytes)
DATA_leido_B567:
	defb 0f8h	; b567

; ----------------------------------------------------------------------
; DATOS leido_B568: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb568..0xb569  (1 bytes)
DATA_leido_B568:
	defb 002h	; b568

; ----------------------------------------------------------------------
; DATOS leido_B569: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb569..0xb56a  (1 bytes)
DATA_leido_B569:
	defb 0e9h	; b569

; ----------------------------------------------------------------------
; DATOS leido_B56A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb56a..0xb56b  (1 bytes)
DATA_leido_B56A:
	defb 009h	; b56a

; ----------------------------------------------------------------------
; DATOS leido_B56B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb56b..0xb56c  (1 bytes)
DATA_leido_B56B:
	defb 0eah	; b56b

; ----------------------------------------------------------------------
; DATOS leido_B56C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb56c..0xb56d  (1 bytes)
DATA_leido_B56C:
	defb 008h	; b56c

; ----------------------------------------------------------------------
; DATOS leido_B56D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb56d..0xb56e  (1 bytes)
DATA_leido_B56D:
	defb 0ebh	; b56d

; ----------------------------------------------------------------------
; DATOS leido_B56E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb56e..0xb56f  (1 bytes)
DATA_leido_B56E:
	defb 004h	; b56e

; ----------------------------------------------------------------------
; DATOS leido_B56F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb56f..0xb570  (1 bytes)
DATA_leido_B56F:
	defb 070h	; b56f

; ----------------------------------------------------------------------
; DATOS leido_B570: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb570..0xb57a  (10 bytes)
DATA_leido_B570:
	defb 0d1h,002h,032h,082h,012h,0d2h,0b1h,0d1h,071h,0ebh	; b570  ..2.....q.

; ----------------------------------------------------------------------
; DATOS leido_B57A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb57a..0xb57b  (1 bytes)
DATA_leido_B57A:
	defb 008h	; b57a

; ----------------------------------------------------------------------
; DATOS leido_B57B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb57b..0xb57c  (1 bytes)
DATA_leido_B57B:
	defb 050h	; b57b

; ----------------------------------------------------------------------
; DATOS leido_B57C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb57c..0xb57d  (1 bytes)
DATA_leido_B57C:
	defb 0f9h	; b57c

; ----------------------------------------------------------------------
; DATOS leido_B57D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb57d..0xb57f  (2 bytes)
DATA_leido_B57D:
	defb 085h,0b7h	; b57d

; ----------------------------------------------------------------------
; DATOS leido_B57F: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb57f..0xb582  (3 bytes)
DATA_leido_B57F:
	defb 0a2h,081h,0f9h	; b57f

; ----------------------------------------------------------------------
; DATOS leido_B582: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb582..0xb584  (2 bytes)
DATA_leido_B582:
	defb 085h,0b7h	; b582

; ----------------------------------------------------------------------
; DATOS leido_B584: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb584..0xb587  (3 bytes)
DATA_leido_B584:
	defb 032h,051h,0f8h	; b584

; ----------------------------------------------------------------------
; DATOS leido_B587: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb587..0xb588  (1 bytes)
DATA_leido_B587:
	defb 016h	; b587

; ----------------------------------------------------------------------
; DATOS leido_B588: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb588..0xb589  (1 bytes)
DATA_leido_B588:
	defb 0eah	; b588

; ----------------------------------------------------------------------
; DATOS leido_B589: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb589..0xb58a  (1 bytes)
DATA_leido_B589:
	defb 009h	; b589

; ----------------------------------------------------------------------
; DATOS leido_B58A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb58a..0xb58b  (1 bytes)
DATA_leido_B58A:
	defb 0f9h	; b58a

; ----------------------------------------------------------------------
; DATOS leido_B58B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb58b..0xb58d  (2 bytes)
DATA_leido_B58B:
	defb 0bah,0b6h	; b58b

; ----------------------------------------------------------------------
; DATOS leido_B58D: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb58d..0xb590  (3 bytes)
DATA_leido_B58D:
	defb 070h,050h,0f8h	; b58d

; ----------------------------------------------------------------------
; DATOS leido_B590: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb590..0xb591  (1 bytes)
DATA_leido_B590:
	defb 016h	; b590

; ----------------------------------------------------------------------
; DATOS leido_B591: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb591..0xb592  (1 bytes)
DATA_leido_B591:
	defb 0ebh	; b591

; ----------------------------------------------------------------------
; DATOS leido_B592: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb592..0xb593  (1 bytes)
DATA_leido_B592:
	defb 008h	; b592

; ----------------------------------------------------------------------
; DATOS leido_B593: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb593..0xb594  (1 bytes)
DATA_leido_B593:
	defb 050h	; b593

; ----------------------------------------------------------------------
; DATOS leido_B594: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb594..0xb595  (1 bytes)
DATA_leido_B594:
	defb 0f9h	; b594

; ----------------------------------------------------------------------
; DATOS leido_B595: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb595..0xb597  (2 bytes)
DATA_leido_B595:
	defb 0fch,0b6h	; b595

; ----------------------------------------------------------------------
; DATOS leido_B597: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb597..0xb59b  (4 bytes)
DATA_leido_B597:
	defb 0d2h,070h,0b0h,0f8h	; b597

; ----------------------------------------------------------------------
; DATOS leido_B59B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb59b..0xb59c  (1 bytes)
DATA_leido_B59B:
	defb 00ah	; b59b

; ----------------------------------------------------------------------
; DATOS leido_B59C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb59c..0xb59d  (1 bytes)
DATA_leido_B59C:
	defb 0ebh	; b59c

; ----------------------------------------------------------------------
; DATOS leido_B59D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb59d..0xb59e  (1 bytes)
DATA_leido_B59D:
	defb 008h	; b59d

; ----------------------------------------------------------------------
; DATOS leido_B59E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb59e..0xb59f  (1 bytes)
DATA_leido_B59E:
	defb 057h	; b59e

; ----------------------------------------------------------------------
; DATOS leido_B59F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb59f..0xb5a0  (1 bytes)
DATA_leido_B59F:
	defb 0f9h	; b59f

; ----------------------------------------------------------------------
; DATOS leido_B5A0: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb5a0..0xb5a2  (2 bytes)
DATA_leido_B5A0:
	defb 031h,0b7h	; b5a0

; ----------------------------------------------------------------------
; DATOS leido_B5A2: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb5a2..0xb5ab  (9 bytes)
DATA_leido_B5A2:
	defb 0d1h,0a0h,0d2h,0a0h,0d1h,080h,0d2h,080h,0f9h	; b5a2  .........

; ----------------------------------------------------------------------
; DATOS leido_B5AB: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb5ab..0xb5ad  (2 bytes)
DATA_leido_B5AB:
	defb 031h,0b7h	; b5ab

; ----------------------------------------------------------------------
; DATOS leido_B5AD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5ad..0xb5ae  (1 bytes)
DATA_leido_B5AD:
	defb 0e9h	; b5ad

; ----------------------------------------------------------------------
; DATOS leido_B5AE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb5ae..0xb5af  (1 bytes)
DATA_leido_B5AE:
	defb 001h	; b5ae

; ----------------------------------------------------------------------
; DATOS leido_B5AF: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb5af..0xb5b2  (3 bytes)
DATA_leido_B5AF:
	defb 033h,034h,0e9h	; b5af

; ----------------------------------------------------------------------
; DATOS leido_B5B2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb5b2..0xb5b3  (1 bytes)
DATA_leido_B5B2:
	defb 009h	; b5b2

; ----------------------------------------------------------------------
; DATOS leido_B5B3: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb5b3..0xb5ba  (7 bytes)
DATA_leido_B5B3:
	defb 0d1h,030h,0d2h,050h,0d1h,050h,0fdh	; b5b3

; ----------------------------------------------------------------------
; DATOS leido_B5BA: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb5ba..0xb5bc  (2 bytes)
DATA_leido_B5BA:
	defb 063h,0b5h	; b5ba

; ----------------------------------------------------------------------
; DATOS leido_B5BC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5bc..0xb5bd  (1 bytes)
DATA_leido_B5BC:
	defb 0feh	; b5bc

; ----------------------------------------------------------------------
; DATOS leido_B5BD: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb5bd..0xb5be  (1 bytes)
DATA_leido_B5BD:
	defb 001h	; b5bd

; ----------------------------------------------------------------------
; DATOS leido_B5BE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5be..0xb5bf  (1 bytes)
DATA_leido_B5BE:
	defb 0dbh	; b5be

; ----------------------------------------------------------------------
; DATOS leido_B5BF: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb5bf..0xb5c0  (1 bytes)
DATA_leido_B5BF:
	defb 003h	; b5bf

; ----------------------------------------------------------------------
; DATOS leido_B5C0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5c0..0xb5c1  (1 bytes)
DATA_leido_B5C0:
	defb 0f8h	; b5c0

; ----------------------------------------------------------------------
; DATOS leido_B5C1: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb5c1..0xb5c2  (1 bytes)
DATA_leido_B5C1:
	defb 002h	; b5c1

; ----------------------------------------------------------------------
; DATOS leido_B5C2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5c2..0xb5c3  (1 bytes)
DATA_leido_B5C2:
	defb 0e9h	; b5c2

; ----------------------------------------------------------------------
; DATOS leido_B5C3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb5c3..0xb5c4  (1 bytes)
DATA_leido_B5C3:
	defb 009h	; b5c3

; ----------------------------------------------------------------------
; DATOS leido_B5C4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5c4..0xb5c5  (1 bytes)
DATA_leido_B5C4:
	defb 0eah	; b5c4

; ----------------------------------------------------------------------
; DATOS leido_B5C5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb5c5..0xb5c6  (1 bytes)
DATA_leido_B5C5:
	defb 008h	; b5c5

; ----------------------------------------------------------------------
; DATOS leido_B5C6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5c6..0xb5c7  (1 bytes)
DATA_leido_B5C6:
	defb 0ebh	; b5c6

; ----------------------------------------------------------------------
; DATOS leido_B5C7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb5c7..0xb5c8  (1 bytes)
DATA_leido_B5C7:
	defb 004h	; b5c7

; ----------------------------------------------------------------------
; DATOS leido_B5C8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb5c8..0xb5c9  (1 bytes)
DATA_leido_B5C8:
	defb 070h	; b5c8

; ----------------------------------------------------------------------
; DATOS leido_B5C9: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb5c9..0xb5d2  (9 bytes)
DATA_leido_B5C9:
	defb 0d2h,022h,052h,0a2h,052h,061h,0d1h,021h,0ebh	; b5c9  ."R.Ra.!.

; ----------------------------------------------------------------------
; DATOS leido_B5D2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb5d2..0xb5d3  (1 bytes)
DATA_leido_B5D2:
	defb 008h	; b5d2

; ----------------------------------------------------------------------
; DATOS leido_B5D3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb5d3..0xb5d4  (1 bytes)
DATA_leido_B5D3:
	defb 050h	; b5d3

; ----------------------------------------------------------------------
; DATOS leido_B5D4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5d4..0xb5d5  (1 bytes)
DATA_leido_B5D4:
	defb 0f9h	; b5d4

; ----------------------------------------------------------------------
; DATOS leido_B5D5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb5d5..0xb5d7  (2 bytes)
DATA_leido_B5D5:
	defb 075h,0b7h	; b5d5

; ----------------------------------------------------------------------
; DATOS leido_B5D7: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb5d7..0xb5dc  (5 bytes)
DATA_leido_B5D7:
	defb 080h,080h,080h,051h,0f9h	; b5d7

; ----------------------------------------------------------------------
; DATOS leido_B5DC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb5dc..0xb5de  (2 bytes)
DATA_leido_B5DC:
	defb 075h,0b7h	; b5dc

; ----------------------------------------------------------------------
; DATOS leido_B5DE: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb5de..0xb5e2  (4 bytes)
DATA_leido_B5DE:
	defb 002h,001h,0c0h,0e9h	; b5de

; ----------------------------------------------------------------------
; DATOS leido_B5E2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb5e2..0xb5e3  (1 bytes)
DATA_leido_B5E2:
	defb 001h	; b5e2

; ----------------------------------------------------------------------
; DATOS leido_B5E3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5e3..0xb5e4  (1 bytes)
DATA_leido_B5E3:
	defb 0f8h	; b5e3

; ----------------------------------------------------------------------
; DATOS leido_B5E4: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb5e4..0xb5e5  (1 bytes)
DATA_leido_B5E4:
	defb 016h	; b5e4

; ----------------------------------------------------------------------
; DATOS leido_B5E5: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb5e5..0xb5ea  (5 bytes)
DATA_leido_B5E5:
	defb 0d2h,042h,052h,062h,0e9h	; b5e5

; ----------------------------------------------------------------------
; DATOS leido_B5EA: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb5ea..0xb5eb  (1 bytes)
DATA_leido_B5EA:
	defb 009h	; b5ea

; ----------------------------------------------------------------------
; DATOS leido_B5EB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb5eb..0xb5ec  (1 bytes)
DATA_leido_B5EB:
	defb 0eah	; b5eb

; ----------------------------------------------------------------------
; DATOS leido_B5EC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb5ec..0xb5ed  (1 bytes)
DATA_leido_B5EC:
	defb 009h	; b5ec

; ----------------------------------------------------------------------
; DATOS leido_B5ED: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb5ed..0xb5ef  (2 bytes)
DATA_leido_B5ED:
	defb 07ah,0e9h	; b5ed

; ----------------------------------------------------------------------
; DATOS leido_B5EF: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb5ef..0xb5f0  (1 bytes)
DATA_leido_B5EF:
	defb 001h	; b5ef

; ----------------------------------------------------------------------
; DATOS leido_B5F0: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb5f0..0xb5f4  (4 bytes)
DATA_leido_B5F0:
	defb 032h,052h,062h,0e9h	; b5f0

; ----------------------------------------------------------------------
; DATOS leido_B5F4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb5f4..0xb5f5  (1 bytes)
DATA_leido_B5F4:
	defb 009h	; b5f4

; ----------------------------------------------------------------------
; DATOS leido_B5F5: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb5f5..0xb600  (11 bytes)
DATA_leido_B5F5:
	defb 070h,070h,070h,060h,060h,050h,050h,031h,000h,0c0h,0e9h	; b5f5  ppp``PP1...

; ----------------------------------------------------------------------
; DATOS leido_B600: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb600..0xb601  (1 bytes)
DATA_leido_B600:
	defb 001h	; b600

; ----------------------------------------------------------------------
; DATOS leido_B601: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb601..0xb608  (7 bytes)
DATA_leido_B601:
	defb 0d3h,0a2h,0d2h,032h,0d3h,082h,0e9h	; b601

; ----------------------------------------------------------------------
; DATOS leido_B608: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb608..0xb609  (1 bytes)
DATA_leido_B608:
	defb 009h	; b608

; ----------------------------------------------------------------------
; DATOS leido_B609: 23 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (23 bytes)
;   0xb609..0xb620  (23 bytes)
DATA_leido_B609:
	defb 074h,0d2h,031h,0d4h,0a0h,0d3h,010h,0d3h,080h,070h,0d1h,070h,070h,050h,050h,0a0h	; b609  t.1......p.ppPP.
	defb 0a0h,030h,030h,080h,080h,010h,0f8h	; b619

; ----------------------------------------------------------------------
; DATOS leido_B620: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb620..0xb621  (1 bytes)
DATA_leido_B620:
	defb 002h	; b620

; ----------------------------------------------------------------------
; DATOS leido_B621: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb621..0xb622  (1 bytes)
DATA_leido_B621:
	defb 0dbh	; b621

; ----------------------------------------------------------------------
; DATOS leido_B622: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb622..0xb623  (1 bytes)
DATA_leido_B622:
	defb 002h	; b622

; ----------------------------------------------------------------------
; DATOS leido_B623: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb623..0xb624  (1 bytes)
DATA_leido_B623:
	defb 0e9h	; b623

; ----------------------------------------------------------------------
; DATOS leido_B624: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb624..0xb625  (1 bytes)
DATA_leido_B624:
	defb 001h	; b624

; ----------------------------------------------------------------------
; DATOS leido_B625: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb625..0xb626  (1 bytes)
DATA_leido_B625:
	defb 0eah	; b625

; ----------------------------------------------------------------------
; DATOS leido_B626: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb626..0xb627  (1 bytes)
DATA_leido_B626:
	defb 008h	; b626

; ----------------------------------------------------------------------
; DATOS leido_B627: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb627..0xb62d  (6 bytes)
DATA_leido_B627:
	defb 0d1h,0c8h,002h,022h,032h,0e9h	; b627

; ----------------------------------------------------------------------
; DATOS leido_B62D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb62d..0xb62e  (1 bytes)
DATA_leido_B62D:
	defb 009h	; b62d

; ----------------------------------------------------------------------
; DATOS leido_B62E: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xb62e..0xb636  (8 bytes)
DATA_leido_B62E:
	defb 044h,0d2h,0a1h,050h,080h,010h,000h,0e9h	; b62e  D..P....

; ----------------------------------------------------------------------
; DATOS leido_B636: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb636..0xb637  (1 bytes)
DATA_leido_B636:
	defb 001h	; b636

; ----------------------------------------------------------------------
; DATOS leido_B637: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb637..0xb63c  (5 bytes)
DATA_leido_B637:
	defb 0d1h,072h,082h,092h,0e9h	; b637

; ----------------------------------------------------------------------
; DATOS leido_B63C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb63c..0xb63d  (1 bytes)
DATA_leido_B63C:
	defb 009h	; b63c

; ----------------------------------------------------------------------
; DATOS leido_B63D: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb63d..0xb648  (11 bytes)
DATA_leido_B63D:
	defb 0a0h,0a0h,0a0h,070h,070h,050h,050h,030h,030h,010h,0f8h	; b63d  ...ppPP00..

; ----------------------------------------------------------------------
; DATOS leido_B648: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb648..0xb649  (1 bytes)
DATA_leido_B648:
	defb 016h	; b648

; ----------------------------------------------------------------------
; DATOS leido_B649: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb649..0xb64a  (1 bytes)
DATA_leido_B649:
	defb 0dbh	; b649

; ----------------------------------------------------------------------
; DATOS leido_B64A: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb64a..0xb64b  (1 bytes)
DATA_leido_B64A:
	defb 003h	; b64a

; ----------------------------------------------------------------------
; DATOS leido_B64B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb64b..0xb64c  (1 bytes)
DATA_leido_B64B:
	defb 0e9h	; b64b

; ----------------------------------------------------------------------
; DATOS leido_B64C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb64c..0xb64d  (1 bytes)
DATA_leido_B64C:
	defb 001h	; b64c

; ----------------------------------------------------------------------
; DATOS leido_B64D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb64d..0xb64e  (1 bytes)
DATA_leido_B64D:
	defb 0ebh	; b64d

; ----------------------------------------------------------------------
; DATOS leido_B64E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb64e..0xb64f  (1 bytes)
DATA_leido_B64E:
	defb 008h	; b64e

; ----------------------------------------------------------------------
; DATOS leido_B64F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb64f..0xb650  (1 bytes)
DATA_leido_B64F:
	defb 050h	; b64f

; ----------------------------------------------------------------------
; DATOS leido_B650: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb650..0xb651  (1 bytes)
DATA_leido_B650:
	defb 0eah	; b650

; ----------------------------------------------------------------------
; DATOS leido_B651: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb651..0xb652  (1 bytes)
DATA_leido_B651:
	defb 009h	; b651

; ----------------------------------------------------------------------
; DATOS leido_B652: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xb652..0xb65a  (8 bytes)
DATA_leido_B652:
	defb 0d2h,0c8h,0a2h,0d1h,002h,0d2h,072h,0e9h	; b652  ......r.

; ----------------------------------------------------------------------
; DATOS leido_B65A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb65a..0xb65b  (1 bytes)
DATA_leido_B65A:
	defb 009h	; b65a

; ----------------------------------------------------------------------
; DATOS leido_B65B: 23 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (23 bytes)
;   0xb65b..0xb672  (23 bytes)
DATA_leido_B65B:
	defb 0d1h,074h,0d2h,032h,011h,000h,0d1h,050h,030h,021h,0d2h,020h,0d4h,000h,0d2h,080h	; b65b  .t.2...P0!. ....
	defb 070h,070h,0d3h,070h,070h,0c0h,0f8h	; b66b

; ----------------------------------------------------------------------
; DATOS leido_B672: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb672..0xb673  (1 bytes)
DATA_leido_B672:
	defb 01ch	; b672

; ----------------------------------------------------------------------
; DATOS leido_B673: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb673..0xb674  (1 bytes)
DATA_leido_B673:
	defb 0e9h	; b673

; ----------------------------------------------------------------------
; DATOS leido_B674: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb674..0xb675  (1 bytes)
DATA_leido_B674:
	defb 001h	; b674

; ----------------------------------------------------------------------
; DATOS leido_B675: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb675..0xb67a  (5 bytes)
DATA_leido_B675:
	defb 0d2h,072h,082h,032h,0e9h	; b675

; ----------------------------------------------------------------------
; DATOS leido_B67A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb67a..0xb67b  (1 bytes)
DATA_leido_B67A:
	defb 009h	; b67a

; ----------------------------------------------------------------------
; DATOS leido_B67B: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xb67b..0xb68c  (17 bytes)
DATA_leido_B67B:
	defb 0d1h,009h,0d2h,0b0h,0b0h,0b0h,070h,070h,051h,0b0h,050h,070h,0d3h,0b0h,0d2h,010h	; b67b  ......ppQ.Pp....
	defb 0ebh	; b68b

; ----------------------------------------------------------------------
; DATOS leido_B68C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb68c..0xb68d  (1 bytes)
DATA_leido_B68C:
	defb 008h	; b68c

; ----------------------------------------------------------------------
; DATOS leido_B68D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb68d..0xb68e  (1 bytes)
DATA_leido_B68D:
	defb 057h	; b68d

; ----------------------------------------------------------------------
; DATOS leido_B68E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb68e..0xb68f  (1 bytes)
DATA_leido_B68E:
	defb 0f8h	; b68e

; ----------------------------------------------------------------------
; DATOS leido_B68F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb68f..0xb690  (1 bytes)
DATA_leido_B68F:
	defb 00ah	; b68f

; ----------------------------------------------------------------------
; DATOS leido_B690: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb690..0xb691  (1 bytes)
DATA_leido_B690:
	defb 0f9h	; b690

; ----------------------------------------------------------------------
; DATOS leido_B691: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb691..0xb693  (2 bytes)
DATA_leido_B691:
	defb 069h,0b7h	; b691

; ----------------------------------------------------------------------
; DATOS leido_B693: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb693..0xb69c  (9 bytes)
DATA_leido_B693:
	defb 0d1h,070h,0d2h,070h,0d1h,050h,0d2h,050h,0f9h	; b693  .p.p.P.P.

; ----------------------------------------------------------------------
; DATOS leido_B69C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb69c..0xb69e  (2 bytes)
DATA_leido_B69C:
	defb 069h,0b7h	; b69c

; ----------------------------------------------------------------------
; DATOS leido_B69E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb69e..0xb69f  (1 bytes)
DATA_leido_B69E:
	defb 0e9h	; b69e

; ----------------------------------------------------------------------
; DATOS leido_B69F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb69f..0xb6a0  (1 bytes)
DATA_leido_B69F:
	defb 001h	; b69f

; ----------------------------------------------------------------------
; DATOS leido_B6A0: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb6a0..0xb6a4  (4 bytes)
DATA_leido_B6A0:
	defb 0d3h,0a3h,0a4h,0e9h	; b6a0

; ----------------------------------------------------------------------
; DATOS leido_B6A4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6a4..0xb6a5  (1 bytes)
DATA_leido_B6A4:
	defb 009h	; b6a4

; ----------------------------------------------------------------------
; DATOS leido_B6A5: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb6a5..0xb6ac  (7 bytes)
DATA_leido_B6A5:
	defb 0d2h,0a0h,0d2h,000h,0d1h,000h,0fdh	; b6a5

; ----------------------------------------------------------------------
; DATOS leido_B6AC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb6ac..0xb6ae  (2 bytes)
DATA_leido_B6AC:
	defb 0bch,0b5h	; b6ac

; ----------------------------------------------------------------------
; DATOS leido_B6AE: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xb6ae..0xb6bc  (14 bytes)
DATA_leido_B6AE:
	defb 001h,071h,000h,071h,0a1h,050h,080h,010h,001h,071h,000h,0fah,0c0h,0e9h	; b6ae  .q.q.P...q....

; ----------------------------------------------------------------------
; DATOS leido_B6BC: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6bc..0xb6bd  (1 bytes)
DATA_leido_B6BC:
	defb 001h	; b6bc

; ----------------------------------------------------------------------
; DATOS leido_B6BD: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb6bd..0xb6c2  (5 bytes)
DATA_leido_B6BD:
	defb 0d1h,042h,052h,062h,0e9h	; b6bd

; ----------------------------------------------------------------------
; DATOS leido_B6C2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6c2..0xb6c3  (1 bytes)
DATA_leido_B6C2:
	defb 009h	; b6c2

; ----------------------------------------------------------------------
; DATOS leido_B6C3: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb6c3..0xb6c5  (2 bytes)
DATA_leido_B6C3:
	defb 07ah,0e9h	; b6c3

; ----------------------------------------------------------------------
; DATOS leido_B6C5: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6c5..0xb6c6  (1 bytes)
DATA_leido_B6C5:
	defb 001h	; b6c5

; ----------------------------------------------------------------------
; DATOS leido_B6C6: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb6c6..0xb6ca  (4 bytes)
DATA_leido_B6C6:
	defb 032h,052h,062h,0e9h	; b6c6

; ----------------------------------------------------------------------
; DATOS leido_B6CA: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6ca..0xb6cb  (1 bytes)
DATA_leido_B6CA:
	defb 009h	; b6ca

; ----------------------------------------------------------------------
; DATOS leido_B6CB: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb6cb..0xb6d6  (11 bytes)
DATA_leido_B6CB:
	defb 070h,070h,070h,060h,060h,050h,050h,031h,000h,0c0h,0e9h	; b6cb  ppp``PP1...

; ----------------------------------------------------------------------
; DATOS leido_B6D6: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6d6..0xb6d7  (1 bytes)
DATA_leido_B6D6:
	defb 001h	; b6d6

; ----------------------------------------------------------------------
; DATOS leido_B6D7: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb6d7..0xb6de  (7 bytes)
DATA_leido_B6D7:
	defb 0d2h,0a2h,0d1h,032h,0d2h,082h,0e9h	; b6d7

; ----------------------------------------------------------------------
; DATOS leido_B6DE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6de..0xb6df  (1 bytes)
DATA_leido_B6DE:
	defb 012h	; b6de

; ----------------------------------------------------------------------
; DATOS leido_B6DF: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb6df..0xb6e1  (2 bytes)
DATA_leido_B6DF:
	defb 07ah,0e9h	; b6df

; ----------------------------------------------------------------------
; DATOS leido_B6E1: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6e1..0xb6e2  (1 bytes)
DATA_leido_B6E1:
	defb 001h	; b6e1

; ----------------------------------------------------------------------
; DATOS leido_B6E2: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb6e2..0xb6e8  (6 bytes)
DATA_leido_B6E2:
	defb 0d1h,0c8h,042h,052h,062h,0e9h	; b6e2

; ----------------------------------------------------------------------
; DATOS leido_B6E8: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6e8..0xb6e9  (1 bytes)
DATA_leido_B6E8:
	defb 009h	; b6e8

; ----------------------------------------------------------------------
; DATOS leido_B6E9: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb6e9..0xb6eb  (2 bytes)
DATA_leido_B6E9:
	defb 07ah,0e9h	; b6e9

; ----------------------------------------------------------------------
; DATOS leido_B6EB: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6eb..0xb6ec  (1 bytes)
DATA_leido_B6EB:
	defb 001h	; b6eb

; ----------------------------------------------------------------------
; DATOS leido_B6EC: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb6ec..0xb6f1  (5 bytes)
DATA_leido_B6EC:
	defb 0a2h,0b2h,0d0h,002h,0e9h	; b6ec

; ----------------------------------------------------------------------
; DATOS leido_B6F1: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6f1..0xb6f2  (1 bytes)
DATA_leido_B6F1:
	defb 009h	; b6f1

; ----------------------------------------------------------------------
; DATOS leido_B6F2: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb6f2..0xb6fd  (11 bytes)
DATA_leido_B6F2:
	defb 010h,010h,010h,000h,000h,0d1h,0a0h,0a0h,070h,0fah,0e9h	; b6f2  ........p..

; ----------------------------------------------------------------------
; DATOS leido_B6FD: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb6fd..0xb6fe  (1 bytes)
DATA_leido_B6FD:
	defb 001h	; b6fd

; ----------------------------------------------------------------------
; DATOS leido_B6FE: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb6fe..0xb704  (6 bytes)
DATA_leido_B6FE:
	defb 0d1h,0c8h,042h,072h,002h,0e9h	; b6fe

; ----------------------------------------------------------------------
; DATOS leido_B704: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb704..0xb705  (1 bytes)
DATA_leido_B704:
	defb 009h	; b704

; ----------------------------------------------------------------------
; DATOS leido_B705: 19 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (19 bytes)
;   0xb705..0xb718  (19 bytes)
DATA_leido_B705:
	defb 0d0h,00ah,0d1h,0a0h,080h,071h,0d2h,070h,0d3h,070h,0d1h,010h,000h,000h,0d2h,000h	; b705  .....q.p.p......
	defb 000h,0c0h,0f8h	; b715

; ----------------------------------------------------------------------
; DATOS leido_B718: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb718..0xb719  (1 bytes)
DATA_leido_B718:
	defb 01ch	; b718

; ----------------------------------------------------------------------
; DATOS leido_B719: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb719..0xb71a  (1 bytes)
DATA_leido_B719:
	defb 0e9h	; b719

; ----------------------------------------------------------------------
; DATOS leido_B71A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb71a..0xb71b  (1 bytes)
DATA_leido_B71A:
	defb 001h	; b71a

; ----------------------------------------------------------------------
; DATOS leido_B71B: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb71b..0xb721  (6 bytes)
DATA_leido_B71B:
	defb 0d1h,002h,032h,0d2h,082h,0e9h	; b71b

; ----------------------------------------------------------------------
; DATOS leido_B721: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb721..0xb722  (1 bytes)
DATA_leido_B721:
	defb 009h	; b721

; ----------------------------------------------------------------------
; DATOS leido_B722: 20 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (20 bytes)
;   0xb722..0xb736  (20 bytes)
DATA_leido_B722:
	defb 0d1h,07ah,050h,050h,030h,030h,0d2h,0b1h,0d1h,030h,0d2h,0b0h,0d1h,010h,0fah,0d2h	; b722  .zPP00...0......
	defb 070h,0d1h,070h,0fbh	; b732

; ----------------------------------------------------------------------
; DATOS leido_B736: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb736..0xb739  (3 bytes)
DATA_leido_B736:
	defb 003h,031h,0b7h	; b736

; ----------------------------------------------------------------------
; DATOS leido_B739: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb739..0xb73e  (5 bytes)
DATA_leido_B739:
	defb 070h,0d2h,070h,0fah,0eah	; b739

; ----------------------------------------------------------------------
; DATOS leido_B73E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb73e..0xb73f  (1 bytes)
DATA_leido_B73E:
	defb 009h	; b73e

; ----------------------------------------------------------------------
; DATOS leido_B73F: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb73f..0xb744  (5 bytes)
DATA_leido_B73F:
	defb 0d2h,020h,0d1h,020h,0fbh	; b73f

; ----------------------------------------------------------------------
; DATOS leido_B744: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb744..0xb747  (3 bytes)
DATA_leido_B744:
	defb 003h,03dh,0b7h	; b744

; ----------------------------------------------------------------------
; DATOS leido_B747: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb747..0xb751  (10 bytes)
DATA_leido_B747:
	defb 020h,0d2h,020h,0fah,0d2h,000h,070h,0d1h,000h,0fbh	; b747   . ...p...

; ----------------------------------------------------------------------
; DATOS leido_B751: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb751..0xb754  (3 bytes)
DATA_leido_B751:
	defb 002h,04bh,0b7h	; b751

; ----------------------------------------------------------------------
; DATOS leido_B754: 26 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (26 bytes)
;   0xb754..0xb76e  (26 bytes)
DATA_leido_B754:
	defb 0fah,0d3h,0a0h,0d2h,030h,080h,010h,060h,0d3h,0b0h,0fah,071h,0d5h,081h,0d4h,030h	; b754  ....0..`...q...0
	defb 0d5h,0a0h,0d4h,050h,0fah,0d2h,040h,0d1h,040h,0fbh	; b764  ...P..@.@.

; ----------------------------------------------------------------------
; DATOS leido_B76E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb76e..0xb771  (3 bytes)
DATA_leido_B76E:
	defb 003h,069h,0b7h	; b76e

; ----------------------------------------------------------------------
; DATOS leido_B771: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb771..0xb776  (5 bytes)
DATA_leido_B771:
	defb 040h,0d2h,040h,0fah,0e9h	; b771

; ----------------------------------------------------------------------
; DATOS leido_B776: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb776..0xb777  (1 bytes)
DATA_leido_B776:
	defb 001h	; b776

; ----------------------------------------------------------------------
; DATOS leido_B777: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb777..0xb77c  (5 bytes)
DATA_leido_B777:
	defb 0d1h,012h,022h,032h,0e9h	; b777

; ----------------------------------------------------------------------
; DATOS leido_B77C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb77c..0xb77d  (1 bytes)
DATA_leido_B77C:
	defb 009h	; b77c

; ----------------------------------------------------------------------
; DATOS leido_B77D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb77d..0xb77e  (1 bytes)
DATA_leido_B77D:
	defb 0eah	; b77d

; ----------------------------------------------------------------------
; DATOS leido_B77E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb77e..0xb77f  (1 bytes)
DATA_leido_B77E:
	defb 008h	; b77e

; ----------------------------------------------------------------------
; DATOS leido_B77F: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb77f..0xb786  (7 bytes)
DATA_leido_B77F:
	defb 040h,0d2h,041h,040h,041h,0fah,0e9h	; b77f

; ----------------------------------------------------------------------
; DATOS leido_B786: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb786..0xb787  (1 bytes)
DATA_leido_B786:
	defb 001h	; b786

; ----------------------------------------------------------------------
; DATOS leido_B787: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb787..0xb78c  (5 bytes)
DATA_leido_B787:
	defb 0d1h,042h,052h,062h,0e9h	; b787

; ----------------------------------------------------------------------
; DATOS leido_B78C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb78c..0xb78d  (1 bytes)
DATA_leido_B78C:
	defb 009h	; b78c

; ----------------------------------------------------------------------
; DATOS leido_B78D: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb78d..0xb794  (7 bytes)
DATA_leido_B78D:
	defb 070h,0d2h,071h,070h,071h,0fah,0feh	; b78d

; ----------------------------------------------------------------------
; DATOS leido_B794: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb794..0xb795  (1 bytes)
DATA_leido_B794:
	defb 004h	; b794

; ----------------------------------------------------------------------
; DATOS leido_B795: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb795..0xb796  (1 bytes)
DATA_leido_B795:
	defb 0e9h	; b795

; ----------------------------------------------------------------------
; DATOS leido_B796: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb796..0xb797  (1 bytes)
DATA_leido_B796:
	defb 007h	; b796

; ----------------------------------------------------------------------
; DATOS leido_B797: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb797..0xb799  (2 bytes)
DATA_leido_B797:
	defb 0d0h,0f9h	; b797

; ----------------------------------------------------------------------
; DATOS leido_B799: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb799..0xb79b  (2 bytes)
DATA_leido_B799:
	defb 007h,0bch	; b799

; ----------------------------------------------------------------------
; DATOS leido_B79B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb79b..0xb79d  (2 bytes)
DATA_leido_B79B:
	defb 090h,0e9h	; b79b

; ----------------------------------------------------------------------
; DATOS leido_B79D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb79d..0xb79e  (1 bytes)
DATA_leido_B79D:
	defb 001h	; b79d

; ----------------------------------------------------------------------
; DATOS leido_B79E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb79e..0xb7a1  (3 bytes)
DATA_leido_B79E:
	defb 002h,003h,0e9h	; b79e

; ----------------------------------------------------------------------
; DATOS leido_B7A1: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb7a1..0xb7a2  (1 bytes)
DATA_leido_B7A1:
	defb 007h	; b7a1

; ----------------------------------------------------------------------
; DATOS leido_B7A2: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb7a2..0xb7ad  (11 bytes)
DATA_leido_B7A2:
	defb 000h,000h,000h,090h,090h,010h,030h,030h,030h,030h,0f9h	; b7a2  ......0000.

; ----------------------------------------------------------------------
; DATOS leido_B7AD: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7ad..0xb7af  (2 bytes)
DATA_leido_B7AD:
	defb 007h,0bch	; b7ad

; ----------------------------------------------------------------------
; DATOS leido_B7AF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7af..0xb7b0  (1 bytes)
DATA_leido_B7AF:
	defb 0fbh	; b7af

; ----------------------------------------------------------------------
; DATOS leido_B7B0: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb7b0..0xb7b3  (3 bytes)
DATA_leido_B7B0:
	defb 007h,0ach,0b7h	; b7b0

; ----------------------------------------------------------------------
; DATOS leido_B7B3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7b3..0xb7b4  (1 bytes)
DATA_leido_B7B3:
	defb 0f9h	; b7b3

; ----------------------------------------------------------------------
; DATOS leido_B7B4: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7b4..0xb7b6  (2 bytes)
DATA_leido_B7B4:
	defb 014h,0bch	; b7b4

; ----------------------------------------------------------------------
; DATOS leido_B7B6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7b6..0xb7b7  (1 bytes)
DATA_leido_B7B6:
	defb 0f9h	; b7b6

; ----------------------------------------------------------------------
; DATOS leido_B7B7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7b7..0xb7b9  (2 bytes)
DATA_leido_B7B7:
	defb 007h,0bch	; b7b7

; ----------------------------------------------------------------------
; DATOS leido_B7B9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7b9..0xb7ba  (1 bytes)
DATA_leido_B7B9:
	defb 0f9h	; b7b9

; ----------------------------------------------------------------------
; DATOS leido_B7BA: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7ba..0xb7bc  (2 bytes)
DATA_leido_B7BA:
	defb 021h,0bch	; b7ba

; ----------------------------------------------------------------------
; DATOS leido_B7BC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7bc..0xb7bd  (1 bytes)
DATA_leido_B7BC:
	defb 0fbh	; b7bc

; ----------------------------------------------------------------------
; DATOS leido_B7BD: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb7bd..0xb7c0  (3 bytes)
DATA_leido_B7BD:
	defb 003h,0b6h,0b7h	; b7bd

; ----------------------------------------------------------------------
; DATOS leido_B7C0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7c0..0xb7c1  (1 bytes)
DATA_leido_B7C0:
	defb 0f9h	; b7c0

; ----------------------------------------------------------------------
; DATOS leido_B7C1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7c1..0xb7c3  (2 bytes)
DATA_leido_B7C1:
	defb 007h,0bch	; b7c1

; ----------------------------------------------------------------------
; DATOS leido_B7C3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7c3..0xb7c4  (1 bytes)
DATA_leido_B7C3:
	defb 0f9h	; b7c3

; ----------------------------------------------------------------------
; DATOS leido_B7C4: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7c4..0xb7c6  (2 bytes)
DATA_leido_B7C4:
	defb 014h,0bch	; b7c4

; ----------------------------------------------------------------------
; DATOS leido_B7C6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7c6..0xb7c7  (1 bytes)
DATA_leido_B7C6:
	defb 0f9h	; b7c6

; ----------------------------------------------------------------------
; DATOS leido_B7C7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7c7..0xb7c9  (2 bytes)
DATA_leido_B7C7:
	defb 007h,0bch	; b7c7

; ----------------------------------------------------------------------
; DATOS leido_B7C9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7c9..0xb7ca  (1 bytes)
DATA_leido_B7C9:
	defb 0fbh	; b7c9

; ----------------------------------------------------------------------
; DATOS leido_B7CA: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb7ca..0xb7cd  (3 bytes)
DATA_leido_B7CA:
	defb 004h,0c6h,0b7h	; b7ca

; ----------------------------------------------------------------------
; DATOS leido_B7CD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7cd..0xb7ce  (1 bytes)
DATA_leido_B7CD:
	defb 0f9h	; b7cd

; ----------------------------------------------------------------------
; DATOS leido_B7CE: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7ce..0xb7d0  (2 bytes)
DATA_leido_B7CE:
	defb 021h,0bch	; b7ce

; ----------------------------------------------------------------------
; DATOS leido_B7D0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7d0..0xb7d1  (1 bytes)
DATA_leido_B7D0:
	defb 0fbh	; b7d0

; ----------------------------------------------------------------------
; DATOS leido_B7D1: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb7d1..0xb7d4  (3 bytes)
DATA_leido_B7D1:
	defb 002h,0cdh,0b7h	; b7d1

; ----------------------------------------------------------------------
; DATOS leido_B7D4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7d4..0xb7d5  (1 bytes)
DATA_leido_B7D4:
	defb 0fdh	; b7d4

; ----------------------------------------------------------------------
; DATOS leido_B7D5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7d5..0xb7d7  (2 bytes)
DATA_leido_B7D5:
	defb 093h,0b7h	; b7d5

; ----------------------------------------------------------------------
; DATOS leido_B7D7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7d7..0xb7d8  (1 bytes)
DATA_leido_B7D7:
	defb 0feh	; b7d7

; ----------------------------------------------------------------------
; DATOS leido_B7D8: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb7d8..0xb7d9  (1 bytes)
DATA_leido_B7D8:
	defb 001h	; b7d8

; ----------------------------------------------------------------------
; DATOS leido_B7D9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7d9..0xb7da  (1 bytes)
DATA_leido_B7D9:
	defb 0e9h	; b7d9

; ----------------------------------------------------------------------
; DATOS leido_B7DA: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb7da..0xb7db  (1 bytes)
DATA_leido_B7DA:
	defb 007h	; b7da

; ----------------------------------------------------------------------
; DATOS leido_B7DB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7db..0xb7dc  (1 bytes)
DATA_leido_B7DB:
	defb 0f2h	; b7db

; ----------------------------------------------------------------------
; DATOS leido_B7DC: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb7dc..0xb7dd  (1 bytes)
DATA_leido_B7DC:
	defb 018h	; b7dc

; ----------------------------------------------------------------------
; DATOS leido_B7DD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7dd..0xb7de  (1 bytes)
DATA_leido_B7DD:
	defb 0f1h	; b7dd

; ----------------------------------------------------------------------
; DATOS leido_B7DE: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb7de..0xb7df  (1 bytes)
DATA_leido_B7DE:
	defb 041h	; b7de

; ----------------------------------------------------------------------
; DATOS leido_B7DF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7df..0xb7e0  (1 bytes)
DATA_leido_B7DF:
	defb 0eah	; b7df

; ----------------------------------------------------------------------
; DATOS leido_B7E0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb7e0..0xb7e1  (1 bytes)
DATA_leido_B7E0:
	defb 006h	; b7e0

; ----------------------------------------------------------------------
; DATOS leido_B7E1: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb7e1..0xb7e4  (3 bytes)
DATA_leido_B7E1:
	defb 0ech,0c0h,0f9h	; b7e1

; ----------------------------------------------------------------------
; DATOS leido_B7E4: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7e4..0xb7e6  (2 bytes)
DATA_leido_B7E4:
	defb 066h,0bch	; b7e4

; ----------------------------------------------------------------------
; DATOS leido_B7E6: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb7e6..0xb7ec  (6 bytes)
DATA_leido_B7E6:
	defb 0d1h,010h,0c0h,0d2h,0a8h,0f9h	; b7e6

; ----------------------------------------------------------------------
; DATOS leido_B7EC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb7ec..0xb7ee  (2 bytes)
DATA_leido_B7EC:
	defb 083h,0bch	; b7ec

; ----------------------------------------------------------------------
; DATOS leido_B7EE: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb7ee..0xb7f0  (2 bytes)
DATA_leido_B7EE:
	defb 0a0h,0eah	; b7ee

; ----------------------------------------------------------------------
; DATOS leido_B7F0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb7f0..0xb7f1  (1 bytes)
DATA_leido_B7F0:
	defb 003h	; b7f0

; ----------------------------------------------------------------------
; DATOS leido_B7F1: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb7f1..0xb7f3  (2 bytes)
DATA_leido_B7F1:
	defb 0a0h,0eah	; b7f1

; ----------------------------------------------------------------------
; DATOS leido_B7F3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb7f3..0xb7f4  (1 bytes)
DATA_leido_B7F3:
	defb 006h	; b7f3

; ----------------------------------------------------------------------
; DATOS leido_B7F4: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb7f4..0xb7f7  (3 bytes)
DATA_leido_B7F4:
	defb 0a0h,080h,0eah	; b7f4

; ----------------------------------------------------------------------
; DATOS leido_B7F7: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb7f7..0xb7f8  (1 bytes)
DATA_leido_B7F7:
	defb 002h	; b7f7

; ----------------------------------------------------------------------
; DATOS leido_B7F8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7f8..0xb7f9  (1 bytes)
DATA_leido_B7F8:
	defb 0e9h	; b7f8

; ----------------------------------------------------------------------
; DATOS leido_B7F9: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb7f9..0xb7fa  (1 bytes)
DATA_leido_B7F9:
	defb 001h	; b7f9

; ----------------------------------------------------------------------
; DATOS leido_B7FA: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb7fa..0xb800  (6 bytes)
DATA_leido_B7FA:
	defb 0a2h,0d1h,002h,013h,023h,0e9h	; b7fa

; ----------------------------------------------------------------------
; DATOS leido_B800: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb800..0xb801  (1 bytes)
DATA_leido_B800:
	defb 007h	; b800

; ----------------------------------------------------------------------
; DATOS leido_B801: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb801..0xb802  (1 bytes)
DATA_leido_B801:
	defb 0eah	; b801

; ----------------------------------------------------------------------
; DATOS leido_B802: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb802..0xb803  (1 bytes)
DATA_leido_B802:
	defb 006h	; b802

; ----------------------------------------------------------------------
; DATOS leido_B803: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb803..0xb806  (3 bytes)
DATA_leido_B803:
	defb 0d1h,030h,0eah	; b803

; ----------------------------------------------------------------------
; DATOS leido_B806: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb806..0xb807  (1 bytes)
DATA_leido_B806:
	defb 003h	; b806

; ----------------------------------------------------------------------
; DATOS leido_B807: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb807..0xb809  (2 bytes)
DATA_leido_B807:
	defb 030h,0eah	; b807

; ----------------------------------------------------------------------
; DATOS leido_B809: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb809..0xb80a  (1 bytes)
DATA_leido_B809:
	defb 006h	; b809

; ----------------------------------------------------------------------
; DATOS leido_B80A: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb80a..0xb80e  (4 bytes)
DATA_leido_B80A:
	defb 0d2h,0a0h,0a5h,0f9h	; b80a

; ----------------------------------------------------------------------
; DATOS leido_B80E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb80e..0xb810  (2 bytes)
DATA_leido_B80E:
	defb 083h,0bch	; b80e

; ----------------------------------------------------------------------
; DATOS leido_B810: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb810..0xb813  (3 bytes)
DATA_leido_B810:
	defb 052h,040h,0e9h	; b810

; ----------------------------------------------------------------------
; DATOS leido_B813: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb813..0xb814  (1 bytes)
DATA_leido_B813:
	defb 007h	; b813

; ----------------------------------------------------------------------
; DATOS leido_B814: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb814..0xb815  (1 bytes)
DATA_leido_B814:
	defb 0eah	; b814

; ----------------------------------------------------------------------
; DATOS leido_B815: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb815..0xb816  (1 bytes)
DATA_leido_B815:
	defb 007h	; b815

; ----------------------------------------------------------------------
; DATOS leido_B816: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb816..0xb819  (3 bytes)
DATA_leido_B816:
	defb 0ech,0c0h,0f9h	; b816

; ----------------------------------------------------------------------
; DATOS leido_B819: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb819..0xb81b  (2 bytes)
DATA_leido_B819:
	defb 094h,0bch	; b819

; ----------------------------------------------------------------------
; DATOS leido_B81B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb81b..0xb81c  (1 bytes)
DATA_leido_B81B:
	defb 0f9h	; b81b

; ----------------------------------------------------------------------
; DATOS leido_B81C: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb81c..0xb81e  (2 bytes)
DATA_leido_B81C:
	defb 00eh,0bdh	; b81c

; ----------------------------------------------------------------------
; DATOS leido_B81E: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xb81e..0xb82c  (14 bytes)
DATA_leido_B81E:
	defb 0d2h,030h,030h,050h,070h,072h,0d1h,008h,0d2h,0b2h,0d1h,035h,021h,0e9h	; b81e  .00Ppr.....5!.

; ----------------------------------------------------------------------
; DATOS leido_B82C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb82c..0xb82d  (1 bytes)
DATA_leido_B82C:
	defb 007h	; b82c

; ----------------------------------------------------------------------
; DATOS leido_B82D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb82d..0xb82e  (1 bytes)
DATA_leido_B82D:
	defb 0eah	; b82d

; ----------------------------------------------------------------------
; DATOS leido_B82E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb82e..0xb82f  (1 bytes)
DATA_leido_B82E:
	defb 007h	; b82e

; ----------------------------------------------------------------------
; DATOS leido_B82F: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb82f..0xb832  (3 bytes)
DATA_leido_B82F:
	defb 0ech,0c0h,0f9h	; b82f

; ----------------------------------------------------------------------
; DATOS leido_B832: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb832..0xb834  (2 bytes)
DATA_leido_B832:
	defb 0b3h,0bch	; b832

; ----------------------------------------------------------------------
; DATOS leido_B834: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb834..0xb839  (5 bytes)
DATA_leido_B834:
	defb 090h,0a0h,090h,088h,0f9h	; b834

; ----------------------------------------------------------------------
; DATOS leido_B839: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb839..0xb83b  (2 bytes)
DATA_leido_B839:
	defb 0cdh,0bch	; b839

; ----------------------------------------------------------------------
; DATOS leido_B83B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb83b..0xb83d  (2 bytes)
DATA_leido_B83B:
	defb 08bh,0fdh	; b83b

; ----------------------------------------------------------------------
; DATOS leido_B83D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb83d..0xb83f  (2 bytes)
DATA_leido_B83D:
	defb 0d7h,0b7h	; b83d

; ----------------------------------------------------------------------
; DATOS leido_B83F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb83f..0xb840  (1 bytes)
DATA_leido_B83F:
	defb 0feh	; b83f

; ----------------------------------------------------------------------
; DATOS leido_B840: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb840..0xb841  (1 bytes)
DATA_leido_B840:
	defb 001h	; b840

; ----------------------------------------------------------------------
; DATOS leido_B841: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb841..0xb842  (1 bytes)
DATA_leido_B841:
	defb 0f8h	; b841

; ----------------------------------------------------------------------
; DATOS leido_B842: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb842..0xb843  (1 bytes)
DATA_leido_B842:
	defb 023h	; b842

; ----------------------------------------------------------------------
; DATOS leido_B843: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb843..0xb844  (1 bytes)
DATA_leido_B843:
	defb 0e9h	; b843

; ----------------------------------------------------------------------
; DATOS leido_B844: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb844..0xb845  (1 bytes)
DATA_leido_B844:
	defb 007h	; b844

; ----------------------------------------------------------------------
; DATOS leido_B845: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb845..0xb846  (1 bytes)
DATA_leido_B845:
	defb 0eah	; b845

; ----------------------------------------------------------------------
; DATOS leido_B846: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb846..0xb847  (1 bytes)
DATA_leido_B846:
	defb 00ch	; b846

; ----------------------------------------------------------------------
; DATOS leido_B847: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb847..0xb848  (1 bytes)
DATA_leido_B847:
	defb 0ebh	; b847

; ----------------------------------------------------------------------
; DATOS leido_B848: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb848..0xb849  (1 bytes)
DATA_leido_B848:
	defb 051h	; b848

; ----------------------------------------------------------------------
; DATOS leido_B849: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb849..0xb84a  (1 bytes)
DATA_leido_B849:
	defb 080h	; b849

; ----------------------------------------------------------------------
; DATOS leido_B84A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb84a..0xb84b  (1 bytes)
DATA_leido_B84A:
	defb 0dbh	; b84a

; ----------------------------------------------------------------------
; DATOS leido_B84B: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb84b..0xb84c  (1 bytes)
DATA_leido_B84B:
	defb 003h	; b84b

; ----------------------------------------------------------------------
; DATOS leido_B84C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb84c..0xb84d  (1 bytes)
DATA_leido_B84C:
	defb 0ebh	; b84c

; ----------------------------------------------------------------------
; DATOS leido_B84D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb84d..0xb84e  (1 bytes)
DATA_leido_B84D:
	defb 009h	; b84d

; ----------------------------------------------------------------------
; DATOS leido_B84E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb84e..0xb84f  (1 bytes)
DATA_leido_B84E:
	defb 085h	; b84e

; ----------------------------------------------------------------------
; DATOS leido_B84F: 38 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (38 bytes)
;   0xb84f..0xb875  (38 bytes)
DATA_leido_B84F:
	defb 0d5h,0a0h,0d4h,050h,0d5h,0a1h,0d4h,0a0h,0d5h,0a0h,0a0h,0d4h,050h,0d5h,0a1h,0d4h	; b84f  ...P........P...
	defb 0a0h,0d5h,0a0h,0a0h,0d4h,060h,0d5h,0a1h,0d4h,0b0h,0d5h,0a0h,0a0h,0d4h,080h,0d5h	; b85f  .....`..........
	defb 0a1h,0d3h,010h,0d5h,0a0h,0f8h	; b86f

; ----------------------------------------------------------------------
; DATOS leido_B875: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb875..0xb876  (1 bytes)
DATA_leido_B875:
	defb 028h	; b875

; ----------------------------------------------------------------------
; DATOS leido_B876: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb876..0xb877  (1 bytes)
DATA_leido_B876:
	defb 0eah	; b876

; ----------------------------------------------------------------------
; DATOS leido_B877: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb877..0xb878  (1 bytes)
DATA_leido_B877:
	defb 008h	; b877

; ----------------------------------------------------------------------
; DATOS leido_B878: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb878..0xb879  (1 bytes)
DATA_leido_B878:
	defb 0ebh	; b878

; ----------------------------------------------------------------------
; DATOS leido_B879: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb879..0xb87a  (1 bytes)
DATA_leido_B879:
	defb 009h	; b879

; ----------------------------------------------------------------------
; DATOS leido_B87A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb87a..0xb87b  (1 bytes)
DATA_leido_B87A:
	defb 084h	; b87a

; ----------------------------------------------------------------------
; DATOS leido_B87B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb87b..0xb87c  (1 bytes)
DATA_leido_B87B:
	defb 0dbh	; b87b

; ----------------------------------------------------------------------
; DATOS leido_B87C: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb87c..0xb87d  (1 bytes)
DATA_leido_B87C:
	defb 002h	; b87c

; ----------------------------------------------------------------------
; DATOS leido_B87D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb87d..0xb87e  (1 bytes)
DATA_leido_B87D:
	defb 0f9h	; b87d

; ----------------------------------------------------------------------
; DATOS leido_B87E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb87e..0xb880  (2 bytes)
DATA_leido_B87E:
	defb 02eh,0bch	; b87e

; ----------------------------------------------------------------------
; DATOS leido_B880: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb880..0xb88a  (10 bytes)
DATA_leido_B880:
	defb 0d5h,060h,0d4h,010h,0d5h,060h,040h,0b0h,040h,0f9h	; b880  .`...`@.@.

; ----------------------------------------------------------------------
; DATOS leido_B88A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb88a..0xb88c  (2 bytes)
DATA_leido_B88A:
	defb 02eh,0bch	; b88a

; ----------------------------------------------------------------------
; DATOS leido_B88C: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb88c..0xb897  (11 bytes)
DATA_leido_B88C:
	defb 010h,0d3h,010h,0d4h,010h,000h,0d3h,000h,0d4h,000h,0f8h	; b88c  ...........

; ----------------------------------------------------------------------
; DATOS leido_B897: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb897..0xb898  (1 bytes)
DATA_leido_B897:
	defb 023h	; b897

; ----------------------------------------------------------------------
; DATOS leido_B898: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb898..0xb899  (1 bytes)
DATA_leido_B898:
	defb 0f2h	; b898

; ----------------------------------------------------------------------
; DATOS leido_B899: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb899..0xb89a  (1 bytes)
DATA_leido_B899:
	defb 010h	; b899

; ----------------------------------------------------------------------
; DATOS leido_B89A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb89a..0xb89b  (1 bytes)
DATA_leido_B89A:
	defb 0f1h	; b89a

; ----------------------------------------------------------------------
; DATOS leido_B89B: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb89b..0xb89c  (1 bytes)
DATA_leido_B89B:
	defb 042h	; b89b

; ----------------------------------------------------------------------
; DATOS leido_B89C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb89c..0xb89d  (1 bytes)
DATA_leido_B89C:
	defb 0e9h	; b89c

; ----------------------------------------------------------------------
; DATOS leido_B89D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb89d..0xb89e  (1 bytes)
DATA_leido_B89D:
	defb 007h	; b89d

; ----------------------------------------------------------------------
; DATOS leido_B89E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb89e..0xb89f  (1 bytes)
DATA_leido_B89E:
	defb 0eah	; b89e

; ----------------------------------------------------------------------
; DATOS leido_B89F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb89f..0xb8a0  (1 bytes)
DATA_leido_B89F:
	defb 00bh	; b89f

; ----------------------------------------------------------------------
; DATOS leido_B8A0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8a0..0xb8a1  (1 bytes)
DATA_leido_B8A0:
	defb 0ebh	; b8a0

; ----------------------------------------------------------------------
; DATOS leido_B8A1: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb8a1..0xb8a2  (1 bytes)
DATA_leido_B8A1:
	defb 001h	; b8a1

; ----------------------------------------------------------------------
; DATOS leido_B8A2: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb8a2..0xb8a3  (1 bytes)
DATA_leido_B8A2:
	defb 071h	; b8a2

; ----------------------------------------------------------------------
; DATOS leido_B8A3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8a3..0xb8a4  (1 bytes)
DATA_leido_B8A3:
	defb 0dbh	; b8a3

; ----------------------------------------------------------------------
; DATOS leido_B8A4: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8a4..0xb8a5  (1 bytes)
DATA_leido_B8A4:
	defb 001h	; b8a4

; ----------------------------------------------------------------------
; DATOS leido_B8A5: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb8a5..0xb8aa  (5 bytes)
DATA_leido_B8A5:
	defb 0d5h,090h,0d4h,050h,0dbh	; b8a5

; ----------------------------------------------------------------------
; DATOS leido_B8AA: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8aa..0xb8ab  (1 bytes)
DATA_leido_B8AA:
	defb 003h	; b8aa

; ----------------------------------------------------------------------
; DATOS leido_B8AB: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb8ab..0xb8ad  (2 bytes)
DATA_leido_B8AB:
	defb 091h,0dbh	; b8ab

; ----------------------------------------------------------------------
; DATOS leido_B8AD: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8ad..0xb8ae  (1 bytes)
DATA_leido_B8AD:
	defb 002h	; b8ad

; ----------------------------------------------------------------------
; DATOS leido_B8AE: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb8ae..0xb8b5  (7 bytes)
DATA_leido_B8AE:
	defb 050h,0d5h,090h,080h,0d4h,050h,0dbh	; b8ae

; ----------------------------------------------------------------------
; DATOS leido_B8B5: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8b5..0xb8b6  (1 bytes)
DATA_leido_B8B5:
	defb 003h	; b8b5

; ----------------------------------------------------------------------
; DATOS leido_B8B6: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb8b6..0xb8b8  (2 bytes)
DATA_leido_B8B6:
	defb 081h,0dbh	; b8b6

; ----------------------------------------------------------------------
; DATOS leido_B8B8: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8b8..0xb8b9  (1 bytes)
DATA_leido_B8B8:
	defb 002h	; b8b8

; ----------------------------------------------------------------------
; DATOS leido_B8B9: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb8b9..0xb8c3  (10 bytes)
DATA_leido_B8B9:
	defb 050h,0d5h,080h,070h,0d4h,020h,070h,000h,070h,0dbh	; b8b9  P..p. p.p.

; ----------------------------------------------------------------------
; DATOS leido_B8C3: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8c3..0xb8c4  (1 bytes)
DATA_leido_B8C3:
	defb 003h	; b8c3

; ----------------------------------------------------------------------
; DATOS leido_B8C4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb8c4..0xb8c6  (2 bytes)
DATA_leido_B8C4:
	defb 001h,0dbh	; b8c4

; ----------------------------------------------------------------------
; DATOS leido_B8C6: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8c6..0xb8c7  (1 bytes)
DATA_leido_B8C6:
	defb 002h	; b8c6

; ----------------------------------------------------------------------
; DATOS leido_B8C7: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb8c7..0xb8d0  (9 bytes)
DATA_leido_B8C7:
	defb 070h,000h,0d5h,0a0h,0d4h,070h,0d5h,0a0h,0f8h	; b8c7  p....p...

; ----------------------------------------------------------------------
; DATOS leido_B8D0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb8d0..0xb8d1  (1 bytes)
DATA_leido_B8D0:
	defb 028h	; b8d0

; ----------------------------------------------------------------------
; DATOS leido_B8D1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8d1..0xb8d2  (1 bytes)
DATA_leido_B8D1:
	defb 0eah	; b8d1

; ----------------------------------------------------------------------
; DATOS leido_B8D2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb8d2..0xb8d3  (1 bytes)
DATA_leido_B8D2:
	defb 008h	; b8d2

; ----------------------------------------------------------------------
; DATOS leido_B8D3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8d3..0xb8d4  (1 bytes)
DATA_leido_B8D3:
	defb 0dbh	; b8d3

; ----------------------------------------------------------------------
; DATOS leido_B8D4: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8d4..0xb8d5  (1 bytes)
DATA_leido_B8D4:
	defb 002h	; b8d4

; ----------------------------------------------------------------------
; DATOS leido_B8D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8d5..0xb8d6  (1 bytes)
DATA_leido_B8D5:
	defb 0ebh	; b8d5

; ----------------------------------------------------------------------
; DATOS leido_B8D6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb8d6..0xb8d7  (1 bytes)
DATA_leido_B8D6:
	defb 071h	; b8d6

; ----------------------------------------------------------------------
; DATOS leido_B8D7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb8d7..0xb8d8  (1 bytes)
DATA_leido_B8D7:
	defb 082h	; b8d7

; ----------------------------------------------------------------------
; DATOS leido_B8D8: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (16 bytes)
;   0xb8d8..0xb8e8  (16 bytes)
DATA_leido_B8D8:
	defb 0d5h,091h,090h,090h,0d4h,090h,0d5h,090h,081h,080h,080h,0d4h,080h,0d5h,080h,0f9h	; b8d8  ................

; ----------------------------------------------------------------------
; DATOS leido_B8E8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb8e8..0xb8ea  (2 bytes)
DATA_leido_B8E8:
	defb 05bh,0bch	; b8e8

; ----------------------------------------------------------------------
; DATOS leido_B8EA: 19 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (19 bytes)
;   0xb8ea..0xb8fd  (19 bytes)
DATA_leido_B8EA:
	defb 000h,070h,000h,0d5h,051h,050h,050h,0d4h,000h,0d5h,050h,0a1h,0a0h,0a0h,0d4h,0a0h	; b8ea  .p..QPP...P.....
	defb 0d5h,0a0h,0f9h	; b8fa

; ----------------------------------------------------------------------
; DATOS leido_B8FD: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb8fd..0xb8ff  (2 bytes)
DATA_leido_B8FD:
	defb 05bh,0bch	; b8fd

; ----------------------------------------------------------------------
; DATOS leido_B8FF: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xb8ff..0xb907  (8 bytes)
DATA_leido_B8FF:
	defb 0d5h,0a0h,0d4h,000h,0d5h,0a0h,0f0h,0ebh	; b8ff  ........

; ----------------------------------------------------------------------
; DATOS leido_B907: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb907..0xb908  (1 bytes)
DATA_leido_B907:
	defb 009h	; b907

; ----------------------------------------------------------------------
; DATOS leido_B908: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb908..0xb909  (1 bytes)
DATA_leido_B908:
	defb 085h	; b908

; ----------------------------------------------------------------------
; DATOS leido_B909: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xb909..0xb916  (13 bytes)
DATA_leido_B909:
	defb 0d5h,090h,0d4h,050h,0d5h,090h,0d3h,000h,0d5h,090h,0d3h,050h,0fbh	; b909  ...P.......P.

; ----------------------------------------------------------------------
; DATOS leido_B916: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb916..0xb919  (3 bytes)
DATA_leido_B916:
	defb 002h,006h,0b9h	; b916

; ----------------------------------------------------------------------
; DATOS leido_B919: 37 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (37 bytes)
;   0xb919..0xb93e  (37 bytes)
DATA_leido_B919:
	defb 0d5h,080h,0d4h,060h,0d5h,080h,0d4h,0b0h,0d5h,080h,0d3h,060h,0d5h,080h,0d4h,0b0h	; b919  ...`.......`....
	defb 0d5h,080h,0d4h,0a0h,0d5h,0a0h,0d3h,050h,0d5h,030h,0d4h,030h,0d5h,030h,0d4h,080h	; b929  .......P.0.0.0..
	defb 0d5h,080h,0d4h,0a0h,0fbh	; b939

; ----------------------------------------------------------------------
; DATOS leido_B93E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb93e..0xb941  (3 bytes)
DATA_leido_B93E:
	defb 006h,031h,0b9h	; b93e

; ----------------------------------------------------------------------
; DATOS leido_B941: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xb941..0xb94e  (13 bytes)
DATA_leido_B941:
	defb 0d5h,060h,0d3h,010h,0d5h,060h,0d3h,000h,0d5h,060h,0d3h,000h,0fbh	; b941  .`...`...`...

; ----------------------------------------------------------------------
; DATOS leido_B94E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb94e..0xb951  (3 bytes)
DATA_leido_B94E:
	defb 002h,041h,0b9h	; b94e

; ----------------------------------------------------------------------
; DATOS leido_B951: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xb951..0xb95e  (13 bytes)
DATA_leido_B951:
	defb 0d5h,040h,0d4h,0b0h,0d5h,040h,0d3h,030h,0d5h,040h,0d3h,080h,0fbh	; b951  .@...@.0.@...

; ----------------------------------------------------------------------
; DATOS leido_B95E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb95e..0xb961  (3 bytes)
DATA_leido_B95E:
	defb 004h,051h,0b9h	; b95e

; ----------------------------------------------------------------------
; DATOS leido_B961: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb961..0xb962  (1 bytes)
DATA_leido_B961:
	defb 0fdh	; b961

; ----------------------------------------------------------------------
; DATOS leido_B962: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb962..0xb964  (2 bytes)
DATA_leido_B962:
	defb 03fh,0b8h	; b962

; ----------------------------------------------------------------------
; DATOS leido_B964: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb964..0xb965  (1 bytes)
DATA_leido_B964:
	defb 0feh	; b964

; ----------------------------------------------------------------------
; DATOS leido_B965: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb965..0xb966  (1 bytes)
DATA_leido_B965:
	defb 001h	; b965

; ----------------------------------------------------------------------
; DATOS leido_B966: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb966..0xb967  (1 bytes)
DATA_leido_B966:
	defb 0f8h	; b966

; ----------------------------------------------------------------------
; DATOS leido_B967: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb967..0xb968  (1 bytes)
DATA_leido_B967:
	defb 00dh	; b967

; ----------------------------------------------------------------------
; DATOS leido_B968: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb968..0xb969  (1 bytes)
DATA_leido_B968:
	defb 0e9h	; b968

; ----------------------------------------------------------------------
; DATOS leido_B969: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb969..0xb96a  (1 bytes)
DATA_leido_B969:
	defb 007h	; b969

; ----------------------------------------------------------------------
; DATOS leido_B96A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb96a..0xb96b  (1 bytes)
DATA_leido_B96A:
	defb 0f2h	; b96a

; ----------------------------------------------------------------------
; DATOS leido_B96B: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb96b..0xb96c  (1 bytes)
DATA_leido_B96B:
	defb 020h	; b96b

; ----------------------------------------------------------------------
; DATOS leido_B96C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb96c..0xb96d  (1 bytes)
DATA_leido_B96C:
	defb 0f1h	; b96c

; ----------------------------------------------------------------------
; DATOS leido_B96D: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb96d..0xb96e  (1 bytes)
DATA_leido_B96D:
	defb 042h	; b96d

; ----------------------------------------------------------------------
; DATOS leido_B96E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb96e..0xb96f  (1 bytes)
DATA_leido_B96E:
	defb 0dbh	; b96e

; ----------------------------------------------------------------------
; DATOS leido_B96F: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb96f..0xb970  (1 bytes)
DATA_leido_B96F:
	defb 003h	; b96f

; ----------------------------------------------------------------------
; DATOS leido_B970: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb970..0xb971  (1 bytes)
DATA_leido_B970:
	defb 0eah	; b970

; ----------------------------------------------------------------------
; DATOS leido_B971: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb971..0xb972  (1 bytes)
DATA_leido_B971:
	defb 00bh	; b971

; ----------------------------------------------------------------------
; DATOS leido_B972: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb972..0xb973  (1 bytes)
DATA_leido_B972:
	defb 0ebh	; b972

; ----------------------------------------------------------------------
; DATOS leido_B973: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb973..0xb974  (1 bytes)
DATA_leido_B973:
	defb 008h	; b973

; ----------------------------------------------------------------------
; DATOS leido_B974: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb974..0xb975  (1 bytes)
DATA_leido_B974:
	defb 084h	; b974

; ----------------------------------------------------------------------
; DATOS leido_B975: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb975..0xb976  (1 bytes)
DATA_leido_B975:
	defb 0f9h	; b975

; ----------------------------------------------------------------------
; DATOS leido_B976: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb976..0xb978  (2 bytes)
DATA_leido_B976:
	defb 066h,0bch	; b976

; ----------------------------------------------------------------------
; DATOS leido_B978: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb978..0xb979  (1 bytes)
DATA_leido_B978:
	defb 0eah	; b978

; ----------------------------------------------------------------------
; DATOS leido_B979: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb979..0xb97a  (1 bytes)
DATA_leido_B979:
	defb 009h	; b979

; ----------------------------------------------------------------------
; DATOS leido_B97A: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb97a..0xb97e  (4 bytes)
DATA_leido_B97A:
	defb 0d1h,010h,060h,0eah	; b97a

; ----------------------------------------------------------------------
; DATOS leido_B97E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb97e..0xb97f  (1 bytes)
DATA_leido_B97E:
	defb 007h	; b97e

; ----------------------------------------------------------------------
; DATOS leido_B97F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb97f..0xb980  (1 bytes)
DATA_leido_B97F:
	defb 0ebh	; b97f

; ----------------------------------------------------------------------
; DATOS leido_B980: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb980..0xb981  (1 bytes)
DATA_leido_B980:
	defb 009h	; b980

; ----------------------------------------------------------------------
; DATOS leido_B981: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb981..0xb982  (1 bytes)
DATA_leido_B981:
	defb 080h	; b981

; ----------------------------------------------------------------------
; DATOS leido_B982: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb982..0xb983  (1 bytes)
DATA_leido_B982:
	defb 0dbh	; b982

; ----------------------------------------------------------------------
; DATOS leido_B983: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb983..0xb984  (1 bytes)
DATA_leido_B983:
	defb 002h	; b983

; ----------------------------------------------------------------------
; DATOS leido_B984: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb984..0xb985  (1 bytes)
DATA_leido_B984:
	defb 0f9h	; b984

; ----------------------------------------------------------------------
; DATOS leido_B985: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb985..0xb987  (2 bytes)
DATA_leido_B985:
	defb 0e3h,0bch	; b985

; ----------------------------------------------------------------------
; DATOS leido_B987: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb987..0xb98d  (6 bytes)
DATA_leido_B987:
	defb 061h,060h,040h,040h,040h,0f9h	; b987

; ----------------------------------------------------------------------
; DATOS leido_B98D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb98d..0xb98f  (2 bytes)
DATA_leido_B98D:
	defb 0e3h,0bch	; b98d

; ----------------------------------------------------------------------
; DATOS leido_B98F: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb98f..0xb996  (7 bytes)
DATA_leido_B98F:
	defb 0a0h,050h,0a0h,0a0h,040h,0a0h,0f8h	; b98f

; ----------------------------------------------------------------------
; DATOS leido_B996: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb996..0xb997  (1 bytes)
DATA_leido_B996:
	defb 00bh	; b996

; ----------------------------------------------------------------------
; DATOS leido_B997: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb997..0xb998  (1 bytes)
DATA_leido_B997:
	defb 0f2h	; b997

; ----------------------------------------------------------------------
; DATOS leido_B998: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb998..0xb999  (1 bytes)
DATA_leido_B998:
	defb 010h	; b998

; ----------------------------------------------------------------------
; DATOS leido_B999: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb999..0xb99a  (1 bytes)
DATA_leido_B999:
	defb 0eah	; b999

; ----------------------------------------------------------------------
; DATOS leido_B99A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb99a..0xb99b  (1 bytes)
DATA_leido_B99A:
	defb 009h	; b99a

; ----------------------------------------------------------------------
; DATOS leido_B99B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb99b..0xb99c  (1 bytes)
DATA_leido_B99B:
	defb 0ebh	; b99b

; ----------------------------------------------------------------------
; DATOS leido_B99C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb99c..0xb99d  (1 bytes)
DATA_leido_B99C:
	defb 024h	; b99c

; ----------------------------------------------------------------------
; DATOS leido_B99D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb99d..0xb99e  (1 bytes)
DATA_leido_B99D:
	defb 040h	; b99d

; ----------------------------------------------------------------------
; DATOS leido_B99E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb99e..0xb99f  (1 bytes)
DATA_leido_B99E:
	defb 0dbh	; b99e

; ----------------------------------------------------------------------
; DATOS leido_B99F: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb99f..0xb9a0  (1 bytes)
DATA_leido_B99F:
	defb 002h	; b99f

; ----------------------------------------------------------------------
; DATOS leido_B9A0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9a0..0xb9a1  (1 bytes)
DATA_leido_B9A0:
	defb 0f9h	; b9a0

; ----------------------------------------------------------------------
; DATOS leido_B9A1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb9a1..0xb9a3  (2 bytes)
DATA_leido_B9A1:
	defb 094h,0bch	; b9a1

; ----------------------------------------------------------------------
; DATOS leido_B9A3: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb9a3..0xb9a5  (2 bytes)
DATA_leido_B9A3:
	defb 0f0h,0f8h	; b9a3

; ----------------------------------------------------------------------
; DATOS leido_B9A5: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb9a5..0xb9a6  (1 bytes)
DATA_leido_B9A5:
	defb 059h	; b9a5

; ----------------------------------------------------------------------
; DATOS leido_B9A6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9a6..0xb9a7  (1 bytes)
DATA_leido_B9A6:
	defb 0eah	; b9a6

; ----------------------------------------------------------------------
; DATOS leido_B9A7: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb9a7..0xb9a8  (1 bytes)
DATA_leido_B9A7:
	defb 007h	; b9a7

; ----------------------------------------------------------------------
; DATOS leido_B9A8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9a8..0xb9a9  (1 bytes)
DATA_leido_B9A8:
	defb 0ebh	; b9a8

; ----------------------------------------------------------------------
; DATOS leido_B9A9: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb9a9..0xb9aa  (1 bytes)
DATA_leido_B9A9:
	defb 009h	; b9a9

; ----------------------------------------------------------------------
; DATOS leido_B9AA: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb9aa..0xb9ab  (1 bytes)
DATA_leido_B9AA:
	defb 084h	; b9aa

; ----------------------------------------------------------------------
; DATOS leido_B9AB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9ab..0xb9ac  (1 bytes)
DATA_leido_B9AB:
	defb 0dbh	; b9ab

; ----------------------------------------------------------------------
; DATOS leido_B9AC: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb9ac..0xb9ad  (1 bytes)
DATA_leido_B9AC:
	defb 003h	; b9ac

; ----------------------------------------------------------------------
; DATOS leido_B9AD: 18 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (18 bytes)
;   0xb9ad..0xb9bf  (18 bytes)
DATA_leido_B9AD:
	defb 0d3h,000h,050h,080h,0d2h,000h,0d3h,080h,050h,050h,0a0h,0d2h,020h,050h,020h,0d3h	; b9ad  ..P.....PP.. P .
	defb 0a0h,0fbh	; b9bd

; ----------------------------------------------------------------------
; DATOS leido_B9BF: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb9bf..0xb9c2  (3 bytes)
DATA_leido_B9BF:
	defb 002h,0b6h,0b9h	; b9bf

; ----------------------------------------------------------------------
; DATOS leido_B9C2: 30 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (30 bytes)
;   0xb9c2..0xb9e0  (30 bytes)
DATA_leido_B9C2:
	defb 0d2h,000h,030h,070h,030h,070h,0d1h,000h,0d1h,071h,070h,030h,050h,070h,071h,070h	; b9c2  ..0p0p...qp0Ppqp
	defb 030h,050h,070h,061h,030h,030h,050h,060h,051h,030h,050h,050h,050h,0f8h	; b9d2  0Ppa00P`Q0PPP.

; ----------------------------------------------------------------------
; DATOS leido_B9E0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb9e0..0xb9e1  (1 bytes)
DATA_leido_B9E0:
	defb 00bh	; b9e0

; ----------------------------------------------------------------------
; DATOS leido_B9E1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9e1..0xb9e2  (1 bytes)
DATA_leido_B9E1:
	defb 0f2h	; b9e1

; ----------------------------------------------------------------------
; DATOS leido_B9E2: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb9e2..0xb9e3  (1 bytes)
DATA_leido_B9E2:
	defb 020h	; b9e2

; ----------------------------------------------------------------------
; DATOS leido_B9E3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9e3..0xb9e4  (1 bytes)
DATA_leido_B9E3:
	defb 0f1h	; b9e3

; ----------------------------------------------------------------------
; DATOS leido_B9E4: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb9e4..0xb9e5  (1 bytes)
DATA_leido_B9E4:
	defb 042h	; b9e4

; ----------------------------------------------------------------------
; DATOS leido_B9E5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9e5..0xb9e6  (1 bytes)
DATA_leido_B9E5:
	defb 0eah	; b9e5

; ----------------------------------------------------------------------
; DATOS leido_B9E6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb9e6..0xb9e7  (1 bytes)
DATA_leido_B9E6:
	defb 009h	; b9e6

; ----------------------------------------------------------------------
; DATOS leido_B9E7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9e7..0xb9e8  (1 bytes)
DATA_leido_B9E7:
	defb 0ebh	; b9e7

; ----------------------------------------------------------------------
; DATOS leido_B9E8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb9e8..0xb9e9  (1 bytes)
DATA_leido_B9E8:
	defb 024h	; b9e8

; ----------------------------------------------------------------------
; DATOS leido_B9E9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb9e9..0xb9ea  (1 bytes)
DATA_leido_B9E9:
	defb 040h	; b9e9

; ----------------------------------------------------------------------
; DATOS leido_B9EA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9ea..0xb9eb  (1 bytes)
DATA_leido_B9EA:
	defb 0dbh	; b9ea

; ----------------------------------------------------------------------
; DATOS leido_B9EB: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb9eb..0xb9ec  (1 bytes)
DATA_leido_B9EB:
	defb 003h	; b9eb

; ----------------------------------------------------------------------
; DATOS leido_B9EC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9ec..0xb9ed  (1 bytes)
DATA_leido_B9EC:
	defb 0f9h	; b9ec

; ----------------------------------------------------------------------
; DATOS leido_B9ED: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb9ed..0xb9ef  (2 bytes)
DATA_leido_B9ED:
	defb 0b3h,0bch	; b9ed

; ----------------------------------------------------------------------
; DATOS leido_B9EF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9ef..0xb9f0  (1 bytes)
DATA_leido_B9EF:
	defb 0ebh	; b9ef

; ----------------------------------------------------------------------
; DATOS leido_B9F0: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb9f0..0xb9f1  (1 bytes)
DATA_leido_B9F0:
	defb 001h	; b9f0

; ----------------------------------------------------------------------
; DATOS leido_B9F1: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb9f1..0xb9f2  (1 bytes)
DATA_leido_B9F1:
	defb 080h	; b9f1

; ----------------------------------------------------------------------
; DATOS leido_B9F2: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb9f2..0xb9f6  (4 bytes)
DATA_leido_B9F2:
	defb 090h,0a0h,090h,0ebh	; b9f2

; ----------------------------------------------------------------------
; DATOS leido_B9F6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb9f6..0xb9f7  (1 bytes)
DATA_leido_B9F6:
	defb 004h	; b9f6

; ----------------------------------------------------------------------
; DATOS leido_B9F7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb9f7..0xb9f8  (1 bytes)
DATA_leido_B9F7:
	defb 080h	; b9f7

; ----------------------------------------------------------------------
; DATOS leido_B9F8: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb9f8..0xb9fb  (3 bytes)
DATA_leido_B9F8:
	defb 088h,0ech,0f9h	; b9f8

; ----------------------------------------------------------------------
; DATOS leido_B9FB: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb9fb..0xb9fd  (2 bytes)
DATA_leido_B9FB:
	defb 0cdh,0bch	; b9fb

; ----------------------------------------------------------------------
; DATOS leido_B9FD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9fd..0xb9fe  (1 bytes)
DATA_leido_B9FD:
	defb 0f1h	; b9fd

; ----------------------------------------------------------------------
; DATOS leido_B9FE: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb9fe..0xb9ff  (1 bytes)
DATA_leido_B9FE:
	defb 053h	; b9fe

; ----------------------------------------------------------------------
; DATOS leido_B9FF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9ff..0xba00  (1 bytes)
DATA_leido_B9FF:
	defb 0eah	; b9ff

; ----------------------------------------------------------------------
; DATOS leido_BA00: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba00..0xba01  (1 bytes)
DATA_leido_BA00:
	defb 008h	; ba00

; ----------------------------------------------------------------------
; DATOS leido_BA01: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba01..0xba02  (1 bytes)
DATA_leido_BA01:
	defb 0ebh	; ba01

; ----------------------------------------------------------------------
; DATOS leido_BA02: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xba02..0xba03  (1 bytes)
DATA_leido_BA02:
	defb 003h	; ba02

; ----------------------------------------------------------------------
; DATOS leido_BA03: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xba03..0xba04  (1 bytes)
DATA_leido_BA03:
	defb 080h	; ba03

; ----------------------------------------------------------------------
; DATOS leido_BA04: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xba04..0xba06  (2 bytes)
DATA_leido_BA04:
	defb 08bh,0fdh	; ba04

; ----------------------------------------------------------------------
; DATOS leido_BA06: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xba06..0xba08  (2 bytes)
DATA_leido_BA06:
	defb 064h,0b9h	; ba06

; ----------------------------------------------------------------------
; DATOS leido_BA08: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba08..0xba09  (1 bytes)
DATA_leido_BA08:
	defb 0feh	; ba08

; ----------------------------------------------------------------------
; DATOS leido_BA09: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xba09..0xba0a  (1 bytes)
DATA_leido_BA09:
	defb 001h	; ba09

; ----------------------------------------------------------------------
; DATOS leido_BA0A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba0a..0xba0b  (1 bytes)
DATA_leido_BA0A:
	defb 0f8h	; ba0a

; ----------------------------------------------------------------------
; DATOS leido_BA0B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xba0b..0xba0c  (1 bytes)
DATA_leido_BA0B:
	defb 00bh	; ba0b

; ----------------------------------------------------------------------
; DATOS leido_BA0C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba0c..0xba0d  (1 bytes)
DATA_leido_BA0C:
	defb 0e9h	; ba0c

; ----------------------------------------------------------------------
; DATOS leido_BA0D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xba0d..0xba0e  (1 bytes)
DATA_leido_BA0D:
	defb 007h	; ba0d

; ----------------------------------------------------------------------
; DATOS leido_BA0E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba0e..0xba0f  (1 bytes)
DATA_leido_BA0E:
	defb 0f2h	; ba0e

; ----------------------------------------------------------------------
; DATOS leido_BA0F: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xba0f..0xba10  (1 bytes)
DATA_leido_BA0F:
	defb 020h	; ba0f

; ----------------------------------------------------------------------
; DATOS leido_BA10: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba10..0xba11  (1 bytes)
DATA_leido_BA10:
	defb 0f1h	; ba10

; ----------------------------------------------------------------------
; DATOS leido_BA11: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xba11..0xba12  (1 bytes)
DATA_leido_BA11:
	defb 042h	; ba11

; ----------------------------------------------------------------------
; DATOS leido_BA12: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba12..0xba13  (1 bytes)
DATA_leido_BA12:
	defb 0dbh	; ba12

; ----------------------------------------------------------------------
; DATOS leido_BA13: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xba13..0xba14  (1 bytes)
DATA_leido_BA13:
	defb 003h	; ba13

; ----------------------------------------------------------------------
; DATOS leido_BA14: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba14..0xba15  (1 bytes)
DATA_leido_BA14:
	defb 0eah	; ba14

; ----------------------------------------------------------------------
; DATOS leido_BA15: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba15..0xba16  (1 bytes)
DATA_leido_BA15:
	defb 00ah	; ba15

; ----------------------------------------------------------------------
; DATOS leido_BA16: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba16..0xba17  (1 bytes)
DATA_leido_BA16:
	defb 0ebh	; ba16

; ----------------------------------------------------------------------
; DATOS leido_BA17: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xba17..0xba18  (1 bytes)
DATA_leido_BA17:
	defb 008h	; ba17

; ----------------------------------------------------------------------
; DATOS leido_BA18: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xba18..0xba19  (1 bytes)
DATA_leido_BA18:
	defb 084h	; ba18

; ----------------------------------------------------------------------
; DATOS leido_BA19: 25 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (25 bytes)
;   0xba19..0xba32  (25 bytes)
DATA_leido_BA19:
	defb 0d3h,081h,000h,000h,030h,080h,0a1h,020h,020h,050h,0a0h,0b1h,030h,030h,060h,0b0h	; ba19  ....0..  P..00`.
	defb 060h,080h,0d2h,010h,050h,080h,0d1h,010h,0f8h	; ba29  `...P....

; ----------------------------------------------------------------------
; DATOS leido_BA32: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xba32..0xba33  (1 bytes)
DATA_leido_BA32:
	defb 017h	; ba32

; ----------------------------------------------------------------------
; DATOS leido_BA33: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba33..0xba34  (1 bytes)
DATA_leido_BA33:
	defb 0eah	; ba33

; ----------------------------------------------------------------------
; DATOS leido_BA34: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba34..0xba35  (1 bytes)
DATA_leido_BA34:
	defb 009h	; ba34

; ----------------------------------------------------------------------
; DATOS leido_BA35: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba35..0xba36  (1 bytes)
DATA_leido_BA35:
	defb 0ebh	; ba35

; ----------------------------------------------------------------------
; DATOS leido_BA36: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xba36..0xba37  (1 bytes)
DATA_leido_BA36:
	defb 023h	; ba36

; ----------------------------------------------------------------------
; DATOS leido_BA37: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xba37..0xba38  (1 bytes)
DATA_leido_BA37:
	defb 060h	; ba37

; ----------------------------------------------------------------------
; DATOS leido_BA38: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba38..0xba39  (1 bytes)
DATA_leido_BA38:
	defb 0dbh	; ba38

; ----------------------------------------------------------------------
; DATOS leido_BA39: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xba39..0xba3a  (1 bytes)
DATA_leido_BA39:
	defb 003h	; ba39

; ----------------------------------------------------------------------
; DATOS leido_BA3A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xba3a..0xba3d  (3 bytes)
DATA_leido_BA3A:
	defb 0d2h,0a8h,0f9h	; ba3a

; ----------------------------------------------------------------------
; DATOS leido_BA3D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xba3d..0xba3f  (2 bytes)
DATA_leido_BA3D:
	defb 083h,0bch	; ba3d

; ----------------------------------------------------------------------
; DATOS leido_BA3F: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xba3f..0xba41  (2 bytes)
DATA_leido_BA3F:
	defb 0a0h,0eah	; ba3f

; ----------------------------------------------------------------------
; DATOS leido_BA41: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba41..0xba42  (1 bytes)
DATA_leido_BA41:
	defb 006h	; ba41

; ----------------------------------------------------------------------
; DATOS leido_BA42: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xba42..0xba44  (2 bytes)
DATA_leido_BA42:
	defb 0a0h,0eah	; ba42

; ----------------------------------------------------------------------
; DATOS leido_BA44: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba44..0xba45  (1 bytes)
DATA_leido_BA44:
	defb 009h	; ba44

; ----------------------------------------------------------------------
; DATOS leido_BA45: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xba45..0xba48  (3 bytes)
DATA_leido_BA45:
	defb 0a0h,080h,0eah	; ba45

; ----------------------------------------------------------------------
; DATOS leido_BA48: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba48..0xba49  (1 bytes)
DATA_leido_BA48:
	defb 005h	; ba48

; ----------------------------------------------------------------------
; DATOS leido_BA49: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba49..0xba4a  (1 bytes)
DATA_leido_BA49:
	defb 0ebh	; ba49

; ----------------------------------------------------------------------
; DATOS leido_BA4A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xba4a..0xba4b  (1 bytes)
DATA_leido_BA4A:
	defb 004h	; ba4a

; ----------------------------------------------------------------------
; DATOS leido_BA4B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xba4b..0xba4c  (1 bytes)
DATA_leido_BA4B:
	defb 050h	; ba4b

; ----------------------------------------------------------------------
; DATOS leido_BA4C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba4c..0xba4d  (1 bytes)
DATA_leido_BA4C:
	defb 0e9h	; ba4c

; ----------------------------------------------------------------------
; DATOS leido_BA4D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xba4d..0xba4e  (1 bytes)
DATA_leido_BA4D:
	defb 001h	; ba4d

; ----------------------------------------------------------------------
; DATOS leido_BA4E: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xba4e..0xba54  (6 bytes)
DATA_leido_BA4E:
	defb 0a2h,0d1h,002h,013h,023h,0e9h	; ba4e

; ----------------------------------------------------------------------
; DATOS leido_BA54: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xba54..0xba55  (1 bytes)
DATA_leido_BA54:
	defb 007h	; ba54

; ----------------------------------------------------------------------
; DATOS leido_BA55: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba55..0xba56  (1 bytes)
DATA_leido_BA55:
	defb 0ebh	; ba55

; ----------------------------------------------------------------------
; DATOS leido_BA56: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xba56..0xba57  (1 bytes)
DATA_leido_BA56:
	defb 023h	; ba56

; ----------------------------------------------------------------------
; DATOS leido_BA57: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xba57..0xba58  (1 bytes)
DATA_leido_BA57:
	defb 060h	; ba57

; ----------------------------------------------------------------------
; DATOS leido_BA58: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba58..0xba59  (1 bytes)
DATA_leido_BA58:
	defb 0eah	; ba58

; ----------------------------------------------------------------------
; DATOS leido_BA59: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba59..0xba5a  (1 bytes)
DATA_leido_BA59:
	defb 009h	; ba59

; ----------------------------------------------------------------------
; DATOS leido_BA5A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xba5a..0xba5d  (3 bytes)
DATA_leido_BA5A:
	defb 0d1h,030h,0eah	; ba5a

; ----------------------------------------------------------------------
; DATOS leido_BA5D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba5d..0xba5e  (1 bytes)
DATA_leido_BA5D:
	defb 005h	; ba5d

; ----------------------------------------------------------------------
; DATOS leido_BA5E: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xba5e..0xba61  (3 bytes)
DATA_leido_BA5E:
	defb 030h,0dch,0eah	; ba5e

; ----------------------------------------------------------------------
; DATOS leido_BA61: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba61..0xba62  (1 bytes)
DATA_leido_BA61:
	defb 009h	; ba61

; ----------------------------------------------------------------------
; DATOS leido_BA62: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xba62..0xba65  (3 bytes)
DATA_leido_BA62:
	defb 0d2h,0a0h,0dbh	; ba62

; ----------------------------------------------------------------------
; DATOS leido_BA65: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xba65..0xba66  (1 bytes)
DATA_leido_BA65:
	defb 003h	; ba65

; ----------------------------------------------------------------------
; DATOS leido_BA66: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xba66..0xba68  (2 bytes)
DATA_leido_BA66:
	defb 0a5h,0f9h	; ba66

; ----------------------------------------------------------------------
; DATOS leido_BA68: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xba68..0xba6a  (2 bytes)
DATA_leido_BA68:
	defb 083h,0bch	; ba68

; ----------------------------------------------------------------------
; DATOS leido_BA6A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xba6a..0xba6d  (3 bytes)
DATA_leido_BA6A:
	defb 052h,040h,0e9h	; ba6a

; ----------------------------------------------------------------------
; DATOS leido_BA6D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xba6d..0xba6e  (1 bytes)
DATA_leido_BA6D:
	defb 001h	; ba6d

; ----------------------------------------------------------------------
; DATOS leido_BA6E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba6e..0xba6f  (1 bytes)
DATA_leido_BA6E:
	defb 0ebh	; ba6e

; ----------------------------------------------------------------------
; DATOS leido_BA6F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xba6f..0xba70  (1 bytes)
DATA_leido_BA6F:
	defb 004h	; ba6f

; ----------------------------------------------------------------------
; DATOS leido_BA70: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xba70..0xba71  (1 bytes)
DATA_leido_BA70:
	defb 050h	; ba70

; ----------------------------------------------------------------------
; DATOS leido_BA71: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba71..0xba72  (1 bytes)
DATA_leido_BA71:
	defb 0eah	; ba71

; ----------------------------------------------------------------------
; DATOS leido_BA72: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba72..0xba73  (1 bytes)
DATA_leido_BA72:
	defb 005h	; ba72

; ----------------------------------------------------------------------
; DATOS leido_BA73: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xba73..0xba79  (6 bytes)
DATA_leido_BA73:
	defb 052h,072h,083h,0a3h,0dch,0eeh	; ba73

; ----------------------------------------------------------------------
; DATOS leido_BA79: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xba79..0xba7a  (1 bytes)
DATA_leido_BA79:
	defb 001h	; ba79

; ----------------------------------------------------------------------
; DATOS leido_BA7A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba7a..0xba7b  (1 bytes)
DATA_leido_BA7A:
	defb 0f8h	; ba7a

; ----------------------------------------------------------------------
; DATOS leido_BA7B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xba7b..0xba7c  (1 bytes)
DATA_leido_BA7B:
	defb 00bh	; ba7b

; ----------------------------------------------------------------------
; DATOS leido_BA7C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba7c..0xba7d  (1 bytes)
DATA_leido_BA7C:
	defb 0e9h	; ba7c

; ----------------------------------------------------------------------
; DATOS leido_BA7D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xba7d..0xba7e  (1 bytes)
DATA_leido_BA7D:
	defb 007h	; ba7d

; ----------------------------------------------------------------------
; DATOS leido_BA7E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba7e..0xba7f  (1 bytes)
DATA_leido_BA7E:
	defb 0eah	; ba7e

; ----------------------------------------------------------------------
; DATOS leido_BA7F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xba7f..0xba80  (1 bytes)
DATA_leido_BA7F:
	defb 007h	; ba7f

; ----------------------------------------------------------------------
; DATOS leido_BA80: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba80..0xba81  (1 bytes)
DATA_leido_BA80:
	defb 0ebh	; ba80

; ----------------------------------------------------------------------
; DATOS leido_BA81: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xba81..0xba82  (1 bytes)
DATA_leido_BA81:
	defb 021h	; ba81

; ----------------------------------------------------------------------
; DATOS leido_BA82: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xba82..0xba83  (1 bytes)
DATA_leido_BA82:
	defb 080h	; ba82

; ----------------------------------------------------------------------
; DATOS leido_BA83: 23 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (23 bytes)
;   0xba83..0xba9a  (23 bytes)
DATA_leido_BA83:
	defb 0d3h,091h,090h,090h,090h,090h,0d3h,081h,080h,080h,080h,080h,071h,070h,070h,070h	; ba83  ............qppp
	defb 070h,071h,070h,070h,070h,070h,0f8h	; ba93

; ----------------------------------------------------------------------
; DATOS leido_BA9A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xba9a..0xba9b  (1 bytes)
DATA_leido_BA9A:
	defb 00ah	; ba9a

; ----------------------------------------------------------------------
; DATOS leido_BA9B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba9b..0xba9c  (1 bytes)
DATA_leido_BA9B:
	defb 0dbh	; ba9b

; ----------------------------------------------------------------------
; DATOS leido_BA9C: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xba9c..0xba9d  (1 bytes)
DATA_leido_BA9C:
	defb 002h	; ba9c

; ----------------------------------------------------------------------
; DATOS leido_BA9D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xba9d..0xba9e  (1 bytes)
DATA_leido_BA9D:
	defb 0ebh	; ba9d

; ----------------------------------------------------------------------
; DATOS leido_BA9E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xba9e..0xba9f  (1 bytes)
DATA_leido_BA9E:
	defb 001h	; ba9e

; ----------------------------------------------------------------------
; DATOS leido_BA9F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xba9f..0xbaa0  (1 bytes)
DATA_leido_BA9F:
	defb 080h	; ba9f

; ----------------------------------------------------------------------
; DATOS leido_BAA0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbaa0..0xbaa1  (1 bytes)
DATA_leido_BAA0:
	defb 0eah	; baa0

; ----------------------------------------------------------------------
; DATOS leido_BAA1: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbaa1..0xbaa2  (1 bytes)
DATA_leido_BAA1:
	defb 007h	; baa1

; ----------------------------------------------------------------------
; DATOS leido_BAA2: 38 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (38 bytes)
;   0xbaa2..0xbac8  (38 bytes)
DATA_leido_BAA2:
	defb 0d3h,050h,0d2h,000h,050h,0d1h,000h,0d2h,050h,000h,0d3h,050h,0a0h,0d2h,050h,0a0h	; baa2  .P..P...P..P..P.
	defb 050h,0d3h,0a0h,050h,0a0h,0d2h,050h,0a0h,050h,0d3h,0a0h,0d2h,000h,030h,070h,0d1h	; bab2  P..P..P.P....0p.
	defb 000h,0d2h,070h,030h,0efh,0ebh	; bac2

; ----------------------------------------------------------------------
; DATOS leido_BAC8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbac8..0xbac9  (1 bytes)
DATA_leido_BAC8:
	defb 013h	; bac8

; ----------------------------------------------------------------------
; DATOS leido_BAC9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbac9..0xbaca  (1 bytes)
DATA_leido_BAC9:
	defb 040h	; bac9

; ----------------------------------------------------------------------
; DATOS leido_BACA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbaca..0xbacb  (1 bytes)
DATA_leido_BACA:
	defb 0eah	; baca

; ----------------------------------------------------------------------
; DATOS leido_BACB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbacb..0xbacc  (1 bytes)
DATA_leido_BACB:
	defb 008h	; bacb

; ----------------------------------------------------------------------
; DATOS leido_BACC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbacc..0xbacd  (1 bytes)
DATA_leido_BACC:
	defb 0f8h	; bacc

; ----------------------------------------------------------------------
; DATOS leido_BACD: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbacd..0xbace  (1 bytes)
DATA_leido_BACD:
	defb 00bh	; bacd

; ----------------------------------------------------------------------
; DATOS leido_BACE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbace..0xbacf  (1 bytes)
DATA_leido_BACE:
	defb 0f9h	; bace

; ----------------------------------------------------------------------
; DATOS leido_BACF: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbacf..0xbad1  (2 bytes)
DATA_leido_BACF:
	defb 00eh,0bdh	; bacf

; ----------------------------------------------------------------------
; DATOS leido_BAD1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbad1..0xbad2  (1 bytes)
DATA_leido_BAD1:
	defb 0ebh	; bad1

; ----------------------------------------------------------------------
; DATOS leido_BAD2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbad2..0xbad3  (1 bytes)
DATA_leido_BAD2:
	defb 002h	; bad2

; ----------------------------------------------------------------------
; DATOS leido_BAD3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbad3..0xbad4  (1 bytes)
DATA_leido_BAD3:
	defb 071h	; bad3

; ----------------------------------------------------------------------
; DATOS leido_BAD4: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xbad4..0xbada  (6 bytes)
DATA_leido_BAD4:
	defb 0d2h,030h,030h,050h,070h,0ebh	; bad4

; ----------------------------------------------------------------------
; DATOS leido_BADA: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbada..0xbadb  (1 bytes)
DATA_leido_BADA:
	defb 002h	; bada

; ----------------------------------------------------------------------
; DATOS leido_BADB: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbadb..0xbadc  (1 bytes)
DATA_leido_BADB:
	defb 040h	; badb

; ----------------------------------------------------------------------
; DATOS leido_BADC: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xbadc..0xbae6  (10 bytes)
DATA_leido_BADC:
	defb 0d2h,072h,0d1h,008h,0d2h,0b2h,0d1h,035h,022h,0ebh	; badc  .r.....5".

; ----------------------------------------------------------------------
; DATOS leido_BAE6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbae6..0xbae7  (1 bytes)
DATA_leido_BAE6:
	defb 024h	; bae6

; ----------------------------------------------------------------------
; DATOS leido_BAE7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbae7..0xbae8  (1 bytes)
DATA_leido_BAE7:
	defb 040h	; bae7

; ----------------------------------------------------------------------
; DATOS leido_BAE8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbae8..0xbae9  (1 bytes)
DATA_leido_BAE8:
	defb 0dbh	; bae8

; ----------------------------------------------------------------------
; DATOS leido_BAE9: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbae9..0xbaea  (1 bytes)
DATA_leido_BAE9:
	defb 003h	; bae9

; ----------------------------------------------------------------------
; DATOS leido_BAEA: 28 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (28 bytes)
;   0xbaea..0xbb06  (28 bytes)
DATA_leido_BAEA:
	defb 0d2h,082h,035h,0d3h,070h,0a0h,0d2h,030h,012h,015h,0d3h,050h,080h,0d2h,010h,032h	; baea  ..5.p..0...P...2
	defb 035h,0d3h,070h,0a0h,0d2h,030h,062h,055h,050h,060h,050h,0ebh	; bafa  5.p..0bUP`P.

; ----------------------------------------------------------------------
; DATOS leido_BB06: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbb06..0xbb07  (1 bytes)
DATA_leido_BB06:
	defb 004h	; bb06

; ----------------------------------------------------------------------
; DATOS leido_BB07: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbb07..0xbb08  (1 bytes)
DATA_leido_BB07:
	defb 080h	; bb07

; ----------------------------------------------------------------------
; DATOS leido_BB08: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbb08..0xbb0b  (3 bytes)
DATA_leido_BB08:
	defb 048h,0ech,0eah	; bb08

; ----------------------------------------------------------------------
; DATOS leido_BB0B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb0b..0xbb0c  (1 bytes)
DATA_leido_BB0B:
	defb 004h	; bb0b

; ----------------------------------------------------------------------
; DATOS leido_BB0C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb0c..0xbb0d  (1 bytes)
DATA_leido_BB0C:
	defb 0e9h	; bb0c

; ----------------------------------------------------------------------
; DATOS leido_BB0D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbb0d..0xbb0e  (1 bytes)
DATA_leido_BB0D:
	defb 001h	; bb0d

; ----------------------------------------------------------------------
; DATOS leido_BB0E: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbb0e..0xbb13  (5 bytes)
DATA_leido_BB0E:
	defb 0d3h,050h,061h,071h,0eah	; bb0e

; ----------------------------------------------------------------------
; DATOS leido_BB13: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb13..0xbb14  (1 bytes)
DATA_leido_BB13:
	defb 005h	; bb13

; ----------------------------------------------------------------------
; DATOS leido_BB14: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xbb14..0xbb1e  (10 bytes)
DATA_leido_BB14:
	defb 081h,091h,0a1h,0b1h,0d1h,001h,011h,021h,031h,0e9h	; bb14  .......!1.

; ----------------------------------------------------------------------
; DATOS leido_BB1E: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbb1e..0xbb1f  (1 bytes)
DATA_leido_BB1E:
	defb 007h	; bb1e

; ----------------------------------------------------------------------
; DATOS leido_BB1F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb1f..0xbb20  (1 bytes)
DATA_leido_BB1F:
	defb 0eah	; bb1f

; ----------------------------------------------------------------------
; DATOS leido_BB20: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb20..0xbb21  (1 bytes)
DATA_leido_BB20:
	defb 008h	; bb20

; ----------------------------------------------------------------------
; DATOS leido_BB21: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb21..0xbb22  (1 bytes)
DATA_leido_BB21:
	defb 0ebh	; bb21

; ----------------------------------------------------------------------
; DATOS leido_BB22: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbb22..0xbb23  (1 bytes)
DATA_leido_BB22:
	defb 003h	; bb22

; ----------------------------------------------------------------------
; DATOS leido_BB23: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbb23..0xbb24  (1 bytes)
DATA_leido_BB23:
	defb 080h	; bb23

; ----------------------------------------------------------------------
; DATOS leido_BB24: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbb24..0xbb26  (2 bytes)
DATA_leido_BB24:
	defb 04bh,0fdh	; bb24

; ----------------------------------------------------------------------
; DATOS leido_BB26: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbb26..0xbb28  (2 bytes)
DATA_leido_BB26:
	defb 008h,0bah	; bb26

; ----------------------------------------------------------------------
; DATOS leido_BB28: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb28..0xbb29  (1 bytes)
DATA_leido_BB28:
	defb 0feh	; bb28

; ----------------------------------------------------------------------
; DATOS leido_BB29: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbb29..0xbb2a  (1 bytes)
DATA_leido_BB29:
	defb 001h	; bb29

; ----------------------------------------------------------------------
; DATOS leido_BB2A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb2a..0xbb2b  (1 bytes)
DATA_leido_BB2A:
	defb 0f8h	; bb2a

; ----------------------------------------------------------------------
; DATOS leido_BB2B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbb2b..0xbb2c  (1 bytes)
DATA_leido_BB2B:
	defb 00bh	; bb2b

; ----------------------------------------------------------------------
; DATOS leido_BB2C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb2c..0xbb2d  (1 bytes)
DATA_leido_BB2C:
	defb 0e9h	; bb2c

; ----------------------------------------------------------------------
; DATOS leido_BB2D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbb2d..0xbb2e  (1 bytes)
DATA_leido_BB2D:
	defb 007h	; bb2d

; ----------------------------------------------------------------------
; DATOS leido_BB2E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb2e..0xbb2f  (1 bytes)
DATA_leido_BB2E:
	defb 0f2h	; bb2e

; ----------------------------------------------------------------------
; DATOS leido_BB2F: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbb2f..0xbb30  (1 bytes)
DATA_leido_BB2F:
	defb 020h	; bb2f

; ----------------------------------------------------------------------
; DATOS leido_BB30: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb30..0xbb31  (1 bytes)
DATA_leido_BB30:
	defb 0f1h	; bb30

; ----------------------------------------------------------------------
; DATOS leido_BB31: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbb31..0xbb32  (1 bytes)
DATA_leido_BB31:
	defb 042h	; bb31

; ----------------------------------------------------------------------
; DATOS leido_BB32: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb32..0xbb33  (1 bytes)
DATA_leido_BB32:
	defb 0dbh	; bb32

; ----------------------------------------------------------------------
; DATOS leido_BB33: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbb33..0xbb34  (1 bytes)
DATA_leido_BB33:
	defb 003h	; bb33

; ----------------------------------------------------------------------
; DATOS leido_BB34: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb34..0xbb35  (1 bytes)
DATA_leido_BB34:
	defb 0eah	; bb34

; ----------------------------------------------------------------------
; DATOS leido_BB35: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb35..0xbb36  (1 bytes)
DATA_leido_BB35:
	defb 009h	; bb35

; ----------------------------------------------------------------------
; DATOS leido_BB36: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb36..0xbb37  (1 bytes)
DATA_leido_BB36:
	defb 0ebh	; bb36

; ----------------------------------------------------------------------
; DATOS leido_BB37: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbb37..0xbb38  (1 bytes)
DATA_leido_BB37:
	defb 008h	; bb37

; ----------------------------------------------------------------------
; DATOS leido_BB38: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbb38..0xbb39  (1 bytes)
DATA_leido_BB38:
	defb 084h	; bb38

; ----------------------------------------------------------------------
; DATOS leido_BB39: 30 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (30 bytes)
;   0xbb39..0xbb57  (30 bytes)
DATA_leido_BB39:
	defb 0d3h,031h,0d4h,080h,080h,0d3h,000h,030h,051h,0d4h,0a0h,0a0h,0d3h,020h,050h,061h	; bb39  .1.....0Q.... Pa
	defb 0d4h,0b0h,0b0h,0d3h,030h,060h,010h,050h,080h,0d2h,010h,050h,080h,0f8h	; bb49  ....0`.P...P..

; ----------------------------------------------------------------------
; DATOS leido_BB57: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbb57..0xbb58  (1 bytes)
DATA_leido_BB57:
	defb 017h	; bb57

; ----------------------------------------------------------------------
; DATOS leido_BB58: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb58..0xbb59  (1 bytes)
DATA_leido_BB58:
	defb 0ebh	; bb58

; ----------------------------------------------------------------------
; DATOS leido_BB59: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbb59..0xbb5a  (1 bytes)
DATA_leido_BB59:
	defb 023h	; bb59

; ----------------------------------------------------------------------
; DATOS leido_BB5A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbb5a..0xbb5b  (1 bytes)
DATA_leido_BB5A:
	defb 060h	; bb5a

; ----------------------------------------------------------------------
; DATOS leido_BB5B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb5b..0xbb5c  (1 bytes)
DATA_leido_BB5B:
	defb 0dbh	; bb5b

; ----------------------------------------------------------------------
; DATOS leido_BB5C: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbb5c..0xbb5d  (1 bytes)
DATA_leido_BB5C:
	defb 003h	; bb5c

; ----------------------------------------------------------------------
; DATOS leido_BB5D: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbb5d..0xbb60  (3 bytes)
DATA_leido_BB5D:
	defb 0d2h,078h,0f9h	; bb5d

; ----------------------------------------------------------------------
; DATOS leido_BB60: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbb60..0xbb62  (2 bytes)
DATA_leido_BB60:
	defb 01ch,0bdh	; bb60

; ----------------------------------------------------------------------
; DATOS leido_BB62: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbb62..0xbb64  (2 bytes)
DATA_leido_BB62:
	defb 0a0h,0eah	; bb62

; ----------------------------------------------------------------------
; DATOS leido_BB64: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb64..0xbb65  (1 bytes)
DATA_leido_BB64:
	defb 006h	; bb64

; ----------------------------------------------------------------------
; DATOS leido_BB65: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbb65..0xbb67  (2 bytes)
DATA_leido_BB65:
	defb 0a0h,0eah	; bb65

; ----------------------------------------------------------------------
; DATOS leido_BB67: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb67..0xbb68  (1 bytes)
DATA_leido_BB67:
	defb 009h	; bb67

; ----------------------------------------------------------------------
; DATOS leido_BB68: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbb68..0xbb6d  (5 bytes)
DATA_leido_BB68:
	defb 0a0h,082h,0d2h,0a0h,0eah	; bb68

; ----------------------------------------------------------------------
; DATOS leido_BB6D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb6d..0xbb6e  (1 bytes)
DATA_leido_BB6D:
	defb 005h	; bb6d

; ----------------------------------------------------------------------
; DATOS leido_BB6E: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbb6e..0xbb70  (2 bytes)
DATA_leido_BB6E:
	defb 0a0h,0eah	; bb6e

; ----------------------------------------------------------------------
; DATOS leido_BB70: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb70..0xbb71  (1 bytes)
DATA_leido_BB70:
	defb 009h	; bb70

; ----------------------------------------------------------------------
; DATOS leido_BB71: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xbb71..0xbb75  (4 bytes)
DATA_leido_BB71:
	defb 0dch,0d2h,070h,0dbh	; bb71

; ----------------------------------------------------------------------
; DATOS leido_BB75: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbb75..0xbb76  (1 bytes)
DATA_leido_BB75:
	defb 003h	; bb75

; ----------------------------------------------------------------------
; DATOS leido_BB76: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbb76..0xbb78  (2 bytes)
DATA_leido_BB76:
	defb 075h,0f9h	; bb76

; ----------------------------------------------------------------------
; DATOS leido_BB78: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbb78..0xbb7a  (2 bytes)
DATA_leido_BB78:
	defb 01ch,0bdh	; bb78

; ----------------------------------------------------------------------
; DATOS leido_BB7A: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xbb7a..0xbb80  (6 bytes)
DATA_leido_BB7A:
	defb 0a1h,0a0h,0a0h,0a0h,0a0h,0eah	; bb7a

; ----------------------------------------------------------------------
; DATOS leido_BB80: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbb80..0xbb81  (1 bytes)
DATA_leido_BB80:
	defb 008h	; bb80

; ----------------------------------------------------------------------
; DATOS leido_BB81: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb81..0xbb82  (1 bytes)
DATA_leido_BB81:
	defb 0f8h	; bb81

; ----------------------------------------------------------------------
; DATOS leido_BB82: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbb82..0xbb83  (1 bytes)
DATA_leido_BB82:
	defb 00bh	; bb82

; ----------------------------------------------------------------------
; DATOS leido_BB83: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb83..0xbb84  (1 bytes)
DATA_leido_BB83:
	defb 0ebh	; bb83

; ----------------------------------------------------------------------
; DATOS leido_BB84: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbb84..0xbb85  (1 bytes)
DATA_leido_BB84:
	defb 024h	; bb84

; ----------------------------------------------------------------------
; DATOS leido_BB85: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbb85..0xbb86  (1 bytes)
DATA_leido_BB85:
	defb 040h	; bb85

; ----------------------------------------------------------------------
; DATOS leido_BB86: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb86..0xbb87  (1 bytes)
DATA_leido_BB86:
	defb 0dbh	; bb86

; ----------------------------------------------------------------------
; DATOS leido_BB87: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbb87..0xbb88  (1 bytes)
DATA_leido_BB87:
	defb 002h	; bb87

; ----------------------------------------------------------------------
; DATOS leido_BB88: 14 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (14 bytes)
;   0xbb88..0xbb96  (14 bytes)
DATA_leido_BB88:
	defb 0d2h,052h,005h,000h,030h,050h,072h,0d3h,0a5h,0a0h,0d2h,020h,030h,0f8h	; bb88  .R..0Pr.... 0.

; ----------------------------------------------------------------------
; DATOS leido_BB96: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbb96..0xbb97  (1 bytes)
DATA_leido_BB96:
	defb 00ah	; bb96

; ----------------------------------------------------------------------
; DATOS leido_BB97: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbb97..0xbb98  (1 bytes)
DATA_leido_BB97:
	defb 0e9h	; bb97

; ----------------------------------------------------------------------
; DATOS leido_BB98: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbb98..0xbb99  (1 bytes)
DATA_leido_BB98:
	defb 00eh	; bb98

; ----------------------------------------------------------------------
; DATOS leido_BB99: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xbb99..0xbba4  (11 bytes)
DATA_leido_BB99:
	defb 0d2h,000h,0d3h,090h,0d2h,000h,0d3h,080h,080h,080h,0e9h	; bb99  ...........

; ----------------------------------------------------------------------
; DATOS leido_BBA4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbba4..0xbba5  (1 bytes)
DATA_leido_BBA4:
	defb 007h	; bba4

; ----------------------------------------------------------------------
; DATOS leido_BBA5: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xbba5..0xbba9  (4 bytes)
DATA_leido_BBA5:
	defb 072h,0d2h,078h,0f8h	; bba5

; ----------------------------------------------------------------------
; DATOS leido_BBA9: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbba9..0xbbaa  (1 bytes)
DATA_leido_BBA9:
	defb 00bh	; bba9

; ----------------------------------------------------------------------
; DATOS leido_BBAA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbaa..0xbbab  (1 bytes)
DATA_leido_BBAA:
	defb 0eah	; bbaa

; ----------------------------------------------------------------------
; DATOS leido_BBAB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbbab..0xbbac  (1 bytes)
DATA_leido_BBAB:
	defb 008h	; bbab

; ----------------------------------------------------------------------
; DATOS leido_BBAC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbac..0xbbad  (1 bytes)
DATA_leido_BBAC:
	defb 0ebh	; bbac

; ----------------------------------------------------------------------
; DATOS leido_BBAD: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbbad..0xbbae  (1 bytes)
DATA_leido_BBAD:
	defb 013h	; bbad

; ----------------------------------------------------------------------
; DATOS leido_BBAE: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbbae..0xbbaf  (1 bytes)
DATA_leido_BBAE:
	defb 040h	; bbae

; ----------------------------------------------------------------------
; DATOS leido_BBAF: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xbbaf..0xbbb9  (10 bytes)
DATA_leido_BBAF:
	defb 052h,005h,050h,050h,050h,072h,0d1h,022h,001h,0ebh	; bbaf  R.PPPr."..

; ----------------------------------------------------------------------
; DATOS leido_BBB9: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbbb9..0xbbba  (1 bytes)
DATA_leido_BBB9:
	defb 002h	; bbb9

; ----------------------------------------------------------------------
; DATOS leido_BBBA: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbbba..0xbbbb  (1 bytes)
DATA_leido_BBBA:
	defb 071h	; bbba

; ----------------------------------------------------------------------
; DATOS leido_BBBB: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xbbbb..0xbbc1  (6 bytes)
DATA_leido_BBBB:
	defb 000h,0d2h,000h,020h,030h,0ebh	; bbbb

; ----------------------------------------------------------------------
; DATOS leido_BBC1: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbbc1..0xbbc2  (1 bytes)
DATA_leido_BBC1:
	defb 002h	; bbc1

; ----------------------------------------------------------------------
; DATOS leido_BBC2: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbbc2..0xbbc3  (1 bytes)
DATA_leido_BBC2:
	defb 040h	; bbc2

; ----------------------------------------------------------------------
; DATOS leido_BBC3: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xbbc3..0xbbc9  (6 bytes)
DATA_leido_BBC3:
	defb 032h,078h,082h,0b5h,0a2h,0ebh	; bbc3

; ----------------------------------------------------------------------
; DATOS leido_BBC9: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbbc9..0xbbca  (1 bytes)
DATA_leido_BBC9:
	defb 024h	; bbc9

; ----------------------------------------------------------------------
; DATOS leido_BBCA: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbbca..0xbbcb  (1 bytes)
DATA_leido_BBCA:
	defb 040h	; bbca

; ----------------------------------------------------------------------
; DATOS leido_BBCB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbcb..0xbbcc  (1 bytes)
DATA_leido_BBCB:
	defb 0dbh	; bbcb

; ----------------------------------------------------------------------
; DATOS leido_BBCC: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbbcc..0xbbcd  (1 bytes)
DATA_leido_BBCC:
	defb 003h	; bbcc

; ----------------------------------------------------------------------
; DATOS leido_BBCD: 24 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (24 bytes)
;   0xbbcd..0xbbe5  (24 bytes)
DATA_leido_BBCD:
	defb 0d2h,002h,0d3h,0a5h,030h,070h,0a0h,082h,085h,010h,050h,080h,0a2h,0a5h,030h,070h	; bbcd  ....0p....P...0p
	defb 0a0h,0d2h,012h,005h,000h,010h,000h,0ebh	; bbdd  ........

; ----------------------------------------------------------------------
; DATOS leido_BBE5: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbbe5..0xbbe6  (1 bytes)
DATA_leido_BBE5:
	defb 004h	; bbe5

; ----------------------------------------------------------------------
; DATOS leido_BBE6: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbbe6..0xbbe7  (1 bytes)
DATA_leido_BBE6:
	defb 080h	; bbe6

; ----------------------------------------------------------------------
; DATOS leido_BBE7: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xbbe7..0xbbeb  (4 bytes)
DATA_leido_BBE7:
	defb 0d3h,0b8h,0ech,0eah	; bbe7

; ----------------------------------------------------------------------
; DATOS leido_BBEB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbbeb..0xbbec  (1 bytes)
DATA_leido_BBEB:
	defb 004h	; bbeb

; ----------------------------------------------------------------------
; DATOS leido_BBEC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbec..0xbbed  (1 bytes)
DATA_leido_BBEC:
	defb 0e9h	; bbec

; ----------------------------------------------------------------------
; DATOS leido_BBED: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbbed..0xbbee  (1 bytes)
DATA_leido_BBED:
	defb 001h	; bbed

; ----------------------------------------------------------------------
; DATOS leido_BBEE: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbbee..0xbbf3  (5 bytes)
DATA_leido_BBEE:
	defb 0d2h,000h,011h,021h,0eah	; bbee

; ----------------------------------------------------------------------
; DATOS leido_BBF3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbbf3..0xbbf4  (1 bytes)
DATA_leido_BBF3:
	defb 005h	; bbf3

; ----------------------------------------------------------------------
; DATOS leido_BBF4: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xbbf4..0xbbfd  (9 bytes)
DATA_leido_BBF4:
	defb 031h,041h,051h,061h,071h,081h,091h,0a1h,0e9h	; bbf4  1AQaq....

; ----------------------------------------------------------------------
; DATOS leido_BBFD: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbbfd..0xbbfe  (1 bytes)
DATA_leido_BBFD:
	defb 007h	; bbfd

; ----------------------------------------------------------------------
; DATOS leido_BBFE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbbfe..0xbbff  (1 bytes)
DATA_leido_BBFE:
	defb 0eah	; bbfe

; ----------------------------------------------------------------------
; DATOS leido_BBFF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbbff..0xbc00  (1 bytes)
DATA_leido_BBFF:
	defb 008h	; bbff

; ----------------------------------------------------------------------
; DATOS leido_BC00: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbc00..0xbc01  (1 bytes)
DATA_leido_BC00:
	defb 0ebh	; bc00

; ----------------------------------------------------------------------
; DATOS leido_BC01: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbc01..0xbc02  (1 bytes)
DATA_leido_BC01:
	defb 003h	; bc01

; ----------------------------------------------------------------------
; DATOS leido_BC02: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbc02..0xbc03  (1 bytes)
DATA_leido_BC02:
	defb 080h	; bc02

; ----------------------------------------------------------------------
; DATOS leido_BC03: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbc03..0xbc05  (2 bytes)
DATA_leido_BC03:
	defb 0bbh,0fdh	; bc03

; ----------------------------------------------------------------------
; DATOS leido_BC05: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbc05..0xbc07  (2 bytes)
DATA_leido_BC05:
	defb 028h,0bbh	; bc05

; ----------------------------------------------------------------------
; DATOS leido_BC07: 50 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (50 bytes)
;   0xbc07..0xbc39  (50 bytes)
DATA_leido_BC07:
	defb 090h,000h,000h,030h,000h,090h,090h,000h,090h,030h,000h,090h,0fah,090h,000h,000h	; bc07  ...0.....0......
	defb 030h,000h,090h,090h,010h,030h,030h,030h,030h,0fah,090h,000h,090h,030h,030h,000h	; bc17  0....0000....00.
	defb 090h,010h,090h,030h,030h,030h,0fah,0d5h,030h,0a0h,030h,0d4h,010h,0d5h,030h,0d4h	; bc27  ...000..0.0...0.
	defb 030h,0fbh	; bc37

; ----------------------------------------------------------------------
; DATOS leido_BC39: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbc39..0xbc3c  (3 bytes)
DATA_leido_BC39:
	defb 002h,02eh,0bch	; bc39

; ----------------------------------------------------------------------
; DATOS leido_BC3C: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xbc3c..0xbc49  (13 bytes)
DATA_leido_BC3C:
	defb 0d5h,080h,0d4h,030h,0d5h,080h,0d4h,060h,0d5h,080h,0d4h,080h,0fbh	; bc3c  ...0...`.....

; ----------------------------------------------------------------------
; DATOS leido_BC49: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbc49..0xbc4c  (3 bytes)
DATA_leido_BC49:
	defb 002h,03ch,0bch	; bc49

; ----------------------------------------------------------------------
; DATOS leido_BC4C: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xbc4c..0xbc57  (11 bytes)
DATA_leido_BC4C:
	defb 0d5h,030h,0a0h,030h,0d4h,010h,0d5h,030h,0d4h,030h,0fbh	; bc4c  .0.0...0.0.

; ----------------------------------------------------------------------
; DATOS leido_BC57: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbc57..0xbc5a  (3 bytes)
DATA_leido_BC57:
	defb 003h,04ch,0bch	; bc57

; ----------------------------------------------------------------------
; DATOS leido_BC5A: 71 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (71 bytes)
;   0xbc5a..0xbca1  (71 bytes)
DATA_leido_BC5A:
	defb 0fah,071h,070h,070h,0d4h,020h,0d5h,070h,0d4h,001h,000h,0fah,0d2h,001h,0d3h,030h	; bc5a  .qpp. .p.......0
	defb 030h,080h,0d2h,000h,021h,0d3h,050h,050h,0a0h,0d2h,020h,031h,0d3h,060h,060h,0b0h	; bc6a  0...!.PP.. 1.``.
	defb 0d2h,030h,0d3h,080h,0d2h,010h,060h,080h,0fah,030h,070h,0a0h,0d1h,012h,005h,000h	; bc7a  .0....`..0p.....
	defb 0d2h,0a0h,080h,0d1h,002h,0d2h,0a8h,082h,072h,0fah,0d1h,002h,0d2h,055h,050h,070h	; bc8a  ........r....UPp
	defb 080h,0a2h,035h,030h,050h,070h,0f8h	; bc9a

; ----------------------------------------------------------------------
; DATOS leido_BCA1: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbca1..0xbca2  (1 bytes)
DATA_leido_BCA1:
	defb 00bh	; bca1

; ----------------------------------------------------------------------
; DATOS leido_BCA2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbca2..0xbca3  (1 bytes)
DATA_leido_BCA2:
	defb 0e9h	; bca2

; ----------------------------------------------------------------------
; DATOS leido_BCA3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbca3..0xbca4  (1 bytes)
DATA_leido_BCA3:
	defb 00eh	; bca3

; ----------------------------------------------------------------------
; DATOS leido_BCA4: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xbca4..0xbcac  (8 bytes)
DATA_leido_BCA4:
	defb 050h,000h,030h,020h,000h,0d3h,0a0h,0e9h	; bca4  P.0 ....

; ----------------------------------------------------------------------
; DATOS leido_BCAC: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbcac..0xbcad  (1 bytes)
DATA_leido_BCAC:
	defb 007h	; bcac

; ----------------------------------------------------------------------
; DATOS leido_BCAD: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbcad..0xbcaf  (2 bytes)
DATA_leido_BCAD:
	defb 0a2h,0f2h	; bcad

; ----------------------------------------------------------------------
; DATOS leido_BCAF: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbcaf..0xbcb0  (1 bytes)
DATA_leido_BCAF:
	defb 020h	; bcaf

; ----------------------------------------------------------------------
; DATOS leido_BCB0: 30 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (30 bytes)
;   0xbcb0..0xbcce  (30 bytes)
DATA_leido_BCB0:
	defb 0d2h,0a8h,0fah,0d1h,032h,0d2h,075h,0d3h,0a0h,0d2h,030h,070h,072h,055h,0d3h,080h	; bcb0  ....2.u...0prU..
	defb 0d2h,010h,050h,082h,075h,0d3h,0a0h,0d2h,030h,070h,0a2h,095h,0fah,0eah	; bcc0  ..P.u...0p....

; ----------------------------------------------------------------------
; DATOS leido_BCCE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbcce..0xbccf  (1 bytes)
DATA_leido_BCCE:
	defb 004h	; bcce

; ----------------------------------------------------------------------
; DATOS leido_BCCF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbccf..0xbcd0  (1 bytes)
DATA_leido_BCCF:
	defb 0e9h	; bccf

; ----------------------------------------------------------------------
; DATOS leido_BCD0: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbcd0..0xbcd1  (1 bytes)
DATA_leido_BCD0:
	defb 001h	; bcd0

; ----------------------------------------------------------------------
; DATOS leido_BCD1: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xbcd1..0xbcd6  (5 bytes)
DATA_leido_BCD1:
	defb 0d3h,090h,0a1h,0b1h,0eah	; bcd1

; ----------------------------------------------------------------------
; DATOS leido_BCD6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbcd6..0xbcd7  (1 bytes)
DATA_leido_BCD6:
	defb 005h	; bcd6

; ----------------------------------------------------------------------
; DATOS leido_BCD7: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xbcd7..0xbce1  (10 bytes)
DATA_leido_BCD7:
	defb 0d1h,001h,011h,021h,031h,041h,051h,061h,071h,0e9h	; bcd7  ...!1AQaq.

; ----------------------------------------------------------------------
; DATOS leido_BCE1: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbce1..0xbce2  (1 bytes)
DATA_leido_BCE1:
	defb 007h	; bce1

; ----------------------------------------------------------------------
; DATOS leido_BCE2: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xbce2..0xbcea  (8 bytes)
DATA_leido_BCE2:
	defb 0fah,0d3h,0a1h,0a0h,0a0h,070h,0a0h,0fbh	; bce2  .....p..

; ----------------------------------------------------------------------
; DATOS leido_BCEA: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbcea..0xbced  (3 bytes)
DATA_leido_BCEA:
	defb 002h,0e3h,0bch	; bcea

; ----------------------------------------------------------------------
; DATOS leido_BCED: 68 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (68 bytes)
;   0xbced..0xbd31  (68 bytes)
DATA_leido_BCED:
	defb 0d2h,011h,010h,000h,0d3h,080h,0d2h,000h,001h,000h,000h,0d3h,080h,0d2h,000h,001h	; bced  ................
	defb 0d3h,0a0h,0a0h,070h,0a0h,0a1h,0a0h,0a0h,070h,0a0h,080h,030h,080h,070h,030h,070h	; bcfd  ...p....p..0.p0p
	defb 0fah,0d1h,002h,0d2h,055h,0d1h,000h,020h,000h,0d2h,0a2h,0d1h,052h,031h,0fah,0d3h	; bd0d  ....U.. ....R1..
	defb 0a0h,0d2h,030h,070h,0a2h,085h,080h,070h,050h,082h,0d3h,0a2h,0d2h,032h,072h,002h	; bd1d  ..0p...pP....2r.
	defb 0d3h,0a2h,0fah,0feh	; bd2d

; ----------------------------------------------------------------------
; DATOS leido_BD31: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbd31..0xbd32  (1 bytes)
DATA_leido_BD31:
	defb 004h	; bd31

; ----------------------------------------------------------------------
; DATOS leido_BD32: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd32..0xbd33  (1 bytes)
DATA_leido_BD32:
	defb 0e9h	; bd32

; ----------------------------------------------------------------------
; DATOS leido_BD33: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbd33..0xbd34  (1 bytes)
DATA_leido_BD33:
	defb 007h	; bd33

; ----------------------------------------------------------------------
; DATOS leido_BD34: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xbd34..0xbd3d  (9 bytes)
DATA_leido_BD34:
	defb 0d0h,093h,093h,093h,090h,000h,000h,000h,0fbh	; bd34  .........

; ----------------------------------------------------------------------
; DATOS leido_BD3D: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbd3d..0xbd40  (3 bytes)
DATA_leido_BD3D:
	defb 006h,034h,0bdh	; bd3d

; ----------------------------------------------------------------------
; DATOS leido_BD40: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xbd40..0xbd4d  (13 bytes)
DATA_leido_BD40:
	defb 030h,031h,030h,031h,030h,031h,030h,031h,030h,030h,030h,030h,0fch	; bd40  010101010000.

; ----------------------------------------------------------------------
; DATOS leido_BD4D: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbd4d..0xbd50  (3 bytes)
DATA_leido_BD4D:
	defb 003h,030h,0bdh	; bd4d

; ----------------------------------------------------------------------
; DATOS leido_BD50: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xbd50..0xbd5a  (10 bytes)
DATA_leido_BD50:
	defb 091h,031h,091h,030h,091h,090h,031h,091h,031h,0fdh	; bd50  .1.0..1.1.

; ----------------------------------------------------------------------
; DATOS leido_BD5A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbd5a..0xbd5c  (2 bytes)
DATA_leido_BD5A:
	defb 050h,0bdh	; bd5a

; ----------------------------------------------------------------------
; DATOS leido_BD5C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd5c..0xbd5d  (1 bytes)
DATA_leido_BD5C:
	defb 0feh	; bd5c

; ----------------------------------------------------------------------
; DATOS leido_BD5D: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbd5d..0xbd5e  (1 bytes)
DATA_leido_BD5D:
	defb 001h	; bd5d

; ----------------------------------------------------------------------
; DATOS leido_BD5E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd5e..0xbd5f  (1 bytes)
DATA_leido_BD5E:
	defb 0f1h	; bd5e

; ----------------------------------------------------------------------
; DATOS leido_BD5F: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbd5f..0xbd60  (1 bytes)
DATA_leido_BD5F:
	defb 055h	; bd5f

; ----------------------------------------------------------------------
; DATOS leido_BD60: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd60..0xbd61  (1 bytes)
DATA_leido_BD60:
	defb 0f2h	; bd60

; ----------------------------------------------------------------------
; DATOS leido_BD61: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbd61..0xbd62  (1 bytes)
DATA_leido_BD61:
	defb 008h	; bd61

; ----------------------------------------------------------------------
; DATOS leido_BD62: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd62..0xbd63  (1 bytes)
DATA_leido_BD62:
	defb 0e9h	; bd62

; ----------------------------------------------------------------------
; DATOS leido_BD63: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbd63..0xbd64  (1 bytes)
DATA_leido_BD63:
	defb 007h	; bd63

; ----------------------------------------------------------------------
; DATOS leido_BD64: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd64..0xbd65  (1 bytes)
DATA_leido_BD64:
	defb 0eah	; bd64

; ----------------------------------------------------------------------
; DATOS leido_BD65: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbd65..0xbd66  (1 bytes)
DATA_leido_BD65:
	defb 009h	; bd65

; ----------------------------------------------------------------------
; DATOS leido_BD66: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd66..0xbd67  (1 bytes)
DATA_leido_BD66:
	defb 0ebh	; bd66

; ----------------------------------------------------------------------
; DATOS leido_BD67: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbd67..0xbd68  (1 bytes)
DATA_leido_BD67:
	defb 008h	; bd67

; ----------------------------------------------------------------------
; DATOS leido_BD68: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbd68..0xbd69  (1 bytes)
DATA_leido_BD68:
	defb 020h	; bd68

; ----------------------------------------------------------------------
; DATOS leido_BD69: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd69..0xbd6a  (1 bytes)
DATA_leido_BD69:
	defb 0dbh	; bd69

; ----------------------------------------------------------------------
; DATOS leido_BD6A: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbd6a..0xbd6b  (1 bytes)
DATA_leido_BD6A:
	defb 004h	; bd6a

; ----------------------------------------------------------------------
; DATOS leido_BD6B: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xbd6b..0xbd72  (7 bytes)
DATA_leido_BD6B:
	defb 0d2h,031h,05dh,031h,053h,089h,0fbh	; bd6b

; ----------------------------------------------------------------------
; DATOS leido_BD72: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbd72..0xbd75  (3 bytes)
DATA_leido_BD72:
	defb 003h,06bh,0bdh	; bd72

; ----------------------------------------------------------------------
; DATOS leido_BD75: 20 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (20 bytes)
;   0xbd75..0xbd89  (20 bytes)
DATA_leido_BD75:
	defb 050h,080h,0d1h,000h,030h,020h,0d2h,0a0h,0d1h,020h,050h,030h,000h,030h,070h,050h	; bd75  P...0 ... P0.0pP
	defb 020h,050h,0a0h,0fch	; bd85

; ----------------------------------------------------------------------
; DATOS leido_BD89: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbd89..0xbd8c  (3 bytes)
DATA_leido_BD89:
	defb 003h,05ch,0bdh	; bd89

; ----------------------------------------------------------------------
; DATOS leido_BD8C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd8c..0xbd8d  (1 bytes)
DATA_leido_BD8C:
	defb 0f1h	; bd8c

; ----------------------------------------------------------------------
; DATOS leido_BD8D: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbd8d..0xbd8e  (1 bytes)
DATA_leido_BD8D:
	defb 044h	; bd8d

; ----------------------------------------------------------------------
; DATOS leido_BD8E: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbd8e..0xbd90  (2 bytes)
DATA_leido_BD8E:
	defb 0c1h,0eah	; bd8e

; ----------------------------------------------------------------------
; DATOS leido_BD90: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbd90..0xbd91  (1 bytes)
DATA_leido_BD90:
	defb 008h	; bd90

; ----------------------------------------------------------------------
; DATOS leido_BD91: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd91..0xbd92  (1 bytes)
DATA_leido_BD91:
	defb 0ebh	; bd91

; ----------------------------------------------------------------------
; DATOS leido_BD92: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbd92..0xbd93  (1 bytes)
DATA_leido_BD92:
	defb 001h	; bd92

; ----------------------------------------------------------------------
; DATOS leido_BD93: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbd93..0xbd94  (1 bytes)
DATA_leido_BD93:
	defb 010h	; bd93

; ----------------------------------------------------------------------
; DATOS leido_BD94: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbd94..0xbd95  (1 bytes)
DATA_leido_BD94:
	defb 0dbh	; bd94

; ----------------------------------------------------------------------
; DATOS leido_BD95: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbd95..0xbd96  (1 bytes)
DATA_leido_BD95:
	defb 004h	; bd95

; ----------------------------------------------------------------------
; DATOS leido_BD96: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xbd96..0xbda3  (13 bytes)
DATA_leido_BD96:
	defb 0d2h,000h,0d3h,080h,0d2h,000h,02ch,032h,030h,0c0h,0ech,0f3h,0eah	; bd96  ......,20....

; ----------------------------------------------------------------------
; DATOS leido_BDA3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbda3..0xbda4  (1 bytes)
DATA_leido_BDA3:
	defb 003h	; bda3

; ----------------------------------------------------------------------
; DATOS leido_BDA4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbda4..0xbda6  (2 bytes)
DATA_leido_BDA4:
	defb 031h,0eah	; bda4

; ----------------------------------------------------------------------
; DATOS leido_BDA6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbda6..0xbda7  (1 bytes)
DATA_leido_BDA6:
	defb 004h	; bda6

; ----------------------------------------------------------------------
; DATOS leido_BDA7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbda7..0xbda9  (2 bytes)
DATA_leido_BDA7:
	defb 031h,0eah	; bda7

; ----------------------------------------------------------------------
; DATOS leido_BDA9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbda9..0xbdaa  (1 bytes)
DATA_leido_BDA9:
	defb 005h	; bda9

; ----------------------------------------------------------------------
; DATOS leido_BDAA: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbdaa..0xbdac  (2 bytes)
DATA_leido_BDAA:
	defb 031h,0eah	; bdaa

; ----------------------------------------------------------------------
; DATOS leido_BDAC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbdac..0xbdad  (1 bytes)
DATA_leido_BDAC:
	defb 006h	; bdac

; ----------------------------------------------------------------------
; DATOS leido_BDAD: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbdad..0xbdaf  (2 bytes)
DATA_leido_BDAD:
	defb 031h,0eah	; bdad

; ----------------------------------------------------------------------
; DATOS leido_BDAF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbdaf..0xbdb0  (1 bytes)
DATA_leido_BDAF:
	defb 007h	; bdaf

; ----------------------------------------------------------------------
; DATOS leido_BDB0: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbdb0..0xbdb2  (2 bytes)
DATA_leido_BDB0:
	defb 030h,0fdh	; bdb0

; ----------------------------------------------------------------------
; DATOS leido_BDB2: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbdb2..0xbdb4  (2 bytes)
DATA_leido_BDB2:
	defb 08ch,0bdh	; bdb2

; ----------------------------------------------------------------------
; DATOS leido_BDB4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdb4..0xbdb5  (1 bytes)
DATA_leido_BDB4:
	defb 0feh	; bdb4

; ----------------------------------------------------------------------
; DATOS leido_BDB5: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbdb5..0xbdb6  (1 bytes)
DATA_leido_BDB5:
	defb 001h	; bdb5

; ----------------------------------------------------------------------
; DATOS leido_BDB6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdb6..0xbdb7  (1 bytes)
DATA_leido_BDB6:
	defb 0f8h	; bdb6

; ----------------------------------------------------------------------
; DATOS leido_BDB7: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbdb7..0xbdb8  (1 bytes)
DATA_leido_BDB7:
	defb 028h	; bdb7

; ----------------------------------------------------------------------
; DATOS leido_BDB8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdb8..0xbdb9  (1 bytes)
DATA_leido_BDB8:
	defb 0e9h	; bdb8

; ----------------------------------------------------------------------
; DATOS leido_BDB9: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbdb9..0xbdba  (1 bytes)
DATA_leido_BDB9:
	defb 007h	; bdb9

; ----------------------------------------------------------------------
; DATOS leido_BDBA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdba..0xbdbb  (1 bytes)
DATA_leido_BDBA:
	defb 0eah	; bdba

; ----------------------------------------------------------------------
; DATOS leido_BDBB: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbdbb..0xbdbc  (1 bytes)
DATA_leido_BDBB:
	defb 00bh	; bdbb

; ----------------------------------------------------------------------
; DATOS leido_BDBC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdbc..0xbdbd  (1 bytes)
DATA_leido_BDBC:
	defb 0ebh	; bdbc

; ----------------------------------------------------------------------
; DATOS leido_BDBD: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbdbd..0xbdbe  (1 bytes)
DATA_leido_BDBD:
	defb 061h	; bdbd

; ----------------------------------------------------------------------
; DATOS leido_BDBE: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbdbe..0xbdbf  (1 bytes)
DATA_leido_BDBE:
	defb 030h	; bdbe

; ----------------------------------------------------------------------
; DATOS leido_BDBF: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbdbf..0xbdc2  (3 bytes)
DATA_leido_BDBF:
	defb 0d5h,053h,0fbh	; bdbf

; ----------------------------------------------------------------------
; DATOS leido_BDC2: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbdc2..0xbdc5  (3 bytes)
DATA_leido_BDC2:
	defb 01ch,0c0h,0bdh	; bdc2

; ----------------------------------------------------------------------
; DATOS leido_BDC5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdc5..0xbdc6  (1 bytes)
DATA_leido_BDC5:
	defb 0fch	; bdc5

; ----------------------------------------------------------------------
; DATOS leido_BDC6: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbdc6..0xbdc9  (3 bytes)
DATA_leido_BDC6:
	defb 003h,0b4h,0bdh	; bdc6

; ----------------------------------------------------------------------
; DATOS leido_BDC9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdc9..0xbdca  (1 bytes)
DATA_leido_BDC9:
	defb 0eah	; bdc9

; ----------------------------------------------------------------------
; DATOS leido_BDCA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbdca..0xbdcb  (1 bytes)
DATA_leido_BDCA:
	defb 00ah	; bdca

; ----------------------------------------------------------------------
; DATOS leido_BDCB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdcb..0xbdcc  (1 bytes)
DATA_leido_BDCB:
	defb 0ebh	; bdcb

; ----------------------------------------------------------------------
; DATOS leido_BDCC: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbdcc..0xbdcd  (1 bytes)
DATA_leido_BDCC:
	defb 029h	; bdcc

; ----------------------------------------------------------------------
; DATOS leido_BDCD: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbdcd..0xbdce  (1 bytes)
DATA_leido_BDCD:
	defb 0f0h	; bdcd

; ----------------------------------------------------------------------
; DATOS leido_BDCE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdce..0xbdcf  (1 bytes)
DATA_leido_BDCE:
	defb 0f8h	; bdce

; ----------------------------------------------------------------------
; DATOS leido_BDCF: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbdcf..0xbdd0  (1 bytes)
DATA_leido_BDCF:
	defb 028h	; bdcf

; ----------------------------------------------------------------------
; DATOS leido_BDD0: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbdd0..0xbdd3  (3 bytes)
DATA_leido_BDD0:
	defb 0d5h,050h,0f8h	; bdd0

; ----------------------------------------------------------------------
; DATOS leido_BDD3: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbdd3..0xbdd4  (1 bytes)
DATA_leido_BDD3:
	defb 026h	; bdd3

; ----------------------------------------------------------------------
; DATOS leido_BDD4: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbdd4..0xbdd7  (3 bytes)
DATA_leido_BDD4:
	defb 0d5h,050h,0fdh	; bdd4

; ----------------------------------------------------------------------
; DATOS leido_BDD7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbdd7..0xbdd9  (2 bytes)
DATA_leido_BDD7:
	defb 0c9h,0bdh	; bdd7

; ----------------------------------------------------------------------
; DATOS leido_BDD9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdd9..0xbdda  (1 bytes)
DATA_leido_BDD9:
	defb 0feh	; bdd9

; ----------------------------------------------------------------------
; DATOS leido_BDDA: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbdda..0xbddb  (1 bytes)
DATA_leido_BDDA:
	defb 001h	; bdda

; ----------------------------------------------------------------------
; DATOS leido_BDDB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbddb..0xbddc  (1 bytes)
DATA_leido_BDDB:
	defb 0f8h	; bddb

; ----------------------------------------------------------------------
; DATOS leido_BDDC: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbddc..0xbddd  (1 bytes)
DATA_leido_BDDC:
	defb 002h	; bddc

; ----------------------------------------------------------------------
; DATOS leido_BDDD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbddd..0xbdde  (1 bytes)
DATA_leido_BDDD:
	defb 0e9h	; bddd

; ----------------------------------------------------------------------
; DATOS leido_BDDE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbdde..0xbddf  (1 bytes)
DATA_leido_BDDE:
	defb 007h	; bdde

; ----------------------------------------------------------------------
; DATOS leido_BDDF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbddf..0xbde0  (1 bytes)
DATA_leido_BDDF:
	defb 0eah	; bddf

; ----------------------------------------------------------------------
; DATOS leido_BDE0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbde0..0xbde1  (1 bytes)
DATA_leido_BDE0:
	defb 008h	; bde0

; ----------------------------------------------------------------------
; DATOS leido_BDE1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbde1..0xbde2  (1 bytes)
DATA_leido_BDE1:
	defb 0ebh	; bde1

; ----------------------------------------------------------------------
; DATOS leido_BDE2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbde2..0xbde3  (1 bytes)
DATA_leido_BDE2:
	defb 021h	; bde2

; ----------------------------------------------------------------------
; DATOS leido_BDE3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbde3..0xbde4  (1 bytes)
DATA_leido_BDE3:
	defb 011h	; bde3

; ----------------------------------------------------------------------
; DATOS leido_BDE4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbde4..0xbde5  (1 bytes)
DATA_leido_BDE4:
	defb 0dbh	; bde4

; ----------------------------------------------------------------------
; DATOS leido_BDE5: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbde5..0xbde6  (1 bytes)
DATA_leido_BDE5:
	defb 002h	; bde5

; ----------------------------------------------------------------------
; DATOS leido_BDE6: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbde6..0xbde8  (2 bytes)
DATA_leido_BDE6:
	defb 0d2h,0f9h	; bde6

; ----------------------------------------------------------------------
; DATOS leido_BDE8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbde8..0xbdea  (2 bytes)
DATA_leido_BDE8:
	defb 01ch,0bfh	; bde8

; ----------------------------------------------------------------------
; DATOS leido_BDEA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdea..0xbdeb  (1 bytes)
DATA_leido_BDEA:
	defb 0f9h	; bdea

; ----------------------------------------------------------------------
; DATOS leido_BDEB: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbdeb..0xbded  (2 bytes)
DATA_leido_BDEB:
	defb 01ch,0bfh	; bdeb

; ----------------------------------------------------------------------
; DATOS leido_BDED: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbded..0xbdee  (1 bytes)
DATA_leido_BDED:
	defb 0f9h	; bded

; ----------------------------------------------------------------------
; DATOS leido_BDEE: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbdee..0xbdf0  (2 bytes)
DATA_leido_BDEE:
	defb 01ch,0bfh	; bdee

; ----------------------------------------------------------------------
; DATOS leido_BDF0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdf0..0xbdf1  (1 bytes)
DATA_leido_BDF0:
	defb 0e9h	; bdf0

; ----------------------------------------------------------------------
; DATOS leido_BDF1: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbdf1..0xbdf2  (1 bytes)
DATA_leido_BDF1:
	defb 003h	; bdf1

; ----------------------------------------------------------------------
; DATOS leido_BDF2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbdf2..0xbdf3  (1 bytes)
DATA_leido_BDF2:
	defb 0eah	; bdf2

; ----------------------------------------------------------------------
; DATOS leido_BDF3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbdf3..0xbdf4  (1 bytes)
DATA_leido_BDF3:
	defb 007h	; bdf3

; ----------------------------------------------------------------------
; DATOS leido_BDF4: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbdf4..0xbdf7  (3 bytes)
DATA_leido_BDF4:
	defb 070h,060h,0e9h	; bdf4

; ----------------------------------------------------------------------
; DATOS leido_BDF7: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbdf7..0xbdf8  (1 bytes)
DATA_leido_BDF7:
	defb 004h	; bdf7

; ----------------------------------------------------------------------
; DATOS leido_BDF8: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbdf8..0xbdfa  (2 bytes)
DATA_leido_BDF8:
	defb 050h,0e9h	; bdf8

; ----------------------------------------------------------------------
; DATOS leido_BDFA: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbdfa..0xbdfb  (1 bytes)
DATA_leido_BDFA:
	defb 003h	; bdfa

; ----------------------------------------------------------------------
; DATOS leido_BDFB: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbdfb..0xbdfe  (3 bytes)
DATA_leido_BDFB:
	defb 040h,030h,0e9h	; bdfb

; ----------------------------------------------------------------------
; DATOS leido_BDFE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbdfe..0xbdff  (1 bytes)
DATA_leido_BDFE:
	defb 004h	; bdfe

; ----------------------------------------------------------------------
; DATOS leido_BDFF: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbdff..0xbe01  (2 bytes)
DATA_leido_BDFF:
	defb 020h,0e9h	; bdff

; ----------------------------------------------------------------------
; DATOS leido_BE01: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe01..0xbe02  (1 bytes)
DATA_leido_BE01:
	defb 003h	; be01

; ----------------------------------------------------------------------
; DATOS leido_BE02: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbe02..0xbe05  (3 bytes)
DATA_leido_BE02:
	defb 010h,000h,0e9h	; be02

; ----------------------------------------------------------------------
; DATOS leido_BE05: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe05..0xbe06  (1 bytes)
DATA_leido_BE05:
	defb 004h	; be05

; ----------------------------------------------------------------------
; DATOS leido_BE06: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbe06..0xbe09  (3 bytes)
DATA_leido_BE06:
	defb 0d3h,0b0h,0e9h	; be06

; ----------------------------------------------------------------------
; DATOS leido_BE09: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe09..0xbe0a  (1 bytes)
DATA_leido_BE09:
	defb 003h	; be09

; ----------------------------------------------------------------------
; DATOS leido_BE0A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbe0a..0xbe0d  (3 bytes)
DATA_leido_BE0A:
	defb 0a0h,090h,0e9h	; be0a

; ----------------------------------------------------------------------
; DATOS leido_BE0D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe0d..0xbe0e  (1 bytes)
DATA_leido_BE0D:
	defb 004h	; be0d

; ----------------------------------------------------------------------
; DATOS leido_BE0E: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbe0e..0xbe10  (2 bytes)
DATA_leido_BE0E:
	defb 080h,0e9h	; be0e

; ----------------------------------------------------------------------
; DATOS leido_BE10: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe10..0xbe11  (1 bytes)
DATA_leido_BE10:
	defb 003h	; be10

; ----------------------------------------------------------------------
; DATOS leido_BE11: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbe11..0xbe14  (3 bytes)
DATA_leido_BE11:
	defb 070h,060h,0e9h	; be11

; ----------------------------------------------------------------------
; DATOS leido_BE14: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe14..0xbe15  (1 bytes)
DATA_leido_BE14:
	defb 004h	; be14

; ----------------------------------------------------------------------
; DATOS leido_BE15: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbe15..0xbe17  (2 bytes)
DATA_leido_BE15:
	defb 050h,0e9h	; be15

; ----------------------------------------------------------------------
; DATOS leido_BE17: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe17..0xbe18  (1 bytes)
DATA_leido_BE17:
	defb 007h	; be17

; ----------------------------------------------------------------------
; DATOS leido_BE18: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xbe18..0xbe23  (11 bytes)
DATA_leido_BE18:
	defb 0d2h,020h,050h,030h,000h,030h,070h,050h,020h,050h,0fch	; be18  . P0.0pP P.

; ----------------------------------------------------------------------
; DATOS leido_BE23: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbe23..0xbe26  (3 bytes)
DATA_leido_BE23:
	defb 003h,0d9h,0bdh	; be23

; ----------------------------------------------------------------------
; DATOS leido_BE26: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe26..0xbe27  (1 bytes)
DATA_leido_BE26:
	defb 0e9h	; be26

; ----------------------------------------------------------------------
; DATOS leido_BE27: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe27..0xbe28  (1 bytes)
DATA_leido_BE27:
	defb 007h	; be27

; ----------------------------------------------------------------------
; DATOS leido_BE28: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe28..0xbe29  (1 bytes)
DATA_leido_BE28:
	defb 0eah	; be28

; ----------------------------------------------------------------------
; DATOS leido_BE29: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbe29..0xbe2a  (1 bytes)
DATA_leido_BE29:
	defb 006h	; be29

; ----------------------------------------------------------------------
; DATOS leido_BE2A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe2a..0xbe2b  (1 bytes)
DATA_leido_BE2A:
	defb 0ebh	; be2a

; ----------------------------------------------------------------------
; DATOS leido_BE2B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbe2b..0xbe2c  (1 bytes)
DATA_leido_BE2B:
	defb 031h	; be2b

; ----------------------------------------------------------------------
; DATOS leido_BE2C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbe2c..0xbe2d  (1 bytes)
DATA_leido_BE2C:
	defb 011h	; be2c

; ----------------------------------------------------------------------
; DATOS leido_BE2D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe2d..0xbe2e  (1 bytes)
DATA_leido_BE2D:
	defb 0dbh	; be2d

; ----------------------------------------------------------------------
; DATOS leido_BE2E: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbe2e..0xbe2f  (1 bytes)
DATA_leido_BE2E:
	defb 002h	; be2e

; ----------------------------------------------------------------------
; DATOS leido_BE2F: 40 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (40 bytes)
;   0xbe2f..0xbe57  (40 bytes)
DATA_leido_BE2F:
	defb 0d2h,050h,070h,080h,0a0h,0d1h,000h,0d2h,080h,0a0h,070h,050h,070h,080h,0a0h,070h	; be2f  .Pp.......pPp..p
	defb 080h,0a0h,0d1h,000h,0d2h,050h,070h,080h,0a0h,0d1h,000h,0d2h,080h,0a0h,070h,050h	; be3f  .....Pp.......pP
	defb 080h,0d1h,000h,030h,020h,0d2h,0a2h,0fdh	; be4f  ...0 ...

; ----------------------------------------------------------------------
; DATOS leido_BE57: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbe57..0xbe59  (2 bytes)
DATA_leido_BE57:
	defb 026h,0beh	; be57

; ----------------------------------------------------------------------
; DATOS leido_BE59: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe59..0xbe5a  (1 bytes)
DATA_leido_BE59:
	defb 0feh	; be59

; ----------------------------------------------------------------------
; DATOS leido_BE5A: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbe5a..0xbe5b  (1 bytes)
DATA_leido_BE5A:
	defb 001h	; be5a

; ----------------------------------------------------------------------
; DATOS leido_BE5B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe5b..0xbe5c  (1 bytes)
DATA_leido_BE5B:
	defb 0f8h	; be5b

; ----------------------------------------------------------------------
; DATOS leido_BE5C: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbe5c..0xbe5d  (1 bytes)
DATA_leido_BE5C:
	defb 002h	; be5c

; ----------------------------------------------------------------------
; DATOS leido_BE5D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe5d..0xbe5e  (1 bytes)
DATA_leido_BE5D:
	defb 0f1h	; be5d

; ----------------------------------------------------------------------
; DATOS leido_BE5E: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbe5e..0xbe5f  (1 bytes)
DATA_leido_BE5E:
	defb 049h	; be5e

; ----------------------------------------------------------------------
; DATOS leido_BE5F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe5f..0xbe60  (1 bytes)
DATA_leido_BE5F:
	defb 0f2h	; be5f

; ----------------------------------------------------------------------
; DATOS leido_BE60: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbe60..0xbe61  (1 bytes)
DATA_leido_BE60:
	defb 008h	; be60

; ----------------------------------------------------------------------
; DATOS leido_BE61: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe61..0xbe62  (1 bytes)
DATA_leido_BE61:
	defb 0e9h	; be61

; ----------------------------------------------------------------------
; DATOS leido_BE62: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbe62..0xbe63  (1 bytes)
DATA_leido_BE62:
	defb 007h	; be62

; ----------------------------------------------------------------------
; DATOS leido_BE63: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe63..0xbe64  (1 bytes)
DATA_leido_BE63:
	defb 0eah	; be63

; ----------------------------------------------------------------------
; DATOS leido_BE64: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbe64..0xbe65  (1 bytes)
DATA_leido_BE64:
	defb 00dh	; be64

; ----------------------------------------------------------------------
; DATOS leido_BE65: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe65..0xbe66  (1 bytes)
DATA_leido_BE65:
	defb 0ebh	; be65

; ----------------------------------------------------------------------
; DATOS leido_BE66: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbe66..0xbe67  (1 bytes)
DATA_leido_BE66:
	defb 058h	; be66

; ----------------------------------------------------------------------
; DATOS leido_BE67: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbe67..0xbe68  (1 bytes)
DATA_leido_BE67:
	defb 040h	; be67

; ----------------------------------------------------------------------
; DATOS leido_BE68: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe68..0xbe69  (1 bytes)
DATA_leido_BE68:
	defb 0dbh	; be68

; ----------------------------------------------------------------------
; DATOS leido_BE69: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbe69..0xbe6a  (1 bytes)
DATA_leido_BE69:
	defb 002h	; be69

; ----------------------------------------------------------------------
; DATOS leido_BE6A: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xbe6a..0xbe71  (7 bytes)
DATA_leido_BE6A:
	defb 0d3h,031h,05dh,031h,053h,089h,0fbh	; be6a

; ----------------------------------------------------------------------
; DATOS leido_BE71: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbe71..0xbe74  (3 bytes)
DATA_leido_BE71:
	defb 003h,06bh,0beh	; be71

; ----------------------------------------------------------------------
; DATOS leido_BE74: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe74..0xbe75  (1 bytes)
DATA_leido_BE74:
	defb 0eah	; be74

; ----------------------------------------------------------------------
; DATOS leido_BE75: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbe75..0xbe76  (1 bytes)
DATA_leido_BE75:
	defb 00ch	; be75

; ----------------------------------------------------------------------
; DATOS leido_BE76: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe76..0xbe77  (1 bytes)
DATA_leido_BE76:
	defb 0ebh	; be76

; ----------------------------------------------------------------------
; DATOS leido_BE77: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbe77..0xbe78  (1 bytes)
DATA_leido_BE77:
	defb 048h	; be77

; ----------------------------------------------------------------------
; DATOS leido_BE78: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbe78..0xbe79  (1 bytes)
DATA_leido_BE78:
	defb 040h	; be78

; ----------------------------------------------------------------------
; DATOS leido_BE79: 20 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (20 bytes)
;   0xbe79..0xbe8d  (20 bytes)
DATA_leido_BE79:
	defb 050h,080h,0d2h,000h,030h,020h,0d3h,0a0h,0d2h,020h,050h,030h,000h,030h,070h,050h	; be79  P...0 ... P0.0pP
	defb 020h,050h,0a0h,0fch	; be89

; ----------------------------------------------------------------------
; DATOS leido_BE8D: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbe8d..0xbe90  (3 bytes)
DATA_leido_BE8D:
	defb 003h,059h,0beh	; be8d

; ----------------------------------------------------------------------
; DATOS leido_BE90: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe90..0xbe91  (1 bytes)
DATA_leido_BE90:
	defb 0f1h	; be90

; ----------------------------------------------------------------------
; DATOS leido_BE91: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbe91..0xbe92  (1 bytes)
DATA_leido_BE91:
	defb 044h	; be91

; ----------------------------------------------------------------------
; DATOS leido_BE92: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe92..0xbe93  (1 bytes)
DATA_leido_BE92:
	defb 0eah	; be92

; ----------------------------------------------------------------------
; DATOS leido_BE93: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbe93..0xbe94  (1 bytes)
DATA_leido_BE93:
	defb 00ch	; be93

; ----------------------------------------------------------------------
; DATOS leido_BE94: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe94..0xbe95  (1 bytes)
DATA_leido_BE94:
	defb 0ebh	; be94

; ----------------------------------------------------------------------
; DATOS leido_BE95: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbe95..0xbe96  (1 bytes)
DATA_leido_BE95:
	defb 068h	; be95

; ----------------------------------------------------------------------
; DATOS leido_BE96: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbe96..0xbe97  (1 bytes)
DATA_leido_BE96:
	defb 030h	; be96

; ----------------------------------------------------------------------
; DATOS leido_BE97: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbe97..0xbe98  (1 bytes)
DATA_leido_BE97:
	defb 0dbh	; be97

; ----------------------------------------------------------------------
; DATOS leido_BE98: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbe98..0xbe99  (1 bytes)
DATA_leido_BE98:
	defb 002h	; be98

; ----------------------------------------------------------------------
; DATOS leido_BE99: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xbe99..0xbea6  (13 bytes)
DATA_leido_BE99:
	defb 0d2h,000h,0d3h,080h,0d2h,000h,02ch,032h,030h,0c0h,0ech,0f3h,0eah	; be99  ......,20....

; ----------------------------------------------------------------------
; DATOS leido_BEA6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbea6..0xbea7  (1 bytes)
DATA_leido_BEA6:
	defb 001h	; bea6

; ----------------------------------------------------------------------
; DATOS leido_BEA7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbea7..0xbea9  (2 bytes)
DATA_leido_BEA7:
	defb 031h,0eah	; bea7

; ----------------------------------------------------------------------
; DATOS leido_BEA9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbea9..0xbeaa  (1 bytes)
DATA_leido_BEA9:
	defb 002h	; bea9

; ----------------------------------------------------------------------
; DATOS leido_BEAA: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbeaa..0xbeac  (2 bytes)
DATA_leido_BEAA:
	defb 031h,0eah	; beaa

; ----------------------------------------------------------------------
; DATOS leido_BEAC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbeac..0xbead  (1 bytes)
DATA_leido_BEAC:
	defb 003h	; beac

; ----------------------------------------------------------------------
; DATOS leido_BEAD: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbead..0xbeaf  (2 bytes)
DATA_leido_BEAD:
	defb 031h,0eah	; bead

; ----------------------------------------------------------------------
; DATOS leido_BEAF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbeaf..0xbeb0  (1 bytes)
DATA_leido_BEAF:
	defb 004h	; beaf

; ----------------------------------------------------------------------
; DATOS leido_BEB0: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbeb0..0xbeb2  (2 bytes)
DATA_leido_BEB0:
	defb 031h,0eah	; beb0

; ----------------------------------------------------------------------
; DATOS leido_BEB2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbeb2..0xbeb3  (1 bytes)
DATA_leido_BEB2:
	defb 005h	; beb2

; ----------------------------------------------------------------------
; DATOS leido_BEB3: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbeb3..0xbeb5  (2 bytes)
DATA_leido_BEB3:
	defb 031h,0eah	; beb3

; ----------------------------------------------------------------------
; DATOS leido_BEB5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbeb5..0xbeb6  (1 bytes)
DATA_leido_BEB5:
	defb 006h	; beb5

; ----------------------------------------------------------------------
; DATOS leido_BEB6: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbeb6..0xbeb8  (2 bytes)
DATA_leido_BEB6:
	defb 030h,0fdh	; beb6

; ----------------------------------------------------------------------
; DATOS leido_BEB8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbeb8..0xbeba  (2 bytes)
DATA_leido_BEB8:
	defb 090h,0beh	; beb8

; ----------------------------------------------------------------------
; DATOS leido_BEBA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbeba..0xbebb  (1 bytes)
DATA_leido_BEBA:
	defb 0feh	; beba

; ----------------------------------------------------------------------
; DATOS leido_BEBB: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xbebb..0xbebc  (1 bytes)
DATA_leido_BEBB:
	defb 001h	; bebb

; ----------------------------------------------------------------------
; DATOS leido_BEBC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbebc..0xbebd  (1 bytes)
DATA_leido_BEBC:
	defb 0f8h	; bebc

; ----------------------------------------------------------------------
; DATOS leido_BEBD: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xbebd..0xbebe  (1 bytes)
DATA_leido_BEBD:
	defb 002h	; bebd

; ----------------------------------------------------------------------
; DATOS leido_BEBE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbebe..0xbebf  (1 bytes)
DATA_leido_BEBE:
	defb 0f1h	; bebe

; ----------------------------------------------------------------------
; DATOS leido_BEBF: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbebf..0xbec0  (1 bytes)
DATA_leido_BEBF:
	defb 049h	; bebf

; ----------------------------------------------------------------------
; DATOS leido_BEC0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbec0..0xbec1  (1 bytes)
DATA_leido_BEC0:
	defb 0f2h	; bec0

; ----------------------------------------------------------------------
; DATOS leido_BEC1: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xbec1..0xbec2  (1 bytes)
DATA_leido_BEC1:
	defb 008h	; bec1

; ----------------------------------------------------------------------
; DATOS leido_BEC2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbec2..0xbec3  (1 bytes)
DATA_leido_BEC2:
	defb 0e9h	; bec2

; ----------------------------------------------------------------------
; DATOS leido_BEC3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xbec3..0xbec4  (1 bytes)
DATA_leido_BEC3:
	defb 007h	; bec3

; ----------------------------------------------------------------------
; DATOS leido_BEC4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbec4..0xbec5  (1 bytes)
DATA_leido_BEC4:
	defb 0eah	; bec4

; ----------------------------------------------------------------------
; DATOS leido_BEC5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbec5..0xbec6  (1 bytes)
DATA_leido_BEC5:
	defb 00ch	; bec5

; ----------------------------------------------------------------------
; DATOS leido_BEC6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbec6..0xbec7  (1 bytes)
DATA_leido_BEC6:
	defb 0ebh	; bec6

; ----------------------------------------------------------------------
; DATOS leido_BEC7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbec7..0xbec8  (1 bytes)
DATA_leido_BEC7:
	defb 048h	; bec7

; ----------------------------------------------------------------------
; DATOS leido_BEC8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbec8..0xbec9  (1 bytes)
DATA_leido_BEC8:
	defb 040h	; bec8

; ----------------------------------------------------------------------
; DATOS leido_BEC9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbec9..0xbeca  (1 bytes)
DATA_leido_BEC9:
	defb 0dbh	; bec9

; ----------------------------------------------------------------------
; DATOS leido_BECA: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbeca..0xbecb  (1 bytes)
DATA_leido_BECA:
	defb 002h	; beca

; ----------------------------------------------------------------------
; DATOS leido_BECB: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xbecb..0xbed5  (10 bytes)
DATA_leido_BECB:
	defb 0d4h,0a1h,0d3h,00dh,0d4h,0a1h,0d3h,003h,039h,0fbh	; becb  ........9.

; ----------------------------------------------------------------------
; DATOS leido_BED5: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbed5..0xbed8  (3 bytes)
DATA_leido_BED5:
	defb 003h,0cbh,0beh	; bed5

; ----------------------------------------------------------------------
; DATOS leido_BED8: 24 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (24 bytes)
;   0xbed8..0xbef0  (24 bytes)
DATA_leido_BED8:
	defb 000h,050h,080h,0d2h,000h,0d3h,0a0h,050h,0a0h,0d2h,020h,000h,0d3h,070h,0d2h,000h	; bed8  .P.....P.. ..p..
	defb 030h,020h,0d3h,0a0h,0d2h,020h,050h,0fch	; bee8  0 ... P.

; ----------------------------------------------------------------------
; DATOS leido_BEF0: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbef0..0xbef3  (3 bytes)
DATA_leido_BEF0:
	defb 003h,0bah,0beh	; bef0

; ----------------------------------------------------------------------
; DATOS leido_BEF3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbef3..0xbef4  (1 bytes)
DATA_leido_BEF3:
	defb 0f1h	; bef3

; ----------------------------------------------------------------------
; DATOS leido_BEF4: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xbef4..0xbef5  (1 bytes)
DATA_leido_BEF4:
	defb 044h	; bef4

; ----------------------------------------------------------------------
; DATOS leido_BEF5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbef5..0xbef6  (1 bytes)
DATA_leido_BEF5:
	defb 0eah	; bef5

; ----------------------------------------------------------------------
; DATOS leido_BEF6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbef6..0xbef7  (1 bytes)
DATA_leido_BEF6:
	defb 00ch	; bef6

; ----------------------------------------------------------------------
; DATOS leido_BEF7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbef7..0xbef8  (1 bytes)
DATA_leido_BEF7:
	defb 0ebh	; bef7

; ----------------------------------------------------------------------
; DATOS leido_BEF8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xbef8..0xbef9  (1 bytes)
DATA_leido_BEF8:
	defb 068h	; bef8

; ----------------------------------------------------------------------
; DATOS leido_BEF9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xbef9..0xbefa  (1 bytes)
DATA_leido_BEF9:
	defb 040h	; bef9

; ----------------------------------------------------------------------
; DATOS leido_BEFA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbefa..0xbefb  (1 bytes)
DATA_leido_BEFA:
	defb 0dbh	; befa

; ----------------------------------------------------------------------
; DATOS leido_BEFB: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xbefb..0xbefc  (1 bytes)
DATA_leido_BEFB:
	defb 001h	; befb

; ----------------------------------------------------------------------
; DATOS leido_BEFC: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xbefc..0xbf08  (12 bytes)
DATA_leido_BEFC:
	defb 0d3h,080h,050h,080h,0ach,0d2h,002h,000h,0c0h,0ech,0f3h,0eah	; befc  ..P.........

; ----------------------------------------------------------------------
; DATOS leido_BF08: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbf08..0xbf09  (1 bytes)
DATA_leido_BF08:
	defb 001h	; bf08

; ----------------------------------------------------------------------
; DATOS leido_BF09: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbf09..0xbf0b  (2 bytes)
DATA_leido_BF09:
	defb 001h,0eah	; bf09

; ----------------------------------------------------------------------
; DATOS leido_BF0B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbf0b..0xbf0c  (1 bytes)
DATA_leido_BF0B:
	defb 002h	; bf0b

; ----------------------------------------------------------------------
; DATOS leido_BF0C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbf0c..0xbf0e  (2 bytes)
DATA_leido_BF0C:
	defb 001h,0eah	; bf0c

; ----------------------------------------------------------------------
; DATOS leido_BF0E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbf0e..0xbf0f  (1 bytes)
DATA_leido_BF0E:
	defb 003h	; bf0e

; ----------------------------------------------------------------------
; DATOS leido_BF0F: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbf0f..0xbf11  (2 bytes)
DATA_leido_BF0F:
	defb 001h,0eah	; bf0f

; ----------------------------------------------------------------------
; DATOS leido_BF11: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbf11..0xbf12  (1 bytes)
DATA_leido_BF11:
	defb 004h	; bf11

; ----------------------------------------------------------------------
; DATOS leido_BF12: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbf12..0xbf14  (2 bytes)
DATA_leido_BF12:
	defb 001h,0eah	; bf12

; ----------------------------------------------------------------------
; DATOS leido_BF14: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbf14..0xbf15  (1 bytes)
DATA_leido_BF14:
	defb 005h	; bf14

; ----------------------------------------------------------------------
; DATOS leido_BF15: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbf15..0xbf17  (2 bytes)
DATA_leido_BF15:
	defb 001h,0eah	; bf15

; ----------------------------------------------------------------------
; DATOS leido_BF17: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xbf17..0xbf18  (1 bytes)
DATA_leido_BF17:
	defb 006h	; bf17

; ----------------------------------------------------------------------
; DATOS leido_BF18: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xbf18..0xbf1a  (2 bytes)
DATA_leido_BF18:
	defb 000h,0fdh	; bf18

; ----------------------------------------------------------------------
; DATOS leido_BF1A: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xbf1a..0xbf1c  (2 bytes)
DATA_leido_BF1A:
	defb 0f3h,0beh	; bf1a

; ----------------------------------------------------------------------
; DATOS leido_BF1C: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbf1c..0xbf1f  (3 bytes)
DATA_leido_BF1C:
	defb 050h,000h,0fbh	; bf1c

; ----------------------------------------------------------------------
; DATOS leido_BF1F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbf1f..0xbf22  (3 bytes)
DATA_leido_BF1F:
	defb 008h,01ch,0bfh	; bf1f

; ----------------------------------------------------------------------
; DATOS leido_BF22: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xbf22..0xbf25  (3 bytes)
DATA_leido_BF22:
	defb 080h,030h,0fbh	; bf22

; ----------------------------------------------------------------------
; DATOS leido_BF25: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xbf25..0xbf28  (3 bytes)
DATA_leido_BF25:
	defb 008h,022h,0bfh	; bf25

; ----------------------------------------------------------------------
; DATOS leido_BF28: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xbf28..0xbf29  (1 bytes)
DATA_leido_BF28:
	defb 0fah	; bf28

; ----------------------------------------------------------------------
; DATOS relleno_ff: 215 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (215 bytes)
;   0xbf29..0xc000  (215 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf29  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf39  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf49  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf59  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf69  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf79  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf89  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf99  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfa9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfb9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfc9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfd9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfe9  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bff9

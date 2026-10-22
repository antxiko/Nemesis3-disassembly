; ==========================================================================
; NEMESIS 3 - Konami (1988) - MSX - MegaROM RC-764 de 256 KB (Konami SCC) - banco 13 (se ejecuta en 0xa000)
; ==========================================================================
; Generado por tools/mkasm.py a partir del trazado de flujo real.
; Los comentarios provienen de tools/../src/*.notes y estan anclados a
; direccion, de modo que sobreviven a un retrazado.
; ==========================================================================

	org 0x0a000


; ----------------------------------------------------------------------
; DATOS leido_A000: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa000..0xa002  (2 bytes)
DATA_leido_A000:
	defb 0ffh,0feh	; a000

; ----------------------------------------------------------------------
; DATOS leido_A002: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa002..0xa003  (1 bytes)
DATA_leido_A002:
	defb 001h	; a002

; ----------------------------------------------------------------------
; DATOS leido_A003: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa003..0xa004  (1 bytes)
DATA_leido_A003:
	defb 0eeh	; a003

; ----------------------------------------------------------------------
; DATOS leido_A004: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xa004..0xa005  (1 bytes)
DATA_leido_A004:
	defb 001h	; a004

; ----------------------------------------------------------------------
; DATOS leido_A005: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa005..0xa006  (1 bytes)
DATA_leido_A005:
	defb 0e9h	; a005

; ----------------------------------------------------------------------
; DATOS leido_A006: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa006..0xa007  (1 bytes)
DATA_leido_A006:
	defb 007h	; a006

; ----------------------------------------------------------------------
; DATOS leido_A007: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa007..0xa008  (1 bytes)
DATA_leido_A007:
	defb 0eah	; a007

; ----------------------------------------------------------------------
; DATOS leido_A008: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa008..0xa009  (1 bytes)
DATA_leido_A008:
	defb 007h	; a008

; ----------------------------------------------------------------------
; DATOS leido_A009: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa009..0xa00a  (1 bytes)
DATA_leido_A009:
	defb 0ebh	; a009

; ----------------------------------------------------------------------
; DATOS leido_A00A: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa00a..0xa00b  (1 bytes)
DATA_leido_A00A:
	defb 003h	; a00a

; ----------------------------------------------------------------------
; DATOS leido_A00B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa00b..0xa00c  (1 bytes)
DATA_leido_A00B:
	defb 070h	; a00b

; ----------------------------------------------------------------------
; DATOS leido_A00C: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa00c..0xa013  (7 bytes)
DATA_leido_A00C:
	defb 0d1h,0b0h,0d0h,020h,070h,0b0h,0ebh	; a00c

; ----------------------------------------------------------------------
; DATOS leido_A013: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa013..0xa014  (1 bytes)
DATA_leido_A013:
	defb 004h	; a013

; ----------------------------------------------------------------------
; DATOS leido_A014: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa014..0xa015  (1 bytes)
DATA_leido_A014:
	defb 070h	; a014

; ----------------------------------------------------------------------
; DATOS leido_A015: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (3
;   bytes)
;   0xa015..0xa018  (3 bytes)
DATA_leido_A015:
	defb 077h,0ffh,0feh	; a015

; ----------------------------------------------------------------------
; DATOS leido_A018: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa018..0xa019  (1 bytes)
DATA_leido_A018:
	defb 001h	; a018

; ----------------------------------------------------------------------
; DATOS leido_A019: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa019..0xa01a  (1 bytes)
DATA_leido_A019:
	defb 0f8h	; a019

; ----------------------------------------------------------------------
; DATOS leido_A01A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa01a..0xa01b  (1 bytes)
DATA_leido_A01A:
	defb 01dh	; a01a

; ----------------------------------------------------------------------
; DATOS leido_A01B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa01b..0xa01c  (1 bytes)
DATA_leido_A01B:
	defb 0e9h	; a01b

; ----------------------------------------------------------------------
; DATOS leido_A01C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa01c..0xa01d  (1 bytes)
DATA_leido_A01C:
	defb 007h	; a01c

; ----------------------------------------------------------------------
; DATOS leido_A01D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa01d..0xa01e  (1 bytes)
DATA_leido_A01D:
	defb 0eah	; a01d

; ----------------------------------------------------------------------
; DATOS leido_A01E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa01e..0xa01f  (1 bytes)
DATA_leido_A01E:
	defb 008h	; a01e

; ----------------------------------------------------------------------
; DATOS leido_A01F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa01f..0xa020  (1 bytes)
DATA_leido_A01F:
	defb 0ebh	; a01f

; ----------------------------------------------------------------------
; DATOS leido_A020: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa020..0xa021  (1 bytes)
DATA_leido_A020:
	defb 012h	; a020

; ----------------------------------------------------------------------
; DATOS leido_A021: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa021..0xa022  (1 bytes)
DATA_leido_A021:
	defb 070h	; a021

; ----------------------------------------------------------------------
; DATOS leido_A022: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa022..0xa029  (7 bytes)
DATA_leido_A022:
	defb 0d3h,0b0h,0d2h,020h,070h,0b0h,0eah	; a022

; ----------------------------------------------------------------------
; DATOS leido_A029: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa029..0xa02a  (1 bytes)
DATA_leido_A029:
	defb 005h	; a029

; ----------------------------------------------------------------------
; DATOS leido_A02A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa02a..0xa02b  (1 bytes)
DATA_leido_A02A:
	defb 0ebh	; a02a

; ----------------------------------------------------------------------
; DATOS leido_A02B: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa02b..0xa02c  (1 bytes)
DATA_leido_A02B:
	defb 006h	; a02b

; ----------------------------------------------------------------------
; DATOS leido_A02C: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa02c..0xa02d  (1 bytes)
DATA_leido_A02C:
	defb 070h	; a02c

; ----------------------------------------------------------------------
; DATOS leido_A02D: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (3
;   bytes)
;   0xa02d..0xa030  (3 bytes)
DATA_leido_A02D:
	defb 077h,0ffh,0feh	; a02d

; ----------------------------------------------------------------------
; DATOS leido_A030: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa030..0xa031  (1 bytes)
DATA_leido_A030:
	defb 001h	; a030

; ----------------------------------------------------------------------
; DATOS leido_A031: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa031..0xa032  (1 bytes)
DATA_leido_A031:
	defb 0f8h	; a031

; ----------------------------------------------------------------------
; DATOS leido_A032: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa032..0xa033  (1 bytes)
DATA_leido_A032:
	defb 01dh	; a032

; ----------------------------------------------------------------------
; DATOS leido_A033: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa033..0xa034  (1 bytes)
DATA_leido_A033:
	defb 0f2h	; a033

; ----------------------------------------------------------------------
; DATOS leido_A034: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa034..0xa035  (1 bytes)
DATA_leido_A034:
	defb 020h	; a034

; ----------------------------------------------------------------------
; DATOS leido_A035: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa035..0xa036  (1 bytes)
DATA_leido_A035:
	defb 0f1h	; a035

; ----------------------------------------------------------------------
; DATOS leido_A036: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa036..0xa037  (1 bytes)
DATA_leido_A036:
	defb 041h	; a036

; ----------------------------------------------------------------------
; DATOS leido_A037: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa037..0xa038  (1 bytes)
DATA_leido_A037:
	defb 0e9h	; a037

; ----------------------------------------------------------------------
; DATOS leido_A038: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa038..0xa039  (1 bytes)
DATA_leido_A038:
	defb 007h	; a038

; ----------------------------------------------------------------------
; DATOS leido_A039: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa039..0xa03a  (1 bytes)
DATA_leido_A039:
	defb 0eah	; a039

; ----------------------------------------------------------------------
; DATOS leido_A03A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa03a..0xa03b  (1 bytes)
DATA_leido_A03A:
	defb 009h	; a03a

; ----------------------------------------------------------------------
; DATOS leido_A03B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa03b..0xa03c  (1 bytes)
DATA_leido_A03B:
	defb 0ddh	; a03b

; ----------------------------------------------------------------------
; DATOS leido_A03C: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa03c..0xa03e  (2 bytes)
DATA_leido_A03C:
	defb 025h,032h	; a03c

; ----------------------------------------------------------------------
; DATOS leido_A03E: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa03e..0xa045  (7 bytes)
DATA_leido_A03E:
	defb 0d2h,0b0h,0d1h,020h,070h,0b0h,0eah	; a03e

; ----------------------------------------------------------------------
; DATOS leido_A045: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa045..0xa046  (1 bytes)
DATA_leido_A045:
	defb 008h	; a045

; ----------------------------------------------------------------------
; DATOS leido_A046: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa046..0xa047  (1 bytes)
DATA_leido_A046:
	defb 0ebh	; a046

; ----------------------------------------------------------------------
; DATOS leido_A047: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa047..0xa048  (1 bytes)
DATA_leido_A047:
	defb 003h	; a047

; ----------------------------------------------------------------------
; DATOS leido_A048: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa048..0xa049  (1 bytes)
DATA_leido_A048:
	defb 070h	; a048

; ----------------------------------------------------------------------
; DATOS leido_A049: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (3
;   bytes)
;   0xa049..0xa04c  (3 bytes)
DATA_leido_A049:
	defb 077h,0ffh,0feh	; a049

; ----------------------------------------------------------------------
; DATOS leido_A04C: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa04c..0xa04d  (1 bytes)
DATA_leido_A04C:
	defb 001h	; a04c

; ----------------------------------------------------------------------
; DATOS leido_A04D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa04d..0xa04e  (1 bytes)
DATA_leido_A04D:
	defb 0f8h	; a04d

; ----------------------------------------------------------------------
; DATOS leido_A04E: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa04e..0xa04f  (1 bytes)
DATA_leido_A04E:
	defb 01dh	; a04e

; ----------------------------------------------------------------------
; DATOS leido_A04F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa04f..0xa050  (1 bytes)
DATA_leido_A04F:
	defb 0e9h	; a04f

; ----------------------------------------------------------------------
; DATOS leido_A050: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa050..0xa051  (1 bytes)
DATA_leido_A050:
	defb 007h	; a050

; ----------------------------------------------------------------------
; DATOS leido_A051: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa051..0xa052  (1 bytes)
DATA_leido_A051:
	defb 0eah	; a051

; ----------------------------------------------------------------------
; DATOS leido_A052: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa052..0xa053  (1 bytes)
DATA_leido_A052:
	defb 007h	; a052

; ----------------------------------------------------------------------
; DATOS leido_A053: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa053..0xa054  (1 bytes)
DATA_leido_A053:
	defb 0ebh	; a053

; ----------------------------------------------------------------------
; DATOS leido_A054: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa054..0xa055  (1 bytes)
DATA_leido_A054:
	defb 003h	; a054

; ----------------------------------------------------------------------
; DATOS leido_A055: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa055..0xa056  (1 bytes)
DATA_leido_A055:
	defb 071h	; a055

; ----------------------------------------------------------------------
; DATOS leido_A056: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa056..0xa05d  (7 bytes)
DATA_leido_A056:
	defb 0d2h,020h,070h,0b0h,0d1h,020h,0eah	; a056

; ----------------------------------------------------------------------
; DATOS leido_A05D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa05d..0xa05e  (1 bytes)
DATA_leido_A05D:
	defb 008h	; a05d

; ----------------------------------------------------------------------
; DATOS leido_A05E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa05e..0xa05f  (1 bytes)
DATA_leido_A05E:
	defb 0ebh	; a05e

; ----------------------------------------------------------------------
; DATOS leido_A05F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa05f..0xa060  (1 bytes)
DATA_leido_A05F:
	defb 003h	; a05f

; ----------------------------------------------------------------------
; DATOS leido_A060: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa060..0xa061  (1 bytes)
DATA_leido_A060:
	defb 070h	; a060

; ----------------------------------------------------------------------
; DATOS leido_A061: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (4
;   bytes)
;   0xa061..0xa065  (4 bytes)
DATA_leido_A061:
	defb 0d2h,0b7h,0ffh,0feh	; a061

; ----------------------------------------------------------------------
; DATOS leido_A065: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa065..0xa066  (1 bytes)
DATA_leido_A065:
	defb 001h	; a065

; ----------------------------------------------------------------------
; DATOS leido_A066: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa066..0xa067  (1 bytes)
DATA_leido_A066:
	defb 0eeh	; a066

; ----------------------------------------------------------------------
; DATOS leido_A067: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xa067..0xa068  (1 bytes)
DATA_leido_A067:
	defb 001h	; a067

; ----------------------------------------------------------------------
; DATOS leido_A068: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa068..0xa069  (1 bytes)
DATA_leido_A068:
	defb 0f8h	; a068

; ----------------------------------------------------------------------
; DATOS leido_A069: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa069..0xa06a  (1 bytes)
DATA_leido_A069:
	defb 01dh	; a069

; ----------------------------------------------------------------------
; DATOS leido_A06A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa06a..0xa06b  (1 bytes)
DATA_leido_A06A:
	defb 0e9h	; a06a

; ----------------------------------------------------------------------
; DATOS leido_A06B: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa06b..0xa06c  (1 bytes)
DATA_leido_A06B:
	defb 007h	; a06b

; ----------------------------------------------------------------------
; DATOS leido_A06C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa06c..0xa06d  (1 bytes)
DATA_leido_A06C:
	defb 0eah	; a06c

; ----------------------------------------------------------------------
; DATOS leido_A06D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa06d..0xa06e  (1 bytes)
DATA_leido_A06D:
	defb 007h	; a06d

; ----------------------------------------------------------------------
; DATOS leido_A06E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa06e..0xa06f  (1 bytes)
DATA_leido_A06E:
	defb 0ddh	; a06e

; ----------------------------------------------------------------------
; DATOS leido_A06F: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa06f..0xa071  (2 bytes)
DATA_leido_A06F:
	defb 027h,032h	; a06f

; ----------------------------------------------------------------------
; DATOS leido_A071: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa071..0xa077  (6 bytes)
DATA_leido_A071:
	defb 0d2h,0b1h,0d1h,020h,070h,0eah	; a071

; ----------------------------------------------------------------------
; DATOS leido_A077: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa077..0xa078  (1 bytes)
DATA_leido_A077:
	defb 008h	; a077

; ----------------------------------------------------------------------
; DATOS leido_A078: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa078..0xa079  (1 bytes)
DATA_leido_A078:
	defb 0ebh	; a078

; ----------------------------------------------------------------------
; DATOS leido_A079: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa079..0xa07a  (1 bytes)
DATA_leido_A079:
	defb 003h	; a079

; ----------------------------------------------------------------------
; DATOS leido_A07A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa07a..0xa07b  (1 bytes)
DATA_leido_A07A:
	defb 070h	; a07a

; ----------------------------------------------------------------------
; DATOS leido_A07B: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa07b..0xa07e  (3 bytes)
DATA_leido_A07B:
	defb 076h,0ffh,0feh	; a07b

; ----------------------------------------------------------------------
; DATOS leido_A07E: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa07e..0xa07f  (1 bytes)
DATA_leido_A07E:
	defb 001h	; a07e

; ----------------------------------------------------------------------
; DATOS leido_A07F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa07f..0xa080  (1 bytes)
DATA_leido_A07F:
	defb 0f8h	; a07f

; ----------------------------------------------------------------------
; DATOS leido_A080: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa080..0xa081  (1 bytes)
DATA_leido_A080:
	defb 01dh	; a080

; ----------------------------------------------------------------------
; DATOS leido_A081: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa081..0xa082  (1 bytes)
DATA_leido_A081:
	defb 0e9h	; a081

; ----------------------------------------------------------------------
; DATOS leido_A082: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa082..0xa083  (1 bytes)
DATA_leido_A082:
	defb 007h	; a082

; ----------------------------------------------------------------------
; DATOS leido_A083: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa083..0xa084  (1 bytes)
DATA_leido_A083:
	defb 0eah	; a083

; ----------------------------------------------------------------------
; DATOS leido_A084: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa084..0xa085  (1 bytes)
DATA_leido_A084:
	defb 006h	; a084

; ----------------------------------------------------------------------
; DATOS leido_A085: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa085..0xa086  (1 bytes)
DATA_leido_A085:
	defb 0ebh	; a085

; ----------------------------------------------------------------------
; DATOS leido_A086: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa086..0xa087  (1 bytes)
DATA_leido_A086:
	defb 004h	; a086

; ----------------------------------------------------------------------
; DATOS leido_A087: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa087..0xa088  (1 bytes)
DATA_leido_A087:
	defb 070h	; a087

; ----------------------------------------------------------------------
; DATOS leido_A088: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa088..0xa08f  (7 bytes)
DATA_leido_A088:
	defb 0d1h,020h,070h,0b0h,0d0h,020h,0ebh	; a088

; ----------------------------------------------------------------------
; DATOS leido_A08F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa08f..0xa090  (1 bytes)
DATA_leido_A08F:
	defb 003h	; a08f

; ----------------------------------------------------------------------
; DATOS leido_A090: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa090..0xa091  (1 bytes)
DATA_leido_A090:
	defb 070h	; a090

; ----------------------------------------------------------------------
; DATOS leido_A091: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 1 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (4
;   bytes)
;   0xa091..0xa095  (4 bytes)
DATA_leido_A091:
	defb 0d1h,0b7h,0ffh,0feh	; a091

; ----------------------------------------------------------------------
; DATOS leido_A095: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa095..0xa096  (1 bytes)
DATA_leido_A095:
	defb 001h	; a095

; ----------------------------------------------------------------------
; DATOS leido_A096: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa096..0xa097  (1 bytes)
DATA_leido_A096:
	defb 0f8h	; a096

; ----------------------------------------------------------------------
; DATOS leido_A097: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa097..0xa098  (1 bytes)
DATA_leido_A097:
	defb 01dh	; a097

; ----------------------------------------------------------------------
; DATOS leido_A098: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa098..0xa099  (1 bytes)
DATA_leido_A098:
	defb 0e9h	; a098

; ----------------------------------------------------------------------
; DATOS leido_A099: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa099..0xa09a  (1 bytes)
DATA_leido_A099:
	defb 007h	; a099

; ----------------------------------------------------------------------
; DATOS leido_A09A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa09a..0xa09b  (1 bytes)
DATA_leido_A09A:
	defb 0eah	; a09a

; ----------------------------------------------------------------------
; DATOS leido_A09B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa09b..0xa09c  (1 bytes)
DATA_leido_A09B:
	defb 008h	; a09b

; ----------------------------------------------------------------------
; DATOS leido_A09C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa09c..0xa09d  (1 bytes)
DATA_leido_A09C:
	defb 0ebh	; a09c

; ----------------------------------------------------------------------
; DATOS leido_A09D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa09d..0xa09e  (1 bytes)
DATA_leido_A09D:
	defb 004h	; a09d

; ----------------------------------------------------------------------
; DATOS leido_A09E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa09e..0xa09f  (1 bytes)
DATA_leido_A09E:
	defb 070h	; a09e

; ----------------------------------------------------------------------
; DATOS leido_A09F: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xa09f..0xa0a6  (7 bytes)
DATA_leido_A09F:
	defb 0d1h,0b0h,0d0h,020h,070h,0b0h,0ebh	; a09f

; ----------------------------------------------------------------------
; DATOS leido_A0A6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa0a6..0xa0a7  (1 bytes)
DATA_leido_A0A6:
	defb 003h	; a0a6

; ----------------------------------------------------------------------
; DATOS leido_A0A7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa0a7..0xa0a8  (1 bytes)
DATA_leido_A0A7:
	defb 070h	; a0a7

; ----------------------------------------------------------------------
; DATOS leido_A0A8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa0a8..0xa0a9  (1 bytes)
DATA_leido_A0A8:
	defb 077h	; a0a8

; ----------------------------------------------------------------------
; DATOS sin identificar  0xa0a9..0xa8f4  (2123 bytes)
DATA_A0A9:
	defb 0ffh,0feh,004h,0e9h,008h,0d0h,000h,0fbh,040h,0aah,0a0h,0feh,004h,090h,000h,000h	; a0a9  ........@.......
	defb 000h,090h,000h,000h,000h,090h,000h,000h,000h,0feh,010h,093h,0fbh,003h,0b4h,0a0h	; a0b9  ................
	defb 0feh,004h,090h,000h,000h,000h,090h,000h,000h,000h,0e9h,001h,035h,034h,034h,0e9h	; a0c9  ............544.
	defb 008h,030h,030h,0feh,010h,093h,0feh,004h,0e9h,008h,0d0h,030h,000h,000h,000h,030h	; a0d9  .00........0...0
	defb 000h,000h,000h,030h,000h,000h,010h,0feh,010h,093h,0feh,004h,0fbh,008h,0dfh,0a0h	; a0e9  ...0............
	defb 0feh,004h,0e9h,008h,0d0h,030h,000h,000h,000h,030h,000h,000h,000h,030h,000h,000h	; a0f9  .....0...0...0..
	defb 010h,0feh,010h,093h,0feh,004h,0fbh,008h,0f9h,0a0h,0feh,004h,0e9h,008h,0d0h,090h	; a109  ................
	defb 000h,000h,000h,090h,000h,000h,000h,090h,000h,000h,000h,090h,000h,000h,000h,0fbh	; a119  ................
	defb 002h,013h,0a1h,030h,000h,0fbh,016h,02dh,0a1h,010h,031h,031h,0feh,010h,0d0h,093h	; a129  ...0...-..11....
	defb 0fdh,0dfh,0a0h,0feh,001h,0f1h,051h,0e9h,010h,0eah,001h,0d3h,070h,0eah,002h,070h	; a139  ......Q.....p..p
	defb 0eah,003h,070h,0eah,004h,070h,0eah,005h,071h,0eah,006h,073h,0eah,007h,073h,0eah	; a149  ..p..p..q..s..s.
	defb 004h,071h,0eah,001h,030h,0eah,002h,030h,0eah,003h,030h,0eah,004h,030h,0eah,005h	; a159  .q..0..0..0..0..
	defb 031h,0eah,006h,033h,0eah,007h,033h,0eah,004h,031h,0eah,001h,070h,0eah,002h,070h	; a169  1..3..3..1..p..p
	defb 0eah,003h,070h,0eah,004h,070h,0eah,005h,071h,0eah,006h,073h,0eah,007h,073h,0eah	; a179  ..p..p..q..s..s.
	defb 004h,071h,0eah,001h,070h,0eah,002h,070h,0eah,003h,070h,0eah,004h,070h,0eah,005h	; a189  .q..p..p..p..p..
	defb 071h,0eah,006h,073h,0eah,007h,073h,0eah,008h,0ddh,028h,033h,0dbh,002h,0e9h,010h	; a199  q..s..s...(3....
	defb 051h,0f2h,018h,0e9h,008h,0eah,008h,0ebh,001h,010h,0ddh,008h,043h,0dbh,003h,0d1h	; a1a9  Q...........C...
	defb 032h,030h,021h,020h,009h,0d1h,031h,030h,021h,020h,009h,0d1h,022h,0d2h,092h,0d1h	; a1b9  20! ..10! .."...
	defb 029h,0d1h,022h,0d2h,092h,0d1h,029h,0d1h,012h,0d2h,082h,0d1h,015h,0e9h,001h,0d2h	; a1c9  )."...).........
	defb 015h,055h,084h,0d1h,014h,054h,084h,0e9h,008h,0d0h,01fh,0d1h,002h,0d2h,072h,0d1h	; a1d9  .U...T........r.
	defb 00fh,0c1h,003h,022h,0f2h,018h,0f1h,051h,0e9h,008h,0eah,008h,0ddh,008h,043h,0dbh	; a1e9  ..."...Q......C.
	defb 003h,0d1h,072h,070h,051h,050h,039h,0d1h,071h,070h,051h,050h,039h,0d1h,062h,022h	; a1f9  ..rpQP9.qpQP9.b"
	defb 069h,0d1h,062h,022h,069h,0d1h,052h,012h,055h,0e9h,001h,0d2h,015h,055h,084h,0d1h	; a209  i.b"i.R.U....U..
	defb 014h,054h,084h,0e9h,008h,0d0h,01fh,0d1h,002h,0d2h,072h,0e9h,014h,0d1h,009h,0e9h	; a219  .T........r.....
	defb 008h,0d1h,007h,023h,001h,021h,035h,073h,071h,051h,071h,0a1h,0d0h,005h,005h,005h	; a229  ...#.!5sqQq.....
	defb 005h,031h,031h,021h,0fdh,0aah,0a1h,0feh,001h,0e9h,004h,0c0h,0eah,007h,0ebh,001h	; a239  .11!............
	defb 010h,0e9h,008h,0f9h,0f6h,0a7h,0fbh,004h,00ch,0a8h,0d1h,070h,0d0h,070h,0d1h,020h	; a249  ...........p.p.
	defb 0d0h,020h,0d1h,040h,0d0h,040h,0d1h,000h,0d0h,000h,0fbh,004h,053h,0a2h,0d1h,070h	; a259  . .@.@......S..p
	defb 0d0h,070h,0d1h,020h,0d0h,020h,0d1h,030h,0d0h,030h,0d1h,000h,0d0h,000h,0fbh,003h	; a269  .p. . .0.0......
	defb 067h,0a2h,0f9h,01dh,0a8h,0f2h,018h,0f1h,052h,0e9h,008h,0eah,008h,0ebh,001h,010h	; a279  g.......R.......
	defb 0ddh,008h,043h,0dbh,003h,0d2h,072h,070h,051h,050h,039h,0d2h,071h,070h,051h,050h	; a289  ..C...rpQP9.qpQP
	defb 039h,0d2h,062h,022h,069h,0d2h,062h,022h,069h,052h,012h,055h,0e9h,001h,0d3h,085h	; a299  9.b"i.b"iR.U....
	defb 0d2h,015h,054h,084h,0d1h,014h,054h,0e9h,008h,0d1h,05fh,0d2h,042h,002h,046h,080h	; a2a9  ..T...T..._.B.F.
	defb 070h,050h,047h,083h,0a2h,0f1h,051h,0d1h,032h,030h,021h,020h,009h,0d1h,031h,030h	; a2b9  pPG...Q.20! ..10
	defb 021h,020h,009h,0d2h,092h,062h,099h,0d2h,092h,062h,099h,082h,052h,085h,0e9h,001h	; a2c9  ! ...b...b..R...
	defb 0d3h,085h,0d2h,015h,054h,084h,0d1h,014h,054h,0e9h,008h,0d1h,05fh,0d2h,042h,002h	; a2d9  ....T...T..._.B.
	defb 046h,080h,070h,050h,04ch,070h,050h,0f1h,052h,0d2h,037h,053h,031h,051h,075h,0d1h	; a2e9  F.pPLpP.R.7S1Qu.
	defb 009h,001h,0d2h,085h,085h,085h,085h,0d1h,001h,001h,0d2h,0b1h,0fdh,07eh,0a2h,0feh	; a2f9  .............~..
	defb 001h,0f8h,05ch,0f1h,053h,0e9h,010h,0eah,001h,0d2h,040h,0eah,002h,040h,0eah,003h	; a309  ..\.S.....@..@..
	defb 040h,0eah,004h,040h,0eah,005h,041h,0eah,006h,043h,0eah,007h,043h,0eah,004h,041h	; a319  @..@..A..C..C..A
	defb 0eah,001h,000h,0eah,002h,000h,0eah,003h,000h,0eah,004h,000h,0eah,005h,001h,0eah	; a329  ................
	defb 006h,003h,0eah,007h,003h,0eah,004h,001h,0eah,001h,040h,0eah,002h,040h,0eah,003h	; a339  ..........@..@..
	defb 040h,0eah,004h,040h,0eah,005h,041h,0eah,006h,043h,0eah,007h,043h,0eah,004h,041h	; a349  @..@..A..C..C..A
	defb 0eah,001h,030h,0eah,002h,030h,0eah,003h,030h,0eah,004h,030h,0eah,005h,031h,0eah	; a359  ..0..0..0..0..1.
	defb 006h,033h,0eah,007h,033h,0d3h,0eah,008h,0ddh,029h,032h,0dbh,002h,0e9h,010h,0a1h	; a369  .3..3....)2.....
	defb 0f8h,01dh,0e9h,008h,0f2h,018h,0f1h,052h,0eah,007h,0ebh,011h,080h,0ddh,01fh,042h	; a379  .......R.......B
	defb 0d6h,006h,004h,0d3h,07dh,0d8h,070h,070h,0fbh,002h,089h,0a3h,0d6h,006h,004h,06dh	; a389  ....}.pp.......m
	defb 0d8h,060h,060h,0fbh,002h,095h,0a3h,0d6h,006h,004h,05bh,0f8h,00dh,0e9h,001h,0d8h	; a399  .``.......[.....
	defb 0eah,008h,0ebh,021h,080h,0d4h,015h,055h,084h,0d3h,014h,054h,084h,0e9h,008h,0eah	; a3a9  ...!...U...T....
	defb 007h,0f1h,053h,0d2h,01bh,0f0h,0d3h,010h,050h,030h,010h,0f8h,01dh,0ddh,01fh,042h	; a3b9  ..S.....P0.....B
	defb 0d6h,006h,004h,04dh,0d8h,040h,040h,047h,0ddh,027h,032h,0eah,008h,0d3h,003h,023h	; a3c9  ...M.@@G.'2....#
	defb 0eah,007h,0d6h,006h,004h,0d3h,07dh,0d8h,070h,070h,0fbh,002h,0dbh,0a3h,0d6h,006h	; a3d9  ......}.pp......
	defb 004h,06dh,0d8h,060h,060h,0fbh,002h,0e7h,0a3h,0d6h,006h,004h,05bh,0f8h,00dh,0e9h	; a3e9  .m.``.......[...
	defb 001h,0d8h,0eah,008h,0ebh,021h,080h,0d4h,015h,055h,084h,0d3h,014h,054h,084h,0e9h	; a3f9  .....!...U...T..
	defb 008h,0eah,007h,0f1h,053h,0d2h,01bh,0f0h,0d3h,010h,050h,030h,010h,0f8h,01dh,0ddh	; a409  ....S.....P0....
	defb 01fh,042h,0d6h,006h,004h,04dh,0d8h,040h,040h,04bh,0f8h,00bh,000h,040h,020h,000h	; a419  .B...M.@@K...@ .
	defb 0f8h,002h,0eah,009h,0ddh,027h,032h,0d1h,005h,023h,001h,021h,035h,073h,071h,051h	; a429  .....'2..#.!5sqQ
	defb 071h,0a1h,0d0h,005h,005h,005h,005h,0f8h,00bh,0eah,00ah,0d1h,031h,031h,023h,0fdh	; a439  q...........11#.
	defb 079h,0a3h,0feh,001h,0f8h,01dh,0f2h,017h,0f1h,041h,0e9h,008h,0eah,007h,0ebh,001h	; a449  y........A......
	defb 010h,0ddh,014h,021h,0f9h,0f6h,0a7h,0fbh,004h,00ch,0a8h,0ddh,014h,021h,0f9h,0f6h	; a459  ...!.........!..
	defb 0a7h,0fbh,003h,00ch,0a8h,0f9h,01dh,0a8h,0f8h,023h,0ebh,008h,083h,0dbh,003h,0f9h	; a469  .........#......
	defb 02dh,0a8h,0d4h,050h,080h,0d3h,000h,050h,0d4h,0a0h,0eah,00ah,0d3h,020h,050h,0a0h	; a479  -..P...P..... P.
	defb 0f9h,02dh,0a8h,003h,000h,040h,020h,000h,0ebh,001h,010h,0ddh,056h,032h,0dbh,003h	; a489  .-...@ .....V2..
	defb 0d5h,051h,0d4h,001h,051h,0d5h,073h,0d4h,021h,071h,0d5h,083h,0d4h,031h,081h,031h	; a499  .Q..Q.s.!q...1.1
	defb 085h,031h,0eah,00dh,0d5h,083h,083h,083h,083h,083h,083h,071h,071h,073h,0fdh,071h	; a4a9  .1.........qqs.q
	defb 0a4h,0feh,001h,0e9h,008h,0c0h,0f8h,01dh,0eah,005h,0ebh,001h,010h,0ddh,004h,021h	; a4b9  ...............!
	defb 0f9h,0f6h,0a7h,0fbh,003h,00ch,0a8h,0dbh,001h,0eah,004h,0d1h,070h,0d0h,070h,0eah	; a4c9  ............p.p.
	defb 003h,0d1h,020h,0d0h,020h,0eah,002h,0d1h,030h,0d0h,030h,0eah,001h,0d1h,000h,0f8h	; a4d9  .. . ...0.0.....
	defb 023h,0eah,00ch,0ebh,008h,083h,0dbh,003h,0d4h,003h,003h,003h,000h,070h,0d3h,020h	; a4e9  #............p.
	defb 0d4h,070h,0fbh,002h,0f1h,0a4h,0eah,00ch,0d5h,083h,083h,083h,080h,0d4h,000h,0d5h	; a4f9  .p..............
	defb 0a0h,080h,083h,083h,080h,0d4h,000h,030h,080h,0d5h,0a0h,0d4h,020h,050h,0a0h,0dch	; a509  .......0.... P..
	defb 0f9h,05bh,0a8h,0eah,005h,040h,040h,000h,000h,0eah,04ah,000h,000h,0d3h,0a0h,080h	; a519  .[...@@...J.....
	defb 0ddh,027h,032h,0dbh,002h,077h,033h,053h,0dch,0f9h,05bh,0a8h,0eah,006h,040h,040h	; a529  .'2..w3S..[...@@
	defb 000h,000h,0eah,005h,040h,040h,000h,000h,0eah,004h,040h,040h,000h,000h,0eah,04ah	; a539  ....@@....@@...J
	defb 0d2h,040h,040h,000h,000h,0eah,006h,040h,040h,000h,000h,0eah,005h,040h,040h,000h	; a549  .@@....@@....@@.
	defb 000h,0f1h,041h,0eah,008h,0ddh,026h,032h,0dbh,002h,0d3h,050h,070h,080h,0a0h,0d2h	; a559  ..A...&2...Pp...
	defb 000h,050h,0d3h,072h,080h,0a0h,0d2h,000h,020h,030h,050h,070h,080h,0d3h,080h,0a0h	; a569  .P.r.... 0Pp....
	defb 0d2h,000h,020h,030h,050h,070h,080h,0a0h,0a0h,080h,0a0h,0a0h,080h,0a0h,0d2h,080h	; a579  .. 0Pp..........
	defb 030h,080h,0d1h,000h,0fbh,007h,087h,0a5h,020h,0d2h,080h,050h,020h,0f0h,0dch,0fdh	; a589  0....... ..P ...
	defb 018h,0a5h,0feh,001h,0f8h,05ch,0f1h,051h,0e9h,010h,0eah,001h,0d2h,070h,0eah,002h	; a599  .....\.Q.....p..
	defb 070h,0eah,003h,070h,0eah,004h,070h,0eah,005h,071h,0eah,006h,073h,0eah,007h,073h	; a5a9  p..p..p..q..s..s
	defb 0eah,004h,071h,0eah,001h,030h,0eah,002h,030h,0eah,003h,030h,0eah,004h,030h,0eah	; a5b9  ..q..0..0..0..0.
	defb 005h,031h,0eah,006h,033h,0eah,007h,033h,0eah,004h,031h,0eah,001h,070h,0eah,002h	; a5c9  .1..3..3..1..p..
	defb 070h,0eah,003h,070h,0eah,004h,070h,0eah,005h,071h,0eah,006h,073h,0eah,007h,073h	; a5d9  p..p..p..q..s..s
	defb 0eah,004h,071h,0eah,001h,070h,0eah,002h,070h,0eah,003h,070h,0eah,004h,070h,0eah	; a5e9  ..q..p..p..p..p.
	defb 005h,071h,0eah,006h,073h,0eah,007h,073h,0eah,008h,0ddh,029h,032h,0dbh,002h,0e9h	; a5f9  .q..s..s...)2...
	defb 010h,051h,0f8h,00bh,0f2h,018h,0f1h,053h,0e9h,008h,0ebh,001h,010h,0ddh,027h,032h	; a609  .Q.....S......'2
	defb 0d1h,031h,030h,021h,020h,009h,0f8h,017h,0d1h,031h,030h,021h,020h,009h,0f8h,00bh	; a619  .10! ....10! ...
	defb 0d1h,022h,0d2h,092h,0d1h,029h,0f8h,017h,0d1h,022h,0d2h,092h,0d1h,029h,0f8h,00bh	; a629  ."...)..."...)..
	defb 0d1h,012h,0d2h,082h,0d1h,015h,0ebh,021h,080h,0e9h,001h,0eah,009h,0f8h,016h,0d2h	; a639  .......!........
	defb 015h,055h,084h,0d1h,014h,054h,084h,0e9h,008h,0ddh,027h,032h,0d0h,01fh,0eah,008h	; a649  .U...T....'2....
	defb 0f8h,00bh,0d1h,002h,0d2h,072h,0d1h,00fh,0eah,002h,001h,0f8h,00bh,0eah,008h,003h	; a659  .....r..........
	defb 023h,0d1h,071h,070h,051h,050h,039h,0f8h,017h,0d1h,071h,070h,051h,050h,039h,0f8h	; a669  #.qpQP9...qpQP9.
	defb 00bh,0d1h,062h,022h,069h,0f8h,017h,0d1h,062h,022h,069h,0f8h,00bh,0d1h,052h,012h	; a679  ..b"i...b"i...R.
	defb 055h,0ebh,021h,080h,0eah,009h,0f8h,016h,0e9h,001h,0d2h,015h,055h,084h,0d1h,014h	; a689  U.!.........U...
	defb 054h,084h,0e9h,008h,0ddh,027h,032h,0d0h,01fh,0eah,008h,0f8h,00bh,0d1h,002h,0d2h	; a699  T....'2.........
	defb 072h,0e9h,010h,0d1h,00bh,0eah,002h,000h,0f8h,002h,0f1h,052h,0e9h,008h,0eah,008h	; a6a9  r..........R....
	defb 0d2h,085h,0a3h,081h,0a1h,0d1h,005h,033h,031h,021h,031h,071h,0d1h,085h,085h,085h	; a6b9  .......31!1q....
	defb 085h,071h,071h,073h,0fdh,00bh,0a6h,0feh,001h,0f8h,05ch,0f1h,051h,0e9h,010h,0eah	; a6c9  .qqs......\.Q...
	defb 001h,0d2h,000h,0eah,002h,000h,0eah,003h,000h,0eah,004h,000h,0eah,005h,001h,0eah	; a6d9  ................
	defb 006h,003h,0eah,007h,003h,0eah,003h,001h,0eah,001h,0d3h,080h,0eah,002h,080h,0eah	; a6e9  ................
	defb 003h,080h,0eah,004h,080h,0eah,005h,081h,0eah,006h,083h,0eah,007h,083h,0eah,003h	; a6f9  ................
	defb 081h,0eah,001h,0d2h,000h,0eah,002h,000h,0eah,003h,000h,0eah,004h,000h,0eah,005h	; a709  ................
	defb 001h,0eah,006h,003h,0eah,007h,003h,0eah,003h,001h,0eah,001h,000h,0eah,002h,000h	; a719  ................
	defb 0eah,003h,000h,0eah,004h,000h,0eah,005h,001h,0eah,006h,003h,0eah,007h,003h,0eah	; a729  ................
	defb 008h,0ddh,029h,032h,0dbh,002h,0e9h,010h,021h,0f8h,00bh,0f2h,018h,0f1h,053h,0e9h	; a739  ..)2....!.....S.
	defb 008h,0ddh,027h,032h,0d2h,071h,070h,051h,050h,039h,0f8h,017h,0d2h,071h,070h,051h	; a749  ..'2.qpQP9...qpQ
	defb 050h,039h,0f8h,00bh,0d2h,062h,022h,069h,0f8h,017h,0d2h,062h,022h,069h,0f8h,00bh	; a759  P9...b"i...b"i..
	defb 052h,012h,055h,0ebh,021h,080h,0f8h,016h,0eah,009h,0e9h,001h,0d3h,085h,0d2h,015h	; a769  R.U.!...........
	defb 054h,084h,0d1h,014h,054h,0e9h,008h,0ddh,027h,032h,0d1h,05fh,0f8h,00bh,0eah,008h	; a779  T...T...'2._....
	defb 0d2h,042h,002h,046h,080h,070h,050h,047h,083h,0a3h,0d1h,031h,030h,021h,020h,009h	; a789  .B.F.pPG...10! .
	defb 0f8h,017h,0d1h,031h,030h,021h,020h,009h,0f8h,00bh,0d2h,092h,062h,099h,0f8h,017h	; a799  ...10! .....b...
	defb 0d2h,092h,062h,099h,0f8h,00bh,082h,052h,085h,0ebh,021h,080h,0f8h,016h,0eah,009h	; a7a9  ..b....R..!.....
	defb 0e9h,001h,0d3h,085h,0d2h,015h,054h,084h,0d1h,014h,054h,0e9h,008h,0ddh,027h,032h	; a7b9  ......T...T...'2
	defb 0d1h,05fh,0f8h,00bh,0eah,007h,0d2h,042h,002h,046h,080h,070h,050h,04ch,070h,050h	; a7c9  ._.....B.F.pPLpP
	defb 040h,0f8h,002h,0f1h,052h,0eah,008h,0d2h,035h,053h,031h,051h,075h,0d1h,009h,001h	; a7d9  @...R...5S1Qu...
	defb 0d1h,035h,035h,035h,035h,0d1h,001h,001h,0d2h,0b3h,0fdh,042h,0a7h,0dbh,002h,0d1h	; a7e9  .5555......B....
	defb 070h,0d0h,070h,0d1h,020h,0d0h,020h,0d1h,040h,0d0h,040h,0d1h,000h,0d0h,000h,0fbh	; a7f9  p.p. . .@.@.....
	defb 004h,0f8h,0a7h,0d1h,070h,0d0h,070h,0d1h,020h,0d0h,020h,0d1h,030h,0d0h,030h,0d1h	; a809  ....p.p. . .0.0.
	defb 000h,0d0h,000h,0fah,0d1h,070h,0d0h,070h,0d1h,030h,0d0h,030h,0d1h,070h,0d0h,070h	; a819  .....p.p.0.0.p.p
	defb 0d1h,050h,050h,0fah,0eah,00ch,0d4h,003h,003h,003h,000h,030h,020h,000h,0fbh,002h	; a829  .PP........0 ...
	defb 02fh,0a8h,003h,003h,003h,000h,090h,070h,060h,0fbh,002h,03bh,0a8h,013h,013h,013h	; a839  /......p`.......
	defb 010h,050h,030h,010h,0fbh,002h,046h,0a8h,003h,003h,003h,000h,050h,030h,010h,003h	; a849  .P0...F.....P0..
	defb 003h,0fah,0c3h,0f8h,015h,0f2h,018h,0f1h,053h,0eah,04ah,0edh,022h,0ebh,001h,070h	; a859  ........S.J."..p
	defb 0d2h,030h,030h,000h,000h,0eah,005h,030h,030h,000h,000h,0eah,007h,0f8h,05ch,0ddh	; a869  .00....00.....\.
	defb 026h,032h,0d1h,030h,070h,050h,034h,0fbh,002h,05ch,0a8h,0f8h,015h,0eah,04ah,0edh	; a879  &2.0pP4..\....J.
	defb 022h,0ebh,001h,070h,0d2h,060h,060h,020h,020h,0eah,005h,060h,060h,020h,020h,0eah	; a889  "..p.``  ..``  .
	defb 007h,0f8h,05ch,0ddh,026h,032h,0d2h,090h,0d1h,060h,040h,024h,0fbh,002h,084h,0a8h	; a899  ..\.&2...`@$....
	defb 0f8h,015h,0eah,008h,0d2h,050h,050h,010h,010h,0d3h,083h,0f8h,016h,0e9h,001h,0eah	; a8a9  .....PP.........
	defb 009h,0ebh,021h,080h,0d3h,055h,085h,0d2h,014h,054h,084h,0d1h,014h,0e9h,008h,0ddh	; a8b9  ..!..U...T......
	defb 026h,032h,083h,0f8h,015h,0eah,04ah,0edh,022h,0ebh,001h,070h,0d2h,050h,050h,010h	; a8c9  &2....J."..p.PP.
	defb 010h,0eah,005h,050h,050h,010h,010h,0eah,04ah,080h,080h,010h,010h,0c3h,0eah,04ah	; a8d9  ...PP...J......J
	defb 0edh,022h,0ebh,001h,070h,0d2h,040h,040h,000h,000h,0fah	; a8e9  ."..p.@@...

; ----------------------------------------------------------------------
; DATOS leido_A8F4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8f4..0xa8f5  (1 bytes)
DATA_leido_A8F4:
	defb 0feh	; a8f4

; ----------------------------------------------------------------------
; DATOS leido_A8F5: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa8f5..0xa8f6  (1 bytes)
DATA_leido_A8F5:
	defb 001h	; a8f5

; ----------------------------------------------------------------------
; DATOS leido_A8F6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8f6..0xa8f7  (1 bytes)
DATA_leido_A8F6:
	defb 0e9h	; a8f6

; ----------------------------------------------------------------------
; DATOS leido_A8F7: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa8f7..0xa8f8  (1 bytes)
DATA_leido_A8F7:
	defb 009h	; a8f7

; ----------------------------------------------------------------------
; DATOS leido_A8F8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8f8..0xa8f9  (1 bytes)
DATA_leido_A8F8:
	defb 0f2h	; a8f8

; ----------------------------------------------------------------------
; DATOS leido_A8F9: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa8f9..0xa8fa  (1 bytes)
DATA_leido_A8F9:
	defb 030h	; a8f9

; ----------------------------------------------------------------------
; DATOS leido_A8FA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8fa..0xa8fb  (1 bytes)
DATA_leido_A8FA:
	defb 0f1h	; a8fa

; ----------------------------------------------------------------------
; DATOS leido_A8FB: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa8fb..0xa8fc  (1 bytes)
DATA_leido_A8FB:
	defb 051h	; a8fb

; ----------------------------------------------------------------------
; DATOS leido_A8FC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8fc..0xa8fd  (1 bytes)
DATA_leido_A8FC:
	defb 0eah	; a8fc

; ----------------------------------------------------------------------
; DATOS leido_A8FD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa8fd..0xa8fe  (1 bytes)
DATA_leido_A8FD:
	defb 008h	; a8fd

; ----------------------------------------------------------------------
; DATOS leido_A8FE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa8fe..0xa8ff  (1 bytes)
DATA_leido_A8FE:
	defb 0ebh	; a8fe

; ----------------------------------------------------------------------
; DATOS leido_A8FF: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa8ff..0xa900  (1 bytes)
DATA_leido_A8FF:
	defb 007h	; a8ff

; ----------------------------------------------------------------------
; DATOS leido_A900: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa900..0xa901  (1 bytes)
DATA_leido_A900:
	defb 010h	; a900

; ----------------------------------------------------------------------
; DATOS leido_A901: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa901..0xa902  (1 bytes)
DATA_leido_A901:
	defb 0dbh	; a901

; ----------------------------------------------------------------------
; DATOS leido_A902: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa902..0xa903  (1 bytes)
DATA_leido_A902:
	defb 002h	; a902

; ----------------------------------------------------------------------
; DATOS leido_A903: 30 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (30 bytes)
;   0xa903..0xa921  (30 bytes)
DATA_leido_A903:
	defb 0d1h,0c1h,042h,040h,050h,070h,0d0h,005h,0d1h,0b2h,0b0h,0d0h,040h,0d1h,0b0h,092h	; a903  ..B@Pp......@...
	defb 072h,0d1h,042h,040h,050h,070h,0d0h,005h,0d1h,0b2h,0d0h,050h,040h,0e9h	; a913  r.B@Pp.....P@.

; ----------------------------------------------------------------------
; DATOS leido_A921: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa921..0xa922  (1 bytes)
DATA_leido_A921:
	defb 031h	; a921

; ----------------------------------------------------------------------
; DATOS leido_A922: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa922..0xa923  (1 bytes)
DATA_leido_A922:
	defb 0eah	; a922

; ----------------------------------------------------------------------
; DATOS leido_A923: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa923..0xa924  (1 bytes)
DATA_leido_A923:
	defb 003h	; a923

; ----------------------------------------------------------------------
; DATOS leido_A924: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa924..0xa926  (2 bytes)
DATA_leido_A924:
	defb 001h,0e9h	; a924

; ----------------------------------------------------------------------
; DATOS leido_A926: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa926..0xa927  (1 bytes)
DATA_leido_A926:
	defb 003h	; a926

; ----------------------------------------------------------------------
; DATOS leido_A927: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa927..0xa929  (2 bytes)
DATA_leido_A927:
	defb 0ech,0eah	; a927

; ----------------------------------------------------------------------
; DATOS leido_A929: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa929..0xa92a  (1 bytes)
DATA_leido_A929:
	defb 001h	; a929

; ----------------------------------------------------------------------
; DATOS leido_A92A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa92a..0xa92d  (3 bytes)
DATA_leido_A92A:
	defb 003h,0ffh,0feh	; a92a

; ----------------------------------------------------------------------
; DATOS leido_A92D: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa92d..0xa92e  (1 bytes)
DATA_leido_A92D:
	defb 001h	; a92d

; ----------------------------------------------------------------------
; DATOS leido_A92E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa92e..0xa92f  (1 bytes)
DATA_leido_A92E:
	defb 0dbh	; a92e

; ----------------------------------------------------------------------
; DATOS leido_A92F: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa92f..0xa930  (1 bytes)
DATA_leido_A92F:
	defb 001h	; a92f

; ----------------------------------------------------------------------
; DATOS leido_A930: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa930..0xa931  (1 bytes)
DATA_leido_A930:
	defb 0f2h	; a930

; ----------------------------------------------------------------------
; DATOS leido_A931: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa931..0xa932  (1 bytes)
DATA_leido_A931:
	defb 010h	; a931

; ----------------------------------------------------------------------
; DATOS leido_A932: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa932..0xa933  (1 bytes)
DATA_leido_A932:
	defb 0f1h	; a932

; ----------------------------------------------------------------------
; DATOS leido_A933: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa933..0xa934  (1 bytes)
DATA_leido_A933:
	defb 041h	; a933

; ----------------------------------------------------------------------
; DATOS leido_A934: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa934..0xa935  (1 bytes)
DATA_leido_A934:
	defb 0e9h	; a934

; ----------------------------------------------------------------------
; DATOS leido_A935: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa935..0xa936  (1 bytes)
DATA_leido_A935:
	defb 009h	; a935

; ----------------------------------------------------------------------
; DATOS leido_A936: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa936..0xa937  (1 bytes)
DATA_leido_A936:
	defb 0eah	; a936

; ----------------------------------------------------------------------
; DATOS leido_A937: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa937..0xa938  (1 bytes)
DATA_leido_A937:
	defb 008h	; a937

; ----------------------------------------------------------------------
; DATOS leido_A938: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa938..0xa939  (1 bytes)
DATA_leido_A938:
	defb 0ebh	; a938

; ----------------------------------------------------------------------
; DATOS leido_A939: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa939..0xa93a  (1 bytes)
DATA_leido_A939:
	defb 001h	; a939

; ----------------------------------------------------------------------
; DATOS leido_A93A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa93a..0xa93b  (1 bytes)
DATA_leido_A93A:
	defb 010h	; a93a

; ----------------------------------------------------------------------
; DATOS leido_A93B: 20 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (20 bytes)
;   0xa93b..0xa94f  (20 bytes)
DATA_leido_A93B:
	defb 0d1h,072h,041h,070h,0d0h,000h,071h,056h,042h,022h,002h,0d1h,071h,041h,070h,0d0h	; a93b  .rAp..qVB"..qAp.
	defb 000h,079h,070h,0e9h	; a94b

; ----------------------------------------------------------------------
; DATOS leido_A94F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa94f..0xa950  (1 bytes)
DATA_leido_A94F:
	defb 031h	; a94f

; ----------------------------------------------------------------------
; DATOS leido_A950: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa950..0xa952  (2 bytes)
DATA_leido_A950:
	defb 0ech,0eah	; a950

; ----------------------------------------------------------------------
; DATOS leido_A952: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa952..0xa953  (1 bytes)
DATA_leido_A952:
	defb 003h	; a952

; ----------------------------------------------------------------------
; DATOS leido_A953: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa953..0xa955  (2 bytes)
DATA_leido_A953:
	defb 041h,0e9h	; a953

; ----------------------------------------------------------------------
; DATOS leido_A955: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa955..0xa956  (1 bytes)
DATA_leido_A955:
	defb 003h	; a955

; ----------------------------------------------------------------------
; DATOS leido_A956: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa956..0xa958  (2 bytes)
DATA_leido_A956:
	defb 0ech,0eah	; a956

; ----------------------------------------------------------------------
; DATOS leido_A958: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa958..0xa959  (1 bytes)
DATA_leido_A958:
	defb 001h	; a958

; ----------------------------------------------------------------------
; DATOS leido_A959: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa959..0xa95c  (3 bytes)
DATA_leido_A959:
	defb 043h,0ffh,0feh	; a959

; ----------------------------------------------------------------------
; DATOS leido_A95C: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa95c..0xa95d  (1 bytes)
DATA_leido_A95C:
	defb 001h	; a95c

; ----------------------------------------------------------------------
; DATOS leido_A95D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa95d..0xa95e  (1 bytes)
DATA_leido_A95D:
	defb 0dbh	; a95d

; ----------------------------------------------------------------------
; DATOS leido_A95E: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa95e..0xa95f  (1 bytes)
DATA_leido_A95E:
	defb 001h	; a95e

; ----------------------------------------------------------------------
; DATOS leido_A95F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa95f..0xa960  (1 bytes)
DATA_leido_A95F:
	defb 0f2h	; a95f

; ----------------------------------------------------------------------
; DATOS leido_A960: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa960..0xa961  (1 bytes)
DATA_leido_A960:
	defb 008h	; a960

; ----------------------------------------------------------------------
; DATOS leido_A961: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa961..0xa962  (1 bytes)
DATA_leido_A961:
	defb 0f1h	; a961

; ----------------------------------------------------------------------
; DATOS leido_A962: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa962..0xa963  (1 bytes)
DATA_leido_A962:
	defb 041h	; a962

; ----------------------------------------------------------------------
; DATOS leido_A963: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa963..0xa964  (1 bytes)
DATA_leido_A963:
	defb 0e9h	; a963

; ----------------------------------------------------------------------
; DATOS leido_A964: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa964..0xa965  (1 bytes)
DATA_leido_A964:
	defb 009h	; a964

; ----------------------------------------------------------------------
; DATOS leido_A965: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa965..0xa966  (1 bytes)
DATA_leido_A965:
	defb 0eah	; a965

; ----------------------------------------------------------------------
; DATOS leido_A966: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa966..0xa967  (1 bytes)
DATA_leido_A966:
	defb 007h	; a966

; ----------------------------------------------------------------------
; DATOS leido_A967: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa967..0xa968  (1 bytes)
DATA_leido_A967:
	defb 0ebh	; a967

; ----------------------------------------------------------------------
; DATOS leido_A968: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa968..0xa969  (1 bytes)
DATA_leido_A968:
	defb 001h	; a968

; ----------------------------------------------------------------------
; DATOS leido_A969: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa969..0xa96a  (1 bytes)
DATA_leido_A969:
	defb 040h	; a969

; ----------------------------------------------------------------------
; DATOS leido_A96A: 59 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (59 bytes)
;   0xa96a..0xa9a5  (59 bytes)
DATA_leido_A96A:
	defb 0d2h,0c0h,040h,070h,0d1h,000h,040h,000h,0d2h,070h,050h,090h,0d1h,020h,050h,020h	; a96a  ..@p..@..pP.. P
	defb 0d2h,090h,070h,0b0h,0d1h,040h,070h,040h,0d2h,0b0h,050h,090h,0d1h,020h,050h,020h	; a97a  ..p..@p@..P.. P
	defb 0d2h,090h,040h,070h,0d1h,000h,040h,000h,0d2h,070h,050h,090h,0d1h,020h,050h,020h	; a98a  ..@p..@..pP.. P
	defb 0d2h,090h,070h,0b0h,0d1h,020h,070h,020h,0d2h,0b0h,0e9h	; a99a  ..p.. p ...

; ----------------------------------------------------------------------
; DATOS leido_A9A5: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa9a5..0xa9a6  (1 bytes)
DATA_leido_A9A5:
	defb 059h	; a9a5

; ----------------------------------------------------------------------
; DATOS leido_A9A6: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9a6..0xa9a8  (2 bytes)
DATA_leido_A9A6:
	defb 0ech,0eah	; a9a6

; ----------------------------------------------------------------------
; DATOS leido_A9A8: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9a8..0xa9a9  (1 bytes)
DATA_leido_A9A8:
	defb 003h	; a9a8

; ----------------------------------------------------------------------
; DATOS leido_A9A9: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa9a9..0xa9ac  (3 bytes)
DATA_leido_A9A9:
	defb 0d1h,070h,0e9h	; a9a9

; ----------------------------------------------------------------------
; DATOS leido_A9AC: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa9ac..0xa9ad  (1 bytes)
DATA_leido_A9AC:
	defb 003h	; a9ac

; ----------------------------------------------------------------------
; DATOS leido_A9AD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9ad..0xa9ae  (1 bytes)
DATA_leido_A9AD:
	defb 0eah	; a9ad

; ----------------------------------------------------------------------
; DATOS leido_A9AE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9ae..0xa9af  (1 bytes)
DATA_leido_A9AE:
	defb 001h	; a9ae

; ----------------------------------------------------------------------
; DATOS leido_A9AF: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa9af..0xa9b2  (3 bytes)
DATA_leido_A9AF:
	defb 073h,0ffh,0feh	; a9af

; ----------------------------------------------------------------------
; DATOS leido_A9B2: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa9b2..0xa9b3  (1 bytes)
DATA_leido_A9B2:
	defb 001h	; a9b2

; ----------------------------------------------------------------------
; DATOS leido_A9B3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9b3..0xa9b4  (1 bytes)
DATA_leido_A9B3:
	defb 0f8h	; a9b3

; ----------------------------------------------------------------------
; DATOS leido_A9B4: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa9b4..0xa9b5  (1 bytes)
DATA_leido_A9B4:
	defb 01dh	; a9b4

; ----------------------------------------------------------------------
; DATOS leido_A9B5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9b5..0xa9b6  (1 bytes)
DATA_leido_A9B5:
	defb 0e9h	; a9b5

; ----------------------------------------------------------------------
; DATOS leido_A9B6: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa9b6..0xa9b7  (1 bytes)
DATA_leido_A9B6:
	defb 009h	; a9b6

; ----------------------------------------------------------------------
; DATOS leido_A9B7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9b7..0xa9b8  (1 bytes)
DATA_leido_A9B7:
	defb 0eah	; a9b7

; ----------------------------------------------------------------------
; DATOS leido_A9B8: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9b8..0xa9b9  (1 bytes)
DATA_leido_A9B8:
	defb 00dh	; a9b8

; ----------------------------------------------------------------------
; DATOS leido_A9B9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9b9..0xa9ba  (1 bytes)
DATA_leido_A9B9:
	defb 0ebh	; a9b9

; ----------------------------------------------------------------------
; DATOS leido_A9BA: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9ba..0xa9bb  (1 bytes)
DATA_leido_A9BA:
	defb 001h	; a9ba

; ----------------------------------------------------------------------
; DATOS leido_A9BB: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9bb..0xa9bc  (1 bytes)
DATA_leido_A9BB:
	defb 010h	; a9bb

; ----------------------------------------------------------------------
; DATOS leido_A9BC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9bc..0xa9bd  (1 bytes)
DATA_leido_A9BC:
	defb 0ddh	; a9bc

; ----------------------------------------------------------------------
; DATOS leido_A9BD: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa9bd..0xa9bf  (2 bytes)
DATA_leido_A9BD:
	defb 047h,032h	; a9bd

; ----------------------------------------------------------------------
; DATOS leido_A9BF: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa9bf..0xa9c4  (5 bytes)
DATA_leido_A9BF:
	defb 0d3h,003h,000h,000h,0fbh	; a9bf

; ----------------------------------------------------------------------
; DATOS leido_A9C4: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xa9c4..0xa9c7  (3 bytes)
DATA_leido_A9C4:
	defb 007h,0bfh,0a9h	; a9c4

; ----------------------------------------------------------------------
; DATOS leido_A9C7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9c7..0xa9c8  (1 bytes)
DATA_leido_A9C7:
	defb 0dbh	; a9c7

; ----------------------------------------------------------------------
; DATOS leido_A9C8: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
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
	defb 031h	; a9ca

; ----------------------------------------------------------------------
; DATOS leido_A9CB: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9cb..0xa9cd  (2 bytes)
DATA_leido_A9CB:
	defb 001h,0e9h	; a9cb

; ----------------------------------------------------------------------
; DATOS leido_A9CD: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa9cd..0xa9ce  (1 bytes)
DATA_leido_A9CD:
	defb 003h	; a9cd

; ----------------------------------------------------------------------
; DATOS leido_A9CE: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xa9ce..0xa9d0  (2 bytes)
DATA_leido_A9CE:
	defb 0ech,0eah	; a9ce

; ----------------------------------------------------------------------
; DATOS leido_A9D0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9d0..0xa9d1  (1 bytes)
DATA_leido_A9D0:
	defb 001h	; a9d0

; ----------------------------------------------------------------------
; DATOS leido_A9D1: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa9d1..0xa9d4  (3 bytes)
DATA_leido_A9D1:
	defb 003h,0ffh,0feh	; a9d1

; ----------------------------------------------------------------------
; DATOS leido_A9D4: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xa9d4..0xa9d5  (1 bytes)
DATA_leido_A9D4:
	defb 001h	; a9d4

; ----------------------------------------------------------------------
; DATOS leido_A9D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9d5..0xa9d6  (1 bytes)
DATA_leido_A9D5:
	defb 0f8h	; a9d5

; ----------------------------------------------------------------------
; DATOS leido_A9D6: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xa9d6..0xa9d7  (1 bytes)
DATA_leido_A9D6:
	defb 01dh	; a9d6

; ----------------------------------------------------------------------
; DATOS leido_A9D7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9d7..0xa9d8  (1 bytes)
DATA_leido_A9D7:
	defb 0f2h	; a9d7

; ----------------------------------------------------------------------
; DATOS leido_A9D8: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xa9d8..0xa9d9  (1 bytes)
DATA_leido_A9D8:
	defb 020h	; a9d8

; ----------------------------------------------------------------------
; DATOS leido_A9D9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9d9..0xa9da  (1 bytes)
DATA_leido_A9D9:
	defb 0f1h	; a9d9

; ----------------------------------------------------------------------
; DATOS leido_A9DA: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xa9da..0xa9db  (1 bytes)
DATA_leido_A9DA:
	defb 041h	; a9da

; ----------------------------------------------------------------------
; DATOS leido_A9DB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9db..0xa9dc  (1 bytes)
DATA_leido_A9DB:
	defb 0dbh	; a9db

; ----------------------------------------------------------------------
; DATOS leido_A9DC: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xa9dc..0xa9dd  (1 bytes)
DATA_leido_A9DC:
	defb 002h	; a9dc

; ----------------------------------------------------------------------
; DATOS leido_A9DD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9dd..0xa9de  (1 bytes)
DATA_leido_A9DD:
	defb 0e9h	; a9dd

; ----------------------------------------------------------------------
; DATOS leido_A9DE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xa9de..0xa9df  (1 bytes)
DATA_leido_A9DE:
	defb 009h	; a9de

; ----------------------------------------------------------------------
; DATOS leido_A9DF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9df..0xa9e0  (1 bytes)
DATA_leido_A9DF:
	defb 0eah	; a9df

; ----------------------------------------------------------------------
; DATOS leido_A9E0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9e0..0xa9e1  (1 bytes)
DATA_leido_A9E0:
	defb 00bh	; a9e0

; ----------------------------------------------------------------------
; DATOS leido_A9E1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9e1..0xa9e2  (1 bytes)
DATA_leido_A9E1:
	defb 0ebh	; a9e1

; ----------------------------------------------------------------------
; DATOS leido_A9E2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xa9e2..0xa9e3  (1 bytes)
DATA_leido_A9E2:
	defb 001h	; a9e2

; ----------------------------------------------------------------------
; DATOS leido_A9E3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xa9e3..0xa9e4  (1 bytes)
DATA_leido_A9E3:
	defb 010h	; a9e3

; ----------------------------------------------------------------------
; DATOS leido_A9E4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xa9e4..0xa9e5  (1 bytes)
DATA_leido_A9E4:
	defb 0ddh	; a9e4

; ----------------------------------------------------------------------
; DATOS leido_A9E5: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xa9e5..0xa9e7  (2 bytes)
DATA_leido_A9E5:
	defb 017h,043h	; a9e5

; ----------------------------------------------------------------------
; DATOS leido_A9E7: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xa9e7..0xa9ea  (3 bytes)
DATA_leido_A9E7:
	defb 0d1h,042h,0eah	; a9e7

; ----------------------------------------------------------------------
; DATOS leido_A9EA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9ea..0xa9eb  (1 bytes)
DATA_leido_A9EA:
	defb 00eh	; a9ea

; ----------------------------------------------------------------------
; DATOS leido_A9EB: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xa9eb..0xa9ef  (4 bytes)
DATA_leido_A9EB:
	defb 040h,050h,070h,0eah	; a9eb

; ----------------------------------------------------------------------
; DATOS leido_A9EF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9ef..0xa9f0  (1 bytes)
DATA_leido_A9EF:
	defb 00bh	; a9ef

; ----------------------------------------------------------------------
; DATOS leido_A9F0: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa9f0..0xa9f5  (5 bytes)
DATA_leido_A9F0:
	defb 0d0h,005h,0d1h,0b2h,0eah	; a9f0

; ----------------------------------------------------------------------
; DATOS leido_A9F5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9f5..0xa9f6  (1 bytes)
DATA_leido_A9F5:
	defb 00dh	; a9f5

; ----------------------------------------------------------------------
; DATOS leido_A9F6: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xa9f6..0xa9fc  (6 bytes)
DATA_leido_A9F6:
	defb 0b0h,0d0h,040h,0d1h,0b0h,0eah	; a9f6

; ----------------------------------------------------------------------
; DATOS leido_A9FC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xa9fc..0xa9fd  (1 bytes)
DATA_leido_A9FC:
	defb 00bh	; a9fc

; ----------------------------------------------------------------------
; DATOS leido_A9FD: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xa9fd..0xaa02  (5 bytes)
DATA_leido_A9FD:
	defb 092h,072h,0d1h,042h,0eah	; a9fd

; ----------------------------------------------------------------------
; DATOS leido_AA02: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa02..0xaa03  (1 bytes)
DATA_leido_AA02:
	defb 00eh	; aa02

; ----------------------------------------------------------------------
; DATOS leido_AA03: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xaa03..0xaa07  (4 bytes)
DATA_leido_AA03:
	defb 040h,050h,070h,0eah	; aa03

; ----------------------------------------------------------------------
; DATOS leido_AA07: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa07..0xaa08  (1 bytes)
DATA_leido_AA07:
	defb 00bh	; aa07

; ----------------------------------------------------------------------
; DATOS leido_AA08: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xaa08..0xaa12  (10 bytes)
DATA_leido_AA08:
	defb 0d0h,005h,0d1h,0b2h,0d0h,050h,040h,020h,0dch,0ddh	; aa08  .....P@ ..

; ----------------------------------------------------------------------
; DATOS leido_AA12: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xaa12..0xaa14  (2 bytes)
DATA_leido_AA12:
	defb 009h,043h	; aa12

; ----------------------------------------------------------------------
; DATOS leido_AA14: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa14..0xaa15  (1 bytes)
DATA_leido_AA14:
	defb 0eah	; aa14

; ----------------------------------------------------------------------
; DATOS leido_AA15: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa15..0xaa16  (1 bytes)
DATA_leido_AA15:
	defb 00ah	; aa15

; ----------------------------------------------------------------------
; DATOS leido_AA16: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa16..0xaa18  (2 bytes)
DATA_leido_AA16:
	defb 0f0h,0e9h	; aa16

; ----------------------------------------------------------------------
; DATOS leido_AA18: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa18..0xaa19  (1 bytes)
DATA_leido_AA18:
	defb 031h	; aa18

; ----------------------------------------------------------------------
; DATOS leido_AA19: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa19..0xaa1a  (1 bytes)
DATA_leido_AA19:
	defb 0f8h	; aa19

; ----------------------------------------------------------------------
; DATOS leido_AA1A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaa1a..0xaa1b  (1 bytes)
DATA_leido_AA1A:
	defb 015h	; aa1a

; ----------------------------------------------------------------------
; DATOS leido_AA1B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa1b..0xaa1d  (2 bytes)
DATA_leido_AA1B:
	defb 001h,0e9h	; aa1b

; ----------------------------------------------------------------------
; DATOS leido_AA1D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa1d..0xaa1e  (1 bytes)
DATA_leido_AA1D:
	defb 003h	; aa1d

; ----------------------------------------------------------------------
; DATOS leido_AA1E: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa1e..0xaa20  (2 bytes)
DATA_leido_AA1E:
	defb 0ech,0eah	; aa1e

; ----------------------------------------------------------------------
; DATOS leido_AA20: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa20..0xaa21  (1 bytes)
DATA_leido_AA20:
	defb 001h	; aa20

; ----------------------------------------------------------------------
; DATOS leido_AA21: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaa21..0xaa24  (3 bytes)
DATA_leido_AA21:
	defb 003h,0ffh,0feh	; aa21

; ----------------------------------------------------------------------
; DATOS leido_AA24: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa24..0xaa25  (1 bytes)
DATA_leido_AA24:
	defb 001h	; aa24

; ----------------------------------------------------------------------
; DATOS leido_AA25: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa25..0xaa26  (1 bytes)
DATA_leido_AA25:
	defb 0f8h	; aa25

; ----------------------------------------------------------------------
; DATOS leido_AA26: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaa26..0xaa27  (1 bytes)
DATA_leido_AA26:
	defb 01dh	; aa26

; ----------------------------------------------------------------------
; DATOS leido_AA27: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa27..0xaa28  (1 bytes)
DATA_leido_AA27:
	defb 0f1h	; aa27

; ----------------------------------------------------------------------
; DATOS leido_AA28: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xaa28..0xaa29  (1 bytes)
DATA_leido_AA28:
	defb 041h	; aa28

; ----------------------------------------------------------------------
; DATOS leido_AA29: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa29..0xaa2a  (1 bytes)
DATA_leido_AA29:
	defb 0dbh	; aa29

; ----------------------------------------------------------------------
; DATOS leido_AA2A: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaa2a..0xaa2b  (1 bytes)
DATA_leido_AA2A:
	defb 003h	; aa2a

; ----------------------------------------------------------------------
; DATOS leido_AA2B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa2b..0xaa2c  (1 bytes)
DATA_leido_AA2B:
	defb 0e9h	; aa2b

; ----------------------------------------------------------------------
; DATOS leido_AA2C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa2c..0xaa2d  (1 bytes)
DATA_leido_AA2C:
	defb 009h	; aa2c

; ----------------------------------------------------------------------
; DATOS leido_AA2D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa2d..0xaa2e  (1 bytes)
DATA_leido_AA2D:
	defb 0eah	; aa2d

; ----------------------------------------------------------------------
; DATOS leido_AA2E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa2e..0xaa2f  (1 bytes)
DATA_leido_AA2E:
	defb 007h	; aa2e

; ----------------------------------------------------------------------
; DATOS leido_AA2F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa2f..0xaa30  (1 bytes)
DATA_leido_AA2F:
	defb 0ebh	; aa2f

; ----------------------------------------------------------------------
; DATOS leido_AA30: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaa30..0xaa31  (1 bytes)
DATA_leido_AA30:
	defb 001h	; aa30

; ----------------------------------------------------------------------
; DATOS leido_AA31: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaa31..0xaa32  (1 bytes)
DATA_leido_AA31:
	defb 010h	; aa31

; ----------------------------------------------------------------------
; DATOS leido_AA32: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa32..0xaa33  (1 bytes)
DATA_leido_AA32:
	defb 0ddh	; aa32

; ----------------------------------------------------------------------
; DATOS leido_AA33: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xaa33..0xaa35  (2 bytes)
DATA_leido_AA33:
	defb 00dh,042h	; aa33

; ----------------------------------------------------------------------
; DATOS leido_AA35: 31 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (31 bytes)
;   0xaa35..0xaa54  (31 bytes)
DATA_leido_AA35:
	defb 0c0h,0d1h,042h,040h,050h,070h,0d0h,005h,0d1h,0b2h,0b0h,0d0h,040h,0d1h,0b0h,092h	; aa35  ..B@Pp......@...
	defb 072h,0d1h,042h,040h,050h,070h,0d0h,005h,0d1h,0b2h,0d0h,050h,040h,020h,0e9h	; aa45  r.B@Pp.....P@ .

; ----------------------------------------------------------------------
; DATOS leido_AA54: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa54..0xaa55  (1 bytes)
DATA_leido_AA54:
	defb 001h	; aa54

; ----------------------------------------------------------------------
; DATOS leido_AA55: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaa55..0xaa58  (3 bytes)
DATA_leido_AA55:
	defb 0c2h,0dch,0ddh	; aa55

; ----------------------------------------------------------------------
; DATOS leido_AA58: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xaa58..0xaa5a  (2 bytes)
DATA_leido_AA58:
	defb 009h,043h	; aa58

; ----------------------------------------------------------------------
; DATOS leido_AA5A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa5a..0xaa5b  (1 bytes)
DATA_leido_AA5A:
	defb 0eah	; aa5a

; ----------------------------------------------------------------------
; DATOS leido_AA5B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa5b..0xaa5c  (1 bytes)
DATA_leido_AA5B:
	defb 008h	; aa5b

; ----------------------------------------------------------------------
; DATOS leido_AA5C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa5c..0xaa5e  (2 bytes)
DATA_leido_AA5C:
	defb 0f0h,0e9h	; aa5c

; ----------------------------------------------------------------------
; DATOS leido_AA5E: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa5e..0xaa5f  (1 bytes)
DATA_leido_AA5E:
	defb 02bh	; aa5e

; ----------------------------------------------------------------------
; DATOS leido_AA5F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa5f..0xaa60  (1 bytes)
DATA_leido_AA5F:
	defb 0f8h	; aa5f

; ----------------------------------------------------------------------
; DATOS leido_AA60: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaa60..0xaa61  (1 bytes)
DATA_leido_AA60:
	defb 015h	; aa60

; ----------------------------------------------------------------------
; DATOS leido_AA61: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaa61..0xaa64  (3 bytes)
DATA_leido_AA61:
	defb 0d0h,0b1h,0e9h	; aa61

; ----------------------------------------------------------------------
; DATOS leido_AA64: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa64..0xaa65  (1 bytes)
DATA_leido_AA64:
	defb 003h	; aa64

; ----------------------------------------------------------------------
; DATOS leido_AA65: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaa65..0xaa67  (2 bytes)
DATA_leido_AA65:
	defb 0ech,0eah	; aa65

; ----------------------------------------------------------------------
; DATOS leido_AA67: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaa67..0xaa68  (1 bytes)
DATA_leido_AA67:
	defb 001h	; aa67

; ----------------------------------------------------------------------
; DATOS leido_AA68: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaa68..0xaa6b  (3 bytes)
DATA_leido_AA68:
	defb 0b3h,0ffh,0feh	; aa68

; ----------------------------------------------------------------------
; DATOS leido_AA6B: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaa6b..0xaa6c  (1 bytes)
DATA_leido_AA6B:
	defb 001h	; aa6b

; ----------------------------------------------------------------------
; DATOS leido_AA6C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa6c..0xaa6d  (1 bytes)
DATA_leido_AA6C:
	defb 0f8h	; aa6c

; ----------------------------------------------------------------------
; DATOS leido_AA6D: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaa6d..0xaa6e  (1 bytes)
DATA_leido_AA6D:
	defb 01dh	; aa6d

; ----------------------------------------------------------------------
; DATOS leido_AA6E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa6e..0xaa6f  (1 bytes)
DATA_leido_AA6E:
	defb 0dbh	; aa6e

; ----------------------------------------------------------------------
; DATOS leido_AA6F: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaa6f..0xaa70  (1 bytes)
DATA_leido_AA6F:
	defb 001h	; aa6f

; ----------------------------------------------------------------------
; DATOS leido_AA70: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa70..0xaa71  (1 bytes)
DATA_leido_AA70:
	defb 0e9h	; aa70

; ----------------------------------------------------------------------
; DATOS leido_AA71: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaa71..0xaa72  (1 bytes)
DATA_leido_AA71:
	defb 009h	; aa71

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
	defb 005h	; aa73

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
	defb 002h	; aa75

; ----------------------------------------------------------------------
; DATOS leido_AA76: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaa76..0xaa77  (1 bytes)
DATA_leido_AA76:
	defb 073h	; aa76

; ----------------------------------------------------------------------
; DATOS leido_AA77: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa77..0xaa78  (1 bytes)
DATA_leido_AA77:
	defb 0ebh	; aa77

; ----------------------------------------------------------------------
; DATOS leido_AA78: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaa78..0xaa79  (1 bytes)
DATA_leido_AA78:
	defb 001h	; aa78

; ----------------------------------------------------------------------
; DATOS leido_AA79: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaa79..0xaa7a  (1 bytes)
DATA_leido_AA79:
	defb 010h	; aa79

; ----------------------------------------------------------------------
; DATOS leido_AA7A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaa7a..0xaa7b  (1 bytes)
DATA_leido_AA7A:
	defb 0ddh	; aa7a

; ----------------------------------------------------------------------
; DATOS leido_AA7B: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xaa7b..0xaa7d  (2 bytes)
DATA_leido_AA7B:
	defb 004h,032h	; aa7b

; ----------------------------------------------------------------------
; DATOS leido_AA7D: 58 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (58 bytes)
;   0xaa7d..0xaab7  (58 bytes)
DATA_leido_AA7D:
	defb 0d2h,040h,070h,0d1h,000h,040h,000h,0d2h,070h,050h,090h,0d1h,020h,050h,020h,0d2h	; aa7d  .@p..@..pP.. P .
	defb 090h,070h,0b0h,0d1h,040h,070h,040h,0d2h,0b0h,050h,090h,0d1h,020h,050h,020h,0d2h	; aa8d  .p..@p@..P.. P .
	defb 090h,040h,070h,0d1h,000h,040h,000h,0d2h,070h,050h,090h,0d1h,020h,050h,020h,0d2h	; aa9d  .@p..@..pP.. P .
	defb 090h,070h,0b0h,0d1h,020h,070h,020h,0d2h,0b0h,0ddh	; aaad  .p.. p ...

; ----------------------------------------------------------------------
; DATOS leido_AAB7: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xaab7..0xaab9  (2 bytes)
DATA_leido_AAB7:
	defb 009h,043h	; aab7

; ----------------------------------------------------------------------
; DATOS leido_AAB9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaab9..0xaaba  (1 bytes)
DATA_leido_AAB9:
	defb 0f8h	; aab9

; ----------------------------------------------------------------------
; DATOS leido_AABA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaaba..0xaabb  (1 bytes)
DATA_leido_AABA:
	defb 01dh	; aaba

; ----------------------------------------------------------------------
; DATOS leido_AABB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaabb..0xaabc  (1 bytes)
DATA_leido_AABB:
	defb 0e9h	; aabb

; ----------------------------------------------------------------------
; DATOS leido_AABC: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaabc..0xaabd  (1 bytes)
DATA_leido_AABC:
	defb 001h	; aabc

; ----------------------------------------------------------------------
; DATOS leido_AABD: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaabd..0xaabf  (2 bytes)
DATA_leido_AABD:
	defb 0c7h,0eah	; aabd

; ----------------------------------------------------------------------
; DATOS leido_AABF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaabf..0xaac0  (1 bytes)
DATA_leido_AABF:
	defb 00ah	; aabf

; ----------------------------------------------------------------------
; DATOS leido_AAC0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaac0..0xaac1  (1 bytes)
DATA_leido_AAC0:
	defb 0e9h	; aac0

; ----------------------------------------------------------------------
; DATOS leido_AAC1: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaac1..0xaac2  (1 bytes)
DATA_leido_AAC1:
	defb 02dh	; aac1

; ----------------------------------------------------------------------
; DATOS leido_AAC2: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xaac2..0xaac6  (4 bytes)
DATA_leido_AAC2:
	defb 0dch,0d0h,071h,0e9h	; aac2

; ----------------------------------------------------------------------
; DATOS leido_AAC6: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaac6..0xaac7  (1 bytes)
DATA_leido_AAC6:
	defb 003h	; aac6

; ----------------------------------------------------------------------
; DATOS leido_AAC7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaac7..0xaac9  (2 bytes)
DATA_leido_AAC7:
	defb 0ech,0eah	; aac7

; ----------------------------------------------------------------------
; DATOS leido_AAC9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaac9..0xaaca  (1 bytes)
DATA_leido_AAC9:
	defb 001h	; aac9

; ----------------------------------------------------------------------
; DATOS leido_AACA: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaaca..0xaacd  (3 bytes)
DATA_leido_AACA:
	defb 073h,0ffh,0feh	; aaca

; ----------------------------------------------------------------------
; DATOS leido_AACD: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaacd..0xaace  (1 bytes)
DATA_leido_AACD:
	defb 001h	; aacd

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
	defb 01dh	; aacf

; ----------------------------------------------------------------------
; DATOS leido_AAD0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad0..0xaad1  (1 bytes)
DATA_leido_AAD0:
	defb 0dbh	; aad0

; ----------------------------------------------------------------------
; DATOS leido_AAD1: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaad1..0xaad2  (1 bytes)
DATA_leido_AAD1:
	defb 002h	; aad1

; ----------------------------------------------------------------------
; DATOS leido_AAD2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad2..0xaad3  (1 bytes)
DATA_leido_AAD2:
	defb 0e9h	; aad2

; ----------------------------------------------------------------------
; DATOS leido_AAD3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaad3..0xaad4  (1 bytes)
DATA_leido_AAD3:
	defb 009h	; aad3

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
	defb 007h	; aad5

; ----------------------------------------------------------------------
; DATOS leido_AAD6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad6..0xaad7  (1 bytes)
DATA_leido_AAD6:
	defb 0ebh	; aad6

; ----------------------------------------------------------------------
; DATOS leido_AAD7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaad7..0xaad8  (1 bytes)
DATA_leido_AAD7:
	defb 001h	; aad7

; ----------------------------------------------------------------------
; DATOS leido_AAD8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaad8..0xaad9  (1 bytes)
DATA_leido_AAD8:
	defb 010h	; aad8

; ----------------------------------------------------------------------
; DATOS leido_AAD9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaad9..0xaada  (1 bytes)
DATA_leido_AAD9:
	defb 0ddh	; aad9

; ----------------------------------------------------------------------
; DATOS leido_AADA: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xaada..0xaadc  (2 bytes)
DATA_leido_AADA:
	defb 007h,043h	; aada

; ----------------------------------------------------------------------
; DATOS leido_AADC: 18 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (18 bytes)
;   0xaadc..0xaaee  (18 bytes)
DATA_leido_AADC:
	defb 0d1h,071h,041h,070h,0d0h,000h,071h,056h,042h,022h,002h,0d1h,071h,041h,070h,0d0h	; aadc  .qAp..qVB"..qAp.
	defb 000h,0eah	; aaec

; ----------------------------------------------------------------------
; DATOS leido_AAEE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaaee..0xaaef  (1 bytes)
DATA_leido_AAEE:
	defb 006h	; aaee

; ----------------------------------------------------------------------
; DATOS leido_AAEF: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xaaef..0xaaf3  (4 bytes)
DATA_leido_AAEF:
	defb 079h,070h,050h,0e9h	; aaef

; ----------------------------------------------------------------------
; DATOS leido_AAF3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaaf3..0xaaf4  (1 bytes)
DATA_leido_AAF3:
	defb 001h	; aaf3

; ----------------------------------------------------------------------
; DATOS leido_AAF4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaaf4..0xaaf6  (2 bytes)
DATA_leido_AAF4:
	defb 0c3h,0f2h	; aaf4

; ----------------------------------------------------------------------
; DATOS leido_AAF6: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaaf6..0xaaf7  (1 bytes)
DATA_leido_AAF6:
	defb 030h	; aaf6

; ----------------------------------------------------------------------
; DATOS leido_AAF7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaaf7..0xaaf9  (2 bytes)
DATA_leido_AAF7:
	defb 0dch,0ddh	; aaf7

; ----------------------------------------------------------------------
; DATOS leido_AAF9: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xaaf9..0xaafb  (2 bytes)
DATA_leido_AAF9:
	defb 009h,043h	; aaf9

; ----------------------------------------------------------------------
; DATOS leido_AAFB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaafb..0xaafc  (1 bytes)
DATA_leido_AAFB:
	defb 0eah	; aafb

; ----------------------------------------------------------------------
; DATOS leido_AAFC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaafc..0xaafd  (1 bytes)
DATA_leido_AAFC:
	defb 00ah	; aafc

; ----------------------------------------------------------------------
; DATOS leido_AAFD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaafd..0xaafe  (1 bytes)
DATA_leido_AAFD:
	defb 0e9h	; aafd

; ----------------------------------------------------------------------
; DATOS leido_AAFE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaafe..0xaaff  (1 bytes)
DATA_leido_AAFE:
	defb 02fh	; aafe

; ----------------------------------------------------------------------
; DATOS leido_AAFF: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaaff..0xab01  (2 bytes)
DATA_leido_AAFF:
	defb 041h,0e9h	; aaff

; ----------------------------------------------------------------------
; DATOS leido_AB01: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab01..0xab02  (1 bytes)
DATA_leido_AB01:
	defb 003h	; ab01

; ----------------------------------------------------------------------
; DATOS leido_AB02: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xab02..0xab04  (2 bytes)
DATA_leido_AB02:
	defb 0ech,0eah	; ab02

; ----------------------------------------------------------------------
; DATOS leido_AB04: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xab04..0xab05  (1 bytes)
DATA_leido_AB04:
	defb 001h	; ab04

; ----------------------------------------------------------------------
; DATOS leido_AB05: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xab05..0xab08  (3 bytes)
DATA_leido_AB05:
	defb 043h,0ffh,0feh	; ab05

; ----------------------------------------------------------------------
; DATOS leido_AB08: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xab08..0xab09  (1 bytes)
DATA_leido_AB08:
	defb 004h	; ab08

; ----------------------------------------------------------------------
; DATOS leido_AB09: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xab09..0xab0b  (2 bytes)
DATA_leido_AB09:
	defb 0d0h,0e9h	; ab09

; ----------------------------------------------------------------------
; DATOS leido_AB0B: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab0b..0xab0c  (1 bytes)
DATA_leido_AB0B:
	defb 007h	; ab0b

; ----------------------------------------------------------------------
; DATOS leido_AB0C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab0c..0xab0d  (1 bytes)
DATA_leido_AB0C:
	defb 0f9h	; ab0c

; ----------------------------------------------------------------------
; DATOS leido_AB0D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab0d..0xab0f  (2 bytes)
DATA_leido_AB0D:
	defb 0bfh,0b4h	; ab0d

; ----------------------------------------------------------------------
; DATOS leido_AB0F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab0f..0xab10  (1 bytes)
DATA_leido_AB0F:
	defb 0e9h	; ab0f

; ----------------------------------------------------------------------
; DATOS leido_AB10: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab10..0xab11  (1 bytes)
DATA_leido_AB10:
	defb 001h	; ab10

; ----------------------------------------------------------------------
; DATOS leido_AB11: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xab11..0xab14  (3 bytes)
DATA_leido_AB11:
	defb 042h,043h,0e9h	; ab11

; ----------------------------------------------------------------------
; DATOS leido_AB14: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab14..0xab15  (1 bytes)
DATA_leido_AB14:
	defb 007h	; ab14

; ----------------------------------------------------------------------
; DATOS leido_AB15: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xab15..0xab1b  (6 bytes)
DATA_leido_AB15:
	defb 040h,040h,040h,040h,040h,0f9h	; ab15

; ----------------------------------------------------------------------
; DATOS leido_AB1B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab1b..0xab1d  (2 bytes)
DATA_leido_AB1B:
	defb 0bfh,0b4h	; ab1b

; ----------------------------------------------------------------------
; DATOS leido_AB1D: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xab1d..0xab24  (7 bytes)
DATA_leido_AB1D:
	defb 030h,030h,090h,090h,000h,090h,0f9h	; ab1d

; ----------------------------------------------------------------------
; DATOS leido_AB24: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab24..0xab26  (2 bytes)
DATA_leido_AB24:
	defb 0bfh,0b4h	; ab24

; ----------------------------------------------------------------------
; DATOS leido_AB26: 19 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (19 bytes)
;   0xab26..0xab39  (19 bytes)
DATA_leido_AB26:
	defb 030h,000h,030h,000h,090h,010h,090h,000h,090h,090h,000h,090h,030h,000h,090h,000h	; ab26  0.0.........0...
	defb 090h,000h,0fbh	; ab36

; ----------------------------------------------------------------------
; DATOS leido_AB39: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xab39..0xab3c  (3 bytes)
DATA_leido_AB39:
	defb 003h,02ch,0abh	; ab39

; ----------------------------------------------------------------------
; DATOS leido_AB3C: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xab3c..0xab49  (13 bytes)
DATA_leido_AB3C:
	defb 090h,000h,090h,090h,000h,090h,030h,030h,090h,090h,000h,010h,0f9h	; ab3c  ......00.....

; ----------------------------------------------------------------------
; DATOS leido_AB49: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab49..0xab4b  (2 bytes)
DATA_leido_AB49:
	defb 0d6h,0b4h	; ab49

; ----------------------------------------------------------------------
; DATOS leido_AB4B: 15 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (15 bytes)
;   0xab4b..0xab5a  (15 bytes)
DATA_leido_AB4B:
	defb 090h,000h,090h,000h,090h,090h,000h,090h,030h,000h,030h,000h,090h,010h,0fbh	; ab4b  ........0.0....

; ----------------------------------------------------------------------
; DATOS leido_AB5A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xab5a..0xab5d  (3 bytes)
DATA_leido_AB5A:
	defb 003h,048h,0abh	; ab5a

; ----------------------------------------------------------------------
; DATOS leido_AB5D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xab5d..0xab5e  (1 bytes)
DATA_leido_AB5D:
	defb 0f9h	; ab5d

; ----------------------------------------------------------------------
; DATOS leido_AB5E: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xab5e..0xab60  (2 bytes)
DATA_leido_AB5E:
	defb 0d6h,0b4h	; ab5e

; ----------------------------------------------------------------------
; DATOS leido_AB60: 15 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (15 bytes)
;   0xab60..0xab6f  (15 bytes)
DATA_leido_AB60:
	defb 030h,000h,090h,000h,090h,090h,000h,090h,030h,000h,090h,000h,090h,010h,0fbh	; ab60  0.......0......

; ----------------------------------------------------------------------
; DATOS leido_AB6F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xab6f..0xab72  (3 bytes)
DATA_leido_AB6F:
	defb 002h,062h,0abh	; ab6f

; ----------------------------------------------------------------------
; DATOS leido_AB72: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xab72..0xab79  (7 bytes)
DATA_leido_AB72:
	defb 030h,010h,030h,010h,030h,010h,0e9h	; ab72

; ----------------------------------------------------------------------
; DATOS leido_AB79: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab79..0xab7a  (1 bytes)
DATA_leido_AB79:
	defb 001h	; ab79

; ----------------------------------------------------------------------
; DATOS leido_AB7A: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xab7a..0xab7d  (3 bytes)
DATA_leido_AB7A:
	defb 032h,033h,0e9h	; ab7a

; ----------------------------------------------------------------------
; DATOS leido_AB7D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xab7d..0xab7e  (1 bytes)
DATA_leido_AB7D:
	defb 007h	; ab7d

; ----------------------------------------------------------------------
; DATOS leido_AB7E: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xab7e..0xab84  (6 bytes)
DATA_leido_AB7E:
	defb 030h,040h,040h,040h,040h,0fch	; ab7e

; ----------------------------------------------------------------------
; DATOS leido_AB84: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xab84..0xab87  (3 bytes)
DATA_leido_AB84:
	defb 003h,007h,0abh	; ab84

; ----------------------------------------------------------------------
; DATOS sin identificar  0xab87..0xac2f  (168 bytes)
DATA_AB87:
	defb 0e9h,008h,099h,0e9h,004h,030h,030h,0e9h,008h,030h,030h,030h,030h,030h,0f9h,0e1h	; ab87  .....00..00000..
	defb 0b5h,0f9h,0ech,0b5h,0f9h,0e1h,0b5h,090h,030h,010h,000h,030h,010h,090h,030h,030h	; ab97  ........0..0..00
	defb 030h,030h,030h,0f9h,0e1h,0b5h,0f9h,0ech,0b5h,0f9h,0e1h,0b5h,090h,000h,090h,090h	; aba7  000.............
	defb 000h,090h,0e9h,004h,040h,040h,0e9h,008h,040h,040h,040h,040h,040h,0e9h,008h,090h	; abb7  ....@@..@@@@@...
	defb 000h,090h,030h,000h,030h,090h,000h,090h,030h,090h,010h,0fbh,003h,0c4h,0abh,090h	; abc7  ..0.0...0.......
	defb 000h,090h,030h,000h,090h,030h,030h,010h,030h,090h,010h,0e9h,004h,030h,030h,091h	; abd7  ..0..00.0....00.
	defb 091h,031h,091h,091h,030h,030h,091h,091h,031h,091h,031h,091h,031h,091h,031h,091h	; abe7  .1..00..1.1.1.1.
	defb 011h,091h,031h,091h,031h,091h,011h,091h,001h,091h,031h,011h,031h,091h,001h,091h	; abf7  ..1.1.....1.1...
	defb 031h,091h,031h,091h,001h,091h,031h,011h,031h,091h,001h,091h,031h,031h,031h,0fch	; ac07  1.1...1.1...111.
	defb 002h,0c4h,0abh,0e9h,009h,0f9h,042h,0b6h,0e9h,00ah,0f9h,042h,0b6h,092h,012h,0e9h	; ac17  ......B....B....
	defb 00bh,012h,012h,0e9h,00dh,092h,012h,0ffh	; ac27  ........

; ----------------------------------------------------------------------
; DATOS leido_AC2F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac2f..0xac30  (1 bytes)
DATA_leido_AC2F:
	defb 0feh	; ac2f

; ----------------------------------------------------------------------
; DATOS leido_AC30: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xac30..0xac31  (1 bytes)
DATA_leido_AC30:
	defb 001h	; ac30

; ----------------------------------------------------------------------
; DATOS leido_AC31: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac31..0xac32  (1 bytes)
DATA_leido_AC31:
	defb 0e9h	; ac31

; ----------------------------------------------------------------------
; DATOS leido_AC32: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac32..0xac33  (1 bytes)
DATA_leido_AC32:
	defb 001h	; ac32

; ----------------------------------------------------------------------
; DATOS leido_AC33: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac33..0xac35  (2 bytes)
DATA_leido_AC33:
	defb 0c9h,0e9h	; ac33

; ----------------------------------------------------------------------
; DATOS leido_AC35: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac35..0xac36  (1 bytes)
DATA_leido_AC35:
	defb 007h	; ac35

; ----------------------------------------------------------------------
; DATOS leido_AC36: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac36..0xac37  (1 bytes)
DATA_leido_AC36:
	defb 0eah	; ac36

; ----------------------------------------------------------------------
; DATOS leido_AC37: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac37..0xac38  (1 bytes)
DATA_leido_AC37:
	defb 008h	; ac37

; ----------------------------------------------------------------------
; DATOS leido_AC38: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac38..0xac3a  (2 bytes)
DATA_leido_AC38:
	defb 0ech,0f2h	; ac38

; ----------------------------------------------------------------------
; DATOS leido_AC3A: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xac3a..0xac3b  (1 bytes)
DATA_leido_AC3A:
	defb 020h	; ac3a

; ----------------------------------------------------------------------
; DATOS leido_AC3B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac3b..0xac3c  (1 bytes)
DATA_leido_AC3B:
	defb 0f1h	; ac3b

; ----------------------------------------------------------------------
; DATOS leido_AC3C: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xac3c..0xac3d  (1 bytes)
DATA_leido_AC3C:
	defb 042h	; ac3c

; ----------------------------------------------------------------------
; DATOS leido_AC3D: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xac3d..0xac48  (11 bytes)
DATA_leido_AC3D:
	defb 0d2h,055h,0d1h,005h,0d2h,0b5h,0d1h,025h,005h,045h,0eah	; ac3d  .U.....%.E.

; ----------------------------------------------------------------------
; DATOS leido_AC48: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac48..0xac49  (1 bytes)
DATA_leido_AC48:
	defb 007h	; ac48

; ----------------------------------------------------------------------
; DATOS leido_AC49: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xac49..0xac50  (7 bytes)
DATA_leido_AC49:
	defb 020h,040h,050h,040h,050h,070h,0eah	; ac49

; ----------------------------------------------------------------------
; DATOS leido_AC50: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac50..0xac51  (1 bytes)
DATA_leido_AC50:
	defb 004h	; ac50

; ----------------------------------------------------------------------
; DATOS leido_AC51: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac51..0xac52  (1 bytes)
DATA_leido_AC51:
	defb 0e9h	; ac51

; ----------------------------------------------------------------------
; DATOS leido_AC52: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac52..0xac53  (1 bytes)
DATA_leido_AC52:
	defb 001h	; ac52

; ----------------------------------------------------------------------
; DATOS leido_AC53: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xac53..0xac60  (13 bytes)
DATA_leido_AC53:
	defb 052h,073h,092h,073h,092h,0b3h,092h,0b3h,0d0h,002h,0d1h,0b1h,0e9h	; ac53  Rs.s.........

; ----------------------------------------------------------------------
; DATOS leido_AC60: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xac60..0xac61  (1 bytes)
DATA_leido_AC60:
	defb 00eh	; ac60

; ----------------------------------------------------------------------
; DATOS leido_AC61: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac61..0xac62  (1 bytes)
DATA_leido_AC61:
	defb 0eah	; ac61

; ----------------------------------------------------------------------
; DATOS leido_AC62: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac62..0xac63  (1 bytes)
DATA_leido_AC62:
	defb 008h	; ac62

; ----------------------------------------------------------------------
; DATOS leido_AC63: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac63..0xac64  (1 bytes)
DATA_leido_AC63:
	defb 0f1h	; ac63

; ----------------------------------------------------------------------
; DATOS leido_AC64: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xac64..0xac65  (1 bytes)
DATA_leido_AC64:
	defb 053h	; ac64

; ----------------------------------------------------------------------
; DATOS leido_AC65: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xac65..0xac69  (4 bytes)
DATA_leido_AC65:
	defb 0d1h,053h,041h,0dbh	; ac65

; ----------------------------------------------------------------------
; DATOS leido_AC69: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xac69..0xac6a  (1 bytes)
DATA_leido_AC69:
	defb 005h	; ac69

; ----------------------------------------------------------------------
; DATOS leido_AC6A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac6a..0xac6b  (1 bytes)
DATA_leido_AC6A:
	defb 0eah	; ac6a

; ----------------------------------------------------------------------
; DATOS leido_AC6B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac6b..0xac6c  (1 bytes)
DATA_leido_AC6B:
	defb 00ah	; ac6b

; ----------------------------------------------------------------------
; DATOS leido_AC6C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac6c..0xac6d  (1 bytes)
DATA_leido_AC6C:
	defb 0edh	; ac6c

; ----------------------------------------------------------------------
; DATOS leido_AC6D: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xac6d..0xac6e  (1 bytes)
DATA_leido_AC6D:
	defb 007h	; ac6d

; ----------------------------------------------------------------------
; DATOS leido_AC6E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xac6e..0xac6f  (1 bytes)
DATA_leido_AC6E:
	defb 0ddh	; ac6e

; ----------------------------------------------------------------------
; DATOS leido_AC6F: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xac6f..0xac71  (2 bytes)
DATA_leido_AC6F:
	defb 087h,032h	; ac6f

; ----------------------------------------------------------------------
; DATOS leido_AC71: 23 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (23 bytes)
;   0xac71..0xac88  (23 bytes)
DATA_leido_AC71:
	defb 052h,041h,000h,0d2h,07eh,070h,0d1h,000h,020h,052h,041h,000h,07eh,0d2h,070h,0d1h	; ac71  RA..~p.. RA.~.p.
	defb 000h,020h,072h,051h,040h,00bh,0eah	; ac81

; ----------------------------------------------------------------------
; DATOS leido_AC88: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xac88..0xac89  (1 bytes)
DATA_leido_AC88:
	defb 008h	; ac88

; ----------------------------------------------------------------------
; DATOS leido_AC89: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac89..0xac8b  (2 bytes)
DATA_leido_AC89:
	defb 0ech,0f1h	; ac89

; ----------------------------------------------------------------------
; DATOS leido_AC8B: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xac8b..0xac8c  (1 bytes)
DATA_leido_AC8B:
	defb 041h	; ac8b

; ----------------------------------------------------------------------
; DATOS leido_AC8C: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xac8c..0xac8f  (3 bytes)
DATA_leido_AC8C:
	defb 0d1h,008h,0f9h	; ac8c

; ----------------------------------------------------------------------
; DATOS leido_AC8F: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xac8f..0xac91  (2 bytes)
DATA_leido_AC8F:
	defb 0e1h,0b4h	; ac8f

; ----------------------------------------------------------------------
; DATOS leido_AC91: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xac91..0xac93  (2 bytes)
DATA_leido_AC91:
	defb 078h,0f9h	; ac91

; ----------------------------------------------------------------------
; DATOS leido_AC93: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xac93..0xac95  (2 bytes)
DATA_leido_AC93:
	defb 0efh,0b4h	; ac93

; ----------------------------------------------------------------------
; DATOS leido_AC95: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xac95..0xaca0  (11 bytes)
DATA_leido_AC95:
	defb 0d1h,040h,0d2h,080h,0d1h,000h,0d2h,0b0h,0d1h,000h,0fch	; ac95  .@.........

; ----------------------------------------------------------------------
; DATOS leido_ACA0: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaca0..0xaca3  (3 bytes)
DATA_leido_ACA0:
	defb 003h,02fh,0ach	; aca0

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaca3..0xad04  (97 bytes)
DATA_ACA3:
	defb 0e9h,008h,0eah,009h,0edh,003h,0ebh,083h,030h,0d1h,00fh,0eah,008h,0edh,005h,0ebh	; aca3  ........0.......
	defb 087h,030h,0d2h,07bh,06bh,09bh,098h,0edh,004h,000h,000h,000h,0edh,002h,07bh,06bh	; acb3  .0.{k.........{k
	defb 09bh,09bh,0efh,0feh,001h,0e9h,008h,0eah,007h,0ech,0f2h,020h,0f1h,041h,0d2h,0b1h	; acc3  ........... .A..
	defb 0f9h,0d7h,0b6h,0d2h,0b0h,0d1h,000h,0d2h,090h,0d1h,000h,0fbh,006h,0d6h,0ach,005h	; acd3  ................
	defb 0d2h,0b5h,0d1h,005h,024h,0fch,002h,0c6h,0ach,0e9h,009h,0eah,007h,0ech,0d1h,031h	; ace3  ....$..........1
	defb 0f9h,0fah,0b6h,022h,0e9h,00dh,0a0h,090h,050h,075h,0eah,002h,071h,0eah,001h,071h	; acf3  ..."....Pu..q..q
	defb 0ffh	; ad03

; ----------------------------------------------------------------------
; DATOS leido_AD04: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad04..0xad05  (1 bytes)
DATA_leido_AD04:
	defb 0feh	; ad04

; ----------------------------------------------------------------------
; DATOS leido_AD05: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xad05..0xad06  (1 bytes)
DATA_leido_AD05:
	defb 001h	; ad05

; ----------------------------------------------------------------------
; DATOS leido_AD06: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad06..0xad07  (1 bytes)
DATA_leido_AD06:
	defb 0e9h	; ad06

; ----------------------------------------------------------------------
; DATOS leido_AD07: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad07..0xad08  (1 bytes)
DATA_leido_AD07:
	defb 001h	; ad07

; ----------------------------------------------------------------------
; DATOS leido_AD08: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad08..0xad0a  (2 bytes)
DATA_leido_AD08:
	defb 0c9h,0e9h	; ad08

; ----------------------------------------------------------------------
; DATOS leido_AD0A: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad0a..0xad0b  (1 bytes)
DATA_leido_AD0A:
	defb 007h	; ad0a

; ----------------------------------------------------------------------
; DATOS leido_AD0B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad0b..0xad0c  (1 bytes)
DATA_leido_AD0B:
	defb 0eah	; ad0b

; ----------------------------------------------------------------------
; DATOS leido_AD0C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad0c..0xad0d  (1 bytes)
DATA_leido_AD0C:
	defb 007h	; ad0c

; ----------------------------------------------------------------------
; DATOS leido_AD0D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad0d..0xad0f  (2 bytes)
DATA_leido_AD0D:
	defb 0ech,0f2h	; ad0d

; ----------------------------------------------------------------------
; DATOS leido_AD0F: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xad0f..0xad10  (1 bytes)
DATA_leido_AD0F:
	defb 020h	; ad0f

; ----------------------------------------------------------------------
; DATOS leido_AD10: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad10..0xad11  (1 bytes)
DATA_leido_AD10:
	defb 0f1h	; ad10

; ----------------------------------------------------------------------
; DATOS leido_AD11: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xad11..0xad12  (1 bytes)
DATA_leido_AD11:
	defb 042h	; ad11

; ----------------------------------------------------------------------
; DATOS leido_AD12: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xad12..0xad1b  (9 bytes)
DATA_leido_AD12:
	defb 0d2h,005h,095h,075h,0b5h,095h,0d1h,005h,0eah	; ad12  ...u.....

; ----------------------------------------------------------------------
; DATOS leido_AD1B: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad1b..0xad1c  (1 bytes)
DATA_leido_AD1B:
	defb 007h	; ad1b

; ----------------------------------------------------------------------
; DATOS leido_AD1C: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xad1c..0xad25  (9 bytes)
DATA_leido_AD1C:
	defb 0d2h,0b0h,0d1h,000h,020h,000h,020h,040h,0eah	; ad1c  .... . @.

; ----------------------------------------------------------------------
; DATOS leido_AD25: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad25..0xad26  (1 bytes)
DATA_leido_AD25:
	defb 004h	; ad25

; ----------------------------------------------------------------------
; DATOS leido_AD26: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad26..0xad27  (1 bytes)
DATA_leido_AD26:
	defb 0e9h	; ad26

; ----------------------------------------------------------------------
; DATOS leido_AD27: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad27..0xad28  (1 bytes)
DATA_leido_AD27:
	defb 001h	; ad27

; ----------------------------------------------------------------------
; DATOS leido_AD28: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xad28..0xad33  (11 bytes)
DATA_leido_AD28:
	defb 022h,043h,052h,043h,052h,073h,052h,073h,092h,071h,0e9h	; ad28  "CRCRsRs.q.

; ----------------------------------------------------------------------
; DATOS leido_AD33: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xad33..0xad34  (1 bytes)
DATA_leido_AD33:
	defb 00eh	; ad33

; ----------------------------------------------------------------------
; DATOS leido_AD34: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad34..0xad35  (1 bytes)
DATA_leido_AD34:
	defb 0eah	; ad34

; ----------------------------------------------------------------------
; DATOS leido_AD35: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad35..0xad36  (1 bytes)
DATA_leido_AD35:
	defb 007h	; ad35

; ----------------------------------------------------------------------
; DATOS leido_AD36: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xad36..0xad38  (2 bytes)
DATA_leido_AD36:
	defb 0ech,0f1h	; ad36

; ----------------------------------------------------------------------
; DATOS leido_AD38: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xad38..0xad39  (1 bytes)
DATA_leido_AD38:
	defb 052h	; ad38

; ----------------------------------------------------------------------
; DATOS leido_AD39: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xad39..0xad3d  (4 bytes)
DATA_leido_AD39:
	defb 0d1h,003h,001h,0dbh	; ad39

; ----------------------------------------------------------------------
; DATOS leido_AD3D: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xad3d..0xad3e  (1 bytes)
DATA_leido_AD3D:
	defb 005h	; ad3d

; ----------------------------------------------------------------------
; DATOS leido_AD3E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad3e..0xad3f  (1 bytes)
DATA_leido_AD3E:
	defb 0eah	; ad3e

; ----------------------------------------------------------------------
; DATOS leido_AD3F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad3f..0xad40  (1 bytes)
DATA_leido_AD3F:
	defb 00ah	; ad3f

; ----------------------------------------------------------------------
; DATOS leido_AD40: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad40..0xad41  (1 bytes)
DATA_leido_AD40:
	defb 0edh	; ad40

; ----------------------------------------------------------------------
; DATOS leido_AD41: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xad41..0xad42  (1 bytes)
DATA_leido_AD41:
	defb 007h	; ad41

; ----------------------------------------------------------------------
; DATOS leido_AD42: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad42..0xad43  (1 bytes)
DATA_leido_AD42:
	defb 0ddh	; ad42

; ----------------------------------------------------------------------
; DATOS leido_AD43: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xad43..0xad45  (2 bytes)
DATA_leido_AD43:
	defb 087h,032h	; ad43

; ----------------------------------------------------------------------
; DATOS leido_AD45: 28 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (28 bytes)
;   0xad45..0xad61  (28 bytes)
DATA_leido_AD45:
	defb 0d1h,002h,001h,0d2h,070h,04eh,040h,070h,090h,0d1h,022h,001h,0d2h,070h,0d1h,02eh	; ad45  ....pN@p.."..p..
	defb 0d2h,020h,070h,090h,0d1h,042h,021h,000h,0d2h,09bh,0ech,0eah	; ad55  . p..B!.....

; ----------------------------------------------------------------------
; DATOS leido_AD61: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad61..0xad62  (1 bytes)
DATA_leido_AD61:
	defb 007h	; ad61

; ----------------------------------------------------------------------
; DATOS leido_AD62: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad62..0xad63  (1 bytes)
DATA_leido_AD62:
	defb 0f1h	; ad62

; ----------------------------------------------------------------------
; DATOS leido_AD63: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xad63..0xad64  (1 bytes)
DATA_leido_AD63:
	defb 041h	; ad63

; ----------------------------------------------------------------------
; DATOS leido_AD64: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xad64..0xad67  (3 bytes)
DATA_leido_AD64:
	defb 0d2h,078h,0f9h	; ad64

; ----------------------------------------------------------------------
; DATOS leido_AD67: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad67..0xad69  (2 bytes)
DATA_leido_AD67:
	defb 002h,0b5h	; ad67

; ----------------------------------------------------------------------
; DATOS leido_AD69: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xad69..0xad6e  (5 bytes)
DATA_leido_AD69:
	defb 040h,040h,061h,096h,0eah	; ad69

; ----------------------------------------------------------------------
; DATOS leido_AD6E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xad6e..0xad6f  (1 bytes)
DATA_leido_AD6E:
	defb 008h	; ad6e

; ----------------------------------------------------------------------
; DATOS leido_AD6F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xad6f..0xad70  (1 bytes)
DATA_leido_AD6F:
	defb 0f9h	; ad6f

; ----------------------------------------------------------------------
; DATOS leido_AD70: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xad70..0xad72  (2 bytes)
DATA_leido_AD70:
	defb 014h,0b5h	; ad70

; ----------------------------------------------------------------------
; DATOS leido_AD72: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xad72..0xad78  (6 bytes)
DATA_leido_AD72:
	defb 0b0h,040h,080h,070h,090h,0fch	; ad72

; ----------------------------------------------------------------------
; DATOS leido_AD78: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xad78..0xad7b  (3 bytes)
DATA_leido_AD78:
	defb 003h,004h,0adh	; ad78

; ----------------------------------------------------------------------
; DATOS sin identificar  0xad7b..0xadd5  (90 bytes)
DATA_AD7B:
	defb 0e9h,008h,0eah,009h,0edh,003h,0ebh,083h,030h,0d2h,07fh,0eah,007h,0ech,0d1h,04dh	; ad7b  ........0......M
	defb 03bh,05bh,04bh,04bh,03bh,05bh,049h,0efh,0eah,007h,0ech,0d3h,0b1h,0f9h,01bh,0b7h	; ad8b  .[KK.[I.........
	defb 0d2h,070h,090h,050h,090h,0fbh,003h,09bh,0adh,060h,090h,0fbh,006h,0a4h,0adh,075h	; ad9b  .p.P.....`.....u
	defb 075h,075h,074h,0fch,002h,093h,0adh,0e9h,009h,0eah,007h,0ech,0d2h,031h,0f9h,040h	; adab  uut..........1.@
	defb 0b7h,0e9h,00ah,0d4h,002h,0d1h,022h,0e9h,00bh,002h,0d2h,0a2h,0e9h,00dh,0d1h,050h	; adbb  ......"........P
	defb 050h,020h,045h,0eah,002h,041h,0eah,001h,041h,0ffh	; adcb  P E..A..A.

; ----------------------------------------------------------------------
; DATOS leido_ADD5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadd5..0xadd6  (1 bytes)
DATA_leido_ADD5:
	defb 0feh	; add5

; ----------------------------------------------------------------------
; DATOS leido_ADD6: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xadd6..0xadd7  (1 bytes)
DATA_leido_ADD6:
	defb 001h	; add6

; ----------------------------------------------------------------------
; DATOS leido_ADD7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadd7..0xadd8  (1 bytes)
DATA_leido_ADD7:
	defb 0f8h	; add7

; ----------------------------------------------------------------------
; DATOS leido_ADD8: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xadd8..0xadd9  (1 bytes)
DATA_leido_ADD8:
	defb 023h	; add8

; ----------------------------------------------------------------------
; DATOS leido_ADD9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xadd9..0xadda  (1 bytes)
DATA_leido_ADD9:
	defb 0e9h	; add9

; ----------------------------------------------------------------------
; DATOS leido_ADDA: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xadda..0xaddb  (1 bytes)
DATA_leido_ADDA:
	defb 007h	; adda

; ----------------------------------------------------------------------
; DATOS leido_ADDB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaddb..0xaddc  (1 bytes)
DATA_leido_ADDB:
	defb 0eah	; addb

; ----------------------------------------------------------------------
; DATOS leido_ADDC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaddc..0xaddd  (1 bytes)
DATA_leido_ADDC:
	defb 00ch	; addc

; ----------------------------------------------------------------------
; DATOS leido_ADDD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaddd..0xadde  (1 bytes)
DATA_leido_ADDD:
	defb 0ebh	; addd

; ----------------------------------------------------------------------
; DATOS leido_ADDE: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xadde..0xaddf  (1 bytes)
DATA_leido_ADDE:
	defb 007h	; adde

; ----------------------------------------------------------------------
; DATOS leido_ADDF: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaddf..0xade0  (1 bytes)
DATA_leido_ADDF:
	defb 049h	; addf

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
	defb 003h	; ade1

; ----------------------------------------------------------------------
; DATOS leido_ADE2: 34 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (34 bytes)
;   0xade2..0xae04  (34 bytes)
DATA_leido_ADE2:
	defb 0d4h,060h,070h,0d3h,000h,020h,0d4h,050h,070h,0d3h,050h,070h,000h,020h,0d4h,050h	; ade2  .`p.. .Pp.Pp. .P
	defb 070h,071h,070h,071h,070h,0d5h,040h,0d4h,040h,0d5h,050h,0d4h,050h,0d5h,060h,0d4h	; adf2  pqpqp.@.@.P.P.`.
	defb 060h,0fbh	; ae02

; ----------------------------------------------------------------------
; DATOS leido_AE04: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xae04..0xae07  (3 bytes)
DATA_leido_AE04:
	defb 002h,0e2h,0adh	; ae04

; ----------------------------------------------------------------------
; DATOS leido_AE07: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae07..0xae08  (1 bytes)
DATA_leido_AE07:
	defb 0eah	; ae07

; ----------------------------------------------------------------------
; DATOS leido_AE08: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xae08..0xae09  (1 bytes)
DATA_leido_AE08:
	defb 00bh	; ae08

; ----------------------------------------------------------------------
; DATOS leido_AE09: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae09..0xae0a  (1 bytes)
DATA_leido_AE09:
	defb 0dbh	; ae09

; ----------------------------------------------------------------------
; DATOS leido_AE0A: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xae0a..0xae0b  (1 bytes)
DATA_leido_AE0A:
	defb 002h	; ae0a

; ----------------------------------------------------------------------
; DATOS leido_AE0B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae0b..0xae0c  (1 bytes)
DATA_leido_AE0B:
	defb 0ebh	; ae0b

; ----------------------------------------------------------------------
; DATOS leido_AE0C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xae0c..0xae0d  (1 bytes)
DATA_leido_AE0C:
	defb 007h	; ae0c

; ----------------------------------------------------------------------
; DATOS leido_AE0D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xae0d..0xae0e  (1 bytes)
DATA_leido_AE0D:
	defb 078h	; ae0d

; ----------------------------------------------------------------------
; DATOS leido_AE0E: 26 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (26 bytes)
;   0xae0e..0xae28  (26 bytes)
DATA_leido_AE0E:
	defb 0d3h,001h,000h,001h,000h,001h,001h,001h,001h,000h,000h,000h,090h,0d5h,090h,0d4h	; ae0e  ................
	defb 090h,0d5h,0a0h,0d4h,0a0h,0d5h,0b0h,0d4h,0b0h,0fbh	; ae1e  ..........

; ----------------------------------------------------------------------
; DATOS leido_AE28: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xae28..0xae2b  (3 bytes)
DATA_leido_AE28:
	defb 002h,00eh,0aeh	; ae28

; ----------------------------------------------------------------------
; DATOS leido_AE2B: 51 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (51 bytes)
;   0xae2b..0xae5e  (51 bytes)
DATA_leido_AE2B:
	defb 0a1h,0a0h,0a1h,0d3h,0a0h,0d4h,0a0h,0a0h,0a1h,0a1h,0a1h,0a0h,0a1h,0a0h,0a0h,0a0h	; ae2b  ................
	defb 0a1h,091h,0a1h,0a0h,0a1h,0d3h,0a0h,0d4h,090h,0a0h,0a1h,0a1h,0a1h,0a0h,0a0h,090h	; ae3b  ................
	defb 0a0h,0d3h,0a0h,070h,040h,000h,0d4h,0a0h,070h,091h,090h,091h,0d3h,090h,0d4h,091h	; ae4b  ...p@...p.......
	defb 091h,091h,0fbh	; ae5b

; ----------------------------------------------------------------------
; DATOS leido_AE5E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xae5e..0xae61  (3 bytes)
DATA_leido_AE5E:
	defb 003h,054h,0aeh	; ae5e

; ----------------------------------------------------------------------
; DATOS leido_AE61: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xae61..0xae6e  (13 bytes)
DATA_leido_AE61:
	defb 091h,090h,091h,090h,070h,090h,0d3h,070h,090h,0d4h,070h,090h,0dbh	; ae61  ....p..p..p..

; ----------------------------------------------------------------------
; DATOS leido_AE6E: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xae6e..0xae6f  (1 bytes)
DATA_leido_AE6E:
	defb 001h	; ae6e

; ----------------------------------------------------------------------
; DATOS leido_AE6F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xae6f..0xae70  (1 bytes)
DATA_leido_AE6F:
	defb 0ebh	; ae6f

; ----------------------------------------------------------------------
; DATOS leido_AE70: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xae70..0xae71  (1 bytes)
DATA_leido_AE70:
	defb 007h	; ae70

; ----------------------------------------------------------------------
; DATOS leido_AE71: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xae71..0xae72  (1 bytes)
DATA_leido_AE71:
	defb 058h	; ae71

; ----------------------------------------------------------------------
; DATOS leido_AE72: 96 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (96 bytes)
;   0xae72..0xaed2  (96 bytes)
DATA_leido_AE72:
	defb 0d4h,081h,080h,081h,080h,0d3h,080h,0d4h,080h,081h,081h,081h,080h,081h,0d3h,080h	; ae72  ................
	defb 0d4h,081h,0d3h,031h,081h,0d4h,071h,070h,071h,070h,0d3h,070h,0d4h,070h,071h,050h	; ae82  ...1..qpqp.p.pqP
	defb 070h,071h,070h,071h,070h,071h,071h,021h,061h,060h,061h,060h,061h,061h,061h,061h	; ae92  pqpqpqq!a`a`aaaa
	defb 060h,061h,060h,060h,090h,0d3h,020h,060h,020h,0d4h,090h,021h,020h,021h,020h,041h	; aea2  `a``.. ` ..! ! A
	defb 041h,041h,051h,050h,051h,050h,051h,051h,051h,071h,070h,071h,070h,071h,071h,071h	; aeb2  AAQPQPQQQqpqpqqq
	defb 071h,070h,071h,070h,070h,0d3h,070h,0d4h,090h,0d3h,090h,0d4h,0b0h,0d3h,0b0h,0fch	; aec2  qpqpp.p.........

; ----------------------------------------------------------------------
; DATOS leido_AED2: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xaed2..0xaed5  (3 bytes)
DATA_leido_AED2:
	defb 003h,0d5h,0adh	; aed2

; ----------------------------------------------------------------------
; DATOS sin identificar  0xaed5..0xaf8d  (184 bytes)
DATA_AED5:
	defb 0e9h,008h,0eah,00ch,0edh,003h,0ebh,084h,070h,0d4h,08fh,0dbh,001h,0eah,00bh,0ebh	; aed5  ........p.......
	defb 007h,058h,0f9h,0f9h,0b5h,091h,090h,070h,080h,090h,0fbh,003h,0e7h,0aeh,0f9h,0f9h	; aee5  .X.....p........
	defb 0b5h,090h,0d3h,090h,0d4h,090h,070h,0d3h,070h,0d4h,070h,0d4h,051h,050h,050h,050h	; aef5  ......p.p.p.QPPP
	defb 040h,0fbh,003h,000h,0afh,0d3h,040h,050h,0d4h,050h,0b0h,0d3h,000h,0d4h,050h,041h	; af05  @.....@P.P....PA
	defb 040h,040h,040h,020h,0fbh,003h,014h,0afh,040h,070h,0d3h,000h,040h,000h,0d4h,070h	; af15  @@@ ....@p..@..p
	defb 050h,0fbh,009h,025h,0afh,050h,090h,0d3h,000h,0d4h,060h,0fbh,009h,02fh,0afh,060h	; af25  P..%.P....`../.`
	defb 090h,0d3h,000h,070h,020h,0d4h,070h,070h,070h,070h,071h,070h,070h,070h,050h,0fbh	; af35  ...p .ppppqpppP.
	defb 003h,03fh,0afh,0fch,002h,000h,0afh,0eah,00bh,0ebh,007h,055h,0e9h,009h,0d4h,088h	; af45  .?.........U....
	defb 080h,0d3h,000h,030h,0d4h,0e9h,00ah,0a8h,0a0h,050h,0d5h,0a0h,0eah,007h,0ech,0e9h	; af55  ...0.....P......
	defb 007h,0f8h,085h,0c2h,0d4h,00fh,0eah,006h,001h,0e9h,00bh,0f8h,023h,0ebh,007h,055h	; af65  ............#..U
	defb 0eah,00bh,0e9h,00dh,000h,070h,0d3h,000h,0ebh,005h,070h,0d4h,004h,0ech,0eah,003h	; af75  .....p....p.....
	defb 000h,0eah,002h,001h,0eah,001h,001h,0ffh	; af85  ........

; ----------------------------------------------------------------------
; DATOS leido_AF8D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf8d..0xaf8e  (1 bytes)
DATA_leido_AF8D:
	defb 0feh	; af8d

; ----------------------------------------------------------------------
; DATOS leido_AF8E: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xaf8e..0xaf8f  (1 bytes)
DATA_leido_AF8E:
	defb 001h	; af8e

; ----------------------------------------------------------------------
; DATOS leido_AF8F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf8f..0xaf90  (1 bytes)
DATA_leido_AF8F:
	defb 0f8h	; af8f

; ----------------------------------------------------------------------
; DATOS leido_AF90: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xaf90..0xaf91  (1 bytes)
DATA_leido_AF90:
	defb 01dh	; af90

; ----------------------------------------------------------------------
; DATOS leido_AF91: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xaf91..0xaf94  (3 bytes)
DATA_leido_AF91:
	defb 0efh,0f0h,0e9h	; af91

; ----------------------------------------------------------------------
; DATOS leido_AF94: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xaf94..0xaf95  (1 bytes)
DATA_leido_AF94:
	defb 007h	; af94

; ----------------------------------------------------------------------
; DATOS leido_AF95: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf95..0xaf96  (1 bytes)
DATA_leido_AF95:
	defb 0eah	; af95

; ----------------------------------------------------------------------
; DATOS leido_AF96: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xaf96..0xaf97  (1 bytes)
DATA_leido_AF96:
	defb 007h	; af96

; ----------------------------------------------------------------------
; DATOS leido_AF97: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf97..0xaf98  (1 bytes)
DATA_leido_AF97:
	defb 0ebh	; af97

; ----------------------------------------------------------------------
; DATOS leido_AF98: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xaf98..0xaf99  (1 bytes)
DATA_leido_AF98:
	defb 001h	; af98

; ----------------------------------------------------------------------
; DATOS leido_AF99: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xaf99..0xaf9a  (1 bytes)
DATA_leido_AF99:
	defb 060h	; af99

; ----------------------------------------------------------------------
; DATOS leido_AF9A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf9a..0xaf9b  (1 bytes)
DATA_leido_AF9A:
	defb 0dbh	; af9a

; ----------------------------------------------------------------------
; DATOS leido_AF9B: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaf9b..0xaf9c  (1 bytes)
DATA_leido_AF9B:
	defb 001h	; af9b

; ----------------------------------------------------------------------
; DATOS leido_AF9C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf9c..0xaf9d  (1 bytes)
DATA_leido_AF9C:
	defb 0f9h	; af9c

; ----------------------------------------------------------------------
; DATOS leido_AF9D: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaf9d..0xaf9f  (2 bytes)
DATA_leido_AF9D:
	defb 022h,0b5h	; af9d

; ----------------------------------------------------------------------
; DATOS leido_AF9F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaf9f..0xafa0  (1 bytes)
DATA_leido_AF9F:
	defb 0f9h	; af9f

; ----------------------------------------------------------------------
; DATOS leido_AFA0: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xafa0..0xafa2  (2 bytes)
DATA_leido_AFA0:
	defb 045h,0b5h	; afa0

; ----------------------------------------------------------------------
; DATOS leido_AFA2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafa2..0xafa3  (1 bytes)
DATA_leido_AFA2:
	defb 0fbh	; afa2

; ----------------------------------------------------------------------
; DATOS leido_AFA3: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xafa3..0xafa6  (3 bytes)
DATA_leido_AFA3:
	defb 002h,09ch,0afh	; afa3

; ----------------------------------------------------------------------
; DATOS leido_AFA6: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xafa6..0xafa8  (2 bytes)
DATA_leido_AFA6:
	defb 0dch,0f2h	; afa6

; ----------------------------------------------------------------------
; DATOS leido_AFA8: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xafa8..0xafa9  (1 bytes)
DATA_leido_AFA8:
	defb 018h	; afa8

; ----------------------------------------------------------------------
; DATOS leido_AFA9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafa9..0xafaa  (1 bytes)
DATA_leido_AFA9:
	defb 0f1h	; afa9

; ----------------------------------------------------------------------
; DATOS leido_AFAA: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xafaa..0xafab  (1 bytes)
DATA_leido_AFAA:
	defb 054h	; afaa

; ----------------------------------------------------------------------
; DATOS leido_AFAB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafab..0xafac  (1 bytes)
DATA_leido_AFAB:
	defb 0f9h	; afab

; ----------------------------------------------------------------------
; DATOS leido_AFAC: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xafac..0xafae  (2 bytes)
DATA_leido_AFAC:
	defb 054h,0b5h	; afac

; ----------------------------------------------------------------------
; DATOS leido_AFAE: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xafae..0xafb6  (8 bytes)
DATA_leido_AFAE:
	defb 0d2h,075h,0d1h,005h,025h,073h,0ech,0eah	; afae  .u..%s..

; ----------------------------------------------------------------------
; DATOS leido_AFB6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xafb6..0xafb7  (1 bytes)
DATA_leido_AFB6:
	defb 002h	; afb6

; ----------------------------------------------------------------------
; DATOS leido_AFB7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xafb7..0xafb9  (2 bytes)
DATA_leido_AFB7:
	defb 071h,0fbh	; afb7

; ----------------------------------------------------------------------
; DATOS leido_AFB9: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xafb9..0xafbc  (3 bytes)
DATA_leido_AFB9:
	defb 002h,0a7h,0afh	; afb9

; ----------------------------------------------------------------------
; DATOS leido_AFBC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafbc..0xafbd  (1 bytes)
DATA_leido_AFBC:
	defb 0f9h	; afbc

; ----------------------------------------------------------------------
; DATOS leido_AFBD: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xafbd..0xafbf  (2 bytes)
DATA_leido_AFBD:
	defb 054h,0b5h	; afbd

; ----------------------------------------------------------------------
; DATOS leido_AFBF: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xafbf..0xafc7  (8 bytes)
DATA_leido_AFBF:
	defb 0d1h,055h,045h,005h,0d2h,095h,0f0h,0f8h	; afbf  .UE.....

; ----------------------------------------------------------------------
; DATOS leido_AFC7: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xafc7..0xafc8  (1 bytes)
DATA_leido_AFC7:
	defb 01dh	; afc7

; ----------------------------------------------------------------------
; DATOS leido_AFC8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafc8..0xafc9  (1 bytes)
DATA_leido_AFC8:
	defb 0eah	; afc8

; ----------------------------------------------------------------------
; DATOS leido_AFC9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xafc9..0xafca  (1 bytes)
DATA_leido_AFC9:
	defb 005h	; afc9

; ----------------------------------------------------------------------
; DATOS leido_AFCA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafca..0xafcb  (1 bytes)
DATA_leido_AFCA:
	defb 0ebh	; afca

; ----------------------------------------------------------------------
; DATOS leido_AFCB: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xafcb..0xafcc  (1 bytes)
DATA_leido_AFCB:
	defb 008h	; afcb

; ----------------------------------------------------------------------
; DATOS leido_AFCC: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xafcc..0xafcd  (1 bytes)
DATA_leido_AFCC:
	defb 030h	; afcc

; ----------------------------------------------------------------------
; DATOS leido_AFCD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafcd..0xafce  (1 bytes)
DATA_leido_AFCD:
	defb 0dbh	; afcd

; ----------------------------------------------------------------------
; DATOS leido_AFCE: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xafce..0xafcf  (1 bytes)
DATA_leido_AFCE:
	defb 002h	; afce

; ----------------------------------------------------------------------
; DATOS leido_AFCF: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xafcf..0xafd1  (2 bytes)
DATA_leido_AFCF:
	defb 0d1h,0f9h	; afcf

; ----------------------------------------------------------------------
; DATOS leido_AFD1: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xafd1..0xafd3  (2 bytes)
DATA_leido_AFD1:
	defb 0a3h,0b5h	; afd1

; ----------------------------------------------------------------------
; DATOS leido_AFD3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafd3..0xafd4  (1 bytes)
DATA_leido_AFD3:
	defb 0eah	; afd3

; ----------------------------------------------------------------------
; DATOS leido_AFD4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xafd4..0xafd5  (1 bytes)
DATA_leido_AFD4:
	defb 006h	; afd4

; ----------------------------------------------------------------------
; DATOS leido_AFD5: 18 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (18 bytes)
;   0xafd5..0xafe7  (18 bytes)
DATA_leido_AFD5:
	defb 0d2h,040h,040h,000h,000h,0d3h,070h,070h,0d1h,040h,040h,000h,000h,0d2h,070h,070h	; afd5  .@@...pp.@@...pp
	defb 0d1h,0f9h	; afe5

; ----------------------------------------------------------------------
; DATOS leido_AFE7: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xafe7..0xafe9  (2 bytes)
DATA_leido_AFE7:
	defb 0afh,0b5h	; afe7

; ----------------------------------------------------------------------
; DATOS leido_AFE9: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xafe9..0xafeb  (2 bytes)
DATA_leido_AFE9:
	defb 0d1h,0f9h	; afe9

; ----------------------------------------------------------------------
; DATOS leido_AFEB: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xafeb..0xafed  (2 bytes)
DATA_leido_AFEB:
	defb 0c1h,0b5h	; afeb

; ----------------------------------------------------------------------
; DATOS leido_AFED: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafed..0xafee  (1 bytes)
DATA_leido_AFED:
	defb 0eah	; afed

; ----------------------------------------------------------------------
; DATOS leido_AFEE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xafee..0xafef  (1 bytes)
DATA_leido_AFEE:
	defb 007h	; afee

; ----------------------------------------------------------------------
; DATOS leido_AFEF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xafef..0xaff0  (1 bytes)
DATA_leido_AFEF:
	defb 0dbh	; afef

; ----------------------------------------------------------------------
; DATOS leido_AFF0: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaff0..0xaff1  (1 bytes)
DATA_leido_AFF0:
	defb 003h	; aff0

; ----------------------------------------------------------------------
; DATOS leido_AFF1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaff1..0xaff2  (1 bytes)
DATA_leido_AFF1:
	defb 0f9h	; aff1

; ----------------------------------------------------------------------
; DATOS leido_AFF2: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xaff2..0xaff4  (2 bytes)
DATA_leido_AFF2:
	defb 0d0h,0b5h	; aff2

; ----------------------------------------------------------------------
; DATOS leido_AFF4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xaff4..0xaff6  (2 bytes)
DATA_leido_AFF4:
	defb 050h,0edh	; aff4

; ----------------------------------------------------------------------
; DATOS leido_AFF6: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xaff6..0xaff7  (1 bytes)
DATA_leido_AFF6:
	defb 002h	; aff6

; ----------------------------------------------------------------------
; DATOS leido_AFF7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaff7..0xaff8  (1 bytes)
DATA_leido_AFF7:
	defb 0ddh	; aff7

; ----------------------------------------------------------------------
; DATOS leido_AFF8: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xaff8..0xaffa  (2 bytes)
DATA_leido_AFF8:
	defb 085h,032h	; aff8

; ----------------------------------------------------------------------
; DATOS leido_AFFA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaffa..0xaffb  (1 bytes)
DATA_leido_AFFA:
	defb 0dbh	; affa

; ----------------------------------------------------------------------
; DATOS leido_AFFB: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xaffb..0xaffc  (1 bytes)
DATA_leido_AFFB:
	defb 001h	; affb

; ----------------------------------------------------------------------
; DATOS leido_AFFC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaffc..0xaffd  (1 bytes)
DATA_leido_AFFC:
	defb 0f2h	; affc

; ----------------------------------------------------------------------
; DATOS leido_AFFD: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xaffd..0xaffe  (1 bytes)
DATA_leido_AFFD:
	defb 020h	; affd

; ----------------------------------------------------------------------
; DATOS leido_AFFE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xaffe..0xafff  (1 bytes)
DATA_leido_AFFE:
	defb 0f1h	; affe

; ----------------------------------------------------------------------
; DATOS leido_AFFF: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xafff..0xb000  (1 bytes)
DATA_leido_AFFF:
	defb 052h	; afff

; ----------------------------------------------------------------------
; DATOS leido_B000: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb000..0xb009  (9 bytes)
DATA_leido_B000:
	defb 0d3h,081h,0b1h,0d2h,041h,021h,041h,051h,0fch	; b000  ....A!AQ.

; ----------------------------------------------------------------------
; DATOS leido_B009: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb009..0xb00c  (3 bytes)
DATA_leido_B009:
	defb 003h,08dh,0afh	; b009

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb00c..0xb0d4  (200 bytes)
DATA_B00C:
	defb 0e9h,008h,0eah,007h,0ebh,008h,020h,0d3h,000h,020h,070h,0d2h,000h,020h,070h,0f9h	; b00c  ...... .. p.. p.
	defb 010h,0b6h,020h,070h,000h,021h,0dbh,002h,0edh,006h,0eah,007h,0f1h,053h,0ddh,00ah	; b01c  .. p.!.......S..
	defb 043h,0f9h,02fh,0b6h,0e9h,004h,0d2h,09ah,0feh,004h,0d0h,0f8h,005h,050h,050h,051h	; b02c  C./..........PPQ
	defb 061h,071h,081h,081h,0feh,001h,0f8h,01dh,0f1h,015h,0f1h,041h,0e9h,008h,0eah,007h	; b03c  aq.........A....
	defb 0ebh,008h,030h,0dbh,001h,0f9h,04fh,0b6h,0d0h,060h,0f9h,09dh,0b6h,0d3h,070h,0d2h	; b04c  ..0...O..`....p.
	defb 000h,020h,020h,050h,070h,070h,0d1h,000h,020h,020h,050h,070h,0f9h,04fh,0b6h,0d0h	; b05c  .  Ppp..  Pp.O..
	defb 060h,0f9h,09dh,0b6h,0e9h,006h,0d2h,070h,0f9h,0aah,0b6h,070h,0eah,006h,0f9h,0beh	; b06c  `......p...p....
	defb 0b6h,0fbh,002h,0cfh,0b6h,0f8h,002h,0f2h,020h,0f1h,052h,0e9h,00ah,0eah,008h,0ebh	; b07c  ........ .R.....
	defb 005h,051h,0d2h,002h,052h,0e9h,00bh,042h,0ebh,007h,050h,022h,0e9h,00dh,0ebh,005h	; b08c  .Q..R..B..P"....
	defb 051h,0a0h,090h,050h,0f8h,01dh,0eah,006h,0ebh,008h,083h,0e9h,004h,0d0h,000h,0d1h	; b09c  Q..P............
	defb 070h,050h,000h,0eah,005h,0d0h,000h,0d1h,070h,050h,000h,0eah,004h,0d0h,000h,0d1h	; b0ac  pP......pP......
	defb 070h,050h,000h,0eah,002h,0d0h,000h,0d1h,070h,050h,000h,0eah,001h,0d0h,000h,0d1h	; b0bc  pP......pP......
	defb 070h,050h,000h,0fbh,002h,0c7h,0b0h,0ffh	; b0cc  pP......

; ----------------------------------------------------------------------
; DATOS leido_B0D4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0d4..0xb0d5  (1 bytes)
DATA_leido_B0D4:
	defb 0feh	; b0d4

; ----------------------------------------------------------------------
; DATOS leido_B0D5: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb0d5..0xb0d6  (1 bytes)
DATA_leido_B0D5:
	defb 001h	; b0d5

; ----------------------------------------------------------------------
; DATOS leido_B0D6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0d6..0xb0d7  (1 bytes)
DATA_leido_B0D6:
	defb 0f8h	; b0d6

; ----------------------------------------------------------------------
; DATOS leido_B0D7: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb0d7..0xb0d8  (1 bytes)
DATA_leido_B0D7:
	defb 01dh	; b0d7

; ----------------------------------------------------------------------
; DATOS leido_B0D8: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb0d8..0xb0db  (3 bytes)
DATA_leido_B0D8:
	defb 0efh,0f0h,0e9h	; b0d8

; ----------------------------------------------------------------------
; DATOS leido_B0DB: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb0db..0xb0dc  (1 bytes)
DATA_leido_B0DB:
	defb 007h	; b0db

; ----------------------------------------------------------------------
; DATOS leido_B0DC: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb0dc..0xb0de  (2 bytes)
DATA_leido_B0DC:
	defb 0c0h,0eah	; b0dc

; ----------------------------------------------------------------------
; DATOS leido_B0DE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb0de..0xb0df  (1 bytes)
DATA_leido_B0DE:
	defb 005h	; b0de

; ----------------------------------------------------------------------
; DATOS leido_B0DF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0df..0xb0e0  (1 bytes)
DATA_leido_B0DF:
	defb 0dbh	; b0df

; ----------------------------------------------------------------------
; DATOS leido_B0E0: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb0e0..0xb0e1  (1 bytes)
DATA_leido_B0E0:
	defb 003h	; b0e0

; ----------------------------------------------------------------------
; DATOS leido_B0E1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0e1..0xb0e2  (1 bytes)
DATA_leido_B0E1:
	defb 0ebh	; b0e1

; ----------------------------------------------------------------------
; DATOS leido_B0E2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb0e2..0xb0e3  (1 bytes)
DATA_leido_B0E2:
	defb 003h	; b0e2

; ----------------------------------------------------------------------
; DATOS leido_B0E3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb0e3..0xb0e4  (1 bytes)
DATA_leido_B0E3:
	defb 060h	; b0e3

; ----------------------------------------------------------------------
; DATOS leido_B0E4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0e4..0xb0e5  (1 bytes)
DATA_leido_B0E4:
	defb 0f9h	; b0e4

; ----------------------------------------------------------------------
; DATOS leido_B0E5: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb0e5..0xb0e7  (2 bytes)
DATA_leido_B0E5:
	defb 022h,0b5h	; b0e5

; ----------------------------------------------------------------------
; DATOS leido_B0E7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0e7..0xb0e8  (1 bytes)
DATA_leido_B0E7:
	defb 0f9h	; b0e7

; ----------------------------------------------------------------------
; DATOS leido_B0E8: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb0e8..0xb0ea  (2 bytes)
DATA_leido_B0E8:
	defb 045h,0b5h	; b0e8

; ----------------------------------------------------------------------
; DATOS leido_B0EA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0ea..0xb0eb  (1 bytes)
DATA_leido_B0EA:
	defb 0f9h	; b0ea

; ----------------------------------------------------------------------
; DATOS leido_B0EB: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb0eb..0xb0ed  (2 bytes)
DATA_leido_B0EB:
	defb 022h,0b5h	; b0eb

; ----------------------------------------------------------------------
; DATOS leido_B0ED: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0ed..0xb0ee  (1 bytes)
DATA_leido_B0ED:
	defb 0e9h	; b0ed

; ----------------------------------------------------------------------
; DATOS leido_B0EE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb0ee..0xb0ef  (1 bytes)
DATA_leido_B0EE:
	defb 001h	; b0ee

; ----------------------------------------------------------------------
; DATOS leido_B0EF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0ef..0xb0f0  (1 bytes)
DATA_leido_B0EF:
	defb 0feh	; b0ef

; ----------------------------------------------------------------------
; DATOS leido_B0F0: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb0f0..0xb0f1  (1 bytes)
DATA_leido_B0F0:
	defb 004h	; b0f0

; ----------------------------------------------------------------------
; DATOS leido_B0F1: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb0f1..0xb0f3  (2 bytes)
DATA_leido_B0F1:
	defb 0d0h,0f8h	; b0f1

; ----------------------------------------------------------------------
; DATOS leido_B0F3: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb0f3..0xb0f4  (1 bytes)
DATA_leido_B0F3:
	defb 005h	; b0f3

; ----------------------------------------------------------------------
; DATOS leido_B0F4: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb0f4..0xb0f7  (3 bytes)
DATA_leido_B0F4:
	defb 052h,053h,0e9h	; b0f4

; ----------------------------------------------------------------------
; DATOS leido_B0F7: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb0f7..0xb0f8  (1 bytes)
DATA_leido_B0F7:
	defb 007h	; b0f7

; ----------------------------------------------------------------------
; DATOS leido_B0F8: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb0f8..0xb0fe  (6 bytes)
DATA_leido_B0F8:
	defb 060h,070h,070h,080h,080h,0feh	; b0f8

; ----------------------------------------------------------------------
; DATOS leido_B0FE: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb0fe..0xb0ff  (1 bytes)
DATA_leido_B0FE:
	defb 001h	; b0fe

; ----------------------------------------------------------------------
; DATOS leido_B0FF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb0ff..0xb100  (1 bytes)
DATA_leido_B0FF:
	defb 0f2h	; b0ff

; ----------------------------------------------------------------------
; DATOS leido_B100: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb100..0xb101  (1 bytes)
DATA_leido_B100:
	defb 018h	; b100

; ----------------------------------------------------------------------
; DATOS leido_B101: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb101..0xb102  (1 bytes)
DATA_leido_B101:
	defb 0f1h	; b101

; ----------------------------------------------------------------------
; DATOS leido_B102: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb102..0xb103  (1 bytes)
DATA_leido_B102:
	defb 054h	; b102

; ----------------------------------------------------------------------
; DATOS leido_B103: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb103..0xb104  (1 bytes)
DATA_leido_B103:
	defb 0f9h	; b103

; ----------------------------------------------------------------------
; DATOS leido_B104: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb104..0xb106  (2 bytes)
DATA_leido_B104:
	defb 076h,0b5h	; b104

; ----------------------------------------------------------------------
; DATOS leido_B106: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb106..0xb10c  (6 bytes)
DATA_leido_B106:
	defb 0d2h,075h,0d1h,005h,025h,0e9h	; b106

; ----------------------------------------------------------------------
; DATOS leido_B10C: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb10c..0xb10d  (1 bytes)
DATA_leido_B10C:
	defb 005h	; b10c

; ----------------------------------------------------------------------
; DATOS leido_B10D: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb10d..0xb10f  (2 bytes)
DATA_leido_B10D:
	defb 073h,0e9h	; b10d

; ----------------------------------------------------------------------
; DATOS leido_B10F: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb10f..0xb110  (1 bytes)
DATA_leido_B10F:
	defb 001h	; b10f

; ----------------------------------------------------------------------
; DATOS leido_B110: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb110..0xb112  (2 bytes)
DATA_leido_B110:
	defb 0ech,0eah	; b110

; ----------------------------------------------------------------------
; DATOS leido_B112: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb112..0xb113  (1 bytes)
DATA_leido_B112:
	defb 002h	; b112

; ----------------------------------------------------------------------
; DATOS leido_B113: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb113..0xb115  (2 bytes)
DATA_leido_B113:
	defb 07ah,0fbh	; b113

; ----------------------------------------------------------------------
; DATOS leido_B115: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb115..0xb118  (3 bytes)
DATA_leido_B115:
	defb 002h,0fdh,0b0h	; b115

; ----------------------------------------------------------------------
; DATOS leido_B118: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb118..0xb119  (1 bytes)
DATA_leido_B118:
	defb 0f9h	; b118

; ----------------------------------------------------------------------
; DATOS leido_B119: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb119..0xb11b  (2 bytes)
DATA_leido_B119:
	defb 076h,0b5h	; b119

; ----------------------------------------------------------------------
; DATOS leido_B11B: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb11b..0xb120  (5 bytes)
DATA_leido_B11B:
	defb 0d1h,055h,045h,005h,0e9h	; b11b

; ----------------------------------------------------------------------
; DATOS leido_B120: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb120..0xb121  (1 bytes)
DATA_leido_B120:
	defb 01fh	; b120

; ----------------------------------------------------------------------
; DATOS leido_B121: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb121..0xb126  (5 bytes)
DATA_leido_B121:
	defb 0d2h,090h,0dch,0f0h,0f8h	; b121

; ----------------------------------------------------------------------
; DATOS leido_B126: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb126..0xb127  (1 bytes)
DATA_leido_B126:
	defb 01dh	; b126

; ----------------------------------------------------------------------
; DATOS leido_B127: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb127..0xb128  (1 bytes)
DATA_leido_B127:
	defb 0e9h	; b127

; ----------------------------------------------------------------------
; DATOS leido_B128: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb128..0xb129  (1 bytes)
DATA_leido_B128:
	defb 007h	; b128

; ----------------------------------------------------------------------
; DATOS leido_B129: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb129..0xb12a  (1 bytes)
DATA_leido_B129:
	defb 0eeh	; b129

; ----------------------------------------------------------------------
; DATOS leido_B12A: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xb12a..0xb12b  (1 bytes)
DATA_leido_B12A:
	defb 003h	; b12a

; ----------------------------------------------------------------------
; DATOS leido_B12B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb12b..0xb12c  (1 bytes)
DATA_leido_B12B:
	defb 0eah	; b12b

; ----------------------------------------------------------------------
; DATOS leido_B12C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb12c..0xb12d  (1 bytes)
DATA_leido_B12C:
	defb 007h	; b12c

; ----------------------------------------------------------------------
; DATOS leido_B12D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb12d..0xb12e  (1 bytes)
DATA_leido_B12D:
	defb 0dbh	; b12d

; ----------------------------------------------------------------------
; DATOS leido_B12E: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb12e..0xb12f  (1 bytes)
DATA_leido_B12E:
	defb 002h	; b12e

; ----------------------------------------------------------------------
; DATOS leido_B12F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb12f..0xb130  (1 bytes)
DATA_leido_B12F:
	defb 0ebh	; b12f

; ----------------------------------------------------------------------
; DATOS leido_B130: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb130..0xb131  (1 bytes)
DATA_leido_B130:
	defb 008h	; b130

; ----------------------------------------------------------------------
; DATOS leido_B131: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb131..0xb132  (1 bytes)
DATA_leido_B131:
	defb 040h	; b131

; ----------------------------------------------------------------------
; DATOS leido_B132: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb132..0xb134  (2 bytes)
DATA_leido_B132:
	defb 0d2h,0f9h	; b132

; ----------------------------------------------------------------------
; DATOS leido_B134: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb134..0xb136  (2 bytes)
DATA_leido_B134:
	defb 0a3h,0b5h	; b134

; ----------------------------------------------------------------------
; DATOS leido_B136: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb136..0xb137  (1 bytes)
DATA_leido_B136:
	defb 0eeh	; b136

; ----------------------------------------------------------------------
; DATOS leido_B137: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xb137..0xb138  (1 bytes)
DATA_leido_B137:
	defb 001h	; b137

; ----------------------------------------------------------------------
; DATOS leido_B138: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xb138..0xb140  (8 bytes)
DATA_leido_B138:
	defb 040h,040h,000h,000h,0d3h,070h,070h,0e9h	; b138  @@...pp.

; ----------------------------------------------------------------------
; DATOS leido_B140: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb140..0xb141  (1 bytes)
DATA_leido_B140:
	defb 001h	; b140

; ----------------------------------------------------------------------
; DATOS leido_B141: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb141..0xb142  (1 bytes)
DATA_leido_B141:
	defb 0eah	; b141

; ----------------------------------------------------------------------
; DATOS leido_B142: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb142..0xb143  (1 bytes)
DATA_leido_B142:
	defb 005h	; b142

; ----------------------------------------------------------------------
; DATOS leido_B143: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb143..0xb145  (2 bytes)
DATA_leido_B143:
	defb 0c0h,0e9h	; b143

; ----------------------------------------------------------------------
; DATOS leido_B145: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb145..0xb146  (1 bytes)
DATA_leido_B145:
	defb 007h	; b145

; ----------------------------------------------------------------------
; DATOS leido_B146: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xb146..0xb14e  (8 bytes)
DATA_leido_B146:
	defb 0d1h,040h,040h,000h,000h,0d2h,070h,0eeh	; b146  .@@...p.

; ----------------------------------------------------------------------
; DATOS leido_B14E: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xb14e..0xb14f  (1 bytes)
DATA_leido_B14E:
	defb 003h	; b14e

; ----------------------------------------------------------------------
; DATOS leido_B14F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb14f..0xb150  (1 bytes)
DATA_leido_B14F:
	defb 0e9h	; b14f

; ----------------------------------------------------------------------
; DATOS leido_B150: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb150..0xb151  (1 bytes)
DATA_leido_B150:
	defb 001h	; b150

; ----------------------------------------------------------------------
; DATOS leido_B151: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb151..0xb153  (2 bytes)
DATA_leido_B151:
	defb 075h,0eah	; b151

; ----------------------------------------------------------------------
; DATOS leido_B153: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb153..0xb154  (1 bytes)
DATA_leido_B153:
	defb 007h	; b153

; ----------------------------------------------------------------------
; DATOS leido_B154: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb154..0xb155  (1 bytes)
DATA_leido_B154:
	defb 0e9h	; b154

; ----------------------------------------------------------------------
; DATOS leido_B155: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb155..0xb156  (1 bytes)
DATA_leido_B155:
	defb 007h	; b155

; ----------------------------------------------------------------------
; DATOS leido_B156: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb156..0xb157  (1 bytes)
DATA_leido_B156:
	defb 0f9h	; b156

; ----------------------------------------------------------------------
; DATOS leido_B157: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb157..0xb159  (2 bytes)
DATA_leido_B157:
	defb 0afh,0b5h	; b157

; ----------------------------------------------------------------------
; DATOS leido_B159: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb159..0xb15b  (2 bytes)
DATA_leido_B159:
	defb 0d2h,0f9h	; b159

; ----------------------------------------------------------------------
; DATOS leido_B15B: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb15b..0xb15d  (2 bytes)
DATA_leido_B15B:
	defb 0c1h,0b5h	; b15b

; ----------------------------------------------------------------------
; DATOS leido_B15D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb15d..0xb15e  (1 bytes)
DATA_leido_B15D:
	defb 0eah	; b15d

; ----------------------------------------------------------------------
; DATOS leido_B15E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb15e..0xb15f  (1 bytes)
DATA_leido_B15E:
	defb 006h	; b15e

; ----------------------------------------------------------------------
; DATOS leido_B15F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb15f..0xb160  (1 bytes)
DATA_leido_B15F:
	defb 0ebh	; b15f

; ----------------------------------------------------------------------
; DATOS leido_B160: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb160..0xb161  (1 bytes)
DATA_leido_B160:
	defb 001h	; b160

; ----------------------------------------------------------------------
; DATOS leido_B161: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb161..0xb162  (1 bytes)
DATA_leido_B161:
	defb 080h	; b161

; ----------------------------------------------------------------------
; DATOS leido_B162: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb162..0xb163  (1 bytes)
DATA_leido_B162:
	defb 0e9h	; b162

; ----------------------------------------------------------------------
; DATOS leido_B163: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb163..0xb164  (1 bytes)
DATA_leido_B163:
	defb 001h	; b163

; ----------------------------------------------------------------------
; DATOS leido_B164: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb164..0xb166  (2 bytes)
DATA_leido_B164:
	defb 0c1h,0e9h	; b164

; ----------------------------------------------------------------------
; DATOS leido_B166: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb166..0xb167  (1 bytes)
DATA_leido_B166:
	defb 007h	; b166

; ----------------------------------------------------------------------
; DATOS leido_B167: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb167..0xb168  (1 bytes)
DATA_leido_B167:
	defb 0f9h	; b167

; ----------------------------------------------------------------------
; DATOS leido_B168: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb168..0xb16a  (2 bytes)
DATA_leido_B168:
	defb 0d0h,0b5h	; b168

; ----------------------------------------------------------------------
; DATOS leido_B16A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb16a..0xb16b  (1 bytes)
DATA_leido_B16A:
	defb 0e9h	; b16a

; ----------------------------------------------------------------------
; DATOS leido_B16B: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb16b..0xb16c  (1 bytes)
DATA_leido_B16B:
	defb 001h	; b16b

; ----------------------------------------------------------------------
; DATOS leido_B16C: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb16c..0xb16e  (2 bytes)
DATA_leido_B16C:
	defb 054h,0e9h	; b16c

; ----------------------------------------------------------------------
; DATOS leido_B16E: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb16e..0xb16f  (1 bytes)
DATA_leido_B16E:
	defb 007h	; b16e

; ----------------------------------------------------------------------
; DATOS leido_B16F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb16f..0xb170  (1 bytes)
DATA_leido_B16F:
	defb 0edh	; b16f

; ----------------------------------------------------------------------
; DATOS leido_B170: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb170..0xb171  (1 bytes)
DATA_leido_B170:
	defb 002h	; b170

; ----------------------------------------------------------------------
; DATOS leido_B171: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb171..0xb172  (1 bytes)
DATA_leido_B171:
	defb 0ebh	; b171

; ----------------------------------------------------------------------
; DATOS leido_B172: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb172..0xb173  (1 bytes)
DATA_leido_B172:
	defb 085h	; b172

; ----------------------------------------------------------------------
; DATOS leido_B173: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb173..0xb174  (1 bytes)
DATA_leido_B173:
	defb 033h	; b173

; ----------------------------------------------------------------------
; DATOS leido_B174: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb174..0xb175  (1 bytes)
DATA_leido_B174:
	defb 0f2h	; b174

; ----------------------------------------------------------------------
; DATOS leido_B175: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb175..0xb176  (1 bytes)
DATA_leido_B175:
	defb 020h	; b175

; ----------------------------------------------------------------------
; DATOS leido_B176: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb176..0xb177  (1 bytes)
DATA_leido_B176:
	defb 0f1h	; b176

; ----------------------------------------------------------------------
; DATOS leido_B177: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb177..0xb178  (1 bytes)
DATA_leido_B177:
	defb 053h	; b177

; ----------------------------------------------------------------------
; DATOS leido_B178: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb178..0xb17f  (7 bytes)
DATA_leido_B178:
	defb 0d3h,082h,0b1h,0d2h,041h,020h,0feh	; b178

; ----------------------------------------------------------------------
; DATOS leido_B17F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb17f..0xb180  (1 bytes)
DATA_leido_B17F:
	defb 004h	; b17f

; ----------------------------------------------------------------------
; DATOS leido_B180: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb180..0xb182  (2 bytes)
DATA_leido_B180:
	defb 0d0h,0f8h	; b180

; ----------------------------------------------------------------------
; DATOS leido_B182: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb182..0xb183  (1 bytes)
DATA_leido_B182:
	defb 005h	; b182

; ----------------------------------------------------------------------
; DATOS leido_B183: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb183..0xb188  (5 bytes)
DATA_leido_B183:
	defb 050h,060h,070h,080h,0fch	; b183

; ----------------------------------------------------------------------
; DATOS leido_B188: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb188..0xb18b  (3 bytes)
DATA_leido_B188:
	defb 003h,0d4h,0b0h	; b188

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb18b..0xb25f  (212 bytes)
DATA_B18B:
	defb 0feh,001h,0f8h,01dh,0eeh,001h,0e9h,004h,0c0h,0e9h,008h,0eah,006h,0edh,002h,0ebh	; b18b  ................
	defb 008h,020h,0d3h,000h,020h,070h,0d2h,000h,020h,070h,0f8h,015h,0f9h,010h,0b6h,020h	; b19b  . .. p.. p.....
	defb 070h,000h,0f8h,054h,0e9h,008h,0edh,005h,0eah,00ah,0ebh,084h,051h,0ddh,089h,053h	; b1ab  p..T........Q..S
	defb 0d2h,00bh,0d3h,0bbh,0d2h,02bh,008h,0edh,007h,0d3h,040h,050h,060h,0edh,005h,0d2h	; b1bb  .....+....@P`...
	defb 00bh,0d3h,0bbh,0d2h,02bh,00bh,0feh,001h,0eeh,001h,0f8h,01dh,0e9h,008h,0c0h,0eah	; b1cb  ....+...........
	defb 005h,0ebh,004h,030h,0f9h,04fh,0b6h,0ebh,004h,040h,0eah,007h,0f2h,020h,0f1h,053h	; b1db  ...0.O...@... .S
	defb 0f8h,002h,0d2h,025h,025h,025h,025h,0f0h,0eeh,001h,0f8h,01dh,0e9h,008h,0c0h,0eah	; b1eb  ...%%%%.........
	defb 004h,0ebh,004h,030h,0f9h,04fh,0b6h,0d0h,060h,0d2h,070h,0d1h,000h,020h,070h,020h	; b1fb  ...0.O..`.p.. p
	defb 000h,0d2h,070h,0d1h,000h,020h,070h,020h,0e9h,006h,0d2h,071h,0f9h,0aah,0b6h,0e9h	; b20b  ..p.. p ...q....
	defb 004h,0c0h,0eeh,001h,0eah,005h,0f9h,0beh,0b6h,0a1h,0a0h,0a0h,0a0h,0e9h,001h,0a5h	; b21b  ................
	defb 0f8h,002h,0e9h,00ah,0eah,008h,0ebh,005h,051h,0dch,0f2h,020h,0f1h,052h,0eeh,002h	; b22b  ........Q.. .R..
	defb 0d2h,002h,0efh,022h,0e9h,00bh,002h,0ebh,007h,050h,0d3h,0a2h,0e9h,00dh,0ebh,005h	; b23b  ...".....P......
	defb 051h,0d2h,050h,050h,020h,0ebh,007h,020h,004h,0ech,0eah,003h,000h,0eah,002h,001h	; b24b  Q.PP .. ........
	defb 0eah,001h,001h,0ffh	; b25b

; ----------------------------------------------------------------------
; DATOS leido_B25F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb25f..0xb260  (1 bytes)
DATA_leido_B25F:
	defb 0feh	; b25f

; ----------------------------------------------------------------------
; DATOS leido_B260: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb260..0xb261  (1 bytes)
DATA_leido_B260:
	defb 001h	; b260

; ----------------------------------------------------------------------
; DATOS leido_B261: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb261..0xb262  (1 bytes)
DATA_leido_B261:
	defb 0f8h	; b261

; ----------------------------------------------------------------------
; DATOS leido_B262: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb262..0xb263  (1 bytes)
DATA_leido_B262:
	defb 00bh	; b262

; ----------------------------------------------------------------------
; DATOS leido_B263: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb263..0xb264  (1 bytes)
DATA_leido_B263:
	defb 0e9h	; b263

; ----------------------------------------------------------------------
; DATOS leido_B264: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb264..0xb265  (1 bytes)
DATA_leido_B264:
	defb 007h	; b264

; ----------------------------------------------------------------------
; DATOS leido_B265: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb265..0xb266  (1 bytes)
DATA_leido_B265:
	defb 0eah	; b265

; ----------------------------------------------------------------------
; DATOS leido_B266: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb266..0xb267  (1 bytes)
DATA_leido_B266:
	defb 008h	; b266

; ----------------------------------------------------------------------
; DATOS leido_B267: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb267..0xb268  (1 bytes)
DATA_leido_B267:
	defb 0edh	; b267

; ----------------------------------------------------------------------
; DATOS leido_B268: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb268..0xb269  (1 bytes)
DATA_leido_B268:
	defb 005h	; b268

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
	defb 087h	; b26a

; ----------------------------------------------------------------------
; DATOS leido_B26B: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb26b..0xb26c  (1 bytes)
DATA_leido_B26B:
	defb 040h	; b26b

; ----------------------------------------------------------------------
; DATOS leido_B26C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb26c..0xb26d  (1 bytes)
DATA_leido_B26C:
	defb 0dbh	; b26c

; ----------------------------------------------------------------------
; DATOS leido_B26D: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb26d..0xb26e  (1 bytes)
DATA_leido_B26D:
	defb 003h	; b26d

; ----------------------------------------------------------------------
; DATOS leido_B26E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb26e..0xb26f  (1 bytes)
DATA_leido_B26E:
	defb 0f2h	; b26e

; ----------------------------------------------------------------------
; DATOS leido_B26F: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb26f..0xb270  (1 bytes)
DATA_leido_B26F:
	defb 020h	; b26f

; ----------------------------------------------------------------------
; DATOS leido_B270: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb270..0xb271  (1 bytes)
DATA_leido_B270:
	defb 0f1h	; b270

; ----------------------------------------------------------------------
; DATOS leido_B271: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb271..0xb272  (1 bytes)
DATA_leido_B271:
	defb 053h	; b271

; ----------------------------------------------------------------------
; DATOS leido_B272: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb272..0xb27d  (11 bytes)
DATA_leido_B272:
	defb 0d2h,055h,0d1h,005h,0d2h,0b5h,0d1h,025h,005h,045h,0edh	; b272  .U.....%.E.

; ----------------------------------------------------------------------
; DATOS leido_B27D: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb27d..0xb27e  (1 bytes)
DATA_leido_B27D:
	defb 006h	; b27d

; ----------------------------------------------------------------------
; DATOS leido_B27E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb27e..0xb27f  (1 bytes)
DATA_leido_B27E:
	defb 0ebh	; b27e

; ----------------------------------------------------------------------
; DATOS leido_B27F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb27f..0xb280  (1 bytes)
DATA_leido_B27F:
	defb 081h	; b27f

; ----------------------------------------------------------------------
; DATOS leido_B280: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb280..0xb281  (1 bytes)
DATA_leido_B280:
	defb 072h	; b280

; ----------------------------------------------------------------------
; DATOS leido_B281: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xb281..0xb289  (8 bytes)
DATA_leido_B281:
	defb 020h,040h,050h,040h,050h,070h,0f0h,0ebh	; b281   @P@Pp..

; ----------------------------------------------------------------------
; DATOS leido_B289: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb289..0xb28a  (1 bytes)
DATA_leido_B289:
	defb 002h	; b289

; ----------------------------------------------------------------------
; DATOS leido_B28A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb28a..0xb28b  (1 bytes)
DATA_leido_B28A:
	defb 081h	; b28a

; ----------------------------------------------------------------------
; DATOS leido_B28B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb28b..0xb28c  (1 bytes)
DATA_leido_B28B:
	defb 0eah	; b28b

; ----------------------------------------------------------------------
; DATOS leido_B28C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb28c..0xb28d  (1 bytes)
DATA_leido_B28C:
	defb 007h	; b28c

; ----------------------------------------------------------------------
; DATOS leido_B28D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb28d..0xb28e  (1 bytes)
DATA_leido_B28D:
	defb 0e9h	; b28d

; ----------------------------------------------------------------------
; DATOS leido_B28E: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb28e..0xb28f  (1 bytes)
DATA_leido_B28E:
	defb 001h	; b28e

; ----------------------------------------------------------------------
; DATOS leido_B28F: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb28f..0xb29a  (11 bytes)
DATA_leido_B28F:
	defb 052h,073h,092h,073h,092h,0b3h,092h,0b3h,0d0h,002h,0eah	; b28f  Rs.s.......

; ----------------------------------------------------------------------
; DATOS leido_B29A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb29a..0xb29b  (1 bytes)
DATA_leido_B29A:
	defb 006h	; b29a

; ----------------------------------------------------------------------
; DATOS leido_B29B: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb29b..0xb2a1  (6 bytes)
DATA_leido_B29B:
	defb 0d1h,0b3h,0d0h,002h,023h,0f8h	; b29b

; ----------------------------------------------------------------------
; DATOS leido_B2A1: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb2a1..0xb2a2  (1 bytes)
DATA_leido_B2A1:
	defb 002h	; b2a1

; ----------------------------------------------------------------------
; DATOS leido_B2A2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2a2..0xb2a3  (1 bytes)
DATA_leido_B2A2:
	defb 0e9h	; b2a2

; ----------------------------------------------------------------------
; DATOS leido_B2A3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb2a3..0xb2a4  (1 bytes)
DATA_leido_B2A3:
	defb 00eh	; b2a3

; ----------------------------------------------------------------------
; DATOS leido_B2A4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2a4..0xb2a5  (1 bytes)
DATA_leido_B2A4:
	defb 0eah	; b2a4

; ----------------------------------------------------------------------
; DATOS leido_B2A5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2a5..0xb2a6  (1 bytes)
DATA_leido_B2A5:
	defb 008h	; b2a5

; ----------------------------------------------------------------------
; DATOS leido_B2A6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2a6..0xb2a7  (1 bytes)
DATA_leido_B2A6:
	defb 0ebh	; b2a6

; ----------------------------------------------------------------------
; DATOS leido_B2A7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb2a7..0xb2a8  (1 bytes)
DATA_leido_B2A7:
	defb 005h	; b2a7

; ----------------------------------------------------------------------
; DATOS leido_B2A8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb2a8..0xb2a9  (1 bytes)
DATA_leido_B2A8:
	defb 040h	; b2a8

; ----------------------------------------------------------------------
; DATOS leido_B2A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2a9..0xb2aa  (1 bytes)
DATA_leido_B2A9:
	defb 0dbh	; b2a9

; ----------------------------------------------------------------------
; DATOS leido_B2AA: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb2aa..0xb2ab  (1 bytes)
DATA_leido_B2AA:
	defb 003h	; b2aa

; ----------------------------------------------------------------------
; DATOS leido_B2AB: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xb2ab..0xb2b3  (8 bytes)
DATA_leido_B2AB:
	defb 0d1h,052h,041h,000h,0d2h,07dh,0ech,0eah	; b2ab  .RA..}..

; ----------------------------------------------------------------------
; DATOS leido_B2B3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2b3..0xb2b4  (1 bytes)
DATA_leido_B2B3:
	defb 002h	; b2b3

; ----------------------------------------------------------------------
; DATOS leido_B2B4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb2b4..0xb2b6  (2 bytes)
DATA_leido_B2B4:
	defb 070h,0ebh	; b2b4

; ----------------------------------------------------------------------
; DATOS leido_B2B6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb2b6..0xb2b7  (1 bytes)
DATA_leido_B2B6:
	defb 005h	; b2b6

; ----------------------------------------------------------------------
; DATOS leido_B2B7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb2b7..0xb2b8  (1 bytes)
DATA_leido_B2B7:
	defb 040h	; b2b7

; ----------------------------------------------------------------------
; DATOS leido_B2B8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2b8..0xb2b9  (1 bytes)
DATA_leido_B2B8:
	defb 0eah	; b2b8

; ----------------------------------------------------------------------
; DATOS leido_B2B9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2b9..0xb2ba  (1 bytes)
DATA_leido_B2B9:
	defb 008h	; b2b9

; ----------------------------------------------------------------------
; DATOS leido_B2BA: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb2ba..0xb2c4  (10 bytes)
DATA_leido_B2BA:
	defb 070h,0d1h,000h,020h,052h,041h,000h,07dh,0ech,0eah	; b2ba  p.. RA.}..

; ----------------------------------------------------------------------
; DATOS leido_B2C4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2c4..0xb2c5  (1 bytes)
DATA_leido_B2C4:
	defb 002h	; b2c4

; ----------------------------------------------------------------------
; DATOS leido_B2C5: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb2c5..0xb2c7  (2 bytes)
DATA_leido_B2C5:
	defb 070h,0ebh	; b2c5

; ----------------------------------------------------------------------
; DATOS leido_B2C7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb2c7..0xb2c8  (1 bytes)
DATA_leido_B2C7:
	defb 005h	; b2c7

; ----------------------------------------------------------------------
; DATOS leido_B2C8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb2c8..0xb2c9  (1 bytes)
DATA_leido_B2C8:
	defb 040h	; b2c8

; ----------------------------------------------------------------------
; DATOS leido_B2C9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2c9..0xb2ca  (1 bytes)
DATA_leido_B2C9:
	defb 0eah	; b2c9

; ----------------------------------------------------------------------
; DATOS leido_B2CA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2ca..0xb2cb  (1 bytes)
DATA_leido_B2CA:
	defb 008h	; b2ca

; ----------------------------------------------------------------------
; DATOS leido_B2CB: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb2cb..0xb2d6  (11 bytes)
DATA_leido_B2CB:
	defb 0d2h,070h,0d1h,000h,020h,072h,051h,040h,00dh,0ech,0eah	; b2cb  .p.. rQ@...

; ----------------------------------------------------------------------
; DATOS leido_B2D6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2d6..0xb2d7  (1 bytes)
DATA_leido_B2D6:
	defb 002h	; b2d6

; ----------------------------------------------------------------------
; DATOS leido_B2D7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb2d7..0xb2d9  (2 bytes)
DATA_leido_B2D7:
	defb 000h,0ebh	; b2d7

; ----------------------------------------------------------------------
; DATOS leido_B2D9: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb2d9..0xb2da  (1 bytes)
DATA_leido_B2D9:
	defb 005h	; b2d9

; ----------------------------------------------------------------------
; DATOS leido_B2DA: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb2da..0xb2db  (1 bytes)
DATA_leido_B2DA:
	defb 040h	; b2da

; ----------------------------------------------------------------------
; DATOS leido_B2DB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2db..0xb2dc  (1 bytes)
DATA_leido_B2DB:
	defb 0eah	; b2db

; ----------------------------------------------------------------------
; DATOS leido_B2DC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2dc..0xb2dd  (1 bytes)
DATA_leido_B2DC:
	defb 008h	; b2dc

; ----------------------------------------------------------------------
; DATOS leido_B2DD: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb2dd..0xb2e6  (9 bytes)
DATA_leido_B2DD:
	defb 0d2h,090h,0d1h,000h,020h,0d1h,006h,0ech,0eah	; b2dd  .... ....

; ----------------------------------------------------------------------
; DATOS leido_B2E6: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2e6..0xb2e7  (1 bytes)
DATA_leido_B2E6:
	defb 002h	; b2e6

; ----------------------------------------------------------------------
; DATOS leido_B2E7: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb2e7..0xb2e9  (2 bytes)
DATA_leido_B2E7:
	defb 000h,0ebh	; b2e7

; ----------------------------------------------------------------------
; DATOS leido_B2E9: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb2e9..0xb2ea  (1 bytes)
DATA_leido_B2E9:
	defb 005h	; b2e9

; ----------------------------------------------------------------------
; DATOS leido_B2EA: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb2ea..0xb2eb  (1 bytes)
DATA_leido_B2EA:
	defb 040h	; b2ea

; ----------------------------------------------------------------------
; DATOS leido_B2EB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2eb..0xb2ec  (1 bytes)
DATA_leido_B2EB:
	defb 0eah	; b2eb

; ----------------------------------------------------------------------
; DATOS leido_B2EC: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2ec..0xb2ed  (1 bytes)
DATA_leido_B2EC:
	defb 008h	; b2ec

; ----------------------------------------------------------------------
; DATOS leido_B2ED: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2ed..0xb2ee  (1 bytes)
DATA_leido_B2ED:
	defb 0f9h	; b2ed

; ----------------------------------------------------------------------
; DATOS leido_B2EE: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb2ee..0xb2f0  (2 bytes)
DATA_leido_B2EE:
	defb 0e1h,0b4h	; b2ee

; ----------------------------------------------------------------------
; DATOS leido_B2F0: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb2f0..0xb2f3  (3 bytes)
DATA_leido_B2F0:
	defb 077h,0ech,0eah	; b2f0

; ----------------------------------------------------------------------
; DATOS leido_B2F3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2f3..0xb2f4  (1 bytes)
DATA_leido_B2F3:
	defb 002h	; b2f3

; ----------------------------------------------------------------------
; DATOS leido_B2F4: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb2f4..0xb2f6  (2 bytes)
DATA_leido_B2F4:
	defb 070h,0ebh	; b2f4

; ----------------------------------------------------------------------
; DATOS leido_B2F6: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb2f6..0xb2f7  (1 bytes)
DATA_leido_B2F6:
	defb 005h	; b2f6

; ----------------------------------------------------------------------
; DATOS leido_B2F7: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb2f7..0xb2f8  (1 bytes)
DATA_leido_B2F7:
	defb 040h	; b2f7

; ----------------------------------------------------------------------
; DATOS leido_B2F8: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2f8..0xb2f9  (1 bytes)
DATA_leido_B2F8:
	defb 0eah	; b2f8

; ----------------------------------------------------------------------
; DATOS leido_B2F9: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb2f9..0xb2fa  (1 bytes)
DATA_leido_B2F9:
	defb 008h	; b2f9

; ----------------------------------------------------------------------
; DATOS leido_B2FA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2fa..0xb2fb  (1 bytes)
DATA_leido_B2FA:
	defb 0f9h	; b2fa

; ----------------------------------------------------------------------
; DATOS leido_B2FB: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb2fb..0xb2fd  (2 bytes)
DATA_leido_B2FB:
	defb 0efh,0b4h	; b2fb

; ----------------------------------------------------------------------
; DATOS leido_B2FD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb2fd..0xb2fe  (1 bytes)
DATA_leido_B2FD:
	defb 0ebh	; b2fd

; ----------------------------------------------------------------------
; DATOS leido_B2FE: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb2fe..0xb2ff  (1 bytes)
DATA_leido_B2FE:
	defb 005h	; b2fe

; ----------------------------------------------------------------------
; DATOS leido_B2FF: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb2ff..0xb300  (1 bytes)
DATA_leido_B2FF:
	defb 080h	; b2ff

; ----------------------------------------------------------------------
; DATOS leido_B300: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xb300..0xb30c  (12 bytes)
DATA_leido_B300:
	defb 0d1h,040h,0d2h,080h,0d1h,000h,0d2h,0b0h,0d1h,000h,020h,0fch	; b300  .@........ .

; ----------------------------------------------------------------------
; DATOS leido_B30C: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb30c..0xb30f  (3 bytes)
DATA_leido_B30C:
	defb 003h,05fh,0b2h	; b30c

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb30f..0xb38c  (125 bytes)
DATA_B30F:
	defb 0f0h,0e9h,008h,0edh,003h,0ebh,085h,040h,0d1h,00fh,0f8h,015h,0e9h,006h,0eah,00ah	; b30f  .......@........
	defb 0ddh,089h,053h,0d1h,04fh,03fh,05fh,04fh,04fh,03fh,05fh,04fh,0feh,001h,0f8h,00bh	; b31f  ..S.O?_OO?_O....
	defb 0e9h,008h,0eah,008h,0ebh,004h,042h,0dbh,001h,0f2h,020h,0f1h,052h,0d2h,0b0h,0f9h	; b32f  ......B... .R...
	defb 0d7h,0b6h,0ebh,003h,073h,0eah,018h,0edh,012h,0d2h,0b0h,0d1h,000h,0d2h,090h,0d1h	; b33f  ....s...........
	defb 000h,0fbh,006h,041h,0b3h,0eah,008h,0ebh,004h,042h,005h,0d2h,0b5h,0d1h,005h,025h	; b34f  ...A.....B.....%
	defb 0fch,002h,02bh,0b3h,0e9h,009h,0eah,008h,0ebh,005h,051h,0d1h,030h,0f9h,0fah,0b6h	; b35f  ..+.......Q.0...
	defb 0ebh,007h,050h,022h,0e9h,00dh,0ebh,005h,051h,0a0h,090h,050h,0eah,008h,0ebh,007h	; b36f  ..P"....Q..P....
	defb 020h,074h,0ech,0eah,003h,070h,0eah,002h,071h,0eah,001h,071h,0ffh	; b37f   t...p..q..q.

; ----------------------------------------------------------------------
; DATOS leido_B38C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb38c..0xb38d  (1 bytes)
DATA_leido_B38C:
	defb 0feh	; b38c

; ----------------------------------------------------------------------
; DATOS leido_B38D: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb38d..0xb38e  (1 bytes)
DATA_leido_B38D:
	defb 001h	; b38d

; ----------------------------------------------------------------------
; DATOS leido_B38E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb38e..0xb38f  (1 bytes)
DATA_leido_B38E:
	defb 0f8h	; b38e

; ----------------------------------------------------------------------
; DATOS leido_B38F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb38f..0xb390  (1 bytes)
DATA_leido_B38F:
	defb 00bh	; b38f

; ----------------------------------------------------------------------
; DATOS leido_B390: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb390..0xb391  (1 bytes)
DATA_leido_B390:
	defb 0e9h	; b390

; ----------------------------------------------------------------------
; DATOS leido_B391: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb391..0xb392  (1 bytes)
DATA_leido_B391:
	defb 007h	; b391

; ----------------------------------------------------------------------
; DATOS leido_B392: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb392..0xb393  (1 bytes)
DATA_leido_B392:
	defb 0eah	; b392

; ----------------------------------------------------------------------
; DATOS leido_B393: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb393..0xb394  (1 bytes)
DATA_leido_B393:
	defb 008h	; b393

; ----------------------------------------------------------------------
; DATOS leido_B394: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb394..0xb395  (1 bytes)
DATA_leido_B394:
	defb 0edh	; b394

; ----------------------------------------------------------------------
; DATOS leido_B395: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb395..0xb396  (1 bytes)
DATA_leido_B395:
	defb 005h	; b395

; ----------------------------------------------------------------------
; DATOS leido_B396: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb396..0xb397  (1 bytes)
DATA_leido_B396:
	defb 0ddh	; b396

; ----------------------------------------------------------------------
; DATOS leido_B397: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb397..0xb399  (2 bytes)
DATA_leido_B397:
	defb 087h,032h	; b397

; ----------------------------------------------------------------------
; DATOS leido_B399: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb399..0xb39a  (1 bytes)
DATA_leido_B399:
	defb 0f2h	; b399

; ----------------------------------------------------------------------
; DATOS leido_B39A: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb39a..0xb39b  (1 bytes)
DATA_leido_B39A:
	defb 020h	; b39a

; ----------------------------------------------------------------------
; DATOS leido_B39B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb39b..0xb39c  (1 bytes)
DATA_leido_B39B:
	defb 0f1h	; b39b

; ----------------------------------------------------------------------
; DATOS leido_B39C: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb39c..0xb39d  (1 bytes)
DATA_leido_B39C:
	defb 053h	; b39c

; ----------------------------------------------------------------------
; DATOS leido_B39D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb39d..0xb39e  (1 bytes)
DATA_leido_B39D:
	defb 0dbh	; b39d

; ----------------------------------------------------------------------
; DATOS leido_B39E: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb39e..0xb39f  (1 bytes)
DATA_leido_B39E:
	defb 003h	; b39e

; ----------------------------------------------------------------------
; DATOS leido_B39F: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb39f..0xb3a8  (9 bytes)
DATA_leido_B39F:
	defb 0d2h,005h,095h,075h,0b5h,095h,0d1h,005h,0edh	; b39f  ...u.....

; ----------------------------------------------------------------------
; DATOS leido_B3A8: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb3a8..0xb3a9  (1 bytes)
DATA_leido_B3A8:
	defb 006h	; b3a8

; ----------------------------------------------------------------------
; DATOS leido_B3A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3a9..0xb3aa  (1 bytes)
DATA_leido_B3A9:
	defb 0ebh	; b3a9

; ----------------------------------------------------------------------
; DATOS leido_B3AA: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb3aa..0xb3ab  (1 bytes)
DATA_leido_B3AA:
	defb 081h	; b3aa

; ----------------------------------------------------------------------
; DATOS leido_B3AB: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb3ab..0xb3ac  (1 bytes)
DATA_leido_B3AB:
	defb 072h	; b3ab

; ----------------------------------------------------------------------
; DATOS leido_B3AC: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb3ac..0xb3b5  (9 bytes)
DATA_leido_B3AC:
	defb 0d2h,0b0h,0d1h,000h,020h,000h,020h,040h,0eah	; b3ac  .... . @.

; ----------------------------------------------------------------------
; DATOS leido_B3B5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3b5..0xb3b6  (1 bytes)
DATA_leido_B3B5:
	defb 007h	; b3b5

; ----------------------------------------------------------------------
; DATOS leido_B3B6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3b6..0xb3b7  (1 bytes)
DATA_leido_B3B6:
	defb 0ebh	; b3b6

; ----------------------------------------------------------------------
; DATOS leido_B3B7: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb3b7..0xb3b8  (1 bytes)
DATA_leido_B3B7:
	defb 002h	; b3b7

; ----------------------------------------------------------------------
; DATOS leido_B3B8: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb3b8..0xb3b9  (1 bytes)
DATA_leido_B3B8:
	defb 081h	; b3b8

; ----------------------------------------------------------------------
; DATOS leido_B3B9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3b9..0xb3ba  (1 bytes)
DATA_leido_B3B9:
	defb 0e9h	; b3b9

; ----------------------------------------------------------------------
; DATOS leido_B3BA: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3ba..0xb3bb  (1 bytes)
DATA_leido_B3BA:
	defb 001h	; b3ba

; ----------------------------------------------------------------------
; DATOS leido_B3BB: 10 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (10 bytes)
;   0xb3bb..0xb3c5  (10 bytes)
DATA_leido_B3BB:
	defb 022h,043h,052h,043h,052h,073h,052h,073h,092h,0eah	; b3bb  "CRCRsRs..

; ----------------------------------------------------------------------
; DATOS leido_B3C5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3c5..0xb3c6  (1 bytes)
DATA_leido_B3C5:
	defb 006h	; b3c5

; ----------------------------------------------------------------------
; DATOS leido_B3C6: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb3c6..0xb3ca  (4 bytes)
DATA_leido_B3C6:
	defb 073h,092h,0b3h,0f8h	; b3c6

; ----------------------------------------------------------------------
; DATOS leido_B3CA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb3ca..0xb3cb  (1 bytes)
DATA_leido_B3CA:
	defb 002h	; b3ca

; ----------------------------------------------------------------------
; DATOS leido_B3CB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3cb..0xb3cc  (1 bytes)
DATA_leido_B3CB:
	defb 0e9h	; b3cb

; ----------------------------------------------------------------------
; DATOS leido_B3CC: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb3cc..0xb3cd  (1 bytes)
DATA_leido_B3CC:
	defb 00eh	; b3cc

; ----------------------------------------------------------------------
; DATOS leido_B3CD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3cd..0xb3ce  (1 bytes)
DATA_leido_B3CD:
	defb 0eah	; b3cd

; ----------------------------------------------------------------------
; DATOS leido_B3CE: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3ce..0xb3cf  (1 bytes)
DATA_leido_B3CE:
	defb 008h	; b3ce

; ----------------------------------------------------------------------
; DATOS leido_B3CF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3cf..0xb3d0  (1 bytes)
DATA_leido_B3CF:
	defb 0ebh	; b3cf

; ----------------------------------------------------------------------
; DATOS leido_B3D0: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb3d0..0xb3d1  (1 bytes)
DATA_leido_B3D0:
	defb 005h	; b3d0

; ----------------------------------------------------------------------
; DATOS leido_B3D1: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb3d1..0xb3d2  (1 bytes)
DATA_leido_B3D1:
	defb 040h	; b3d1

; ----------------------------------------------------------------------
; DATOS leido_B3D2: 8 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (8 bytes)
;   0xb3d2..0xb3da  (8 bytes)
DATA_leido_B3D2:
	defb 0d1h,002h,001h,0d2h,070h,04dh,0ech,0eah	; b3d2  ....pM..

; ----------------------------------------------------------------------
; DATOS leido_B3DA: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3da..0xb3db  (1 bytes)
DATA_leido_B3DA:
	defb 002h	; b3da

; ----------------------------------------------------------------------
; DATOS leido_B3DB: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb3db..0xb3dd  (2 bytes)
DATA_leido_B3DB:
	defb 040h,0ebh	; b3db

; ----------------------------------------------------------------------
; DATOS leido_B3DD: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb3dd..0xb3de  (1 bytes)
DATA_leido_B3DD:
	defb 005h	; b3dd

; ----------------------------------------------------------------------
; DATOS leido_B3DE: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb3de..0xb3df  (1 bytes)
DATA_leido_B3DE:
	defb 040h	; b3de

; ----------------------------------------------------------------------
; DATOS leido_B3DF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3df..0xb3e0  (1 bytes)
DATA_leido_B3DF:
	defb 0eah	; b3df

; ----------------------------------------------------------------------
; DATOS leido_B3E0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3e0..0xb3e1  (1 bytes)
DATA_leido_B3E0:
	defb 008h	; b3e0

; ----------------------------------------------------------------------
; DATOS leido_B3E1: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xb3e1..0xb3ed  (12 bytes)
DATA_leido_B3E1:
	defb 040h,070h,090h,0d1h,022h,001h,0d2h,070h,0d1h,02dh,0ech,0eah	; b3e1  @p.."..p.-..

; ----------------------------------------------------------------------
; DATOS leido_B3ED: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3ed..0xb3ee  (1 bytes)
DATA_leido_B3ED:
	defb 002h	; b3ed

; ----------------------------------------------------------------------
; DATOS leido_B3EE: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb3ee..0xb3f0  (2 bytes)
DATA_leido_B3EE:
	defb 020h,0eah	; b3ee

; ----------------------------------------------------------------------
; DATOS leido_B3F0: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb3f0..0xb3f1  (1 bytes)
DATA_leido_B3F0:
	defb 008h	; b3f0

; ----------------------------------------------------------------------
; DATOS leido_B3F1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb3f1..0xb3f2  (1 bytes)
DATA_leido_B3F1:
	defb 0ebh	; b3f1

; ----------------------------------------------------------------------
; DATOS leido_B3F2: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb3f2..0xb3f3  (1 bytes)
DATA_leido_B3F2:
	defb 005h	; b3f2

; ----------------------------------------------------------------------
; DATOS leido_B3F3: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb3f3..0xb3f4  (1 bytes)
DATA_leido_B3F3:
	defb 040h	; b3f3

; ----------------------------------------------------------------------
; DATOS leido_B3F4: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xb3f4..0xb400  (12 bytes)
DATA_leido_B3F4:
	defb 0d2h,020h,070h,090h,0d1h,042h,021h,000h,0d2h,09dh,0ech,0eah	; b3f4  . p..B!.....

; ----------------------------------------------------------------------
; DATOS leido_B400: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb400..0xb401  (1 bytes)
DATA_leido_B400:
	defb 002h	; b400

; ----------------------------------------------------------------------
; DATOS leido_B401: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb401..0xb403  (2 bytes)
DATA_leido_B401:
	defb 090h,0eah	; b401

; ----------------------------------------------------------------------
; DATOS leido_B403: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb403..0xb404  (1 bytes)
DATA_leido_B403:
	defb 008h	; b403

; ----------------------------------------------------------------------
; DATOS leido_B404: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb404..0xb405  (1 bytes)
DATA_leido_B404:
	defb 0ebh	; b404

; ----------------------------------------------------------------------
; DATOS leido_B405: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb405..0xb406  (1 bytes)
DATA_leido_B405:
	defb 005h	; b405

; ----------------------------------------------------------------------
; DATOS leido_B406: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb406..0xb407  (1 bytes)
DATA_leido_B406:
	defb 040h	; b406

; ----------------------------------------------------------------------
; DATOS leido_B407: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb407..0xb40e  (7 bytes)
DATA_leido_B407:
	defb 050h,090h,0b0h,0d2h,076h,0ech,0eah	; b407

; ----------------------------------------------------------------------
; DATOS leido_B40E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb40e..0xb40f  (1 bytes)
DATA_leido_B40E:
	defb 002h	; b40e

; ----------------------------------------------------------------------
; DATOS leido_B40F: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb40f..0xb411  (2 bytes)
DATA_leido_B40F:
	defb 070h,0ebh	; b40f

; ----------------------------------------------------------------------
; DATOS leido_B411: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb411..0xb412  (1 bytes)
DATA_leido_B411:
	defb 005h	; b411

; ----------------------------------------------------------------------
; DATOS leido_B412: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb412..0xb413  (1 bytes)
DATA_leido_B412:
	defb 040h	; b412

; ----------------------------------------------------------------------
; DATOS leido_B413: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb413..0xb414  (1 bytes)
DATA_leido_B413:
	defb 0eah	; b413

; ----------------------------------------------------------------------
; DATOS leido_B414: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb414..0xb415  (1 bytes)
DATA_leido_B414:
	defb 008h	; b414

; ----------------------------------------------------------------------
; DATOS leido_B415: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb415..0xb416  (1 bytes)
DATA_leido_B415:
	defb 0f9h	; b415

; ----------------------------------------------------------------------
; DATOS leido_B416: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb416..0xb418  (2 bytes)
DATA_leido_B416:
	defb 002h,0b5h	; b416

; ----------------------------------------------------------------------
; DATOS leido_B418: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb418..0xb41a  (2 bytes)
DATA_leido_B418:
	defb 0ech,0eah	; b418

; ----------------------------------------------------------------------
; DATOS leido_B41A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb41a..0xb41b  (1 bytes)
DATA_leido_B41A:
	defb 002h	; b41a

; ----------------------------------------------------------------------
; DATOS leido_B41B: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb41b..0xb41d  (2 bytes)
DATA_leido_B41B:
	defb 040h,0ebh	; b41b

; ----------------------------------------------------------------------
; DATOS leido_B41D: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb41d..0xb41e  (1 bytes)
DATA_leido_B41D:
	defb 005h	; b41d

; ----------------------------------------------------------------------
; DATOS leido_B41E: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb41e..0xb41f  (1 bytes)
DATA_leido_B41E:
	defb 040h	; b41e

; ----------------------------------------------------------------------
; DATOS leido_B41F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb41f..0xb420  (1 bytes)
DATA_leido_B41F:
	defb 0eah	; b41f

; ----------------------------------------------------------------------
; DATOS leido_B420: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb420..0xb421  (1 bytes)
DATA_leido_B420:
	defb 008h	; b420

; ----------------------------------------------------------------------
; DATOS leido_B421: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb421..0xb425  (4 bytes)
DATA_leido_B421:
	defb 040h,061h,096h,0f9h	; b421

; ----------------------------------------------------------------------
; DATOS leido_B425: 2 bytes que leen p10:6DCC, p10:6DCE al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6DCC, p10:6DCE (2 bytes)
;   0xb425..0xb427  (2 bytes)
DATA_leido_B425:
	defb 014h,0b5h	; b425

; ----------------------------------------------------------------------
; DATOS leido_B427: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb427..0xb428  (1 bytes)
DATA_leido_B427:
	defb 0ebh	; b427

; ----------------------------------------------------------------------
; DATOS leido_B428: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb428..0xb429  (1 bytes)
DATA_leido_B428:
	defb 005h	; b428

; ----------------------------------------------------------------------
; DATOS leido_B429: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb429..0xb42a  (1 bytes)
DATA_leido_B429:
	defb 080h	; b429

; ----------------------------------------------------------------------
; DATOS leido_B42A: 7 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (7 bytes)
;   0xb42a..0xb431  (7 bytes)
DATA_leido_B42A:
	defb 0b0h,040h,080h,070h,090h,0b0h,0fch	; b42a

; ----------------------------------------------------------------------
; DATOS leido_B431: 3 bytes que leen p10:6DDF, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DDF, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb431..0xb434  (3 bytes)
DATA_leido_B431:
	defb 003h,08ch,0b3h	; b431

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb434..0xb4bf  (139 bytes)
DATA_B434:
	defb 0e9h,008h,0eah,008h,0edh,003h,0ebh,085h,040h,0d2h,07fh,0c0h,0eeh,001h,0eah,008h	; b434  ........@.......
	defb 0f8h,015h,0f2h,020h,0f1h,052h,0dbh,001h,0ddh,009h,043h,0f9h,02fh,0b6h,0d2h,09ah	; b444  ... .R....C./...
	defb 0efh,0f8h,00bh,0ebh,004h,042h,0dbh,001h,0f1h,052h,0d3h,0b0h,0f9h,01bh,0b7h,0eah	; b454  .....B...R......
	defb 018h,0edh,012h,0ebh,003h,073h,0d2h,070h,090h,050h,090h,0fbh,003h,063h,0b4h,060h	; b464  .....s.p.P...c.`
	defb 090h,0fbh,006h,073h,0b4h,0eah,008h,0ebh,004h,042h,075h,075h,075h,075h,0fch,002h	; b474  ...s.....Buuuu..
	defb 055h,0b4h,0e9h,009h,0eah,008h,0ebh,005h,051h,0d2h,030h,0f9h,040h,0b7h,0f8h,002h	; b484  U.......Q.0.@...
	defb 0e9h,00ah,0eeh,002h,0d3h,002h,0efh,0d1h,022h,0e9h,00bh,002h,0ebh,007h,050h,0d2h	; b494  ........".....P.
	defb 0a2h,0e9h,00dh,0ebh,005h,051h,0d1h,050h,050h,020h,0ebh,007h,020h,0eah,008h,044h	; b4a4  .....Q.PP .. ..D
	defb 0ech,0eah,003h,040h,0eah,002h,041h,0eah,001h,041h,0ffh	; b4b4  ...@..A..A.

; ----------------------------------------------------------------------
; DATOS leido_B4BF: 13 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (13 bytes)
;   0xb4bf..0xb4cc  (13 bytes)
DATA_leido_B4BF:
	defb 090h,000h,090h,090h,000h,090h,030h,000h,090h,000h,090h,000h,0fbh	; b4bf  ......0......

; ----------------------------------------------------------------------
; DATOS leido_B4CC: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb4cc..0xb4cf  (3 bytes)
DATA_leido_B4CC:
	defb 003h,0bfh,0b4h	; b4cc

; ----------------------------------------------------------------------
; DATOS leido_B4CF: 19 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (19 bytes)
;   0xb4cf..0xb4e2  (19 bytes)
DATA_leido_B4CF:
	defb 090h,000h,090h,090h,000h,090h,0fah,090h,000h,090h,090h,000h,090h,030h,000h,090h	; b4cf  .............0..
	defb 000h,0fah,0e9h	; b4df

; ----------------------------------------------------------------------
; DATOS leido_B4E2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb4e2..0xb4e3  (1 bytes)
DATA_leido_B4E2:
	defb 001h	; b4e2

; ----------------------------------------------------------------------
; DATOS leido_B4E3: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb4e3..0xb4e7  (4 bytes)
DATA_leido_B4E3:
	defb 003h,004h,024h,0e9h	; b4e3

; ----------------------------------------------------------------------
; DATOS leido_B4E7: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb4e7..0xb4e8  (1 bytes)
DATA_leido_B4E7:
	defb 00eh	; b4e7

; ----------------------------------------------------------------------
; DATOS leido_B4E8: 27 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (27 bytes)
;   0xb4e8..0xb503  (27 bytes)
DATA_leido_B4E8:
	defb 030h,020h,000h,040h,000h,0d2h,0fah,070h,091h,0d1h,006h,0d2h,090h,0d1h,000h,020h	; b4e8  0 .@...p.......
	defb 052h,041h,000h,0d2h,095h,0d1h,002h,0d2h,0b2h,0fah,0e9h	; b4f8  RA.........

; ----------------------------------------------------------------------
; DATOS leido_B503: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb503..0xb504  (1 bytes)
DATA_leido_B503:
	defb 001h	; b503

; ----------------------------------------------------------------------
; DATOS leido_B504: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb504..0xb508  (4 bytes)
DATA_leido_B504:
	defb 083h,084h,0b4h,0e9h	; b504

; ----------------------------------------------------------------------
; DATOS leido_B508: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb508..0xb509  (1 bytes)
DATA_leido_B508:
	defb 00eh	; b508

; ----------------------------------------------------------------------
; DATOS leido_B509: 76 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (76 bytes)
;   0xb509..0xb555  (76 bytes)
DATA_leido_B509:
	defb 0d1h,000h,0d2h,0a0h,080h,0d1h,000h,0d2h,070h,047h,0fah,0d3h,090h,0d2h,000h,020h	; b509  ........pG.....
	defb 052h,041h,000h,0d3h,095h,0d2h,092h,072h,0fah,0d1h,000h,0d2h,070h,0d1h,020h,0d2h	; b519  RA.....r....p. .
	defb 070h,0d1h,070h,0d2h,070h,0d0h,000h,0d1h,070h,0d0h,020h,0d1h,070h,0d0h,070h,0d1h	; b529  p.p.p...p. .p.p.
	defb 070h,0d1h,000h,0d2h,070h,0d1h,020h,0d2h,070h,0d1h,070h,0fah,0d2h,070h,0d2h,000h	; b539  p...p. .p.p..p..
	defb 0d3h,070h,0d2h,020h,0d3h,070h,0d2h,070h,0d3h,070h,0fah,0f8h	; b549  .p. .p.p.p..

; ----------------------------------------------------------------------
; DATOS leido_B555: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb555..0xb556  (1 bytes)
DATA_leido_B555:
	defb 01dh	; b555

; ----------------------------------------------------------------------
; DATOS leido_B556: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb556..0xb557  (1 bytes)
DATA_leido_B556:
	defb 0eah	; b556

; ----------------------------------------------------------------------
; DATOS leido_B557: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb557..0xb558  (1 bytes)
DATA_leido_B557:
	defb 005h	; b557

; ----------------------------------------------------------------------
; DATOS leido_B558: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb558..0xb559  (1 bytes)
DATA_leido_B558:
	defb 0ebh	; b558

; ----------------------------------------------------------------------
; DATOS leido_B559: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb559..0xb55a  (1 bytes)
DATA_leido_B559:
	defb 008h	; b559

; ----------------------------------------------------------------------
; DATOS leido_B55A: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb55a..0xb55b  (1 bytes)
DATA_leido_B55A:
	defb 086h	; b55a

; ----------------------------------------------------------------------
; DATOS leido_B55B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb55b..0xb55c  (1 bytes)
DATA_leido_B55B:
	defb 0dbh	; b55b

; ----------------------------------------------------------------------
; DATOS leido_B55C: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb55c..0xb55d  (1 bytes)
DATA_leido_B55C:
	defb 002h	; b55c

; ----------------------------------------------------------------------
; DATOS leido_B55D: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (16 bytes)
;   0xb55d..0xb56d  (16 bytes)
DATA_leido_B55D:
	defb 0d1h,001h,000h,001h,000h,001h,001h,001h,001h,000h,001h,000h,001h,001h,001h,0dbh	; b55d  ................

; ----------------------------------------------------------------------
; DATOS leido_B56D: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb56d..0xb56e  (1 bytes)
DATA_leido_B56D:
	defb 001h	; b56d

; ----------------------------------------------------------------------
; DATOS leido_B56E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb56e..0xb56f  (1 bytes)
DATA_leido_B56E:
	defb 0f8h	; b56e

; ----------------------------------------------------------------------
; DATOS leido_B56F: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb56f..0xb570  (1 bytes)
DATA_leido_B56F:
	defb 015h	; b56f

; ----------------------------------------------------------------------
; DATOS leido_B570: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb570..0xb571  (1 bytes)
DATA_leido_B570:
	defb 0ddh	; b570

; ----------------------------------------------------------------------
; DATOS leido_B571: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb571..0xb573  (2 bytes)
DATA_leido_B571:
	defb 087h,032h	; b571

; ----------------------------------------------------------------------
; DATOS leido_B573: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb573..0xb574  (1 bytes)
DATA_leido_B573:
	defb 0eah	; b573

; ----------------------------------------------------------------------
; DATOS leido_B574: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb574..0xb575  (1 bytes)
DATA_leido_B574:
	defb 008h	; b574

; ----------------------------------------------------------------------
; DATOS leido_B575: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb575..0xb577  (2 bytes)
DATA_leido_B575:
	defb 0fah,0eeh	; b575

; ----------------------------------------------------------------------
; DATOS leido_B577: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xb577..0xb578  (1 bytes)
DATA_leido_B577:
	defb 003h	; b577

; ----------------------------------------------------------------------
; DATOS leido_B578: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb578..0xb579  (1 bytes)
DATA_leido_B578:
	defb 0f8h	; b578

; ----------------------------------------------------------------------
; DATOS leido_B579: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb579..0xb57a  (1 bytes)
DATA_leido_B579:
	defb 01dh	; b579

; ----------------------------------------------------------------------
; DATOS leido_B57A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb57a..0xb57b  (1 bytes)
DATA_leido_B57A:
	defb 0e9h	; b57a

; ----------------------------------------------------------------------
; DATOS leido_B57B: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb57b..0xb57c  (1 bytes)
DATA_leido_B57B:
	defb 007h	; b57b

; ----------------------------------------------------------------------
; DATOS leido_B57C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb57c..0xb57d  (1 bytes)
DATA_leido_B57C:
	defb 0eah	; b57c

; ----------------------------------------------------------------------
; DATOS leido_B57D: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb57d..0xb57e  (1 bytes)
DATA_leido_B57D:
	defb 007h	; b57d

; ----------------------------------------------------------------------
; DATOS leido_B57E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb57e..0xb57f  (1 bytes)
DATA_leido_B57E:
	defb 0ebh	; b57e

; ----------------------------------------------------------------------
; DATOS leido_B57F: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb57f..0xb580  (1 bytes)
DATA_leido_B57F:
	defb 008h	; b57f

; ----------------------------------------------------------------------
; DATOS leido_B580: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb580..0xb581  (1 bytes)
DATA_leido_B580:
	defb 086h	; b580

; ----------------------------------------------------------------------
; DATOS leido_B581: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb581..0xb582  (1 bytes)
DATA_leido_B581:
	defb 0dbh	; b581

; ----------------------------------------------------------------------
; DATOS leido_B582: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb582..0xb583  (1 bytes)
DATA_leido_B582:
	defb 002h	; b582

; ----------------------------------------------------------------------
; DATOS leido_B583: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (16 bytes)
;   0xb583..0xb593  (16 bytes)
DATA_leido_B583:
	defb 0d2h,001h,000h,001h,000h,001h,001h,001h,001h,000h,001h,000h,001h,001h,001h,0e9h	; b583  ................

; ----------------------------------------------------------------------
; DATOS leido_B593: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb593..0xb594  (1 bytes)
DATA_leido_B593:
	defb 001h	; b593

; ----------------------------------------------------------------------
; DATOS leido_B594: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb594..0xb596  (2 bytes)
DATA_leido_B594:
	defb 0cah,0e9h	; b594

; ----------------------------------------------------------------------
; DATOS leido_B596: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb596..0xb597  (1 bytes)
DATA_leido_B596:
	defb 007h	; b596

; ----------------------------------------------------------------------
; DATOS leido_B597: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb597..0xb598  (1 bytes)
DATA_leido_B597:
	defb 0dbh	; b597

; ----------------------------------------------------------------------
; DATOS leido_B598: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb598..0xb599  (1 bytes)
DATA_leido_B598:
	defb 001h	; b598

; ----------------------------------------------------------------------
; DATOS leido_B599: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb599..0xb59a  (1 bytes)
DATA_leido_B599:
	defb 0f8h	; b599

; ----------------------------------------------------------------------
; DATOS leido_B59A: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb59a..0xb59b  (1 bytes)
DATA_leido_B59A:
	defb 015h	; b59a

; ----------------------------------------------------------------------
; DATOS leido_B59B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb59b..0xb59c  (1 bytes)
DATA_leido_B59B:
	defb 0eeh	; b59b

; ----------------------------------------------------------------------
; DATOS leido_B59C: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xb59c..0xb59d  (1 bytes)
DATA_leido_B59C:
	defb 001h	; b59c

; ----------------------------------------------------------------------
; DATOS leido_B59D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb59d..0xb59e  (1 bytes)
DATA_leido_B59D:
	defb 0eah	; b59d

; ----------------------------------------------------------------------
; DATOS leido_B59E: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb59e..0xb59f  (1 bytes)
DATA_leido_B59E:
	defb 006h	; b59e

; ----------------------------------------------------------------------
; DATOS leido_B59F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb59f..0xb5a0  (1 bytes)
DATA_leido_B59F:
	defb 0ddh	; b59f

; ----------------------------------------------------------------------
; DATOS leido_B5A0: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb5a0..0xb5a2  (2 bytes)
DATA_leido_B5A0:
	defb 089h,032h	; b5a0

; ----------------------------------------------------------------------
; DATOS leido_B5A2: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb5a2..0xb5ab  (9 bytes)
DATA_leido_B5A2:
	defb 0fah,001h,000h,001h,000h,001h,001h,001h,0fbh	; b5a2  .........

; ----------------------------------------------------------------------
; DATOS leido_B5AB: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb5ab..0xb5ae  (3 bytes)
DATA_leido_B5AB:
	defb 003h,0a3h,0b5h	; b5ab

; ----------------------------------------------------------------------
; DATOS leido_B5AE: 51 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (51 bytes)
;   0xb5ae..0xb5e1  (51 bytes)
DATA_leido_B5AE:
	defb 0fah,001h,000h,001h,000h,001h,001h,001h,001h,000h,001h,000h,000h,000h,040h,040h	; b5ae  ..............@@
	defb 050h,050h,0fah,051h,050h,051h,050h,071h,071h,071h,001h,000h,001h,000h,001h,001h	; b5be  PP.QPQPqqq......
	defb 001h,0fah,0d3h,000h,050h,090h,0d2h,000h,050h,090h,0d1h,000h,0d2h,090h,050h,000h	; b5ce  ....P...P.....P.
	defb 0d3h,090h,0fah	; b5de

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb5e1..0xb754  (371 bytes)
DATA_B5E1:
	defb 090h,000h,090h,030h,000h,090h,0fbh,002h,0e1h,0b5h,0fah,090h,000h,090h,030h,000h	; b5e1  ...0..........0.
	defb 090h,090h,000h,090h,030h,000h,030h,0fah,0d4h,091h,090h,0d3h,090h,0d4h,090h,090h	; b5f1  ....0.0.........
	defb 091h,090h,0d3h,090h,0d4h,090h,090h,091h,090h,0d3h,090h,0d4h,090h,090h,0fah,0ebh	; b601  ................
	defb 001h,010h,0e9h,004h,0d1h,000h,020h,070h,0d0h,000h,020h,070h,0eah,004h,000h,020h	; b611  ...... p.. p...
	defb 070h,0eah,003h,000h,020h,070h,0ech,0eah,001h,000h,020h,070h,000h,0fah,0e9h,008h	; b621  p... p.... p....
	defb 0d2h,045h,0d1h,005h,0d2h,0b5h,065h,09bh,04bh,0d1h,04bh,03bh,095h,041h,021h,001h	; b631  .E....e.K.K..A!.
	defb 0fah,090h,000h,000h,030h,000h,010h,090h,000h,090h,030h,010h,090h,0fah,0d3h,050h	; b641  ....0.....0....P
	defb 090h,0d2h,000h,050h,090h,0d1h,000h,050h,000h,0d2h,090h,050h,000h,0d3h,090h,0fbh	; b651  ...P...P...P....
	defb 002h,04fh,0b6h,0d3h,040h,070h,0d2h,000h,040h,070h,0d1h,000h,040h,000h,0d2h,070h	; b661  .O..@p..@p..@..p
	defb 040h,000h,0d3h,070h,0fbh,002h,064h,0b6h,0efh,0d3h,050h,090h,0d2h,000h,050h,090h	; b671  @..p..d...P...P.
	defb 0d1h,000h,050h,090h,0d0h,000h,0d1h,050h,090h,0d0h,050h,0d3h,060h,090h,0d2h,020h	; b681  ..P....P..P.`..
	defb 060h,090h,0d1h,020h,060h,090h,0d0h,020h,0d1h,060h,090h,0fah,0d2h,070h,0d1h,000h	; b691  `.. `.. .`...p..
	defb 020h,070h,020h,000h,0fbh,002h,09dh,0b6h,0fah,0d1h,000h,020h,070h,070h,0d0h,000h	; b6a1   p ........ pp..
	defb 020h,070h,0d2h,070h,0d1h,000h,020h,070h,070h,0d0h,000h,020h,0fah,0e9h,009h,0ebh	; b6b1   p.p.. pp.. ....
	defb 008h,030h,0dbh,001h,0d2h,081h,080h,080h,080h,080h,0fbh,002h,0c6h,0b6h,0e9h,00ah	; b6c1  .0..............
	defb 0a1h,0a0h,0a0h,0a0h,0a0h,0fah,0d1h,000h,0d2h,090h,0d1h,000h,0d2h,0b0h,0d1h,000h	; b6d1  ................
	defb 0d2h,098h,092h,0d1h,002h,072h,0d2h,0b0h,0d1h,000h,0d2h,070h,0d1h,000h,0d2h,0b0h	; b6e1  .....r.....p....
	defb 0d1h,000h,0d2h,078h,072h,0d1h,002h,072h,0fah,020h,000h,035h,0d2h,080h,0d1h,000h	; b6f1  ...xr..r. .5....
	defb 030h,0e9h,00ah,050h,030h,020h,055h,0d2h,0a0h,0d1h,020h,050h,0f8h,002h,0e9h,00ah	; b701  0..P0 U... P....
	defb 0eah,008h,0d3h,002h,0d1h,052h,0e9h,00bh,042h,0fah,0d2h,000h,0d3h,090h,0d2h,000h	; b711  .....R..B.......
	defb 0d3h,0b0h,0d2h,000h,0d3h,098h,0d2h,052h,092h,0d1h,002h,0d3h,0b0h,0d2h,000h,0d3h	; b721  .......R........
	defb 070h,0d2h,000h,0d3h,0b0h,0d2h,000h,0d3h,078h,0d2h,042h,072h,0d1h,042h,0fah,020h	; b731  p.......x.Br.B.
	defb 000h,035h,0d3h,080h,0d2h,000h,030h,0e9h,00ah,050h,030h,020h,055h,0d3h,0a0h,0d2h	; b741  .5....0..P0 U...
	defb 020h,050h,0fah	; b751

; ----------------------------------------------------------------------
; DATOS leido_B754: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb754..0xb755  (1 bytes)
DATA_leido_B754:
	defb 0feh	; b754

; ----------------------------------------------------------------------
; DATOS leido_B755: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb755..0xb756  (1 bytes)
DATA_leido_B755:
	defb 001h	; b755

; ----------------------------------------------------------------------
; DATOS leido_B756: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb756..0xb757  (1 bytes)
DATA_leido_B756:
	defb 0e9h	; b756

; ----------------------------------------------------------------------
; DATOS leido_B757: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb757..0xb758  (1 bytes)
DATA_leido_B757:
	defb 004h	; b757

; ----------------------------------------------------------------------
; DATOS leido_B758: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb758..0xb759  (1 bytes)
DATA_leido_B758:
	defb 0d6h	; b758

; ----------------------------------------------------------------------
; DATOS leido_B759: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xb759..0xb75b  (2 bytes)
DATA_leido_B759:
	defb 003h,002h	; b759

; ----------------------------------------------------------------------
; DATOS leido_B75B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb75b..0xb75c  (1 bytes)
DATA_leido_B75B:
	defb 0eah	; b75b

; ----------------------------------------------------------------------
; DATOS leido_B75C: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb75c..0xb75d  (1 bytes)
DATA_leido_B75C:
	defb 008h	; b75c

; ----------------------------------------------------------------------
; DATOS leido_B75D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb75d..0xb75e  (1 bytes)
DATA_leido_B75D:
	defb 0ebh	; b75d

; ----------------------------------------------------------------------
; DATOS leido_B75E: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb75e..0xb75f  (1 bytes)
DATA_leido_B75E:
	defb 002h	; b75e

; ----------------------------------------------------------------------
; DATOS leido_B75F: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb75f..0xb760  (1 bytes)
DATA_leido_B75F:
	defb 040h	; b75f

; ----------------------------------------------------------------------
; DATOS leido_B760: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb760..0xb761  (1 bytes)
DATA_leido_B760:
	defb 0dbh	; b760

; ----------------------------------------------------------------------
; DATOS leido_B761: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb761..0xb762  (1 bytes)
DATA_leido_B761:
	defb 002h	; b761

; ----------------------------------------------------------------------
; DATOS leido_B762: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb762..0xb76d  (11 bytes)
DATA_leido_B762:
	defb 0d0h,021h,0d1h,061h,0a1h,0d0h,001h,0d1h,0a1h,061h,0fbh	; b762  .!.a.....a.

; ----------------------------------------------------------------------
; DATOS leido_B76D: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb76d..0xb770  (3 bytes)
DATA_leido_B76D:
	defb 00ah,062h,0b7h	; b76d

; ----------------------------------------------------------------------
; DATOS leido_B770: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb770..0xb773  (3 bytes)
DATA_leido_B770:
	defb 0dch,0d8h,0feh	; b770

; ----------------------------------------------------------------------
; DATOS leido_B773: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb773..0xb774  (1 bytes)
DATA_leido_B773:
	defb 001h	; b773

; ----------------------------------------------------------------------
; DATOS leido_B774: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb774..0xb775  (1 bytes)
DATA_leido_B774:
	defb 0e9h	; b774

; ----------------------------------------------------------------------
; DATOS leido_B775: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb775..0xb776  (1 bytes)
DATA_leido_B775:
	defb 004h	; b775

; ----------------------------------------------------------------------
; DATOS leido_B776: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb776..0xb777  (1 bytes)
DATA_leido_B776:
	defb 0d6h	; b776

; ----------------------------------------------------------------------
; DATOS leido_B777: 2 bytes que leen p10:6E70, p10:6E75 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6E70, p10:6E75 (2 bytes)
;   0xb777..0xb779  (2 bytes)
DATA_leido_B777:
	defb 003h,002h	; b777

; ----------------------------------------------------------------------
; DATOS leido_B779: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb779..0xb77a  (1 bytes)
DATA_leido_B779:
	defb 0eah	; b779

; ----------------------------------------------------------------------
; DATOS leido_B77A: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb77a..0xb77b  (1 bytes)
DATA_leido_B77A:
	defb 008h	; b77a

; ----------------------------------------------------------------------
; DATOS leido_B77B: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb77b..0xb77c  (1 bytes)
DATA_leido_B77B:
	defb 0ebh	; b77b

; ----------------------------------------------------------------------
; DATOS leido_B77C: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb77c..0xb77d  (1 bytes)
DATA_leido_B77C:
	defb 002h	; b77c

; ----------------------------------------------------------------------
; DATOS leido_B77D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb77d..0xb77e  (1 bytes)
DATA_leido_B77D:
	defb 040h	; b77d

; ----------------------------------------------------------------------
; DATOS leido_B77E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb77e..0xb77f  (1 bytes)
DATA_leido_B77E:
	defb 0dbh	; b77e

; ----------------------------------------------------------------------
; DATOS leido_B77F: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb77f..0xb780  (1 bytes)
DATA_leido_B77F:
	defb 002h	; b77f

; ----------------------------------------------------------------------
; DATOS leido_B780: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb780..0xb785  (5 bytes)
DATA_leido_B780:
	defb 0d1h,0b1h,041h,061h,0fbh	; b780

; ----------------------------------------------------------------------
; DATOS leido_B785: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb785..0xb788  (3 bytes)
DATA_leido_B785:
	defb 005h,080h,0b7h	; b785

; ----------------------------------------------------------------------
; DATOS leido_B788: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb788..0xb78c  (4 bytes)
DATA_leido_B788:
	defb 0a1h,031h,051h,0fbh	; b788

; ----------------------------------------------------------------------
; DATOS leido_B78C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb78c..0xb78f  (3 bytes)
DATA_leido_B78C:
	defb 005h,088h,0b7h	; b78c

; ----------------------------------------------------------------------
; DATOS leido_B78F: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb78f..0xb793  (4 bytes)
DATA_leido_B78F:
	defb 0b1h,041h,061h,0fbh	; b78f

; ----------------------------------------------------------------------
; DATOS leido_B793: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb793..0xb796  (3 bytes)
DATA_leido_B793:
	defb 005h,08fh,0b7h	; b793

; ----------------------------------------------------------------------
; DATOS leido_B796: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb796..0xb79c  (6 bytes)
DATA_leido_B796:
	defb 0d0h,001h,0d1h,051h,071h,0fbh	; b796

; ----------------------------------------------------------------------
; DATOS leido_B79C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb79c..0xb79f  (3 bytes)
DATA_leido_B79C:
	defb 004h,096h,0b7h	; b79c

; ----------------------------------------------------------------------
; DATOS leido_B79F: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb79f..0xb7aa  (11 bytes)
DATA_leido_B79F:
	defb 0d0h,021h,0d1h,071h,091h,0d0h,011h,0d1h,081h,0a1h,0fbh	; b79f  .!.q.......

; ----------------------------------------------------------------------
; DATOS leido_B7AA: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb7aa..0xb7ad  (3 bytes)
DATA_leido_B7AA:
	defb 005h,0a4h,0b7h	; b7aa

; ----------------------------------------------------------------------
; DATOS leido_B7AD: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb7ad..0xb7b3  (6 bytes)
DATA_leido_B7AD:
	defb 0d0h,021h,0d1h,071h,091h,0fbh	; b7ad

; ----------------------------------------------------------------------
; DATOS leido_B7B3: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb7b3..0xb7b6  (3 bytes)
DATA_leido_B7B3:
	defb 005h,0adh,0b7h	; b7b3

; ----------------------------------------------------------------------
; DATOS leido_B7B6: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb7b6..0xb7bc  (6 bytes)
DATA_leido_B7B6:
	defb 0d0h,031h,0d1h,081h,0a1h,0fbh	; b7b6

; ----------------------------------------------------------------------
; DATOS leido_B7BC: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb7bc..0xb7bf  (3 bytes)
DATA_leido_B7BC:
	defb 005h,0b6h,0b7h	; b7bc

; ----------------------------------------------------------------------
; DATOS leido_B7BF: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb7bf..0xb7c5  (6 bytes)
DATA_leido_B7BF:
	defb 0d0h,021h,0d1h,071h,091h,0fbh	; b7bf

; ----------------------------------------------------------------------
; DATOS leido_B7C5: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb7c5..0xb7c8  (3 bytes)
DATA_leido_B7C5:
	defb 003h,0bfh,0b7h	; b7c5

; ----------------------------------------------------------------------
; DATOS leido_B7C8: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 11 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (16 bytes)
;   0xb7c8..0xb7d8  (16 bytes)
DATA_leido_B7C8:
	defb 0d0h,031h,0d1h,081h,0a1h,0fbh,002h,0c8h,0b7h,0f0h,0dch,0d8h,0fdh,054h,0b7h,0feh	; b7c8  .1...........T..

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
	defb 004h	; b7da

; ----------------------------------------------------------------------
; DATOS leido_B7DB: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb7db..0xb7dd  (2 bytes)
DATA_leido_B7DB:
	defb 0c3h,0eah	; b7db

; ----------------------------------------------------------------------
; DATOS leido_B7DD: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb7dd..0xb7de  (1 bytes)
DATA_leido_B7DD:
	defb 007h	; b7dd

; ----------------------------------------------------------------------
; DATOS leido_B7DE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7de..0xb7df  (1 bytes)
DATA_leido_B7DE:
	defb 0edh	; b7de

; ----------------------------------------------------------------------
; DATOS leido_B7DF: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb7df..0xb7e0  (1 bytes)
DATA_leido_B7DF:
	defb 005h	; b7df

; ----------------------------------------------------------------------
; DATOS leido_B7E0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7e0..0xb7e1  (1 bytes)
DATA_leido_B7E0:
	defb 0ebh	; b7e0

; ----------------------------------------------------------------------
; DATOS leido_B7E1: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb7e1..0xb7e2  (1 bytes)
DATA_leido_B7E1:
	defb 081h	; b7e1

; ----------------------------------------------------------------------
; DATOS leido_B7E2: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb7e2..0xb7e3  (1 bytes)
DATA_leido_B7E2:
	defb 010h	; b7e2

; ----------------------------------------------------------------------
; DATOS leido_B7E3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7e3..0xb7e4  (1 bytes)
DATA_leido_B7E3:
	defb 0dbh	; b7e3

; ----------------------------------------------------------------------
; DATOS leido_B7E4: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb7e4..0xb7e5  (1 bytes)
DATA_leido_B7E4:
	defb 002h	; b7e4

; ----------------------------------------------------------------------
; DATOS leido_B7E5: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb7e5..0xb7f0  (11 bytes)
DATA_leido_B7E5:
	defb 0d0h,021h,0d1h,061h,0a1h,0d0h,001h,0d1h,0a1h,061h,0fbh	; b7e5  .!.a.....a.

; ----------------------------------------------------------------------
; DATOS leido_B7F0: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb7f0..0xb7f3  (3 bytes)
DATA_leido_B7F0:
	defb 009h,0e5h,0b7h	; b7f0

; ----------------------------------------------------------------------
; DATOS leido_B7F3: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb7f3..0xb7fc  (9 bytes)
DATA_leido_B7F3:
	defb 0d0h,021h,0d1h,061h,0a1h,0d0h,001h,0dch,0feh	; b7f3  .!.a.....

; ----------------------------------------------------------------------
; DATOS leido_B7FC: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb7fc..0xb7fd  (1 bytes)
DATA_leido_B7FC:
	defb 001h	; b7fc

; ----------------------------------------------------------------------
; DATOS leido_B7FD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb7fd..0xb7fe  (1 bytes)
DATA_leido_B7FD:
	defb 0e9h	; b7fd

; ----------------------------------------------------------------------
; DATOS leido_B7FE: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb7fe..0xb7ff  (1 bytes)
DATA_leido_B7FE:
	defb 004h	; b7fe

; ----------------------------------------------------------------------
; DATOS leido_B7FF: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb7ff..0xb801  (2 bytes)
DATA_leido_B7FF:
	defb 0c3h,0eah	; b7ff

; ----------------------------------------------------------------------
; DATOS leido_B801: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb801..0xb802  (1 bytes)
DATA_leido_B801:
	defb 007h	; b801

; ----------------------------------------------------------------------
; DATOS leido_B802: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb802..0xb803  (1 bytes)
DATA_leido_B802:
	defb 0edh	; b802

; ----------------------------------------------------------------------
; DATOS leido_B803: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb803..0xb804  (1 bytes)
DATA_leido_B803:
	defb 005h	; b803

; ----------------------------------------------------------------------
; DATOS leido_B804: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb804..0xb805  (1 bytes)
DATA_leido_B804:
	defb 0ebh	; b804

; ----------------------------------------------------------------------
; DATOS leido_B805: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb805..0xb806  (1 bytes)
DATA_leido_B805:
	defb 081h	; b805

; ----------------------------------------------------------------------
; DATOS leido_B806: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb806..0xb807  (1 bytes)
DATA_leido_B806:
	defb 010h	; b806

; ----------------------------------------------------------------------
; DATOS leido_B807: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb807..0xb808  (1 bytes)
DATA_leido_B807:
	defb 0dbh	; b807

; ----------------------------------------------------------------------
; DATOS leido_B808: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb808..0xb809  (1 bytes)
DATA_leido_B808:
	defb 002h	; b808

; ----------------------------------------------------------------------
; DATOS leido_B809: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb809..0xb80e  (5 bytes)
DATA_leido_B809:
	defb 0d1h,0b1h,041h,061h,0fbh	; b809

; ----------------------------------------------------------------------
; DATOS leido_B80E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb80e..0xb811  (3 bytes)
DATA_leido_B80E:
	defb 005h,009h,0b8h	; b80e

; ----------------------------------------------------------------------
; DATOS leido_B811: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb811..0xb815  (4 bytes)
DATA_leido_B811:
	defb 0a1h,031h,051h,0fbh	; b811

; ----------------------------------------------------------------------
; DATOS leido_B815: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb815..0xb818  (3 bytes)
DATA_leido_B815:
	defb 005h,011h,0b8h	; b815

; ----------------------------------------------------------------------
; DATOS leido_B818: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb818..0xb81c  (4 bytes)
DATA_leido_B818:
	defb 0b1h,041h,061h,0fbh	; b818

; ----------------------------------------------------------------------
; DATOS leido_B81C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb81c..0xb81f  (3 bytes)
DATA_leido_B81C:
	defb 005h,018h,0b8h	; b81c

; ----------------------------------------------------------------------
; DATOS leido_B81F: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb81f..0xb825  (6 bytes)
DATA_leido_B81F:
	defb 0d0h,001h,0d1h,051h,071h,0fbh	; b81f

; ----------------------------------------------------------------------
; DATOS leido_B825: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb825..0xb828  (3 bytes)
DATA_leido_B825:
	defb 004h,01fh,0b8h	; b825

; ----------------------------------------------------------------------
; DATOS leido_B828: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb828..0xb833  (11 bytes)
DATA_leido_B828:
	defb 0d0h,021h,0d1h,071h,091h,0d0h,011h,0d1h,081h,0a1h,0fbh	; b828  .!.q.......

; ----------------------------------------------------------------------
; DATOS leido_B833: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb833..0xb836  (3 bytes)
DATA_leido_B833:
	defb 005h,02dh,0b8h	; b833

; ----------------------------------------------------------------------
; DATOS leido_B836: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb836..0xb83c  (6 bytes)
DATA_leido_B836:
	defb 0d0h,021h,0d1h,071h,091h,0fbh	; b836

; ----------------------------------------------------------------------
; DATOS leido_B83C: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb83c..0xb83f  (3 bytes)
DATA_leido_B83C:
	defb 005h,036h,0b8h	; b83c

; ----------------------------------------------------------------------
; DATOS leido_B83F: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb83f..0xb845  (6 bytes)
DATA_leido_B83F:
	defb 0d0h,031h,0d1h,081h,0a1h,0fbh	; b83f

; ----------------------------------------------------------------------
; DATOS leido_B845: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb845..0xb848  (3 bytes)
DATA_leido_B845:
	defb 005h,03fh,0b8h	; b845

; ----------------------------------------------------------------------
; DATOS leido_B848: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb848..0xb84e  (6 bytes)
DATA_leido_B848:
	defb 0d0h,021h,0d1h,071h,091h,0fbh	; b848

; ----------------------------------------------------------------------
; DATOS leido_B84E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb84e..0xb851  (3 bytes)
DATA_leido_B84E:
	defb 003h,048h,0b8h	; b84e

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb851..0xb85d  (12 bytes)
DATA_B851:
	defb 0d0h,031h,0d1h,081h,0a1h,0d0h,031h,0dch,0f0h,0fdh,0d7h,0b7h	; b851  .1....1.....

; ----------------------------------------------------------------------
; DATOS leido_B85D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb85d..0xb85e  (1 bytes)
DATA_leido_B85D:
	defb 0feh	; b85d

; ----------------------------------------------------------------------
; DATOS leido_B85E: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb85e..0xb85f  (1 bytes)
DATA_leido_B85E:
	defb 001h	; b85e

; ----------------------------------------------------------------------
; DATOS leido_B85F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb85f..0xb860  (1 bytes)
DATA_leido_B85F:
	defb 0e9h	; b85f

; ----------------------------------------------------------------------
; DATOS leido_B860: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb860..0xb861  (1 bytes)
DATA_leido_B860:
	defb 008h	; b860

; ----------------------------------------------------------------------
; DATOS leido_B861: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb861..0xb862  (1 bytes)
DATA_leido_B861:
	defb 0eah	; b861

; ----------------------------------------------------------------------
; DATOS leido_B862: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb862..0xb863  (1 bytes)
DATA_leido_B862:
	defb 005h	; b862

; ----------------------------------------------------------------------
; DATOS leido_B863: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xb863..0xb86f  (12 bytes)
DATA_leido_B863:
	defb 0c2h,0ech,0d2h,008h,025h,048h,065h,008h,025h,048h,062h,0feh	; b863  ....%He.%Hb.

; ----------------------------------------------------------------------
; DATOS leido_B86F: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb86f..0xb870  (1 bytes)
DATA_leido_B86F:
	defb 001h	; b86f

; ----------------------------------------------------------------------
; DATOS leido_B870: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb870..0xb871  (1 bytes)
DATA_leido_B870:
	defb 0e9h	; b870

; ----------------------------------------------------------------------
; DATOS leido_B871: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb871..0xb872  (1 bytes)
DATA_leido_B871:
	defb 008h	; b871

; ----------------------------------------------------------------------
; DATOS leido_B872: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb872..0xb873  (1 bytes)
DATA_leido_B872:
	defb 0edh	; b872

; ----------------------------------------------------------------------
; DATOS leido_B873: 1 bytes que lee p10:6CBB al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CBB (1 bytes)
;   0xb873..0xb874  (1 bytes)
DATA_leido_B873:
	defb 002h	; b873

; ----------------------------------------------------------------------
; DATOS leido_B874: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb874..0xb875  (1 bytes)
DATA_leido_B874:
	defb 0eah	; b874

; ----------------------------------------------------------------------
; DATOS leido_B875: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb875..0xb876  (1 bytes)
DATA_leido_B875:
	defb 005h	; b875

; ----------------------------------------------------------------------
; DATOS leido_B876: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb876..0xb878  (2 bytes)
DATA_leido_B876:
	defb 0c2h,0ebh	; b876

; ----------------------------------------------------------------------
; DATOS leido_B878: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb878..0xb879  (1 bytes)
DATA_leido_B878:
	defb 087h	; b878

; ----------------------------------------------------------------------
; DATOS leido_B879: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb879..0xb87a  (1 bytes)
DATA_leido_B879:
	defb 020h	; b879

; ----------------------------------------------------------------------
; DATOS leido_B87A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb87a..0xb87b  (1 bytes)
DATA_leido_B87A:
	defb 0dbh	; b87a

; ----------------------------------------------------------------------
; DATOS leido_B87B: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb87b..0xb87c  (1 bytes)
DATA_leido_B87B:
	defb 002h	; b87b

; ----------------------------------------------------------------------
; DATOS leido_B87C: 16 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 5 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (16
;   bytes)
;   0xb87c..0xb88c  (16 bytes)
DATA_leido_B87C:
	defb 0d2h,06eh,05eh,06eh,07bh,092h,0aeh,09eh,0aeh,098h,0a2h,0dch,0fdh,05dh,0b8h,0feh	; b87c  .n^n{........]..

; ----------------------------------------------------------------------
; DATOS leido_B88C: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb88c..0xb88d  (1 bytes)
DATA_leido_B88C:
	defb 001h	; b88c

; ----------------------------------------------------------------------
; DATOS leido_B88D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb88d..0xb88e  (1 bytes)
DATA_leido_B88D:
	defb 0eeh	; b88d

; ----------------------------------------------------------------------
; DATOS leido_B88E: 1 bytes que lee p10:6CDE al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6CDE (1 bytes)
;   0xb88e..0xb88f  (1 bytes)
DATA_leido_B88E:
	defb 001h	; b88e

; ----------------------------------------------------------------------
; DATOS leido_B88F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb88f..0xb890  (1 bytes)
DATA_leido_B88F:
	defb 0f8h	; b88f

; ----------------------------------------------------------------------
; DATOS leido_B890: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb890..0xb891  (1 bytes)
DATA_leido_B890:
	defb 054h	; b890

; ----------------------------------------------------------------------
; DATOS leido_B891: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb891..0xb892  (1 bytes)
DATA_leido_B891:
	defb 0e9h	; b891

; ----------------------------------------------------------------------
; DATOS leido_B892: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb892..0xb893  (1 bytes)
DATA_leido_B892:
	defb 001h	; b892

; ----------------------------------------------------------------------
; DATOS leido_B893: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb893..0xb895  (2 bytes)
DATA_leido_B893:
	defb 0c3h,0e9h	; b893

; ----------------------------------------------------------------------
; DATOS leido_B895: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb895..0xb896  (1 bytes)
DATA_leido_B895:
	defb 008h	; b895

; ----------------------------------------------------------------------
; DATOS leido_B896: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb896..0xb897  (1 bytes)
DATA_leido_B896:
	defb 0eah	; b896

; ----------------------------------------------------------------------
; DATOS leido_B897: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb897..0xb898  (1 bytes)
DATA_leido_B897:
	defb 005h	; b897

; ----------------------------------------------------------------------
; DATOS leido_B898: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb898..0xb899  (1 bytes)
DATA_leido_B898:
	defb 0ddh	; b898

; ----------------------------------------------------------------------
; DATOS leido_B899: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb899..0xb89b  (2 bytes)
DATA_leido_B899:
	defb 00bh,043h	; b899

; ----------------------------------------------------------------------
; DATOS leido_B89B: 9 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (9 bytes)
;   0xb89b..0xb8a4  (9 bytes)
DATA_leido_B89B:
	defb 0d3h,008h,025h,048h,065h,008h,025h,048h,0e9h	; b89b  ..%He.%H.

; ----------------------------------------------------------------------
; DATOS leido_B8A4: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb8a4..0xb8a5  (1 bytes)
DATA_leido_B8A4:
	defb 02ch	; b8a4

; ----------------------------------------------------------------------
; DATOS leido_B8A5: 3 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (3 bytes)
;   0xb8a5..0xb8a8  (3 bytes)
DATA_leido_B8A5:
	defb 060h,0efh,0feh	; b8a5

; ----------------------------------------------------------------------
; DATOS leido_B8A8: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb8a8..0xb8a9  (1 bytes)
DATA_leido_B8A8:
	defb 001h	; b8a8

; ----------------------------------------------------------------------
; DATOS leido_B8A9: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8a9..0xb8aa  (1 bytes)
DATA_leido_B8A9:
	defb 0f8h	; b8a9

; ----------------------------------------------------------------------
; DATOS leido_B8AA: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb8aa..0xb8ab  (1 bytes)
DATA_leido_B8AA:
	defb 009h	; b8aa

; ----------------------------------------------------------------------
; DATOS leido_B8AB: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8ab..0xb8ac  (1 bytes)
DATA_leido_B8AB:
	defb 0f2h	; b8ab

; ----------------------------------------------------------------------
; DATOS leido_B8AC: 1 bytes que lee p10:6D14 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D14 (1 bytes)
;   0xb8ac..0xb8ad  (1 bytes)
DATA_leido_B8AC:
	defb 020h	; b8ac

; ----------------------------------------------------------------------
; DATOS leido_B8AD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8ad..0xb8ae  (1 bytes)
DATA_leido_B8AD:
	defb 0f1h	; b8ad

; ----------------------------------------------------------------------
; DATOS leido_B8AE: 1 bytes que lee p10:6D01 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D01 (1 bytes)
;   0xb8ae..0xb8af  (1 bytes)
DATA_leido_B8AE:
	defb 053h	; b8ae

; ----------------------------------------------------------------------
; DATOS leido_B8AF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8af..0xb8b0  (1 bytes)
DATA_leido_B8AF:
	defb 0e9h	; b8af

; ----------------------------------------------------------------------
; DATOS leido_B8B0: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb8b0..0xb8b1  (1 bytes)
DATA_leido_B8B0:
	defb 008h	; b8b0

; ----------------------------------------------------------------------
; DATOS leido_B8B1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8b1..0xb8b2  (1 bytes)
DATA_leido_B8B1:
	defb 0eah	; b8b1

; ----------------------------------------------------------------------
; DATOS leido_B8B2: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb8b2..0xb8b3  (1 bytes)
DATA_leido_B8B2:
	defb 004h	; b8b2

; ----------------------------------------------------------------------
; DATOS leido_B8B3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8b3..0xb8b4  (1 bytes)
DATA_leido_B8B3:
	defb 0ebh	; b8b3

; ----------------------------------------------------------------------
; DATOS leido_B8B4: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb8b4..0xb8b5  (1 bytes)
DATA_leido_B8B4:
	defb 087h	; b8b4

; ----------------------------------------------------------------------
; DATOS leido_B8B5: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb8b5..0xb8b6  (1 bytes)
DATA_leido_B8B5:
	defb 020h	; b8b5

; ----------------------------------------------------------------------
; DATOS leido_B8B6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8b6..0xb8b7  (1 bytes)
DATA_leido_B8B6:
	defb 0dbh	; b8b6

; ----------------------------------------------------------------------
; DATOS leido_B8B7: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8b7..0xb8b8  (1 bytes)
DATA_leido_B8B7:
	defb 002h	; b8b7

; ----------------------------------------------------------------------
; DATOS leido_B8B8: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 5 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (17
;   bytes)
;   0xb8b8..0xb8c9  (17 bytes)
DATA_leido_B8B8:
	defb 0d2h,06eh,05eh,06eh,07bh,092h,0aeh,09eh,0aeh,098h,0a5h,0dch,0f0h,0fdh,08bh,0b8h	; b8b8  .n^n{...........
	defb 0feh	; b8c8

; ----------------------------------------------------------------------
; DATOS leido_B8C9: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb8c9..0xb8ca  (1 bytes)
DATA_leido_B8C9:
	defb 001h	; b8c9

; ----------------------------------------------------------------------
; DATOS leido_B8CA: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8ca..0xb8cb  (1 bytes)
DATA_leido_B8CA:
	defb 0f8h	; b8ca

; ----------------------------------------------------------------------
; DATOS leido_B8CB: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb8cb..0xb8cc  (1 bytes)
DATA_leido_B8CB:
	defb 05ch	; b8cb

; ----------------------------------------------------------------------
; DATOS leido_B8CC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8cc..0xb8cd  (1 bytes)
DATA_leido_B8CC:
	defb 0e9h	; b8cc

; ----------------------------------------------------------------------
; DATOS leido_B8CD: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb8cd..0xb8ce  (1 bytes)
DATA_leido_B8CD:
	defb 008h	; b8cd

; ----------------------------------------------------------------------
; DATOS leido_B8CE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8ce..0xb8cf  (1 bytes)
DATA_leido_B8CE:
	defb 0eah	; b8ce

; ----------------------------------------------------------------------
; DATOS leido_B8CF: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb8cf..0xb8d0  (1 bytes)
DATA_leido_B8CF:
	defb 00fh	; b8cf

; ----------------------------------------------------------------------
; DATOS leido_B8D0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8d0..0xb8d1  (1 bytes)
DATA_leido_B8D0:
	defb 0ddh	; b8d0

; ----------------------------------------------------------------------
; DATOS leido_B8D1: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb8d1..0xb8d3  (2 bytes)
DATA_leido_B8D1:
	defb 017h,043h	; b8d1

; ----------------------------------------------------------------------
; DATOS leido_B8D3: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb8d3..0xb8d9  (6 bytes)
DATA_leido_B8D3:
	defb 0d4h,008h,025h,048h,065h,0fbh	; b8d3

; ----------------------------------------------------------------------
; DATOS leido_B8D9: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb8d9..0xb8dc  (3 bytes)
DATA_leido_B8D9:
	defb 002h,0d3h,0b8h	; b8d9

; ----------------------------------------------------------------------
; DATOS leido_B8DC: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8dc..0xb8dd  (1 bytes)
DATA_leido_B8DC:
	defb 0feh	; b8dc

; ----------------------------------------------------------------------
; DATOS leido_B8DD: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb8dd..0xb8de  (1 bytes)
DATA_leido_B8DD:
	defb 001h	; b8dd

; ----------------------------------------------------------------------
; DATOS leido_B8DE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8de..0xb8df  (1 bytes)
DATA_leido_B8DE:
	defb 0f8h	; b8de

; ----------------------------------------------------------------------
; DATOS leido_B8DF: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb8df..0xb8e0  (1 bytes)
DATA_leido_B8DF:
	defb 05ch	; b8df

; ----------------------------------------------------------------------
; DATOS leido_B8E0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8e0..0xb8e1  (1 bytes)
DATA_leido_B8E0:
	defb 0e9h	; b8e0

; ----------------------------------------------------------------------
; DATOS leido_B8E1: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb8e1..0xb8e2  (1 bytes)
DATA_leido_B8E1:
	defb 008h	; b8e1

; ----------------------------------------------------------------------
; DATOS leido_B8E2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8e2..0xb8e3  (1 bytes)
DATA_leido_B8E2:
	defb 0eah	; b8e2

; ----------------------------------------------------------------------
; DATOS leido_B8E3: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb8e3..0xb8e4  (1 bytes)
DATA_leido_B8E3:
	defb 00fh	; b8e3

; ----------------------------------------------------------------------
; DATOS leido_B8E4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8e4..0xb8e5  (1 bytes)
DATA_leido_B8E4:
	defb 0dbh	; b8e4

; ----------------------------------------------------------------------
; DATOS leido_B8E5: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb8e5..0xb8e6  (1 bytes)
DATA_leido_B8E5:
	defb 002h	; b8e5

; ----------------------------------------------------------------------
; DATOS leido_B8E6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8e6..0xb8e7  (1 bytes)
DATA_leido_B8E6:
	defb 0ddh	; b8e6

; ----------------------------------------------------------------------
; DATOS leido_B8E7: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb8e7..0xb8e9  (2 bytes)
DATA_leido_B8E7:
	defb 017h,043h	; b8e7

; ----------------------------------------------------------------------
; DATOS leido_B8E9: 20 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 4 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (20
;   bytes)
;   0xb8e9..0xb8fd  (20 bytes)
DATA_leido_B8E9:
	defb 0d4h,078h,025h,06eh,078h,025h,08bh,0a2h,0b8h,065h,0aeh,0b8h,065h,0a8h,0b5h,0dch	; b8e9  .x%nx%...e..e...
	defb 0fdh,0c8h,0b8h,0feh	; b8f9

; ----------------------------------------------------------------------
; DATOS leido_B8FD: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb8fd..0xb8fe  (1 bytes)
DATA_leido_B8FD:
	defb 001h	; b8fd

; ----------------------------------------------------------------------
; DATOS leido_B8FE: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb8fe..0xb8ff  (1 bytes)
DATA_leido_B8FE:
	defb 0f8h	; b8fe

; ----------------------------------------------------------------------
; DATOS leido_B8FF: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb8ff..0xb900  (1 bytes)
DATA_leido_B8FF:
	defb 002h	; b8ff

; ----------------------------------------------------------------------
; DATOS leido_B900: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb900..0xb901  (1 bytes)
DATA_leido_B900:
	defb 0e9h	; b900

; ----------------------------------------------------------------------
; DATOS leido_B901: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb901..0xb902  (1 bytes)
DATA_leido_B901:
	defb 004h	; b901

; ----------------------------------------------------------------------
; DATOS leido_B902: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb902..0xb903  (1 bytes)
DATA_leido_B902:
	defb 0eah	; b902

; ----------------------------------------------------------------------
; DATOS leido_B903: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb903..0xb904  (1 bytes)
DATA_leido_B903:
	defb 007h	; b903

; ----------------------------------------------------------------------
; DATOS leido_B904: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb904..0xb905  (1 bytes)
DATA_leido_B904:
	defb 0ebh	; b904

; ----------------------------------------------------------------------
; DATOS leido_B905: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb905..0xb906  (1 bytes)
DATA_leido_B905:
	defb 009h	; b905

; ----------------------------------------------------------------------
; DATOS leido_B906: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb906..0xb907  (1 bytes)
DATA_leido_B906:
	defb 046h	; b906

; ----------------------------------------------------------------------
; DATOS leido_B907: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb907..0xb908  (1 bytes)
DATA_leido_B907:
	defb 0dbh	; b907

; ----------------------------------------------------------------------
; DATOS leido_B908: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb908..0xb909  (1 bytes)
DATA_leido_B908:
	defb 002h	; b908

; ----------------------------------------------------------------------
; DATOS leido_B909: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb909..0xb914  (11 bytes)
DATA_leido_B909:
	defb 0d0h,021h,0d1h,061h,0a1h,0d0h,001h,0d1h,0a1h,061h,0fbh	; b909  .!.a.....a.

; ----------------------------------------------------------------------
; DATOS leido_B914: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb914..0xb917  (3 bytes)
DATA_leido_B914:
	defb 00ah,009h,0b9h	; b914

; ----------------------------------------------------------------------
; DATOS leido_B917: 2 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (2 bytes)
;   0xb917..0xb919  (2 bytes)
DATA_leido_B917:
	defb 0dch,0feh	; b917

; ----------------------------------------------------------------------
; DATOS leido_B919: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb919..0xb91a  (1 bytes)
DATA_leido_B919:
	defb 001h	; b919

; ----------------------------------------------------------------------
; DATOS leido_B91A: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb91a..0xb91b  (1 bytes)
DATA_leido_B91A:
	defb 0f8h	; b91a

; ----------------------------------------------------------------------
; DATOS leido_B91B: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb91b..0xb91c  (1 bytes)
DATA_leido_B91B:
	defb 002h	; b91b

; ----------------------------------------------------------------------
; DATOS leido_B91C: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb91c..0xb91d  (1 bytes)
DATA_leido_B91C:
	defb 0e9h	; b91c

; ----------------------------------------------------------------------
; DATOS leido_B91D: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb91d..0xb91e  (1 bytes)
DATA_leido_B91D:
	defb 004h	; b91d

; ----------------------------------------------------------------------
; DATOS leido_B91E: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb91e..0xb91f  (1 bytes)
DATA_leido_B91E:
	defb 0eah	; b91e

; ----------------------------------------------------------------------
; DATOS leido_B91F: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb91f..0xb920  (1 bytes)
DATA_leido_B91F:
	defb 007h	; b91f

; ----------------------------------------------------------------------
; DATOS leido_B920: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb920..0xb921  (1 bytes)
DATA_leido_B920:
	defb 0ebh	; b920

; ----------------------------------------------------------------------
; DATOS leido_B921: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb921..0xb922  (1 bytes)
DATA_leido_B921:
	defb 009h	; b921

; ----------------------------------------------------------------------
; DATOS leido_B922: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb922..0xb923  (1 bytes)
DATA_leido_B922:
	defb 046h	; b922

; ----------------------------------------------------------------------
; DATOS leido_B923: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb923..0xb924  (1 bytes)
DATA_leido_B923:
	defb 0dbh	; b923

; ----------------------------------------------------------------------
; DATOS leido_B924: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb924..0xb925  (1 bytes)
DATA_leido_B924:
	defb 002h	; b924

; ----------------------------------------------------------------------
; DATOS leido_B925: 5 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (5 bytes)
;   0xb925..0xb92a  (5 bytes)
DATA_leido_B925:
	defb 0d1h,0b1h,041h,061h,0fbh	; b925

; ----------------------------------------------------------------------
; DATOS leido_B92A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb92a..0xb92d  (3 bytes)
DATA_leido_B92A:
	defb 005h,025h,0b9h	; b92a

; ----------------------------------------------------------------------
; DATOS leido_B92D: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb92d..0xb931  (4 bytes)
DATA_leido_B92D:
	defb 0a1h,031h,051h,0fbh	; b92d

; ----------------------------------------------------------------------
; DATOS leido_B931: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb931..0xb934  (3 bytes)
DATA_leido_B931:
	defb 005h,02dh,0b9h	; b931

; ----------------------------------------------------------------------
; DATOS leido_B934: 4 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (4 bytes)
;   0xb934..0xb938  (4 bytes)
DATA_leido_B934:
	defb 0b1h,041h,061h,0fbh	; b934

; ----------------------------------------------------------------------
; DATOS leido_B938: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb938..0xb93b  (3 bytes)
DATA_leido_B938:
	defb 005h,034h,0b9h	; b938

; ----------------------------------------------------------------------
; DATOS leido_B93B: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb93b..0xb941  (6 bytes)
DATA_leido_B93B:
	defb 0d0h,001h,0d1h,051h,071h,0fbh	; b93b

; ----------------------------------------------------------------------
; DATOS leido_B941: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb941..0xb944  (3 bytes)
DATA_leido_B941:
	defb 004h,03bh,0b9h	; b941

; ----------------------------------------------------------------------
; DATOS leido_B944: 11 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (11 bytes)
;   0xb944..0xb94f  (11 bytes)
DATA_leido_B944:
	defb 0d0h,021h,0d1h,071h,091h,0d0h,011h,0d1h,081h,0a1h,0fbh	; b944  .!.q.......

; ----------------------------------------------------------------------
; DATOS leido_B94F: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb94f..0xb952  (3 bytes)
DATA_leido_B94F:
	defb 005h,049h,0b9h	; b94f

; ----------------------------------------------------------------------
; DATOS leido_B952: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb952..0xb958  (6 bytes)
DATA_leido_B952:
	defb 0d0h,021h,0d1h,071h,091h,0fbh	; b952

; ----------------------------------------------------------------------
; DATOS leido_B958: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb958..0xb95b  (3 bytes)
DATA_leido_B958:
	defb 005h,052h,0b9h	; b958

; ----------------------------------------------------------------------
; DATOS leido_B95B: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb95b..0xb961  (6 bytes)
DATA_leido_B95B:
	defb 0d0h,031h,0d1h,081h,0a1h,0fbh	; b95b

; ----------------------------------------------------------------------
; DATOS leido_B961: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb961..0xb964  (3 bytes)
DATA_leido_B961:
	defb 005h,05bh,0b9h	; b961

; ----------------------------------------------------------------------
; DATOS leido_B964: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb964..0xb96a  (6 bytes)
DATA_leido_B964:
	defb 0d0h,021h,0d1h,071h,091h,0fbh	; b964

; ----------------------------------------------------------------------
; DATOS leido_B96A: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb96a..0xb96d  (3 bytes)
DATA_leido_B96A:
	defb 003h,064h,0b9h	; b96a

; ----------------------------------------------------------------------
; DATOS leido_B96D: 15 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 10 sin leer entre lecturas de la misma rutina:
;   entradas de la misma tabla que las partidas no han pedido); lo leen
;   p10:644C (15 bytes)
;   0xb96d..0xb97c  (15 bytes)
DATA_leido_B96D:
	defb 0d0h,031h,0d1h,081h,0a1h,0fbh,002h,06dh,0b9h,0f0h,0dch,0fdh,0fch,0b8h,0feh	; b96d  .1.....m.......

; ----------------------------------------------------------------------
; DATOS leido_B97C: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb97c..0xb97d  (1 bytes)
DATA_leido_B97C:
	defb 001h	; b97c

; ----------------------------------------------------------------------
; DATOS leido_B97D: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb97d..0xb97e  (1 bytes)
DATA_leido_B97D:
	defb 0f8h	; b97d

; ----------------------------------------------------------------------
; DATOS leido_B97E: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb97e..0xb97f  (1 bytes)
DATA_leido_B97E:
	defb 018h	; b97e

; ----------------------------------------------------------------------
; DATOS leido_B97F: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb97f..0xb980  (1 bytes)
DATA_leido_B97F:
	defb 0e9h	; b97f

; ----------------------------------------------------------------------
; DATOS leido_B980: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb980..0xb981  (1 bytes)
DATA_leido_B980:
	defb 008h	; b980

; ----------------------------------------------------------------------
; DATOS leido_B981: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb981..0xb982  (1 bytes)
DATA_leido_B981:
	defb 0dbh	; b981

; ----------------------------------------------------------------------
; DATOS leido_B982: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb982..0xb983  (1 bytes)
DATA_leido_B982:
	defb 001h	; b982

; ----------------------------------------------------------------------
; DATOS leido_B983: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb983..0xb984  (1 bytes)
DATA_leido_B983:
	defb 0eah	; b983

; ----------------------------------------------------------------------
; DATOS leido_B984: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb984..0xb985  (1 bytes)
DATA_leido_B984:
	defb 005h	; b984

; ----------------------------------------------------------------------
; DATOS leido_B985: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb985..0xb986  (1 bytes)
DATA_leido_B985:
	defb 0ddh	; b985

; ----------------------------------------------------------------------
; DATOS leido_B986: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb986..0xb988  (2 bytes)
DATA_leido_B986:
	defb 009h,032h	; b986

; ----------------------------------------------------------------------
; DATOS leido_B988: 6 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (6 bytes)
;   0xb988..0xb98e  (6 bytes)
DATA_leido_B988:
	defb 0d2h,028h,045h,068h,085h,0fbh	; b988

; ----------------------------------------------------------------------
; DATOS leido_B98E: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb98e..0xb991  (3 bytes)
DATA_leido_B98E:
	defb 002h,088h,0b9h	; b98e

; ----------------------------------------------------------------------
; DATOS leido_B991: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb991..0xb992  (1 bytes)
DATA_leido_B991:
	defb 0feh	; b991

; ----------------------------------------------------------------------
; DATOS leido_B992: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb992..0xb993  (1 bytes)
DATA_leido_B992:
	defb 001h	; b992

; ----------------------------------------------------------------------
; DATOS leido_B993: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb993..0xb994  (1 bytes)
DATA_leido_B993:
	defb 0f8h	; b993

; ----------------------------------------------------------------------
; DATOS leido_B994: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb994..0xb995  (1 bytes)
DATA_leido_B994:
	defb 018h	; b994

; ----------------------------------------------------------------------
; DATOS leido_B995: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb995..0xb996  (1 bytes)
DATA_leido_B995:
	defb 0e9h	; b995

; ----------------------------------------------------------------------
; DATOS leido_B996: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb996..0xb997  (1 bytes)
DATA_leido_B996:
	defb 008h	; b996

; ----------------------------------------------------------------------
; DATOS leido_B997: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb997..0xb998  (1 bytes)
DATA_leido_B997:
	defb 0eah	; b997

; ----------------------------------------------------------------------
; DATOS leido_B998: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb998..0xb999  (1 bytes)
DATA_leido_B998:
	defb 005h	; b998

; ----------------------------------------------------------------------
; DATOS leido_B999: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb999..0xb99a  (1 bytes)
DATA_leido_B999:
	defb 0dbh	; b999

; ----------------------------------------------------------------------
; DATOS leido_B99A: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb99a..0xb99b  (1 bytes)
DATA_leido_B99A:
	defb 001h	; b99a

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
	defb 017h	; b99c

; ----------------------------------------------------------------------
; DATOS leido_B99D: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb99d..0xb99e  (1 bytes)
DATA_leido_B99D:
	defb 061h	; b99d

; ----------------------------------------------------------------------
; DATOS leido_B99E: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido, con 5 sin leer entre lecturas de la misma rutina: entradas
;   de la misma tabla que las partidas no han pedido); lo leen p10:644C (17
;   bytes)
;   0xb99e..0xb9af  (17 bytes)
DATA_leido_B99E:
	defb 0d2h,02eh,01eh,02eh,03bh,052h,06eh,05eh,06eh,058h,065h,0dch,0f0h,0fdh,07bh,0b9h	; b99e  .....Rn^nXe...{.
	defb 0feh	; b9ae

; ----------------------------------------------------------------------
; DATOS leido_B9AF: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb9af..0xb9b0  (1 bytes)
DATA_leido_B9AF:
	defb 001h	; b9af

; ----------------------------------------------------------------------
; DATOS leido_B9B0: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9b0..0xb9b1  (1 bytes)
DATA_leido_B9B0:
	defb 0f8h	; b9b0

; ----------------------------------------------------------------------
; DATOS leido_B9B1: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb9b1..0xb9b2  (1 bytes)
DATA_leido_B9B1:
	defb 018h	; b9b1

; ----------------------------------------------------------------------
; DATOS leido_B9B2: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9b2..0xb9b3  (1 bytes)
DATA_leido_B9B2:
	defb 0e9h	; b9b2

; ----------------------------------------------------------------------
; DATOS leido_B9B3: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb9b3..0xb9b4  (1 bytes)
DATA_leido_B9B3:
	defb 004h	; b9b3

; ----------------------------------------------------------------------
; DATOS leido_B9B4: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9b4..0xb9b5  (1 bytes)
DATA_leido_B9B4:
	defb 0eah	; b9b4

; ----------------------------------------------------------------------
; DATOS leido_B9B5: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb9b5..0xb9b6  (1 bytes)
DATA_leido_B9B5:
	defb 005h	; b9b5

; ----------------------------------------------------------------------
; DATOS leido_B9B6: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9b6..0xb9b7  (1 bytes)
DATA_leido_B9B6:
	defb 0ddh	; b9b6

; ----------------------------------------------------------------------
; DATOS leido_B9B7: 2 bytes que leen p10:6EB9, p10:6EE1 al jugar (medido
;   ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py; el
;   tamano es lo que se lee seguido); lo leen p10:6EB9, p10:6EE1 (2 bytes)
;   0xb9b7..0xb9b9  (2 bytes)
DATA_leido_B9B7:
	defb 009h,043h	; b9b7

; ----------------------------------------------------------------------
; DATOS leido_B9B9: 17 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (17 bytes)
;   0xb9b9..0xb9ca  (17 bytes)
DATA_leido_B9B9:
	defb 0d3h,0a5h,065h,0a5h,0d2h,005h,0d3h,085h,0d2h,025h,0d3h,0a5h,0d2h,025h,045h,005h	; b9b9  ..e......%...%E.
	defb 0fbh	; b9c9

; ----------------------------------------------------------------------
; DATOS leido_B9CA: 3 bytes que leen p10:6DC5, p10:6DCC, p10:6DCE al jugar
;   (medido ejecutando el cartucho, tools/cobertura.py y tools/lee_sonidos.py;
;   el tamano es lo que se lee seguido); lo leen p10:6DC5, p10:6DCC, p10:6DCE
;   (3 bytes)
;   0xb9ca..0xb9cd  (3 bytes)
DATA_leido_B9CA:
	defb 002h,0b9h,0b9h	; b9ca

; ----------------------------------------------------------------------
; DATOS leido_B9CD: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9cd..0xb9ce  (1 bytes)
DATA_leido_B9CD:
	defb 0feh	; b9cd

; ----------------------------------------------------------------------
; DATOS leido_B9CE: 1 bytes que lee p10:6DF6 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6DF6 (1 bytes)
;   0xb9ce..0xb9cf  (1 bytes)
DATA_leido_B9CE:
	defb 001h	; b9ce

; ----------------------------------------------------------------------
; DATOS leido_B9CF: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9cf..0xb9d0  (1 bytes)
DATA_leido_B9CF:
	defb 0f8h	; b9cf

; ----------------------------------------------------------------------
; DATOS leido_B9D0: 1 bytes que lee p10:6D4A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6D4A (1 bytes)
;   0xb9d0..0xb9d1  (1 bytes)
DATA_leido_B9D0:
	defb 018h	; b9d0

; ----------------------------------------------------------------------
; DATOS leido_B9D1: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9d1..0xb9d2  (1 bytes)
DATA_leido_B9D1:
	defb 0e9h	; b9d1

; ----------------------------------------------------------------------
; DATOS leido_B9D2: 1 bytes que lee p10:6C34 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C34 (1 bytes)
;   0xb9d2..0xb9d3  (1 bytes)
DATA_leido_B9D2:
	defb 008h	; b9d2

; ----------------------------------------------------------------------
; DATOS leido_B9D3: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9d3..0xb9d4  (1 bytes)
DATA_leido_B9D3:
	defb 0eah	; b9d3

; ----------------------------------------------------------------------
; DATOS leido_B9D4: 1 bytes que lee p10:6C3F al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C3F (1 bytes)
;   0xb9d4..0xb9d5  (1 bytes)
DATA_leido_B9D4:
	defb 005h	; b9d4

; ----------------------------------------------------------------------
; DATOS leido_B9D5: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9d5..0xb9d6  (1 bytes)
DATA_leido_B9D5:
	defb 0dbh	; b9d5

; ----------------------------------------------------------------------
; DATOS leido_B9D6: 1 bytes que lee p10:6EA4 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6EA4 (1 bytes)
;   0xb9d6..0xb9d7  (1 bytes)
DATA_leido_B9D6:
	defb 001h	; b9d6

; ----------------------------------------------------------------------
; DATOS leido_B9D7: 1 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (1 bytes)
;   0xb9d7..0xb9d8  (1 bytes)
DATA_leido_B9D7:
	defb 0ebh	; b9d7

; ----------------------------------------------------------------------
; DATOS leido_B9D8: 1 bytes que lee p10:6C66 al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C66 (1 bytes)
;   0xb9d8..0xb9d9  (1 bytes)
DATA_leido_B9D8:
	defb 017h	; b9d8

; ----------------------------------------------------------------------
; DATOS leido_B9D9: 1 bytes que lee p10:6C9A al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:6C9A (1 bytes)
;   0xb9d9..0xb9da  (1 bytes)
DATA_leido_B9D9:
	defb 061h	; b9d9

; ----------------------------------------------------------------------
; DATOS leido_B9DA: 12 bytes que lee p10:644C al jugar (medido ejecutando el
;   cartucho, tools/cobertura.py y tools/lee_sonidos.py; el tamano es lo que
;   se lee seguido); lo leen p10:644C (12 bytes)
;   0xb9da..0xb9e6  (12 bytes)
DATA_leido_B9DA:
	defb 0d3h,09eh,08eh,09eh,0abh,0d2h,002h,01eh,00eh,01eh,008h,015h	; b9da  ............

; ----------------------------------------------------------------------
; DATOS sin identificar  0xb9e6..0xbebc  (1238 bytes)
DATA_B9E6:
	defb 0dch,0f0h,0fdh,0aeh,0b9h,0feh,004h,0e9h,012h,0d0h,090h,010h,090h,000h,090h,000h	; b9e6  ................
	defb 090h,000h,090h,010h,090h,000h,090h,000h,0feh,010h,091h,0fdh,0ebh,0b9h,0feh,001h	; b9f6  ................
	defb 0f1h,051h,0e9h,012h,0ech,0eah,005h,0d3h,043h,0eah,007h,043h,0eah,009h,047h,0eah	; ba06  .Q......C..C..G.
	defb 005h,043h,033h,0eah,009h,037h,0fdh,004h,0bah,0feh,001h,0e9h,009h,0dbh,003h,0eah	; ba16  .C3..7..........
	defb 00bh,0ebh,001h,010h,0ddh,007h,032h,0d4h,093h,0fdh,01fh,0bah,0feh,001h,0f8h,023h	; ba26  ......2........#
	defb 0e9h,009h,0eah,00fh,0ebh,001h,010h,0ddh,07ah,032h,0d5h,093h,0fdh,032h,0bah,0feh	; ba36  ........z2...2..
	defb 001h,0f8h,012h,0f1h,054h,0e9h,012h,0ech,0d4h,0eah,002h,090h,0eah,003h,090h,0eah	; ba46  ....T...........
	defb 004h,090h,0eah,005h,090h,0eah,006h,091h,0eah,007h,091h,0eah,008h,093h,0eah,006h	; ba56  ................
	defb 091h,0eah,004h,091h,0fdh,045h,0bah,0feh,001h,0f8h,012h,0f1h,054h,0e9h,012h,0ech	; ba66  .....E......T...
	defb 0d3h,0eah,002h,000h,0eah,003h,000h,0eah,004h,000h,0eah,005h,000h,0eah,006h,001h	; ba76  ................
	defb 0eah,007h,001h,0eah,008h,003h,0eah,006h,001h,0eah,004h,001h,0eah,002h,0d4h,0b0h	; ba86  ................
	defb 0eah,003h,0b0h,0eah,004h,0b0h,0eah,005h,0b0h,0eah,006h,0b1h,0eah,007h,0b1h,0eah	; ba96  ................
	defb 008h,0b3h,0eah,006h,0b1h,0eah,004h,0b1h,0f9h,08fh,0bbh,0fdh,06dh,0bah,0feh,001h	; baa6  ............m...
	defb 0e9h,012h,0f9h,08fh,0bbh,0f8h,01dh,0e9h,009h,0eah,006h,0ebh,021h,070h,0ddh,006h	; bab6  ............!p..
	defb 032h,0dbh,003h,0d1h,040h,0f9h,0cah,0bbh,0eah,007h,0d1h,040h,0f9h,0cah,0bbh,0eah	; bac6  2...@......@....
	defb 008h,0f9h,0d7h,0bbh,0eah,006h,0f9h,0f4h,0bbh,0eah,007h,0f9h,0f4h,0bbh,0eah,008h	; bad6  ................
	defb 0f9h,0f4h,0bbh,0d1h,090h,0d2h,090h,0d1h,030h,0d2h,090h,0eah,007h,0d1h,060h,0d2h	; bae6  ........0.....`.
	defb 090h,0d1h,030h,0d2h,090h,0fdh,0b4h,0bah,0feh,001h,0eeh,008h,0f8h,05ch,0e9h,012h	; baf6  ..0..........\..
	defb 0ech,0d3h,0eah,001h,040h,0eah,002h,040h,0eah,003h,040h,0eeh,004h,0eah,004h,040h	; bb06  ....@..@..@....@
	defb 0eah,005h,041h,0eeh,00bh,0eah,006h,041h,0eah,007h,043h,0eeh,005h,0eah,005h,041h	; bb16  ..A....A..C....A
	defb 0eah,003h,041h,0eeh,008h,0eah,001h,030h,0eah,002h,030h,0eah,003h,030h,0eeh,004h	; bb26  ..A....0..0..0..
	defb 0eah,004h,030h,0eah,005h,031h,0eeh,00bh,0eah,006h,031h,0eah,007h,033h,0eeh,005h	; bb36  ..0..1....1..3..
	defb 0eah,005h,031h,0eah,003h,031h,0efh,0e9h,009h,0eah,005h,0ebh,002h,060h,0dbh,003h	; bb46  ..1..1.......`..
	defb 0d1h,041h,0f9h,0cah,0bbh,0dbh,004h,0eah,006h,0d1h,040h,0f9h,0cah,0bbh,0eah,007h	; bb56  .A........@.....
	defb 0f9h,0d7h,0bbh,0dbh,003h,0eah,005h,0f9h,0f4h,0bbh,0dbh,004h,0eah,006h,0f9h,0f4h	; bb66  ................
	defb 0bbh,0eah,007h,0f9h,0f4h,0bbh,0d1h,090h,0d2h,090h,0d1h,030h,0eah,006h,0d2h,090h	; bb76  ...........0....
	defb 0d1h,060h,0d2h,090h,0d1h,030h,0fdh,0feh,0bah,0f8h,05ch,0ech,0d3h,0eah,002h,040h	; bb86  .`...0....\....@
	defb 0eah,003h,040h,0eah,004h,040h,0eah,005h,040h,0eah,006h,041h,0eah,007h,041h,0eah	; bb96  ..@..@..@..A..A.
	defb 008h,043h,0eah,006h,041h,0eah,004h,041h,0eah,002h,030h,0eah,003h,030h,0eah,004h	; bba6  .C..A..A..0..0..
	defb 030h,0eah,005h,030h,0eah,006h,031h,0eah,007h,031h,0eah,008h,033h,0eah,006h,031h	; bbb6  0..0..1..1..3..1
	defb 0eah,004h,031h,0fah,0d2h,040h,0b0h,040h,0d1h,000h,0d2h,040h,0d2h,080h,0d2h,040h	; bbc6  ..1..@.@...@...@
	defb 0fah,0d1h,040h,0d2h,040h,0b0h,040h,0d1h,000h,0d2h,040h,0d2h,080h,0d2h,040h,0d1h	; bbd6  ..@.@.@...@...@.
	defb 040h,0d2h,040h,0b0h,040h,0d1h,000h,0d2h,040h,0d2h,080h,0d2h,040h,0fah,0d1h,090h	; bbe6  @.@.@...@...@...
	defb 0d2h,090h,0d1h,030h,0d2h,090h,0d1h,060h,0d2h,090h,0d1h,030h,0d2h,090h,0fah,0feh	; bbf6  ...0...`...0....
	defb 004h,0e9h,009h,0d0h,090h,000h,000h,000h,000h,000h,000h,000h,0fbh,007h,005h,0bch	; bc06  ................
	defb 090h,000h,000h,000h,0feh,010h,093h,0feh,004h,090h,000h,000h,000h,0fbh,00fh,01dh	; bc16  ................
	defb 0bch,0feh,010h,093h,0feh,004h,0e9h,009h,090h,000h,000h,000h,0fbh,003h,02ah,0bch	; bc26  ..............*.
	defb 0feh,010h,093h,0feh,004h,0fch,006h,02ah,0bch,090h,000h,000h,000h,0fbh,007h,03fh	; bc36  .......*.......?
	defb 0bch,0feh,010h,093h,0fdh,005h,0bch,0feh,001h,0f2h,030h,0f1h,041h,0e9h,009h,0dbh	; bc46  ..........0.A...
	defb 004h,0eah,008h,0dbh,004h,0ebh,007h,020h,0d3h,07bh,0d2h,003h,0d3h,07bh,053h,07bh	; bc56  ....... .{...{S{
	defb 0d2h,003h,0d3h,07bh,053h,0eah,006h,0ech,0c0h,0f9h,057h,0beh,050h,0f1h,053h,0eah	; bc66  ...{S.....W.P.S.
	defb 007h,0f9h,065h,0beh,0d2h,0a7h,0d1h,007h,0d2h,097h,0e9h,021h,0a1h,0eah,005h,0a1h	; bc76  ..e........!....
	defb 0eah,004h,0a1h,0fdh,04dh,0bch,0ffh,0feh,001h,0f8h,023h,0e9h,009h,0eah,00dh,0dbh	; bc86  ....M.....#.....
	defb 002h,0ebh,045h,043h,0f9h,0a9h,0beh,080h,090h,0a0h,0b0h,0fbh,003h,08dh,0bch,0f9h	; bc96  ..EC............
	defb 0a9h,0beh,082h,080h,0d5h,072h,070h,072h,070h,072h,070h,070h,0a0h,090h,070h,082h	; bca6  .....rprprpp..p.
	defb 080h,082h,080h,082h,080h,080h,0d4h,000h,0d5h,0a0h,080h,0fbh,002h,0aah,0bch,0d4h	; bcb6  ................
	defb 032h,030h,032h,030h,032h,030h,032h,030h,0d5h,082h,080h,082h,080h,082h,080h,082h	; bcc6  20202020........
	defb 080h,072h,070h,072h,070h,072h,070h,072h,070h,072h,070h,072h,070h,072h,070h,070h	; bcd6  .rprprprprprprpp
	defb 071h,070h,0fdh,09ah,0bch,0feh,001h,0f8h,054h,0f2h,024h,0f1h,054h,0e9h,009h,0dbh	; bce6  qp......T.$.T...
	defb 002h,0eah,008h,0dbh,002h,0edh,007h,0ebh,087h,030h,0d3h,00fh,00bh,0d4h,0a3h,0d3h	; bcf6  .........0......
	defb 00fh,00bh,0d4h,0a3h,0f8h,015h,0f2h,02bh,0f1h,054h,0dbh,003h,0ddh,089h,032h,0edh	; bd06  .......+.T....2.
	defb 008h,0eah,00ch,0f9h,057h,0beh,0f9h,065h,0beh,0ddh,017h,032h,0d2h,0a7h,0d1h,007h	; bd16  ....W..e...2....
	defb 0d2h,097h,0dbh,002h,0ddh,009h,032h,0e9h,012h,0abh,0fdh,0ebh,0bch,0feh,001h,0eeh	; bd26  ......2.........
	defb 001h,0f8h,024h,0f2h,02bh,0f1h,053h,0e9h,009h,0eah,009h,0dbh,002h,0edh,007h,0ebh	; bd36  ..$.+.S.........
	defb 001h,010h,0ddh,088h,032h,0d2h,03fh,03bh,023h,03bh,073h,03bh,023h,0eah,00bh,03fh	; bd46  ....2.?.#.s.#..?
	defb 03bh,023h,03bh,073h,0d1h,00fh,0efh,0eah,00ch,0ebh,001h,010h,0ddh,018h,032h,0d2h	; bd56  .#.s..........2.
	defb 0afh,0d1h,00fh,0d2h,0afh,0d1h,00fh,02dh,0d2h,071h,06fh,0e9h,003h,0ddh,017h,032h	; bd66  .......-.qo....2
	defb 077h,097h,067h,0e9h,012h,0dbh,002h,0ddh,00fh,032h,07bh,0fdh,033h,0bdh,0feh,001h	; bd76  w.g......2{.3...
	defb 0f2h,020h,0f1h,042h,0f8h,015h,0e9h,009h,0dbh,003h,0eah,00ah,0ebh,007h,040h,0f9h	; bd86  . .B..........@.
	defb 078h,0beh,053h,0efh,0f8h,01dh,0eah,007h,0ebh,001h,010h,0ddh,006h,032h,0f9h,0e0h	; bd96  x.S..........2..
	defb 0bdh,0d2h,080h,0f9h,01ch,0beh,0ebh,001h,070h,0f9h,085h,0beh,020h,0fdh,084h,0bdh	; bda6  ........p... ...
	defb 0feh,001h,0eeh,002h,0e9h,009h,0dbh,002h,0eah,003h,0ech,0d2h,071h,0f9h,078h,0beh	; bdb6  ............q.x.
	defb 051h,0efh,0dbh,004h,0eah,006h,0ebh,002h,060h,0c0h,0f9h,0e0h,0bdh,0efh,0c0h,0f9h	; bdc6  Q.......`.......
	defb 01ch,0beh,0eah,005h,0f9h,085h,0beh,0fdh,0b6h,0bdh,0c0h,0d2h,070h,0d1h,000h,0d2h	; bdd6  ............p...
	defb 070h,0d1h,020h,0d2h,070h,0d1h,030h,0d2h,070h,0d1h,050h,0d2h,070h,0d1h,020h,0d2h	; bde6  p. .p.0.p.P.p. .
	defb 070h,0d1h,030h,0d2h,070h,0d1h,000h,0d2h,071h,0fbh,003h,0e1h,0bdh,080h,0d1h,070h	; bdf6  p.0.p...q......p
	defb 0d2h,080h,0d1h,030h,0d2h,080h,0d1h,070h,0d2h,081h,080h,0d1h,070h,0d2h,080h,0d1h	; be06  ...0...p....p...
	defb 050h,0d2h,080h,0d1h,070h,0fah,0d2h,0c0h,020h,070h,020h,090h,020h,0a0h,020h,0d1h	; be16  P...p... p . . .
	defb 000h,0d2h,020h,090h,020h,0a0h,020h,070h,021h,000h,050h,000h,070h,000h,080h,000h	; be26  .. . . p!.P.p...
	defb 0a0h,000h,070h,000h,080h,000h,050h,000h,0fbh,002h,01ch,0beh,0d3h,070h,0a0h,0d2h	; be36  ..p...P......p..
	defb 020h,070h,0fbh,004h,042h,0beh,0d3h,030h,080h,0d2h,000h,030h,0fbh,004h,04ch,0beh	; be46   p..B..0...0..L.
	defb 0fah,0d2h,07bh,0d1h,003h,0d2h,07bh,053h,07bh,0d1h,003h,05bh,031h,051h,0fah,0d1h	; be56  ..{...{S{..[1Q..
	defb 07bh,023h,05bh,023h,07bh,023h,05bh,021h,030h,050h,07dh,050h,030h,02bh,003h,0e9h	; be66  {#[#{#[!0P}P0+..
	defb 003h,0fah,0d2h,07bh,0d1h,003h,0d2h,07bh,053h,07bh,0d1h,003h,0d2h,07bh,0fah,0d3h	; be76  ...{...{S{...{..
	defb 0c0h,020h,070h,020h,090h,020h,0a0h,020h,0d2h,000h,0d3h,020h,090h,020h,0a0h,020h	; be86  . p . . ... . .
	defb 070h,021h,020h,070h,020h,090h,020h,0a0h,020h,0d2h,000h,0d3h,020h,090h,020h,0a0h	; be96  p! p . . ... . .
	defb 020h,070h,0fah,0d4h,002h,000h,002h,000h,002h,000h,000h,0d5h,0b0h,0a0h,090h,082h	; bea6   p..............
	defb 080h,082h,080h,082h,080h,0fah	; beb6

; ----------------------------------------------------------------------
; DATOS relleno_ff: 324 bytes a 0xFF hasta el final del banco: relleno; lo
;   leen nadie (324 bytes)
;   0xbebc..0xc000  (324 bytes)
DATA_relleno_ff:
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bebc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; becc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bedc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; beec  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; befc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf0c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf1c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf2c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf3c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf4c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf5c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf6c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf7c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf8c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bf9c  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfac  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfbc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfcc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfdc  ................
	defb 0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh,0ffh	; bfec  ................
	defb 0ffh,0ffh,0ffh,0ffh	; bffc

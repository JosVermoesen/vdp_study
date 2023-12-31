   10 REM >>>         LEARN          <<<
   20 REM <<<          AGON!         >>>
   30 REM ******************************
   40 REM * www.youtube.com/@LearnAgon
   50 REM * For entertainment & learning
   60 REM ******************************
   70 REM *
   80 REM > boot-v1.bas
   90 REM > github.com/learnagon/
  100 REM *
  110 REM * A customized Agon Light 2
  120 REM * boot screen
  130 REM *
  140 REM * (C) Luis Learn Agon
  150 REM * 2023-12-30
  160 REM * learnagon@gmail.com
  170 REM ******************************
  180 :
  1500 CLS
  1600 *FX 12 33: REM SETS KEYBOARD REPEAT RATE
  1700 FOR I = 1 TO 15:PRINT:NEXT I
  1800 INPUT TAB(5)"Select a Screen MODE from 0 to 18 or 129 to 143";mode
  1900 INPUT TAB(5)"Select a background COLOUR from 128 to 191 (143-WHITE)";bg
  2000 INPUT TAB(5)"Select a foreground COLOUR from 0 to 63 (22-LIGHT BLUE)";fg
  2600 IF(ASC$(bg)=143 AND ASC$(fg)=195) THEN fg=0 ELSE IF (ASC$(bg)=195 AND ASC$(fg)=195) THEN fg=15
  2800 MODE mode
  2900 FOR J=1 TO 15:PRINT:NEXT J
  3000 PRINT TAB(5)"Enter the system date and time."
  3100 INPUT TAB(5)"Year";YR%
  3200 INPUT TAB(5)"Month";MO%
  3300 INPUT TAB(5)"Day";DA%
  3400 INPUT TAB(5)"Hour";HR%
  3500 INPUT TAB(5)"Minute";MI%
  3600 INPUT TAB(5)"Second";SE%
  3700 VDU 23,0,&87,1,YR%-1980,MO%,DA%,HR%,MI%,SE%
  4000 W%=FN_getWordVDP(&0F)
  5000 H%=FN_getWordVDP(&11)
  6000 C%=FN_getByteVDP(&13)
  7000 R%=FN_getByteVDP(&14)
  8000 D%=FN_getByteVDP(&15)
  9000 COLOUR bg
  9100 COLOUR fg
  9210 :
  9220 CLS
  9222 COLOUR 9
  9223 msg0$="*** AGON LIGHT 2 MICRO COMPUTER ***"
  9230 PRINT TAB((C%-LEN(msg0$))/2,0)msg0$
  9232 COLOUR 8
  9233 msg1$="Agon Console8 MOS Version 2.1.0"
  9239 PRINT TAB((C%-LEN(msg1$))/2,1)msg1$
  9240 COLOUR 8
  9241 PRINT TAB((C%-LEN(msg1$))/2,2)"Agon Console8";:COLOUR 2:PRINT" VDP Version 2.3.0"
  9242 COLOUR 8
  9243 msg2$="BBC BASIC3 / AGON Version 1.06"
  9250 PRINT TAB((C%-LEN(msg2$))/2,3);:*VERSION
  9251 msg3$="eZ80 CPU 47872 BASIC bytes free"
  9260 PRINT TAB((C%-LEN(msg3$))/2,4)"eZ80 CPU "STR$(HIMEM-PAGE)" BASIC bytes free"
  9261 msg4$="MODE "+STR$(mode)+": "+STR$(C%)+" cols x "+STR$(R%)+" rows"
  9270 PRINT TAB((C%-LEN(msg4$))/2,5)msg4$
  9280 PRINT TAB((C%-21)/2,6)"Background color: "STR$(bg):PRINT TAB((C%-21)/2,7)"Foreground color: "STR$(fg)
  9290 PRINT TAB((C%-18)/2,8)"No. of colors: "STR$(D%)
  9295 COLOUR 22:PRINT TAB((C%-26)/2,9);TIME$:PRINT
  9296 PRINT
  9298 COLOUR fg
  9300 PRINT"READY...TO";:COLOUR9:PRINT" LEARN AGON!"
  9305 COLOUR fg
  9310 :
  9320 NEW
  9330 END
  9340 :
  9350 DEF FN_getByteVDP(var%)
  9360 A%=&A0
  9370 L%=var%
  9380 =USR(&FFF4)
  9390 :
  9400 DEF FN_getWordVDP(var%)
  9410 =FN_getByteVDP(var%)+256*FN_getByteVDP(var%+1)

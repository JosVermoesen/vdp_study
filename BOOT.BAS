    5 CLS
   10 *FX 12 33: REM SETS KEYBOARD REPEAT RATE
   20 FOR I = 1 TO 15:PRINT:NEXT I
  100 INPUT TAB(5)"Select a Screen MODE from 0 to 18 or 129 to 143";mode
  105 PRINT:PRINT
  110 INPUT TAB(5)"Select a background COLOUR from 128 to 191 (143-WHITE)";bg
  115 PRINT:PRINT
  120 INPUT TAB(5)"Select a foreground COLOUR from 0 to 63 (22-LIGHT BLUE)";fg
  125 IF ASC$(fg)=195 THEN fg=15
  128 MODE mode
  129 FOR J=1 TO 15:PRINT:NEXT J
  130 PRINT TAB(5)"Enter the system date and time.":PRINT
  131 INPUT TAB(5)"Year";YR%
  132 INPUT TAB(5)"Month";MO%
  133 INPUT TAB(5)"Day";DA%
  134 INPUT TAB(5)"Hour";HR%
  135 INPUT TAB(5)"Minute";MI%
  136 INPUT TAB(5)"Second";SE%
  137 VDU 23,0,&87,1,YR%-1980,MO%,DA%,HR%,MI%,SE%
  140 W%=FN_getWordVDP(&0F)
  150 H%=FN_getWordVDP(&11)
  160 C%=FN_getByteVDP(&13)
  170 R%=FN_getByteVDP(&14)
  180 D%=FN_getByteVDP(&15)
  190 COLOUR bg
  200 COLOUR fg
  210 :
  220 CLS
  222 COLOUR 9
  223 msg0$="*** AGON LIGHT 2 MICRO COMPUTER ***"
  230 PRINT TAB((C%-LEN(msg0$))/2,0)msg0$
  232 COLOUR 8
  233 msg1$="Agon Console8 MOS Version 2.1.0"
  239 PRINT TAB((C%-LEN(msg1$))/2,1)msg1$
  240 COLOUR 8
  241 PRINT TAB((C%-LEN(msg1$))/2,2)"Agon Console8";
  242 COLOUR 2
  243 PRINT" VDP Version 2.1.0"
  244 COLOUR 8
  245 msg3$="eZ80 CPU 48K BASIC bytes free"
  250 PRINT TAB((C%-LEN(msg3$))/2,3)"";:*VERSION
  260 PRINT TAB((C%-LEN(msg3$))/2,4)msg3$
  270 PRINT TAB((C%-27)/2,5)"MODE "STR$(mode);": "C%" cols x "R%" rows"
  280 PRINT TAB((C%-21)/2,6)"Background color: "STR$(bg)
  281 PRINT TAB((C%-21)/2,7)"Foreground color: "STR$(fg)
  290 PRINT TAB((C%-17)/2,8)"No. of colors: "STR$(D%)
  294 COLOUR 6
  295 PRINT TAB((C%-26)/2,9);TIME$:PRINT
  296 PRINT:PRINT
  298 COLOUR fg
  300 PRINT"READY."
  310 :
  320 NEW
  330 END
  340 :
  350 DEF FN_getByteVDP(var%)
  360 A%=&A0
  370 L%=var%
  380 =USR(&FFF4)
  390 :
  400 DEF FN_getWordVDP(var%)
  410 =FN_getByteVDP(var%)+256*FN_getByteVDP(var%+1)

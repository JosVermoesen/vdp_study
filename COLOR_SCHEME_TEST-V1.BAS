   10 REM >>>         LEARN          <<<
   20 REM <<<          AGON!         >>>
   30 REM ******************************
   40 REM * www.youtube.com/@LearnAgon
   50 REM * For entertainment & learning
   60 REM ******************************
   70 REM *
   80 REM > color_scheme_test-v1.bas
   90 REM > github.com/learnagon/
  100 REM *
  110 REM * To test Agon Light 2
  120 REM * color schemes and modes
  130 REM *
  140 REM * (C) Luis Learn Agon
  150 REM * 2023-12-30
  160 REM * learnagon@gmail.com
  170 REM ******************************
  180 :
  190 PROC_redefine
  200 VDU 12: REM CLS
  205 FOR a=1 TO 5:PRINT:NEXT a
  210 INPUT TAB(10)"SELECT A MODE NUM:"m%
  220 MODE m%
  230 FOR color%=0 TO 255
  240   IF color%=0 THEN COLOUR 143
  250   IF color% > 0 THEN COLOUR 128
  260   VDU 17 color%: REM COLOUR color%
  270   VDU 12: REM CLS
  275   FOR a=1 TO 5:PRINT:NEXT a
  279   message$="THIS IS COLOR#: "
  280   PRINT TAB((40-LEN(message$)-5)/2)CHR$(111);
  286   FOR l=0 TO LEN(message$)+2:PRINT CHR$(163);:NEXT l
  287   PRINT CHR$(112)
  290   PRINT TAB((40-LEN(message$)-5)/2)CHR$(165);message$;color%;
  291   FOR l=0 TO 40-LEN(message$)+4:NEXT l:PRINT TAB(l,6) CHR$(167)
  295   PRINT TAB((40-LEN(message$)-5)/2)CHR$(108);
  297   FOR l=0 TO LEN(message$)+2:PRINT CHR$(164);:NEXT l
  298   PRINT CHR$(186)
  300   PRINT
  320   PRINT:PRINT
  330   press$="PRESS ANY KEY TO CONTINUE..."
  331   except$="EXCEPT FOR `Esc`"
  332   PRINT TAB((40-LEN(press$))/2)press$
  333   PRINT TAB((40-LEN(except$))/2)except$
  350   key$=GET$
  360 NEXT color%
  362 VDU 12: REM CLS
  365 END
  370 DEF PROC_redefine
  380 VDU 23,108,192,192,192,192,192,192,255,255
  390 VDU 23,111,255,255,192,192,192,192,192,192
  400 VDU 23,112,255,255,3,3,3,3,3,3
  410 VDU 23,163,255,0,0,0,0,0,0,0
  420 VDU 23,164,0,0,0,0,0,0,0,255
  430 VDU 23,165,192,192,192,192,192,192,192,192
  440 VDU 23,167,3,3,3,3,3,3,3,3
  450 VDU 23,186,3,3,3,3,3,3,255,255
  460 ENDPROC

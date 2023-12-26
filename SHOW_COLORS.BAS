   10 CLS
   20 REM PRINT COLORS FROM 0 TO 191
   30 :
   40 number=0
   50 REPEAT
   60   PROC_showColors(number)
   70   number = number + 1
   80 UNTIL number > 191
   90 COLOUR 8
  100 END
  110 :
  120 DEF PROC_showColors(number)
  130 COLOUR number
  140 PRINT TAB(80-12)"Colour #:";number
  150 ENDPROC

   10 CLS
   20 REM PRINT COLORS FROM 0 TO 15
   30 number=15
   40 FOR n=0 TO number
   50   PROC_displayColors(number)
   60   A%=INKEY(2000)
   70 NEXT
   80 END
   90 DEF PROC_displayColors(number)
  100 COLOUR number
  110 PRINT"Color #:"number
  120 ENDPROC

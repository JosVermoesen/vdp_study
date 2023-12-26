    5 CLS
    8 MODE 8:CLS
    9 VDU 14
   10 REM:PRINT COLORS
   20 FOR i=0 TO 191
   30   COLOUR i
   35   FOR j=1 TO 20
   40     PRINT"  ";:COLOUR i+1:PRINT i" ";
   45   NEXT j
   50 NEXT i
   60 COLOUR 1
   70 PRINT:PRINT
   75 VDU 15
   80 END

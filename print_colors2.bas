    5 CLS
    7 INPUT TAB(10)"Choose a graphic mode";m
    8 MODE m:CLS
    9 REM:VDU 14:REM THIS TURNS ON PAGE MODE
   10 REM:PRINT COLORS
   20 FOR i=0 TO 62
   30   COLOUR i
   35   FOR j=1 TO 20
   40     PRINT"  ";:COLOUR i:PRINT i" ";
   42     FOR t=1 TO 600:NEXT t
   45   NEXT j
   50 NEXT i
   60 FOR i=128 TO 191
   70   COLOUR i
   80   FOR j=1 TO 20
   90     PRINT"  ";:COLOUR i:PRINT i" ";
   92     FOR t=1 TO 600:NEXT t
  100   NEXT j
  110 NEXT i
  120 COLOUR 1
  130 PRINT:PRINT
  140 REM:VDU 15:REM THIS TURNS OFF PAGE MODE
  150 END

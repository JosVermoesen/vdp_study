    5 CLS
    6 INPUT TAB(10)"Select a graphic mode from 0 to 12";m%
    8 MODE m%:CLS
   10 REM - PRINT COLORS
   15 REPEAT
   20   FOR i=0 TO 64:COLOUR i:FOR j=1 TO 80:PRINT"+";:NEXT j:FOR t=1 TO 860:NEXT t:NEXT i
   22   FOR i=128 TO 191:COLOUR i:FOR j=1 TO 80:PRINT"   +";:NEXT j:FOR t=1 TO 860:NEXT t:NEXT i
   24 UNTIL FALSE
   25 COLOUR 1
   27 PRINT:PRINT
   30 END

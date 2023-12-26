    1 REM: testing VDU 9 and 10!
    2 CLS
    3 FOR md=1 TO 15:PRINT:NEXT md
    5 name$="Agon Light 2"
   10 FOR m=1 TO LEN(name$)
   20   VDU 9
   25   COLOUR m
   30   PRINT TAB(25 + m)MID$(name$,m,1);
   35   VDU 10
   40 NEXT m
   45 PRINT:PRINT:PRINT
   50 COLOUR 15
   60 END

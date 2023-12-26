   10 MODE 9
   20 CLS
   30 REM TESTING VDU 17
   40 COLOUR 143
   50 FOR colour_number = 0 TO 15
   60   :
   70   IF colour_number = 15 THEN COLOUR 128
   80   :
   90   VDU 17 colour_number
  100   :
  110   :
  120   PRINT"  COLOUR #:  "colour_number
  130   :
  140 NEXT colour_number
  150 key$=GET$
  160 FOR number = 0 TO 255
  170   CLS: REM CLEARS SCREEN
  180   VDU 19 15 number: PRINT TAB(4,15)"VDU 19 15 "STR$(number)
  190   FOR i = 1 TO 20000:NEXT i
  200 NEXT number
  210 END

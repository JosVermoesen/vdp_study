   10 REM > rectangle.bas
   20 REM draw a rectangle
   30 VDU 12: REM CLS
   40 REPEAT
   50   CLG:CLS
   60   INPUT"SELECT A COLOR FROM 1 TO 4:"color%:PRINT
   62   COLOUR color%
   65   IF color% = 1 THEN PRINT"You selected the color Red!"
   66   IF color% = 2 THEN PRINT"You selected the color Green!"
   67   IF color% = 3 THEN PRINT"You selected the color Yellow!"
   68   IF color% = 4 THEN PRINT"You selected the color Blue! My favorite!!"
   70   GCOL 3,color%
   75   COLOUR 15
   80   PRINT:PRINT"SELECT THE COORDINATES FOR THE STARTING CURSOR POSITION"
   90   INPUT"SELECT AN X POSITION FROM 10 TO 640:"x
  100   INPUT"SELECT A Y POSITION FROM 10 TO 512:"y
  110   INPUT"ENTER THE WIDTH:"width%
  120   INPUT"ENTER THE HEIGHT:"height%
  130   MOVE x,y
  140   DRAW x, y + height%
  150   DRAW x + width%, y + height%
  160   DRAW x + width%, y
  170   DRAW x,y
  180   key$=GET$
  190 UNTIL FALSE
  200 END

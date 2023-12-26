   10 REM:FROM GUNROCK00 YOUTUBE VIDEO
   20 REM:MODIFIED FOR AGON LIGHT 2
   30 MODE 0
   40 n=200
   50 r=2*PI/235
   60 x=0: u=0: v=0: t=0.22
   70 s=300
   80 REPEAT
   90   PRINT "Bubble Universe Agon Light 2"
  100   VDU 23, 1, 1
  110   VDU 29, 640; 520;
  120   FOR i= 0 TO n STEP .5
  130     FOR j= 0 TO n STEP .5
  140       u=SIN(i + v) + SIN(r * i + x)
  150       v=COS(i + v) + COS(r * i + x)
  160       x=u + t
  170       GCOL 0, i
  180       PLOT 69, u*s, v*s
  190     NEXT j
  200   NEXT i
  210   t = t + .025
  220   VDU 12
  230 UNTIL FALSE

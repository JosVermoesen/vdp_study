   10 MODE 0:COLOUR 142:COLOUR 15:CLS
   15 FOR R%=1 TO 54
   20   PROCcircle(500+R%*40,512,r%*50,FALSE)
   25 NEXT
   30 END
   50 REM > BLib.Graphic.Circle 1.01 22May1986
   60 REM v1.00 15Apr1985 Code from Econet front end
   70 REM V1.01 22May1986 Optimized MOVE/PLOTs
   80 :
   90 DEFPROCcircle(x%,y%,r%,f%):REM X posn, Y posn, Radius, Filled
  100 LOCAL step,s,c,xp,yp,xr,s%,k%
  110 k%=13+72*(f%AND1) : REM PLOT action
  120 step=2*PI/32 : REM Length of each arc
  130 s=SINstep : REM Precalculate sine of step
  140 c=COSstep : REM Precalculate cosine of step
  150 xp=r%:yp=0 : REM Set initial position
  160 MOVE x%+r%,y% : REM Move to initial point on edge
  170 FOR s%=1 TO 31 : REM We'll do 31 segments here
  180   xr=xp*c-yp*s : REM Calculate next point on edge
  190   yp=xp*s+yp*c
  200   xp=xr
  210   IF f%: MOVE x%,y% : REM If fill, extra point at centre
  220   PLOT k%,x%+xp,y%+yp : REM Draw a line or a segment
  230 NEXT : REM And again
  240 IF f%: MOVE x%,y% : REM Do final segment back to start
  250 PLOT k%,x%+r%,y%
  260 ENDPROC

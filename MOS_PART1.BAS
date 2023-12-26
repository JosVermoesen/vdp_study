   10 REM Browse MOS Commands
   20 COLOUR 153:COLOUR 11
   25 CLS
   27 PRINT:PRINT
   30 PRINT TAB(3)"List of Agon Light 2";:COLOUR 4 PRINT " MOS Commands"
   40 COLOUR 2:PRINT
   50 PRINT TAB(3)"CAT: you can use DIR, '.'(dot), OR LS (if you load and run ls.bin)":PRINT
   55 key$ = GET$
   60 PRINT TAB(3)"CD: change directory":PRINT
   65 key$ = GET$
   70 PRINT TAB(3)"CLS: clear the screen":PRINT
   75 key$ = GET$
   80 PRINT TAB(3)"COPY: make a copy of a file":PRINT
   85 key$ = GET$
   90 PRINT TAB(3)"CREDITS: show credits and version numbers for 3rd party libs":PRINT
   95 key$ = GET$
  100 PRINT TAB(3)"DELETE":PRINT
  105 key$ = GET$
  110 COLOUR 15:PRINT TAB(3)"We'll continue in our next video!"
  115 key$ = GET$

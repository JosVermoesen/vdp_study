   10 REM Browse MOS Commands
   20 COLOUR 153:COLOUR 11
   30 CLS
   40 PRINT:PRINT
   50 PRINT TAB(3)"Agon Light 2";:COLOUR 7 PRINT " Review of first 6 MOS Commands"
   60 COLOUR 2:PRINT
   70 PRINT TAB(3)"CAT: or use DIR, '.'(period) or LS(if you load ad run the file ls.bin)":PRINT
   80 key$ = GET$
   90 PRINT TAB(3)"CD: change directory":PRINT
  100 key$ = GET$
  110 PRINT TAB(3)"CLS: clear the screen":PRINT
  120 key$ = GET$
  130 PRINT TAB(3)"COPY: make a copy of a file":PRINT
  140 key$ = GET$
  150 PRINT TAB(3)"CREDITS: show credits and version numbers for 3rd party libs":PRINT
  160 key$ = GET$
  170 PRINT TAB(3)"DELETE: delete a file or an empty folder (can abbreviate as DE.)":PRINT
  180 key$ = GET$
  190 COLOUR 15:PRINT TAB(3)"6 NEW Commands coming up next!":key$=GET$:CLS
  200 key$ = GET$:PRINT:PRINT
  210 COLOUR 11 PRINT TAB(3)"List of Agon Light 2";:COLOUR 7 PRINT " Next 6 MOS Commands":PRINT
  215 COLOUR 2
  220 PRINT TAB(3)"HELP";:key$=GET$:PRINT": not really sure this is fully implemented yet.":PRINT
  230 PRINT TAB(3)"JMP";:key$=GET$:PRINT": jump to an address in memory? Not sure how to do this yet.":PRINT
  240 PRINT TAB(3)"LOAD";:key$=GET$:PRINT": load file to the specified address (default address is: &40000)":PRINT
  250 PRINT TAB(3)"MKDIR";:key$=GET$:PRINT": create a new folder":PRINT
  260 PRINT TAB(3)"MOUNT";:key$=GET$:PRINT": remount the micro SD card? Have not tried this yet...":PRINT
  270 PRINT TAB(3)"RENAME";:key$=GET$:PRINT": rename a file (you can also use MOVE)":PRINT
 1000 COLOUR 15:PRINT TAB(3)"We'll with the last 6 MOS commands in our next video!"

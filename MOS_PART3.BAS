   10 REM Browse MOS Commands
   20 COLOUR 154:COLOUR 15
   30 CLS
   40 PRINT:PRINT
   50 PRINT TAB(3)"Agon Light 2";:COLOUR 7 PRINT " Review of first";:COLOUR 3 PRINT " 12 MOS Commands":COLOUR 7
   60 COLOUR 2:PRINT
   70 PRINT TAB(3)"CAT: or use DIR, '.'(period) or LS(if you load and run the file ls.bin)":PRINT
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
  215 COLOUR 2
  220 PRINT TAB(3)"HELP";:key$=GET$:PRINT": not really sure this is fully implemented yet.":PRINT
  230 PRINT TAB(3)"JMP";:key$=GET$:PRINT": jump to an address in memory? Not sure how to do this yet.":PRINT
  240 PRINT TAB(3)"LOAD";:key$=GET$:PRINT": load file to the specified address (default address is: &40000)":PRINT
  250 PRINT TAB(3)"MKDIR";:key$=GET$:PRINT": create a new folder":PRINT
  260 PRINT TAB(3)"MOUNT";:key$=GET$:PRINT": remount the micro SD card? Have not tried this yet...":PRINT
  270 PRINT TAB(3)"RENAME";:key$=GET$:PRINT": rename a file (you can also use MOVE)":PRINT
  275 key$=GET$
  280 COLOUR 15:PRINT TAB(3) "We'll go over the last";:COLOUR 3 PRINT" 6 MOS commands NOW!"
  285 key$=GET$:CLS:PRINT:PRINT
  290 COLOUR 2:PRINT TAB(3)"RUN";:key$=GET$:PRINT": calls an executable .bin file loaded in memory (default addr: &40000)":PRINT
  300 PRINT TAB(3)"SAVE";:key$=GET$:PRINT": save a block of memory to the SD card. (?)":PRINT
  310 PRINT TAB(3)"SET";:key$=GET$:PRINT": set a system option such as KEYBOARD or CONSOLE.":PRINT
  315 PRINT TAB(3)"TIME";:key$=GET$:PRINT": set and read the real time clock":PRINT
  320 PRINT TAB(3)"TYPE";:key$=GET$:PRINT": show contents of a file on the screen (I prefer the MORE command)":PRINT
  330 PRINT TAB(3)"VDU";:key$=GET$:PRINT": write a stream of characters to the VDP!":PRINT:PRINT:COLOUR 7
 1000 COLOUR 15:PRINT TAB(3) "Stay tuned for our NEXT series covering the";:COLOUR 3 PRINT" Visual Display Processor (VDP!)"
 1010 *CD / : *LOAD"BOOT.BAS" : RUN
